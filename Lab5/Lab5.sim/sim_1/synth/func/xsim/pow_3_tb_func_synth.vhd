-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Mon Feb 23 20:47:34 2026
-- Host        : AIDANALEXAN6AEF running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/Mac/Home/Documents/GitHub/EEEE4123/Lab5/Lab5.sim/sim_1/synth/func/xsim/pow_3_tb_func_synth.vhd
-- Design      : pow_3
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a15tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity adder_so_sat is
  port (
    D : out STD_LOGIC_VECTOR ( 8 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \a3i_carry__0_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end adder_so_sat;

architecture STRUCTURE of adder_so_sat is
  signal \a3i_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \a3i_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \a3i_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \a3i_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \a3i_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \a3i_carry__0_n_0\ : STD_LOGIC;
  signal \a3i_carry__0_n_1\ : STD_LOGIC;
  signal \a3i_carry__0_n_2\ : STD_LOGIC;
  signal \a3i_carry__0_n_3\ : STD_LOGIC;
  signal \a3i_carry__0_n_5\ : STD_LOGIC;
  signal \a3i_carry__0_n_6\ : STD_LOGIC;
  signal \a3i_carry__0_n_7\ : STD_LOGIC;
  signal a3i_carry_i_1_n_0 : STD_LOGIC;
  signal a3i_carry_i_2_n_0 : STD_LOGIC;
  signal a3i_carry_i_3_n_0 : STD_LOGIC;
  signal a3i_carry_i_4_n_0 : STD_LOGIC;
  signal a3i_carry_n_0 : STD_LOGIC;
  signal a3i_carry_n_1 : STD_LOGIC;
  signal a3i_carry_n_2 : STD_LOGIC;
  signal a3i_carry_n_3 : STD_LOGIC;
  signal a3i_carry_n_4 : STD_LOGIC;
  signal a3i_carry_n_5 : STD_LOGIC;
  signal a3i_carry_n_6 : STD_LOGIC;
  signal \adder_out_reg[15]_i_2_n_3\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_a3i_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_adder_out_reg[15]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_adder_out_reg[15]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \adder_out[10]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \adder_out[11]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \adder_out[12]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \adder_out[13]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \adder_out[14]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \adder_out[7]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \adder_out[8]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \adder_out[9]_i_1\ : label is "soft_lutpair0";
begin
a3i_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => a3i_carry_n_0,
      CO(2) => a3i_carry_n_1,
      CO(1) => a3i_carry_n_2,
      CO(0) => a3i_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => Q(3 downto 0),
      O(3) => a3i_carry_n_4,
      O(2) => a3i_carry_n_5,
      O(1) => a3i_carry_n_6,
      O(0) => NLW_a3i_carry_O_UNCONNECTED(0),
      S(3) => a3i_carry_i_1_n_0,
      S(2) => a3i_carry_i_2_n_0,
      S(1) => a3i_carry_i_3_n_0,
      S(0) => a3i_carry_i_4_n_0
    );
\a3i_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => a3i_carry_n_0,
      CO(3) => \a3i_carry__0_n_0\,
      CO(2) => \a3i_carry__0_n_1\,
      CO(1) => \a3i_carry__0_n_2\,
      CO(0) => \a3i_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \a3i_carry__0_i_1_n_0\,
      DI(2 downto 0) => Q(6 downto 4),
      O(3) => p_0_in(0),
      O(2) => \a3i_carry__0_n_5\,
      O(1) => \a3i_carry__0_n_6\,
      O(0) => \a3i_carry__0_n_7\,
      S(3) => \a3i_carry__0_i_2_n_0\,
      S(2) => \a3i_carry__0_i_3_n_0\,
      S(1) => \a3i_carry__0_i_4_n_0\,
      S(0) => \a3i_carry__0_i_5_n_0\
    );
\a3i_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(7),
      O => \a3i_carry__0_i_1_n_0\
    );
\a3i_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Q(7),
      I1 => \a3i_carry__0_0\(7),
      O => \a3i_carry__0_i_2_n_0\
    );
\a3i_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Q(6),
      I1 => \a3i_carry__0_0\(6),
      O => \a3i_carry__0_i_3_n_0\
    );
\a3i_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Q(5),
      I1 => \a3i_carry__0_0\(5),
      O => \a3i_carry__0_i_4_n_0\
    );
\a3i_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Q(4),
      I1 => \a3i_carry__0_0\(4),
      O => \a3i_carry__0_i_5_n_0\
    );
a3i_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Q(3),
      I1 => \a3i_carry__0_0\(3),
      O => a3i_carry_i_1_n_0
    );
a3i_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Q(2),
      I1 => \a3i_carry__0_0\(2),
      O => a3i_carry_i_2_n_0
    );
a3i_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Q(1),
      I1 => \a3i_carry__0_0\(1),
      O => a3i_carry_i_3_n_0
    );
a3i_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Q(0),
      I1 => \a3i_carry__0_0\(0),
      O => a3i_carry_i_4_n_0
    );
\adder_out[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => a3i_carry_n_5,
      I1 => \adder_out_reg[15]_i_2_n_3\,
      I2 => p_0_in(0),
      O => D(3)
    );
\adder_out[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => a3i_carry_n_4,
      I1 => \adder_out_reg[15]_i_2_n_3\,
      I2 => p_0_in(0),
      O => D(4)
    );
\adder_out[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \a3i_carry__0_n_7\,
      I1 => \adder_out_reg[15]_i_2_n_3\,
      I2 => p_0_in(0),
      O => D(5)
    );
\adder_out[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \a3i_carry__0_n_6\,
      I1 => \adder_out_reg[15]_i_2_n_3\,
      I2 => p_0_in(0),
      O => D(6)
    );
\adder_out[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \a3i_carry__0_n_5\,
      I1 => \adder_out_reg[15]_i_2_n_3\,
      I2 => p_0_in(0),
      O => D(7)
    );
\adder_out[15]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \adder_out_reg[15]_i_2_n_3\,
      O => D(8)
    );
\adder_out[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \adder_out_reg[15]_i_2_n_3\,
      I1 => p_0_in(0),
      O => D(0)
    );
\adder_out[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F660"
    )
        port map (
      I0 => Q(0),
      I1 => \a3i_carry__0_0\(0),
      I2 => \adder_out_reg[15]_i_2_n_3\,
      I3 => p_0_in(0),
      O => D(1)
    );
\adder_out[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => a3i_carry_n_6,
      I1 => \adder_out_reg[15]_i_2_n_3\,
      I2 => p_0_in(0),
      O => D(2)
    );
\adder_out_reg[15]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \a3i_carry__0_n_0\,
      CO(3 downto 1) => \NLW_adder_out_reg[15]_i_2_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \adder_out_reg[15]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_adder_out_reg[15]_i_2_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"0001"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mul_q is
  port (
    B : out STD_LOGIC_VECTOR ( 15 downto 0 );
    CLK : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 );
    m3i_0 : in STD_LOGIC
  );
end mul_q;

architecture STRUCTURE of mul_q is
  signal m3i_n_100 : STD_LOGIC;
  signal m3i_n_101 : STD_LOGIC;
  signal m3i_n_102 : STD_LOGIC;
  signal m3i_n_103 : STD_LOGIC;
  signal m3i_n_104 : STD_LOGIC;
  signal m3i_n_105 : STD_LOGIC;
  signal m3i_n_74 : STD_LOGIC;
  signal m3i_n_91 : STD_LOGIC;
  signal m3i_n_92 : STD_LOGIC;
  signal m3i_n_93 : STD_LOGIC;
  signal m3i_n_94 : STD_LOGIC;
  signal m3i_n_95 : STD_LOGIC;
  signal m3i_n_96 : STD_LOGIC;
  signal m3i_n_97 : STD_LOGIC;
  signal m3i_n_98 : STD_LOGIC;
  signal m3i_n_99 : STD_LOGIC;
  signal mul0_out_n : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_m3i_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_m3i_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_m3i_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_m3i_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_m3i_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_m3i_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_m3i_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_m3i_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_m3i_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_m3i_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 32 );
  signal NLW_m3i_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of m3i : label is "{SYNTH-12 {cell *THIS*}}";
begin
m3i: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => Q(8),
      A(28) => Q(8),
      A(27) => Q(8),
      A(26) => Q(8),
      A(25) => Q(8),
      A(24) => Q(8),
      A(23) => Q(8),
      A(22) => Q(8),
      A(21) => Q(8),
      A(20) => Q(8),
      A(19) => Q(8),
      A(18) => Q(8),
      A(17) => Q(8),
      A(16) => Q(8),
      A(15 downto 7) => Q(8 downto 0),
      A(6) => Q(0),
      A(5) => Q(0),
      A(4) => Q(0),
      A(3) => Q(0),
      A(2) => Q(0),
      A(1) => Q(0),
      A(0) => Q(0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_m3i_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => Q(8),
      B(16) => Q(8),
      B(15 downto 7) => Q(8 downto 0),
      B(6) => Q(0),
      B(5) => Q(0),
      B(4) => Q(0),
      B(3) => Q(0),
      B(2) => Q(0),
      B(1) => Q(0),
      B(0) => Q(0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_m3i_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_m3i_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_m3i_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '1',
      CLK => CLK,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_m3i_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_m3i_OVERFLOW_UNCONNECTED,
      P(47 downto 32) => NLW_m3i_P_UNCONNECTED(47 downto 32),
      P(31) => m3i_n_74,
      P(30 downto 15) => mul0_out_n(15 downto 0),
      P(14) => m3i_n_91,
      P(13) => m3i_n_92,
      P(12) => m3i_n_93,
      P(11) => m3i_n_94,
      P(10) => m3i_n_95,
      P(9) => m3i_n_96,
      P(8) => m3i_n_97,
      P(7) => m3i_n_98,
      P(6) => m3i_n_99,
      P(5) => m3i_n_100,
      P(4) => m3i_n_101,
      P(3) => m3i_n_102,
      P(2) => m3i_n_103,
      P(1) => m3i_n_104,
      P(0) => m3i_n_105,
      PATTERNBDETECT => NLW_m3i_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_m3i_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_m3i_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_m3i_UNDERFLOW_UNCONNECTED
    );
m3i_i_10: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mul0_out_n(7),
      I1 => m3i_0,
      O => B(7)
    );
m3i_i_11: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mul0_out_n(6),
      I1 => m3i_0,
      O => B(6)
    );
m3i_i_12: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mul0_out_n(5),
      I1 => m3i_0,
      O => B(5)
    );
m3i_i_13: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mul0_out_n(4),
      I1 => m3i_0,
      O => B(4)
    );
m3i_i_14: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mul0_out_n(3),
      I1 => m3i_0,
      O => B(3)
    );
m3i_i_15: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mul0_out_n(2),
      I1 => m3i_0,
      O => B(2)
    );
m3i_i_16: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mul0_out_n(1),
      I1 => m3i_0,
      O => B(1)
    );
m3i_i_17: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mul0_out_n(0),
      I1 => m3i_0,
      O => B(0)
    );
m3i_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mul0_out_n(15),
      I1 => m3i_0,
      O => B(15)
    );
m3i_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mul0_out_n(14),
      I1 => m3i_0,
      O => B(14)
    );
m3i_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mul0_out_n(13),
      I1 => m3i_0,
      O => B(13)
    );
m3i_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mul0_out_n(12),
      I1 => m3i_0,
      O => B(12)
    );
m3i_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mul0_out_n(11),
      I1 => m3i_0,
      O => B(11)
    );
m3i_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mul0_out_n(10),
      I1 => m3i_0,
      O => B(10)
    );
m3i_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mul0_out_n(9),
      I1 => m3i_0,
      O => B(9)
    );
m3i_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mul0_out_n(8),
      I1 => m3i_0,
      O => B(8)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mul_q_0 is
  port (
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    CLK : in STD_LOGIC;
    B : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 );
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \yi_reg[0]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mul_q_0 : entity is "mul_q";
end mul_q_0;

architecture STRUCTURE of mul_q_0 is
  signal m3i_i_1_n_0 : STD_LOGIC;
  signal m3i_n_100 : STD_LOGIC;
  signal m3i_n_101 : STD_LOGIC;
  signal m3i_n_102 : STD_LOGIC;
  signal m3i_n_103 : STD_LOGIC;
  signal m3i_n_104 : STD_LOGIC;
  signal m3i_n_105 : STD_LOGIC;
  signal m3i_n_74 : STD_LOGIC;
  signal m3i_n_75 : STD_LOGIC;
  signal m3i_n_76 : STD_LOGIC;
  signal m3i_n_77 : STD_LOGIC;
  signal m3i_n_78 : STD_LOGIC;
  signal m3i_n_79 : STD_LOGIC;
  signal m3i_n_80 : STD_LOGIC;
  signal m3i_n_81 : STD_LOGIC;
  signal m3i_n_82 : STD_LOGIC;
  signal m3i_n_83 : STD_LOGIC;
  signal m3i_n_84 : STD_LOGIC;
  signal m3i_n_85 : STD_LOGIC;
  signal m3i_n_86 : STD_LOGIC;
  signal m3i_n_87 : STD_LOGIC;
  signal m3i_n_88 : STD_LOGIC;
  signal m3i_n_89 : STD_LOGIC;
  signal m3i_n_90 : STD_LOGIC;
  signal m3i_n_91 : STD_LOGIC;
  signal m3i_n_92 : STD_LOGIC;
  signal m3i_n_93 : STD_LOGIC;
  signal m3i_n_94 : STD_LOGIC;
  signal m3i_n_95 : STD_LOGIC;
  signal m3i_n_96 : STD_LOGIC;
  signal m3i_n_97 : STD_LOGIC;
  signal m3i_n_98 : STD_LOGIC;
  signal m3i_n_99 : STD_LOGIC;
  signal NLW_m3i_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_m3i_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_m3i_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_m3i_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_m3i_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_m3i_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_m3i_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_m3i_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_m3i_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_m3i_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 32 );
  signal NLW_m3i_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
m3i: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => Q(8),
      A(28) => Q(8),
      A(27) => Q(8),
      A(26) => Q(8),
      A(25) => Q(8),
      A(24) => Q(8),
      A(23) => Q(8),
      A(22) => Q(8),
      A(21) => Q(8),
      A(20) => Q(8),
      A(19) => Q(8),
      A(18) => Q(8),
      A(17) => Q(8),
      A(16) => Q(8),
      A(15 downto 7) => Q(8 downto 0),
      A(6) => Q(0),
      A(5) => Q(0),
      A(4) => Q(0),
      A(3) => Q(0),
      A(2) => Q(0),
      A(1) => Q(0),
      A(0) => Q(0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_m3i_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => B(15),
      B(16) => B(15),
      B(15 downto 0) => B(15 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_m3i_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_m3i_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_m3i_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => m3i_i_1_n_0,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '1',
      CLK => CLK,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_m3i_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_m3i_OVERFLOW_UNCONNECTED,
      P(47 downto 32) => NLW_m3i_P_UNCONNECTED(47 downto 32),
      P(31) => m3i_n_74,
      P(30) => m3i_n_75,
      P(29) => m3i_n_76,
      P(28) => m3i_n_77,
      P(27) => m3i_n_78,
      P(26) => m3i_n_79,
      P(25) => m3i_n_80,
      P(24) => m3i_n_81,
      P(23) => m3i_n_82,
      P(22) => m3i_n_83,
      P(21) => m3i_n_84,
      P(20) => m3i_n_85,
      P(19) => m3i_n_86,
      P(18) => m3i_n_87,
      P(17) => m3i_n_88,
      P(16) => m3i_n_89,
      P(15) => m3i_n_90,
      P(14) => m3i_n_91,
      P(13) => m3i_n_92,
      P(12) => m3i_n_93,
      P(11) => m3i_n_94,
      P(10) => m3i_n_95,
      P(9) => m3i_n_96,
      P(8) => m3i_n_97,
      P(7) => m3i_n_98,
      P(6) => m3i_n_99,
      P(5) => m3i_n_100,
      P(4) => m3i_n_101,
      P(3) => m3i_n_102,
      P(2) => m3i_n_103,
      P(1) => m3i_n_104,
      P(0) => m3i_n_105,
      PATTERNBDETECT => NLW_m3i_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_m3i_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_m3i_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_m3i_UNDERFLOW_UNCONNECTED
    );
m3i_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => AR(0),
      O => m3i_i_1_n_0
    );
\yi[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m3i_n_82,
      I1 => \yi_reg[0]\,
      O => D(0)
    );
\yi[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m3i_n_81,
      I1 => \yi_reg[0]\,
      O => D(1)
    );
\yi[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m3i_n_80,
      I1 => \yi_reg[0]\,
      O => D(2)
    );
\yi[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m3i_n_79,
      I1 => \yi_reg[0]\,
      O => D(3)
    );
\yi[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m3i_n_78,
      I1 => \yi_reg[0]\,
      O => D(4)
    );
\yi[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m3i_n_77,
      I1 => \yi_reg[0]\,
      O => D(5)
    );
\yi[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m3i_n_76,
      I1 => \yi_reg[0]\,
      O => D(6)
    );
\yi[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m3i_n_75,
      I1 => \yi_reg[0]\,
      O => D(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pow_3 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    u1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    u2 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    y : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of pow_3 : entity is true;
end pow_3;

architecture STRUCTURE of pow_3 is
  signal adder_out : STD_LOGIC_VECTOR ( 15 downto 7 );
  signal adder_out_n : STD_LOGIC_VECTOR ( 15 downto 7 );
  signal clk_IBUF : STD_LOGIC;
  signal clk_IBUF_BUFG : STD_LOGIC;
  signal m3i_i_18_n_0 : STD_LOGIC;
  signal mul0_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal mul1_out_reg : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal rst_IBUF : STD_LOGIC;
  signal u1_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal u1i : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal u2_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal u2i : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal y_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
begin
adder0: entity work.adder_so_sat
     port map (
      D(8 downto 0) => adder_out_n(15 downto 7),
      Q(7 downto 0) => u1i(15 downto 8),
      \a3i_carry__0_0\(7 downto 0) => u2i(15 downto 8)
    );
\adder_out_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => adder_out_n(10),
      Q => adder_out(10)
    );
\adder_out_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => adder_out_n(11),
      Q => adder_out(11)
    );
\adder_out_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => adder_out_n(12),
      Q => adder_out(12)
    );
\adder_out_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => adder_out_n(13),
      Q => adder_out(13)
    );
\adder_out_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => adder_out_n(14),
      Q => adder_out(14)
    );
\adder_out_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => adder_out_n(15),
      Q => adder_out(15)
    );
\adder_out_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => adder_out_n(7),
      Q => adder_out(7)
    );
\adder_out_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => adder_out_n(8),
      Q => adder_out(8)
    );
\adder_out_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => adder_out_n(9),
      Q => adder_out(9)
    );
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
m3i_i_18: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => '1',
      Q => m3i_i_18_n_0
    );
mul0: entity work.mul_q
     port map (
      B(15 downto 0) => mul0_out(15 downto 0),
      CLK => clk_IBUF_BUFG,
      Q(8 downto 0) => adder_out(15 downto 7),
      m3i_0 => m3i_i_18_n_0
    );
mul1: entity work.mul_q_0
     port map (
      AR(0) => rst_IBUF,
      B(15 downto 0) => mul0_out(15 downto 0),
      CLK => clk_IBUF_BUFG,
      D(7 downto 0) => mul1_out_reg(15 downto 8),
      Q(8 downto 0) => adder_out(15 downto 7),
      \yi_reg[0]\ => m3i_i_18_n_0
    );
rst_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => rst,
      O => rst_IBUF
    );
\u1_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => u1(0),
      O => u1_IBUF(0)
    );
\u1_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => u1(1),
      O => u1_IBUF(1)
    );
\u1_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => u1(2),
      O => u1_IBUF(2)
    );
\u1_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => u1(3),
      O => u1_IBUF(3)
    );
\u1_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => u1(4),
      O => u1_IBUF(4)
    );
\u1_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => u1(5),
      O => u1_IBUF(5)
    );
\u1_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => u1(6),
      O => u1_IBUF(6)
    );
\u1_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => u1(7),
      O => u1_IBUF(7)
    );
\u1i_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => u1_IBUF(2),
      Q => u1i(10)
    );
\u1i_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => u1_IBUF(3),
      Q => u1i(11)
    );
\u1i_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => u1_IBUF(4),
      Q => u1i(12)
    );
\u1i_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => u1_IBUF(5),
      Q => u1i(13)
    );
\u1i_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => u1_IBUF(6),
      Q => u1i(14)
    );
\u1i_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => u1_IBUF(7),
      Q => u1i(15)
    );
\u1i_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => u1_IBUF(0),
      Q => u1i(8)
    );
\u1i_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => u1_IBUF(1),
      Q => u1i(9)
    );
\u2_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => u2(0),
      O => u2_IBUF(0)
    );
\u2_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => u2(1),
      O => u2_IBUF(1)
    );
\u2_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => u2(2),
      O => u2_IBUF(2)
    );
\u2_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => u2(3),
      O => u2_IBUF(3)
    );
\u2_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => u2(4),
      O => u2_IBUF(4)
    );
\u2_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => u2(5),
      O => u2_IBUF(5)
    );
\u2_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => u2(6),
      O => u2_IBUF(6)
    );
\u2_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => u2(7),
      O => u2_IBUF(7)
    );
\u2i_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => u2_IBUF(2),
      Q => u2i(10)
    );
\u2i_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => u2_IBUF(3),
      Q => u2i(11)
    );
\u2i_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => u2_IBUF(4),
      Q => u2i(12)
    );
\u2i_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => u2_IBUF(5),
      Q => u2i(13)
    );
\u2i_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => u2_IBUF(6),
      Q => u2i(14)
    );
\u2i_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => u2_IBUF(7),
      Q => u2i(15)
    );
\u2i_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => u2_IBUF(0),
      Q => u2i(8)
    );
\u2i_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => u2_IBUF(1),
      Q => u2i(9)
    );
\y_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => y_OBUF(0),
      O => y(0)
    );
\y_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => y_OBUF(1),
      O => y(1)
    );
\y_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => y_OBUF(2),
      O => y(2)
    );
\y_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => y_OBUF(3),
      O => y(3)
    );
\y_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => y_OBUF(4),
      O => y(4)
    );
\y_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => y_OBUF(5),
      O => y(5)
    );
\y_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => y_OBUF(6),
      O => y(6)
    );
\y_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => y_OBUF(7),
      O => y(7)
    );
\yi_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => mul1_out_reg(8),
      Q => y_OBUF(0)
    );
\yi_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => mul1_out_reg(9),
      Q => y_OBUF(1)
    );
\yi_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => mul1_out_reg(10),
      Q => y_OBUF(2)
    );
\yi_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => mul1_out_reg(11),
      Q => y_OBUF(3)
    );
\yi_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => mul1_out_reg(12),
      Q => y_OBUF(4)
    );
\yi_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => mul1_out_reg(13),
      Q => y_OBUF(5)
    );
\yi_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => mul1_out_reg(14),
      Q => y_OBUF(6)
    );
\yi_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => mul1_out_reg(15),
      Q => y_OBUF(7)
    );
end STRUCTURE;
