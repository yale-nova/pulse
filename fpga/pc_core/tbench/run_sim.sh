# Use Vivado xsim to simulate the RTL design

# -d Define Verilog macros
# -f Read additional options from the specified file

xvlog -d PARA_OVERRIDE \
      -f ./filelist.f


xelab tb_pc_core -debug typical
xsim -t xsim.tcl work.tb_pc_core
