-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Tue Feb 10 10:57:15 2026
-- Host        : WUIP76808 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/Users/eeyaa63/Documents/GitHub/EEEE4123/Lab2/Lab2.sim/sim_1/synth/func/xsim/temp_cond_tb_func_synth.vhd
-- Design      : temp_cond
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a15tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity multiplier is
  port (
    temp_f_OBUF : out STD_LOGIC_VECTOR ( 7 downto 0 );
    temp_raw_IBUF : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end multiplier;

architecture STRUCTURE of multiplier is
  signal a1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \m3i__27_carry__0_n_0\ : STD_LOGIC;
  signal \m3i__27_carry__0_n_1\ : STD_LOGIC;
  signal \m3i__27_carry__0_n_2\ : STD_LOGIC;
  signal \m3i__27_carry__0_n_3\ : STD_LOGIC;
  signal \m3i__27_carry__1_n_1\ : STD_LOGIC;
  signal \m3i__27_carry__1_n_2\ : STD_LOGIC;
  signal \m3i__27_carry__1_n_3\ : STD_LOGIC;
  signal \m3i__27_carry_i_1__0_n_0\ : STD_LOGIC;
  signal \m3i__27_carry_i_1__1_n_0\ : STD_LOGIC;
  signal \m3i__27_carry_i_1_n_0\ : STD_LOGIC;
  signal \m3i__27_carry_i_2__0_n_0\ : STD_LOGIC;
  signal \m3i__27_carry_i_2__1_n_0\ : STD_LOGIC;
  signal \m3i__27_carry_i_2_n_0\ : STD_LOGIC;
  signal \m3i__27_carry_i_3__0_n_0\ : STD_LOGIC;
  signal \m3i__27_carry_i_3__1_n_0\ : STD_LOGIC;
  signal \m3i__27_carry_i_3_n_0\ : STD_LOGIC;
  signal \m3i__27_carry_i_4__0_n_0\ : STD_LOGIC;
  signal \m3i__27_carry_i_4__1_n_0\ : STD_LOGIC;
  signal \m3i__27_carry_i_4_n_0\ : STD_LOGIC;
  signal \m3i__27_carry_i_5__0_n_0\ : STD_LOGIC;
  signal \m3i__27_carry_i_5_n_0\ : STD_LOGIC;
  signal \m3i__27_carry_i_6__0_n_0\ : STD_LOGIC;
  signal \m3i__27_carry_i_6_n_0\ : STD_LOGIC;
  signal \m3i__27_carry_i_7__0_n_0\ : STD_LOGIC;
  signal \m3i__27_carry_i_7_n_0\ : STD_LOGIC;
  signal \m3i__27_carry_i_8__0_n_0\ : STD_LOGIC;
  signal \m3i__27_carry_i_8_n_0\ : STD_LOGIC;
  signal \m3i__27_carry_i_9_n_0\ : STD_LOGIC;
  signal \m3i__27_carry_n_0\ : STD_LOGIC;
  signal \m3i__27_carry_n_1\ : STD_LOGIC;
  signal \m3i__27_carry_n_2\ : STD_LOGIC;
  signal \m3i__27_carry_n_3\ : STD_LOGIC;
  signal \m3i_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \m3i_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \m3i_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \m3i_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \m3i_carry__0_n_0\ : STD_LOGIC;
  signal \m3i_carry__0_n_1\ : STD_LOGIC;
  signal \m3i_carry__0_n_2\ : STD_LOGIC;
  signal \m3i_carry__0_n_3\ : STD_LOGIC;
  signal \m3i_carry__0_n_4\ : STD_LOGIC;
  signal \m3i_carry__0_n_5\ : STD_LOGIC;
  signal \m3i_carry__0_n_6\ : STD_LOGIC;
  signal \m3i_carry__0_n_7\ : STD_LOGIC;
  signal \m3i_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \m3i_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \m3i_carry__1_n_1\ : STD_LOGIC;
  signal \m3i_carry__1_n_3\ : STD_LOGIC;
  signal \m3i_carry__1_n_6\ : STD_LOGIC;
  signal \m3i_carry__1_n_7\ : STD_LOGIC;
  signal m3i_carry_i_1_n_0 : STD_LOGIC;
  signal m3i_carry_i_2_n_0 : STD_LOGIC;
  signal m3i_carry_i_3_n_0 : STD_LOGIC;
  signal m3i_carry_n_0 : STD_LOGIC;
  signal m3i_carry_n_1 : STD_LOGIC;
  signal m3i_carry_n_2 : STD_LOGIC;
  signal m3i_carry_n_3 : STD_LOGIC;
  signal m3i_carry_n_4 : STD_LOGIC;
  signal m3i_carry_n_5 : STD_LOGIC;
  signal m3i_carry_n_6 : STD_LOGIC;
  signal m3i_carry_n_7 : STD_LOGIC;
  signal \temp_f_OBUF[7]_inst_i_2_n_0\ : STD_LOGIC;
  signal \NLW_m3i__27_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_m3i__27_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_m3i_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_m3i_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute HLUTNM : string;
  attribute HLUTNM of \m3i__27_carry_i_1__1\ : label is "lutpair0";
  attribute HLUTNM of \m3i__27_carry_i_6__0\ : label is "lutpair0";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \m3i__27_carry_i_8\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \m3i__27_carry_i_9\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \temp_f_OBUF[0]_inst_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \temp_f_OBUF[1]_inst_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \temp_f_OBUF[2]_inst_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \temp_f_OBUF[3]_inst_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \temp_f_OBUF[4]_inst_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \temp_f_OBUF[7]_inst_i_2\ : label is "soft_lutpair2";
begin
\m3i__27_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \m3i__27_carry_n_0\,
      CO(2) => \m3i__27_carry_n_1\,
      CO(1) => \m3i__27_carry_n_2\,
      CO(0) => \m3i__27_carry_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => temp_raw_IBUF(6 downto 3),
      O(3 downto 0) => \NLW_m3i__27_carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \m3i__27_carry_i_1__0_n_0\,
      S(2) => \m3i__27_carry_i_2__1_n_0\,
      S(1) => \m3i__27_carry_i_3__1_n_0\,
      S(0) => \m3i__27_carry_i_4__0_n_0\
    );
\m3i__27_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \m3i__27_carry_n_0\,
      CO(3) => \m3i__27_carry__0_n_0\,
      CO(2) => \m3i__27_carry__0_n_1\,
      CO(1) => \m3i__27_carry__0_n_2\,
      CO(0) => \m3i__27_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \m3i__27_carry_i_1__1_n_0\,
      DI(2) => \m3i__27_carry_i_2_n_0\,
      DI(1) => \m3i__27_carry_i_3_n_0\,
      DI(0) => \m3i__27_carry_i_4__1_n_0\,
      O(3 downto 0) => a1(3 downto 0),
      S(3) => \m3i__27_carry_i_5_n_0\,
      S(2) => \m3i__27_carry_i_6__0_n_0\,
      S(1) => \m3i__27_carry_i_7__0_n_0\,
      S(0) => \m3i__27_carry_i_8__0_n_0\
    );
\m3i__27_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \m3i__27_carry__0_n_0\,
      CO(3) => \NLW_m3i__27_carry__1_CO_UNCONNECTED\(3),
      CO(2) => \m3i__27_carry__1_n_1\,
      CO(1) => \m3i__27_carry__1_n_2\,
      CO(0) => \m3i__27_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \m3i__27_carry_i_1_n_0\,
      DI(1) => \m3i__27_carry_i_2__0_n_0\,
      DI(0) => \m3i__27_carry_i_3__0_n_0\,
      O(3 downto 0) => a1(7 downto 4),
      S(3) => \m3i__27_carry_i_4_n_0\,
      S(2) => \m3i__27_carry_i_5__0_n_0\,
      S(1) => \m3i__27_carry_i_6_n_0\,
      S(0) => \m3i__27_carry_i_7_n_0\
    );
\m3i__27_carry_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => \m3i_carry__1_n_6\,
      I1 => temp_raw_IBUF(6),
      I2 => \m3i__27_carry_i_8_n_0\,
      O => \m3i__27_carry_i_1_n_0\
    );
\m3i__27_carry_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => temp_raw_IBUF(0),
      I1 => m3i_carry_n_4,
      I2 => temp_raw_IBUF(6),
      O => \m3i__27_carry_i_1__0_n_0\
    );
\m3i__27_carry_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF6A"
    )
        port map (
      I0 => temp_raw_IBUF(3),
      I1 => temp_raw_IBUF(1),
      I2 => temp_raw_IBUF(2),
      I3 => \m3i_carry__0_n_5\,
      O => \m3i__27_carry_i_1__1_n_0\
    );
\m3i__27_carry_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F6"
    )
        port map (
      I0 => temp_raw_IBUF(2),
      I1 => temp_raw_IBUF(1),
      I2 => \m3i_carry__0_n_6\,
      O => \m3i__27_carry_i_2_n_0\
    );
\m3i__27_carry_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2888888888888888"
    )
        port map (
      I0 => \m3i_carry__1_n_7\,
      I1 => temp_raw_IBUF(5),
      I2 => temp_raw_IBUF(3),
      I3 => temp_raw_IBUF(1),
      I4 => temp_raw_IBUF(2),
      I5 => temp_raw_IBUF(4),
      O => \m3i__27_carry_i_2__0_n_0\
    );
\m3i__27_carry_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => temp_raw_IBUF(5),
      I1 => m3i_carry_n_5,
      O => \m3i__27_carry_i_2__1_n_0\
    );
\m3i__27_carry_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2B"
    )
        port map (
      I0 => \m3i_carry__0_n_7\,
      I1 => temp_raw_IBUF(1),
      I2 => temp_raw_IBUF(7),
      O => \m3i__27_carry_i_3_n_0\
    );
\m3i__27_carry_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAA0000"
    )
        port map (
      I0 => temp_raw_IBUF(4),
      I1 => temp_raw_IBUF(2),
      I2 => temp_raw_IBUF(1),
      I3 => temp_raw_IBUF(3),
      I4 => \m3i_carry__0_n_4\,
      O => \m3i__27_carry_i_3__0_n_0\
    );
\m3i__27_carry_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => temp_raw_IBUF(4),
      I1 => m3i_carry_n_6,
      O => \m3i__27_carry_i_3__1_n_0\
    );
\m3i__27_carry_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D4F5"
    )
        port map (
      I0 => \m3i_carry__1_n_1\,
      I1 => \m3i__27_carry_i_8_n_0\,
      I2 => temp_raw_IBUF(7),
      I3 => temp_raw_IBUF(6),
      O => \m3i__27_carry_i_4_n_0\
    );
\m3i__27_carry_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => temp_raw_IBUF(3),
      I1 => m3i_carry_n_7,
      O => \m3i__27_carry_i_4__0_n_0\
    );
\m3i__27_carry_i_4__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => temp_raw_IBUF(7),
      I1 => temp_raw_IBUF(1),
      I2 => \m3i_carry__0_n_7\,
      O => \m3i__27_carry_i_4__1_n_0\
    );
\m3i__27_carry_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAA955595556AAA"
    )
        port map (
      I0 => \m3i__27_carry_i_1__1_n_0\,
      I1 => temp_raw_IBUF(3),
      I2 => temp_raw_IBUF(1),
      I3 => temp_raw_IBUF(2),
      I4 => temp_raw_IBUF(4),
      I5 => \m3i_carry__0_n_4\,
      O => \m3i__27_carry_i_5_n_0\
    );
\m3i__27_carry_i_5__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4DB2B24D"
    )
        port map (
      I0 => \m3i_carry__1_n_6\,
      I1 => \m3i__27_carry_i_8_n_0\,
      I2 => temp_raw_IBUF(6),
      I3 => temp_raw_IBUF(7),
      I4 => \m3i_carry__1_n_1\,
      O => \m3i__27_carry_i_5__0_n_0\
    );
\m3i__27_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \m3i__27_carry_i_2__0_n_0\,
      I1 => \m3i__27_carry_i_8_n_0\,
      I2 => temp_raw_IBUF(6),
      I3 => \m3i_carry__1_n_6\,
      O => \m3i__27_carry_i_6_n_0\
    );
\m3i__27_carry_i_6__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"956A56A9"
    )
        port map (
      I0 => temp_raw_IBUF(3),
      I1 => temp_raw_IBUF(1),
      I2 => temp_raw_IBUF(2),
      I3 => \m3i_carry__0_n_5\,
      I4 => \m3i_carry__0_n_6\,
      O => \m3i__27_carry_i_6__0_n_0\
    );
\m3i__27_carry_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \m3i__27_carry_i_3__0_n_0\,
      I1 => \m3i__27_carry_i_9_n_0\,
      I2 => \m3i_carry__1_n_7\,
      O => \m3i__27_carry_i_7_n_0\
    );
\m3i__27_carry_i_7__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"42BDBD42"
    )
        port map (
      I0 => temp_raw_IBUF(7),
      I1 => \m3i_carry__0_n_7\,
      I2 => temp_raw_IBUF(1),
      I3 => temp_raw_IBUF(2),
      I4 => \m3i_carry__0_n_6\,
      O => \m3i__27_carry_i_7__0_n_0\
    );
\m3i__27_carry_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => temp_raw_IBUF(4),
      I1 => temp_raw_IBUF(2),
      I2 => temp_raw_IBUF(1),
      I3 => temp_raw_IBUF(3),
      I4 => temp_raw_IBUF(5),
      O => \m3i__27_carry_i_8_n_0\
    );
\m3i__27_carry_i_8__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969696"
    )
        port map (
      I0 => \m3i_carry__0_n_7\,
      I1 => temp_raw_IBUF(1),
      I2 => temp_raw_IBUF(7),
      I3 => m3i_carry_n_4,
      I4 => temp_raw_IBUF(0),
      O => \m3i__27_carry_i_8__0_n_0\
    );
\m3i__27_carry_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => temp_raw_IBUF(4),
      I1 => temp_raw_IBUF(2),
      I2 => temp_raw_IBUF(1),
      I3 => temp_raw_IBUF(3),
      I4 => temp_raw_IBUF(5),
      O => \m3i__27_carry_i_9_n_0\
    );
m3i_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => m3i_carry_n_0,
      CO(2) => m3i_carry_n_1,
      CO(1) => m3i_carry_n_2,
      CO(0) => m3i_carry_n_3,
      CYINIT => '0',
      DI(3 downto 2) => temp_raw_IBUF(1 downto 0),
      DI(1 downto 0) => B"01",
      O(3) => m3i_carry_n_4,
      O(2) => m3i_carry_n_5,
      O(1) => m3i_carry_n_6,
      O(0) => m3i_carry_n_7,
      S(3) => m3i_carry_i_1_n_0,
      S(2) => m3i_carry_i_2_n_0,
      S(1) => m3i_carry_i_3_n_0,
      S(0) => temp_raw_IBUF(0)
    );
\m3i_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => m3i_carry_n_0,
      CO(3) => \m3i_carry__0_n_0\,
      CO(2) => \m3i_carry__0_n_1\,
      CO(1) => \m3i_carry__0_n_2\,
      CO(0) => \m3i_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => temp_raw_IBUF(5 downto 2),
      O(3) => \m3i_carry__0_n_4\,
      O(2) => \m3i_carry__0_n_5\,
      O(1) => \m3i_carry__0_n_6\,
      O(0) => \m3i_carry__0_n_7\,
      S(3) => \m3i_carry__0_i_1_n_0\,
      S(2) => \m3i_carry__0_i_2_n_0\,
      S(1) => \m3i_carry__0_i_3_n_0\,
      S(0) => \m3i_carry__0_i_4_n_0\
    );
\m3i_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => temp_raw_IBUF(5),
      I1 => temp_raw_IBUF(7),
      O => \m3i_carry__0_i_1_n_0\
    );
\m3i_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => temp_raw_IBUF(4),
      I1 => temp_raw_IBUF(6),
      O => \m3i_carry__0_i_2_n_0\
    );
\m3i_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => temp_raw_IBUF(3),
      I1 => temp_raw_IBUF(5),
      O => \m3i_carry__0_i_3_n_0\
    );
\m3i_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => temp_raw_IBUF(2),
      I1 => temp_raw_IBUF(4),
      O => \m3i_carry__0_i_4_n_0\
    );
\m3i_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \m3i_carry__0_n_0\,
      CO(3) => \NLW_m3i_carry__1_CO_UNCONNECTED\(3),
      CO(2) => \m3i_carry__1_n_1\,
      CO(1) => \NLW_m3i_carry__1_CO_UNCONNECTED\(1),
      CO(0) => \m3i_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => temp_raw_IBUF(6),
      O(3 downto 2) => \NLW_m3i_carry__1_O_UNCONNECTED\(3 downto 2),
      O(1) => \m3i_carry__1_n_6\,
      O(0) => \m3i_carry__1_n_7\,
      S(3 downto 2) => B"01",
      S(1) => \m3i_carry__1_i_1_n_0\,
      S(0) => \m3i_carry__1_i_2_n_0\
    );
\m3i_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => temp_raw_IBUF(7),
      O => \m3i_carry__1_i_1_n_0\
    );
\m3i_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => temp_raw_IBUF(6),
      O => \m3i_carry__1_i_2_n_0\
    );
m3i_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => temp_raw_IBUF(1),
      I1 => temp_raw_IBUF(3),
      O => m3i_carry_i_1_n_0
    );
m3i_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => temp_raw_IBUF(0),
      I1 => temp_raw_IBUF(2),
      O => m3i_carry_i_2_n_0
    );
m3i_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => temp_raw_IBUF(1),
      O => m3i_carry_i_3_n_0
    );
\temp_f_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => a1(0),
      O => temp_f_OBUF(0)
    );
\temp_f_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => a1(0),
      I1 => a1(1),
      O => temp_f_OBUF(1)
    );
\temp_f_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => a1(1),
      I1 => a1(0),
      I2 => a1(2),
      O => temp_f_OBUF(2)
    );
\temp_f_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01FE"
    )
        port map (
      I0 => a1(2),
      I1 => a1(0),
      I2 => a1(1),
      I3 => a1(3),
      O => temp_f_OBUF(3)
    );
\temp_f_OBUF[4]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5557AAA8"
    )
        port map (
      I0 => a1(3),
      I1 => a1(1),
      I2 => a1(0),
      I3 => a1(2),
      I4 => a1(4),
      O => temp_f_OBUF(4)
    );
\temp_f_OBUF[5]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE00000001FFFFFF"
    )
        port map (
      I0 => a1(1),
      I1 => a1(0),
      I2 => a1(2),
      I3 => a1(3),
      I4 => a1(4),
      I5 => a1(5),
      O => temp_f_OBUF(5)
    );
\temp_f_OBUF[6]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1555EAAA"
    )
        port map (
      I0 => a1(5),
      I1 => a1(4),
      I2 => a1(3),
      I3 => \temp_f_OBUF[7]_inst_i_2_n_0\,
      I4 => a1(6),
      O => temp_f_OBUF(6)
    );
\temp_f_OBUF[7]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55557FFFAAAA8000"
    )
        port map (
      I0 => a1(6),
      I1 => \temp_f_OBUF[7]_inst_i_2_n_0\,
      I2 => a1(3),
      I3 => a1(4),
      I4 => a1(5),
      I5 => a1(7),
      O => temp_f_OBUF(7)
    );
\temp_f_OBUF[7]_inst_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => a1(1),
      I1 => a1(0),
      I2 => a1(2),
      O => \temp_f_OBUF[7]_inst_i_2_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity temp_cond is
  port (
    temp_raw : in STD_LOGIC_VECTOR ( 7 downto 0 );
    temp_f : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of temp_cond : entity is true;
end temp_cond;

architecture STRUCTURE of temp_cond is
  signal temp_f_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal temp_raw_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
begin
multiplier: entity work.multiplier
     port map (
      temp_f_OBUF(7 downto 0) => temp_f_OBUF(7 downto 0),
      temp_raw_IBUF(7 downto 0) => temp_raw_IBUF(7 downto 0)
    );
\temp_f_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => temp_f_OBUF(0),
      O => temp_f(0)
    );
\temp_f_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => temp_f_OBUF(1),
      O => temp_f(1)
    );
\temp_f_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => temp_f_OBUF(2),
      O => temp_f(2)
    );
\temp_f_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => temp_f_OBUF(3),
      O => temp_f(3)
    );
\temp_f_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => temp_f_OBUF(4),
      O => temp_f(4)
    );
\temp_f_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => temp_f_OBUF(5),
      O => temp_f(5)
    );
\temp_f_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => temp_f_OBUF(6),
      O => temp_f(6)
    );
\temp_f_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => temp_f_OBUF(7),
      O => temp_f(7)
    );
\temp_raw_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => temp_raw(0),
      O => temp_raw_IBUF(0)
    );
\temp_raw_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => temp_raw(1),
      O => temp_raw_IBUF(1)
    );
\temp_raw_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => temp_raw(2),
      O => temp_raw_IBUF(2)
    );
\temp_raw_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => temp_raw(3),
      O => temp_raw_IBUF(3)
    );
\temp_raw_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => temp_raw(4),
      O => temp_raw_IBUF(4)
    );
\temp_raw_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => temp_raw(5),
      O => temp_raw_IBUF(5)
    );
\temp_raw_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => temp_raw(6),
      O => temp_raw_IBUF(6)
    );
\temp_raw_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => temp_raw(7),
      O => temp_raw_IBUF(7)
    );
end STRUCTURE;
