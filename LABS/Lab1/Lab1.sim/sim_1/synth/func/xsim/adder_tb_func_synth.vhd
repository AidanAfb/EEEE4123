-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Thu Feb  5 10:57:58 2026
-- Host        : WUIP76820 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/Users/eeyaa63/Downloads/EEEE4123/Lab1/Lab1.sim/sim_1/synth/func/xsim/adder_tb_func_synth.vhd
-- Design      : adder
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a15tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity adder is
  port (
    a1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    a2 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    a3 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ov : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of adder : entity is true;
end adder;

architecture STRUCTURE of adder is
  signal a1_IBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal a2_IBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal a3_OBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \a3_OBUF[1]_inst_i_2_n_0\ : STD_LOGIC;
  signal \a3_OBUF[2]_inst_i_2_n_0\ : STD_LOGIC;
  signal \a3_OBUF[3]_inst_i_2_n_0\ : STD_LOGIC;
  signal ov_OBUF : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \a3_OBUF[0]_inst_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \a3_OBUF[1]_inst_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \a3_OBUF[2]_inst_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \a3_OBUF[3]_inst_i_1\ : label is "soft_lutpair0";
begin
\a1_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => a1(0),
      O => a1_IBUF(0)
    );
\a1_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => a1(1),
      O => a1_IBUF(1)
    );
\a1_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => a1(2),
      O => a1_IBUF(2)
    );
\a1_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => a1(3),
      O => a1_IBUF(3)
    );
\a2_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => a2(0),
      O => a2_IBUF(0)
    );
\a2_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => a2(1),
      O => a2_IBUF(1)
    );
\a2_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => a2(2),
      O => a2_IBUF(2)
    );
\a2_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => a2(3),
      O => a2_IBUF(3)
    );
\a3_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => a3_OBUF(0),
      O => a3(0)
    );
\a3_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02BFBF02"
    )
        port map (
      I0 => \a3_OBUF[3]_inst_i_2_n_0\,
      I1 => a1_IBUF(3),
      I2 => a2_IBUF(3),
      I3 => a1_IBUF(0),
      I4 => a2_IBUF(0),
      O => a3_OBUF(0)
    );
\a3_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => a3_OBUF(1),
      O => a3(1)
    );
\a3_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF0202BF02BFBF02"
    )
        port map (
      I0 => \a3_OBUF[3]_inst_i_2_n_0\,
      I1 => a1_IBUF(3),
      I2 => a2_IBUF(3),
      I3 => \a3_OBUF[1]_inst_i_2_n_0\,
      I4 => a2_IBUF(1),
      I5 => a1_IBUF(1),
      O => a3_OBUF(1)
    );
\a3_OBUF[1]_inst_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => a2_IBUF(0),
      I1 => a1_IBUF(0),
      O => \a3_OBUF[1]_inst_i_2_n_0\
    );
\a3_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => a3_OBUF(2),
      O => a3(2)
    );
\a3_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"809696FE"
    )
        port map (
      I0 => \a3_OBUF[2]_inst_i_2_n_0\,
      I1 => a1_IBUF(2),
      I2 => a2_IBUF(2),
      I3 => a1_IBUF(3),
      I4 => a2_IBUF(3),
      O => a3_OBUF(2)
    );
\a3_OBUF[2]_inst_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E888"
    )
        port map (
      I0 => a2_IBUF(1),
      I1 => a1_IBUF(1),
      I2 => a1_IBUF(0),
      I3 => a2_IBUF(0),
      O => \a3_OBUF[2]_inst_i_2_n_0\
    );
\a3_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => a3_OBUF(3),
      O => a3(3)
    );
\a3_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \a3_OBUF[3]_inst_i_2_n_0\,
      I1 => a1_IBUF(3),
      I2 => a2_IBUF(3),
      O => a3_OBUF(3)
    );
\a3_OBUF[3]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEE888E8888888"
    )
        port map (
      I0 => a2_IBUF(2),
      I1 => a1_IBUF(2),
      I2 => a2_IBUF(0),
      I3 => a1_IBUF(0),
      I4 => a1_IBUF(1),
      I5 => a2_IBUF(1),
      O => \a3_OBUF[3]_inst_i_2_n_0\
    );
ov_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => ov_OBUF,
      O => ov
    );
ov_OBUF_inst_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"42"
    )
        port map (
      I0 => \a3_OBUF[3]_inst_i_2_n_0\,
      I1 => a1_IBUF(3),
      I2 => a2_IBUF(3),
      O => ov_OBUF
    );
end STRUCTURE;
