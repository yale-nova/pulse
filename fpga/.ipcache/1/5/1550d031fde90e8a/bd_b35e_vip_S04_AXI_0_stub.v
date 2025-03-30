// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Fri Oct 11 12:15:22 2024
// Host        : yupeng-ThinkBook-16-G6-IRL running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_b35e_vip_S04_AXI_0_stub.v
// Design      : bd_b35e_vip_S04_AXI_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcu250-figd2104-2L-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "axi_vip_v1_1_12_top,Vivado 2022.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(aclk, aresetn, s_axi_awaddr, s_axi_awlen, 
  s_axi_awvalid, s_axi_awready, s_axi_wdata, s_axi_wstrb, s_axi_wlast, s_axi_wvalid, 
  s_axi_wready, s_axi_bvalid, s_axi_bready, s_axi_araddr, s_axi_arlen, s_axi_arvalid, 
  s_axi_arready, s_axi_rdata, s_axi_rlast, s_axi_rvalid, s_axi_rready, m_axi_awaddr, 
  m_axi_awlen, m_axi_awvalid, m_axi_awready, m_axi_wdata, m_axi_wstrb, m_axi_wlast, 
  m_axi_wvalid, m_axi_wready, m_axi_bvalid, m_axi_bready, m_axi_araddr, m_axi_arlen, 
  m_axi_arvalid, m_axi_arready, m_axi_rdata, m_axi_rlast, m_axi_rvalid, m_axi_rready)
/* synthesis syn_black_box black_box_pad_pin="aclk,aresetn,s_axi_awaddr[38:0],s_axi_awlen[7:0],s_axi_awvalid,s_axi_awready,s_axi_wdata[511:0],s_axi_wstrb[63:0],s_axi_wlast,s_axi_wvalid,s_axi_wready,s_axi_bvalid,s_axi_bready,s_axi_araddr[38:0],s_axi_arlen[7:0],s_axi_arvalid,s_axi_arready,s_axi_rdata[511:0],s_axi_rlast,s_axi_rvalid,s_axi_rready,m_axi_awaddr[38:0],m_axi_awlen[7:0],m_axi_awvalid,m_axi_awready,m_axi_wdata[511:0],m_axi_wstrb[63:0],m_axi_wlast,m_axi_wvalid,m_axi_wready,m_axi_bvalid,m_axi_bready,m_axi_araddr[38:0],m_axi_arlen[7:0],m_axi_arvalid,m_axi_arready,m_axi_rdata[511:0],m_axi_rlast,m_axi_rvalid,m_axi_rready" */;
  input aclk;
  input aresetn;
  input [38:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input s_axi_awvalid;
  output s_axi_awready;
  input [511:0]s_axi_wdata;
  input [63:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output s_axi_bvalid;
  input s_axi_bready;
  input [38:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input s_axi_arvalid;
  output s_axi_arready;
  output [511:0]s_axi_rdata;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  output [38:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output m_axi_awvalid;
  input m_axi_awready;
  output [511:0]m_axi_wdata;
  output [63:0]m_axi_wstrb;
  output m_axi_wlast;
  output m_axi_wvalid;
  input m_axi_wready;
  input m_axi_bvalid;
  output m_axi_bready;
  output [38:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output m_axi_arvalid;
  input m_axi_arready;
  input [511:0]m_axi_rdata;
  input m_axi_rlast;
  input m_axi_rvalid;
  output m_axi_rready;
endmodule
