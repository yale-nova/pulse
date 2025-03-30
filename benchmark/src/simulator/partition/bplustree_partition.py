import sys
import collections
import random
from enum import Enum
import matplotlib.pyplot as plt
import numpy as np
import math


layout = dict()
capacity = 0
address_range = 0
min_address = 0
max_address = 0
new_min_address = 0
new_max_address = 0
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
        #print("Node min address: " + str(current_address))
        for i in range(self.number_of_slabs):
            self.free_slabs[i] = Slab(current_address, self.allocation_size_in_bytes)
            current_address += self.allocation_size_in_bytes
            #print("Node slab address: " + str(current_address))
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

def round_up_to_gigabyte(num):
    gigabyte = 1024 * 1024 * 1024
    return math.ceil(num / gigabyte) * gigabyte
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
                    address_range = round_up_to_gigabyte(
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
                            #print("Allocation happens on node: " + str(i) + " with address: " + str(new_address))
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
                            #print("Allocation happens on node: " + str(i) + " with address: " + str(new_address))
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
    #print("address: " + str(address) + " per blade: " + str(per_blade_size))
    return int(offset / per_blade_size)


def print_layout_in_files(number_of_nodes, tag):
    layout_per_node = []
    for i in range(number_of_nodes):
        f = open(tag + "/" + str(number_of_nodes) + "_" + str(i), 'w')
        layout_per_node.append(f)

    old_new_node_mapping[0] = 0
    print("Root: " + str(root) + " " + str(old_new_node_mapping[root]))
    print("Address range: " + str(address_range))

    for address, node in layout.items():
        curr_blade = address_to_blade(
            node.new_address,
            number_of_nodes,
            new_min_address,
            new_max_address,
        )
        output_string = ""
        if node.node_type is NodeType.LEAF:
            output_string = output_string + "LEAF " + str(node.new_address) + " " + str(node.num_keys) + " "
            for j in node.key_list:
                output_string = output_string + str(j) + " "
            output_string = output_string + str(old_new_node_mapping[node.previous_address]) + " "
            output_string = output_string + str(old_new_node_mapping[node.next_address]) + "\n"
        elif node.node_type is NodeType.INTER:
            output_string = output_string + "INTER " + str(node.new_address) + " " + str(node.num_keys) + " "
            for i in node.children_list:
                output_string = output_string + str(old_new_node_mapping[i]) + " "
            for j in node.key_list:
                output_string = output_string + str(j) + " "
            output_string = output_string[:-1] + '\n'
        try:
            layout_per_node[curr_blade - 1].write(output_string)
        except IndexError:
            print("Index error: " + str(curr_blade))



if __name__ == "__main__":
    # Check if the script was run with a filename argument
    if len(sys.argv) != 4:
        print(
            "Usage: python script.py <layout_filename> <number_of_nodes> <location>"
        )
        sys.exit(1)

    layout_filename = sys.argv[1]
    number_of_nodes = int(sys.argv[2])
    location = sys.argv[3]
    allocation_size = 1024 * 1024 * 1024 # 1GB Slab allocation


    # Extract and print the second column data
    # read_query(query_filename)
    read_layout(layout_filename, allocation_size, number_of_nodes)
    print_layout_in_files(number_of_nodes, location)
