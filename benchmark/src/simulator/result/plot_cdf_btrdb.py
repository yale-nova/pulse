import ast
import sys
import pandas as pd
import matplotlib as mpl
import matplotlib.pyplot as plt
import numpy as np
import matplotlib.ticker as mticker
from matplotlib.ticker import FormatStrFormatter, LogLocator, NullFormatter

from matplotlib.ticker import FuncFormatter

mpl.rcParams['ps.useafm'] = True
mpl.rcParams['pdf.use14corefonts'] = True
mpl.rcParams['text.usetex'] = True
mpl.rcParams["legend.framealpha"] = 1.0
mpl.rcParams.update({'font.size': 16, 'text.latex.preamble': r'\usepackage{amsmath}'})


fig = plt.figure(figsize=(4, 3))

def percentage_formatter(x, pos):
    return '{:.0f}%'.format(x * 100)

for i in range(1,6):
    all_sorted_data = []
    all_cdf_values = []
    file_paths = ['btrdb_cdf_1073741824_' + str(i), 'btrdb_cdf_2097152_' + str(i), 'btrdb_cdf_4096_' + str(i)]
    labels = ['1GB', '2MB', '4KB']
    linestyles = ['-', '--', ':']  # Different line styles for each dataset
    markers = ['o', 'x', '^']  # Different markers for each dataset
    colors = ['green', 'coral', 'blue']
    for file_path, label, linestyle, marker, color in zip(file_paths, labels, linestyles, markers, colors):
        with open(file_path, 'r') as file:
            data_str = file.read()

        # Parse the string to extract the list of integers
        data = ast.literal_eval(data_str)

        # Sort the list of integers
        sorted_data = sorted(data)

        unique, counts = np.unique(sorted_data, return_counts=True)
        cdf_values = np.cumsum(counts) / len(sorted_data)

        plt.plot(unique, cdf_values, label=label, linestyle=linestyle, marker=marker, color=color)



    plt.xlabel('No. of Node Crossing')
    plt.ylabel('Percentage')
    #plt.title('CDF for BTrDB')
    plt.grid(True)
    plt.xticks([0,10,20,30])
    plt.xlim(0, 30)
    #plt.legend(loc='center')
    plt.legend()


    # Set y-axis formatter as percentage
    plt.gca().yaxis.set_major_formatter(FuncFormatter(percentage_formatter))

    plt.savefig('btrdb_cdf_' +str(i) +'.pdf', format='pdf', bbox_inches='tight')
    plt.clf()
