
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
    a <= temp_raw; -- Temp in celcius in Q7 format
    b <= std_logic_vector(to_signed(230,8)); -- 230 is the 1.8 conversion factor in Q7
    
	-- instantiate here your adder
    adder : entity work.adder
        port map (
            a1 => m_res,
            a2 => std_logic_vector(to_signed(4096, 8)),
            a3 => temp_c
            );
              
    -- instantiate here your multiplier
	multiplier : entity work.multiplier
	   port map (
	   m1 => a,
	   m2 => b,
	   m3 => m_res
	   );
    
end Behavioral;
