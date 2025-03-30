import ast
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
from matplotlib.ticker import FuncFormatter

plt.rcParams['ps.useafm'] = True
plt.rcParams['pdf.use14corefonts'] = True
plt.rcParams['text.usetex'] = True
plt.rcParams["legend.framealpha"] = 1.0
plt.rcParams.update({'font.size': 16, 'text.latex.preamble': r'\usepackage{amsmath}'})

def percentage_formatter(x, pos):
    return '{:.0f}%'.format(x * 100)

file_paths = ['wiredtiger_cdf_1073741824', 'wiredtiger_cdf_2097152', 'wiredtiger_cdf_4096']
labels = ['1GB', '2MB', '4KB']
linestyles = ['-', '--', ':']  # Different line styles for each dataset
markers = ['o', 'x', '^']  # Different markers for each dataset
colors = ['green', 'coral', 'blue']

fig = plt.figure(figsize=(4, 3))

for file_path, label, linestyle, marker, color in zip(file_paths, labels, linestyles, markers, colors):
    with open(file_path, 'r') as file:
        data = ast.literal_eval(file.read())

    # Sort and adjust data if necessary
    sorted_data = sorted(data)
    # Calculate unique values and their counts
    unique, counts = np.unique(sorted_data, return_counts=True)
    cdf_values = np.cumsum(counts) / len(sorted_data)

    # Plot each CDF
    plt.plot(unique, cdf_values, label=label, linestyle=linestyle, marker=marker, color=color)

plt.xlabel('No. of Node Crossing')
plt.xticks([10,20,30])
plt.ylabel('Percentage')
#plt.title('CDF for WiredTiger')
plt.grid(True)
plt.legend()
#plt.legend(loc='lower right')
# Set y-axis formatter as percentage
plt.gca().yaxis.set_major_formatter(FuncFormatter(percentage_formatter))

plt.savefig('wiredtiger_cdf.pdf', format='pdf', bbox_inches='tight')
#plt.show()
