
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity mul_q is
    Generic ( N : integer := 4);
    Port ( m1 : in std_logic_vector (N-1 downto 0);
           m2 : in std_logic_vector (N-1 downto 0);
           m3 : out std_logic_vector (N-1 downto 0));
end mul_q;

architecture Behavioral of mul_q is

    signal m1i, m2i : signed(N-1 downto 0);
    signal m3i : signed(2*N-1 downto 0);

begin

    m1i <= signed(m1);
    m2i <= signed(m2);

    m3i <= m1i*m2i;
    
    m3 <= std_logic_vector(m3i(2*N-2 downto N-1));

end Behavioral;
