import os
import json
from pprint import pprint
import numpy as np

INFO_DIR="/home/sip/eval/dataset_info/"
TEX_OUT_FOLDER='tex'
#INFO_DIR="/home/anahitik/SIP/sip-eval/dataset_info/"
STATS="stats"
OH_STATS="oh.stats"
MODULE_DATA="module_data"
INPUT_DEP_STATS_KEY="inputdep_stats"
INPUT_DEP_COVERAGE_KEY="input_dep_coverage"
INPUT_INDEP_COVERAGE_KEY="input_indep_coverage"
INSTR_COVERAGE_KEY="InstrCoverage"
INSTRUCTIONS_NUMBER_KEY="NumInstrs"
DATA_INDEP_COVERAGE_SECTION_KEY="data_indep_coverage"
DATA_INDEP_COVERAGE_KEY="DataIndepCoverage"
INPUT_INDEP_INSTR_KEY="NumInputIndepInstr"
DATA_INDEP_INSTR_KEY="DataIndepInstrs"

OH_PROTECTED_INSTR_KEY="numberOfProtectedInstructions"
SHORT_RANGE_OH_PROTECTED_INSTR_KEY="numberOfShortRangeProtectedInstructions"
OH_PROTECTED_BLOCKS_KEY="numberOfProtectedBlocks"
SHORT_RANGE_OH_PROTECTED_BLOCKS_KEY="numberOfShortRangeProtectedBlocks"
OH_PROTECTED_BLOCK_COVERAGE_KEY="basicBlockCoverage"
SENSITIVE_BLOCKS_KEY="numberOfSensitiveBlocks"

OH_NON_HAHSBALE_INSTR_KEY="numberOfNonHashableInstructions"
OH_FUNCTION_COVERAGE_KEY="functionCoverage"
OH_SENSITIVE_FUNCTIONS_KEY="numberOfSensitiveFunctions"
OH_ARG_USING_SKIPPED_BLOCKS="numberOfSkippedArgUsingBlocks"
OH_SKIPPED_LOOP_BLOCKS="numberOfSkippedLoopBlocks"

#programs = ["tests_u2f_standard.x.bc", "tetris.bc", "2048_game.bc", "snake.bc", "tests_openssl.x.bc",
programs = ["tetris.bc", "2048_game.bc", "snake.bc"]
#programming_languages={"2048_game.bc":"C", "debug_memcached_testapp.bc":"C", "simple_parser.bc":"C++", "snake.bc":"C",
programming_languages={"2048_game.bc":"C", "snake.bc":"C", "tetris.bc":"C"}

#cat 2048_game/2048_game/2048_game.c | sed '/^\s*#/d;/^\s*$/d' | wc -l
# filter out new lines and comments
#code_lines={"2048_game.bc":301, "debug_memcached_testapp.bc":1975, "simple_parser.bc":2334, "snake.bc":400,
code_lines={"2048_game.bc":301, "snake.bc":400, "tetris.bc":305}

instructions={}
input_dep_coverage={}
input_indep_coverage={}
data_indep_coverage={}
input_indep_instr={}
data_indep_instr={}

oh_protected_instr={}
short_range_oh_protected_instr={}
oh_protected_blocks={}
short_range_oh_protected_blocks={}
oh_protected_block_coverage={}
sensitive_blocks={}
oh_non_hashable_instr={}
oh_function_coverage={}
sensitive_functions={}
arg_using_skipped_blocks={}
skipped_loop_blocks={}

def dump_latex_table():
    from tabulate import tabulate
    headers = ["program", "prog. lang.", "code lines", "LLVM instrs", "input indep instr", "input indep%", "input dep %", "data indep instr", "data indep %"]
    oh_headers = ["program", "prog. lang.", "code_lines", "LLVM instructions", "oh protected instr", "short oh protected instr",
                  "sensitive blocks", "oh protected blocks", "short oh protected blocks", "oh protected block %",
                  "sensitive func", "protected function %", "non-hashable instr", "arg using blocks", "loop blocks"]
    data =[] # [["tetris","C","305","38","9"]]
    oh_data=[]
    for key in programs:
        program = key
        prog_lang = programming_languages[key]
        code_line = code_lines[key]
        instrs = instructions[key]
        input_indep_cov = input_indep_coverage[key]
        input_indep = input_indep_instr[key]
        input_dep_cov = input_dep_coverage[key]
        data_indep_cov = data_indep_coverage[key]
        data_indep = data_indep_instr[key]
        oh_prot_instr = oh_protected_instr[key]
        short_oh_prot_instr = short_range_oh_protected_instr[key]
        sensitive_blcks = sensitive_blocks[key]
        oh_prot_block = oh_protected_blocks[key]
        short_oh_prot_block = short_range_oh_protected_blocks[key]
        oh_prot_block_cov = oh_protected_block_coverage[key]
        oh_sensitive_functions = sensitive_functions[key]
        oh_func_cov = oh_function_coverage[key]
        oh_non_hashable = oh_non_hashable_instr[key]
        arg_using_blocks = arg_using_skipped_blocks[key]
        loop_blocks = skipped_loop_blocks[key]

        data.append([program, prog_lang, code_line, instrs, input_indep, input_indep_cov, input_dep_cov, data_indep, data_indep_cov])
        oh_data.append([program, prog_lang, code_line, instrs, oh_prot_instr, short_oh_prot_instr, sensitive_blcks,
        oh_prot_block, short_oh_prot_block, oh_prot_block_cov, oh_sensitive_functions, oh_func_cov, oh_non_hashable,
        arg_using_blocks, loop_blocks])


    print(tabulate(data, headers=headers))
    latex_table = tabulate(data,headers=headers,tablefmt="latex")
    oh_latex_table = tabulate(oh_data, headers=oh_headers,tablefmt="latex")
    table_file = os.path.join(TEX_OUT_FOLDER,"dataset_info.tex")
    with open(table_file,'wb') as tablefile:
        tablefile.write(latex_table)
        tablefile.write(oh_latex_table)

data_indep_instr={}


def parse_stats(bitcode_name, dir_name):
    file_name = os.path.join(dir_name, STATS)
    stats = json.load(open(file_name))
    module_name_key = dir_name.replace("dataset_info", "dataset")
    #module_name_key = dir_name.replace("dataset_info", "dataset")
    input_dep_cov = stats[INPUT_DEP_STATS_KEY][module_name_key][INPUT_DEP_COVERAGE_KEY][INSTR_COVERAGE_KEY]
    input_dep_coverage[bitcode_name] = input_dep_cov
    input_indep_instr[bitcode_name] = stats[INPUT_DEP_STATS_KEY][module_name_key][INPUT_INDEP_COVERAGE_KEY][INPUT_INDEP_INSTR_KEY]
    input_indep_cov = stats[INPUT_DEP_STATS_KEY][module_name_key][INPUT_INDEP_COVERAGE_KEY][INSTR_COVERAGE_KEY]
    input_indep_coverage[bitcode_name] = input_indep_cov
    data_indep_instr[bitcode_name] = stats[INPUT_DEP_STATS_KEY][module_name_key][DATA_INDEP_COVERAGE_SECTION_KEY][DATA_INDEP_INSTR_KEY]
    data_indep_cov = stats[INPUT_DEP_STATS_KEY][module_name_key][DATA_INDEP_COVERAGE_SECTION_KEY][DATA_INDEP_COVERAGE_KEY]
    data_indep_coverage[bitcode_name] = data_indep_cov
    instrs = stats[INPUT_DEP_STATS_KEY][module_name_key][INPUT_INDEP_COVERAGE_KEY][INSTRUCTIONS_NUMBER_KEY]
    instructions[bitcode_name] = instrs

def parse_oh_stats(bitcode_name, dir_name):
    file_name = os.path.join(dir_name, OH_STATS)
    stats = json.load(open(file_name))
    oh_protected_instr[bitcode_name] = stats[OH_PROTECTED_INSTR_KEY]
    short_range_oh_protected_instr[bitcode_name] = stats[SHORT_RANGE_OH_PROTECTED_INSTR_KEY]
    oh_protected_blocks[bitcode_name] = stats[OH_PROTECTED_BLOCKS_KEY]
    short_range_oh_protected_blocks[bitcode_name] = stats[SHORT_RANGE_OH_PROTECTED_BLOCKS_KEY]
    oh_protected_block_coverage[bitcode_name] = stats[OH_PROTECTED_BLOCK_COVERAGE_KEY]
    sensitive_blocks[bitcode_name] = stats[SENSITIVE_BLOCKS_KEY]
    oh_non_hashable_instr[bitcode_name] = stats[OH_NON_HAHSBALE_INSTR_KEY]
    oh_function_coverage[bitcode_name] = stats[OH_FUNCTION_COVERAGE_KEY]
    sensitive_functions[bitcode_name] = stats[OH_SENSITIVE_FUNCTIONS_KEY]
    arg_using_skipped_blocks[bitcode_name] = stats[OH_ARG_USING_SKIPPED_BLOCKS]
    skipped_loop_blocks[bitcode_name] = stats[OH_SKIPPED_LOOP_BLOCKS]


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
            elif fname == OH_STATS:
                parse_oh_stats(bitcode_name, dir_name)
    
def main():
    parse_bitcode_data()
    print(instructions)
    print(input_dep_coverage)
    print(input_indep_coverage)
    print(data_indep_coverage)
    dump_latex_table()

if __name__=="__main__":
    main()

