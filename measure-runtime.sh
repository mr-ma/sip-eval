UTILS_LIB=/home/sip/self-checksumming/build/lib/libUtils.so
DG_PATH=/usr/local/lib/
INPUT_DEP_PATH=/usr/local/lib/
SC_PATH=/home/sip/self-checksumming/build/lib
OH_PATH=/home/sip/sip-oblivious-hashing
OH_LIB=$OH_PATH/build/lib
bc_files=/home/sip/eval/coverage/*.bc
binary_path=/home/sip/eval/binaries/
config_path=/home/sip/eval/lib-config/
#SKIP_EXISTING binaries when exactly one argument is passed here regardless of its value
MAXIMUM_INPUT_INDEPENDENT_SC_COVERAGE=30
repeat=3
#rm -r binaries
mkdir -p binaries

#prepare runtime lib
#TODO hook intercept library for other applications/feed a constant input
export LD_PRELOAD="/home/sip/SIP/self-checksumming/hook/build/libminm.so" 

for bc in $bc_files
do
    echo "Run passes for $bc"
	bitcode=$bc
	filename=${bc##*/}
    # Repeat 3 times
    for i in 1 2 3 
    do
        echo "Run $i"
        output_dir=$binary_path$filename/$i
        mkdir -p $output_dir
        echo 'Transform SC & OH'
        opt -load $INPUT_DEP_PATH/libInputDependency.so -load $DG_PATH/libLLVMdg.so -load $UTILS_LIB -load $SC_PATH/libSCPass.so -load $OH_LIB/liboblivious-hashing.so -load $INPUT_DEP_PATH/libTransforms.so $bitcode -strip-debug -unreachableblockelim -globaldce -use-cache -sc -connectivity=5 -maximum-input-independent-percentage=$MAXIMUM_INPUT_INDEPENDENT_SC_COVERAGE -dump-checkers-network=$output_dir/"network_file" -dump-sc-stat=$output_dir/"sc.stats" -filter-file=$coverage -oh-insert -short-range-oh -num-hash 1 -dump-oh-stat=$output_dir/"oh.stats" -time-passes -o $output_dir/out.bc |& tee $output_dir/transform_log
    done
done
echo 'Transformations ran!'
