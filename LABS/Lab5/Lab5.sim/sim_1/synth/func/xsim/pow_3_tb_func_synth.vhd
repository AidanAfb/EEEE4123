-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Tue Feb 24 14:18:59 2026
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
    u1_IBUF : in STD_LOGIC_VECTOR ( 7 downto 0 );
    u2_IBUF : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end adder_so_sat;

architecture STRUCTURE of adder_so_sat is
  signal \a3i_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \a3i_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \a3i_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \a3i_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \a3i_carry__0_n_0\ : STD_LOGIC;
  signal \a3i_carry__0_n_1\ : STD_LOGIC;
  signal \a3i_carry__0_n_2\ : STD_LOGIC;
  signal \a3i_carry__0_n_3\ : STD_LOGIC;
  signal \a3i_carry__0_n_4\ : STD_LOGIC;
  signal \a3i_carry__0_n_5\ : STD_LOGIC;
  signal \a3i_carry__0_n_6\ : STD_LOGIC;
  signal \a3i_carry__0_n_7\ : STD_LOGIC;
  signal \a3i_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \a3i_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \a3i_carry__1_n_2\ : STD_LOGIC;
  signal a3i_carry_i_1_n_0 : STD_LOGIC;
  signal a3i_carry_i_2_n_0 : STD_LOGIC;
  signal a3i_carry_i_3_n_0 : STD_LOGIC;
  signal a3i_carry_n_0 : STD_LOGIC;
  signal a3i_carry_n_1 : STD_LOGIC;
  signal a3i_carry_n_2 : STD_LOGIC;
  signal a3i_carry_n_3 : STD_LOGIC;
  signal a3i_carry_n_4 : STD_LOGIC;
  signal a3i_carry_n_5 : STD_LOGIC;
  signal a3i_carry_n_6 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_a3i_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_a3i_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_a3i_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \adder_out_reg[10]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \adder_out_reg[11]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \adder_out_reg[12]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \adder_out_reg[13]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \adder_out_reg[14]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \adder_out_reg[7]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \adder_out_reg[8]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \adder_out_reg[9]_i_1\ : label is "soft_lutpair0";
begin
a3i_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => a3i_carry_n_0,
      CO(2) => a3i_carry_n_1,
      CO(1) => a3i_carry_n_2,
      CO(0) => a3i_carry_n_3,
      CYINIT => '0',
      DI(3 downto 1) => u1_IBUF(2 downto 0),
      DI(0) => '0',
      O(3) => a3i_carry_n_4,
      O(2) => a3i_carry_n_5,
      O(1) => a3i_carry_n_6,
      O(0) => NLW_a3i_carry_O_UNCONNECTED(0),
      S(3) => a3i_carry_i_1_n_0,
      S(2) => a3i_carry_i_2_n_0,
      S(1) => a3i_carry_i_3_n_0,
      S(0) => '0'
    );
\a3i_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => a3i_carry_n_0,
      CO(3) => \a3i_carry__0_n_0\,
      CO(2) => \a3i_carry__0_n_1\,
      CO(1) => \a3i_carry__0_n_2\,
      CO(0) => \a3i_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => u1_IBUF(6 downto 3),
      O(3) => \a3i_carry__0_n_4\,
      O(2) => \a3i_carry__0_n_5\,
      O(1) => \a3i_carry__0_n_6\,
      O(0) => \a3i_carry__0_n_7\,
      S(3) => \a3i_carry__0_i_1_n_0\,
      S(2) => \a3i_carry__0_i_2_n_0\,
      S(1) => \a3i_carry__0_i_3_n_0\,
      S(0) => \a3i_carry__0_i_4_n_0\
    );
\a3i_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => u1_IBUF(6),
      I1 => u2_IBUF(6),
      O => \a3i_carry__0_i_1_n_0\
    );
\a3i_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => u1_IBUF(5),
      I1 => u2_IBUF(5),
      O => \a3i_carry__0_i_2_n_0\
    );
\a3i_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => u1_IBUF(4),
      I1 => u2_IBUF(4),
      O => \a3i_carry__0_i_3_n_0\
    );
\a3i_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => u1_IBUF(3),
      I1 => u2_IBUF(3),
      O => \a3i_carry__0_i_4_n_0\
    );
\a3i_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \a3i_carry__0_n_0\,
      CO(3 downto 2) => \NLW_a3i_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \a3i_carry__1_n_2\,
      CO(0) => \NLW_a3i_carry__1_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \a3i_carry__1_i_1_n_0\,
      O(3 downto 1) => \NLW_a3i_carry__1_O_UNCONNECTED\(3 downto 1),
      O(0) => p_0_in(0),
      S(3 downto 1) => B"001",
      S(0) => \a3i_carry__1_i_2_n_0\
    );
\a3i_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => u1_IBUF(7),
      O => \a3i_carry__1_i_1_n_0\
    );
\a3i_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => u1_IBUF(7),
      I1 => u2_IBUF(7),
      O => \a3i_carry__1_i_2_n_0\
    );
a3i_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => u1_IBUF(2),
      I1 => u2_IBUF(2),
      O => a3i_carry_i_1_n_0
    );
a3i_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => u1_IBUF(1),
      I1 => u2_IBUF(1),
      O => a3i_carry_i_2_n_0
    );
a3i_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => u1_IBUF(0),
      I1 => u2_IBUF(0),
      O => a3i_carry_i_3_n_0
    );
\adder_out_reg[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => a3i_carry_n_4,
      I1 => \a3i_carry__1_n_2\,
      I2 => p_0_in(0),
      O => D(3)
    );
\adder_out_reg[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \a3i_carry__0_n_7\,
      I1 => \a3i_carry__1_n_2\,
      I2 => p_0_in(0),
      O => D(4)
    );
\adder_out_reg[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \a3i_carry__0_n_6\,
      I1 => \a3i_carry__1_n_2\,
      I2 => p_0_in(0),
      O => D(5)
    );
\adder_out_reg[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \a3i_carry__0_n_5\,
      I1 => \a3i_carry__1_n_2\,
      I2 => p_0_in(0),
      O => D(6)
    );
\adder_out_reg[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \a3i_carry__0_n_4\,
      I1 => \a3i_carry__1_n_2\,
      I2 => p_0_in(0),
      O => D(7)
    );
\adder_out_reg[15]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \a3i_carry__1_n_2\,
      O => D(8)
    );
\adder_out_reg[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \a3i_carry__1_n_2\,
      I1 => p_0_in(0),
      O => D(0)
    );
\adder_out_reg[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => a3i_carry_n_6,
      I1 => \a3i_carry__1_n_2\,
      I2 => p_0_in(0),
      O => D(1)
    );
\adder_out_reg[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => a3i_carry_n_5,
      I1 => \a3i_carry__1_n_2\,
      I2 => p_0_in(0),
      O => D(2)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mul_q is
  port (
    P : out STD_LOGIC_VECTOR ( 15 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 )
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
  attribute METHODOLOGY_DRC_VIOS of m3i : label is "{SYNTH-13 {cell *THIS*}}";
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
      PREG => 0,
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
      CEP => '0',
      CLK => '0',
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_m3i_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_m3i_OVERFLOW_UNCONNECTED,
      P(47 downto 32) => NLW_m3i_P_UNCONNECTED(47 downto 32),
      P(31) => m3i_n_74,
      P(30 downto 15) => P(15 downto 0),
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
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mul_q_0 is
  port (
    P : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m3i_0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mul_q_0 : entity is "mul_q";
end mul_q_0;

architecture STRUCTURE of mul_q_0 is
  signal m3i_n_100 : STD_LOGIC;
  signal m3i_n_101 : STD_LOGIC;
  signal m3i_n_102 : STD_LOGIC;
  signal m3i_n_103 : STD_LOGIC;
  signal m3i_n_104 : STD_LOGIC;
  signal m3i_n_105 : STD_LOGIC;
  signal m3i_n_74 : STD_LOGIC;
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
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of m3i : label is "{SYNTH-13 {cell *THIS*}}";
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
      PREG => 0,
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
      B(17) => m3i_0(15),
      B(16) => m3i_0(15),
      B(15 downto 0) => m3i_0(15 downto 0),
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
      CEP => '0',
      CLK => '0',
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_m3i_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_m3i_OVERFLOW_UNCONNECTED,
      P(47 downto 32) => NLW_m3i_P_UNCONNECTED(47 downto 32),
      P(31) => m3i_n_74,
      P(30 downto 23) => P(7 downto 0),
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
  signal B : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal adder_out : STD_LOGIC_VECTOR ( 15 downto 7 );
  signal adder_out_reg : STD_LOGIC_VECTOR ( 15 downto 7 );
  signal clk_IBUF : STD_LOGIC;
  signal clk_IBUF_BUFG : STD_LOGIC;
  signal rst_IBUF : STD_LOGIC;
  signal u1_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal u2_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal y_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
begin
adder0: entity work.adder_so_sat
     port map (
      D(8 downto 0) => adder_out(15 downto 7),
      u1_IBUF(7 downto 0) => u1_IBUF(7 downto 0),
      u2_IBUF(7 downto 0) => u2_IBUF(7 downto 0)
    );
\adder_out_reg_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => adder_out(10),
      Q => adder_out_reg(10)
    );
\adder_out_reg_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => adder_out(11),
      Q => adder_out_reg(11)
    );
\adder_out_reg_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => adder_out(12),
      Q => adder_out_reg(12)
    );
\adder_out_reg_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => adder_out(13),
      Q => adder_out_reg(13)
    );
\adder_out_reg_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => adder_out(14),
      Q => adder_out_reg(14)
    );
\adder_out_reg_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => adder_out(15),
      Q => adder_out_reg(15)
    );
\adder_out_reg_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => adder_out(7),
      Q => adder_out_reg(7)
    );
\adder_out_reg_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => adder_out(8),
      Q => adder_out_reg(8)
    );
\adder_out_reg_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => adder_out(9),
      Q => adder_out_reg(9)
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
mul0: entity work.mul_q
     port map (
      P(15 downto 0) => B(15 downto 0),
      Q(8 downto 0) => adder_out_reg(15 downto 7)
    );
mul1: entity work.mul_q_0
     port map (
      P(7 downto 0) => y_OBUF(7 downto 0),
      Q(8 downto 0) => adder_out_reg(15 downto 7),
      m3i_0(15 downto 0) => B(15 downto 0)
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
end STRUCTURE;
