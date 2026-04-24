
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
    
    signal u1i, u2i, adder_out, mul0_out, mul1_out : std_logic_vector(15 downto 0);
    
    -- registers
    signal adder_out_reg : std_logic_vector(15 downto 0);   
    signal y_register : std_logic_vector(7 downto 0);

begin

    process(clk, rst)
    begin
        if rst = '1' then
            adder_out_reg <= (others => '0');
            y_register <= (others => '0');
        elsif rising_edge(clk) then
            adder_out_reg <= adder_out;
            y_register <= mul1_out(15 downto 8);
        end if;
    end process;
    
    u1i <= u1 & "00000000";
    u2i <= u2 & "00000000";
    
    -- adder implimentation
    adder0 : entity work.adder_so_sat
    generic map(N => 16)
    port map (
        a1 => u1i,
        a2 => u2i,
        a3 => adder_out,
        ov => open);
    
    mul0 : entity work.mul_q
    generic map(N => 16)
    port map (
        m1 => adder_out_reg,
        m2 => adder_out_reg,
        m3 => mul0_out);
              
    mul1 : entity work.mul_q
    generic map(N => 16)
    port map (
        m1 => adder_out_reg,
        m2 => mul0_out,
        m3 => mul1_out);

    y <= y_register;

end arch;