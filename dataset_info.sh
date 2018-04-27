UTILS_LIB=/home/sip/self-checksumming/build/lib/libUtils.so
DG_PATH=/usr/local/lib/
OH_PATH=/home/sip/sip-oblivious-hashing
OH_LIB=$OH_PATH/build/lib
FILES=/home/sip/eval/local_dataset/*.bc
DATAPATH=/home/sip/eval/dataset_info/
configs=/home/sip/eval/lib-config

for f in $FILES
do
	bitcode=$f
	echo $f
	filename=${f##*/}
	libconfig=$configs/$filename
	output_dir=$DATAPATH/$filename
	mkdir -p $output_dir 
    cd $output_dir
	#opt -load $INPUT_DEP_PATH/libInputDependency.so $bitcode -mod-size
    #print "opt -load $INPUT_DEP_PATH/libInputDependency.so $bitcode -input-dep -lib-config=$libconfig -dependency-stats"
    opt -load $INPUT_DEP_PATH/libInputDependency.so -load $DG_PATH/libLLVMdg.so -load $UTILS_LIB -load $OH_LIB/liboblivious-hashing.so -load $INPUT_DEP_PATH/libTransforms.so $bitcode -dependency-stats -oh-insert -short-range-oh -num-hash 1 -dump-oh-stat=$output_dir/"oh.stats" -o $output_dir/out.bc >> $output_dir/transform.console 
    cd -
	if [ $? -eq 0 ]; then
		echo 'OK module size'
	else
		echo 'FAIL module size'
		echo "opt -load $INPUT_DEP_PATH/libInputDependency.so $bitcode -input-dep -lib-config=$libconfig -dependency-stats"
		exit    
	fi  
done

