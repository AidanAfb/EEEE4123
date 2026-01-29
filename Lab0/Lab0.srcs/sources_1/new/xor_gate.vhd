----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.01.2026 09:39:43
-- Design Name: 
-- Module Name: xor_gate - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity xor_gate is
    Port ( in1 : in STD_LOGIC;
           in2 : in STD_LOGIC;
           out1 : out STD_LOGIC);
end xor_gate;

architecture Behavioral of xor_gate is
   signal tmp1, tmp2 : STD_LOGIC;
   
begin
    and_not0: entity work.and_not
    port map(
        in1 => in1,
        in2 => in2,
        out1 => tmp1);
    and_not1: entity work.and_not
    port map(
        in1 => in2,
        in2 => in1,
        out1 => tmp2);
    out1 <= tmp1 or tmp2;
end Behavioral;