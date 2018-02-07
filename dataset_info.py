import os
import json
from pprint import pprint
import numpy as np

INFO_DIR="/home/sip/eval/dataset_info/"
TEX_OUT_FOLDER='tex'
#INFO_DIR="/home/anahitik/sip-eval/dataset_info/"
STATS="stats"
MODULE_DATA="module_data"
INPUT_DEP_STATS_KEY="inputdep_stats"
INPUT_DEP_COVERAGE_KEY="input_dep_function_coverage"
INPUT_INDEP_COVERAGE_KEY="input_indep_function_coverage"
INSTR_COVERAGE_KEY="InstrCoverage"
INSTRUCTIONS_NUMBER_KEY="NumInstrs"

programs = ["tests_u2f_standard.x.bc", "tetris.bc", "2048_game.bc", "snake.bc", "tests_openssl.x.bc",
"debug_memcached_testapp.bc"]
programming_languages={"2048_game.bc":"C", "debug_memcached_testapp.bc":"C", "simple_parser.bc":"C++", "snake.bc":"C",
"tests_openssl.x.bc":"C", "tests_u2f_standard.x.bc":"C", "tetris.bc":"C"}

#cat 2048_game/2048_game/2048_game.c | sed '/^\s*#/d;/^\s*$/d' | wc -l
# filter out new lines and comments
code_lines={"2048_game.bc":301, "debug_memcached_testapp.bc":1975, "simple_parser.bc":2334, "snake.bc":400,
"tests_openssl.x.bc":22760, "tests_u2f_standard.x.bc":1428, "tetris.bc":305}

instructions={}
input_dep_coverage={}
input_indep_coverage={}

def dump_latex_table():
    from tabulate import tabulate
    headers = ["program", "programming language", "code lines", "LLVM instructions", "input indep %", "input dep %"]
    data =[] # [["tetris","C","305","38","9"]]
    for key in programs:
        program = key
        prog_lang = programming_languages[key]
        code_line = code_lines[key]
        instrs = instructions[key]
        input_indep = input_indep_coverage[key]
        input_dep = input_dep_coverage[key]
        data.append([program, prog_lang, code_line, instrs, input_indep, input_dep])

    print(tabulate(data, headers=headers))
    latex_table = tabulate(data,headers=headers,tablefmt="latex")
    table_file = os.path.join(TEX_OUT_FOLDER,"dataset_info.tex")
    with open(table_file,'wb') as tablefile:
        tablefile.write(latex_table)


def parse_stats(bitcode_name, dir_name):
    file_name = os.path.join(dir_name, STATS)
    stats = json.load(open(file_name))
    module_name_key = dir_name.replace("dataset_info", "dataset")
    input_dep_cov = stats[INPUT_DEP_STATS_KEY][module_name_key][INPUT_DEP_COVERAGE_KEY][INSTR_COVERAGE_KEY]
    input_dep_coverage[bitcode_name] = input_dep_cov
    input_indep_cov = stats[INPUT_DEP_STATS_KEY][module_name_key][INPUT_INDEP_COVERAGE_KEY][INSTR_COVERAGE_KEY]
    input_indep_coverage[bitcode_name] = input_indep_cov
    instrs = stats[INPUT_DEP_STATS_KEY][module_name_key][INPUT_INDEP_COVERAGE_KEY][INSTRUCTIONS_NUMBER_KEY]
    instructions[bitcode_name] = instrs

def get_bitcode_name_from_path(dir_name):
    return os.path.basename(os.path.normpath(dir_name))

def parse_bitcode_data():
    rootDir = INFO_DIR
    for dir_name, subdirList, fileList in os.walk(rootDir):
        bitcode_name = get_bitcode_name_from_path(dir_name)
        print('Found bitcode: %s' % bitcode_name)
        for fname in fileList:
            print('\t%s' % fname)
            if fname == STATS:
                parse_stats(bitcode_name, dir_name)
    
def main():
    parse_bitcode_data()
    print(instructions)
    print(input_dep_coverage)
    print(input_indep_coverage)
    dump_latex_table()

if __name__=="__main__":
    main()

