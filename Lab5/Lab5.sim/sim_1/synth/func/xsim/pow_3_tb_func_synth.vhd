-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Sun Feb 22 19:57:48 2026
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
begin
\y_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => y(0)
    );
\y_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => y(1)
    );
\y_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => y(2)
    );
\y_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => y(3)
    );
\y_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => y(4)
    );
\y_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => y(5)
    );
\y_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => y(6)
    );
\y_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => y(7)
    );
end STRUCTURE;
