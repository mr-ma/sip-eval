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
oh_results = {}
sc_results = {}
def get_immediate_subdirectories(a_dir):
    return [name for name in os.listdir(a_dir)
            if os.path.isdir(os.path.join(a_dir, name))]

def grab_results(result_directory):
    oh_result = json.load(open(os.path.join(result_directory,"oh.stats")))
   # pprint(oh_result)
    sc_result = json.load(open(os.path.join(result_directory,"sc.stats")))
    runs_result = json.load(open(os.path.join(result_directory,"runs.json")))
    runs_processed = json.load(open(os.path.join(result_directory,"runs_processed.json")))
   # pprint(sc_result)
    #TODO: grab any other result file
    return {"sc_result":sc_result,"oh_result":oh_result, "runs":runs_result, "runs_processed":runs_processed}
def process_results(results):
    #TODO do whatever and add outcome(s) to the results file
    print "process me"
    pprint(results)
    return results
def process_files(directory):
    program_results=[]
    for program_dir in get_immediate_subdirectories(directory):
        coverage_results=[]
        for coverage_dir in get_immediate_subdirectories(os.path.join(directory,program_dir)):
            combination_results =[]
            for combination_dir in get_immediate_subdirectories(os.path.join(directory,program_dir,coverage_dir)):
                attempt_results=[]
                attempt_path = os.path.join(directory,program_dir,coverage_dir,combination_dir);
                for attempt_dir in get_immediate_subdirectories(attempt_path):
                    result_path = os.path.join(directory,program_dir,coverage_dir,combination_dir,attempt_dir);
                    results = grab_results(result_path)
                    attempt_results.append({"results":results, "attempt":attempt_dir})
                combination_results.append({"combination":combination_dir,"attempt_results":attempt_results})
            coverage_results.append({"coverage":coverage_dir, "combination_results":combination_results})
            processed_coverage = process_results(coverage_results)
        program_results.append({"program":program_dir,"coverage_results":coverage_results})

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
