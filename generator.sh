UTILS_LIB=/home/sip/self-checksumming/build/lib/libUtils.so
INPUT_DEP_PATH=/usr/local/lib/
SC_PATH=/home/sip/self-checksumming/build/lib
OH_PATH=/home/sip/sip-oblivious-hashing
OH_LIB=$OH_PATH/build/lib
EVAL_LIB=/home/sip/eval/passes/build/lib
bc_files=/home/sip/eval/dataset/*.bc
combination_path=/home/sip/eval/combination/
binary_path=/home/sip/eval/binaries/
rtlib_path=/home/sip/self-checksumming/rtlib.c
repeat=3
rm -r binaries
mkdir -p binaries


#prepare runtime lib
clang-3.9 $rtlib_path -c -emit-llvm -o $binary_path"rtlib.bc"
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
	combination_dir=$combination_path$filename/*
	for coverage_dir in $combination_dir
	do
		coverage_name=${coverage_dir##*/}
		output_dir=$binary_path$filename/$coverage_name 
		mkdir -p $output_dir 
		for coverage in $coverage_dir/*
		do
			combination_file=${coverage##*/}
			output_dir=$binary_path$filename/$coverage_name/$combination_file
			mkdir -p $output_dir
			echo "Handling combination file $coverage"
			echo "Protect $bc with function combination file $coverage"
			#repeat protection for random network of protection
			for i in 1 2 3 
			do
				output_dir=$binary_path$filename/$coverage_name/$combination_file/$i
				mkdir -p $output_dir
				echo "Protect here $i"
				bitcode=$output_dir/"guarded.bc"
				llvm-link-3.9 $bc $binary_path"rtlib.bc" -o $bitcode
				if [ $? -eq 0 ]; then
					echo 'OK Link'
				else
					echo 'FAIL Link RTLib'
					exit    
				fi  


				echo 'Remove old files'
				rm patch_guide
				rm guide.txt
				rm protected
				rm out.bc
				rm out 
				echo 'Transform SC & OH'
				opt-3.9 -load $INPUT_DEP_PATH/libInputDependency.so -load $UTILS_LIB -load $SC_PATH/libSCPass.so -load $OH_LIB/liboblivious-hashing.so -load $INPUT_DEP_PATH/libTransforms.so $bitcode -clone-functions -extract-functions -sc -connectivity=5  -dump-checkers-network=$output_dir/"network_file" -dump-sc-stat=$output_dir/"sc.stats" -filter-file=$coverage -oh-insert -num-hash 1 -dump-oh-stat=$output_dir/"oh.stats" -o $output_dir/out.bc   

				if [ $? -eq 0 ]; then
					echo 'OK Transform'
				else
					echo "opt-3.9 -load $INPUT_DEP_PATH/libInputDependency.so -load $UTILS_LIB -load $SC_PATH/libSCPass.so -load $OH_LIB/liboblivious-hashing.so -load $INPUT_DEP_PATH/libTransforms.so $bitcode  -clone-functions -extract-functions -sc -connectivity=5  -dump-checkers-network=$output_dir/"network_file" -dump-sc-stat=$output_dir/"sc.stats" -filter-file=$coverage -oh-insert -num-hash 1 -dump-oh-stat=$output_dir/"oh.stats" -o $output_dir/out.bc" 
					echo 'FAIL Transform'
					exit    
				fi  
				# compiling external libraries to bitcodes
				clang-3.9 $OH_PATH/assertions/response.c -c -fno-use-cxa-atexit -emit-llvm -o $OH_PATH/assertions/response.bc
				if [ $? -eq 0 ]; then
					echo 'OK '
				else
					echo 'FAIL Compile external'
					exit    
				fi  


				echo 'Post patching binary after hash calls'
				llc-3.9 $output_dir/out.bc -o $output_dir/out.s
				if [ $? -eq 0 ]; then
					echo 'OK Transform'
				else
					echo 'FAIL llc'
					exit    
				fi  
				gcc -c -rdynamic $output_dir/out.s -o $output_dir/out.o -lncurses
				# Linking with external libraries
				gcc -g -rdynamic -c $OH_PATH/assertions/response.c -o $output_dir/response.o
				#gcc -g -rdynamic -c rtlib.c -o rtlib.o
				gcc -g -rdynamic $output_dir/out.o $output_dir/response.o -o $output_dir/$filename -lncurses 

				#clang++-3.9 -lncurses -rdynamic -std=c++0x out.bc -o out
				python /home/sip/self-checksumming/patcher/dump_pipe.py $output_dir/$filename guide.txt patch_guide
				echo 'Done patching'

				#Patch using GDB
				python $OH_PATH/patcher/patchAsserts.py $output_dir/$filename $output_dir/$filename"tmp"
				if [ $? -eq 0 ]; then
					echo 'OK GDB Patch'
				else
					echo 'FAIL GDB Patch'
					echo "Check $output_dir for more details"
					exit    
				fi 
				rm $output_dir/$filename
				mv $output_dir/$filename"tmp" $output_dir/$filename

				chmod +x $output_dir/$filename

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
	#		opt-3.9 -load $EVAL_LIB/libEval.so $bitcode -combinator-func -coverage=$coverage -combinations=$num_combination -out-path=$output
	#		if [ $? -eq 0 ]; then
	#			echo 'OK Transform'
	#		else
	#			echo 'FAIL Transform'
	#			exit    
	#		fi
	#	done	
done
