library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity pwm is
    generic(N: integer := 8);
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           duty : in STD_LOGIC_VECTOR (N-1 downto 0);
           y : out STD_LOGIC);
end pwm;

architecture arch of pwm is
    signal duty_u, cnt, cnt_n: unsigned(N-1 downto 0);
   
begin
    process(clk,rst)
    begin
        if (rst = '1') then
            cnt <= (others=>'0');
        elsif(rising_edge(clk)) then
            cnt <= cnt_n;
        end if;
    end process;
    cnt_n <= cnt + 1;

    -- Output
    y <= '1' when (cnt < unsigned(duty)) else '0';
end arch;
