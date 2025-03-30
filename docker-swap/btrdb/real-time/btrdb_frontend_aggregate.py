import pandas as pd
import matplotlib.pyplot as plt
import time

# Path to your CSV file
trace_file_path = '/var/data/yupeng/tmp_btrdb'

def read_all_data(file_path):
    data = []
    with open(file_path, 'r') as file:
        start_time = None
        for line in file:
            timestamp_str_ns, value_str = line.strip().split(',')
            timestamp_str_ns = int(timestamp_str_ns)
            if start_time is None:
                start_time = timestamp_str_ns
            timestamp_str_ns -= start_time
            timestamp = int(timestamp_str_ns)
            value = float(value_str)
            data.append((timestamp, value))
    return data


# Plotting function
def plot_data(data, chunk_size, i):
    fig, ax = plt.subplots(figsize=(7, 5))
    ax.set_ylabel("Volts")
    ax.set_xlabel("Time")
    ax.set_ylim(-5, 400)
    # ax.set_xlim(0, max_time) # If you know the max time, set it here.
    plt.title("Sunshine PMU3 L1MAG Voltage")
    chunk = data[i * chunk_size:i * chunk_size + chunk_size]
    df = pd.DataFrame(chunk, columns=['timestamp', 'value'])
    ax.plot(df['timestamp'], df['value'], label="values")
    fig.savefig('btrdb.png')

# Main execution
chunk_size = 2048  # Number of points to read at a time, make this configurable as needed
data = read_all_data(trace_file_path)
number_of_chunks = int(len(data) / chunk_size)
start_time_ns = time.time_ns()
for i in range(number_of_chunks):
    plot_data(data, chunk_size, i)
end_time_ns = time.time_ns()
print("Spend " + str((end_time_ns - start_time_ns) / number_of_chunks) + " ns on each plot")
print("Spend " + str((end_time_ns - start_time_ns) / number_of_chunks / chunk_size / 1000) + " us on each point")
