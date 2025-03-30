# PULSE


PULSE is a distributed pointer-traversal framework for disaggregated memory that accelerates linked data structure access near memory to overcome the limitations of CPU-side caching, enabling low-latency, high-throughput, and energy-efficient execution. See our [ASPLOS'25 paper](https://dl.acm.org/doi/10.1145/3669940.3707253) for a comprehensive system description.


## Directory Structure

```
<PULSE>
│   README.md
└───apps: RPC/RPC-ARM/Cache+RPC implementations
│   │   webservice
│   │   wiredtiger
│   │   btrdb
└───benchmark: Simulation benchmarks
└───docker-swap: Workload local/remote memory analysis using Docker swap memory
└───docs: [WIP] Documentation for setting up the testing environment
└───fpga: PULSE accelerator implementation
└───pulse-lib: PULSE common libraries
│       │  src/cache: PULSE application cache implementation
│       │  src/ds: PULSE data structures
│       │  src/erpc: PULSE RPC library implementation based on [eRPC](https://github.com/erpc-io/eRPC)
└───scripts: Scripts for building, processing results, etc.
└───third_party: Third-party libraries
```

## Installation

Before installing **PULSE**, please ensure that you have set up the required dependencies by following the installation instructions for the following repositories:

- [**eRPC**](https://github.com/erpc-io/eRPC) – for running RPC-related benchmarks.
- [**MIND**](https://github.com/Yale-NeRD/mind) – for running MIND-related benchmarks.
- [**xup_vitis_network_example**](https://github.com/Xilinx/xup_vitis_network_example) – for benchmarks involving the PULSE accelerator.


### Source build

To build PULSE host-side code:
```bash
git clone https://github.com/Yale-NeRD/pulse
cd pulse
mkdir -p build
cd build
cmake ..
make -j && make install
```
To build PULSE accelerator code:
```bash
cd pulse/fpga/
make all DEVICE=<full platform path> INTERFACE=<interface number> DESIGN=pc
```
