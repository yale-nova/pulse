import matplotlib.pyplot as plt
import pandas as pd
from datetime import datetime
import random

# Adjusting the parameters to handle large datasets
plt.rcParams['agg.path.chunksize'] = 10000  # Adjust this based on your needs
plt.rcParams['path.simplify_threshold'] = 0.1  # Keep default or adjust slightly if needed


# Initialize plot
plt.ion() # Turn on interactive mode
fig, ax = plt.subplots()
times = []
values = []
k = 500

def add_point(timestamp_str, value):
    # Convert timestamp to datetime and append data
    timestamp = datetime.fromtimestamp(int(timestamp_str) / 1e9)
    # Implement reservoir sampling to maintain only k points
    n = len(times) 
    if n < k:
        # If we have not yet reached k points, just add the new point
        times.append(timestamp)
        values.append(value)
    else:
        # Otherwise, decide randomly if we're going to include this new point
        replace_index = random.randint(0, n - 1)
        if replace_index < k:
            times[replace_index] = timestamp
            values[replace_index] = value

def save_plot(filename):
    # Plot data
    ax.plot(times, values, marker='o', linestyle='-')
    ax.set_xlabel('Time')
    ax.set_ylabel('Value')
    plt.draw()
    plt.ioff() # Turn off interactive mode
    plt.savefig(filename)
    plt.close()
