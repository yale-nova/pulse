// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Thu Oct 17 04:25:54 2024
// Host        : yupeng-ThinkBook-16-G6-IRL running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ulp_data_fifo_krnl_0_0_stub.v
// Design      : ulp_data_fifo_krnl_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcu250-figd2104-2L-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "data_fifo_krnl,Vivado 2022.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(ap_clk, ap_rst_n, rx_axis_tvalid, 
  rx_axis_tdata, rx_axis_tlast, rx_axis_tkeep, rx_axis_tuser, rx_axis_tready, tx_axis_tready, 
  tx_axis_tvalid, tx_axis_tdata, tx_axis_tlast, tx_axis_tkeep, tx_axis_tuser)
/* synthesis syn_black_box black_box_pad_pin="ap_clk,ap_rst_n,rx_axis_tvalid,rx_axis_tdata[63:0],rx_axis_tlast,rx_axis_tkeep[7:0],rx_axis_tuser,rx_axis_tready,tx_axis_tready,tx_axis_tvalid,tx_axis_tdata[63:0],tx_axis_tlast,tx_axis_tkeep[7:0],tx_axis_tuser" */;
  input ap_clk;
  input ap_rst_n;
  input rx_axis_tvalid;
  input [63:0]rx_axis_tdata;
  input rx_axis_tlast;
  input [7:0]rx_axis_tkeep;
  input rx_axis_tuser;
  output rx_axis_tready;
  input tx_axis_tready;
  output tx_axis_tvalid;
  output [63:0]tx_axis_tdata;
  output tx_axis_tlast;
  output [7:0]tx_axis_tkeep;
  output tx_axis_tuser;
endmodule
