import numpy as np
import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt
from pprint import pprint
import json
import os
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
            protection_coverage_table.append([program_name,coverage_name,sensitive_inst_mean,sensitive_inst_std,sc_protected_mean,sc_protected_std,oh_protected_mean,oh_protected_std,sc_oh_protected_inst_mean, sc_oh_protected_inst_std])

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
    for lbl in coverage_labels:
        if lbl=='25':
            # 2 is index of 25 in the labels, -1 becuase index starts from 0
            p_index = ((i+(M-2))/(M)-1)
            coverage_labels[i]='25\n'+programs[p_index]
        i+=1
    return coverage_labels

def dump_protection_coverage_table(protection_coverage_data):
    from tabulate import tabulate
    headers = ['program','coverage','sensitive_inst_mean','sensitive_inst_std','sc_protected_mean','sc_protected_std','oh_protected_mean','oh_protected_std','sc_oh_protected_inst_mean','sc_oh_protected_inst_std']
    print(tabulate(protection_coverage_data,headers=headers))
    return tabulate(protection_coverage_data,headers=headers,tablefmt='latex')
   


programs,overheads,protection_coverage_table = read('binaries/measurements.json')
protection_coverage_table_content = dump_protection_coverage_table(protection_coverage_table)
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
fig, ax = plt.subplots()
width= 0.35
#ind_width=0.00
ind = np.arange(0,N*M*width,width) #Number of bars we need is in total N (programs) times M (coverages)
rects = []
coverage_color={}
coverage_color['0'] = 'c'
coverage_color['10'] = 'y'
coverage_color['50'] = 'm'
coverage_color['100'] = 'g'
coverage_color['25'] = 'b'
coverage_keys = overheads.keys()
coverage_keys = map(int,coverage_keys)
coverage_keys.sort()
coverage_keys = map(str,coverage_keys)
#keys(1)
i =0
for coverage in coverage_keys:
    #cpu_means.append(overhead['cpu_mean'])
    #cpu_stds.append(overhead['cpu_std'])
    coverage_labels.append(coverage) 
    ax_color = coverage_color[coverage]


    #ax_ind = ind+ind_width
    pprint (overheads[coverage]['cpu_means'])
    pprint (overheads[coverage]['cpu_stds'])
    #print "ax_ind",ax_ind
    print ind[i::M]
    #print [coverage]*N
    rects1 = ax.bar(ind[i::M], overheads[coverage]['cpu_means'], width, color=ax_color, yerr=overheads[coverage]['cpu_stds'])#,tick_label=[coverage]*N)
    i+=1
    #ind_width += width
    rects.append(rects1)
ax.set_ylabel('Overhead (s)')
ax.set_title('Overhead by protection coverage per program')
#print ind, ax_ind,ax_ind+1, width #np.arange(ind, ax_ind+1, width)
print np.arange(np.min(ind),np.max(ind)+1, width)
ax.set_xticks(np.arange(np.min(ind),np.max(ind)+1, width))
ax.set_xticklabels(prepare_xtick_labels(coverage_labels,programs))

#ax.legend((rects1[0]), ('Tetris'))
#for reacts1 in rects:
#    autolabel(rects1)
#autolabel(rects2)
plt.savefig('myfig')




exit(1)
N = 5
men_means = (20, 35, 30, 35, 27)
men_std = (2, 3, 4, 1, 2)

ind = np.arange(N)  # the x locations for the groups
width = 0.35       # the width of the bars

fig, ax = plt.subplots()
rects1 = ax.bar(ind, men_means, width, color='r', yerr=men_std)

women_means = (25, 32, 34, 20, 25)
women_std = (3, 5, 2, 3, 3)
rects2 = ax.bar(ind + width, women_means, width, color='y', yerr=women_std)

# add some text for labels, title and axes ticks
ax.set_ylabel('Scores')
ax.set_title('Scores by group and gender')
ax.set_xticks(ind + width / 2)
ax.set_xticklabels(('G1', 'G2', 'G3', 'G4', 'G5'))

ax.legend((rects1[0], rects2[0]), ('Men', 'Women'))

autolabel(rects1)
autolabel(rects2)
plt.savefig('myfig')
