UTILS_LIB=/home/sip/self-checksumming/build/lib/libUtils.so
INPUT_DEP_PATH=/usr/local/lib/
SC_PATH=/home/sip/self-checksumming/build/lib
OH_PATH=/home/sip/sip-oblivious-hashing
OH_LIB=$OH_PATH/build/lib
FILES=/home/sip/eval/dataset/*.bc
COVERAGEPATH=/home/sip/eval/coverage/
configs=/home/sip/eval/lib-config
for f in $FILES
do
	bitcode=$f
	echo $f
	filename=${f##*/}
	libconfig=$configs/$filename
	echo "$libconfig"
	output_dir=$COVERAGEPATH/reports/$filename
	mkdir -p $output_dir 
	output=$COVERAGEPATH$filename
	echo "Output will be written to $output"
	opt-3.9 -load $INPUT_DEP_PATH/libInputDependency.so -load $INPUT_DEP_PATH/libTransforms.so $bitcode -lib-config=$libconfig -clone-functions -extract-functions -transparent-cache -dependency-stats -dependency-stats-file=$output_dir/dependency.stats -clone-stats -clone-stats-file=$output_dir/clone.stats -extraction-stats -extraction-stats-file=$output_dir/extract.stats -o $output
	if [ $? -eq 0 ]; then
		echo 'OK Transform'
	else
		echo 'FAIL Transform'
		echo "opt-3.9 -load $INPUT_DEP_PATH/libInputDependency.so -load $INPUT_DEP_PATH/libTransforms.so $bitcode -clone-functions -extract-functions -o $output"
		exit    
	fi  
done
