import os
import json
from pprint import pprint
import numpy as np
oh_results = {}
sc_results = {}
BEFORE_CLONE_KEY='input_indep_coverage_before_clonning'
AFTER_CLONE_KEY='input_indep_coverage_after_clonning'
CLONE_COVERAGE_KEY='input_indep_coverage'

BEFORE_EXTRACT_KEY='input_dep_coverage_before_extraction'
AFTER_EXTRACT_KEY='input_dep_coverage_after_extraction'
EXTRACT_COVERAGE_KEY='input_dep_coverage'
def get_immediate_subdirectories(a_dir):
    return [name for name in os.listdir(a_dir)
            if os.path.isdir(os.path.join(a_dir, name))]
def load_result_file(binary_name,result_directory,filepath,before_key,after_key,coverage_key):
    clone_result = json.load(open(os.path.join(result_directory,filepath)))
    l = (key for key in clone_result[after_key].keys() if binary_name in key)
    full_key=''
    for k in l:
        full_key=k
        break
    #print 'after ', after_key
    after_re = clone_result[after_key][full_key][coverage_key]
    #print 'before ', before_key
    before_re = clone_result[before_key][full_key][coverage_key]
    return before_re,after_re
def grab_results(result_directory,binary_name):
    #Baseline do not have protection stats
    #There are reports at function level in stat files, we just need the binary level reports
    before_clone_re,after_clone_re = load_result_file(binary_name,result_directory,"clone.stats",BEFORE_CLONE_KEY,AFTER_CLONE_KEY,CLONE_COVERAGE_KEY)
    print "clone result"
    pprint(before_clone_re)
    pprint(after_clone_re)
    before_extract_re,after_extract_re = load_result_file(binary_name,result_directory,"extract.stats",BEFORE_EXTRACT_KEY,AFTER_EXTRACT_KEY,EXTRACT_COVERAGE_KEY)
    print "extract result"
    pprint(before_extract_re)
    pprint(after_extract_re)
    return {"before_clone":before_clone_re,"after_clone":after_clone_re, "before_extract":before_extract_re,"after_extract":after_extract_re}
def dump_latex_table(results,before_key,after_key):
    from tabulate import tabulate
    headers = ["program","Inst_before", "Inst_after","BB_before","BB_after"]
    data =[] # [["tetris","Inst_b","Inst_a","BB_b","BB_a"]]
    for k in results:
        program = k['program']
        Inst_beforeClone= k['coverage_results'][before_key]['InstrCoverage']
        Inst_afterClone= k['coverage_results'][after_key]['InstrCoverage']

        BB_beforeClone= k['coverage_results'][before_key]['BlockCoverage']
        BB_afterClone= k['coverage_results'][after_key]['BlockCoverage']
        data.append([program,Inst_beforeClone,Inst_afterClone,BB_beforeClone,BB_afterClone])

    print(tabulate(data, headers=headers))
    return tabulate(data,headers=headers,tablefmt="latex")
def process_files(directory):
    program_results=[]
    for program_dir in get_immediate_subdirectories(directory):
	print 'handling ', program_dir
        result_path = os.path.join(directory,program_dir);
        results = grab_results(result_path,program_dir)
        program_results.append({"program":program_dir,"coverage_results":results})
    output_file = os.path.join(directory, "improvement-coverage-measurements.json")
    clone_file = os.path.join(directory,"clone_improvement_table.tex")
    extract_file = os.path.join(directory,"extract_improvement_table.tex")
    print 'clone improvement stats'
    clone_latex_table = dump_latex_table(program_results,'before_clone','after_clone')
    with open(clone_file,'wb') as clonefile:
        clonefile.write(clone_latex_table)
    print 'extract improvment stats'
    extract_latex_table = dump_latex_table(program_results,'before_extract','after_extract')
    with open(extract_file,'wb') as extractfile:
        extractfile.write(extract_latex_table)
    
    #with open(output_file,'wb') as outfile:
    #    json.dump(program_results,outfile)

def main():
    process_files("coverage/reports")

if __name__=="__main__":
    main()
