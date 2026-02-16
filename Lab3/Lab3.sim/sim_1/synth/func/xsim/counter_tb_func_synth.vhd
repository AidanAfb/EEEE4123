-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Mon Feb 16 11:36:06 2026
-- Host        : AIDANALEXAN6AEF running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/Mac/Home/Documents/GitHub/EEEE4123/Lab3/Lab3.sim/sim_1/synth/func/xsim/counter_tb_func_synth.vhd
-- Design      : counter
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a15tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity counter is
  port (
    cnt_max : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    irt : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of counter : entity is true;
end counter;

architecture STRUCTURE of counter is
  signal clk_IBUF : STD_LOGIC;
  signal clk_IBUF_BUFG : STD_LOGIC;
  signal \cnt[0]_i_2_n_0\ : STD_LOGIC;
  signal \cnt[0]_i_3_n_0\ : STD_LOGIC;
  signal \cnt[0]_i_4_n_0\ : STD_LOGIC;
  signal \cnt[0]_i_5_n_0\ : STD_LOGIC;
  signal \cnt[0]_i_6_n_0\ : STD_LOGIC;
  signal \cnt[12]_i_2_n_0\ : STD_LOGIC;
  signal \cnt[12]_i_3_n_0\ : STD_LOGIC;
  signal \cnt[12]_i_4_n_0\ : STD_LOGIC;
  signal \cnt[12]_i_5_n_0\ : STD_LOGIC;
  signal \cnt[16]_i_2_n_0\ : STD_LOGIC;
  signal \cnt[16]_i_3_n_0\ : STD_LOGIC;
  signal \cnt[16]_i_4_n_0\ : STD_LOGIC;
  signal \cnt[16]_i_5_n_0\ : STD_LOGIC;
  signal \cnt[20]_i_2_n_0\ : STD_LOGIC;
  signal \cnt[20]_i_3_n_0\ : STD_LOGIC;
  signal \cnt[20]_i_4_n_0\ : STD_LOGIC;
  signal \cnt[20]_i_5_n_0\ : STD_LOGIC;
  signal \cnt[24]_i_2_n_0\ : STD_LOGIC;
  signal \cnt[24]_i_3_n_0\ : STD_LOGIC;
  signal \cnt[24]_i_4_n_0\ : STD_LOGIC;
  signal \cnt[24]_i_5_n_0\ : STD_LOGIC;
  signal \cnt[28]_i_2_n_0\ : STD_LOGIC;
  signal \cnt[28]_i_3_n_0\ : STD_LOGIC;
  signal \cnt[28]_i_4_n_0\ : STD_LOGIC;
  signal \cnt[28]_i_5_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_2_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_3_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_4_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_5_n_0\ : STD_LOGIC;
  signal \cnt[8]_i_2_n_0\ : STD_LOGIC;
  signal \cnt[8]_i_3_n_0\ : STD_LOGIC;
  signal \cnt[8]_i_4_n_0\ : STD_LOGIC;
  signal \cnt[8]_i_5_n_0\ : STD_LOGIC;
  signal cnt_max_IBUF : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cnt_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \cnt_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal irt_OBUF : STD_LOGIC;
  signal irt_OBUF_inst_i_10_n_0 : STD_LOGIC;
  signal irt_OBUF_inst_i_11_n_2 : STD_LOGIC;
  signal irt_OBUF_inst_i_11_n_3 : STD_LOGIC;
  signal irt_OBUF_inst_i_12_n_0 : STD_LOGIC;
  signal irt_OBUF_inst_i_12_n_1 : STD_LOGIC;
  signal irt_OBUF_inst_i_12_n_2 : STD_LOGIC;
  signal irt_OBUF_inst_i_12_n_3 : STD_LOGIC;
  signal irt_OBUF_inst_i_13_n_0 : STD_LOGIC;
  signal irt_OBUF_inst_i_13_n_1 : STD_LOGIC;
  signal irt_OBUF_inst_i_13_n_2 : STD_LOGIC;
  signal irt_OBUF_inst_i_13_n_3 : STD_LOGIC;
  signal irt_OBUF_inst_i_14_n_0 : STD_LOGIC;
  signal irt_OBUF_inst_i_15_n_0 : STD_LOGIC;
  signal irt_OBUF_inst_i_16_n_0 : STD_LOGIC;
  signal irt_OBUF_inst_i_17_n_0 : STD_LOGIC;
  signal irt_OBUF_inst_i_18_n_0 : STD_LOGIC;
  signal irt_OBUF_inst_i_18_n_1 : STD_LOGIC;
  signal irt_OBUF_inst_i_18_n_2 : STD_LOGIC;
  signal irt_OBUF_inst_i_18_n_3 : STD_LOGIC;
  signal irt_OBUF_inst_i_19_n_0 : STD_LOGIC;
  signal irt_OBUF_inst_i_19_n_1 : STD_LOGIC;
  signal irt_OBUF_inst_i_19_n_2 : STD_LOGIC;
  signal irt_OBUF_inst_i_19_n_3 : STD_LOGIC;
  signal irt_OBUF_inst_i_1_n_2 : STD_LOGIC;
  signal irt_OBUF_inst_i_1_n_3 : STD_LOGIC;
  signal irt_OBUF_inst_i_20_n_0 : STD_LOGIC;
  signal irt_OBUF_inst_i_20_n_1 : STD_LOGIC;
  signal irt_OBUF_inst_i_20_n_2 : STD_LOGIC;
  signal irt_OBUF_inst_i_20_n_3 : STD_LOGIC;
  signal irt_OBUF_inst_i_21_n_0 : STD_LOGIC;
  signal irt_OBUF_inst_i_22_n_0 : STD_LOGIC;
  signal irt_OBUF_inst_i_23_n_0 : STD_LOGIC;
  signal irt_OBUF_inst_i_24_n_0 : STD_LOGIC;
  signal irt_OBUF_inst_i_25_n_0 : STD_LOGIC;
  signal irt_OBUF_inst_i_26_n_0 : STD_LOGIC;
  signal irt_OBUF_inst_i_27_n_0 : STD_LOGIC;
  signal irt_OBUF_inst_i_28_n_0 : STD_LOGIC;
  signal irt_OBUF_inst_i_29_n_0 : STD_LOGIC;
  signal irt_OBUF_inst_i_2_n_0 : STD_LOGIC;
  signal irt_OBUF_inst_i_2_n_1 : STD_LOGIC;
  signal irt_OBUF_inst_i_2_n_2 : STD_LOGIC;
  signal irt_OBUF_inst_i_2_n_3 : STD_LOGIC;
  signal irt_OBUF_inst_i_30_n_0 : STD_LOGIC;
  signal irt_OBUF_inst_i_31_n_0 : STD_LOGIC;
  signal irt_OBUF_inst_i_32_n_0 : STD_LOGIC;
  signal irt_OBUF_inst_i_32_n_1 : STD_LOGIC;
  signal irt_OBUF_inst_i_32_n_2 : STD_LOGIC;
  signal irt_OBUF_inst_i_32_n_3 : STD_LOGIC;
  signal irt_OBUF_inst_i_33_n_0 : STD_LOGIC;
  signal irt_OBUF_inst_i_33_n_1 : STD_LOGIC;
  signal irt_OBUF_inst_i_33_n_2 : STD_LOGIC;
  signal irt_OBUF_inst_i_33_n_3 : STD_LOGIC;
  signal irt_OBUF_inst_i_34_n_0 : STD_LOGIC;
  signal irt_OBUF_inst_i_35_n_0 : STD_LOGIC;
  signal irt_OBUF_inst_i_36_n_0 : STD_LOGIC;
  signal irt_OBUF_inst_i_37_n_0 : STD_LOGIC;
  signal irt_OBUF_inst_i_38_n_0 : STD_LOGIC;
  signal irt_OBUF_inst_i_39_n_0 : STD_LOGIC;
  signal irt_OBUF_inst_i_3_n_0 : STD_LOGIC;
  signal irt_OBUF_inst_i_40_n_0 : STD_LOGIC;
  signal irt_OBUF_inst_i_41_n_0 : STD_LOGIC;
  signal irt_OBUF_inst_i_42_n_0 : STD_LOGIC;
  signal irt_OBUF_inst_i_43_n_0 : STD_LOGIC;
  signal irt_OBUF_inst_i_44_n_0 : STD_LOGIC;
  signal irt_OBUF_inst_i_45_n_0 : STD_LOGIC;
  signal irt_OBUF_inst_i_46_n_0 : STD_LOGIC;
  signal irt_OBUF_inst_i_47_n_0 : STD_LOGIC;
  signal irt_OBUF_inst_i_48_n_0 : STD_LOGIC;
  signal irt_OBUF_inst_i_49_n_0 : STD_LOGIC;
  signal irt_OBUF_inst_i_4_n_0 : STD_LOGIC;
  signal irt_OBUF_inst_i_50_n_0 : STD_LOGIC;
  signal irt_OBUF_inst_i_51_n_0 : STD_LOGIC;
  signal irt_OBUF_inst_i_52_n_0 : STD_LOGIC;
  signal irt_OBUF_inst_i_53_n_0 : STD_LOGIC;
  signal irt_OBUF_inst_i_5_n_0 : STD_LOGIC;
  signal irt_OBUF_inst_i_6_n_0 : STD_LOGIC;
  signal irt_OBUF_inst_i_6_n_1 : STD_LOGIC;
  signal irt_OBUF_inst_i_6_n_2 : STD_LOGIC;
  signal irt_OBUF_inst_i_6_n_3 : STD_LOGIC;
  signal irt_OBUF_inst_i_7_n_0 : STD_LOGIC;
  signal irt_OBUF_inst_i_8_n_0 : STD_LOGIC;
  signal irt_OBUF_inst_i_9_n_0 : STD_LOGIC;
  signal minusOp : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal rst_IBUF : STD_LOGIC;
  signal \NLW_cnt_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_irt_OBUF_inst_i_1_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_irt_OBUF_inst_i_1_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_irt_OBUF_inst_i_11_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_irt_OBUF_inst_i_11_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_irt_OBUF_inst_i_2_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_irt_OBUF_inst_i_6_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
clk_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => clk_IBUF,
      O => clk_IBUF_BUFG
    );
clk_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => clk,
      O => clk_IBUF
    );
\cnt[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_reg(0),
      I1 => irt_OBUF,
      O => \cnt[0]_i_2_n_0\
    );
\cnt[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_reg(3),
      I1 => irt_OBUF,
      O => \cnt[0]_i_3_n_0\
    );
\cnt[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_reg(2),
      I1 => irt_OBUF,
      O => \cnt[0]_i_4_n_0\
    );
\cnt[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_reg(1),
      I1 => irt_OBUF,
      O => \cnt[0]_i_5_n_0\
    );
\cnt[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_reg(0),
      I1 => irt_OBUF,
      O => \cnt[0]_i_6_n_0\
    );
\cnt[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_reg(15),
      I1 => irt_OBUF,
      O => \cnt[12]_i_2_n_0\
    );
\cnt[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_reg(14),
      I1 => irt_OBUF,
      O => \cnt[12]_i_3_n_0\
    );
\cnt[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_reg(13),
      I1 => irt_OBUF,
      O => \cnt[12]_i_4_n_0\
    );
\cnt[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_reg(12),
      I1 => irt_OBUF,
      O => \cnt[12]_i_5_n_0\
    );
\cnt[16]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_reg(19),
      I1 => irt_OBUF,
      O => \cnt[16]_i_2_n_0\
    );
\cnt[16]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_reg(18),
      I1 => irt_OBUF,
      O => \cnt[16]_i_3_n_0\
    );
\cnt[16]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_reg(17),
      I1 => irt_OBUF,
      O => \cnt[16]_i_4_n_0\
    );
\cnt[16]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_reg(16),
      I1 => irt_OBUF,
      O => \cnt[16]_i_5_n_0\
    );
\cnt[20]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_reg(23),
      I1 => irt_OBUF,
      O => \cnt[20]_i_2_n_0\
    );
\cnt[20]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_reg(22),
      I1 => irt_OBUF,
      O => \cnt[20]_i_3_n_0\
    );
\cnt[20]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_reg(21),
      I1 => irt_OBUF,
      O => \cnt[20]_i_4_n_0\
    );
\cnt[20]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_reg(20),
      I1 => irt_OBUF,
      O => \cnt[20]_i_5_n_0\
    );
\cnt[24]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_reg(27),
      I1 => irt_OBUF,
      O => \cnt[24]_i_2_n_0\
    );
\cnt[24]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_reg(26),
      I1 => irt_OBUF,
      O => \cnt[24]_i_3_n_0\
    );
\cnt[24]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_reg(25),
      I1 => irt_OBUF,
      O => \cnt[24]_i_4_n_0\
    );
\cnt[24]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_reg(24),
      I1 => irt_OBUF,
      O => \cnt[24]_i_5_n_0\
    );
\cnt[28]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_reg(31),
      I1 => irt_OBUF,
      O => \cnt[28]_i_2_n_0\
    );
\cnt[28]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_reg(30),
      I1 => irt_OBUF,
      O => \cnt[28]_i_3_n_0\
    );
\cnt[28]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_reg(29),
      I1 => irt_OBUF,
      O => \cnt[28]_i_4_n_0\
    );
\cnt[28]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_reg(28),
      I1 => irt_OBUF,
      O => \cnt[28]_i_5_n_0\
    );
\cnt[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_reg(7),
      I1 => irt_OBUF,
      O => \cnt[4]_i_2_n_0\
    );
\cnt[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_reg(6),
      I1 => irt_OBUF,
      O => \cnt[4]_i_3_n_0\
    );
\cnt[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_reg(5),
      I1 => irt_OBUF,
      O => \cnt[4]_i_4_n_0\
    );
\cnt[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_reg(4),
      I1 => irt_OBUF,
      O => \cnt[4]_i_5_n_0\
    );
\cnt[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_reg(11),
      I1 => irt_OBUF,
      O => \cnt[8]_i_2_n_0\
    );
\cnt[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_reg(10),
      I1 => irt_OBUF,
      O => \cnt[8]_i_3_n_0\
    );
\cnt[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_reg(9),
      I1 => irt_OBUF,
      O => \cnt[8]_i_4_n_0\
    );
\cnt[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_reg(8),
      I1 => irt_OBUF,
      O => \cnt[8]_i_5_n_0\
    );
\cnt_max_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => cnt_max(0),
      O => cnt_max_IBUF(0)
    );
\cnt_max_IBUF[10]_inst\: unisim.vcomponents.IBUF
     port map (
      I => cnt_max(10),
      O => cnt_max_IBUF(10)
    );
\cnt_max_IBUF[11]_inst\: unisim.vcomponents.IBUF
     port map (
      I => cnt_max(11),
      O => cnt_max_IBUF(11)
    );
\cnt_max_IBUF[12]_inst\: unisim.vcomponents.IBUF
     port map (
      I => cnt_max(12),
      O => cnt_max_IBUF(12)
    );
\cnt_max_IBUF[13]_inst\: unisim.vcomponents.IBUF
     port map (
      I => cnt_max(13),
      O => cnt_max_IBUF(13)
    );
\cnt_max_IBUF[14]_inst\: unisim.vcomponents.IBUF
     port map (
      I => cnt_max(14),
      O => cnt_max_IBUF(14)
    );
\cnt_max_IBUF[15]_inst\: unisim.vcomponents.IBUF
     port map (
      I => cnt_max(15),
      O => cnt_max_IBUF(15)
    );
\cnt_max_IBUF[16]_inst\: unisim.vcomponents.IBUF
     port map (
      I => cnt_max(16),
      O => cnt_max_IBUF(16)
    );
\cnt_max_IBUF[17]_inst\: unisim.vcomponents.IBUF
     port map (
      I => cnt_max(17),
      O => cnt_max_IBUF(17)
    );
\cnt_max_IBUF[18]_inst\: unisim.vcomponents.IBUF
     port map (
      I => cnt_max(18),
      O => cnt_max_IBUF(18)
    );
\cnt_max_IBUF[19]_inst\: unisim.vcomponents.IBUF
     port map (
      I => cnt_max(19),
      O => cnt_max_IBUF(19)
    );
\cnt_max_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => cnt_max(1),
      O => cnt_max_IBUF(1)
    );
\cnt_max_IBUF[20]_inst\: unisim.vcomponents.IBUF
     port map (
      I => cnt_max(20),
      O => cnt_max_IBUF(20)
    );
\cnt_max_IBUF[21]_inst\: unisim.vcomponents.IBUF
     port map (
      I => cnt_max(21),
      O => cnt_max_IBUF(21)
    );
\cnt_max_IBUF[22]_inst\: unisim.vcomponents.IBUF
     port map (
      I => cnt_max(22),
      O => cnt_max_IBUF(22)
    );
\cnt_max_IBUF[23]_inst\: unisim.vcomponents.IBUF
     port map (
      I => cnt_max(23),
      O => cnt_max_IBUF(23)
    );
\cnt_max_IBUF[24]_inst\: unisim.vcomponents.IBUF
     port map (
      I => cnt_max(24),
      O => cnt_max_IBUF(24)
    );
\cnt_max_IBUF[25]_inst\: unisim.vcomponents.IBUF
     port map (
      I => cnt_max(25),
      O => cnt_max_IBUF(25)
    );
\cnt_max_IBUF[26]_inst\: unisim.vcomponents.IBUF
     port map (
      I => cnt_max(26),
      O => cnt_max_IBUF(26)
    );
\cnt_max_IBUF[27]_inst\: unisim.vcomponents.IBUF
     port map (
      I => cnt_max(27),
      O => cnt_max_IBUF(27)
    );
\cnt_max_IBUF[28]_inst\: unisim.vcomponents.IBUF
     port map (
      I => cnt_max(28),
      O => cnt_max_IBUF(28)
    );
\cnt_max_IBUF[29]_inst\: unisim.vcomponents.IBUF
     port map (
      I => cnt_max(29),
      O => cnt_max_IBUF(29)
    );
\cnt_max_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => cnt_max(2),
      O => cnt_max_IBUF(2)
    );
\cnt_max_IBUF[30]_inst\: unisim.vcomponents.IBUF
     port map (
      I => cnt_max(30),
      O => cnt_max_IBUF(30)
    );
\cnt_max_IBUF[31]_inst\: unisim.vcomponents.IBUF
     port map (
      I => cnt_max(31),
      O => cnt_max_IBUF(31)
    );
\cnt_max_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => cnt_max(3),
      O => cnt_max_IBUF(3)
    );
\cnt_max_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => cnt_max(4),
      O => cnt_max_IBUF(4)
    );
\cnt_max_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => cnt_max(5),
      O => cnt_max_IBUF(5)
    );
\cnt_max_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => cnt_max(6),
      O => cnt_max_IBUF(6)
    );
\cnt_max_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => cnt_max(7),
      O => cnt_max_IBUF(7)
    );
\cnt_max_IBUF[8]_inst\: unisim.vcomponents.IBUF
     port map (
      I => cnt_max(8),
      O => cnt_max_IBUF(8)
    );
\cnt_max_IBUF[9]_inst\: unisim.vcomponents.IBUF
     port map (
      I => cnt_max(9),
      O => cnt_max_IBUF(9)
    );
\cnt_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \cnt_reg[0]_i_1_n_7\,
      Q => cnt_reg(0)
    );
\cnt_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \cnt_reg[0]_i_1_n_0\,
      CO(2) => \cnt_reg[0]_i_1_n_1\,
      CO(1) => \cnt_reg[0]_i_1_n_2\,
      CO(0) => \cnt_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \cnt[0]_i_2_n_0\,
      O(3) => \cnt_reg[0]_i_1_n_4\,
      O(2) => \cnt_reg[0]_i_1_n_5\,
      O(1) => \cnt_reg[0]_i_1_n_6\,
      O(0) => \cnt_reg[0]_i_1_n_7\,
      S(3) => \cnt[0]_i_3_n_0\,
      S(2) => \cnt[0]_i_4_n_0\,
      S(1) => \cnt[0]_i_5_n_0\,
      S(0) => \cnt[0]_i_6_n_0\
    );
\cnt_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \cnt_reg[8]_i_1_n_5\,
      Q => cnt_reg(10)
    );
\cnt_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \cnt_reg[8]_i_1_n_4\,
      Q => cnt_reg(11)
    );
\cnt_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \cnt_reg[12]_i_1_n_7\,
      Q => cnt_reg(12)
    );
\cnt_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[8]_i_1_n_0\,
      CO(3) => \cnt_reg[12]_i_1_n_0\,
      CO(2) => \cnt_reg[12]_i_1_n_1\,
      CO(1) => \cnt_reg[12]_i_1_n_2\,
      CO(0) => \cnt_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_reg[12]_i_1_n_4\,
      O(2) => \cnt_reg[12]_i_1_n_5\,
      O(1) => \cnt_reg[12]_i_1_n_6\,
      O(0) => \cnt_reg[12]_i_1_n_7\,
      S(3) => \cnt[12]_i_2_n_0\,
      S(2) => \cnt[12]_i_3_n_0\,
      S(1) => \cnt[12]_i_4_n_0\,
      S(0) => \cnt[12]_i_5_n_0\
    );
\cnt_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \cnt_reg[12]_i_1_n_6\,
      Q => cnt_reg(13)
    );
\cnt_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \cnt_reg[12]_i_1_n_5\,
      Q => cnt_reg(14)
    );
\cnt_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \cnt_reg[12]_i_1_n_4\,
      Q => cnt_reg(15)
    );
\cnt_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \cnt_reg[16]_i_1_n_7\,
      Q => cnt_reg(16)
    );
\cnt_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[12]_i_1_n_0\,
      CO(3) => \cnt_reg[16]_i_1_n_0\,
      CO(2) => \cnt_reg[16]_i_1_n_1\,
      CO(1) => \cnt_reg[16]_i_1_n_2\,
      CO(0) => \cnt_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_reg[16]_i_1_n_4\,
      O(2) => \cnt_reg[16]_i_1_n_5\,
      O(1) => \cnt_reg[16]_i_1_n_6\,
      O(0) => \cnt_reg[16]_i_1_n_7\,
      S(3) => \cnt[16]_i_2_n_0\,
      S(2) => \cnt[16]_i_3_n_0\,
      S(1) => \cnt[16]_i_4_n_0\,
      S(0) => \cnt[16]_i_5_n_0\
    );
\cnt_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \cnt_reg[16]_i_1_n_6\,
      Q => cnt_reg(17)
    );
\cnt_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \cnt_reg[16]_i_1_n_5\,
      Q => cnt_reg(18)
    );
\cnt_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \cnt_reg[16]_i_1_n_4\,
      Q => cnt_reg(19)
    );
\cnt_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \cnt_reg[0]_i_1_n_6\,
      Q => cnt_reg(1)
    );
\cnt_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \cnt_reg[20]_i_1_n_7\,
      Q => cnt_reg(20)
    );
\cnt_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[16]_i_1_n_0\,
      CO(3) => \cnt_reg[20]_i_1_n_0\,
      CO(2) => \cnt_reg[20]_i_1_n_1\,
      CO(1) => \cnt_reg[20]_i_1_n_2\,
      CO(0) => \cnt_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_reg[20]_i_1_n_4\,
      O(2) => \cnt_reg[20]_i_1_n_5\,
      O(1) => \cnt_reg[20]_i_1_n_6\,
      O(0) => \cnt_reg[20]_i_1_n_7\,
      S(3) => \cnt[20]_i_2_n_0\,
      S(2) => \cnt[20]_i_3_n_0\,
      S(1) => \cnt[20]_i_4_n_0\,
      S(0) => \cnt[20]_i_5_n_0\
    );
\cnt_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \cnt_reg[20]_i_1_n_6\,
      Q => cnt_reg(21)
    );
\cnt_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \cnt_reg[20]_i_1_n_5\,
      Q => cnt_reg(22)
    );
\cnt_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \cnt_reg[20]_i_1_n_4\,
      Q => cnt_reg(23)
    );
\cnt_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \cnt_reg[24]_i_1_n_7\,
      Q => cnt_reg(24)
    );
\cnt_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[20]_i_1_n_0\,
      CO(3) => \cnt_reg[24]_i_1_n_0\,
      CO(2) => \cnt_reg[24]_i_1_n_1\,
      CO(1) => \cnt_reg[24]_i_1_n_2\,
      CO(0) => \cnt_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_reg[24]_i_1_n_4\,
      O(2) => \cnt_reg[24]_i_1_n_5\,
      O(1) => \cnt_reg[24]_i_1_n_6\,
      O(0) => \cnt_reg[24]_i_1_n_7\,
      S(3) => \cnt[24]_i_2_n_0\,
      S(2) => \cnt[24]_i_3_n_0\,
      S(1) => \cnt[24]_i_4_n_0\,
      S(0) => \cnt[24]_i_5_n_0\
    );
\cnt_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \cnt_reg[24]_i_1_n_6\,
      Q => cnt_reg(25)
    );
\cnt_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \cnt_reg[24]_i_1_n_5\,
      Q => cnt_reg(26)
    );
\cnt_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \cnt_reg[24]_i_1_n_4\,
      Q => cnt_reg(27)
    );
\cnt_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \cnt_reg[28]_i_1_n_7\,
      Q => cnt_reg(28)
    );
\cnt_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[24]_i_1_n_0\,
      CO(3) => \NLW_cnt_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \cnt_reg[28]_i_1_n_1\,
      CO(1) => \cnt_reg[28]_i_1_n_2\,
      CO(0) => \cnt_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_reg[28]_i_1_n_4\,
      O(2) => \cnt_reg[28]_i_1_n_5\,
      O(1) => \cnt_reg[28]_i_1_n_6\,
      O(0) => \cnt_reg[28]_i_1_n_7\,
      S(3) => \cnt[28]_i_2_n_0\,
      S(2) => \cnt[28]_i_3_n_0\,
      S(1) => \cnt[28]_i_4_n_0\,
      S(0) => \cnt[28]_i_5_n_0\
    );
\cnt_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \cnt_reg[28]_i_1_n_6\,
      Q => cnt_reg(29)
    );
\cnt_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \cnt_reg[0]_i_1_n_5\,
      Q => cnt_reg(2)
    );
\cnt_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \cnt_reg[28]_i_1_n_5\,
      Q => cnt_reg(30)
    );
\cnt_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \cnt_reg[28]_i_1_n_4\,
      Q => cnt_reg(31)
    );
\cnt_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \cnt_reg[0]_i_1_n_4\,
      Q => cnt_reg(3)
    );
\cnt_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \cnt_reg[4]_i_1_n_7\,
      Q => cnt_reg(4)
    );
\cnt_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[0]_i_1_n_0\,
      CO(3) => \cnt_reg[4]_i_1_n_0\,
      CO(2) => \cnt_reg[4]_i_1_n_1\,
      CO(1) => \cnt_reg[4]_i_1_n_2\,
      CO(0) => \cnt_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_reg[4]_i_1_n_4\,
      O(2) => \cnt_reg[4]_i_1_n_5\,
      O(1) => \cnt_reg[4]_i_1_n_6\,
      O(0) => \cnt_reg[4]_i_1_n_7\,
      S(3) => \cnt[4]_i_2_n_0\,
      S(2) => \cnt[4]_i_3_n_0\,
      S(1) => \cnt[4]_i_4_n_0\,
      S(0) => \cnt[4]_i_5_n_0\
    );
\cnt_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \cnt_reg[4]_i_1_n_6\,
      Q => cnt_reg(5)
    );
\cnt_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \cnt_reg[4]_i_1_n_5\,
      Q => cnt_reg(6)
    );
\cnt_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \cnt_reg[4]_i_1_n_4\,
      Q => cnt_reg(7)
    );
\cnt_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \cnt_reg[8]_i_1_n_7\,
      Q => cnt_reg(8)
    );
\cnt_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[4]_i_1_n_0\,
      CO(3) => \cnt_reg[8]_i_1_n_0\,
      CO(2) => \cnt_reg[8]_i_1_n_1\,
      CO(1) => \cnt_reg[8]_i_1_n_2\,
      CO(0) => \cnt_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_reg[8]_i_1_n_4\,
      O(2) => \cnt_reg[8]_i_1_n_5\,
      O(1) => \cnt_reg[8]_i_1_n_6\,
      O(0) => \cnt_reg[8]_i_1_n_7\,
      S(3) => \cnt[8]_i_2_n_0\,
      S(2) => \cnt[8]_i_3_n_0\,
      S(1) => \cnt[8]_i_4_n_0\,
      S(0) => \cnt[8]_i_5_n_0\
    );
\cnt_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \cnt_reg[8]_i_1_n_6\,
      Q => cnt_reg(9)
    );
irt_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => irt_OBUF,
      O => irt
    );
irt_OBUF_inst_i_1: unisim.vcomponents.CARRY4
     port map (
      CI => irt_OBUF_inst_i_2_n_0,
      CO(3) => NLW_irt_OBUF_inst_i_1_CO_UNCONNECTED(3),
      CO(2) => irt_OBUF,
      CO(1) => irt_OBUF_inst_i_1_n_2,
      CO(0) => irt_OBUF_inst_i_1_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_irt_OBUF_inst_i_1_O_UNCONNECTED(3 downto 0),
      S(3) => '0',
      S(2) => irt_OBUF_inst_i_3_n_0,
      S(1) => irt_OBUF_inst_i_4_n_0,
      S(0) => irt_OBUF_inst_i_5_n_0
    );
irt_OBUF_inst_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => cnt_reg(12),
      I1 => minusOp(12),
      I2 => minusOp(14),
      I3 => cnt_reg(14),
      I4 => minusOp(13),
      I5 => cnt_reg(13),
      O => irt_OBUF_inst_i_10_n_0
    );
irt_OBUF_inst_i_11: unisim.vcomponents.CARRY4
     port map (
      CI => irt_OBUF_inst_i_12_n_0,
      CO(3 downto 2) => NLW_irt_OBUF_inst_i_11_CO_UNCONNECTED(3 downto 2),
      CO(1) => irt_OBUF_inst_i_11_n_2,
      CO(0) => irt_OBUF_inst_i_11_n_3,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => cnt_max_IBUF(30 downto 29),
      O(3) => NLW_irt_OBUF_inst_i_11_O_UNCONNECTED(3),
      O(2 downto 0) => minusOp(31 downto 29),
      S(3) => '0',
      S(2) => irt_OBUF_inst_i_21_n_0,
      S(1) => irt_OBUF_inst_i_22_n_0,
      S(0) => irt_OBUF_inst_i_23_n_0
    );
irt_OBUF_inst_i_12: unisim.vcomponents.CARRY4
     port map (
      CI => irt_OBUF_inst_i_13_n_0,
      CO(3) => irt_OBUF_inst_i_12_n_0,
      CO(2) => irt_OBUF_inst_i_12_n_1,
      CO(1) => irt_OBUF_inst_i_12_n_2,
      CO(0) => irt_OBUF_inst_i_12_n_3,
      CYINIT => '0',
      DI(3 downto 0) => cnt_max_IBUF(28 downto 25),
      O(3 downto 0) => minusOp(28 downto 25),
      S(3) => irt_OBUF_inst_i_24_n_0,
      S(2) => irt_OBUF_inst_i_25_n_0,
      S(1) => irt_OBUF_inst_i_26_n_0,
      S(0) => irt_OBUF_inst_i_27_n_0
    );
irt_OBUF_inst_i_13: unisim.vcomponents.CARRY4
     port map (
      CI => irt_OBUF_inst_i_18_n_0,
      CO(3) => irt_OBUF_inst_i_13_n_0,
      CO(2) => irt_OBUF_inst_i_13_n_1,
      CO(1) => irt_OBUF_inst_i_13_n_2,
      CO(0) => irt_OBUF_inst_i_13_n_3,
      CYINIT => '0',
      DI(3 downto 0) => cnt_max_IBUF(24 downto 21),
      O(3 downto 0) => minusOp(24 downto 21),
      S(3) => irt_OBUF_inst_i_28_n_0,
      S(2) => irt_OBUF_inst_i_29_n_0,
      S(1) => irt_OBUF_inst_i_30_n_0,
      S(0) => irt_OBUF_inst_i_31_n_0
    );
irt_OBUF_inst_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => cnt_reg(9),
      I1 => minusOp(9),
      I2 => minusOp(11),
      I3 => cnt_reg(11),
      I4 => minusOp(10),
      I5 => cnt_reg(10),
      O => irt_OBUF_inst_i_14_n_0
    );
irt_OBUF_inst_i_15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => cnt_reg(6),
      I1 => minusOp(6),
      I2 => minusOp(8),
      I3 => cnt_reg(8),
      I4 => minusOp(7),
      I5 => cnt_reg(7),
      O => irt_OBUF_inst_i_15_n_0
    );
irt_OBUF_inst_i_16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => cnt_reg(3),
      I1 => minusOp(3),
      I2 => minusOp(5),
      I3 => cnt_reg(5),
      I4 => minusOp(4),
      I5 => cnt_reg(4),
      O => irt_OBUF_inst_i_16_n_0
    );
irt_OBUF_inst_i_17: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6006000000006006"
    )
        port map (
      I0 => cnt_reg(0),
      I1 => cnt_max_IBUF(0),
      I2 => minusOp(2),
      I3 => cnt_reg(2),
      I4 => minusOp(1),
      I5 => cnt_reg(1),
      O => irt_OBUF_inst_i_17_n_0
    );
irt_OBUF_inst_i_18: unisim.vcomponents.CARRY4
     port map (
      CI => irt_OBUF_inst_i_19_n_0,
      CO(3) => irt_OBUF_inst_i_18_n_0,
      CO(2) => irt_OBUF_inst_i_18_n_1,
      CO(1) => irt_OBUF_inst_i_18_n_2,
      CO(0) => irt_OBUF_inst_i_18_n_3,
      CYINIT => '0',
      DI(3 downto 0) => cnt_max_IBUF(20 downto 17),
      O(3 downto 0) => minusOp(20 downto 17),
      S(3) => irt_OBUF_inst_i_34_n_0,
      S(2) => irt_OBUF_inst_i_35_n_0,
      S(1) => irt_OBUF_inst_i_36_n_0,
      S(0) => irt_OBUF_inst_i_37_n_0
    );
irt_OBUF_inst_i_19: unisim.vcomponents.CARRY4
     port map (
      CI => irt_OBUF_inst_i_20_n_0,
      CO(3) => irt_OBUF_inst_i_19_n_0,
      CO(2) => irt_OBUF_inst_i_19_n_1,
      CO(1) => irt_OBUF_inst_i_19_n_2,
      CO(0) => irt_OBUF_inst_i_19_n_3,
      CYINIT => '0',
      DI(3 downto 0) => cnt_max_IBUF(16 downto 13),
      O(3 downto 0) => minusOp(16 downto 13),
      S(3) => irt_OBUF_inst_i_38_n_0,
      S(2) => irt_OBUF_inst_i_39_n_0,
      S(1) => irt_OBUF_inst_i_40_n_0,
      S(0) => irt_OBUF_inst_i_41_n_0
    );
irt_OBUF_inst_i_2: unisim.vcomponents.CARRY4
     port map (
      CI => irt_OBUF_inst_i_6_n_0,
      CO(3) => irt_OBUF_inst_i_2_n_0,
      CO(2) => irt_OBUF_inst_i_2_n_1,
      CO(1) => irt_OBUF_inst_i_2_n_2,
      CO(0) => irt_OBUF_inst_i_2_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_irt_OBUF_inst_i_2_O_UNCONNECTED(3 downto 0),
      S(3) => irt_OBUF_inst_i_7_n_0,
      S(2) => irt_OBUF_inst_i_8_n_0,
      S(1) => irt_OBUF_inst_i_9_n_0,
      S(0) => irt_OBUF_inst_i_10_n_0
    );
irt_OBUF_inst_i_20: unisim.vcomponents.CARRY4
     port map (
      CI => irt_OBUF_inst_i_32_n_0,
      CO(3) => irt_OBUF_inst_i_20_n_0,
      CO(2) => irt_OBUF_inst_i_20_n_1,
      CO(1) => irt_OBUF_inst_i_20_n_2,
      CO(0) => irt_OBUF_inst_i_20_n_3,
      CYINIT => '0',
      DI(3 downto 0) => cnt_max_IBUF(12 downto 9),
      O(3 downto 0) => minusOp(12 downto 9),
      S(3) => irt_OBUF_inst_i_42_n_0,
      S(2) => irt_OBUF_inst_i_43_n_0,
      S(1) => irt_OBUF_inst_i_44_n_0,
      S(0) => irt_OBUF_inst_i_45_n_0
    );
irt_OBUF_inst_i_21: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_max_IBUF(31),
      O => irt_OBUF_inst_i_21_n_0
    );
irt_OBUF_inst_i_22: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_max_IBUF(30),
      O => irt_OBUF_inst_i_22_n_0
    );
irt_OBUF_inst_i_23: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_max_IBUF(29),
      O => irt_OBUF_inst_i_23_n_0
    );
irt_OBUF_inst_i_24: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_max_IBUF(28),
      O => irt_OBUF_inst_i_24_n_0
    );
irt_OBUF_inst_i_25: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_max_IBUF(27),
      O => irt_OBUF_inst_i_25_n_0
    );
irt_OBUF_inst_i_26: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_max_IBUF(26),
      O => irt_OBUF_inst_i_26_n_0
    );
irt_OBUF_inst_i_27: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_max_IBUF(25),
      O => irt_OBUF_inst_i_27_n_0
    );
irt_OBUF_inst_i_28: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_max_IBUF(24),
      O => irt_OBUF_inst_i_28_n_0
    );
irt_OBUF_inst_i_29: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_max_IBUF(23),
      O => irt_OBUF_inst_i_29_n_0
    );
irt_OBUF_inst_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => cnt_reg(30),
      I1 => minusOp(30),
      I2 => cnt_reg(31),
      I3 => minusOp(31),
      O => irt_OBUF_inst_i_3_n_0
    );
irt_OBUF_inst_i_30: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_max_IBUF(22),
      O => irt_OBUF_inst_i_30_n_0
    );
irt_OBUF_inst_i_31: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_max_IBUF(21),
      O => irt_OBUF_inst_i_31_n_0
    );
irt_OBUF_inst_i_32: unisim.vcomponents.CARRY4
     port map (
      CI => irt_OBUF_inst_i_33_n_0,
      CO(3) => irt_OBUF_inst_i_32_n_0,
      CO(2) => irt_OBUF_inst_i_32_n_1,
      CO(1) => irt_OBUF_inst_i_32_n_2,
      CO(0) => irt_OBUF_inst_i_32_n_3,
      CYINIT => '0',
      DI(3 downto 0) => cnt_max_IBUF(8 downto 5),
      O(3 downto 0) => minusOp(8 downto 5),
      S(3) => irt_OBUF_inst_i_46_n_0,
      S(2) => irt_OBUF_inst_i_47_n_0,
      S(1) => irt_OBUF_inst_i_48_n_0,
      S(0) => irt_OBUF_inst_i_49_n_0
    );
irt_OBUF_inst_i_33: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => irt_OBUF_inst_i_33_n_0,
      CO(2) => irt_OBUF_inst_i_33_n_1,
      CO(1) => irt_OBUF_inst_i_33_n_2,
      CO(0) => irt_OBUF_inst_i_33_n_3,
      CYINIT => cnt_max_IBUF(0),
      DI(3 downto 0) => cnt_max_IBUF(4 downto 1),
      O(3 downto 0) => minusOp(4 downto 1),
      S(3) => irt_OBUF_inst_i_50_n_0,
      S(2) => irt_OBUF_inst_i_51_n_0,
      S(1) => irt_OBUF_inst_i_52_n_0,
      S(0) => irt_OBUF_inst_i_53_n_0
    );
irt_OBUF_inst_i_34: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_max_IBUF(20),
      O => irt_OBUF_inst_i_34_n_0
    );
irt_OBUF_inst_i_35: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_max_IBUF(19),
      O => irt_OBUF_inst_i_35_n_0
    );
irt_OBUF_inst_i_36: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_max_IBUF(18),
      O => irt_OBUF_inst_i_36_n_0
    );
irt_OBUF_inst_i_37: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_max_IBUF(17),
      O => irt_OBUF_inst_i_37_n_0
    );
irt_OBUF_inst_i_38: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_max_IBUF(16),
      O => irt_OBUF_inst_i_38_n_0
    );
irt_OBUF_inst_i_39: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_max_IBUF(15),
      O => irt_OBUF_inst_i_39_n_0
    );
irt_OBUF_inst_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => cnt_reg(27),
      I1 => minusOp(27),
      I2 => minusOp(29),
      I3 => cnt_reg(29),
      I4 => minusOp(28),
      I5 => cnt_reg(28),
      O => irt_OBUF_inst_i_4_n_0
    );
irt_OBUF_inst_i_40: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_max_IBUF(14),
      O => irt_OBUF_inst_i_40_n_0
    );
irt_OBUF_inst_i_41: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_max_IBUF(13),
      O => irt_OBUF_inst_i_41_n_0
    );
irt_OBUF_inst_i_42: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_max_IBUF(12),
      O => irt_OBUF_inst_i_42_n_0
    );
irt_OBUF_inst_i_43: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_max_IBUF(11),
      O => irt_OBUF_inst_i_43_n_0
    );
irt_OBUF_inst_i_44: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_max_IBUF(10),
      O => irt_OBUF_inst_i_44_n_0
    );
irt_OBUF_inst_i_45: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_max_IBUF(9),
      O => irt_OBUF_inst_i_45_n_0
    );
irt_OBUF_inst_i_46: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_max_IBUF(8),
      O => irt_OBUF_inst_i_46_n_0
    );
irt_OBUF_inst_i_47: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_max_IBUF(7),
      O => irt_OBUF_inst_i_47_n_0
    );
irt_OBUF_inst_i_48: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_max_IBUF(6),
      O => irt_OBUF_inst_i_48_n_0
    );
irt_OBUF_inst_i_49: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_max_IBUF(5),
      O => irt_OBUF_inst_i_49_n_0
    );
irt_OBUF_inst_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => cnt_reg(24),
      I1 => minusOp(24),
      I2 => minusOp(26),
      I3 => cnt_reg(26),
      I4 => minusOp(25),
      I5 => cnt_reg(25),
      O => irt_OBUF_inst_i_5_n_0
    );
irt_OBUF_inst_i_50: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_max_IBUF(4),
      O => irt_OBUF_inst_i_50_n_0
    );
irt_OBUF_inst_i_51: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_max_IBUF(3),
      O => irt_OBUF_inst_i_51_n_0
    );
irt_OBUF_inst_i_52: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_max_IBUF(2),
      O => irt_OBUF_inst_i_52_n_0
    );
irt_OBUF_inst_i_53: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_max_IBUF(1),
      O => irt_OBUF_inst_i_53_n_0
    );
irt_OBUF_inst_i_6: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => irt_OBUF_inst_i_6_n_0,
      CO(2) => irt_OBUF_inst_i_6_n_1,
      CO(1) => irt_OBUF_inst_i_6_n_2,
      CO(0) => irt_OBUF_inst_i_6_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_irt_OBUF_inst_i_6_O_UNCONNECTED(3 downto 0),
      S(3) => irt_OBUF_inst_i_14_n_0,
      S(2) => irt_OBUF_inst_i_15_n_0,
      S(1) => irt_OBUF_inst_i_16_n_0,
      S(0) => irt_OBUF_inst_i_17_n_0
    );
irt_OBUF_inst_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => cnt_reg(21),
      I1 => minusOp(21),
      I2 => minusOp(23),
      I3 => cnt_reg(23),
      I4 => minusOp(22),
      I5 => cnt_reg(22),
      O => irt_OBUF_inst_i_7_n_0
    );
irt_OBUF_inst_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => cnt_reg(18),
      I1 => minusOp(18),
      I2 => minusOp(20),
      I3 => cnt_reg(20),
      I4 => minusOp(19),
      I5 => cnt_reg(19),
      O => irt_OBUF_inst_i_8_n_0
    );
irt_OBUF_inst_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => cnt_reg(15),
      I1 => minusOp(15),
      I2 => minusOp(17),
      I3 => cnt_reg(17),
      I4 => minusOp(16),
      I5 => cnt_reg(16),
      O => irt_OBUF_inst_i_9_n_0
    );
rst_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => rst,
      O => rst_IBUF
    );
end STRUCTURE;
