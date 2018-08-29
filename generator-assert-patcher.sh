
	bitcode=$1
#	echo $bitcode
	filename=${bitcode##*/}
        echo $filename
	cmd_args=$(<$args_path$filename)
	combination_dir=$1/*
	for coverage_dir in $combination_dir
	do
                echo $coverage_dir
		coverage_name=${coverage_dir##*/}
                echo $coverage_name
                if [ $coverage_name -eq 0 ]; then
                    echo 'Skipping'
                    continue
                fi

		#Generate unprotected binary for the baseline 
		for coverage in $coverage_dir/*
		do
			combination_file=${coverage##*/}
			output_dir=$coverage_dir/$combination_file
			#avoid regenerating if desired
                        echo $output_dir
			#repeat protection for random network of protection
			#for i in 1 2 3 
			for i in 1 2 3 
			do
					output_dir=$coverage_dir/$combination_file/$i
					bitcode=$bc
					#$output_dir/"guarded.bc"
                                        if [ -f $output_dir/assertpatched ]; then
                                            echo 'Already patched'
                                            continue 
                                        fi

					#Patch 
                                        python patch_slow_assert.py -b $output_dir/$filename 
					if [ $? -eq 0 ]; then
						echo 'OK Assert Patch'
						chmod +x $output_dir/$filename
                                                echo "finished patching" >> $output_dir/assertpatched
					else
						echo "$? FAIL Assert Patch"
						exit 1
					fi 

			done
		done
	done

echo 'Generator is done!'
