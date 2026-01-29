
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity and_not is
    Port ( in1 : in STD_LOGIC;
           in2 : in STD_LOGIC;
           out1 : out STD_LOGIC);
   end and_not;

architecture Behavioral of and_not is    
begin

    out1 <= (in1 and (not in2));

end Behavioral;
