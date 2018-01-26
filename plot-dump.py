import numpy as np
import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt
from pprint import pprint
import json
import os
import matplotlib.ticker as ticker
def read(file_path):
    data = json.load(open(file_path))
    overhead={}
    program_count=0
    program_count=len(data)
    print program_count
    programs=[]
    protection_coverage_table = []
    for program in data:
        pprint (program.keys())
        programs.append(program['program'])
        program_name = program['program']
        for coverage_result in program['coverage_results']:
            coverage_name= coverage_result['coverage']
            if coverage_result['coverage'] not in overhead:
                overhead[coverage_result['coverage']]={}
                overhead[coverage_result['coverage']]['cpu_means'] = []
                overhead[coverage_result['coverage']]['cpu_stds'] = []
                overhead[coverage_result['coverage']]['programs'] = []


            overhead[coverage_result['coverage']]['cpu_means'].append(coverage_result['runtime_overhead']['cpu_mean'])
            overhead[coverage_result['coverage']]['cpu_stds'].append(coverage_result['runtime_overhead']['cpu_std'])
            overhead[coverage_result['coverage']]['programs'].append(program['program'])


            pprint(coverage_result['runtime_overhead'])
            sensitive_inst_mean = coverage_result['runtime_overhead']['sensitive_inst_mean']
            sensitive_inst_std = coverage_result['runtime_overhead']['sensitive_inst_std']
            sc_protected_mean = coverage_result['runtime_overhead']['sc_protected_mean']
            sc_protected_std = coverage_result['runtime_overhead']['sc_protected_std']

            oh_protected_mean = coverage_result['runtime_overhead']['oh_protected_mean']
            oh_protected_std = coverage_result['runtime_overhead']['oh_protected_std']
            sc_oh_protected_inst_mean = coverage_result['runtime_overhead']['sc_oh_protected_inst_mean']
            sc_oh_protected_inst_std = coverage_result['runtime_overhead']['sc_oh_protected_inst_std']
            protection_coverage_table.append([program_name,int(coverage_name),sensitive_inst_mean,sensitive_inst_std,sc_protected_mean,sc_protected_std,oh_protected_mean,oh_protected_std,sc_oh_protected_inst_mean, sc_oh_protected_inst_std])

    pprint(overhead)
    return programs,overhead,protection_coverage_table

def autolabel(rects):
    for rect in rects:
        height = rect.get_height()
        ax.text(rect.get_x() + rect.get_width()/2., 1.05*height,'%d' % int(height),ha='center', va='bottom')

def prepare_xtick_labels(coverage_labels, programs):
    #add program name to the labels
    coverage_labels = (coverage_labels+(['']*E))*N
    #Append program name to labels
    i = 0
    for p in programs:
        # 2 is index of 25 in the labels, -1 becuase index starts from 0
        coverage_labels[i+2]=p.replace('.bc','').replace('_testapp','').replace('_game','')
        print i, M
        i+=M
    return coverage_labels

def dump_protection_coverage_table(protection_coverage_data):
    from tabulate import tabulate
    from operator import itemgetter
    data = sorted(protection_coverage_data, key=itemgetter(0,1))
    headers = ['program','coverage','sensitive_inst_mean','sensitive_inst_std','sc_protected_mean','sc_protected_std','oh_protected_mean','oh_protected_std','sc_oh_protected_inst_mean','sc_oh_protected_inst_std']
    print(tabulate(data,headers=headers))
    return tabulate(data,headers=headers,tablefmt='latex')
def overhead_in_percentage(overheads):
    baseline = overheads['0']
    for overhead_key in overheads.keys():
        if overhead_key is '0':
            continue
        overheads[overhead_key]['perc_cpu_means'] =[]
        overheads[overhead_key]['perc_cpu_stds'] =[]
        i =0
        scale=[]
        for cpu_mean in overheads[overhead_key]['cpu_means']:
            cpu_scale = (cpu_mean - baseline['cpu_means'][i]) / baseline['cpu_means'][i]
            scale.append(cpu_scale)
            perc_cpu_mean = (cpu_mean - baseline['cpu_means'][i]) / baseline['cpu_means'][i] *100  
            overheads[overhead_key]['perc_cpu_means'].append(perc_cpu_mean)
            i+=1
        i=0
        for cpu_std in overheads[overhead_key]['cpu_stds']:
            perc_cpu_std = scale[i] *cpu_std / overheads[overhead_key]['cpu_means'][i] *100#(cpu_std - baseline['cpu_stds'][i]) / cpu_std *100  
            overheads[overhead_key]['perc_cpu_stds'].append(perc_cpu_std)
            i+=1
    pprint (overheads)
    return overheads

OVERHEAD_IN_PERCENTAGE = False 
programs,overheads,protection_coverage_table = read('binaries/measurements.json')
protection_coverage_table_content = dump_protection_coverage_table(protection_coverage_table)
#pprint (overheads)
perc_overheads = overhead_in_percentage(overheads)
pprint (perc_overheads)
#dump protection coverage table into tex file
file_path=os.path.join('tex','protection_coverage_table.tex')
with open(file_path,'wb') as texfile:
    texfile.write(protection_coverage_table_content)
print 'Dumped protection coverage table in latex format: tex/protection_coverage_table.tex'
print programs
program_count=len(programs)
#exit(1)
#cpu_means=[]
#cpu_stds=[]
coverage_labels=[]
E = 1 # number of empty gaps between programs
N = program_count #Number of programs in the dataset len(overheads)
M = len(overheads)+E #number of different coverages
if OVERHEAD_IN_PERCENTAGE:
    M=M-1
fig, ax = plt.subplots()
width= 0.35
#ind_width=0.00
ind = np.arange(0,N*M*width,width) #Number of bars we need is in total N (programs) times M (coverages)
rects = []
coverage_color={}
if not OVERHEAD_IN_PERCENTAGE:
    coverage_color['0'] = 'c'
coverage_color['10'] = 'y'
coverage_color['50'] = 'm'
coverage_color['100'] = 'g'
coverage_color['25'] = 'b'

means_dic_name = 'cpu_means'
stds_dic_name = 'cpu_stds'

if OVERHEAD_IN_PERCENTAGE:
    means_dic_name = 'perc_cpu_means'
    stds_dic_name = 'perc_cpu_stds'


coverage_keys = overheads.keys()
coverage_keys = map(int,coverage_keys)
coverage_keys.sort()
coverage_keys = map(str,coverage_keys)
#keys(1)
i =0
for coverage in coverage_keys:
    #cpu_means.append(overhead['cpu_mean'])
    #cpu_stds.append(overhead['cpu_std'])
    if coverage is '0' and OVERHEAD_IN_PERCENTAGE:
        continue
    coverage_labels.append('') 
    ax_color = coverage_color[coverage]


    #ax_ind = ind+ind_width
    pprint (overheads[coverage][means_dic_name])
    pprint (overheads[coverage][stds_dic_name])
    #print "ax_ind",ax_ind
    print ind[i::M]
    #print [coverage]*N
    print "ind",ind[i:M], 'means',overheads[coverage][means_dic_name],'std',overheads[coverage][stds_dic_name]
    rects1 = ax.bar(ind[i::M], overheads[coverage][means_dic_name], width, color=ax_color, yerr=overheads[coverage][stds_dic_name],label=coverage+'%')#,tick_label=[coverage]*N)
    i+=1
    #ind_width += width
    rects.append(rects1)
ax.set_ylabel('Overhead in % percentage')
ax.set_title('Overhead by protection coverage per program')
#print ind, ax_ind,ax_ind+1, width #np.arange(ind, ax_ind+1, width)
print np.arange(np.min(ind),np.max(ind)+1, width)
ax.set_xticks(np.arange(np.min(ind),np.max(ind)+1, width))
ax.set_xticklabels(prepare_xtick_labels(coverage_labels,programs))
#ax.legend((rects1[0]), ('Tetris'))
y_ticks = ['0','5','10','20','30','40','50','60','70','80','90','100','150','200','300','400','500','600']
y_ticks_n = np.array(y_ticks).astype(np.int)
#ax.set_yticks(np.arange(min(np.int(y_ticks_n)), max(np.int(y_ticks_n))+1, 1.0))
#ax.set_ytickslabels(y_ticks)
#for reacts1 in rects:
#    autolabel(rects1)
#autolabel(rects2)
plt.legend(loc='upper left')
plt.savefig('myfig')

