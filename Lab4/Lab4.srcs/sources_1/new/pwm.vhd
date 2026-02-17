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
    signal input_buffer, input_buffer_n : unsigned(N-1 downto 0); 
    signal cnt, cnt_n: unsigned(N-1 downto 0);
    signal cnt_rst : std_logic;
   
begin
    process(clk,rst)
    begin
        if (rst = '1') then
            cnt <= (others=>'0');
            input_buffer <= (others=>'0');
        elsif(rising_edge(clk)) then
            cnt <= cnt_n;
            input_buffer <= input_buffer_n;
        end if;
    end process;
    cnt_n <= cnt + 1;
    
    cnt_rst <= '1' when cnt = (2**N - 1) else '0';
    
    input_buffer_n <= unsigned(duty) when cnt_rst = '1' else input_buffer;

    -- Output
    y <= '1' when (cnt < unsigned(input_buffer)) else '0';
end arch;
