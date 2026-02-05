----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.02.2026 09:13:56
-- Design Name: 
-- Module Name: adder_overflow - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity adder_overflow is
    Port ( a1 : in STD_LOGIC_vector (3 downto 0);
           a2 : in STD_LOGIC_vector (3 downto 0);
           a3 : out STD_LOGIC_vector (3 downto 0);
           ov : out STD_LOGIC);
end adder_overflow;

architecture Behavioral of adder_overflow is
    signal a1i, a2i, a3i : unsigned(4 downto 0);
begin
    a1i <= unsigned('0' & a1);
    a2i <= unsigned('0' & a2);
    
    a3i <= a1i + a2i;
    
    a3 <= std_logic_vector(a3i(3 downto 0));
    ov <= std_logic(a3i(4));
end Behavioral;
