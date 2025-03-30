open_project /home/yupeng/pulse/fpga/pc_core_pack/pc_core/pc_core.xpr
source -notrace /home/yupeng/pulse/fpga/pc_core_pack/pc_core/imports/package_kernel.tcl
package_project /home/yupeng/pulse/fpga/pc_core_pack/pc_core/pc_core xilinx.com kernel pc_core
package_xo  -xo_path /home/yupeng/pulse/fpga/pc_core_pack/pc_core/exports/pc_core.xo -kernel_name pc_core -ip_directory /home/yupeng/pulse/fpga/pc_core_pack/pc_core/pc_core -kernel_xml /home/yupeng/pulse/fpga/pc_core_pack/pc_core/imports/kernel.xml
