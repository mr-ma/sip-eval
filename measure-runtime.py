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
LOG_DIR="/home/sip/eval/binaries/"
LOG_FILE="transform_log"


class runtimes:
    def __init__(self, program):
        self.name = program
        self.input_dep_time = []
        self.oh_time = []
        self.sc_time = []


program_runtimes=[]
mean=0
median=0
runs=5

def get_time(line):
   times = re.findall('\)(.+?)\(', line) 
   elapsed_time = times[2]
   return float(elapsed_time)


def parse_log(program, log_path):
    log_file = file(log_path)
    input_dependency_time_line=""
    oh_time_line=""
    sc_time_line=""
    for line in log_file:
        if input_dep_descr in line:
            input_dependency_time_line = line
        if oh_descr in line:
            oh_time_line = line
        if sc_descr in line:
            sc_time_line = line
    if input_dependency_time_line:
       program.input_dep_time.append(get_time(input_dependency_time_line))
    if oh_time_line:
       program.oh_time.append(get_time(oh_time_line))
    if sc_time_line:
       program.sc_time.append(get_time(sc_time_line))



def parse_program_logs(program):
    program_dir = os.path.join(LOG_DIR, program.name)
    for run in os.listdir(program_dir):
        log_path = os.path.join(program_dir, run, LOG_FILE)
        parse_log(program, log_path)

    
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
    times=[]
    for program in program_runtimes:
        input_deps = input_deps + program.input_dep_time
        ohs = ohs + program.oh_time
        scs = scs + program.sc_time
        input_dep_time_array = np.array(program.input_dep_time)
        oh_time_array = np.array(program.oh_time)
        sc_time_array = np.array(program.sc_time)
        times_array = input_dep_time_array + sc_time_array + oh_time_array
        times += times_array.tolist()

    input_dep_median = np.median(input_deps)
    oh_median = np.median(ohs)
    sc_median = np.median(scs)
    median = np.median(times)
    return (input_dep_median, oh_median, sc_median, median)

def compute_mean_time():
    sum_input_dep=0
    sum_oh=0
    sum_sc=0
    sum_time=0
    for program in program_runtimes:
        sum_input_dep += sum(program.input_dep_time) 
        sum_oh += sum(program.oh_time) 
        sum_sc += sum(program.sc_time) 

    sum_time = sum_input_dep + sum_oh + sum_sc
    size = len(program_runtimes) * runs
    input_dep_mean = sum_input_dep/size
    oh_mean = sum_oh/size
    sc_mean = sum_sc/size
    mean = (sum_input_dep + sum_oh + sum_sc)/size
    return (input_dep_mean, oh_mean, sc_mean, mean)

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
    headers = ["program", "min input dep", "max input dep", "min oh", "max oh", "min sc", "max sc"]
    data=[]
    for program in program_runtimes:
        data.append([program.name, min(program.input_dep_time), max(program.input_dep_time), min(program.oh_time), max(program.oh_time), min(program.sc_time), max(program.sc_time)])

    dataset_headers = ["mean input dep", "mean oh", "mean sc", "mean", "median input dep", "median oh", "median sc", "median"]
    means = compute_mean_time()
    medians = compute_median_time()
    dataset_data=[]
    dataset_data.append([means[0], means[1], means[2], means[3], medians[0], medians[1], medians[2], medians[3]])

    programs_latex_table = tabulate(data,headers=headers,tablefmt="latex")
    dataset_latex_table = tabulate(dataset_data, headers=dataset_headers, tablefmt="latex")
    table_file = os.path.join(TEX_OUT_FOLDER, TEX_OUT_FILE)
    with open(table_file,'wb') as tablefile:
        tablefile.write(programs_latex_table)
        tablefile.write(dataset_latex_table)


def main():
    collect_programs()
    parse_logs()
    print_parsed_data()
    dump_latex_table()

if __name__=="__main__":
    main()


