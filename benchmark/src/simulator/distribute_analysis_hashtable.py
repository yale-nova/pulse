import sys
import collections
import random


queries = []
layout = dict()
capacity = 0
address_range = 0
min_address = 0
max_address = 0
new_min_address = 0
new_max_address = 0
new_layout = dict()


class Slab:
    def __init__(self, slab_min_address, slab_capacity):
        self.slab_min_address = slab_min_address
        self.slab_capacity = slab_capacity
        self.current_slab_offset = 0

    def allocate(self, allocation_size):
        if self.current_slab_offset + allocation_size <= self.slab_capacity:
            allocation_address = self.current_slab_offset + self.slab_min_address
            self.current_slab_offset += allocation_size
            return (True, allocation_address)
        else:
            return (False, 0)


class Node:
    def __init__(
        self, node_id, node_size_in_bytes, allocation_size_in_bytes, node_min_address
    ):
        self.node_id = node_id
        self.node_size_in_bytes = node_size_in_bytes
        self.node_min_address = node_min_address
        self.node_max_address = self.node_min_address + self.node_size_in_bytes
        self.allocation_size_in_bytes = allocation_size_in_bytes
        self.free_slabs = dict()
        self.number_of_slabs = int(self.node_size_in_bytes / allocation_size_in_bytes)
        current_address = self.node_min_address
        for i in range(self.number_of_slabs):
            self.free_slabs[i] = Slab(current_address, self.allocation_size_in_bytes)
            current_address += self.allocation_size_in_bytes
        self.free_slabs_keys = list(self.free_slabs.keys())
        self.full_slabs = collections.deque()
        self.current_slab_id = 0
        self.current_slab_offset = 0

    def allocate(self, allocation_size):
        # print("Trying to allocate " + str(self.allocation_size_in_bytes) + " at node: " + str(self.node_id))
        while self.free_slabs:
            slab_id = random.choice(self.free_slabs_keys)
            slab = self.free_slabs[
                slab_id
            ]  # Access the first element without removing it
            status, address = slab.allocate(allocation_size)
            if status:
                return address
            else:
                self.free_slabs.pop(slab_id)  # Move full slab to full_slabs
                self.free_slabs_keys.remove(slab_id)
        return -1


def read_query(filename):
    with open(filename, "r") as file:
        for line in file:
            if "READ user" in line:
                columns = line.strip().split(" ")
                if len(columns) >= 2:
                    queries.append(int(columns[1].replace("user", "")))

    return


def shuffle_layout(allocation_size, number_of_nodes):
    global address_range
    global min_address
    global max_address
    global layout
    global new_layout

    new_min_address = 0
    new_max_address = address_range
    number_of_blocks = address_range / allocation_size
    nodes = []
    for i in range(number_of_nodes):
        nodes.append(
            Node(
                i,
                int(address_range / number_of_nodes),
                allocation_size,
                new_min_address + i * int(address_range / number_of_nodes),
            )
        )

    count = 0

    with open("/var/data/hashtable_new_layout", "w") as file:
        for key_hash in sorted(layout):
            for key, address in layout[key_hash]:
                # if random.random() > 0.5:
                if 1 > 0.5:
                    for i in range(number_of_nodes):
                        new_address = nodes[i].allocate(256)
                        if new_address == -1:
                            continue
                        else:
                            if key_hash in new_layout:
                                new_layout[key_hash].append((key, new_address))
                            else:
                                new_layout[key_hash] = [(key, new_address)]
                            file.write(
                                "key: "
                                + str(key)
                                + " hash: "
                                + str(key_hash)
                                + " address: "
                                + str(hex(new_address))
                                + " old address: "
                                + str(hex(address))
                                + "\n"
                            )
                            count = count + 1
                            if count % 10000 == 0:
                                print("Shuffle layout count: " + str(count), flush=True)
                            break
                else:
                    for i in reversed(range(number_of_nodes)):
                        new_address = nodes[i].allocate(256)
                        if new_address == -1:
                            continue
                        else:
                            if key_hash in new_layout:
                                new_layout[key_hash].append((key, new_address))
                            else:
                                new_layout[key_hash] = [(key, new_address)]
                            break


def read_layout(filename):
    global capacity
    global address_range
    global min_address
    global max_address
    global layout

    # Open the file
    start = True
    with open(filename, "r") as file:
        # Iterate over each line in the file
        for line in file:
            columns = line.strip().split(" ")
            key = int(columns[1])
            key_hash = int(columns[5])
            address = int(columns[7], 16)
            capacity = int(columns[9])
            if key_hash not in layout:
                hash_list = [(key, address)]
                layout[key_hash] = hash_list
            else:
                hash_list = layout[key_hash]
                hash_list.append((key, address))
                layout[key_hash] = hash_list
            if start is True:
                min_address = address
                max_address = address
                start = False
            else:
                if min_address > address:
                    min_address = address
                if max_address < address:
                    max_address = address
        print("Max_address is: " + str(hex(max_address)))
        print("Min address is: " + str(hex(min_address)))
        print("Capacity is " + str(capacity))
        print(
            "Address range is: " + str((max_address - min_address) / 1024 / 1024 / 1024)
        )
        address_range = max_address - min_address
    return


def address_to_blade(address, number_of_nodes, local_min, local_max):
    per_blade_size = address_range / number_of_nodes
    offset = address - local_min - 1
    return int(offset / per_blade_size)


def run_query(number_of_nodes):
    global capacity
    global address_range
    global new_min_address
    global new_max_address
    global new_layout
    cross_blade_access = 0
    new_min_address = 0
    new_max_address = address_range

    last_access_blade = 0
    for query in queries:
        start = True
        key_hash = query % capacity
        for key, address in new_layout[key_hash]:
            blade_to_access = address_to_blade(
                address, number_of_nodes, new_min_address, new_max_address
            )
            if start == True:
                last_access_blade = blade_to_access
                start = False
            else:
                if blade_to_access != last_access_blade:
                    print("Key to access is: " + str(query))
                    print("Hash bucket is: " + str(key_hash))
                    print("Last access blade is: " + str(last_access_blade))
                    print("Now access blade is: " + str(blade_to_access))
                    cross_blade_access = cross_blade_access + 1
                    last_access_blade = blade_to_access
            if key == query:
                break
    print("Summary: cross_blade_access: " + str(cross_blade_access))
    print("Max_address is: " + str(hex(max_address)))
    print("Min address is: " + str(hex(min_address)))
    print("New max_address is: " + str(hex(new_max_address)))
    print("New min address is: " + str(hex(new_min_address)))
    print("Capacity is " + str(capacity))
    print("Address range is: " + str((max_address - min_address) / 1024 / 1024 / 1024))


if __name__ == "__main__":
    # Check if the script was run with a filename argument
    if len(sys.argv) != 5:
        print(
            "Usage: python script.py <query_filename> <layout_filename> <allocation_size_in_bytes> <number_of_blades>"
        )
        sys.exit(1)

    query_filename = sys.argv[1]
    layout_filename = sys.argv[2]
    allocation_size = int(sys.argv[3])
    number_of_blades = int(sys.argv[4])

    # Extract and print the second column data
    read_query(query_filename)
    read_layout(layout_filename)
    shuffle_layout(allocation_size, number_of_blades)
    run_query(number_of_blades)
