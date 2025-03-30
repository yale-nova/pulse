import sys

def read_layout(filename, number_of_nodes, total_number_of_keys):
    key_counts = []
    breakpoints = []
    
    # Open the file and read the number of keys in each bucket
    with open(filename, "r") as file:
        for line in file:
            columns = line.strip().split(" ")
            key_counts.append((int(columns[1]), int(columns[5])))  # Store tuple of (last_key, num_keys_in_bucket)
    
    total_keys_counted = 0
    keys_per_node = total_number_of_keys / number_of_nodes
    next_breakpoint = keys_per_node
    
    # Loop through each bucket and determine where to set breakpoints
    for last_key, num_keys in key_counts:
        total_keys_counted += num_keys
        if total_keys_counted >= next_breakpoint:
            breakpoints.append(last_key)
            while total_keys_counted >= next_breakpoint:
                next_breakpoint += keys_per_node
                
    if not breakpoints or breakpoints[-1] != key_counts[-1][0]:  # Ensure the last bucket's end is always a breakpoint
        breakpoints.append(key_counts[-1][0])
    
    return breakpoints

if __name__ == "__main__":
    # Check if the script was run with a filename argument
    if len(sys.argv) != 4:
        print(
            "Usage: python parse_bucket_layout.py <layout_filename> <number_of_nodes> <total_number_of_keys>"
        )
        sys.exit(1)

    layout_filename = sys.argv[1]
    number_of_nodes = int(sys.argv[2])
    total_number_of_keys = int(sys.argv[3])

    breakpoints = read_layout(layout_filename, number_of_nodes, total_number_of_keys)
    print(breakpoints)
