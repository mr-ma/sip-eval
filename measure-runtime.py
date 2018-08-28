import os
import json
import re
from pprint import pprint
import numpy as np


input_dep_descr="runs input dependency analysis"
oh_descr="Instruments bitcode with hashing and logging functions"
sc_descr="Instruments bitcode with guards"
TEX_OUT_FOLDER='tex'
TEX_OUT_FILE='runtimes.tex'
LOG_DIR="/home/sip/eval/protection-runtimes-runs/"
RUNTIME_LOG_FILE="protection_runtime"
SC_PATCH_LOG_FILE="sc_patching_runtime"
OH_PATCH_LOG_FILE="gdb_patching_runtime"
REAL_TIME="real"

class runtimes:
    def __init__(self, program):
        self.name = program
        self.input_dep_time = []
        self.oh_time = []
        self.sc_time = []
        self.sc_patch_time=[]
        self.oh_patch_time=[]


program_runtimes=[]
mean=0
median=0
runs=4

def get_time(line):
   times = re.findall('\)(.+?)\(', line) 
   idx = len(times) - 1
   elapsed_time = times[idx]
   return float(elapsed_time)


def parse_protection_log(program, log_path):
    log_file = file(log_path)
    for line in log_file:
        if input_dep_descr in line:
            program.input_dep_time.append(get_time(line))
        if oh_descr in line:
            program.oh_time.append(get_time(line))
        if sc_descr in line:
            program.sc_time.append(get_time(line))

def parse_sc_patching_log(program, log_path):
    log_file = file(log_path)
    for line in log_file:
        if REAL_TIME in line:
            time = line.split()[1] 
            program.sc_patch_time.append(float(time))

def parse_oh_patching_log(program, log_path):
    log_file = file(log_path)
    for line in log_file:
        if REAL_TIME in line:
            time = line.split()[1] 
            program.oh_patch_time.append(float(time))



def parse_program_logs(program):
    program_dir = os.path.join(LOG_DIR, program.name)
    runtime_log_path = os.path.join(program_dir, RUNTIME_LOG_FILE)
    parse_protection_log(program, runtime_log_path)
    sc_log_path = os.path.join(program_dir, SC_PATCH_LOG_FILE)
    parse_sc_patching_log(program, sc_log_path)
    oh_log_path = os.path.join(program_dir, OH_PATCH_LOG_FILE)
    parse_oh_patching_log(program, oh_log_path)
    
def parse_logs():
    for program in program_runtimes:
        print ("Parse logs for program " + program.name)
        parse_program_logs(program)


def collect_programs():
    for program in os.listdir(LOG_DIR):
        print ("Found bitcode " + program)
        runtime = runtimes(program)
        program_runtimes.append(runtime)

def compute_median_time():
    from numpy import median
    input_deps=[]
    ohs=[]
    scs=[]
    sc_patches=[]
    oh_patches=[]
    times=[]
    for program in program_runtimes:
        input_deps = input_deps + program.input_dep_time
        ohs = ohs + program.oh_time
        scs = scs + program.sc_time
        sc_patches = sc_patches + program.sc_patch_time
        oh_patches = oh_patches + program.oh_patch_time
        input_dep_time_array = np.array(program.input_dep_time)
        oh_time_array = np.array(program.oh_time)
        sc_time_array = np.array(program.sc_time)
        sc_patched_array = np.array(program.sc_patch_time)
        oh_patched_array = np.array(program.oh_patch_time)
        times_array = input_dep_time_array + sc_time_array + oh_time_array + sc_patched_array + oh_patched_array
        times += times_array.tolist()

    input_dep_median = np.median(input_deps)
    oh_median = np.median(ohs)
    sc_median = np.median(scs)
    sc_patch_median = np.median(sc_patches)
    oh_patch_median = np.median(oh_patches)
    median = np.median(times)
    return (input_dep_median, oh_median, sc_median, sc_patch_median, oh_patch_median, median)

def compute_mean_time():
    sum_input_dep=0
    sum_oh=0
    sum_sc=0
    sum_sc_patch=0
    sum_oh_patch=0
    sum_time=0
    for program in program_runtimes:
        sum_input_dep += sum(program.input_dep_time) 
        sum_oh += sum(program.oh_time) 
        sum_sc += sum(program.sc_time) 
        sum_sc_patch += sum(program.sc_patch_time)
        sum_oh_patch += sum(program.oh_patch_time)

    sum_time = sum_input_dep + sum_oh + sum_sc + sum_sc_patch + sum_oh_patch
    size = len(program_runtimes) * runs
    input_dep_mean = sum_input_dep/size
    oh_mean = sum_oh/size
    sc_mean = sum_sc/size
    sc_patch_mean = sum_sc_patch/size
    oh_patch_mean = sum_oh_patch/size
    mean = sum_time/size
    return (input_dep_mean, oh_mean, sc_mean, sc_patch_mean, oh_patch_mean, mean)

def print_parsed_data():
    for program in program_runtimes:
        print ("Program " + program.name)
        print ("input dep times:")
        print program.input_dep_time
        print ("oh times:")
        print program.oh_time
        print ("sc times:")
        print program.sc_time


def dump_latex_table():
    from tabulate import tabulate
    headers = ["program", "min input dep", "max input dep", "min oh", "max oh", "min sc", "max sc", "min sc patch", "max sc patch", "min oh patch", "max oh patch"]
    data=[]
    for program in program_runtimes:
        data.append([program.name, min(program.input_dep_time), max(program.input_dep_time), min(program.oh_time),
        max(program.oh_time), min(program.sc_time), max(program.sc_time), min(program.sc_patch_time),
        max(program.sc_patch_time), min(program.oh_patch_time), max(program.oh_patch_time)])

    dataset_headers = ["mean input dep", "mean oh", "mean sc", "mean sc patch", "mean oh patch", "mean",
                       "median input dep", "median oh", "median sc", "median sc patch", "median oh patch", "median"]
    means = compute_mean_time()
    medians = compute_median_time()
    dataset_data=[]
    dataset_data.append([means[0], means[1], means[2], means[3], means[4], means[5], medians[0], medians[1], medians[2],
            medians[3], medians[4], medians[5]])

    programs_latex_table = tabulate(data,headers=headers,tablefmt="latex")
    dataset_latex_table = tabulate(dataset_data, headers=dataset_headers, tablefmt="latex")
    table_file = os.path.join(TEX_OUT_FOLDER, TEX_OUT_FILE)
    with open(table_file,'wb') as tablefile:
        tablefile.write(programs_latex_table)
        tablefile.write(dataset_latex_table)


def main():
    collect_programs()
    parse_logs()
    #print_parsed_data()
    dump_latex_table()

if __name__=="__main__":
    main()


