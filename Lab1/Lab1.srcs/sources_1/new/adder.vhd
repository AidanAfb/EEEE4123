----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.02.2026 16:13:35
-- Design Name: 
-- Module Name: adder - Behavioral
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

entity adder is
    Port ( a1 : in STD_LOGIC_VECTOR (3 downto 0);
           a2 : in STD_LOGIC_VECTOR (3 downto 0);
           a3 : out STD_LOGIC_VECTOR (4 downto 0));
end adder;

architecture Behavioral of adder is
    signal a1i, a2i, a3i : unsigned(4 downto 0);

begin
    -- input extension
    a1i <= unsigned('0' & a1);
    a2i <= unsigned('0' & a2);
    
    a3i <= a1i + a2i;
    a3 <= std_logic_vector(a3i);

end Behavioral;
