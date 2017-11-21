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
from subprocess import Popen, PIPE
import re
import numpy as np
REPEAT_NUMBER=1
def get_immediate_subdirectories(a_dir):
    return [name for name in os.listdir(a_dir)
            if os.path.isdir(os.path.join(a_dir, name))]

def grab_results(output):
    #TODO parse stout result
    re1='(cputime)' # Word 1
    re2='(=)'   # Any Single Character 1
    re3='([+-]?\\d*\\.\\d+)(?![-+0-9\\.])'  # Float 1
    re4='([a-z])'   # Any Single Word Character (Not Whitespace) 1
    rg = re.compile(re1+re2+re3+re4,re.IGNORECASE|re.DOTALL|re.MULTILINE)
    m = rg.search(output)
    result ={}
    if m:
        result["cpu"]=m.group(3)
    else:
        print "Can't find cpu"
    #now search for memory
    re1='(memory)'
    rg = re.compile(re1+re2+re3+re4,re.IGNORECASE|re.DOTALL|re.MULTILINE)
    m = rg.search(output)
    if m:
        result["memory"]=group(3)
    else:
        print "Can't find memory"
    return result
def prepare_result_folder(directory):
    directory = os.path.join(directory, "runs")
    if not os.path.exists(directory):
            os.makedirs(directory)
def measure_overhead(result_directory,program):
    results = []
    global REPEAT_NUMBER
    program_path = os.path.join(result_directory,program)
    #TODO run runexec 100 times and calculate avg and std
    for i in range(REPEAT_NUMBER):
        #call(["sosylib_measure.sh",program_path])
        print str(i)," trying to run:",program_path
        process = Popen(["runexec",program_path],stdout=PIPE)
        (output,err)=process.communicate()
        exit_code=process.wait()
        if exit_code!=0:
            print "Something went wrong running ",program_path
            exit(1)
            return
        results.append(grab_results(output)) 
        #TODO: run any other tool here
    #write results to the directory 
    runs_path=os.path.join(result_directory,'runs.json')
    with open(runs_path, 'wb') as outfile:
        json.dump(results,outfile)
    return results
def process_results(result_path,results):
    #TODO do whatever and add outcome(s) to the results file
    print "process me", len(results)
    cpu_reads = [float(d['cpu']) for d in results if 'cpu' in d]
    mem_reads= [float(d['memory']) for d in results if 'memory' in d]
    process_result = {}
    print cpu_reads

    process_result['cpu_mean']=np.mean(cpu_reads)
    process_result['cpu_std']=np.std(cpu_reads)
    process_result['mem_mean']=np.mean(mem_reads)
    process_result['mem_std']=np.std(mem_reads)
    pprint(process_result)
    process_result_path= os.path.join(result_path,"runs_processed.json")
    with open(process_result_path, 'wb') as outfile:
        json.dump(process_result,outfile)
    return process_result
def process_files(directory):
    for program_dir in get_immediate_subdirectories(directory):
        for coverage_dir in get_immediate_subdirectories(os.path.join(directory,program_dir)):
            for combination_dir in get_immediate_subdirectories(os.path.join(directory,program_dir,coverage_dir)):
                attempt_path = os.path.join(directory,program_dir,coverage_dir,combination_dir);
                for attempt_dir in get_immediate_subdirectories(attempt_path):
                    result_path = os.path.join(directory,program_dir,coverage_dir,combination_dir,attempt_dir);
                    #create folder
                    #prepare_result_folder(result_path)
                    results = measure_overhead(result_path,program_dir)
                    process_results(result_path,results)
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
