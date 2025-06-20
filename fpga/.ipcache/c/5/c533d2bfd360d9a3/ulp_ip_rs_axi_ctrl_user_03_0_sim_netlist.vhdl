-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
-- Date        : Fri Oct 11 12:07:26 2024
-- Host        : yupeng-ThinkBook-16-G6-IRL running 64-bit Ubuntu 22.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ulp_ip_rs_axi_ctrl_user_03_0_sim_netlist.vhdl
-- Design      : ulp_ip_rs_axi_ctrl_user_03_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcu250-figd2104-2L-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_source_region_slr is
  port (
    \dual_slr.src_handshake\ : out STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    \out\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 27 downto 0 );
    aclk : in STD_LOGIC;
    \common.ACLEAR\ : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    \common.laguna_m_ready_d_reg_0\ : in STD_LOGIC;
    \common.laguna_m_reset_in_d_reg_0\ : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 27 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_source_region_slr;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_source_region_slr is
  signal \common.areset_d\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \common.areset_d\ : signal is "true";
  signal \common.areset_dly\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \common.areset_dly[0]_i_1_n_0\ : STD_LOGIC;
  signal \common.aresetn_d\ : STD_LOGIC;
  attribute RTL_KEEP of \common.aresetn_d\ : signal is "true";
  signal \common.laguna_m_ready_d\ : STD_LOGIC;
  attribute RTL_KEEP of \common.laguna_m_ready_d\ : signal is "true";
  attribute USER_SLL_REG : string;
  attribute USER_SLL_REG of \common.laguna_m_ready_d\ : signal is "true";
  signal \common.laguna_m_reset_in_d\ : STD_LOGIC;
  attribute RTL_KEEP of \common.laguna_m_reset_in_d\ : signal is "true";
  attribute USER_SLL_REG of \common.laguna_m_reset_in_d\ : signal is "true";
  signal \common.laguna_m_reset_out_i\ : STD_LOGIC;
  attribute RTL_KEEP of \common.laguna_m_reset_out_i\ : signal is "true";
  attribute USER_SLL_REG of \common.laguna_m_reset_out_i\ : signal is "true";
  signal \common.pipe[0].payload_valid_d\ : STD_LOGIC;
  signal \common.ready_d\ : STD_LOGIC;
  attribute RTL_KEEP of \common.ready_d\ : signal is "true";
  signal \common.s_ready_i\ : STD_LOGIC;
  attribute RTL_KEEP of \common.s_ready_i\ : signal is "true";
  attribute KEEP : string;
  attribute KEEP of \common.areset_d_reg\ : label is "yes";
  attribute KEEP of \common.aresetn_d_reg\ : label is "yes";
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \common.laguna_m_handshake_asyncclear_inst\ : label is "PRIMITIVE";
  attribute USER_SLL_REG_boolean : boolean;
  attribute USER_SLL_REG_boolean of \common.laguna_m_handshake_asyncclear_inst\ : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[0]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[0]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[10]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[10]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[11]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[11]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[12]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[12]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[13]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[13]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[14]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[14]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[15]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[15]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[16]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[16]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[17]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[17]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[18]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[18]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[19]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[19]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[1]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[1]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[20]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[20]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[21]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[21]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[22]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[22]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[23]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[23]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[24]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[24]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[25]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[25]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[26]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[26]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[27]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[27]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[2]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[2]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[3]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[3]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[4]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[4]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[5]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[5]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[6]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[6]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[7]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[7]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[8]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[8]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[9]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[9]\ : label is std.standard.true;
  attribute KEEP of \common.laguna_m_ready_d_reg\ : label is "yes";
  attribute USER_SLL_REG_boolean of \common.laguna_m_ready_d_reg\ : label is std.standard.true;
  attribute KEEP of \common.laguna_m_reset_in_d_reg\ : label is "yes";
  attribute USER_SLL_REG_boolean of \common.laguna_m_reset_in_d_reg\ : label is std.standard.true;
  attribute KEEP of \common.laguna_m_reset_out_i_reg\ : label is "yes";
  attribute USER_SLL_REG_boolean of \common.laguna_m_reset_out_i_reg\ : label is std.standard.true;
  attribute KEEP of \common.ready_d_reg[0]\ : label is "yes";
  attribute KEEP of \common.s_ready_i_reg\ : label is "yes";
begin
  \out\ <= \common.laguna_m_reset_out_i\;
  s_axi_awready <= \common.s_ready_i\;
\common.areset_d_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.areset_dly\(15),
      Q => \common.areset_d\,
      R => '0'
    );
\common.areset_dly[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \common.aresetn_d\,
      O => \common.areset_dly[0]_i_1_n_0\
    );
\common.areset_dly_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.areset_dly[0]_i_1_n_0\,
      Q => \common.areset_dly\(0),
      R => '0'
    );
\common.areset_dly_reg[10]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.areset_dly\(9),
      Q => \common.areset_dly\(10),
      S => \common.areset_dly[0]_i_1_n_0\
    );
\common.areset_dly_reg[11]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.areset_dly\(10),
      Q => \common.areset_dly\(11),
      S => \common.areset_dly[0]_i_1_n_0\
    );
\common.areset_dly_reg[12]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.areset_dly\(11),
      Q => \common.areset_dly\(12),
      S => \common.areset_dly[0]_i_1_n_0\
    );
\common.areset_dly_reg[13]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.areset_dly\(12),
      Q => \common.areset_dly\(13),
      S => \common.areset_dly[0]_i_1_n_0\
    );
\common.areset_dly_reg[14]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.areset_dly\(13),
      Q => \common.areset_dly\(14),
      S => \common.areset_dly[0]_i_1_n_0\
    );
\common.areset_dly_reg[15]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.areset_dly\(14),
      Q => \common.areset_dly\(15),
      S => \common.areset_dly[0]_i_1_n_0\
    );
\common.areset_dly_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.areset_dly\(0),
      Q => \common.areset_dly\(1),
      S => \common.areset_dly[0]_i_1_n_0\
    );
\common.areset_dly_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.areset_dly\(1),
      Q => \common.areset_dly\(2),
      S => \common.areset_dly[0]_i_1_n_0\
    );
\common.areset_dly_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.areset_dly\(2),
      Q => \common.areset_dly\(3),
      S => \common.areset_dly[0]_i_1_n_0\
    );
\common.areset_dly_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.areset_dly\(3),
      Q => \common.areset_dly\(4),
      S => \common.areset_dly[0]_i_1_n_0\
    );
\common.areset_dly_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.areset_dly\(4),
      Q => \common.areset_dly\(5),
      S => \common.areset_dly[0]_i_1_n_0\
    );
\common.areset_dly_reg[6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.areset_dly\(5),
      Q => \common.areset_dly\(6),
      S => \common.areset_dly[0]_i_1_n_0\
    );
\common.areset_dly_reg[7]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.areset_dly\(6),
      Q => \common.areset_dly\(7),
      S => \common.areset_dly[0]_i_1_n_0\
    );
\common.areset_dly_reg[8]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.areset_dly\(7),
      Q => \common.areset_dly\(8),
      S => \common.areset_dly[0]_i_1_n_0\
    );
\common.areset_dly_reg[9]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.areset_dly\(8),
      Q => \common.areset_dly\(9),
      S => \common.areset_dly[0]_i_1_n_0\
    );
\common.aresetn_d_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => aresetn,
      Q => \common.aresetn_d\,
      R => '0'
    );
\common.laguna_m_handshake_asyncclear_inst\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      CLR => \common.ACLEAR\,
      D => \common.pipe[0].payload_valid_d\,
      Q => \dual_slr.src_handshake\
    );
\common.laguna_m_handshake_asyncclear_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => \common.s_ready_i\,
      O => \common.pipe[0].payload_valid_d\
    );
\common.laguna_m_payload_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(0),
      Q => Q(0),
      R => '0'
    );
\common.laguna_m_payload_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(10),
      Q => Q(10),
      R => '0'
    );
\common.laguna_m_payload_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(11),
      Q => Q(11),
      R => '0'
    );
\common.laguna_m_payload_i_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(12),
      Q => Q(12),
      R => '0'
    );
\common.laguna_m_payload_i_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(13),
      Q => Q(13),
      R => '0'
    );
\common.laguna_m_payload_i_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(14),
      Q => Q(14),
      R => '0'
    );
\common.laguna_m_payload_i_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(15),
      Q => Q(15),
      R => '0'
    );
\common.laguna_m_payload_i_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(16),
      Q => Q(16),
      R => '0'
    );
\common.laguna_m_payload_i_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(17),
      Q => Q(17),
      R => '0'
    );
\common.laguna_m_payload_i_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(18),
      Q => Q(18),
      R => '0'
    );
\common.laguna_m_payload_i_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(19),
      Q => Q(19),
      R => '0'
    );
\common.laguna_m_payload_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(1),
      Q => Q(1),
      R => '0'
    );
\common.laguna_m_payload_i_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(20),
      Q => Q(20),
      R => '0'
    );
\common.laguna_m_payload_i_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(21),
      Q => Q(21),
      R => '0'
    );
\common.laguna_m_payload_i_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(22),
      Q => Q(22),
      R => '0'
    );
\common.laguna_m_payload_i_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(23),
      Q => Q(23),
      R => '0'
    );
\common.laguna_m_payload_i_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(24),
      Q => Q(24),
      R => '0'
    );
\common.laguna_m_payload_i_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(25),
      Q => Q(25),
      R => '0'
    );
\common.laguna_m_payload_i_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(26),
      Q => Q(26),
      R => '0'
    );
\common.laguna_m_payload_i_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(27),
      Q => Q(27),
      R => '0'
    );
\common.laguna_m_payload_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(2),
      Q => Q(2),
      R => '0'
    );
\common.laguna_m_payload_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(3),
      Q => Q(3),
      R => '0'
    );
\common.laguna_m_payload_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(4),
      Q => Q(4),
      R => '0'
    );
\common.laguna_m_payload_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(5),
      Q => Q(5),
      R => '0'
    );
\common.laguna_m_payload_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(6),
      Q => Q(6),
      R => '0'
    );
\common.laguna_m_payload_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(7),
      Q => Q(7),
      R => '0'
    );
\common.laguna_m_payload_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(8),
      Q => Q(8),
      R => '0'
    );
\common.laguna_m_payload_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(9),
      Q => Q(9),
      R => '0'
    );
\common.laguna_m_ready_d_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.laguna_m_ready_d_reg_0\,
      Q => \common.laguna_m_ready_d\,
      R => '0'
    );
\common.laguna_m_reset_in_d_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.laguna_m_reset_in_d_reg_0\,
      Q => \common.laguna_m_reset_in_d\,
      R => '0'
    );
\common.laguna_m_reset_out_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.areset_d\,
      Q => \common.laguna_m_reset_out_i\,
      R => '0'
    );
\common.ready_d_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.laguna_m_ready_d\,
      Q => \common.ready_d\,
      R => '0'
    );
\common.s_ready_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.laguna_m_ready_d\,
      Q => \common.s_ready_i\,
      R => \common.areset_d\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_source_region_slr_1 is
  port (
    \dual_slr.src_handshake\ : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    \out\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 27 downto 0 );
    aclk : in STD_LOGIC;
    \common.ACLEAR\ : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    \common.laguna_m_ready_d_reg_0\ : in STD_LOGIC;
    \common.laguna_m_reset_in_d_reg_0\ : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 27 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_source_region_slr_1 : entity is "axi_register_slice_v2_1_26_source_region_slr";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_source_region_slr_1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_source_region_slr_1 is
  signal \common.areset_d\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \common.areset_d\ : signal is "true";
  signal \common.areset_dly\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \common.areset_dly[0]_i_1__2_n_0\ : STD_LOGIC;
  signal \common.aresetn_d\ : STD_LOGIC;
  attribute RTL_KEEP of \common.aresetn_d\ : signal is "true";
  signal \common.laguna_m_ready_d\ : STD_LOGIC;
  attribute RTL_KEEP of \common.laguna_m_ready_d\ : signal is "true";
  attribute USER_SLL_REG : string;
  attribute USER_SLL_REG of \common.laguna_m_ready_d\ : signal is "true";
  signal \common.laguna_m_reset_in_d\ : STD_LOGIC;
  attribute RTL_KEEP of \common.laguna_m_reset_in_d\ : signal is "true";
  attribute USER_SLL_REG of \common.laguna_m_reset_in_d\ : signal is "true";
  signal \common.laguna_m_reset_out_i\ : STD_LOGIC;
  attribute RTL_KEEP of \common.laguna_m_reset_out_i\ : signal is "true";
  attribute USER_SLL_REG of \common.laguna_m_reset_out_i\ : signal is "true";
  signal \common.pipe[0].payload_valid_d\ : STD_LOGIC;
  signal \common.ready_d\ : STD_LOGIC;
  attribute RTL_KEEP of \common.ready_d\ : signal is "true";
  signal \common.s_ready_i\ : STD_LOGIC;
  attribute RTL_KEEP of \common.s_ready_i\ : signal is "true";
  attribute KEEP : string;
  attribute KEEP of \common.areset_d_reg\ : label is "yes";
  attribute KEEP of \common.aresetn_d_reg\ : label is "yes";
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \common.laguna_m_handshake_asyncclear_inst\ : label is "PRIMITIVE";
  attribute USER_SLL_REG_boolean : boolean;
  attribute USER_SLL_REG_boolean of \common.laguna_m_handshake_asyncclear_inst\ : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[0]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[0]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[10]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[10]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[11]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[11]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[12]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[12]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[13]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[13]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[14]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[14]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[15]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[15]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[16]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[16]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[17]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[17]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[18]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[18]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[19]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[19]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[1]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[1]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[20]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[20]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[21]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[21]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[22]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[22]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[23]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[23]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[24]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[24]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[25]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[25]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[26]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[26]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[27]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[27]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[2]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[2]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[3]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[3]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[4]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[4]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[5]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[5]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[6]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[6]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[7]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[7]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[8]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[8]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[9]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[9]\ : label is std.standard.true;
  attribute KEEP of \common.laguna_m_ready_d_reg\ : label is "yes";
  attribute USER_SLL_REG_boolean of \common.laguna_m_ready_d_reg\ : label is std.standard.true;
  attribute KEEP of \common.laguna_m_reset_in_d_reg\ : label is "yes";
  attribute USER_SLL_REG_boolean of \common.laguna_m_reset_in_d_reg\ : label is std.standard.true;
  attribute KEEP of \common.laguna_m_reset_out_i_reg\ : label is "yes";
  attribute USER_SLL_REG_boolean of \common.laguna_m_reset_out_i_reg\ : label is std.standard.true;
  attribute KEEP of \common.ready_d_reg[0]\ : label is "yes";
  attribute KEEP of \common.s_ready_i_reg\ : label is "yes";
begin
  \out\ <= \common.laguna_m_reset_out_i\;
  s_axi_arready <= \common.s_ready_i\;
\common.areset_d_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.areset_dly\(15),
      Q => \common.areset_d\,
      R => '0'
    );
\common.areset_dly[0]_i_1__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \common.aresetn_d\,
      O => \common.areset_dly[0]_i_1__2_n_0\
    );
\common.areset_dly_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.areset_dly[0]_i_1__2_n_0\,
      Q => \common.areset_dly\(0),
      R => '0'
    );
\common.areset_dly_reg[10]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.areset_dly\(9),
      Q => \common.areset_dly\(10),
      S => \common.areset_dly[0]_i_1__2_n_0\
    );
\common.areset_dly_reg[11]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.areset_dly\(10),
      Q => \common.areset_dly\(11),
      S => \common.areset_dly[0]_i_1__2_n_0\
    );
\common.areset_dly_reg[12]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.areset_dly\(11),
      Q => \common.areset_dly\(12),
      S => \common.areset_dly[0]_i_1__2_n_0\
    );
\common.areset_dly_reg[13]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.areset_dly\(12),
      Q => \common.areset_dly\(13),
      S => \common.areset_dly[0]_i_1__2_n_0\
    );
\common.areset_dly_reg[14]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.areset_dly\(13),
      Q => \common.areset_dly\(14),
      S => \common.areset_dly[0]_i_1__2_n_0\
    );
\common.areset_dly_reg[15]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.areset_dly\(14),
      Q => \common.areset_dly\(15),
      S => \common.areset_dly[0]_i_1__2_n_0\
    );
\common.areset_dly_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.areset_dly\(0),
      Q => \common.areset_dly\(1),
      S => \common.areset_dly[0]_i_1__2_n_0\
    );
\common.areset_dly_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.areset_dly\(1),
      Q => \common.areset_dly\(2),
      S => \common.areset_dly[0]_i_1__2_n_0\
    );
\common.areset_dly_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.areset_dly\(2),
      Q => \common.areset_dly\(3),
      S => \common.areset_dly[0]_i_1__2_n_0\
    );
\common.areset_dly_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.areset_dly\(3),
      Q => \common.areset_dly\(4),
      S => \common.areset_dly[0]_i_1__2_n_0\
    );
\common.areset_dly_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.areset_dly\(4),
      Q => \common.areset_dly\(5),
      S => \common.areset_dly[0]_i_1__2_n_0\
    );
\common.areset_dly_reg[6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.areset_dly\(5),
      Q => \common.areset_dly\(6),
      S => \common.areset_dly[0]_i_1__2_n_0\
    );
\common.areset_dly_reg[7]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.areset_dly\(6),
      Q => \common.areset_dly\(7),
      S => \common.areset_dly[0]_i_1__2_n_0\
    );
\common.areset_dly_reg[8]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.areset_dly\(7),
      Q => \common.areset_dly\(8),
      S => \common.areset_dly[0]_i_1__2_n_0\
    );
\common.areset_dly_reg[9]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.areset_dly\(8),
      Q => \common.areset_dly\(9),
      S => \common.areset_dly[0]_i_1__2_n_0\
    );
\common.aresetn_d_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => aresetn,
      Q => \common.aresetn_d\,
      R => '0'
    );
\common.laguna_m_handshake_asyncclear_inst\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      CLR => \common.ACLEAR\,
      D => \common.pipe[0].payload_valid_d\,
      Q => \dual_slr.src_handshake\
    );
\common.laguna_m_handshake_asyncclear_inst_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => \common.s_ready_i\,
      O => \common.pipe[0].payload_valid_d\
    );
\common.laguna_m_payload_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(0),
      Q => Q(0),
      R => '0'
    );
\common.laguna_m_payload_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(10),
      Q => Q(10),
      R => '0'
    );
\common.laguna_m_payload_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(11),
      Q => Q(11),
      R => '0'
    );
\common.laguna_m_payload_i_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(12),
      Q => Q(12),
      R => '0'
    );
\common.laguna_m_payload_i_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(13),
      Q => Q(13),
      R => '0'
    );
\common.laguna_m_payload_i_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(14),
      Q => Q(14),
      R => '0'
    );
\common.laguna_m_payload_i_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(15),
      Q => Q(15),
      R => '0'
    );
\common.laguna_m_payload_i_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(16),
      Q => Q(16),
      R => '0'
    );
\common.laguna_m_payload_i_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(17),
      Q => Q(17),
      R => '0'
    );
\common.laguna_m_payload_i_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(18),
      Q => Q(18),
      R => '0'
    );
\common.laguna_m_payload_i_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(19),
      Q => Q(19),
      R => '0'
    );
\common.laguna_m_payload_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(1),
      Q => Q(1),
      R => '0'
    );
\common.laguna_m_payload_i_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(20),
      Q => Q(20),
      R => '0'
    );
\common.laguna_m_payload_i_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(21),
      Q => Q(21),
      R => '0'
    );
\common.laguna_m_payload_i_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(22),
      Q => Q(22),
      R => '0'
    );
\common.laguna_m_payload_i_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(23),
      Q => Q(23),
      R => '0'
    );
\common.laguna_m_payload_i_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(24),
      Q => Q(24),
      R => '0'
    );
\common.laguna_m_payload_i_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(25),
      Q => Q(25),
      R => '0'
    );
\common.laguna_m_payload_i_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(26),
      Q => Q(26),
      R => '0'
    );
\common.laguna_m_payload_i_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(27),
      Q => Q(27),
      R => '0'
    );
\common.laguna_m_payload_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(2),
      Q => Q(2),
      R => '0'
    );
\common.laguna_m_payload_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(3),
      Q => Q(3),
      R => '0'
    );
\common.laguna_m_payload_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(4),
      Q => Q(4),
      R => '0'
    );
\common.laguna_m_payload_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(5),
      Q => Q(5),
      R => '0'
    );
\common.laguna_m_payload_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(6),
      Q => Q(6),
      R => '0'
    );
\common.laguna_m_payload_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(7),
      Q => Q(7),
      R => '0'
    );
\common.laguna_m_payload_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(8),
      Q => Q(8),
      R => '0'
    );
\common.laguna_m_payload_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(9),
      Q => Q(9),
      R => '0'
    );
\common.laguna_m_ready_d_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.laguna_m_ready_d_reg_0\,
      Q => \common.laguna_m_ready_d\,
      R => '0'
    );
\common.laguna_m_reset_in_d_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.laguna_m_reset_in_d_reg_0\,
      Q => \common.laguna_m_reset_in_d\,
      R => '0'
    );
\common.laguna_m_reset_out_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.areset_d\,
      Q => \common.laguna_m_reset_out_i\,
      R => '0'
    );
\common.ready_d_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.laguna_m_ready_d\,
      Q => \common.ready_d\,
      R => '0'
    );
\common.s_ready_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.laguna_m_ready_d\,
      Q => \common.s_ready_i\,
      R => \common.areset_d\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_source_region_slr__parameterized0\ is
  port (
    \dual_slr.src_handshake\ : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    \out\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 35 downto 0 );
    aclk : in STD_LOGIC;
    \common.ACLEAR\ : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    \common.laguna_m_ready_d_reg_0\ : in STD_LOGIC;
    \common.laguna_m_reset_in_d_reg_0\ : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 35 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_source_region_slr__parameterized0\ : entity is "axi_register_slice_v2_1_26_source_region_slr";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_source_region_slr__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_source_region_slr__parameterized0\ is
  signal \common.areset_d\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \common.areset_d\ : signal is "true";
  signal \common.areset_dly\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \common.areset_dly[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \common.aresetn_d\ : STD_LOGIC;
  attribute RTL_KEEP of \common.aresetn_d\ : signal is "true";
  signal \common.laguna_m_ready_d\ : STD_LOGIC;
  attribute RTL_KEEP of \common.laguna_m_ready_d\ : signal is "true";
  attribute USER_SLL_REG : string;
  attribute USER_SLL_REG of \common.laguna_m_ready_d\ : signal is "true";
  signal \common.laguna_m_reset_in_d\ : STD_LOGIC;
  attribute RTL_KEEP of \common.laguna_m_reset_in_d\ : signal is "true";
  attribute USER_SLL_REG of \common.laguna_m_reset_in_d\ : signal is "true";
  signal \common.laguna_m_reset_out_i\ : STD_LOGIC;
  attribute RTL_KEEP of \common.laguna_m_reset_out_i\ : signal is "true";
  attribute USER_SLL_REG of \common.laguna_m_reset_out_i\ : signal is "true";
  signal \common.pipe[0].payload_valid_d\ : STD_LOGIC;
  signal \common.ready_d\ : STD_LOGIC;
  attribute RTL_KEEP of \common.ready_d\ : signal is "true";
  signal \common.s_ready_i\ : STD_LOGIC;
  attribute RTL_KEEP of \common.s_ready_i\ : signal is "true";
  attribute KEEP : string;
  attribute KEEP of \common.areset_d_reg\ : label is "yes";
  attribute KEEP of \common.aresetn_d_reg\ : label is "yes";
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \common.laguna_m_handshake_asyncclear_inst\ : label is "PRIMITIVE";
  attribute USER_SLL_REG_boolean : boolean;
  attribute USER_SLL_REG_boolean of \common.laguna_m_handshake_asyncclear_inst\ : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[0]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[0]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[10]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[10]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[11]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[11]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[12]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[12]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[13]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[13]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[14]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[14]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[15]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[15]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[16]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[16]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[17]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[17]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[18]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[18]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[19]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[19]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[1]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[1]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[20]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[20]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[21]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[21]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[22]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[22]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[23]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[23]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[24]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[24]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[25]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[25]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[26]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[26]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[27]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[27]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[28]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[28]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[29]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[29]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[2]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[2]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[30]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[30]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[31]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[31]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[32]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[32]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[33]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[33]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[34]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[34]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[35]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[35]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[3]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[3]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[4]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[4]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[5]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[5]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[6]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[6]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[7]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[7]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[8]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[8]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[9]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[9]\ : label is std.standard.true;
  attribute KEEP of \common.laguna_m_ready_d_reg\ : label is "yes";
  attribute USER_SLL_REG_boolean of \common.laguna_m_ready_d_reg\ : label is std.standard.true;
  attribute KEEP of \common.laguna_m_reset_in_d_reg\ : label is "yes";
  attribute USER_SLL_REG_boolean of \common.laguna_m_reset_in_d_reg\ : label is std.standard.true;
  attribute KEEP of \common.laguna_m_reset_out_i_reg\ : label is "yes";
  attribute USER_SLL_REG_boolean of \common.laguna_m_reset_out_i_reg\ : label is std.standard.true;
  attribute KEEP of \common.ready_d_reg[0]\ : label is "yes";
  attribute KEEP of \common.s_ready_i_reg\ : label is "yes";
begin
  \out\ <= \common.laguna_m_reset_out_i\;
  s_axi_wready <= \common.s_ready_i\;
\common.areset_d_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.areset_dly\(15),
      Q => \common.areset_d\,
      R => '0'
    );
\common.areset_dly[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \common.aresetn_d\,
      O => \common.areset_dly[0]_i_1__0_n_0\
    );
\common.areset_dly_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.areset_dly[0]_i_1__0_n_0\,
      Q => \common.areset_dly\(0),
      R => '0'
    );
\common.areset_dly_reg[10]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.areset_dly\(9),
      Q => \common.areset_dly\(10),
      S => \common.areset_dly[0]_i_1__0_n_0\
    );
\common.areset_dly_reg[11]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.areset_dly\(10),
      Q => \common.areset_dly\(11),
      S => \common.areset_dly[0]_i_1__0_n_0\
    );
\common.areset_dly_reg[12]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.areset_dly\(11),
      Q => \common.areset_dly\(12),
      S => \common.areset_dly[0]_i_1__0_n_0\
    );
\common.areset_dly_reg[13]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.areset_dly\(12),
      Q => \common.areset_dly\(13),
      S => \common.areset_dly[0]_i_1__0_n_0\
    );
\common.areset_dly_reg[14]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.areset_dly\(13),
      Q => \common.areset_dly\(14),
      S => \common.areset_dly[0]_i_1__0_n_0\
    );
\common.areset_dly_reg[15]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.areset_dly\(14),
      Q => \common.areset_dly\(15),
      S => \common.areset_dly[0]_i_1__0_n_0\
    );
\common.areset_dly_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.areset_dly\(0),
      Q => \common.areset_dly\(1),
      S => \common.areset_dly[0]_i_1__0_n_0\
    );
\common.areset_dly_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.areset_dly\(1),
      Q => \common.areset_dly\(2),
      S => \common.areset_dly[0]_i_1__0_n_0\
    );
\common.areset_dly_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.areset_dly\(2),
      Q => \common.areset_dly\(3),
      S => \common.areset_dly[0]_i_1__0_n_0\
    );
\common.areset_dly_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.areset_dly\(3),
      Q => \common.areset_dly\(4),
      S => \common.areset_dly[0]_i_1__0_n_0\
    );
\common.areset_dly_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.areset_dly\(4),
      Q => \common.areset_dly\(5),
      S => \common.areset_dly[0]_i_1__0_n_0\
    );
\common.areset_dly_reg[6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.areset_dly\(5),
      Q => \common.areset_dly\(6),
      S => \common.areset_dly[0]_i_1__0_n_0\
    );
\common.areset_dly_reg[7]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.areset_dly\(6),
      Q => \common.areset_dly\(7),
      S => \common.areset_dly[0]_i_1__0_n_0\
    );
\common.areset_dly_reg[8]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.areset_dly\(7),
      Q => \common.areset_dly\(8),
      S => \common.areset_dly[0]_i_1__0_n_0\
    );
\common.areset_dly_reg[9]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.areset_dly\(8),
      Q => \common.areset_dly\(9),
      S => \common.areset_dly[0]_i_1__0_n_0\
    );
\common.aresetn_d_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => aresetn,
      Q => \common.aresetn_d\,
      R => '0'
    );
\common.laguna_m_handshake_asyncclear_inst\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      CLR => \common.ACLEAR\,
      D => \common.pipe[0].payload_valid_d\,
      Q => \dual_slr.src_handshake\
    );
\common.laguna_m_handshake_asyncclear_inst_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => \common.s_ready_i\,
      O => \common.pipe[0].payload_valid_d\
    );
\common.laguna_m_payload_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(0),
      Q => Q(0),
      R => '0'
    );
\common.laguna_m_payload_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(10),
      Q => Q(10),
      R => '0'
    );
\common.laguna_m_payload_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(11),
      Q => Q(11),
      R => '0'
    );
\common.laguna_m_payload_i_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(12),
      Q => Q(12),
      R => '0'
    );
\common.laguna_m_payload_i_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(13),
      Q => Q(13),
      R => '0'
    );
\common.laguna_m_payload_i_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(14),
      Q => Q(14),
      R => '0'
    );
\common.laguna_m_payload_i_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(15),
      Q => Q(15),
      R => '0'
    );
\common.laguna_m_payload_i_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(16),
      Q => Q(16),
      R => '0'
    );
\common.laguna_m_payload_i_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(17),
      Q => Q(17),
      R => '0'
    );
\common.laguna_m_payload_i_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(18),
      Q => Q(18),
      R => '0'
    );
\common.laguna_m_payload_i_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(19),
      Q => Q(19),
      R => '0'
    );
\common.laguna_m_payload_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(1),
      Q => Q(1),
      R => '0'
    );
\common.laguna_m_payload_i_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(20),
      Q => Q(20),
      R => '0'
    );
\common.laguna_m_payload_i_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(21),
      Q => Q(21),
      R => '0'
    );
\common.laguna_m_payload_i_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(22),
      Q => Q(22),
      R => '0'
    );
\common.laguna_m_payload_i_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(23),
      Q => Q(23),
      R => '0'
    );
\common.laguna_m_payload_i_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(24),
      Q => Q(24),
      R => '0'
    );
\common.laguna_m_payload_i_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(25),
      Q => Q(25),
      R => '0'
    );
\common.laguna_m_payload_i_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(26),
      Q => Q(26),
      R => '0'
    );
\common.laguna_m_payload_i_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(27),
      Q => Q(27),
      R => '0'
    );
\common.laguna_m_payload_i_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(28),
      Q => Q(28),
      R => '0'
    );
\common.laguna_m_payload_i_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(29),
      Q => Q(29),
      R => '0'
    );
\common.laguna_m_payload_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(2),
      Q => Q(2),
      R => '0'
    );
\common.laguna_m_payload_i_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(30),
      Q => Q(30),
      R => '0'
    );
\common.laguna_m_payload_i_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(31),
      Q => Q(31),
      R => '0'
    );
\common.laguna_m_payload_i_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(32),
      Q => Q(32),
      R => '0'
    );
\common.laguna_m_payload_i_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(33),
      Q => Q(33),
      R => '0'
    );
\common.laguna_m_payload_i_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(34),
      Q => Q(34),
      R => '0'
    );
\common.laguna_m_payload_i_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(35),
      Q => Q(35),
      R => '0'
    );
\common.laguna_m_payload_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(3),
      Q => Q(3),
      R => '0'
    );
\common.laguna_m_payload_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(4),
      Q => Q(4),
      R => '0'
    );
\common.laguna_m_payload_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(5),
      Q => Q(5),
      R => '0'
    );
\common.laguna_m_payload_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(6),
      Q => Q(6),
      R => '0'
    );
\common.laguna_m_payload_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(7),
      Q => Q(7),
      R => '0'
    );
\common.laguna_m_payload_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(8),
      Q => Q(8),
      R => '0'
    );
\common.laguna_m_payload_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(9),
      Q => Q(9),
      R => '0'
    );
\common.laguna_m_ready_d_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.laguna_m_ready_d_reg_0\,
      Q => \common.laguna_m_ready_d\,
      R => '0'
    );
\common.laguna_m_reset_in_d_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.laguna_m_reset_in_d_reg_0\,
      Q => \common.laguna_m_reset_in_d\,
      R => '0'
    );
\common.laguna_m_reset_out_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.areset_d\,
      Q => \common.laguna_m_reset_out_i\,
      R => '0'
    );
\common.ready_d_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.laguna_m_ready_d\,
      Q => \common.ready_d\,
      R => '0'
    );
\common.s_ready_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.laguna_m_ready_d\,
      Q => \common.s_ready_i\,
      R => \common.areset_d\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_source_region_slr__parameterized1\ is
  port (
    \dual_slr.src_handshake\ : out STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    \out\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    aclk : in STD_LOGIC;
    \common.ACLEAR\ : in STD_LOGIC;
    \common.laguna_m_reset_in_d_reg_0\ : in STD_LOGIC;
    \common.laguna_m_ready_d_reg_0\ : in STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_source_region_slr__parameterized1\ : entity is "axi_register_slice_v2_1_26_source_region_slr";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_source_region_slr__parameterized1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_source_region_slr__parameterized1\ is
  signal \common.areset_d\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \common.areset_d\ : signal is "true";
  signal \common.aresetn_d\ : STD_LOGIC;
  attribute RTL_KEEP of \common.aresetn_d\ : signal is "true";
  signal \common.laguna_m_ready_d\ : STD_LOGIC;
  attribute RTL_KEEP of \common.laguna_m_ready_d\ : signal is "true";
  attribute USER_SLL_REG : string;
  attribute USER_SLL_REG of \common.laguna_m_ready_d\ : signal is "true";
  signal \common.laguna_m_reset_in_d\ : STD_LOGIC;
  attribute RTL_KEEP of \common.laguna_m_reset_in_d\ : signal is "true";
  attribute USER_SLL_REG of \common.laguna_m_reset_in_d\ : signal is "true";
  signal \common.laguna_m_reset_out_i\ : STD_LOGIC;
  attribute RTL_KEEP of \common.laguna_m_reset_out_i\ : signal is "true";
  attribute USER_SLL_REG of \common.laguna_m_reset_out_i\ : signal is "true";
  signal \common.pipe[0].payload_valid_d\ : STD_LOGIC;
  signal \common.ready_d\ : STD_LOGIC;
  attribute RTL_KEEP of \common.ready_d\ : signal is "true";
  signal \common.s_ready_i\ : STD_LOGIC;
  attribute RTL_KEEP of \common.s_ready_i\ : signal is "true";
  attribute KEEP : string;
  attribute KEEP of \common.areset_d_reg\ : label is "yes";
  attribute KEEP of \common.aresetn_d_reg\ : label is "yes";
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \common.laguna_m_handshake_asyncclear_inst\ : label is "PRIMITIVE";
  attribute USER_SLL_REG_boolean : boolean;
  attribute USER_SLL_REG_boolean of \common.laguna_m_handshake_asyncclear_inst\ : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[0]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[0]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[1]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[1]\ : label is std.standard.true;
  attribute KEEP of \common.laguna_m_ready_d_reg\ : label is "yes";
  attribute USER_SLL_REG_boolean of \common.laguna_m_ready_d_reg\ : label is std.standard.true;
  attribute KEEP of \common.laguna_m_reset_in_d_reg\ : label is "yes";
  attribute USER_SLL_REG_boolean of \common.laguna_m_reset_in_d_reg\ : label is std.standard.true;
  attribute KEEP of \common.laguna_m_reset_out_i_reg\ : label is "yes";
  attribute USER_SLL_REG_boolean of \common.laguna_m_reset_out_i_reg\ : label is std.standard.true;
  attribute KEEP of \common.ready_d_reg[0]\ : label is "yes";
  attribute KEEP of \common.s_ready_i_reg\ : label is "yes";
begin
  m_axi_bready <= \common.s_ready_i\;
  \out\ <= \common.laguna_m_reset_out_i\;
\common.areset_d_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.laguna_m_reset_in_d\,
      Q => \common.areset_d\,
      R => '0'
    );
\common.aresetn_d_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => '1',
      Q => \common.aresetn_d\,
      R => '0'
    );
\common.laguna_m_handshake_asyncclear_inst\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      CLR => \common.ACLEAR\,
      D => \common.pipe[0].payload_valid_d\,
      Q => \dual_slr.src_handshake\
    );
\common.laguna_m_handshake_asyncclear_inst_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m_axi_bvalid,
      I1 => \common.s_ready_i\,
      O => \common.pipe[0].payload_valid_d\
    );
\common.laguna_m_payload_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => m_axi_bresp(0),
      Q => Q(0),
      R => '0'
    );
\common.laguna_m_payload_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => m_axi_bresp(1),
      Q => Q(1),
      R => '0'
    );
\common.laguna_m_ready_d_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.laguna_m_ready_d_reg_0\,
      Q => \common.laguna_m_ready_d\,
      R => '0'
    );
\common.laguna_m_reset_in_d_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.laguna_m_reset_in_d_reg_0\,
      Q => \common.laguna_m_reset_in_d\,
      R => '0'
    );
\common.laguna_m_reset_out_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.areset_d\,
      Q => \common.laguna_m_reset_out_i\,
      R => '0'
    );
\common.ready_d_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.laguna_m_ready_d\,
      Q => \common.ready_d\,
      R => '0'
    );
\common.s_ready_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.laguna_m_ready_d\,
      Q => \common.s_ready_i\,
      R => \common.areset_d\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_source_region_slr__parameterized2\ is
  port (
    \dual_slr.src_handshake\ : out STD_LOGIC;
    m_axi_rready : out STD_LOGIC;
    \out\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 33 downto 0 );
    aclk : in STD_LOGIC;
    \common.ACLEAR\ : in STD_LOGIC;
    \common.laguna_m_reset_in_d_reg_0\ : in STD_LOGIC;
    \common.laguna_m_ready_d_reg_0\ : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 33 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_source_region_slr__parameterized2\ : entity is "axi_register_slice_v2_1_26_source_region_slr";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_source_region_slr__parameterized2\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_source_region_slr__parameterized2\ is
  signal \common.areset_d\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \common.areset_d\ : signal is "true";
  signal \common.aresetn_d\ : STD_LOGIC;
  attribute RTL_KEEP of \common.aresetn_d\ : signal is "true";
  signal \common.laguna_m_ready_d\ : STD_LOGIC;
  attribute RTL_KEEP of \common.laguna_m_ready_d\ : signal is "true";
  attribute USER_SLL_REG : string;
  attribute USER_SLL_REG of \common.laguna_m_ready_d\ : signal is "true";
  signal \common.laguna_m_reset_in_d\ : STD_LOGIC;
  attribute RTL_KEEP of \common.laguna_m_reset_in_d\ : signal is "true";
  attribute USER_SLL_REG of \common.laguna_m_reset_in_d\ : signal is "true";
  signal \common.laguna_m_reset_out_i\ : STD_LOGIC;
  attribute RTL_KEEP of \common.laguna_m_reset_out_i\ : signal is "true";
  attribute USER_SLL_REG of \common.laguna_m_reset_out_i\ : signal is "true";
  signal \common.pipe[0].payload_valid_d\ : STD_LOGIC;
  signal \common.ready_d\ : STD_LOGIC;
  attribute RTL_KEEP of \common.ready_d\ : signal is "true";
  signal \common.s_ready_i\ : STD_LOGIC;
  attribute RTL_KEEP of \common.s_ready_i\ : signal is "true";
  attribute KEEP : string;
  attribute KEEP of \common.areset_d_reg\ : label is "yes";
  attribute KEEP of \common.aresetn_d_reg\ : label is "yes";
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \common.laguna_m_handshake_asyncclear_inst\ : label is "PRIMITIVE";
  attribute USER_SLL_REG_boolean : boolean;
  attribute USER_SLL_REG_boolean of \common.laguna_m_handshake_asyncclear_inst\ : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[0]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[0]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[10]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[10]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[11]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[11]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[12]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[12]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[13]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[13]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[14]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[14]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[15]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[15]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[16]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[16]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[17]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[17]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[18]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[18]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[19]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[19]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[1]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[1]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[20]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[20]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[21]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[21]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[22]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[22]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[23]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[23]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[24]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[24]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[25]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[25]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[26]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[26]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[27]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[27]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[28]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[28]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[29]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[29]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[2]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[2]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[30]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[30]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[31]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[31]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[32]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[32]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[33]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[33]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[3]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[3]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[4]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[4]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[5]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[5]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[6]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[6]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[7]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[7]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[8]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[8]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_m_payload_i_reg[9]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_m_payload_i_reg[9]\ : label is std.standard.true;
  attribute KEEP of \common.laguna_m_ready_d_reg\ : label is "yes";
  attribute USER_SLL_REG_boolean of \common.laguna_m_ready_d_reg\ : label is std.standard.true;
  attribute KEEP of \common.laguna_m_reset_in_d_reg\ : label is "yes";
  attribute USER_SLL_REG_boolean of \common.laguna_m_reset_in_d_reg\ : label is std.standard.true;
  attribute KEEP of \common.laguna_m_reset_out_i_reg\ : label is "yes";
  attribute USER_SLL_REG_boolean of \common.laguna_m_reset_out_i_reg\ : label is std.standard.true;
  attribute KEEP of \common.ready_d_reg[0]\ : label is "yes";
  attribute KEEP of \common.s_ready_i_reg\ : label is "yes";
begin
  m_axi_rready <= \common.s_ready_i\;
  \out\ <= \common.laguna_m_reset_out_i\;
\common.areset_d_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.laguna_m_reset_in_d\,
      Q => \common.areset_d\,
      R => '0'
    );
\common.aresetn_d_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => '1',
      Q => \common.aresetn_d\,
      R => '0'
    );
\common.laguna_m_handshake_asyncclear_inst\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      CLR => \common.ACLEAR\,
      D => \common.pipe[0].payload_valid_d\,
      Q => \dual_slr.src_handshake\
    );
\common.laguna_m_handshake_asyncclear_inst_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m_axi_rvalid,
      I1 => \common.s_ready_i\,
      O => \common.pipe[0].payload_valid_d\
    );
\common.laguna_m_payload_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(0),
      Q => Q(0),
      R => '0'
    );
\common.laguna_m_payload_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(10),
      Q => Q(10),
      R => '0'
    );
\common.laguna_m_payload_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(11),
      Q => Q(11),
      R => '0'
    );
\common.laguna_m_payload_i_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(12),
      Q => Q(12),
      R => '0'
    );
\common.laguna_m_payload_i_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(13),
      Q => Q(13),
      R => '0'
    );
\common.laguna_m_payload_i_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(14),
      Q => Q(14),
      R => '0'
    );
\common.laguna_m_payload_i_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(15),
      Q => Q(15),
      R => '0'
    );
\common.laguna_m_payload_i_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(16),
      Q => Q(16),
      R => '0'
    );
\common.laguna_m_payload_i_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(17),
      Q => Q(17),
      R => '0'
    );
\common.laguna_m_payload_i_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(18),
      Q => Q(18),
      R => '0'
    );
\common.laguna_m_payload_i_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(19),
      Q => Q(19),
      R => '0'
    );
\common.laguna_m_payload_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(1),
      Q => Q(1),
      R => '0'
    );
\common.laguna_m_payload_i_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(20),
      Q => Q(20),
      R => '0'
    );
\common.laguna_m_payload_i_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(21),
      Q => Q(21),
      R => '0'
    );
\common.laguna_m_payload_i_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(22),
      Q => Q(22),
      R => '0'
    );
\common.laguna_m_payload_i_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(23),
      Q => Q(23),
      R => '0'
    );
\common.laguna_m_payload_i_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(24),
      Q => Q(24),
      R => '0'
    );
\common.laguna_m_payload_i_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(25),
      Q => Q(25),
      R => '0'
    );
\common.laguna_m_payload_i_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(26),
      Q => Q(26),
      R => '0'
    );
\common.laguna_m_payload_i_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(27),
      Q => Q(27),
      R => '0'
    );
\common.laguna_m_payload_i_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(28),
      Q => Q(28),
      R => '0'
    );
\common.laguna_m_payload_i_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(29),
      Q => Q(29),
      R => '0'
    );
\common.laguna_m_payload_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(2),
      Q => Q(2),
      R => '0'
    );
\common.laguna_m_payload_i_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(30),
      Q => Q(30),
      R => '0'
    );
\common.laguna_m_payload_i_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(31),
      Q => Q(31),
      R => '0'
    );
\common.laguna_m_payload_i_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(32),
      Q => Q(32),
      R => '0'
    );
\common.laguna_m_payload_i_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(33),
      Q => Q(33),
      R => '0'
    );
\common.laguna_m_payload_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(3),
      Q => Q(3),
      R => '0'
    );
\common.laguna_m_payload_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(4),
      Q => Q(4),
      R => '0'
    );
\common.laguna_m_payload_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(5),
      Q => Q(5),
      R => '0'
    );
\common.laguna_m_payload_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(6),
      Q => Q(6),
      R => '0'
    );
\common.laguna_m_payload_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(7),
      Q => Q(7),
      R => '0'
    );
\common.laguna_m_payload_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(8),
      Q => Q(8),
      R => '0'
    );
\common.laguna_m_payload_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(9),
      Q => Q(9),
      R => '0'
    );
\common.laguna_m_ready_d_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.laguna_m_ready_d_reg_0\,
      Q => \common.laguna_m_ready_d\,
      R => '0'
    );
\common.laguna_m_reset_in_d_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.laguna_m_reset_in_d_reg_0\,
      Q => \common.laguna_m_reset_in_d\,
      R => '0'
    );
\common.laguna_m_reset_out_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.areset_d\,
      Q => \common.laguna_m_reset_out_i\,
      R => '0'
    );
\common.ready_d_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.laguna_m_ready_d\,
      Q => \common.ready_d\,
      R => '0'
    );
\common.s_ready_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.laguna_m_ready_d\,
      Q => \common.s_ready_i\,
      R => \common.areset_d\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl : entity is "yes";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl : entity is 16;
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[33].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[33].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__1\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__1\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__1\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__1\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__1\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__1\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[27].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[27].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__10\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__10\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__10\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__10\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__10\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__10\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__10\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[8].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[8].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__100\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__100\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__100\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__100\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__100\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__100\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__100\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[32].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[32].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__101\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__101\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__101\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__101\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__101\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__101\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__101\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[0].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[0].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__102\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__102\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__102\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__102\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__102\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__102\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__102\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[1].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[1].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__103\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__103\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__103\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__103\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__103\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__103\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__103\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[2].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[2].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__104\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__104\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__104\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__104\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__104\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__104\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__104\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[3].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[3].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__105\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__105\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__105\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__105\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__105\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__105\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__105\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[4].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[4].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__106\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__106\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__106\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__106\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__106\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__106\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__106\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[5].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[5].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__107\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__107\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__107\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__107\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__107\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__107\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__107\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[6].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[6].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__108\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__108\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__108\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__108\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__108\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__108\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__108\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[7].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[7].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__109\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__109\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__109\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__109\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__109\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__109\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__109\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[8].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[8].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__11\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__11\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__11\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__11\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__11\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__11\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__11\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[9].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[9].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__110\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__110\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__110\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__110\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__110\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__110\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__110\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[9].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[9].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__111\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__111\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__111\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__111\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__111\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__111\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__111\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[10].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[10].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__112\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__112\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__112\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__112\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__112\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__112\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__112\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[11].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[11].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__113\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__113\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__113\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__113\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__113\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__113\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__113\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[12].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[12].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__114\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__114\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__114\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__114\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__114\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__114\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__114\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[13].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[13].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__115\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__115\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__115\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__115\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__115\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__115\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__115\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[14].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[14].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__116\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__116\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__116\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__116\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__116\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__116\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__116\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[15].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[15].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__117\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__117\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__117\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__117\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__117\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__117\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__117\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[16].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[16].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__118\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__118\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__118\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__118\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__118\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__118\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__118\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[17].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[17].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__119\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__119\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__119\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__119\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__119\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__119\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__119\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[18].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[18].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__12\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__12\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__12\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__12\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__12\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__12\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__12\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[10].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[10].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__120\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__120\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__120\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__120\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__120\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__120\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__120\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[19].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[19].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__121\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__121\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__121\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__121\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__121\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__121\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__121\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[20].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[20].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__122\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__122\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__122\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__122\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__122\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__122\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__122\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[21].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[21].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__123\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__123\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__123\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__123\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__123\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__123\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__123\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[22].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[22].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__124\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__124\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__124\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__124\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__124\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__124\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__124\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[23].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[23].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__125\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__125\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__125\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__125\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__125\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__125\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__125\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[24].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[24].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__126\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__126\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__126\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__126\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__126\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__126\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__126\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[25].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[25].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__127\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__127\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__127\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__127\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__127\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__127\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__127\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[26].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\aw15.aw_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[26].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__13\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__13\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__13\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__13\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__13\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__13\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__13\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[11].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[11].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__14\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__14\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__14\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__14\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__14\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__14\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__14\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[12].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[12].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__15\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__15\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__15\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__15\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__15\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__15\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__15\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[13].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[13].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__16\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__16\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__16\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__16\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__16\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__16\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__16\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[14].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[14].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__17\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__17\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__17\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__17\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__17\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__17\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__17\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[15].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[15].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__18\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__18\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__18\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__18\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__18\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__18\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__18\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[16].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[16].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__19\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__19\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__19\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__19\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__19\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__19\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__19\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[17].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[17].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__2\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__2\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__2\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__2\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__2\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__2\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__2\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[0].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[0].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__20\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__20\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__20\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__20\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__20\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__20\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__20\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[18].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[18].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__21\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__21\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__21\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__21\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__21\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__21\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__21\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[19].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[19].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__22\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__22\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__22\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__22\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__22\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__22\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__22\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[20].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[20].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__23\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__23\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__23\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__23\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__23\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__23\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__23\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[21].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[21].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__24\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__24\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__24\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__24\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__24\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__24\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__24\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[22].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[22].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__25\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__25\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__25\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__25\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__25\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__25\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__25\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[23].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[23].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__26\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__26\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__26\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__26\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__26\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__26\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__26\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[24].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[24].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__27\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__27\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__27\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__27\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__27\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__27\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__27\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[25].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[25].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__28\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__28\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__28\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__28\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__28\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__28\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__28\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[26].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[26].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__29\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__29\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__29\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__29\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__29\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__29\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__29\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[27].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[27].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__3\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__3\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__3\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__3\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__3\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__3\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__3\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[1].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[1].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__30\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__30\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__30\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__30\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__30\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__30\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__30\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[0].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[0].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__31\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__31\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__31\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__31\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__31\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__31\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__31\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[1].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[1].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__32\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__32\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__32\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__32\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__32\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__32\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__32\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[2].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[2].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__33\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__33\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__33\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__33\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__33\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__33\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__33\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[3].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[3].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__34\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__34\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__34\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__34\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__34\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__34\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__34\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[4].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[4].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__35\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__35\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__35\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__35\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__35\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__35\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__35\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[5].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[5].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__36\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__36\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__36\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__36\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__36\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__36\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__36\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[6].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[6].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__37\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__37\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__37\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__37\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__37\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__37\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__37\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[7].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[7].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__38\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__38\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__38\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__38\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__38\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__38\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__38\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[8].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[8].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__39\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__39\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__39\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__39\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__39\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__39\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__39\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[9].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[9].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__4\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__4\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__4\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__4\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__4\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__4\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__4\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[2].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[2].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__40\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__40\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__40\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__40\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__40\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__40\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__40\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[10].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[10].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__41\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__41\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__41\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__41\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__41\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__41\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__41\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[11].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[11].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__42\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__42\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__42\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__42\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__42\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__42\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__42\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[12].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[12].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__43\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__43\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__43\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__43\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__43\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__43\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__43\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[13].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[13].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__44\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__44\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__44\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__44\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__44\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__44\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__44\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[14].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[14].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__45\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__45\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__45\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__45\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__45\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__45\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__45\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[15].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[15].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__46\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__46\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__46\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__46\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__46\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__46\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__46\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[16].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[16].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__47\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__47\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__47\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__47\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__47\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__47\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__47\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[17].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[17].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__48\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__48\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__48\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__48\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__48\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__48\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__48\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[18].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[18].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__49\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__49\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__49\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__49\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__49\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__49\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__49\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[19].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[19].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__5\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__5\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__5\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__5\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__5\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__5\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__5\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[3].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[3].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__50\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__50\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__50\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__50\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__50\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__50\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__50\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[20].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[20].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__51\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__51\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__51\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__51\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__51\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__51\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__51\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[21].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[21].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__52\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__52\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__52\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__52\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__52\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__52\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__52\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[22].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[22].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__53\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__53\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__53\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__53\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__53\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__53\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__53\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[23].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[23].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__54\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__54\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__54\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__54\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__54\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__54\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__54\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[24].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[24].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__55\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__55\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__55\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__55\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__55\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__55\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__55\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[25].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[25].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__56\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__56\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__56\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__56\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__56\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__56\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__56\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[26].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[26].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__57\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__57\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__57\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__57\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__57\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__57\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__57\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[27].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[27].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__58\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__58\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__58\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__58\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__58\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__58\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__58\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[28].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[28].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__59\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__59\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__59\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__59\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__59\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__59\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__59\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[29].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[29].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__6\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__6\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__6\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__6\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__6\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__6\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__6\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[4].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[4].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__60\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__60\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__60\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__60\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__60\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__60\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__60\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[30].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[30].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__61\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__61\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__61\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__61\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__61\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__61\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__61\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[31].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[31].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__62\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__62\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__62\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__62\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__62\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__62\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__62\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[32].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[32].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__63\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__63\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__63\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__63\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__63\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__63\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__63\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[33].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[33].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__64\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__64\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__64\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__64\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__64\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__64\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__64\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[34].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[34].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__65\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__65\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__65\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__65\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__65\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__65\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__65\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[35].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\w15.w_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[35].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__66\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__66\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__66\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__66\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__66\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__66\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__66\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\b15.b_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[0].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\b15.b_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[0].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__67\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__67\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__67\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__67\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__67\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__67\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__67\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\b15.b_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[1].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\b15.b_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[1].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__68\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__68\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__68\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__68\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__68\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__68\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__68\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[0].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[0].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__69\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__69\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__69\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__69\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__69\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__69\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__69\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[1].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[1].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__7\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__7\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__7\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__7\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__7\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__7\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__7\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[5].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[5].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__70\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__70\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__70\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__70\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__70\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__70\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__70\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[2].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[2].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__71\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__71\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__71\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__71\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__71\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__71\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__71\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[3].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[3].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__72\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__72\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__72\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__72\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__72\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__72\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__72\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[4].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[4].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__73\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__73\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__73\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__73\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__73\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__73\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__73\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[5].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[5].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__74\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__74\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__74\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__74\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__74\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__74\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__74\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[6].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[6].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__75\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__75\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__75\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__75\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__75\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__75\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__75\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[7].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[7].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__76\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__76\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__76\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__76\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__76\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__76\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__76\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[8].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[8].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__77\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__77\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__77\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__77\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__77\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__77\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__77\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[9].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[9].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__78\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__78\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__78\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__78\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__78\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__78\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__78\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[10].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[10].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__79\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__79\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__79\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__79\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__79\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__79\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__79\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[11].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[11].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__8\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__8\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__8\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__8\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__8\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__8\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__8\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[6].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[6].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__80\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__80\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__80\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__80\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__80\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__80\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__80\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[12].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[12].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__81\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__81\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__81\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__81\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__81\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__81\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__81\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[13].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[13].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__82\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__82\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__82\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__82\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__82\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__82\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__82\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[14].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[14].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__83\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__83\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__83\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__83\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__83\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__83\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__83\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[15].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[15].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__84\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__84\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__84\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__84\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__84\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__84\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__84\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[16].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[16].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__85\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__85\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__85\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__85\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__85\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__85\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__85\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[17].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[17].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__86\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__86\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__86\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__86\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__86\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__86\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__86\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[18].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[18].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__87\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__87\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__87\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__87\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__87\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__87\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__87\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[19].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[19].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__88\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__88\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__88\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__88\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__88\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__88\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__88\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[20].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[20].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__89\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__89\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__89\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__89\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__89\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__89\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__89\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[21].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[21].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__9\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__9\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__9\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__9\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__9\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__9\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__9\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[7].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\ar15.ar_multi/dual_slr.fwd.slr_slave/common.srl_fifo_0/srl[7].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__90\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__90\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__90\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__90\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__90\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__90\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__90\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[22].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[22].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__91\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__91\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__91\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__91\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__91\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__91\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__91\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[23].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[23].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__92\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__92\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__92\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__92\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__92\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__92\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__92\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[24].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[24].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__93\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__93\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__93\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__93\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__93\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__93\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__93\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[25].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[25].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__94\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__94\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__94\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__94\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__94\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__94\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__94\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[26].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[26].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__95\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__95\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__95\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__95\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__95\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__95\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__95\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[27].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[27].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__96\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__96\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__96\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__96\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__96\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__96\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__96\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[28].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[28].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__97\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__97\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__97\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__97\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__97\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__97\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__97\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[29].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[29].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__98\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__98\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__98\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__98\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__98\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__98\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__98\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[30].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[30].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__99\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ce : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__99\ : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__99\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__99\ : entity is "axi_register_slice_v2_1_26_srl_rtl";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__99\ : entity is 16;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__99\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__99\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shift_reg_reg[0]_srl16\ : label is "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[31].srl_nx1 /\shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shift_reg_reg[0]_srl16\ : label is "inst/\r15.r_multi/dual_slr.resp.slr_master/common.srl_fifo_0/srl[31].srl_nx1 /\shift_reg_reg[0]_srl16 ";
begin
\shift_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      CE => ce,
      CLK => clk,
      D => d,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axic_reg_srl_fifo is
  port (
    asyncclear_mvalid_inst_0 : out STD_LOGIC;
    m_axi_awready_0 : out STD_LOGIC;
    \mesg_reg_reg[27]_0\ : out STD_LOGIC_VECTOR ( 27 downto 0 );
    aclk : in STD_LOGIC;
    \common.laguna_s_handshake_q\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 27 downto 0 );
    \common.ACLEAR\ : in STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    \out\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axic_reg_srl_fifo;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axic_reg_srl_fifo is
  signal \^asyncclear_mvalid_inst_0\ : STD_LOGIC;
  signal asyncclear_state0_inst_i_1_n_0 : STD_LOGIC;
  signal asyncclear_state1_inst_i_1_n_0 : STD_LOGIC;
  signal asyncclear_state1_inst_i_3_n_0 : STD_LOGIC;
  signal \common.pop__0\ : STD_LOGIC;
  signal fifoaddr12_out : STD_LOGIC;
  signal \fifoaddr[0]_i_1_n_0\ : STD_LOGIC;
  signal \fifoaddr[1]_i_1_n_0\ : STD_LOGIC;
  signal \fifoaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \fifoaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \fifoaddr[3]_i_2_n_0\ : STD_LOGIC;
  signal fifoaddr_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal load_mesg : STD_LOGIC;
  signal m_valid_d : STD_LOGIC;
  signal \mesg_reg[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \mesg_reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \mesg_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \mesg_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \mesg_reg[13]_i_1_n_0\ : STD_LOGIC;
  signal \mesg_reg[14]_i_1_n_0\ : STD_LOGIC;
  signal \mesg_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \mesg_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \mesg_reg[17]_i_1_n_0\ : STD_LOGIC;
  signal \mesg_reg[18]_i_1_n_0\ : STD_LOGIC;
  signal \mesg_reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \mesg_reg[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \mesg_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \mesg_reg[21]_i_1_n_0\ : STD_LOGIC;
  signal \mesg_reg[22]_i_1_n_0\ : STD_LOGIC;
  signal \mesg_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \mesg_reg[24]_i_2_n_0\ : STD_LOGIC;
  signal \mesg_reg[25]_i_1_n_0\ : STD_LOGIC;
  signal \mesg_reg[26]_i_1_n_0\ : STD_LOGIC;
  signal \mesg_reg[27]_i_1_n_0\ : STD_LOGIC;
  signal \mesg_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \mesg_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \mesg_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \mesg_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \mesg_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \mesg_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \mesg_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \mesg_reg[9]_i_1_n_0\ : STD_LOGIC;
  signal srl_reg : STD_LOGIC_VECTOR ( 27 downto 0 );
  signal state : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of asyncclear_mvalid_inst : label is "PRIMITIVE";
  attribute BOX_TYPE of asyncclear_state0_inst : label is "PRIMITIVE";
  attribute BOX_TYPE of asyncclear_state1_inst : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of asyncclear_state1_inst_i_2 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of asyncclear_state1_inst_i_3 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \fifoaddr[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \fifoaddr[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \fifoaddr[3]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \fifoaddr[3]_i_3__1\ : label is "soft_lutpair4";
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \srl[0].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \srl[0].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of \srl[0].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \srl[0].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[10].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[10].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[10].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[10].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[11].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[11].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[11].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[11].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[12].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[12].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[12].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[12].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[13].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[13].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[13].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[13].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[14].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[14].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[14].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[14].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[15].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[15].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[15].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[15].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[16].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[16].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[16].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[16].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[17].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[17].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[17].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[17].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[18].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[18].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[18].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[18].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[19].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[19].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[19].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[19].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[1].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[1].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[1].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[1].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[20].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[20].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[20].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[20].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[21].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[21].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[21].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[21].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[22].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[22].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[22].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[22].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[23].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[23].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[23].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[23].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[24].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[24].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[24].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[24].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[25].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[25].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[25].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[25].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[26].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[26].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[26].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[26].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[27].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[27].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[27].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[27].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[2].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[2].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[2].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[2].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[3].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[3].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[3].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[3].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[4].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[4].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[4].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[4].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[5].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[5].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[5].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[5].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[6].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[6].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[6].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[6].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[7].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[7].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[7].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[7].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[8].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[8].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[8].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[8].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[9].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[9].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[9].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[9].srl_nx1\ : label is 16;
begin
  asyncclear_mvalid_inst_0 <= \^asyncclear_mvalid_inst_0\;
asyncclear_mvalid_inst: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      CLR => \common.ACLEAR\,
      D => m_valid_d,
      Q => \^asyncclear_mvalid_inst_0\
    );
asyncclear_mvalid_inst_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDFDF00C000F0"
    )
        port map (
      I0 => m_axi_awready,
      I1 => state(1),
      I2 => \^asyncclear_mvalid_inst_0\,
      I3 => \out\,
      I4 => \common.laguna_s_handshake_q\,
      I5 => state(0),
      O => m_valid_d
    );
asyncclear_state0_inst: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      CLR => \common.ACLEAR\,
      D => asyncclear_state0_inst_i_1_n_0,
      Q => state(0)
    );
asyncclear_state0_inst_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000E4F4F4F4"
    )
        port map (
      I0 => state(1),
      I1 => \common.laguna_s_handshake_q\,
      I2 => state(0),
      I3 => \^asyncclear_mvalid_inst_0\,
      I4 => m_axi_awready,
      I5 => \out\,
      O => asyncclear_state0_inst_i_1_n_0
    );
asyncclear_state1_inst: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      CLR => \common.ACLEAR\,
      D => asyncclear_state1_inst_i_1_n_0,
      Q => state(1)
    );
asyncclear_state1_inst_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CC40C440"
    )
        port map (
      I0 => \common.pop__0\,
      I1 => state(0),
      I2 => \common.laguna_s_handshake_q\,
      I3 => state(1),
      I4 => asyncclear_state1_inst_i_3_n_0,
      I5 => \out\,
      O => asyncclear_state1_inst_i_1_n_0
    );
asyncclear_state1_inst_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m_axi_awready,
      I1 => \^asyncclear_mvalid_inst_0\,
      O => \common.pop__0\
    );
asyncclear_state1_inst_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => fifoaddr_reg(2),
      I1 => fifoaddr_reg(3),
      I2 => fifoaddr_reg(0),
      I3 => fifoaddr_reg(1),
      O => asyncclear_state1_inst_i_3_n_0
    );
\common.laguna_s_ready_i_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => m_axi_awready,
      I1 => \^asyncclear_mvalid_inst_0\,
      O => m_axi_awready_0
    );
\fifoaddr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => fifoaddr_reg(0),
      O => \fifoaddr[0]_i_1_n_0\
    );
\fifoaddr[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A659"
    )
        port map (
      I0 => fifoaddr_reg(0),
      I1 => \common.laguna_s_handshake_q\,
      I2 => \common.pop__0\,
      I3 => fifoaddr_reg(1),
      O => \fifoaddr[1]_i_1_n_0\
    );
\fifoaddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"78E1"
    )
        port map (
      I0 => fifoaddr_reg(0),
      I1 => fifoaddr12_out,
      I2 => fifoaddr_reg(2),
      I3 => fifoaddr_reg(1),
      O => \fifoaddr[2]_i_1_n_0\
    );
\fifoaddr[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0AAA8000"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => \^asyncclear_mvalid_inst_0\,
      I3 => m_axi_awready,
      I4 => \common.laguna_s_handshake_q\,
      O => \fifoaddr[3]_i_1_n_0\
    );
\fifoaddr[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F80FE01"
    )
        port map (
      I0 => fifoaddr12_out,
      I1 => fifoaddr_reg(0),
      I2 => fifoaddr_reg(1),
      I3 => fifoaddr_reg(3),
      I4 => fifoaddr_reg(2),
      O => \fifoaddr[3]_i_2_n_0\
    );
\fifoaddr[3]_i_3__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0888"
    )
        port map (
      I0 => \common.laguna_s_handshake_q\,
      I1 => state(0),
      I2 => \^asyncclear_mvalid_inst_0\,
      I3 => m_axi_awready,
      O => fifoaddr12_out
    );
\fifoaddr_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => \fifoaddr[3]_i_1_n_0\,
      D => \fifoaddr[0]_i_1_n_0\,
      Q => fifoaddr_reg(0),
      S => \out\
    );
\fifoaddr_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => \fifoaddr[3]_i_1_n_0\,
      D => \fifoaddr[1]_i_1_n_0\,
      Q => fifoaddr_reg(1),
      S => \out\
    );
\fifoaddr_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => \fifoaddr[3]_i_1_n_0\,
      D => \fifoaddr[2]_i_1_n_0\,
      Q => fifoaddr_reg(2),
      S => \out\
    );
\fifoaddr_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => \fifoaddr[3]_i_1_n_0\,
      D => \fifoaddr[3]_i_2_n_0\,
      Q => fifoaddr_reg(3),
      S => \out\
    );
\mesg_reg[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(0),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(0),
      O => \mesg_reg[0]_i_1__0_n_0\
    );
\mesg_reg[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(10),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(10),
      O => \mesg_reg[10]_i_1_n_0\
    );
\mesg_reg[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(11),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(11),
      O => \mesg_reg[11]_i_1_n_0\
    );
\mesg_reg[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(12),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(12),
      O => \mesg_reg[12]_i_1_n_0\
    );
\mesg_reg[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(13),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(13),
      O => \mesg_reg[13]_i_1_n_0\
    );
\mesg_reg[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(14),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(14),
      O => \mesg_reg[14]_i_1_n_0\
    );
\mesg_reg[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(15),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(15),
      O => \mesg_reg[15]_i_1_n_0\
    );
\mesg_reg[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(16),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(16),
      O => \mesg_reg[16]_i_1_n_0\
    );
\mesg_reg[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(17),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(17),
      O => \mesg_reg[17]_i_1_n_0\
    );
\mesg_reg[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(18),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(18),
      O => \mesg_reg[18]_i_1_n_0\
    );
\mesg_reg[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(19),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(19),
      O => \mesg_reg[19]_i_1_n_0\
    );
\mesg_reg[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(1),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(1),
      O => \mesg_reg[1]_i_1__0_n_0\
    );
\mesg_reg[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(20),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(20),
      O => \mesg_reg[20]_i_1_n_0\
    );
\mesg_reg[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(21),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(21),
      O => \mesg_reg[21]_i_1_n_0\
    );
\mesg_reg[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(22),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(22),
      O => \mesg_reg[22]_i_1_n_0\
    );
\mesg_reg[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(23),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(23),
      O => \mesg_reg[23]_i_1_n_0\
    );
\mesg_reg[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F8F8F80"
    )
        port map (
      I0 => m_axi_awready,
      I1 => \^asyncclear_mvalid_inst_0\,
      I2 => state(0),
      I3 => state(1),
      I4 => \common.laguna_s_handshake_q\,
      O => load_mesg
    );
\mesg_reg[24]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(24),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(24),
      O => \mesg_reg[24]_i_2_n_0\
    );
\mesg_reg[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(25),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(25),
      O => \mesg_reg[25]_i_1_n_0\
    );
\mesg_reg[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(26),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(26),
      O => \mesg_reg[26]_i_1_n_0\
    );
\mesg_reg[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(27),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(27),
      O => \mesg_reg[27]_i_1_n_0\
    );
\mesg_reg[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(2),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(2),
      O => \mesg_reg[2]_i_1_n_0\
    );
\mesg_reg[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(3),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(3),
      O => \mesg_reg[3]_i_1_n_0\
    );
\mesg_reg[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(4),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(4),
      O => \mesg_reg[4]_i_1_n_0\
    );
\mesg_reg[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(5),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(5),
      O => \mesg_reg[5]_i_1_n_0\
    );
\mesg_reg[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(6),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(6),
      O => \mesg_reg[6]_i_1_n_0\
    );
\mesg_reg[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(7),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(7),
      O => \mesg_reg[7]_i_1_n_0\
    );
\mesg_reg[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(8),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(8),
      O => \mesg_reg[8]_i_1_n_0\
    );
\mesg_reg[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(9),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(9),
      O => \mesg_reg[9]_i_1_n_0\
    );
\mesg_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[0]_i_1__0_n_0\,
      Q => \mesg_reg_reg[27]_0\(0),
      R => '0'
    );
\mesg_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[10]_i_1_n_0\,
      Q => \mesg_reg_reg[27]_0\(10),
      R => '0'
    );
\mesg_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[11]_i_1_n_0\,
      Q => \mesg_reg_reg[27]_0\(11),
      R => '0'
    );
\mesg_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[12]_i_1_n_0\,
      Q => \mesg_reg_reg[27]_0\(12),
      R => '0'
    );
\mesg_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[13]_i_1_n_0\,
      Q => \mesg_reg_reg[27]_0\(13),
      R => '0'
    );
\mesg_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[14]_i_1_n_0\,
      Q => \mesg_reg_reg[27]_0\(14),
      R => '0'
    );
\mesg_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[15]_i_1_n_0\,
      Q => \mesg_reg_reg[27]_0\(15),
      R => '0'
    );
\mesg_reg_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[16]_i_1_n_0\,
      Q => \mesg_reg_reg[27]_0\(16),
      R => '0'
    );
\mesg_reg_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[17]_i_1_n_0\,
      Q => \mesg_reg_reg[27]_0\(17),
      R => '0'
    );
\mesg_reg_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[18]_i_1_n_0\,
      Q => \mesg_reg_reg[27]_0\(18),
      R => '0'
    );
\mesg_reg_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[19]_i_1_n_0\,
      Q => \mesg_reg_reg[27]_0\(19),
      R => '0'
    );
\mesg_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[1]_i_1__0_n_0\,
      Q => \mesg_reg_reg[27]_0\(1),
      R => '0'
    );
\mesg_reg_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[20]_i_1_n_0\,
      Q => \mesg_reg_reg[27]_0\(20),
      R => '0'
    );
\mesg_reg_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[21]_i_1_n_0\,
      Q => \mesg_reg_reg[27]_0\(21),
      R => '0'
    );
\mesg_reg_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[22]_i_1_n_0\,
      Q => \mesg_reg_reg[27]_0\(22),
      R => '0'
    );
\mesg_reg_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[23]_i_1_n_0\,
      Q => \mesg_reg_reg[27]_0\(23),
      R => '0'
    );
\mesg_reg_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[24]_i_2_n_0\,
      Q => \mesg_reg_reg[27]_0\(24),
      R => '0'
    );
\mesg_reg_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[25]_i_1_n_0\,
      Q => \mesg_reg_reg[27]_0\(25),
      R => '0'
    );
\mesg_reg_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[26]_i_1_n_0\,
      Q => \mesg_reg_reg[27]_0\(26),
      R => '0'
    );
\mesg_reg_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[27]_i_1_n_0\,
      Q => \mesg_reg_reg[27]_0\(27),
      R => '0'
    );
\mesg_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[2]_i_1_n_0\,
      Q => \mesg_reg_reg[27]_0\(2),
      R => '0'
    );
\mesg_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[3]_i_1_n_0\,
      Q => \mesg_reg_reg[27]_0\(3),
      R => '0'
    );
\mesg_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[4]_i_1_n_0\,
      Q => \mesg_reg_reg[27]_0\(4),
      R => '0'
    );
\mesg_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[5]_i_1_n_0\,
      Q => \mesg_reg_reg[27]_0\(5),
      R => '0'
    );
\mesg_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[6]_i_1_n_0\,
      Q => \mesg_reg_reg[27]_0\(6),
      R => '0'
    );
\mesg_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[7]_i_1_n_0\,
      Q => \mesg_reg_reg[27]_0\(7),
      R => '0'
    );
\mesg_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[8]_i_1_n_0\,
      Q => \mesg_reg_reg[27]_0\(8),
      R => '0'
    );
\mesg_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[9]_i_1_n_0\,
      Q => \mesg_reg_reg[27]_0\(9),
      R => '0'
    );
\srl[0].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__101\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(0),
      q => srl_reg(0)
    );
\srl[10].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__111\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(10),
      q => srl_reg(10)
    );
\srl[11].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__112\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(11),
      q => srl_reg(11)
    );
\srl[12].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__113\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(12),
      q => srl_reg(12)
    );
\srl[13].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__114\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(13),
      q => srl_reg(13)
    );
\srl[14].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__115\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(14),
      q => srl_reg(14)
    );
\srl[15].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__116\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(15),
      q => srl_reg(15)
    );
\srl[16].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__117\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(16),
      q => srl_reg(16)
    );
\srl[17].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__118\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(17),
      q => srl_reg(17)
    );
\srl[18].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__119\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(18),
      q => srl_reg(18)
    );
\srl[19].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__120\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(19),
      q => srl_reg(19)
    );
\srl[1].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__102\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(1),
      q => srl_reg(1)
    );
\srl[20].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__121\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(20),
      q => srl_reg(20)
    );
\srl[21].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__122\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(21),
      q => srl_reg(21)
    );
\srl[22].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__123\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(22),
      q => srl_reg(22)
    );
\srl[23].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__124\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(23),
      q => srl_reg(23)
    );
\srl[24].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__125\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(24),
      q => srl_reg(24)
    );
\srl[25].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__126\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(25),
      q => srl_reg(25)
    );
\srl[26].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__127\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(26),
      q => srl_reg(26)
    );
\srl[27].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__1\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(27),
      q => srl_reg(27)
    );
\srl[2].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__103\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(2),
      q => srl_reg(2)
    );
\srl[3].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__104\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(3),
      q => srl_reg(3)
    );
\srl[4].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__105\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(4),
      q => srl_reg(4)
    );
\srl[5].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__106\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(5),
      q => srl_reg(5)
    );
\srl[6].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__107\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(6),
      q => srl_reg(6)
    );
\srl[7].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__108\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(7),
      q => srl_reg(7)
    );
\srl[8].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__109\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(8),
      q => srl_reg(8)
    );
\srl[9].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__110\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(9),
      q => srl_reg(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axic_reg_srl_fifo_3 is
  port (
    asyncclear_mvalid_inst_0 : out STD_LOGIC;
    m_axi_arready_0 : out STD_LOGIC;
    \mesg_reg_reg[27]_0\ : out STD_LOGIC_VECTOR ( 27 downto 0 );
    aclk : in STD_LOGIC;
    \common.laguna_s_handshake_q\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 27 downto 0 );
    \common.ACLEAR\ : in STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    \out\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axic_reg_srl_fifo_3 : entity is "axi_register_slice_v2_1_26_axic_reg_srl_fifo";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axic_reg_srl_fifo_3;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axic_reg_srl_fifo_3 is
  signal \^asyncclear_mvalid_inst_0\ : STD_LOGIC;
  signal \asyncclear_state0_inst_i_1__2_n_0\ : STD_LOGIC;
  signal \asyncclear_state1_inst_i_1__2_n_0\ : STD_LOGIC;
  signal \asyncclear_state1_inst_i_3__2_n_0\ : STD_LOGIC;
  signal \common.pop__0\ : STD_LOGIC;
  signal fifoaddr12_out : STD_LOGIC;
  signal \fifoaddr[0]_i_1__2_n_0\ : STD_LOGIC;
  signal \fifoaddr[1]_i_1__2_n_0\ : STD_LOGIC;
  signal \fifoaddr[2]_i_1__2_n_0\ : STD_LOGIC;
  signal \fifoaddr[3]_i_1__2_n_0\ : STD_LOGIC;
  signal \fifoaddr[3]_i_2__2_n_0\ : STD_LOGIC;
  signal fifoaddr_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal load_mesg : STD_LOGIC;
  signal m_valid_d : STD_LOGIC;
  signal \mesg_reg[0]_i_1__2_n_0\ : STD_LOGIC;
  signal \mesg_reg[10]_i_1__1_n_0\ : STD_LOGIC;
  signal \mesg_reg[11]_i_1__1_n_0\ : STD_LOGIC;
  signal \mesg_reg[12]_i_1__1_n_0\ : STD_LOGIC;
  signal \mesg_reg[13]_i_1__1_n_0\ : STD_LOGIC;
  signal \mesg_reg[14]_i_1__1_n_0\ : STD_LOGIC;
  signal \mesg_reg[15]_i_1__1_n_0\ : STD_LOGIC;
  signal \mesg_reg[16]_i_1__1_n_0\ : STD_LOGIC;
  signal \mesg_reg[17]_i_1__1_n_0\ : STD_LOGIC;
  signal \mesg_reg[18]_i_1__1_n_0\ : STD_LOGIC;
  signal \mesg_reg[19]_i_1__1_n_0\ : STD_LOGIC;
  signal \mesg_reg[1]_i_1__2_n_0\ : STD_LOGIC;
  signal \mesg_reg[20]_i_1__1_n_0\ : STD_LOGIC;
  signal \mesg_reg[21]_i_1__1_n_0\ : STD_LOGIC;
  signal \mesg_reg[22]_i_1__1_n_0\ : STD_LOGIC;
  signal \mesg_reg[23]_i_1__1_n_0\ : STD_LOGIC;
  signal \mesg_reg[24]_i_2__0_n_0\ : STD_LOGIC;
  signal \mesg_reg[25]_i_1__1_n_0\ : STD_LOGIC;
  signal \mesg_reg[26]_i_1__1_n_0\ : STD_LOGIC;
  signal \mesg_reg[27]_i_1__1_n_0\ : STD_LOGIC;
  signal \mesg_reg[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \mesg_reg[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \mesg_reg[4]_i_1__1_n_0\ : STD_LOGIC;
  signal \mesg_reg[5]_i_1__1_n_0\ : STD_LOGIC;
  signal \mesg_reg[6]_i_1__1_n_0\ : STD_LOGIC;
  signal \mesg_reg[7]_i_1__1_n_0\ : STD_LOGIC;
  signal \mesg_reg[8]_i_1__1_n_0\ : STD_LOGIC;
  signal \mesg_reg[9]_i_1__1_n_0\ : STD_LOGIC;
  signal srl_reg : STD_LOGIC_VECTOR ( 27 downto 0 );
  signal state : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of asyncclear_mvalid_inst : label is "PRIMITIVE";
  attribute BOX_TYPE of asyncclear_state0_inst : label is "PRIMITIVE";
  attribute BOX_TYPE of asyncclear_state1_inst : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \asyncclear_state1_inst_i_2__2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \asyncclear_state1_inst_i_3__2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \fifoaddr[0]_i_1__2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \fifoaddr[2]_i_1__2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \fifoaddr[3]_i_2__2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \fifoaddr[3]_i_3__3\ : label is "soft_lutpair1";
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \srl[0].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \srl[0].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of \srl[0].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \srl[0].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[10].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[10].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[10].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[10].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[11].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[11].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[11].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[11].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[12].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[12].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[12].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[12].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[13].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[13].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[13].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[13].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[14].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[14].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[14].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[14].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[15].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[15].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[15].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[15].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[16].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[16].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[16].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[16].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[17].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[17].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[17].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[17].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[18].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[18].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[18].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[18].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[19].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[19].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[19].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[19].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[1].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[1].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[1].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[1].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[20].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[20].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[20].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[20].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[21].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[21].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[21].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[21].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[22].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[22].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[22].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[22].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[23].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[23].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[23].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[23].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[24].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[24].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[24].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[24].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[25].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[25].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[25].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[25].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[26].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[26].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[26].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[26].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[27].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[27].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[27].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[27].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[2].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[2].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[2].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[2].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[3].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[3].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[3].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[3].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[4].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[4].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[4].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[4].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[5].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[5].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[5].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[5].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[6].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[6].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[6].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[6].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[7].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[7].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[7].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[7].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[8].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[8].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[8].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[8].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[9].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[9].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[9].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[9].srl_nx1\ : label is 16;
begin
  asyncclear_mvalid_inst_0 <= \^asyncclear_mvalid_inst_0\;
asyncclear_mvalid_inst: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      CLR => \common.ACLEAR\,
      D => m_valid_d,
      Q => \^asyncclear_mvalid_inst_0\
    );
\asyncclear_mvalid_inst_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDFDF00C000F0"
    )
        port map (
      I0 => m_axi_arready,
      I1 => state(1),
      I2 => \^asyncclear_mvalid_inst_0\,
      I3 => \out\,
      I4 => \common.laguna_s_handshake_q\,
      I5 => state(0),
      O => m_valid_d
    );
asyncclear_state0_inst: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      CLR => \common.ACLEAR\,
      D => \asyncclear_state0_inst_i_1__2_n_0\,
      Q => state(0)
    );
\asyncclear_state0_inst_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000E4F4F4F4"
    )
        port map (
      I0 => state(1),
      I1 => \common.laguna_s_handshake_q\,
      I2 => state(0),
      I3 => \^asyncclear_mvalid_inst_0\,
      I4 => m_axi_arready,
      I5 => \out\,
      O => \asyncclear_state0_inst_i_1__2_n_0\
    );
asyncclear_state1_inst: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      CLR => \common.ACLEAR\,
      D => \asyncclear_state1_inst_i_1__2_n_0\,
      Q => state(1)
    );
\asyncclear_state1_inst_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CC40C440"
    )
        port map (
      I0 => \common.pop__0\,
      I1 => state(0),
      I2 => \common.laguna_s_handshake_q\,
      I3 => state(1),
      I4 => \asyncclear_state1_inst_i_3__2_n_0\,
      I5 => \out\,
      O => \asyncclear_state1_inst_i_1__2_n_0\
    );
\asyncclear_state1_inst_i_2__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m_axi_arready,
      I1 => \^asyncclear_mvalid_inst_0\,
      O => \common.pop__0\
    );
\asyncclear_state1_inst_i_3__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => fifoaddr_reg(2),
      I1 => fifoaddr_reg(3),
      I2 => fifoaddr_reg(0),
      I3 => fifoaddr_reg(1),
      O => \asyncclear_state1_inst_i_3__2_n_0\
    );
\common.laguna_s_ready_i_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => m_axi_arready,
      I1 => \^asyncclear_mvalid_inst_0\,
      O => m_axi_arready_0
    );
\fifoaddr[0]_i_1__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => fifoaddr_reg(0),
      O => \fifoaddr[0]_i_1__2_n_0\
    );
\fifoaddr[1]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A659"
    )
        port map (
      I0 => fifoaddr_reg(0),
      I1 => \common.laguna_s_handshake_q\,
      I2 => \common.pop__0\,
      I3 => fifoaddr_reg(1),
      O => \fifoaddr[1]_i_1__2_n_0\
    );
\fifoaddr[2]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"78E1"
    )
        port map (
      I0 => fifoaddr_reg(0),
      I1 => fifoaddr12_out,
      I2 => fifoaddr_reg(2),
      I3 => fifoaddr_reg(1),
      O => \fifoaddr[2]_i_1__2_n_0\
    );
\fifoaddr[3]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0AAA8000"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => \^asyncclear_mvalid_inst_0\,
      I3 => m_axi_arready,
      I4 => \common.laguna_s_handshake_q\,
      O => \fifoaddr[3]_i_1__2_n_0\
    );
\fifoaddr[3]_i_2__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F80FE01"
    )
        port map (
      I0 => fifoaddr12_out,
      I1 => fifoaddr_reg(0),
      I2 => fifoaddr_reg(1),
      I3 => fifoaddr_reg(3),
      I4 => fifoaddr_reg(2),
      O => \fifoaddr[3]_i_2__2_n_0\
    );
\fifoaddr[3]_i_3__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0888"
    )
        port map (
      I0 => \common.laguna_s_handshake_q\,
      I1 => state(0),
      I2 => \^asyncclear_mvalid_inst_0\,
      I3 => m_axi_arready,
      O => fifoaddr12_out
    );
\fifoaddr_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => \fifoaddr[3]_i_1__2_n_0\,
      D => \fifoaddr[0]_i_1__2_n_0\,
      Q => fifoaddr_reg(0),
      S => \out\
    );
\fifoaddr_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => \fifoaddr[3]_i_1__2_n_0\,
      D => \fifoaddr[1]_i_1__2_n_0\,
      Q => fifoaddr_reg(1),
      S => \out\
    );
\fifoaddr_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => \fifoaddr[3]_i_1__2_n_0\,
      D => \fifoaddr[2]_i_1__2_n_0\,
      Q => fifoaddr_reg(2),
      S => \out\
    );
\fifoaddr_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => \fifoaddr[3]_i_1__2_n_0\,
      D => \fifoaddr[3]_i_2__2_n_0\,
      Q => fifoaddr_reg(3),
      S => \out\
    );
\mesg_reg[0]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(0),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(0),
      O => \mesg_reg[0]_i_1__2_n_0\
    );
\mesg_reg[10]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(10),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(10),
      O => \mesg_reg[10]_i_1__1_n_0\
    );
\mesg_reg[11]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(11),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(11),
      O => \mesg_reg[11]_i_1__1_n_0\
    );
\mesg_reg[12]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(12),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(12),
      O => \mesg_reg[12]_i_1__1_n_0\
    );
\mesg_reg[13]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(13),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(13),
      O => \mesg_reg[13]_i_1__1_n_0\
    );
\mesg_reg[14]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(14),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(14),
      O => \mesg_reg[14]_i_1__1_n_0\
    );
\mesg_reg[15]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(15),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(15),
      O => \mesg_reg[15]_i_1__1_n_0\
    );
\mesg_reg[16]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(16),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(16),
      O => \mesg_reg[16]_i_1__1_n_0\
    );
\mesg_reg[17]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(17),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(17),
      O => \mesg_reg[17]_i_1__1_n_0\
    );
\mesg_reg[18]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(18),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(18),
      O => \mesg_reg[18]_i_1__1_n_0\
    );
\mesg_reg[19]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(19),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(19),
      O => \mesg_reg[19]_i_1__1_n_0\
    );
\mesg_reg[1]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(1),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(1),
      O => \mesg_reg[1]_i_1__2_n_0\
    );
\mesg_reg[20]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(20),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(20),
      O => \mesg_reg[20]_i_1__1_n_0\
    );
\mesg_reg[21]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(21),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(21),
      O => \mesg_reg[21]_i_1__1_n_0\
    );
\mesg_reg[22]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(22),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(22),
      O => \mesg_reg[22]_i_1__1_n_0\
    );
\mesg_reg[23]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(23),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(23),
      O => \mesg_reg[23]_i_1__1_n_0\
    );
\mesg_reg[24]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F8F8F80"
    )
        port map (
      I0 => m_axi_arready,
      I1 => \^asyncclear_mvalid_inst_0\,
      I2 => state(0),
      I3 => state(1),
      I4 => \common.laguna_s_handshake_q\,
      O => load_mesg
    );
\mesg_reg[24]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(24),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(24),
      O => \mesg_reg[24]_i_2__0_n_0\
    );
\mesg_reg[25]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(25),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(25),
      O => \mesg_reg[25]_i_1__1_n_0\
    );
\mesg_reg[26]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(26),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(26),
      O => \mesg_reg[26]_i_1__1_n_0\
    );
\mesg_reg[27]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(27),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(27),
      O => \mesg_reg[27]_i_1__1_n_0\
    );
\mesg_reg[2]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(2),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(2),
      O => \mesg_reg[2]_i_1__1_n_0\
    );
\mesg_reg[3]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(3),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(3),
      O => \mesg_reg[3]_i_1__1_n_0\
    );
\mesg_reg[4]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(4),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(4),
      O => \mesg_reg[4]_i_1__1_n_0\
    );
\mesg_reg[5]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(5),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(5),
      O => \mesg_reg[5]_i_1__1_n_0\
    );
\mesg_reg[6]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(6),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(6),
      O => \mesg_reg[6]_i_1__1_n_0\
    );
\mesg_reg[7]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(7),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(7),
      O => \mesg_reg[7]_i_1__1_n_0\
    );
\mesg_reg[8]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(8),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(8),
      O => \mesg_reg[8]_i_1__1_n_0\
    );
\mesg_reg[9]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(9),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(9),
      O => \mesg_reg[9]_i_1__1_n_0\
    );
\mesg_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[0]_i_1__2_n_0\,
      Q => \mesg_reg_reg[27]_0\(0),
      R => '0'
    );
\mesg_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[10]_i_1__1_n_0\,
      Q => \mesg_reg_reg[27]_0\(10),
      R => '0'
    );
\mesg_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[11]_i_1__1_n_0\,
      Q => \mesg_reg_reg[27]_0\(11),
      R => '0'
    );
\mesg_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[12]_i_1__1_n_0\,
      Q => \mesg_reg_reg[27]_0\(12),
      R => '0'
    );
\mesg_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[13]_i_1__1_n_0\,
      Q => \mesg_reg_reg[27]_0\(13),
      R => '0'
    );
\mesg_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[14]_i_1__1_n_0\,
      Q => \mesg_reg_reg[27]_0\(14),
      R => '0'
    );
\mesg_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[15]_i_1__1_n_0\,
      Q => \mesg_reg_reg[27]_0\(15),
      R => '0'
    );
\mesg_reg_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[16]_i_1__1_n_0\,
      Q => \mesg_reg_reg[27]_0\(16),
      R => '0'
    );
\mesg_reg_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[17]_i_1__1_n_0\,
      Q => \mesg_reg_reg[27]_0\(17),
      R => '0'
    );
\mesg_reg_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[18]_i_1__1_n_0\,
      Q => \mesg_reg_reg[27]_0\(18),
      R => '0'
    );
\mesg_reg_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[19]_i_1__1_n_0\,
      Q => \mesg_reg_reg[27]_0\(19),
      R => '0'
    );
\mesg_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[1]_i_1__2_n_0\,
      Q => \mesg_reg_reg[27]_0\(1),
      R => '0'
    );
\mesg_reg_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[20]_i_1__1_n_0\,
      Q => \mesg_reg_reg[27]_0\(20),
      R => '0'
    );
\mesg_reg_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[21]_i_1__1_n_0\,
      Q => \mesg_reg_reg[27]_0\(21),
      R => '0'
    );
\mesg_reg_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[22]_i_1__1_n_0\,
      Q => \mesg_reg_reg[27]_0\(22),
      R => '0'
    );
\mesg_reg_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[23]_i_1__1_n_0\,
      Q => \mesg_reg_reg[27]_0\(23),
      R => '0'
    );
\mesg_reg_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[24]_i_2__0_n_0\,
      Q => \mesg_reg_reg[27]_0\(24),
      R => '0'
    );
\mesg_reg_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[25]_i_1__1_n_0\,
      Q => \mesg_reg_reg[27]_0\(25),
      R => '0'
    );
\mesg_reg_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[26]_i_1__1_n_0\,
      Q => \mesg_reg_reg[27]_0\(26),
      R => '0'
    );
\mesg_reg_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[27]_i_1__1_n_0\,
      Q => \mesg_reg_reg[27]_0\(27),
      R => '0'
    );
\mesg_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[2]_i_1__1_n_0\,
      Q => \mesg_reg_reg[27]_0\(2),
      R => '0'
    );
\mesg_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[3]_i_1__1_n_0\,
      Q => \mesg_reg_reg[27]_0\(3),
      R => '0'
    );
\mesg_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[4]_i_1__1_n_0\,
      Q => \mesg_reg_reg[27]_0\(4),
      R => '0'
    );
\mesg_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[5]_i_1__1_n_0\,
      Q => \mesg_reg_reg[27]_0\(5),
      R => '0'
    );
\mesg_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[6]_i_1__1_n_0\,
      Q => \mesg_reg_reg[27]_0\(6),
      R => '0'
    );
\mesg_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[7]_i_1__1_n_0\,
      Q => \mesg_reg_reg[27]_0\(7),
      R => '0'
    );
\mesg_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[8]_i_1__1_n_0\,
      Q => \mesg_reg_reg[27]_0\(8),
      R => '0'
    );
\mesg_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[9]_i_1__1_n_0\,
      Q => \mesg_reg_reg[27]_0\(9),
      R => '0'
    );
\srl[0].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__2\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(0),
      q => srl_reg(0)
    );
\srl[10].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__12\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(10),
      q => srl_reg(10)
    );
\srl[11].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__13\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(11),
      q => srl_reg(11)
    );
\srl[12].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__14\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(12),
      q => srl_reg(12)
    );
\srl[13].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__15\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(13),
      q => srl_reg(13)
    );
\srl[14].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__16\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(14),
      q => srl_reg(14)
    );
\srl[15].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__17\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(15),
      q => srl_reg(15)
    );
\srl[16].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__18\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(16),
      q => srl_reg(16)
    );
\srl[17].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__19\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(17),
      q => srl_reg(17)
    );
\srl[18].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__20\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(18),
      q => srl_reg(18)
    );
\srl[19].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__21\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(19),
      q => srl_reg(19)
    );
\srl[1].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__3\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(1),
      q => srl_reg(1)
    );
\srl[20].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__22\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(20),
      q => srl_reg(20)
    );
\srl[21].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__23\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(21),
      q => srl_reg(21)
    );
\srl[22].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__24\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(22),
      q => srl_reg(22)
    );
\srl[23].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__25\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(23),
      q => srl_reg(23)
    );
\srl[24].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__26\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(24),
      q => srl_reg(24)
    );
\srl[25].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__27\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(25),
      q => srl_reg(25)
    );
\srl[26].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__28\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(26),
      q => srl_reg(26)
    );
\srl[27].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__29\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(27),
      q => srl_reg(27)
    );
\srl[2].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__4\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(2),
      q => srl_reg(2)
    );
\srl[3].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__5\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(3),
      q => srl_reg(3)
    );
\srl[4].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__6\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(4),
      q => srl_reg(4)
    );
\srl[5].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__7\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(5),
      q => srl_reg(5)
    );
\srl[6].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__8\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(6),
      q => srl_reg(6)
    );
\srl[7].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__9\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(7),
      q => srl_reg(7)
    );
\srl[8].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__10\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(8),
      q => srl_reg(8)
    );
\srl[9].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__11\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(9),
      q => srl_reg(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axic_reg_srl_fifo__parameterized0\ is
  port (
    asyncclear_mvalid_inst_0 : out STD_LOGIC;
    m_axi_wready_0 : out STD_LOGIC;
    \mesg_reg_reg[35]_0\ : out STD_LOGIC_VECTOR ( 35 downto 0 );
    aclk : in STD_LOGIC;
    \common.laguna_s_handshake_q\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 35 downto 0 );
    \common.ACLEAR\ : in STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    \out\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axic_reg_srl_fifo__parameterized0\ : entity is "axi_register_slice_v2_1_26_axic_reg_srl_fifo";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axic_reg_srl_fifo__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axic_reg_srl_fifo__parameterized0\ is
  signal \^asyncclear_mvalid_inst_0\ : STD_LOGIC;
  signal \asyncclear_state0_inst_i_1__0_n_0\ : STD_LOGIC;
  signal \asyncclear_state1_inst_i_1__0_n_0\ : STD_LOGIC;
  signal \asyncclear_state1_inst_i_3__0_n_0\ : STD_LOGIC;
  signal \common.pop__0\ : STD_LOGIC;
  signal fifoaddr12_out : STD_LOGIC;
  signal \fifoaddr[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \fifoaddr[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \fifoaddr[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \fifoaddr[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \fifoaddr[3]_i_2__0_n_0\ : STD_LOGIC;
  signal fifoaddr_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal load_mesg : STD_LOGIC;
  signal m_valid_d : STD_LOGIC;
  signal \mesg_reg[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \mesg_reg[10]_i_1__0_n_0\ : STD_LOGIC;
  signal \mesg_reg[11]_i_1__0_n_0\ : STD_LOGIC;
  signal \mesg_reg[12]_i_1__0_n_0\ : STD_LOGIC;
  signal \mesg_reg[13]_i_1__0_n_0\ : STD_LOGIC;
  signal \mesg_reg[14]_i_1__0_n_0\ : STD_LOGIC;
  signal \mesg_reg[15]_i_1__0_n_0\ : STD_LOGIC;
  signal \mesg_reg[16]_i_1__0_n_0\ : STD_LOGIC;
  signal \mesg_reg[17]_i_1__0_n_0\ : STD_LOGIC;
  signal \mesg_reg[18]_i_1__0_n_0\ : STD_LOGIC;
  signal \mesg_reg[19]_i_1__0_n_0\ : STD_LOGIC;
  signal \mesg_reg[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \mesg_reg[20]_i_1__0_n_0\ : STD_LOGIC;
  signal \mesg_reg[21]_i_1__0_n_0\ : STD_LOGIC;
  signal \mesg_reg[22]_i_1__0_n_0\ : STD_LOGIC;
  signal \mesg_reg[23]_i_1__0_n_0\ : STD_LOGIC;
  signal \mesg_reg[24]_i_1__1_n_0\ : STD_LOGIC;
  signal \mesg_reg[25]_i_1__0_n_0\ : STD_LOGIC;
  signal \mesg_reg[26]_i_1__0_n_0\ : STD_LOGIC;
  signal \mesg_reg[27]_i_1__0_n_0\ : STD_LOGIC;
  signal \mesg_reg[28]_i_1_n_0\ : STD_LOGIC;
  signal \mesg_reg[29]_i_1_n_0\ : STD_LOGIC;
  signal \mesg_reg[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \mesg_reg[30]_i_1_n_0\ : STD_LOGIC;
  signal \mesg_reg[31]_i_2_n_0\ : STD_LOGIC;
  signal \mesg_reg[32]_i_1_n_0\ : STD_LOGIC;
  signal \mesg_reg[33]_i_1_n_0\ : STD_LOGIC;
  signal \mesg_reg[34]_i_1_n_0\ : STD_LOGIC;
  signal \mesg_reg[35]_i_1_n_0\ : STD_LOGIC;
  signal \mesg_reg[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \mesg_reg[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \mesg_reg[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \mesg_reg[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \mesg_reg[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \mesg_reg[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \mesg_reg[9]_i_1__0_n_0\ : STD_LOGIC;
  signal srl_reg : STD_LOGIC_VECTOR ( 35 downto 0 );
  signal state : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of asyncclear_mvalid_inst : label is "PRIMITIVE";
  attribute BOX_TYPE of asyncclear_state0_inst : label is "PRIMITIVE";
  attribute BOX_TYPE of asyncclear_state1_inst : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \asyncclear_state1_inst_i_2__0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \asyncclear_state1_inst_i_3__0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \fifoaddr[0]_i_1__0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \fifoaddr[2]_i_1__0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \fifoaddr[3]_i_2__0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \fifoaddr[3]_i_3__2\ : label is "soft_lutpair13";
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \srl[0].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \srl[0].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of \srl[0].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \srl[0].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[10].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[10].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[10].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[10].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[11].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[11].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[11].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[11].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[12].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[12].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[12].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[12].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[13].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[13].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[13].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[13].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[14].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[14].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[14].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[14].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[15].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[15].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[15].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[15].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[16].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[16].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[16].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[16].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[17].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[17].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[17].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[17].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[18].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[18].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[18].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[18].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[19].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[19].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[19].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[19].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[1].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[1].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[1].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[1].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[20].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[20].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[20].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[20].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[21].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[21].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[21].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[21].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[22].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[22].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[22].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[22].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[23].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[23].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[23].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[23].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[24].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[24].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[24].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[24].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[25].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[25].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[25].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[25].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[26].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[26].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[26].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[26].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[27].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[27].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[27].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[27].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[28].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[28].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[28].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[28].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[29].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[29].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[29].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[29].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[2].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[2].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[2].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[2].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[30].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[30].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[30].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[30].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[31].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[31].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[31].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[31].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[32].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[32].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[32].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[32].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[33].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[33].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[33].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[33].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[34].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[34].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[34].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[34].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[35].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[35].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[35].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[35].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[3].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[3].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[3].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[3].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[4].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[4].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[4].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[4].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[5].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[5].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[5].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[5].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[6].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[6].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[6].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[6].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[7].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[7].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[7].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[7].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[8].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[8].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[8].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[8].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[9].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[9].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[9].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[9].srl_nx1\ : label is 16;
begin
  asyncclear_mvalid_inst_0 <= \^asyncclear_mvalid_inst_0\;
asyncclear_mvalid_inst: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      CLR => \common.ACLEAR\,
      D => m_valid_d,
      Q => \^asyncclear_mvalid_inst_0\
    );
\asyncclear_mvalid_inst_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDFDF00C000F0"
    )
        port map (
      I0 => m_axi_wready,
      I1 => state(1),
      I2 => \^asyncclear_mvalid_inst_0\,
      I3 => \out\,
      I4 => \common.laguna_s_handshake_q\,
      I5 => state(0),
      O => m_valid_d
    );
asyncclear_state0_inst: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      CLR => \common.ACLEAR\,
      D => \asyncclear_state0_inst_i_1__0_n_0\,
      Q => state(0)
    );
\asyncclear_state0_inst_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000E4F4F4F4"
    )
        port map (
      I0 => state(1),
      I1 => \common.laguna_s_handshake_q\,
      I2 => state(0),
      I3 => \^asyncclear_mvalid_inst_0\,
      I4 => m_axi_wready,
      I5 => \out\,
      O => \asyncclear_state0_inst_i_1__0_n_0\
    );
asyncclear_state1_inst: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      CLR => \common.ACLEAR\,
      D => \asyncclear_state1_inst_i_1__0_n_0\,
      Q => state(1)
    );
\asyncclear_state1_inst_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CC40C440"
    )
        port map (
      I0 => \common.pop__0\,
      I1 => state(0),
      I2 => \common.laguna_s_handshake_q\,
      I3 => state(1),
      I4 => \asyncclear_state1_inst_i_3__0_n_0\,
      I5 => \out\,
      O => \asyncclear_state1_inst_i_1__0_n_0\
    );
\asyncclear_state1_inst_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m_axi_wready,
      I1 => \^asyncclear_mvalid_inst_0\,
      O => \common.pop__0\
    );
\asyncclear_state1_inst_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => fifoaddr_reg(2),
      I1 => fifoaddr_reg(3),
      I2 => fifoaddr_reg(0),
      I3 => fifoaddr_reg(1),
      O => \asyncclear_state1_inst_i_3__0_n_0\
    );
\common.laguna_s_ready_i_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => m_axi_wready,
      I1 => \^asyncclear_mvalid_inst_0\,
      O => m_axi_wready_0
    );
\fifoaddr[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => fifoaddr_reg(0),
      O => \fifoaddr[0]_i_1__0_n_0\
    );
\fifoaddr[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A659"
    )
        port map (
      I0 => fifoaddr_reg(0),
      I1 => \common.laguna_s_handshake_q\,
      I2 => \common.pop__0\,
      I3 => fifoaddr_reg(1),
      O => \fifoaddr[1]_i_1__0_n_0\
    );
\fifoaddr[2]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"78E1"
    )
        port map (
      I0 => fifoaddr_reg(0),
      I1 => fifoaddr12_out,
      I2 => fifoaddr_reg(2),
      I3 => fifoaddr_reg(1),
      O => \fifoaddr[2]_i_1__0_n_0\
    );
\fifoaddr[3]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0AAA8000"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => \^asyncclear_mvalid_inst_0\,
      I3 => m_axi_wready,
      I4 => \common.laguna_s_handshake_q\,
      O => \fifoaddr[3]_i_1__0_n_0\
    );
\fifoaddr[3]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F80FE01"
    )
        port map (
      I0 => fifoaddr12_out,
      I1 => fifoaddr_reg(0),
      I2 => fifoaddr_reg(1),
      I3 => fifoaddr_reg(3),
      I4 => fifoaddr_reg(2),
      O => \fifoaddr[3]_i_2__0_n_0\
    );
\fifoaddr[3]_i_3__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0888"
    )
        port map (
      I0 => \common.laguna_s_handshake_q\,
      I1 => state(0),
      I2 => \^asyncclear_mvalid_inst_0\,
      I3 => m_axi_wready,
      O => fifoaddr12_out
    );
\fifoaddr_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => \fifoaddr[3]_i_1__0_n_0\,
      D => \fifoaddr[0]_i_1__0_n_0\,
      Q => fifoaddr_reg(0),
      S => \out\
    );
\fifoaddr_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => \fifoaddr[3]_i_1__0_n_0\,
      D => \fifoaddr[1]_i_1__0_n_0\,
      Q => fifoaddr_reg(1),
      S => \out\
    );
\fifoaddr_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => \fifoaddr[3]_i_1__0_n_0\,
      D => \fifoaddr[2]_i_1__0_n_0\,
      Q => fifoaddr_reg(2),
      S => \out\
    );
\fifoaddr_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => \fifoaddr[3]_i_1__0_n_0\,
      D => \fifoaddr[3]_i_2__0_n_0\,
      Q => fifoaddr_reg(3),
      S => \out\
    );
\mesg_reg[0]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(0),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(0),
      O => \mesg_reg[0]_i_1__1_n_0\
    );
\mesg_reg[10]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(10),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(10),
      O => \mesg_reg[10]_i_1__0_n_0\
    );
\mesg_reg[11]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(11),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(11),
      O => \mesg_reg[11]_i_1__0_n_0\
    );
\mesg_reg[12]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(12),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(12),
      O => \mesg_reg[12]_i_1__0_n_0\
    );
\mesg_reg[13]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(13),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(13),
      O => \mesg_reg[13]_i_1__0_n_0\
    );
\mesg_reg[14]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(14),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(14),
      O => \mesg_reg[14]_i_1__0_n_0\
    );
\mesg_reg[15]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(15),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(15),
      O => \mesg_reg[15]_i_1__0_n_0\
    );
\mesg_reg[16]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(16),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(16),
      O => \mesg_reg[16]_i_1__0_n_0\
    );
\mesg_reg[17]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(17),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(17),
      O => \mesg_reg[17]_i_1__0_n_0\
    );
\mesg_reg[18]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(18),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(18),
      O => \mesg_reg[18]_i_1__0_n_0\
    );
\mesg_reg[19]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(19),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(19),
      O => \mesg_reg[19]_i_1__0_n_0\
    );
\mesg_reg[1]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(1),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(1),
      O => \mesg_reg[1]_i_1__1_n_0\
    );
\mesg_reg[20]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(20),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(20),
      O => \mesg_reg[20]_i_1__0_n_0\
    );
\mesg_reg[21]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(21),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(21),
      O => \mesg_reg[21]_i_1__0_n_0\
    );
\mesg_reg[22]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(22),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(22),
      O => \mesg_reg[22]_i_1__0_n_0\
    );
\mesg_reg[23]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(23),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(23),
      O => \mesg_reg[23]_i_1__0_n_0\
    );
\mesg_reg[24]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(24),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(24),
      O => \mesg_reg[24]_i_1__1_n_0\
    );
\mesg_reg[25]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(25),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(25),
      O => \mesg_reg[25]_i_1__0_n_0\
    );
\mesg_reg[26]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(26),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(26),
      O => \mesg_reg[26]_i_1__0_n_0\
    );
\mesg_reg[27]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(27),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(27),
      O => \mesg_reg[27]_i_1__0_n_0\
    );
\mesg_reg[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(28),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(28),
      O => \mesg_reg[28]_i_1_n_0\
    );
\mesg_reg[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(29),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(29),
      O => \mesg_reg[29]_i_1_n_0\
    );
\mesg_reg[2]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(2),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(2),
      O => \mesg_reg[2]_i_1__0_n_0\
    );
\mesg_reg[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(30),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(30),
      O => \mesg_reg[30]_i_1_n_0\
    );
\mesg_reg[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F8F8F80"
    )
        port map (
      I0 => m_axi_wready,
      I1 => \^asyncclear_mvalid_inst_0\,
      I2 => state(0),
      I3 => state(1),
      I4 => \common.laguna_s_handshake_q\,
      O => load_mesg
    );
\mesg_reg[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(31),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(31),
      O => \mesg_reg[31]_i_2_n_0\
    );
\mesg_reg[32]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(32),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(32),
      O => \mesg_reg[32]_i_1_n_0\
    );
\mesg_reg[33]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(33),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(33),
      O => \mesg_reg[33]_i_1_n_0\
    );
\mesg_reg[34]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(34),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(34),
      O => \mesg_reg[34]_i_1_n_0\
    );
\mesg_reg[35]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(35),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(35),
      O => \mesg_reg[35]_i_1_n_0\
    );
\mesg_reg[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(3),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(3),
      O => \mesg_reg[3]_i_1__0_n_0\
    );
\mesg_reg[4]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(4),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(4),
      O => \mesg_reg[4]_i_1__0_n_0\
    );
\mesg_reg[5]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(5),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(5),
      O => \mesg_reg[5]_i_1__0_n_0\
    );
\mesg_reg[6]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(6),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(6),
      O => \mesg_reg[6]_i_1__0_n_0\
    );
\mesg_reg[7]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(7),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(7),
      O => \mesg_reg[7]_i_1__0_n_0\
    );
\mesg_reg[8]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(8),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(8),
      O => \mesg_reg[8]_i_1__0_n_0\
    );
\mesg_reg[9]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(9),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(9),
      O => \mesg_reg[9]_i_1__0_n_0\
    );
\mesg_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[0]_i_1__1_n_0\,
      Q => \mesg_reg_reg[35]_0\(0),
      R => '0'
    );
\mesg_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[10]_i_1__0_n_0\,
      Q => \mesg_reg_reg[35]_0\(10),
      R => '0'
    );
\mesg_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[11]_i_1__0_n_0\,
      Q => \mesg_reg_reg[35]_0\(11),
      R => '0'
    );
\mesg_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[12]_i_1__0_n_0\,
      Q => \mesg_reg_reg[35]_0\(12),
      R => '0'
    );
\mesg_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[13]_i_1__0_n_0\,
      Q => \mesg_reg_reg[35]_0\(13),
      R => '0'
    );
\mesg_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[14]_i_1__0_n_0\,
      Q => \mesg_reg_reg[35]_0\(14),
      R => '0'
    );
\mesg_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[15]_i_1__0_n_0\,
      Q => \mesg_reg_reg[35]_0\(15),
      R => '0'
    );
\mesg_reg_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[16]_i_1__0_n_0\,
      Q => \mesg_reg_reg[35]_0\(16),
      R => '0'
    );
\mesg_reg_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[17]_i_1__0_n_0\,
      Q => \mesg_reg_reg[35]_0\(17),
      R => '0'
    );
\mesg_reg_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[18]_i_1__0_n_0\,
      Q => \mesg_reg_reg[35]_0\(18),
      R => '0'
    );
\mesg_reg_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[19]_i_1__0_n_0\,
      Q => \mesg_reg_reg[35]_0\(19),
      R => '0'
    );
\mesg_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[1]_i_1__1_n_0\,
      Q => \mesg_reg_reg[35]_0\(1),
      R => '0'
    );
\mesg_reg_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[20]_i_1__0_n_0\,
      Q => \mesg_reg_reg[35]_0\(20),
      R => '0'
    );
\mesg_reg_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[21]_i_1__0_n_0\,
      Q => \mesg_reg_reg[35]_0\(21),
      R => '0'
    );
\mesg_reg_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[22]_i_1__0_n_0\,
      Q => \mesg_reg_reg[35]_0\(22),
      R => '0'
    );
\mesg_reg_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[23]_i_1__0_n_0\,
      Q => \mesg_reg_reg[35]_0\(23),
      R => '0'
    );
\mesg_reg_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[24]_i_1__1_n_0\,
      Q => \mesg_reg_reg[35]_0\(24),
      R => '0'
    );
\mesg_reg_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[25]_i_1__0_n_0\,
      Q => \mesg_reg_reg[35]_0\(25),
      R => '0'
    );
\mesg_reg_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[26]_i_1__0_n_0\,
      Q => \mesg_reg_reg[35]_0\(26),
      R => '0'
    );
\mesg_reg_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[27]_i_1__0_n_0\,
      Q => \mesg_reg_reg[35]_0\(27),
      R => '0'
    );
\mesg_reg_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[28]_i_1_n_0\,
      Q => \mesg_reg_reg[35]_0\(28),
      R => '0'
    );
\mesg_reg_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[29]_i_1_n_0\,
      Q => \mesg_reg_reg[35]_0\(29),
      R => '0'
    );
\mesg_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[2]_i_1__0_n_0\,
      Q => \mesg_reg_reg[35]_0\(2),
      R => '0'
    );
\mesg_reg_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[30]_i_1_n_0\,
      Q => \mesg_reg_reg[35]_0\(30),
      R => '0'
    );
\mesg_reg_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[31]_i_2_n_0\,
      Q => \mesg_reg_reg[35]_0\(31),
      R => '0'
    );
\mesg_reg_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[32]_i_1_n_0\,
      Q => \mesg_reg_reg[35]_0\(32),
      R => '0'
    );
\mesg_reg_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[33]_i_1_n_0\,
      Q => \mesg_reg_reg[35]_0\(33),
      R => '0'
    );
\mesg_reg_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[34]_i_1_n_0\,
      Q => \mesg_reg_reg[35]_0\(34),
      R => '0'
    );
\mesg_reg_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[35]_i_1_n_0\,
      Q => \mesg_reg_reg[35]_0\(35),
      R => '0'
    );
\mesg_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[3]_i_1__0_n_0\,
      Q => \mesg_reg_reg[35]_0\(3),
      R => '0'
    );
\mesg_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[4]_i_1__0_n_0\,
      Q => \mesg_reg_reg[35]_0\(4),
      R => '0'
    );
\mesg_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[5]_i_1__0_n_0\,
      Q => \mesg_reg_reg[35]_0\(5),
      R => '0'
    );
\mesg_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[6]_i_1__0_n_0\,
      Q => \mesg_reg_reg[35]_0\(6),
      R => '0'
    );
\mesg_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[7]_i_1__0_n_0\,
      Q => \mesg_reg_reg[35]_0\(7),
      R => '0'
    );
\mesg_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[8]_i_1__0_n_0\,
      Q => \mesg_reg_reg[35]_0\(8),
      R => '0'
    );
\mesg_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[9]_i_1__0_n_0\,
      Q => \mesg_reg_reg[35]_0\(9),
      R => '0'
    );
\srl[0].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__30\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(0),
      q => srl_reg(0)
    );
\srl[10].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__40\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(10),
      q => srl_reg(10)
    );
\srl[11].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__41\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(11),
      q => srl_reg(11)
    );
\srl[12].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__42\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(12),
      q => srl_reg(12)
    );
\srl[13].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__43\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(13),
      q => srl_reg(13)
    );
\srl[14].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__44\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(14),
      q => srl_reg(14)
    );
\srl[15].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__45\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(15),
      q => srl_reg(15)
    );
\srl[16].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__46\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(16),
      q => srl_reg(16)
    );
\srl[17].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__47\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(17),
      q => srl_reg(17)
    );
\srl[18].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__48\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(18),
      q => srl_reg(18)
    );
\srl[19].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__49\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(19),
      q => srl_reg(19)
    );
\srl[1].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__31\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(1),
      q => srl_reg(1)
    );
\srl[20].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__50\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(20),
      q => srl_reg(20)
    );
\srl[21].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__51\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(21),
      q => srl_reg(21)
    );
\srl[22].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__52\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(22),
      q => srl_reg(22)
    );
\srl[23].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__53\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(23),
      q => srl_reg(23)
    );
\srl[24].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__54\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(24),
      q => srl_reg(24)
    );
\srl[25].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__55\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(25),
      q => srl_reg(25)
    );
\srl[26].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__56\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(26),
      q => srl_reg(26)
    );
\srl[27].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__57\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(27),
      q => srl_reg(27)
    );
\srl[28].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__58\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(28),
      q => srl_reg(28)
    );
\srl[29].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__59\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(29),
      q => srl_reg(29)
    );
\srl[2].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__32\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(2),
      q => srl_reg(2)
    );
\srl[30].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__60\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(30),
      q => srl_reg(30)
    );
\srl[31].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__61\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(31),
      q => srl_reg(31)
    );
\srl[32].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__62\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(32),
      q => srl_reg(32)
    );
\srl[33].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__63\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(33),
      q => srl_reg(33)
    );
\srl[34].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__64\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(34),
      q => srl_reg(34)
    );
\srl[35].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__65\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(35),
      q => srl_reg(35)
    );
\srl[3].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__33\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(3),
      q => srl_reg(3)
    );
\srl[4].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__34\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(4),
      q => srl_reg(4)
    );
\srl[5].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__35\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(5),
      q => srl_reg(5)
    );
\srl[6].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__36\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(6),
      q => srl_reg(6)
    );
\srl[7].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__37\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(7),
      q => srl_reg(7)
    );
\srl[8].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__38\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(8),
      q => srl_reg(8)
    );
\srl[9].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__39\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(9),
      q => srl_reg(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axic_reg_srl_fifo__parameterized1\ is
  port (
    asyncclear_mvalid_inst_0 : out STD_LOGIC;
    s_axi_bready_0 : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    aclk : in STD_LOGIC;
    \common.laguna_s_handshake_q\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \common.ACLEAR\ : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    \out\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axic_reg_srl_fifo__parameterized1\ : entity is "axi_register_slice_v2_1_26_axic_reg_srl_fifo";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axic_reg_srl_fifo__parameterized1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axic_reg_srl_fifo__parameterized1\ is
  signal \^asyncclear_mvalid_inst_0\ : STD_LOGIC;
  signal \asyncclear_state0_inst_i_1__1_n_0\ : STD_LOGIC;
  signal \asyncclear_state1_inst_i_1__1_n_0\ : STD_LOGIC;
  signal \asyncclear_state1_inst_i_3__1_n_0\ : STD_LOGIC;
  signal \common.pop__0\ : STD_LOGIC;
  signal fifoaddr12_out : STD_LOGIC;
  signal \fifoaddr[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \fifoaddr[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \fifoaddr[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \fifoaddr[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \fifoaddr[3]_i_2__1_n_0\ : STD_LOGIC;
  signal fifoaddr_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal load_mesg : STD_LOGIC;
  signal m_valid_d : STD_LOGIC;
  signal \mesg_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \mesg_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal srl_reg : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal state : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of asyncclear_mvalid_inst : label is "PRIMITIVE";
  attribute BOX_TYPE of asyncclear_state0_inst : label is "PRIMITIVE";
  attribute BOX_TYPE of asyncclear_state1_inst : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \asyncclear_state1_inst_i_2__1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \asyncclear_state1_inst_i_3__1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \fifoaddr[0]_i_1__1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \fifoaddr[2]_i_1__1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \fifoaddr[3]_i_2__1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \fifoaddr[3]_i_3\ : label is "soft_lutpair7";
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \srl[0].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \srl[0].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of \srl[0].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \srl[0].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[1].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[1].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[1].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[1].srl_nx1\ : label is 16;
begin
  asyncclear_mvalid_inst_0 <= \^asyncclear_mvalid_inst_0\;
asyncclear_mvalid_inst: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      CLR => \common.ACLEAR\,
      D => m_valid_d,
      Q => \^asyncclear_mvalid_inst_0\
    );
\asyncclear_mvalid_inst_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDFDF00C000F0"
    )
        port map (
      I0 => s_axi_bready,
      I1 => state(1),
      I2 => \^asyncclear_mvalid_inst_0\,
      I3 => \out\,
      I4 => \common.laguna_s_handshake_q\,
      I5 => state(0),
      O => m_valid_d
    );
asyncclear_state0_inst: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      CLR => \common.ACLEAR\,
      D => \asyncclear_state0_inst_i_1__1_n_0\,
      Q => state(0)
    );
\asyncclear_state0_inst_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000E4F4F4F4"
    )
        port map (
      I0 => state(1),
      I1 => \common.laguna_s_handshake_q\,
      I2 => state(0),
      I3 => \^asyncclear_mvalid_inst_0\,
      I4 => s_axi_bready,
      I5 => \out\,
      O => \asyncclear_state0_inst_i_1__1_n_0\
    );
asyncclear_state1_inst: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      CLR => \common.ACLEAR\,
      D => \asyncclear_state1_inst_i_1__1_n_0\,
      Q => state(1)
    );
\asyncclear_state1_inst_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CC40C440"
    )
        port map (
      I0 => \common.pop__0\,
      I1 => state(0),
      I2 => \common.laguna_s_handshake_q\,
      I3 => state(1),
      I4 => \asyncclear_state1_inst_i_3__1_n_0\,
      I5 => \out\,
      O => \asyncclear_state1_inst_i_1__1_n_0\
    );
\asyncclear_state1_inst_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_bready,
      I1 => \^asyncclear_mvalid_inst_0\,
      O => \common.pop__0\
    );
\asyncclear_state1_inst_i_3__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => fifoaddr_reg(2),
      I1 => fifoaddr_reg(3),
      I2 => fifoaddr_reg(0),
      I3 => fifoaddr_reg(1),
      O => \asyncclear_state1_inst_i_3__1_n_0\
    );
\common.laguna_s_ready_i_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => s_axi_bready,
      I1 => \^asyncclear_mvalid_inst_0\,
      O => s_axi_bready_0
    );
\fifoaddr[0]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => fifoaddr_reg(0),
      O => \fifoaddr[0]_i_1__1_n_0\
    );
\fifoaddr[1]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A659"
    )
        port map (
      I0 => fifoaddr_reg(0),
      I1 => \common.laguna_s_handshake_q\,
      I2 => \common.pop__0\,
      I3 => fifoaddr_reg(1),
      O => \fifoaddr[1]_i_1__1_n_0\
    );
\fifoaddr[2]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"78E1"
    )
        port map (
      I0 => fifoaddr_reg(0),
      I1 => fifoaddr12_out,
      I2 => fifoaddr_reg(2),
      I3 => fifoaddr_reg(1),
      O => \fifoaddr[2]_i_1__1_n_0\
    );
\fifoaddr[3]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0AAA8000"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => \^asyncclear_mvalid_inst_0\,
      I3 => s_axi_bready,
      I4 => \common.laguna_s_handshake_q\,
      O => \fifoaddr[3]_i_1__1_n_0\
    );
\fifoaddr[3]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F80FE01"
    )
        port map (
      I0 => fifoaddr12_out,
      I1 => fifoaddr_reg(0),
      I2 => fifoaddr_reg(1),
      I3 => fifoaddr_reg(3),
      I4 => fifoaddr_reg(2),
      O => \fifoaddr[3]_i_2__1_n_0\
    );
\fifoaddr[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0888"
    )
        port map (
      I0 => \common.laguna_s_handshake_q\,
      I1 => state(0),
      I2 => \^asyncclear_mvalid_inst_0\,
      I3 => s_axi_bready,
      O => fifoaddr12_out
    );
\fifoaddr_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => \fifoaddr[3]_i_1__1_n_0\,
      D => \fifoaddr[0]_i_1__1_n_0\,
      Q => fifoaddr_reg(0),
      S => \out\
    );
\fifoaddr_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => \fifoaddr[3]_i_1__1_n_0\,
      D => \fifoaddr[1]_i_1__1_n_0\,
      Q => fifoaddr_reg(1),
      S => \out\
    );
\fifoaddr_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => \fifoaddr[3]_i_1__1_n_0\,
      D => \fifoaddr[2]_i_1__1_n_0\,
      Q => fifoaddr_reg(2),
      S => \out\
    );
\fifoaddr_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => \fifoaddr[3]_i_1__1_n_0\,
      D => \fifoaddr[3]_i_2__1_n_0\,
      Q => fifoaddr_reg(3),
      S => \out\
    );
\mesg_reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(0),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(0),
      O => \mesg_reg[0]_i_1_n_0\
    );
\mesg_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F8F8F80"
    )
        port map (
      I0 => s_axi_bready,
      I1 => \^asyncclear_mvalid_inst_0\,
      I2 => state(0),
      I3 => state(1),
      I4 => \common.laguna_s_handshake_q\,
      O => load_mesg
    );
\mesg_reg[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(1),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(1),
      O => \mesg_reg[1]_i_2_n_0\
    );
\mesg_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[0]_i_1_n_0\,
      Q => s_axi_bresp(0),
      R => '0'
    );
\mesg_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[1]_i_2_n_0\,
      Q => s_axi_bresp(1),
      R => '0'
    );
\srl[0].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__66\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(0),
      q => srl_reg(0)
    );
\srl[1].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__67\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(1),
      q => srl_reg(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axic_reg_srl_fifo__parameterized2\ is
  port (
    asyncclear_mvalid_inst_0 : out STD_LOGIC;
    aresetn_0 : out STD_LOGIC;
    s_axi_rready_0 : out STD_LOGIC;
    \mesg_reg_reg[33]_0\ : out STD_LOGIC_VECTOR ( 33 downto 0 );
    aclk : in STD_LOGIC;
    \common.laguna_s_handshake_q\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 33 downto 0 );
    s_axi_rready : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axic_reg_srl_fifo__parameterized2\ : entity is "axi_register_slice_v2_1_26_axic_reg_srl_fifo";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axic_reg_srl_fifo__parameterized2\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axic_reg_srl_fifo__parameterized2\ is
  signal \^aresetn_0\ : STD_LOGIC;
  signal \^asyncclear_mvalid_inst_0\ : STD_LOGIC;
  signal \asyncclear_state0_inst_i_1__3_n_0\ : STD_LOGIC;
  signal \asyncclear_state1_inst_i_1__3_n_0\ : STD_LOGIC;
  signal \asyncclear_state1_inst_i_3__3_n_0\ : STD_LOGIC;
  signal \common.pop__0\ : STD_LOGIC;
  signal fifoaddr12_out : STD_LOGIC;
  signal \fifoaddr[0]_i_1__3_n_0\ : STD_LOGIC;
  signal \fifoaddr[1]_i_1__3_n_0\ : STD_LOGIC;
  signal \fifoaddr[2]_i_1__3_n_0\ : STD_LOGIC;
  signal \fifoaddr[3]_i_1__3_n_0\ : STD_LOGIC;
  signal \fifoaddr[3]_i_2__3_n_0\ : STD_LOGIC;
  signal fifoaddr_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal load_mesg : STD_LOGIC;
  signal m_valid_d : STD_LOGIC;
  signal \mesg_reg[0]_i_1__3_n_0\ : STD_LOGIC;
  signal \mesg_reg[10]_i_1__2_n_0\ : STD_LOGIC;
  signal \mesg_reg[11]_i_1__2_n_0\ : STD_LOGIC;
  signal \mesg_reg[12]_i_1__2_n_0\ : STD_LOGIC;
  signal \mesg_reg[13]_i_1__2_n_0\ : STD_LOGIC;
  signal \mesg_reg[14]_i_1__2_n_0\ : STD_LOGIC;
  signal \mesg_reg[15]_i_1__2_n_0\ : STD_LOGIC;
  signal \mesg_reg[16]_i_1__2_n_0\ : STD_LOGIC;
  signal \mesg_reg[17]_i_1__2_n_0\ : STD_LOGIC;
  signal \mesg_reg[18]_i_1__2_n_0\ : STD_LOGIC;
  signal \mesg_reg[19]_i_1__2_n_0\ : STD_LOGIC;
  signal \mesg_reg[1]_i_1__3_n_0\ : STD_LOGIC;
  signal \mesg_reg[20]_i_1__2_n_0\ : STD_LOGIC;
  signal \mesg_reg[21]_i_1__2_n_0\ : STD_LOGIC;
  signal \mesg_reg[22]_i_1__2_n_0\ : STD_LOGIC;
  signal \mesg_reg[23]_i_1__2_n_0\ : STD_LOGIC;
  signal \mesg_reg[24]_i_1__2_n_0\ : STD_LOGIC;
  signal \mesg_reg[25]_i_1__2_n_0\ : STD_LOGIC;
  signal \mesg_reg[26]_i_1__2_n_0\ : STD_LOGIC;
  signal \mesg_reg[27]_i_1__2_n_0\ : STD_LOGIC;
  signal \mesg_reg[28]_i_1__0_n_0\ : STD_LOGIC;
  signal \mesg_reg[29]_i_1__0_n_0\ : STD_LOGIC;
  signal \mesg_reg[2]_i_1__2_n_0\ : STD_LOGIC;
  signal \mesg_reg[30]_i_1__0_n_0\ : STD_LOGIC;
  signal \mesg_reg[31]_i_2__0_n_0\ : STD_LOGIC;
  signal \mesg_reg[32]_i_1__0_n_0\ : STD_LOGIC;
  signal \mesg_reg[33]_i_1__0_n_0\ : STD_LOGIC;
  signal \mesg_reg[3]_i_1__2_n_0\ : STD_LOGIC;
  signal \mesg_reg[4]_i_1__2_n_0\ : STD_LOGIC;
  signal \mesg_reg[5]_i_1__2_n_0\ : STD_LOGIC;
  signal \mesg_reg[6]_i_1__2_n_0\ : STD_LOGIC;
  signal \mesg_reg[7]_i_1__2_n_0\ : STD_LOGIC;
  signal \mesg_reg[8]_i_1__2_n_0\ : STD_LOGIC;
  signal \mesg_reg[9]_i_1__2_n_0\ : STD_LOGIC;
  signal srl_reg : STD_LOGIC_VECTOR ( 33 downto 0 );
  signal state : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of asyncclear_mvalid_inst : label is "PRIMITIVE";
  attribute BOX_TYPE of asyncclear_state0_inst : label is "PRIMITIVE";
  attribute BOX_TYPE of asyncclear_state1_inst : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \asyncclear_state1_inst_i_2__3\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \asyncclear_state1_inst_i_3__3\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \fifoaddr[0]_i_1__3\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \fifoaddr[2]_i_1__3\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \fifoaddr[3]_i_2__3\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \fifoaddr[3]_i_3__0\ : label is "soft_lutpair10";
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \srl[0].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \srl[0].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of \srl[0].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH : integer;
  attribute P_SRLDEPTH of \srl[0].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[10].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[10].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[10].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[10].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[11].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[11].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[11].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[11].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[12].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[12].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[12].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[12].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[13].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[13].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[13].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[13].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[14].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[14].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[14].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[14].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[15].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[15].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[15].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[15].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[16].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[16].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[16].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[16].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[17].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[17].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[17].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[17].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[18].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[18].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[18].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[18].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[19].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[19].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[19].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[19].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[1].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[1].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[1].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[1].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[20].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[20].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[20].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[20].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[21].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[21].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[21].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[21].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[22].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[22].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[22].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[22].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[23].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[23].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[23].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[23].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[24].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[24].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[24].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[24].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[25].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[25].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[25].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[25].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[26].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[26].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[26].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[26].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[27].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[27].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[27].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[27].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[28].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[28].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[28].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[28].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[29].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[29].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[29].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[29].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[2].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[2].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[2].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[2].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[30].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[30].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[30].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[30].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[31].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[31].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[31].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[31].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[32].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[32].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[32].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[32].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[33].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[33].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[33].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[33].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[3].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[3].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[3].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[3].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[4].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[4].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[4].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[4].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[5].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[5].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[5].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[5].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[6].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[6].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[6].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[6].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[7].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[7].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[7].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[7].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[8].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[8].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[8].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[8].srl_nx1\ : label is 16;
  attribute C_A_WIDTH of \srl[9].srl_nx1\ : label is 4;
  attribute DowngradeIPIdentifiedWarnings of \srl[9].srl_nx1\ : label is "yes";
  attribute KEEP_HIERARCHY of \srl[9].srl_nx1\ : label is "yes";
  attribute P_SRLDEPTH of \srl[9].srl_nx1\ : label is 16;
begin
  aresetn_0 <= \^aresetn_0\;
  asyncclear_mvalid_inst_0 <= \^asyncclear_mvalid_inst_0\;
asyncclear_mvalid_inst: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      CLR => \^aresetn_0\,
      D => m_valid_d,
      Q => \^asyncclear_mvalid_inst_0\
    );
\asyncclear_mvalid_inst_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDFDF00C000F0"
    )
        port map (
      I0 => s_axi_rready,
      I1 => state(1),
      I2 => \^asyncclear_mvalid_inst_0\,
      I3 => \out\,
      I4 => \common.laguna_s_handshake_q\,
      I5 => state(0),
      O => m_valid_d
    );
asyncclear_mvalid_inst_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => \^aresetn_0\
    );
asyncclear_state0_inst: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      CLR => \^aresetn_0\,
      D => \asyncclear_state0_inst_i_1__3_n_0\,
      Q => state(0)
    );
\asyncclear_state0_inst_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000E4F4F4F4"
    )
        port map (
      I0 => state(1),
      I1 => \common.laguna_s_handshake_q\,
      I2 => state(0),
      I3 => \^asyncclear_mvalid_inst_0\,
      I4 => s_axi_rready,
      I5 => \out\,
      O => \asyncclear_state0_inst_i_1__3_n_0\
    );
asyncclear_state1_inst: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      CLR => \^aresetn_0\,
      D => \asyncclear_state1_inst_i_1__3_n_0\,
      Q => state(1)
    );
\asyncclear_state1_inst_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CC40C440"
    )
        port map (
      I0 => \common.pop__0\,
      I1 => state(0),
      I2 => \common.laguna_s_handshake_q\,
      I3 => state(1),
      I4 => \asyncclear_state1_inst_i_3__3_n_0\,
      I5 => \out\,
      O => \asyncclear_state1_inst_i_1__3_n_0\
    );
\asyncclear_state1_inst_i_2__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_rready,
      I1 => \^asyncclear_mvalid_inst_0\,
      O => \common.pop__0\
    );
\asyncclear_state1_inst_i_3__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => fifoaddr_reg(2),
      I1 => fifoaddr_reg(3),
      I2 => fifoaddr_reg(0),
      I3 => fifoaddr_reg(1),
      O => \asyncclear_state1_inst_i_3__3_n_0\
    );
\common.laguna_s_ready_i_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => s_axi_rready,
      I1 => \^asyncclear_mvalid_inst_0\,
      O => s_axi_rready_0
    );
\fifoaddr[0]_i_1__3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => fifoaddr_reg(0),
      O => \fifoaddr[0]_i_1__3_n_0\
    );
\fifoaddr[1]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A659"
    )
        port map (
      I0 => fifoaddr_reg(0),
      I1 => \common.laguna_s_handshake_q\,
      I2 => \common.pop__0\,
      I3 => fifoaddr_reg(1),
      O => \fifoaddr[1]_i_1__3_n_0\
    );
\fifoaddr[2]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"78E1"
    )
        port map (
      I0 => fifoaddr_reg(0),
      I1 => fifoaddr12_out,
      I2 => fifoaddr_reg(2),
      I3 => fifoaddr_reg(1),
      O => \fifoaddr[2]_i_1__3_n_0\
    );
\fifoaddr[3]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0AAA8000"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => \^asyncclear_mvalid_inst_0\,
      I3 => s_axi_rready,
      I4 => \common.laguna_s_handshake_q\,
      O => \fifoaddr[3]_i_1__3_n_0\
    );
\fifoaddr[3]_i_2__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F80FE01"
    )
        port map (
      I0 => fifoaddr12_out,
      I1 => fifoaddr_reg(0),
      I2 => fifoaddr_reg(1),
      I3 => fifoaddr_reg(3),
      I4 => fifoaddr_reg(2),
      O => \fifoaddr[3]_i_2__3_n_0\
    );
\fifoaddr[3]_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0888"
    )
        port map (
      I0 => \common.laguna_s_handshake_q\,
      I1 => state(0),
      I2 => \^asyncclear_mvalid_inst_0\,
      I3 => s_axi_rready,
      O => fifoaddr12_out
    );
\fifoaddr_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => \fifoaddr[3]_i_1__3_n_0\,
      D => \fifoaddr[0]_i_1__3_n_0\,
      Q => fifoaddr_reg(0),
      S => \out\
    );
\fifoaddr_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => \fifoaddr[3]_i_1__3_n_0\,
      D => \fifoaddr[1]_i_1__3_n_0\,
      Q => fifoaddr_reg(1),
      S => \out\
    );
\fifoaddr_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => \fifoaddr[3]_i_1__3_n_0\,
      D => \fifoaddr[2]_i_1__3_n_0\,
      Q => fifoaddr_reg(2),
      S => \out\
    );
\fifoaddr_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => \fifoaddr[3]_i_1__3_n_0\,
      D => \fifoaddr[3]_i_2__3_n_0\,
      Q => fifoaddr_reg(3),
      S => \out\
    );
\mesg_reg[0]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(0),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(0),
      O => \mesg_reg[0]_i_1__3_n_0\
    );
\mesg_reg[10]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(10),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(10),
      O => \mesg_reg[10]_i_1__2_n_0\
    );
\mesg_reg[11]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(11),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(11),
      O => \mesg_reg[11]_i_1__2_n_0\
    );
\mesg_reg[12]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(12),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(12),
      O => \mesg_reg[12]_i_1__2_n_0\
    );
\mesg_reg[13]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(13),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(13),
      O => \mesg_reg[13]_i_1__2_n_0\
    );
\mesg_reg[14]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(14),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(14),
      O => \mesg_reg[14]_i_1__2_n_0\
    );
\mesg_reg[15]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(15),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(15),
      O => \mesg_reg[15]_i_1__2_n_0\
    );
\mesg_reg[16]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(16),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(16),
      O => \mesg_reg[16]_i_1__2_n_0\
    );
\mesg_reg[17]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(17),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(17),
      O => \mesg_reg[17]_i_1__2_n_0\
    );
\mesg_reg[18]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(18),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(18),
      O => \mesg_reg[18]_i_1__2_n_0\
    );
\mesg_reg[19]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(19),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(19),
      O => \mesg_reg[19]_i_1__2_n_0\
    );
\mesg_reg[1]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(1),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(1),
      O => \mesg_reg[1]_i_1__3_n_0\
    );
\mesg_reg[20]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(20),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(20),
      O => \mesg_reg[20]_i_1__2_n_0\
    );
\mesg_reg[21]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(21),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(21),
      O => \mesg_reg[21]_i_1__2_n_0\
    );
\mesg_reg[22]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(22),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(22),
      O => \mesg_reg[22]_i_1__2_n_0\
    );
\mesg_reg[23]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(23),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(23),
      O => \mesg_reg[23]_i_1__2_n_0\
    );
\mesg_reg[24]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(24),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(24),
      O => \mesg_reg[24]_i_1__2_n_0\
    );
\mesg_reg[25]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(25),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(25),
      O => \mesg_reg[25]_i_1__2_n_0\
    );
\mesg_reg[26]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(26),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(26),
      O => \mesg_reg[26]_i_1__2_n_0\
    );
\mesg_reg[27]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(27),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(27),
      O => \mesg_reg[27]_i_1__2_n_0\
    );
\mesg_reg[28]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(28),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(28),
      O => \mesg_reg[28]_i_1__0_n_0\
    );
\mesg_reg[29]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(29),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(29),
      O => \mesg_reg[29]_i_1__0_n_0\
    );
\mesg_reg[2]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(2),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(2),
      O => \mesg_reg[2]_i_1__2_n_0\
    );
\mesg_reg[30]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(30),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(30),
      O => \mesg_reg[30]_i_1__0_n_0\
    );
\mesg_reg[31]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F8F8F80"
    )
        port map (
      I0 => s_axi_rready,
      I1 => \^asyncclear_mvalid_inst_0\,
      I2 => state(0),
      I3 => state(1),
      I4 => \common.laguna_s_handshake_q\,
      O => load_mesg
    );
\mesg_reg[31]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(31),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(31),
      O => \mesg_reg[31]_i_2__0_n_0\
    );
\mesg_reg[32]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(32),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(32),
      O => \mesg_reg[32]_i_1__0_n_0\
    );
\mesg_reg[33]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(33),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(33),
      O => \mesg_reg[33]_i_1__0_n_0\
    );
\mesg_reg[3]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(3),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(3),
      O => \mesg_reg[3]_i_1__2_n_0\
    );
\mesg_reg[4]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(4),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(4),
      O => \mesg_reg[4]_i_1__2_n_0\
    );
\mesg_reg[5]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(5),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(5),
      O => \mesg_reg[5]_i_1__2_n_0\
    );
\mesg_reg[6]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(6),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(6),
      O => \mesg_reg[6]_i_1__2_n_0\
    );
\mesg_reg[7]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(7),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(7),
      O => \mesg_reg[7]_i_1__2_n_0\
    );
\mesg_reg[8]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(8),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(8),
      O => \mesg_reg[8]_i_1__2_n_0\
    );
\mesg_reg[9]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => srl_reg(9),
      I1 => state(0),
      I2 => state(1),
      I3 => Q(9),
      O => \mesg_reg[9]_i_1__2_n_0\
    );
\mesg_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[0]_i_1__3_n_0\,
      Q => \mesg_reg_reg[33]_0\(0),
      R => '0'
    );
\mesg_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[10]_i_1__2_n_0\,
      Q => \mesg_reg_reg[33]_0\(10),
      R => '0'
    );
\mesg_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[11]_i_1__2_n_0\,
      Q => \mesg_reg_reg[33]_0\(11),
      R => '0'
    );
\mesg_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[12]_i_1__2_n_0\,
      Q => \mesg_reg_reg[33]_0\(12),
      R => '0'
    );
\mesg_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[13]_i_1__2_n_0\,
      Q => \mesg_reg_reg[33]_0\(13),
      R => '0'
    );
\mesg_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[14]_i_1__2_n_0\,
      Q => \mesg_reg_reg[33]_0\(14),
      R => '0'
    );
\mesg_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[15]_i_1__2_n_0\,
      Q => \mesg_reg_reg[33]_0\(15),
      R => '0'
    );
\mesg_reg_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[16]_i_1__2_n_0\,
      Q => \mesg_reg_reg[33]_0\(16),
      R => '0'
    );
\mesg_reg_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[17]_i_1__2_n_0\,
      Q => \mesg_reg_reg[33]_0\(17),
      R => '0'
    );
\mesg_reg_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[18]_i_1__2_n_0\,
      Q => \mesg_reg_reg[33]_0\(18),
      R => '0'
    );
\mesg_reg_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[19]_i_1__2_n_0\,
      Q => \mesg_reg_reg[33]_0\(19),
      R => '0'
    );
\mesg_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[1]_i_1__3_n_0\,
      Q => \mesg_reg_reg[33]_0\(1),
      R => '0'
    );
\mesg_reg_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[20]_i_1__2_n_0\,
      Q => \mesg_reg_reg[33]_0\(20),
      R => '0'
    );
\mesg_reg_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[21]_i_1__2_n_0\,
      Q => \mesg_reg_reg[33]_0\(21),
      R => '0'
    );
\mesg_reg_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[22]_i_1__2_n_0\,
      Q => \mesg_reg_reg[33]_0\(22),
      R => '0'
    );
\mesg_reg_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[23]_i_1__2_n_0\,
      Q => \mesg_reg_reg[33]_0\(23),
      R => '0'
    );
\mesg_reg_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[24]_i_1__2_n_0\,
      Q => \mesg_reg_reg[33]_0\(24),
      R => '0'
    );
\mesg_reg_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[25]_i_1__2_n_0\,
      Q => \mesg_reg_reg[33]_0\(25),
      R => '0'
    );
\mesg_reg_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[26]_i_1__2_n_0\,
      Q => \mesg_reg_reg[33]_0\(26),
      R => '0'
    );
\mesg_reg_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[27]_i_1__2_n_0\,
      Q => \mesg_reg_reg[33]_0\(27),
      R => '0'
    );
\mesg_reg_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[28]_i_1__0_n_0\,
      Q => \mesg_reg_reg[33]_0\(28),
      R => '0'
    );
\mesg_reg_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[29]_i_1__0_n_0\,
      Q => \mesg_reg_reg[33]_0\(29),
      R => '0'
    );
\mesg_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[2]_i_1__2_n_0\,
      Q => \mesg_reg_reg[33]_0\(2),
      R => '0'
    );
\mesg_reg_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[30]_i_1__0_n_0\,
      Q => \mesg_reg_reg[33]_0\(30),
      R => '0'
    );
\mesg_reg_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[31]_i_2__0_n_0\,
      Q => \mesg_reg_reg[33]_0\(31),
      R => '0'
    );
\mesg_reg_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[32]_i_1__0_n_0\,
      Q => \mesg_reg_reg[33]_0\(32),
      R => '0'
    );
\mesg_reg_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[33]_i_1__0_n_0\,
      Q => \mesg_reg_reg[33]_0\(33),
      R => '0'
    );
\mesg_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[3]_i_1__2_n_0\,
      Q => \mesg_reg_reg[33]_0\(3),
      R => '0'
    );
\mesg_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[4]_i_1__2_n_0\,
      Q => \mesg_reg_reg[33]_0\(4),
      R => '0'
    );
\mesg_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[5]_i_1__2_n_0\,
      Q => \mesg_reg_reg[33]_0\(5),
      R => '0'
    );
\mesg_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[6]_i_1__2_n_0\,
      Q => \mesg_reg_reg[33]_0\(6),
      R => '0'
    );
\mesg_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[7]_i_1__2_n_0\,
      Q => \mesg_reg_reg[33]_0\(7),
      R => '0'
    );
\mesg_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[8]_i_1__2_n_0\,
      Q => \mesg_reg_reg[33]_0\(8),
      R => '0'
    );
\mesg_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_mesg,
      D => \mesg_reg[9]_i_1__2_n_0\,
      Q => \mesg_reg_reg[33]_0\(9),
      R => '0'
    );
\srl[0].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__68\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(0),
      q => srl_reg(0)
    );
\srl[10].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__78\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(10),
      q => srl_reg(10)
    );
\srl[11].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__79\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(11),
      q => srl_reg(11)
    );
\srl[12].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__80\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(12),
      q => srl_reg(12)
    );
\srl[13].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__81\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(13),
      q => srl_reg(13)
    );
\srl[14].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__82\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(14),
      q => srl_reg(14)
    );
\srl[15].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__83\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(15),
      q => srl_reg(15)
    );
\srl[16].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__84\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(16),
      q => srl_reg(16)
    );
\srl[17].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__85\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(17),
      q => srl_reg(17)
    );
\srl[18].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__86\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(18),
      q => srl_reg(18)
    );
\srl[19].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__87\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(19),
      q => srl_reg(19)
    );
\srl[1].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__69\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(1),
      q => srl_reg(1)
    );
\srl[20].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__88\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(20),
      q => srl_reg(20)
    );
\srl[21].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__89\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(21),
      q => srl_reg(21)
    );
\srl[22].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__90\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(22),
      q => srl_reg(22)
    );
\srl[23].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__91\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(23),
      q => srl_reg(23)
    );
\srl[24].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__92\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(24),
      q => srl_reg(24)
    );
\srl[25].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__93\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(25),
      q => srl_reg(25)
    );
\srl[26].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__94\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(26),
      q => srl_reg(26)
    );
\srl[27].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__95\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(27),
      q => srl_reg(27)
    );
\srl[28].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__96\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(28),
      q => srl_reg(28)
    );
\srl[29].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__97\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(29),
      q => srl_reg(29)
    );
\srl[2].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__70\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(2),
      q => srl_reg(2)
    );
\srl[30].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__98\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(30),
      q => srl_reg(30)
    );
\srl[31].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__99\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(31),
      q => srl_reg(31)
    );
\srl[32].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__100\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(32),
      q => srl_reg(32)
    );
\srl[33].srl_nx1\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(33),
      q => srl_reg(33)
    );
\srl[3].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__71\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(3),
      q => srl_reg(3)
    );
\srl[4].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__72\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(4),
      q => srl_reg(4)
    );
\srl[5].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__73\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(5),
      q => srl_reg(5)
    );
\srl[6].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__74\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(6),
      q => srl_reg(6)
    );
\srl[7].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__75\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(7),
      q => srl_reg(7)
    );
\srl[8].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__76\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(8),
      q => srl_reg(8)
    );
\srl[9].srl_nx1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_srl_rtl__77\
     port map (
      a(3 downto 0) => fifoaddr_reg(3 downto 0),
      ce => \common.laguna_s_handshake_q\,
      clk => aclk,
      d => Q(9),
      q => srl_reg(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_dest_region_slr is
  port (
    asyncclear_mvalid_inst : out STD_LOGIC;
    \out\ : out STD_LOGIC;
    \common.laguna_s_ready_i_reg_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 27 downto 0 );
    aclk : in STD_LOGIC;
    \common.ACLEAR\ : in STD_LOGIC;
    \dual_slr.src_handshake\ : in STD_LOGIC;
    \common.laguna_s_reset_in_d_reg_0\ : in STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 27 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_dest_region_slr;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_dest_region_slr is
  signal \common.areset_d\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \common.areset_d\ : signal is "true";
  signal \common.aresetn_d\ : STD_LOGIC;
  attribute RTL_KEEP of \common.aresetn_d\ : signal is "true";
  signal \common.laguna_s_handshake_q\ : STD_LOGIC;
  signal \common.laguna_s_payload_d\ : STD_LOGIC_VECTOR ( 27 downto 0 );
  signal \common.laguna_s_ready_i\ : STD_LOGIC;
  attribute RTL_KEEP of \common.laguna_s_ready_i\ : signal is "true";
  attribute USER_SLL_REG : string;
  attribute USER_SLL_REG of \common.laguna_s_ready_i\ : signal is "true";
  signal \common.laguna_s_reset_in_d\ : STD_LOGIC;
  attribute RTL_KEEP of \common.laguna_s_reset_in_d\ : signal is "true";
  attribute USER_SLL_REG of \common.laguna_s_reset_in_d\ : signal is "true";
  signal \common.laguna_s_reset_out_i\ : STD_LOGIC;
  attribute RTL_KEEP of \common.laguna_s_reset_out_i\ : signal is "true";
  attribute USER_SLL_REG of \common.laguna_s_reset_out_i\ : signal is "true";
  signal \common.ready_d\ : STD_LOGIC;
  attribute RTL_KEEP of \common.ready_d\ : signal is "true";
  signal \common.srl_fifo_0_n_1\ : STD_LOGIC;
  attribute KEEP : string;
  attribute KEEP of \common.areset_d_reg\ : label is "yes";
  attribute KEEP of \common.aresetn_d_reg\ : label is "yes";
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \common.laguna_s_handshake_asyncclear_inst\ : label is "PRIMITIVE";
  attribute USER_SLL_REG_boolean : boolean;
  attribute USER_SLL_REG_boolean of \common.laguna_s_handshake_asyncclear_inst\ : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[0]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[0]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[10]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[10]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[11]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[11]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[12]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[12]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[13]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[13]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[14]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[14]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[15]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[15]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[16]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[16]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[17]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[17]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[18]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[18]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[19]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[19]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[1]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[1]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[20]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[20]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[21]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[21]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[22]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[22]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[23]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[23]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[24]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[24]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[25]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[25]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[26]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[26]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[27]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[27]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[2]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[2]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[3]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[3]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[4]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[4]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[5]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[5]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[6]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[6]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[7]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[7]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[8]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[8]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[9]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[9]\ : label is std.standard.true;
  attribute KEEP of \common.laguna_s_ready_i_reg\ : label is "yes";
  attribute USER_SLL_REG_boolean of \common.laguna_s_ready_i_reg\ : label is std.standard.true;
  attribute KEEP of \common.laguna_s_reset_in_d_reg\ : label is "yes";
  attribute USER_SLL_REG_boolean of \common.laguna_s_reset_in_d_reg\ : label is std.standard.true;
  attribute KEEP of \common.laguna_s_reset_out_i_reg\ : label is "yes";
  attribute USER_SLL_REG_boolean of \common.laguna_s_reset_out_i_reg\ : label is std.standard.true;
  attribute KEEP of \common.ready_d_reg[0]\ : label is "yes";
begin
  \common.laguna_s_ready_i_reg_0\ <= \common.laguna_s_ready_i\;
  \out\ <= \common.laguna_s_reset_out_i\;
\common.areset_d_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.laguna_s_reset_in_d\,
      Q => \common.areset_d\,
      R => '0'
    );
\common.aresetn_d_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => '1',
      Q => \common.aresetn_d\,
      R => '0'
    );
\common.laguna_s_handshake_asyncclear_inst\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      CLR => \common.ACLEAR\,
      D => \dual_slr.src_handshake\,
      Q => \common.laguna_s_handshake_q\
    );
\common.laguna_s_payload_d_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(0),
      Q => \common.laguna_s_payload_d\(0),
      R => '0'
    );
\common.laguna_s_payload_d_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(10),
      Q => \common.laguna_s_payload_d\(10),
      R => '0'
    );
\common.laguna_s_payload_d_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(11),
      Q => \common.laguna_s_payload_d\(11),
      R => '0'
    );
\common.laguna_s_payload_d_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(12),
      Q => \common.laguna_s_payload_d\(12),
      R => '0'
    );
\common.laguna_s_payload_d_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(13),
      Q => \common.laguna_s_payload_d\(13),
      R => '0'
    );
\common.laguna_s_payload_d_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(14),
      Q => \common.laguna_s_payload_d\(14),
      R => '0'
    );
\common.laguna_s_payload_d_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(15),
      Q => \common.laguna_s_payload_d\(15),
      R => '0'
    );
\common.laguna_s_payload_d_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(16),
      Q => \common.laguna_s_payload_d\(16),
      R => '0'
    );
\common.laguna_s_payload_d_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(17),
      Q => \common.laguna_s_payload_d\(17),
      R => '0'
    );
\common.laguna_s_payload_d_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(18),
      Q => \common.laguna_s_payload_d\(18),
      R => '0'
    );
\common.laguna_s_payload_d_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(19),
      Q => \common.laguna_s_payload_d\(19),
      R => '0'
    );
\common.laguna_s_payload_d_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(1),
      Q => \common.laguna_s_payload_d\(1),
      R => '0'
    );
\common.laguna_s_payload_d_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(20),
      Q => \common.laguna_s_payload_d\(20),
      R => '0'
    );
\common.laguna_s_payload_d_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(21),
      Q => \common.laguna_s_payload_d\(21),
      R => '0'
    );
\common.laguna_s_payload_d_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(22),
      Q => \common.laguna_s_payload_d\(22),
      R => '0'
    );
\common.laguna_s_payload_d_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(23),
      Q => \common.laguna_s_payload_d\(23),
      R => '0'
    );
\common.laguna_s_payload_d_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(24),
      Q => \common.laguna_s_payload_d\(24),
      R => '0'
    );
\common.laguna_s_payload_d_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(25),
      Q => \common.laguna_s_payload_d\(25),
      R => '0'
    );
\common.laguna_s_payload_d_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(26),
      Q => \common.laguna_s_payload_d\(26),
      R => '0'
    );
\common.laguna_s_payload_d_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(27),
      Q => \common.laguna_s_payload_d\(27),
      R => '0'
    );
\common.laguna_s_payload_d_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(2),
      Q => \common.laguna_s_payload_d\(2),
      R => '0'
    );
\common.laguna_s_payload_d_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(3),
      Q => \common.laguna_s_payload_d\(3),
      R => '0'
    );
\common.laguna_s_payload_d_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(4),
      Q => \common.laguna_s_payload_d\(4),
      R => '0'
    );
\common.laguna_s_payload_d_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(5),
      Q => \common.laguna_s_payload_d\(5),
      R => '0'
    );
\common.laguna_s_payload_d_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(6),
      Q => \common.laguna_s_payload_d\(6),
      R => '0'
    );
\common.laguna_s_payload_d_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(7),
      Q => \common.laguna_s_payload_d\(7),
      R => '0'
    );
\common.laguna_s_payload_d_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(8),
      Q => \common.laguna_s_payload_d\(8),
      R => '0'
    );
\common.laguna_s_payload_d_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(9),
      Q => \common.laguna_s_payload_d\(9),
      R => '0'
    );
\common.laguna_s_ready_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.srl_fifo_0_n_1\,
      Q => \common.laguna_s_ready_i\,
      R => '0'
    );
\common.laguna_s_reset_in_d_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.laguna_s_reset_in_d_reg_0\,
      Q => \common.laguna_s_reset_in_d\,
      R => '0'
    );
\common.laguna_s_reset_out_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.areset_d\,
      Q => \common.laguna_s_reset_out_i\,
      R => '0'
    );
\common.ready_d_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.srl_fifo_0_n_1\,
      Q => \common.ready_d\,
      R => '0'
    );
\common.srl_fifo_0\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axic_reg_srl_fifo
     port map (
      Q(27 downto 0) => \common.laguna_s_payload_d\(27 downto 0),
      aclk => aclk,
      asyncclear_mvalid_inst_0 => asyncclear_mvalid_inst,
      \common.ACLEAR\ => \common.ACLEAR\,
      \common.laguna_s_handshake_q\ => \common.laguna_s_handshake_q\,
      m_axi_awready => m_axi_awready,
      m_axi_awready_0 => \common.srl_fifo_0_n_1\,
      \mesg_reg_reg[27]_0\(27 downto 0) => Q(27 downto 0),
      \out\ => \common.areset_d\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_dest_region_slr_2 is
  port (
    asyncclear_mvalid_inst : out STD_LOGIC;
    \out\ : out STD_LOGIC;
    \common.laguna_s_ready_i_reg_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 27 downto 0 );
    aclk : in STD_LOGIC;
    \common.ACLEAR\ : in STD_LOGIC;
    \dual_slr.src_handshake\ : in STD_LOGIC;
    \common.laguna_s_reset_in_d_reg_0\ : in STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 27 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_dest_region_slr_2 : entity is "axi_register_slice_v2_1_26_dest_region_slr";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_dest_region_slr_2;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_dest_region_slr_2 is
  signal \common.areset_d\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \common.areset_d\ : signal is "true";
  signal \common.aresetn_d\ : STD_LOGIC;
  attribute RTL_KEEP of \common.aresetn_d\ : signal is "true";
  signal \common.laguna_s_handshake_q\ : STD_LOGIC;
  signal \common.laguna_s_payload_d\ : STD_LOGIC_VECTOR ( 27 downto 0 );
  signal \common.laguna_s_ready_i\ : STD_LOGIC;
  attribute RTL_KEEP of \common.laguna_s_ready_i\ : signal is "true";
  attribute USER_SLL_REG : string;
  attribute USER_SLL_REG of \common.laguna_s_ready_i\ : signal is "true";
  signal \common.laguna_s_reset_in_d\ : STD_LOGIC;
  attribute RTL_KEEP of \common.laguna_s_reset_in_d\ : signal is "true";
  attribute USER_SLL_REG of \common.laguna_s_reset_in_d\ : signal is "true";
  signal \common.laguna_s_reset_out_i\ : STD_LOGIC;
  attribute RTL_KEEP of \common.laguna_s_reset_out_i\ : signal is "true";
  attribute USER_SLL_REG of \common.laguna_s_reset_out_i\ : signal is "true";
  signal \common.ready_d\ : STD_LOGIC;
  attribute RTL_KEEP of \common.ready_d\ : signal is "true";
  signal \common.srl_fifo_0_n_1\ : STD_LOGIC;
  attribute KEEP : string;
  attribute KEEP of \common.areset_d_reg\ : label is "yes";
  attribute KEEP of \common.aresetn_d_reg\ : label is "yes";
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \common.laguna_s_handshake_asyncclear_inst\ : label is "PRIMITIVE";
  attribute USER_SLL_REG_boolean : boolean;
  attribute USER_SLL_REG_boolean of \common.laguna_s_handshake_asyncclear_inst\ : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[0]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[0]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[10]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[10]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[11]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[11]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[12]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[12]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[13]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[13]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[14]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[14]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[15]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[15]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[16]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[16]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[17]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[17]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[18]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[18]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[19]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[19]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[1]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[1]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[20]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[20]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[21]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[21]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[22]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[22]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[23]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[23]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[24]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[24]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[25]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[25]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[26]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[26]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[27]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[27]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[2]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[2]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[3]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[3]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[4]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[4]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[5]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[5]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[6]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[6]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[7]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[7]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[8]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[8]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[9]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[9]\ : label is std.standard.true;
  attribute KEEP of \common.laguna_s_ready_i_reg\ : label is "yes";
  attribute USER_SLL_REG_boolean of \common.laguna_s_ready_i_reg\ : label is std.standard.true;
  attribute KEEP of \common.laguna_s_reset_in_d_reg\ : label is "yes";
  attribute USER_SLL_REG_boolean of \common.laguna_s_reset_in_d_reg\ : label is std.standard.true;
  attribute KEEP of \common.laguna_s_reset_out_i_reg\ : label is "yes";
  attribute USER_SLL_REG_boolean of \common.laguna_s_reset_out_i_reg\ : label is std.standard.true;
  attribute KEEP of \common.ready_d_reg[0]\ : label is "yes";
begin
  \common.laguna_s_ready_i_reg_0\ <= \common.laguna_s_ready_i\;
  \out\ <= \common.laguna_s_reset_out_i\;
\common.areset_d_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.laguna_s_reset_in_d\,
      Q => \common.areset_d\,
      R => '0'
    );
\common.aresetn_d_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => '1',
      Q => \common.aresetn_d\,
      R => '0'
    );
\common.laguna_s_handshake_asyncclear_inst\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      CLR => \common.ACLEAR\,
      D => \dual_slr.src_handshake\,
      Q => \common.laguna_s_handshake_q\
    );
\common.laguna_s_payload_d_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(0),
      Q => \common.laguna_s_payload_d\(0),
      R => '0'
    );
\common.laguna_s_payload_d_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(10),
      Q => \common.laguna_s_payload_d\(10),
      R => '0'
    );
\common.laguna_s_payload_d_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(11),
      Q => \common.laguna_s_payload_d\(11),
      R => '0'
    );
\common.laguna_s_payload_d_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(12),
      Q => \common.laguna_s_payload_d\(12),
      R => '0'
    );
\common.laguna_s_payload_d_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(13),
      Q => \common.laguna_s_payload_d\(13),
      R => '0'
    );
\common.laguna_s_payload_d_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(14),
      Q => \common.laguna_s_payload_d\(14),
      R => '0'
    );
\common.laguna_s_payload_d_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(15),
      Q => \common.laguna_s_payload_d\(15),
      R => '0'
    );
\common.laguna_s_payload_d_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(16),
      Q => \common.laguna_s_payload_d\(16),
      R => '0'
    );
\common.laguna_s_payload_d_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(17),
      Q => \common.laguna_s_payload_d\(17),
      R => '0'
    );
\common.laguna_s_payload_d_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(18),
      Q => \common.laguna_s_payload_d\(18),
      R => '0'
    );
\common.laguna_s_payload_d_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(19),
      Q => \common.laguna_s_payload_d\(19),
      R => '0'
    );
\common.laguna_s_payload_d_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(1),
      Q => \common.laguna_s_payload_d\(1),
      R => '0'
    );
\common.laguna_s_payload_d_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(20),
      Q => \common.laguna_s_payload_d\(20),
      R => '0'
    );
\common.laguna_s_payload_d_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(21),
      Q => \common.laguna_s_payload_d\(21),
      R => '0'
    );
\common.laguna_s_payload_d_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(22),
      Q => \common.laguna_s_payload_d\(22),
      R => '0'
    );
\common.laguna_s_payload_d_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(23),
      Q => \common.laguna_s_payload_d\(23),
      R => '0'
    );
\common.laguna_s_payload_d_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(24),
      Q => \common.laguna_s_payload_d\(24),
      R => '0'
    );
\common.laguna_s_payload_d_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(25),
      Q => \common.laguna_s_payload_d\(25),
      R => '0'
    );
\common.laguna_s_payload_d_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(26),
      Q => \common.laguna_s_payload_d\(26),
      R => '0'
    );
\common.laguna_s_payload_d_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(27),
      Q => \common.laguna_s_payload_d\(27),
      R => '0'
    );
\common.laguna_s_payload_d_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(2),
      Q => \common.laguna_s_payload_d\(2),
      R => '0'
    );
\common.laguna_s_payload_d_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(3),
      Q => \common.laguna_s_payload_d\(3),
      R => '0'
    );
\common.laguna_s_payload_d_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(4),
      Q => \common.laguna_s_payload_d\(4),
      R => '0'
    );
\common.laguna_s_payload_d_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(5),
      Q => \common.laguna_s_payload_d\(5),
      R => '0'
    );
\common.laguna_s_payload_d_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(6),
      Q => \common.laguna_s_payload_d\(6),
      R => '0'
    );
\common.laguna_s_payload_d_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(7),
      Q => \common.laguna_s_payload_d\(7),
      R => '0'
    );
\common.laguna_s_payload_d_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(8),
      Q => \common.laguna_s_payload_d\(8),
      R => '0'
    );
\common.laguna_s_payload_d_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(9),
      Q => \common.laguna_s_payload_d\(9),
      R => '0'
    );
\common.laguna_s_ready_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.srl_fifo_0_n_1\,
      Q => \common.laguna_s_ready_i\,
      R => '0'
    );
\common.laguna_s_reset_in_d_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.laguna_s_reset_in_d_reg_0\,
      Q => \common.laguna_s_reset_in_d\,
      R => '0'
    );
\common.laguna_s_reset_out_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.areset_d\,
      Q => \common.laguna_s_reset_out_i\,
      R => '0'
    );
\common.ready_d_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.srl_fifo_0_n_1\,
      Q => \common.ready_d\,
      R => '0'
    );
\common.srl_fifo_0\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axic_reg_srl_fifo_3
     port map (
      Q(27 downto 0) => \common.laguna_s_payload_d\(27 downto 0),
      aclk => aclk,
      asyncclear_mvalid_inst_0 => asyncclear_mvalid_inst,
      \common.ACLEAR\ => \common.ACLEAR\,
      \common.laguna_s_handshake_q\ => \common.laguna_s_handshake_q\,
      m_axi_arready => m_axi_arready,
      m_axi_arready_0 => \common.srl_fifo_0_n_1\,
      \mesg_reg_reg[27]_0\(27 downto 0) => Q(27 downto 0),
      \out\ => \common.areset_d\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_dest_region_slr__parameterized0\ is
  port (
    asyncclear_mvalid_inst : out STD_LOGIC;
    \out\ : out STD_LOGIC;
    \common.laguna_s_ready_i_reg_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 35 downto 0 );
    aclk : in STD_LOGIC;
    \common.ACLEAR\ : in STD_LOGIC;
    \dual_slr.src_handshake\ : in STD_LOGIC;
    \common.laguna_s_reset_in_d_reg_0\ : in STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 35 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_dest_region_slr__parameterized0\ : entity is "axi_register_slice_v2_1_26_dest_region_slr";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_dest_region_slr__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_dest_region_slr__parameterized0\ is
  signal \common.areset_d\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \common.areset_d\ : signal is "true";
  signal \common.aresetn_d\ : STD_LOGIC;
  attribute RTL_KEEP of \common.aresetn_d\ : signal is "true";
  signal \common.laguna_s_handshake_q\ : STD_LOGIC;
  signal \common.laguna_s_payload_d\ : STD_LOGIC_VECTOR ( 35 downto 0 );
  signal \common.laguna_s_ready_i\ : STD_LOGIC;
  attribute RTL_KEEP of \common.laguna_s_ready_i\ : signal is "true";
  attribute USER_SLL_REG : string;
  attribute USER_SLL_REG of \common.laguna_s_ready_i\ : signal is "true";
  signal \common.laguna_s_reset_in_d\ : STD_LOGIC;
  attribute RTL_KEEP of \common.laguna_s_reset_in_d\ : signal is "true";
  attribute USER_SLL_REG of \common.laguna_s_reset_in_d\ : signal is "true";
  signal \common.laguna_s_reset_out_i\ : STD_LOGIC;
  attribute RTL_KEEP of \common.laguna_s_reset_out_i\ : signal is "true";
  attribute USER_SLL_REG of \common.laguna_s_reset_out_i\ : signal is "true";
  signal \common.ready_d\ : STD_LOGIC;
  attribute RTL_KEEP of \common.ready_d\ : signal is "true";
  signal \common.srl_fifo_0_n_1\ : STD_LOGIC;
  attribute KEEP : string;
  attribute KEEP of \common.areset_d_reg\ : label is "yes";
  attribute KEEP of \common.aresetn_d_reg\ : label is "yes";
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \common.laguna_s_handshake_asyncclear_inst\ : label is "PRIMITIVE";
  attribute USER_SLL_REG_boolean : boolean;
  attribute USER_SLL_REG_boolean of \common.laguna_s_handshake_asyncclear_inst\ : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[0]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[0]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[10]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[10]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[11]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[11]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[12]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[12]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[13]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[13]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[14]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[14]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[15]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[15]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[16]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[16]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[17]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[17]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[18]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[18]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[19]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[19]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[1]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[1]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[20]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[20]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[21]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[21]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[22]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[22]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[23]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[23]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[24]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[24]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[25]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[25]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[26]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[26]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[27]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[27]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[28]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[28]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[29]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[29]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[2]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[2]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[30]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[30]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[31]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[31]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[32]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[32]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[33]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[33]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[34]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[34]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[35]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[35]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[3]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[3]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[4]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[4]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[5]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[5]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[6]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[6]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[7]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[7]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[8]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[8]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[9]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[9]\ : label is std.standard.true;
  attribute KEEP of \common.laguna_s_ready_i_reg\ : label is "yes";
  attribute USER_SLL_REG_boolean of \common.laguna_s_ready_i_reg\ : label is std.standard.true;
  attribute KEEP of \common.laguna_s_reset_in_d_reg\ : label is "yes";
  attribute USER_SLL_REG_boolean of \common.laguna_s_reset_in_d_reg\ : label is std.standard.true;
  attribute KEEP of \common.laguna_s_reset_out_i_reg\ : label is "yes";
  attribute USER_SLL_REG_boolean of \common.laguna_s_reset_out_i_reg\ : label is std.standard.true;
  attribute KEEP of \common.ready_d_reg[0]\ : label is "yes";
begin
  \common.laguna_s_ready_i_reg_0\ <= \common.laguna_s_ready_i\;
  \out\ <= \common.laguna_s_reset_out_i\;
\common.areset_d_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.laguna_s_reset_in_d\,
      Q => \common.areset_d\,
      R => '0'
    );
\common.aresetn_d_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => '1',
      Q => \common.aresetn_d\,
      R => '0'
    );
\common.laguna_s_handshake_asyncclear_inst\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      CLR => \common.ACLEAR\,
      D => \dual_slr.src_handshake\,
      Q => \common.laguna_s_handshake_q\
    );
\common.laguna_s_payload_d_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(0),
      Q => \common.laguna_s_payload_d\(0),
      R => '0'
    );
\common.laguna_s_payload_d_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(10),
      Q => \common.laguna_s_payload_d\(10),
      R => '0'
    );
\common.laguna_s_payload_d_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(11),
      Q => \common.laguna_s_payload_d\(11),
      R => '0'
    );
\common.laguna_s_payload_d_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(12),
      Q => \common.laguna_s_payload_d\(12),
      R => '0'
    );
\common.laguna_s_payload_d_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(13),
      Q => \common.laguna_s_payload_d\(13),
      R => '0'
    );
\common.laguna_s_payload_d_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(14),
      Q => \common.laguna_s_payload_d\(14),
      R => '0'
    );
\common.laguna_s_payload_d_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(15),
      Q => \common.laguna_s_payload_d\(15),
      R => '0'
    );
\common.laguna_s_payload_d_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(16),
      Q => \common.laguna_s_payload_d\(16),
      R => '0'
    );
\common.laguna_s_payload_d_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(17),
      Q => \common.laguna_s_payload_d\(17),
      R => '0'
    );
\common.laguna_s_payload_d_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(18),
      Q => \common.laguna_s_payload_d\(18),
      R => '0'
    );
\common.laguna_s_payload_d_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(19),
      Q => \common.laguna_s_payload_d\(19),
      R => '0'
    );
\common.laguna_s_payload_d_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(1),
      Q => \common.laguna_s_payload_d\(1),
      R => '0'
    );
\common.laguna_s_payload_d_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(20),
      Q => \common.laguna_s_payload_d\(20),
      R => '0'
    );
\common.laguna_s_payload_d_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(21),
      Q => \common.laguna_s_payload_d\(21),
      R => '0'
    );
\common.laguna_s_payload_d_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(22),
      Q => \common.laguna_s_payload_d\(22),
      R => '0'
    );
\common.laguna_s_payload_d_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(23),
      Q => \common.laguna_s_payload_d\(23),
      R => '0'
    );
\common.laguna_s_payload_d_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(24),
      Q => \common.laguna_s_payload_d\(24),
      R => '0'
    );
\common.laguna_s_payload_d_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(25),
      Q => \common.laguna_s_payload_d\(25),
      R => '0'
    );
\common.laguna_s_payload_d_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(26),
      Q => \common.laguna_s_payload_d\(26),
      R => '0'
    );
\common.laguna_s_payload_d_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(27),
      Q => \common.laguna_s_payload_d\(27),
      R => '0'
    );
\common.laguna_s_payload_d_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(28),
      Q => \common.laguna_s_payload_d\(28),
      R => '0'
    );
\common.laguna_s_payload_d_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(29),
      Q => \common.laguna_s_payload_d\(29),
      R => '0'
    );
\common.laguna_s_payload_d_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(2),
      Q => \common.laguna_s_payload_d\(2),
      R => '0'
    );
\common.laguna_s_payload_d_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(30),
      Q => \common.laguna_s_payload_d\(30),
      R => '0'
    );
\common.laguna_s_payload_d_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(31),
      Q => \common.laguna_s_payload_d\(31),
      R => '0'
    );
\common.laguna_s_payload_d_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(32),
      Q => \common.laguna_s_payload_d\(32),
      R => '0'
    );
\common.laguna_s_payload_d_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(33),
      Q => \common.laguna_s_payload_d\(33),
      R => '0'
    );
\common.laguna_s_payload_d_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(34),
      Q => \common.laguna_s_payload_d\(34),
      R => '0'
    );
\common.laguna_s_payload_d_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(35),
      Q => \common.laguna_s_payload_d\(35),
      R => '0'
    );
\common.laguna_s_payload_d_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(3),
      Q => \common.laguna_s_payload_d\(3),
      R => '0'
    );
\common.laguna_s_payload_d_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(4),
      Q => \common.laguna_s_payload_d\(4),
      R => '0'
    );
\common.laguna_s_payload_d_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(5),
      Q => \common.laguna_s_payload_d\(5),
      R => '0'
    );
\common.laguna_s_payload_d_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(6),
      Q => \common.laguna_s_payload_d\(6),
      R => '0'
    );
\common.laguna_s_payload_d_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(7),
      Q => \common.laguna_s_payload_d\(7),
      R => '0'
    );
\common.laguna_s_payload_d_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(8),
      Q => \common.laguna_s_payload_d\(8),
      R => '0'
    );
\common.laguna_s_payload_d_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(9),
      Q => \common.laguna_s_payload_d\(9),
      R => '0'
    );
\common.laguna_s_ready_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.srl_fifo_0_n_1\,
      Q => \common.laguna_s_ready_i\,
      R => '0'
    );
\common.laguna_s_reset_in_d_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.laguna_s_reset_in_d_reg_0\,
      Q => \common.laguna_s_reset_in_d\,
      R => '0'
    );
\common.laguna_s_reset_out_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.areset_d\,
      Q => \common.laguna_s_reset_out_i\,
      R => '0'
    );
\common.ready_d_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.srl_fifo_0_n_1\,
      Q => \common.ready_d\,
      R => '0'
    );
\common.srl_fifo_0\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axic_reg_srl_fifo__parameterized0\
     port map (
      Q(35 downto 0) => \common.laguna_s_payload_d\(35 downto 0),
      aclk => aclk,
      asyncclear_mvalid_inst_0 => asyncclear_mvalid_inst,
      \common.ACLEAR\ => \common.ACLEAR\,
      \common.laguna_s_handshake_q\ => \common.laguna_s_handshake_q\,
      m_axi_wready => m_axi_wready,
      m_axi_wready_0 => \common.srl_fifo_0_n_1\,
      \mesg_reg_reg[35]_0\(35 downto 0) => Q(35 downto 0),
      \out\ => \common.areset_d\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_dest_region_slr__parameterized1\ is
  port (
    asyncclear_mvalid_inst : out STD_LOGIC;
    \out\ : out STD_LOGIC;
    \common.laguna_s_ready_i_reg_0\ : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    aclk : in STD_LOGIC;
    \common.ACLEAR\ : in STD_LOGIC;
    \dual_slr.src_handshake\ : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    \common.laguna_s_reset_in_d_reg_0\ : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_dest_region_slr__parameterized1\ : entity is "axi_register_slice_v2_1_26_dest_region_slr";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_dest_region_slr__parameterized1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_dest_region_slr__parameterized1\ is
  signal \common.areset_d\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \common.areset_d\ : signal is "true";
  signal \common.areset_dly\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \common.areset_dly[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \common.aresetn_d\ : STD_LOGIC;
  attribute RTL_KEEP of \common.aresetn_d\ : signal is "true";
  signal \common.laguna_s_handshake_q\ : STD_LOGIC;
  signal \common.laguna_s_payload_d\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \common.laguna_s_ready_i\ : STD_LOGIC;
  attribute RTL_KEEP of \common.laguna_s_ready_i\ : signal is "true";
  attribute USER_SLL_REG : string;
  attribute USER_SLL_REG of \common.laguna_s_ready_i\ : signal is "true";
  signal \common.laguna_s_reset_in_d\ : STD_LOGIC;
  attribute RTL_KEEP of \common.laguna_s_reset_in_d\ : signal is "true";
  attribute USER_SLL_REG of \common.laguna_s_reset_in_d\ : signal is "true";
  signal \common.laguna_s_reset_out_i\ : STD_LOGIC;
  attribute RTL_KEEP of \common.laguna_s_reset_out_i\ : signal is "true";
  attribute USER_SLL_REG of \common.laguna_s_reset_out_i\ : signal is "true";
  signal \common.ready_d\ : STD_LOGIC;
  attribute RTL_KEEP of \common.ready_d\ : signal is "true";
  signal \common.srl_fifo_0_n_1\ : STD_LOGIC;
  attribute KEEP : string;
  attribute KEEP of \common.areset_d_reg\ : label is "yes";
  attribute KEEP of \common.aresetn_d_reg\ : label is "yes";
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \common.laguna_s_handshake_asyncclear_inst\ : label is "PRIMITIVE";
  attribute USER_SLL_REG_boolean : boolean;
  attribute USER_SLL_REG_boolean of \common.laguna_s_handshake_asyncclear_inst\ : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[0]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[0]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[1]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[1]\ : label is std.standard.true;
  attribute KEEP of \common.laguna_s_ready_i_reg\ : label is "yes";
  attribute USER_SLL_REG_boolean of \common.laguna_s_ready_i_reg\ : label is std.standard.true;
  attribute KEEP of \common.laguna_s_reset_in_d_reg\ : label is "yes";
  attribute USER_SLL_REG_boolean of \common.laguna_s_reset_in_d_reg\ : label is std.standard.true;
  attribute KEEP of \common.laguna_s_reset_out_i_reg\ : label is "yes";
  attribute USER_SLL_REG_boolean of \common.laguna_s_reset_out_i_reg\ : label is std.standard.true;
  attribute KEEP of \common.ready_d_reg[0]\ : label is "yes";
begin
  \common.laguna_s_ready_i_reg_0\ <= \common.laguna_s_ready_i\;
  \out\ <= \common.laguna_s_reset_out_i\;
\common.areset_d_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.areset_dly\(15),
      Q => \common.areset_d\,
      R => '0'
    );
\common.areset_dly[0]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \common.aresetn_d\,
      O => \common.areset_dly[0]_i_1__1_n_0\
    );
\common.areset_dly_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.areset_dly[0]_i_1__1_n_0\,
      Q => \common.areset_dly\(0),
      R => '0'
    );
\common.areset_dly_reg[10]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.areset_dly\(9),
      Q => \common.areset_dly\(10),
      S => \common.areset_dly[0]_i_1__1_n_0\
    );
\common.areset_dly_reg[11]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.areset_dly\(10),
      Q => \common.areset_dly\(11),
      S => \common.areset_dly[0]_i_1__1_n_0\
    );
\common.areset_dly_reg[12]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.areset_dly\(11),
      Q => \common.areset_dly\(12),
      S => \common.areset_dly[0]_i_1__1_n_0\
    );
\common.areset_dly_reg[13]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.areset_dly\(12),
      Q => \common.areset_dly\(13),
      S => \common.areset_dly[0]_i_1__1_n_0\
    );
\common.areset_dly_reg[14]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.areset_dly\(13),
      Q => \common.areset_dly\(14),
      S => \common.areset_dly[0]_i_1__1_n_0\
    );
\common.areset_dly_reg[15]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.areset_dly\(14),
      Q => \common.areset_dly\(15),
      S => \common.areset_dly[0]_i_1__1_n_0\
    );
\common.areset_dly_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.areset_dly\(0),
      Q => \common.areset_dly\(1),
      S => \common.areset_dly[0]_i_1__1_n_0\
    );
\common.areset_dly_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.areset_dly\(1),
      Q => \common.areset_dly\(2),
      S => \common.areset_dly[0]_i_1__1_n_0\
    );
\common.areset_dly_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.areset_dly\(2),
      Q => \common.areset_dly\(3),
      S => \common.areset_dly[0]_i_1__1_n_0\
    );
\common.areset_dly_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.areset_dly\(3),
      Q => \common.areset_dly\(4),
      S => \common.areset_dly[0]_i_1__1_n_0\
    );
\common.areset_dly_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.areset_dly\(4),
      Q => \common.areset_dly\(5),
      S => \common.areset_dly[0]_i_1__1_n_0\
    );
\common.areset_dly_reg[6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.areset_dly\(5),
      Q => \common.areset_dly\(6),
      S => \common.areset_dly[0]_i_1__1_n_0\
    );
\common.areset_dly_reg[7]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.areset_dly\(6),
      Q => \common.areset_dly\(7),
      S => \common.areset_dly[0]_i_1__1_n_0\
    );
\common.areset_dly_reg[8]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.areset_dly\(7),
      Q => \common.areset_dly\(8),
      S => \common.areset_dly[0]_i_1__1_n_0\
    );
\common.areset_dly_reg[9]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.areset_dly\(8),
      Q => \common.areset_dly\(9),
      S => \common.areset_dly[0]_i_1__1_n_0\
    );
\common.aresetn_d_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => aresetn,
      Q => \common.aresetn_d\,
      R => '0'
    );
\common.laguna_s_handshake_asyncclear_inst\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      CLR => \common.ACLEAR\,
      D => \dual_slr.src_handshake\,
      Q => \common.laguna_s_handshake_q\
    );
\common.laguna_s_payload_d_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => Q(0),
      Q => \common.laguna_s_payload_d\(0),
      R => '0'
    );
\common.laguna_s_payload_d_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => Q(1),
      Q => \common.laguna_s_payload_d\(1),
      R => '0'
    );
\common.laguna_s_ready_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.srl_fifo_0_n_1\,
      Q => \common.laguna_s_ready_i\,
      R => '0'
    );
\common.laguna_s_reset_in_d_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.laguna_s_reset_in_d_reg_0\,
      Q => \common.laguna_s_reset_in_d\,
      R => '0'
    );
\common.laguna_s_reset_out_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.areset_d\,
      Q => \common.laguna_s_reset_out_i\,
      R => '0'
    );
\common.ready_d_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.srl_fifo_0_n_1\,
      Q => \common.ready_d\,
      R => '0'
    );
\common.srl_fifo_0\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axic_reg_srl_fifo__parameterized1\
     port map (
      Q(1 downto 0) => \common.laguna_s_payload_d\(1 downto 0),
      aclk => aclk,
      asyncclear_mvalid_inst_0 => asyncclear_mvalid_inst,
      \common.ACLEAR\ => \common.ACLEAR\,
      \common.laguna_s_handshake_q\ => \common.laguna_s_handshake_q\,
      \out\ => \common.areset_d\,
      s_axi_bready => s_axi_bready,
      s_axi_bready_0 => \common.srl_fifo_0_n_1\,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_dest_region_slr__parameterized2\ is
  port (
    asyncclear_mvalid_inst : out STD_LOGIC;
    aresetn_0 : out STD_LOGIC;
    \out\ : out STD_LOGIC;
    \common.laguna_s_ready_i_reg_0\ : out STD_LOGIC;
    \mesg_reg_reg[33]\ : out STD_LOGIC_VECTOR ( 33 downto 0 );
    aclk : in STD_LOGIC;
    \dual_slr.src_handshake\ : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    \common.laguna_s_reset_in_d_reg_0\ : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 33 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_dest_region_slr__parameterized2\ : entity is "axi_register_slice_v2_1_26_dest_region_slr";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_dest_region_slr__parameterized2\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_dest_region_slr__parameterized2\ is
  signal \^aresetn_0\ : STD_LOGIC;
  signal \common.areset_d\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \common.areset_d\ : signal is "true";
  signal \common.areset_dly\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \common.areset_dly[0]_i_1__3_n_0\ : STD_LOGIC;
  signal \common.aresetn_d\ : STD_LOGIC;
  attribute RTL_KEEP of \common.aresetn_d\ : signal is "true";
  signal \common.laguna_s_handshake_q\ : STD_LOGIC;
  signal \common.laguna_s_payload_d\ : STD_LOGIC_VECTOR ( 33 downto 0 );
  signal \common.laguna_s_ready_i\ : STD_LOGIC;
  attribute RTL_KEEP of \common.laguna_s_ready_i\ : signal is "true";
  attribute USER_SLL_REG : string;
  attribute USER_SLL_REG of \common.laguna_s_ready_i\ : signal is "true";
  signal \common.laguna_s_reset_in_d\ : STD_LOGIC;
  attribute RTL_KEEP of \common.laguna_s_reset_in_d\ : signal is "true";
  attribute USER_SLL_REG of \common.laguna_s_reset_in_d\ : signal is "true";
  signal \common.laguna_s_reset_out_i\ : STD_LOGIC;
  attribute RTL_KEEP of \common.laguna_s_reset_out_i\ : signal is "true";
  attribute USER_SLL_REG of \common.laguna_s_reset_out_i\ : signal is "true";
  signal \common.ready_d\ : STD_LOGIC;
  attribute RTL_KEEP of \common.ready_d\ : signal is "true";
  signal \common.srl_fifo_0_n_2\ : STD_LOGIC;
  attribute KEEP : string;
  attribute KEEP of \common.areset_d_reg\ : label is "yes";
  attribute KEEP of \common.aresetn_d_reg\ : label is "yes";
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \common.laguna_s_handshake_asyncclear_inst\ : label is "PRIMITIVE";
  attribute USER_SLL_REG_boolean : boolean;
  attribute USER_SLL_REG_boolean of \common.laguna_s_handshake_asyncclear_inst\ : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[0]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[0]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[10]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[10]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[11]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[11]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[12]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[12]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[13]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[13]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[14]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[14]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[15]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[15]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[16]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[16]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[17]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[17]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[18]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[18]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[19]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[19]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[1]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[1]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[20]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[20]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[21]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[21]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[22]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[22]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[23]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[23]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[24]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[24]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[25]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[25]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[26]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[26]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[27]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[27]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[28]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[28]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[29]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[29]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[2]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[2]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[30]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[30]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[31]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[31]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[32]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[32]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[33]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[33]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[3]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[3]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[4]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[4]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[5]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[5]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[6]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[6]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[7]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[7]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[8]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[8]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \common.laguna_s_payload_d_reg[9]\ : label is "no";
  attribute USER_SLL_REG_boolean of \common.laguna_s_payload_d_reg[9]\ : label is std.standard.true;
  attribute KEEP of \common.laguna_s_ready_i_reg\ : label is "yes";
  attribute USER_SLL_REG_boolean of \common.laguna_s_ready_i_reg\ : label is std.standard.true;
  attribute KEEP of \common.laguna_s_reset_in_d_reg\ : label is "yes";
  attribute USER_SLL_REG_boolean of \common.laguna_s_reset_in_d_reg\ : label is std.standard.true;
  attribute KEEP of \common.laguna_s_reset_out_i_reg\ : label is "yes";
  attribute USER_SLL_REG_boolean of \common.laguna_s_reset_out_i_reg\ : label is std.standard.true;
  attribute KEEP of \common.ready_d_reg[0]\ : label is "yes";
begin
  aresetn_0 <= \^aresetn_0\;
  \common.laguna_s_ready_i_reg_0\ <= \common.laguna_s_ready_i\;
  \out\ <= \common.laguna_s_reset_out_i\;
\common.areset_d_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.areset_dly\(15),
      Q => \common.areset_d\,
      R => '0'
    );
\common.areset_dly[0]_i_1__3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \common.aresetn_d\,
      O => \common.areset_dly[0]_i_1__3_n_0\
    );
\common.areset_dly_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.areset_dly[0]_i_1__3_n_0\,
      Q => \common.areset_dly\(0),
      R => '0'
    );
\common.areset_dly_reg[10]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.areset_dly\(9),
      Q => \common.areset_dly\(10),
      S => \common.areset_dly[0]_i_1__3_n_0\
    );
\common.areset_dly_reg[11]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.areset_dly\(10),
      Q => \common.areset_dly\(11),
      S => \common.areset_dly[0]_i_1__3_n_0\
    );
\common.areset_dly_reg[12]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.areset_dly\(11),
      Q => \common.areset_dly\(12),
      S => \common.areset_dly[0]_i_1__3_n_0\
    );
\common.areset_dly_reg[13]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.areset_dly\(12),
      Q => \common.areset_dly\(13),
      S => \common.areset_dly[0]_i_1__3_n_0\
    );
\common.areset_dly_reg[14]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.areset_dly\(13),
      Q => \common.areset_dly\(14),
      S => \common.areset_dly[0]_i_1__3_n_0\
    );
\common.areset_dly_reg[15]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.areset_dly\(14),
      Q => \common.areset_dly\(15),
      S => \common.areset_dly[0]_i_1__3_n_0\
    );
\common.areset_dly_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.areset_dly\(0),
      Q => \common.areset_dly\(1),
      S => \common.areset_dly[0]_i_1__3_n_0\
    );
\common.areset_dly_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.areset_dly\(1),
      Q => \common.areset_dly\(2),
      S => \common.areset_dly[0]_i_1__3_n_0\
    );
\common.areset_dly_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.areset_dly\(2),
      Q => \common.areset_dly\(3),
      S => \common.areset_dly[0]_i_1__3_n_0\
    );
\common.areset_dly_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.areset_dly\(3),
      Q => \common.areset_dly\(4),
      S => \common.areset_dly[0]_i_1__3_n_0\
    );
\common.areset_dly_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.areset_dly\(4),
      Q => \common.areset_dly\(5),
      S => \common.areset_dly[0]_i_1__3_n_0\
    );
\common.areset_dly_reg[6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.areset_dly\(5),
      Q => \common.areset_dly\(6),
      S => \common.areset_dly[0]_i_1__3_n_0\
    );
\common.areset_dly_reg[7]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.areset_dly\(6),
      Q => \common.areset_dly\(7),
      S => \common.areset_dly[0]_i_1__3_n_0\
    );
\common.areset_dly_reg[8]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.areset_dly\(7),
      Q => \common.areset_dly\(8),
      S => \common.areset_dly[0]_i_1__3_n_0\
    );
\common.areset_dly_reg[9]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.areset_dly\(8),
      Q => \common.areset_dly\(9),
      S => \common.areset_dly[0]_i_1__3_n_0\
    );
\common.aresetn_d_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => aresetn,
      Q => \common.aresetn_d\,
      R => '0'
    );
\common.laguna_s_handshake_asyncclear_inst\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      CLR => \^aresetn_0\,
      D => \dual_slr.src_handshake\,
      Q => \common.laguna_s_handshake_q\
    );
\common.laguna_s_payload_d_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => Q(0),
      Q => \common.laguna_s_payload_d\(0),
      R => '0'
    );
\common.laguna_s_payload_d_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => Q(10),
      Q => \common.laguna_s_payload_d\(10),
      R => '0'
    );
\common.laguna_s_payload_d_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => Q(11),
      Q => \common.laguna_s_payload_d\(11),
      R => '0'
    );
\common.laguna_s_payload_d_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => Q(12),
      Q => \common.laguna_s_payload_d\(12),
      R => '0'
    );
\common.laguna_s_payload_d_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => Q(13),
      Q => \common.laguna_s_payload_d\(13),
      R => '0'
    );
\common.laguna_s_payload_d_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => Q(14),
      Q => \common.laguna_s_payload_d\(14),
      R => '0'
    );
\common.laguna_s_payload_d_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => Q(15),
      Q => \common.laguna_s_payload_d\(15),
      R => '0'
    );
\common.laguna_s_payload_d_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => Q(16),
      Q => \common.laguna_s_payload_d\(16),
      R => '0'
    );
\common.laguna_s_payload_d_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => Q(17),
      Q => \common.laguna_s_payload_d\(17),
      R => '0'
    );
\common.laguna_s_payload_d_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => Q(18),
      Q => \common.laguna_s_payload_d\(18),
      R => '0'
    );
\common.laguna_s_payload_d_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => Q(19),
      Q => \common.laguna_s_payload_d\(19),
      R => '0'
    );
\common.laguna_s_payload_d_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => Q(1),
      Q => \common.laguna_s_payload_d\(1),
      R => '0'
    );
\common.laguna_s_payload_d_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => Q(20),
      Q => \common.laguna_s_payload_d\(20),
      R => '0'
    );
\common.laguna_s_payload_d_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => Q(21),
      Q => \common.laguna_s_payload_d\(21),
      R => '0'
    );
\common.laguna_s_payload_d_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => Q(22),
      Q => \common.laguna_s_payload_d\(22),
      R => '0'
    );
\common.laguna_s_payload_d_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => Q(23),
      Q => \common.laguna_s_payload_d\(23),
      R => '0'
    );
\common.laguna_s_payload_d_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => Q(24),
      Q => \common.laguna_s_payload_d\(24),
      R => '0'
    );
\common.laguna_s_payload_d_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => Q(25),
      Q => \common.laguna_s_payload_d\(25),
      R => '0'
    );
\common.laguna_s_payload_d_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => Q(26),
      Q => \common.laguna_s_payload_d\(26),
      R => '0'
    );
\common.laguna_s_payload_d_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => Q(27),
      Q => \common.laguna_s_payload_d\(27),
      R => '0'
    );
\common.laguna_s_payload_d_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => Q(28),
      Q => \common.laguna_s_payload_d\(28),
      R => '0'
    );
\common.laguna_s_payload_d_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => Q(29),
      Q => \common.laguna_s_payload_d\(29),
      R => '0'
    );
\common.laguna_s_payload_d_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => Q(2),
      Q => \common.laguna_s_payload_d\(2),
      R => '0'
    );
\common.laguna_s_payload_d_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => Q(30),
      Q => \common.laguna_s_payload_d\(30),
      R => '0'
    );
\common.laguna_s_payload_d_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => Q(31),
      Q => \common.laguna_s_payload_d\(31),
      R => '0'
    );
\common.laguna_s_payload_d_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => Q(32),
      Q => \common.laguna_s_payload_d\(32),
      R => '0'
    );
\common.laguna_s_payload_d_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => Q(33),
      Q => \common.laguna_s_payload_d\(33),
      R => '0'
    );
\common.laguna_s_payload_d_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => Q(3),
      Q => \common.laguna_s_payload_d\(3),
      R => '0'
    );
\common.laguna_s_payload_d_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => Q(4),
      Q => \common.laguna_s_payload_d\(4),
      R => '0'
    );
\common.laguna_s_payload_d_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => Q(5),
      Q => \common.laguna_s_payload_d\(5),
      R => '0'
    );
\common.laguna_s_payload_d_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => Q(6),
      Q => \common.laguna_s_payload_d\(6),
      R => '0'
    );
\common.laguna_s_payload_d_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => Q(7),
      Q => \common.laguna_s_payload_d\(7),
      R => '0'
    );
\common.laguna_s_payload_d_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => Q(8),
      Q => \common.laguna_s_payload_d\(8),
      R => '0'
    );
\common.laguna_s_payload_d_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => Q(9),
      Q => \common.laguna_s_payload_d\(9),
      R => '0'
    );
\common.laguna_s_ready_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.srl_fifo_0_n_2\,
      Q => \common.laguna_s_ready_i\,
      R => '0'
    );
\common.laguna_s_reset_in_d_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.laguna_s_reset_in_d_reg_0\,
      Q => \common.laguna_s_reset_in_d\,
      R => '0'
    );
\common.laguna_s_reset_out_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.areset_d\,
      Q => \common.laguna_s_reset_out_i\,
      R => '0'
    );
\common.ready_d_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \common.srl_fifo_0_n_2\,
      Q => \common.ready_d\,
      R => '0'
    );
\common.srl_fifo_0\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axic_reg_srl_fifo__parameterized2\
     port map (
      Q(33 downto 0) => \common.laguna_s_payload_d\(33 downto 0),
      aclk => aclk,
      aresetn => aresetn,
      aresetn_0 => \^aresetn_0\,
      asyncclear_mvalid_inst_0 => asyncclear_mvalid_inst,
      \common.laguna_s_handshake_q\ => \common.laguna_s_handshake_q\,
      \mesg_reg_reg[33]_0\(33 downto 0) => \mesg_reg_reg[33]\(33 downto 0),
      \out\ => \common.areset_d\,
      s_axi_rready => s_axi_rready,
      s_axi_rready_0 => \common.srl_fifo_0_n_2\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_multi_slr is
  port (
    s_axi_arready : out STD_LOGIC;
    asyncclear_mvalid_inst : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 27 downto 0 );
    aclk : in STD_LOGIC;
    \common.ACLEAR\ : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 27 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_multi_slr;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_multi_slr is
  signal \dual_slr.dummy_reset\ : STD_LOGIC;
  signal \dual_slr.fwd.slr_master_n_10\ : STD_LOGIC;
  signal \dual_slr.fwd.slr_master_n_11\ : STD_LOGIC;
  signal \dual_slr.fwd.slr_master_n_12\ : STD_LOGIC;
  signal \dual_slr.fwd.slr_master_n_13\ : STD_LOGIC;
  signal \dual_slr.fwd.slr_master_n_14\ : STD_LOGIC;
  signal \dual_slr.fwd.slr_master_n_15\ : STD_LOGIC;
  signal \dual_slr.fwd.slr_master_n_16\ : STD_LOGIC;
  signal \dual_slr.fwd.slr_master_n_17\ : STD_LOGIC;
  signal \dual_slr.fwd.slr_master_n_18\ : STD_LOGIC;
  signal \dual_slr.fwd.slr_master_n_19\ : STD_LOGIC;
  signal \dual_slr.fwd.slr_master_n_20\ : STD_LOGIC;
  signal \dual_slr.fwd.slr_master_n_21\ : STD_LOGIC;
  signal \dual_slr.fwd.slr_master_n_22\ : STD_LOGIC;
  signal \dual_slr.fwd.slr_master_n_23\ : STD_LOGIC;
  signal \dual_slr.fwd.slr_master_n_24\ : STD_LOGIC;
  signal \dual_slr.fwd.slr_master_n_25\ : STD_LOGIC;
  signal \dual_slr.fwd.slr_master_n_26\ : STD_LOGIC;
  signal \dual_slr.fwd.slr_master_n_27\ : STD_LOGIC;
  signal \dual_slr.fwd.slr_master_n_28\ : STD_LOGIC;
  signal \dual_slr.fwd.slr_master_n_29\ : STD_LOGIC;
  signal \dual_slr.fwd.slr_master_n_3\ : STD_LOGIC;
  signal \dual_slr.fwd.slr_master_n_30\ : STD_LOGIC;
  signal \dual_slr.fwd.slr_master_n_4\ : STD_LOGIC;
  signal \dual_slr.fwd.slr_master_n_5\ : STD_LOGIC;
  signal \dual_slr.fwd.slr_master_n_6\ : STD_LOGIC;
  signal \dual_slr.fwd.slr_master_n_7\ : STD_LOGIC;
  signal \dual_slr.fwd.slr_master_n_8\ : STD_LOGIC;
  signal \dual_slr.fwd.slr_master_n_9\ : STD_LOGIC;
  signal \dual_slr.src_handshake\ : STD_LOGIC;
  signal \dual_slr.src_ready\ : STD_LOGIC;
  signal \dual_slr.src_reset\ : STD_LOGIC;
begin
\dual_slr.fwd.slr_master\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_source_region_slr_1
     port map (
      D(27 downto 0) => D(27 downto 0),
      Q(27) => \dual_slr.fwd.slr_master_n_3\,
      Q(26) => \dual_slr.fwd.slr_master_n_4\,
      Q(25) => \dual_slr.fwd.slr_master_n_5\,
      Q(24) => \dual_slr.fwd.slr_master_n_6\,
      Q(23) => \dual_slr.fwd.slr_master_n_7\,
      Q(22) => \dual_slr.fwd.slr_master_n_8\,
      Q(21) => \dual_slr.fwd.slr_master_n_9\,
      Q(20) => \dual_slr.fwd.slr_master_n_10\,
      Q(19) => \dual_slr.fwd.slr_master_n_11\,
      Q(18) => \dual_slr.fwd.slr_master_n_12\,
      Q(17) => \dual_slr.fwd.slr_master_n_13\,
      Q(16) => \dual_slr.fwd.slr_master_n_14\,
      Q(15) => \dual_slr.fwd.slr_master_n_15\,
      Q(14) => \dual_slr.fwd.slr_master_n_16\,
      Q(13) => \dual_slr.fwd.slr_master_n_17\,
      Q(12) => \dual_slr.fwd.slr_master_n_18\,
      Q(11) => \dual_slr.fwd.slr_master_n_19\,
      Q(10) => \dual_slr.fwd.slr_master_n_20\,
      Q(9) => \dual_slr.fwd.slr_master_n_21\,
      Q(8) => \dual_slr.fwd.slr_master_n_22\,
      Q(7) => \dual_slr.fwd.slr_master_n_23\,
      Q(6) => \dual_slr.fwd.slr_master_n_24\,
      Q(5) => \dual_slr.fwd.slr_master_n_25\,
      Q(4) => \dual_slr.fwd.slr_master_n_26\,
      Q(3) => \dual_slr.fwd.slr_master_n_27\,
      Q(2) => \dual_slr.fwd.slr_master_n_28\,
      Q(1) => \dual_slr.fwd.slr_master_n_29\,
      Q(0) => \dual_slr.fwd.slr_master_n_30\,
      aclk => aclk,
      aresetn => aresetn,
      \common.ACLEAR\ => \common.ACLEAR\,
      \common.laguna_m_ready_d_reg_0\ => \dual_slr.src_ready\,
      \common.laguna_m_reset_in_d_reg_0\ => \dual_slr.dummy_reset\,
      \dual_slr.src_handshake\ => \dual_slr.src_handshake\,
      \out\ => \dual_slr.src_reset\,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid
    );
\dual_slr.fwd.slr_slave\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_dest_region_slr_2
     port map (
      D(27) => \dual_slr.fwd.slr_master_n_3\,
      D(26) => \dual_slr.fwd.slr_master_n_4\,
      D(25) => \dual_slr.fwd.slr_master_n_5\,
      D(24) => \dual_slr.fwd.slr_master_n_6\,
      D(23) => \dual_slr.fwd.slr_master_n_7\,
      D(22) => \dual_slr.fwd.slr_master_n_8\,
      D(21) => \dual_slr.fwd.slr_master_n_9\,
      D(20) => \dual_slr.fwd.slr_master_n_10\,
      D(19) => \dual_slr.fwd.slr_master_n_11\,
      D(18) => \dual_slr.fwd.slr_master_n_12\,
      D(17) => \dual_slr.fwd.slr_master_n_13\,
      D(16) => \dual_slr.fwd.slr_master_n_14\,
      D(15) => \dual_slr.fwd.slr_master_n_15\,
      D(14) => \dual_slr.fwd.slr_master_n_16\,
      D(13) => \dual_slr.fwd.slr_master_n_17\,
      D(12) => \dual_slr.fwd.slr_master_n_18\,
      D(11) => \dual_slr.fwd.slr_master_n_19\,
      D(10) => \dual_slr.fwd.slr_master_n_20\,
      D(9) => \dual_slr.fwd.slr_master_n_21\,
      D(8) => \dual_slr.fwd.slr_master_n_22\,
      D(7) => \dual_slr.fwd.slr_master_n_23\,
      D(6) => \dual_slr.fwd.slr_master_n_24\,
      D(5) => \dual_slr.fwd.slr_master_n_25\,
      D(4) => \dual_slr.fwd.slr_master_n_26\,
      D(3) => \dual_slr.fwd.slr_master_n_27\,
      D(2) => \dual_slr.fwd.slr_master_n_28\,
      D(1) => \dual_slr.fwd.slr_master_n_29\,
      D(0) => \dual_slr.fwd.slr_master_n_30\,
      Q(27 downto 0) => Q(27 downto 0),
      aclk => aclk,
      asyncclear_mvalid_inst => asyncclear_mvalid_inst,
      \common.ACLEAR\ => \common.ACLEAR\,
      \common.laguna_s_ready_i_reg_0\ => \dual_slr.src_ready\,
      \common.laguna_s_reset_in_d_reg_0\ => \dual_slr.src_reset\,
      \dual_slr.src_handshake\ => \dual_slr.src_handshake\,
      m_axi_arready => m_axi_arready,
      \out\ => \dual_slr.dummy_reset\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_multi_slr_0 is
  port (
    s_axi_awready : out STD_LOGIC;
    asyncclear_mvalid_inst : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 27 downto 0 );
    aclk : in STD_LOGIC;
    \common.ACLEAR\ : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 27 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_multi_slr_0 : entity is "axi_register_slice_v2_1_26_multi_slr";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_multi_slr_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_multi_slr_0 is
  signal \common.laguna_m_payload_i\ : STD_LOGIC_VECTOR ( 27 downto 0 );
  signal \dual_slr.dummy_reset\ : STD_LOGIC;
  signal \dual_slr.src_handshake\ : STD_LOGIC;
  signal \dual_slr.src_ready\ : STD_LOGIC;
  signal \dual_slr.src_reset\ : STD_LOGIC;
begin
\dual_slr.fwd.slr_master\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_source_region_slr
     port map (
      D(27 downto 0) => D(27 downto 0),
      Q(27 downto 0) => \common.laguna_m_payload_i\(27 downto 0),
      aclk => aclk,
      aresetn => aresetn,
      \common.ACLEAR\ => \common.ACLEAR\,
      \common.laguna_m_ready_d_reg_0\ => \dual_slr.src_ready\,
      \common.laguna_m_reset_in_d_reg_0\ => \dual_slr.dummy_reset\,
      \dual_slr.src_handshake\ => \dual_slr.src_handshake\,
      \out\ => \dual_slr.src_reset\,
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid
    );
\dual_slr.fwd.slr_slave\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_dest_region_slr
     port map (
      D(27 downto 0) => \common.laguna_m_payload_i\(27 downto 0),
      Q(27 downto 0) => Q(27 downto 0),
      aclk => aclk,
      asyncclear_mvalid_inst => asyncclear_mvalid_inst,
      \common.ACLEAR\ => \common.ACLEAR\,
      \common.laguna_s_ready_i_reg_0\ => \dual_slr.src_ready\,
      \common.laguna_s_reset_in_d_reg_0\ => \dual_slr.src_reset\,
      \dual_slr.src_handshake\ => \dual_slr.src_handshake\,
      m_axi_awready => m_axi_awready,
      \out\ => \dual_slr.dummy_reset\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_multi_slr__parameterized0\ is
  port (
    s_axi_wready : out STD_LOGIC;
    asyncclear_mvalid_inst : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 35 downto 0 );
    aclk : in STD_LOGIC;
    \common.ACLEAR\ : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 35 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_multi_slr__parameterized0\ : entity is "axi_register_slice_v2_1_26_multi_slr";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_multi_slr__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_multi_slr__parameterized0\ is
  signal \dual_slr.dummy_reset\ : STD_LOGIC;
  signal \dual_slr.fwd.slr_master_n_10\ : STD_LOGIC;
  signal \dual_slr.fwd.slr_master_n_11\ : STD_LOGIC;
  signal \dual_slr.fwd.slr_master_n_12\ : STD_LOGIC;
  signal \dual_slr.fwd.slr_master_n_13\ : STD_LOGIC;
  signal \dual_slr.fwd.slr_master_n_14\ : STD_LOGIC;
  signal \dual_slr.fwd.slr_master_n_15\ : STD_LOGIC;
  signal \dual_slr.fwd.slr_master_n_16\ : STD_LOGIC;
  signal \dual_slr.fwd.slr_master_n_17\ : STD_LOGIC;
  signal \dual_slr.fwd.slr_master_n_18\ : STD_LOGIC;
  signal \dual_slr.fwd.slr_master_n_19\ : STD_LOGIC;
  signal \dual_slr.fwd.slr_master_n_20\ : STD_LOGIC;
  signal \dual_slr.fwd.slr_master_n_21\ : STD_LOGIC;
  signal \dual_slr.fwd.slr_master_n_22\ : STD_LOGIC;
  signal \dual_slr.fwd.slr_master_n_23\ : STD_LOGIC;
  signal \dual_slr.fwd.slr_master_n_24\ : STD_LOGIC;
  signal \dual_slr.fwd.slr_master_n_25\ : STD_LOGIC;
  signal \dual_slr.fwd.slr_master_n_26\ : STD_LOGIC;
  signal \dual_slr.fwd.slr_master_n_27\ : STD_LOGIC;
  signal \dual_slr.fwd.slr_master_n_28\ : STD_LOGIC;
  signal \dual_slr.fwd.slr_master_n_29\ : STD_LOGIC;
  signal \dual_slr.fwd.slr_master_n_3\ : STD_LOGIC;
  signal \dual_slr.fwd.slr_master_n_30\ : STD_LOGIC;
  signal \dual_slr.fwd.slr_master_n_31\ : STD_LOGIC;
  signal \dual_slr.fwd.slr_master_n_32\ : STD_LOGIC;
  signal \dual_slr.fwd.slr_master_n_33\ : STD_LOGIC;
  signal \dual_slr.fwd.slr_master_n_34\ : STD_LOGIC;
  signal \dual_slr.fwd.slr_master_n_35\ : STD_LOGIC;
  signal \dual_slr.fwd.slr_master_n_36\ : STD_LOGIC;
  signal \dual_slr.fwd.slr_master_n_37\ : STD_LOGIC;
  signal \dual_slr.fwd.slr_master_n_38\ : STD_LOGIC;
  signal \dual_slr.fwd.slr_master_n_4\ : STD_LOGIC;
  signal \dual_slr.fwd.slr_master_n_5\ : STD_LOGIC;
  signal \dual_slr.fwd.slr_master_n_6\ : STD_LOGIC;
  signal \dual_slr.fwd.slr_master_n_7\ : STD_LOGIC;
  signal \dual_slr.fwd.slr_master_n_8\ : STD_LOGIC;
  signal \dual_slr.fwd.slr_master_n_9\ : STD_LOGIC;
  signal \dual_slr.src_handshake\ : STD_LOGIC;
  signal \dual_slr.src_ready\ : STD_LOGIC;
  signal \dual_slr.src_reset\ : STD_LOGIC;
begin
\dual_slr.fwd.slr_master\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_source_region_slr__parameterized0\
     port map (
      D(35 downto 0) => D(35 downto 0),
      Q(35) => \dual_slr.fwd.slr_master_n_3\,
      Q(34) => \dual_slr.fwd.slr_master_n_4\,
      Q(33) => \dual_slr.fwd.slr_master_n_5\,
      Q(32) => \dual_slr.fwd.slr_master_n_6\,
      Q(31) => \dual_slr.fwd.slr_master_n_7\,
      Q(30) => \dual_slr.fwd.slr_master_n_8\,
      Q(29) => \dual_slr.fwd.slr_master_n_9\,
      Q(28) => \dual_slr.fwd.slr_master_n_10\,
      Q(27) => \dual_slr.fwd.slr_master_n_11\,
      Q(26) => \dual_slr.fwd.slr_master_n_12\,
      Q(25) => \dual_slr.fwd.slr_master_n_13\,
      Q(24) => \dual_slr.fwd.slr_master_n_14\,
      Q(23) => \dual_slr.fwd.slr_master_n_15\,
      Q(22) => \dual_slr.fwd.slr_master_n_16\,
      Q(21) => \dual_slr.fwd.slr_master_n_17\,
      Q(20) => \dual_slr.fwd.slr_master_n_18\,
      Q(19) => \dual_slr.fwd.slr_master_n_19\,
      Q(18) => \dual_slr.fwd.slr_master_n_20\,
      Q(17) => \dual_slr.fwd.slr_master_n_21\,
      Q(16) => \dual_slr.fwd.slr_master_n_22\,
      Q(15) => \dual_slr.fwd.slr_master_n_23\,
      Q(14) => \dual_slr.fwd.slr_master_n_24\,
      Q(13) => \dual_slr.fwd.slr_master_n_25\,
      Q(12) => \dual_slr.fwd.slr_master_n_26\,
      Q(11) => \dual_slr.fwd.slr_master_n_27\,
      Q(10) => \dual_slr.fwd.slr_master_n_28\,
      Q(9) => \dual_slr.fwd.slr_master_n_29\,
      Q(8) => \dual_slr.fwd.slr_master_n_30\,
      Q(7) => \dual_slr.fwd.slr_master_n_31\,
      Q(6) => \dual_slr.fwd.slr_master_n_32\,
      Q(5) => \dual_slr.fwd.slr_master_n_33\,
      Q(4) => \dual_slr.fwd.slr_master_n_34\,
      Q(3) => \dual_slr.fwd.slr_master_n_35\,
      Q(2) => \dual_slr.fwd.slr_master_n_36\,
      Q(1) => \dual_slr.fwd.slr_master_n_37\,
      Q(0) => \dual_slr.fwd.slr_master_n_38\,
      aclk => aclk,
      aresetn => aresetn,
      \common.ACLEAR\ => \common.ACLEAR\,
      \common.laguna_m_ready_d_reg_0\ => \dual_slr.src_ready\,
      \common.laguna_m_reset_in_d_reg_0\ => \dual_slr.dummy_reset\,
      \dual_slr.src_handshake\ => \dual_slr.src_handshake\,
      \out\ => \dual_slr.src_reset\,
      s_axi_wready => s_axi_wready,
      s_axi_wvalid => s_axi_wvalid
    );
\dual_slr.fwd.slr_slave\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_dest_region_slr__parameterized0\
     port map (
      D(35) => \dual_slr.fwd.slr_master_n_3\,
      D(34) => \dual_slr.fwd.slr_master_n_4\,
      D(33) => \dual_slr.fwd.slr_master_n_5\,
      D(32) => \dual_slr.fwd.slr_master_n_6\,
      D(31) => \dual_slr.fwd.slr_master_n_7\,
      D(30) => \dual_slr.fwd.slr_master_n_8\,
      D(29) => \dual_slr.fwd.slr_master_n_9\,
      D(28) => \dual_slr.fwd.slr_master_n_10\,
      D(27) => \dual_slr.fwd.slr_master_n_11\,
      D(26) => \dual_slr.fwd.slr_master_n_12\,
      D(25) => \dual_slr.fwd.slr_master_n_13\,
      D(24) => \dual_slr.fwd.slr_master_n_14\,
      D(23) => \dual_slr.fwd.slr_master_n_15\,
      D(22) => \dual_slr.fwd.slr_master_n_16\,
      D(21) => \dual_slr.fwd.slr_master_n_17\,
      D(20) => \dual_slr.fwd.slr_master_n_18\,
      D(19) => \dual_slr.fwd.slr_master_n_19\,
      D(18) => \dual_slr.fwd.slr_master_n_20\,
      D(17) => \dual_slr.fwd.slr_master_n_21\,
      D(16) => \dual_slr.fwd.slr_master_n_22\,
      D(15) => \dual_slr.fwd.slr_master_n_23\,
      D(14) => \dual_slr.fwd.slr_master_n_24\,
      D(13) => \dual_slr.fwd.slr_master_n_25\,
      D(12) => \dual_slr.fwd.slr_master_n_26\,
      D(11) => \dual_slr.fwd.slr_master_n_27\,
      D(10) => \dual_slr.fwd.slr_master_n_28\,
      D(9) => \dual_slr.fwd.slr_master_n_29\,
      D(8) => \dual_slr.fwd.slr_master_n_30\,
      D(7) => \dual_slr.fwd.slr_master_n_31\,
      D(6) => \dual_slr.fwd.slr_master_n_32\,
      D(5) => \dual_slr.fwd.slr_master_n_33\,
      D(4) => \dual_slr.fwd.slr_master_n_34\,
      D(3) => \dual_slr.fwd.slr_master_n_35\,
      D(2) => \dual_slr.fwd.slr_master_n_36\,
      D(1) => \dual_slr.fwd.slr_master_n_37\,
      D(0) => \dual_slr.fwd.slr_master_n_38\,
      Q(35 downto 0) => Q(35 downto 0),
      aclk => aclk,
      asyncclear_mvalid_inst => asyncclear_mvalid_inst,
      \common.ACLEAR\ => \common.ACLEAR\,
      \common.laguna_s_ready_i_reg_0\ => \dual_slr.src_ready\,
      \common.laguna_s_reset_in_d_reg_0\ => \dual_slr.src_reset\,
      \dual_slr.src_handshake\ => \dual_slr.src_handshake\,
      m_axi_wready => m_axi_wready,
      \out\ => \dual_slr.dummy_reset\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_multi_slr__parameterized1\ is
  port (
    m_axi_bready : out STD_LOGIC;
    asyncclear_mvalid_inst : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    aclk : in STD_LOGIC;
    \common.ACLEAR\ : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_multi_slr__parameterized1\ : entity is "axi_register_slice_v2_1_26_multi_slr";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_multi_slr__parameterized1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_multi_slr__parameterized1\ is
  signal \dual_slr.dummy_reset\ : STD_LOGIC;
  signal \dual_slr.resp.slr_slave_n_3\ : STD_LOGIC;
  signal \dual_slr.resp.slr_slave_n_4\ : STD_LOGIC;
  signal \dual_slr.src_handshake\ : STD_LOGIC;
  signal \dual_slr.src_ready\ : STD_LOGIC;
  signal \dual_slr.src_reset\ : STD_LOGIC;
begin
\dual_slr.resp.slr_master\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_dest_region_slr__parameterized1\
     port map (
      Q(1) => \dual_slr.resp.slr_slave_n_3\,
      Q(0) => \dual_slr.resp.slr_slave_n_4\,
      aclk => aclk,
      aresetn => aresetn,
      asyncclear_mvalid_inst => asyncclear_mvalid_inst,
      \common.ACLEAR\ => \common.ACLEAR\,
      \common.laguna_s_ready_i_reg_0\ => \dual_slr.src_ready\,
      \common.laguna_s_reset_in_d_reg_0\ => \dual_slr.dummy_reset\,
      \dual_slr.src_handshake\ => \dual_slr.src_handshake\,
      \out\ => \dual_slr.src_reset\,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0)
    );
\dual_slr.resp.slr_slave\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_source_region_slr__parameterized1\
     port map (
      Q(1) => \dual_slr.resp.slr_slave_n_3\,
      Q(0) => \dual_slr.resp.slr_slave_n_4\,
      aclk => aclk,
      \common.ACLEAR\ => \common.ACLEAR\,
      \common.laguna_m_ready_d_reg_0\ => \dual_slr.src_ready\,
      \common.laguna_m_reset_in_d_reg_0\ => \dual_slr.src_reset\,
      \dual_slr.src_handshake\ => \dual_slr.src_handshake\,
      m_axi_bready => m_axi_bready,
      m_axi_bresp(1 downto 0) => m_axi_bresp(1 downto 0),
      m_axi_bvalid => m_axi_bvalid,
      \out\ => \dual_slr.dummy_reset\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_multi_slr__parameterized2\ is
  port (
    \common.ACLEAR\ : out STD_LOGIC;
    m_axi_rready : out STD_LOGIC;
    asyncclear_mvalid_inst : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 33 downto 0 );
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 33 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_multi_slr__parameterized2\ : entity is "axi_register_slice_v2_1_26_multi_slr";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_multi_slr__parameterized2\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_multi_slr__parameterized2\ is
  signal \^common.aclear\ : STD_LOGIC;
  signal \dual_slr.dummy_reset\ : STD_LOGIC;
  signal \dual_slr.resp.slr_slave_n_10\ : STD_LOGIC;
  signal \dual_slr.resp.slr_slave_n_11\ : STD_LOGIC;
  signal \dual_slr.resp.slr_slave_n_12\ : STD_LOGIC;
  signal \dual_slr.resp.slr_slave_n_13\ : STD_LOGIC;
  signal \dual_slr.resp.slr_slave_n_14\ : STD_LOGIC;
  signal \dual_slr.resp.slr_slave_n_15\ : STD_LOGIC;
  signal \dual_slr.resp.slr_slave_n_16\ : STD_LOGIC;
  signal \dual_slr.resp.slr_slave_n_17\ : STD_LOGIC;
  signal \dual_slr.resp.slr_slave_n_18\ : STD_LOGIC;
  signal \dual_slr.resp.slr_slave_n_19\ : STD_LOGIC;
  signal \dual_slr.resp.slr_slave_n_20\ : STD_LOGIC;
  signal \dual_slr.resp.slr_slave_n_21\ : STD_LOGIC;
  signal \dual_slr.resp.slr_slave_n_22\ : STD_LOGIC;
  signal \dual_slr.resp.slr_slave_n_23\ : STD_LOGIC;
  signal \dual_slr.resp.slr_slave_n_24\ : STD_LOGIC;
  signal \dual_slr.resp.slr_slave_n_25\ : STD_LOGIC;
  signal \dual_slr.resp.slr_slave_n_26\ : STD_LOGIC;
  signal \dual_slr.resp.slr_slave_n_27\ : STD_LOGIC;
  signal \dual_slr.resp.slr_slave_n_28\ : STD_LOGIC;
  signal \dual_slr.resp.slr_slave_n_29\ : STD_LOGIC;
  signal \dual_slr.resp.slr_slave_n_3\ : STD_LOGIC;
  signal \dual_slr.resp.slr_slave_n_30\ : STD_LOGIC;
  signal \dual_slr.resp.slr_slave_n_31\ : STD_LOGIC;
  signal \dual_slr.resp.slr_slave_n_32\ : STD_LOGIC;
  signal \dual_slr.resp.slr_slave_n_33\ : STD_LOGIC;
  signal \dual_slr.resp.slr_slave_n_34\ : STD_LOGIC;
  signal \dual_slr.resp.slr_slave_n_35\ : STD_LOGIC;
  signal \dual_slr.resp.slr_slave_n_36\ : STD_LOGIC;
  signal \dual_slr.resp.slr_slave_n_4\ : STD_LOGIC;
  signal \dual_slr.resp.slr_slave_n_5\ : STD_LOGIC;
  signal \dual_slr.resp.slr_slave_n_6\ : STD_LOGIC;
  signal \dual_slr.resp.slr_slave_n_7\ : STD_LOGIC;
  signal \dual_slr.resp.slr_slave_n_8\ : STD_LOGIC;
  signal \dual_slr.resp.slr_slave_n_9\ : STD_LOGIC;
  signal \dual_slr.src_handshake\ : STD_LOGIC;
  signal \dual_slr.src_ready\ : STD_LOGIC;
  signal \dual_slr.src_reset\ : STD_LOGIC;
begin
  \common.ACLEAR\ <= \^common.aclear\;
\dual_slr.resp.slr_master\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_dest_region_slr__parameterized2\
     port map (
      Q(33) => \dual_slr.resp.slr_slave_n_3\,
      Q(32) => \dual_slr.resp.slr_slave_n_4\,
      Q(31) => \dual_slr.resp.slr_slave_n_5\,
      Q(30) => \dual_slr.resp.slr_slave_n_6\,
      Q(29) => \dual_slr.resp.slr_slave_n_7\,
      Q(28) => \dual_slr.resp.slr_slave_n_8\,
      Q(27) => \dual_slr.resp.slr_slave_n_9\,
      Q(26) => \dual_slr.resp.slr_slave_n_10\,
      Q(25) => \dual_slr.resp.slr_slave_n_11\,
      Q(24) => \dual_slr.resp.slr_slave_n_12\,
      Q(23) => \dual_slr.resp.slr_slave_n_13\,
      Q(22) => \dual_slr.resp.slr_slave_n_14\,
      Q(21) => \dual_slr.resp.slr_slave_n_15\,
      Q(20) => \dual_slr.resp.slr_slave_n_16\,
      Q(19) => \dual_slr.resp.slr_slave_n_17\,
      Q(18) => \dual_slr.resp.slr_slave_n_18\,
      Q(17) => \dual_slr.resp.slr_slave_n_19\,
      Q(16) => \dual_slr.resp.slr_slave_n_20\,
      Q(15) => \dual_slr.resp.slr_slave_n_21\,
      Q(14) => \dual_slr.resp.slr_slave_n_22\,
      Q(13) => \dual_slr.resp.slr_slave_n_23\,
      Q(12) => \dual_slr.resp.slr_slave_n_24\,
      Q(11) => \dual_slr.resp.slr_slave_n_25\,
      Q(10) => \dual_slr.resp.slr_slave_n_26\,
      Q(9) => \dual_slr.resp.slr_slave_n_27\,
      Q(8) => \dual_slr.resp.slr_slave_n_28\,
      Q(7) => \dual_slr.resp.slr_slave_n_29\,
      Q(6) => \dual_slr.resp.slr_slave_n_30\,
      Q(5) => \dual_slr.resp.slr_slave_n_31\,
      Q(4) => \dual_slr.resp.slr_slave_n_32\,
      Q(3) => \dual_slr.resp.slr_slave_n_33\,
      Q(2) => \dual_slr.resp.slr_slave_n_34\,
      Q(1) => \dual_slr.resp.slr_slave_n_35\,
      Q(0) => \dual_slr.resp.slr_slave_n_36\,
      aclk => aclk,
      aresetn => aresetn,
      aresetn_0 => \^common.aclear\,
      asyncclear_mvalid_inst => asyncclear_mvalid_inst,
      \common.laguna_s_ready_i_reg_0\ => \dual_slr.src_ready\,
      \common.laguna_s_reset_in_d_reg_0\ => \dual_slr.dummy_reset\,
      \dual_slr.src_handshake\ => \dual_slr.src_handshake\,
      \mesg_reg_reg[33]\(33 downto 0) => Q(33 downto 0),
      \out\ => \dual_slr.src_reset\,
      s_axi_rready => s_axi_rready
    );
\dual_slr.resp.slr_slave\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_source_region_slr__parameterized2\
     port map (
      D(33 downto 0) => D(33 downto 0),
      Q(33) => \dual_slr.resp.slr_slave_n_3\,
      Q(32) => \dual_slr.resp.slr_slave_n_4\,
      Q(31) => \dual_slr.resp.slr_slave_n_5\,
      Q(30) => \dual_slr.resp.slr_slave_n_6\,
      Q(29) => \dual_slr.resp.slr_slave_n_7\,
      Q(28) => \dual_slr.resp.slr_slave_n_8\,
      Q(27) => \dual_slr.resp.slr_slave_n_9\,
      Q(26) => \dual_slr.resp.slr_slave_n_10\,
      Q(25) => \dual_slr.resp.slr_slave_n_11\,
      Q(24) => \dual_slr.resp.slr_slave_n_12\,
      Q(23) => \dual_slr.resp.slr_slave_n_13\,
      Q(22) => \dual_slr.resp.slr_slave_n_14\,
      Q(21) => \dual_slr.resp.slr_slave_n_15\,
      Q(20) => \dual_slr.resp.slr_slave_n_16\,
      Q(19) => \dual_slr.resp.slr_slave_n_17\,
      Q(18) => \dual_slr.resp.slr_slave_n_18\,
      Q(17) => \dual_slr.resp.slr_slave_n_19\,
      Q(16) => \dual_slr.resp.slr_slave_n_20\,
      Q(15) => \dual_slr.resp.slr_slave_n_21\,
      Q(14) => \dual_slr.resp.slr_slave_n_22\,
      Q(13) => \dual_slr.resp.slr_slave_n_23\,
      Q(12) => \dual_slr.resp.slr_slave_n_24\,
      Q(11) => \dual_slr.resp.slr_slave_n_25\,
      Q(10) => \dual_slr.resp.slr_slave_n_26\,
      Q(9) => \dual_slr.resp.slr_slave_n_27\,
      Q(8) => \dual_slr.resp.slr_slave_n_28\,
      Q(7) => \dual_slr.resp.slr_slave_n_29\,
      Q(6) => \dual_slr.resp.slr_slave_n_30\,
      Q(5) => \dual_slr.resp.slr_slave_n_31\,
      Q(4) => \dual_slr.resp.slr_slave_n_32\,
      Q(3) => \dual_slr.resp.slr_slave_n_33\,
      Q(2) => \dual_slr.resp.slr_slave_n_34\,
      Q(1) => \dual_slr.resp.slr_slave_n_35\,
      Q(0) => \dual_slr.resp.slr_slave_n_36\,
      aclk => aclk,
      \common.ACLEAR\ => \^common.aclear\,
      \common.laguna_m_ready_d_reg_0\ => \dual_slr.src_ready\,
      \common.laguna_m_reset_in_d_reg_0\ => \dual_slr.src_reset\,
      \dual_slr.src_handshake\ => \dual_slr.src_handshake\,
      m_axi_rready => m_axi_rready,
      m_axi_rvalid => m_axi_rvalid,
      \out\ => \dual_slr.dummy_reset\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice is
  port (
    aclk : in STD_LOGIC;
    aclk2x : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 24 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_buser : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 24 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_ruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 24 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_buser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 24 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_aruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_ruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 25;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 32;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 1;
  attribute C_AXI_PROTOCOL : integer;
  attribute C_AXI_PROTOCOL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 2;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 1;
  attribute C_AXI_SUPPORTS_REGION_SIGNALS : integer;
  attribute C_AXI_SUPPORTS_REGION_SIGNALS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 0;
  attribute C_AXI_SUPPORTS_USER_SIGNALS : integer;
  attribute C_AXI_SUPPORTS_USER_SIGNALS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 0;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 1;
  attribute C_FAMILY : string;
  attribute C_FAMILY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is "virtexuplus";
  attribute C_NUM_SLR_CROSSINGS : integer;
  attribute C_NUM_SLR_CROSSINGS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 1;
  attribute C_PIPELINES_MASTER_AR : integer;
  attribute C_PIPELINES_MASTER_AR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 0;
  attribute C_PIPELINES_MASTER_AW : integer;
  attribute C_PIPELINES_MASTER_AW of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 0;
  attribute C_PIPELINES_MASTER_B : integer;
  attribute C_PIPELINES_MASTER_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 0;
  attribute C_PIPELINES_MASTER_R : integer;
  attribute C_PIPELINES_MASTER_R of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 0;
  attribute C_PIPELINES_MASTER_W : integer;
  attribute C_PIPELINES_MASTER_W of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 0;
  attribute C_PIPELINES_MIDDLE_AR : integer;
  attribute C_PIPELINES_MIDDLE_AR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 0;
  attribute C_PIPELINES_MIDDLE_AW : integer;
  attribute C_PIPELINES_MIDDLE_AW of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 0;
  attribute C_PIPELINES_MIDDLE_B : integer;
  attribute C_PIPELINES_MIDDLE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 0;
  attribute C_PIPELINES_MIDDLE_R : integer;
  attribute C_PIPELINES_MIDDLE_R of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 0;
  attribute C_PIPELINES_MIDDLE_W : integer;
  attribute C_PIPELINES_MIDDLE_W of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 0;
  attribute C_PIPELINES_SLAVE_AR : integer;
  attribute C_PIPELINES_SLAVE_AR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 0;
  attribute C_PIPELINES_SLAVE_AW : integer;
  attribute C_PIPELINES_SLAVE_AW of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 0;
  attribute C_PIPELINES_SLAVE_B : integer;
  attribute C_PIPELINES_SLAVE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 0;
  attribute C_PIPELINES_SLAVE_R : integer;
  attribute C_PIPELINES_SLAVE_R of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 0;
  attribute C_PIPELINES_SLAVE_W : integer;
  attribute C_PIPELINES_SLAVE_W of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 0;
  attribute C_REG_CONFIG_AR : integer;
  attribute C_REG_CONFIG_AR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 15;
  attribute C_REG_CONFIG_AW : integer;
  attribute C_REG_CONFIG_AW of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 15;
  attribute C_REG_CONFIG_B : integer;
  attribute C_REG_CONFIG_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 15;
  attribute C_REG_CONFIG_R : integer;
  attribute C_REG_CONFIG_R of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 15;
  attribute C_REG_CONFIG_W : integer;
  attribute C_REG_CONFIG_W of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 15;
  attribute C_RESERVE_MODE : integer;
  attribute C_RESERVE_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 0;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is "yes";
  attribute G_AXI_ARADDR_INDEX : integer;
  attribute G_AXI_ARADDR_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 0;
  attribute G_AXI_ARADDR_WIDTH : integer;
  attribute G_AXI_ARADDR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 25;
  attribute G_AXI_ARBURST_INDEX : integer;
  attribute G_AXI_ARBURST_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 28;
  attribute G_AXI_ARBURST_WIDTH : integer;
  attribute G_AXI_ARBURST_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 0;
  attribute G_AXI_ARCACHE_INDEX : integer;
  attribute G_AXI_ARCACHE_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 28;
  attribute G_AXI_ARCACHE_WIDTH : integer;
  attribute G_AXI_ARCACHE_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 0;
  attribute G_AXI_ARID_INDEX : integer;
  attribute G_AXI_ARID_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 28;
  attribute G_AXI_ARID_WIDTH : integer;
  attribute G_AXI_ARID_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 0;
  attribute G_AXI_ARLEN_INDEX : integer;
  attribute G_AXI_ARLEN_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 28;
  attribute G_AXI_ARLEN_WIDTH : integer;
  attribute G_AXI_ARLEN_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 0;
  attribute G_AXI_ARLOCK_INDEX : integer;
  attribute G_AXI_ARLOCK_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 28;
  attribute G_AXI_ARLOCK_WIDTH : integer;
  attribute G_AXI_ARLOCK_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 0;
  attribute G_AXI_ARPAYLOAD_WIDTH : integer;
  attribute G_AXI_ARPAYLOAD_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 28;
  attribute G_AXI_ARPROT_INDEX : integer;
  attribute G_AXI_ARPROT_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 25;
  attribute G_AXI_ARPROT_WIDTH : integer;
  attribute G_AXI_ARPROT_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 3;
  attribute G_AXI_ARQOS_INDEX : integer;
  attribute G_AXI_ARQOS_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 28;
  attribute G_AXI_ARQOS_WIDTH : integer;
  attribute G_AXI_ARQOS_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 0;
  attribute G_AXI_ARREGION_INDEX : integer;
  attribute G_AXI_ARREGION_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 28;
  attribute G_AXI_ARREGION_WIDTH : integer;
  attribute G_AXI_ARREGION_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 0;
  attribute G_AXI_ARSIZE_INDEX : integer;
  attribute G_AXI_ARSIZE_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 28;
  attribute G_AXI_ARSIZE_WIDTH : integer;
  attribute G_AXI_ARSIZE_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 0;
  attribute G_AXI_ARUSER_INDEX : integer;
  attribute G_AXI_ARUSER_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 28;
  attribute G_AXI_ARUSER_WIDTH : integer;
  attribute G_AXI_ARUSER_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 0;
  attribute G_AXI_AWADDR_INDEX : integer;
  attribute G_AXI_AWADDR_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 0;
  attribute G_AXI_AWADDR_WIDTH : integer;
  attribute G_AXI_AWADDR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 25;
  attribute G_AXI_AWBURST_INDEX : integer;
  attribute G_AXI_AWBURST_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 28;
  attribute G_AXI_AWBURST_WIDTH : integer;
  attribute G_AXI_AWBURST_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 0;
  attribute G_AXI_AWCACHE_INDEX : integer;
  attribute G_AXI_AWCACHE_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 28;
  attribute G_AXI_AWCACHE_WIDTH : integer;
  attribute G_AXI_AWCACHE_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 0;
  attribute G_AXI_AWID_INDEX : integer;
  attribute G_AXI_AWID_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 28;
  attribute G_AXI_AWID_WIDTH : integer;
  attribute G_AXI_AWID_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 0;
  attribute G_AXI_AWLEN_INDEX : integer;
  attribute G_AXI_AWLEN_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 28;
  attribute G_AXI_AWLEN_WIDTH : integer;
  attribute G_AXI_AWLEN_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 0;
  attribute G_AXI_AWLOCK_INDEX : integer;
  attribute G_AXI_AWLOCK_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 28;
  attribute G_AXI_AWLOCK_WIDTH : integer;
  attribute G_AXI_AWLOCK_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 0;
  attribute G_AXI_AWPAYLOAD_WIDTH : integer;
  attribute G_AXI_AWPAYLOAD_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 28;
  attribute G_AXI_AWPROT_INDEX : integer;
  attribute G_AXI_AWPROT_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 25;
  attribute G_AXI_AWPROT_WIDTH : integer;
  attribute G_AXI_AWPROT_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 3;
  attribute G_AXI_AWQOS_INDEX : integer;
  attribute G_AXI_AWQOS_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 28;
  attribute G_AXI_AWQOS_WIDTH : integer;
  attribute G_AXI_AWQOS_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 0;
  attribute G_AXI_AWREGION_INDEX : integer;
  attribute G_AXI_AWREGION_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 28;
  attribute G_AXI_AWREGION_WIDTH : integer;
  attribute G_AXI_AWREGION_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 0;
  attribute G_AXI_AWSIZE_INDEX : integer;
  attribute G_AXI_AWSIZE_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 28;
  attribute G_AXI_AWSIZE_WIDTH : integer;
  attribute G_AXI_AWSIZE_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 0;
  attribute G_AXI_AWUSER_INDEX : integer;
  attribute G_AXI_AWUSER_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 28;
  attribute G_AXI_AWUSER_WIDTH : integer;
  attribute G_AXI_AWUSER_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 0;
  attribute G_AXI_BID_INDEX : integer;
  attribute G_AXI_BID_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 2;
  attribute G_AXI_BID_WIDTH : integer;
  attribute G_AXI_BID_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 0;
  attribute G_AXI_BPAYLOAD_WIDTH : integer;
  attribute G_AXI_BPAYLOAD_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 2;
  attribute G_AXI_BRESP_INDEX : integer;
  attribute G_AXI_BRESP_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 0;
  attribute G_AXI_BRESP_WIDTH : integer;
  attribute G_AXI_BRESP_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 2;
  attribute G_AXI_BUSER_INDEX : integer;
  attribute G_AXI_BUSER_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 2;
  attribute G_AXI_BUSER_WIDTH : integer;
  attribute G_AXI_BUSER_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 0;
  attribute G_AXI_RDATA_INDEX : integer;
  attribute G_AXI_RDATA_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 0;
  attribute G_AXI_RDATA_WIDTH : integer;
  attribute G_AXI_RDATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 32;
  attribute G_AXI_RID_INDEX : integer;
  attribute G_AXI_RID_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 34;
  attribute G_AXI_RID_WIDTH : integer;
  attribute G_AXI_RID_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 0;
  attribute G_AXI_RLAST_INDEX : integer;
  attribute G_AXI_RLAST_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 34;
  attribute G_AXI_RLAST_WIDTH : integer;
  attribute G_AXI_RLAST_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 0;
  attribute G_AXI_RPAYLOAD_WIDTH : integer;
  attribute G_AXI_RPAYLOAD_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 34;
  attribute G_AXI_RRESP_INDEX : integer;
  attribute G_AXI_RRESP_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 32;
  attribute G_AXI_RRESP_WIDTH : integer;
  attribute G_AXI_RRESP_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 2;
  attribute G_AXI_RUSER_INDEX : integer;
  attribute G_AXI_RUSER_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 34;
  attribute G_AXI_RUSER_WIDTH : integer;
  attribute G_AXI_RUSER_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 0;
  attribute G_AXI_WDATA_INDEX : integer;
  attribute G_AXI_WDATA_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 0;
  attribute G_AXI_WDATA_WIDTH : integer;
  attribute G_AXI_WDATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 32;
  attribute G_AXI_WID_INDEX : integer;
  attribute G_AXI_WID_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 36;
  attribute G_AXI_WID_WIDTH : integer;
  attribute G_AXI_WID_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 0;
  attribute G_AXI_WLAST_INDEX : integer;
  attribute G_AXI_WLAST_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 36;
  attribute G_AXI_WLAST_WIDTH : integer;
  attribute G_AXI_WLAST_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 0;
  attribute G_AXI_WPAYLOAD_WIDTH : integer;
  attribute G_AXI_WPAYLOAD_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 36;
  attribute G_AXI_WSTRB_INDEX : integer;
  attribute G_AXI_WSTRB_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 32;
  attribute G_AXI_WSTRB_WIDTH : integer;
  attribute G_AXI_WSTRB_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 4;
  attribute G_AXI_WUSER_INDEX : integer;
  attribute G_AXI_WUSER_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 36;
  attribute G_AXI_WUSER_WIDTH : integer;
  attribute G_AXI_WUSER_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 0;
  attribute P_FORWARD : integer;
  attribute P_FORWARD of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 0;
  attribute P_RESPONSE : integer;
  attribute P_RESPONSE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice : entity is 1;
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice is
  signal \<const0>\ : STD_LOGIC;
  signal \dual_slr.resp.slr_master/common.ACLEAR\ : STD_LOGIC;
begin
  m_axi_arburst(1) <= \<const0>\;
  m_axi_arburst(0) <= \<const0>\;
  m_axi_arcache(3) <= \<const0>\;
  m_axi_arcache(2) <= \<const0>\;
  m_axi_arcache(1) <= \<const0>\;
  m_axi_arcache(0) <= \<const0>\;
  m_axi_arid(0) <= \<const0>\;
  m_axi_arlen(7) <= \<const0>\;
  m_axi_arlen(6) <= \<const0>\;
  m_axi_arlen(5) <= \<const0>\;
  m_axi_arlen(4) <= \<const0>\;
  m_axi_arlen(3) <= \<const0>\;
  m_axi_arlen(2) <= \<const0>\;
  m_axi_arlen(1) <= \<const0>\;
  m_axi_arlen(0) <= \<const0>\;
  m_axi_arlock(0) <= \<const0>\;
  m_axi_arqos(3) <= \<const0>\;
  m_axi_arqos(2) <= \<const0>\;
  m_axi_arqos(1) <= \<const0>\;
  m_axi_arqos(0) <= \<const0>\;
  m_axi_arregion(3) <= \<const0>\;
  m_axi_arregion(2) <= \<const0>\;
  m_axi_arregion(1) <= \<const0>\;
  m_axi_arregion(0) <= \<const0>\;
  m_axi_arsize(2) <= \<const0>\;
  m_axi_arsize(1) <= \<const0>\;
  m_axi_arsize(0) <= \<const0>\;
  m_axi_aruser(0) <= \<const0>\;
  m_axi_awburst(1) <= \<const0>\;
  m_axi_awburst(0) <= \<const0>\;
  m_axi_awcache(3) <= \<const0>\;
  m_axi_awcache(2) <= \<const0>\;
  m_axi_awcache(1) <= \<const0>\;
  m_axi_awcache(0) <= \<const0>\;
  m_axi_awid(0) <= \<const0>\;
  m_axi_awlen(7) <= \<const0>\;
  m_axi_awlen(6) <= \<const0>\;
  m_axi_awlen(5) <= \<const0>\;
  m_axi_awlen(4) <= \<const0>\;
  m_axi_awlen(3) <= \<const0>\;
  m_axi_awlen(2) <= \<const0>\;
  m_axi_awlen(1) <= \<const0>\;
  m_axi_awlen(0) <= \<const0>\;
  m_axi_awlock(0) <= \<const0>\;
  m_axi_awqos(3) <= \<const0>\;
  m_axi_awqos(2) <= \<const0>\;
  m_axi_awqos(1) <= \<const0>\;
  m_axi_awqos(0) <= \<const0>\;
  m_axi_awregion(3) <= \<const0>\;
  m_axi_awregion(2) <= \<const0>\;
  m_axi_awregion(1) <= \<const0>\;
  m_axi_awregion(0) <= \<const0>\;
  m_axi_awsize(2) <= \<const0>\;
  m_axi_awsize(1) <= \<const0>\;
  m_axi_awsize(0) <= \<const0>\;
  m_axi_awuser(0) <= \<const0>\;
  m_axi_wid(0) <= \<const0>\;
  m_axi_wlast <= \<const0>\;
  m_axi_wuser(0) <= \<const0>\;
  s_axi_bid(0) <= \<const0>\;
  s_axi_buser(0) <= \<const0>\;
  s_axi_rid(0) <= \<const0>\;
  s_axi_rlast <= \<const0>\;
  s_axi_ruser(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\ar15.ar_multi\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_multi_slr
     port map (
      D(27 downto 25) => s_axi_arprot(2 downto 0),
      D(24 downto 0) => s_axi_araddr(24 downto 0),
      Q(27 downto 25) => m_axi_arprot(2 downto 0),
      Q(24 downto 0) => m_axi_araddr(24 downto 0),
      aclk => aclk,
      aresetn => aresetn,
      asyncclear_mvalid_inst => m_axi_arvalid,
      \common.ACLEAR\ => \dual_slr.resp.slr_master/common.ACLEAR\,
      m_axi_arready => m_axi_arready,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid
    );
\aw15.aw_multi\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_multi_slr_0
     port map (
      D(27 downto 25) => s_axi_awprot(2 downto 0),
      D(24 downto 0) => s_axi_awaddr(24 downto 0),
      Q(27 downto 25) => m_axi_awprot(2 downto 0),
      Q(24 downto 0) => m_axi_awaddr(24 downto 0),
      aclk => aclk,
      aresetn => aresetn,
      asyncclear_mvalid_inst => m_axi_awvalid,
      \common.ACLEAR\ => \dual_slr.resp.slr_master/common.ACLEAR\,
      m_axi_awready => m_axi_awready,
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid
    );
\b15.b_multi\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_multi_slr__parameterized1\
     port map (
      aclk => aclk,
      aresetn => aresetn,
      asyncclear_mvalid_inst => s_axi_bvalid,
      \common.ACLEAR\ => \dual_slr.resp.slr_master/common.ACLEAR\,
      m_axi_bready => m_axi_bready,
      m_axi_bresp(1 downto 0) => m_axi_bresp(1 downto 0),
      m_axi_bvalid => m_axi_bvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0)
    );
\r15.r_multi\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_multi_slr__parameterized2\
     port map (
      D(33 downto 32) => m_axi_rresp(1 downto 0),
      D(31 downto 0) => m_axi_rdata(31 downto 0),
      Q(33 downto 32) => s_axi_rresp(1 downto 0),
      Q(31 downto 0) => s_axi_rdata(31 downto 0),
      aclk => aclk,
      aresetn => aresetn,
      asyncclear_mvalid_inst => s_axi_rvalid,
      \common.ACLEAR\ => \dual_slr.resp.slr_master/common.ACLEAR\,
      m_axi_rready => m_axi_rready,
      m_axi_rvalid => m_axi_rvalid,
      s_axi_rready => s_axi_rready
    );
\w15.w_multi\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_multi_slr__parameterized0\
     port map (
      D(35 downto 32) => s_axi_wstrb(3 downto 0),
      D(31 downto 0) => s_axi_wdata(31 downto 0),
      Q(35 downto 32) => m_axi_wstrb(3 downto 0),
      Q(31 downto 0) => m_axi_wdata(31 downto 0),
      aclk => aclk,
      aresetn => aresetn,
      asyncclear_mvalid_inst => m_axi_wvalid,
      \common.ACLEAR\ => \dual_slr.resp.slr_master/common.ACLEAR\,
      m_axi_wready => m_axi_wready,
      s_axi_wready => s_axi_wready,
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 24 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 24 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 24 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 24 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "ulp_ip_rs_axi_ctrl_user_03_0,axi_register_slice_v2_1_26_axi_register_slice,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "axi_register_slice_v2_1_26_axi_register_slice,Vivado 2022.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal NLW_inst_m_axi_wlast_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_s_axi_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_m_axi_arburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_m_axi_arcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_arid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_arlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_m_axi_arlock_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_arqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_arsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_m_axi_aruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_awburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_m_axi_awcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_awid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_awlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_m_axi_awlock_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_awqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_awsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_m_axi_awuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_wid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_wuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_s_axi_buser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_s_axi_ruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of inst : label is 25;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of inst : label is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of inst : label is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of inst : label is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of inst : label is 32;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of inst : label is 1;
  attribute C_AXI_PROTOCOL : integer;
  attribute C_AXI_PROTOCOL of inst : label is 2;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of inst : label is 1;
  attribute C_AXI_SUPPORTS_REGION_SIGNALS : integer;
  attribute C_AXI_SUPPORTS_REGION_SIGNALS of inst : label is 0;
  attribute C_AXI_SUPPORTS_USER_SIGNALS : integer;
  attribute C_AXI_SUPPORTS_USER_SIGNALS of inst : label is 0;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of inst : label is 1;
  attribute C_FAMILY : string;
  attribute C_FAMILY of inst : label is "virtexuplus";
  attribute C_NUM_SLR_CROSSINGS : integer;
  attribute C_NUM_SLR_CROSSINGS of inst : label is 1;
  attribute C_PIPELINES_MASTER_AR : integer;
  attribute C_PIPELINES_MASTER_AR of inst : label is 0;
  attribute C_PIPELINES_MASTER_AW : integer;
  attribute C_PIPELINES_MASTER_AW of inst : label is 0;
  attribute C_PIPELINES_MASTER_B : integer;
  attribute C_PIPELINES_MASTER_B of inst : label is 0;
  attribute C_PIPELINES_MASTER_R : integer;
  attribute C_PIPELINES_MASTER_R of inst : label is 0;
  attribute C_PIPELINES_MASTER_W : integer;
  attribute C_PIPELINES_MASTER_W of inst : label is 0;
  attribute C_PIPELINES_MIDDLE_AR : integer;
  attribute C_PIPELINES_MIDDLE_AR of inst : label is 0;
  attribute C_PIPELINES_MIDDLE_AW : integer;
  attribute C_PIPELINES_MIDDLE_AW of inst : label is 0;
  attribute C_PIPELINES_MIDDLE_B : integer;
  attribute C_PIPELINES_MIDDLE_B of inst : label is 0;
  attribute C_PIPELINES_MIDDLE_R : integer;
  attribute C_PIPELINES_MIDDLE_R of inst : label is 0;
  attribute C_PIPELINES_MIDDLE_W : integer;
  attribute C_PIPELINES_MIDDLE_W of inst : label is 0;
  attribute C_PIPELINES_SLAVE_AR : integer;
  attribute C_PIPELINES_SLAVE_AR of inst : label is 0;
  attribute C_PIPELINES_SLAVE_AW : integer;
  attribute C_PIPELINES_SLAVE_AW of inst : label is 0;
  attribute C_PIPELINES_SLAVE_B : integer;
  attribute C_PIPELINES_SLAVE_B of inst : label is 0;
  attribute C_PIPELINES_SLAVE_R : integer;
  attribute C_PIPELINES_SLAVE_R of inst : label is 0;
  attribute C_PIPELINES_SLAVE_W : integer;
  attribute C_PIPELINES_SLAVE_W of inst : label is 0;
  attribute C_REG_CONFIG_AR : integer;
  attribute C_REG_CONFIG_AR of inst : label is 15;
  attribute C_REG_CONFIG_AW : integer;
  attribute C_REG_CONFIG_AW of inst : label is 15;
  attribute C_REG_CONFIG_B : integer;
  attribute C_REG_CONFIG_B of inst : label is 15;
  attribute C_REG_CONFIG_R : integer;
  attribute C_REG_CONFIG_R of inst : label is 15;
  attribute C_REG_CONFIG_W : integer;
  attribute C_REG_CONFIG_W of inst : label is 15;
  attribute C_RESERVE_MODE : integer;
  attribute C_RESERVE_MODE of inst : label is 0;
  attribute DowngradeIPIdentifiedWarnings of inst : label is "yes";
  attribute G_AXI_ARADDR_INDEX : integer;
  attribute G_AXI_ARADDR_INDEX of inst : label is 0;
  attribute G_AXI_ARADDR_WIDTH : integer;
  attribute G_AXI_ARADDR_WIDTH of inst : label is 25;
  attribute G_AXI_ARBURST_INDEX : integer;
  attribute G_AXI_ARBURST_INDEX of inst : label is 28;
  attribute G_AXI_ARBURST_WIDTH : integer;
  attribute G_AXI_ARBURST_WIDTH of inst : label is 0;
  attribute G_AXI_ARCACHE_INDEX : integer;
  attribute G_AXI_ARCACHE_INDEX of inst : label is 28;
  attribute G_AXI_ARCACHE_WIDTH : integer;
  attribute G_AXI_ARCACHE_WIDTH of inst : label is 0;
  attribute G_AXI_ARID_INDEX : integer;
  attribute G_AXI_ARID_INDEX of inst : label is 28;
  attribute G_AXI_ARID_WIDTH : integer;
  attribute G_AXI_ARID_WIDTH of inst : label is 0;
  attribute G_AXI_ARLEN_INDEX : integer;
  attribute G_AXI_ARLEN_INDEX of inst : label is 28;
  attribute G_AXI_ARLEN_WIDTH : integer;
  attribute G_AXI_ARLEN_WIDTH of inst : label is 0;
  attribute G_AXI_ARLOCK_INDEX : integer;
  attribute G_AXI_ARLOCK_INDEX of inst : label is 28;
  attribute G_AXI_ARLOCK_WIDTH : integer;
  attribute G_AXI_ARLOCK_WIDTH of inst : label is 0;
  attribute G_AXI_ARPAYLOAD_WIDTH : integer;
  attribute G_AXI_ARPAYLOAD_WIDTH of inst : label is 28;
  attribute G_AXI_ARPROT_INDEX : integer;
  attribute G_AXI_ARPROT_INDEX of inst : label is 25;
  attribute G_AXI_ARPROT_WIDTH : integer;
  attribute G_AXI_ARPROT_WIDTH of inst : label is 3;
  attribute G_AXI_ARQOS_INDEX : integer;
  attribute G_AXI_ARQOS_INDEX of inst : label is 28;
  attribute G_AXI_ARQOS_WIDTH : integer;
  attribute G_AXI_ARQOS_WIDTH of inst : label is 0;
  attribute G_AXI_ARREGION_INDEX : integer;
  attribute G_AXI_ARREGION_INDEX of inst : label is 28;
  attribute G_AXI_ARREGION_WIDTH : integer;
  attribute G_AXI_ARREGION_WIDTH of inst : label is 0;
  attribute G_AXI_ARSIZE_INDEX : integer;
  attribute G_AXI_ARSIZE_INDEX of inst : label is 28;
  attribute G_AXI_ARSIZE_WIDTH : integer;
  attribute G_AXI_ARSIZE_WIDTH of inst : label is 0;
  attribute G_AXI_ARUSER_INDEX : integer;
  attribute G_AXI_ARUSER_INDEX of inst : label is 28;
  attribute G_AXI_ARUSER_WIDTH : integer;
  attribute G_AXI_ARUSER_WIDTH of inst : label is 0;
  attribute G_AXI_AWADDR_INDEX : integer;
  attribute G_AXI_AWADDR_INDEX of inst : label is 0;
  attribute G_AXI_AWADDR_WIDTH : integer;
  attribute G_AXI_AWADDR_WIDTH of inst : label is 25;
  attribute G_AXI_AWBURST_INDEX : integer;
  attribute G_AXI_AWBURST_INDEX of inst : label is 28;
  attribute G_AXI_AWBURST_WIDTH : integer;
  attribute G_AXI_AWBURST_WIDTH of inst : label is 0;
  attribute G_AXI_AWCACHE_INDEX : integer;
  attribute G_AXI_AWCACHE_INDEX of inst : label is 28;
  attribute G_AXI_AWCACHE_WIDTH : integer;
  attribute G_AXI_AWCACHE_WIDTH of inst : label is 0;
  attribute G_AXI_AWID_INDEX : integer;
  attribute G_AXI_AWID_INDEX of inst : label is 28;
  attribute G_AXI_AWID_WIDTH : integer;
  attribute G_AXI_AWID_WIDTH of inst : label is 0;
  attribute G_AXI_AWLEN_INDEX : integer;
  attribute G_AXI_AWLEN_INDEX of inst : label is 28;
  attribute G_AXI_AWLEN_WIDTH : integer;
  attribute G_AXI_AWLEN_WIDTH of inst : label is 0;
  attribute G_AXI_AWLOCK_INDEX : integer;
  attribute G_AXI_AWLOCK_INDEX of inst : label is 28;
  attribute G_AXI_AWLOCK_WIDTH : integer;
  attribute G_AXI_AWLOCK_WIDTH of inst : label is 0;
  attribute G_AXI_AWPAYLOAD_WIDTH : integer;
  attribute G_AXI_AWPAYLOAD_WIDTH of inst : label is 28;
  attribute G_AXI_AWPROT_INDEX : integer;
  attribute G_AXI_AWPROT_INDEX of inst : label is 25;
  attribute G_AXI_AWPROT_WIDTH : integer;
  attribute G_AXI_AWPROT_WIDTH of inst : label is 3;
  attribute G_AXI_AWQOS_INDEX : integer;
  attribute G_AXI_AWQOS_INDEX of inst : label is 28;
  attribute G_AXI_AWQOS_WIDTH : integer;
  attribute G_AXI_AWQOS_WIDTH of inst : label is 0;
  attribute G_AXI_AWREGION_INDEX : integer;
  attribute G_AXI_AWREGION_INDEX of inst : label is 28;
  attribute G_AXI_AWREGION_WIDTH : integer;
  attribute G_AXI_AWREGION_WIDTH of inst : label is 0;
  attribute G_AXI_AWSIZE_INDEX : integer;
  attribute G_AXI_AWSIZE_INDEX of inst : label is 28;
  attribute G_AXI_AWSIZE_WIDTH : integer;
  attribute G_AXI_AWSIZE_WIDTH of inst : label is 0;
  attribute G_AXI_AWUSER_INDEX : integer;
  attribute G_AXI_AWUSER_INDEX of inst : label is 28;
  attribute G_AXI_AWUSER_WIDTH : integer;
  attribute G_AXI_AWUSER_WIDTH of inst : label is 0;
  attribute G_AXI_BID_INDEX : integer;
  attribute G_AXI_BID_INDEX of inst : label is 2;
  attribute G_AXI_BID_WIDTH : integer;
  attribute G_AXI_BID_WIDTH of inst : label is 0;
  attribute G_AXI_BPAYLOAD_WIDTH : integer;
  attribute G_AXI_BPAYLOAD_WIDTH of inst : label is 2;
  attribute G_AXI_BRESP_INDEX : integer;
  attribute G_AXI_BRESP_INDEX of inst : label is 0;
  attribute G_AXI_BRESP_WIDTH : integer;
  attribute G_AXI_BRESP_WIDTH of inst : label is 2;
  attribute G_AXI_BUSER_INDEX : integer;
  attribute G_AXI_BUSER_INDEX of inst : label is 2;
  attribute G_AXI_BUSER_WIDTH : integer;
  attribute G_AXI_BUSER_WIDTH of inst : label is 0;
  attribute G_AXI_RDATA_INDEX : integer;
  attribute G_AXI_RDATA_INDEX of inst : label is 0;
  attribute G_AXI_RDATA_WIDTH : integer;
  attribute G_AXI_RDATA_WIDTH of inst : label is 32;
  attribute G_AXI_RID_INDEX : integer;
  attribute G_AXI_RID_INDEX of inst : label is 34;
  attribute G_AXI_RID_WIDTH : integer;
  attribute G_AXI_RID_WIDTH of inst : label is 0;
  attribute G_AXI_RLAST_INDEX : integer;
  attribute G_AXI_RLAST_INDEX of inst : label is 34;
  attribute G_AXI_RLAST_WIDTH : integer;
  attribute G_AXI_RLAST_WIDTH of inst : label is 0;
  attribute G_AXI_RPAYLOAD_WIDTH : integer;
  attribute G_AXI_RPAYLOAD_WIDTH of inst : label is 34;
  attribute G_AXI_RRESP_INDEX : integer;
  attribute G_AXI_RRESP_INDEX of inst : label is 32;
  attribute G_AXI_RRESP_WIDTH : integer;
  attribute G_AXI_RRESP_WIDTH of inst : label is 2;
  attribute G_AXI_RUSER_INDEX : integer;
  attribute G_AXI_RUSER_INDEX of inst : label is 34;
  attribute G_AXI_RUSER_WIDTH : integer;
  attribute G_AXI_RUSER_WIDTH of inst : label is 0;
  attribute G_AXI_WDATA_INDEX : integer;
  attribute G_AXI_WDATA_INDEX of inst : label is 0;
  attribute G_AXI_WDATA_WIDTH : integer;
  attribute G_AXI_WDATA_WIDTH of inst : label is 32;
  attribute G_AXI_WID_INDEX : integer;
  attribute G_AXI_WID_INDEX of inst : label is 36;
  attribute G_AXI_WID_WIDTH : integer;
  attribute G_AXI_WID_WIDTH of inst : label is 0;
  attribute G_AXI_WLAST_INDEX : integer;
  attribute G_AXI_WLAST_INDEX of inst : label is 36;
  attribute G_AXI_WLAST_WIDTH : integer;
  attribute G_AXI_WLAST_WIDTH of inst : label is 0;
  attribute G_AXI_WPAYLOAD_WIDTH : integer;
  attribute G_AXI_WPAYLOAD_WIDTH of inst : label is 36;
  attribute G_AXI_WSTRB_INDEX : integer;
  attribute G_AXI_WSTRB_INDEX of inst : label is 32;
  attribute G_AXI_WSTRB_WIDTH : integer;
  attribute G_AXI_WSTRB_WIDTH of inst : label is 4;
  attribute G_AXI_WUSER_INDEX : integer;
  attribute G_AXI_WUSER_INDEX of inst : label is 36;
  attribute G_AXI_WUSER_WIDTH : integer;
  attribute G_AXI_WUSER_WIDTH of inst : label is 0;
  attribute P_FORWARD : integer;
  attribute P_FORWARD of inst : label is 0;
  attribute P_RESPONSE : integer;
  attribute P_RESPONSE of inst : label is 1;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME CLK, ASSOCIATED_BUSIF S_AXI:M_AXI, ASSOCIATED_RESET ARESETN, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN cd_pcie_user_00, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 RST RST";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME RST, POLARITY ACTIVE_LOW, INSERT_VIP 0, TYPE INTERCONNECT";
  attribute X_INTERFACE_INFO of m_axi_arready : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARREADY";
  attribute X_INTERFACE_INFO of m_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARVALID";
  attribute X_INTERFACE_INFO of m_axi_awready : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWREADY";
  attribute X_INTERFACE_INFO of m_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWVALID";
  attribute X_INTERFACE_INFO of m_axi_bready : signal is "xilinx.com:interface:aximm:1.0 M_AXI BREADY";
  attribute X_INTERFACE_INFO of m_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI BVALID";
  attribute X_INTERFACE_INFO of m_axi_rready : signal is "xilinx.com:interface:aximm:1.0 M_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of m_axi_rready : signal is "XIL_INTERFACENAME M_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 250000000, ID_WIDTH 0, ADDR_WIDTH 25, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0, CLK_DOMAIN cd_pcie_user_00, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI RVALID";
  attribute X_INTERFACE_INFO of m_axi_wready : signal is "xilinx.com:interface:aximm:1.0 M_AXI WREADY";
  attribute X_INTERFACE_INFO of m_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI WVALID";
  attribute X_INTERFACE_INFO of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  attribute X_INTERFACE_INFO of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  attribute X_INTERFACE_INFO of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  attribute X_INTERFACE_INFO of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  attribute X_INTERFACE_INFO of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  attribute X_INTERFACE_INFO of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  attribute X_INTERFACE_INFO of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of s_axi_rready : signal is "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 250000000, ID_WIDTH 0, ADDR_WIDTH 25, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0, CLK_DOMAIN cd_pcie_user_00, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  attribute X_INTERFACE_INFO of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  attribute X_INTERFACE_INFO of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
  attribute X_INTERFACE_INFO of m_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARADDR";
  attribute X_INTERFACE_INFO of m_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARPROT";
  attribute X_INTERFACE_INFO of m_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWADDR";
  attribute X_INTERFACE_INFO of m_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWPROT";
  attribute X_INTERFACE_INFO of m_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 M_AXI BRESP";
  attribute X_INTERFACE_INFO of m_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 M_AXI RDATA";
  attribute X_INTERFACE_INFO of m_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 M_AXI RRESP";
  attribute X_INTERFACE_INFO of m_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 M_AXI WDATA";
  attribute X_INTERFACE_INFO of m_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 M_AXI WSTRB";
  attribute X_INTERFACE_INFO of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  attribute X_INTERFACE_INFO of s_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARPROT";
  attribute X_INTERFACE_INFO of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  attribute X_INTERFACE_INFO of s_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWPROT";
  attribute X_INTERFACE_INFO of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  attribute X_INTERFACE_INFO of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute X_INTERFACE_INFO of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
  attribute X_INTERFACE_INFO of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  attribute X_INTERFACE_INFO of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_26_axi_register_slice
     port map (
      aclk => aclk,
      aclk2x => '0',
      aresetn => aresetn,
      m_axi_araddr(24 downto 0) => m_axi_araddr(24 downto 0),
      m_axi_arburst(1 downto 0) => NLW_inst_m_axi_arburst_UNCONNECTED(1 downto 0),
      m_axi_arcache(3 downto 0) => NLW_inst_m_axi_arcache_UNCONNECTED(3 downto 0),
      m_axi_arid(0) => NLW_inst_m_axi_arid_UNCONNECTED(0),
      m_axi_arlen(7 downto 0) => NLW_inst_m_axi_arlen_UNCONNECTED(7 downto 0),
      m_axi_arlock(0) => NLW_inst_m_axi_arlock_UNCONNECTED(0),
      m_axi_arprot(2 downto 0) => m_axi_arprot(2 downto 0),
      m_axi_arqos(3 downto 0) => NLW_inst_m_axi_arqos_UNCONNECTED(3 downto 0),
      m_axi_arready => m_axi_arready,
      m_axi_arregion(3 downto 0) => NLW_inst_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => NLW_inst_m_axi_arsize_UNCONNECTED(2 downto 0),
      m_axi_aruser(0) => NLW_inst_m_axi_aruser_UNCONNECTED(0),
      m_axi_arvalid => m_axi_arvalid,
      m_axi_awaddr(24 downto 0) => m_axi_awaddr(24 downto 0),
      m_axi_awburst(1 downto 0) => NLW_inst_m_axi_awburst_UNCONNECTED(1 downto 0),
      m_axi_awcache(3 downto 0) => NLW_inst_m_axi_awcache_UNCONNECTED(3 downto 0),
      m_axi_awid(0) => NLW_inst_m_axi_awid_UNCONNECTED(0),
      m_axi_awlen(7 downto 0) => NLW_inst_m_axi_awlen_UNCONNECTED(7 downto 0),
      m_axi_awlock(0) => NLW_inst_m_axi_awlock_UNCONNECTED(0),
      m_axi_awprot(2 downto 0) => m_axi_awprot(2 downto 0),
      m_axi_awqos(3 downto 0) => NLW_inst_m_axi_awqos_UNCONNECTED(3 downto 0),
      m_axi_awready => m_axi_awready,
      m_axi_awregion(3 downto 0) => NLW_inst_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => NLW_inst_m_axi_awsize_UNCONNECTED(2 downto 0),
      m_axi_awuser(0) => NLW_inst_m_axi_awuser_UNCONNECTED(0),
      m_axi_awvalid => m_axi_awvalid,
      m_axi_bid(0) => '0',
      m_axi_bready => m_axi_bready,
      m_axi_bresp(1 downto 0) => m_axi_bresp(1 downto 0),
      m_axi_buser(0) => '0',
      m_axi_bvalid => m_axi_bvalid,
      m_axi_rdata(31 downto 0) => m_axi_rdata(31 downto 0),
      m_axi_rid(0) => '0',
      m_axi_rlast => '0',
      m_axi_rready => m_axi_rready,
      m_axi_rresp(1 downto 0) => m_axi_rresp(1 downto 0),
      m_axi_ruser(0) => '0',
      m_axi_rvalid => m_axi_rvalid,
      m_axi_wdata(31 downto 0) => m_axi_wdata(31 downto 0),
      m_axi_wid(0) => NLW_inst_m_axi_wid_UNCONNECTED(0),
      m_axi_wlast => NLW_inst_m_axi_wlast_UNCONNECTED,
      m_axi_wready => m_axi_wready,
      m_axi_wstrb(3 downto 0) => m_axi_wstrb(3 downto 0),
      m_axi_wuser(0) => NLW_inst_m_axi_wuser_UNCONNECTED(0),
      m_axi_wvalid => m_axi_wvalid,
      s_axi_araddr(24 downto 0) => s_axi_araddr(24 downto 0),
      s_axi_arburst(1 downto 0) => B"01",
      s_axi_arcache(3 downto 0) => B"0000",
      s_axi_arid(0) => '0',
      s_axi_arlen(7 downto 0) => B"00000000",
      s_axi_arlock(0) => '0',
      s_axi_arprot(2 downto 0) => s_axi_arprot(2 downto 0),
      s_axi_arqos(3 downto 0) => B"0000",
      s_axi_arready => s_axi_arready,
      s_axi_arregion(3 downto 0) => B"0000",
      s_axi_arsize(2 downto 0) => B"010",
      s_axi_aruser(0) => '0',
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(24 downto 0) => s_axi_awaddr(24 downto 0),
      s_axi_awburst(1 downto 0) => B"01",
      s_axi_awcache(3 downto 0) => B"0000",
      s_axi_awid(0) => '0',
      s_axi_awlen(7 downto 0) => B"00000000",
      s_axi_awlock(0) => '0',
      s_axi_awprot(2 downto 0) => s_axi_awprot(2 downto 0),
      s_axi_awqos(3 downto 0) => B"0000",
      s_axi_awready => s_axi_awready,
      s_axi_awregion(3 downto 0) => B"0000",
      s_axi_awsize(2 downto 0) => B"010",
      s_axi_awuser(0) => '0',
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bid(0) => NLW_inst_s_axi_bid_UNCONNECTED(0),
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_buser(0) => NLW_inst_s_axi_buser_UNCONNECTED(0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rid(0) => NLW_inst_s_axi_rid_UNCONNECTED(0),
      s_axi_rlast => NLW_inst_s_axi_rlast_UNCONNECTED,
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_ruser(0) => NLW_inst_s_axi_ruser_UNCONNECTED(0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wid(0) => '0',
      s_axi_wlast => '0',
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wuser(0) => '0',
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
