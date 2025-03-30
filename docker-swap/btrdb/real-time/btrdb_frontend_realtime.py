import pandas as pd
import matplotlib.pyplot as plt
import matplotlib.dates as mdates
from matplotlib.animation import FuncAnimation
from datetime import datetime
from matplotlib.animation import FuncAnimation, FFMpegWriter
import time

# Assuming the file 'data_trace.csv' is the file you want to read from.
# Open the file in read mode.
trace_file_path = '/var/data/yupeng/tmp_btrdb'
trace_file = open(trace_file_path, 'r')
lines = trace_file.readlines()

# Move to the end of the file
#trace_file.seek(0, 2)

# Function to fetch new data from the opened file
preloaded_data = []
start_time = None
for line in lines:
    timestamp_str_ns, value_str = line.strip().split(',')
    timestamp_str_ns = int(timestamp_str_ns)
    if start_time is None:
        start_time = timestamp_str_ns
    timestamp_str_ns -= start_time
    #timestamp = pd.to_datetime(timestamp_str_ns, unit='ns')
    timestamp = int(timestamp_str_ns)
    value = float(value_str)
    preloaded_data.append((timestamp, value))

# Function to simulate fetching new data from the preloaded list
def fetch_new_data(index):
    try:
        return preloaded_data[index]
    except IndexError:
        return None, None

# Initial setup for the plot
fig, ax = plt.subplots(figsize=(7,5))
line, = ax.plot([], [], label="values") 
#ax.xaxis.set_major_formatter(mdates.DateFormatter('%H:%M:%S'))
#fig.autofmt_xdate()
ax.set_ylabel("volts")
ax.set_xlabel("time")
ax.set_ylim(-5, 400)
ax.set_xlim(0, 843333333)
ax.set_xticklabels([])
ax.set_xticks([])
plt.title("Sunshine PMU3 L1MAG Voltage")

# Initialize a DataFrame to store the data
data = pd.DataFrame(columns=['timestamp', 'value'])

update_count = 0
max_updates = 100

def update(frame):
    global data
    global update_count
    global max_updates
    update_count += 1
    # Fetch new data point
    timestamp, value = fetch_new_data(frame)
    #print(timestamp)
    #print(value)
    if timestamp is not None and value is not None:
        # Append the new data point to the DataFrame
        new_data = pd.DataFrame({'timestamp': [timestamp], 'value': [value]})
        data = pd.concat([data, new_data])
    
        # Plot the updated data
        line.set_data(data['timestamp'], data['value'])
        #print(data)
        return line,

# Set up plot to call the `update` function at regular intervals
cur_time_ns = time.time_ns()
num_ops = 100
ani = FuncAnimation(fig, update, frames=100, interval=0.001)  # Update every 1000 milliseconds (1 second)

# Specify the writer which uses ffmpeg
end_time_ns = time.time_ns()
print("Spend " + str((end_time_ns - cur_time_ns) / num_ops) + " ns on each point")
writer = FFMpegWriter(fps=15, metadata=dict(artist='Me'), bitrate=1800)

# Save the animation to an mp4 file
ani.save('real_time_data_animation.mp4', writer=writer)
end_time_ns_2 = time.time_ns()
print("Spend " + str((end_time_ns_2 - end_time_ns) / num_ops) + " ns on each point")

#plt.show()


# Don't forget to close the file when you're done to free up resources
trace_file.close()
