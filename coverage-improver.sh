UTILS_LIB=/home/sip/self-checksumming/build/lib/libUtils.so
INPUT_DEP_PATH=/usr/local/lib/
SC_PATH=/home/sip/self-checksumming/build/lib
OH_PATH=/home/sip/sip-oblivious-hashing
OH_LIB=$OH_PATH/build/lib
FILES=/home/sip/eval/dataset/*.bc
COVERAGEPATH=/home/sip/eval/coverage/
for f in $FILES
do
	bitcode=$f
	echo $f
	filename=${f##*/}
	output=$COVERAGEPATH$filename
	echo "Output will be written to $output"
	opt-3.9 -load $INPUT_DEP_PATH/libInputDependency.so -load $INPUT_DEP_PATH/libTransforms.so $bitcode -clone-functions -extract-functions -o $output
	if [ $? -eq 0 ]; then
		echo 'OK Transform'
	else
		echo 'FAIL Transform'
		exit    
	fi  
done
