// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Thu Oct 17 04:29:48 2024
// Host        : yupeng-ThinkBook-16-G6-IRL running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ulp_memory_subsystem_0_stub.v
// Design      : ulp_memory_subsystem_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcu250-figd2104-2L-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "bd_b35e,Vivado 2022.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(aclk, aclk1, aclk2, aclk3, aresetn, 
  S_AXI_CTRL_awaddr, S_AXI_CTRL_awprot, S_AXI_CTRL_awvalid, S_AXI_CTRL_awready, 
  S_AXI_CTRL_wdata, S_AXI_CTRL_wstrb, S_AXI_CTRL_wvalid, S_AXI_CTRL_wready, 
  S_AXI_CTRL_bresp, S_AXI_CTRL_bvalid, S_AXI_CTRL_bready, S_AXI_CTRL_araddr, 
  S_AXI_CTRL_arprot, S_AXI_CTRL_arvalid, S_AXI_CTRL_arready, S_AXI_CTRL_rdata, 
  S_AXI_CTRL_rresp, S_AXI_CTRL_rvalid, S_AXI_CTRL_rready, S00_AXI_awaddr, S00_AXI_awlen, 
  S00_AXI_awburst, S00_AXI_awlock, S00_AXI_awcache, S00_AXI_awprot, S00_AXI_awvalid, 
  S00_AXI_awready, S00_AXI_wdata, S00_AXI_wstrb, S00_AXI_wlast, S00_AXI_wvalid, 
  S00_AXI_wready, S00_AXI_bresp, S00_AXI_bvalid, S00_AXI_bready, S00_AXI_araddr, 
  S00_AXI_arlen, S00_AXI_arburst, S00_AXI_arlock, S00_AXI_arcache, S00_AXI_arprot, 
  S00_AXI_arvalid, S00_AXI_arready, S00_AXI_rdata, S00_AXI_rresp, S00_AXI_rlast, 
  S00_AXI_rvalid, S00_AXI_rready, S01_AXI_awaddr, S01_AXI_awlen, S01_AXI_awburst, 
  S01_AXI_awlock, S01_AXI_awcache, S01_AXI_awprot, S01_AXI_awvalid, S01_AXI_awready, 
  S01_AXI_wdata, S01_AXI_wstrb, S01_AXI_wlast, S01_AXI_wvalid, S01_AXI_wready, S01_AXI_bresp, 
  S01_AXI_bvalid, S01_AXI_bready, S01_AXI_araddr, S01_AXI_arlen, S01_AXI_arburst, 
  S01_AXI_arlock, S01_AXI_arcache, S01_AXI_arprot, S01_AXI_arvalid, S01_AXI_arready, 
  S01_AXI_rdata, S01_AXI_rresp, S01_AXI_rlast, S01_AXI_rvalid, S01_AXI_rready, 
  S02_AXI_awaddr, S02_AXI_awlen, S02_AXI_awburst, S02_AXI_awlock, S02_AXI_awcache, 
  S02_AXI_awprot, S02_AXI_awvalid, S02_AXI_awready, S02_AXI_wdata, S02_AXI_wstrb, 
  S02_AXI_wlast, S02_AXI_wvalid, S02_AXI_wready, S02_AXI_bresp, S02_AXI_bvalid, 
  S02_AXI_bready, S02_AXI_araddr, S02_AXI_arlen, S02_AXI_arburst, S02_AXI_arlock, 
  S02_AXI_arcache, S02_AXI_arprot, S02_AXI_arvalid, S02_AXI_arready, S02_AXI_rdata, 
  S02_AXI_rresp, S02_AXI_rlast, S02_AXI_rvalid, S02_AXI_rready, S03_AXI_awaddr, 
  S03_AXI_awlen, S03_AXI_awburst, S03_AXI_awlock, S03_AXI_awcache, S03_AXI_awprot, 
  S03_AXI_awvalid, S03_AXI_awready, S03_AXI_wdata, S03_AXI_wstrb, S03_AXI_wlast, 
  S03_AXI_wvalid, S03_AXI_wready, S03_AXI_bresp, S03_AXI_bvalid, S03_AXI_bready, 
  S03_AXI_araddr, S03_AXI_arlen, S03_AXI_arburst, S03_AXI_arlock, S03_AXI_arcache, 
  S03_AXI_arprot, S03_AXI_arvalid, S03_AXI_arready, S03_AXI_rdata, S03_AXI_rresp, 
  S03_AXI_rlast, S03_AXI_rvalid, S03_AXI_rready, DDR4_MEM00_dq, DDR4_MEM00_dqs_t, 
  DDR4_MEM00_dqs_c, DDR4_MEM00_adr, DDR4_MEM00_ba, DDR4_MEM00_bg, DDR4_MEM00_act_n, 
  DDR4_MEM00_reset_n, DDR4_MEM00_ck_t, DDR4_MEM00_ck_c, DDR4_MEM00_cke, DDR4_MEM00_cs_n, 
  DDR4_MEM00_odt, DDR4_MEM00_par, DDR4_MEM01_dq, DDR4_MEM01_dqs_t, DDR4_MEM01_dqs_c, 
  DDR4_MEM01_adr, DDR4_MEM01_ba, DDR4_MEM01_bg, DDR4_MEM01_act_n, DDR4_MEM01_reset_n, 
  DDR4_MEM01_ck_t, DDR4_MEM01_ck_c, DDR4_MEM01_cke, DDR4_MEM01_cs_n, DDR4_MEM01_odt, 
  DDR4_MEM01_par, DDR4_MEM02_dq, DDR4_MEM02_dqs_t, DDR4_MEM02_dqs_c, DDR4_MEM02_adr, 
  DDR4_MEM02_ba, DDR4_MEM02_bg, DDR4_MEM02_act_n, DDR4_MEM02_reset_n, DDR4_MEM02_ck_t, 
  DDR4_MEM02_ck_c, DDR4_MEM02_cke, DDR4_MEM02_cs_n, DDR4_MEM02_odt, DDR4_MEM02_par, 
  DDR4_MEM00_DIFF_CLK_clk_p, DDR4_MEM00_DIFF_CLK_clk_n, DDR4_MEM01_DIFF_CLK_clk_p, 
  DDR4_MEM01_DIFF_CLK_clk_n, DDR4_MEM02_DIFF_CLK_clk_p, DDR4_MEM02_DIFF_CLK_clk_n, 
  ddr4_mem00_ui_clk, ddr4_mem01_ui_clk, ddr4_mem02_ui_clk, ddr4_mem00_sys_rst, 
  ddr4_mem01_sys_rst, ddr4_mem02_sys_rst, ddr4_mem_calib_complete, ddr4_mem_calib_vec, 
  M00_AXI_awid, M00_AXI_awaddr, M00_AXI_awlen, M00_AXI_awburst, M00_AXI_awlock, 
  M00_AXI_awcache, M00_AXI_awprot, M00_AXI_awvalid, M00_AXI_awready, M00_AXI_wdata, 
  M00_AXI_wstrb, M00_AXI_wlast, M00_AXI_wvalid, M00_AXI_wready, M00_AXI_bid, M00_AXI_bresp, 
  M00_AXI_bvalid, M00_AXI_bready, M00_AXI_arid, M00_AXI_araddr, M00_AXI_arlen, 
  M00_AXI_arburst, M00_AXI_arlock, M00_AXI_arcache, M00_AXI_arprot, M00_AXI_arvalid, 
  M00_AXI_arready, M00_AXI_rid, M00_AXI_rdata, M00_AXI_rresp, M00_AXI_rlast, M00_AXI_rvalid, 
  M00_AXI_rready, M01_AXI_awaddr, M01_AXI_awlen, M01_AXI_awsize, M01_AXI_awburst, 
  M01_AXI_awlock, M01_AXI_awcache, M01_AXI_awprot, M01_AXI_awregion, M01_AXI_awqos, 
  M01_AXI_awvalid, M01_AXI_awready, M01_AXI_wdata, M01_AXI_wstrb, M01_AXI_wlast, 
  M01_AXI_wvalid, M01_AXI_wready, M01_AXI_bresp, M01_AXI_bvalid, M01_AXI_bready, 
  M01_AXI_araddr, M01_AXI_arlen, M01_AXI_arsize, M01_AXI_arburst, M01_AXI_arlock, 
  M01_AXI_arcache, M01_AXI_arprot, M01_AXI_arregion, M01_AXI_arqos, M01_AXI_arvalid, 
  M01_AXI_arready, M01_AXI_rdata, M01_AXI_rresp, M01_AXI_rlast, M01_AXI_rvalid, 
  M01_AXI_rready, S00_AXI_arid, S00_AXI_awid, S00_AXI_bid, S00_AXI_rid, S01_AXI_arid, 
  S01_AXI_awid, S01_AXI_bid, S01_AXI_rid, S02_AXI_arid, S02_AXI_awid, S02_AXI_bid, S02_AXI_rid, 
  S03_AXI_arid, S03_AXI_awid, S03_AXI_bid, S03_AXI_rid)
/* synthesis syn_black_box black_box_pad_pin="aclk,aclk1,aclk2,aclk3,aresetn,S_AXI_CTRL_awaddr[23:0],S_AXI_CTRL_awprot[2:0],S_AXI_CTRL_awvalid[0:0],S_AXI_CTRL_awready[0:0],S_AXI_CTRL_wdata[31:0],S_AXI_CTRL_wstrb[3:0],S_AXI_CTRL_wvalid[0:0],S_AXI_CTRL_wready[0:0],S_AXI_CTRL_bresp[1:0],S_AXI_CTRL_bvalid[0:0],S_AXI_CTRL_bready[0:0],S_AXI_CTRL_araddr[23:0],S_AXI_CTRL_arprot[2:0],S_AXI_CTRL_arvalid[0:0],S_AXI_CTRL_arready[0:0],S_AXI_CTRL_rdata[31:0],S_AXI_CTRL_rresp[1:0],S_AXI_CTRL_rvalid[0:0],S_AXI_CTRL_rready[0:0],S00_AXI_awaddr[38:0],S00_AXI_awlen[7:0],S00_AXI_awburst[1:0],S00_AXI_awlock[0:0],S00_AXI_awcache[3:0],S00_AXI_awprot[2:0],S00_AXI_awvalid,S00_AXI_awready,S00_AXI_wdata[511:0],S00_AXI_wstrb[63:0],S00_AXI_wlast,S00_AXI_wvalid,S00_AXI_wready,S00_AXI_bresp[1:0],S00_AXI_bvalid,S00_AXI_bready,S00_AXI_araddr[38:0],S00_AXI_arlen[7:0],S00_AXI_arburst[1:0],S00_AXI_arlock[0:0],S00_AXI_arcache[3:0],S00_AXI_arprot[2:0],S00_AXI_arvalid,S00_AXI_arready,S00_AXI_rdata[511:0],S00_AXI_rresp[1:0],S00_AXI_rlast,S00_AXI_rvalid,S00_AXI_rready,S01_AXI_awaddr[38:0],S01_AXI_awlen[7:0],S01_AXI_awburst[1:0],S01_AXI_awlock[0:0],S01_AXI_awcache[3:0],S01_AXI_awprot[2:0],S01_AXI_awvalid,S01_AXI_awready,S01_AXI_wdata[511:0],S01_AXI_wstrb[63:0],S01_AXI_wlast,S01_AXI_wvalid,S01_AXI_wready,S01_AXI_bresp[1:0],S01_AXI_bvalid,S01_AXI_bready,S01_AXI_araddr[38:0],S01_AXI_arlen[7:0],S01_AXI_arburst[1:0],S01_AXI_arlock[0:0],S01_AXI_arcache[3:0],S01_AXI_arprot[2:0],S01_AXI_arvalid,S01_AXI_arready,S01_AXI_rdata[511:0],S01_AXI_rresp[1:0],S01_AXI_rlast,S01_AXI_rvalid,S01_AXI_rready,S02_AXI_awaddr[38:0],S02_AXI_awlen[7:0],S02_AXI_awburst[1:0],S02_AXI_awlock[0:0],S02_AXI_awcache[3:0],S02_AXI_awprot[2:0],S02_AXI_awvalid,S02_AXI_awready,S02_AXI_wdata[511:0],S02_AXI_wstrb[63:0],S02_AXI_wlast,S02_AXI_wvalid,S02_AXI_wready,S02_AXI_bresp[1:0],S02_AXI_bvalid,S02_AXI_bready,S02_AXI_araddr[38:0],S02_AXI_arlen[7:0],S02_AXI_arburst[1:0],S02_AXI_arlock[0:0],S02_AXI_arcache[3:0],S02_AXI_arprot[2:0],S02_AXI_arvalid,S02_AXI_arready,S02_AXI_rdata[511:0],S02_AXI_rresp[1:0],S02_AXI_rlast,S02_AXI_rvalid,S02_AXI_rready,S03_AXI_awaddr[38:0],S03_AXI_awlen[7:0],S03_AXI_awburst[1:0],S03_AXI_awlock[0:0],S03_AXI_awcache[3:0],S03_AXI_awprot[2:0],S03_AXI_awvalid,S03_AXI_awready,S03_AXI_wdata[511:0],S03_AXI_wstrb[63:0],S03_AXI_wlast,S03_AXI_wvalid,S03_AXI_wready,S03_AXI_bresp[1:0],S03_AXI_bvalid,S03_AXI_bready,S03_AXI_araddr[38:0],S03_AXI_arlen[7:0],S03_AXI_arburst[1:0],S03_AXI_arlock[0:0],S03_AXI_arcache[3:0],S03_AXI_arprot[2:0],S03_AXI_arvalid,S03_AXI_arready,S03_AXI_rdata[511:0],S03_AXI_rresp[1:0],S03_AXI_rlast,S03_AXI_rvalid,S03_AXI_rready,DDR4_MEM00_dq[71:0],DDR4_MEM00_dqs_t[17:0],DDR4_MEM00_dqs_c[17:0],DDR4_MEM00_adr[16:0],DDR4_MEM00_ba[1:0],DDR4_MEM00_bg[1:0],DDR4_MEM00_act_n,DDR4_MEM00_reset_n,DDR4_MEM00_ck_t[0:0],DDR4_MEM00_ck_c[0:0],DDR4_MEM00_cke[0:0],DDR4_MEM00_cs_n[0:0],DDR4_MEM00_odt[0:0],DDR4_MEM00_par,DDR4_MEM01_dq[71:0],DDR4_MEM01_dqs_t[17:0],DDR4_MEM01_dqs_c[17:0],DDR4_MEM01_adr[16:0],DDR4_MEM01_ba[1:0],DDR4_MEM01_bg[1:0],DDR4_MEM01_act_n,DDR4_MEM01_reset_n,DDR4_MEM01_ck_t[0:0],DDR4_MEM01_ck_c[0:0],DDR4_MEM01_cke[0:0],DDR4_MEM01_cs_n[0:0],DDR4_MEM01_odt[0:0],DDR4_MEM01_par,DDR4_MEM02_dq[71:0],DDR4_MEM02_dqs_t[17:0],DDR4_MEM02_dqs_c[17:0],DDR4_MEM02_adr[16:0],DDR4_MEM02_ba[1:0],DDR4_MEM02_bg[1:0],DDR4_MEM02_act_n,DDR4_MEM02_reset_n,DDR4_MEM02_ck_t[0:0],DDR4_MEM02_ck_c[0:0],DDR4_MEM02_cke[0:0],DDR4_MEM02_cs_n[0:0],DDR4_MEM02_odt[0:0],DDR4_MEM02_par,DDR4_MEM00_DIFF_CLK_clk_p,DDR4_MEM00_DIFF_CLK_clk_n,DDR4_MEM01_DIFF_CLK_clk_p,DDR4_MEM01_DIFF_CLK_clk_n,DDR4_MEM02_DIFF_CLK_clk_p,DDR4_MEM02_DIFF_CLK_clk_n,ddr4_mem00_ui_clk,ddr4_mem01_ui_clk,ddr4_mem02_ui_clk,ddr4_mem00_sys_rst,ddr4_mem01_sys_rst,ddr4_mem02_sys_rst,ddr4_mem_calib_complete,ddr4_mem_calib_vec[2:0],M00_AXI_awid[3:0],M00_AXI_awaddr[38:0],M00_AXI_awlen[7:0],M00_AXI_awburst[1:0],M00_AXI_awlock[0:0],M00_AXI_awcache[3:0],M00_AXI_awprot[2:0],M00_AXI_awvalid,M00_AXI_awready,M00_AXI_wdata[511:0],M00_AXI_wstrb[63:0],M00_AXI_wlast,M00_AXI_wvalid,M00_AXI_wready,M00_AXI_bid[3:0],M00_AXI_bresp[1:0],M00_AXI_bvalid,M00_AXI_bready,M00_AXI_arid[3:0],M00_AXI_araddr[38:0],M00_AXI_arlen[7:0],M00_AXI_arburst[1:0],M00_AXI_arlock[0:0],M00_AXI_arcache[3:0],M00_AXI_arprot[2:0],M00_AXI_arvalid,M00_AXI_arready,M00_AXI_rid[3:0],M00_AXI_rdata[511:0],M00_AXI_rresp[1:0],M00_AXI_rlast,M00_AXI_rvalid,M00_AXI_rready,M01_AXI_awaddr[37:0],M01_AXI_awlen[7:0],M01_AXI_awsize[2:0],M01_AXI_awburst[1:0],M01_AXI_awlock[0:0],M01_AXI_awcache[3:0],M01_AXI_awprot[2:0],M01_AXI_awregion[3:0],M01_AXI_awqos[3:0],M01_AXI_awvalid,M01_AXI_awready,M01_AXI_wdata[511:0],M01_AXI_wstrb[63:0],M01_AXI_wlast,M01_AXI_wvalid,M01_AXI_wready,M01_AXI_bresp[1:0],M01_AXI_bvalid,M01_AXI_bready,M01_AXI_araddr[37:0],M01_AXI_arlen[7:0],M01_AXI_arsize[2:0],M01_AXI_arburst[1:0],M01_AXI_arlock[0:0],M01_AXI_arcache[3:0],M01_AXI_arprot[2:0],M01_AXI_arregion[3:0],M01_AXI_arqos[3:0],M01_AXI_arvalid,M01_AXI_arready,M01_AXI_rdata[511:0],M01_AXI_rresp[1:0],M01_AXI_rlast,M01_AXI_rvalid,M01_AXI_rready,S00_AXI_arid[3:0],S00_AXI_awid[3:0],S00_AXI_bid[3:0],S00_AXI_rid[3:0],S01_AXI_arid[3:0],S01_AXI_awid[3:0],S01_AXI_bid[3:0],S01_AXI_rid[3:0],S02_AXI_arid[3:0],S02_AXI_awid[3:0],S02_AXI_bid[3:0],S02_AXI_rid[3:0],S03_AXI_arid[3:0],S03_AXI_awid[3:0],S03_AXI_bid[3:0],S03_AXI_rid[3:0]" */;
  input aclk;
  input aclk1;
  input aclk2;
  input aclk3;
  input aresetn;
  input [23:0]S_AXI_CTRL_awaddr;
  input [2:0]S_AXI_CTRL_awprot;
  input [0:0]S_AXI_CTRL_awvalid;
  output [0:0]S_AXI_CTRL_awready;
  input [31:0]S_AXI_CTRL_wdata;
  input [3:0]S_AXI_CTRL_wstrb;
  input [0:0]S_AXI_CTRL_wvalid;
  output [0:0]S_AXI_CTRL_wready;
  output [1:0]S_AXI_CTRL_bresp;
  output [0:0]S_AXI_CTRL_bvalid;
  input [0:0]S_AXI_CTRL_bready;
  input [23:0]S_AXI_CTRL_araddr;
  input [2:0]S_AXI_CTRL_arprot;
  input [0:0]S_AXI_CTRL_arvalid;
  output [0:0]S_AXI_CTRL_arready;
  output [31:0]S_AXI_CTRL_rdata;
  output [1:0]S_AXI_CTRL_rresp;
  output [0:0]S_AXI_CTRL_rvalid;
  input [0:0]S_AXI_CTRL_rready;
  input [38:0]S00_AXI_awaddr;
  input [7:0]S00_AXI_awlen;
  input [1:0]S00_AXI_awburst;
  input [0:0]S00_AXI_awlock;
  input [3:0]S00_AXI_awcache;
  input [2:0]S00_AXI_awprot;
  input S00_AXI_awvalid;
  output S00_AXI_awready;
  input [511:0]S00_AXI_wdata;
  input [63:0]S00_AXI_wstrb;
  input S00_AXI_wlast;
  input S00_AXI_wvalid;
  output S00_AXI_wready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  input S00_AXI_bready;
  input [38:0]S00_AXI_araddr;
  input [7:0]S00_AXI_arlen;
  input [1:0]S00_AXI_arburst;
  input [0:0]S00_AXI_arlock;
  input [3:0]S00_AXI_arcache;
  input [2:0]S00_AXI_arprot;
  input S00_AXI_arvalid;
  output S00_AXI_arready;
  output [511:0]S00_AXI_rdata;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rlast;
  output S00_AXI_rvalid;
  input S00_AXI_rready;
  input [38:0]S01_AXI_awaddr;
  input [7:0]S01_AXI_awlen;
  input [1:0]S01_AXI_awburst;
  input [0:0]S01_AXI_awlock;
  input [3:0]S01_AXI_awcache;
  input [2:0]S01_AXI_awprot;
  input S01_AXI_awvalid;
  output S01_AXI_awready;
  input [511:0]S01_AXI_wdata;
  input [63:0]S01_AXI_wstrb;
  input S01_AXI_wlast;
  input S01_AXI_wvalid;
  output S01_AXI_wready;
  output [1:0]S01_AXI_bresp;
  output S01_AXI_bvalid;
  input S01_AXI_bready;
  input [38:0]S01_AXI_araddr;
  input [7:0]S01_AXI_arlen;
  input [1:0]S01_AXI_arburst;
  input [0:0]S01_AXI_arlock;
  input [3:0]S01_AXI_arcache;
  input [2:0]S01_AXI_arprot;
  input S01_AXI_arvalid;
  output S01_AXI_arready;
  output [511:0]S01_AXI_rdata;
  output [1:0]S01_AXI_rresp;
  output S01_AXI_rlast;
  output S01_AXI_rvalid;
  input S01_AXI_rready;
  input [38:0]S02_AXI_awaddr;
  input [7:0]S02_AXI_awlen;
  input [1:0]S02_AXI_awburst;
  input [0:0]S02_AXI_awlock;
  input [3:0]S02_AXI_awcache;
  input [2:0]S02_AXI_awprot;
  input S02_AXI_awvalid;
  output S02_AXI_awready;
  input [511:0]S02_AXI_wdata;
  input [63:0]S02_AXI_wstrb;
  input S02_AXI_wlast;
  input S02_AXI_wvalid;
  output S02_AXI_wready;
  output [1:0]S02_AXI_bresp;
  output S02_AXI_bvalid;
  input S02_AXI_bready;
  input [38:0]S02_AXI_araddr;
  input [7:0]S02_AXI_arlen;
  input [1:0]S02_AXI_arburst;
  input [0:0]S02_AXI_arlock;
  input [3:0]S02_AXI_arcache;
  input [2:0]S02_AXI_arprot;
  input S02_AXI_arvalid;
  output S02_AXI_arready;
  output [511:0]S02_AXI_rdata;
  output [1:0]S02_AXI_rresp;
  output S02_AXI_rlast;
  output S02_AXI_rvalid;
  input S02_AXI_rready;
  input [38:0]S03_AXI_awaddr;
  input [7:0]S03_AXI_awlen;
  input [1:0]S03_AXI_awburst;
  input [0:0]S03_AXI_awlock;
  input [3:0]S03_AXI_awcache;
  input [2:0]S03_AXI_awprot;
  input S03_AXI_awvalid;
  output S03_AXI_awready;
  input [511:0]S03_AXI_wdata;
  input [63:0]S03_AXI_wstrb;
  input S03_AXI_wlast;
  input S03_AXI_wvalid;
  output S03_AXI_wready;
  output [1:0]S03_AXI_bresp;
  output S03_AXI_bvalid;
  input S03_AXI_bready;
  input [38:0]S03_AXI_araddr;
  input [7:0]S03_AXI_arlen;
  input [1:0]S03_AXI_arburst;
  input [0:0]S03_AXI_arlock;
  input [3:0]S03_AXI_arcache;
  input [2:0]S03_AXI_arprot;
  input S03_AXI_arvalid;
  output S03_AXI_arready;
  output [511:0]S03_AXI_rdata;
  output [1:0]S03_AXI_rresp;
  output S03_AXI_rlast;
  output S03_AXI_rvalid;
  input S03_AXI_rready;
  inout [71:0]DDR4_MEM00_dq;
  inout [17:0]DDR4_MEM00_dqs_t;
  inout [17:0]DDR4_MEM00_dqs_c;
  output [16:0]DDR4_MEM00_adr;
  output [1:0]DDR4_MEM00_ba;
  output [1:0]DDR4_MEM00_bg;
  output DDR4_MEM00_act_n;
  output DDR4_MEM00_reset_n;
  output [0:0]DDR4_MEM00_ck_t;
  output [0:0]DDR4_MEM00_ck_c;
  output [0:0]DDR4_MEM00_cke;
  output [0:0]DDR4_MEM00_cs_n;
  output [0:0]DDR4_MEM00_odt;
  output DDR4_MEM00_par;
  inout [71:0]DDR4_MEM01_dq;
  inout [17:0]DDR4_MEM01_dqs_t;
  inout [17:0]DDR4_MEM01_dqs_c;
  output [16:0]DDR4_MEM01_adr;
  output [1:0]DDR4_MEM01_ba;
  output [1:0]DDR4_MEM01_bg;
  output DDR4_MEM01_act_n;
  output DDR4_MEM01_reset_n;
  output [0:0]DDR4_MEM01_ck_t;
  output [0:0]DDR4_MEM01_ck_c;
  output [0:0]DDR4_MEM01_cke;
  output [0:0]DDR4_MEM01_cs_n;
  output [0:0]DDR4_MEM01_odt;
  output DDR4_MEM01_par;
  inout [71:0]DDR4_MEM02_dq;
  inout [17:0]DDR4_MEM02_dqs_t;
  inout [17:0]DDR4_MEM02_dqs_c;
  output [16:0]DDR4_MEM02_adr;
  output [1:0]DDR4_MEM02_ba;
  output [1:0]DDR4_MEM02_bg;
  output DDR4_MEM02_act_n;
  output DDR4_MEM02_reset_n;
  output [0:0]DDR4_MEM02_ck_t;
  output [0:0]DDR4_MEM02_ck_c;
  output [0:0]DDR4_MEM02_cke;
  output [0:0]DDR4_MEM02_cs_n;
  output [0:0]DDR4_MEM02_odt;
  output DDR4_MEM02_par;
  input DDR4_MEM00_DIFF_CLK_clk_p;
  input DDR4_MEM00_DIFF_CLK_clk_n;
  input DDR4_MEM01_DIFF_CLK_clk_p;
  input DDR4_MEM01_DIFF_CLK_clk_n;
  input DDR4_MEM02_DIFF_CLK_clk_p;
  input DDR4_MEM02_DIFF_CLK_clk_n;
  output ddr4_mem00_ui_clk;
  output ddr4_mem01_ui_clk;
  output ddr4_mem02_ui_clk;
  input ddr4_mem00_sys_rst;
  input ddr4_mem01_sys_rst;
  input ddr4_mem02_sys_rst;
  output ddr4_mem_calib_complete;
  output [2:0]ddr4_mem_calib_vec;
  output [3:0]M00_AXI_awid;
  output [38:0]M00_AXI_awaddr;
  output [7:0]M00_AXI_awlen;
  output [1:0]M00_AXI_awburst;
  output [0:0]M00_AXI_awlock;
  output [3:0]M00_AXI_awcache;
  output [2:0]M00_AXI_awprot;
  output M00_AXI_awvalid;
  input M00_AXI_awready;
  output [511:0]M00_AXI_wdata;
  output [63:0]M00_AXI_wstrb;
  output M00_AXI_wlast;
  output M00_AXI_wvalid;
  input M00_AXI_wready;
  input [3:0]M00_AXI_bid;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  output M00_AXI_bready;
  output [3:0]M00_AXI_arid;
  output [38:0]M00_AXI_araddr;
  output [7:0]M00_AXI_arlen;
  output [1:0]M00_AXI_arburst;
  output [0:0]M00_AXI_arlock;
  output [3:0]M00_AXI_arcache;
  output [2:0]M00_AXI_arprot;
  output M00_AXI_arvalid;
  input M00_AXI_arready;
  input [3:0]M00_AXI_rid;
  input [511:0]M00_AXI_rdata;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rlast;
  input M00_AXI_rvalid;
  output M00_AXI_rready;
  output [37:0]M01_AXI_awaddr;
  output [7:0]M01_AXI_awlen;
  output [2:0]M01_AXI_awsize;
  output [1:0]M01_AXI_awburst;
  output [0:0]M01_AXI_awlock;
  output [3:0]M01_AXI_awcache;
  output [2:0]M01_AXI_awprot;
  output [3:0]M01_AXI_awregion;
  output [3:0]M01_AXI_awqos;
  output M01_AXI_awvalid;
  input M01_AXI_awready;
  output [511:0]M01_AXI_wdata;
  output [63:0]M01_AXI_wstrb;
  output M01_AXI_wlast;
  output M01_AXI_wvalid;
  input M01_AXI_wready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  output M01_AXI_bready;
  output [37:0]M01_AXI_araddr;
  output [7:0]M01_AXI_arlen;
  output [2:0]M01_AXI_arsize;
  output [1:0]M01_AXI_arburst;
  output [0:0]M01_AXI_arlock;
  output [3:0]M01_AXI_arcache;
  output [2:0]M01_AXI_arprot;
  output [3:0]M01_AXI_arregion;
  output [3:0]M01_AXI_arqos;
  output M01_AXI_arvalid;
  input M01_AXI_arready;
  input [511:0]M01_AXI_rdata;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rlast;
  input M01_AXI_rvalid;
  output M01_AXI_rready;
  input [3:0]S00_AXI_arid;
  input [3:0]S00_AXI_awid;
  output [3:0]S00_AXI_bid;
  output [3:0]S00_AXI_rid;
  input [3:0]S01_AXI_arid;
  input [3:0]S01_AXI_awid;
  output [3:0]S01_AXI_bid;
  output [3:0]S01_AXI_rid;
  input [3:0]S02_AXI_arid;
  input [3:0]S02_AXI_awid;
  output [3:0]S02_AXI_bid;
  output [3:0]S02_AXI_rid;
  input [3:0]S03_AXI_arid;
  input [3:0]S03_AXI_awid;
  output [3:0]S03_AXI_bid;
  output [3:0]S03_AXI_rid;
endmodule
