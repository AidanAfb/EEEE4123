-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Mon Feb  9 18:15:58 2026
-- Host        : WUIP76915 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/Users/eeyaa63/Downloads/EEEE4123/Lab2/Lab2.sim/sim_1/synth/func/xsim/temp_cond_tb_func_synth.vhd
-- Design      : temp_cond
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a15tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity temp_cond is
  port (
    temp_raw : in STD_LOGIC_VECTOR ( 7 downto 0 );
    temp_c : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of temp_cond : entity is true;
end temp_cond;

architecture STRUCTURE of temp_cond is
begin
\temp_c_OBUF[0]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => temp_c(0),
      T => '1'
    );
\temp_c_OBUF[1]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => temp_c(1),
      T => '1'
    );
\temp_c_OBUF[2]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => temp_c(2),
      T => '1'
    );
\temp_c_OBUF[3]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => temp_c(3),
      T => '1'
    );
\temp_c_OBUF[4]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => temp_c(4),
      T => '1'
    );
\temp_c_OBUF[5]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => temp_c(5),
      T => '1'
    );
\temp_c_OBUF[6]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => temp_c(6),
      T => '1'
    );
\temp_c_OBUF[7]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => temp_c(7),
      T => '1'
    );
end STRUCTURE;
