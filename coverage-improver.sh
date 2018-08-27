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
        if [ $# -eq 1 ]; then
             if [ -f "$output" ]; then 
                 echo "skipping $output generation, it already exists"
                 continue
             fi
        fi
	echo "Output will be written to $output"
	opt-6.0 -load $INPUT_DEP_PATH/libInputDependency.so -load /usr/local/lib/libLLVMdg.so -load $INPUT_DEP_PATH/libTransforms.so $bitcode -lib-config=$libconfig -strip-debug -unreachableblockelim -goto-unsafe  -extract-functions -transparent-cache -dependency-stats -dependency-stats-file=$output_dir/dependency.stats -extraction-stats -extraction-stats-file=$output_dir/extract.stats -globaldce -o $output
	if [ $? -eq 0 ]; then
		echo 'OK Transform'
	else
		echo 'FAIL Transform'
		echo "opt-6.0 -load $INPUT_DEP_PATH/libInputDependency.so -load $INPUT_DEP_PATH/libTransforms.so $bitcode -clone-functions -extract-functions -o $output"
		exit    
	fi  
done
