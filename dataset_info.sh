INPUT_DEP_PATH=/usr/local/lib/
UTILS_LIB=/home/sip/self-checksumming/build/lib/libUtils.so
DG_PATH=/usr/local/lib/
OH_PATH=/home/sip/sip-oblivious-hashing
OH_LIB=$OH_PATH/build/lib
FILES=/home/sip/eval/coverage_dataset/*.bc
DATAPATH=/home/sip/eval/dataset_info/
configs=/home/sip/eval/lib-config

run_coverage() {
	bitcode=$1
	echo $f
	filename=${f##*/}
	output_dir=$DATAPATH/$filename
	libconfig=$configs/$filename
	mkdir -p $output_dir 
    cd $output_dir
    opt-6.0 -load $DG_PATH/libLLVMdg.so -load $INPUT_DEP_PATH/libInputDependency.so -load $UTILS_LIB -load $OH_LIB/liboblivious-hashing.so -load $INPUT_DEP_PATH/libTransforms.so $bitcode -goto-unsafe -strip-debug -unreachableblockelim -globaldce -dependency-stats -oh-insert -short-range-oh -protect-data-dep-loops -num-hash 1 -dump-oh-stat=$output_dir/"oh.stats" -o $output_dir/out.bc >> $output_dir/transform.console 
    cd -
	if [ $? -eq 0 ]; then
		echo 'OK module size'
	else
		echo 'FAIL module size'
		echo "opt-6.0 -load $DG_PATH/libLLVMdg.so -load $INPUT_DEP_PATH/libInputDependency.so -load $UTILS_LIB -load $OH_LIB/liboblivious-hashing.so -load $INPUT_DEP_PATH/libTransforms.so $bitcode -goto-unsafe -strip-debug -unreachableblockelim -globaldce -dependency-stats -oh-insert -short-range-oh -protect-data-dep-loops -num-hash 1 -dump-oh-stat=$output_dir/"oh.stats""
		exit    
	fi
}

switch_to_old_dg() {
    CURRENT_DIR=$PWD
    DG="/home/sip/dg"
    OLD_DG_COMMIT="2705a72c14a134984bea9098982dcfd17fc7a4a7"
    DG_INCLUDE="/usr/local/include/llvm-dg"
    cd $DG
    echo "cd DG $PWD"
    git checkout $OLD_DG_COMMIT
    echo "checkout old dg"
    sudo rm -rf $DG_PATH/libLLVMdg.so
    sudo rm -rf "$DG_INCLUDE"
    sudo make install
    echo "make install"
    cd "$OH_PATH/build"
    make
    echo "make oh"
    cd $CURRENT_DIR
    echo "go back to $PWD"
}

switch_to_new_dg() {
    CURRENT_DIR=$PWD
    DG="/home/sip/dg"
    DG_INCLUDE="/usr/local/include/llvm-dg"
    cd $DG
    echo "cd DG $PWD"
    git checkout master
    echo "checkout old dg"
    sudo rm -rf $DG_PATH/libLLVMdg.so
    sudo rm -rf "$DG_INCLUDE"
    sudo make install
    echo "make install"
    cd "$OH_PATH/build"
    echo "make oh"
    cd $CURRENT_DIR
    echo "go back to $PWD"
}

idx=0
old_dg_bitcodes=()
for f in $FILES
do
	bitcode=$f
    filename=${bitcode##*/}
    echo "FILENAME $filename"
    if [ "$filename" == "ispell.x.bc" ] || [ "$filename" == "cjpeg.x.bc" ] || [ "$filename" == "djpeg.x.bc" ]; then
        echo "Skip $filename"
        old_dg_bitcodes[$idx]="$bitcode"
        idx=$((idx + 1))
        continue
    fi
    run_coverage $bitcode
done
if [ ${#old_dg_bitcodes[@]} -eq 0 ]; then
    echo "All bitcodes are processed!"
else
    echo "Running protection on skipped bitcodes"
    echo "${old_dg_bitcodes[*]}"
    switch_to_old_dg
    for bc in "${old_dg_bitcodes[@]}"
    do
        echo "Process skipped $bc"
        run_coverage $bc
    done
    switch_to_new_dg
fi
