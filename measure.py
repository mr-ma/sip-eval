Run benchmarks pseudo code

program.bc
	coverage 10
		combination 1
			SC input dependent
				network 1
				…
			Random
				network 1
				...
	…


For program_dir in binaries:
	For coverage_dir in program_dir:
		For combination in coverage_dir:
			For Input dependent..Random:
				For network in combination:
					collect result of runexec, coverage,sc input dependent/random
					#Goal: protection coverage per instruction or per function (OH, SC, SC+OH)
					collect sc.stats, oh.stats, dependency stats 
					if random:
						#Goal: oh coverage improvements which do not depend on network, nor sc input dependency  
						collect dependency.stats 
		Avg and Std (collected results) group by coverage, input-dependent/random 
