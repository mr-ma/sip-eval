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

def grab_results(result_directory,protection_stats=True):
    #Baseline do not have protection stats
    oh_result={}
    sc_result={}
    if protection_stats:
        oh_result = json.load(open(os.path.join(result_directory,"oh.stats")))
   # pprint(oh_result)
        sc_result = json.load(open(os.path.join(result_directory,"sc.stats")))
    runs_result = json.load(open(os.path.join(result_directory,"runs.json")))
    runs_processed = json.load(open(os.path.join(result_directory,"runs_processed.json")))
   # pprint(sc_result)
    #TODO: grab any other result file
    if protection_stats and (not sc_result or  not oh_result):
        print "Err. sc stats or oh stats are empty ",result_directory 
        exit(1)
    return {"sc_result":sc_result,"oh_result":oh_result, "runs":runs_result, "runs_processed":runs_processed}
def process_results(coverage,results):
    #TODO do whatever and add outcome(s) to the results file
    print "process me"
    #pprint(results)
    coverage_cpu_reads = []
    coverage_memory_reads = []
    number_sensitive_inst = []
    number_oh_protected_inst = []
    number_sc_protected_inst = []
    number_sc_oh_protected_inst = []
    for combination in results:
       for attempt in combination['attempt_results']:
        #collect runs
        #coverage 0 does not have any SC OH info, it's the baseline
        if coverage != '0':
            if 'numberOfSensitiveInstructions' in attempt['results']['sc_result']:
                number_sensitive_inst.append(attempt['results']['sc_result']['numberOfSensitiveInstructions'])
            if 'numberOfProtectedInstructions' not in attempt['results']['sc_result']:
                print coverage,attempt['results']
                exit(1)
            number_sc_protected_inst.append(attempt['results']['sc_result']['numberOfProtectedInstructions'])
            number_oh_protected_inst.append(attempt['results']['oh_result']['numberOfProtectedInstructions'])
            number_sc_oh_protected_inst.append(attempt['results']['oh_result']['numberOfImplicitlyProtectedInstructions'])
            
        coverage_cpu_reads.extend([d['cpu'] for d in attempt['results']['runs'] if 'cpu' in d])
        coverage_memory_reads.extend([d['memory'] for d in attempt['results']['runs'] if 'memory' in d])
    coverage_result = {}
    
    sensitive_inst = np.array(number_sensitive_inst).astype(np.float)
    coverage_result['sensitive_inst_mean'] = np.mean(sensitive_inst)
    coverage_result['sensitive_inst_std'] = np.std(sensitive_inst)
    
    sc_protected_inst= np.array(number_sc_protected_inst).astype(np.float)
    coverage_result['sc_protected_mean'] = np.mean(sc_protected_inst)
    coverage_result['sc_protected_std'] = np.std(sc_protected_inst)
    
    oh_protected_inst= np.array(number_oh_protected_inst).astype(np.float)
    coverage_result['oh_protected_mean'] = np.mean(oh_protected_inst)
    coverage_result['oh_protected_std'] = np.std(oh_protected_inst)
    
    sc_oh_protected_inst= np.array(number_sc_oh_protected_inst).astype(np.float)
    coverage_result['sc_oh_protected_inst_mean'] = np.mean(sc_oh_protected_inst)
    coverage_result['sc_oh_protected_inst_std'] = np.std(sc_oh_protected_inst)

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
        coverage_results=[]
        for coverage_dir in get_immediate_subdirectories(os.path.join(directory,program_dir)):
            combination_results =[]
            for combination_dir in get_immediate_subdirectories(os.path.join(directory,program_dir,coverage_dir)):
                attempt_results=[]
                attempt_path = os.path.join(directory,program_dir,coverage_dir,combination_dir);
                for attempt_dir in get_immediate_subdirectories(attempt_path):
                    result_path = os.path.join(directory,program_dir,coverage_dir,combination_dir,attempt_dir);
                    #if baseline no protection stats
                    results = grab_results(result_path,coverage_dir!="0")
                    attempt_results.append({"results":results, "attempt":attempt_dir})
                combination_results.append({"combination":combination_dir,"attempt_results":attempt_results})
            processed_coverage = process_results(coverage_dir,combination_results)
            coverage_results.append({"coverage":coverage_dir, "runtime_overhead":processed_coverage,"combination_results":combination_results})
        program_results.append({"program":program_dir,"coverage_results":coverage_results})
    output_file = os.path.join(directory, "measurements.json")
    with open(output_file,'wb') as outfile:
        json.dump(program_results,outfile)
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
