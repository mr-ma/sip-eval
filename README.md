Run the whole experiment and dump data by executing:
sh run-all.sh




1. Apply clone and extract on programs (in BC format) in the dataset
2. Create 20 combination (at the most) of 10%, 25%, 50% and 100% of functions
3. Feed the function lists to the protection tool to generate protected binaries
	3.1. SC only is applied on input dependent functions
	3.2. SC is randomly applied on the provided functions
4. Hook system calls to bypass wait for input in games and other programs?
5. Run protection passes
6. Dump protected binaries in {ProgramName}_Protected_{#} format

