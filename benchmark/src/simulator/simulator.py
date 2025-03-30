import csv
import re
import logging
import unittest
import socket
from io import StringIO

logging.basicConfig(level=logging.DEBUG)

# UDP

UDP_IP = "127.0.0.1"
UDP_PORT = 5005

sock = socket.socket(socket.AF_INET, # Internet
                     socket.SOCK_DGRAM) # UDP
sock.bind((UDP_IP, UDP_PORT))

# globals
node_size = 256
scratch_pad_size = 4096
nitems = 0 # number of integers in the actual scratch pad received
prealloc_count = 16
consumed = 0


# Initialize registers and memory

# Registers
# Each element is an 8 byte value

# Register arrays
temp        = [0] * 16 # temporary registers t0-t15
cur_node    = [0] * int(node_size / 8) # contents of cur_ptr
store_buf   = [0] * int(node_size / 8) # for the allocated node
prealloc    = [0] * prealloc_count

'''
Temporary register structure

   0 1 2 3 4 5 6 7 0 1 2 3 4 5 6 7 0 1 2 3 4 5 6 7 0 1 2 3 4 5 6 7
  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 0|      t0       |      t1       |       t2      |       t3      |
  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 4|      t4       |      t5       |       t6      |       t7      |
  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 8|      t8       |      t9       |       t10     |       t11     |
  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
12|      t12      |      t13      |       t14     |       t15     |
  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+

'''

# special registers
zero_register = 0
program_counter = 2
alloc_ptr = 0 # pointer to currently allocated node (mapped to store_buf)

# registers initalized by request
scratch_pad_ptr = 0 # mapped to scratch_pad
cur_ptr = 0 # mapped to cur_node
alloc_ptr_loc = 0 # location of alloc_ptr in scratch pad (to detect allocs)


# Determine whether to take the next JUMP
branch_flag = True

# High-speed memory (scratch pad, accessible within an iteration)
scratch_pad = [0] * int((scratch_pad_size / 8))

# Main memmory
# 64 GB
# memory = [0] * 1024 * 1024 * 1024 * 64
# 32 GB
# memory = [0] * 1024 * 1024 * 1024 * 32
# 1 MB
memory = [0] * int(1024 * 1024 / 8) 
# 4 KB
# 8 Byte granularity
# memory = [0] * int(1024 * 4 / 8)

# Code buffer, store all the instructions
code_buffer = dict()
# Store all the labels
label = dict()


"""
Request format:
    scratch_pad_ptr
    cur_ptr
    alloc_ptr_loc
    number of scratch pad values
    ...contents...
    length of code
    ...code...

Scratch pad starts with a number, which is the current number of elements in the
scratch pad 
Followed with 8-byte values

Example:
   2   # Number of elements
   100 # First element
   200 # Second element
"""

# Read scratch pad information
def load_request(data):
    global scratch_pad_ptr
    global cur_ptr
    global alloc_ptr_loc
    global nitems
    global code_buffer
    global code
    req = list(csv.reader(StringIO(data.decode())))
    # load pointers
    scratch_pad_ptr = int(req[0][0], 16)
    cur_ptr = int(req[1][0], 16)
    alloc_ptr_loc = int(req[2][0], 16)
    # scratch pad contents
    nitems = int(req[3][0])
    contents = req[4:4+nitems]
    for i, row in enumerate(contents):
        scratch_pad[i] = int(row[0])
    # instructions
    instructions = req[4+nitems:]
    for row in instructions:
        if len(row) == 2:
            # This could be a RETURN/LABEL
            if(row[1] not in ['return']): # This is an label
                label[row[1][:-1]] = int(row[0]) + 1
        # Exclude line number here
        code_buffer[int(row[0])] = row[1:]

"""
Get the value of a register operand
"""
def register_val(name):
    if name == "scratch_pad":
        return scratch_pad_ptr
    elif name == "cur_ptr":
        return cur_ptr
    elif name == "zero":
        return 0
    m = re.fullmatch(r"t(\d+)", name)
    if m:
        return temp[int(m.group(1))]
    return None

def set_register(name, val):
    if name == "scratch_pad":
        print("Error: tried to update scratch_pad")
        return False
    elif name == "cur_ptr":
        cur_ptr = val
        return True
    elif name == "zero":
        print("Error: tried to update zero register")
        return False
    m = re.fullmatch(r"t(\d+)", name)
    if m:
        temp[int(m.group(1))] = val
        return True
    return False

def address(op):
    x = register_val(op)
    if x != None:
        return x
    m = re.match(r"(.*)\((.*)\)", op)
    if m:
        offset_str = m.group(1)
        offset = register_val(offset_str)
        if offset == None:
            offset = int(offset_str)
        base_str = m.group(2)
        base = register_val(base_str)
        if base == None:
            base = int(base_str)
        return base + offset
    print("error: could not decode address:")
    print(op)
    return None

def load(addr):
    global alloc_ptr
    global consumed
    if addr == alloc_ptr_loc and alloc_ptr == 0:
        alloc_ptr = prealloc[consumed]
        consumed += 1
        offset = alloc_ptr_loc - scratch_pad_ptr
        scratch_pad[int(offset / 8)] = alloc_ptr
        return alloc_ptr
    elif cur_ptr <= addr and addr < cur_ptr + node_size:
        offset = addr - cur_ptr
        return cur_node[int(offset / 8)]
    elif scratch_pad_ptr <= addr and addr < scratch_pad_ptr + scratch_pad_size:
        offset = addr - scratch_pad_ptr
        return scratch_pad[int(offset / 8)]
    elif alloc_ptr != 0 and alloc_ptr <= addr and addr < alloc_ptr + node_size:
        offset = addr - alloc_ptr
        return store_buf[int(offset / 8)]
    else:
        return None

def store(val, addr):
    if cur_ptr <= addr and addr < cur_ptr + node_size:
        offset = addr - cur_ptr
        cur_node[int(offset / 8)] = val
        return True
    elif scratch_pad_ptr <= addr and addr < scratch_pad_ptr + scratch_pad_size:
        offset = addr - scratch_pad_ptr
        scratch_pad[int(offset / 8)] = val
    elif alloc_ptr != 0 and alloc_ptr <= addr and addr < alloc_ptr + node_size:
        offset = addr - alloc_ptr
        store_buf[int(offset / 8)] = val
        return True
    else:
        return False

def return_packet(addr):
    s = "" 
    for i in range(nitems):
        s += str(scratch_pad[i])
        s += "\n"
    n_bytes = sock.sendto(bytes(s.encode()), addr)

"""
All instructions follow the format in:

line_number,OPCODE,register..

Single word instruction:

    RETURN, NEXT_ITER

Two word instructions:
    LOAD, STORE, JUMP, ENQ, DEQ

Three word instructions:
    LOAD, STORE, MOV, BEQ, BNQ, BGT, BLT, BGE, BLE

Four word instructions:
    ADD, ADDI, SUB, MUL, DIV, AND, OR, NOT

Example:

0,ADD,t1,t0,t0
1,SUB,t1,t0,t0

Labels are allowed for JUMP targets. The format is:

    line_number,LABEL_NAME

Example:
    0,ADD,t1,t0,t0
    0,START
    1,SUB,t1,t0,t0
    ...
    JUMP START # This will jump back to line 0

Note: In Pulse accelerator, backward JUMP is not allowed, but it's allowed for now in the simulator
[WIP]

"""

# TODO validation function
#def validate(opcode, rd, rs1, rs2):
#        registers[rd] = registers[rs1] * registers[rs2]

# Execute the given instruction
def execute_instruction(instruction):
    global scratch_pad_ptr, program_counter, branch_flag, cur_ptr, alloc_ptr
    opcode = instruction[0]
    print(instruction)
    if len(instruction) == 1:
        if opcode == 'return':
            """
            RETURN: finish execution
            """
            # store the current node to memory
            if cur_ptr != 0:
                for i, v in enumerate(cur_node):
                    memory[int(cur_ptr/8) + i] = v
            # flush the store buffer, if allocated
            if alloc_ptr != 0:
                for i, v in enumerate(store_buf):
                    memory[int(alloc_ptr/8) + i] = v
                alloc_ptr = 0
            return 1
    elif len(instruction) == 2: # label or special instruction
        if opcode == 'jump':
            """
            JUMP LABEL
            jump to label and continue execution
            return immediately to avoid program_counter + 1
            """
            if branch_flag:
                jump_addr = label[instruction[1]]
                program_counter = jump_addr
            else:
                program_counter = program_counter + 1
            branch_flag = True
            return 0
        if opcode == 'next':
            """
            next <reg>
            start the next iteration
            """
            # store the current node to memory
            if cur_ptr != 0:
                for i, v in enumerate(cur_node):
                    memory[int(cur_ptr/8) + i] = v
            # flush the store buffer, if allocated
            if alloc_ptr != 0:
                for i, v in enumerate(store_buf):
                    memory[int(alloc_ptr/8) + i] = v
                alloc_ptr = 0
            # load the next node into registers
            op = instruction[1]
            cur_ptr = register_val(op) # set cur_ptr to <reg>
            for i in range(int(node_size/8)):
                cur_node[i] = memory[int(cur_ptr/8) + i]
            program_counter = 2 # Reset program counter to reach next iteration
            return 0
    elif len(instruction) == 3: # Load / Store / Branch
        if opcode == 'mov':
            """
            MOV rd rs

            Move rs to rd
            """
            val = register_val(instruction[2])
            set_register(instruction[1], val)
        elif opcode == 'load':
            """
            load rd, rs
            """
            addr = address(instruction[2])
            val = load(addr)
            set_register(instruction[1], val)
        elif opcode == 'loadi':
            """
            loadi rd imm
            """
            set_register(instruction[1], int(instruction[2]))
        elif opcode == 'store':
            """
            store rs rd
            """
            val = register_val(instruction[1])
            addr = address(instruction[2]) 
            store(val, addr)
        elif opcode == 'beq':
            """
            BEQ r1 r2

            if r1 equals r2, set branch flag to true
            """
            r1 = register_val(instruction[1])
            r2 = register_val(instruction[2])
            if r1 == r2:
                branch_flag = True
            else:
                branch_flag = False
        elif opcode == 'bne':
            """
            BNE rs1 rs2

            if rs1 does not equal rs2, set branch flag to true
            """
            r1 = register_val(instruction[1])
            r2 = register_val(instruction[2])
            if r1 != r2:
                branch_flag = True
            else:
                branch_flag = False
        elif opcode == 'bgt':
            """
            BGT rs1 rs2
            if rs1 is greater than rs2, set branch flag to true
            """
            r1 = register_val(instruction[1])
            r2 = register_val(instruction[2])
            if r1 > r2:
                branch_flag = True
            else:
                branch_flag = False
        elif opcode == 'blt':
            """
            BLT rs1 rs2
            if rs1 is less than rs2, set branch flag to true
            """
            r1 = register_val(instruction[1])
            r2 = register_val(instruction[2])
            if r1 < r2:
                branch_flag = True
            else:
                branch_flag = False
        elif opcode == 'ble':
            """
            BLE rs1 rs2
            if rs1 is less or equal than rs2, set branch flag to true
            """
            r1 = register_val(instruction[1])
            r2 = register_val(instruction[2])
            if r1 <= r2:
                branch_flag = True
            else:
                branch_flag = False
        elif opcode == 'bge':
            """
            BGE rs1 rs2
            if rs1 is greater or equal than rs2, set branch flag to true
            """
            r1 = register_val(instruction[1])
            r2 = register_val(instruction[2])
            if r1 >= r2:
                branch_flag = True
            else:
                branch_flag = False
        elif opcode == 'not':
            """
            NOT rd rs
            rd = ~rs
            """
            rs = register_val(instruction[2])
            set_register(instruction[1], ~rs)
    else:
        if opcode == 'add':
            """
            ADD rd rs1 rs2
            rd = rs1 + rs2
            """
            rs1 = register_val(instruction[2])
            rs2 = register_val(instruction[3])
            set_register(instruction[1], rs1 + rs2)
        elif opcode == 'addi':
            """
            ADDI rd rs1 imm
            rd = rs1 + imm
            """
            rs1 = register_val(instruction[2])
            imm = int(instruction[3])
            set_register(instruction[1], rs1 + imm)
        elif opcode == 'sub':
            """
            SUB rd rs1 rs2
            rd = rs1 - rs2
            """
            rs1 = register_val(instruction[2])
            rs2 = register_val(instruction[3])
            set_register(instruction[1], rs1 - rs2)
        elif opcode == 'mul':
            """
            MUL rd rs1 rs2
            rd = rs1 * rs2
            """
            rs1 = register_val(instruction[2])
            rs2 = register_val(instruction[3])
            set_register(instruction[1], rs1 * rs2)
        elif opcode == 'and':
            """
            AND rd rs1 rs2
            rd = rs1 & rs2
            """
            rs1 = register_val(instruction[2])
            rs2 = register_val(instruction[3])
            set_register(instruction[1], rs1 & rs2)
        elif opcode == 'or':
            """
            OR rd rs1 rs2
            rd = rs1 | rs2
            """
            rs1 = register_val(instruction[2])
            rs2 = register_val(instruction[3])
            set_register(instruction[1], rs1 | rs2)
        # Add more instruction types as needed
    program_counter = program_counter + 1
    return 0

def execute():
    """
    Stop execution when program counter reaches the end of program buffer
    """
    global program_counter
    program_counter = 2
    while program_counter <= len(code_buffer) + len(label):
        insn = code_buffer[program_counter]
        if len(insn) < 2 and insn[0] != 'return':
            program_counter += 1
            continue
        print("executing ins {}".format(program_counter))
        ret = execute_instruction(code_buffer[program_counter])
        if ret:
            break

# populate prealloc pointer list
for i in range(prealloc_count):
    prealloc[i] = node_size + i * node_size

# repopulate prealloc after a request terminates
def refresh_prealloc():
    global consumed
    addr = prealloc[consumed]
    for i in range(prealloc_count):
        prealloc[i] = addr + i * node_size
    consumed = 0

# main request reception loop
while True:
    data, from_addr = sock.recvfrom(8192) # buffer size is 1024 bytes
    load_request(data)
    refresh_prealloc()
    # load first node into memory:
    # print(cur_ptr)
    for i in range(int(node_size/8)):
        cur_node[i] = memory[int(cur_ptr/8) + i]
    # print(cur_node)
    #print(scratch_pad)
    #print(label)
    #print(code_buffer)
    execute()
    return_packet(from_addr)
