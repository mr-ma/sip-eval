#Run benchmarks pseudo code

#program.bc
#	coverage 10
#		combination 1
#			SC input dependent
#				network 1
#			
#			Random
#				network 1
#				...
#	
import os
import json
from pprint import pprint
from subprocess import call

def get_immediate_subdirectories(a_dir):
    return [name for name in os.listdir(a_dir)
            if os.path.isdir(os.path.join(a_dir, name))]

def measure_overhead(result_directory,program):
    program_path = os.path.join(result_directory,program)
    #TODO run runexec 100 times and calculate avg and std
    #call(["sosylib_measure.sh",program_path])
    #TODO: run any other tool here
    return {"run_result":{"cpu":1,"memory":1}}
def process_results(results):
    #TODO do whatever and add outcome(s) to the results file
    print "process me"
    pprint(results)
    return results
def process_files(directory):
    for program_dir in get_immediate_subdirectories(directory):
        for coverage_dir in get_immediate_subdirectories(os.path.join(directory,program_dir)):
            for combination_dir in get_immediate_subdirectories(os.path.join(directory,program_dir,coverage_dir)):
                attempt_path = os.path.join(directory,program_dir,coverage_dir,combination_dir);
                for attempt_dir in get_immediate_subdirectories(attempt_path):
                    result_path = os.path.join(directory,program_dir,coverage_dir,combination_dir,attempt_dir);
                    results = measure_overhead(result_pathi,program_dir)

 #   pprint(program_results)

#    for filename in os.listdir(directory):
#	if filename.endswith(".bc"): 
#	    print(os.path.join(directory, filename))
#	continue
 #   else:
#	continue

def main():
    process_files("binaries/")

if __name__=="__main__":
    main()
#For program_dir in binaries:
#	For coverage_dir in program_dir:
#		For combination in coverage_dir:
#			For Input dependent..Random:
#				For network in combination:
#					collect result of runexec, coverage,sc input dependent/random
#					#Goal: protection coverage per instruction or per function (OH, SC, SC+OH)
#					collect sc.stats, oh.stats, dependency stats 
#					if random:
                                                #Goal: oh coverage improvements which do not depend on network, nor sc input dependency  
#						collect dependency.stats 
#		Avg and Std (collected results) group by coverage, input-dependent/random 
