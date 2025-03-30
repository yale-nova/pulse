// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Fri Oct 11 12:18:46 2024
// Host        : yupeng-ThinkBook-16-G6-IRL running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_7b93_lut_buffer_0_sim_netlist.v
// Design      : bd_7b93_lut_buffer_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu250-figd2104-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_7b93_lut_buffer_0,lut_buffer_v2_0_0_lut_buffer,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "lut_buffer_v2_0_0_lut_buffer,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (tdi_i,
    tms_i,
    tck_i,
    drck_i,
    sel_i,
    shift_i,
    update_i,
    capture_i,
    runtest_i,
    reset_i,
    bscanid_en_i,
    tdo_o,
    tdi_o,
    tms_o,
    tck_o,
    drck_o,
    sel_o,
    shift_o,
    update_o,
    capture_o,
    runtest_o,
    reset_o,
    bscanid_en_o,
    tdo_i);
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan TDI" *) input tdi_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan TMS" *) input tms_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan TCK" *) input tck_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan DRCK" *) input drck_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan SEL" *) input sel_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan SHIFT" *) input shift_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan UPDATE" *) input update_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan CAPTURE" *) input capture_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan RUNTEST" *) input runtest_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan RESET" *) input reset_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan BSCANID_EN" *) input bscanid_en_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan TDO" *) output tdo_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan TDI" *) output tdi_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan TMS" *) output tms_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan TCK" *) output tck_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan DRCK" *) output drck_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan SEL" *) output sel_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan SHIFT" *) output shift_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan UPDATE" *) output update_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan CAPTURE" *) output capture_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan RUNTEST" *) output runtest_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan RESET" *) output reset_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan BSCANID_EN" *) output bscanid_en_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan TDO" *) input tdo_i;

  wire bscanid_en_i;
  wire bscanid_en_o;
  wire capture_i;
  wire capture_o;
  wire drck_i;
  wire drck_o;
  wire reset_i;
  wire reset_o;
  wire runtest_i;
  wire runtest_o;
  wire sel_i;
  wire sel_o;
  wire shift_i;
  wire shift_o;
  wire tck_i;
  wire tck_o;
  wire tdi_i;
  wire tdi_o;
  wire tdo_i;
  wire tdo_o;
  wire tms_i;
  wire tms_o;
  wire update_i;
  wire update_o;
  wire [31:0]NLW_inst_bscanid_o_UNCONNECTED;

  (* C_EN_BSCANID_VEC = "0" *) 
  (* DONT_TOUCH *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lut_buffer_v2_0_0_lut_buffer inst
       (.bscanid_en_i(bscanid_en_i),
        .bscanid_en_o(bscanid_en_o),
        .bscanid_i({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .bscanid_o(NLW_inst_bscanid_o_UNCONNECTED[31:0]),
        .capture_i(capture_i),
        .capture_o(capture_o),
        .drck_i(drck_i),
        .drck_o(drck_o),
        .reset_i(reset_i),
        .reset_o(reset_o),
        .runtest_i(runtest_i),
        .runtest_o(runtest_o),
        .sel_i(sel_i),
        .sel_o(sel_o),
        .shift_i(shift_i),
        .shift_o(shift_o),
        .tck_i(tck_i),
        .tck_o(tck_o),
        .tdi_i(tdi_i),
        .tdi_o(tdi_o),
        .tdo_i(tdo_i),
        .tdo_o(tdo_o),
        .tms_i(tms_i),
        .tms_o(tms_o),
        .update_i(update_i),
        .update_o(update_o));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
f1j0yiOflyV2kLMBe+hsL0MouEX0Wv67RiMU1n4QYTAQ1VnAgpLBrFb17v/9GYVLUPddIDNOGPRZ
u2WV424zInW/Vmf6dhRXe1SsADWvbW7FiGPDw4jSrHnTNCEJCn+cfjSxhjMmAkuHG1fir3l+gxGz
L/X05RxFmZ2QL5UIwRk=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
0i7KENkA2NQO3GXaWrbdCJnWHApRZRcJ0tLb3D4baBRVZkAd2BJDMxoSUwnRKToSUEazPqGR4ywK
WqTfdpMetoN7s7CYXDjMoygLqtE11hWxTqG3rxD4MHY+oxhHIbr0ICQdK58tH2gBIeD4Y8rjtc1M
L01bGVrzL348HIiDA0SPDZYJeem4+87SeBTvZP3vuJPPdCuxDmudnIAXnqy6CGab6C9RgMyi/LlF
L0I7jQB9ONBLqrj8KcUrPrduGmiyShXt/NwzRFGoTEY3E0lYXHgJkdReoCCCmYa5+FNOs18Qwno+
YkWOQhWFcPvWa4g6Y/ouRdk7jPEz/jq+GzkkPg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
KNOVCEjQhCCxVJzUYfNJKAf2haBXTHL4u8VRnkMGr2AZ4CjhCD2LNR3uxAto+kgqlGvllYk6mDuX
ehYphfcWZHnD/uMO9Mlgm2xYmmqRUjk15bM5mfH+RhWUKFD6VRSygM9P06naXp5l6yAxCjsaJoia
sn/MOoxmT2wVf3n+Xdg=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
V2yPa0MI9WR304IOhrhuSQ9Ldvhw0yC0csbY2Yup99Z9agkgpsDjW+77nBHVwkwZmgUyfGSo0TK2
5+kz3fJgn/RD2oSYkSaBVXzvKItV8acak2gfA2kdbaCCDklOwfdWWqRGAWts/1Mg5clfcdwoNOZ1
m3ZVTEFXXRdnaVotagNm2zuupNsX/J509sWqJwxqY/tkapVzbizogJQlBDpHRmeI8Wy9MHgl+ez8
ErgBkS1v84iUGQ0VVXOdzfpn7Rr+JkKzknuKR21+imEMhw/nro+d3J6z9gL9sw/hot77/E45Wlv0
J6rMye1iHGBgTJ/ongJJ/bF2sU0UIep3jo3Ycw==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Gsa5eR6EJ+H0y0tfeQrSF62h+z9EjOrg9Nx7r8uw/ePJ78O1ebL7fqko1w5NXOXLbrE6GH0vB5PG
/sp4Ez/hK7CAozkTRRLKNpEiEjYs2xf/XWbCy8m7MjJL3tGVSrP4bCa5emQEsIcEi8ZXNnVw4khq
FTPzKuxstMIRAptl0GnPBlQC7elSuw6Li8Olj1CTQU7VlBFtuNyAt5Onc/FWt3H78x5rf4h+wZAC
rCL/7OKx01xqTpSd7s35OB0kE6C75KSwa0lxluUz3o07qQoZ1FuaWMdqLjSuwyBAqL97DAkcrtNs
SGDdpgTIT+dK7ICRArioBCEKt/kMjmL/uID0Hg==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
h+kjW5M8Dem541WFtDf09jjHpUR1/+CL7YNUyFmXM5qvgxmmSz2XXkwnCuEbvknqy0Yh9fpgPEtw
P8UmTkW5JrTQVdJEaqXXg5foMh4iNGQJirjH4SbGQ/YuI2eV97IrrEygr9Cs4lTCJJxvBYMzkZ8O
7k00rA51JoBJVpXt/5T5upbqQiFhJ6MU6avXSC4vezl93MB5UrxRfDP7E7q9m0W+xAcLwxYEwl4B
1E52gJSYNRV3KH5tXZTsXURVzpZ4rgpGuhnTqaRIbzdHDFBO5R2HLAM6qPpwH3iXqmCPpwhcuL/C
jBAzhuIZ3U12mvg6St28AxyWYwWi2IAz4uzfgg==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
dtmv56Ko4bFw0rY2VV0lIolvnvL8ZqJOHXaQX9ROldne6mUD/6S3uCZJeduFtssQ5PyvwzGhKGxi
7um7D/9xiCOrGpJTZ8BXDmmL9x6GCuNjAfNCfBGJsQEf6celtP5Wb+/KyqzKylMTmOn4jYDpwKnv
7aGYgDcY7bLQPstQJ1lqpnIzpsXokk2yfTXesH1TE5QAebLuUzMJkhjk+/0Png8FOhnM2GWK/nNN
tYDjJVOBtj/HBwhT/lFXucnPSnqCy/bh0ObsNNSD5sUoHhUk00KBNeDEdIGHT7MgOiRMEgRxIVBr
fE2b4uHkwE3B9zjQ5ayuPIdobQKIH9uajxa1Cw==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
nP7sH9m1/BWzEDOejD42H89YXpl36cWXtZO9mIisNlEpVUC6G6NkFQXuEvVhxWDlr/ANE2zhdLuk
pUjX5zCIatBQEjjG7DxiP93OzjAUtlcezRl2EdP8WONFhAXwbtW+FjwvaygqnYLOFuX1NySRVtIm
JnNXiZV1065+1Z3tuINtTEoj7vWpyiY6keja/lhk6y7N1vDfbpJnxwC8XF6qagRF2f3BSidj4gRD
kLvmVWetDWRwL3rbqsFqAryiMwdmn+bzBSuKJX0DvUZ9Mf5pfVjh6oeaUiV+N8VsCoGG4AYJMW6a
BDdl5Vq35R9zL+M25sLYEKaG07cYl0Exhxk6oVzhqw/+PO//HHdYa8S6U3zet2RHV0BUpC+IxVj6
r/daUxvI5ChIZKtIsApJvvJjybQUYIZz/lMNvxQY//moq88zjpwQ13CeVbxZA4cEo3LTdka/RIet
ScU9pHox1Y+im5MusVfpMJQNihowibveX0/XnfK1an+3HLXxA2daxGiD

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
gZo52SHmX+/9ltS9SXeTGQ5BAPUpW+A6ImhJo+12gKxivRKWEgEcZyBRgM7Hj6mtw9eEPmcH7UuO
9vD90A9QvItgrbujaZxLVL7i94ZAamx40/J5wjA0HPDTV75t68r0vy1qwPQ3sZeu6XwipquHvOWj
ujFI8+tIW+YWMlunpQwGZ3rGMizIBhMobkp1BGodxvf99yEznW3Oi9Y/TJINC1QCqR6JK9Z4AscZ
EZf7XVSb7dPw0bFtiw6ZaZQmyvhRQYrO8FiaZJj2P7cxrUIuDAEpK0DY1MdJ5NKVuNFFKweNyC3/
3oyciyDOZSr6a1Ow3A2imATmKbSnAKV6h9qoMg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 2960)
`pragma protect data_block
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
`pragma protect end_protected
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
