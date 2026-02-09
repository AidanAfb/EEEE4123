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

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity adder is
    Port ( a1 : in STD_LOGIC_VECTOR (7 downto 0);
           a2 : in STD_LOGIC_VECTOR (7 downto 0);
           a3 : out STD_LOGIC_VECTOR (7 downto 0));
           --ov : out std_logic);
end adder;

architecture Behavioral of adder is
    signal a1i, a2i, a3i : signed(8 downto 0);
    --signal ovi : std_logic;

begin
    -- input extension
    a1i <= signed(a1(7) & a1); -- Concattinating the MSB to maintain sign
    a2i <= signed(a2(7) & a2);
    
    a3i <= a1i + a2i;
    
    --ovi <= std_logic(a3i(4) xor a3i(3));
    --ovi <= (a1i(4) xor a3i(3)) and not (a1i(4) xor a2i(4));
    
    a3 <= std_logic_vector(a3i(7 downto 0));
    --a3 <= std_logic_vector(a3i(3 downto 0)) when ovi = '0' else "1000" when a3i(4) = '1' else "0111";
    --ov <= ovi;

end Behavioral;
