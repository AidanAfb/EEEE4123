
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity temp_cond is
    Port ( temp_raw : in std_logic_vector (7 downto 0);
           temp_c : out std_logic_vector (7 downto 0));
end temp_cond;

architecture Behavioral of temp_cond is

    signal a, b : std_logic_vector(7 downto 0);
    signal m_res : std_logic_vector(7 downto 0);

begin

	-- the two following lines are incomplete!
	-- puts the correct value for a and b
    a <= std_logic_vector(to_signed(,8));
    b <= std_logic_vector(to_signed(,8));
    
	-- instantiate here your adder
    
              
    -- instantiate here your multiplier
	
              
    
    
end Behavioral;
