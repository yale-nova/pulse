# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  ipgui::add_page $IPINST -name "Page 0"


}


proc update_MODELPARAM_VALUE.C_S_AXI_CONTROL_ADDR_WIDTH { MODELPARAM_VALUE.C_S_AXI_CONTROL_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	# WARNING: There is no corresponding user parameter named "C_S_AXI_CONTROL_ADDR_WIDTH". Setting updated value from the model parameter.
set_property value 12 ${MODELPARAM_VALUE.C_S_AXI_CONTROL_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S_AXI_CONTROL_DATA_WIDTH { MODELPARAM_VALUE.C_S_AXI_CONTROL_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	# WARNING: There is no corresponding user parameter named "C_S_AXI_CONTROL_DATA_WIDTH". Setting updated value from the model parameter.
set_property value 32 ${MODELPARAM_VALUE.C_S_AXI_CONTROL_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_DRAM0_AXI_ADDR_WIDTH { MODELPARAM_VALUE.C_DRAM0_AXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	# WARNING: There is no corresponding user parameter named "C_DRAM0_AXI_ADDR_WIDTH". Setting updated value from the model parameter.
set_property value 64 ${MODELPARAM_VALUE.C_DRAM0_AXI_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_DRAM0_AXI_DATA_WIDTH { MODELPARAM_VALUE.C_DRAM0_AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	# WARNING: There is no corresponding user parameter named "C_DRAM0_AXI_DATA_WIDTH". Setting updated value from the model parameter.
set_property value 512 ${MODELPARAM_VALUE.C_DRAM0_AXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_K2N_TDATA_WIDTH { MODELPARAM_VALUE.C_K2N_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	# WARNING: There is no corresponding user parameter named "C_K2N_TDATA_WIDTH". Setting updated value from the model parameter.
set_property value 512 ${MODELPARAM_VALUE.C_K2N_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_K2N_TDEST_WIDTH { MODELPARAM_VALUE.C_K2N_TDEST_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	# WARNING: There is no corresponding user parameter named "C_K2N_TDEST_WIDTH". Setting updated value from the model parameter.
set_property value 16 ${MODELPARAM_VALUE.C_K2N_TDEST_WIDTH}
}

proc update_MODELPARAM_VALUE.C_N2K_TDATA_WIDTH { MODELPARAM_VALUE.C_N2K_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	# WARNING: There is no corresponding user parameter named "C_N2K_TDATA_WIDTH". Setting updated value from the model parameter.
set_property value 512 ${MODELPARAM_VALUE.C_N2K_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_N2K_TDEST_WIDTH { MODELPARAM_VALUE.C_N2K_TDEST_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	# WARNING: There is no corresponding user parameter named "C_N2K_TDEST_WIDTH". Setting updated value from the model parameter.
set_property value 16 ${MODELPARAM_VALUE.C_N2K_TDEST_WIDTH}
}

