// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Fri Oct 11 12:13:35 2024
// Host        : yupeng-ThinkBook-16-G6-IRL running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_1361_gapping_demand_toggle_0_sim_netlist.v
// Design      : bd_1361_gapping_demand_toggle_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu250-figd2104-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_1361_gapping_demand_toggle_0,c_counter_binary_v12_0_15,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_15,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (CLK,
    CE,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN cd_ctrl_00, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_HIGH" *) input CE;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} DATA_WIDTH 1}" *) output [0:0]Q;

  wire CE;
  wire CLK;
  wire [0:0]Q;
  wire NLW_U0_THRESH0_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_COUNT_BY = "1" *) 
  (* C_COUNT_MODE = "0" *) 
  (* C_COUNT_TO = "1" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_LOAD = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_HAS_THRESH0 = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_LOAD_LOW = "0" *) 
  (* C_RESTRICT_COUNT = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_THRESH0_VALUE = "1" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "1" *) 
  (* C_XDEVICEFAMILY = "virtexuplus" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_15 U0
       (.CE(CE),
        .CLK(CLK),
        .L(1'b0),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(1'b1));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
etX3SrY3g8TAXqvd6Iw5SvKCZZW0eO22ydOZWWDKv0XmkGG+9M8FsJMD1dG+u6RHY7gdvUOfoViN
wYkRFkkBiOKUODn3KY+yorf/HZ9bJsxi4Q2Ru+Zt4ivE2MW+zxqBWPhCkRfS/ucHGuO95naXnjgL
lb9i6CyTczDpW4UI/Ik=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ocAlwZgQjNXrZcvxNs8IW79dzfyE9fvD0AHIqJ8SeTEjMRupN9qSyJOEgFaNpPxUIuu0svukJu0R
IqatA+wGaribd/22wO76Mj0aoD9bGE3VsaN0pR3+Y8YoU+IGyyVvjDG9mNbukvYTSJ5ZEMHsUOyi
imiBAjKNItKHyfLmbgwiEIR1oZvFzOU1gKu//rXEuLNx3KotU0MiuqklmmKAGGJ254g/V2yZiNe4
HQ5tbfx8TDma7/NxoBfjg3Bvq2/eHzXnOj06HGJUgjWu2IDATi1Tf48miMjPHWhgHLGKzWaqgjyq
g35QHtqKIkgMv0ig+cxF8SaXK1SIsQAmTNFhtw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
WIYuLymN2Nv/rvoxxWXQJUzJMgD17q8uGZGaBtC6iR4pcjbP2LoAhSDAWPDJ8U0aLYG9J5uhEBJr
/OOxx4nmKJUgsWFJzpj1iAmBvs57SxHV6jPVhnslDdyPjeSb8osDZ9b6tft6h9988MculRQRvGgI
HSSSC/8vkkw0e/Kc6U8=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
T7BkeDa870ApjbtvZ7/2khjAHJx69MvPtsnIFkvlpIJh1CZzfvHg0ZYY8clsVgB/Qtk+a1wUS8wP
HoB0f6b47CZuLyVfYbdve2ifMZVtreXVYOjP81VEm/bz/Y0YCGUToVzTEgzkTUAMwsVq461ePNjA
1OIMAhX2UTCZemmI+t1xc7UUPsprpRtQFsD2AycglI1VCpO2g9OrLgGhEOq4Rs+qIncV13whpF+6
ow3SfiEWSC5yWeJWQVSILtpitCj/uLGV7JhZOtyk+GNqgtNN/kUEXukyTmH4gtr3R0Weq0Ta/7UA
jEeryu6BSvjECQ/4CXkcsLZx21gswFcMgdy/+w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
0K8CiEosnZGPGhb4bfIxrv7D6G0rwpTFuE0sxW9JWE7hZOw6ejqpy+L7rBIjbtQWBlwBxjJyyBOr
DN7TKWiVYDmvUwUJk5GOYGGm5leq/LSFNBRH/isZvo0qJMN6vy+9FVe9M5YSMEnFs3rXqyLGptPM
gknJThr/VhNLOJvbCnPFMl8hUL88Z45aFQY6pQypIxO9aSVD6FNrIjSWvSKBsp47joDxHbjgngCK
aEyWu5FCOvZink3ultoCC36AMpVuoei/rz5cE2lS/JnA0EHecKtNxb5UyEX0k1RkI7Y573ErJHDK
672KED4gm/zneBtNCYGxcXUo/DgfrPXjUWRXUw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ngjVz6+RURV0NXze0ScoKCqO+Sw1oGm0rynAKadmo2FAqjTc2+/XedUU3UcU7YuXAAIBHrw6La+O
HsUGGhJmLx8cMtddX+L3oymDlcoxkaqSJlhDigmTawK44PlNtYqssNQN+pco7blJLk9/oqmMyuuI
0Wv6/OqwjGRH5z/FOF0exK65OVlKVFKwibJXjsGH/Df3LafmiyeS7qcveJ91nS4q4IjFSTY9WZUX
IOIJ4vGlDtY4jnS3eRHUIX4X59Zj8yId5U0Hs/FrKzCYV07oUy2rTvltPwkFj5vg9G4CgEunNPc3
3wcZb74KDE6Jse+vxtK+i7H3Sy6iUu5AjmD7lQ==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
f1eoK6dk/UeyS6WKTzZq+16+eooDXoHX+8BhhaCu54Rj9FahkQz9QhJf/wF2+AXgmFOom5ukrVr/
v3BFE8gnMHUnQOWBDrNewnalpxoqLTj0jO8w/Dle08RaL0nJ37F9JYfwvY5BrUNuYrd9jm4Q+gB0
u6pWiPYTtwxvIy8UrGz4Lw3INaGxrFOeuFuh0YLyAPcmIH4Zx3g0P1uoDBRXeFh0lrPfeb/VHh5N
MbBMMd1ZBfBORTEAEfeCKHodK2Ag6VELMOcNvRsngPNUprRlwyoznZgx4EGP5uknUWJ28szVxQKF
hNPRhe1ZYPmHS/A+jmSlcs4nFOlLq5lMa8WNJg==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
D2RwxcSch3LPUkN/XFzw4CqPI9z++PJYhbEiPcZO87hBRRGQz6upuyWq6R370Oarp7pn7/dYPDqt
BkvR5v+SmGaDOxyTErt8Co4qFR+t2eYDF4qA7aL/JJhR4GWjSGL2n1wte4fAvKHAWxVPnbeXY72h
ZguOZdrKfH9i/zlBQEOOb0+u7d/zavZwXNleLCIWGHlwdEPZ2IzMpccItAx9AfOcRFrSvGee8a5U
f5T+IFSfqdIKLE2xvfpShFqr0PAS0UyIztiDz2s2L/3PCTeZb6PAUq6+nRC1d+a4Zudo8eU3vQrp
XRQH5XfY7HDEFp0FwSdVwpTbpOICVYutMg+WqWNsOilITHjrqhtdJ1eakkJh42/iXuGHm74DygNx
YIudsp166RXGfy6PRpADb15n+U2Zs3i2bs2PvhiXdfa6XgrRZheG6hqE/gGZ8jzRMOrN6U73Um3f
nRmIBNssHc+NUR19lvdaQcG8t3iv4mFgPCPzhwuPMfEJ4K9vXupKZRZC

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GiBTRr15aQ7ZFVD9DA3YCzxBU25RUBqeLM6/zaVyX1C2MTwaDcj7eUsmHPTuLrbz8wqCpKE70+mi
MFXYoP3RM/M7Qvdjz8Wr99Xd2NrlOmB9eNpCWyr2JEhHBVFXtK8Pg+eYu1T83oiQfLd5qKA0acct
+ZviXiAOaPDluQKhBNJuucJJsMIT/pXw0sQ5H7Vwf/PJKdX4bVALFvpra39UXluHDWce+mK6eI5N
olI4dHLhpo6pN6FFWESTD+2KoftBx3MDImLjocOGF7pOhGSNxB81JS3xtKYXvyKUKVXinrL/Rt7H
VT02aL+3dCLG1Vx5Jt8tUOXwye0BQsDmf8/vvg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
SgddX4TORx3fsnqI8VliOUCdYxhwjZn/+ZMkyF3/y6sTNwtBkMBiH67I/xyJs/UYxPKXHB/XXwvh
OBqr3xou+FcQwhuKxPqL2msi66npruJRIOWEFEO8c143pkCl+I+aVfh0+x3SsW1yMzrPsN5qKHfy
iYfc3sLOi/PGGrxfKWHFuwNFrU8cNOioATNRkbKqQC6mDokwI293LnmyiOFq6M5Xgw2ezh0ocwZp
DOwIMfWFIwQ54Mm0VEDMtbwbIHoUf97V0vz1Dy1x/81MDXOrA93RvjBSWGpgaL0xZKgtaQ04mewL
Q2GhjnEaBNz39jHqsGajACfmn+6FQhErfu6Q9w==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
dOxfYlJkPLIL9Q4Uz06V8T57eKc1tCbKL4qxpMbjPdZPJXOl9WqiBGTZqrZ6DQGvmt2RQj45lCNR
HtLiLqpUSsLQEPLptwIrgs+yEktIryj3a3AxrOHTT8JC4jZX2hXGgzcM55b9LcaClK4tzxPMTHS0
njx1fBThHyp0GYay1MPWcsnHCNeHOpbeOPs6B13VZL6V7N0GIDEQ6YLS9ADisJQgksAKzVxYIfDu
IarYfbX87aRkdnvvi4IItq6+IIGrVuTfl0NGLtU/2vQWNq1VKuWhSc1NU1fWrTxyjkvkpR/eHX39
VNeD9xc+0QCSIhAvBVBT4P2mEs3jeWsx8FdkeQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 5152)
`pragma protect data_block
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
O9ORVbUfoZZ2U/ilx8XHKJdUA6fTIA==
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
