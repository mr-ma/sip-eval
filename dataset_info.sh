INPUT_DEP_PATH=/usr/local/lib/
FILES=/home/sip/eval/dataset/*.bc
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
    print "opt -load $INPUT_DEP_PATH/libInputDependency.so $bitcode -input-dep -lib-config=$libconfig -dependency-stats -mod-size"
	opt -load $INPUT_DEP_PATH/libInputDependency.so $bitcode -input-dep -lib-config=$libconfig -dependency-stats -mod-size
    cd -
	if [ $? -eq 0 ]; then
		echo 'OK module size'
	else
		echo 'FAIL module size'
		echo "opt -load $INPUT_DEP_PATH/libInputDependency.so $bitcode -mod-size"
		exit    
	fi  
done

