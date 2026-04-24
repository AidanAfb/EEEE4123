-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Thu Jan 29 10:42:45 2026
-- Host        : WUIP76819 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/Users/eeyaa63/Documents/FPGA/EEEE4123/Lab0/Lab0.sim/sim_1/synth/func/xsim/xor_gate_tb_func_synth.vhd
-- Design      : xor_gate
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a15tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xor_gate is
  port (
    in1 : in STD_LOGIC;
    in2 : in STD_LOGIC;
    out1 : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of xor_gate : entity is true;
end xor_gate;

architecture STRUCTURE of xor_gate is
begin
out1_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => out1
    );
end STRUCTURE;
