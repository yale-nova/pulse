import ast
import sys
import pandas as pd
import matplotlib as mpl
import matplotlib.pyplot as plt
import numpy as np
import matplotlib.ticker as mticker
from matplotlib.ticker import FormatStrFormatter, LogLocator, NullFormatter, FuncFormatter

mpl.rcParams['ps.useafm'] = True
mpl.rcParams['pdf.use14corefonts'] = True
mpl.rcParams['text.usetex'] = True
mpl.rcParams["legend.framealpha"] = 1.0
mpl.rcParams.update({'font.size': 16, 'text.latex.preamble': r'\usepackage{amsmath}'})

fig = plt.figure(figsize=(4, 3))
ax = plt.gca()

def percentage_formatter(x, pos):
    return '{:.0f}%'.format(x * 100)

for i in range(1, 2):
    all_sorted_data = []
    all_cdf_values = []
    file_paths = [
        'wiredtiger_cdf_1073741824', 'wiredtiger_cdf_2097152', 'wiredtiger_cdf_4096', 
        'btrdb_cdf_1073741824_' + str(i), 'btrdb_cdf_2097152_' + str(i), 'btrdb_cdf_4096_' + str(i)
    ]
    labels = [
        'WiredTiger-1GB', 'WiredTiger-2MB', 'WiredTiger-4KB', 
        'BTrDB-1GB', 'BTrDB-2MB', 'BTrDB-4KB'
    ]
    linestyles = ['-', '--', ':', '-.', '-', '--']
    markers = ['o', 'x', '^', 's', 'D', '*']
    colors = ['green', 'coral', 'blue', 'orange', 'purple', 'red']

    for file_path, label, linestyle, marker, color in zip(file_paths, labels, linestyles, markers, colors):
        with open(file_path, 'r') as file:
            data_str = file.read()

        # Parse the string to extract the list of integers
        data = ast.literal_eval(data_str)

        # Sort the list of integers
        sorted_data = sorted(data)

        unique, counts = np.unique(sorted_data, return_counts=True)
        cdf_values = np.cumsum(counts) / len(sorted_data)

        ax.plot(unique, cdf_values, label=label, linestyle=linestyle, marker=marker, color=color)

    ax.set_xlabel('No. of Node Crossing')
    ax.set_ylabel('Percentage of requests')
    ax.grid(True)
    ax.set_xticks([0, 10, 20, 30])
    ax.set_xlim(0, 30)

    # Set y-axis formatter as percentage
    ax.yaxis.set_major_formatter(FuncFormatter(percentage_formatter))

    ax.legend(loc='upper center', bbox_to_anchor=(0.4, 1.5), ncol=2, fontsize=16, handletextpad=0.2, columnspacing=1)
    
    #fig.tight_layout()
    plt.savefig('cdf.pdf', format='pdf', bbox_inches='tight')
    plt.clf()
