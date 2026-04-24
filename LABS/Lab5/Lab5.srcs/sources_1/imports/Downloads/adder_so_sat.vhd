
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity adder_so_sat is
Generic ( N : integer := 4);
    Port ( a1 : in std_logic_vector (N-1 downto 0);
           a2 : in std_logic_vector (N-1 downto 0);
           a3 : out std_logic_vector (N-1 downto 0);
           ov : out std_logic);
end adder_so_sat;

architecture Behavioral of adder_so_sat is
    signal a1i, a2i, a3i : signed(N downto 0);
	signal ovi : std_logic;

begin
	
	-- extend inputs
    a1i <= signed(a1(N-1) & a1);
    a2i <= signed(a2(N-1) & a2);
    
	-- sum
	a3i <= a1i + a2i;
	
	-- overflow
	ovi <= std_logic(a3i(N) xor a3i(N-1));
    
	-- saturation
    a3 <= (N-1 => '1', others => '0') when (a3i(N downto N-1) = "10") else
		  (N-1 => '0', others => '1') when (a3i(N downto N-1) = "01") else
		  std_logic_vector(a3i(N-1 downto 0));
    ov <= ovi;

end Behavioral;
