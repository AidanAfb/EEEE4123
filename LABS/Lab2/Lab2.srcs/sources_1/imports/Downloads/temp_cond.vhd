
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity temp_cond is
    Port ( temp_raw : in std_logic_vector (7 downto 0); -- Q7 input temp.
           temp_f : out std_logic_vector (7 downto 0)); -- Q7 output temp.
end temp_cond;

architecture Behavioral of temp_cond is

    signal a, b : std_logic_vector(7 downto 0);
    signal m_res : std_logic_vector(15 downto 0); -- multiplier returns a Q14 result
    

begin

	-- the two following lines are incomplete!
	-- puts the correct value for a and b
	
	-- ((40 C * 9/5)+32) / 104 = 0.692
    a <= temp_raw; -- Temp in celcius in Q7 format
    b <= std_logic_vector(to_signed(89,8)); -- 0.692 * 128 = 89
    
    -- instantiate here your multiplier
	multiplier : entity work.multiplier
	   port map (
	   m1 => a,
	   m2 => b,
	   m3 => m_res(15 downto 8)
	   );
    
    -- Move adder after multiplier as that is the correct order of operations needed
	-- instantiate here your adder
    adder : entity work.adder
        port map (
            a1 => m_res(15 downto 8), -- Take the 7 MSB from multiplier to continue Q7 format
            a2 => std_logic_vector(to_signed(39, 8)), -- offset of scaled 32
            a3 => temp_f
            );
    
end Behavioral;
