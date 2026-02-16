-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Mon Feb 16 23:29:48 2026
-- Host        : AIDANALEXAN6AEF running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/Mac/Home/Documents/GitHub/EEEE4123/Lab4/Lab4.sim/sim_1/synth/func/xsim/pwm_tb_func_synth.vhd
-- Design      : pwm
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a15tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pwm is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    duty : in STD_LOGIC_VECTOR ( 7 downto 0 );
    y : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of pwm : entity is true;
  attribute N : integer;
  attribute N of pwm : entity is 8;
end pwm;

architecture STRUCTURE of pwm is
  signal clk_IBUF : STD_LOGIC;
  signal clk_IBUF_BUFG : STD_LOGIC;
  signal \cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[7]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_reg__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal duty_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal plusOp : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal rst_IBUF : STD_LOGIC;
  signal y_OBUF : STD_LOGIC;
  signal y_OBUF_inst_i_1_n_1 : STD_LOGIC;
  signal y_OBUF_inst_i_1_n_2 : STD_LOGIC;
  signal y_OBUF_inst_i_1_n_3 : STD_LOGIC;
  signal y_OBUF_inst_i_2_n_0 : STD_LOGIC;
  signal y_OBUF_inst_i_3_n_0 : STD_LOGIC;
  signal y_OBUF_inst_i_4_n_0 : STD_LOGIC;
  signal y_OBUF_inst_i_5_n_0 : STD_LOGIC;
  signal y_OBUF_inst_i_6_n_0 : STD_LOGIC;
  signal y_OBUF_inst_i_7_n_0 : STD_LOGIC;
  signal y_OBUF_inst_i_8_n_0 : STD_LOGIC;
  signal y_OBUF_inst_i_9_n_0 : STD_LOGIC;
  signal NLW_y_OBUF_inst_i_1_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \cnt[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \cnt[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cnt[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cnt[6]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \cnt[7]_i_1\ : label is "soft_lutpair1";
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
\cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_reg__0\(0),
      O => \cnt[0]_i_1_n_0\
    );
\cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \cnt_reg__0\(0),
      I1 => \cnt_reg__0\(1),
      O => plusOp(1)
    );
\cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \cnt_reg__0\(0),
      I1 => \cnt_reg__0\(1),
      I2 => \cnt_reg__0\(2),
      O => plusOp(2)
    );
\cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \cnt_reg__0\(1),
      I1 => \cnt_reg__0\(0),
      I2 => \cnt_reg__0\(2),
      I3 => \cnt_reg__0\(3),
      O => plusOp(3)
    );
\cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \cnt_reg__0\(2),
      I1 => \cnt_reg__0\(0),
      I2 => \cnt_reg__0\(1),
      I3 => \cnt_reg__0\(3),
      I4 => \cnt_reg__0\(4),
      O => plusOp(4)
    );
\cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \cnt_reg__0\(3),
      I1 => \cnt_reg__0\(1),
      I2 => \cnt_reg__0\(0),
      I3 => \cnt_reg__0\(2),
      I4 => \cnt_reg__0\(4),
      I5 => \cnt_reg__0\(5),
      O => plusOp(5)
    );
\cnt[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \cnt[7]_i_2_n_0\,
      I1 => \cnt_reg__0\(6),
      O => plusOp(6)
    );
\cnt[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \cnt[7]_i_2_n_0\,
      I1 => \cnt_reg__0\(6),
      I2 => \cnt_reg__0\(7),
      O => plusOp(7)
    );
\cnt[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \cnt_reg__0\(5),
      I1 => \cnt_reg__0\(3),
      I2 => \cnt_reg__0\(1),
      I3 => \cnt_reg__0\(0),
      I4 => \cnt_reg__0\(2),
      I5 => \cnt_reg__0\(4),
      O => \cnt[7]_i_2_n_0\
    );
\cnt_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \cnt[0]_i_1_n_0\,
      Q => \cnt_reg__0\(0)
    );
\cnt_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => plusOp(1),
      Q => \cnt_reg__0\(1)
    );
\cnt_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => plusOp(2),
      Q => \cnt_reg__0\(2)
    );
\cnt_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => plusOp(3),
      Q => \cnt_reg__0\(3)
    );
\cnt_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => plusOp(4),
      Q => \cnt_reg__0\(4)
    );
\cnt_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => plusOp(5),
      Q => \cnt_reg__0\(5)
    );
\cnt_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => plusOp(6),
      Q => \cnt_reg__0\(6)
    );
\cnt_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => plusOp(7),
      Q => \cnt_reg__0\(7)
    );
\duty_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => duty(0),
      O => duty_IBUF(0)
    );
\duty_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => duty(1),
      O => duty_IBUF(1)
    );
\duty_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => duty(2),
      O => duty_IBUF(2)
    );
\duty_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => duty(3),
      O => duty_IBUF(3)
    );
\duty_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => duty(4),
      O => duty_IBUF(4)
    );
\duty_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => duty(5),
      O => duty_IBUF(5)
    );
\duty_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => duty(6),
      O => duty_IBUF(6)
    );
\duty_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => duty(7),
      O => duty_IBUF(7)
    );
rst_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => rst,
      O => rst_IBUF
    );
y_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => y_OBUF,
      O => y
    );
y_OBUF_inst_i_1: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => y_OBUF,
      CO(2) => y_OBUF_inst_i_1_n_1,
      CO(1) => y_OBUF_inst_i_1_n_2,
      CO(0) => y_OBUF_inst_i_1_n_3,
      CYINIT => '0',
      DI(3) => y_OBUF_inst_i_2_n_0,
      DI(2) => y_OBUF_inst_i_3_n_0,
      DI(1) => y_OBUF_inst_i_4_n_0,
      DI(0) => y_OBUF_inst_i_5_n_0,
      O(3 downto 0) => NLW_y_OBUF_inst_i_1_O_UNCONNECTED(3 downto 0),
      S(3) => y_OBUF_inst_i_6_n_0,
      S(2) => y_OBUF_inst_i_7_n_0,
      S(1) => y_OBUF_inst_i_8_n_0,
      S(0) => y_OBUF_inst_i_9_n_0
    );
y_OBUF_inst_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => duty_IBUF(6),
      I1 => \cnt_reg__0\(6),
      I2 => \cnt_reg__0\(7),
      I3 => duty_IBUF(7),
      O => y_OBUF_inst_i_2_n_0
    );
y_OBUF_inst_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => duty_IBUF(4),
      I1 => \cnt_reg__0\(4),
      I2 => \cnt_reg__0\(5),
      I3 => duty_IBUF(5),
      O => y_OBUF_inst_i_3_n_0
    );
y_OBUF_inst_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => duty_IBUF(2),
      I1 => \cnt_reg__0\(2),
      I2 => \cnt_reg__0\(3),
      I3 => duty_IBUF(3),
      O => y_OBUF_inst_i_4_n_0
    );
y_OBUF_inst_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => duty_IBUF(0),
      I1 => \cnt_reg__0\(0),
      I2 => \cnt_reg__0\(1),
      I3 => duty_IBUF(1),
      O => y_OBUF_inst_i_5_n_0
    );
y_OBUF_inst_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => duty_IBUF(6),
      I1 => \cnt_reg__0\(6),
      I2 => duty_IBUF(7),
      I3 => \cnt_reg__0\(7),
      O => y_OBUF_inst_i_6_n_0
    );
y_OBUF_inst_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => duty_IBUF(4),
      I1 => \cnt_reg__0\(4),
      I2 => duty_IBUF(5),
      I3 => \cnt_reg__0\(5),
      O => y_OBUF_inst_i_7_n_0
    );
y_OBUF_inst_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => duty_IBUF(2),
      I1 => \cnt_reg__0\(2),
      I2 => duty_IBUF(3),
      I3 => \cnt_reg__0\(3),
      O => y_OBUF_inst_i_8_n_0
    );
y_OBUF_inst_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => duty_IBUF(0),
      I1 => \cnt_reg__0\(0),
      I2 => duty_IBUF(1),
      I3 => \cnt_reg__0\(1),
      O => y_OBUF_inst_i_9_n_0
    );
end STRUCTURE;
