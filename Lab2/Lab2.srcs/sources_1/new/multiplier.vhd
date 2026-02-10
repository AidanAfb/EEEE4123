----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.02.2026 17:31:07
-- Design Name: 
-- Module Name: multiplier - Behavioral
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

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity multiplier is
    Port ( m1 : in STD_LOGIC_VECTOR (7 downto 0);
           m2 : in STD_LOGIC_VECTOR (7 downto 0);
           m3 : out STD_LOGIC_VECTOR (7 downto 0));
end multiplier;

architecture Behavioral of multiplier is
    signal m1i, m2i : signed(7 downto 0);
    signal m3i : signed(15 downto 0);
begin
    m1i <= signed(m1);
    m2i <= signed(m2);
    
    m3i <= m1i*m2i;
    
    m3 <= std_logic_vector(m3i(14 downto 7));

end Behavioral;
