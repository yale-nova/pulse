# This is a generated file. Use and modify at your own risk.
################################################################################

set kernel_name    "pc_core"
set kernel_vendor  "xilinx.com"
set kernel_library "kernel"

##############################################################################

proc edit_core {core} {
  set bif      [::ipx::get_bus_interfaces -of $core  "dram0_axi"] 
  set bifparam [::ipx::add_bus_parameter -quiet "MAX_BURST_LENGTH" $bif]
  set_property value        64           $bifparam
  set_property value_source constant     $bifparam
  set bifparam [::ipx::add_bus_parameter -quiet "NUM_READ_OUTSTANDING" $bif]
  set_property value        32           $bifparam
  set_property value_source constant     $bifparam
  set bifparam [::ipx::add_bus_parameter -quiet "NUM_WRITE_OUTSTANDING" $bif]
  set_property value        32           $bifparam
  set_property value_source constant     $bifparam

  ::ipx::associate_bus_interfaces -busif "dram0_axi" -clock "ap_clk" $core
  ::ipx::associate_bus_interfaces -busif "k2n" -clock "ap_clk" $core
  set axis_bif      [::ipx::get_bus_interfaces -of $core  "k2n"] 
  set bifparam [::ipx::add_bus_parameter -quiet "TDATA_NUM_BYTES" $axis_bif]
  set_property value        64   $bifparam
  set_property value_source constant     $bifparam
  set bifparam [::ipx::add_bus_parameter -quiet "TUSER_WIDTH" $axis_bif]
  set_property value        0   $bifparam
  set_property value_source constant     $bifparam
  set bifparam [::ipx::add_bus_parameter -quiet "TID_WIDTH" $axis_bif]
  set_property value        0   $bifparam
  set_property value_source constant     $bifparam
  set bifparam [::ipx::add_bus_parameter -quiet "TDEST_WIDTH" $axis_bif]
  set_property value        16   $bifparam
  set_property value_source constant     $bifparam
  set bifparam [::ipx::add_bus_parameter -quiet "HAS_TREADY" $axis_bif]
  set_property value        1   $bifparam
  set_property value_source constant     $bifparam
  set bifparam [::ipx::add_bus_parameter -quiet "HAS_TSTRB" $axis_bif]
  set_property value        0   $bifparam
  set_property value_source constant     $bifparam
  set bifparam [::ipx::add_bus_parameter -quiet "HAS_TKEEP" $axis_bif]
  set_property value        1   $bifparam
  set_property value_source constant     $bifparam
  set bifparam [::ipx::add_bus_parameter -quiet "HAS_TLAST" $axis_bif]
  set_property value        1   $bifparam
  set_property value_source constant     $bifparam
  ::ipx::associate_bus_interfaces -busif "n2k" -clock "ap_clk" $core
  set axis_bif      [::ipx::get_bus_interfaces -of $core  "n2k"] 
  set bifparam [::ipx::add_bus_parameter -quiet "TDATA_NUM_BYTES" $axis_bif]
  set_property value        64   $bifparam
  set_property value_source constant     $bifparam
  set bifparam [::ipx::add_bus_parameter -quiet "TUSER_WIDTH" $axis_bif]
  set_property value        0   $bifparam
  set_property value_source constant     $bifparam
  set bifparam [::ipx::add_bus_parameter -quiet "TID_WIDTH" $axis_bif]
  set_property value        0   $bifparam
  set_property value_source constant     $bifparam
  set bifparam [::ipx::add_bus_parameter -quiet "TDEST_WIDTH" $axis_bif]
  set_property value        16   $bifparam
  set_property value_source constant     $bifparam
  set bifparam [::ipx::add_bus_parameter -quiet "HAS_TREADY" $axis_bif]
  set_property value        1   $bifparam
  set_property value_source constant     $bifparam
  set bifparam [::ipx::add_bus_parameter -quiet "HAS_TSTRB" $axis_bif]
  set_property value        0   $bifparam
  set_property value_source constant     $bifparam
  set bifparam [::ipx::add_bus_parameter -quiet "HAS_TKEEP" $axis_bif]
  set_property value        1   $bifparam
  set_property value_source constant     $bifparam
  set bifparam [::ipx::add_bus_parameter -quiet "HAS_TLAST" $axis_bif]
  set_property value        1   $bifparam
  set_property value_source constant     $bifparam
  ::ipx::associate_bus_interfaces -busif "s_axi_control" -clock "ap_clk" $core

  ::ipx::infer_bus_interface "ap_clk_2"   "xilinx.com:signal:clock_rtl:1.0" $core
  ::ipx::infer_bus_interface "ap_rst_n_2" "xilinx.com:signal:reset_rtl:1.0" $core

  # Specify the freq_hz parameter 
  set clkbif      [::ipx::get_bus_interfaces -of $core "ap_clk"]
  set clkbifparam [::ipx::add_bus_parameter -quiet "FREQ_HZ" $clkbif]
  # Set desired frequency                   
  set_property value 250000000 $clkbifparam
  # set value_resolve_type 'user' if the frequency can vary. 
  set_property value_resolve_type user $clkbifparam
  # set value_resolve_type 'immediate' if the frequency cannot change. 
  # set_property value_resolve_type immediate $clkbifparam
  # Specify the freq_hz parameter 
  set clkbif      [::ipx::get_bus_interfaces -of $core "ap_clk_2"]
  set clkbifparam [::ipx::add_bus_parameter -quiet "FREQ_HZ" $clkbif]
  # Set desired frequency                   
  set_property value 250000000 $clkbifparam
  # set value_resolve_type 'user' if the frequency can vary. 
  set_property value_resolve_type user $clkbifparam
  # set value_resolve_type 'immediate' if the frequency cannot change. 
  # set_property value_resolve_type immediate $clkbifparam
  set mem_map    [::ipx::add_memory_map -quiet "s_axi_control" $core]
  set addr_block [::ipx::add_address_block -quiet "reg0" $mem_map]

  set reg      [::ipx::add_register "CTRL" $addr_block]
  set_property description    "Control signals"    $reg
  set_property address_offset 0x000 $reg
  set_property size           32    $reg
  set field [ipx::add_field AP_START $reg]
    set_property ACCESS {read-write} $field
    set_property BIT_OFFSET {0} $field
    set_property BIT_WIDTH {1} $field
    set_property DESCRIPTION {Control signal Register for 'ap_start'.} $field
    set_property MODIFIED_WRITE_VALUE {modify} $field
  set field [ipx::add_field AP_DONE $reg]
    set_property ACCESS {read-only} $field
    set_property BIT_OFFSET {1} $field
    set_property BIT_WIDTH {1} $field
    set_property DESCRIPTION {Control signal Register for 'ap_done'.} $field
    set_property READ_ACTION {modify} $field
  set field [ipx::add_field AP_IDLE $reg]
    set_property ACCESS {read-only} $field
    set_property BIT_OFFSET {2} $field
    set_property BIT_WIDTH {1} $field
    set_property DESCRIPTION {Control signal Register for 'ap_idle'.} $field
    set_property READ_ACTION {modify} $field
  set field [ipx::add_field AP_READY $reg]
    set_property ACCESS {read-only} $field
    set_property BIT_OFFSET {3} $field
    set_property BIT_WIDTH {1} $field
    set_property DESCRIPTION {Control signal Register for 'ap_ready'.} $field
    set_property READ_ACTION {modify} $field
  set field [ipx::add_field RESERVED_1 $reg]
    set_property ACCESS {read-only} $field
    set_property BIT_OFFSET {4} $field
    set_property BIT_WIDTH {3} $field
    set_property DESCRIPTION {Reserved.  0s on read.} $field
    set_property READ_ACTION {modify} $field
  set field [ipx::add_field AUTO_RESTART $reg]
    set_property ACCESS {read-write} $field
    set_property BIT_OFFSET {7} $field
    set_property BIT_WIDTH {1} $field
    set_property DESCRIPTION {Control signal Register for 'auto_restart'.} $field
    set_property MODIFIED_WRITE_VALUE {modify} $field
  set field [ipx::add_field RESERVED_2 $reg]
    set_property ACCESS {read-only} $field
    set_property BIT_OFFSET {8} $field
    set_property BIT_WIDTH {24} $field
    set_property DESCRIPTION {Reserved.  0s on read.} $field
    set_property READ_ACTION {modify} $field

  set reg      [::ipx::add_register "GIER" $addr_block]
  set_property description    "Global Interrupt Enable Register"    $reg
  set_property address_offset 0x004 $reg
  set_property size           32    $reg

  set reg      [::ipx::add_register "IP_IER" $addr_block]
  set_property description    "IP Interrupt Enable Register"    $reg
  set_property address_offset 0x008 $reg
  set_property size           32    $reg

  set reg      [::ipx::add_register "IP_ISR" $addr_block]
  set_property description    "IP Interrupt Status Register"    $reg
  set_property address_offset 0x00C $reg
  set_property size           32    $reg

  set reg      [::ipx::add_register -quiet "coreconfig" $addr_block]
  set_property address_offset 0x010 $reg
  set_property size           [expr {4*8}]   $reg

  set reg      [::ipx::add_register -quiet "axi00_ptr0" $addr_block]
  set_property address_offset 0x018 $reg
  set_property size           [expr {8*8}]   $reg
  set regparam [::ipx::add_register_parameter -quiet {ASSOCIATED_BUSIF} $reg] 
  set_property value dram0_axi $regparam 

  set_property slave_memory_map_ref "s_axi_control" [::ipx::get_bus_interfaces -of $core "s_axi_control"]

  set_property xpm_libraries {XPM_CDC XPM_MEMORY XPM_FIFO} $core
  set_property sdx_kernel true $core
  set_property sdx_kernel_type rtl $core
}

##############################################################################

proc package_project {path_to_packaged kernel_vendor kernel_library kernel_name} {
  set core [::ipx::package_project -root_dir $path_to_packaged -vendor $kernel_vendor -library $kernel_library -taxonomy "/KernelIP" -import_files -set_current false ]
  foreach user_parameter [list C_S_AXI_CONTROL_ADDR_WIDTH C_S_AXI_CONTROL_DATA_WIDTH C_DRAM0_AXI_ADDR_WIDTH C_DRAM0_AXI_DATA_WIDTH C_K2N_TDATA_WIDTH C_K2N_TDEST_WIDTH C_N2K_TDATA_WIDTH C_N2K_TDEST_WIDTH] {
    ::ipx::remove_user_parameter $user_parameter $core
  }
  ::ipx::create_xgui_files $core
  set_property supported_families { } $core
  set_property auto_family_support_level level_2 $core
  set_property used_in {out_of_context implementation synthesis} [::ipx::get_files -type xdc -of_objects [::ipx::get_file_groups "xilinx_anylanguagesynthesis" -of_objects $core] *_ooc.xdc]
  edit_core $core
  ::ipx::update_checksums $core
  ::ipx::check_integrity -kernel $core
  ::ipx::check_integrity -xrt $core
  ::ipx::save_core $core
  ::ipx::unload_core $core
  unset core
}

##############################################################################

proc package_project_dcp {path_to_dcp path_to_packaged kernel_vendor kernel_library kernel_name} {
  set core [::ipx::package_checkpoint -dcp_file $path_to_dcp -root_dir $path_to_packaged -vendor $kernel_vendor -library $kernel_library -name $kernel_name -taxonomy "/KernelIP" -force]
  edit_core $core
  ::ipx::update_checksums $core
  ::ipx::check_integrity -kernel $core
  ::ipx::check_integrity -xrt $core
  ::ipx::save_core $core
  ::ipx::unload_core $core
  unset core
}

##############################################################################

proc package_project_dcp_and_xdc {path_to_dcp path_to_xdc path_to_packaged kernel_vendor kernel_library kernel_name} {
  set core [::ipx::package_checkpoint -dcp_file $path_to_dcp -root_dir $path_to_packaged -vendor $kernel_vendor -library $kernel_library -name $kernel_name -taxonomy "/KernelIP" -force]
  edit_core $core
  set rel_path_to_xdc [file join "impl" [file tail $path_to_xdc]]
  set abs_path_to_xdc [file join $path_to_packaged $rel_path_to_xdc]
  file mkdir [file dirname $abs_path_to_xdc]
  file copy $path_to_xdc $abs_path_to_xdc
  set xdcfile [::ipx::add_file $rel_path_to_xdc [::ipx::add_file_group "xilinx_implementation" $core]]
  set_property type "xdc" $xdcfile
  set_property used_in [list "implementation"] $xdcfile
  ::ipx::update_checksums $core
  ::ipx::check_integrity -kernel $core
  ::ipx::check_integrity -xrt $core
  ::ipx::save_core $core
  ::ipx::unload_core $core
  unset core
}

##############################################################################
