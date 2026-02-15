----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/15/2026 03:45:16 PM
-- Design Name: 
-- Module Name: counter_tb - Behavioral
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


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity counter_tb is
    Port ( cnt_max : in STD_LOGIC_VECTOR (31 downto 0);
           rst : in STD_LOGIC;
           clk : in STD_LOGIC;
           irt : out STD_LOGIC);
end counter_tb;

architecture Behavioral of counter_tb is

begin


end Behavioral;
