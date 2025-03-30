import socket
import time
import numpy as np
import matplotlib.pyplot as plt

serverAddressPort = ("10.10.10.222", 62781)
localPort = 38746
localIP = "10.10.10.214"
bufferSize = 1024

# Function to measure network latency
def measure_latency(payload_size, num_iter=100):
    latencies = []

    # Create UDP socket
    UDPClientSocket = socket.socket(family=socket.AF_INET, type=socket.SOCK_DGRAM)
    UDPClientSocket.bind(('', localPort))

    # Generate random payload of the given size
    msgFromClient = np.random.randint(0, 100, size=payload_size, dtype=np.int8)
    bytesToSend = msgFromClient.tobytes()

    for _ in range(num_iter):
        # Send the data to the server and record the send time
        UDPClientSocket.sendto(bytesToSend, serverAddressPort)
        send_time = time.time_ns()

        # Receive the response from the server
        msgFromServer = UDPClientSocket.recvfrom(bufferSize)
        recv_time = time.time_ns()

        # Record latency in microseconds
        latencies.append((recv_time - send_time) / 1000)  # Convert to microseconds

    # Close the socket after use
    UDPClientSocket.close()

    return latencies

# Function to plot histogram of latencies
def plot_latency_histogram(latencies, payload_size):
    plt.hist(latencies, bins=50, alpha=0.75, color='blue')
    plt.title(f'Latency Distribution for Payload Size {payload_size} Bytes')
    plt.xlabel('Latency (us)')
    plt.ylabel('Frequency')
    plt.grid(True)
    plt.savefig(f'latency_histogram_{payload_size}_bytes.png')
    plt.close()

# Measure latencies for different payload sizes
payload_sizes = [2 ** i for i in range(1, 11)]


for size in payload_sizes:
    latencies = measure_latency(payload_size=size, num_iter=100)

    # Calculate and print statistics
    avg_latency = np.mean(latencies)
    p90_latency = np.percentile(latencies, 90)
    p99_latency = np.percentile(latencies, 99)

    print(f'Payload size: {size} bytes')
    print(f'Average Latency: {avg_latency:.2f} us')
    print(f'P90 Latency: {p90_latency:.2f} us')
    print(f'P99 Latency: {p99_latency:.2f} us')

    # Plot histogram
    plot_latency_histogram(latencies, size)


