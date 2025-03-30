-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
-- Date        : Thu Oct 17 04:25:54 2024
-- Host        : yupeng-ThinkBook-16-G6-IRL running 64-bit Ubuntu 22.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ulp_data_fifo_krnl_0_0_stub.vhdl
-- Design      : ulp_data_fifo_krnl_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcu250-figd2104-2L-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    rx_axis_tvalid : in STD_LOGIC;
    rx_axis_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    rx_axis_tlast : in STD_LOGIC;
    rx_axis_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rx_axis_tuser : in STD_LOGIC;
    rx_axis_tready : out STD_LOGIC;
    tx_axis_tready : in STD_LOGIC;
    tx_axis_tvalid : out STD_LOGIC;
    tx_axis_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    tx_axis_tlast : out STD_LOGIC;
    tx_axis_tkeep : out STD_LOGIC_VECTOR ( 7 downto 0 );
    tx_axis_tuser : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "ap_clk,ap_rst_n,rx_axis_tvalid,rx_axis_tdata[63:0],rx_axis_tlast,rx_axis_tkeep[7:0],rx_axis_tuser,rx_axis_tready,tx_axis_tready,tx_axis_tvalid,tx_axis_tdata[63:0],tx_axis_tlast,tx_axis_tkeep[7:0],tx_axis_tuser";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "data_fifo_krnl,Vivado 2022.1";
begin
end;
