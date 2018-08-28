UTILS_LIB=/home/sip/self-checksumming/build/lib/libUtils.so
#INPUT_DEP_PATH=/usr/local/lib/
INPUT_DEP_PATH=/home/sip/input-dependency-analyzer/build/lib
DG_PATH=/usr/local/lib/
SC_PATH=/home/sip/self-checksumming/build/lib
OH_PATH=/home/sip/sip-oblivious-hashing
OH_LIB=$OH_PATH/build/lib
EVAL_LIB=/home/sip/eval/passes/build/lib
bc_files=/home/sip/eval/coverage/*.bc
combination_path=/home/sip/eval/combination/
binary_path=/home/sip/eval/binaries/
rtlib_path=/home/sip/self-checksumming/rtlib.c
config_path=/home/sip/eval/lib-config/
link_libraries=/home/sip/eval/link-libraries/
args_path=/home/sip/eval/my_cmdline-args/
#SKIP_EXISTING binaries when exactly one argument is passed here regardless of its value
MAXIMUM_INPUT_INDEPENDENT_SC_COVERAGE=30
patcher_scripts_path=/home/sip/eval/patcher-scripts/
repeat=3
#rm -r binaries
mkdir -p binaries


#prepare runtime lib
clang $rtlib_path -c -emit-llvm -o $binary_path"rtlib.bc"
if [ $? -eq 0 ]; then
	echo 'OK Transform'
else
	echo 'FAIL compile rtlib'
	exit    
fi


#TODO hook intercept library for other applications/feed a constant input
export LD_PRELOAD="/home/sip/self-checksumming/hook/build/libminm.so" 

for bc in $bc_files
do
	bitcode=$bc
	echo $bc
	filename=${bc##*/}
	libconfig=$config_path$filename
	cmd_args=$(<$args_path$filename)
	combination_dir=$combination_path$filename/*
	libraries=$(<$link_libraries$filename)
	patcher_args=$(<$patcher_scripts_path$filename)
	patcher_args_array=($patcher_args)
	response_file="${patcher_args_array[0]}"
	gdb_script="${patcher_args_array[1]}"
	echo "Libraries to link with $libraries"
    prog_dir=$binary_path$filename
	for coverage_dir in $combination_dir
	do
		coverage_name=${coverage_dir##*/}
		output_dir=$binary_path$filename/$coverage_name 
		mkdir -p $output_dir 
		#Generate unprotected binary for the baseline 
		if [ $coverage_name -eq 0 ]; then
            continue
		fi
		for coverage in $coverage_dir/*
		do
			combination_file=${coverage##*/}
			output_dir=$binary_path$filename/$coverage_name/$combination_file
			#avoid regenerating if desired
			if [ $# -eq 1 ]; then
				if [ -d "$output_dir" ]; then
					echo "Skipping $output_dir"
					continue
				fi
			fi

			mkdir -p $output_dir

			echo "Handling combination file $coverage"
			echo "Protect $bc with function combination file $coverage"
			#repeat protection for random network of protection
			for i in 1
			do
				while true;
				do
					output_dir=$binary_path$filename/$coverage_name/$combination_file/$i
					mkdir -p $output_dir
					echo "Protect here $i"

					bitcode=$bc
					#$output_dir/"guarded.bc"



					echo 'Remove old files'
					rm patch_guide
					rm guide.txt
					rm protected
					rm out.bc
					rm out 
					echo 'Transform SC & OH'
					opt -load $INPUT_DEP_PATH/libInputDependency.so -load $DG_PATH/libLLVMdg.so -load $UTILS_LIB -load $SC_PATH/libSCPass.so -load $OH_LIB/liboblivious-hashing.so -load $INPUT_DEP_PATH/libTransforms.so $bitcode -strip-debug -unreachableblockelim -globaldce -goto-unsafe -sc -extracted-only -use-other-functions -connectivity=1 -dump-checkers-network=$output_dir/"network_file" -dump-sc-stat=$output_dir/"sc.stats" -filter-file=$coverage -oh-insert -short-range-oh -protect-data-dep-loops -num-hash 1 -dump-oh-stat=$output_dir/"oh.stats" -time-passes -o $output_dir/out.bc |& tee -a $prog_dir/protection_runtime
                    # TODO remove exit

					echo $output_dir
					if [ $? -eq 0 ]; then
						echo 'OK Transform'
						echo "opt -load $INPUT_DEP_PATH/libInputDependency.so -load $DG_PATH/libLLVMdg.so -load $UTILS_LIB -load $SC_PATH/libSCPass.so -load $OH_LIB/liboblivious-hashing.so -load $INPUT_DEP_PATH/libTransforms.so $bitcode -strip-debug -unreachableblockelim -globaldce -sc -extracted-only -use-other-functions -connectivity=1 -dump-checkers-network=$output_dir/"network_file" -dump-sc-stat=$output_dir/"sc.stats" -filter-file=$coverage -oh-insert -short-range-oh -num-hash 1 -dump-oh-stat=$output_dir/"oh.stats" -time-passes -o $output_dir/out.bc" #>> $prog_dir/runtime_log
					else
						echo !! 
						echo 'FAIL Transform'
						exit    
					fi  

					#link RTLIB 
					llvm-link $output_dir/out.bc $binary_path"rtlib.bc" -o $output_dir/out.bc
					if [ $? -eq 0 ]; then
						echo 'OK Link'
					else
						echo 'FAIL Link RTLib'
						exit    
					fi
					# compiling external libraries to bitcodes
					clang $OH_PATH/assertions/response.c -c -fno-use-cxa-atexit -emit-llvm -o $OH_PATH/assertions/response.bc
					if [ $? -eq 0 ]; then
						echo 'OK '
					else
						echo 'FAIL Compile external'
						exit    
					fi  


					echo 'Post patching binary after hash calls'
					llc $output_dir/out.bc -o $output_dir/out.s
					if [ $? -eq 0 ]; then
						echo 'OK Transform'
					else
						echo 'FAIL llc'
						exit    
					fi  
					gcc -c -rdynamic $output_dir/out.s -o $output_dir/out.o $libraries
					if [ $? -eq 0 ]; then
						echo 'OK gcc -c'
					else
						echo 'FAIL gcc -c'
						exit    
					fi 
					# Linking with external libraries
					echo "RESPONSE FILE:" 
					echo $response_file
					if [ "$response_file" = "response.c" ]; then
						echo 'RUNNING GCC'
						echo gcc -g -rdynamic -c $OH_PATH/assertions/$response_file -o $output_dir/response.o
						gcc -g -rdynamic -c $OH_PATH/assertions/$response_file -o $output_dir/response.o
					else
						echo 'RUNNING G++'
						echo g++ -std=c++0x -g -rdynamic -c $OH_PATH/assertions/$response_file -o $output_dir/response.o
						g++ -std=c++0x -g -rdynamic -c $OH_PATH/assertions/$response_file -o $output_dir/response.o
					fi
					#gcc -g -rdynamic -c rtlib.c -o rtlib.o
					if [ $? -eq 0 ]; then
						echo 'OK gcc -g'
					else
						echo 'FAIL gcc -g'
						exit    
					fi 
					if [ "$response_file" = "response.c" ]; then
						gcc -g -rdynamic $output_dir/out.o $output_dir/response.o -o $output_dir/$filename $libraries
					else
						g++ -std=c++0x -g -rdynamic $output_dir/out.o $output_dir/response.o -o $output_dir/$filename $libraries
					fi

					if [ $? -eq 0 ]; then
						echo 'OK gcc final binary'
					else
						echo "$link_libraries$filename"
						echo "$libraries"
						echo 'FAIL gcc final binary'
						exit    
					fi 
					#remove temp files
					rm $output_dir/out.o $output_dir/out.s $output_dir/response.o $output_dir/guarded.bc   
					#clang++ -lncurses -rdynamic -std=c++0x out.bc -o out
                    echo 'SC patching time ' >>$prog_dir/sc_patching_runtime
					/usr/bin/time -o $prog_dir/sc_patching_runtime -p -a  python /home/sip/self-checksumming/patcher/dump_pipe.py $output_dir/$filename guide.txt patch_guide $output_dir/"sc.stats"		
                    if [ $? -eq 0 ]; then
						echo 'Done patching SC'
					else
						echo 'SC patcher failed'
						exit
					fi


					echo 'Starting GDB patcher, this will wait for input when nothing is provided'

					echo $gdb_script
                    echo 'GDB patching time ' >>$prog_dir/gdb_patching_runtime
					#Patch using GDB
					echo "python $OH_PATH/patcher/patchAsserts.py -p $OH_PATH/assertions/$gdb_script -g "$cmd_args" -d True -b $output_dir/$filename -n $output_dir/$filename"tmp" -s $output_dir/"oh.stats" >> $output_dir/gdb.console"
					/usr/bin/time -o $prog_dir/gdb_patching_runtime -p -a python $OH_PATH/patcher/patchAsserts.py -p $OH_PATH/assertions/$gdb_script -g "$cmd_args" -d True -b $output_dir/$filename -n $output_dir/$filename"tmp" -s $output_dir/"oh.stats"
					if [ $? -eq 0 ]; then
						echo 'OK GDB Patch'
						rm $output_dir/$filename
						mv $output_dir/$filename"tmp" $output_dir/$filename
						chmod +x $output_dir/$filename
						break # BREAK the while loop
					else
						echo "$? FAIL GDB Patch"
                        echo "Check $output_dir for more details"
                        break
					fi 

				done
			done
		done
	done

	#rm -r $filedir
	#mkdir -p $filedir
	#for coverage in $func_coverage
	#do
	#		output="$filedir$coverage/"
	#		mkdir -p $output
	#		echo "handling coverage $coverage"
	#		echo "Output will be written to $output"
	#		opt -load $EVAL_LIB/libEval.so $bitcode -combinator-func -coverage=$coverage -combinations=$num_combination -out-path=$output
	#		if [ $? -eq 0 ]; then
	#			echo 'OK Transform'
	#		else
	#			echo 'FAIL Transform'
	#			exit    
	#		fi
	#	done	
done
echo 'Generator is done!'
