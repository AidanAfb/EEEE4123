
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity pow_3 is
    Port ( clk : in std_logic;
           rst : in std_logic;
           u1 : in std_logic_vector (7 downto 0);
           u2 : in std_logic_vector (7 downto 0);
           y : out std_logic_vector (7 downto 0));
end pow_3;

architecture arch of pow_3 is
    
    signal u1i, u1i_n, u2i, u2i_n, adder_out, mul0_out, mul1_out : std_logic_vector (15 downto 0);
    signal yi, yi_n : std_logic_vector (7 downto 0);

    -- registers
    signal adder_out_n, adder_out_delay, mul0_out_n, mul1_out_n : std_logic_vector (15 downto 0);
begin

    process(clk, rst)
    begin
      if (rst = '1') then
         u1i <= (others => '0');
         u2i <= (others => '0');
         
         adder_out <= (others => '0');
         mul0_out <= (others => '0');
         mul1_out <= (others => '0');
         
         yi <= (others => '0');
      elsif(rising_edge(clk)) then
         u1i <= u1i_n;
         u2i <= u2i_n;
         
         adder_out <= adder_out_n;
         adder_out_delay <= adder_out;
         mul0_out <= mul0_out_n;
         mul1_out <= mul1_out_n;
         
         yi <= yi_n;
      end if;
    end process;

    u1i_n <= u1 & "00000000";
    u2i_n <= u2 & "00000000";
    
    -- adder
    adder0 : entity work.adder_so_sat
    generic map(N => 16)
    port map (a1 => u1i,
              a2 => u2i,
              a3 => adder_out_n,
              ov => open);
    
    mul0 : entity work.mul_q
    generic map(N => 16)
    port map (m1 => adder_out,
              m2 => adder_out,
              m3 => mul0_out_n);
              
    mul1 : entity work.mul_q
    generic map(N => 16)
    port map (m1 => adder_out_delay,
              m2 => mul0_out,
              m3 => mul1_out_n);
              
    
    
    yi_n <= mul1_out(15 downto 8);
    y <= yi;
    
end arch;
