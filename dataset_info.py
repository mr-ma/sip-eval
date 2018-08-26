import os
import json
from pprint import pprint
import numpy as np

INFO_DIR="/home/sip/eval/dataset_info/"
#INFO_DIR="/home/anahitik/SIP/sip-eval/dataset_info/"
TEX_OUT_FOLDER='tex'
STATS="stats"
OH_STATS="oh.stats"
MODULE_DATA="module_data"
INPUT_DEP_STATS_KEY="inputdep_stats"
INPUT_DEP_COVERAGE_KEY="input_dep_coverage"
INPUT_INDEP_COVERAGE_KEY="input_indep_coverage"
INSTR_COVERAGE_KEY="InstrCoverage"
INSTRUCTIONS_NUMBER_KEY="NumInstrs"
BLOCKS_NUMBER_KEY="NumBlocks"
DATA_INDEP_COVERAGE_SECTION_KEY="data_indep_coverage"
DATA_INDEP_COVERAGE_KEY="DataIndepCoverage"
INPUT_INDEP_INSTR_KEY="NumInputIndepInstr"
DATA_INDEP_INSTR_KEY="DataIndepInstrs"
ARGUMENT_DEP_DATA_INDEP_INSTR_KEY="ArgumentDepInstrs";
DATA_INDEP_INSTR_IN_DATA_OR_ARGUMENT_DEP_LOOP_KEY="ArgumentOrDataDepLoopInstrs";

OH_PROTECTED_INSTR_KEY="numberOfProtectedInstructions"
SHORT_RANGE_OH_PROTECTED_INSTR_KEY="numberOfShortRangeProtectedInstructions"
OH_NON_HAHSBALE_INSTR_KEY="numberOfNonHashableInstructions"
UNPROTECTED_LOOP_INSTRUCTIONS="numberOfUnprotectedLoopInstructions"
UNPROTECTED_ARGUMENT_REACHABLE_INSTRUCTIONS="numberOfUnprotectedArgumentReachableInstructions"
UNPROTECTED_GLOBAL_REACHABLE_INSTRUCTIONS="numberOfUnprotectedGlobalReachableInstructions"
UNPROTECTED_DATA_DEPENDENT_INSTRUCTIONS="numberOfDataDependentInstructions"
OTHER_UNPROTECTED_INSTRUCTIONS="numberOfOtherUnprotectedInstructions"
UNPROTECTED_INSTRUCTIONS_IN_FILTERED_FUNCTIONS="numberOfInstructionsInFilteredFunctions"
UNPROTECTED_INSTRUCTIONS_IN_FUNCTIONS_WITH_NO_DG="numberOfInstructionsInFunctionsWithNoDG"
SENSITIVE_BLOCKS_KEY="numberOfSensitiveBlocks"
OH_PROTECTED_BLOCKS_KEY="numberOfProtectedBlocks"
SHORT_RANGE_OH_PROTECTED_BLOCKS_KEY="numberOfShortRangeProtectedBlocks"
NON_HASHABLE_BLOCKS_KEY="numberOfNonHashableBlocks"
UNPROTECTED_DATA_DEPENDENT_LOOP_BLOCKS_KEY="numberOfUnprotectedDataDependentLoopBlocks"
UNPROTECTED_ARGUMENT_REACHABLE_LOOP_BLOCKS_KEY="numberOfUnprotectedArgumentReachableLoopBlocks"
UNPROTECTED_GLOBAL_REACHABLE_LOOP_BLOCKS_KEY="numberOfUnprotectedGlobalReachableLoopBlocks"
UNPROTECTED_DATA_DEPENDENT_BLOCKS="numberOfUnprotectedDataDependentBlocks"
UNPROTECTED_BLOCKS_IN_FUNCTIONS_WITH_NO_DG="numberOfBlocksInFunctionsWithNoDG"
OH_PROCESSED_INSTR="numberOfOHProcessedInstr"

#OH_PROTECTED_FUNCTION_KEY="numberOfProtectedFunctions"
#OH_SENSITIVE_FUNCTIONS_KEY="numberOfSensitiveFunctions"
#OH_SKIPPED_LOOP_BLOCKS="numberOfShortRangeSkippedLoopBlocks"

programs = []
#code_lines={"2048_game.bc":301, "snake.bc":400, "tetris.bc":305}

instructions={}
blocks={}
input_dep_coverage={}
input_indep_coverage={}
data_indep_coverage={}
input_indep_instr={}
data_indep_instr={}
argument_dep_data_indep_instr={}
argument_or_data_dep_loop_instr={}

oh_protected_instr={}
short_range_oh_protected_instr={}
oh_non_hashable_instr={}
unprotected_loop_instr={}
unprotected_argument_reachable_instr={}
unprotected_global_reachable_instr={}
unprotected_data_dep_instr={}
unprotected_instr={}
unprotected_filtered_instr={}
unprotected_instr_in_functions_with_no_dg={}

sensitive_blocks={}
oh_protected_blocks={}
short_range_oh_protected_blocks={}
oh_protected_block_coverage={}
sroh_protected_block_coverage={}
non_hashable_blocks={}
unprotected_data_dep_loop_blocks={}
unprotected_arg_reachable_loop_blocks={}
unprotected_global_reachable_loop_blocks={}
unprotected_data_dep_blocks={}
unprotected_blocks_in_functions_with_no_dg={}
oh_processed_instrs={}

def average(numbers):
    import numpy as np
    return round(np.average(numbers), 2)

def median(numbers):
    from numpy import median
    return round(median(numbers), 2)

def std_deviation(numbers):
    import numpy as np
    return round(np.std(numbers), 2)

def dump_latex_table_for_paper(with_dg = False):
    from tabulate import tabulate
    input_dep_headers = ["Program", "Inst.", "III%", "DDI+CFDI %", "DII %"]
    oh_block_coverage_headers = ["Program", "Blocks", "SROHB%", "OHB%", "LB", "OH", "SROH", "IAI", "NHB"]
    oh_instr_coverage_headers = ["Program", "Instructions", "SROHI%", "OHI%", "OH", "SROH", "LI+ARI+GRI", "IAI", "NHI"]
    improvement_headers = ["Data improved", "Average", "Median", "Standard Deviation"]

    input_dep_data = []
    oh_block_coverage_data = []
    oh_instr_coverage_data=[]
    iiis = []
    sroh_blocks = []
    sroh_instrs = []
    oh_blocks = []
    oh_instrs = []
    for key in programs:
        program = key[:key.index(".")]
        instrs = instructions[key]
        input_indep_cov = round(input_indep_coverage[key], 2)
        input_dep_cov = round(input_dep_coverage[key], 2)
        data_indep_cov = round(data_indep_coverage[key], 2)
        input_dep_data.append([program, instrs, input_indep_cov, input_dep_cov, data_indep_cov])

        if input_indep_cov > 0:
            iiis.append(input_indep_cov)

        unprotected_blocks_with_no_dg = unprotected_blocks_in_functions_with_no_dg[key]
        sensitive_blcks = sensitive_blocks[key]
        if with_dg:
            sensitive_blcks +=  unprotected_blocks_with_no_dg
        oh_prot_block = oh_protected_blocks[key]
        short_oh_prot_block = short_range_oh_protected_blocks[key]
        oh_prot_block_cov = round((oh_prot_block * 100.0)/ sensitive_blcks, 2)
        sroh_prot_block_cov = round((short_oh_prot_block * 100.0)/ sensitive_blcks, 2)
        non_hashable_block = non_hashable_blocks[key]
        data_dep_loop_blocks = unprotected_data_dep_loop_blocks[key]
        arg_reachable_loop_blocks = unprotected_arg_reachable_loop_blocks[key]
        global_reachable_loop_blocks = unprotected_global_reachable_loop_blocks[key]
        loop_blocks = data_dep_loop_blocks + arg_reachable_loop_blocks + global_reachable_loop_blocks
        data_dep_blocks = unprotected_data_dep_blocks[key]
        if sroh_prot_block_cov > 0:
            sroh_blocks.append(sroh_prot_block_cov)
        if oh_prot_block_cov > 0:
            oh_blocks.append(oh_prot_block_cov)
        oh_block_coverage_data.append([program, sensitive_blcks, sroh_prot_block_cov, oh_prot_block_cov, loop_blocks,
                oh_prot_block, short_oh_prot_block, unprotected_blocks_with_no_dg, non_hashable_block])

        unprotected_instr_with_no_dg = unprotected_instr_in_functions_with_no_dg[key]
        instrs = oh_processed_instrs[key]
        if with_dg:
            instrs += unprotected_instr_with_no_dg
        sroh_prot_instr = short_range_oh_protected_instr[key]
        sroh_prot_instr_cov = round((sroh_prot_instr * 100.0) / instrs, 2)
        oh_prot_instr = oh_protected_instr[key]
        oh_prot_instr_cov = round((oh_prot_instr * 100.0) / instrs, 2)
        non_hashable_instr = oh_non_hashable_instr[key]
        unprot_instr = unprotected_loop_instr[key]
        + unprotected_argument_reachable_instr[key]
        + unprotected_global_reachable_instr[key]
        + unprotected_instr[key]
        + unprotected_instr_with_no_dg
        if sroh_prot_instr_cov > 0:
            sroh_instrs.append(sroh_prot_instr_cov)
        if oh_prot_instr_cov > 0:
            oh_instrs.append(oh_prot_instr_cov)
        oh_instr_coverage_data.append([program, instrs, sroh_prot_instr_cov, oh_prot_instr_cov,
                oh_prot_instr, sroh_prot_instr, unprot_instr, unprotected_instr_with_no_dg, non_hashable_instr])

    #if sensitive_blcks != blocks[key]:
    #    print ("sensitive_blcks " + str(sensitive_blcks) + " all blocks " + str(blocks[key]))
    input_dep_data.sort(key = lambda x : x[1])
    oh_block_coverage_data.sort(key = lambda x: x[1])
    oh_instr_coverage_data.sort(key = lambda x : x[1])
    improvement_data = []
    improvement_data.append(["III%", average(iiis), median(iiis), std_deviation(iiis)])
    improvement_data.append(["SROHB%", average(sroh_blocks), median(sroh_blocks), std_deviation(sroh_blocks)])
    improvement_data.append(["OHB%", average(oh_blocks), median(oh_blocks), std_deviation(oh_blocks)])
    improvement_data.append(["SROHI%", average(sroh_instrs), median(sroh_instrs), std_deviation(sroh_instrs)])
    improvement_data.append(["OHI%", average(oh_instrs), median(oh_instrs), std_deviation(oh_instrs)])

    input_dep_latex_table = tabulate(input_dep_data,headers=input_dep_headers,tablefmt="latex")
    oh_block_latex_table = tabulate(oh_block_coverage_data, headers=oh_block_coverage_headers,tablefmt="latex")
    oh_instr_latex_table = tabulate(oh_instr_coverage_data, headers=oh_instr_coverage_headers,tablefmt="latex")
    improvements_latex_table = tabulate(improvement_data, headers=improvement_headers, tablefmt="latex")
    table_file_name=""
    if with_dg:
        table_file_name = "paper_tables_with_dg.tex"
    else:
        table_file_name = "paper_tables.tex"

    #table_file = os.path.join(TEX_OUT_FOLDER,"paper_tables.tex")
    table_file = os.path.join(TEX_OUT_FOLDER, table_file_name)
    with open(table_file,'wb') as tablefile:
        tablefile.write(input_dep_latex_table)
        tablefile.write(oh_block_latex_table)
        tablefile.write(oh_instr_latex_table)
        tablefile.write(improvements_latex_table)


def dump_latex_table():
    from tabulate import tabulate
    headers = ["program", "LLVM instrs", "input indep instr", "input indep%", "input dep %", "data indep instr",
    "argument dep. data indep instr", "data indep loop dep instr", "data indep %"]
    oh_block_coverage_headers = ["program", "sensitive blocks", "oh protected blocks", "short oh protected blocks", "oh protected block %",
                            "short oh protected block %", "non-hashable blocks", "unprotected loop blocks", "unprotected data dep blocks"]
    oh_instruction_coverage_headers = ["program", "LLVM instructions", "oh protected instr", "short oh protected instr",
                  "non-hashable instr", "unprotected loop instr", "unprotected arg. reachable instr", "unprotected data dep. instr",
                  "unprotected instr", "unprotected instr in filtered functions", "unprotected instr in functions with no dg", "oh processed instr"]
    data =[] # [["tetris","C","305","38","9"]]
    oh_instruction_data=[]
    oh_block_data = []
    for key in programs:
        program = key
        #prog_lang = programming_languages[key]
        #code_line = code_lines[key]
        instrs = instructions[key]
        input_indep_cov = input_indep_coverage[key]
        input_indep = input_indep_instr[key]
        input_dep_cov = input_dep_coverage[key]
        data_indep_cov = data_indep_coverage[key]
        data_indep = data_indep_instr[key]
        arg_deps = argument_dep_data_indep_instr[key]
        loop_deps = argument_or_data_dep_loop_instr[key]

        oh_prot_instr = oh_protected_instr[key]
        short_oh_prot_instr = short_range_oh_protected_instr[key]
        non_hashable_instr = oh_non_hashable_instr[key]
        loop_instr = unprotected_loop_instr[key]
        arg_reach_instr = unprotected_argument_reachable_instr[key]
        data_dep_inst = unprotected_data_dep_instr[key]
        unprot_instr = unprotected_instr[key]
        unprot_filtered_instr = unprotected_filtered_instr[key]
        unprot_no_dg_instr = unprotected_instr_in_functions_with_no_dg[key]
        oh_processed_instr = oh_processed_instrs[key]

        if instrs > oh_processed_instr:
            print ("Missing instructions in " + key + "  " + str(instrs - oh_processed_instr))
        if instrs < oh_processed_instr:
            print ("More instructions in " + key + "  " + str(oh_processed_instr - instrs))


        sensitive_blcks = sensitive_blocks[key]
        oh_prot_block = oh_protected_blocks[key]
        short_oh_prot_block = short_range_oh_protected_blocks[key]
        oh_prot_block_cov = oh_protected_block_coverage[key]
        sroh_prot_block_cov = sroh_protected_block_coverage[key]
        non_hashable_block = non_hashable_blocks[key]
        data_dep_loop_blocks = unprotected_data_dep_loop_blocks[key]
        arg_reachable_loop_blocks = unprotected_arg_reachable_loop_blocks[key]
        global_reachable_loop_blocks = unprotected_global_reachable_loop_blocks[key]
        loop_blocks = data_dep_loop_blocks + arg_reachable_loop_blocks + global_reachable_loop_blocks
        data_dep_blocks = unprotected_data_dep_blocks[key]

        blocks= oh_prot_block + short_oh_prot_block + non_hashable_block + loop_blocks + data_dep_blocks
        if blocks > sensitive_blcks:
            print ("More blocks in " + key + "  " + str(blocks - sensitive_blcks))
        if blocks < sensitive_blcks:
            print ("Missing blocks in " + key + "  " + str(sensitive_blcks - blocks))



        data.append([program, instrs, input_indep, input_indep_cov, input_dep_cov, data_indep, arg_deps, loop_deps, data_indep_cov])
        oh_block_data.append([program,  sensitive_blcks, oh_prot_block, short_oh_prot_block, oh_prot_block_cov,
                sroh_prot_block_cov, non_hashable_block,
                loop_blocks, data_dep_blocks])
        oh_instruction_data.append([program, instrs, oh_prot_instr, short_oh_prot_instr, non_hashable_instr, loop_instr,
        arg_reach_instr, data_dep_inst, unprot_instr, unprot_filtered_instr, unprot_no_dg_instr, oh_processed_instr])


    #print(tabulate(data, headers=headers))
    latex_table = tabulate(data,headers=headers,tablefmt="latex")
    oh_block_latex_table = tabulate(oh_block_data, headers=oh_block_coverage_headers,tablefmt="latex")
    oh_instr_latex_table = tabulate(oh_instruction_data, headers=oh_instruction_coverage_headers,tablefmt="latex")
    table_file = os.path.join(TEX_OUT_FOLDER,"dataset_info.tex")
    print ("Writing tables")
    with open(table_file,'wb') as tablefile:
        tablefile.write(latex_table)
        tablefile.write(oh_block_latex_table)
        tablefile.write(oh_instr_latex_table)

def parse_stats(bitcode_name, dir_name):
    file_name = os.path.join(dir_name, STATS)
    stats = json.load(open(file_name))
    #module_name_key = dir_name.replace("dataset_info", "local_dataset")
    module_name_key = dir_name.replace("dataset_info", "dataset")
    input_dep_cov = stats[INPUT_DEP_STATS_KEY][module_name_key][INPUT_DEP_COVERAGE_KEY][INSTR_COVERAGE_KEY]
    input_dep_coverage[bitcode_name] = input_dep_cov
    input_indep_instr[bitcode_name] = stats[INPUT_DEP_STATS_KEY][module_name_key][INPUT_INDEP_COVERAGE_KEY][INPUT_INDEP_INSTR_KEY]
    input_indep_cov = stats[INPUT_DEP_STATS_KEY][module_name_key][INPUT_INDEP_COVERAGE_KEY][INSTR_COVERAGE_KEY]
    input_indep_coverage[bitcode_name] = input_indep_cov
    data_indep_instr[bitcode_name] = stats[INPUT_DEP_STATS_KEY][module_name_key][DATA_INDEP_COVERAGE_SECTION_KEY][DATA_INDEP_INSTR_KEY]
    argument_dep_data_indep_instr[bitcode_name] = stats[INPUT_DEP_STATS_KEY][module_name_key][DATA_INDEP_COVERAGE_SECTION_KEY][ARGUMENT_DEP_DATA_INDEP_INSTR_KEY]
    argument_or_data_dep_loop_instr[bitcode_name] = stats[INPUT_DEP_STATS_KEY][module_name_key][DATA_INDEP_COVERAGE_SECTION_KEY][DATA_INDEP_INSTR_IN_DATA_OR_ARGUMENT_DEP_LOOP_KEY]
    data_indep_cov = stats[INPUT_DEP_STATS_KEY][module_name_key][DATA_INDEP_COVERAGE_SECTION_KEY][DATA_INDEP_COVERAGE_KEY]
    data_indep_coverage[bitcode_name] = data_indep_cov
    instrs = stats[INPUT_DEP_STATS_KEY][module_name_key][INPUT_INDEP_COVERAGE_KEY][INSTRUCTIONS_NUMBER_KEY]
    blocks[bitcode_name] = stats[INPUT_DEP_STATS_KEY][module_name_key][INPUT_INDEP_COVERAGE_KEY][BLOCKS_NUMBER_KEY]
    instructions[bitcode_name] = instrs

def parse_oh_stats(bitcode_name, dir_name):
    file_name = os.path.join(dir_name, OH_STATS)
    stats = json.load(open(file_name))
    oh_protected_instr[bitcode_name] = stats[OH_PROTECTED_INSTR_KEY]
    short_range_oh_protected_instr[bitcode_name] = stats[SHORT_RANGE_OH_PROTECTED_INSTR_KEY]
    oh_non_hashable_instr[bitcode_name] = stats[OH_NON_HAHSBALE_INSTR_KEY]
    unprotected_loop_instr[bitcode_name] = stats[UNPROTECTED_LOOP_INSTRUCTIONS]
    unprotected_argument_reachable_instr[bitcode_name] = stats[UNPROTECTED_ARGUMENT_REACHABLE_INSTRUCTIONS]
    unprotected_global_reachable_instr[bitcode_name] = stats[UNPROTECTED_GLOBAL_REACHABLE_INSTRUCTIONS]
    unprotected_data_dep_instr[bitcode_name] = stats[UNPROTECTED_DATA_DEPENDENT_INSTRUCTIONS]
    unprotected_instr[bitcode_name] = stats[OTHER_UNPROTECTED_INSTRUCTIONS]
    unprotected_filtered_instr[bitcode_name] = stats[UNPROTECTED_INSTRUCTIONS_IN_FILTERED_FUNCTIONS]
    unprotected_instr_in_functions_with_no_dg[bitcode_name] = stats[UNPROTECTED_INSTRUCTIONS_IN_FUNCTIONS_WITH_NO_DG]
    oh_processed_instrs[bitcode_name] = stats[OH_PROCESSED_INSTR]

    sensitive_blocks[bitcode_name] = stats[SENSITIVE_BLOCKS_KEY]
    oh_protected_blocks[bitcode_name] = stats[OH_PROTECTED_BLOCKS_KEY]
    short_range_oh_protected_blocks[bitcode_name] = stats[SHORT_RANGE_OH_PROTECTED_BLOCKS_KEY]
    protected_blocks = short_range_oh_protected_blocks[bitcode_name] +  oh_protected_blocks[bitcode_name]
    oh_protected_block_cov = oh_protected_blocks[bitcode_name] * 100.0 / sensitive_blocks[bitcode_name]
    oh_protected_block_coverage[bitcode_name] = oh_protected_block_cov
    sroh_protected_block_cov = short_range_oh_protected_blocks[bitcode_name] * 100.0 / sensitive_blocks[bitcode_name]
    sroh_protected_block_coverage[bitcode_name] = sroh_protected_block_cov
    non_hashable_blocks[bitcode_name] = stats[NON_HASHABLE_BLOCKS_KEY]
    unprotected_data_dep_loop_blocks[bitcode_name] = stats[UNPROTECTED_DATA_DEPENDENT_LOOP_BLOCKS_KEY]
    unprotected_arg_reachable_loop_blocks[bitcode_name] = stats[UNPROTECTED_ARGUMENT_REACHABLE_LOOP_BLOCKS_KEY]
    unprotected_global_reachable_loop_blocks[bitcode_name] = stats[UNPROTECTED_GLOBAL_REACHABLE_LOOP_BLOCKS_KEY]
    unprotected_data_dep_blocks[bitcode_name] = stats[UNPROTECTED_DATA_DEPENDENT_BLOCKS]
    unprotected_blocks_in_functions_with_no_dg[bitcode_name] = stats[UNPROTECTED_BLOCKS_IN_FUNCTIONS_WITH_NO_DG]

def get_bitcode_name_from_path(dir_name):
    return os.path.basename(os.path.normpath(dir_name))

def parse_bitcode_data():
    rootDir = INFO_DIR
    for dir_name, subdirList, fileList in os.walk(rootDir):
        bitcode_name = get_bitcode_name_from_path(dir_name)
        if fileList:
            programs.append(bitcode_name)
        print('Found bitcode: %s' % bitcode_name)
        for fname in fileList:
            #print('\t%s' % fname)
            if fname == STATS:
                parse_stats(bitcode_name, dir_name)
            elif fname == OH_STATS:
                parse_oh_stats(bitcode_name, dir_name)
    
def main():
    parse_bitcode_data()
    #print(instructions)
    #print(input_dep_coverage)
    #print(input_indep_coverage)
    #print(data_indep_coverage)
    #dump_latex_table()
    dump_latex_table_for_paper()
    dump_latex_table_for_paper(True)

if __name__=="__main__":
    main()

