import sys
import collections
import random
from enum import Enum
import matplotlib.pyplot as plt
import numpy as np
import math


queries = []
layout = dict()
capacity = 0
address_range = 0
min_address = 0
max_address = 0
new_min_address = 0
new_max_address = 0
new_layout = dict()
old_new_node_mapping = dict()
root = 0
num_leaf_nodes = 0


class AllocSignal(Enum):
    SLAB_FULL = 1
    NODE_FULL = 2
    SLAB_AVAILABLE = 3
    NODE_AVAILABLE = 4


class Slab:
    def __init__(self, slab_min_address, slab_capacity):
        self.slab_min_address = slab_min_address
        self.slab_capacity = slab_capacity
        self.current_slab_offset = 0

    def allocate(self, allocation_size):
        if self.current_slab_offset + allocation_size <= self.slab_capacity:
            allocation_address = self.current_slab_offset + self.slab_min_address
            self.current_slab_offset += allocation_size
            return (AllocSignal.SLAB_AVAILABLE, allocation_address)
        else:
            # print("Slab full, offset: " + str(self.current_slab_offset) + " " + str(allocation_size) + " " + str(self.slab_capacity))
            return (AllocSignal.SLAB_FULL, 0)


class Node:
    def __init__(
        self, node_id, node_size_in_bytes, allocation_size_in_bytes, node_min_address
    ):
        self.node_id = node_id
        self.node_size_in_bytes = node_size_in_bytes
        self.node_min_address = node_min_address
        # Debug purpose
        if self.node_size_in_bytes < allocation_size_in_bytes:
            self.node_size_in_bytes = allocation_size_in_bytes
        self.node_max_address = self.node_min_address + self.node_size_in_bytes
        self.allocation_size_in_bytes = allocation_size_in_bytes
        self.free_slabs = dict()
        self.number_of_slabs = int(
            self.node_size_in_bytes / self.allocation_size_in_bytes
        )
        current_address = self.node_min_address
        for i in range(self.number_of_slabs):
            self.free_slabs[i] = Slab(current_address, self.allocation_size_in_bytes)
            current_address += self.allocation_size_in_bytes
        self.free_slabs_keys = list(self.free_slabs.keys())
        self.full_slabs = collections.deque()
        self.current_slab_id = -1
        self.current_slab_offset = 0

    def allocate(self, allocation_size):
        # print("Trying to allocate " + str(self.allocation_size_in_bytes) + " at node: " + str(self.node_id))
        # while self.free_slabs:
        if len(self.free_slabs_keys) == 0:
            # print("Node full")
            return AllocSignal.NODE_FULL
        if self.current_slab_id == -1:
            slab_id = random.choice(self.free_slabs_keys)
            self.current_slab_id = slab_id
        else:
            slab_id = self.current_slab_id
        slab = self.free_slabs[slab_id]  # Access the first element without removing it
        status, address = slab.allocate(allocation_size)
        if status == AllocSignal.SLAB_AVAILABLE:
            return address
        elif status == AllocSignal.SLAB_FULL:
            self.free_slabs.pop(slab_id)  # Move full slab to full_slabs
            self.free_slabs_keys.remove(slab_id)
            self.current_slab_id = -1
            # print("Slab full")
            return AllocSignal.SLAB_FULL


def read_query(filename):
    with open(filename, "r") as file:
        for line in file:
            if "READ user" in line:
                columns = line.strip().split(" ")
                if len(columns) >= 2:
                    queries.append(int(columns[1].replace("user", "")))

    return



class NodeType(Enum):
    ROOT = 1
    LEAF = 2
    INTER = 3


class BPlusTreeNode:
    def __init__(
        self,
        node_type,
        old_address,
        new_address,
        children_list,
        key_list,
        previous_address,
        next_address,
        num_keys=0,
    ):
        self.node_type = node_type
        self.old_address = old_address
        self.new_address = new_address
        self.children_list = children_list
        self.key_list = key_list
        self.previous_address = previous_address
        self.next_address = next_address
        self.num_keys = num_keys


def round_up_to_power_of_2(number):
    # Find the closest power of 2 greater than or equal to number
    return 2 ** math.ceil(math.log(number, 2))


def read_layout(filename, allocation_size, number_of_nodes):
    global capacity
    global address_range
    global min_address
    global max_address
    global new_min_address
    global new_max_address
    global layout
    global old_new_node_mapping
    global root
    global num_leaf_nodes

    # Open the file
    start = True
    count = 0
    nodes = []
    count_prev = 0
    slab_full = True
    prev_node = -1
    with open(filename, "r") as file:
        line_number = 0
        while True:
            if int(line_number / 100000) > count_prev:
                count_prev = int(line_number / 100000)
                print("Line processed: " + str(line_number), flush=True)
            line = file.readline()
            if not line:  # Break out of the loop if the line is empty(end of file)
                break
            line_number += 1
            columns = line.strip().split(" ")
            try:
                if "Root" in line:
                    root = int(columns[2])
                elif "MIN" in line:
                    min_address = int(columns[2])
                elif "MAX" in line:
                    max_address = int(columns[2])
                    address_range = max_address - min_address
                    address_range = round_up_to_power_of_2(
                        address_range
                    )  # + 1024 * 1024 * 1024
                    print(
                        "Address range is: "
                        + str(address_range / 1024 / 1024 / 1024)
                        + " GB"
                    )
                    new_min_address = 0
                    new_max_address = address_range
                    for i in range(number_of_nodes):
                        nodes.append(
                            Node(
                                i,
                                int(address_range / number_of_nodes),
                                allocation_size,
                                new_min_address + i * int(address_range / number_of_nodes),
                            )
                        )
                elif "Leaf" in line:
                    # print("Leaf line is: " + line)
                    num_leaf_nodes = num_leaf_nodes + 1
                    old_address = int(columns[3])
                    nk = int(columns[-1])
                    # print("nk is: ", nk)
                    success = False
                    if prev_node == -1 or slab_full is True:
                        nodes_list = list(range(number_of_nodes))
                        random.shuffle(nodes_list)
                        slab_full = False
                    else:
                        tmp_nodes_list = list(range(number_of_nodes))
                        random.shuffle(tmp_nodes_list)
                        tmp_nodes_list.remove(prev_node)
                        nodes_list = [prev_node]
                        nodes_list = nodes_list + tmp_nodes_list
                        # print("prev_node is " + str(prev_node))
                        # print("node_list is " + ''.join(str(item) for item in nodes_list))

                    for i in nodes_list:
                        new_address = nodes[i].allocate(256)
                        if (
                            new_address == AllocSignal.SLAB_FULL
                            or new_address == AllocSignal.NODE_FULL
                        ):
                            slab_full = True
                            continue
                        else:
                            # file.write("key: " + str(key) + " hash: " + str(key_hash) + " address: " + str(hex(new_address)) + " old address: " + str(hex(address)) + "\n")
                            # print("Allocation happens on node: " + str(i))
                            prev_node = i
                            slab_full = False
                            success = True
                            key_list = []
                            for j in range(nk):
                                line = file.readline()
                                columns = line.strip().split(" ")
                                line_number = line_number + 1
                                try:
                                    key_list.append(int(columns[3]))
                                except ValueError as e:
                                    print("Value Error occurred", e)
                                    print("Columns:", columns)
                                    break

                            line = file.readline()
                            line_number = line_number + 1
                            columns = line.strip().split(" ")
                            next_pointer = int(columns[2])

                            line = file.readline()
                            line_number = line_number + 1
                            columns = line.strip().split(" ")
                            prev_pointer = int(columns[2])

                            layout[old_address] = BPlusTreeNode(
                                NodeType.LEAF,
                                old_address,
                                new_address,
                                [],
                                key_list,
                                prev_pointer,
                                next_pointer,
                                nk,
                            )
                            old_new_node_mapping[old_address] = new_address
                            break
                    if not success:
                        print("Allocation for leaf node is unsuccessful")
                elif "Inter" in line:
                    # print("Inter line is: " + line)
                    old_address = int(columns[3])
                    nk = int(columns[-1])
                    success = False
                    if prev_node == -1 or slab_full is True:
                        nodes_list = list(range(number_of_nodes))
                        random.shuffle(nodes_list)
                        slab_full = False
                    else:
                        tmp_nodes_list = list(range(number_of_nodes))
                        random.shuffle(tmp_nodes_list)
                        tmp_nodes_list.remove(prev_node)
                        nodes_list = [prev_node]
                        nodes_list = nodes_list + tmp_nodes_list
                        # print("prev_node is " + str(prev_node))
                        # print("node_list is " + ''.join(str(item) for item in nodes_list))

                    for i in nodes_list:
                        new_address = nodes[i].allocate(256)
                        if (
                            new_address == AllocSignal.SLAB_FULL
                            or new_address == AllocSignal.NODE_FULL
                        ):
                            slab_full = True
                            continue
                        else:
                            # file.write("key: " + str(key) + " hash: " + str(key_hash) + " address: " + str(hex(new_address)) + " old address: " + str(hex(address)) + "\n")
                            # print("Allocation happens on node: " + str(i))
                            prev_node = i
                            success = True
                            slab_full = False
                            children_list = []
                            key_list = []
                            for j in range(nk):
                                line = file.readline()
                                columns = line.strip().split(" ")
                                line_number = line_number + 1
                                try:
                                    key_list.append(int(columns[3]))
                                except ValueError as e:
                                    print("Value Error occurred", e)
                                    print("Columns:", columns)
                                    break
                            for j in range(nk + 1):
                                line = file.readline()
                                line_number = line_number + 1
                                columns = line.strip().split(" ")
                                children_list.append(int(columns[3]))

                            layout[old_address] = BPlusTreeNode(
                                NodeType.INTER,
                                old_address,
                                new_address,
                                children_list,
                                key_list,
                                0,
                                0,
                                nk
                            )
                            old_new_node_mapping[old_address] = new_address
                            break
                    if not success:
                        print("Allocation for inter node is unsuccessful")
            except Exception as e:
            # Catch any exception and print its type
                print("Caught an error of type:", type(e).__name__)
                print("Line number is: " + str(line_number))
    print("Total number of nodes: " + str(len(layout)))
    return


def address_to_blade(address, number_of_nodes, local_min, local_max):
    global address_range

    per_blade_size = address_range / number_of_nodes
    offset = address - local_min - 1
    return int(offset / per_blade_size)

def run_query_agg(number_of_nodes, tag):
    global address_range
    global new_min_address
    global new_max_address
    global layout
    global root
    global num_leaf_nodes
    global queries



    last_access_blade = 0

    # Start from root, find the first leaf node
    sample_count = 10000
    leaf_set = []
    cross_blade_vertical_count_vector = []
    for i in range(sample_count):
        cross_blade_access_vertical = 0
        curr_ptr = root
        vertical_count = 0
        while layout[curr_ptr].node_type != NodeType.LEAF:
            vertical_count = vertical_count + 1
            curr_blade = address_to_blade(
                layout[curr_ptr].new_address,
                number_of_nodes,
                new_min_address,
                new_max_address,
            )
            next_node = layout[curr_ptr].children_list[int(random.random() * len(layout[curr_ptr].children_list))]
            #next_node = layout[curr_ptr].children_list[0]
            next_blade = address_to_blade(
                layout[next_node].new_address,
                number_of_nodes,
                new_min_address,
                new_max_address,
            )
            if next_blade != curr_blade:
                cross_blade_access_vertical = cross_blade_access_vertical + 1
            curr_ptr = next_node
        leaf_set.append(curr_ptr)
        cross_blade_vertical_count_vector.append(cross_blade_access_vertical)
    vertical_zero_count = 0
    for item in cross_blade_vertical_count_vector:
        if item == 0:
            vertical_zero_count += 1
    print("Vertical zero count: " + str(vertical_zero_count) + " percentage: " + str(vertical_zero_count / float(sample_count)))

    total_cross_blade_count_vector = []
    total_zero_count = 0
    successful_sample_count = 0
    for j in [154, 262, 478, 910, 1774]:
        cross_blade_count_vector = []
        for i in range(sample_count):
            success = False
            curr_ptr = leaf_set[i]
        # Start from the first leaf node, do a full scan to the right most node
            cross_blade_access = cross_blade_vertical_count_vector[i]
            #print("Init is: " + str(cross_blade_access))
            time = 0
            key_count = 0
            node_count = 0
            while layout[curr_ptr].next_address != 0:
                next_node = layout[curr_ptr].next_address
                curr_blade = address_to_blade(
                    layout[curr_ptr].new_address,
                    number_of_nodes,
                    new_min_address,
                    new_max_address,
                )
                time = time + 1
                next_blade = address_to_blade(
                    layout[next_node].new_address,
                    number_of_nodes,
                    new_min_address,
                    new_max_address,
                )
                if next_blade != curr_blade:
                    cross_blade_access = cross_blade_access + 1
                key_count = key_count + layout[curr_ptr].num_keys
                curr_ptr = next_node
                node_count = node_count + 1
                if key_count > j:
                    success = True
                    break
            #print("Crossed nodes: " + str(node_count) + " number of cross_blade_access: " + str(cross_blade_access))
            if success is True:
                successful_sample_count += 1
                cross_blade_count_vector.append(cross_blade_access)
        zero_count = 0
        for item in cross_blade_count_vector:
            if item == 0:
                zero_count += 1
        print("Zero count: " + str(zero_count) + " for scan length: " + str(j) + " percentage: " + str(zero_count / float(successful_sample_count)))
        print("Successful counts: " + str(successful_sample_count))
        total_zero_count += zero_count
        # Step 1: Sort the list of integers
        sorted_data = sorted(cross_blade_count_vector)
        print(sorted_data)

        # Step 2: Calculate the cumulative distribution function (CDF)
        total_count = len(sorted_data)
        cdf_values = np.arange(1, total_count + 1) / total_count

        # Step 3: Plot the CDF
        plt.figure()
        plt.plot(sorted_data, cdf_values, marker='o')
        plt.xlabel('Integer Numbers')
        plt.ylabel('Percentage of Data')
        plt.title('Cumulative Distribution Function (CDF)')
        plt.grid(True)
        plt.savefig('cdf_' + str(j) + "_" + tag + '.png')

    #print("Total zero count: " + str(total_zero_count) + " percentage: " + str(total_zero_count / float(sample_count) / float(100)))




def run_query_scan(number_of_nodes, tag):
    global address_range
    global new_min_address
    global new_max_address
    global layout
    global root
    global num_leaf_nodes
    global queries



    last_access_blade = 0

    # Start from root, find the first leaf node
    sample_count = 10000
    leaf_set = []
    cross_blade_vertical_count_vector = []
    for i in range(sample_count):
        cross_blade_access_vertical = 0
        curr_ptr = root
        vertical_count = 0
        while layout[curr_ptr].node_type != NodeType.LEAF:
            vertical_count = vertical_count + 1
            curr_blade = address_to_blade(
                layout[curr_ptr].new_address,
                number_of_nodes,
                new_min_address,
                new_max_address,
            )
            next_node = layout[curr_ptr].children_list[int(random.random() * len(layout[curr_ptr].children_list))]
            next_blade = address_to_blade(
                layout[next_node].new_address,
                number_of_nodes,
                new_min_address,
                new_max_address,
            )
            if next_blade != curr_blade:
                cross_blade_access_vertical = cross_blade_access_vertical + 1
            curr_ptr = next_node
        leaf_set.append(curr_ptr)
        cross_blade_vertical_count_vector.append(cross_blade_access_vertical)
    vertical_zero_count = 0
    for item in cross_blade_vertical_count_vector:
        if item == 0:
            vertical_zero_count += 1
    print("Vertical zero count: " + str(vertical_zero_count) + " percentage: " + str(vertical_zero_count / float(sample_count)))

    total_zero_count = 0
    total_cross_blade_count_vector = []
    scan_key_max = 100
    for j in range(scan_key_max):
        cross_blade_count_vector = []
        for i in range(sample_count):
            curr_ptr = leaf_set[i]
        # Start from the first leaf node, do a full scan to the right most node
            cross_blade_access = cross_blade_vertical_count_vector[i]
            time = 0
            key_count = 0
            node_count = 0
            while layout[curr_ptr].next_address != 0:
                next_node = layout[curr_ptr].next_address
                curr_blade = address_to_blade(
                    layout[curr_ptr].new_address,
                    number_of_nodes,
                    new_min_address,
                    new_max_address,
                )
                time = time + 1
                next_blade = address_to_blade(
                    layout[next_node].new_address,
                    number_of_nodes,
                    new_min_address,
                    new_max_address,
                )
                if next_blade != curr_blade:
                    cross_blade_access = cross_blade_access + 1
                key_count = key_count + layout[curr_ptr].num_keys
                curr_ptr = next_node
                node_count = node_count + 1
                if key_count > j:
                    break
            cross_blade_count_vector.append(cross_blade_access)
        for k in cross_blade_count_vector:
            total_cross_blade_count_vector.append(k)
        zero_count = 0
        for item in cross_blade_count_vector:
            if item == 0:
                zero_count += 1
        print("Zero count: " + str(zero_count) + " for scan length: " + str(j) + " percentage: " + str(zero_count / float(sample_count)))
        total_zero_count += zero_count

    print("Total zero count: " + str(total_zero_count) + " percentage: " + str(total_zero_count / float(sample_count) / float(scan_key_max)))

    # Step 1: Sort the list of integers
    sorted_data = sorted(total_cross_blade_count_vector)
    print(sorted_data)

    # Step 2: Calculate the cumulative distribution function (CDF)
    total_count = len(sorted_data)
    cdf_values = np.arange(1, total_count + 1) / total_count

    # Step 3: Plot the CDF
    plt.plot(sorted_data, cdf_values, marker='o')
    plt.xlabel('Integer Numbers')
    plt.ylabel('Percentage of Data')
    plt.title('Cumulative Distribution Function (CDF)')
    plt.grid(True)
    plt.savefig('cdf_' + tag + '.png')


def print_alloc(number_of_nodes):
    global address_range
    global new_min_address
    global new_max_address
    global layout
    global root
    global num_leaf_nodes
    global queries



    curr_ptr = root
    while layout[curr_ptr].node_type != NodeType.LEAF:
        next_node = layout[curr_ptr].children_list[0]
        curr_ptr = next_node
    node_vec = []
    while layout[curr_ptr].next_address != 0:
        next_node = layout[curr_ptr].next_address
        curr_blade = address_to_blade(
            layout[curr_ptr].new_address,
            number_of_nodes,
            new_min_address,
            new_max_address,
        )
        node_vec.append(curr_blade)
        curr_ptr = next_node
    # Step 1: Sort the list of integers
    print(node_vec)
    #plt.figure()
    #plt.plot(node_vec)
    #plt.grid(True)
    #plt.savefig('debug.png')








if __name__ == "__main__":
    # Check if the script was run with a filename argument
    if len(sys.argv) != 6:
        print(
            "Usage: python script.py <query_filename> <layout_filename> <allocation_size_in_bytes> <number_of_blades> <workload: scan or agg>"
        )
        sys.exit(1)

    query_filename = sys.argv[1]
    layout_filename = sys.argv[2]
    allocation_size = int(sys.argv[3])
    number_of_blades = int(sys.argv[4])
    workload = sys.argv[5]


    # Extract and print the second column data
    # read_query(query_filename)
    read_layout(layout_filename, allocation_size, number_of_blades)
    if workload == 'scan':
        run_query_scan(number_of_blades, str(allocation_size) + "_" + str(number_of_blades) + "_" + workload)
    elif workload == 'agg':
        run_query_agg(number_of_blades, str(allocation_size) + "_" + str(number_of_blades) + "_" + workload)
    elif workload == 'debug':
        #run_query_agg(number_of_blades, str(allocation_size) + "_debug_" + str(number_of_blades) + "_" + workload)
        print_alloc(number_of_blades)
    else:
        print("Unrecognized workload")

    # shuffle_layout(allocation_size, number_of_blades)
    # run_query(number_of_blades)
