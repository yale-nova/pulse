# NIC preparation
Alveo U250 

* Check shell parititon is loaded or not: 
```bash
sudo /opt/xilinx/xrt/bin/xbmgmt examine --report all
```
* If not, program the shell partition, [src](https://docs.xilinx.com/v/u/2.0-English/ug1301-getting-started-guide-alveo-accelerator-cards):
```bash
sudo /opt/xilinx/xrt/bin/xbmgmt program --device 0000:85:00.0 --shell /lib/firmware/xilinx/bd5fb8abab266c3265918257b5048e88/partition.xsabin
```
* Report temperature, [src](https://xilinx.github.io/Alveo-Cards/master/debugging/build/html/docs/common-steps.html):
```bash
xbutil examine --device 0000:85:00.01 --report thermal
```

* Get MAC address by
```bash
sudo /opt/xilinx/xrt/bin/xbmgmt examine --report all
```

# FPGA code
Just run **make** or open the project from Vivado, then do synthesize -> implementation -> bitstream generation -> load bitstream on device

# Trouble shooting

* Verilog-ethernet does not pulls down PCIe so seeing such errors in **dmesg** is normal behavior:
```bash
[254457.274759] xclmgmt 0000:85:00.0: health_check_cb: Card requires pci hot reset
[254462.392992] xclmgmt 0000:85:00.0: check_pcie_link_toggle: PCI link toggle was detected
[254462.394661] xclmgmt 0000:85:00.0: firewall.m.17825792 ffff90b4f639d410 check_firewall: AXI Firewall 0 tripped, status: 0xfffefffe, bar offset 0x1f02000, resource ep_firewall_blp_ctrl_mgmt_00 1 1 1 axi_firewall
[254462.394669] xclmgmt 0000:85:00.0: firewall.m.17825792 ffff90b4f639d410 check_firewall: ARADDR 0xffffffffffffffff, AWADDR 0xffffffffffffffff, ARUSER 0xffffffff, AWUSER 0xffffffff
[254462.394676] xclmgmt 0000:85:00.0: firewall.m.17825792 ffff90b4f639d410 check_firewall: Firewall 0, ep ep_firewall_blp_ctrl_mgmt_00 1 1 1 axi_firewall, status: 0xffffffff, bar offset 0x1f02000
[254462.394683] xclmgmt 0000:85:00.0: firewall.m.17825792 ffff90b4f639d410 check_firewall: ARADDR 0xffffffffffffffff, AWADDR 0xffffffffffffffff, ARUSER 0xffffffff, AWUSER 0xffffffff
[254462.394690] xclmgmt 0000:85:00.0: firewall.m.17825792 ffff90b4f639d410 check_firewall: Firewall 1, ep ep_firewall_blp_ctrl_user_00 1 1 1 axi_firewall, status: 0xffffffff, bar offset 0x1f03000
[254462.394697] xclmgmt 0000:85:00.0: firewall.m.17825792 ffff90b4f639d410 check_firewall: ARADDR 0xffffffffffffffff, AWADDR 0xffffffffffffffff, ARUSER 0xffffffff, AWUSER 0xffffffff
[254462.394703] xclmgmt 0000:85:00.0: firewall.m.17825792 ffff90b4f639d410 check_firewall: Firewall 2, ep ep_firewall_ctrl_mgmt_00 1 1 2 axi_firewall, status: 0xffffffff, bar offset 0x42000
[254462.394709] xclmgmt 0000:85:00.0: firewall.m.17825792 ffff90b4f639d410 check_firewall: ARADDR 0xffffffffffffffff, AWADDR 0xffffffffffffffff, ARUSER 0xffffffff, AWUSER 0xffffffff
[254462.394715] xclmgmt 0000:85:00.0: firewall.m.17825792 ffff90b4f639d410 check_firewall: Firewall 3, ep ep_firewall_ctrl_user_00 1 1 2 axi_firewall, status: 0xffffffff, bar offset 0x43000
[254462.394721] xclmgmt 0000:85:00.0: firewall.m.17825792 ffff90b4f639d410 check_firewall: ARADDR 0xffffffffffffffff, AWADDR 0xffffffffffffffff, ARUSER 0xffffffff, AWUSER 0xffffffff
[254462.394727] xclmgmt 0000:85:00.0: firewall.m.17825792 ffff90b4f639d410 check_firewall: Firewall 4, ep ep_firewall_ctrl_debug_00 1 1 2 axi_firewall, status: 0xffffffff, bar offset 0x44000
[254462.394732] xclmgmt 0000:85:00.0: firewall.m.17825792 ffff90b4f639d410 check_firewall: ARADDR 0xffffffffffffffff, AWADDR 0xffffffffffffffff, ARUSER 0xffffffff, AWUSER 0xffffffff
[254462.394738] xclmgmt 0000:85:00.0: firewall.m.17825792 ffff90b4f639d410 check_firewall: Firewall 5, ep ep_firewall_data_h2c_00 1 1 2 axi_firewall, status: 0xffffffff, bar offset 0x45000
[254462.394744] xclmgmt 0000:85:00.0: firewall.m.17825792 ffff90b4f639d410 check_firewall: ARADDR 0xffffffffffffffff, AWADDR 0xffffffffffffffff, ARUSER 0xffffffff, AWUSER 0xffffffff
[254462.394750] xclmgmt 0000:85:00.0: firewall.m.17825792 ffff90b4f639d410 check_firewall: Firewall 6, ep ep_firewall_data_c2h_00 1 1 2 axi_firewall, status: 0xffffffff, bar offset 0x48000
[254462.394755] xclmgmt 0000:85:00.0: firewall.m.17825792 ffff90b4f639d410 check_firewall: ARADDR 0xffffffffffffffff, AWADDR 0xffffffffffffffff, ARUSER 0xffffffff, AWUSER 0xffffffff
```
Also, since it's the NIC program side that disables PCIe, doing a hot reset does not help. To hot reset, use: 
```bash
xbutil reset --device 0000:85:00.1
```
