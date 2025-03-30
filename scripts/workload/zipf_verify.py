import numpy as np
import matplotlib.pyplot as plt
from collections import Counter
import sys

def read_keys(file_path):
    """ Read integer keys from a file and return them as a list. """
    with open(file_path, 'r') as file:
        keys = [int(line.strip()) for line in file]
    return keys

def plot_zipf_comparison_percentage(keys, a=0.99):
    """ Plot histogram of keys and compare with Zipf distribution using percentages. """
    # Count frequencies of each key
    frequency = Counter(keys)
    total_keys = sum(frequency.values())
    counts = np.array(list(frequency.values()))
    keys = np.array(list(frequency.keys()))

    # Convert counts to percentages
    counts_percentage = (counts / total_keys)

    # Sort keys by frequency in descending order
    indices = np.argsort(-counts)
    counts_sorted_percentage = counts_percentage[indices]
    keys_sorted = keys[indices]

    # Generate theoretical Zipf distribution with the same size and parameter a
    theoretical_zipf = np.random.zipf(a, size=len(keys_sorted))
    print(theoretical_zipf)
    theoretical_freq = Counter(theoretical_zipf)
    theoretical_counts = np.array(list(theoretical_freq.values()))
    theoretical_counts_percentage = (theoretical_counts / sum(theoretical_counts))
    theoretical_counts_sorted_percentage = np.sort(theoretical_counts_percentage)[::-1]

    # Plotting
    plt.figure(figsize=(14, 7))
    plt.subplot(1, 2, 1)
    plt.bar(range(len(counts_sorted_percentage)), counts_sorted_percentage, label='Actual Data', alpha=0.6)
    plt.title('Actual Distribution of Keys (Percentage)')
    plt.xlabel('Rank of Key')
    plt.ylabel('Percentage (%)')

    plt.subplot(1, 2, 2)
    plt.bar(range(len(theoretical_counts_sorted_percentage)), theoretical_counts_sorted_percentage, color='red', label='Theoretical Zipf', alpha=0.6)
    plt.title('Theoretical Zipf Distribution (Percentage)')
    plt.xlabel('Rank of Key')
    plt.ylabel('Percentage (%)')

    plt.savefig('zipf_verify.png')

if __name__ == "__main__":
    if len(sys.argv) != 3:
        print("Usage: python script_name.py <path_to_file> <alpha>")
    else:
        file_path = sys.argv[1]
        alpha = float(sys.argv[2])
        keys = read_keys(file_path)
        plot_zipf_comparison_percentage(keys, a=alpha)
