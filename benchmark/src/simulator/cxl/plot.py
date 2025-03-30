import argparse
import re
from matplotlib.gridspec import GridSpec
from matplotlib.ticker import FixedLocator

import pandas as pd
import matplotlib as mpl
import matplotlib.pyplot as plt
import numpy as np
import sys
from matplotlib.ticker import FormatStrFormatter, LogLocator, NullFormatter
from brokenaxes import brokenaxes
from matplotlib.gridspec import GridSpec
import csv

mpl.rcParams['ps.useafm'] = True
mpl.rcParams['pdf.use14corefonts'] = True
mpl.rcParams['text.usetex'] = True
mpl.rcParams["legend.framealpha"] = 1.0
mpl.rcParams.update({'font.size': 16, 'text.latex.preamble': r'\usepackage{amsmath}'})

colors = ['blue', 'green', 'red', 'purple', 'orange']
methods = ['DRAM', 'CXL w/o PULSE', 'CXL w/ PULSE']

hatch_map = {
    'DRAM': '///',  # Diagonal hatching
    'CXL w/o PULSE': '...',         # Dotted hatching
    'CXL w/ PULSE': '\\\\'    # Backward diagonal
}

# Read data from TSV file
data = {}
with open(sys.argv[1], 'r') as file:
    reader = csv.reader(file, delimiter='\t')
    for row in reader:
        group, series, value = row
        if group not in data:
            data[group] = {}
        data[group][series] = float(value)

# Extracting data for plotting
labels = list(data.keys())
DRAM = [data[key]['DRAM'] for key in labels]
CXL_w_o_PULSE = [data[key]['CXL w/o PULSE'] for key in labels]
CXL_w_PULSE = [data[key]['CXL w/ PULSE'] for key in labels]

x = np.arange(len(labels))  # the label locations
width = 0.15  # the width of the bars

# Create the figure and define the GridSpec
fig = plt.figure(figsize=(4, 2))
gs_main = GridSpec(1, 1, figure=fig)
ax = fig.add_subplot(gs_main[0,0])
rects1 = ax.bar(x - width, DRAM, width, label='DRAM', color='lightblue', hatch='///')
rects2 = ax.bar(x, CXL_w_o_PULSE, width, label='CXL w/o PULSE', color='lightgreen', hatch='...')
rects3 = ax.bar(x + width, CXL_w_PULSE, width, label='CXL w/ PULSE', color='lightpink', hatch='\\\\')

# Add some text for labels, title and custom x-axis tick labels, etc.
ax.set_ylabel('Slowdown (normalized)')
ax.set_xticks(x)
ax.set_xticklabels(labels, rotation=45, ha='right')
ax.set_yticks([0,1,2, 3, 4, 5, 6, 7, 8,9])
ax.legend(loc="upper left", bbox_to_anchor=(0.5, 1.14))
ax.grid(True)

plt.savefig(sys.argv[2], bbox_inches='tight')
