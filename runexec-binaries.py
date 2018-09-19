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
import sys
REPEAT_NUMBER=3
BASE_REPEAT_NUMBER= 5 
RUNSPROCESSED="runs_processed.json"
CMDLINE_ARGS="cmdline-args"
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
    exit_code = -1
    result ={}
    if m:
        result["cpu"]=m.group(3)
    else:
        print "Can't find cpu"
    #now search for memory
    re1='(memory)'
    re3='(\\d+)'
    rg = re.compile(re1+re2+re3,re.IGNORECASE|re.DOTALL|re.MULTILINE)
    m = rg.search(output)
    if m:
        result["memory"]=m.group(3)
    else:
        print "Can't find memory"
	print output
    re1="(exitcode)"
    rg = re.compile(re1+re2+re3,re.IGNORECASE|re.DOTALL|re.MULTILINE)
    m = rg.search(output)
    print output
    if m:
        exit_code=m.group(3)
    else:
	print 'can not find exit code'
	exit(1)
    return exit_code, result
def prepare_result_folder(directory):
    directory = os.path.join(directory, "runs")
    if not os.path.exists(directory):
            os.makedirs(directory)
def read_args(program):
    filename = os.path.join(CMDLINE_ARGS,program+'.runexec')
    if os.path.exists(filename):
        with open(filename, 'r') as myfile:
             return myfile.read()

    filename = os.path.join(CMDLINE_ARGS,program)
    if os.path.exists(filename):
        with open(filename, 'r') as myfile:
             return myfile.read()
    return ''
def measure_overhead(result_directory,program,repeat):
    results = []
    program_path = os.path.join(result_directory,program)
    if not os.path.exists(program_path):
        print "Found a folder without a binary in it"
        #exit(1)
        return  
    cmd_args = read_args(program).replace('\n','') 
    #cmd_args = cmd_args.replace('<','\<').replace('>','/>')
    print cmd_args
    #TODO run runexec 100 times and calculate avg and std
    for i in range(repeat):
        cmd=''
        #TODO: find a better way to pass args to toast, Dirty hack to get toast working
        if program == 'toast.x.bc':
            output_file = 'cmdline-args/toast_input_small.au.gsm'
            if os.path.isfile(output_file):
                os.remove(output_file)
        print str(i)," trying to run:",program_path
        if program == "rawdaudio.x.bc" or program == "rawcaudio.x.bc":
            cmd_file = open("cmd.sh", 'w')
            cmd_file.write(program_path)
            cmd_file.write(cmd_args)
            cmd_file.close()
            cmd = 'runexec -- sh {}'.format(cmd_file.name)
        else:
            cmd = 'runexec  -- {} {}'.format(program_path,cmd_args)
        #call(["sosylib_measure.sh",program_path])
	#--container throws a suspicious warning, I'm not sure it the measurements are good
        #cmd = 'runexec {} {} --container'.format(program_path,cmd_args)
        print cmd
        process = Popen(cmd,shell=True,stdout=PIPE)
        (output,err)=process.communicate()
        exit_code=process.wait()
	print 'exitcode=',exit_code
        if exit_code!=0:
            print "Something went wrong running runexec ",program_path
            #exit(1)
            return
	program_exit_code,result = grab_results(output)
	print "program_exit code:",program_exit_code
	if int(program_exit_code) != 0 :
		print program,' Exit code:',program_exit_code,' faulty program execution!... Check output.log for more info...'
        if int(program_exit_code) == 0 or program == 'bf.x.bc' or program == 'patricia.x.bc':
            if program == 'bf.x.bc' or program == 'patricia.x.bc':
                print 'I see bf being added to the results'
            #TODO: bf.x.bc exits with 256 despite the seemingly correct execution
            results.append(result) 
        #TODO: run any other tool here
    #write results to the directory 
    if len(results)!=0:
        runs_path=os.path.join(result_directory,'runs.json')
        with open(runs_path, 'wb') as outfile:
            json.dump(results,outfile)
    else:
        print 'Failed to run {} and thus no overhead results were captured'.format(program)
    return results
def process_results(result_path,results):
    #TODO do whatever and add outcome(s) to the results file
    if results is None:
         return
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
    process_result_path= os.path.join(result_path,RUNSPROCESSED)
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
		    #if processed file already exists, do not run the program again
		    processed_runs_file = os.path.join(result_path,RUNSPROCESSED)
		    if os.path.exists(processed_runs_file):
			continue
                    global REPEAT_NUMBER
                    global BASE_REPEAT_NUMBER
                    repeat = REPEAT_NUMBER
                    if coverage_dir == '0' or coverage_dir=='100':
                        repeat = BASE_REPEAT_NUMBER
                    results = measure_overhead(result_path,program_dir, repeat)
                    process_results(result_path,results)
 #   pprint(program_results)

#    for filename in os.listdir(directory):
#	if filename.endswith(".bc"): 
#	    print(os.path.join(directory, filename))
#	continue
 #   else:
#	continue

def main():
    binaries_path = "binaries/"
    if len(sys.argv)>1:
        binaries_path = sys.argv[1]
    print binaries_path
    process_files(binaries_path)

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
