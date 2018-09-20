UTILS_LIB=/home/sip/self-checksumming/build/lib/libUtils.so
INPUT_DEP_PATH=/usr/local/lib/
DG_PATH=/home/sip/dg/build/lib
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
args_path=/home/sip/eval/cmdline-args/
#SKIP_EXISTING binaries when exactly one argument is passed here regardless of its value
patcher_scripts_path=/home/sip/eval/patcher-scripts/
repeat=1
ROOT=$PWD
#rm -r binaries
mkdir -p binaries

run_on_bitcode() {
    unset LD_PRELOAD
	bitcode=$1
	echo $bitcode
	filename=${bc##*/}
        echo $filename
	libconfig=$config_path$filename
	cmd_args=$(<$args_path$filename)
	combination_dir=$combination_path$filename/*
	libraries=$(<$link_libraries$filename)
	patcher_args=$(<$patcher_scripts_path$filename)
	patcher_args_array=($patcher_args)
	response_file="${patcher_args_array[0]}"
	gdb_script="${patcher_args_array[1]}"
	echo "Libraries to link with $libraries"
	for coverage_dir in $combination_dir
	do
		coverage_name=${coverage_dir##*/}
		output_dir=$binary_path$filename/$coverage_name 
		mkdir -p $output_dir 
		#Generate unprotected binary for the baseline 
		if [ $coverage_name -eq 0 ]; then
			echo "Handling baseline"
			echo llc-6.0 $bitcode -o $output_dir/out.s
			llc-6.0 $bitcode -o $output_dir/out.s
			echo g++ -c -rdynamic $output_dir/out.s -o $output_dir/out.o $libraries
			g++ -c -rdynamic $output_dir/out.s -o $output_dir/out.o $libraries
			#make a dummy combination=0 and a dummy attempt=1 just for the sake of complying with the directory structure
			mkdir -p $output_dir/0/1
			echo g++ -std=c++0x -g -rdynamic $output_dir/out.o -o $output_dir/0/1/$filename $libraries
			g++ -std=c++0x -g -rdynamic $output_dir/out.o -o $output_dir/0/1/$filename $libraries
			rm $output_dir/out.s $output_dir/out.o
			echo "I'm here"
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
			i=1
                        while [ $i -le $repeat ] 
			do
				recover_attempt=0
				while true;
				do
                                        echo $i
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
					opt-6.0 -load $INPUT_DEP_PATH/libInputDependency.so -load $DG_PATH/libLLVMdg.so -load $UTILS_LIB -load $SC_PATH/libSCPass.so -load $OH_LIB/liboblivious-hashing.so -load $INPUT_DEP_PATH/libTransforms.so $bitcode -strip-debug -unreachableblockelim -globaldce -use-cache -goto-unsafe -sc -extracted-only -use-other-functions -connectivity=1 -dump-checkers-network=$output_dir/"network_file" -dump-sc-stat=$output_dir/"sc.stats" -filter-file=$coverage -oh-insert -short-range-oh -protect-data-dep-loops -num-hash 1 -dump-oh-stat=$output_dir/"oh.stats" -o $output_dir/out.bc >> $output_dir/transform.console 

					echo $output_dir
					if [ $? -eq 0 ]; then
						echo 'OK Transform'
						echo "opt-6.0 -load $INPUT_DEP_PATH/libInputDependency.so -load $DG_PATH/libLLVMdg.so -load $UTILS_LIB -load $SC_PATH/libSCPass.so -load $OH_LIB/liboblivious-hashing.so -load $INPUT_DEP_PATH/libTransforms.so $bitcode -strip-debug -unreachableblockelim -globaldce -use-cache -sc -extracted-only -use-other-functions -connectivity=1 -dump-checkers-network=$output_dir/"network_file" -dump-sc-stat=$output_dir/"sc.stats" -filter-file=$coverage -oh-insert -short-range-oh -num-hash 1 -dump-oh-stat=$output_dir/"oh.stats" -o $output_dir/out.bc >> $output_dir/transform.console"
					else
						echo !! 
						echo 'FAIL Transform'
						exit    
					fi  
					echo 'Post patching binary after hash calls'
					llc-6.0 $output_dir/out.bc -o $output_dir/out.s
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
					echo "RESPONSE FILE:" 
					echo $response_file
					if [ "$response_file" = "response.c" ]; then
						echo "gcc -g -rdynamic $output_dir/out.o -o $output_dir/$filename -L. -lcrtlib $libraries"
						gcc -g -rdynamic $output_dir/out.o -o $output_dir/$filename -L. -lcrtlib $libraries
					else
						echo "g++ -std=c++0x -g -rdynamic $output_dir/out.o -o $output_dir/$filename -L. -lcpprtlib $libraries"
						g++ -std=c++0x -g -rdynamic $output_dir/out.o -o $output_dir/$filename -L. -lcpprtlib $libraries
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
					#clang++-6.0 -lncurses -rdynamic -std=c++0x out.bc -o out
					python /home/sip/self-checksumming/patcher/dump_pipe.py $output_dir/$filename guide.txt patch_guide $output_dir/"sc.stats">> $output_dir/patcher.console
					if [ $? -eq 0 ]; then
						echo 'Done patching SC'
					else
						echo 'SC patcher failed'
						exit
					fi


					echo 'Starting GDB patcher, this will wait for input when nothing is provided'

					echo $gdb_script
                    if [ "$response_file" = "response.c" ]; then
                        export LD_PRELOAD="/home/sip/self-checksumming/hook/build/libminm.so $ROOT/libcrtlib.so" 
                        echo "export LD_PRELOAD=/home/sip/self-checksumming/hook/build/libminm.so $ROOT/libcrtlib.so" 
					else
                        export LD_PRELOAD="/home/sip/self-checksumming/hook/build/libminm.so $ROOT/libcpprtlib.so" 
                        echo "export LD_PRELOAD=/home/sip/self-checksumming/hook/build/libminm.so $ROOT/libcpprtlib.so" 
					fi

                                        #TODO hook intercept library for other applications/feed a constant input
                                        echo $output_dir/$filename
					#Patch using GDB
					echo "python $OH_PATH/patcher/patchAsserts.py -p $ROOT/gdb_scripts/$gdb_script -g $cmd_args -d True -b $output_dir/$filename -n $output_dir/$filename"tmp" -s $output_dir/oh.stats >> $output_dir/gdb.console"
					python $OH_PATH/patcher/patchAsserts.py -p $ROOT/gdb_scripts/$gdb_script -g "$cmd_args" -d True -b $output_dir/$filename -n $output_dir/$filename"tmp" -s $output_dir/"oh.stats" >> $output_dir/"gdb.console" 
					if [ $? -eq 0 ]; then
						echo 'OK GDB Patch'
						rm $output_dir/$filename
						mv $output_dir/$filename"tmp" $output_dir/$filename
						chmod +x $output_dir/$filename
						recover_attempt=0
						break # BREAK the while loop
					else
						echo "$? FAIL GDB Patch"
						if [ $recover_attempt -eq 1 ]; then
							echo "Failed to recover for three times" 
							echo "Check $output_dir for more details"
							break #exit 1
						fi
						echo "trying to recover from Segmentation fault... $recover_attempt" >> $output_dir/segmentationfault.console
						recover_attempt=$((recover_attempt+1))   
					fi 

				done
	
             		((i++))
			done
		done
	done
}

switch_to_old_dg() {
    echo "Switching to old DG"
    CURRENT_DIR=$PWD
    DG="/home/sip/dg"
    cd $DG/build
    echo "cd DG $PWD"
    git checkout HEAD~1
    echo "checkout old dg"
    rm -rf $DG/build/lib/libLLVMdg.so
    rm -rf $DG/build/include
    make clean
    echo "make install"
    make install
    cd "$OH_PATH/build"
    make clean
    echo "make oh"
    make
    cd $CURRENT_DIR
    echo "go back to $PWD"
}

switch_to_new_dg() {
    echo "Switching to new DG"
    CURRENT_DIR=$PWD
    DG="/home/sip/dg"
    cd $DG/build
    echo "cd DG $PWD"
    git checkout acsac
    echo "checkout latest dg"
    rm -rf $DG/build/lib/libLLVMdg.so
    rm -rf $DG/build/include
    make clean
    echo "make install"
    make install
    cd "$OH_PATH/build"
    make clean
    echo "make oh"
    make
    cd $CURRENT_DIR
    echo "go back to $PWD"
}

#prepare runtime lib
if [ $? -eq 0 ]; then
	echo 'OK Transform'
else
	echo 'FAIL compile rtlib'
	exit    
fi
C_LIB_FILES=()
CPP_LIB_FILES=()
gcc -fPIC -g -rdynamic -c "$rtlib_path" -o $PWD/sc_rtlib.o
C_LIB_FILES+=( "$PWD/sc_rtlib.o" )
CPP_LIB_FILES+=( "$PWD/sc_rtlib.o" )

gcc -fPIC -g -rdynamic -c ${OH_PATH}/assertions/response.c -o $PWD/c_oh_rtlib.o
C_LIB_FILES+=( "$PWD/c_oh_rtlib.o" )
echo $C_LIB_FILES
gcc -g -rdynamic -Wall -fPIC -shared -Wl,-soname,libcrtlib.so -o "$PWD/libcrtlib.so" ${C_LIB_FILES[@]}

g++ -fPIC -std=c++11 -g -rdynamic -c ${OH_PATH}/assertions/response.cpp -o $PWD/cpp_oh_rtlib.o
CPP_LIB_FILES+=( "${PWD}/cpp_oh_rtlib.o" )
echo $CPP_LIB_FILES
g++ -std=c++11 -g -rdynamic -Wall -fPIC -shared -Wl,-soname,libcpprtlib.so -o "$PWD/libcpprtlib.so" ${CPP_LIB_FILES[@]}

# The iteration trough bitcodes
idx=0
old_dg_bitcodes=()
switch_to_new_dg

for bc in $bc_files
do
	filename=${bc##*/}
    if [ "$filename" == "ispell.x.bc" ] || [ "$filename" == "cjpeg.x.bc" ] || [ "$filename" == "djpeg.x.bc" ]; then
        echo "Skip $filename"
        old_dg_bitcodes[$idx]="$bc"
        idx=$((idx + 1))
        continue
    fi
    run_on_bitcode $bc
done
if [ ${#old_dg_bitcodes[@]} -eq 0 ]; then
    echo "All bitcodes are processed!"
else
    echo "Skipped bitcodes ${old_dg_bitcodes[*]}"
    switch_to_old_dg
    for bc in "${old_dg_bitcodes[@]}"
    do
        run_on_bitcode $bc
    done
    switch_to_new_dg
fi
echo 'Generator is done!'
