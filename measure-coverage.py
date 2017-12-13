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
import numpy as np
oh_results = {}
sc_results = {}
def get_immediate_subdirectories(a_dir):
    return [name for name in os.listdir(a_dir)
            if os.path.isdir(os.path.join(a_dir, name))]

def grab_results(result_directory,binary_name):
    #Baseline does not have protection stats
    plain_result={}
    clone_result={}
    extract_result={}
    #There are reports at function level in stat files, we just need the binary level reports
    #print os.path.join(result_directory,"dependency.stats")
    #plain_result = json.load(open(os.path.join(result_directory,"dependency.stats")))
    #pprint(plain_result)
    #exit(1)
#[binary_name]
    clone_result = json.load(open(os.path.join(result_directory,"clone.stats")))#[binary_name]
    pprint(clone_result)
    extract_result = json.load(open(os.path.join(result_directory,"extract.json")))[binary_name]
    pprint (plain_result)
    pprint (clone_result)
    pprint (extract_result)
    return {"plain_result":plain_result,"clone_result":clone_result, "extract_result":extract_result}
def process_results(coverage,results):
    #TODO do whatever and add outcome(s) to the results file
    print "process me"
    #pprint(results)
    coverage_cpu_reads = []
    coverage_memory_reads= []
        
    for combination in results:
       for attempt in combination['attempt_results']:
        #collect runs
            coverage_cpu_reads.extend([d['cpu'] for d in attempt['results']['runs'] if 'cpu' in d])
            coverage_memory_reads.extend([d['memory'] for d in attempt['results']['runs'] if 'memory' in d])
    coverage_result = {}
    coverage_result['cpu_mean'] = np.mean(np.array(coverage_cpu_reads).astype(np.float))
    coverage_result['cpu_std'] = np.std(np.array(coverage_cpu_reads).astype(np.float))
    coverage_result['mem_mean'] = np.mean(np.array(coverage_memory_reads).astype(np.float))
    coverage_result['mem_std'] = np.std(np.array(coverage_memory_reads).astype(np.float))
    print coverage
    pprint(coverage_result)
    sanity_result = {}
    coverage_cpu_reads = np.array(coverage_cpu_reads).astype(np.float)
    sanity_result['min'] = np.min(coverage_cpu_reads)
    sanity_result['max'] = np.max(coverage_cpu_reads)
    sanity_result['median']=np.median(coverage_cpu_reads)
    sanity_result['percentile_90']=np.percentile(coverage_cpu_reads,90.0)

    sanity_result['percentile_50']=np.percentile(coverage_cpu_reads,50.0)
    sanity_result['percentile_80']=np.percentile(coverage_cpu_reads,80.0)
    sanity_result['percentile_40']=np.percentile(coverage_cpu_reads,40.0)
    sanity_result['percentile_30']=np.percentile(coverage_cpu_reads,30.0)
    pprint(sanity_result)
    #print "Coverage results:", coverage
    #pprint(coverage_result)
    return coverage_result
def process_files(directory):
    program_results=[]
    for program_dir in get_immediate_subdirectories(directory):
	print 'handling ', program_dir
        result_path = os.path.join(directory,program_dir);
        results = grab_results(result_path,program_dir)
        program_results.append({"program":program_dir,"coverage_results":results})
    output_file = os.path.join(directory, "coverage-measurements.json")
    with open(output_file,'wb') as outfile:
        json.dump(program_results,outfile)

def main():
    process_files("coverage/reports")

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
