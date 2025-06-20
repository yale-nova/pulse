-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
-- Date        : Thu Oct 17 04:26:33 2024
-- Host        : yupeng-ThinkBook-16-G6-IRL running 64-bit Ubuntu 22.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ulp_dwc_data_fifo_krnl_0_tx_axis_0_sim_netlist.vhdl
-- Design      : ulp_dwc_data_fifo_krnl_0_tx_axis_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcu250-figd2104-2L-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_25_axisc_upsizer is
  port (
    \state_reg[0]_0\ : out STD_LOGIC;
    m_axis_tlast : out STD_LOGIC;
    \state_reg[1]_0\ : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    aclk : in STD_LOGIC;
    areset_r : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tvalid : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_25_axisc_upsizer;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_25_axisc_upsizer is
  signal \acc_data[511]_i_1_n_0\ : STD_LOGIC;
  signal \acc_data[63]_i_1_n_0\ : STD_LOGIC;
  signal \acc_keep[63]_i_1_n_0\ : STD_LOGIC;
  signal acc_last_i_1_n_0 : STD_LOGIC;
  signal \gen_data_accumulator[2].acc_data[191]_i_1_n_0\ : STD_LOGIC;
  signal \gen_data_accumulator[3].acc_data[255]_i_1_n_0\ : STD_LOGIC;
  signal \gen_data_accumulator[4].acc_data[319]_i_1_n_0\ : STD_LOGIC;
  signal \gen_data_accumulator[5].acc_data[383]_i_1_n_0\ : STD_LOGIC;
  signal \gen_data_accumulator[6].acc_data[447]_i_1_n_0\ : STD_LOGIC;
  signal \^m_axis_tlast\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 7 to 7 );
  signal p_0_in_0 : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 7 to 7 );
  signal p_1_in2_in : STD_LOGIC;
  signal r0_data : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal r0_keep : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal r0_last_reg_n_0 : STD_LOGIC;
  signal \r0_reg_sel[0]_i_1_n_0\ : STD_LOGIC;
  signal \r0_reg_sel_reg_n_0_[0]\ : STD_LOGIC;
  signal \r0_reg_sel_reg_n_0_[1]\ : STD_LOGIC;
  signal \r0_reg_sel_reg_n_0_[2]\ : STD_LOGIC;
  signal \r0_reg_sel_reg_n_0_[3]\ : STD_LOGIC;
  signal \r0_reg_sel_reg_n_0_[4]\ : STD_LOGIC;
  signal \r0_reg_sel_reg_n_0_[5]\ : STD_LOGIC;
  signal \r0_reg_sel_reg_n_0_[6]\ : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \state[1]_i_2_n_0\ : STD_LOGIC;
  signal \state[1]_i_3_n_0\ : STD_LOGIC;
  signal \state[2]_i_2_n_0\ : STD_LOGIC;
  signal \state[2]_i_3_n_0\ : STD_LOGIC;
  signal \^state_reg[0]_0\ : STD_LOGIC;
  signal \^state_reg[1]_0\ : STD_LOGIC;
  signal \state_reg_n_0_[2]\ : STD_LOGIC;
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \state_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \state_reg[1]\ : label is "none";
  attribute FSM_ENCODING of \state_reg[2]\ : label is "none";
begin
  m_axis_tlast <= \^m_axis_tlast\;
  \state_reg[0]_0\ <= \^state_reg[0]_0\;
  \state_reg[1]_0\ <= \^state_reg[1]_0\;
\acc_data[511]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^state_reg[0]_0\,
      I1 => \^state_reg[1]_0\,
      O => \acc_data[511]_i_1_n_0\
    );
\acc_data[63]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^state_reg[1]_0\,
      I1 => \r0_reg_sel_reg_n_0_[0]\,
      I2 => \^state_reg[0]_0\,
      I3 => \state_reg_n_0_[2]\,
      O => \acc_data[63]_i_1_n_0\
    );
\acc_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => r0_data(0),
      Q => m_axis_tdata(0),
      R => '0'
    );
\acc_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => r0_data(10),
      Q => m_axis_tdata(10),
      R => '0'
    );
\acc_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => r0_data(11),
      Q => m_axis_tdata(11),
      R => '0'
    );
\acc_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => r0_data(12),
      Q => m_axis_tdata(12),
      R => '0'
    );
\acc_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => r0_data(13),
      Q => m_axis_tdata(13),
      R => '0'
    );
\acc_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => r0_data(14),
      Q => m_axis_tdata(14),
      R => '0'
    );
\acc_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => r0_data(15),
      Q => m_axis_tdata(15),
      R => '0'
    );
\acc_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => r0_data(16),
      Q => m_axis_tdata(16),
      R => '0'
    );
\acc_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => r0_data(17),
      Q => m_axis_tdata(17),
      R => '0'
    );
\acc_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => r0_data(18),
      Q => m_axis_tdata(18),
      R => '0'
    );
\acc_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => r0_data(19),
      Q => m_axis_tdata(19),
      R => '0'
    );
\acc_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => r0_data(1),
      Q => m_axis_tdata(1),
      R => '0'
    );
\acc_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => r0_data(20),
      Q => m_axis_tdata(20),
      R => '0'
    );
\acc_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => r0_data(21),
      Q => m_axis_tdata(21),
      R => '0'
    );
\acc_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => r0_data(22),
      Q => m_axis_tdata(22),
      R => '0'
    );
\acc_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => r0_data(23),
      Q => m_axis_tdata(23),
      R => '0'
    );
\acc_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => r0_data(24),
      Q => m_axis_tdata(24),
      R => '0'
    );
\acc_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => r0_data(25),
      Q => m_axis_tdata(25),
      R => '0'
    );
\acc_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => r0_data(26),
      Q => m_axis_tdata(26),
      R => '0'
    );
\acc_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => r0_data(27),
      Q => m_axis_tdata(27),
      R => '0'
    );
\acc_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => r0_data(28),
      Q => m_axis_tdata(28),
      R => '0'
    );
\acc_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => r0_data(29),
      Q => m_axis_tdata(29),
      R => '0'
    );
\acc_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => r0_data(2),
      Q => m_axis_tdata(2),
      R => '0'
    );
\acc_data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => r0_data(30),
      Q => m_axis_tdata(30),
      R => '0'
    );
\acc_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => r0_data(31),
      Q => m_axis_tdata(31),
      R => '0'
    );
\acc_data_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => r0_data(32),
      Q => m_axis_tdata(32),
      R => '0'
    );
\acc_data_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => r0_data(33),
      Q => m_axis_tdata(33),
      R => '0'
    );
\acc_data_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => r0_data(34),
      Q => m_axis_tdata(34),
      R => '0'
    );
\acc_data_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => r0_data(35),
      Q => m_axis_tdata(35),
      R => '0'
    );
\acc_data_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => r0_data(36),
      Q => m_axis_tdata(36),
      R => '0'
    );
\acc_data_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => r0_data(37),
      Q => m_axis_tdata(37),
      R => '0'
    );
\acc_data_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => r0_data(38),
      Q => m_axis_tdata(38),
      R => '0'
    );
\acc_data_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => r0_data(39),
      Q => m_axis_tdata(39),
      R => '0'
    );
\acc_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => r0_data(3),
      Q => m_axis_tdata(3),
      R => '0'
    );
\acc_data_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => r0_data(40),
      Q => m_axis_tdata(40),
      R => '0'
    );
\acc_data_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => r0_data(41),
      Q => m_axis_tdata(41),
      R => '0'
    );
\acc_data_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => r0_data(42),
      Q => m_axis_tdata(42),
      R => '0'
    );
\acc_data_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => r0_data(43),
      Q => m_axis_tdata(43),
      R => '0'
    );
\acc_data_reg[448]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[511]_i_1_n_0\,
      D => s_axis_tdata(0),
      Q => m_axis_tdata(448),
      R => '0'
    );
\acc_data_reg[449]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[511]_i_1_n_0\,
      D => s_axis_tdata(1),
      Q => m_axis_tdata(449),
      R => '0'
    );
\acc_data_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => r0_data(44),
      Q => m_axis_tdata(44),
      R => '0'
    );
\acc_data_reg[450]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[511]_i_1_n_0\,
      D => s_axis_tdata(2),
      Q => m_axis_tdata(450),
      R => '0'
    );
\acc_data_reg[451]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[511]_i_1_n_0\,
      D => s_axis_tdata(3),
      Q => m_axis_tdata(451),
      R => '0'
    );
\acc_data_reg[452]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[511]_i_1_n_0\,
      D => s_axis_tdata(4),
      Q => m_axis_tdata(452),
      R => '0'
    );
\acc_data_reg[453]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[511]_i_1_n_0\,
      D => s_axis_tdata(5),
      Q => m_axis_tdata(453),
      R => '0'
    );
\acc_data_reg[454]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[511]_i_1_n_0\,
      D => s_axis_tdata(6),
      Q => m_axis_tdata(454),
      R => '0'
    );
\acc_data_reg[455]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[511]_i_1_n_0\,
      D => s_axis_tdata(7),
      Q => m_axis_tdata(455),
      R => '0'
    );
\acc_data_reg[456]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[511]_i_1_n_0\,
      D => s_axis_tdata(8),
      Q => m_axis_tdata(456),
      R => '0'
    );
\acc_data_reg[457]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[511]_i_1_n_0\,
      D => s_axis_tdata(9),
      Q => m_axis_tdata(457),
      R => '0'
    );
\acc_data_reg[458]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[511]_i_1_n_0\,
      D => s_axis_tdata(10),
      Q => m_axis_tdata(458),
      R => '0'
    );
\acc_data_reg[459]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[511]_i_1_n_0\,
      D => s_axis_tdata(11),
      Q => m_axis_tdata(459),
      R => '0'
    );
\acc_data_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => r0_data(45),
      Q => m_axis_tdata(45),
      R => '0'
    );
\acc_data_reg[460]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[511]_i_1_n_0\,
      D => s_axis_tdata(12),
      Q => m_axis_tdata(460),
      R => '0'
    );
\acc_data_reg[461]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[511]_i_1_n_0\,
      D => s_axis_tdata(13),
      Q => m_axis_tdata(461),
      R => '0'
    );
\acc_data_reg[462]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[511]_i_1_n_0\,
      D => s_axis_tdata(14),
      Q => m_axis_tdata(462),
      R => '0'
    );
\acc_data_reg[463]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[511]_i_1_n_0\,
      D => s_axis_tdata(15),
      Q => m_axis_tdata(463),
      R => '0'
    );
\acc_data_reg[464]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[511]_i_1_n_0\,
      D => s_axis_tdata(16),
      Q => m_axis_tdata(464),
      R => '0'
    );
\acc_data_reg[465]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[511]_i_1_n_0\,
      D => s_axis_tdata(17),
      Q => m_axis_tdata(465),
      R => '0'
    );
\acc_data_reg[466]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[511]_i_1_n_0\,
      D => s_axis_tdata(18),
      Q => m_axis_tdata(466),
      R => '0'
    );
\acc_data_reg[467]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[511]_i_1_n_0\,
      D => s_axis_tdata(19),
      Q => m_axis_tdata(467),
      R => '0'
    );
\acc_data_reg[468]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[511]_i_1_n_0\,
      D => s_axis_tdata(20),
      Q => m_axis_tdata(468),
      R => '0'
    );
\acc_data_reg[469]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[511]_i_1_n_0\,
      D => s_axis_tdata(21),
      Q => m_axis_tdata(469),
      R => '0'
    );
\acc_data_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => r0_data(46),
      Q => m_axis_tdata(46),
      R => '0'
    );
\acc_data_reg[470]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[511]_i_1_n_0\,
      D => s_axis_tdata(22),
      Q => m_axis_tdata(470),
      R => '0'
    );
\acc_data_reg[471]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[511]_i_1_n_0\,
      D => s_axis_tdata(23),
      Q => m_axis_tdata(471),
      R => '0'
    );
\acc_data_reg[472]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[511]_i_1_n_0\,
      D => s_axis_tdata(24),
      Q => m_axis_tdata(472),
      R => '0'
    );
\acc_data_reg[473]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[511]_i_1_n_0\,
      D => s_axis_tdata(25),
      Q => m_axis_tdata(473),
      R => '0'
    );
\acc_data_reg[474]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[511]_i_1_n_0\,
      D => s_axis_tdata(26),
      Q => m_axis_tdata(474),
      R => '0'
    );
\acc_data_reg[475]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[511]_i_1_n_0\,
      D => s_axis_tdata(27),
      Q => m_axis_tdata(475),
      R => '0'
    );
\acc_data_reg[476]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[511]_i_1_n_0\,
      D => s_axis_tdata(28),
      Q => m_axis_tdata(476),
      R => '0'
    );
\acc_data_reg[477]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[511]_i_1_n_0\,
      D => s_axis_tdata(29),
      Q => m_axis_tdata(477),
      R => '0'
    );
\acc_data_reg[478]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[511]_i_1_n_0\,
      D => s_axis_tdata(30),
      Q => m_axis_tdata(478),
      R => '0'
    );
\acc_data_reg[479]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[511]_i_1_n_0\,
      D => s_axis_tdata(31),
      Q => m_axis_tdata(479),
      R => '0'
    );
\acc_data_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => r0_data(47),
      Q => m_axis_tdata(47),
      R => '0'
    );
\acc_data_reg[480]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[511]_i_1_n_0\,
      D => s_axis_tdata(32),
      Q => m_axis_tdata(480),
      R => '0'
    );
\acc_data_reg[481]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[511]_i_1_n_0\,
      D => s_axis_tdata(33),
      Q => m_axis_tdata(481),
      R => '0'
    );
\acc_data_reg[482]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[511]_i_1_n_0\,
      D => s_axis_tdata(34),
      Q => m_axis_tdata(482),
      R => '0'
    );
\acc_data_reg[483]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[511]_i_1_n_0\,
      D => s_axis_tdata(35),
      Q => m_axis_tdata(483),
      R => '0'
    );
\acc_data_reg[484]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[511]_i_1_n_0\,
      D => s_axis_tdata(36),
      Q => m_axis_tdata(484),
      R => '0'
    );
\acc_data_reg[485]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[511]_i_1_n_0\,
      D => s_axis_tdata(37),
      Q => m_axis_tdata(485),
      R => '0'
    );
\acc_data_reg[486]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[511]_i_1_n_0\,
      D => s_axis_tdata(38),
      Q => m_axis_tdata(486),
      R => '0'
    );
\acc_data_reg[487]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[511]_i_1_n_0\,
      D => s_axis_tdata(39),
      Q => m_axis_tdata(487),
      R => '0'
    );
\acc_data_reg[488]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[511]_i_1_n_0\,
      D => s_axis_tdata(40),
      Q => m_axis_tdata(488),
      R => '0'
    );
\acc_data_reg[489]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[511]_i_1_n_0\,
      D => s_axis_tdata(41),
      Q => m_axis_tdata(489),
      R => '0'
    );
\acc_data_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => r0_data(48),
      Q => m_axis_tdata(48),
      R => '0'
    );
\acc_data_reg[490]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[511]_i_1_n_0\,
      D => s_axis_tdata(42),
      Q => m_axis_tdata(490),
      R => '0'
    );
\acc_data_reg[491]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[511]_i_1_n_0\,
      D => s_axis_tdata(43),
      Q => m_axis_tdata(491),
      R => '0'
    );
\acc_data_reg[492]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[511]_i_1_n_0\,
      D => s_axis_tdata(44),
      Q => m_axis_tdata(492),
      R => '0'
    );
\acc_data_reg[493]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[511]_i_1_n_0\,
      D => s_axis_tdata(45),
      Q => m_axis_tdata(493),
      R => '0'
    );
\acc_data_reg[494]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[511]_i_1_n_0\,
      D => s_axis_tdata(46),
      Q => m_axis_tdata(494),
      R => '0'
    );
\acc_data_reg[495]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[511]_i_1_n_0\,
      D => s_axis_tdata(47),
      Q => m_axis_tdata(495),
      R => '0'
    );
\acc_data_reg[496]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[511]_i_1_n_0\,
      D => s_axis_tdata(48),
      Q => m_axis_tdata(496),
      R => '0'
    );
\acc_data_reg[497]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[511]_i_1_n_0\,
      D => s_axis_tdata(49),
      Q => m_axis_tdata(497),
      R => '0'
    );
\acc_data_reg[498]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[511]_i_1_n_0\,
      D => s_axis_tdata(50),
      Q => m_axis_tdata(498),
      R => '0'
    );
\acc_data_reg[499]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[511]_i_1_n_0\,
      D => s_axis_tdata(51),
      Q => m_axis_tdata(499),
      R => '0'
    );
\acc_data_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => r0_data(49),
      Q => m_axis_tdata(49),
      R => '0'
    );
\acc_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => r0_data(4),
      Q => m_axis_tdata(4),
      R => '0'
    );
\acc_data_reg[500]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[511]_i_1_n_0\,
      D => s_axis_tdata(52),
      Q => m_axis_tdata(500),
      R => '0'
    );
\acc_data_reg[501]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[511]_i_1_n_0\,
      D => s_axis_tdata(53),
      Q => m_axis_tdata(501),
      R => '0'
    );
\acc_data_reg[502]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[511]_i_1_n_0\,
      D => s_axis_tdata(54),
      Q => m_axis_tdata(502),
      R => '0'
    );
\acc_data_reg[503]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[511]_i_1_n_0\,
      D => s_axis_tdata(55),
      Q => m_axis_tdata(503),
      R => '0'
    );
\acc_data_reg[504]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[511]_i_1_n_0\,
      D => s_axis_tdata(56),
      Q => m_axis_tdata(504),
      R => '0'
    );
\acc_data_reg[505]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[511]_i_1_n_0\,
      D => s_axis_tdata(57),
      Q => m_axis_tdata(505),
      R => '0'
    );
\acc_data_reg[506]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[511]_i_1_n_0\,
      D => s_axis_tdata(58),
      Q => m_axis_tdata(506),
      R => '0'
    );
\acc_data_reg[507]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[511]_i_1_n_0\,
      D => s_axis_tdata(59),
      Q => m_axis_tdata(507),
      R => '0'
    );
\acc_data_reg[508]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[511]_i_1_n_0\,
      D => s_axis_tdata(60),
      Q => m_axis_tdata(508),
      R => '0'
    );
\acc_data_reg[509]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[511]_i_1_n_0\,
      D => s_axis_tdata(61),
      Q => m_axis_tdata(509),
      R => '0'
    );
\acc_data_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => r0_data(50),
      Q => m_axis_tdata(50),
      R => '0'
    );
\acc_data_reg[510]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[511]_i_1_n_0\,
      D => s_axis_tdata(62),
      Q => m_axis_tdata(510),
      R => '0'
    );
\acc_data_reg[511]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[511]_i_1_n_0\,
      D => s_axis_tdata(63),
      Q => m_axis_tdata(511),
      R => '0'
    );
\acc_data_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => r0_data(51),
      Q => m_axis_tdata(51),
      R => '0'
    );
\acc_data_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => r0_data(52),
      Q => m_axis_tdata(52),
      R => '0'
    );
\acc_data_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => r0_data(53),
      Q => m_axis_tdata(53),
      R => '0'
    );
\acc_data_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => r0_data(54),
      Q => m_axis_tdata(54),
      R => '0'
    );
\acc_data_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => r0_data(55),
      Q => m_axis_tdata(55),
      R => '0'
    );
\acc_data_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => r0_data(56),
      Q => m_axis_tdata(56),
      R => '0'
    );
\acc_data_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => r0_data(57),
      Q => m_axis_tdata(57),
      R => '0'
    );
\acc_data_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => r0_data(58),
      Q => m_axis_tdata(58),
      R => '0'
    );
\acc_data_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => r0_data(59),
      Q => m_axis_tdata(59),
      R => '0'
    );
\acc_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => r0_data(5),
      Q => m_axis_tdata(5),
      R => '0'
    );
\acc_data_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => r0_data(60),
      Q => m_axis_tdata(60),
      R => '0'
    );
\acc_data_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => r0_data(61),
      Q => m_axis_tdata(61),
      R => '0'
    );
\acc_data_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => r0_data(62),
      Q => m_axis_tdata(62),
      R => '0'
    );
\acc_data_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => r0_data(63),
      Q => m_axis_tdata(63),
      R => '0'
    );
\acc_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => r0_data(6),
      Q => m_axis_tdata(6),
      R => '0'
    );
\acc_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => r0_data(7),
      Q => m_axis_tdata(7),
      R => '0'
    );
\acc_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => r0_data(8),
      Q => m_axis_tdata(8),
      R => '0'
    );
\acc_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => r0_data(9),
      Q => m_axis_tdata(9),
      R => '0'
    );
\acc_keep[63]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"50400000"
    )
        port map (
      I0 => \^state_reg[1]_0\,
      I1 => \r0_reg_sel_reg_n_0_[0]\,
      I2 => \^state_reg[0]_0\,
      I3 => r0_last_reg_n_0,
      I4 => \state_reg_n_0_[2]\,
      O => \acc_keep[63]_i_1_n_0\
    );
\acc_keep_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => r0_keep(0),
      Q => m_axis_tkeep(0),
      R => '0'
    );
\acc_keep_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => r0_keep(1),
      Q => m_axis_tkeep(1),
      R => '0'
    );
\acc_keep_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => r0_keep(2),
      Q => m_axis_tkeep(2),
      R => '0'
    );
\acc_keep_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => r0_keep(3),
      Q => m_axis_tkeep(3),
      R => '0'
    );
\acc_keep_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => r0_keep(4),
      Q => m_axis_tkeep(4),
      R => '0'
    );
\acc_keep_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[511]_i_1_n_0\,
      D => s_axis_tkeep(0),
      Q => m_axis_tkeep(56),
      R => \acc_keep[63]_i_1_n_0\
    );
\acc_keep_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[511]_i_1_n_0\,
      D => s_axis_tkeep(1),
      Q => m_axis_tkeep(57),
      R => \acc_keep[63]_i_1_n_0\
    );
\acc_keep_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[511]_i_1_n_0\,
      D => s_axis_tkeep(2),
      Q => m_axis_tkeep(58),
      R => \acc_keep[63]_i_1_n_0\
    );
\acc_keep_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[511]_i_1_n_0\,
      D => s_axis_tkeep(3),
      Q => m_axis_tkeep(59),
      R => \acc_keep[63]_i_1_n_0\
    );
\acc_keep_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => r0_keep(5),
      Q => m_axis_tkeep(5),
      R => '0'
    );
\acc_keep_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[511]_i_1_n_0\,
      D => s_axis_tkeep(4),
      Q => m_axis_tkeep(60),
      R => \acc_keep[63]_i_1_n_0\
    );
\acc_keep_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[511]_i_1_n_0\,
      D => s_axis_tkeep(5),
      Q => m_axis_tkeep(61),
      R => \acc_keep[63]_i_1_n_0\
    );
\acc_keep_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[511]_i_1_n_0\,
      D => s_axis_tkeep(6),
      Q => m_axis_tkeep(62),
      R => \acc_keep[63]_i_1_n_0\
    );
\acc_keep_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[511]_i_1_n_0\,
      D => s_axis_tkeep(7),
      Q => m_axis_tkeep(63),
      R => \acc_keep[63]_i_1_n_0\
    );
\acc_keep_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => r0_keep(6),
      Q => m_axis_tkeep(6),
      R => '0'
    );
\acc_keep_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => r0_keep(7),
      Q => m_axis_tkeep(7),
      R => '0'
    );
acc_last_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0FFF80F000FF80"
    )
        port map (
      I0 => r0_last_reg_n_0,
      I1 => \^state_reg[0]_0\,
      I2 => \state_reg_n_0_[2]\,
      I3 => s_axis_tlast,
      I4 => \^state_reg[1]_0\,
      I5 => \^m_axis_tlast\,
      O => acc_last_i_1_n_0
    );
acc_last_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => acc_last_i_1_n_0,
      Q => \^m_axis_tlast\,
      R => '0'
    );
\gen_data_accumulator[1].acc_data[127]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^state_reg[1]_0\,
      I1 => \r0_reg_sel_reg_n_0_[1]\,
      I2 => \^state_reg[0]_0\,
      I3 => \state_reg_n_0_[2]\,
      O => p_0_in_0
    );
\gen_data_accumulator[1].acc_data_reg[100]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => r0_data(36),
      Q => m_axis_tdata(100),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[101]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => r0_data(37),
      Q => m_axis_tdata(101),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[102]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => r0_data(38),
      Q => m_axis_tdata(102),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[103]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => r0_data(39),
      Q => m_axis_tdata(103),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[104]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => r0_data(40),
      Q => m_axis_tdata(104),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[105]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => r0_data(41),
      Q => m_axis_tdata(105),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[106]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => r0_data(42),
      Q => m_axis_tdata(106),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[107]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => r0_data(43),
      Q => m_axis_tdata(107),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[108]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => r0_data(44),
      Q => m_axis_tdata(108),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[109]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => r0_data(45),
      Q => m_axis_tdata(109),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[110]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => r0_data(46),
      Q => m_axis_tdata(110),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[111]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => r0_data(47),
      Q => m_axis_tdata(111),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[112]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => r0_data(48),
      Q => m_axis_tdata(112),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[113]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => r0_data(49),
      Q => m_axis_tdata(113),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[114]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => r0_data(50),
      Q => m_axis_tdata(114),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[115]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => r0_data(51),
      Q => m_axis_tdata(115),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[116]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => r0_data(52),
      Q => m_axis_tdata(116),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[117]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => r0_data(53),
      Q => m_axis_tdata(117),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[118]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => r0_data(54),
      Q => m_axis_tdata(118),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[119]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => r0_data(55),
      Q => m_axis_tdata(119),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[120]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => r0_data(56),
      Q => m_axis_tdata(120),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[121]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => r0_data(57),
      Q => m_axis_tdata(121),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[122]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => r0_data(58),
      Q => m_axis_tdata(122),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[123]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => r0_data(59),
      Q => m_axis_tdata(123),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[124]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => r0_data(60),
      Q => m_axis_tdata(124),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[125]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => r0_data(61),
      Q => m_axis_tdata(125),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[126]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => r0_data(62),
      Q => m_axis_tdata(126),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[127]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => r0_data(63),
      Q => m_axis_tdata(127),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => r0_data(0),
      Q => m_axis_tdata(64),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => r0_data(1),
      Q => m_axis_tdata(65),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => r0_data(2),
      Q => m_axis_tdata(66),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => r0_data(3),
      Q => m_axis_tdata(67),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => r0_data(4),
      Q => m_axis_tdata(68),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => r0_data(5),
      Q => m_axis_tdata(69),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => r0_data(6),
      Q => m_axis_tdata(70),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => r0_data(7),
      Q => m_axis_tdata(71),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[72]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => r0_data(8),
      Q => m_axis_tdata(72),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[73]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => r0_data(9),
      Q => m_axis_tdata(73),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[74]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => r0_data(10),
      Q => m_axis_tdata(74),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[75]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => r0_data(11),
      Q => m_axis_tdata(75),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[76]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => r0_data(12),
      Q => m_axis_tdata(76),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[77]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => r0_data(13),
      Q => m_axis_tdata(77),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[78]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => r0_data(14),
      Q => m_axis_tdata(78),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[79]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => r0_data(15),
      Q => m_axis_tdata(79),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[80]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => r0_data(16),
      Q => m_axis_tdata(80),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[81]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => r0_data(17),
      Q => m_axis_tdata(81),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[82]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => r0_data(18),
      Q => m_axis_tdata(82),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[83]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => r0_data(19),
      Q => m_axis_tdata(83),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[84]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => r0_data(20),
      Q => m_axis_tdata(84),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[85]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => r0_data(21),
      Q => m_axis_tdata(85),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[86]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => r0_data(22),
      Q => m_axis_tdata(86),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[87]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => r0_data(23),
      Q => m_axis_tdata(87),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[88]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => r0_data(24),
      Q => m_axis_tdata(88),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[89]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => r0_data(25),
      Q => m_axis_tdata(89),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[90]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => r0_data(26),
      Q => m_axis_tdata(90),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[91]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => r0_data(27),
      Q => m_axis_tdata(91),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[92]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => r0_data(28),
      Q => m_axis_tdata(92),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[93]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => r0_data(29),
      Q => m_axis_tdata(93),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[94]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => r0_data(30),
      Q => m_axis_tdata(94),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[95]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => r0_data(31),
      Q => m_axis_tdata(95),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[96]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => r0_data(32),
      Q => m_axis_tdata(96),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[97]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => r0_data(33),
      Q => m_axis_tdata(97),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[98]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => r0_data(34),
      Q => m_axis_tdata(98),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[99]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => r0_data(35),
      Q => m_axis_tdata(99),
      R => '0'
    );
\gen_data_accumulator[1].acc_keep_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => r0_keep(2),
      Q => m_axis_tkeep(10),
      R => \acc_data[63]_i_1_n_0\
    );
\gen_data_accumulator[1].acc_keep_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => r0_keep(3),
      Q => m_axis_tkeep(11),
      R => \acc_data[63]_i_1_n_0\
    );
\gen_data_accumulator[1].acc_keep_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => r0_keep(4),
      Q => m_axis_tkeep(12),
      R => \acc_data[63]_i_1_n_0\
    );
\gen_data_accumulator[1].acc_keep_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => r0_keep(5),
      Q => m_axis_tkeep(13),
      R => \acc_data[63]_i_1_n_0\
    );
\gen_data_accumulator[1].acc_keep_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => r0_keep(6),
      Q => m_axis_tkeep(14),
      R => \acc_data[63]_i_1_n_0\
    );
\gen_data_accumulator[1].acc_keep_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => r0_keep(7),
      Q => m_axis_tkeep(15),
      R => \acc_data[63]_i_1_n_0\
    );
\gen_data_accumulator[1].acc_keep_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => r0_keep(0),
      Q => m_axis_tkeep(8),
      R => \acc_data[63]_i_1_n_0\
    );
\gen_data_accumulator[1].acc_keep_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in_0,
      D => r0_keep(1),
      Q => m_axis_tkeep(9),
      R => \acc_data[63]_i_1_n_0\
    );
\gen_data_accumulator[2].acc_data[191]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^state_reg[1]_0\,
      I1 => \r0_reg_sel_reg_n_0_[2]\,
      I2 => \^state_reg[0]_0\,
      I3 => \state_reg_n_0_[2]\,
      O => \gen_data_accumulator[2].acc_data[191]_i_1_n_0\
    );
\gen_data_accumulator[2].acc_data_reg[128]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[191]_i_1_n_0\,
      D => r0_data(0),
      Q => m_axis_tdata(128),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[129]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[191]_i_1_n_0\,
      D => r0_data(1),
      Q => m_axis_tdata(129),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[130]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[191]_i_1_n_0\,
      D => r0_data(2),
      Q => m_axis_tdata(130),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[131]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[191]_i_1_n_0\,
      D => r0_data(3),
      Q => m_axis_tdata(131),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[132]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[191]_i_1_n_0\,
      D => r0_data(4),
      Q => m_axis_tdata(132),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[133]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[191]_i_1_n_0\,
      D => r0_data(5),
      Q => m_axis_tdata(133),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[134]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[191]_i_1_n_0\,
      D => r0_data(6),
      Q => m_axis_tdata(134),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[135]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[191]_i_1_n_0\,
      D => r0_data(7),
      Q => m_axis_tdata(135),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[136]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[191]_i_1_n_0\,
      D => r0_data(8),
      Q => m_axis_tdata(136),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[137]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[191]_i_1_n_0\,
      D => r0_data(9),
      Q => m_axis_tdata(137),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[138]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[191]_i_1_n_0\,
      D => r0_data(10),
      Q => m_axis_tdata(138),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[139]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[191]_i_1_n_0\,
      D => r0_data(11),
      Q => m_axis_tdata(139),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[140]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[191]_i_1_n_0\,
      D => r0_data(12),
      Q => m_axis_tdata(140),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[141]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[191]_i_1_n_0\,
      D => r0_data(13),
      Q => m_axis_tdata(141),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[142]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[191]_i_1_n_0\,
      D => r0_data(14),
      Q => m_axis_tdata(142),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[143]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[191]_i_1_n_0\,
      D => r0_data(15),
      Q => m_axis_tdata(143),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[144]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[191]_i_1_n_0\,
      D => r0_data(16),
      Q => m_axis_tdata(144),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[145]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[191]_i_1_n_0\,
      D => r0_data(17),
      Q => m_axis_tdata(145),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[146]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[191]_i_1_n_0\,
      D => r0_data(18),
      Q => m_axis_tdata(146),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[147]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[191]_i_1_n_0\,
      D => r0_data(19),
      Q => m_axis_tdata(147),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[148]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[191]_i_1_n_0\,
      D => r0_data(20),
      Q => m_axis_tdata(148),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[149]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[191]_i_1_n_0\,
      D => r0_data(21),
      Q => m_axis_tdata(149),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[150]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[191]_i_1_n_0\,
      D => r0_data(22),
      Q => m_axis_tdata(150),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[151]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[191]_i_1_n_0\,
      D => r0_data(23),
      Q => m_axis_tdata(151),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[152]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[191]_i_1_n_0\,
      D => r0_data(24),
      Q => m_axis_tdata(152),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[153]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[191]_i_1_n_0\,
      D => r0_data(25),
      Q => m_axis_tdata(153),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[154]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[191]_i_1_n_0\,
      D => r0_data(26),
      Q => m_axis_tdata(154),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[155]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[191]_i_1_n_0\,
      D => r0_data(27),
      Q => m_axis_tdata(155),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[156]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[191]_i_1_n_0\,
      D => r0_data(28),
      Q => m_axis_tdata(156),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[157]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[191]_i_1_n_0\,
      D => r0_data(29),
      Q => m_axis_tdata(157),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[158]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[191]_i_1_n_0\,
      D => r0_data(30),
      Q => m_axis_tdata(158),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[159]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[191]_i_1_n_0\,
      D => r0_data(31),
      Q => m_axis_tdata(159),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[160]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[191]_i_1_n_0\,
      D => r0_data(32),
      Q => m_axis_tdata(160),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[161]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[191]_i_1_n_0\,
      D => r0_data(33),
      Q => m_axis_tdata(161),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[162]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[191]_i_1_n_0\,
      D => r0_data(34),
      Q => m_axis_tdata(162),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[163]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[191]_i_1_n_0\,
      D => r0_data(35),
      Q => m_axis_tdata(163),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[164]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[191]_i_1_n_0\,
      D => r0_data(36),
      Q => m_axis_tdata(164),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[165]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[191]_i_1_n_0\,
      D => r0_data(37),
      Q => m_axis_tdata(165),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[166]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[191]_i_1_n_0\,
      D => r0_data(38),
      Q => m_axis_tdata(166),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[167]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[191]_i_1_n_0\,
      D => r0_data(39),
      Q => m_axis_tdata(167),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[168]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[191]_i_1_n_0\,
      D => r0_data(40),
      Q => m_axis_tdata(168),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[169]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[191]_i_1_n_0\,
      D => r0_data(41),
      Q => m_axis_tdata(169),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[170]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[191]_i_1_n_0\,
      D => r0_data(42),
      Q => m_axis_tdata(170),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[171]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[191]_i_1_n_0\,
      D => r0_data(43),
      Q => m_axis_tdata(171),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[172]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[191]_i_1_n_0\,
      D => r0_data(44),
      Q => m_axis_tdata(172),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[173]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[191]_i_1_n_0\,
      D => r0_data(45),
      Q => m_axis_tdata(173),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[174]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[191]_i_1_n_0\,
      D => r0_data(46),
      Q => m_axis_tdata(174),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[175]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[191]_i_1_n_0\,
      D => r0_data(47),
      Q => m_axis_tdata(175),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[176]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[191]_i_1_n_0\,
      D => r0_data(48),
      Q => m_axis_tdata(176),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[177]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[191]_i_1_n_0\,
      D => r0_data(49),
      Q => m_axis_tdata(177),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[178]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[191]_i_1_n_0\,
      D => r0_data(50),
      Q => m_axis_tdata(178),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[179]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[191]_i_1_n_0\,
      D => r0_data(51),
      Q => m_axis_tdata(179),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[180]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[191]_i_1_n_0\,
      D => r0_data(52),
      Q => m_axis_tdata(180),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[181]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[191]_i_1_n_0\,
      D => r0_data(53),
      Q => m_axis_tdata(181),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[182]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[191]_i_1_n_0\,
      D => r0_data(54),
      Q => m_axis_tdata(182),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[183]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[191]_i_1_n_0\,
      D => r0_data(55),
      Q => m_axis_tdata(183),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[184]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[191]_i_1_n_0\,
      D => r0_data(56),
      Q => m_axis_tdata(184),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[185]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[191]_i_1_n_0\,
      D => r0_data(57),
      Q => m_axis_tdata(185),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[186]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[191]_i_1_n_0\,
      D => r0_data(58),
      Q => m_axis_tdata(186),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[187]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[191]_i_1_n_0\,
      D => r0_data(59),
      Q => m_axis_tdata(187),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[188]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[191]_i_1_n_0\,
      D => r0_data(60),
      Q => m_axis_tdata(188),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[189]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[191]_i_1_n_0\,
      D => r0_data(61),
      Q => m_axis_tdata(189),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[190]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[191]_i_1_n_0\,
      D => r0_data(62),
      Q => m_axis_tdata(190),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[191]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[191]_i_1_n_0\,
      D => r0_data(63),
      Q => m_axis_tdata(191),
      R => '0'
    );
\gen_data_accumulator[2].acc_keep_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[191]_i_1_n_0\,
      D => r0_keep(0),
      Q => m_axis_tkeep(16),
      R => \acc_data[63]_i_1_n_0\
    );
\gen_data_accumulator[2].acc_keep_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[191]_i_1_n_0\,
      D => r0_keep(1),
      Q => m_axis_tkeep(17),
      R => \acc_data[63]_i_1_n_0\
    );
\gen_data_accumulator[2].acc_keep_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[191]_i_1_n_0\,
      D => r0_keep(2),
      Q => m_axis_tkeep(18),
      R => \acc_data[63]_i_1_n_0\
    );
\gen_data_accumulator[2].acc_keep_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[191]_i_1_n_0\,
      D => r0_keep(3),
      Q => m_axis_tkeep(19),
      R => \acc_data[63]_i_1_n_0\
    );
\gen_data_accumulator[2].acc_keep_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[191]_i_1_n_0\,
      D => r0_keep(4),
      Q => m_axis_tkeep(20),
      R => \acc_data[63]_i_1_n_0\
    );
\gen_data_accumulator[2].acc_keep_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[191]_i_1_n_0\,
      D => r0_keep(5),
      Q => m_axis_tkeep(21),
      R => \acc_data[63]_i_1_n_0\
    );
\gen_data_accumulator[2].acc_keep_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[191]_i_1_n_0\,
      D => r0_keep(6),
      Q => m_axis_tkeep(22),
      R => \acc_data[63]_i_1_n_0\
    );
\gen_data_accumulator[2].acc_keep_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[191]_i_1_n_0\,
      D => r0_keep(7),
      Q => m_axis_tkeep(23),
      R => \acc_data[63]_i_1_n_0\
    );
\gen_data_accumulator[3].acc_data[255]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^state_reg[1]_0\,
      I1 => \r0_reg_sel_reg_n_0_[3]\,
      I2 => \^state_reg[0]_0\,
      I3 => \state_reg_n_0_[2]\,
      O => \gen_data_accumulator[3].acc_data[255]_i_1_n_0\
    );
\gen_data_accumulator[3].acc_data_reg[192]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[3].acc_data[255]_i_1_n_0\,
      D => r0_data(0),
      Q => m_axis_tdata(192),
      R => '0'
    );
\gen_data_accumulator[3].acc_data_reg[193]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[3].acc_data[255]_i_1_n_0\,
      D => r0_data(1),
      Q => m_axis_tdata(193),
      R => '0'
    );
\gen_data_accumulator[3].acc_data_reg[194]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[3].acc_data[255]_i_1_n_0\,
      D => r0_data(2),
      Q => m_axis_tdata(194),
      R => '0'
    );
\gen_data_accumulator[3].acc_data_reg[195]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[3].acc_data[255]_i_1_n_0\,
      D => r0_data(3),
      Q => m_axis_tdata(195),
      R => '0'
    );
\gen_data_accumulator[3].acc_data_reg[196]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[3].acc_data[255]_i_1_n_0\,
      D => r0_data(4),
      Q => m_axis_tdata(196),
      R => '0'
    );
\gen_data_accumulator[3].acc_data_reg[197]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[3].acc_data[255]_i_1_n_0\,
      D => r0_data(5),
      Q => m_axis_tdata(197),
      R => '0'
    );
\gen_data_accumulator[3].acc_data_reg[198]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[3].acc_data[255]_i_1_n_0\,
      D => r0_data(6),
      Q => m_axis_tdata(198),
      R => '0'
    );
\gen_data_accumulator[3].acc_data_reg[199]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[3].acc_data[255]_i_1_n_0\,
      D => r0_data(7),
      Q => m_axis_tdata(199),
      R => '0'
    );
\gen_data_accumulator[3].acc_data_reg[200]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[3].acc_data[255]_i_1_n_0\,
      D => r0_data(8),
      Q => m_axis_tdata(200),
      R => '0'
    );
\gen_data_accumulator[3].acc_data_reg[201]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[3].acc_data[255]_i_1_n_0\,
      D => r0_data(9),
      Q => m_axis_tdata(201),
      R => '0'
    );
\gen_data_accumulator[3].acc_data_reg[202]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[3].acc_data[255]_i_1_n_0\,
      D => r0_data(10),
      Q => m_axis_tdata(202),
      R => '0'
    );
\gen_data_accumulator[3].acc_data_reg[203]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[3].acc_data[255]_i_1_n_0\,
      D => r0_data(11),
      Q => m_axis_tdata(203),
      R => '0'
    );
\gen_data_accumulator[3].acc_data_reg[204]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[3].acc_data[255]_i_1_n_0\,
      D => r0_data(12),
      Q => m_axis_tdata(204),
      R => '0'
    );
\gen_data_accumulator[3].acc_data_reg[205]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[3].acc_data[255]_i_1_n_0\,
      D => r0_data(13),
      Q => m_axis_tdata(205),
      R => '0'
    );
\gen_data_accumulator[3].acc_data_reg[206]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[3].acc_data[255]_i_1_n_0\,
      D => r0_data(14),
      Q => m_axis_tdata(206),
      R => '0'
    );
\gen_data_accumulator[3].acc_data_reg[207]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[3].acc_data[255]_i_1_n_0\,
      D => r0_data(15),
      Q => m_axis_tdata(207),
      R => '0'
    );
\gen_data_accumulator[3].acc_data_reg[208]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[3].acc_data[255]_i_1_n_0\,
      D => r0_data(16),
      Q => m_axis_tdata(208),
      R => '0'
    );
\gen_data_accumulator[3].acc_data_reg[209]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[3].acc_data[255]_i_1_n_0\,
      D => r0_data(17),
      Q => m_axis_tdata(209),
      R => '0'
    );
\gen_data_accumulator[3].acc_data_reg[210]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[3].acc_data[255]_i_1_n_0\,
      D => r0_data(18),
      Q => m_axis_tdata(210),
      R => '0'
    );
\gen_data_accumulator[3].acc_data_reg[211]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[3].acc_data[255]_i_1_n_0\,
      D => r0_data(19),
      Q => m_axis_tdata(211),
      R => '0'
    );
\gen_data_accumulator[3].acc_data_reg[212]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[3].acc_data[255]_i_1_n_0\,
      D => r0_data(20),
      Q => m_axis_tdata(212),
      R => '0'
    );
\gen_data_accumulator[3].acc_data_reg[213]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[3].acc_data[255]_i_1_n_0\,
      D => r0_data(21),
      Q => m_axis_tdata(213),
      R => '0'
    );
\gen_data_accumulator[3].acc_data_reg[214]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[3].acc_data[255]_i_1_n_0\,
      D => r0_data(22),
      Q => m_axis_tdata(214),
      R => '0'
    );
\gen_data_accumulator[3].acc_data_reg[215]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[3].acc_data[255]_i_1_n_0\,
      D => r0_data(23),
      Q => m_axis_tdata(215),
      R => '0'
    );
\gen_data_accumulator[3].acc_data_reg[216]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[3].acc_data[255]_i_1_n_0\,
      D => r0_data(24),
      Q => m_axis_tdata(216),
      R => '0'
    );
\gen_data_accumulator[3].acc_data_reg[217]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[3].acc_data[255]_i_1_n_0\,
      D => r0_data(25),
      Q => m_axis_tdata(217),
      R => '0'
    );
\gen_data_accumulator[3].acc_data_reg[218]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[3].acc_data[255]_i_1_n_0\,
      D => r0_data(26),
      Q => m_axis_tdata(218),
      R => '0'
    );
\gen_data_accumulator[3].acc_data_reg[219]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[3].acc_data[255]_i_1_n_0\,
      D => r0_data(27),
      Q => m_axis_tdata(219),
      R => '0'
    );
\gen_data_accumulator[3].acc_data_reg[220]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[3].acc_data[255]_i_1_n_0\,
      D => r0_data(28),
      Q => m_axis_tdata(220),
      R => '0'
    );
\gen_data_accumulator[3].acc_data_reg[221]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[3].acc_data[255]_i_1_n_0\,
      D => r0_data(29),
      Q => m_axis_tdata(221),
      R => '0'
    );
\gen_data_accumulator[3].acc_data_reg[222]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[3].acc_data[255]_i_1_n_0\,
      D => r0_data(30),
      Q => m_axis_tdata(222),
      R => '0'
    );
\gen_data_accumulator[3].acc_data_reg[223]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[3].acc_data[255]_i_1_n_0\,
      D => r0_data(31),
      Q => m_axis_tdata(223),
      R => '0'
    );
\gen_data_accumulator[3].acc_data_reg[224]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[3].acc_data[255]_i_1_n_0\,
      D => r0_data(32),
      Q => m_axis_tdata(224),
      R => '0'
    );
\gen_data_accumulator[3].acc_data_reg[225]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[3].acc_data[255]_i_1_n_0\,
      D => r0_data(33),
      Q => m_axis_tdata(225),
      R => '0'
    );
\gen_data_accumulator[3].acc_data_reg[226]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[3].acc_data[255]_i_1_n_0\,
      D => r0_data(34),
      Q => m_axis_tdata(226),
      R => '0'
    );
\gen_data_accumulator[3].acc_data_reg[227]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[3].acc_data[255]_i_1_n_0\,
      D => r0_data(35),
      Q => m_axis_tdata(227),
      R => '0'
    );
\gen_data_accumulator[3].acc_data_reg[228]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[3].acc_data[255]_i_1_n_0\,
      D => r0_data(36),
      Q => m_axis_tdata(228),
      R => '0'
    );
\gen_data_accumulator[3].acc_data_reg[229]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[3].acc_data[255]_i_1_n_0\,
      D => r0_data(37),
      Q => m_axis_tdata(229),
      R => '0'
    );
\gen_data_accumulator[3].acc_data_reg[230]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[3].acc_data[255]_i_1_n_0\,
      D => r0_data(38),
      Q => m_axis_tdata(230),
      R => '0'
    );
\gen_data_accumulator[3].acc_data_reg[231]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[3].acc_data[255]_i_1_n_0\,
      D => r0_data(39),
      Q => m_axis_tdata(231),
      R => '0'
    );
\gen_data_accumulator[3].acc_data_reg[232]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[3].acc_data[255]_i_1_n_0\,
      D => r0_data(40),
      Q => m_axis_tdata(232),
      R => '0'
    );
\gen_data_accumulator[3].acc_data_reg[233]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[3].acc_data[255]_i_1_n_0\,
      D => r0_data(41),
      Q => m_axis_tdata(233),
      R => '0'
    );
\gen_data_accumulator[3].acc_data_reg[234]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[3].acc_data[255]_i_1_n_0\,
      D => r0_data(42),
      Q => m_axis_tdata(234),
      R => '0'
    );
\gen_data_accumulator[3].acc_data_reg[235]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[3].acc_data[255]_i_1_n_0\,
      D => r0_data(43),
      Q => m_axis_tdata(235),
      R => '0'
    );
\gen_data_accumulator[3].acc_data_reg[236]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[3].acc_data[255]_i_1_n_0\,
      D => r0_data(44),
      Q => m_axis_tdata(236),
      R => '0'
    );
\gen_data_accumulator[3].acc_data_reg[237]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[3].acc_data[255]_i_1_n_0\,
      D => r0_data(45),
      Q => m_axis_tdata(237),
      R => '0'
    );
\gen_data_accumulator[3].acc_data_reg[238]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[3].acc_data[255]_i_1_n_0\,
      D => r0_data(46),
      Q => m_axis_tdata(238),
      R => '0'
    );
\gen_data_accumulator[3].acc_data_reg[239]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[3].acc_data[255]_i_1_n_0\,
      D => r0_data(47),
      Q => m_axis_tdata(239),
      R => '0'
    );
\gen_data_accumulator[3].acc_data_reg[240]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[3].acc_data[255]_i_1_n_0\,
      D => r0_data(48),
      Q => m_axis_tdata(240),
      R => '0'
    );
\gen_data_accumulator[3].acc_data_reg[241]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[3].acc_data[255]_i_1_n_0\,
      D => r0_data(49),
      Q => m_axis_tdata(241),
      R => '0'
    );
\gen_data_accumulator[3].acc_data_reg[242]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[3].acc_data[255]_i_1_n_0\,
      D => r0_data(50),
      Q => m_axis_tdata(242),
      R => '0'
    );
\gen_data_accumulator[3].acc_data_reg[243]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[3].acc_data[255]_i_1_n_0\,
      D => r0_data(51),
      Q => m_axis_tdata(243),
      R => '0'
    );
\gen_data_accumulator[3].acc_data_reg[244]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[3].acc_data[255]_i_1_n_0\,
      D => r0_data(52),
      Q => m_axis_tdata(244),
      R => '0'
    );
\gen_data_accumulator[3].acc_data_reg[245]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[3].acc_data[255]_i_1_n_0\,
      D => r0_data(53),
      Q => m_axis_tdata(245),
      R => '0'
    );
\gen_data_accumulator[3].acc_data_reg[246]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[3].acc_data[255]_i_1_n_0\,
      D => r0_data(54),
      Q => m_axis_tdata(246),
      R => '0'
    );
\gen_data_accumulator[3].acc_data_reg[247]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[3].acc_data[255]_i_1_n_0\,
      D => r0_data(55),
      Q => m_axis_tdata(247),
      R => '0'
    );
\gen_data_accumulator[3].acc_data_reg[248]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[3].acc_data[255]_i_1_n_0\,
      D => r0_data(56),
      Q => m_axis_tdata(248),
      R => '0'
    );
\gen_data_accumulator[3].acc_data_reg[249]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[3].acc_data[255]_i_1_n_0\,
      D => r0_data(57),
      Q => m_axis_tdata(249),
      R => '0'
    );
\gen_data_accumulator[3].acc_data_reg[250]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[3].acc_data[255]_i_1_n_0\,
      D => r0_data(58),
      Q => m_axis_tdata(250),
      R => '0'
    );
\gen_data_accumulator[3].acc_data_reg[251]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[3].acc_data[255]_i_1_n_0\,
      D => r0_data(59),
      Q => m_axis_tdata(251),
      R => '0'
    );
\gen_data_accumulator[3].acc_data_reg[252]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[3].acc_data[255]_i_1_n_0\,
      D => r0_data(60),
      Q => m_axis_tdata(252),
      R => '0'
    );
\gen_data_accumulator[3].acc_data_reg[253]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[3].acc_data[255]_i_1_n_0\,
      D => r0_data(61),
      Q => m_axis_tdata(253),
      R => '0'
    );
\gen_data_accumulator[3].acc_data_reg[254]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[3].acc_data[255]_i_1_n_0\,
      D => r0_data(62),
      Q => m_axis_tdata(254),
      R => '0'
    );
\gen_data_accumulator[3].acc_data_reg[255]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[3].acc_data[255]_i_1_n_0\,
      D => r0_data(63),
      Q => m_axis_tdata(255),
      R => '0'
    );
\gen_data_accumulator[3].acc_keep_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[3].acc_data[255]_i_1_n_0\,
      D => r0_keep(0),
      Q => m_axis_tkeep(24),
      R => \acc_data[63]_i_1_n_0\
    );
\gen_data_accumulator[3].acc_keep_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[3].acc_data[255]_i_1_n_0\,
      D => r0_keep(1),
      Q => m_axis_tkeep(25),
      R => \acc_data[63]_i_1_n_0\
    );
\gen_data_accumulator[3].acc_keep_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[3].acc_data[255]_i_1_n_0\,
      D => r0_keep(2),
      Q => m_axis_tkeep(26),
      R => \acc_data[63]_i_1_n_0\
    );
\gen_data_accumulator[3].acc_keep_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[3].acc_data[255]_i_1_n_0\,
      D => r0_keep(3),
      Q => m_axis_tkeep(27),
      R => \acc_data[63]_i_1_n_0\
    );
\gen_data_accumulator[3].acc_keep_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[3].acc_data[255]_i_1_n_0\,
      D => r0_keep(4),
      Q => m_axis_tkeep(28),
      R => \acc_data[63]_i_1_n_0\
    );
\gen_data_accumulator[3].acc_keep_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[3].acc_data[255]_i_1_n_0\,
      D => r0_keep(5),
      Q => m_axis_tkeep(29),
      R => \acc_data[63]_i_1_n_0\
    );
\gen_data_accumulator[3].acc_keep_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[3].acc_data[255]_i_1_n_0\,
      D => r0_keep(6),
      Q => m_axis_tkeep(30),
      R => \acc_data[63]_i_1_n_0\
    );
\gen_data_accumulator[3].acc_keep_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[3].acc_data[255]_i_1_n_0\,
      D => r0_keep(7),
      Q => m_axis_tkeep(31),
      R => \acc_data[63]_i_1_n_0\
    );
\gen_data_accumulator[4].acc_data[319]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^state_reg[1]_0\,
      I1 => \r0_reg_sel_reg_n_0_[4]\,
      I2 => \^state_reg[0]_0\,
      I3 => \state_reg_n_0_[2]\,
      O => \gen_data_accumulator[4].acc_data[319]_i_1_n_0\
    );
\gen_data_accumulator[4].acc_data_reg[256]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[4].acc_data[319]_i_1_n_0\,
      D => r0_data(0),
      Q => m_axis_tdata(256),
      R => '0'
    );
\gen_data_accumulator[4].acc_data_reg[257]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[4].acc_data[319]_i_1_n_0\,
      D => r0_data(1),
      Q => m_axis_tdata(257),
      R => '0'
    );
\gen_data_accumulator[4].acc_data_reg[258]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[4].acc_data[319]_i_1_n_0\,
      D => r0_data(2),
      Q => m_axis_tdata(258),
      R => '0'
    );
\gen_data_accumulator[4].acc_data_reg[259]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[4].acc_data[319]_i_1_n_0\,
      D => r0_data(3),
      Q => m_axis_tdata(259),
      R => '0'
    );
\gen_data_accumulator[4].acc_data_reg[260]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[4].acc_data[319]_i_1_n_0\,
      D => r0_data(4),
      Q => m_axis_tdata(260),
      R => '0'
    );
\gen_data_accumulator[4].acc_data_reg[261]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[4].acc_data[319]_i_1_n_0\,
      D => r0_data(5),
      Q => m_axis_tdata(261),
      R => '0'
    );
\gen_data_accumulator[4].acc_data_reg[262]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[4].acc_data[319]_i_1_n_0\,
      D => r0_data(6),
      Q => m_axis_tdata(262),
      R => '0'
    );
\gen_data_accumulator[4].acc_data_reg[263]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[4].acc_data[319]_i_1_n_0\,
      D => r0_data(7),
      Q => m_axis_tdata(263),
      R => '0'
    );
\gen_data_accumulator[4].acc_data_reg[264]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[4].acc_data[319]_i_1_n_0\,
      D => r0_data(8),
      Q => m_axis_tdata(264),
      R => '0'
    );
\gen_data_accumulator[4].acc_data_reg[265]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[4].acc_data[319]_i_1_n_0\,
      D => r0_data(9),
      Q => m_axis_tdata(265),
      R => '0'
    );
\gen_data_accumulator[4].acc_data_reg[266]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[4].acc_data[319]_i_1_n_0\,
      D => r0_data(10),
      Q => m_axis_tdata(266),
      R => '0'
    );
\gen_data_accumulator[4].acc_data_reg[267]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[4].acc_data[319]_i_1_n_0\,
      D => r0_data(11),
      Q => m_axis_tdata(267),
      R => '0'
    );
\gen_data_accumulator[4].acc_data_reg[268]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[4].acc_data[319]_i_1_n_0\,
      D => r0_data(12),
      Q => m_axis_tdata(268),
      R => '0'
    );
\gen_data_accumulator[4].acc_data_reg[269]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[4].acc_data[319]_i_1_n_0\,
      D => r0_data(13),
      Q => m_axis_tdata(269),
      R => '0'
    );
\gen_data_accumulator[4].acc_data_reg[270]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[4].acc_data[319]_i_1_n_0\,
      D => r0_data(14),
      Q => m_axis_tdata(270),
      R => '0'
    );
\gen_data_accumulator[4].acc_data_reg[271]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[4].acc_data[319]_i_1_n_0\,
      D => r0_data(15),
      Q => m_axis_tdata(271),
      R => '0'
    );
\gen_data_accumulator[4].acc_data_reg[272]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[4].acc_data[319]_i_1_n_0\,
      D => r0_data(16),
      Q => m_axis_tdata(272),
      R => '0'
    );
\gen_data_accumulator[4].acc_data_reg[273]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[4].acc_data[319]_i_1_n_0\,
      D => r0_data(17),
      Q => m_axis_tdata(273),
      R => '0'
    );
\gen_data_accumulator[4].acc_data_reg[274]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[4].acc_data[319]_i_1_n_0\,
      D => r0_data(18),
      Q => m_axis_tdata(274),
      R => '0'
    );
\gen_data_accumulator[4].acc_data_reg[275]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[4].acc_data[319]_i_1_n_0\,
      D => r0_data(19),
      Q => m_axis_tdata(275),
      R => '0'
    );
\gen_data_accumulator[4].acc_data_reg[276]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[4].acc_data[319]_i_1_n_0\,
      D => r0_data(20),
      Q => m_axis_tdata(276),
      R => '0'
    );
\gen_data_accumulator[4].acc_data_reg[277]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[4].acc_data[319]_i_1_n_0\,
      D => r0_data(21),
      Q => m_axis_tdata(277),
      R => '0'
    );
\gen_data_accumulator[4].acc_data_reg[278]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[4].acc_data[319]_i_1_n_0\,
      D => r0_data(22),
      Q => m_axis_tdata(278),
      R => '0'
    );
\gen_data_accumulator[4].acc_data_reg[279]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[4].acc_data[319]_i_1_n_0\,
      D => r0_data(23),
      Q => m_axis_tdata(279),
      R => '0'
    );
\gen_data_accumulator[4].acc_data_reg[280]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[4].acc_data[319]_i_1_n_0\,
      D => r0_data(24),
      Q => m_axis_tdata(280),
      R => '0'
    );
\gen_data_accumulator[4].acc_data_reg[281]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[4].acc_data[319]_i_1_n_0\,
      D => r0_data(25),
      Q => m_axis_tdata(281),
      R => '0'
    );
\gen_data_accumulator[4].acc_data_reg[282]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[4].acc_data[319]_i_1_n_0\,
      D => r0_data(26),
      Q => m_axis_tdata(282),
      R => '0'
    );
\gen_data_accumulator[4].acc_data_reg[283]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[4].acc_data[319]_i_1_n_0\,
      D => r0_data(27),
      Q => m_axis_tdata(283),
      R => '0'
    );
\gen_data_accumulator[4].acc_data_reg[284]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[4].acc_data[319]_i_1_n_0\,
      D => r0_data(28),
      Q => m_axis_tdata(284),
      R => '0'
    );
\gen_data_accumulator[4].acc_data_reg[285]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[4].acc_data[319]_i_1_n_0\,
      D => r0_data(29),
      Q => m_axis_tdata(285),
      R => '0'
    );
\gen_data_accumulator[4].acc_data_reg[286]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[4].acc_data[319]_i_1_n_0\,
      D => r0_data(30),
      Q => m_axis_tdata(286),
      R => '0'
    );
\gen_data_accumulator[4].acc_data_reg[287]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[4].acc_data[319]_i_1_n_0\,
      D => r0_data(31),
      Q => m_axis_tdata(287),
      R => '0'
    );
\gen_data_accumulator[4].acc_data_reg[288]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[4].acc_data[319]_i_1_n_0\,
      D => r0_data(32),
      Q => m_axis_tdata(288),
      R => '0'
    );
\gen_data_accumulator[4].acc_data_reg[289]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[4].acc_data[319]_i_1_n_0\,
      D => r0_data(33),
      Q => m_axis_tdata(289),
      R => '0'
    );
\gen_data_accumulator[4].acc_data_reg[290]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[4].acc_data[319]_i_1_n_0\,
      D => r0_data(34),
      Q => m_axis_tdata(290),
      R => '0'
    );
\gen_data_accumulator[4].acc_data_reg[291]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[4].acc_data[319]_i_1_n_0\,
      D => r0_data(35),
      Q => m_axis_tdata(291),
      R => '0'
    );
\gen_data_accumulator[4].acc_data_reg[292]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[4].acc_data[319]_i_1_n_0\,
      D => r0_data(36),
      Q => m_axis_tdata(292),
      R => '0'
    );
\gen_data_accumulator[4].acc_data_reg[293]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[4].acc_data[319]_i_1_n_0\,
      D => r0_data(37),
      Q => m_axis_tdata(293),
      R => '0'
    );
\gen_data_accumulator[4].acc_data_reg[294]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[4].acc_data[319]_i_1_n_0\,
      D => r0_data(38),
      Q => m_axis_tdata(294),
      R => '0'
    );
\gen_data_accumulator[4].acc_data_reg[295]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[4].acc_data[319]_i_1_n_0\,
      D => r0_data(39),
      Q => m_axis_tdata(295),
      R => '0'
    );
\gen_data_accumulator[4].acc_data_reg[296]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[4].acc_data[319]_i_1_n_0\,
      D => r0_data(40),
      Q => m_axis_tdata(296),
      R => '0'
    );
\gen_data_accumulator[4].acc_data_reg[297]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[4].acc_data[319]_i_1_n_0\,
      D => r0_data(41),
      Q => m_axis_tdata(297),
      R => '0'
    );
\gen_data_accumulator[4].acc_data_reg[298]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[4].acc_data[319]_i_1_n_0\,
      D => r0_data(42),
      Q => m_axis_tdata(298),
      R => '0'
    );
\gen_data_accumulator[4].acc_data_reg[299]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[4].acc_data[319]_i_1_n_0\,
      D => r0_data(43),
      Q => m_axis_tdata(299),
      R => '0'
    );
\gen_data_accumulator[4].acc_data_reg[300]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[4].acc_data[319]_i_1_n_0\,
      D => r0_data(44),
      Q => m_axis_tdata(300),
      R => '0'
    );
\gen_data_accumulator[4].acc_data_reg[301]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[4].acc_data[319]_i_1_n_0\,
      D => r0_data(45),
      Q => m_axis_tdata(301),
      R => '0'
    );
\gen_data_accumulator[4].acc_data_reg[302]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[4].acc_data[319]_i_1_n_0\,
      D => r0_data(46),
      Q => m_axis_tdata(302),
      R => '0'
    );
\gen_data_accumulator[4].acc_data_reg[303]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[4].acc_data[319]_i_1_n_0\,
      D => r0_data(47),
      Q => m_axis_tdata(303),
      R => '0'
    );
\gen_data_accumulator[4].acc_data_reg[304]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[4].acc_data[319]_i_1_n_0\,
      D => r0_data(48),
      Q => m_axis_tdata(304),
      R => '0'
    );
\gen_data_accumulator[4].acc_data_reg[305]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[4].acc_data[319]_i_1_n_0\,
      D => r0_data(49),
      Q => m_axis_tdata(305),
      R => '0'
    );
\gen_data_accumulator[4].acc_data_reg[306]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[4].acc_data[319]_i_1_n_0\,
      D => r0_data(50),
      Q => m_axis_tdata(306),
      R => '0'
    );
\gen_data_accumulator[4].acc_data_reg[307]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[4].acc_data[319]_i_1_n_0\,
      D => r0_data(51),
      Q => m_axis_tdata(307),
      R => '0'
    );
\gen_data_accumulator[4].acc_data_reg[308]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[4].acc_data[319]_i_1_n_0\,
      D => r0_data(52),
      Q => m_axis_tdata(308),
      R => '0'
    );
\gen_data_accumulator[4].acc_data_reg[309]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[4].acc_data[319]_i_1_n_0\,
      D => r0_data(53),
      Q => m_axis_tdata(309),
      R => '0'
    );
\gen_data_accumulator[4].acc_data_reg[310]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[4].acc_data[319]_i_1_n_0\,
      D => r0_data(54),
      Q => m_axis_tdata(310),
      R => '0'
    );
\gen_data_accumulator[4].acc_data_reg[311]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[4].acc_data[319]_i_1_n_0\,
      D => r0_data(55),
      Q => m_axis_tdata(311),
      R => '0'
    );
\gen_data_accumulator[4].acc_data_reg[312]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[4].acc_data[319]_i_1_n_0\,
      D => r0_data(56),
      Q => m_axis_tdata(312),
      R => '0'
    );
\gen_data_accumulator[4].acc_data_reg[313]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[4].acc_data[319]_i_1_n_0\,
      D => r0_data(57),
      Q => m_axis_tdata(313),
      R => '0'
    );
\gen_data_accumulator[4].acc_data_reg[314]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[4].acc_data[319]_i_1_n_0\,
      D => r0_data(58),
      Q => m_axis_tdata(314),
      R => '0'
    );
\gen_data_accumulator[4].acc_data_reg[315]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[4].acc_data[319]_i_1_n_0\,
      D => r0_data(59),
      Q => m_axis_tdata(315),
      R => '0'
    );
\gen_data_accumulator[4].acc_data_reg[316]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[4].acc_data[319]_i_1_n_0\,
      D => r0_data(60),
      Q => m_axis_tdata(316),
      R => '0'
    );
\gen_data_accumulator[4].acc_data_reg[317]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[4].acc_data[319]_i_1_n_0\,
      D => r0_data(61),
      Q => m_axis_tdata(317),
      R => '0'
    );
\gen_data_accumulator[4].acc_data_reg[318]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[4].acc_data[319]_i_1_n_0\,
      D => r0_data(62),
      Q => m_axis_tdata(318),
      R => '0'
    );
\gen_data_accumulator[4].acc_data_reg[319]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[4].acc_data[319]_i_1_n_0\,
      D => r0_data(63),
      Q => m_axis_tdata(319),
      R => '0'
    );
\gen_data_accumulator[4].acc_keep_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[4].acc_data[319]_i_1_n_0\,
      D => r0_keep(0),
      Q => m_axis_tkeep(32),
      R => \acc_data[63]_i_1_n_0\
    );
\gen_data_accumulator[4].acc_keep_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[4].acc_data[319]_i_1_n_0\,
      D => r0_keep(1),
      Q => m_axis_tkeep(33),
      R => \acc_data[63]_i_1_n_0\
    );
\gen_data_accumulator[4].acc_keep_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[4].acc_data[319]_i_1_n_0\,
      D => r0_keep(2),
      Q => m_axis_tkeep(34),
      R => \acc_data[63]_i_1_n_0\
    );
\gen_data_accumulator[4].acc_keep_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[4].acc_data[319]_i_1_n_0\,
      D => r0_keep(3),
      Q => m_axis_tkeep(35),
      R => \acc_data[63]_i_1_n_0\
    );
\gen_data_accumulator[4].acc_keep_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[4].acc_data[319]_i_1_n_0\,
      D => r0_keep(4),
      Q => m_axis_tkeep(36),
      R => \acc_data[63]_i_1_n_0\
    );
\gen_data_accumulator[4].acc_keep_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[4].acc_data[319]_i_1_n_0\,
      D => r0_keep(5),
      Q => m_axis_tkeep(37),
      R => \acc_data[63]_i_1_n_0\
    );
\gen_data_accumulator[4].acc_keep_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[4].acc_data[319]_i_1_n_0\,
      D => r0_keep(6),
      Q => m_axis_tkeep(38),
      R => \acc_data[63]_i_1_n_0\
    );
\gen_data_accumulator[4].acc_keep_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[4].acc_data[319]_i_1_n_0\,
      D => r0_keep(7),
      Q => m_axis_tkeep(39),
      R => \acc_data[63]_i_1_n_0\
    );
\gen_data_accumulator[5].acc_data[383]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^state_reg[1]_0\,
      I1 => \r0_reg_sel_reg_n_0_[5]\,
      I2 => \^state_reg[0]_0\,
      I3 => \state_reg_n_0_[2]\,
      O => \gen_data_accumulator[5].acc_data[383]_i_1_n_0\
    );
\gen_data_accumulator[5].acc_data_reg[320]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[5].acc_data[383]_i_1_n_0\,
      D => r0_data(0),
      Q => m_axis_tdata(320),
      R => '0'
    );
\gen_data_accumulator[5].acc_data_reg[321]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[5].acc_data[383]_i_1_n_0\,
      D => r0_data(1),
      Q => m_axis_tdata(321),
      R => '0'
    );
\gen_data_accumulator[5].acc_data_reg[322]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[5].acc_data[383]_i_1_n_0\,
      D => r0_data(2),
      Q => m_axis_tdata(322),
      R => '0'
    );
\gen_data_accumulator[5].acc_data_reg[323]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[5].acc_data[383]_i_1_n_0\,
      D => r0_data(3),
      Q => m_axis_tdata(323),
      R => '0'
    );
\gen_data_accumulator[5].acc_data_reg[324]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[5].acc_data[383]_i_1_n_0\,
      D => r0_data(4),
      Q => m_axis_tdata(324),
      R => '0'
    );
\gen_data_accumulator[5].acc_data_reg[325]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[5].acc_data[383]_i_1_n_0\,
      D => r0_data(5),
      Q => m_axis_tdata(325),
      R => '0'
    );
\gen_data_accumulator[5].acc_data_reg[326]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[5].acc_data[383]_i_1_n_0\,
      D => r0_data(6),
      Q => m_axis_tdata(326),
      R => '0'
    );
\gen_data_accumulator[5].acc_data_reg[327]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[5].acc_data[383]_i_1_n_0\,
      D => r0_data(7),
      Q => m_axis_tdata(327),
      R => '0'
    );
\gen_data_accumulator[5].acc_data_reg[328]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[5].acc_data[383]_i_1_n_0\,
      D => r0_data(8),
      Q => m_axis_tdata(328),
      R => '0'
    );
\gen_data_accumulator[5].acc_data_reg[329]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[5].acc_data[383]_i_1_n_0\,
      D => r0_data(9),
      Q => m_axis_tdata(329),
      R => '0'
    );
\gen_data_accumulator[5].acc_data_reg[330]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[5].acc_data[383]_i_1_n_0\,
      D => r0_data(10),
      Q => m_axis_tdata(330),
      R => '0'
    );
\gen_data_accumulator[5].acc_data_reg[331]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[5].acc_data[383]_i_1_n_0\,
      D => r0_data(11),
      Q => m_axis_tdata(331),
      R => '0'
    );
\gen_data_accumulator[5].acc_data_reg[332]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[5].acc_data[383]_i_1_n_0\,
      D => r0_data(12),
      Q => m_axis_tdata(332),
      R => '0'
    );
\gen_data_accumulator[5].acc_data_reg[333]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[5].acc_data[383]_i_1_n_0\,
      D => r0_data(13),
      Q => m_axis_tdata(333),
      R => '0'
    );
\gen_data_accumulator[5].acc_data_reg[334]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[5].acc_data[383]_i_1_n_0\,
      D => r0_data(14),
      Q => m_axis_tdata(334),
      R => '0'
    );
\gen_data_accumulator[5].acc_data_reg[335]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[5].acc_data[383]_i_1_n_0\,
      D => r0_data(15),
      Q => m_axis_tdata(335),
      R => '0'
    );
\gen_data_accumulator[5].acc_data_reg[336]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[5].acc_data[383]_i_1_n_0\,
      D => r0_data(16),
      Q => m_axis_tdata(336),
      R => '0'
    );
\gen_data_accumulator[5].acc_data_reg[337]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[5].acc_data[383]_i_1_n_0\,
      D => r0_data(17),
      Q => m_axis_tdata(337),
      R => '0'
    );
\gen_data_accumulator[5].acc_data_reg[338]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[5].acc_data[383]_i_1_n_0\,
      D => r0_data(18),
      Q => m_axis_tdata(338),
      R => '0'
    );
\gen_data_accumulator[5].acc_data_reg[339]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[5].acc_data[383]_i_1_n_0\,
      D => r0_data(19),
      Q => m_axis_tdata(339),
      R => '0'
    );
\gen_data_accumulator[5].acc_data_reg[340]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[5].acc_data[383]_i_1_n_0\,
      D => r0_data(20),
      Q => m_axis_tdata(340),
      R => '0'
    );
\gen_data_accumulator[5].acc_data_reg[341]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[5].acc_data[383]_i_1_n_0\,
      D => r0_data(21),
      Q => m_axis_tdata(341),
      R => '0'
    );
\gen_data_accumulator[5].acc_data_reg[342]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[5].acc_data[383]_i_1_n_0\,
      D => r0_data(22),
      Q => m_axis_tdata(342),
      R => '0'
    );
\gen_data_accumulator[5].acc_data_reg[343]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[5].acc_data[383]_i_1_n_0\,
      D => r0_data(23),
      Q => m_axis_tdata(343),
      R => '0'
    );
\gen_data_accumulator[5].acc_data_reg[344]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[5].acc_data[383]_i_1_n_0\,
      D => r0_data(24),
      Q => m_axis_tdata(344),
      R => '0'
    );
\gen_data_accumulator[5].acc_data_reg[345]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[5].acc_data[383]_i_1_n_0\,
      D => r0_data(25),
      Q => m_axis_tdata(345),
      R => '0'
    );
\gen_data_accumulator[5].acc_data_reg[346]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[5].acc_data[383]_i_1_n_0\,
      D => r0_data(26),
      Q => m_axis_tdata(346),
      R => '0'
    );
\gen_data_accumulator[5].acc_data_reg[347]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[5].acc_data[383]_i_1_n_0\,
      D => r0_data(27),
      Q => m_axis_tdata(347),
      R => '0'
    );
\gen_data_accumulator[5].acc_data_reg[348]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[5].acc_data[383]_i_1_n_0\,
      D => r0_data(28),
      Q => m_axis_tdata(348),
      R => '0'
    );
\gen_data_accumulator[5].acc_data_reg[349]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[5].acc_data[383]_i_1_n_0\,
      D => r0_data(29),
      Q => m_axis_tdata(349),
      R => '0'
    );
\gen_data_accumulator[5].acc_data_reg[350]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[5].acc_data[383]_i_1_n_0\,
      D => r0_data(30),
      Q => m_axis_tdata(350),
      R => '0'
    );
\gen_data_accumulator[5].acc_data_reg[351]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[5].acc_data[383]_i_1_n_0\,
      D => r0_data(31),
      Q => m_axis_tdata(351),
      R => '0'
    );
\gen_data_accumulator[5].acc_data_reg[352]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[5].acc_data[383]_i_1_n_0\,
      D => r0_data(32),
      Q => m_axis_tdata(352),
      R => '0'
    );
\gen_data_accumulator[5].acc_data_reg[353]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[5].acc_data[383]_i_1_n_0\,
      D => r0_data(33),
      Q => m_axis_tdata(353),
      R => '0'
    );
\gen_data_accumulator[5].acc_data_reg[354]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[5].acc_data[383]_i_1_n_0\,
      D => r0_data(34),
      Q => m_axis_tdata(354),
      R => '0'
    );
\gen_data_accumulator[5].acc_data_reg[355]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[5].acc_data[383]_i_1_n_0\,
      D => r0_data(35),
      Q => m_axis_tdata(355),
      R => '0'
    );
\gen_data_accumulator[5].acc_data_reg[356]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[5].acc_data[383]_i_1_n_0\,
      D => r0_data(36),
      Q => m_axis_tdata(356),
      R => '0'
    );
\gen_data_accumulator[5].acc_data_reg[357]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[5].acc_data[383]_i_1_n_0\,
      D => r0_data(37),
      Q => m_axis_tdata(357),
      R => '0'
    );
\gen_data_accumulator[5].acc_data_reg[358]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[5].acc_data[383]_i_1_n_0\,
      D => r0_data(38),
      Q => m_axis_tdata(358),
      R => '0'
    );
\gen_data_accumulator[5].acc_data_reg[359]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[5].acc_data[383]_i_1_n_0\,
      D => r0_data(39),
      Q => m_axis_tdata(359),
      R => '0'
    );
\gen_data_accumulator[5].acc_data_reg[360]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[5].acc_data[383]_i_1_n_0\,
      D => r0_data(40),
      Q => m_axis_tdata(360),
      R => '0'
    );
\gen_data_accumulator[5].acc_data_reg[361]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[5].acc_data[383]_i_1_n_0\,
      D => r0_data(41),
      Q => m_axis_tdata(361),
      R => '0'
    );
\gen_data_accumulator[5].acc_data_reg[362]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[5].acc_data[383]_i_1_n_0\,
      D => r0_data(42),
      Q => m_axis_tdata(362),
      R => '0'
    );
\gen_data_accumulator[5].acc_data_reg[363]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[5].acc_data[383]_i_1_n_0\,
      D => r0_data(43),
      Q => m_axis_tdata(363),
      R => '0'
    );
\gen_data_accumulator[5].acc_data_reg[364]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[5].acc_data[383]_i_1_n_0\,
      D => r0_data(44),
      Q => m_axis_tdata(364),
      R => '0'
    );
\gen_data_accumulator[5].acc_data_reg[365]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[5].acc_data[383]_i_1_n_0\,
      D => r0_data(45),
      Q => m_axis_tdata(365),
      R => '0'
    );
\gen_data_accumulator[5].acc_data_reg[366]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[5].acc_data[383]_i_1_n_0\,
      D => r0_data(46),
      Q => m_axis_tdata(366),
      R => '0'
    );
\gen_data_accumulator[5].acc_data_reg[367]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[5].acc_data[383]_i_1_n_0\,
      D => r0_data(47),
      Q => m_axis_tdata(367),
      R => '0'
    );
\gen_data_accumulator[5].acc_data_reg[368]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[5].acc_data[383]_i_1_n_0\,
      D => r0_data(48),
      Q => m_axis_tdata(368),
      R => '0'
    );
\gen_data_accumulator[5].acc_data_reg[369]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[5].acc_data[383]_i_1_n_0\,
      D => r0_data(49),
      Q => m_axis_tdata(369),
      R => '0'
    );
\gen_data_accumulator[5].acc_data_reg[370]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[5].acc_data[383]_i_1_n_0\,
      D => r0_data(50),
      Q => m_axis_tdata(370),
      R => '0'
    );
\gen_data_accumulator[5].acc_data_reg[371]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[5].acc_data[383]_i_1_n_0\,
      D => r0_data(51),
      Q => m_axis_tdata(371),
      R => '0'
    );
\gen_data_accumulator[5].acc_data_reg[372]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[5].acc_data[383]_i_1_n_0\,
      D => r0_data(52),
      Q => m_axis_tdata(372),
      R => '0'
    );
\gen_data_accumulator[5].acc_data_reg[373]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[5].acc_data[383]_i_1_n_0\,
      D => r0_data(53),
      Q => m_axis_tdata(373),
      R => '0'
    );
\gen_data_accumulator[5].acc_data_reg[374]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[5].acc_data[383]_i_1_n_0\,
      D => r0_data(54),
      Q => m_axis_tdata(374),
      R => '0'
    );
\gen_data_accumulator[5].acc_data_reg[375]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[5].acc_data[383]_i_1_n_0\,
      D => r0_data(55),
      Q => m_axis_tdata(375),
      R => '0'
    );
\gen_data_accumulator[5].acc_data_reg[376]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[5].acc_data[383]_i_1_n_0\,
      D => r0_data(56),
      Q => m_axis_tdata(376),
      R => '0'
    );
\gen_data_accumulator[5].acc_data_reg[377]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[5].acc_data[383]_i_1_n_0\,
      D => r0_data(57),
      Q => m_axis_tdata(377),
      R => '0'
    );
\gen_data_accumulator[5].acc_data_reg[378]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[5].acc_data[383]_i_1_n_0\,
      D => r0_data(58),
      Q => m_axis_tdata(378),
      R => '0'
    );
\gen_data_accumulator[5].acc_data_reg[379]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[5].acc_data[383]_i_1_n_0\,
      D => r0_data(59),
      Q => m_axis_tdata(379),
      R => '0'
    );
\gen_data_accumulator[5].acc_data_reg[380]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[5].acc_data[383]_i_1_n_0\,
      D => r0_data(60),
      Q => m_axis_tdata(380),
      R => '0'
    );
\gen_data_accumulator[5].acc_data_reg[381]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[5].acc_data[383]_i_1_n_0\,
      D => r0_data(61),
      Q => m_axis_tdata(381),
      R => '0'
    );
\gen_data_accumulator[5].acc_data_reg[382]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[5].acc_data[383]_i_1_n_0\,
      D => r0_data(62),
      Q => m_axis_tdata(382),
      R => '0'
    );
\gen_data_accumulator[5].acc_data_reg[383]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[5].acc_data[383]_i_1_n_0\,
      D => r0_data(63),
      Q => m_axis_tdata(383),
      R => '0'
    );
\gen_data_accumulator[5].acc_keep_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[5].acc_data[383]_i_1_n_0\,
      D => r0_keep(0),
      Q => m_axis_tkeep(40),
      R => \acc_data[63]_i_1_n_0\
    );
\gen_data_accumulator[5].acc_keep_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[5].acc_data[383]_i_1_n_0\,
      D => r0_keep(1),
      Q => m_axis_tkeep(41),
      R => \acc_data[63]_i_1_n_0\
    );
\gen_data_accumulator[5].acc_keep_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[5].acc_data[383]_i_1_n_0\,
      D => r0_keep(2),
      Q => m_axis_tkeep(42),
      R => \acc_data[63]_i_1_n_0\
    );
\gen_data_accumulator[5].acc_keep_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[5].acc_data[383]_i_1_n_0\,
      D => r0_keep(3),
      Q => m_axis_tkeep(43),
      R => \acc_data[63]_i_1_n_0\
    );
\gen_data_accumulator[5].acc_keep_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[5].acc_data[383]_i_1_n_0\,
      D => r0_keep(4),
      Q => m_axis_tkeep(44),
      R => \acc_data[63]_i_1_n_0\
    );
\gen_data_accumulator[5].acc_keep_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[5].acc_data[383]_i_1_n_0\,
      D => r0_keep(5),
      Q => m_axis_tkeep(45),
      R => \acc_data[63]_i_1_n_0\
    );
\gen_data_accumulator[5].acc_keep_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[5].acc_data[383]_i_1_n_0\,
      D => r0_keep(6),
      Q => m_axis_tkeep(46),
      R => \acc_data[63]_i_1_n_0\
    );
\gen_data_accumulator[5].acc_keep_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[5].acc_data[383]_i_1_n_0\,
      D => r0_keep(7),
      Q => m_axis_tkeep(47),
      R => \acc_data[63]_i_1_n_0\
    );
\gen_data_accumulator[6].acc_data[447]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^state_reg[1]_0\,
      I1 => \r0_reg_sel_reg_n_0_[6]\,
      I2 => \^state_reg[0]_0\,
      I3 => \state_reg_n_0_[2]\,
      O => \gen_data_accumulator[6].acc_data[447]_i_1_n_0\
    );
\gen_data_accumulator[6].acc_data_reg[384]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[6].acc_data[447]_i_1_n_0\,
      D => r0_data(0),
      Q => m_axis_tdata(384),
      R => '0'
    );
\gen_data_accumulator[6].acc_data_reg[385]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[6].acc_data[447]_i_1_n_0\,
      D => r0_data(1),
      Q => m_axis_tdata(385),
      R => '0'
    );
\gen_data_accumulator[6].acc_data_reg[386]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[6].acc_data[447]_i_1_n_0\,
      D => r0_data(2),
      Q => m_axis_tdata(386),
      R => '0'
    );
\gen_data_accumulator[6].acc_data_reg[387]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[6].acc_data[447]_i_1_n_0\,
      D => r0_data(3),
      Q => m_axis_tdata(387),
      R => '0'
    );
\gen_data_accumulator[6].acc_data_reg[388]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[6].acc_data[447]_i_1_n_0\,
      D => r0_data(4),
      Q => m_axis_tdata(388),
      R => '0'
    );
\gen_data_accumulator[6].acc_data_reg[389]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[6].acc_data[447]_i_1_n_0\,
      D => r0_data(5),
      Q => m_axis_tdata(389),
      R => '0'
    );
\gen_data_accumulator[6].acc_data_reg[390]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[6].acc_data[447]_i_1_n_0\,
      D => r0_data(6),
      Q => m_axis_tdata(390),
      R => '0'
    );
\gen_data_accumulator[6].acc_data_reg[391]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[6].acc_data[447]_i_1_n_0\,
      D => r0_data(7),
      Q => m_axis_tdata(391),
      R => '0'
    );
\gen_data_accumulator[6].acc_data_reg[392]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[6].acc_data[447]_i_1_n_0\,
      D => r0_data(8),
      Q => m_axis_tdata(392),
      R => '0'
    );
\gen_data_accumulator[6].acc_data_reg[393]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[6].acc_data[447]_i_1_n_0\,
      D => r0_data(9),
      Q => m_axis_tdata(393),
      R => '0'
    );
\gen_data_accumulator[6].acc_data_reg[394]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[6].acc_data[447]_i_1_n_0\,
      D => r0_data(10),
      Q => m_axis_tdata(394),
      R => '0'
    );
\gen_data_accumulator[6].acc_data_reg[395]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[6].acc_data[447]_i_1_n_0\,
      D => r0_data(11),
      Q => m_axis_tdata(395),
      R => '0'
    );
\gen_data_accumulator[6].acc_data_reg[396]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[6].acc_data[447]_i_1_n_0\,
      D => r0_data(12),
      Q => m_axis_tdata(396),
      R => '0'
    );
\gen_data_accumulator[6].acc_data_reg[397]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[6].acc_data[447]_i_1_n_0\,
      D => r0_data(13),
      Q => m_axis_tdata(397),
      R => '0'
    );
\gen_data_accumulator[6].acc_data_reg[398]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[6].acc_data[447]_i_1_n_0\,
      D => r0_data(14),
      Q => m_axis_tdata(398),
      R => '0'
    );
\gen_data_accumulator[6].acc_data_reg[399]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[6].acc_data[447]_i_1_n_0\,
      D => r0_data(15),
      Q => m_axis_tdata(399),
      R => '0'
    );
\gen_data_accumulator[6].acc_data_reg[400]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[6].acc_data[447]_i_1_n_0\,
      D => r0_data(16),
      Q => m_axis_tdata(400),
      R => '0'
    );
\gen_data_accumulator[6].acc_data_reg[401]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[6].acc_data[447]_i_1_n_0\,
      D => r0_data(17),
      Q => m_axis_tdata(401),
      R => '0'
    );
\gen_data_accumulator[6].acc_data_reg[402]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[6].acc_data[447]_i_1_n_0\,
      D => r0_data(18),
      Q => m_axis_tdata(402),
      R => '0'
    );
\gen_data_accumulator[6].acc_data_reg[403]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[6].acc_data[447]_i_1_n_0\,
      D => r0_data(19),
      Q => m_axis_tdata(403),
      R => '0'
    );
\gen_data_accumulator[6].acc_data_reg[404]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[6].acc_data[447]_i_1_n_0\,
      D => r0_data(20),
      Q => m_axis_tdata(404),
      R => '0'
    );
\gen_data_accumulator[6].acc_data_reg[405]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[6].acc_data[447]_i_1_n_0\,
      D => r0_data(21),
      Q => m_axis_tdata(405),
      R => '0'
    );
\gen_data_accumulator[6].acc_data_reg[406]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[6].acc_data[447]_i_1_n_0\,
      D => r0_data(22),
      Q => m_axis_tdata(406),
      R => '0'
    );
\gen_data_accumulator[6].acc_data_reg[407]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[6].acc_data[447]_i_1_n_0\,
      D => r0_data(23),
      Q => m_axis_tdata(407),
      R => '0'
    );
\gen_data_accumulator[6].acc_data_reg[408]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[6].acc_data[447]_i_1_n_0\,
      D => r0_data(24),
      Q => m_axis_tdata(408),
      R => '0'
    );
\gen_data_accumulator[6].acc_data_reg[409]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[6].acc_data[447]_i_1_n_0\,
      D => r0_data(25),
      Q => m_axis_tdata(409),
      R => '0'
    );
\gen_data_accumulator[6].acc_data_reg[410]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[6].acc_data[447]_i_1_n_0\,
      D => r0_data(26),
      Q => m_axis_tdata(410),
      R => '0'
    );
\gen_data_accumulator[6].acc_data_reg[411]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[6].acc_data[447]_i_1_n_0\,
      D => r0_data(27),
      Q => m_axis_tdata(411),
      R => '0'
    );
\gen_data_accumulator[6].acc_data_reg[412]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[6].acc_data[447]_i_1_n_0\,
      D => r0_data(28),
      Q => m_axis_tdata(412),
      R => '0'
    );
\gen_data_accumulator[6].acc_data_reg[413]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[6].acc_data[447]_i_1_n_0\,
      D => r0_data(29),
      Q => m_axis_tdata(413),
      R => '0'
    );
\gen_data_accumulator[6].acc_data_reg[414]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[6].acc_data[447]_i_1_n_0\,
      D => r0_data(30),
      Q => m_axis_tdata(414),
      R => '0'
    );
\gen_data_accumulator[6].acc_data_reg[415]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[6].acc_data[447]_i_1_n_0\,
      D => r0_data(31),
      Q => m_axis_tdata(415),
      R => '0'
    );
\gen_data_accumulator[6].acc_data_reg[416]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[6].acc_data[447]_i_1_n_0\,
      D => r0_data(32),
      Q => m_axis_tdata(416),
      R => '0'
    );
\gen_data_accumulator[6].acc_data_reg[417]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[6].acc_data[447]_i_1_n_0\,
      D => r0_data(33),
      Q => m_axis_tdata(417),
      R => '0'
    );
\gen_data_accumulator[6].acc_data_reg[418]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[6].acc_data[447]_i_1_n_0\,
      D => r0_data(34),
      Q => m_axis_tdata(418),
      R => '0'
    );
\gen_data_accumulator[6].acc_data_reg[419]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[6].acc_data[447]_i_1_n_0\,
      D => r0_data(35),
      Q => m_axis_tdata(419),
      R => '0'
    );
\gen_data_accumulator[6].acc_data_reg[420]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[6].acc_data[447]_i_1_n_0\,
      D => r0_data(36),
      Q => m_axis_tdata(420),
      R => '0'
    );
\gen_data_accumulator[6].acc_data_reg[421]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[6].acc_data[447]_i_1_n_0\,
      D => r0_data(37),
      Q => m_axis_tdata(421),
      R => '0'
    );
\gen_data_accumulator[6].acc_data_reg[422]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[6].acc_data[447]_i_1_n_0\,
      D => r0_data(38),
      Q => m_axis_tdata(422),
      R => '0'
    );
\gen_data_accumulator[6].acc_data_reg[423]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[6].acc_data[447]_i_1_n_0\,
      D => r0_data(39),
      Q => m_axis_tdata(423),
      R => '0'
    );
\gen_data_accumulator[6].acc_data_reg[424]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[6].acc_data[447]_i_1_n_0\,
      D => r0_data(40),
      Q => m_axis_tdata(424),
      R => '0'
    );
\gen_data_accumulator[6].acc_data_reg[425]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[6].acc_data[447]_i_1_n_0\,
      D => r0_data(41),
      Q => m_axis_tdata(425),
      R => '0'
    );
\gen_data_accumulator[6].acc_data_reg[426]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[6].acc_data[447]_i_1_n_0\,
      D => r0_data(42),
      Q => m_axis_tdata(426),
      R => '0'
    );
\gen_data_accumulator[6].acc_data_reg[427]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[6].acc_data[447]_i_1_n_0\,
      D => r0_data(43),
      Q => m_axis_tdata(427),
      R => '0'
    );
\gen_data_accumulator[6].acc_data_reg[428]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[6].acc_data[447]_i_1_n_0\,
      D => r0_data(44),
      Q => m_axis_tdata(428),
      R => '0'
    );
\gen_data_accumulator[6].acc_data_reg[429]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[6].acc_data[447]_i_1_n_0\,
      D => r0_data(45),
      Q => m_axis_tdata(429),
      R => '0'
    );
\gen_data_accumulator[6].acc_data_reg[430]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[6].acc_data[447]_i_1_n_0\,
      D => r0_data(46),
      Q => m_axis_tdata(430),
      R => '0'
    );
\gen_data_accumulator[6].acc_data_reg[431]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[6].acc_data[447]_i_1_n_0\,
      D => r0_data(47),
      Q => m_axis_tdata(431),
      R => '0'
    );
\gen_data_accumulator[6].acc_data_reg[432]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[6].acc_data[447]_i_1_n_0\,
      D => r0_data(48),
      Q => m_axis_tdata(432),
      R => '0'
    );
\gen_data_accumulator[6].acc_data_reg[433]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[6].acc_data[447]_i_1_n_0\,
      D => r0_data(49),
      Q => m_axis_tdata(433),
      R => '0'
    );
\gen_data_accumulator[6].acc_data_reg[434]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[6].acc_data[447]_i_1_n_0\,
      D => r0_data(50),
      Q => m_axis_tdata(434),
      R => '0'
    );
\gen_data_accumulator[6].acc_data_reg[435]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[6].acc_data[447]_i_1_n_0\,
      D => r0_data(51),
      Q => m_axis_tdata(435),
      R => '0'
    );
\gen_data_accumulator[6].acc_data_reg[436]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[6].acc_data[447]_i_1_n_0\,
      D => r0_data(52),
      Q => m_axis_tdata(436),
      R => '0'
    );
\gen_data_accumulator[6].acc_data_reg[437]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[6].acc_data[447]_i_1_n_0\,
      D => r0_data(53),
      Q => m_axis_tdata(437),
      R => '0'
    );
\gen_data_accumulator[6].acc_data_reg[438]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[6].acc_data[447]_i_1_n_0\,
      D => r0_data(54),
      Q => m_axis_tdata(438),
      R => '0'
    );
\gen_data_accumulator[6].acc_data_reg[439]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[6].acc_data[447]_i_1_n_0\,
      D => r0_data(55),
      Q => m_axis_tdata(439),
      R => '0'
    );
\gen_data_accumulator[6].acc_data_reg[440]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[6].acc_data[447]_i_1_n_0\,
      D => r0_data(56),
      Q => m_axis_tdata(440),
      R => '0'
    );
\gen_data_accumulator[6].acc_data_reg[441]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[6].acc_data[447]_i_1_n_0\,
      D => r0_data(57),
      Q => m_axis_tdata(441),
      R => '0'
    );
\gen_data_accumulator[6].acc_data_reg[442]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[6].acc_data[447]_i_1_n_0\,
      D => r0_data(58),
      Q => m_axis_tdata(442),
      R => '0'
    );
\gen_data_accumulator[6].acc_data_reg[443]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[6].acc_data[447]_i_1_n_0\,
      D => r0_data(59),
      Q => m_axis_tdata(443),
      R => '0'
    );
\gen_data_accumulator[6].acc_data_reg[444]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[6].acc_data[447]_i_1_n_0\,
      D => r0_data(60),
      Q => m_axis_tdata(444),
      R => '0'
    );
\gen_data_accumulator[6].acc_data_reg[445]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[6].acc_data[447]_i_1_n_0\,
      D => r0_data(61),
      Q => m_axis_tdata(445),
      R => '0'
    );
\gen_data_accumulator[6].acc_data_reg[446]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[6].acc_data[447]_i_1_n_0\,
      D => r0_data(62),
      Q => m_axis_tdata(446),
      R => '0'
    );
\gen_data_accumulator[6].acc_data_reg[447]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[6].acc_data[447]_i_1_n_0\,
      D => r0_data(63),
      Q => m_axis_tdata(447),
      R => '0'
    );
\gen_data_accumulator[6].acc_keep_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[6].acc_data[447]_i_1_n_0\,
      D => r0_keep(0),
      Q => m_axis_tkeep(48),
      R => \acc_data[63]_i_1_n_0\
    );
\gen_data_accumulator[6].acc_keep_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[6].acc_data[447]_i_1_n_0\,
      D => r0_keep(1),
      Q => m_axis_tkeep(49),
      R => \acc_data[63]_i_1_n_0\
    );
\gen_data_accumulator[6].acc_keep_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[6].acc_data[447]_i_1_n_0\,
      D => r0_keep(2),
      Q => m_axis_tkeep(50),
      R => \acc_data[63]_i_1_n_0\
    );
\gen_data_accumulator[6].acc_keep_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[6].acc_data[447]_i_1_n_0\,
      D => r0_keep(3),
      Q => m_axis_tkeep(51),
      R => \acc_data[63]_i_1_n_0\
    );
\gen_data_accumulator[6].acc_keep_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[6].acc_data[447]_i_1_n_0\,
      D => r0_keep(4),
      Q => m_axis_tkeep(52),
      R => \acc_data[63]_i_1_n_0\
    );
\gen_data_accumulator[6].acc_keep_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[6].acc_data[447]_i_1_n_0\,
      D => r0_keep(5),
      Q => m_axis_tkeep(53),
      R => \acc_data[63]_i_1_n_0\
    );
\gen_data_accumulator[6].acc_keep_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[6].acc_data[447]_i_1_n_0\,
      D => r0_keep(6),
      Q => m_axis_tkeep(54),
      R => \acc_data[63]_i_1_n_0\
    );
\gen_data_accumulator[6].acc_keep_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[6].acc_data[447]_i_1_n_0\,
      D => r0_keep(7),
      Q => m_axis_tkeep(55),
      R => \acc_data[63]_i_1_n_0\
    );
\r0_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^state_reg[0]_0\,
      D => s_axis_tdata(0),
      Q => r0_data(0),
      R => '0'
    );
\r0_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^state_reg[0]_0\,
      D => s_axis_tdata(10),
      Q => r0_data(10),
      R => '0'
    );
\r0_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^state_reg[0]_0\,
      D => s_axis_tdata(11),
      Q => r0_data(11),
      R => '0'
    );
\r0_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^state_reg[0]_0\,
      D => s_axis_tdata(12),
      Q => r0_data(12),
      R => '0'
    );
\r0_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^state_reg[0]_0\,
      D => s_axis_tdata(13),
      Q => r0_data(13),
      R => '0'
    );
\r0_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^state_reg[0]_0\,
      D => s_axis_tdata(14),
      Q => r0_data(14),
      R => '0'
    );
\r0_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^state_reg[0]_0\,
      D => s_axis_tdata(15),
      Q => r0_data(15),
      R => '0'
    );
\r0_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^state_reg[0]_0\,
      D => s_axis_tdata(16),
      Q => r0_data(16),
      R => '0'
    );
\r0_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^state_reg[0]_0\,
      D => s_axis_tdata(17),
      Q => r0_data(17),
      R => '0'
    );
\r0_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^state_reg[0]_0\,
      D => s_axis_tdata(18),
      Q => r0_data(18),
      R => '0'
    );
\r0_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^state_reg[0]_0\,
      D => s_axis_tdata(19),
      Q => r0_data(19),
      R => '0'
    );
\r0_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^state_reg[0]_0\,
      D => s_axis_tdata(1),
      Q => r0_data(1),
      R => '0'
    );
\r0_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^state_reg[0]_0\,
      D => s_axis_tdata(20),
      Q => r0_data(20),
      R => '0'
    );
\r0_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^state_reg[0]_0\,
      D => s_axis_tdata(21),
      Q => r0_data(21),
      R => '0'
    );
\r0_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^state_reg[0]_0\,
      D => s_axis_tdata(22),
      Q => r0_data(22),
      R => '0'
    );
\r0_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^state_reg[0]_0\,
      D => s_axis_tdata(23),
      Q => r0_data(23),
      R => '0'
    );
\r0_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^state_reg[0]_0\,
      D => s_axis_tdata(24),
      Q => r0_data(24),
      R => '0'
    );
\r0_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^state_reg[0]_0\,
      D => s_axis_tdata(25),
      Q => r0_data(25),
      R => '0'
    );
\r0_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^state_reg[0]_0\,
      D => s_axis_tdata(26),
      Q => r0_data(26),
      R => '0'
    );
\r0_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^state_reg[0]_0\,
      D => s_axis_tdata(27),
      Q => r0_data(27),
      R => '0'
    );
\r0_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^state_reg[0]_0\,
      D => s_axis_tdata(28),
      Q => r0_data(28),
      R => '0'
    );
\r0_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^state_reg[0]_0\,
      D => s_axis_tdata(29),
      Q => r0_data(29),
      R => '0'
    );
\r0_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^state_reg[0]_0\,
      D => s_axis_tdata(2),
      Q => r0_data(2),
      R => '0'
    );
\r0_data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^state_reg[0]_0\,
      D => s_axis_tdata(30),
      Q => r0_data(30),
      R => '0'
    );
\r0_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^state_reg[0]_0\,
      D => s_axis_tdata(31),
      Q => r0_data(31),
      R => '0'
    );
\r0_data_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^state_reg[0]_0\,
      D => s_axis_tdata(32),
      Q => r0_data(32),
      R => '0'
    );
\r0_data_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^state_reg[0]_0\,
      D => s_axis_tdata(33),
      Q => r0_data(33),
      R => '0'
    );
\r0_data_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^state_reg[0]_0\,
      D => s_axis_tdata(34),
      Q => r0_data(34),
      R => '0'
    );
\r0_data_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^state_reg[0]_0\,
      D => s_axis_tdata(35),
      Q => r0_data(35),
      R => '0'
    );
\r0_data_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^state_reg[0]_0\,
      D => s_axis_tdata(36),
      Q => r0_data(36),
      R => '0'
    );
\r0_data_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^state_reg[0]_0\,
      D => s_axis_tdata(37),
      Q => r0_data(37),
      R => '0'
    );
\r0_data_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^state_reg[0]_0\,
      D => s_axis_tdata(38),
      Q => r0_data(38),
      R => '0'
    );
\r0_data_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^state_reg[0]_0\,
      D => s_axis_tdata(39),
      Q => r0_data(39),
      R => '0'
    );
\r0_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^state_reg[0]_0\,
      D => s_axis_tdata(3),
      Q => r0_data(3),
      R => '0'
    );
\r0_data_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^state_reg[0]_0\,
      D => s_axis_tdata(40),
      Q => r0_data(40),
      R => '0'
    );
\r0_data_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^state_reg[0]_0\,
      D => s_axis_tdata(41),
      Q => r0_data(41),
      R => '0'
    );
\r0_data_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^state_reg[0]_0\,
      D => s_axis_tdata(42),
      Q => r0_data(42),
      R => '0'
    );
\r0_data_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^state_reg[0]_0\,
      D => s_axis_tdata(43),
      Q => r0_data(43),
      R => '0'
    );
\r0_data_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^state_reg[0]_0\,
      D => s_axis_tdata(44),
      Q => r0_data(44),
      R => '0'
    );
\r0_data_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^state_reg[0]_0\,
      D => s_axis_tdata(45),
      Q => r0_data(45),
      R => '0'
    );
\r0_data_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^state_reg[0]_0\,
      D => s_axis_tdata(46),
      Q => r0_data(46),
      R => '0'
    );
\r0_data_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^state_reg[0]_0\,
      D => s_axis_tdata(47),
      Q => r0_data(47),
      R => '0'
    );
\r0_data_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^state_reg[0]_0\,
      D => s_axis_tdata(48),
      Q => r0_data(48),
      R => '0'
    );
\r0_data_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^state_reg[0]_0\,
      D => s_axis_tdata(49),
      Q => r0_data(49),
      R => '0'
    );
\r0_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^state_reg[0]_0\,
      D => s_axis_tdata(4),
      Q => r0_data(4),
      R => '0'
    );
\r0_data_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^state_reg[0]_0\,
      D => s_axis_tdata(50),
      Q => r0_data(50),
      R => '0'
    );
\r0_data_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^state_reg[0]_0\,
      D => s_axis_tdata(51),
      Q => r0_data(51),
      R => '0'
    );
\r0_data_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^state_reg[0]_0\,
      D => s_axis_tdata(52),
      Q => r0_data(52),
      R => '0'
    );
\r0_data_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^state_reg[0]_0\,
      D => s_axis_tdata(53),
      Q => r0_data(53),
      R => '0'
    );
\r0_data_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^state_reg[0]_0\,
      D => s_axis_tdata(54),
      Q => r0_data(54),
      R => '0'
    );
\r0_data_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^state_reg[0]_0\,
      D => s_axis_tdata(55),
      Q => r0_data(55),
      R => '0'
    );
\r0_data_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^state_reg[0]_0\,
      D => s_axis_tdata(56),
      Q => r0_data(56),
      R => '0'
    );
\r0_data_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^state_reg[0]_0\,
      D => s_axis_tdata(57),
      Q => r0_data(57),
      R => '0'
    );
\r0_data_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^state_reg[0]_0\,
      D => s_axis_tdata(58),
      Q => r0_data(58),
      R => '0'
    );
\r0_data_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^state_reg[0]_0\,
      D => s_axis_tdata(59),
      Q => r0_data(59),
      R => '0'
    );
\r0_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^state_reg[0]_0\,
      D => s_axis_tdata(5),
      Q => r0_data(5),
      R => '0'
    );
\r0_data_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^state_reg[0]_0\,
      D => s_axis_tdata(60),
      Q => r0_data(60),
      R => '0'
    );
\r0_data_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^state_reg[0]_0\,
      D => s_axis_tdata(61),
      Q => r0_data(61),
      R => '0'
    );
\r0_data_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^state_reg[0]_0\,
      D => s_axis_tdata(62),
      Q => r0_data(62),
      R => '0'
    );
\r0_data_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^state_reg[0]_0\,
      D => s_axis_tdata(63),
      Q => r0_data(63),
      R => '0'
    );
\r0_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^state_reg[0]_0\,
      D => s_axis_tdata(6),
      Q => r0_data(6),
      R => '0'
    );
\r0_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^state_reg[0]_0\,
      D => s_axis_tdata(7),
      Q => r0_data(7),
      R => '0'
    );
\r0_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^state_reg[0]_0\,
      D => s_axis_tdata(8),
      Q => r0_data(8),
      R => '0'
    );
\r0_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^state_reg[0]_0\,
      D => s_axis_tdata(9),
      Q => r0_data(9),
      R => '0'
    );
\r0_keep_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^state_reg[0]_0\,
      D => s_axis_tkeep(0),
      Q => r0_keep(0),
      R => '0'
    );
\r0_keep_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^state_reg[0]_0\,
      D => s_axis_tkeep(1),
      Q => r0_keep(1),
      R => '0'
    );
\r0_keep_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^state_reg[0]_0\,
      D => s_axis_tkeep(2),
      Q => r0_keep(2),
      R => '0'
    );
\r0_keep_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^state_reg[0]_0\,
      D => s_axis_tkeep(3),
      Q => r0_keep(3),
      R => '0'
    );
\r0_keep_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^state_reg[0]_0\,
      D => s_axis_tkeep(4),
      Q => r0_keep(4),
      R => '0'
    );
\r0_keep_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^state_reg[0]_0\,
      D => s_axis_tkeep(5),
      Q => r0_keep(5),
      R => '0'
    );
\r0_keep_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^state_reg[0]_0\,
      D => s_axis_tkeep(6),
      Q => r0_keep(6),
      R => '0'
    );
\r0_keep_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^state_reg[0]_0\,
      D => s_axis_tkeep(7),
      Q => r0_keep(7),
      R => '0'
    );
r0_last_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^state_reg[0]_0\,
      D => s_axis_tlast,
      Q => r0_last_reg_n_0,
      R => '0'
    );
\r0_reg_sel[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF0FF70FF70"
    )
        port map (
      I0 => \^state_reg[0]_0\,
      I1 => \state_reg_n_0_[2]\,
      I2 => \r0_reg_sel_reg_n_0_[0]\,
      I3 => areset_r,
      I4 => m_axis_tready,
      I5 => \^state_reg[1]_0\,
      O => \r0_reg_sel[0]_i_1_n_0\
    );
\r0_reg_sel[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \^state_reg[1]_0\,
      I1 => m_axis_tready,
      I2 => areset_r,
      O => p_0_in(7)
    );
\r0_reg_sel[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^state_reg[1]_0\,
      I1 => \^state_reg[0]_0\,
      I2 => \state_reg_n_0_[2]\,
      O => p_1_in(7)
    );
\r0_reg_sel_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \r0_reg_sel[0]_i_1_n_0\,
      Q => \r0_reg_sel_reg_n_0_[0]\,
      R => '0'
    );
\r0_reg_sel_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => p_1_in(7),
      D => \r0_reg_sel_reg_n_0_[0]\,
      Q => \r0_reg_sel_reg_n_0_[1]\,
      R => p_0_in(7)
    );
\r0_reg_sel_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => p_1_in(7),
      D => \r0_reg_sel_reg_n_0_[1]\,
      Q => \r0_reg_sel_reg_n_0_[2]\,
      R => p_0_in(7)
    );
\r0_reg_sel_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => p_1_in(7),
      D => \r0_reg_sel_reg_n_0_[2]\,
      Q => \r0_reg_sel_reg_n_0_[3]\,
      R => p_0_in(7)
    );
\r0_reg_sel_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => p_1_in(7),
      D => \r0_reg_sel_reg_n_0_[3]\,
      Q => \r0_reg_sel_reg_n_0_[4]\,
      R => p_0_in(7)
    );
\r0_reg_sel_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => p_1_in(7),
      D => \r0_reg_sel_reg_n_0_[4]\,
      Q => \r0_reg_sel_reg_n_0_[5]\,
      R => p_0_in(7)
    );
\r0_reg_sel_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => p_1_in(7),
      D => \r0_reg_sel_reg_n_0_[5]\,
      Q => \r0_reg_sel_reg_n_0_[6]\,
      R => p_0_in(7)
    );
\r0_reg_sel_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => p_1_in(7),
      D => \r0_reg_sel_reg_n_0_[6]\,
      Q => p_1_in2_in,
      R => p_0_in(7)
    );
\state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFCFFFC77FFFFFF"
    )
        port map (
      I0 => r0_last_reg_n_0,
      I1 => \state_reg_n_0_[2]\,
      I2 => m_axis_tready,
      I3 => \^state_reg[0]_0\,
      I4 => s_axis_tvalid,
      I5 => \^state_reg[1]_0\,
      O => state(0)
    );
\state[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"74444444"
    )
        port map (
      I0 => m_axis_tready,
      I1 => \^state_reg[1]_0\,
      I2 => s_axis_tvalid,
      I3 => p_1_in2_in,
      I4 => \^state_reg[0]_0\,
      O => \state[1]_i_2_n_0\
    );
\state[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CCC88888"
    )
        port map (
      I0 => r0_last_reg_n_0,
      I1 => \^state_reg[0]_0\,
      I2 => p_1_in2_in,
      I3 => \r0_reg_sel_reg_n_0_[6]\,
      I4 => s_axis_tvalid,
      I5 => \^state_reg[1]_0\,
      O => \state[1]_i_3_n_0\
    );
\state[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8B008888"
    )
        port map (
      I0 => m_axis_tready,
      I1 => \^state_reg[1]_0\,
      I2 => p_1_in2_in,
      I3 => s_axis_tvalid,
      I4 => \^state_reg[0]_0\,
      O => \state[2]_i_2_n_0\
    );
\state[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000040000"
    )
        port map (
      I0 => \^state_reg[1]_0\,
      I1 => s_axis_tvalid,
      I2 => p_1_in2_in,
      I3 => \r0_reg_sel_reg_n_0_[6]\,
      I4 => \^state_reg[0]_0\,
      I5 => r0_last_reg_n_0,
      O => \state[2]_i_3_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => state(0),
      Q => \^state_reg[0]_0\,
      R => areset_r
    );
\state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => state(1),
      Q => \^state_reg[1]_0\,
      R => areset_r
    );
\state_reg[1]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \state[1]_i_2_n_0\,
      I1 => \state[1]_i_3_n_0\,
      O => state(1),
      S => \state_reg_n_0_[2]\
    );
\state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => state(2),
      Q => \state_reg_n_0_[2]\,
      R => areset_r
    );
\state_reg[2]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \state[2]_i_2_n_0\,
      I1 => \state[2]_i_3_n_0\,
      O => state(2),
      S => \state_reg_n_0_[2]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_25_axis_dwidth_converter is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    aclken : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute C_AXIS_SIGNAL_SET : integer;
  attribute C_AXIS_SIGNAL_SET of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_25_axis_dwidth_converter : entity is 27;
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_25_axis_dwidth_converter : entity is 1;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_25_axis_dwidth_converter : entity is 1;
  attribute C_FAMILY : string;
  attribute C_FAMILY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_25_axis_dwidth_converter : entity is "virtexuplus";
  attribute C_M_AXIS_TDATA_WIDTH : integer;
  attribute C_M_AXIS_TDATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_25_axis_dwidth_converter : entity is 512;
  attribute C_M_AXIS_TUSER_WIDTH : integer;
  attribute C_M_AXIS_TUSER_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_25_axis_dwidth_converter : entity is 1;
  attribute C_S_AXIS_TDATA_WIDTH : integer;
  attribute C_S_AXIS_TDATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_25_axis_dwidth_converter : entity is 64;
  attribute C_S_AXIS_TUSER_WIDTH : integer;
  attribute C_S_AXIS_TUSER_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_25_axis_dwidth_converter : entity is 1;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_25_axis_dwidth_converter : entity is "yes";
  attribute G_INDX_SS_TDATA : integer;
  attribute G_INDX_SS_TDATA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_25_axis_dwidth_converter : entity is 1;
  attribute G_INDX_SS_TDEST : integer;
  attribute G_INDX_SS_TDEST of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_25_axis_dwidth_converter : entity is 6;
  attribute G_INDX_SS_TID : integer;
  attribute G_INDX_SS_TID of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_25_axis_dwidth_converter : entity is 5;
  attribute G_INDX_SS_TKEEP : integer;
  attribute G_INDX_SS_TKEEP of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_25_axis_dwidth_converter : entity is 3;
  attribute G_INDX_SS_TLAST : integer;
  attribute G_INDX_SS_TLAST of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_25_axis_dwidth_converter : entity is 4;
  attribute G_INDX_SS_TREADY : integer;
  attribute G_INDX_SS_TREADY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_25_axis_dwidth_converter : entity is 0;
  attribute G_INDX_SS_TSTRB : integer;
  attribute G_INDX_SS_TSTRB of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_25_axis_dwidth_converter : entity is 2;
  attribute G_INDX_SS_TUSER : integer;
  attribute G_INDX_SS_TUSER of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_25_axis_dwidth_converter : entity is 7;
  attribute G_MASK_SS_TDATA : integer;
  attribute G_MASK_SS_TDATA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_25_axis_dwidth_converter : entity is 2;
  attribute G_MASK_SS_TDEST : integer;
  attribute G_MASK_SS_TDEST of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_25_axis_dwidth_converter : entity is 64;
  attribute G_MASK_SS_TID : integer;
  attribute G_MASK_SS_TID of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_25_axis_dwidth_converter : entity is 32;
  attribute G_MASK_SS_TKEEP : integer;
  attribute G_MASK_SS_TKEEP of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_25_axis_dwidth_converter : entity is 8;
  attribute G_MASK_SS_TLAST : integer;
  attribute G_MASK_SS_TLAST of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_25_axis_dwidth_converter : entity is 16;
  attribute G_MASK_SS_TREADY : integer;
  attribute G_MASK_SS_TREADY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_25_axis_dwidth_converter : entity is 1;
  attribute G_MASK_SS_TSTRB : integer;
  attribute G_MASK_SS_TSTRB of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_25_axis_dwidth_converter : entity is 4;
  attribute G_MASK_SS_TUSER : integer;
  attribute G_MASK_SS_TUSER of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_25_axis_dwidth_converter : entity is 128;
  attribute G_TASK_SEVERITY_ERR : integer;
  attribute G_TASK_SEVERITY_ERR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_25_axis_dwidth_converter : entity is 2;
  attribute G_TASK_SEVERITY_INFO : integer;
  attribute G_TASK_SEVERITY_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_25_axis_dwidth_converter : entity is 0;
  attribute G_TASK_SEVERITY_WARNING : integer;
  attribute G_TASK_SEVERITY_WARNING of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_25_axis_dwidth_converter : entity is 1;
  attribute P_AXIS_SIGNAL_SET : string;
  attribute P_AXIS_SIGNAL_SET of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_25_axis_dwidth_converter : entity is "32'b00000000000000000000000000011011";
  attribute P_D1_REG_CONFIG : integer;
  attribute P_D1_REG_CONFIG of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_25_axis_dwidth_converter : entity is 0;
  attribute P_D1_TUSER_WIDTH : integer;
  attribute P_D1_TUSER_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_25_axis_dwidth_converter : entity is 8;
  attribute P_D2_TDATA_WIDTH : integer;
  attribute P_D2_TDATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_25_axis_dwidth_converter : entity is 512;
  attribute P_D2_TUSER_WIDTH : integer;
  attribute P_D2_TUSER_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_25_axis_dwidth_converter : entity is 64;
  attribute P_D3_REG_CONFIG : integer;
  attribute P_D3_REG_CONFIG of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_25_axis_dwidth_converter : entity is 0;
  attribute P_D3_TUSER_WIDTH : integer;
  attribute P_D3_TUSER_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_25_axis_dwidth_converter : entity is 64;
  attribute P_M_RATIO : integer;
  attribute P_M_RATIO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_25_axis_dwidth_converter : entity is 1;
  attribute P_SS_TKEEP_REQUIRED : integer;
  attribute P_SS_TKEEP_REQUIRED of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_25_axis_dwidth_converter : entity is 8;
  attribute P_S_RATIO : integer;
  attribute P_S_RATIO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_25_axis_dwidth_converter : entity is 8;
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_25_axis_dwidth_converter;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_25_axis_dwidth_converter is
  signal \<const0>\ : STD_LOGIC;
  signal areset_r : STD_LOGIC;
  signal areset_r_i_1_n_0 : STD_LOGIC;
begin
  m_axis_tdest(0) <= \<const0>\;
  m_axis_tid(0) <= \<const0>\;
  m_axis_tstrb(63) <= \<const0>\;
  m_axis_tstrb(62) <= \<const0>\;
  m_axis_tstrb(61) <= \<const0>\;
  m_axis_tstrb(60) <= \<const0>\;
  m_axis_tstrb(59) <= \<const0>\;
  m_axis_tstrb(58) <= \<const0>\;
  m_axis_tstrb(57) <= \<const0>\;
  m_axis_tstrb(56) <= \<const0>\;
  m_axis_tstrb(55) <= \<const0>\;
  m_axis_tstrb(54) <= \<const0>\;
  m_axis_tstrb(53) <= \<const0>\;
  m_axis_tstrb(52) <= \<const0>\;
  m_axis_tstrb(51) <= \<const0>\;
  m_axis_tstrb(50) <= \<const0>\;
  m_axis_tstrb(49) <= \<const0>\;
  m_axis_tstrb(48) <= \<const0>\;
  m_axis_tstrb(47) <= \<const0>\;
  m_axis_tstrb(46) <= \<const0>\;
  m_axis_tstrb(45) <= \<const0>\;
  m_axis_tstrb(44) <= \<const0>\;
  m_axis_tstrb(43) <= \<const0>\;
  m_axis_tstrb(42) <= \<const0>\;
  m_axis_tstrb(41) <= \<const0>\;
  m_axis_tstrb(40) <= \<const0>\;
  m_axis_tstrb(39) <= \<const0>\;
  m_axis_tstrb(38) <= \<const0>\;
  m_axis_tstrb(37) <= \<const0>\;
  m_axis_tstrb(36) <= \<const0>\;
  m_axis_tstrb(35) <= \<const0>\;
  m_axis_tstrb(34) <= \<const0>\;
  m_axis_tstrb(33) <= \<const0>\;
  m_axis_tstrb(32) <= \<const0>\;
  m_axis_tstrb(31) <= \<const0>\;
  m_axis_tstrb(30) <= \<const0>\;
  m_axis_tstrb(29) <= \<const0>\;
  m_axis_tstrb(28) <= \<const0>\;
  m_axis_tstrb(27) <= \<const0>\;
  m_axis_tstrb(26) <= \<const0>\;
  m_axis_tstrb(25) <= \<const0>\;
  m_axis_tstrb(24) <= \<const0>\;
  m_axis_tstrb(23) <= \<const0>\;
  m_axis_tstrb(22) <= \<const0>\;
  m_axis_tstrb(21) <= \<const0>\;
  m_axis_tstrb(20) <= \<const0>\;
  m_axis_tstrb(19) <= \<const0>\;
  m_axis_tstrb(18) <= \<const0>\;
  m_axis_tstrb(17) <= \<const0>\;
  m_axis_tstrb(16) <= \<const0>\;
  m_axis_tstrb(15) <= \<const0>\;
  m_axis_tstrb(14) <= \<const0>\;
  m_axis_tstrb(13) <= \<const0>\;
  m_axis_tstrb(12) <= \<const0>\;
  m_axis_tstrb(11) <= \<const0>\;
  m_axis_tstrb(10) <= \<const0>\;
  m_axis_tstrb(9) <= \<const0>\;
  m_axis_tstrb(8) <= \<const0>\;
  m_axis_tstrb(7) <= \<const0>\;
  m_axis_tstrb(6) <= \<const0>\;
  m_axis_tstrb(5) <= \<const0>\;
  m_axis_tstrb(4) <= \<const0>\;
  m_axis_tstrb(3) <= \<const0>\;
  m_axis_tstrb(2) <= \<const0>\;
  m_axis_tstrb(1) <= \<const0>\;
  m_axis_tstrb(0) <= \<const0>\;
  m_axis_tuser(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
areset_r_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => areset_r_i_1_n_0
    );
areset_r_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => areset_r_i_1_n_0,
      Q => areset_r,
      R => '0'
    );
\gen_upsizer_conversion.axisc_upsizer_0\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_25_axisc_upsizer
     port map (
      aclk => aclk,
      areset_r => areset_r,
      m_axis_tdata(511 downto 0) => m_axis_tdata(511 downto 0),
      m_axis_tkeep(63 downto 0) => m_axis_tkeep(63 downto 0),
      m_axis_tlast => m_axis_tlast,
      m_axis_tready => m_axis_tready,
      s_axis_tdata(63 downto 0) => s_axis_tdata(63 downto 0),
      s_axis_tkeep(7 downto 0) => s_axis_tkeep(7 downto 0),
      s_axis_tlast => s_axis_tlast,
      s_axis_tvalid => s_axis_tvalid,
      \state_reg[0]_0\ => s_axis_tready,
      \state_reg[1]_0\ => m_axis_tvalid
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
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tlast : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "ulp_dwc_data_fifo_krnl_0_tx_axis_0,axis_dwidth_converter_v1_1_25_axis_dwidth_converter,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "axis_dwidth_converter_v1_1_25_axis_dwidth_converter,Vivado 2022.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal NLW_inst_m_axis_tdest_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axis_tid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axis_tstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_inst_m_axis_tuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute C_AXIS_SIGNAL_SET : integer;
  attribute C_AXIS_SIGNAL_SET of inst : label is 27;
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of inst : label is 1;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of inst : label is 1;
  attribute C_FAMILY : string;
  attribute C_FAMILY of inst : label is "virtexuplus";
  attribute C_M_AXIS_TDATA_WIDTH : integer;
  attribute C_M_AXIS_TDATA_WIDTH of inst : label is 512;
  attribute C_M_AXIS_TUSER_WIDTH : integer;
  attribute C_M_AXIS_TUSER_WIDTH of inst : label is 1;
  attribute C_S_AXIS_TDATA_WIDTH : integer;
  attribute C_S_AXIS_TDATA_WIDTH of inst : label is 64;
  attribute C_S_AXIS_TUSER_WIDTH : integer;
  attribute C_S_AXIS_TUSER_WIDTH of inst : label is 1;
  attribute DowngradeIPIdentifiedWarnings of inst : label is "yes";
  attribute G_INDX_SS_TDATA : integer;
  attribute G_INDX_SS_TDATA of inst : label is 1;
  attribute G_INDX_SS_TDEST : integer;
  attribute G_INDX_SS_TDEST of inst : label is 6;
  attribute G_INDX_SS_TID : integer;
  attribute G_INDX_SS_TID of inst : label is 5;
  attribute G_INDX_SS_TKEEP : integer;
  attribute G_INDX_SS_TKEEP of inst : label is 3;
  attribute G_INDX_SS_TLAST : integer;
  attribute G_INDX_SS_TLAST of inst : label is 4;
  attribute G_INDX_SS_TREADY : integer;
  attribute G_INDX_SS_TREADY of inst : label is 0;
  attribute G_INDX_SS_TSTRB : integer;
  attribute G_INDX_SS_TSTRB of inst : label is 2;
  attribute G_INDX_SS_TUSER : integer;
  attribute G_INDX_SS_TUSER of inst : label is 7;
  attribute G_MASK_SS_TDATA : integer;
  attribute G_MASK_SS_TDATA of inst : label is 2;
  attribute G_MASK_SS_TDEST : integer;
  attribute G_MASK_SS_TDEST of inst : label is 64;
  attribute G_MASK_SS_TID : integer;
  attribute G_MASK_SS_TID of inst : label is 32;
  attribute G_MASK_SS_TKEEP : integer;
  attribute G_MASK_SS_TKEEP of inst : label is 8;
  attribute G_MASK_SS_TLAST : integer;
  attribute G_MASK_SS_TLAST of inst : label is 16;
  attribute G_MASK_SS_TREADY : integer;
  attribute G_MASK_SS_TREADY of inst : label is 1;
  attribute G_MASK_SS_TSTRB : integer;
  attribute G_MASK_SS_TSTRB of inst : label is 4;
  attribute G_MASK_SS_TUSER : integer;
  attribute G_MASK_SS_TUSER of inst : label is 128;
  attribute G_TASK_SEVERITY_ERR : integer;
  attribute G_TASK_SEVERITY_ERR of inst : label is 2;
  attribute G_TASK_SEVERITY_INFO : integer;
  attribute G_TASK_SEVERITY_INFO of inst : label is 0;
  attribute G_TASK_SEVERITY_WARNING : integer;
  attribute G_TASK_SEVERITY_WARNING of inst : label is 1;
  attribute P_AXIS_SIGNAL_SET : string;
  attribute P_AXIS_SIGNAL_SET of inst : label is "32'b00000000000000000000000000011011";
  attribute P_D1_REG_CONFIG : integer;
  attribute P_D1_REG_CONFIG of inst : label is 0;
  attribute P_D1_TUSER_WIDTH : integer;
  attribute P_D1_TUSER_WIDTH of inst : label is 8;
  attribute P_D2_TDATA_WIDTH : integer;
  attribute P_D2_TDATA_WIDTH of inst : label is 512;
  attribute P_D2_TUSER_WIDTH : integer;
  attribute P_D2_TUSER_WIDTH of inst : label is 64;
  attribute P_D3_REG_CONFIG : integer;
  attribute P_D3_REG_CONFIG of inst : label is 0;
  attribute P_D3_TUSER_WIDTH : integer;
  attribute P_D3_TUSER_WIDTH of inst : label is 64;
  attribute P_M_RATIO : integer;
  attribute P_M_RATIO of inst : label is 1;
  attribute P_SS_TKEEP_REQUIRED : integer;
  attribute P_SS_TKEEP_REQUIRED of inst : label is 8;
  attribute P_S_RATIO : integer;
  attribute P_S_RATIO of inst : label is 8;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 CLKIF CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME CLKIF, FREQ_HZ 300000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN cd_aclk_kernel_00, ASSOCIATED_BUSIF S_AXIS:M_AXIS, ASSOCIATED_RESET aresetn, INSERT_VIP 0, ASSOCIATED_CLKEN aclken";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 RSTIF RST";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME RSTIF, POLARITY ACTIVE_LOW, INSERT_VIP 0, TYPE INTERCONNECT";
  attribute X_INTERFACE_INFO of m_axis_tlast : signal is "xilinx.com:interface:axis:1.0 M_AXIS TLAST";
  attribute X_INTERFACE_PARAMETER of m_axis_tlast : signal is "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 64, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 300000000, PHASE 0.0, CLK_DOMAIN cd_aclk_kernel_00, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 M_AXIS TREADY";
  attribute X_INTERFACE_INFO of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 M_AXIS TVALID";
  attribute X_INTERFACE_INFO of s_axis_tlast : signal is "xilinx.com:interface:axis:1.0 S_AXIS TLAST";
  attribute X_INTERFACE_PARAMETER of s_axis_tlast : signal is "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 300000000, PHASE 0.0, CLK_DOMAIN cd_aclk_kernel_00, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 S_AXIS TREADY";
  attribute X_INTERFACE_INFO of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 S_AXIS TVALID";
  attribute X_INTERFACE_INFO of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 M_AXIS TDATA";
  attribute X_INTERFACE_INFO of m_axis_tkeep : signal is "xilinx.com:interface:axis:1.0 M_AXIS TKEEP";
  attribute X_INTERFACE_INFO of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 S_AXIS TDATA";
  attribute X_INTERFACE_INFO of s_axis_tkeep : signal is "xilinx.com:interface:axis:1.0 S_AXIS TKEEP";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_25_axis_dwidth_converter
     port map (
      aclk => aclk,
      aclken => '1',
      aresetn => aresetn,
      m_axis_tdata(511 downto 0) => m_axis_tdata(511 downto 0),
      m_axis_tdest(0) => NLW_inst_m_axis_tdest_UNCONNECTED(0),
      m_axis_tid(0) => NLW_inst_m_axis_tid_UNCONNECTED(0),
      m_axis_tkeep(63 downto 0) => m_axis_tkeep(63 downto 0),
      m_axis_tlast => m_axis_tlast,
      m_axis_tready => m_axis_tready,
      m_axis_tstrb(63 downto 0) => NLW_inst_m_axis_tstrb_UNCONNECTED(63 downto 0),
      m_axis_tuser(0) => NLW_inst_m_axis_tuser_UNCONNECTED(0),
      m_axis_tvalid => m_axis_tvalid,
      s_axis_tdata(63 downto 0) => s_axis_tdata(63 downto 0),
      s_axis_tdest(0) => '0',
      s_axis_tid(0) => '0',
      s_axis_tkeep(7 downto 0) => s_axis_tkeep(7 downto 0),
      s_axis_tlast => s_axis_tlast,
      s_axis_tready => s_axis_tready,
      s_axis_tstrb(7 downto 0) => B"11111111",
      s_axis_tuser(0) => '0',
      s_axis_tvalid => s_axis_tvalid
    );
end STRUCTURE;
