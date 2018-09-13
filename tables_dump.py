import argparse
import os
import json
import sys
from pprint import pprint

TEX_OUT_FOLDER='tex'

def dump_coverage_table(data_file):
    from tabulate import tabulate
    tabulate.LATEX_ESCAPE_RULES={}
    table_headers = ["Program", "Blocks", "LB", "OHB%", "SROHB%", "Intrs", "OHI%", "SROHI%", "OHI", "SROHI", "LI", "IAI", "GRI", "ARI", "NHI", "CTFI", "SROHDDI"]
    table_data = []
    with open(data_file, 'r') as f:
        data = json.load(f)
        coverage_data = data["coverage_data"]
        for program_data in coverage_data:
            table_data.append([program_data["program"], program_data["sensitive_blocks"], program_data["loop_blocks"],
                    program_data["oh_block_cov"], program_data["sroh_block_cov"], program_data["instructions"],
                    program_data["oh_instr_cov"], program_data["sroh_instr_cov"], program_data["oh_instr"],
                    program_data["sroh_instr"], program_data["loop_instr"], program_data["global_reachable_instr"],
                    program_data["arg_reachable_instr"], program_data["no_dg_instr"], program_data["non_hashable_instr"],
                    program_data["cfd"], program_data["sroh_protected_ddi"]])
    table_data.sort(key = lambda x : x[1])
    latex_table = tabulate(table_data,headers=table_headers,tablefmt="latex")
    table_file = os.path.join(TEX_OUT_FOLDER, "coverage_table.tex")
    with open(table_file,'wb') as tablefile:
        tablefile.write(latex_table)

def dump_dataset_info_table(data_file, table_file_name):
    from tabulate import tabulate
    tabulate.LATEX_ESCAPE_RULES={}
    table_headers = ["Program", "Inst.", "III%", "DDI+CFDI %", "DII %"]
    table_data = []
    with open(data_file, 'r') as f:
        data = json.load(f)
        dataset_info = data["dataset_info"]
        for program_data in dataset_info:
            table_data.append([program_data["program"], program_data["instructions"], program_data["input_indep_cov"],
                    program_data["input_dep_cov"], program_data["data_indep_cov"]])
    table_data.sort(key = lambda x : x[1])
    latex_table = tabulate(table_data,headers=table_headers,tablefmt="latex")
    table_file = os.path.join(TEX_OUT_FOLDER, table_file_name)
    with open(table_file,'ab') as tablefile:
        tablefile.write(latex_table)


def dump_paper_table(data_file, table_file_name):
    from tabulate import tabulate
    tabulate.LATEX_ESCAPE_RULES={}
    table_headers = ["Program", "Instructions", "III%", "DDI+CFDI%", "DII%", "OHI", "SROHI", "OHI%", "SROHI%",
    "OHI%+SROHI%", "SI", "SROHDDI", "Blocks", "LB", "OHB%", "SROHB%", "OHB%+SROHB%"]
    table_data = []
    improvement_data = []

    with open(data_file, 'r') as f:
        data = json.load(f)
        table_info = data["table_info"]
        for program_data in table_info:
            table_data.append([program_data["program"], program_data["Instructions"], program_data["iii"],
                    program_data["ddi+cfdi"], program_data["ddi"], program_data["ohi"], program_data["srohi"],
                    program_data["ohi%"], program_data["srohi%"], program_data["oh+srohi%"], program_data["skippedi"],
                    program_data["srohddi"], program_data["blocks"], program_data["loop_blocks"], program_data["ohb%"],
                    program_data["srohb%"], program_data["oh+srohb%"]])
        improvement_info = data["improvement_data"]
        improvement_data.append(["Mean", improvement_info["mean"]])
        improvement_data.append(["Median", improvement_info["median"]])
        improvement_data.append(["Std,Dev", improvement_info["std"]])

    table_data.sort(key = lambda x : x[1])
    latex_table = tabulate(table_data,headers=table_headers,tablefmt="latex")
    table_file = os.path.join(TEX_OUT_FOLDER, table_file_name)
    improvement_table = tabulate(improvement_data, tablefmt="latex")
    with open(table_file,'ab') as tablefile:
        tablefile.write(latex_table)
        tablefile.write(improvement_table)



def dump_instructions_table(data_file, table_file_name):
    from tabulate import tabulate
    tabulate.LATEX_ESCAPE_RULES={}
    table_headers = ["Program", "Instructions", "SROHI%", "OHI%", "OH", "SROH", "SROH DDI", "LI+ARI+GRI", "CDF", "IAI", "NHI"]
    table_data = []
    with open(data_file, 'r') as f:
        data = json.load(f)
        instrs_info = data["instructions_data"]
        for program_data in instrs_info:
            table_data.append([program_data["program"], program_data["instrs"], program_data["sroh_prot_instr_cov"],
                    program_data["oh_prot_instr_cov"], program_data["oh_prot_instr"], program_data["sroh_prot_instr"],
                    program_data["sroh_prot_ddi_instr"], program_data["li+ari+gri"], program_data["cfd_instr"],
                    program_data["no_dg_instr"], program_data["non_hashable_instr"]])
    table_data.sort(key = lambda x : x[1])
    latex_table = tabulate(table_data,headers=table_headers,tablefmt="latex")
    table_file = os.path.join(TEX_OUT_FOLDER, table_file_name)
    with open(table_file,'ab') as tablefile:
        tablefile.write(latex_table)

def dump_blocks_table(data_file, table_file_name):
    from tabulate import tabulate
    tabulate.LATEX_ESCAPE_RULES={}
    table_headers = ["Program", "Blocks", "SROHB%", "OHB%", "LB", "OH", "SROH", "IAI", "NHB"]
    table_data = []
    with open(data_file, 'r') as f:
        data = json.load(f)
        blocks_info = data["blocks_data"]
        for program_data in blocks_info:
            table_data.append([program_data["program"], program_data["sensitive_blocks"], program_data["sroh_prot_block_cov"],
                    program_data["oh_prot_block_cov"], program_data["loop_blocks"], program_data["oh_prot_instr"],
                    program_data["sroh_prot_instr"], program_data["no_dg_blocks"], program_data["non_hashable_blocks"]])
    table_data.sort(key = lambda x : x[1])
    latex_table = tabulate(table_data,headers=table_headers,tablefmt="latex")
    table_file = os.path.join(TEX_OUT_FOLDER, table_file_name)
    with open(table_file,'ab') as tablefile:
        tablefile.write(latex_table)

def dump_improvement_table(data_file, table_file_name):
    from tabulate import tabulate
    tabulate.LATEX_ESCAPE_RULES={}
    table_headers = ["Data improved", "Average", "Median", "Standard Deviation"]
    table_data = []
    with open(data_file, 'r') as f:
        data = json.load(f)
        improvement_data = data["improvement_data"]
        iii_data = improvement_data["iii"]
        table_data.append(["III%", iii_data["average"], iii_data["median"], iii_data["std"]])
        srohb_data = improvement_data["srohb"]
        table_data.append(["SROHB%", srohb_data["average"], srohb_data["median"], srohb_data["std"]])
        ohb_data = improvement_data["ohb"]
        table_data.append(["OHB%", ohb_data["average"], ohb_data["median"], ohb_data["std"]])
        srohi_data = improvement_data["srohi"]
        table_data.append(["SROHI%", srohi_data["average"], srohi_data["median"], srohi_data["std"]])
        ohi_data = improvement_data["ohi"]
        table_data.append(["OHI%", ohi_data["average"], ohi_data["median"], ohi_data["std"]])

    latex_table = tabulate(table_data,headers=table_headers,tablefmt="latex")
    table_file = os.path.join(TEX_OUT_FOLDER, table_file_name)
    with open(table_file,'ab') as tablefile:
        tablefile.write(latex_table)

def dump_paper_tables(data_file):
    table_file_name = "dataset_tables.tex"
    dump_dataset_info_table(data_file, table_file_name)
    dump_instructions_table(data_file, table_file_name)
    dump_blocks_table(data_file, table_file_name)
    dump_improvement_table(data_file, table_file_name)

def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('-c',action='store', dest='coverage_file', help='Json file containing coverage info',required=False,type=str,default="coverage.json")
    parser.add_argument('-d',action='store', dest='dataset_file',help='Json file containing dataset info',required=False, type=str, default="dataset_info.json")
    parser.add_argument('-p',action='store', dest='paper_table_file',help='Json file containing paper table info',required=False, type=str, default="paper_table.json")
    results = parser.parse_args()
    dump_coverage_table(results.coverage_file)
    dump_paper_table(results.paper_table_file, "paper_table.tex")
    dump_paper_tables(results.dataset_file)

if __name__=="__main__":
    main()


