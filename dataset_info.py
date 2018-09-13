import os
import json
from pprint import pprint
import numpy as np

INFO_DIR="/home/sip/eval/dataset_info/"
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
SHORT_RANGE_OH_PROTECTED_DATA_DEP_INSTR_KEY="numberOfShortRangeProtectedDataDepInstructions"
OH_NON_HAHSBALE_INSTR_KEY="numberOfNonHashableInstructions"
UNPROTECTED_LOOP_INSTRUCTIONS="numberOfUnprotectedLoopInstructions"
UNPROTECTED_LOOP_VARINAT_INSTRUCTIONS="numberOfUnprotectedLoopVariantInstructions"
UNPROTECTED_ARGUMENT_REACHABLE_INSTRUCTIONS="numberOfUnprotectedArgumentReachableInstructions"
UNPROTECTED_GLOBAL_REACHABLE_INSTRUCTIONS="numberOfUnprotectedGlobalReachableInstructions"
UNPROTECTED_DATA_DEPENDENT_INSTRUCTIONS="numberOfDataDependentInstructions"
OTHER_UNPROTECTED_INSTRUCTIONS="numberOfOtherUnprotectedInstructions"
UNPROTECTED_INSTRUCTIONS_IN_FILTERED_FUNCTIONS="numberOfInstructionsInFilteredFunctions"
UNPROTECTED_INSTRUCTIONS_IN_FUNCTIONS_WITH_NO_DG="numberOfUnprotectedInstructionsWithNoDG"
SENSITIVE_BLOCKS_KEY="numberOfSensitiveBlocks"
OH_PROTECTED_BLOCKS_KEY="numberOfProtectedBlocks"
SHORT_RANGE_OH_PROTECTED_BLOCKS_KEY="numberOfShortRangeProtectedBlocks"
NON_HASHABLE_BLOCKS_KEY="numberOfNonHashableBlocks"
UNPROTECTED_DATA_DEPENDENT_LOOP_BLOCKS_KEY="numberOfUnprotectedDataDependentLoopBlocks"
UNPROTECTED_ARGUMENT_REACHABLE_LOOP_BLOCKS_KEY="numberOfUnprotectedArgumentReachableLoopBlocks"
UNPROTECTED_GLOBAL_REACHABLE_LOOP_BLOCKS_KEY="numberOfUnprotectedGlobalReachableLoopBlocks"
UNPROTECTED_DATA_DEPENDENT_BLOCKS="numberOfUnprotectedDataDependentBlocks"
UNPROTECTED_BLOCKS_IN_FUNCTIONS_WITH_NO_DG="numberOfBlocksInFunctionsWithNoDG"
INSTRUCTIONS_IN_FUNCTIONS_WITH_NO_DG="numberOfInstructionsInFunctionsWithNoDG"
OH_PROCESSED_INSTR="numberOfOHProcessedInstr"

programs = []

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
short_range_oh_protected_data_dep_instr={}
oh_non_hashable_instr={}
unprotected_loop_instr={}
unprotected_loop_variant_instr={}
unprotected_argument_reachable_instr={}
unprotected_global_reachable_instr={}
unprotected_data_dep_instr={}
unprotected_instr={}
unprotected_filtered_instr={}
unprotected_instr_in_functions_with_no_dg={}
instr_in_functions_with_no_dg={}

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
unprotected_instructions_in_functions_with_no_dg={}
oh_processed_instrs={}

def average(numbers):
    import numpy as np
    return round(np.average(numbers), 1)

def median(numbers):
    from numpy import median
    return round(median(numbers), 1)

def std_deviation(numbers):
    import numpy as np
    return round(np.std(numbers), 1)

def dump_coverage_json(coverage_file):
    coverage_data = {}
    programs_list = []
    for key in programs:
        program_data = {}
        program = key[:key.index(".")]
        sensitive_blcks = sensitive_blocks[key]
        oh_prot_block_cov = round((oh_protected_blocks[key] * 100.0)/ sensitive_blcks, 1)
        sroh_prot_block_cov = round((short_range_oh_protected_blocks[key] * 100.0)/ sensitive_blcks, 1)

        data_dep_loop_blocks = unprotected_data_dep_loop_blocks[key]
        arg_reachable_loop_blocks = unprotected_arg_reachable_loop_blocks[key]
        global_reachable_loop_blocks = unprotected_global_reachable_loop_blocks[key]
        loop_blocks = data_dep_loop_blocks + arg_reachable_loop_blocks + global_reachable_loop_blocks

        instrs = oh_processed_instrs[key]
        sroh_prot_instr = short_range_oh_protected_instr[key]
        sroh_prot_instr_cov = round((sroh_prot_instr * 100.0) / instrs, 1)
        oh_prot_instr = oh_protected_instr[key]
        oh_prot_instr_cov = round((oh_prot_instr * 100.0) / instrs, 1)
        non_hashable_instr = oh_non_hashable_instr[key]
        li = unprotected_loop_instr[key] + unprotected_loop_variant_instr[key]
        gri = unprotected_global_reachable_instr[key]
        ari = unprotected_argument_reachable_instr[key]
        unprot_cfd = unprotected_instr[key]
        unprotected_instr_with_no_dg = unprotected_instr_in_functions_with_no_dg[key]
        sroh_prot_ddi_instr = short_range_oh_protected_data_dep_instr[key]

        program_data["program"] = program
        program_data["sensitive_blocks"] = sensitive_blcks
        program_data["loop_blocks"] = loop_blocks
        program_data["oh_block_cov"] = oh_prot_block_cov
        program_data["sroh_block_cov"] = sroh_prot_block_cov
        program_data["instructions"] = instrs
        program_data["oh_instr_cov"] = oh_prot_instr_cov
        program_data["sroh_instr_cov"] = sroh_prot_instr_cov
        program_data["oh_instr"] = oh_prot_instr
        program_data["sroh_instr"] = sroh_prot_instr
        program_data["loop_instr"] = li
        program_data["global_reachable_instr"] = gri
        program_data["arg_reachable_instr"] = ari
        program_data["no_dg_instr"] = unprotected_instr_with_no_dg
        program_data["non_hashable_instr"] = non_hashable_instr
        program_data["cfd"] = unprot_cfd
        program_data["sroh_protected_ddi"] = sroh_prot_ddi_instr
        programs_list.append(program_data)
    coverage_data["coverage_data"] = programs_list
    with open(coverage_file, 'a') as f :
        json.dump(coverage_data, f)


def dump_paper_tables_json(tables_file):
    table_data = {}
    dataset_info = []
    blocks_data = []
    instructions_data = []
    improvement_data = {}

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
        input_indep_cov = round(input_indep_coverage[key], 1)
        input_dep_cov = round(input_dep_coverage[key], 1)
        data_indep_cov = round(data_indep_coverage[key], 1)
        program_dataset_info = {"program": program, "instructions": instrs, "input_indep_cov" : input_indep_cov,
            "input_dep_cov" : input_dep_cov, "data_indep_cov" : data_indep_cov}
        dataset_info.append(program_dataset_info)

        unprotected_blocks_with_no_dg = unprotected_blocks_in_functions_with_no_dg[key]
        sensitive_blcks = sensitive_blocks[key]
        oh_prot_block = oh_protected_blocks[key]
        short_oh_prot_block = short_range_oh_protected_blocks[key]
        oh_prot_block_cov = round((oh_prot_block * 100.0)/ sensitive_blcks, 1)
        sroh_prot_block_cov = round((short_oh_prot_block * 100.0)/ sensitive_blcks, 1)
        non_hashable_block = non_hashable_blocks[key]
        data_dep_loop_blocks = unprotected_data_dep_loop_blocks[key]
        arg_reachable_loop_blocks = unprotected_arg_reachable_loop_blocks[key]
        global_reachable_loop_blocks = unprotected_global_reachable_loop_blocks[key]
        loop_blocks = data_dep_loop_blocks + arg_reachable_loop_blocks + global_reachable_loop_blocks
        data_dep_blocks = unprotected_data_dep_blocks[key]
        
        unprotected_instr_with_no_dg = unprotected_instr_in_functions_with_no_dg[key]
        sensitive_instrs = oh_processed_instrs[key]
        sroh_prot_instr = short_range_oh_protected_instr[key]
        sroh_prot_instr_cov = round((sroh_prot_instr * 100.0) / sensitive_instrs, 1)
        oh_prot_instr = oh_protected_instr[key]
        oh_prot_instr_cov = round((oh_prot_instr * 100.0) / sensitive_instrs, 1)
        non_hashable_instr = oh_non_hashable_instr[key]
        li_ari_gri = (unprotected_loop_instr[key] + unprotected_loop_variant_instr[key] +
                unprotected_argument_reachable_instr[key] + unprotected_global_reachable_instr[key])
        unprot_cfd = unprotected_instr[key]
        sroh_prot_ddi_instr = short_range_oh_protected_data_dep_instr[key]
        program_instr_data = {"program": program, "instrs": instrs, "sroh_prot_instr_cov": sroh_prot_instr_cov,
            "oh_prot_instr_cov": oh_prot_instr_cov, "oh_prot_instr": oh_prot_instr, "sroh_prot_instr": sroh_prot_instr,
            "sroh_prot_ddi_instr": sroh_prot_ddi_instr, "li+ari+gri": li_ari_gri, "cfd_instr": unprot_cfd,
            "no_dg_instr": unprotected_instr_with_no_dg, "non_hashable_instr": non_hashable_instr}
        instructions_data.append(program_instr_data)
        program_blocks_data = {"program": program, "sensitive_blocks": sensitive_blcks, "sroh_prot_block_cov":
            sroh_prot_block_cov, "oh_prot_block_cov": oh_prot_block_cov, "loop_blocks": loop_blocks, "oh_prot_instr":
            oh_prot_instr, "sroh_prot_instr": sroh_prot_instr, "no_dg_blocks": unprotected_blocks_with_no_dg,
            "non_hashable_blocks": non_hashable_block}
        blocks_data.append(program_blocks_data)

        iiis.append(input_indep_cov)
        sroh_blocks.append(sroh_prot_block_cov)
        oh_blocks.append(oh_prot_block_cov)
        sroh_instrs.append(sroh_prot_instr_cov)
        oh_instrs.append(oh_prot_instr_cov)
        
    iii_improvement = {"average" : average(iiis), "median": median(iiis), "std": std_deviation(iiis)};
    srohb_improvement = {"average": average(sroh_blocks), "median": median(sroh_blocks), "std":std_deviation(sroh_blocks)}
    ohb_improvement = {"average": average(oh_blocks), "median": median(oh_blocks), "std": std_deviation(oh_blocks)}
    srohi_improvement = {"average": average(sroh_instrs), "median": median(sroh_instrs), "std": std_deviation(sroh_instrs)}
    ohi_improvement = {"average": average(oh_instrs), "median": median(oh_instrs), "std": std_deviation(oh_instrs)}
    improvement_data = {"iii" : iii_improvement, "srohb" : srohb_improvement, "ohb": ohb_improvement,
        "srohi":srohi_improvement, "ohi": ohi_improvement}

    table_data = {"dataset_info": dataset_info, "blocks_data": blocks_data, "instructions_data": instructions_data,
        "improvement_data": improvement_data}
    with open(tables_file, 'a') as f :
        json.dump(table_data, f)


def verify_instructions_numbers():
    faulty_runs = open("faulty_runs.txt", 'ab')
    for key in programs:
        unprotected_instr_with_no_dg = unprotected_instr_in_functions_with_no_dg[key]
        sensitive_instrs = oh_processed_instrs[key]
        sroh_prot_instr = short_range_oh_protected_instr[key]
        oh_prot_instr = oh_protected_instr[key]
        non_hashable_instr = oh_non_hashable_instr[key]
        li_ari_gri = (unprotected_loop_instr[key] + unprotected_loop_variant_instr[key] +
                unprotected_argument_reachable_instr[key] + unprotected_global_reachable_instr[key])
        unprot_cfd = unprotected_instr[key]
        sroh_prot_ddi_instr = short_range_oh_protected_data_dep_instr[key]
        unprot_instr = (unprotected_loop_instr[key] + unprotected_loop_variant_instr[key] +
                unprotected_argument_reachable_instr[key] + unprotected_global_reachable_instr[key] + unprot_cfd)
        num = (unprot_instr + oh_prot_instr + sroh_prot_instr + non_hashable_instr + unprotected_instr_with_no_dg -
                sroh_prot_ddi_instr)
        if num != data_indep_instr[key]:
            faulty_runs.write(key + "\n")
            faulty_runs.write("Number of OH+SROH+LI+GRI+ARI+IAI " + str(num) + "\n")
            faulty_runs.write("Number of DII " + str(data_indep_instr[key]) + "\n")
            print(key)
            print ("Number of OH+SROH+LI+GRI+ARI+IAI " + str(num))
            print ("Number of DII " + str(data_indep_instr[key]))

def parse_stats(bitcode_name, dir_name):
    file_name = os.path.join(dir_name, STATS)
    stats = json.load(open(file_name))
    module_name_key = dir_name.replace("dataset_info", "coverage_dataset")
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
    instrs = stats[INPUT_DEP_STATS_KEY][module_name_key][DATA_INDEP_COVERAGE_SECTION_KEY][INSTRUCTIONS_NUMBER_KEY]
    blocks[bitcode_name] = stats[INPUT_DEP_STATS_KEY][module_name_key][INPUT_INDEP_COVERAGE_KEY][BLOCKS_NUMBER_KEY]
    instructions[bitcode_name] = instrs

def parse_oh_stats(bitcode_name, dir_name):
    file_name = os.path.join(dir_name, OH_STATS)
    stats = json.load(open(file_name))
    oh_protected_instr[bitcode_name] = stats[OH_PROTECTED_INSTR_KEY]
    short_range_oh_protected_instr[bitcode_name] = stats[SHORT_RANGE_OH_PROTECTED_INSTR_KEY]
    short_range_oh_protected_data_dep_instr[bitcode_name] = stats[SHORT_RANGE_OH_PROTECTED_DATA_DEP_INSTR_KEY]
    oh_non_hashable_instr[bitcode_name] = stats[OH_NON_HAHSBALE_INSTR_KEY]
    unprotected_loop_instr[bitcode_name] = stats[UNPROTECTED_LOOP_INSTRUCTIONS]
    unprotected_loop_variant_instr[bitcode_name] = stats[UNPROTECTED_LOOP_VARINAT_INSTRUCTIONS]
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
    instr_in_functions_with_no_dg[bitcode_name] = stats[INSTRUCTIONS_IN_FUNCTIONS_WITH_NO_DG]

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
    #verify_instructions_numbers()
    dump_coverage_json("coverage.json")
    dump_paper_tables_json("dataset_info.json")

if __name__=="__main__":
    main()

