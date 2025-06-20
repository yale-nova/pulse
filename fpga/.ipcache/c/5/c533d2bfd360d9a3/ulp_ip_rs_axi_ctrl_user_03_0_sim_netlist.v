// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Fri Oct 11 12:07:26 2024
// Host        : yupeng-ThinkBook-16-G6-IRL running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ulp_ip_rs_axi_ctrl_user_03_0_sim_netlist.v
// Design      : ulp_ip_rs_axi_ctrl_user_03_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu250-figd2104-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* C_AXI_ADDR_WIDTH = "25" *) (* C_AXI_ARUSER_WIDTH = "1" *) (* C_AXI_AWUSER_WIDTH = "1" *) 
(* C_AXI_BUSER_WIDTH = "1" *) (* C_AXI_DATA_WIDTH = "32" *) (* C_AXI_ID_WIDTH = "1" *) 
(* C_AXI_PROTOCOL = "2" *) (* C_AXI_RUSER_WIDTH = "1" *) (* C_AXI_SUPPORTS_REGION_SIGNALS = "0" *) 
(* C_AXI_SUPPORTS_USER_SIGNALS = "0" *) (* C_AXI_WUSER_WIDTH = "1" *) (* C_FAMILY = "virtexuplus" *) 
(* C_NUM_SLR_CROSSINGS = "1" *) (* C_PIPELINES_MASTER_AR = "0" *) (* C_PIPELINES_MASTER_AW = "0" *) 
(* C_PIPELINES_MASTER_B = "0" *) (* C_PIPELINES_MASTER_R = "0" *) (* C_PIPELINES_MASTER_W = "0" *) 
(* C_PIPELINES_MIDDLE_AR = "0" *) (* C_PIPELINES_MIDDLE_AW = "0" *) (* C_PIPELINES_MIDDLE_B = "0" *) 
(* C_PIPELINES_MIDDLE_R = "0" *) (* C_PIPELINES_MIDDLE_W = "0" *) (* C_PIPELINES_SLAVE_AR = "0" *) 
(* C_PIPELINES_SLAVE_AW = "0" *) (* C_PIPELINES_SLAVE_B = "0" *) (* C_PIPELINES_SLAVE_R = "0" *) 
(* C_PIPELINES_SLAVE_W = "0" *) (* C_REG_CONFIG_AR = "15" *) (* C_REG_CONFIG_AW = "15" *) 
(* C_REG_CONFIG_B = "15" *) (* C_REG_CONFIG_R = "15" *) (* C_REG_CONFIG_W = "15" *) 
(* C_RESERVE_MODE = "0" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* G_AXI_ARADDR_INDEX = "0" *) 
(* G_AXI_ARADDR_WIDTH = "25" *) (* G_AXI_ARBURST_INDEX = "28" *) (* G_AXI_ARBURST_WIDTH = "0" *) 
(* G_AXI_ARCACHE_INDEX = "28" *) (* G_AXI_ARCACHE_WIDTH = "0" *) (* G_AXI_ARID_INDEX = "28" *) 
(* G_AXI_ARID_WIDTH = "0" *) (* G_AXI_ARLEN_INDEX = "28" *) (* G_AXI_ARLEN_WIDTH = "0" *) 
(* G_AXI_ARLOCK_INDEX = "28" *) (* G_AXI_ARLOCK_WIDTH = "0" *) (* G_AXI_ARPAYLOAD_WIDTH = "28" *) 
(* G_AXI_ARPROT_INDEX = "25" *) (* G_AXI_ARPROT_WIDTH = "3" *) (* G_AXI_ARQOS_INDEX = "28" *) 
(* G_AXI_ARQOS_WIDTH = "0" *) (* G_AXI_ARREGION_INDEX = "28" *) (* G_AXI_ARREGION_WIDTH = "0" *) 
(* G_AXI_ARSIZE_INDEX = "28" *) (* G_AXI_ARSIZE_WIDTH = "0" *) (* G_AXI_ARUSER_INDEX = "28" *) 
(* G_AXI_ARUSER_WIDTH = "0" *) (* G_AXI_AWADDR_INDEX = "0" *) (* G_AXI_AWADDR_WIDTH = "25" *) 
(* G_AXI_AWBURST_INDEX = "28" *) (* G_AXI_AWBURST_WIDTH = "0" *) (* G_AXI_AWCACHE_INDEX = "28" *) 
(* G_AXI_AWCACHE_WIDTH = "0" *) (* G_AXI_AWID_INDEX = "28" *) (* G_AXI_AWID_WIDTH = "0" *) 
(* G_AXI_AWLEN_INDEX = "28" *) (* G_AXI_AWLEN_WIDTH = "0" *) (* G_AXI_AWLOCK_INDEX = "28" *) 
(* G_AXI_AWLOCK_WIDTH = "0" *) (* G_AXI_AWPAYLOAD_WIDTH = "28" *) (* G_AXI_AWPROT_INDEX = "25" *) 
(* G_AXI_AWPROT_WIDTH = "3" *) (* G_AXI_AWQOS_INDEX = "28" *) (* G_AXI_AWQOS_WIDTH = "0" *) 
(* G_AXI_AWREGION_INDEX = "28" *) (* G_AXI_AWREGION_WIDTH = "0" *) (* G_AXI_AWSIZE_INDEX = "28" *) 
(* G_AXI_AWSIZE_WIDTH = "0" *) (* G_AXI_AWUSER_INDEX = "28" *) (* G_AXI_AWUSER_WIDTH = "0" *) 
(* G_AXI_BID_INDEX = "2" *) (* G_AXI_BID_WIDTH = "0" *) (* G_AXI_BPAYLOAD_WIDTH = "2" *) 
(* G_AXI_BRESP_INDEX = "0" *) (* G_AXI_BRESP_WIDTH = "2" *) (* G_AXI_BUSER_INDEX = "2" *) 
(* G_AXI_BUSER_WIDTH = "0" *) (* G_AXI_RDATA_INDEX = "0" *) (* G_AXI_RDATA_WIDTH = "32" *) 
(* G_AXI_RID_INDEX = "34" *) (* G_AXI_RID_WIDTH = "0" *) (* G_AXI_RLAST_INDEX = "34" *) 
(* G_AXI_RLAST_WIDTH = "0" *) (* G_AXI_RPAYLOAD_WIDTH = "34" *) (* G_AXI_RRESP_INDEX = "32" *) 
(* G_AXI_RRESP_WIDTH = "2" *) (* G_AXI_RUSER_INDEX = "34" *) (* G_AXI_RUSER_WIDTH = "0" *) 
(* G_AXI_WDATA_INDEX = "0" *) (* G_AXI_WDATA_WIDTH = "32" *) (* G_AXI_WID_INDEX = "36" *) 
(* G_AXI_WID_WIDTH = "0" *) (* G_AXI_WLAST_INDEX = "36" *) (* G_AXI_WLAST_WIDTH = "0" *) 
(* G_AXI_WPAYLOAD_WIDTH = "36" *) (* G_AXI_WSTRB_INDEX = "32" *) (* G_AXI_WSTRB_WIDTH = "4" *) 
(* G_AXI_WUSER_INDEX = "36" *) (* G_AXI_WUSER_WIDTH = "0" *) (* P_FORWARD = "0" *) 
(* P_RESPONSE = "1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice
   (aclk,
    aclk2x,
    aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awregion,
    s_axi_awqos,
    s_axi_awuser,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wid,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wuser,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_buser,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arregion,
    s_axi_arqos,
    s_axi_aruser,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_ruser,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awregion,
    m_axi_awqos,
    m_axi_awuser,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wuser,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_buser,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arregion,
    m_axi_arqos,
    m_axi_aruser,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_ruser,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aclk2x;
  input aresetn;
  input [0:0]s_axi_awid;
  input [24:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awregion;
  input [3:0]s_axi_awqos;
  input [0:0]s_axi_awuser;
  input s_axi_awvalid;
  output s_axi_awready;
  input [0:0]s_axi_wid;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wlast;
  input [0:0]s_axi_wuser;
  input s_axi_wvalid;
  output s_axi_wready;
  output [0:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output [0:0]s_axi_buser;
  output s_axi_bvalid;
  input s_axi_bready;
  input [0:0]s_axi_arid;
  input [24:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arregion;
  input [3:0]s_axi_arqos;
  input [0:0]s_axi_aruser;
  input s_axi_arvalid;
  output s_axi_arready;
  output [0:0]s_axi_rid;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output [0:0]s_axi_ruser;
  output s_axi_rvalid;
  input s_axi_rready;
  output [0:0]m_axi_awid;
  output [24:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awregion;
  output [3:0]m_axi_awqos;
  output [0:0]m_axi_awuser;
  output m_axi_awvalid;
  input m_axi_awready;
  output [0:0]m_axi_wid;
  output [31:0]m_axi_wdata;
  output [3:0]m_axi_wstrb;
  output m_axi_wlast;
  output [0:0]m_axi_wuser;
  output m_axi_wvalid;
  input m_axi_wready;
  input [0:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input [0:0]m_axi_buser;
  input m_axi_bvalid;
  output m_axi_bready;
  output [0:0]m_axi_arid;
  output [24:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arregion;
  output [3:0]m_axi_arqos;
  output [0:0]m_axi_aruser;
  output m_axi_arvalid;
  input m_axi_arready;
  input [0:0]m_axi_rid;
  input [31:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input [0:0]m_axi_ruser;
  input m_axi_rvalid;
  output m_axi_rready;

  wire \<const0> ;
  wire aclk;
  wire aresetn;
  wire \dual_slr.resp.slr_master/common.ACLEAR ;
  wire [24:0]m_axi_araddr;
  wire [2:0]m_axi_arprot;
  wire m_axi_arready;
  wire m_axi_arvalid;
  wire [24:0]m_axi_awaddr;
  wire [2:0]m_axi_awprot;
  wire m_axi_awready;
  wire m_axi_awvalid;
  wire m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire [31:0]m_axi_rdata;
  wire m_axi_rready;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire [31:0]m_axi_wdata;
  wire m_axi_wready;
  wire [3:0]m_axi_wstrb;
  wire m_axi_wvalid;
  wire [24:0]s_axi_araddr;
  wire [2:0]s_axi_arprot;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [24:0]s_axi_awaddr;
  wire [2:0]s_axi_awprot;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;

  assign m_axi_arburst[1] = \<const0> ;
  assign m_axi_arburst[0] = \<const0> ;
  assign m_axi_arcache[3] = \<const0> ;
  assign m_axi_arcache[2] = \<const0> ;
  assign m_axi_arcache[1] = \<const0> ;
  assign m_axi_arcache[0] = \<const0> ;
  assign m_axi_arid[0] = \<const0> ;
  assign m_axi_arlen[7] = \<const0> ;
  assign m_axi_arlen[6] = \<const0> ;
  assign m_axi_arlen[5] = \<const0> ;
  assign m_axi_arlen[4] = \<const0> ;
  assign m_axi_arlen[3] = \<const0> ;
  assign m_axi_arlen[2] = \<const0> ;
  assign m_axi_arlen[1] = \<const0> ;
  assign m_axi_arlen[0] = \<const0> ;
  assign m_axi_arlock[0] = \<const0> ;
  assign m_axi_arqos[3] = \<const0> ;
  assign m_axi_arqos[2] = \<const0> ;
  assign m_axi_arqos[1] = \<const0> ;
  assign m_axi_arqos[0] = \<const0> ;
  assign m_axi_arregion[3] = \<const0> ;
  assign m_axi_arregion[2] = \<const0> ;
  assign m_axi_arregion[1] = \<const0> ;
  assign m_axi_arregion[0] = \<const0> ;
  assign m_axi_arsize[2] = \<const0> ;
  assign m_axi_arsize[1] = \<const0> ;
  assign m_axi_arsize[0] = \<const0> ;
  assign m_axi_aruser[0] = \<const0> ;
  assign m_axi_awburst[1] = \<const0> ;
  assign m_axi_awburst[0] = \<const0> ;
  assign m_axi_awcache[3] = \<const0> ;
  assign m_axi_awcache[2] = \<const0> ;
  assign m_axi_awcache[1] = \<const0> ;
  assign m_axi_awcache[0] = \<const0> ;
  assign m_axi_awid[0] = \<const0> ;
  assign m_axi_awlen[7] = \<const0> ;
  assign m_axi_awlen[6] = \<const0> ;
  assign m_axi_awlen[5] = \<const0> ;
  assign m_axi_awlen[4] = \<const0> ;
  assign m_axi_awlen[3] = \<const0> ;
  assign m_axi_awlen[2] = \<const0> ;
  assign m_axi_awlen[1] = \<const0> ;
  assign m_axi_awlen[0] = \<const0> ;
  assign m_axi_awlock[0] = \<const0> ;
  assign m_axi_awqos[3] = \<const0> ;
  assign m_axi_awqos[2] = \<const0> ;
  assign m_axi_awqos[1] = \<const0> ;
  assign m_axi_awqos[0] = \<const0> ;
  assign m_axi_awregion[3] = \<const0> ;
  assign m_axi_awregion[2] = \<const0> ;
  assign m_axi_awregion[1] = \<const0> ;
  assign m_axi_awregion[0] = \<const0> ;
  assign m_axi_awsize[2] = \<const0> ;
  assign m_axi_awsize[1] = \<const0> ;
  assign m_axi_awsize[0] = \<const0> ;
  assign m_axi_awuser[0] = \<const0> ;
  assign m_axi_wid[0] = \<const0> ;
  assign m_axi_wlast = \<const0> ;
  assign m_axi_wuser[0] = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_buser[0] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_ruser[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_multi_slr \ar15.ar_multi 
       (.D({s_axi_arprot,s_axi_araddr}),
        .Q({m_axi_arprot,m_axi_araddr}),
        .aclk(aclk),
        .aresetn(aresetn),
        .asyncclear_mvalid_inst(m_axi_arvalid),
        .\common.ACLEAR (\dual_slr.resp.slr_master/common.ACLEAR ),
        .m_axi_arready(m_axi_arready),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_multi_slr_0 \aw15.aw_multi 
       (.D({s_axi_awprot,s_axi_awaddr}),
        .Q({m_axi_awprot,m_axi_awaddr}),
        .aclk(aclk),
        .aresetn(aresetn),
        .asyncclear_mvalid_inst(m_axi_awvalid),
        .\common.ACLEAR (\dual_slr.resp.slr_master/common.ACLEAR ),
        .m_axi_awready(m_axi_awready),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_multi_slr__parameterized1 \b15.b_multi 
       (.aclk(aclk),
        .aresetn(aresetn),
        .asyncclear_mvalid_inst(s_axi_bvalid),
        .\common.ACLEAR (\dual_slr.resp.slr_master/common.ACLEAR ),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_bvalid(m_axi_bvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_multi_slr__parameterized2 \r15.r_multi 
       (.D({m_axi_rresp,m_axi_rdata}),
        .Q({s_axi_rresp,s_axi_rdata}),
        .aclk(aclk),
        .aresetn(aresetn),
        .asyncclear_mvalid_inst(s_axi_rvalid),
        .\common.ACLEAR (\dual_slr.resp.slr_master/common.ACLEAR ),
        .m_axi_rready(m_axi_rready),
        .m_axi_rvalid(m_axi_rvalid),
        .s_axi_rready(s_axi_rready));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_multi_slr__parameterized0 \w15.w_multi 
       (.D({s_axi_wstrb,s_axi_wdata}),
        .Q({m_axi_wstrb,m_axi_wdata}),
        .aclk(aclk),
        .aresetn(aresetn),
        .asyncclear_mvalid_inst(m_axi_wvalid),
        .\common.ACLEAR (\dual_slr.resp.slr_master/common.ACLEAR ),
        .m_axi_wready(m_axi_wready),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axic_reg_srl_fifo
   (asyncclear_mvalid_inst_0,
    m_axi_awready_0,
    \mesg_reg_reg[27]_0 ,
    aclk,
    \common.laguna_s_handshake_q ,
    Q,
    \common.ACLEAR ,
    m_axi_awready,
    out);
  output asyncclear_mvalid_inst_0;
  output m_axi_awready_0;
  output [27:0]\mesg_reg_reg[27]_0 ;
  input aclk;
  input \common.laguna_s_handshake_q ;
  input [27:0]Q;
  input \common.ACLEAR ;
  input m_axi_awready;
  input out;

  wire [27:0]Q;
  wire aclk;
  wire asyncclear_mvalid_inst_0;
  wire asyncclear_state0_inst_i_1_n_0;
  wire asyncclear_state1_inst_i_1_n_0;
  wire asyncclear_state1_inst_i_3_n_0;
  wire \common.ACLEAR ;
  wire \common.laguna_s_handshake_q ;
  wire \common.pop__0 ;
  wire fifoaddr12_out;
  wire \fifoaddr[0]_i_1_n_0 ;
  wire \fifoaddr[1]_i_1_n_0 ;
  wire \fifoaddr[2]_i_1_n_0 ;
  wire \fifoaddr[3]_i_1_n_0 ;
  wire \fifoaddr[3]_i_2_n_0 ;
  wire [3:0]fifoaddr_reg;
  wire load_mesg;
  wire m_axi_awready;
  wire m_axi_awready_0;
  wire m_valid_d;
  wire \mesg_reg[0]_i_1__0_n_0 ;
  wire \mesg_reg[10]_i_1_n_0 ;
  wire \mesg_reg[11]_i_1_n_0 ;
  wire \mesg_reg[12]_i_1_n_0 ;
  wire \mesg_reg[13]_i_1_n_0 ;
  wire \mesg_reg[14]_i_1_n_0 ;
  wire \mesg_reg[15]_i_1_n_0 ;
  wire \mesg_reg[16]_i_1_n_0 ;
  wire \mesg_reg[17]_i_1_n_0 ;
  wire \mesg_reg[18]_i_1_n_0 ;
  wire \mesg_reg[19]_i_1_n_0 ;
  wire \mesg_reg[1]_i_1__0_n_0 ;
  wire \mesg_reg[20]_i_1_n_0 ;
  wire \mesg_reg[21]_i_1_n_0 ;
  wire \mesg_reg[22]_i_1_n_0 ;
  wire \mesg_reg[23]_i_1_n_0 ;
  wire \mesg_reg[24]_i_2_n_0 ;
  wire \mesg_reg[25]_i_1_n_0 ;
  wire \mesg_reg[26]_i_1_n_0 ;
  wire \mesg_reg[27]_i_1_n_0 ;
  wire \mesg_reg[2]_i_1_n_0 ;
  wire \mesg_reg[3]_i_1_n_0 ;
  wire \mesg_reg[4]_i_1_n_0 ;
  wire \mesg_reg[5]_i_1_n_0 ;
  wire \mesg_reg[6]_i_1_n_0 ;
  wire \mesg_reg[7]_i_1_n_0 ;
  wire \mesg_reg[8]_i_1_n_0 ;
  wire \mesg_reg[9]_i_1_n_0 ;
  wire [27:0]\mesg_reg_reg[27]_0 ;
  wire out;
  wire [27:0]srl_reg;
  wire [1:0]state;

  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    asyncclear_mvalid_inst
       (.C(aclk),
        .CE(1'b1),
        .CLR(\common.ACLEAR ),
        .D(m_valid_d),
        .Q(asyncclear_mvalid_inst_0));
  LUT6 #(
    .INIT(64'hFFFFDFDF00C000F0)) 
    asyncclear_mvalid_inst_i_1
       (.I0(m_axi_awready),
        .I1(state[1]),
        .I2(asyncclear_mvalid_inst_0),
        .I3(out),
        .I4(\common.laguna_s_handshake_q ),
        .I5(state[0]),
        .O(m_valid_d));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    asyncclear_state0_inst
       (.C(aclk),
        .CE(1'b1),
        .CLR(\common.ACLEAR ),
        .D(asyncclear_state0_inst_i_1_n_0),
        .Q(state[0]));
  LUT6 #(
    .INIT(64'h00000000E4F4F4F4)) 
    asyncclear_state0_inst_i_1
       (.I0(state[1]),
        .I1(\common.laguna_s_handshake_q ),
        .I2(state[0]),
        .I3(asyncclear_mvalid_inst_0),
        .I4(m_axi_awready),
        .I5(out),
        .O(asyncclear_state0_inst_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    asyncclear_state1_inst
       (.C(aclk),
        .CE(1'b1),
        .CLR(\common.ACLEAR ),
        .D(asyncclear_state1_inst_i_1_n_0),
        .Q(state[1]));
  LUT6 #(
    .INIT(64'h00000000CC40C440)) 
    asyncclear_state1_inst_i_1
       (.I0(\common.pop__0 ),
        .I1(state[0]),
        .I2(\common.laguna_s_handshake_q ),
        .I3(state[1]),
        .I4(asyncclear_state1_inst_i_3_n_0),
        .I5(out),
        .O(asyncclear_state1_inst_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    asyncclear_state1_inst_i_2
       (.I0(m_axi_awready),
        .I1(asyncclear_mvalid_inst_0),
        .O(\common.pop__0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    asyncclear_state1_inst_i_3
       (.I0(fifoaddr_reg[2]),
        .I1(fifoaddr_reg[3]),
        .I2(fifoaddr_reg[0]),
        .I3(fifoaddr_reg[1]),
        .O(asyncclear_state1_inst_i_3_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    \common.laguna_s_ready_i_i_1 
       (.I0(m_axi_awready),
        .I1(asyncclear_mvalid_inst_0),
        .O(m_axi_awready_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \fifoaddr[0]_i_1 
       (.I0(fifoaddr_reg[0]),
        .O(\fifoaddr[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA659)) 
    \fifoaddr[1]_i_1 
       (.I0(fifoaddr_reg[0]),
        .I1(\common.laguna_s_handshake_q ),
        .I2(\common.pop__0 ),
        .I3(fifoaddr_reg[1]),
        .O(\fifoaddr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h78E1)) 
    \fifoaddr[2]_i_1 
       (.I0(fifoaddr_reg[0]),
        .I1(fifoaddr12_out),
        .I2(fifoaddr_reg[2]),
        .I3(fifoaddr_reg[1]),
        .O(\fifoaddr[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0AAA8000)) 
    \fifoaddr[3]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(asyncclear_mvalid_inst_0),
        .I3(m_axi_awready),
        .I4(\common.laguna_s_handshake_q ),
        .O(\fifoaddr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7F80FE01)) 
    \fifoaddr[3]_i_2 
       (.I0(fifoaddr12_out),
        .I1(fifoaddr_reg[0]),
        .I2(fifoaddr_reg[1]),
        .I3(fifoaddr_reg[3]),
        .I4(fifoaddr_reg[2]),
        .O(\fifoaddr[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0888)) 
    \fifoaddr[3]_i_3__1 
       (.I0(\common.laguna_s_handshake_q ),
        .I1(state[0]),
        .I2(asyncclear_mvalid_inst_0),
        .I3(m_axi_awready),
        .O(fifoaddr12_out));
  FDSE #(
    .INIT(1'b1)) 
    \fifoaddr_reg[0] 
       (.C(aclk),
        .CE(\fifoaddr[3]_i_1_n_0 ),
        .D(\fifoaddr[0]_i_1_n_0 ),
        .Q(fifoaddr_reg[0]),
        .S(out));
  FDSE #(
    .INIT(1'b1)) 
    \fifoaddr_reg[1] 
       (.C(aclk),
        .CE(\fifoaddr[3]_i_1_n_0 ),
        .D(\fifoaddr[1]_i_1_n_0 ),
        .Q(fifoaddr_reg[1]),
        .S(out));
  FDSE #(
    .INIT(1'b1)) 
    \fifoaddr_reg[2] 
       (.C(aclk),
        .CE(\fifoaddr[3]_i_1_n_0 ),
        .D(\fifoaddr[2]_i_1_n_0 ),
        .Q(fifoaddr_reg[2]),
        .S(out));
  FDSE #(
    .INIT(1'b1)) 
    \fifoaddr_reg[3] 
       (.C(aclk),
        .CE(\fifoaddr[3]_i_1_n_0 ),
        .D(\fifoaddr[3]_i_2_n_0 ),
        .Q(fifoaddr_reg[3]),
        .S(out));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[0]_i_1__0 
       (.I0(srl_reg[0]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[0]),
        .O(\mesg_reg[0]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[10]_i_1 
       (.I0(srl_reg[10]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[10]),
        .O(\mesg_reg[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[11]_i_1 
       (.I0(srl_reg[11]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[11]),
        .O(\mesg_reg[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[12]_i_1 
       (.I0(srl_reg[12]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[12]),
        .O(\mesg_reg[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[13]_i_1 
       (.I0(srl_reg[13]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[13]),
        .O(\mesg_reg[13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[14]_i_1 
       (.I0(srl_reg[14]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[14]),
        .O(\mesg_reg[14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[15]_i_1 
       (.I0(srl_reg[15]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[15]),
        .O(\mesg_reg[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[16]_i_1 
       (.I0(srl_reg[16]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[16]),
        .O(\mesg_reg[16]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[17]_i_1 
       (.I0(srl_reg[17]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[17]),
        .O(\mesg_reg[17]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[18]_i_1 
       (.I0(srl_reg[18]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[18]),
        .O(\mesg_reg[18]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[19]_i_1 
       (.I0(srl_reg[19]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[19]),
        .O(\mesg_reg[19]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[1]_i_1__0 
       (.I0(srl_reg[1]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[1]),
        .O(\mesg_reg[1]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[20]_i_1 
       (.I0(srl_reg[20]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[20]),
        .O(\mesg_reg[20]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[21]_i_1 
       (.I0(srl_reg[21]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[21]),
        .O(\mesg_reg[21]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[22]_i_1 
       (.I0(srl_reg[22]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[22]),
        .O(\mesg_reg[22]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[23]_i_1 
       (.I0(srl_reg[23]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[23]),
        .O(\mesg_reg[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h8F8F8F80)) 
    \mesg_reg[24]_i_1 
       (.I0(m_axi_awready),
        .I1(asyncclear_mvalid_inst_0),
        .I2(state[0]),
        .I3(state[1]),
        .I4(\common.laguna_s_handshake_q ),
        .O(load_mesg));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[24]_i_2 
       (.I0(srl_reg[24]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[24]),
        .O(\mesg_reg[24]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[25]_i_1 
       (.I0(srl_reg[25]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[25]),
        .O(\mesg_reg[25]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[26]_i_1 
       (.I0(srl_reg[26]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[26]),
        .O(\mesg_reg[26]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[27]_i_1 
       (.I0(srl_reg[27]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[27]),
        .O(\mesg_reg[27]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[2]_i_1 
       (.I0(srl_reg[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[2]),
        .O(\mesg_reg[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[3]_i_1 
       (.I0(srl_reg[3]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[3]),
        .O(\mesg_reg[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[4]_i_1 
       (.I0(srl_reg[4]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[4]),
        .O(\mesg_reg[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[5]_i_1 
       (.I0(srl_reg[5]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[5]),
        .O(\mesg_reg[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[6]_i_1 
       (.I0(srl_reg[6]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[6]),
        .O(\mesg_reg[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[7]_i_1 
       (.I0(srl_reg[7]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[7]),
        .O(\mesg_reg[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[8]_i_1 
       (.I0(srl_reg[8]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[8]),
        .O(\mesg_reg[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[9]_i_1 
       (.I0(srl_reg[9]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[9]),
        .O(\mesg_reg[9]_i_1_n_0 ));
  FDRE \mesg_reg_reg[0] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[0]_i_1__0_n_0 ),
        .Q(\mesg_reg_reg[27]_0 [0]),
        .R(1'b0));
  FDRE \mesg_reg_reg[10] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[10]_i_1_n_0 ),
        .Q(\mesg_reg_reg[27]_0 [10]),
        .R(1'b0));
  FDRE \mesg_reg_reg[11] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[11]_i_1_n_0 ),
        .Q(\mesg_reg_reg[27]_0 [11]),
        .R(1'b0));
  FDRE \mesg_reg_reg[12] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[12]_i_1_n_0 ),
        .Q(\mesg_reg_reg[27]_0 [12]),
        .R(1'b0));
  FDRE \mesg_reg_reg[13] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[13]_i_1_n_0 ),
        .Q(\mesg_reg_reg[27]_0 [13]),
        .R(1'b0));
  FDRE \mesg_reg_reg[14] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[14]_i_1_n_0 ),
        .Q(\mesg_reg_reg[27]_0 [14]),
        .R(1'b0));
  FDRE \mesg_reg_reg[15] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[15]_i_1_n_0 ),
        .Q(\mesg_reg_reg[27]_0 [15]),
        .R(1'b0));
  FDRE \mesg_reg_reg[16] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[16]_i_1_n_0 ),
        .Q(\mesg_reg_reg[27]_0 [16]),
        .R(1'b0));
  FDRE \mesg_reg_reg[17] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[17]_i_1_n_0 ),
        .Q(\mesg_reg_reg[27]_0 [17]),
        .R(1'b0));
  FDRE \mesg_reg_reg[18] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[18]_i_1_n_0 ),
        .Q(\mesg_reg_reg[27]_0 [18]),
        .R(1'b0));
  FDRE \mesg_reg_reg[19] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[19]_i_1_n_0 ),
        .Q(\mesg_reg_reg[27]_0 [19]),
        .R(1'b0));
  FDRE \mesg_reg_reg[1] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[1]_i_1__0_n_0 ),
        .Q(\mesg_reg_reg[27]_0 [1]),
        .R(1'b0));
  FDRE \mesg_reg_reg[20] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[20]_i_1_n_0 ),
        .Q(\mesg_reg_reg[27]_0 [20]),
        .R(1'b0));
  FDRE \mesg_reg_reg[21] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[21]_i_1_n_0 ),
        .Q(\mesg_reg_reg[27]_0 [21]),
        .R(1'b0));
  FDRE \mesg_reg_reg[22] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[22]_i_1_n_0 ),
        .Q(\mesg_reg_reg[27]_0 [22]),
        .R(1'b0));
  FDRE \mesg_reg_reg[23] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[23]_i_1_n_0 ),
        .Q(\mesg_reg_reg[27]_0 [23]),
        .R(1'b0));
  FDRE \mesg_reg_reg[24] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[24]_i_2_n_0 ),
        .Q(\mesg_reg_reg[27]_0 [24]),
        .R(1'b0));
  FDRE \mesg_reg_reg[25] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[25]_i_1_n_0 ),
        .Q(\mesg_reg_reg[27]_0 [25]),
        .R(1'b0));
  FDRE \mesg_reg_reg[26] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[26]_i_1_n_0 ),
        .Q(\mesg_reg_reg[27]_0 [26]),
        .R(1'b0));
  FDRE \mesg_reg_reg[27] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[27]_i_1_n_0 ),
        .Q(\mesg_reg_reg[27]_0 [27]),
        .R(1'b0));
  FDRE \mesg_reg_reg[2] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[2]_i_1_n_0 ),
        .Q(\mesg_reg_reg[27]_0 [2]),
        .R(1'b0));
  FDRE \mesg_reg_reg[3] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[3]_i_1_n_0 ),
        .Q(\mesg_reg_reg[27]_0 [3]),
        .R(1'b0));
  FDRE \mesg_reg_reg[4] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[4]_i_1_n_0 ),
        .Q(\mesg_reg_reg[27]_0 [4]),
        .R(1'b0));
  FDRE \mesg_reg_reg[5] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[5]_i_1_n_0 ),
        .Q(\mesg_reg_reg[27]_0 [5]),
        .R(1'b0));
  FDRE \mesg_reg_reg[6] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[6]_i_1_n_0 ),
        .Q(\mesg_reg_reg[27]_0 [6]),
        .R(1'b0));
  FDRE \mesg_reg_reg[7] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[7]_i_1_n_0 ),
        .Q(\mesg_reg_reg[27]_0 [7]),
        .R(1'b0));
  FDRE \mesg_reg_reg[8] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[8]_i_1_n_0 ),
        .Q(\mesg_reg_reg[27]_0 [8]),
        .R(1'b0));
  FDRE \mesg_reg_reg[9] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[9]_i_1_n_0 ),
        .Q(\mesg_reg_reg[27]_0 [9]),
        .R(1'b0));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__101 \srl[0].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[0]),
        .q(srl_reg[0]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__111 \srl[10].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[10]),
        .q(srl_reg[10]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__112 \srl[11].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[11]),
        .q(srl_reg[11]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__113 \srl[12].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[12]),
        .q(srl_reg[12]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__114 \srl[13].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[13]),
        .q(srl_reg[13]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__115 \srl[14].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[14]),
        .q(srl_reg[14]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__116 \srl[15].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[15]),
        .q(srl_reg[15]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__117 \srl[16].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[16]),
        .q(srl_reg[16]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__118 \srl[17].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[17]),
        .q(srl_reg[17]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__119 \srl[18].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[18]),
        .q(srl_reg[18]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__120 \srl[19].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[19]),
        .q(srl_reg[19]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__102 \srl[1].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[1]),
        .q(srl_reg[1]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__121 \srl[20].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[20]),
        .q(srl_reg[20]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__122 \srl[21].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[21]),
        .q(srl_reg[21]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__123 \srl[22].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[22]),
        .q(srl_reg[22]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__124 \srl[23].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[23]),
        .q(srl_reg[23]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__125 \srl[24].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[24]),
        .q(srl_reg[24]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__126 \srl[25].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[25]),
        .q(srl_reg[25]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__127 \srl[26].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[26]),
        .q(srl_reg[26]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__1 \srl[27].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[27]),
        .q(srl_reg[27]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__103 \srl[2].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[2]),
        .q(srl_reg[2]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__104 \srl[3].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[3]),
        .q(srl_reg[3]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__105 \srl[4].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[4]),
        .q(srl_reg[4]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__106 \srl[5].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[5]),
        .q(srl_reg[5]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__107 \srl[6].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[6]),
        .q(srl_reg[6]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__108 \srl[7].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[7]),
        .q(srl_reg[7]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__109 \srl[8].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[8]),
        .q(srl_reg[8]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__110 \srl[9].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[9]),
        .q(srl_reg[9]));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_26_axic_reg_srl_fifo" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axic_reg_srl_fifo_3
   (asyncclear_mvalid_inst_0,
    m_axi_arready_0,
    \mesg_reg_reg[27]_0 ,
    aclk,
    \common.laguna_s_handshake_q ,
    Q,
    \common.ACLEAR ,
    m_axi_arready,
    out);
  output asyncclear_mvalid_inst_0;
  output m_axi_arready_0;
  output [27:0]\mesg_reg_reg[27]_0 ;
  input aclk;
  input \common.laguna_s_handshake_q ;
  input [27:0]Q;
  input \common.ACLEAR ;
  input m_axi_arready;
  input out;

  wire [27:0]Q;
  wire aclk;
  wire asyncclear_mvalid_inst_0;
  wire asyncclear_state0_inst_i_1__2_n_0;
  wire asyncclear_state1_inst_i_1__2_n_0;
  wire asyncclear_state1_inst_i_3__2_n_0;
  wire \common.ACLEAR ;
  wire \common.laguna_s_handshake_q ;
  wire \common.pop__0 ;
  wire fifoaddr12_out;
  wire \fifoaddr[0]_i_1__2_n_0 ;
  wire \fifoaddr[1]_i_1__2_n_0 ;
  wire \fifoaddr[2]_i_1__2_n_0 ;
  wire \fifoaddr[3]_i_1__2_n_0 ;
  wire \fifoaddr[3]_i_2__2_n_0 ;
  wire [3:0]fifoaddr_reg;
  wire load_mesg;
  wire m_axi_arready;
  wire m_axi_arready_0;
  wire m_valid_d;
  wire \mesg_reg[0]_i_1__2_n_0 ;
  wire \mesg_reg[10]_i_1__1_n_0 ;
  wire \mesg_reg[11]_i_1__1_n_0 ;
  wire \mesg_reg[12]_i_1__1_n_0 ;
  wire \mesg_reg[13]_i_1__1_n_0 ;
  wire \mesg_reg[14]_i_1__1_n_0 ;
  wire \mesg_reg[15]_i_1__1_n_0 ;
  wire \mesg_reg[16]_i_1__1_n_0 ;
  wire \mesg_reg[17]_i_1__1_n_0 ;
  wire \mesg_reg[18]_i_1__1_n_0 ;
  wire \mesg_reg[19]_i_1__1_n_0 ;
  wire \mesg_reg[1]_i_1__2_n_0 ;
  wire \mesg_reg[20]_i_1__1_n_0 ;
  wire \mesg_reg[21]_i_1__1_n_0 ;
  wire \mesg_reg[22]_i_1__1_n_0 ;
  wire \mesg_reg[23]_i_1__1_n_0 ;
  wire \mesg_reg[24]_i_2__0_n_0 ;
  wire \mesg_reg[25]_i_1__1_n_0 ;
  wire \mesg_reg[26]_i_1__1_n_0 ;
  wire \mesg_reg[27]_i_1__1_n_0 ;
  wire \mesg_reg[2]_i_1__1_n_0 ;
  wire \mesg_reg[3]_i_1__1_n_0 ;
  wire \mesg_reg[4]_i_1__1_n_0 ;
  wire \mesg_reg[5]_i_1__1_n_0 ;
  wire \mesg_reg[6]_i_1__1_n_0 ;
  wire \mesg_reg[7]_i_1__1_n_0 ;
  wire \mesg_reg[8]_i_1__1_n_0 ;
  wire \mesg_reg[9]_i_1__1_n_0 ;
  wire [27:0]\mesg_reg_reg[27]_0 ;
  wire out;
  wire [27:0]srl_reg;
  wire [1:0]state;

  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    asyncclear_mvalid_inst
       (.C(aclk),
        .CE(1'b1),
        .CLR(\common.ACLEAR ),
        .D(m_valid_d),
        .Q(asyncclear_mvalid_inst_0));
  LUT6 #(
    .INIT(64'hFFFFDFDF00C000F0)) 
    asyncclear_mvalid_inst_i_1__2
       (.I0(m_axi_arready),
        .I1(state[1]),
        .I2(asyncclear_mvalid_inst_0),
        .I3(out),
        .I4(\common.laguna_s_handshake_q ),
        .I5(state[0]),
        .O(m_valid_d));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    asyncclear_state0_inst
       (.C(aclk),
        .CE(1'b1),
        .CLR(\common.ACLEAR ),
        .D(asyncclear_state0_inst_i_1__2_n_0),
        .Q(state[0]));
  LUT6 #(
    .INIT(64'h00000000E4F4F4F4)) 
    asyncclear_state0_inst_i_1__2
       (.I0(state[1]),
        .I1(\common.laguna_s_handshake_q ),
        .I2(state[0]),
        .I3(asyncclear_mvalid_inst_0),
        .I4(m_axi_arready),
        .I5(out),
        .O(asyncclear_state0_inst_i_1__2_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    asyncclear_state1_inst
       (.C(aclk),
        .CE(1'b1),
        .CLR(\common.ACLEAR ),
        .D(asyncclear_state1_inst_i_1__2_n_0),
        .Q(state[1]));
  LUT6 #(
    .INIT(64'h00000000CC40C440)) 
    asyncclear_state1_inst_i_1__2
       (.I0(\common.pop__0 ),
        .I1(state[0]),
        .I2(\common.laguna_s_handshake_q ),
        .I3(state[1]),
        .I4(asyncclear_state1_inst_i_3__2_n_0),
        .I5(out),
        .O(asyncclear_state1_inst_i_1__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    asyncclear_state1_inst_i_2__2
       (.I0(m_axi_arready),
        .I1(asyncclear_mvalid_inst_0),
        .O(\common.pop__0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    asyncclear_state1_inst_i_3__2
       (.I0(fifoaddr_reg[2]),
        .I1(fifoaddr_reg[3]),
        .I2(fifoaddr_reg[0]),
        .I3(fifoaddr_reg[1]),
        .O(asyncclear_state1_inst_i_3__2_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    \common.laguna_s_ready_i_i_1__2 
       (.I0(m_axi_arready),
        .I1(asyncclear_mvalid_inst_0),
        .O(m_axi_arready_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \fifoaddr[0]_i_1__2 
       (.I0(fifoaddr_reg[0]),
        .O(\fifoaddr[0]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hA659)) 
    \fifoaddr[1]_i_1__2 
       (.I0(fifoaddr_reg[0]),
        .I1(\common.laguna_s_handshake_q ),
        .I2(\common.pop__0 ),
        .I3(fifoaddr_reg[1]),
        .O(\fifoaddr[1]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h78E1)) 
    \fifoaddr[2]_i_1__2 
       (.I0(fifoaddr_reg[0]),
        .I1(fifoaddr12_out),
        .I2(fifoaddr_reg[2]),
        .I3(fifoaddr_reg[1]),
        .O(\fifoaddr[2]_i_1__2_n_0 ));
  LUT5 #(
    .INIT(32'h0AAA8000)) 
    \fifoaddr[3]_i_1__2 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(asyncclear_mvalid_inst_0),
        .I3(m_axi_arready),
        .I4(\common.laguna_s_handshake_q ),
        .O(\fifoaddr[3]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7F80FE01)) 
    \fifoaddr[3]_i_2__2 
       (.I0(fifoaddr12_out),
        .I1(fifoaddr_reg[0]),
        .I2(fifoaddr_reg[1]),
        .I3(fifoaddr_reg[3]),
        .I4(fifoaddr_reg[2]),
        .O(\fifoaddr[3]_i_2__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0888)) 
    \fifoaddr[3]_i_3__3 
       (.I0(\common.laguna_s_handshake_q ),
        .I1(state[0]),
        .I2(asyncclear_mvalid_inst_0),
        .I3(m_axi_arready),
        .O(fifoaddr12_out));
  FDSE #(
    .INIT(1'b1)) 
    \fifoaddr_reg[0] 
       (.C(aclk),
        .CE(\fifoaddr[3]_i_1__2_n_0 ),
        .D(\fifoaddr[0]_i_1__2_n_0 ),
        .Q(fifoaddr_reg[0]),
        .S(out));
  FDSE #(
    .INIT(1'b1)) 
    \fifoaddr_reg[1] 
       (.C(aclk),
        .CE(\fifoaddr[3]_i_1__2_n_0 ),
        .D(\fifoaddr[1]_i_1__2_n_0 ),
        .Q(fifoaddr_reg[1]),
        .S(out));
  FDSE #(
    .INIT(1'b1)) 
    \fifoaddr_reg[2] 
       (.C(aclk),
        .CE(\fifoaddr[3]_i_1__2_n_0 ),
        .D(\fifoaddr[2]_i_1__2_n_0 ),
        .Q(fifoaddr_reg[2]),
        .S(out));
  FDSE #(
    .INIT(1'b1)) 
    \fifoaddr_reg[3] 
       (.C(aclk),
        .CE(\fifoaddr[3]_i_1__2_n_0 ),
        .D(\fifoaddr[3]_i_2__2_n_0 ),
        .Q(fifoaddr_reg[3]),
        .S(out));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[0]_i_1__2 
       (.I0(srl_reg[0]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[0]),
        .O(\mesg_reg[0]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[10]_i_1__1 
       (.I0(srl_reg[10]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[10]),
        .O(\mesg_reg[10]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[11]_i_1__1 
       (.I0(srl_reg[11]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[11]),
        .O(\mesg_reg[11]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[12]_i_1__1 
       (.I0(srl_reg[12]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[12]),
        .O(\mesg_reg[12]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[13]_i_1__1 
       (.I0(srl_reg[13]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[13]),
        .O(\mesg_reg[13]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[14]_i_1__1 
       (.I0(srl_reg[14]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[14]),
        .O(\mesg_reg[14]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[15]_i_1__1 
       (.I0(srl_reg[15]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[15]),
        .O(\mesg_reg[15]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[16]_i_1__1 
       (.I0(srl_reg[16]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[16]),
        .O(\mesg_reg[16]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[17]_i_1__1 
       (.I0(srl_reg[17]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[17]),
        .O(\mesg_reg[17]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[18]_i_1__1 
       (.I0(srl_reg[18]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[18]),
        .O(\mesg_reg[18]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[19]_i_1__1 
       (.I0(srl_reg[19]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[19]),
        .O(\mesg_reg[19]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[1]_i_1__2 
       (.I0(srl_reg[1]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[1]),
        .O(\mesg_reg[1]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[20]_i_1__1 
       (.I0(srl_reg[20]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[20]),
        .O(\mesg_reg[20]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[21]_i_1__1 
       (.I0(srl_reg[21]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[21]),
        .O(\mesg_reg[21]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[22]_i_1__1 
       (.I0(srl_reg[22]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[22]),
        .O(\mesg_reg[22]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[23]_i_1__1 
       (.I0(srl_reg[23]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[23]),
        .O(\mesg_reg[23]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h8F8F8F80)) 
    \mesg_reg[24]_i_1__0 
       (.I0(m_axi_arready),
        .I1(asyncclear_mvalid_inst_0),
        .I2(state[0]),
        .I3(state[1]),
        .I4(\common.laguna_s_handshake_q ),
        .O(load_mesg));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[24]_i_2__0 
       (.I0(srl_reg[24]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[24]),
        .O(\mesg_reg[24]_i_2__0_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[25]_i_1__1 
       (.I0(srl_reg[25]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[25]),
        .O(\mesg_reg[25]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[26]_i_1__1 
       (.I0(srl_reg[26]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[26]),
        .O(\mesg_reg[26]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[27]_i_1__1 
       (.I0(srl_reg[27]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[27]),
        .O(\mesg_reg[27]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[2]_i_1__1 
       (.I0(srl_reg[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[2]),
        .O(\mesg_reg[2]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[3]_i_1__1 
       (.I0(srl_reg[3]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[3]),
        .O(\mesg_reg[3]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[4]_i_1__1 
       (.I0(srl_reg[4]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[4]),
        .O(\mesg_reg[4]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[5]_i_1__1 
       (.I0(srl_reg[5]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[5]),
        .O(\mesg_reg[5]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[6]_i_1__1 
       (.I0(srl_reg[6]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[6]),
        .O(\mesg_reg[6]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[7]_i_1__1 
       (.I0(srl_reg[7]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[7]),
        .O(\mesg_reg[7]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[8]_i_1__1 
       (.I0(srl_reg[8]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[8]),
        .O(\mesg_reg[8]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[9]_i_1__1 
       (.I0(srl_reg[9]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[9]),
        .O(\mesg_reg[9]_i_1__1_n_0 ));
  FDRE \mesg_reg_reg[0] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[0]_i_1__2_n_0 ),
        .Q(\mesg_reg_reg[27]_0 [0]),
        .R(1'b0));
  FDRE \mesg_reg_reg[10] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[10]_i_1__1_n_0 ),
        .Q(\mesg_reg_reg[27]_0 [10]),
        .R(1'b0));
  FDRE \mesg_reg_reg[11] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[11]_i_1__1_n_0 ),
        .Q(\mesg_reg_reg[27]_0 [11]),
        .R(1'b0));
  FDRE \mesg_reg_reg[12] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[12]_i_1__1_n_0 ),
        .Q(\mesg_reg_reg[27]_0 [12]),
        .R(1'b0));
  FDRE \mesg_reg_reg[13] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[13]_i_1__1_n_0 ),
        .Q(\mesg_reg_reg[27]_0 [13]),
        .R(1'b0));
  FDRE \mesg_reg_reg[14] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[14]_i_1__1_n_0 ),
        .Q(\mesg_reg_reg[27]_0 [14]),
        .R(1'b0));
  FDRE \mesg_reg_reg[15] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[15]_i_1__1_n_0 ),
        .Q(\mesg_reg_reg[27]_0 [15]),
        .R(1'b0));
  FDRE \mesg_reg_reg[16] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[16]_i_1__1_n_0 ),
        .Q(\mesg_reg_reg[27]_0 [16]),
        .R(1'b0));
  FDRE \mesg_reg_reg[17] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[17]_i_1__1_n_0 ),
        .Q(\mesg_reg_reg[27]_0 [17]),
        .R(1'b0));
  FDRE \mesg_reg_reg[18] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[18]_i_1__1_n_0 ),
        .Q(\mesg_reg_reg[27]_0 [18]),
        .R(1'b0));
  FDRE \mesg_reg_reg[19] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[19]_i_1__1_n_0 ),
        .Q(\mesg_reg_reg[27]_0 [19]),
        .R(1'b0));
  FDRE \mesg_reg_reg[1] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[1]_i_1__2_n_0 ),
        .Q(\mesg_reg_reg[27]_0 [1]),
        .R(1'b0));
  FDRE \mesg_reg_reg[20] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[20]_i_1__1_n_0 ),
        .Q(\mesg_reg_reg[27]_0 [20]),
        .R(1'b0));
  FDRE \mesg_reg_reg[21] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[21]_i_1__1_n_0 ),
        .Q(\mesg_reg_reg[27]_0 [21]),
        .R(1'b0));
  FDRE \mesg_reg_reg[22] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[22]_i_1__1_n_0 ),
        .Q(\mesg_reg_reg[27]_0 [22]),
        .R(1'b0));
  FDRE \mesg_reg_reg[23] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[23]_i_1__1_n_0 ),
        .Q(\mesg_reg_reg[27]_0 [23]),
        .R(1'b0));
  FDRE \mesg_reg_reg[24] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[24]_i_2__0_n_0 ),
        .Q(\mesg_reg_reg[27]_0 [24]),
        .R(1'b0));
  FDRE \mesg_reg_reg[25] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[25]_i_1__1_n_0 ),
        .Q(\mesg_reg_reg[27]_0 [25]),
        .R(1'b0));
  FDRE \mesg_reg_reg[26] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[26]_i_1__1_n_0 ),
        .Q(\mesg_reg_reg[27]_0 [26]),
        .R(1'b0));
  FDRE \mesg_reg_reg[27] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[27]_i_1__1_n_0 ),
        .Q(\mesg_reg_reg[27]_0 [27]),
        .R(1'b0));
  FDRE \mesg_reg_reg[2] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[2]_i_1__1_n_0 ),
        .Q(\mesg_reg_reg[27]_0 [2]),
        .R(1'b0));
  FDRE \mesg_reg_reg[3] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[3]_i_1__1_n_0 ),
        .Q(\mesg_reg_reg[27]_0 [3]),
        .R(1'b0));
  FDRE \mesg_reg_reg[4] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[4]_i_1__1_n_0 ),
        .Q(\mesg_reg_reg[27]_0 [4]),
        .R(1'b0));
  FDRE \mesg_reg_reg[5] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[5]_i_1__1_n_0 ),
        .Q(\mesg_reg_reg[27]_0 [5]),
        .R(1'b0));
  FDRE \mesg_reg_reg[6] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[6]_i_1__1_n_0 ),
        .Q(\mesg_reg_reg[27]_0 [6]),
        .R(1'b0));
  FDRE \mesg_reg_reg[7] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[7]_i_1__1_n_0 ),
        .Q(\mesg_reg_reg[27]_0 [7]),
        .R(1'b0));
  FDRE \mesg_reg_reg[8] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[8]_i_1__1_n_0 ),
        .Q(\mesg_reg_reg[27]_0 [8]),
        .R(1'b0));
  FDRE \mesg_reg_reg[9] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[9]_i_1__1_n_0 ),
        .Q(\mesg_reg_reg[27]_0 [9]),
        .R(1'b0));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__2 \srl[0].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[0]),
        .q(srl_reg[0]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__12 \srl[10].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[10]),
        .q(srl_reg[10]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__13 \srl[11].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[11]),
        .q(srl_reg[11]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__14 \srl[12].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[12]),
        .q(srl_reg[12]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__15 \srl[13].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[13]),
        .q(srl_reg[13]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__16 \srl[14].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[14]),
        .q(srl_reg[14]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__17 \srl[15].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[15]),
        .q(srl_reg[15]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__18 \srl[16].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[16]),
        .q(srl_reg[16]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__19 \srl[17].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[17]),
        .q(srl_reg[17]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__20 \srl[18].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[18]),
        .q(srl_reg[18]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__21 \srl[19].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[19]),
        .q(srl_reg[19]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__3 \srl[1].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[1]),
        .q(srl_reg[1]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__22 \srl[20].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[20]),
        .q(srl_reg[20]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__23 \srl[21].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[21]),
        .q(srl_reg[21]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__24 \srl[22].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[22]),
        .q(srl_reg[22]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__25 \srl[23].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[23]),
        .q(srl_reg[23]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__26 \srl[24].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[24]),
        .q(srl_reg[24]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__27 \srl[25].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[25]),
        .q(srl_reg[25]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__28 \srl[26].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[26]),
        .q(srl_reg[26]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__29 \srl[27].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[27]),
        .q(srl_reg[27]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__4 \srl[2].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[2]),
        .q(srl_reg[2]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__5 \srl[3].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[3]),
        .q(srl_reg[3]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__6 \srl[4].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[4]),
        .q(srl_reg[4]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__7 \srl[5].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[5]),
        .q(srl_reg[5]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__8 \srl[6].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[6]),
        .q(srl_reg[6]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__9 \srl[7].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[7]),
        .q(srl_reg[7]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__10 \srl[8].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[8]),
        .q(srl_reg[8]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__11 \srl[9].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[9]),
        .q(srl_reg[9]));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_26_axic_reg_srl_fifo" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axic_reg_srl_fifo__parameterized0
   (asyncclear_mvalid_inst_0,
    m_axi_wready_0,
    \mesg_reg_reg[35]_0 ,
    aclk,
    \common.laguna_s_handshake_q ,
    Q,
    \common.ACLEAR ,
    m_axi_wready,
    out);
  output asyncclear_mvalid_inst_0;
  output m_axi_wready_0;
  output [35:0]\mesg_reg_reg[35]_0 ;
  input aclk;
  input \common.laguna_s_handshake_q ;
  input [35:0]Q;
  input \common.ACLEAR ;
  input m_axi_wready;
  input out;

  wire [35:0]Q;
  wire aclk;
  wire asyncclear_mvalid_inst_0;
  wire asyncclear_state0_inst_i_1__0_n_0;
  wire asyncclear_state1_inst_i_1__0_n_0;
  wire asyncclear_state1_inst_i_3__0_n_0;
  wire \common.ACLEAR ;
  wire \common.laguna_s_handshake_q ;
  wire \common.pop__0 ;
  wire fifoaddr12_out;
  wire \fifoaddr[0]_i_1__0_n_0 ;
  wire \fifoaddr[1]_i_1__0_n_0 ;
  wire \fifoaddr[2]_i_1__0_n_0 ;
  wire \fifoaddr[3]_i_1__0_n_0 ;
  wire \fifoaddr[3]_i_2__0_n_0 ;
  wire [3:0]fifoaddr_reg;
  wire load_mesg;
  wire m_axi_wready;
  wire m_axi_wready_0;
  wire m_valid_d;
  wire \mesg_reg[0]_i_1__1_n_0 ;
  wire \mesg_reg[10]_i_1__0_n_0 ;
  wire \mesg_reg[11]_i_1__0_n_0 ;
  wire \mesg_reg[12]_i_1__0_n_0 ;
  wire \mesg_reg[13]_i_1__0_n_0 ;
  wire \mesg_reg[14]_i_1__0_n_0 ;
  wire \mesg_reg[15]_i_1__0_n_0 ;
  wire \mesg_reg[16]_i_1__0_n_0 ;
  wire \mesg_reg[17]_i_1__0_n_0 ;
  wire \mesg_reg[18]_i_1__0_n_0 ;
  wire \mesg_reg[19]_i_1__0_n_0 ;
  wire \mesg_reg[1]_i_1__1_n_0 ;
  wire \mesg_reg[20]_i_1__0_n_0 ;
  wire \mesg_reg[21]_i_1__0_n_0 ;
  wire \mesg_reg[22]_i_1__0_n_0 ;
  wire \mesg_reg[23]_i_1__0_n_0 ;
  wire \mesg_reg[24]_i_1__1_n_0 ;
  wire \mesg_reg[25]_i_1__0_n_0 ;
  wire \mesg_reg[26]_i_1__0_n_0 ;
  wire \mesg_reg[27]_i_1__0_n_0 ;
  wire \mesg_reg[28]_i_1_n_0 ;
  wire \mesg_reg[29]_i_1_n_0 ;
  wire \mesg_reg[2]_i_1__0_n_0 ;
  wire \mesg_reg[30]_i_1_n_0 ;
  wire \mesg_reg[31]_i_2_n_0 ;
  wire \mesg_reg[32]_i_1_n_0 ;
  wire \mesg_reg[33]_i_1_n_0 ;
  wire \mesg_reg[34]_i_1_n_0 ;
  wire \mesg_reg[35]_i_1_n_0 ;
  wire \mesg_reg[3]_i_1__0_n_0 ;
  wire \mesg_reg[4]_i_1__0_n_0 ;
  wire \mesg_reg[5]_i_1__0_n_0 ;
  wire \mesg_reg[6]_i_1__0_n_0 ;
  wire \mesg_reg[7]_i_1__0_n_0 ;
  wire \mesg_reg[8]_i_1__0_n_0 ;
  wire \mesg_reg[9]_i_1__0_n_0 ;
  wire [35:0]\mesg_reg_reg[35]_0 ;
  wire out;
  wire [35:0]srl_reg;
  wire [1:0]state;

  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    asyncclear_mvalid_inst
       (.C(aclk),
        .CE(1'b1),
        .CLR(\common.ACLEAR ),
        .D(m_valid_d),
        .Q(asyncclear_mvalid_inst_0));
  LUT6 #(
    .INIT(64'hFFFFDFDF00C000F0)) 
    asyncclear_mvalid_inst_i_1__0
       (.I0(m_axi_wready),
        .I1(state[1]),
        .I2(asyncclear_mvalid_inst_0),
        .I3(out),
        .I4(\common.laguna_s_handshake_q ),
        .I5(state[0]),
        .O(m_valid_d));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    asyncclear_state0_inst
       (.C(aclk),
        .CE(1'b1),
        .CLR(\common.ACLEAR ),
        .D(asyncclear_state0_inst_i_1__0_n_0),
        .Q(state[0]));
  LUT6 #(
    .INIT(64'h00000000E4F4F4F4)) 
    asyncclear_state0_inst_i_1__0
       (.I0(state[1]),
        .I1(\common.laguna_s_handshake_q ),
        .I2(state[0]),
        .I3(asyncclear_mvalid_inst_0),
        .I4(m_axi_wready),
        .I5(out),
        .O(asyncclear_state0_inst_i_1__0_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    asyncclear_state1_inst
       (.C(aclk),
        .CE(1'b1),
        .CLR(\common.ACLEAR ),
        .D(asyncclear_state1_inst_i_1__0_n_0),
        .Q(state[1]));
  LUT6 #(
    .INIT(64'h00000000CC40C440)) 
    asyncclear_state1_inst_i_1__0
       (.I0(\common.pop__0 ),
        .I1(state[0]),
        .I2(\common.laguna_s_handshake_q ),
        .I3(state[1]),
        .I4(asyncclear_state1_inst_i_3__0_n_0),
        .I5(out),
        .O(asyncclear_state1_inst_i_1__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    asyncclear_state1_inst_i_2__0
       (.I0(m_axi_wready),
        .I1(asyncclear_mvalid_inst_0),
        .O(\common.pop__0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    asyncclear_state1_inst_i_3__0
       (.I0(fifoaddr_reg[2]),
        .I1(fifoaddr_reg[3]),
        .I2(fifoaddr_reg[0]),
        .I3(fifoaddr_reg[1]),
        .O(asyncclear_state1_inst_i_3__0_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    \common.laguna_s_ready_i_i_1__0 
       (.I0(m_axi_wready),
        .I1(asyncclear_mvalid_inst_0),
        .O(m_axi_wready_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \fifoaddr[0]_i_1__0 
       (.I0(fifoaddr_reg[0]),
        .O(\fifoaddr[0]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hA659)) 
    \fifoaddr[1]_i_1__0 
       (.I0(fifoaddr_reg[0]),
        .I1(\common.laguna_s_handshake_q ),
        .I2(\common.pop__0 ),
        .I3(fifoaddr_reg[1]),
        .O(\fifoaddr[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h78E1)) 
    \fifoaddr[2]_i_1__0 
       (.I0(fifoaddr_reg[0]),
        .I1(fifoaddr12_out),
        .I2(fifoaddr_reg[2]),
        .I3(fifoaddr_reg[1]),
        .O(\fifoaddr[2]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h0AAA8000)) 
    \fifoaddr[3]_i_1__0 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(asyncclear_mvalid_inst_0),
        .I3(m_axi_wready),
        .I4(\common.laguna_s_handshake_q ),
        .O(\fifoaddr[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h7F80FE01)) 
    \fifoaddr[3]_i_2__0 
       (.I0(fifoaddr12_out),
        .I1(fifoaddr_reg[0]),
        .I2(fifoaddr_reg[1]),
        .I3(fifoaddr_reg[3]),
        .I4(fifoaddr_reg[2]),
        .O(\fifoaddr[3]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0888)) 
    \fifoaddr[3]_i_3__2 
       (.I0(\common.laguna_s_handshake_q ),
        .I1(state[0]),
        .I2(asyncclear_mvalid_inst_0),
        .I3(m_axi_wready),
        .O(fifoaddr12_out));
  FDSE #(
    .INIT(1'b1)) 
    \fifoaddr_reg[0] 
       (.C(aclk),
        .CE(\fifoaddr[3]_i_1__0_n_0 ),
        .D(\fifoaddr[0]_i_1__0_n_0 ),
        .Q(fifoaddr_reg[0]),
        .S(out));
  FDSE #(
    .INIT(1'b1)) 
    \fifoaddr_reg[1] 
       (.C(aclk),
        .CE(\fifoaddr[3]_i_1__0_n_0 ),
        .D(\fifoaddr[1]_i_1__0_n_0 ),
        .Q(fifoaddr_reg[1]),
        .S(out));
  FDSE #(
    .INIT(1'b1)) 
    \fifoaddr_reg[2] 
       (.C(aclk),
        .CE(\fifoaddr[3]_i_1__0_n_0 ),
        .D(\fifoaddr[2]_i_1__0_n_0 ),
        .Q(fifoaddr_reg[2]),
        .S(out));
  FDSE #(
    .INIT(1'b1)) 
    \fifoaddr_reg[3] 
       (.C(aclk),
        .CE(\fifoaddr[3]_i_1__0_n_0 ),
        .D(\fifoaddr[3]_i_2__0_n_0 ),
        .Q(fifoaddr_reg[3]),
        .S(out));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[0]_i_1__1 
       (.I0(srl_reg[0]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[0]),
        .O(\mesg_reg[0]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[10]_i_1__0 
       (.I0(srl_reg[10]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[10]),
        .O(\mesg_reg[10]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[11]_i_1__0 
       (.I0(srl_reg[11]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[11]),
        .O(\mesg_reg[11]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[12]_i_1__0 
       (.I0(srl_reg[12]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[12]),
        .O(\mesg_reg[12]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[13]_i_1__0 
       (.I0(srl_reg[13]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[13]),
        .O(\mesg_reg[13]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[14]_i_1__0 
       (.I0(srl_reg[14]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[14]),
        .O(\mesg_reg[14]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[15]_i_1__0 
       (.I0(srl_reg[15]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[15]),
        .O(\mesg_reg[15]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[16]_i_1__0 
       (.I0(srl_reg[16]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[16]),
        .O(\mesg_reg[16]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[17]_i_1__0 
       (.I0(srl_reg[17]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[17]),
        .O(\mesg_reg[17]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[18]_i_1__0 
       (.I0(srl_reg[18]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[18]),
        .O(\mesg_reg[18]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[19]_i_1__0 
       (.I0(srl_reg[19]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[19]),
        .O(\mesg_reg[19]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[1]_i_1__1 
       (.I0(srl_reg[1]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[1]),
        .O(\mesg_reg[1]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[20]_i_1__0 
       (.I0(srl_reg[20]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[20]),
        .O(\mesg_reg[20]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[21]_i_1__0 
       (.I0(srl_reg[21]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[21]),
        .O(\mesg_reg[21]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[22]_i_1__0 
       (.I0(srl_reg[22]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[22]),
        .O(\mesg_reg[22]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[23]_i_1__0 
       (.I0(srl_reg[23]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[23]),
        .O(\mesg_reg[23]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[24]_i_1__1 
       (.I0(srl_reg[24]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[24]),
        .O(\mesg_reg[24]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[25]_i_1__0 
       (.I0(srl_reg[25]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[25]),
        .O(\mesg_reg[25]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[26]_i_1__0 
       (.I0(srl_reg[26]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[26]),
        .O(\mesg_reg[26]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[27]_i_1__0 
       (.I0(srl_reg[27]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[27]),
        .O(\mesg_reg[27]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[28]_i_1 
       (.I0(srl_reg[28]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[28]),
        .O(\mesg_reg[28]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[29]_i_1 
       (.I0(srl_reg[29]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[29]),
        .O(\mesg_reg[29]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[2]_i_1__0 
       (.I0(srl_reg[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[2]),
        .O(\mesg_reg[2]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[30]_i_1 
       (.I0(srl_reg[30]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[30]),
        .O(\mesg_reg[30]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h8F8F8F80)) 
    \mesg_reg[31]_i_1 
       (.I0(m_axi_wready),
        .I1(asyncclear_mvalid_inst_0),
        .I2(state[0]),
        .I3(state[1]),
        .I4(\common.laguna_s_handshake_q ),
        .O(load_mesg));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[31]_i_2 
       (.I0(srl_reg[31]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[31]),
        .O(\mesg_reg[31]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[32]_i_1 
       (.I0(srl_reg[32]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[32]),
        .O(\mesg_reg[32]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[33]_i_1 
       (.I0(srl_reg[33]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[33]),
        .O(\mesg_reg[33]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[34]_i_1 
       (.I0(srl_reg[34]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[34]),
        .O(\mesg_reg[34]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[35]_i_1 
       (.I0(srl_reg[35]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[35]),
        .O(\mesg_reg[35]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[3]_i_1__0 
       (.I0(srl_reg[3]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[3]),
        .O(\mesg_reg[3]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[4]_i_1__0 
       (.I0(srl_reg[4]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[4]),
        .O(\mesg_reg[4]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[5]_i_1__0 
       (.I0(srl_reg[5]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[5]),
        .O(\mesg_reg[5]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[6]_i_1__0 
       (.I0(srl_reg[6]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[6]),
        .O(\mesg_reg[6]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[7]_i_1__0 
       (.I0(srl_reg[7]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[7]),
        .O(\mesg_reg[7]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[8]_i_1__0 
       (.I0(srl_reg[8]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[8]),
        .O(\mesg_reg[8]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[9]_i_1__0 
       (.I0(srl_reg[9]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[9]),
        .O(\mesg_reg[9]_i_1__0_n_0 ));
  FDRE \mesg_reg_reg[0] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[0]_i_1__1_n_0 ),
        .Q(\mesg_reg_reg[35]_0 [0]),
        .R(1'b0));
  FDRE \mesg_reg_reg[10] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[10]_i_1__0_n_0 ),
        .Q(\mesg_reg_reg[35]_0 [10]),
        .R(1'b0));
  FDRE \mesg_reg_reg[11] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[11]_i_1__0_n_0 ),
        .Q(\mesg_reg_reg[35]_0 [11]),
        .R(1'b0));
  FDRE \mesg_reg_reg[12] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[12]_i_1__0_n_0 ),
        .Q(\mesg_reg_reg[35]_0 [12]),
        .R(1'b0));
  FDRE \mesg_reg_reg[13] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[13]_i_1__0_n_0 ),
        .Q(\mesg_reg_reg[35]_0 [13]),
        .R(1'b0));
  FDRE \mesg_reg_reg[14] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[14]_i_1__0_n_0 ),
        .Q(\mesg_reg_reg[35]_0 [14]),
        .R(1'b0));
  FDRE \mesg_reg_reg[15] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[15]_i_1__0_n_0 ),
        .Q(\mesg_reg_reg[35]_0 [15]),
        .R(1'b0));
  FDRE \mesg_reg_reg[16] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[16]_i_1__0_n_0 ),
        .Q(\mesg_reg_reg[35]_0 [16]),
        .R(1'b0));
  FDRE \mesg_reg_reg[17] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[17]_i_1__0_n_0 ),
        .Q(\mesg_reg_reg[35]_0 [17]),
        .R(1'b0));
  FDRE \mesg_reg_reg[18] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[18]_i_1__0_n_0 ),
        .Q(\mesg_reg_reg[35]_0 [18]),
        .R(1'b0));
  FDRE \mesg_reg_reg[19] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[19]_i_1__0_n_0 ),
        .Q(\mesg_reg_reg[35]_0 [19]),
        .R(1'b0));
  FDRE \mesg_reg_reg[1] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[1]_i_1__1_n_0 ),
        .Q(\mesg_reg_reg[35]_0 [1]),
        .R(1'b0));
  FDRE \mesg_reg_reg[20] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[20]_i_1__0_n_0 ),
        .Q(\mesg_reg_reg[35]_0 [20]),
        .R(1'b0));
  FDRE \mesg_reg_reg[21] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[21]_i_1__0_n_0 ),
        .Q(\mesg_reg_reg[35]_0 [21]),
        .R(1'b0));
  FDRE \mesg_reg_reg[22] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[22]_i_1__0_n_0 ),
        .Q(\mesg_reg_reg[35]_0 [22]),
        .R(1'b0));
  FDRE \mesg_reg_reg[23] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[23]_i_1__0_n_0 ),
        .Q(\mesg_reg_reg[35]_0 [23]),
        .R(1'b0));
  FDRE \mesg_reg_reg[24] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[24]_i_1__1_n_0 ),
        .Q(\mesg_reg_reg[35]_0 [24]),
        .R(1'b0));
  FDRE \mesg_reg_reg[25] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[25]_i_1__0_n_0 ),
        .Q(\mesg_reg_reg[35]_0 [25]),
        .R(1'b0));
  FDRE \mesg_reg_reg[26] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[26]_i_1__0_n_0 ),
        .Q(\mesg_reg_reg[35]_0 [26]),
        .R(1'b0));
  FDRE \mesg_reg_reg[27] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[27]_i_1__0_n_0 ),
        .Q(\mesg_reg_reg[35]_0 [27]),
        .R(1'b0));
  FDRE \mesg_reg_reg[28] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[28]_i_1_n_0 ),
        .Q(\mesg_reg_reg[35]_0 [28]),
        .R(1'b0));
  FDRE \mesg_reg_reg[29] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[29]_i_1_n_0 ),
        .Q(\mesg_reg_reg[35]_0 [29]),
        .R(1'b0));
  FDRE \mesg_reg_reg[2] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[2]_i_1__0_n_0 ),
        .Q(\mesg_reg_reg[35]_0 [2]),
        .R(1'b0));
  FDRE \mesg_reg_reg[30] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[30]_i_1_n_0 ),
        .Q(\mesg_reg_reg[35]_0 [30]),
        .R(1'b0));
  FDRE \mesg_reg_reg[31] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[31]_i_2_n_0 ),
        .Q(\mesg_reg_reg[35]_0 [31]),
        .R(1'b0));
  FDRE \mesg_reg_reg[32] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[32]_i_1_n_0 ),
        .Q(\mesg_reg_reg[35]_0 [32]),
        .R(1'b0));
  FDRE \mesg_reg_reg[33] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[33]_i_1_n_0 ),
        .Q(\mesg_reg_reg[35]_0 [33]),
        .R(1'b0));
  FDRE \mesg_reg_reg[34] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[34]_i_1_n_0 ),
        .Q(\mesg_reg_reg[35]_0 [34]),
        .R(1'b0));
  FDRE \mesg_reg_reg[35] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[35]_i_1_n_0 ),
        .Q(\mesg_reg_reg[35]_0 [35]),
        .R(1'b0));
  FDRE \mesg_reg_reg[3] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[3]_i_1__0_n_0 ),
        .Q(\mesg_reg_reg[35]_0 [3]),
        .R(1'b0));
  FDRE \mesg_reg_reg[4] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[4]_i_1__0_n_0 ),
        .Q(\mesg_reg_reg[35]_0 [4]),
        .R(1'b0));
  FDRE \mesg_reg_reg[5] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[5]_i_1__0_n_0 ),
        .Q(\mesg_reg_reg[35]_0 [5]),
        .R(1'b0));
  FDRE \mesg_reg_reg[6] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[6]_i_1__0_n_0 ),
        .Q(\mesg_reg_reg[35]_0 [6]),
        .R(1'b0));
  FDRE \mesg_reg_reg[7] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[7]_i_1__0_n_0 ),
        .Q(\mesg_reg_reg[35]_0 [7]),
        .R(1'b0));
  FDRE \mesg_reg_reg[8] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[8]_i_1__0_n_0 ),
        .Q(\mesg_reg_reg[35]_0 [8]),
        .R(1'b0));
  FDRE \mesg_reg_reg[9] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[9]_i_1__0_n_0 ),
        .Q(\mesg_reg_reg[35]_0 [9]),
        .R(1'b0));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__30 \srl[0].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[0]),
        .q(srl_reg[0]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__40 \srl[10].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[10]),
        .q(srl_reg[10]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__41 \srl[11].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[11]),
        .q(srl_reg[11]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__42 \srl[12].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[12]),
        .q(srl_reg[12]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__43 \srl[13].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[13]),
        .q(srl_reg[13]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__44 \srl[14].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[14]),
        .q(srl_reg[14]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__45 \srl[15].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[15]),
        .q(srl_reg[15]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__46 \srl[16].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[16]),
        .q(srl_reg[16]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__47 \srl[17].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[17]),
        .q(srl_reg[17]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__48 \srl[18].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[18]),
        .q(srl_reg[18]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__49 \srl[19].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[19]),
        .q(srl_reg[19]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__31 \srl[1].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[1]),
        .q(srl_reg[1]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__50 \srl[20].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[20]),
        .q(srl_reg[20]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__51 \srl[21].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[21]),
        .q(srl_reg[21]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__52 \srl[22].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[22]),
        .q(srl_reg[22]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__53 \srl[23].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[23]),
        .q(srl_reg[23]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__54 \srl[24].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[24]),
        .q(srl_reg[24]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__55 \srl[25].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[25]),
        .q(srl_reg[25]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__56 \srl[26].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[26]),
        .q(srl_reg[26]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__57 \srl[27].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[27]),
        .q(srl_reg[27]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__58 \srl[28].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[28]),
        .q(srl_reg[28]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__59 \srl[29].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[29]),
        .q(srl_reg[29]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__32 \srl[2].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[2]),
        .q(srl_reg[2]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__60 \srl[30].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[30]),
        .q(srl_reg[30]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__61 \srl[31].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[31]),
        .q(srl_reg[31]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__62 \srl[32].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[32]),
        .q(srl_reg[32]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__63 \srl[33].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[33]),
        .q(srl_reg[33]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__64 \srl[34].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[34]),
        .q(srl_reg[34]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__65 \srl[35].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[35]),
        .q(srl_reg[35]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__33 \srl[3].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[3]),
        .q(srl_reg[3]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__34 \srl[4].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[4]),
        .q(srl_reg[4]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__35 \srl[5].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[5]),
        .q(srl_reg[5]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__36 \srl[6].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[6]),
        .q(srl_reg[6]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__37 \srl[7].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[7]),
        .q(srl_reg[7]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__38 \srl[8].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[8]),
        .q(srl_reg[8]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__39 \srl[9].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[9]),
        .q(srl_reg[9]));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_26_axic_reg_srl_fifo" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axic_reg_srl_fifo__parameterized1
   (asyncclear_mvalid_inst_0,
    s_axi_bready_0,
    s_axi_bresp,
    aclk,
    \common.laguna_s_handshake_q ,
    Q,
    \common.ACLEAR ,
    s_axi_bready,
    out);
  output asyncclear_mvalid_inst_0;
  output s_axi_bready_0;
  output [1:0]s_axi_bresp;
  input aclk;
  input \common.laguna_s_handshake_q ;
  input [1:0]Q;
  input \common.ACLEAR ;
  input s_axi_bready;
  input out;

  wire [1:0]Q;
  wire aclk;
  wire asyncclear_mvalid_inst_0;
  wire asyncclear_state0_inst_i_1__1_n_0;
  wire asyncclear_state1_inst_i_1__1_n_0;
  wire asyncclear_state1_inst_i_3__1_n_0;
  wire \common.ACLEAR ;
  wire \common.laguna_s_handshake_q ;
  wire \common.pop__0 ;
  wire fifoaddr12_out;
  wire \fifoaddr[0]_i_1__1_n_0 ;
  wire \fifoaddr[1]_i_1__1_n_0 ;
  wire \fifoaddr[2]_i_1__1_n_0 ;
  wire \fifoaddr[3]_i_1__1_n_0 ;
  wire \fifoaddr[3]_i_2__1_n_0 ;
  wire [3:0]fifoaddr_reg;
  wire load_mesg;
  wire m_valid_d;
  wire \mesg_reg[0]_i_1_n_0 ;
  wire \mesg_reg[1]_i_2_n_0 ;
  wire out;
  wire s_axi_bready;
  wire s_axi_bready_0;
  wire [1:0]s_axi_bresp;
  wire [1:0]srl_reg;
  wire [1:0]state;

  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    asyncclear_mvalid_inst
       (.C(aclk),
        .CE(1'b1),
        .CLR(\common.ACLEAR ),
        .D(m_valid_d),
        .Q(asyncclear_mvalid_inst_0));
  LUT6 #(
    .INIT(64'hFFFFDFDF00C000F0)) 
    asyncclear_mvalid_inst_i_1__1
       (.I0(s_axi_bready),
        .I1(state[1]),
        .I2(asyncclear_mvalid_inst_0),
        .I3(out),
        .I4(\common.laguna_s_handshake_q ),
        .I5(state[0]),
        .O(m_valid_d));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    asyncclear_state0_inst
       (.C(aclk),
        .CE(1'b1),
        .CLR(\common.ACLEAR ),
        .D(asyncclear_state0_inst_i_1__1_n_0),
        .Q(state[0]));
  LUT6 #(
    .INIT(64'h00000000E4F4F4F4)) 
    asyncclear_state0_inst_i_1__1
       (.I0(state[1]),
        .I1(\common.laguna_s_handshake_q ),
        .I2(state[0]),
        .I3(asyncclear_mvalid_inst_0),
        .I4(s_axi_bready),
        .I5(out),
        .O(asyncclear_state0_inst_i_1__1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    asyncclear_state1_inst
       (.C(aclk),
        .CE(1'b1),
        .CLR(\common.ACLEAR ),
        .D(asyncclear_state1_inst_i_1__1_n_0),
        .Q(state[1]));
  LUT6 #(
    .INIT(64'h00000000CC40C440)) 
    asyncclear_state1_inst_i_1__1
       (.I0(\common.pop__0 ),
        .I1(state[0]),
        .I2(\common.laguna_s_handshake_q ),
        .I3(state[1]),
        .I4(asyncclear_state1_inst_i_3__1_n_0),
        .I5(out),
        .O(asyncclear_state1_inst_i_1__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    asyncclear_state1_inst_i_2__1
       (.I0(s_axi_bready),
        .I1(asyncclear_mvalid_inst_0),
        .O(\common.pop__0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    asyncclear_state1_inst_i_3__1
       (.I0(fifoaddr_reg[2]),
        .I1(fifoaddr_reg[3]),
        .I2(fifoaddr_reg[0]),
        .I3(fifoaddr_reg[1]),
        .O(asyncclear_state1_inst_i_3__1_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    \common.laguna_s_ready_i_i_1__1 
       (.I0(s_axi_bready),
        .I1(asyncclear_mvalid_inst_0),
        .O(s_axi_bready_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \fifoaddr[0]_i_1__1 
       (.I0(fifoaddr_reg[0]),
        .O(\fifoaddr[0]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hA659)) 
    \fifoaddr[1]_i_1__1 
       (.I0(fifoaddr_reg[0]),
        .I1(\common.laguna_s_handshake_q ),
        .I2(\common.pop__0 ),
        .I3(fifoaddr_reg[1]),
        .O(\fifoaddr[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h78E1)) 
    \fifoaddr[2]_i_1__1 
       (.I0(fifoaddr_reg[0]),
        .I1(fifoaddr12_out),
        .I2(fifoaddr_reg[2]),
        .I3(fifoaddr_reg[1]),
        .O(\fifoaddr[2]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h0AAA8000)) 
    \fifoaddr[3]_i_1__1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(asyncclear_mvalid_inst_0),
        .I3(s_axi_bready),
        .I4(\common.laguna_s_handshake_q ),
        .O(\fifoaddr[3]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h7F80FE01)) 
    \fifoaddr[3]_i_2__1 
       (.I0(fifoaddr12_out),
        .I1(fifoaddr_reg[0]),
        .I2(fifoaddr_reg[1]),
        .I3(fifoaddr_reg[3]),
        .I4(fifoaddr_reg[2]),
        .O(\fifoaddr[3]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0888)) 
    \fifoaddr[3]_i_3 
       (.I0(\common.laguna_s_handshake_q ),
        .I1(state[0]),
        .I2(asyncclear_mvalid_inst_0),
        .I3(s_axi_bready),
        .O(fifoaddr12_out));
  FDSE #(
    .INIT(1'b1)) 
    \fifoaddr_reg[0] 
       (.C(aclk),
        .CE(\fifoaddr[3]_i_1__1_n_0 ),
        .D(\fifoaddr[0]_i_1__1_n_0 ),
        .Q(fifoaddr_reg[0]),
        .S(out));
  FDSE #(
    .INIT(1'b1)) 
    \fifoaddr_reg[1] 
       (.C(aclk),
        .CE(\fifoaddr[3]_i_1__1_n_0 ),
        .D(\fifoaddr[1]_i_1__1_n_0 ),
        .Q(fifoaddr_reg[1]),
        .S(out));
  FDSE #(
    .INIT(1'b1)) 
    \fifoaddr_reg[2] 
       (.C(aclk),
        .CE(\fifoaddr[3]_i_1__1_n_0 ),
        .D(\fifoaddr[2]_i_1__1_n_0 ),
        .Q(fifoaddr_reg[2]),
        .S(out));
  FDSE #(
    .INIT(1'b1)) 
    \fifoaddr_reg[3] 
       (.C(aclk),
        .CE(\fifoaddr[3]_i_1__1_n_0 ),
        .D(\fifoaddr[3]_i_2__1_n_0 ),
        .Q(fifoaddr_reg[3]),
        .S(out));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[0]_i_1 
       (.I0(srl_reg[0]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[0]),
        .O(\mesg_reg[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h8F8F8F80)) 
    \mesg_reg[1]_i_1 
       (.I0(s_axi_bready),
        .I1(asyncclear_mvalid_inst_0),
        .I2(state[0]),
        .I3(state[1]),
        .I4(\common.laguna_s_handshake_q ),
        .O(load_mesg));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[1]_i_2 
       (.I0(srl_reg[1]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[1]),
        .O(\mesg_reg[1]_i_2_n_0 ));
  FDRE \mesg_reg_reg[0] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[0]_i_1_n_0 ),
        .Q(s_axi_bresp[0]),
        .R(1'b0));
  FDRE \mesg_reg_reg[1] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[1]_i_2_n_0 ),
        .Q(s_axi_bresp[1]),
        .R(1'b0));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__66 \srl[0].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[0]),
        .q(srl_reg[0]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__67 \srl[1].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[1]),
        .q(srl_reg[1]));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_26_axic_reg_srl_fifo" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axic_reg_srl_fifo__parameterized2
   (asyncclear_mvalid_inst_0,
    aresetn_0,
    s_axi_rready_0,
    \mesg_reg_reg[33]_0 ,
    aclk,
    \common.laguna_s_handshake_q ,
    Q,
    s_axi_rready,
    out,
    aresetn);
  output asyncclear_mvalid_inst_0;
  output aresetn_0;
  output s_axi_rready_0;
  output [33:0]\mesg_reg_reg[33]_0 ;
  input aclk;
  input \common.laguna_s_handshake_q ;
  input [33:0]Q;
  input s_axi_rready;
  input out;
  input aresetn;

  wire [33:0]Q;
  wire aclk;
  wire aresetn;
  wire aresetn_0;
  wire asyncclear_mvalid_inst_0;
  wire asyncclear_state0_inst_i_1__3_n_0;
  wire asyncclear_state1_inst_i_1__3_n_0;
  wire asyncclear_state1_inst_i_3__3_n_0;
  wire \common.laguna_s_handshake_q ;
  wire \common.pop__0 ;
  wire fifoaddr12_out;
  wire \fifoaddr[0]_i_1__3_n_0 ;
  wire \fifoaddr[1]_i_1__3_n_0 ;
  wire \fifoaddr[2]_i_1__3_n_0 ;
  wire \fifoaddr[3]_i_1__3_n_0 ;
  wire \fifoaddr[3]_i_2__3_n_0 ;
  wire [3:0]fifoaddr_reg;
  wire load_mesg;
  wire m_valid_d;
  wire \mesg_reg[0]_i_1__3_n_0 ;
  wire \mesg_reg[10]_i_1__2_n_0 ;
  wire \mesg_reg[11]_i_1__2_n_0 ;
  wire \mesg_reg[12]_i_1__2_n_0 ;
  wire \mesg_reg[13]_i_1__2_n_0 ;
  wire \mesg_reg[14]_i_1__2_n_0 ;
  wire \mesg_reg[15]_i_1__2_n_0 ;
  wire \mesg_reg[16]_i_1__2_n_0 ;
  wire \mesg_reg[17]_i_1__2_n_0 ;
  wire \mesg_reg[18]_i_1__2_n_0 ;
  wire \mesg_reg[19]_i_1__2_n_0 ;
  wire \mesg_reg[1]_i_1__3_n_0 ;
  wire \mesg_reg[20]_i_1__2_n_0 ;
  wire \mesg_reg[21]_i_1__2_n_0 ;
  wire \mesg_reg[22]_i_1__2_n_0 ;
  wire \mesg_reg[23]_i_1__2_n_0 ;
  wire \mesg_reg[24]_i_1__2_n_0 ;
  wire \mesg_reg[25]_i_1__2_n_0 ;
  wire \mesg_reg[26]_i_1__2_n_0 ;
  wire \mesg_reg[27]_i_1__2_n_0 ;
  wire \mesg_reg[28]_i_1__0_n_0 ;
  wire \mesg_reg[29]_i_1__0_n_0 ;
  wire \mesg_reg[2]_i_1__2_n_0 ;
  wire \mesg_reg[30]_i_1__0_n_0 ;
  wire \mesg_reg[31]_i_2__0_n_0 ;
  wire \mesg_reg[32]_i_1__0_n_0 ;
  wire \mesg_reg[33]_i_1__0_n_0 ;
  wire \mesg_reg[3]_i_1__2_n_0 ;
  wire \mesg_reg[4]_i_1__2_n_0 ;
  wire \mesg_reg[5]_i_1__2_n_0 ;
  wire \mesg_reg[6]_i_1__2_n_0 ;
  wire \mesg_reg[7]_i_1__2_n_0 ;
  wire \mesg_reg[8]_i_1__2_n_0 ;
  wire \mesg_reg[9]_i_1__2_n_0 ;
  wire [33:0]\mesg_reg_reg[33]_0 ;
  wire out;
  wire s_axi_rready;
  wire s_axi_rready_0;
  wire [33:0]srl_reg;
  wire [1:0]state;

  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    asyncclear_mvalid_inst
       (.C(aclk),
        .CE(1'b1),
        .CLR(aresetn_0),
        .D(m_valid_d),
        .Q(asyncclear_mvalid_inst_0));
  LUT6 #(
    .INIT(64'hFFFFDFDF00C000F0)) 
    asyncclear_mvalid_inst_i_1__3
       (.I0(s_axi_rready),
        .I1(state[1]),
        .I2(asyncclear_mvalid_inst_0),
        .I3(out),
        .I4(\common.laguna_s_handshake_q ),
        .I5(state[0]),
        .O(m_valid_d));
  LUT1 #(
    .INIT(2'h1)) 
    asyncclear_mvalid_inst_i_2
       (.I0(aresetn),
        .O(aresetn_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    asyncclear_state0_inst
       (.C(aclk),
        .CE(1'b1),
        .CLR(aresetn_0),
        .D(asyncclear_state0_inst_i_1__3_n_0),
        .Q(state[0]));
  LUT6 #(
    .INIT(64'h00000000E4F4F4F4)) 
    asyncclear_state0_inst_i_1__3
       (.I0(state[1]),
        .I1(\common.laguna_s_handshake_q ),
        .I2(state[0]),
        .I3(asyncclear_mvalid_inst_0),
        .I4(s_axi_rready),
        .I5(out),
        .O(asyncclear_state0_inst_i_1__3_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    asyncclear_state1_inst
       (.C(aclk),
        .CE(1'b1),
        .CLR(aresetn_0),
        .D(asyncclear_state1_inst_i_1__3_n_0),
        .Q(state[1]));
  LUT6 #(
    .INIT(64'h00000000CC40C440)) 
    asyncclear_state1_inst_i_1__3
       (.I0(\common.pop__0 ),
        .I1(state[0]),
        .I2(\common.laguna_s_handshake_q ),
        .I3(state[1]),
        .I4(asyncclear_state1_inst_i_3__3_n_0),
        .I5(out),
        .O(asyncclear_state1_inst_i_1__3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    asyncclear_state1_inst_i_2__3
       (.I0(s_axi_rready),
        .I1(asyncclear_mvalid_inst_0),
        .O(\common.pop__0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    asyncclear_state1_inst_i_3__3
       (.I0(fifoaddr_reg[2]),
        .I1(fifoaddr_reg[3]),
        .I2(fifoaddr_reg[0]),
        .I3(fifoaddr_reg[1]),
        .O(asyncclear_state1_inst_i_3__3_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    \common.laguna_s_ready_i_i_1__3 
       (.I0(s_axi_rready),
        .I1(asyncclear_mvalid_inst_0),
        .O(s_axi_rready_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \fifoaddr[0]_i_1__3 
       (.I0(fifoaddr_reg[0]),
        .O(\fifoaddr[0]_i_1__3_n_0 ));
  LUT4 #(
    .INIT(16'hA659)) 
    \fifoaddr[1]_i_1__3 
       (.I0(fifoaddr_reg[0]),
        .I1(\common.laguna_s_handshake_q ),
        .I2(\common.pop__0 ),
        .I3(fifoaddr_reg[1]),
        .O(\fifoaddr[1]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h78E1)) 
    \fifoaddr[2]_i_1__3 
       (.I0(fifoaddr_reg[0]),
        .I1(fifoaddr12_out),
        .I2(fifoaddr_reg[2]),
        .I3(fifoaddr_reg[1]),
        .O(\fifoaddr[2]_i_1__3_n_0 ));
  LUT5 #(
    .INIT(32'h0AAA8000)) 
    \fifoaddr[3]_i_1__3 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(asyncclear_mvalid_inst_0),
        .I3(s_axi_rready),
        .I4(\common.laguna_s_handshake_q ),
        .O(\fifoaddr[3]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h7F80FE01)) 
    \fifoaddr[3]_i_2__3 
       (.I0(fifoaddr12_out),
        .I1(fifoaddr_reg[0]),
        .I2(fifoaddr_reg[1]),
        .I3(fifoaddr_reg[3]),
        .I4(fifoaddr_reg[2]),
        .O(\fifoaddr[3]_i_2__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0888)) 
    \fifoaddr[3]_i_3__0 
       (.I0(\common.laguna_s_handshake_q ),
        .I1(state[0]),
        .I2(asyncclear_mvalid_inst_0),
        .I3(s_axi_rready),
        .O(fifoaddr12_out));
  FDSE #(
    .INIT(1'b1)) 
    \fifoaddr_reg[0] 
       (.C(aclk),
        .CE(\fifoaddr[3]_i_1__3_n_0 ),
        .D(\fifoaddr[0]_i_1__3_n_0 ),
        .Q(fifoaddr_reg[0]),
        .S(out));
  FDSE #(
    .INIT(1'b1)) 
    \fifoaddr_reg[1] 
       (.C(aclk),
        .CE(\fifoaddr[3]_i_1__3_n_0 ),
        .D(\fifoaddr[1]_i_1__3_n_0 ),
        .Q(fifoaddr_reg[1]),
        .S(out));
  FDSE #(
    .INIT(1'b1)) 
    \fifoaddr_reg[2] 
       (.C(aclk),
        .CE(\fifoaddr[3]_i_1__3_n_0 ),
        .D(\fifoaddr[2]_i_1__3_n_0 ),
        .Q(fifoaddr_reg[2]),
        .S(out));
  FDSE #(
    .INIT(1'b1)) 
    \fifoaddr_reg[3] 
       (.C(aclk),
        .CE(\fifoaddr[3]_i_1__3_n_0 ),
        .D(\fifoaddr[3]_i_2__3_n_0 ),
        .Q(fifoaddr_reg[3]),
        .S(out));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[0]_i_1__3 
       (.I0(srl_reg[0]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[0]),
        .O(\mesg_reg[0]_i_1__3_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[10]_i_1__2 
       (.I0(srl_reg[10]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[10]),
        .O(\mesg_reg[10]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[11]_i_1__2 
       (.I0(srl_reg[11]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[11]),
        .O(\mesg_reg[11]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[12]_i_1__2 
       (.I0(srl_reg[12]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[12]),
        .O(\mesg_reg[12]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[13]_i_1__2 
       (.I0(srl_reg[13]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[13]),
        .O(\mesg_reg[13]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[14]_i_1__2 
       (.I0(srl_reg[14]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[14]),
        .O(\mesg_reg[14]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[15]_i_1__2 
       (.I0(srl_reg[15]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[15]),
        .O(\mesg_reg[15]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[16]_i_1__2 
       (.I0(srl_reg[16]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[16]),
        .O(\mesg_reg[16]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[17]_i_1__2 
       (.I0(srl_reg[17]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[17]),
        .O(\mesg_reg[17]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[18]_i_1__2 
       (.I0(srl_reg[18]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[18]),
        .O(\mesg_reg[18]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[19]_i_1__2 
       (.I0(srl_reg[19]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[19]),
        .O(\mesg_reg[19]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[1]_i_1__3 
       (.I0(srl_reg[1]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[1]),
        .O(\mesg_reg[1]_i_1__3_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[20]_i_1__2 
       (.I0(srl_reg[20]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[20]),
        .O(\mesg_reg[20]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[21]_i_1__2 
       (.I0(srl_reg[21]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[21]),
        .O(\mesg_reg[21]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[22]_i_1__2 
       (.I0(srl_reg[22]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[22]),
        .O(\mesg_reg[22]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[23]_i_1__2 
       (.I0(srl_reg[23]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[23]),
        .O(\mesg_reg[23]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[24]_i_1__2 
       (.I0(srl_reg[24]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[24]),
        .O(\mesg_reg[24]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[25]_i_1__2 
       (.I0(srl_reg[25]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[25]),
        .O(\mesg_reg[25]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[26]_i_1__2 
       (.I0(srl_reg[26]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[26]),
        .O(\mesg_reg[26]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[27]_i_1__2 
       (.I0(srl_reg[27]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[27]),
        .O(\mesg_reg[27]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[28]_i_1__0 
       (.I0(srl_reg[28]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[28]),
        .O(\mesg_reg[28]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[29]_i_1__0 
       (.I0(srl_reg[29]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[29]),
        .O(\mesg_reg[29]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[2]_i_1__2 
       (.I0(srl_reg[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[2]),
        .O(\mesg_reg[2]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[30]_i_1__0 
       (.I0(srl_reg[30]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[30]),
        .O(\mesg_reg[30]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h8F8F8F80)) 
    \mesg_reg[31]_i_1__0 
       (.I0(s_axi_rready),
        .I1(asyncclear_mvalid_inst_0),
        .I2(state[0]),
        .I3(state[1]),
        .I4(\common.laguna_s_handshake_q ),
        .O(load_mesg));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[31]_i_2__0 
       (.I0(srl_reg[31]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[31]),
        .O(\mesg_reg[31]_i_2__0_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[32]_i_1__0 
       (.I0(srl_reg[32]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[32]),
        .O(\mesg_reg[32]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[33]_i_1__0 
       (.I0(srl_reg[33]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[33]),
        .O(\mesg_reg[33]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[3]_i_1__2 
       (.I0(srl_reg[3]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[3]),
        .O(\mesg_reg[3]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[4]_i_1__2 
       (.I0(srl_reg[4]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[4]),
        .O(\mesg_reg[4]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[5]_i_1__2 
       (.I0(srl_reg[5]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[5]),
        .O(\mesg_reg[5]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[6]_i_1__2 
       (.I0(srl_reg[6]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[6]),
        .O(\mesg_reg[6]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[7]_i_1__2 
       (.I0(srl_reg[7]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[7]),
        .O(\mesg_reg[7]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[8]_i_1__2 
       (.I0(srl_reg[8]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[8]),
        .O(\mesg_reg[8]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \mesg_reg[9]_i_1__2 
       (.I0(srl_reg[9]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(Q[9]),
        .O(\mesg_reg[9]_i_1__2_n_0 ));
  FDRE \mesg_reg_reg[0] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[0]_i_1__3_n_0 ),
        .Q(\mesg_reg_reg[33]_0 [0]),
        .R(1'b0));
  FDRE \mesg_reg_reg[10] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[10]_i_1__2_n_0 ),
        .Q(\mesg_reg_reg[33]_0 [10]),
        .R(1'b0));
  FDRE \mesg_reg_reg[11] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[11]_i_1__2_n_0 ),
        .Q(\mesg_reg_reg[33]_0 [11]),
        .R(1'b0));
  FDRE \mesg_reg_reg[12] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[12]_i_1__2_n_0 ),
        .Q(\mesg_reg_reg[33]_0 [12]),
        .R(1'b0));
  FDRE \mesg_reg_reg[13] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[13]_i_1__2_n_0 ),
        .Q(\mesg_reg_reg[33]_0 [13]),
        .R(1'b0));
  FDRE \mesg_reg_reg[14] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[14]_i_1__2_n_0 ),
        .Q(\mesg_reg_reg[33]_0 [14]),
        .R(1'b0));
  FDRE \mesg_reg_reg[15] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[15]_i_1__2_n_0 ),
        .Q(\mesg_reg_reg[33]_0 [15]),
        .R(1'b0));
  FDRE \mesg_reg_reg[16] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[16]_i_1__2_n_0 ),
        .Q(\mesg_reg_reg[33]_0 [16]),
        .R(1'b0));
  FDRE \mesg_reg_reg[17] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[17]_i_1__2_n_0 ),
        .Q(\mesg_reg_reg[33]_0 [17]),
        .R(1'b0));
  FDRE \mesg_reg_reg[18] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[18]_i_1__2_n_0 ),
        .Q(\mesg_reg_reg[33]_0 [18]),
        .R(1'b0));
  FDRE \mesg_reg_reg[19] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[19]_i_1__2_n_0 ),
        .Q(\mesg_reg_reg[33]_0 [19]),
        .R(1'b0));
  FDRE \mesg_reg_reg[1] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[1]_i_1__3_n_0 ),
        .Q(\mesg_reg_reg[33]_0 [1]),
        .R(1'b0));
  FDRE \mesg_reg_reg[20] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[20]_i_1__2_n_0 ),
        .Q(\mesg_reg_reg[33]_0 [20]),
        .R(1'b0));
  FDRE \mesg_reg_reg[21] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[21]_i_1__2_n_0 ),
        .Q(\mesg_reg_reg[33]_0 [21]),
        .R(1'b0));
  FDRE \mesg_reg_reg[22] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[22]_i_1__2_n_0 ),
        .Q(\mesg_reg_reg[33]_0 [22]),
        .R(1'b0));
  FDRE \mesg_reg_reg[23] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[23]_i_1__2_n_0 ),
        .Q(\mesg_reg_reg[33]_0 [23]),
        .R(1'b0));
  FDRE \mesg_reg_reg[24] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[24]_i_1__2_n_0 ),
        .Q(\mesg_reg_reg[33]_0 [24]),
        .R(1'b0));
  FDRE \mesg_reg_reg[25] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[25]_i_1__2_n_0 ),
        .Q(\mesg_reg_reg[33]_0 [25]),
        .R(1'b0));
  FDRE \mesg_reg_reg[26] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[26]_i_1__2_n_0 ),
        .Q(\mesg_reg_reg[33]_0 [26]),
        .R(1'b0));
  FDRE \mesg_reg_reg[27] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[27]_i_1__2_n_0 ),
        .Q(\mesg_reg_reg[33]_0 [27]),
        .R(1'b0));
  FDRE \mesg_reg_reg[28] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[28]_i_1__0_n_0 ),
        .Q(\mesg_reg_reg[33]_0 [28]),
        .R(1'b0));
  FDRE \mesg_reg_reg[29] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[29]_i_1__0_n_0 ),
        .Q(\mesg_reg_reg[33]_0 [29]),
        .R(1'b0));
  FDRE \mesg_reg_reg[2] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[2]_i_1__2_n_0 ),
        .Q(\mesg_reg_reg[33]_0 [2]),
        .R(1'b0));
  FDRE \mesg_reg_reg[30] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[30]_i_1__0_n_0 ),
        .Q(\mesg_reg_reg[33]_0 [30]),
        .R(1'b0));
  FDRE \mesg_reg_reg[31] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[31]_i_2__0_n_0 ),
        .Q(\mesg_reg_reg[33]_0 [31]),
        .R(1'b0));
  FDRE \mesg_reg_reg[32] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[32]_i_1__0_n_0 ),
        .Q(\mesg_reg_reg[33]_0 [32]),
        .R(1'b0));
  FDRE \mesg_reg_reg[33] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[33]_i_1__0_n_0 ),
        .Q(\mesg_reg_reg[33]_0 [33]),
        .R(1'b0));
  FDRE \mesg_reg_reg[3] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[3]_i_1__2_n_0 ),
        .Q(\mesg_reg_reg[33]_0 [3]),
        .R(1'b0));
  FDRE \mesg_reg_reg[4] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[4]_i_1__2_n_0 ),
        .Q(\mesg_reg_reg[33]_0 [4]),
        .R(1'b0));
  FDRE \mesg_reg_reg[5] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[5]_i_1__2_n_0 ),
        .Q(\mesg_reg_reg[33]_0 [5]),
        .R(1'b0));
  FDRE \mesg_reg_reg[6] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[6]_i_1__2_n_0 ),
        .Q(\mesg_reg_reg[33]_0 [6]),
        .R(1'b0));
  FDRE \mesg_reg_reg[7] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[7]_i_1__2_n_0 ),
        .Q(\mesg_reg_reg[33]_0 [7]),
        .R(1'b0));
  FDRE \mesg_reg_reg[8] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[8]_i_1__2_n_0 ),
        .Q(\mesg_reg_reg[33]_0 [8]),
        .R(1'b0));
  FDRE \mesg_reg_reg[9] 
       (.C(aclk),
        .CE(load_mesg),
        .D(\mesg_reg[9]_i_1__2_n_0 ),
        .Q(\mesg_reg_reg[33]_0 [9]),
        .R(1'b0));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__68 \srl[0].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[0]),
        .q(srl_reg[0]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__78 \srl[10].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[10]),
        .q(srl_reg[10]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__79 \srl[11].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[11]),
        .q(srl_reg[11]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__80 \srl[12].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[12]),
        .q(srl_reg[12]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__81 \srl[13].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[13]),
        .q(srl_reg[13]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__82 \srl[14].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[14]),
        .q(srl_reg[14]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__83 \srl[15].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[15]),
        .q(srl_reg[15]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__84 \srl[16].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[16]),
        .q(srl_reg[16]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__85 \srl[17].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[17]),
        .q(srl_reg[17]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__86 \srl[18].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[18]),
        .q(srl_reg[18]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__87 \srl[19].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[19]),
        .q(srl_reg[19]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__69 \srl[1].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[1]),
        .q(srl_reg[1]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__88 \srl[20].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[20]),
        .q(srl_reg[20]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__89 \srl[21].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[21]),
        .q(srl_reg[21]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__90 \srl[22].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[22]),
        .q(srl_reg[22]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__91 \srl[23].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[23]),
        .q(srl_reg[23]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__92 \srl[24].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[24]),
        .q(srl_reg[24]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__93 \srl[25].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[25]),
        .q(srl_reg[25]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__94 \srl[26].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[26]),
        .q(srl_reg[26]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__95 \srl[27].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[27]),
        .q(srl_reg[27]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__96 \srl[28].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[28]),
        .q(srl_reg[28]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__97 \srl[29].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[29]),
        .q(srl_reg[29]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__70 \srl[2].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[2]),
        .q(srl_reg[2]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__98 \srl[30].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[30]),
        .q(srl_reg[30]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__99 \srl[31].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[31]),
        .q(srl_reg[31]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__100 \srl[32].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[32]),
        .q(srl_reg[32]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl \srl[33].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[33]),
        .q(srl_reg[33]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__71 \srl[3].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[3]),
        .q(srl_reg[3]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__72 \srl[4].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[4]),
        .q(srl_reg[4]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__73 \srl[5].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[5]),
        .q(srl_reg[5]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__74 \srl[6].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[6]),
        .q(srl_reg[6]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__75 \srl[7].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[7]),
        .q(srl_reg[7]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__76 \srl[8].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[8]),
        .q(srl_reg[8]));
  (* C_A_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* P_SRLDEPTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__77 \srl[9].srl_nx1 
       (.a(fifoaddr_reg),
        .ce(\common.laguna_s_handshake_q ),
        .clk(aclk),
        .d(Q[9]),
        .q(srl_reg[9]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_dest_region_slr
   (asyncclear_mvalid_inst,
    out,
    \common.laguna_s_ready_i_reg_0 ,
    Q,
    aclk,
    \common.ACLEAR ,
    \dual_slr.src_handshake ,
    \common.laguna_s_reset_in_d_reg_0 ,
    m_axi_awready,
    D);
  output asyncclear_mvalid_inst;
  output out;
  output \common.laguna_s_ready_i_reg_0 ;
  output [27:0]Q;
  input aclk;
  input \common.ACLEAR ;
  input \dual_slr.src_handshake ;
  input \common.laguna_s_reset_in_d_reg_0 ;
  input m_axi_awready;
  input [27:0]D;

  wire [27:0]D;
  wire [27:0]Q;
  wire aclk;
  wire asyncclear_mvalid_inst;
  wire \common.ACLEAR ;
  (* RTL_KEEP = "true" *) wire \common.areset_d ;
  (* RTL_KEEP = "true" *) wire \common.aresetn_d ;
  wire \common.laguna_s_handshake_q ;
  wire [27:0]\common.laguna_s_payload_d ;
  (* RTL_KEEP = "true" *) (* USER_SLL_REG = "true" *) wire \common.laguna_s_ready_i ;
  (* RTL_KEEP = "true" *) (* USER_SLL_REG = "true" *) wire \common.laguna_s_reset_in_d ;
  wire \common.laguna_s_reset_in_d_reg_0 ;
  (* RTL_KEEP = "true" *) (* USER_SLL_REG = "true" *) wire \common.laguna_s_reset_out_i ;
  (* RTL_KEEP = "true" *) wire \common.ready_d ;
  wire \common.srl_fifo_0_n_1 ;
  wire \dual_slr.src_handshake ;
  wire m_axi_awready;

  assign \common.laguna_s_ready_i_reg_0  = \common.laguna_s_ready_i ;
  assign out = \common.laguna_s_reset_out_i ;
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.areset_d_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.laguna_s_reset_in_d ),
        .Q(\common.areset_d ),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \common.aresetn_d_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(1'b1),
        .Q(\common.aresetn_d ),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* USER_SLL_REG *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \common.laguna_s_handshake_asyncclear_inst 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\common.ACLEAR ),
        .D(\dual_slr.src_handshake ),
        .Q(\common.laguna_s_handshake_q ));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[0]),
        .Q(\common.laguna_s_payload_d [0]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[10]),
        .Q(\common.laguna_s_payload_d [10]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[11]),
        .Q(\common.laguna_s_payload_d [11]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[12]),
        .Q(\common.laguna_s_payload_d [12]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[13]),
        .Q(\common.laguna_s_payload_d [13]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[14]),
        .Q(\common.laguna_s_payload_d [14]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[15]),
        .Q(\common.laguna_s_payload_d [15]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[16]),
        .Q(\common.laguna_s_payload_d [16]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[17] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[17]),
        .Q(\common.laguna_s_payload_d [17]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[18] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[18]),
        .Q(\common.laguna_s_payload_d [18]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[19] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[19]),
        .Q(\common.laguna_s_payload_d [19]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[1]),
        .Q(\common.laguna_s_payload_d [1]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[20] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[20]),
        .Q(\common.laguna_s_payload_d [20]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[21] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[21]),
        .Q(\common.laguna_s_payload_d [21]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[22] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[22]),
        .Q(\common.laguna_s_payload_d [22]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[23] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[23]),
        .Q(\common.laguna_s_payload_d [23]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[24] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[24]),
        .Q(\common.laguna_s_payload_d [24]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[25] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[25]),
        .Q(\common.laguna_s_payload_d [25]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[26] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[26]),
        .Q(\common.laguna_s_payload_d [26]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[27] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[27]),
        .Q(\common.laguna_s_payload_d [27]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[2]),
        .Q(\common.laguna_s_payload_d [2]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[3]),
        .Q(\common.laguna_s_payload_d [3]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[4]),
        .Q(\common.laguna_s_payload_d [4]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[5]),
        .Q(\common.laguna_s_payload_d [5]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[6]),
        .Q(\common.laguna_s_payload_d [6]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[7]),
        .Q(\common.laguna_s_payload_d [7]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[8]),
        .Q(\common.laguna_s_payload_d [8]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[9]),
        .Q(\common.laguna_s_payload_d [9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* USER_SLL_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.laguna_s_ready_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.srl_fifo_0_n_1 ),
        .Q(\common.laguna_s_ready_i ),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* USER_SLL_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.laguna_s_reset_in_d_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.laguna_s_reset_in_d_reg_0 ),
        .Q(\common.laguna_s_reset_in_d ),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* USER_SLL_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.laguna_s_reset_out_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_d ),
        .Q(\common.laguna_s_reset_out_i ),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.ready_d_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.srl_fifo_0_n_1 ),
        .Q(\common.ready_d ),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axic_reg_srl_fifo \common.srl_fifo_0 
       (.Q(\common.laguna_s_payload_d ),
        .aclk(aclk),
        .asyncclear_mvalid_inst_0(asyncclear_mvalid_inst),
        .\common.ACLEAR (\common.ACLEAR ),
        .\common.laguna_s_handshake_q (\common.laguna_s_handshake_q ),
        .m_axi_awready(m_axi_awready),
        .m_axi_awready_0(\common.srl_fifo_0_n_1 ),
        .\mesg_reg_reg[27]_0 (Q),
        .out(\common.areset_d ));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_26_dest_region_slr" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_dest_region_slr_2
   (asyncclear_mvalid_inst,
    out,
    \common.laguna_s_ready_i_reg_0 ,
    Q,
    aclk,
    \common.ACLEAR ,
    \dual_slr.src_handshake ,
    \common.laguna_s_reset_in_d_reg_0 ,
    m_axi_arready,
    D);
  output asyncclear_mvalid_inst;
  output out;
  output \common.laguna_s_ready_i_reg_0 ;
  output [27:0]Q;
  input aclk;
  input \common.ACLEAR ;
  input \dual_slr.src_handshake ;
  input \common.laguna_s_reset_in_d_reg_0 ;
  input m_axi_arready;
  input [27:0]D;

  wire [27:0]D;
  wire [27:0]Q;
  wire aclk;
  wire asyncclear_mvalid_inst;
  wire \common.ACLEAR ;
  (* RTL_KEEP = "true" *) wire \common.areset_d ;
  (* RTL_KEEP = "true" *) wire \common.aresetn_d ;
  wire \common.laguna_s_handshake_q ;
  wire [27:0]\common.laguna_s_payload_d ;
  (* RTL_KEEP = "true" *) (* USER_SLL_REG = "true" *) wire \common.laguna_s_ready_i ;
  (* RTL_KEEP = "true" *) (* USER_SLL_REG = "true" *) wire \common.laguna_s_reset_in_d ;
  wire \common.laguna_s_reset_in_d_reg_0 ;
  (* RTL_KEEP = "true" *) (* USER_SLL_REG = "true" *) wire \common.laguna_s_reset_out_i ;
  (* RTL_KEEP = "true" *) wire \common.ready_d ;
  wire \common.srl_fifo_0_n_1 ;
  wire \dual_slr.src_handshake ;
  wire m_axi_arready;

  assign \common.laguna_s_ready_i_reg_0  = \common.laguna_s_ready_i ;
  assign out = \common.laguna_s_reset_out_i ;
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.areset_d_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.laguna_s_reset_in_d ),
        .Q(\common.areset_d ),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \common.aresetn_d_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(1'b1),
        .Q(\common.aresetn_d ),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* USER_SLL_REG *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \common.laguna_s_handshake_asyncclear_inst 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\common.ACLEAR ),
        .D(\dual_slr.src_handshake ),
        .Q(\common.laguna_s_handshake_q ));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[0]),
        .Q(\common.laguna_s_payload_d [0]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[10]),
        .Q(\common.laguna_s_payload_d [10]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[11]),
        .Q(\common.laguna_s_payload_d [11]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[12]),
        .Q(\common.laguna_s_payload_d [12]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[13]),
        .Q(\common.laguna_s_payload_d [13]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[14]),
        .Q(\common.laguna_s_payload_d [14]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[15]),
        .Q(\common.laguna_s_payload_d [15]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[16]),
        .Q(\common.laguna_s_payload_d [16]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[17] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[17]),
        .Q(\common.laguna_s_payload_d [17]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[18] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[18]),
        .Q(\common.laguna_s_payload_d [18]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[19] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[19]),
        .Q(\common.laguna_s_payload_d [19]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[1]),
        .Q(\common.laguna_s_payload_d [1]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[20] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[20]),
        .Q(\common.laguna_s_payload_d [20]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[21] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[21]),
        .Q(\common.laguna_s_payload_d [21]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[22] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[22]),
        .Q(\common.laguna_s_payload_d [22]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[23] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[23]),
        .Q(\common.laguna_s_payload_d [23]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[24] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[24]),
        .Q(\common.laguna_s_payload_d [24]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[25] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[25]),
        .Q(\common.laguna_s_payload_d [25]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[26] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[26]),
        .Q(\common.laguna_s_payload_d [26]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[27] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[27]),
        .Q(\common.laguna_s_payload_d [27]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[2]),
        .Q(\common.laguna_s_payload_d [2]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[3]),
        .Q(\common.laguna_s_payload_d [3]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[4]),
        .Q(\common.laguna_s_payload_d [4]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[5]),
        .Q(\common.laguna_s_payload_d [5]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[6]),
        .Q(\common.laguna_s_payload_d [6]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[7]),
        .Q(\common.laguna_s_payload_d [7]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[8]),
        .Q(\common.laguna_s_payload_d [8]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[9]),
        .Q(\common.laguna_s_payload_d [9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* USER_SLL_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.laguna_s_ready_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.srl_fifo_0_n_1 ),
        .Q(\common.laguna_s_ready_i ),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* USER_SLL_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.laguna_s_reset_in_d_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.laguna_s_reset_in_d_reg_0 ),
        .Q(\common.laguna_s_reset_in_d ),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* USER_SLL_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.laguna_s_reset_out_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_d ),
        .Q(\common.laguna_s_reset_out_i ),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.ready_d_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.srl_fifo_0_n_1 ),
        .Q(\common.ready_d ),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axic_reg_srl_fifo_3 \common.srl_fifo_0 
       (.Q(\common.laguna_s_payload_d ),
        .aclk(aclk),
        .asyncclear_mvalid_inst_0(asyncclear_mvalid_inst),
        .\common.ACLEAR (\common.ACLEAR ),
        .\common.laguna_s_handshake_q (\common.laguna_s_handshake_q ),
        .m_axi_arready(m_axi_arready),
        .m_axi_arready_0(\common.srl_fifo_0_n_1 ),
        .\mesg_reg_reg[27]_0 (Q),
        .out(\common.areset_d ));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_26_dest_region_slr" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_dest_region_slr__parameterized0
   (asyncclear_mvalid_inst,
    out,
    \common.laguna_s_ready_i_reg_0 ,
    Q,
    aclk,
    \common.ACLEAR ,
    \dual_slr.src_handshake ,
    \common.laguna_s_reset_in_d_reg_0 ,
    m_axi_wready,
    D);
  output asyncclear_mvalid_inst;
  output out;
  output \common.laguna_s_ready_i_reg_0 ;
  output [35:0]Q;
  input aclk;
  input \common.ACLEAR ;
  input \dual_slr.src_handshake ;
  input \common.laguna_s_reset_in_d_reg_0 ;
  input m_axi_wready;
  input [35:0]D;

  wire [35:0]D;
  wire [35:0]Q;
  wire aclk;
  wire asyncclear_mvalid_inst;
  wire \common.ACLEAR ;
  (* RTL_KEEP = "true" *) wire \common.areset_d ;
  (* RTL_KEEP = "true" *) wire \common.aresetn_d ;
  wire \common.laguna_s_handshake_q ;
  wire [35:0]\common.laguna_s_payload_d ;
  (* RTL_KEEP = "true" *) (* USER_SLL_REG = "true" *) wire \common.laguna_s_ready_i ;
  (* RTL_KEEP = "true" *) (* USER_SLL_REG = "true" *) wire \common.laguna_s_reset_in_d ;
  wire \common.laguna_s_reset_in_d_reg_0 ;
  (* RTL_KEEP = "true" *) (* USER_SLL_REG = "true" *) wire \common.laguna_s_reset_out_i ;
  (* RTL_KEEP = "true" *) wire \common.ready_d ;
  wire \common.srl_fifo_0_n_1 ;
  wire \dual_slr.src_handshake ;
  wire m_axi_wready;

  assign \common.laguna_s_ready_i_reg_0  = \common.laguna_s_ready_i ;
  assign out = \common.laguna_s_reset_out_i ;
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.areset_d_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.laguna_s_reset_in_d ),
        .Q(\common.areset_d ),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \common.aresetn_d_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(1'b1),
        .Q(\common.aresetn_d ),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* USER_SLL_REG *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \common.laguna_s_handshake_asyncclear_inst 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\common.ACLEAR ),
        .D(\dual_slr.src_handshake ),
        .Q(\common.laguna_s_handshake_q ));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[0]),
        .Q(\common.laguna_s_payload_d [0]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[10]),
        .Q(\common.laguna_s_payload_d [10]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[11]),
        .Q(\common.laguna_s_payload_d [11]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[12]),
        .Q(\common.laguna_s_payload_d [12]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[13]),
        .Q(\common.laguna_s_payload_d [13]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[14]),
        .Q(\common.laguna_s_payload_d [14]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[15]),
        .Q(\common.laguna_s_payload_d [15]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[16]),
        .Q(\common.laguna_s_payload_d [16]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[17] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[17]),
        .Q(\common.laguna_s_payload_d [17]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[18] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[18]),
        .Q(\common.laguna_s_payload_d [18]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[19] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[19]),
        .Q(\common.laguna_s_payload_d [19]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[1]),
        .Q(\common.laguna_s_payload_d [1]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[20] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[20]),
        .Q(\common.laguna_s_payload_d [20]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[21] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[21]),
        .Q(\common.laguna_s_payload_d [21]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[22] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[22]),
        .Q(\common.laguna_s_payload_d [22]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[23] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[23]),
        .Q(\common.laguna_s_payload_d [23]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[24] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[24]),
        .Q(\common.laguna_s_payload_d [24]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[25] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[25]),
        .Q(\common.laguna_s_payload_d [25]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[26] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[26]),
        .Q(\common.laguna_s_payload_d [26]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[27] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[27]),
        .Q(\common.laguna_s_payload_d [27]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[28] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[28]),
        .Q(\common.laguna_s_payload_d [28]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[29] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[29]),
        .Q(\common.laguna_s_payload_d [29]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[2]),
        .Q(\common.laguna_s_payload_d [2]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[30] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[30]),
        .Q(\common.laguna_s_payload_d [30]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[31] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[31]),
        .Q(\common.laguna_s_payload_d [31]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[32] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[32]),
        .Q(\common.laguna_s_payload_d [32]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[33] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[33]),
        .Q(\common.laguna_s_payload_d [33]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[34] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[34]),
        .Q(\common.laguna_s_payload_d [34]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[35] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[35]),
        .Q(\common.laguna_s_payload_d [35]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[3]),
        .Q(\common.laguna_s_payload_d [3]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[4]),
        .Q(\common.laguna_s_payload_d [4]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[5]),
        .Q(\common.laguna_s_payload_d [5]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[6]),
        .Q(\common.laguna_s_payload_d [6]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[7]),
        .Q(\common.laguna_s_payload_d [7]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[8]),
        .Q(\common.laguna_s_payload_d [8]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[9]),
        .Q(\common.laguna_s_payload_d [9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* USER_SLL_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.laguna_s_ready_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.srl_fifo_0_n_1 ),
        .Q(\common.laguna_s_ready_i ),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* USER_SLL_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.laguna_s_reset_in_d_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.laguna_s_reset_in_d_reg_0 ),
        .Q(\common.laguna_s_reset_in_d ),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* USER_SLL_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.laguna_s_reset_out_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_d ),
        .Q(\common.laguna_s_reset_out_i ),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.ready_d_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.srl_fifo_0_n_1 ),
        .Q(\common.ready_d ),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axic_reg_srl_fifo__parameterized0 \common.srl_fifo_0 
       (.Q(\common.laguna_s_payload_d ),
        .aclk(aclk),
        .asyncclear_mvalid_inst_0(asyncclear_mvalid_inst),
        .\common.ACLEAR (\common.ACLEAR ),
        .\common.laguna_s_handshake_q (\common.laguna_s_handshake_q ),
        .m_axi_wready(m_axi_wready),
        .m_axi_wready_0(\common.srl_fifo_0_n_1 ),
        .\mesg_reg_reg[35]_0 (Q),
        .out(\common.areset_d ));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_26_dest_region_slr" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_dest_region_slr__parameterized1
   (asyncclear_mvalid_inst,
    out,
    \common.laguna_s_ready_i_reg_0 ,
    s_axi_bresp,
    aclk,
    \common.ACLEAR ,
    \dual_slr.src_handshake ,
    aresetn,
    \common.laguna_s_reset_in_d_reg_0 ,
    s_axi_bready,
    Q);
  output asyncclear_mvalid_inst;
  output out;
  output \common.laguna_s_ready_i_reg_0 ;
  output [1:0]s_axi_bresp;
  input aclk;
  input \common.ACLEAR ;
  input \dual_slr.src_handshake ;
  input aresetn;
  input \common.laguna_s_reset_in_d_reg_0 ;
  input s_axi_bready;
  input [1:0]Q;

  wire [1:0]Q;
  wire aclk;
  wire aresetn;
  wire asyncclear_mvalid_inst;
  wire \common.ACLEAR ;
  (* RTL_KEEP = "true" *) wire \common.areset_d ;
  wire [15:0]\common.areset_dly ;
  wire \common.areset_dly[0]_i_1__1_n_0 ;
  (* RTL_KEEP = "true" *) wire \common.aresetn_d ;
  wire \common.laguna_s_handshake_q ;
  wire [1:0]\common.laguna_s_payload_d ;
  (* RTL_KEEP = "true" *) (* USER_SLL_REG = "true" *) wire \common.laguna_s_ready_i ;
  (* RTL_KEEP = "true" *) (* USER_SLL_REG = "true" *) wire \common.laguna_s_reset_in_d ;
  wire \common.laguna_s_reset_in_d_reg_0 ;
  (* RTL_KEEP = "true" *) (* USER_SLL_REG = "true" *) wire \common.laguna_s_reset_out_i ;
  (* RTL_KEEP = "true" *) wire \common.ready_d ;
  wire \common.srl_fifo_0_n_1 ;
  wire \dual_slr.src_handshake ;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;

  assign \common.laguna_s_ready_i_reg_0  = \common.laguna_s_ready_i ;
  assign out = \common.laguna_s_reset_out_i ;
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.areset_d_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_dly [15]),
        .Q(\common.areset_d ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \common.areset_dly[0]_i_1__1 
       (.I0(\common.aresetn_d ),
        .O(\common.areset_dly[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \common.areset_dly_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_dly[0]_i_1__1_n_0 ),
        .Q(\common.areset_dly [0]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \common.areset_dly_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_dly [9]),
        .Q(\common.areset_dly [10]),
        .S(\common.areset_dly[0]_i_1__1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \common.areset_dly_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_dly [10]),
        .Q(\common.areset_dly [11]),
        .S(\common.areset_dly[0]_i_1__1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \common.areset_dly_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_dly [11]),
        .Q(\common.areset_dly [12]),
        .S(\common.areset_dly[0]_i_1__1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \common.areset_dly_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_dly [12]),
        .Q(\common.areset_dly [13]),
        .S(\common.areset_dly[0]_i_1__1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \common.areset_dly_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_dly [13]),
        .Q(\common.areset_dly [14]),
        .S(\common.areset_dly[0]_i_1__1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \common.areset_dly_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_dly [14]),
        .Q(\common.areset_dly [15]),
        .S(\common.areset_dly[0]_i_1__1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \common.areset_dly_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_dly [0]),
        .Q(\common.areset_dly [1]),
        .S(\common.areset_dly[0]_i_1__1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \common.areset_dly_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_dly [1]),
        .Q(\common.areset_dly [2]),
        .S(\common.areset_dly[0]_i_1__1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \common.areset_dly_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_dly [2]),
        .Q(\common.areset_dly [3]),
        .S(\common.areset_dly[0]_i_1__1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \common.areset_dly_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_dly [3]),
        .Q(\common.areset_dly [4]),
        .S(\common.areset_dly[0]_i_1__1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \common.areset_dly_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_dly [4]),
        .Q(\common.areset_dly [5]),
        .S(\common.areset_dly[0]_i_1__1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \common.areset_dly_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_dly [5]),
        .Q(\common.areset_dly [6]),
        .S(\common.areset_dly[0]_i_1__1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \common.areset_dly_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_dly [6]),
        .Q(\common.areset_dly [7]),
        .S(\common.areset_dly[0]_i_1__1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \common.areset_dly_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_dly [7]),
        .Q(\common.areset_dly [8]),
        .S(\common.areset_dly[0]_i_1__1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \common.areset_dly_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_dly [8]),
        .Q(\common.areset_dly [9]),
        .S(\common.areset_dly[0]_i_1__1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \common.aresetn_d_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(aresetn),
        .Q(\common.aresetn_d ),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* USER_SLL_REG *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \common.laguna_s_handshake_asyncclear_inst 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\common.ACLEAR ),
        .D(\dual_slr.src_handshake ),
        .Q(\common.laguna_s_handshake_q ));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[0]),
        .Q(\common.laguna_s_payload_d [0]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[1]),
        .Q(\common.laguna_s_payload_d [1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* USER_SLL_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.laguna_s_ready_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.srl_fifo_0_n_1 ),
        .Q(\common.laguna_s_ready_i ),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* USER_SLL_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.laguna_s_reset_in_d_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.laguna_s_reset_in_d_reg_0 ),
        .Q(\common.laguna_s_reset_in_d ),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* USER_SLL_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.laguna_s_reset_out_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_d ),
        .Q(\common.laguna_s_reset_out_i ),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.ready_d_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.srl_fifo_0_n_1 ),
        .Q(\common.ready_d ),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axic_reg_srl_fifo__parameterized1 \common.srl_fifo_0 
       (.Q(\common.laguna_s_payload_d ),
        .aclk(aclk),
        .asyncclear_mvalid_inst_0(asyncclear_mvalid_inst),
        .\common.ACLEAR (\common.ACLEAR ),
        .\common.laguna_s_handshake_q (\common.laguna_s_handshake_q ),
        .out(\common.areset_d ),
        .s_axi_bready(s_axi_bready),
        .s_axi_bready_0(\common.srl_fifo_0_n_1 ),
        .s_axi_bresp(s_axi_bresp));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_26_dest_region_slr" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_dest_region_slr__parameterized2
   (asyncclear_mvalid_inst,
    aresetn_0,
    out,
    \common.laguna_s_ready_i_reg_0 ,
    \mesg_reg_reg[33] ,
    aclk,
    \dual_slr.src_handshake ,
    aresetn,
    \common.laguna_s_reset_in_d_reg_0 ,
    s_axi_rready,
    Q);
  output asyncclear_mvalid_inst;
  output aresetn_0;
  output out;
  output \common.laguna_s_ready_i_reg_0 ;
  output [33:0]\mesg_reg_reg[33] ;
  input aclk;
  input \dual_slr.src_handshake ;
  input aresetn;
  input \common.laguna_s_reset_in_d_reg_0 ;
  input s_axi_rready;
  input [33:0]Q;

  wire [33:0]Q;
  wire aclk;
  wire aresetn;
  wire aresetn_0;
  wire asyncclear_mvalid_inst;
  (* RTL_KEEP = "true" *) wire \common.areset_d ;
  wire [15:0]\common.areset_dly ;
  wire \common.areset_dly[0]_i_1__3_n_0 ;
  (* RTL_KEEP = "true" *) wire \common.aresetn_d ;
  wire \common.laguna_s_handshake_q ;
  wire [33:0]\common.laguna_s_payload_d ;
  (* RTL_KEEP = "true" *) (* USER_SLL_REG = "true" *) wire \common.laguna_s_ready_i ;
  (* RTL_KEEP = "true" *) (* USER_SLL_REG = "true" *) wire \common.laguna_s_reset_in_d ;
  wire \common.laguna_s_reset_in_d_reg_0 ;
  (* RTL_KEEP = "true" *) (* USER_SLL_REG = "true" *) wire \common.laguna_s_reset_out_i ;
  (* RTL_KEEP = "true" *) wire \common.ready_d ;
  wire \common.srl_fifo_0_n_2 ;
  wire \dual_slr.src_handshake ;
  wire [33:0]\mesg_reg_reg[33] ;
  wire s_axi_rready;

  assign \common.laguna_s_ready_i_reg_0  = \common.laguna_s_ready_i ;
  assign out = \common.laguna_s_reset_out_i ;
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.areset_d_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_dly [15]),
        .Q(\common.areset_d ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \common.areset_dly[0]_i_1__3 
       (.I0(\common.aresetn_d ),
        .O(\common.areset_dly[0]_i_1__3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \common.areset_dly_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_dly[0]_i_1__3_n_0 ),
        .Q(\common.areset_dly [0]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \common.areset_dly_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_dly [9]),
        .Q(\common.areset_dly [10]),
        .S(\common.areset_dly[0]_i_1__3_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \common.areset_dly_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_dly [10]),
        .Q(\common.areset_dly [11]),
        .S(\common.areset_dly[0]_i_1__3_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \common.areset_dly_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_dly [11]),
        .Q(\common.areset_dly [12]),
        .S(\common.areset_dly[0]_i_1__3_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \common.areset_dly_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_dly [12]),
        .Q(\common.areset_dly [13]),
        .S(\common.areset_dly[0]_i_1__3_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \common.areset_dly_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_dly [13]),
        .Q(\common.areset_dly [14]),
        .S(\common.areset_dly[0]_i_1__3_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \common.areset_dly_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_dly [14]),
        .Q(\common.areset_dly [15]),
        .S(\common.areset_dly[0]_i_1__3_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \common.areset_dly_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_dly [0]),
        .Q(\common.areset_dly [1]),
        .S(\common.areset_dly[0]_i_1__3_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \common.areset_dly_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_dly [1]),
        .Q(\common.areset_dly [2]),
        .S(\common.areset_dly[0]_i_1__3_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \common.areset_dly_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_dly [2]),
        .Q(\common.areset_dly [3]),
        .S(\common.areset_dly[0]_i_1__3_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \common.areset_dly_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_dly [3]),
        .Q(\common.areset_dly [4]),
        .S(\common.areset_dly[0]_i_1__3_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \common.areset_dly_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_dly [4]),
        .Q(\common.areset_dly [5]),
        .S(\common.areset_dly[0]_i_1__3_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \common.areset_dly_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_dly [5]),
        .Q(\common.areset_dly [6]),
        .S(\common.areset_dly[0]_i_1__3_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \common.areset_dly_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_dly [6]),
        .Q(\common.areset_dly [7]),
        .S(\common.areset_dly[0]_i_1__3_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \common.areset_dly_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_dly [7]),
        .Q(\common.areset_dly [8]),
        .S(\common.areset_dly[0]_i_1__3_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \common.areset_dly_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_dly [8]),
        .Q(\common.areset_dly [9]),
        .S(\common.areset_dly[0]_i_1__3_n_0 ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \common.aresetn_d_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(aresetn),
        .Q(\common.aresetn_d ),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* USER_SLL_REG *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \common.laguna_s_handshake_asyncclear_inst 
       (.C(aclk),
        .CE(1'b1),
        .CLR(aresetn_0),
        .D(\dual_slr.src_handshake ),
        .Q(\common.laguna_s_handshake_q ));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[0]),
        .Q(\common.laguna_s_payload_d [0]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[10]),
        .Q(\common.laguna_s_payload_d [10]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[11]),
        .Q(\common.laguna_s_payload_d [11]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[12]),
        .Q(\common.laguna_s_payload_d [12]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[13]),
        .Q(\common.laguna_s_payload_d [13]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[14]),
        .Q(\common.laguna_s_payload_d [14]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[15]),
        .Q(\common.laguna_s_payload_d [15]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[16]),
        .Q(\common.laguna_s_payload_d [16]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[17] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[17]),
        .Q(\common.laguna_s_payload_d [17]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[18] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[18]),
        .Q(\common.laguna_s_payload_d [18]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[19] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[19]),
        .Q(\common.laguna_s_payload_d [19]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[1]),
        .Q(\common.laguna_s_payload_d [1]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[20] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[20]),
        .Q(\common.laguna_s_payload_d [20]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[21] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[21]),
        .Q(\common.laguna_s_payload_d [21]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[22] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[22]),
        .Q(\common.laguna_s_payload_d [22]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[23] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[23]),
        .Q(\common.laguna_s_payload_d [23]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[24] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[24]),
        .Q(\common.laguna_s_payload_d [24]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[25] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[25]),
        .Q(\common.laguna_s_payload_d [25]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[26] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[26]),
        .Q(\common.laguna_s_payload_d [26]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[27] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[27]),
        .Q(\common.laguna_s_payload_d [27]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[28] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[28]),
        .Q(\common.laguna_s_payload_d [28]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[29] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[29]),
        .Q(\common.laguna_s_payload_d [29]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[2]),
        .Q(\common.laguna_s_payload_d [2]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[30] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[30]),
        .Q(\common.laguna_s_payload_d [30]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[31] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[31]),
        .Q(\common.laguna_s_payload_d [31]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[32] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[32]),
        .Q(\common.laguna_s_payload_d [32]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[33] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[33]),
        .Q(\common.laguna_s_payload_d [33]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[3]),
        .Q(\common.laguna_s_payload_d [3]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[4]),
        .Q(\common.laguna_s_payload_d [4]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[5]),
        .Q(\common.laguna_s_payload_d [5]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[6]),
        .Q(\common.laguna_s_payload_d [6]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[7]),
        .Q(\common.laguna_s_payload_d [7]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[8]),
        .Q(\common.laguna_s_payload_d [8]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_s_payload_d_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[9]),
        .Q(\common.laguna_s_payload_d [9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* USER_SLL_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.laguna_s_ready_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.srl_fifo_0_n_2 ),
        .Q(\common.laguna_s_ready_i ),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* USER_SLL_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.laguna_s_reset_in_d_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.laguna_s_reset_in_d_reg_0 ),
        .Q(\common.laguna_s_reset_in_d ),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* USER_SLL_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.laguna_s_reset_out_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_d ),
        .Q(\common.laguna_s_reset_out_i ),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.ready_d_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.srl_fifo_0_n_2 ),
        .Q(\common.ready_d ),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axic_reg_srl_fifo__parameterized2 \common.srl_fifo_0 
       (.Q(\common.laguna_s_payload_d ),
        .aclk(aclk),
        .aresetn(aresetn),
        .aresetn_0(aresetn_0),
        .asyncclear_mvalid_inst_0(asyncclear_mvalid_inst),
        .\common.laguna_s_handshake_q (\common.laguna_s_handshake_q ),
        .\mesg_reg_reg[33]_0 (\mesg_reg_reg[33] ),
        .out(\common.areset_d ),
        .s_axi_rready(s_axi_rready),
        .s_axi_rready_0(\common.srl_fifo_0_n_2 ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_multi_slr
   (s_axi_arready,
    asyncclear_mvalid_inst,
    Q,
    aclk,
    \common.ACLEAR ,
    aresetn,
    m_axi_arready,
    s_axi_arvalid,
    D);
  output s_axi_arready;
  output asyncclear_mvalid_inst;
  output [27:0]Q;
  input aclk;
  input \common.ACLEAR ;
  input aresetn;
  input m_axi_arready;
  input s_axi_arvalid;
  input [27:0]D;

  wire [27:0]D;
  wire [27:0]Q;
  wire aclk;
  wire aresetn;
  wire asyncclear_mvalid_inst;
  wire \common.ACLEAR ;
  wire \dual_slr.dummy_reset ;
  wire \dual_slr.fwd.slr_master_n_10 ;
  wire \dual_slr.fwd.slr_master_n_11 ;
  wire \dual_slr.fwd.slr_master_n_12 ;
  wire \dual_slr.fwd.slr_master_n_13 ;
  wire \dual_slr.fwd.slr_master_n_14 ;
  wire \dual_slr.fwd.slr_master_n_15 ;
  wire \dual_slr.fwd.slr_master_n_16 ;
  wire \dual_slr.fwd.slr_master_n_17 ;
  wire \dual_slr.fwd.slr_master_n_18 ;
  wire \dual_slr.fwd.slr_master_n_19 ;
  wire \dual_slr.fwd.slr_master_n_20 ;
  wire \dual_slr.fwd.slr_master_n_21 ;
  wire \dual_slr.fwd.slr_master_n_22 ;
  wire \dual_slr.fwd.slr_master_n_23 ;
  wire \dual_slr.fwd.slr_master_n_24 ;
  wire \dual_slr.fwd.slr_master_n_25 ;
  wire \dual_slr.fwd.slr_master_n_26 ;
  wire \dual_slr.fwd.slr_master_n_27 ;
  wire \dual_slr.fwd.slr_master_n_28 ;
  wire \dual_slr.fwd.slr_master_n_29 ;
  wire \dual_slr.fwd.slr_master_n_3 ;
  wire \dual_slr.fwd.slr_master_n_30 ;
  wire \dual_slr.fwd.slr_master_n_4 ;
  wire \dual_slr.fwd.slr_master_n_5 ;
  wire \dual_slr.fwd.slr_master_n_6 ;
  wire \dual_slr.fwd.slr_master_n_7 ;
  wire \dual_slr.fwd.slr_master_n_8 ;
  wire \dual_slr.fwd.slr_master_n_9 ;
  wire \dual_slr.src_handshake ;
  wire \dual_slr.src_ready ;
  wire \dual_slr.src_reset ;
  wire m_axi_arready;
  wire s_axi_arready;
  wire s_axi_arvalid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_source_region_slr_1 \dual_slr.fwd.slr_master 
       (.D(D),
        .Q({\dual_slr.fwd.slr_master_n_3 ,\dual_slr.fwd.slr_master_n_4 ,\dual_slr.fwd.slr_master_n_5 ,\dual_slr.fwd.slr_master_n_6 ,\dual_slr.fwd.slr_master_n_7 ,\dual_slr.fwd.slr_master_n_8 ,\dual_slr.fwd.slr_master_n_9 ,\dual_slr.fwd.slr_master_n_10 ,\dual_slr.fwd.slr_master_n_11 ,\dual_slr.fwd.slr_master_n_12 ,\dual_slr.fwd.slr_master_n_13 ,\dual_slr.fwd.slr_master_n_14 ,\dual_slr.fwd.slr_master_n_15 ,\dual_slr.fwd.slr_master_n_16 ,\dual_slr.fwd.slr_master_n_17 ,\dual_slr.fwd.slr_master_n_18 ,\dual_slr.fwd.slr_master_n_19 ,\dual_slr.fwd.slr_master_n_20 ,\dual_slr.fwd.slr_master_n_21 ,\dual_slr.fwd.slr_master_n_22 ,\dual_slr.fwd.slr_master_n_23 ,\dual_slr.fwd.slr_master_n_24 ,\dual_slr.fwd.slr_master_n_25 ,\dual_slr.fwd.slr_master_n_26 ,\dual_slr.fwd.slr_master_n_27 ,\dual_slr.fwd.slr_master_n_28 ,\dual_slr.fwd.slr_master_n_29 ,\dual_slr.fwd.slr_master_n_30 }),
        .aclk(aclk),
        .aresetn(aresetn),
        .\common.ACLEAR (\common.ACLEAR ),
        .\common.laguna_m_ready_d_reg_0 (\dual_slr.src_ready ),
        .\common.laguna_m_reset_in_d_reg_0 (\dual_slr.dummy_reset ),
        .\dual_slr.src_handshake (\dual_slr.src_handshake ),
        .out(\dual_slr.src_reset ),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_dest_region_slr_2 \dual_slr.fwd.slr_slave 
       (.D({\dual_slr.fwd.slr_master_n_3 ,\dual_slr.fwd.slr_master_n_4 ,\dual_slr.fwd.slr_master_n_5 ,\dual_slr.fwd.slr_master_n_6 ,\dual_slr.fwd.slr_master_n_7 ,\dual_slr.fwd.slr_master_n_8 ,\dual_slr.fwd.slr_master_n_9 ,\dual_slr.fwd.slr_master_n_10 ,\dual_slr.fwd.slr_master_n_11 ,\dual_slr.fwd.slr_master_n_12 ,\dual_slr.fwd.slr_master_n_13 ,\dual_slr.fwd.slr_master_n_14 ,\dual_slr.fwd.slr_master_n_15 ,\dual_slr.fwd.slr_master_n_16 ,\dual_slr.fwd.slr_master_n_17 ,\dual_slr.fwd.slr_master_n_18 ,\dual_slr.fwd.slr_master_n_19 ,\dual_slr.fwd.slr_master_n_20 ,\dual_slr.fwd.slr_master_n_21 ,\dual_slr.fwd.slr_master_n_22 ,\dual_slr.fwd.slr_master_n_23 ,\dual_slr.fwd.slr_master_n_24 ,\dual_slr.fwd.slr_master_n_25 ,\dual_slr.fwd.slr_master_n_26 ,\dual_slr.fwd.slr_master_n_27 ,\dual_slr.fwd.slr_master_n_28 ,\dual_slr.fwd.slr_master_n_29 ,\dual_slr.fwd.slr_master_n_30 }),
        .Q(Q),
        .aclk(aclk),
        .asyncclear_mvalid_inst(asyncclear_mvalid_inst),
        .\common.ACLEAR (\common.ACLEAR ),
        .\common.laguna_s_ready_i_reg_0 (\dual_slr.src_ready ),
        .\common.laguna_s_reset_in_d_reg_0 (\dual_slr.src_reset ),
        .\dual_slr.src_handshake (\dual_slr.src_handshake ),
        .m_axi_arready(m_axi_arready),
        .out(\dual_slr.dummy_reset ));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_26_multi_slr" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_multi_slr_0
   (s_axi_awready,
    asyncclear_mvalid_inst,
    Q,
    aclk,
    \common.ACLEAR ,
    aresetn,
    m_axi_awready,
    s_axi_awvalid,
    D);
  output s_axi_awready;
  output asyncclear_mvalid_inst;
  output [27:0]Q;
  input aclk;
  input \common.ACLEAR ;
  input aresetn;
  input m_axi_awready;
  input s_axi_awvalid;
  input [27:0]D;

  wire [27:0]D;
  wire [27:0]Q;
  wire aclk;
  wire aresetn;
  wire asyncclear_mvalid_inst;
  wire \common.ACLEAR ;
  wire [27:0]\common.laguna_m_payload_i ;
  wire \dual_slr.dummy_reset ;
  wire \dual_slr.src_handshake ;
  wire \dual_slr.src_ready ;
  wire \dual_slr.src_reset ;
  wire m_axi_awready;
  wire s_axi_awready;
  wire s_axi_awvalid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_source_region_slr \dual_slr.fwd.slr_master 
       (.D(D),
        .Q(\common.laguna_m_payload_i ),
        .aclk(aclk),
        .aresetn(aresetn),
        .\common.ACLEAR (\common.ACLEAR ),
        .\common.laguna_m_ready_d_reg_0 (\dual_slr.src_ready ),
        .\common.laguna_m_reset_in_d_reg_0 (\dual_slr.dummy_reset ),
        .\dual_slr.src_handshake (\dual_slr.src_handshake ),
        .out(\dual_slr.src_reset ),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_dest_region_slr \dual_slr.fwd.slr_slave 
       (.D(\common.laguna_m_payload_i ),
        .Q(Q),
        .aclk(aclk),
        .asyncclear_mvalid_inst(asyncclear_mvalid_inst),
        .\common.ACLEAR (\common.ACLEAR ),
        .\common.laguna_s_ready_i_reg_0 (\dual_slr.src_ready ),
        .\common.laguna_s_reset_in_d_reg_0 (\dual_slr.src_reset ),
        .\dual_slr.src_handshake (\dual_slr.src_handshake ),
        .m_axi_awready(m_axi_awready),
        .out(\dual_slr.dummy_reset ));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_26_multi_slr" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_multi_slr__parameterized0
   (s_axi_wready,
    asyncclear_mvalid_inst,
    Q,
    aclk,
    \common.ACLEAR ,
    aresetn,
    m_axi_wready,
    s_axi_wvalid,
    D);
  output s_axi_wready;
  output asyncclear_mvalid_inst;
  output [35:0]Q;
  input aclk;
  input \common.ACLEAR ;
  input aresetn;
  input m_axi_wready;
  input s_axi_wvalid;
  input [35:0]D;

  wire [35:0]D;
  wire [35:0]Q;
  wire aclk;
  wire aresetn;
  wire asyncclear_mvalid_inst;
  wire \common.ACLEAR ;
  wire \dual_slr.dummy_reset ;
  wire \dual_slr.fwd.slr_master_n_10 ;
  wire \dual_slr.fwd.slr_master_n_11 ;
  wire \dual_slr.fwd.slr_master_n_12 ;
  wire \dual_slr.fwd.slr_master_n_13 ;
  wire \dual_slr.fwd.slr_master_n_14 ;
  wire \dual_slr.fwd.slr_master_n_15 ;
  wire \dual_slr.fwd.slr_master_n_16 ;
  wire \dual_slr.fwd.slr_master_n_17 ;
  wire \dual_slr.fwd.slr_master_n_18 ;
  wire \dual_slr.fwd.slr_master_n_19 ;
  wire \dual_slr.fwd.slr_master_n_20 ;
  wire \dual_slr.fwd.slr_master_n_21 ;
  wire \dual_slr.fwd.slr_master_n_22 ;
  wire \dual_slr.fwd.slr_master_n_23 ;
  wire \dual_slr.fwd.slr_master_n_24 ;
  wire \dual_slr.fwd.slr_master_n_25 ;
  wire \dual_slr.fwd.slr_master_n_26 ;
  wire \dual_slr.fwd.slr_master_n_27 ;
  wire \dual_slr.fwd.slr_master_n_28 ;
  wire \dual_slr.fwd.slr_master_n_29 ;
  wire \dual_slr.fwd.slr_master_n_3 ;
  wire \dual_slr.fwd.slr_master_n_30 ;
  wire \dual_slr.fwd.slr_master_n_31 ;
  wire \dual_slr.fwd.slr_master_n_32 ;
  wire \dual_slr.fwd.slr_master_n_33 ;
  wire \dual_slr.fwd.slr_master_n_34 ;
  wire \dual_slr.fwd.slr_master_n_35 ;
  wire \dual_slr.fwd.slr_master_n_36 ;
  wire \dual_slr.fwd.slr_master_n_37 ;
  wire \dual_slr.fwd.slr_master_n_38 ;
  wire \dual_slr.fwd.slr_master_n_4 ;
  wire \dual_slr.fwd.slr_master_n_5 ;
  wire \dual_slr.fwd.slr_master_n_6 ;
  wire \dual_slr.fwd.slr_master_n_7 ;
  wire \dual_slr.fwd.slr_master_n_8 ;
  wire \dual_slr.fwd.slr_master_n_9 ;
  wire \dual_slr.src_handshake ;
  wire \dual_slr.src_ready ;
  wire \dual_slr.src_reset ;
  wire m_axi_wready;
  wire s_axi_wready;
  wire s_axi_wvalid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_source_region_slr__parameterized0 \dual_slr.fwd.slr_master 
       (.D(D),
        .Q({\dual_slr.fwd.slr_master_n_3 ,\dual_slr.fwd.slr_master_n_4 ,\dual_slr.fwd.slr_master_n_5 ,\dual_slr.fwd.slr_master_n_6 ,\dual_slr.fwd.slr_master_n_7 ,\dual_slr.fwd.slr_master_n_8 ,\dual_slr.fwd.slr_master_n_9 ,\dual_slr.fwd.slr_master_n_10 ,\dual_slr.fwd.slr_master_n_11 ,\dual_slr.fwd.slr_master_n_12 ,\dual_slr.fwd.slr_master_n_13 ,\dual_slr.fwd.slr_master_n_14 ,\dual_slr.fwd.slr_master_n_15 ,\dual_slr.fwd.slr_master_n_16 ,\dual_slr.fwd.slr_master_n_17 ,\dual_slr.fwd.slr_master_n_18 ,\dual_slr.fwd.slr_master_n_19 ,\dual_slr.fwd.slr_master_n_20 ,\dual_slr.fwd.slr_master_n_21 ,\dual_slr.fwd.slr_master_n_22 ,\dual_slr.fwd.slr_master_n_23 ,\dual_slr.fwd.slr_master_n_24 ,\dual_slr.fwd.slr_master_n_25 ,\dual_slr.fwd.slr_master_n_26 ,\dual_slr.fwd.slr_master_n_27 ,\dual_slr.fwd.slr_master_n_28 ,\dual_slr.fwd.slr_master_n_29 ,\dual_slr.fwd.slr_master_n_30 ,\dual_slr.fwd.slr_master_n_31 ,\dual_slr.fwd.slr_master_n_32 ,\dual_slr.fwd.slr_master_n_33 ,\dual_slr.fwd.slr_master_n_34 ,\dual_slr.fwd.slr_master_n_35 ,\dual_slr.fwd.slr_master_n_36 ,\dual_slr.fwd.slr_master_n_37 ,\dual_slr.fwd.slr_master_n_38 }),
        .aclk(aclk),
        .aresetn(aresetn),
        .\common.ACLEAR (\common.ACLEAR ),
        .\common.laguna_m_ready_d_reg_0 (\dual_slr.src_ready ),
        .\common.laguna_m_reset_in_d_reg_0 (\dual_slr.dummy_reset ),
        .\dual_slr.src_handshake (\dual_slr.src_handshake ),
        .out(\dual_slr.src_reset ),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_dest_region_slr__parameterized0 \dual_slr.fwd.slr_slave 
       (.D({\dual_slr.fwd.slr_master_n_3 ,\dual_slr.fwd.slr_master_n_4 ,\dual_slr.fwd.slr_master_n_5 ,\dual_slr.fwd.slr_master_n_6 ,\dual_slr.fwd.slr_master_n_7 ,\dual_slr.fwd.slr_master_n_8 ,\dual_slr.fwd.slr_master_n_9 ,\dual_slr.fwd.slr_master_n_10 ,\dual_slr.fwd.slr_master_n_11 ,\dual_slr.fwd.slr_master_n_12 ,\dual_slr.fwd.slr_master_n_13 ,\dual_slr.fwd.slr_master_n_14 ,\dual_slr.fwd.slr_master_n_15 ,\dual_slr.fwd.slr_master_n_16 ,\dual_slr.fwd.slr_master_n_17 ,\dual_slr.fwd.slr_master_n_18 ,\dual_slr.fwd.slr_master_n_19 ,\dual_slr.fwd.slr_master_n_20 ,\dual_slr.fwd.slr_master_n_21 ,\dual_slr.fwd.slr_master_n_22 ,\dual_slr.fwd.slr_master_n_23 ,\dual_slr.fwd.slr_master_n_24 ,\dual_slr.fwd.slr_master_n_25 ,\dual_slr.fwd.slr_master_n_26 ,\dual_slr.fwd.slr_master_n_27 ,\dual_slr.fwd.slr_master_n_28 ,\dual_slr.fwd.slr_master_n_29 ,\dual_slr.fwd.slr_master_n_30 ,\dual_slr.fwd.slr_master_n_31 ,\dual_slr.fwd.slr_master_n_32 ,\dual_slr.fwd.slr_master_n_33 ,\dual_slr.fwd.slr_master_n_34 ,\dual_slr.fwd.slr_master_n_35 ,\dual_slr.fwd.slr_master_n_36 ,\dual_slr.fwd.slr_master_n_37 ,\dual_slr.fwd.slr_master_n_38 }),
        .Q(Q),
        .aclk(aclk),
        .asyncclear_mvalid_inst(asyncclear_mvalid_inst),
        .\common.ACLEAR (\common.ACLEAR ),
        .\common.laguna_s_ready_i_reg_0 (\dual_slr.src_ready ),
        .\common.laguna_s_reset_in_d_reg_0 (\dual_slr.src_reset ),
        .\dual_slr.src_handshake (\dual_slr.src_handshake ),
        .m_axi_wready(m_axi_wready),
        .out(\dual_slr.dummy_reset ));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_26_multi_slr" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_multi_slr__parameterized1
   (m_axi_bready,
    asyncclear_mvalid_inst,
    s_axi_bresp,
    aclk,
    \common.ACLEAR ,
    aresetn,
    s_axi_bready,
    m_axi_bvalid,
    m_axi_bresp);
  output m_axi_bready;
  output asyncclear_mvalid_inst;
  output [1:0]s_axi_bresp;
  input aclk;
  input \common.ACLEAR ;
  input aresetn;
  input s_axi_bready;
  input m_axi_bvalid;
  input [1:0]m_axi_bresp;

  wire aclk;
  wire aresetn;
  wire asyncclear_mvalid_inst;
  wire \common.ACLEAR ;
  wire \dual_slr.dummy_reset ;
  wire \dual_slr.resp.slr_slave_n_3 ;
  wire \dual_slr.resp.slr_slave_n_4 ;
  wire \dual_slr.src_handshake ;
  wire \dual_slr.src_ready ;
  wire \dual_slr.src_reset ;
  wire m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_dest_region_slr__parameterized1 \dual_slr.resp.slr_master 
       (.Q({\dual_slr.resp.slr_slave_n_3 ,\dual_slr.resp.slr_slave_n_4 }),
        .aclk(aclk),
        .aresetn(aresetn),
        .asyncclear_mvalid_inst(asyncclear_mvalid_inst),
        .\common.ACLEAR (\common.ACLEAR ),
        .\common.laguna_s_ready_i_reg_0 (\dual_slr.src_ready ),
        .\common.laguna_s_reset_in_d_reg_0 (\dual_slr.dummy_reset ),
        .\dual_slr.src_handshake (\dual_slr.src_handshake ),
        .out(\dual_slr.src_reset ),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_source_region_slr__parameterized1 \dual_slr.resp.slr_slave 
       (.Q({\dual_slr.resp.slr_slave_n_3 ,\dual_slr.resp.slr_slave_n_4 }),
        .aclk(aclk),
        .\common.ACLEAR (\common.ACLEAR ),
        .\common.laguna_m_ready_d_reg_0 (\dual_slr.src_ready ),
        .\common.laguna_m_reset_in_d_reg_0 (\dual_slr.src_reset ),
        .\dual_slr.src_handshake (\dual_slr.src_handshake ),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_bvalid(m_axi_bvalid),
        .out(\dual_slr.dummy_reset ));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_26_multi_slr" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_multi_slr__parameterized2
   (\common.ACLEAR ,
    m_axi_rready,
    asyncclear_mvalid_inst,
    Q,
    aclk,
    aresetn,
    s_axi_rready,
    m_axi_rvalid,
    D);
  output \common.ACLEAR ;
  output m_axi_rready;
  output asyncclear_mvalid_inst;
  output [33:0]Q;
  input aclk;
  input aresetn;
  input s_axi_rready;
  input m_axi_rvalid;
  input [33:0]D;

  wire [33:0]D;
  wire [33:0]Q;
  wire aclk;
  wire aresetn;
  wire asyncclear_mvalid_inst;
  wire \common.ACLEAR ;
  wire \dual_slr.dummy_reset ;
  wire \dual_slr.resp.slr_slave_n_10 ;
  wire \dual_slr.resp.slr_slave_n_11 ;
  wire \dual_slr.resp.slr_slave_n_12 ;
  wire \dual_slr.resp.slr_slave_n_13 ;
  wire \dual_slr.resp.slr_slave_n_14 ;
  wire \dual_slr.resp.slr_slave_n_15 ;
  wire \dual_slr.resp.slr_slave_n_16 ;
  wire \dual_slr.resp.slr_slave_n_17 ;
  wire \dual_slr.resp.slr_slave_n_18 ;
  wire \dual_slr.resp.slr_slave_n_19 ;
  wire \dual_slr.resp.slr_slave_n_20 ;
  wire \dual_slr.resp.slr_slave_n_21 ;
  wire \dual_slr.resp.slr_slave_n_22 ;
  wire \dual_slr.resp.slr_slave_n_23 ;
  wire \dual_slr.resp.slr_slave_n_24 ;
  wire \dual_slr.resp.slr_slave_n_25 ;
  wire \dual_slr.resp.slr_slave_n_26 ;
  wire \dual_slr.resp.slr_slave_n_27 ;
  wire \dual_slr.resp.slr_slave_n_28 ;
  wire \dual_slr.resp.slr_slave_n_29 ;
  wire \dual_slr.resp.slr_slave_n_3 ;
  wire \dual_slr.resp.slr_slave_n_30 ;
  wire \dual_slr.resp.slr_slave_n_31 ;
  wire \dual_slr.resp.slr_slave_n_32 ;
  wire \dual_slr.resp.slr_slave_n_33 ;
  wire \dual_slr.resp.slr_slave_n_34 ;
  wire \dual_slr.resp.slr_slave_n_35 ;
  wire \dual_slr.resp.slr_slave_n_36 ;
  wire \dual_slr.resp.slr_slave_n_4 ;
  wire \dual_slr.resp.slr_slave_n_5 ;
  wire \dual_slr.resp.slr_slave_n_6 ;
  wire \dual_slr.resp.slr_slave_n_7 ;
  wire \dual_slr.resp.slr_slave_n_8 ;
  wire \dual_slr.resp.slr_slave_n_9 ;
  wire \dual_slr.src_handshake ;
  wire \dual_slr.src_ready ;
  wire \dual_slr.src_reset ;
  wire m_axi_rready;
  wire m_axi_rvalid;
  wire s_axi_rready;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_dest_region_slr__parameterized2 \dual_slr.resp.slr_master 
       (.Q({\dual_slr.resp.slr_slave_n_3 ,\dual_slr.resp.slr_slave_n_4 ,\dual_slr.resp.slr_slave_n_5 ,\dual_slr.resp.slr_slave_n_6 ,\dual_slr.resp.slr_slave_n_7 ,\dual_slr.resp.slr_slave_n_8 ,\dual_slr.resp.slr_slave_n_9 ,\dual_slr.resp.slr_slave_n_10 ,\dual_slr.resp.slr_slave_n_11 ,\dual_slr.resp.slr_slave_n_12 ,\dual_slr.resp.slr_slave_n_13 ,\dual_slr.resp.slr_slave_n_14 ,\dual_slr.resp.slr_slave_n_15 ,\dual_slr.resp.slr_slave_n_16 ,\dual_slr.resp.slr_slave_n_17 ,\dual_slr.resp.slr_slave_n_18 ,\dual_slr.resp.slr_slave_n_19 ,\dual_slr.resp.slr_slave_n_20 ,\dual_slr.resp.slr_slave_n_21 ,\dual_slr.resp.slr_slave_n_22 ,\dual_slr.resp.slr_slave_n_23 ,\dual_slr.resp.slr_slave_n_24 ,\dual_slr.resp.slr_slave_n_25 ,\dual_slr.resp.slr_slave_n_26 ,\dual_slr.resp.slr_slave_n_27 ,\dual_slr.resp.slr_slave_n_28 ,\dual_slr.resp.slr_slave_n_29 ,\dual_slr.resp.slr_slave_n_30 ,\dual_slr.resp.slr_slave_n_31 ,\dual_slr.resp.slr_slave_n_32 ,\dual_slr.resp.slr_slave_n_33 ,\dual_slr.resp.slr_slave_n_34 ,\dual_slr.resp.slr_slave_n_35 ,\dual_slr.resp.slr_slave_n_36 }),
        .aclk(aclk),
        .aresetn(aresetn),
        .aresetn_0(\common.ACLEAR ),
        .asyncclear_mvalid_inst(asyncclear_mvalid_inst),
        .\common.laguna_s_ready_i_reg_0 (\dual_slr.src_ready ),
        .\common.laguna_s_reset_in_d_reg_0 (\dual_slr.dummy_reset ),
        .\dual_slr.src_handshake (\dual_slr.src_handshake ),
        .\mesg_reg_reg[33] (Q),
        .out(\dual_slr.src_reset ),
        .s_axi_rready(s_axi_rready));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_source_region_slr__parameterized2 \dual_slr.resp.slr_slave 
       (.D(D),
        .Q({\dual_slr.resp.slr_slave_n_3 ,\dual_slr.resp.slr_slave_n_4 ,\dual_slr.resp.slr_slave_n_5 ,\dual_slr.resp.slr_slave_n_6 ,\dual_slr.resp.slr_slave_n_7 ,\dual_slr.resp.slr_slave_n_8 ,\dual_slr.resp.slr_slave_n_9 ,\dual_slr.resp.slr_slave_n_10 ,\dual_slr.resp.slr_slave_n_11 ,\dual_slr.resp.slr_slave_n_12 ,\dual_slr.resp.slr_slave_n_13 ,\dual_slr.resp.slr_slave_n_14 ,\dual_slr.resp.slr_slave_n_15 ,\dual_slr.resp.slr_slave_n_16 ,\dual_slr.resp.slr_slave_n_17 ,\dual_slr.resp.slr_slave_n_18 ,\dual_slr.resp.slr_slave_n_19 ,\dual_slr.resp.slr_slave_n_20 ,\dual_slr.resp.slr_slave_n_21 ,\dual_slr.resp.slr_slave_n_22 ,\dual_slr.resp.slr_slave_n_23 ,\dual_slr.resp.slr_slave_n_24 ,\dual_slr.resp.slr_slave_n_25 ,\dual_slr.resp.slr_slave_n_26 ,\dual_slr.resp.slr_slave_n_27 ,\dual_slr.resp.slr_slave_n_28 ,\dual_slr.resp.slr_slave_n_29 ,\dual_slr.resp.slr_slave_n_30 ,\dual_slr.resp.slr_slave_n_31 ,\dual_slr.resp.slr_slave_n_32 ,\dual_slr.resp.slr_slave_n_33 ,\dual_slr.resp.slr_slave_n_34 ,\dual_slr.resp.slr_slave_n_35 ,\dual_slr.resp.slr_slave_n_36 }),
        .aclk(aclk),
        .\common.ACLEAR (\common.ACLEAR ),
        .\common.laguna_m_ready_d_reg_0 (\dual_slr.src_ready ),
        .\common.laguna_m_reset_in_d_reg_0 (\dual_slr.src_reset ),
        .\dual_slr.src_handshake (\dual_slr.src_handshake ),
        .m_axi_rready(m_axi_rready),
        .m_axi_rvalid(m_axi_rvalid),
        .out(\dual_slr.dummy_reset ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_source_region_slr
   (\dual_slr.src_handshake ,
    s_axi_awready,
    out,
    Q,
    aclk,
    \common.ACLEAR ,
    aresetn,
    \common.laguna_m_ready_d_reg_0 ,
    \common.laguna_m_reset_in_d_reg_0 ,
    s_axi_awvalid,
    D);
  output \dual_slr.src_handshake ;
  output s_axi_awready;
  output out;
  output [27:0]Q;
  input aclk;
  input \common.ACLEAR ;
  input aresetn;
  input \common.laguna_m_ready_d_reg_0 ;
  input \common.laguna_m_reset_in_d_reg_0 ;
  input s_axi_awvalid;
  input [27:0]D;

  wire [27:0]D;
  wire [27:0]Q;
  wire aclk;
  wire aresetn;
  wire \common.ACLEAR ;
  (* RTL_KEEP = "true" *) wire \common.areset_d ;
  wire [15:0]\common.areset_dly ;
  wire \common.areset_dly[0]_i_1_n_0 ;
  (* RTL_KEEP = "true" *) wire \common.aresetn_d ;
  (* RTL_KEEP = "true" *) (* USER_SLL_REG = "true" *) wire \common.laguna_m_ready_d ;
  wire \common.laguna_m_ready_d_reg_0 ;
  (* RTL_KEEP = "true" *) (* USER_SLL_REG = "true" *) wire \common.laguna_m_reset_in_d ;
  wire \common.laguna_m_reset_in_d_reg_0 ;
  (* RTL_KEEP = "true" *) (* USER_SLL_REG = "true" *) wire \common.laguna_m_reset_out_i ;
  wire \common.pipe[0].payload_valid_d ;
  (* RTL_KEEP = "true" *) wire \common.ready_d ;
  (* RTL_KEEP = "true" *) wire \common.s_ready_i ;
  wire \dual_slr.src_handshake ;
  wire s_axi_awvalid;

  assign out = \common.laguna_m_reset_out_i ;
  assign s_axi_awready = \common.s_ready_i ;
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.areset_d_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_dly [15]),
        .Q(\common.areset_d ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \common.areset_dly[0]_i_1 
       (.I0(\common.aresetn_d ),
        .O(\common.areset_dly[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \common.areset_dly_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_dly[0]_i_1_n_0 ),
        .Q(\common.areset_dly [0]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \common.areset_dly_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_dly [9]),
        .Q(\common.areset_dly [10]),
        .S(\common.areset_dly[0]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \common.areset_dly_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_dly [10]),
        .Q(\common.areset_dly [11]),
        .S(\common.areset_dly[0]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \common.areset_dly_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_dly [11]),
        .Q(\common.areset_dly [12]),
        .S(\common.areset_dly[0]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \common.areset_dly_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_dly [12]),
        .Q(\common.areset_dly [13]),
        .S(\common.areset_dly[0]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \common.areset_dly_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_dly [13]),
        .Q(\common.areset_dly [14]),
        .S(\common.areset_dly[0]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \common.areset_dly_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_dly [14]),
        .Q(\common.areset_dly [15]),
        .S(\common.areset_dly[0]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \common.areset_dly_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_dly [0]),
        .Q(\common.areset_dly [1]),
        .S(\common.areset_dly[0]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \common.areset_dly_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_dly [1]),
        .Q(\common.areset_dly [2]),
        .S(\common.areset_dly[0]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \common.areset_dly_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_dly [2]),
        .Q(\common.areset_dly [3]),
        .S(\common.areset_dly[0]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \common.areset_dly_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_dly [3]),
        .Q(\common.areset_dly [4]),
        .S(\common.areset_dly[0]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \common.areset_dly_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_dly [4]),
        .Q(\common.areset_dly [5]),
        .S(\common.areset_dly[0]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \common.areset_dly_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_dly [5]),
        .Q(\common.areset_dly [6]),
        .S(\common.areset_dly[0]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \common.areset_dly_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_dly [6]),
        .Q(\common.areset_dly [7]),
        .S(\common.areset_dly[0]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \common.areset_dly_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_dly [7]),
        .Q(\common.areset_dly [8]),
        .S(\common.areset_dly[0]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \common.areset_dly_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_dly [8]),
        .Q(\common.areset_dly [9]),
        .S(\common.areset_dly[0]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \common.aresetn_d_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(aresetn),
        .Q(\common.aresetn_d ),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* USER_SLL_REG *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \common.laguna_m_handshake_asyncclear_inst 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\common.ACLEAR ),
        .D(\common.pipe[0].payload_valid_d ),
        .Q(\dual_slr.src_handshake ));
  LUT2 #(
    .INIT(4'h8)) 
    \common.laguna_m_handshake_asyncclear_inst_i_1 
       (.I0(s_axi_awvalid),
        .I1(\common.s_ready_i ),
        .O(\common.pipe[0].payload_valid_d ));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[0]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[10]),
        .Q(Q[10]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[11]),
        .Q(Q[11]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[12]),
        .Q(Q[12]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[13]),
        .Q(Q[13]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[14]),
        .Q(Q[14]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[15]),
        .Q(Q[15]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[16]),
        .Q(Q[16]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[17] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[17]),
        .Q(Q[17]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[18] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[18]),
        .Q(Q[18]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[19] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[19]),
        .Q(Q[19]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[1]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[20] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[20]),
        .Q(Q[20]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[21] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[21]),
        .Q(Q[21]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[22] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[22]),
        .Q(Q[22]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[23] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[23]),
        .Q(Q[23]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[24] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[24]),
        .Q(Q[24]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[25] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[25]),
        .Q(Q[25]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[26] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[26]),
        .Q(Q[26]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[27] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[27]),
        .Q(Q[27]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[2]),
        .Q(Q[2]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[3]),
        .Q(Q[3]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[4]),
        .Q(Q[4]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[5]),
        .Q(Q[5]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[6]),
        .Q(Q[6]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[7]),
        .Q(Q[7]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[8]),
        .Q(Q[8]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[9]),
        .Q(Q[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* USER_SLL_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.laguna_m_ready_d_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.laguna_m_ready_d_reg_0 ),
        .Q(\common.laguna_m_ready_d ),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* USER_SLL_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.laguna_m_reset_in_d_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.laguna_m_reset_in_d_reg_0 ),
        .Q(\common.laguna_m_reset_in_d ),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* USER_SLL_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.laguna_m_reset_out_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_d ),
        .Q(\common.laguna_m_reset_out_i ),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.ready_d_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.laguna_m_ready_d ),
        .Q(\common.ready_d ),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.s_ready_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.laguna_m_ready_d ),
        .Q(\common.s_ready_i ),
        .R(\common.areset_d ));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_26_source_region_slr" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_source_region_slr_1
   (\dual_slr.src_handshake ,
    s_axi_arready,
    out,
    Q,
    aclk,
    \common.ACLEAR ,
    aresetn,
    \common.laguna_m_ready_d_reg_0 ,
    \common.laguna_m_reset_in_d_reg_0 ,
    s_axi_arvalid,
    D);
  output \dual_slr.src_handshake ;
  output s_axi_arready;
  output out;
  output [27:0]Q;
  input aclk;
  input \common.ACLEAR ;
  input aresetn;
  input \common.laguna_m_ready_d_reg_0 ;
  input \common.laguna_m_reset_in_d_reg_0 ;
  input s_axi_arvalid;
  input [27:0]D;

  wire [27:0]D;
  wire [27:0]Q;
  wire aclk;
  wire aresetn;
  wire \common.ACLEAR ;
  (* RTL_KEEP = "true" *) wire \common.areset_d ;
  wire [15:0]\common.areset_dly ;
  wire \common.areset_dly[0]_i_1__2_n_0 ;
  (* RTL_KEEP = "true" *) wire \common.aresetn_d ;
  (* RTL_KEEP = "true" *) (* USER_SLL_REG = "true" *) wire \common.laguna_m_ready_d ;
  wire \common.laguna_m_ready_d_reg_0 ;
  (* RTL_KEEP = "true" *) (* USER_SLL_REG = "true" *) wire \common.laguna_m_reset_in_d ;
  wire \common.laguna_m_reset_in_d_reg_0 ;
  (* RTL_KEEP = "true" *) (* USER_SLL_REG = "true" *) wire \common.laguna_m_reset_out_i ;
  wire \common.pipe[0].payload_valid_d ;
  (* RTL_KEEP = "true" *) wire \common.ready_d ;
  (* RTL_KEEP = "true" *) wire \common.s_ready_i ;
  wire \dual_slr.src_handshake ;
  wire s_axi_arvalid;

  assign out = \common.laguna_m_reset_out_i ;
  assign s_axi_arready = \common.s_ready_i ;
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.areset_d_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_dly [15]),
        .Q(\common.areset_d ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \common.areset_dly[0]_i_1__2 
       (.I0(\common.aresetn_d ),
        .O(\common.areset_dly[0]_i_1__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \common.areset_dly_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_dly[0]_i_1__2_n_0 ),
        .Q(\common.areset_dly [0]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \common.areset_dly_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_dly [9]),
        .Q(\common.areset_dly [10]),
        .S(\common.areset_dly[0]_i_1__2_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \common.areset_dly_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_dly [10]),
        .Q(\common.areset_dly [11]),
        .S(\common.areset_dly[0]_i_1__2_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \common.areset_dly_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_dly [11]),
        .Q(\common.areset_dly [12]),
        .S(\common.areset_dly[0]_i_1__2_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \common.areset_dly_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_dly [12]),
        .Q(\common.areset_dly [13]),
        .S(\common.areset_dly[0]_i_1__2_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \common.areset_dly_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_dly [13]),
        .Q(\common.areset_dly [14]),
        .S(\common.areset_dly[0]_i_1__2_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \common.areset_dly_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_dly [14]),
        .Q(\common.areset_dly [15]),
        .S(\common.areset_dly[0]_i_1__2_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \common.areset_dly_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_dly [0]),
        .Q(\common.areset_dly [1]),
        .S(\common.areset_dly[0]_i_1__2_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \common.areset_dly_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_dly [1]),
        .Q(\common.areset_dly [2]),
        .S(\common.areset_dly[0]_i_1__2_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \common.areset_dly_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_dly [2]),
        .Q(\common.areset_dly [3]),
        .S(\common.areset_dly[0]_i_1__2_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \common.areset_dly_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_dly [3]),
        .Q(\common.areset_dly [4]),
        .S(\common.areset_dly[0]_i_1__2_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \common.areset_dly_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_dly [4]),
        .Q(\common.areset_dly [5]),
        .S(\common.areset_dly[0]_i_1__2_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \common.areset_dly_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_dly [5]),
        .Q(\common.areset_dly [6]),
        .S(\common.areset_dly[0]_i_1__2_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \common.areset_dly_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_dly [6]),
        .Q(\common.areset_dly [7]),
        .S(\common.areset_dly[0]_i_1__2_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \common.areset_dly_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_dly [7]),
        .Q(\common.areset_dly [8]),
        .S(\common.areset_dly[0]_i_1__2_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \common.areset_dly_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_dly [8]),
        .Q(\common.areset_dly [9]),
        .S(\common.areset_dly[0]_i_1__2_n_0 ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \common.aresetn_d_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(aresetn),
        .Q(\common.aresetn_d ),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* USER_SLL_REG *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \common.laguna_m_handshake_asyncclear_inst 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\common.ACLEAR ),
        .D(\common.pipe[0].payload_valid_d ),
        .Q(\dual_slr.src_handshake ));
  LUT2 #(
    .INIT(4'h8)) 
    \common.laguna_m_handshake_asyncclear_inst_i_1__2 
       (.I0(s_axi_arvalid),
        .I1(\common.s_ready_i ),
        .O(\common.pipe[0].payload_valid_d ));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[0]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[10]),
        .Q(Q[10]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[11]),
        .Q(Q[11]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[12]),
        .Q(Q[12]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[13]),
        .Q(Q[13]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[14]),
        .Q(Q[14]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[15]),
        .Q(Q[15]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[16]),
        .Q(Q[16]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[17] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[17]),
        .Q(Q[17]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[18] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[18]),
        .Q(Q[18]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[19] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[19]),
        .Q(Q[19]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[1]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[20] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[20]),
        .Q(Q[20]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[21] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[21]),
        .Q(Q[21]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[22] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[22]),
        .Q(Q[22]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[23] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[23]),
        .Q(Q[23]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[24] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[24]),
        .Q(Q[24]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[25] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[25]),
        .Q(Q[25]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[26] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[26]),
        .Q(Q[26]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[27] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[27]),
        .Q(Q[27]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[2]),
        .Q(Q[2]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[3]),
        .Q(Q[3]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[4]),
        .Q(Q[4]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[5]),
        .Q(Q[5]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[6]),
        .Q(Q[6]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[7]),
        .Q(Q[7]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[8]),
        .Q(Q[8]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[9]),
        .Q(Q[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* USER_SLL_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.laguna_m_ready_d_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.laguna_m_ready_d_reg_0 ),
        .Q(\common.laguna_m_ready_d ),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* USER_SLL_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.laguna_m_reset_in_d_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.laguna_m_reset_in_d_reg_0 ),
        .Q(\common.laguna_m_reset_in_d ),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* USER_SLL_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.laguna_m_reset_out_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_d ),
        .Q(\common.laguna_m_reset_out_i ),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.ready_d_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.laguna_m_ready_d ),
        .Q(\common.ready_d ),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.s_ready_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.laguna_m_ready_d ),
        .Q(\common.s_ready_i ),
        .R(\common.areset_d ));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_26_source_region_slr" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_source_region_slr__parameterized0
   (\dual_slr.src_handshake ,
    s_axi_wready,
    out,
    Q,
    aclk,
    \common.ACLEAR ,
    aresetn,
    \common.laguna_m_ready_d_reg_0 ,
    \common.laguna_m_reset_in_d_reg_0 ,
    s_axi_wvalid,
    D);
  output \dual_slr.src_handshake ;
  output s_axi_wready;
  output out;
  output [35:0]Q;
  input aclk;
  input \common.ACLEAR ;
  input aresetn;
  input \common.laguna_m_ready_d_reg_0 ;
  input \common.laguna_m_reset_in_d_reg_0 ;
  input s_axi_wvalid;
  input [35:0]D;

  wire [35:0]D;
  wire [35:0]Q;
  wire aclk;
  wire aresetn;
  wire \common.ACLEAR ;
  (* RTL_KEEP = "true" *) wire \common.areset_d ;
  wire [15:0]\common.areset_dly ;
  wire \common.areset_dly[0]_i_1__0_n_0 ;
  (* RTL_KEEP = "true" *) wire \common.aresetn_d ;
  (* RTL_KEEP = "true" *) (* USER_SLL_REG = "true" *) wire \common.laguna_m_ready_d ;
  wire \common.laguna_m_ready_d_reg_0 ;
  (* RTL_KEEP = "true" *) (* USER_SLL_REG = "true" *) wire \common.laguna_m_reset_in_d ;
  wire \common.laguna_m_reset_in_d_reg_0 ;
  (* RTL_KEEP = "true" *) (* USER_SLL_REG = "true" *) wire \common.laguna_m_reset_out_i ;
  wire \common.pipe[0].payload_valid_d ;
  (* RTL_KEEP = "true" *) wire \common.ready_d ;
  (* RTL_KEEP = "true" *) wire \common.s_ready_i ;
  wire \dual_slr.src_handshake ;
  wire s_axi_wvalid;

  assign out = \common.laguna_m_reset_out_i ;
  assign s_axi_wready = \common.s_ready_i ;
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.areset_d_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_dly [15]),
        .Q(\common.areset_d ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \common.areset_dly[0]_i_1__0 
       (.I0(\common.aresetn_d ),
        .O(\common.areset_dly[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \common.areset_dly_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_dly[0]_i_1__0_n_0 ),
        .Q(\common.areset_dly [0]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \common.areset_dly_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_dly [9]),
        .Q(\common.areset_dly [10]),
        .S(\common.areset_dly[0]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \common.areset_dly_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_dly [10]),
        .Q(\common.areset_dly [11]),
        .S(\common.areset_dly[0]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \common.areset_dly_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_dly [11]),
        .Q(\common.areset_dly [12]),
        .S(\common.areset_dly[0]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \common.areset_dly_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_dly [12]),
        .Q(\common.areset_dly [13]),
        .S(\common.areset_dly[0]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \common.areset_dly_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_dly [13]),
        .Q(\common.areset_dly [14]),
        .S(\common.areset_dly[0]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \common.areset_dly_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_dly [14]),
        .Q(\common.areset_dly [15]),
        .S(\common.areset_dly[0]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \common.areset_dly_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_dly [0]),
        .Q(\common.areset_dly [1]),
        .S(\common.areset_dly[0]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \common.areset_dly_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_dly [1]),
        .Q(\common.areset_dly [2]),
        .S(\common.areset_dly[0]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \common.areset_dly_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_dly [2]),
        .Q(\common.areset_dly [3]),
        .S(\common.areset_dly[0]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \common.areset_dly_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_dly [3]),
        .Q(\common.areset_dly [4]),
        .S(\common.areset_dly[0]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \common.areset_dly_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_dly [4]),
        .Q(\common.areset_dly [5]),
        .S(\common.areset_dly[0]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \common.areset_dly_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_dly [5]),
        .Q(\common.areset_dly [6]),
        .S(\common.areset_dly[0]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \common.areset_dly_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_dly [6]),
        .Q(\common.areset_dly [7]),
        .S(\common.areset_dly[0]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \common.areset_dly_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_dly [7]),
        .Q(\common.areset_dly [8]),
        .S(\common.areset_dly[0]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \common.areset_dly_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_dly [8]),
        .Q(\common.areset_dly [9]),
        .S(\common.areset_dly[0]_i_1__0_n_0 ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \common.aresetn_d_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(aresetn),
        .Q(\common.aresetn_d ),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* USER_SLL_REG *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \common.laguna_m_handshake_asyncclear_inst 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\common.ACLEAR ),
        .D(\common.pipe[0].payload_valid_d ),
        .Q(\dual_slr.src_handshake ));
  LUT2 #(
    .INIT(4'h8)) 
    \common.laguna_m_handshake_asyncclear_inst_i_1__0 
       (.I0(s_axi_wvalid),
        .I1(\common.s_ready_i ),
        .O(\common.pipe[0].payload_valid_d ));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[0]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[10]),
        .Q(Q[10]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[11]),
        .Q(Q[11]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[12]),
        .Q(Q[12]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[13]),
        .Q(Q[13]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[14]),
        .Q(Q[14]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[15]),
        .Q(Q[15]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[16]),
        .Q(Q[16]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[17] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[17]),
        .Q(Q[17]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[18] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[18]),
        .Q(Q[18]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[19] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[19]),
        .Q(Q[19]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[1]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[20] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[20]),
        .Q(Q[20]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[21] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[21]),
        .Q(Q[21]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[22] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[22]),
        .Q(Q[22]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[23] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[23]),
        .Q(Q[23]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[24] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[24]),
        .Q(Q[24]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[25] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[25]),
        .Q(Q[25]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[26] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[26]),
        .Q(Q[26]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[27] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[27]),
        .Q(Q[27]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[28] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[28]),
        .Q(Q[28]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[29] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[29]),
        .Q(Q[29]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[2]),
        .Q(Q[2]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[30] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[30]),
        .Q(Q[30]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[31] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[31]),
        .Q(Q[31]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[32] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[32]),
        .Q(Q[32]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[33] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[33]),
        .Q(Q[33]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[34] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[34]),
        .Q(Q[34]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[35] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[35]),
        .Q(Q[35]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[3]),
        .Q(Q[3]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[4]),
        .Q(Q[4]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[5]),
        .Q(Q[5]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[6]),
        .Q(Q[6]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[7]),
        .Q(Q[7]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[8]),
        .Q(Q[8]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[9]),
        .Q(Q[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* USER_SLL_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.laguna_m_ready_d_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.laguna_m_ready_d_reg_0 ),
        .Q(\common.laguna_m_ready_d ),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* USER_SLL_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.laguna_m_reset_in_d_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.laguna_m_reset_in_d_reg_0 ),
        .Q(\common.laguna_m_reset_in_d ),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* USER_SLL_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.laguna_m_reset_out_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_d ),
        .Q(\common.laguna_m_reset_out_i ),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.ready_d_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.laguna_m_ready_d ),
        .Q(\common.ready_d ),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.s_ready_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.laguna_m_ready_d ),
        .Q(\common.s_ready_i ),
        .R(\common.areset_d ));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_26_source_region_slr" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_source_region_slr__parameterized1
   (\dual_slr.src_handshake ,
    m_axi_bready,
    out,
    Q,
    aclk,
    \common.ACLEAR ,
    \common.laguna_m_reset_in_d_reg_0 ,
    \common.laguna_m_ready_d_reg_0 ,
    m_axi_bvalid,
    m_axi_bresp);
  output \dual_slr.src_handshake ;
  output m_axi_bready;
  output out;
  output [1:0]Q;
  input aclk;
  input \common.ACLEAR ;
  input \common.laguna_m_reset_in_d_reg_0 ;
  input \common.laguna_m_ready_d_reg_0 ;
  input m_axi_bvalid;
  input [1:0]m_axi_bresp;

  wire [1:0]Q;
  wire aclk;
  wire \common.ACLEAR ;
  (* RTL_KEEP = "true" *) wire \common.areset_d ;
  (* RTL_KEEP = "true" *) wire \common.aresetn_d ;
  (* RTL_KEEP = "true" *) (* USER_SLL_REG = "true" *) wire \common.laguna_m_ready_d ;
  wire \common.laguna_m_ready_d_reg_0 ;
  (* RTL_KEEP = "true" *) (* USER_SLL_REG = "true" *) wire \common.laguna_m_reset_in_d ;
  wire \common.laguna_m_reset_in_d_reg_0 ;
  (* RTL_KEEP = "true" *) (* USER_SLL_REG = "true" *) wire \common.laguna_m_reset_out_i ;
  wire \common.pipe[0].payload_valid_d ;
  (* RTL_KEEP = "true" *) wire \common.ready_d ;
  (* RTL_KEEP = "true" *) wire \common.s_ready_i ;
  wire \dual_slr.src_handshake ;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;

  assign m_axi_bready = \common.s_ready_i ;
  assign out = \common.laguna_m_reset_out_i ;
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.areset_d_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.laguna_m_reset_in_d ),
        .Q(\common.areset_d ),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \common.aresetn_d_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(1'b1),
        .Q(\common.aresetn_d ),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* USER_SLL_REG *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \common.laguna_m_handshake_asyncclear_inst 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\common.ACLEAR ),
        .D(\common.pipe[0].payload_valid_d ),
        .Q(\dual_slr.src_handshake ));
  LUT2 #(
    .INIT(4'h8)) 
    \common.laguna_m_handshake_asyncclear_inst_i_1__1 
       (.I0(m_axi_bvalid),
        .I1(\common.s_ready_i ),
        .O(\common.pipe[0].payload_valid_d ));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(m_axi_bresp[0]),
        .Q(Q[0]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(m_axi_bresp[1]),
        .Q(Q[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* USER_SLL_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.laguna_m_ready_d_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.laguna_m_ready_d_reg_0 ),
        .Q(\common.laguna_m_ready_d ),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* USER_SLL_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.laguna_m_reset_in_d_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.laguna_m_reset_in_d_reg_0 ),
        .Q(\common.laguna_m_reset_in_d ),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* USER_SLL_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.laguna_m_reset_out_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_d ),
        .Q(\common.laguna_m_reset_out_i ),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.ready_d_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.laguna_m_ready_d ),
        .Q(\common.ready_d ),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.s_ready_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.laguna_m_ready_d ),
        .Q(\common.s_ready_i ),
        .R(\common.areset_d ));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_26_source_region_slr" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_source_region_slr__parameterized2
   (\dual_slr.src_handshake ,
    m_axi_rready,
    out,
    Q,
    aclk,
    \common.ACLEAR ,
    \common.laguna_m_reset_in_d_reg_0 ,
    \common.laguna_m_ready_d_reg_0 ,
    m_axi_rvalid,
    D);
  output \dual_slr.src_handshake ;
  output m_axi_rready;
  output out;
  output [33:0]Q;
  input aclk;
  input \common.ACLEAR ;
  input \common.laguna_m_reset_in_d_reg_0 ;
  input \common.laguna_m_ready_d_reg_0 ;
  input m_axi_rvalid;
  input [33:0]D;

  wire [33:0]D;
  wire [33:0]Q;
  wire aclk;
  wire \common.ACLEAR ;
  (* RTL_KEEP = "true" *) wire \common.areset_d ;
  (* RTL_KEEP = "true" *) wire \common.aresetn_d ;
  (* RTL_KEEP = "true" *) (* USER_SLL_REG = "true" *) wire \common.laguna_m_ready_d ;
  wire \common.laguna_m_ready_d_reg_0 ;
  (* RTL_KEEP = "true" *) (* USER_SLL_REG = "true" *) wire \common.laguna_m_reset_in_d ;
  wire \common.laguna_m_reset_in_d_reg_0 ;
  (* RTL_KEEP = "true" *) (* USER_SLL_REG = "true" *) wire \common.laguna_m_reset_out_i ;
  wire \common.pipe[0].payload_valid_d ;
  (* RTL_KEEP = "true" *) wire \common.ready_d ;
  (* RTL_KEEP = "true" *) wire \common.s_ready_i ;
  wire \dual_slr.src_handshake ;
  wire m_axi_rvalid;

  assign m_axi_rready = \common.s_ready_i ;
  assign out = \common.laguna_m_reset_out_i ;
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.areset_d_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.laguna_m_reset_in_d ),
        .Q(\common.areset_d ),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \common.aresetn_d_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(1'b1),
        .Q(\common.aresetn_d ),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* USER_SLL_REG *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \common.laguna_m_handshake_asyncclear_inst 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\common.ACLEAR ),
        .D(\common.pipe[0].payload_valid_d ),
        .Q(\dual_slr.src_handshake ));
  LUT2 #(
    .INIT(4'h8)) 
    \common.laguna_m_handshake_asyncclear_inst_i_1__3 
       (.I0(m_axi_rvalid),
        .I1(\common.s_ready_i ),
        .O(\common.pipe[0].payload_valid_d ));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[0]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[10]),
        .Q(Q[10]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[11]),
        .Q(Q[11]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[12]),
        .Q(Q[12]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[13]),
        .Q(Q[13]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[14]),
        .Q(Q[14]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[15]),
        .Q(Q[15]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[16]),
        .Q(Q[16]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[17] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[17]),
        .Q(Q[17]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[18] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[18]),
        .Q(Q[18]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[19] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[19]),
        .Q(Q[19]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[1]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[20] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[20]),
        .Q(Q[20]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[21] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[21]),
        .Q(Q[21]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[22] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[22]),
        .Q(Q[22]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[23] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[23]),
        .Q(Q[23]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[24] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[24]),
        .Q(Q[24]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[25] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[25]),
        .Q(Q[25]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[26] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[26]),
        .Q(Q[26]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[27] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[27]),
        .Q(Q[27]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[28] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[28]),
        .Q(Q[28]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[29] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[29]),
        .Q(Q[29]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[2]),
        .Q(Q[2]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[30] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[30]),
        .Q(Q[30]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[31] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[31]),
        .Q(Q[31]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[32] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[32]),
        .Q(Q[32]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[33] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[33]),
        .Q(Q[33]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[3]),
        .Q(Q[3]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[4]),
        .Q(Q[4]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[5]),
        .Q(Q[5]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[6]),
        .Q(Q[6]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[7]),
        .Q(Q[7]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[8]),
        .Q(Q[8]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* USER_SLL_REG *) 
  FDRE \common.laguna_m_payload_i_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[9]),
        .Q(Q[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* USER_SLL_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.laguna_m_ready_d_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.laguna_m_ready_d_reg_0 ),
        .Q(\common.laguna_m_ready_d ),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* USER_SLL_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.laguna_m_reset_in_d_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.laguna_m_reset_in_d_reg_0 ),
        .Q(\common.laguna_m_reset_in_d ),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* USER_SLL_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.laguna_m_reset_out_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.areset_d ),
        .Q(\common.laguna_m_reset_out_i ),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.ready_d_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.laguna_m_ready_d ),
        .Q(\common.ready_d ),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \common.s_ready_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\common.laguna_m_ready_d ),
        .Q(\common.s_ready_i ),
        .R(\common.areset_d ));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[33].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[33].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__1
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[27].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[27].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__10
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[8].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[8].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__100
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[32].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[32].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__101
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[0].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[0].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__102
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[1].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[1].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__103
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[2].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[2].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__104
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[3].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[3].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__105
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[4].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[4].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__106
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[5].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[5].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__107
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[6].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[6].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__108
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[7].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[7].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__109
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[8].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[8].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__11
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[9].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[9].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__110
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[9].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[9].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__111
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[10].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[10].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__112
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[11].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[11].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__113
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[12].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[12].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__114
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[13].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[13].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__115
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[14].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[14].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__116
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[15].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[15].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__117
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[16].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[16].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__118
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[17].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[17].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__119
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[18].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[18].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__12
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[10].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[10].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__120
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[19].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[19].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__121
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[20].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[20].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__122
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[21].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[21].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__123
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[22].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[22].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__124
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[23].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[23].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__125
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[24].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[24].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__126
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[25].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[25].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__127
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[26].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[26].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__13
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[11].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[11].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__14
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[12].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[12].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__15
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[13].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[13].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__16
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[14].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[14].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__17
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[15].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[15].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__18
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[16].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[16].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__19
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[17].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[17].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__2
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[0].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[0].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__20
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[18].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[18].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__21
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[19].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[19].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__22
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[20].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[20].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__23
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[21].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[21].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__24
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[22].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[22].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__25
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[23].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[23].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__26
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[24].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[24].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__27
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[25].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[25].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__28
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[26].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[26].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__29
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[27].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[27].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__3
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[1].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[1].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__30
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[0].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[0].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__31
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[1].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[1].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__32
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[2].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[2].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__33
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[3].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[3].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__34
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[4].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[4].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__35
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[5].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[5].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__36
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[6].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[6].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__37
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[7].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[7].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__38
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[8].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[8].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__39
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[9].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[9].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__4
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[2].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[2].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__40
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[10].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[10].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__41
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[11].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[11].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__42
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[12].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[12].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__43
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[13].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[13].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__44
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[14].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[14].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__45
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[15].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[15].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__46
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[16].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[16].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__47
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[17].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[17].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__48
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[18].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[18].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__49
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[19].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[19].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__5
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[3].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[3].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__50
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[20].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[20].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__51
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[21].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[21].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__52
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[22].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[22].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__53
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[23].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[23].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__54
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[24].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[24].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__55
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[25].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[25].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__56
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[26].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[26].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__57
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[27].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[27].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__58
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[28].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[28].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__59
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[29].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[29].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__6
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[4].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[4].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__60
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[30].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[30].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__61
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[31].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[31].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__62
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[32].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[32].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__63
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[33].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[33].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__64
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[34].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[34].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__65
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[35].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[35].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__66
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\b15.b_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[0].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\b15.b_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[0].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__67
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\b15.b_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[1].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\b15.b_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[1].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__68
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[0].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[0].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__69
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[1].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[1].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__7
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[5].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[5].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__70
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[2].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[2].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__71
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[3].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[3].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__72
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[4].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[4].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__73
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[5].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[5].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__74
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[6].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[6].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__75
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[7].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[7].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__76
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[8].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[8].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__77
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[9].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[9].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__78
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[10].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[10].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__79
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[11].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[11].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__8
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[6].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[6].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__80
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[12].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[12].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__81
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[13].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[13].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__82
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[14].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[14].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__83
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[15].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[15].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__84
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[16].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[16].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__85
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[17].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[17].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__86
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[18].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[18].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__87
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[19].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[19].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__88
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[20].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[20].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__89
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[21].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[21].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__9
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[7].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[7].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__90
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[22].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[22].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__91
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[23].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[23].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__92
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[24].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[24].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__93
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[25].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[25].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__94
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[26].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[26].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__95
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[27].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[27].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__96
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[28].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[28].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__97
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[29].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[29].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__98
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[30].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[30].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* C_A_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_register_slice_v2_1_26_srl_rtl" *) 
(* P_SRLDEPTH = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__99
   (clk,
    a,
    ce,
    d,
    q);
  input clk;
  input [3:0]a;
  input ce;
  input d;
  output q;

  wire [3:0]a;
  wire ce;
  wire clk;
  wire d;
  wire q;

  (* srl_bus_name = "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[31].srl_nx1 /\shift_reg_reg " *) 
  (* srl_name = "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[31].srl_nx1 /\shift_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl16 
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .CE(ce),
        .CLK(clk),
        .D(d),
        .Q(q));
endmodule

(* CHECK_LICENSE_TYPE = "ulp_ip_rs_axi_ctrl_user_03_0,axi_register_slice_v2_1_26_axi_register_slice,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axi_register_slice_v2_1_26_axi_register_slice,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (aclk,
    aresetn,
    s_axi_awaddr,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awaddr,
    m_axi_awprot,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arprot,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rvalid,
    m_axi_rready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK, ASSOCIATED_BUSIF S_AXI:M_AXI, ASSOCIATED_RESET ARESETN, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN cd_pcie_user_00, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST, POLARITY ACTIVE_LOW, INSERT_VIP 0, TYPE INTERCONNECT" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) input [24:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *) input [2:0]s_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [24:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *) input [2:0]s_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 250000000, ID_WIDTH 0, ADDR_WIDTH 25, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0, CLK_DOMAIN cd_pcie_user_00, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWADDR" *) output [24:0]m_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWPROT" *) output [2:0]m_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWVALID" *) output m_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWREADY" *) input m_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WDATA" *) output [31:0]m_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WSTRB" *) output [3:0]m_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WVALID" *) output m_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WREADY" *) input m_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BRESP" *) input [1:0]m_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BVALID" *) input m_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BREADY" *) output m_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARADDR" *) output [24:0]m_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARPROT" *) output [2:0]m_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARVALID" *) output m_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARREADY" *) input m_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RDATA" *) input [31:0]m_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RRESP" *) input [1:0]m_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RVALID" *) input m_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 250000000, ID_WIDTH 0, ADDR_WIDTH 25, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0, CLK_DOMAIN cd_pcie_user_00, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output m_axi_rready;

  wire aclk;
  wire aresetn;
  wire [24:0]m_axi_araddr;
  wire [2:0]m_axi_arprot;
  wire m_axi_arready;
  wire m_axi_arvalid;
  wire [24:0]m_axi_awaddr;
  wire [2:0]m_axi_awprot;
  wire m_axi_awready;
  wire m_axi_awvalid;
  wire m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire [31:0]m_axi_rdata;
  wire m_axi_rready;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire [31:0]m_axi_wdata;
  wire m_axi_wready;
  wire [3:0]m_axi_wstrb;
  wire m_axi_wvalid;
  wire [24:0]s_axi_araddr;
  wire [2:0]s_axi_arprot;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [24:0]s_axi_awaddr;
  wire [2:0]s_axi_awprot;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire NLW_inst_m_axi_wlast_UNCONNECTED;
  wire NLW_inst_s_axi_rlast_UNCONNECTED;
  wire [1:0]NLW_inst_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_inst_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_arlock_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_inst_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_aruser_UNCONNECTED;
  wire [1:0]NLW_inst_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_inst_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_awlock_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_inst_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_awuser_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_wid_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_wuser_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_bid_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_buser_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_rid_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_ruser_UNCONNECTED;

  (* C_AXI_ADDR_WIDTH = "25" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "32" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_PROTOCOL = "2" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_SUPPORTS_REGION_SIGNALS = "0" *) 
  (* C_AXI_SUPPORTS_USER_SIGNALS = "0" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_FAMILY = "virtexuplus" *) 
  (* C_NUM_SLR_CROSSINGS = "1" *) 
  (* C_PIPELINES_MASTER_AR = "0" *) 
  (* C_PIPELINES_MASTER_AW = "0" *) 
  (* C_PIPELINES_MASTER_B = "0" *) 
  (* C_PIPELINES_MASTER_R = "0" *) 
  (* C_PIPELINES_MASTER_W = "0" *) 
  (* C_PIPELINES_MIDDLE_AR = "0" *) 
  (* C_PIPELINES_MIDDLE_AW = "0" *) 
  (* C_PIPELINES_MIDDLE_B = "0" *) 
  (* C_PIPELINES_MIDDLE_R = "0" *) 
  (* C_PIPELINES_MIDDLE_W = "0" *) 
  (* C_PIPELINES_SLAVE_AR = "0" *) 
  (* C_PIPELINES_SLAVE_AW = "0" *) 
  (* C_PIPELINES_SLAVE_B = "0" *) 
  (* C_PIPELINES_SLAVE_R = "0" *) 
  (* C_PIPELINES_SLAVE_W = "0" *) 
  (* C_REG_CONFIG_AR = "15" *) 
  (* C_REG_CONFIG_AW = "15" *) 
  (* C_REG_CONFIG_B = "15" *) 
  (* C_REG_CONFIG_R = "15" *) 
  (* C_REG_CONFIG_W = "15" *) 
  (* C_RESERVE_MODE = "0" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* G_AXI_ARADDR_INDEX = "0" *) 
  (* G_AXI_ARADDR_WIDTH = "25" *) 
  (* G_AXI_ARBURST_INDEX = "28" *) 
  (* G_AXI_ARBURST_WIDTH = "0" *) 
  (* G_AXI_ARCACHE_INDEX = "28" *) 
  (* G_AXI_ARCACHE_WIDTH = "0" *) 
  (* G_AXI_ARID_INDEX = "28" *) 
  (* G_AXI_ARID_WIDTH = "0" *) 
  (* G_AXI_ARLEN_INDEX = "28" *) 
  (* G_AXI_ARLEN_WIDTH = "0" *) 
  (* G_AXI_ARLOCK_INDEX = "28" *) 
  (* G_AXI_ARLOCK_WIDTH = "0" *) 
  (* G_AXI_ARPAYLOAD_WIDTH = "28" *) 
  (* G_AXI_ARPROT_INDEX = "25" *) 
  (* G_AXI_ARPROT_WIDTH = "3" *) 
  (* G_AXI_ARQOS_INDEX = "28" *) 
  (* G_AXI_ARQOS_WIDTH = "0" *) 
  (* G_AXI_ARREGION_INDEX = "28" *) 
  (* G_AXI_ARREGION_WIDTH = "0" *) 
  (* G_AXI_ARSIZE_INDEX = "28" *) 
  (* G_AXI_ARSIZE_WIDTH = "0" *) 
  (* G_AXI_ARUSER_INDEX = "28" *) 
  (* G_AXI_ARUSER_WIDTH = "0" *) 
  (* G_AXI_AWADDR_INDEX = "0" *) 
  (* G_AXI_AWADDR_WIDTH = "25" *) 
  (* G_AXI_AWBURST_INDEX = "28" *) 
  (* G_AXI_AWBURST_WIDTH = "0" *) 
  (* G_AXI_AWCACHE_INDEX = "28" *) 
  (* G_AXI_AWCACHE_WIDTH = "0" *) 
  (* G_AXI_AWID_INDEX = "28" *) 
  (* G_AXI_AWID_WIDTH = "0" *) 
  (* G_AXI_AWLEN_INDEX = "28" *) 
  (* G_AXI_AWLEN_WIDTH = "0" *) 
  (* G_AXI_AWLOCK_INDEX = "28" *) 
  (* G_AXI_AWLOCK_WIDTH = "0" *) 
  (* G_AXI_AWPAYLOAD_WIDTH = "28" *) 
  (* G_AXI_AWPROT_INDEX = "25" *) 
  (* G_AXI_AWPROT_WIDTH = "3" *) 
  (* G_AXI_AWQOS_INDEX = "28" *) 
  (* G_AXI_AWQOS_WIDTH = "0" *) 
  (* G_AXI_AWREGION_INDEX = "28" *) 
  (* G_AXI_AWREGION_WIDTH = "0" *) 
  (* G_AXI_AWSIZE_INDEX = "28" *) 
  (* G_AXI_AWSIZE_WIDTH = "0" *) 
  (* G_AXI_AWUSER_INDEX = "28" *) 
  (* G_AXI_AWUSER_WIDTH = "0" *) 
  (* G_AXI_BID_INDEX = "2" *) 
  (* G_AXI_BID_WIDTH = "0" *) 
  (* G_AXI_BPAYLOAD_WIDTH = "2" *) 
  (* G_AXI_BRESP_INDEX = "0" *) 
  (* G_AXI_BRESP_WIDTH = "2" *) 
  (* G_AXI_BUSER_INDEX = "2" *) 
  (* G_AXI_BUSER_WIDTH = "0" *) 
  (* G_AXI_RDATA_INDEX = "0" *) 
  (* G_AXI_RDATA_WIDTH = "32" *) 
  (* G_AXI_RID_INDEX = "34" *) 
  (* G_AXI_RID_WIDTH = "0" *) 
  (* G_AXI_RLAST_INDEX = "34" *) 
  (* G_AXI_RLAST_WIDTH = "0" *) 
  (* G_AXI_RPAYLOAD_WIDTH = "34" *) 
  (* G_AXI_RRESP_INDEX = "32" *) 
  (* G_AXI_RRESP_WIDTH = "2" *) 
  (* G_AXI_RUSER_INDEX = "34" *) 
  (* G_AXI_RUSER_WIDTH = "0" *) 
  (* G_AXI_WDATA_INDEX = "0" *) 
  (* G_AXI_WDATA_WIDTH = "32" *) 
  (* G_AXI_WID_INDEX = "36" *) 
  (* G_AXI_WID_WIDTH = "0" *) 
  (* G_AXI_WLAST_INDEX = "36" *) 
  (* G_AXI_WLAST_WIDTH = "0" *) 
  (* G_AXI_WPAYLOAD_WIDTH = "36" *) 
  (* G_AXI_WSTRB_INDEX = "32" *) 
  (* G_AXI_WSTRB_WIDTH = "4" *) 
  (* G_AXI_WUSER_INDEX = "36" *) 
  (* G_AXI_WUSER_WIDTH = "0" *) 
  (* P_FORWARD = "0" *) 
  (* P_RESPONSE = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice inst
       (.aclk(aclk),
        .aclk2x(1'b0),
        .aresetn(aresetn),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_arburst(NLW_inst_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_inst_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_inst_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_inst_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_inst_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(m_axi_arprot),
        .m_axi_arqos(NLW_inst_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(m_axi_arready),
        .m_axi_arregion(NLW_inst_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_inst_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_inst_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(NLW_inst_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_inst_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_inst_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_inst_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_inst_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awqos(NLW_inst_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(m_axi_awready),
        .m_axi_awregion(NLW_inst_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_inst_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_inst_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bid(1'b0),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(m_axi_rready),
        .m_axi_rresp(m_axi_rresp),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(m_axi_rvalid),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wid(NLW_inst_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_inst_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wuser(NLW_inst_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(m_axi_wvalid),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst({1'b0,1'b1}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(s_axi_arready),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b1,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst({1'b0,1'b1}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(s_axi_awready),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b1,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(NLW_inst_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_buser(NLW_inst_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(NLW_inst_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_inst_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_ruser(NLW_inst_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(s_axi_wvalid));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
