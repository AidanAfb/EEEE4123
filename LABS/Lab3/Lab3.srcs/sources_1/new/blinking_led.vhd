library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity blinking_led is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           led : out STD_LOGIC);
end blinking_led;

architecture Behavioral of blinking_led is
    signal irt : std_logic;
    signal led_output : std_logic := '0';
    signal max_count : std_logic_vector(31 downto 0);
    
begin

    max_count <= std_logic_vector(to_unsigned(500000,32));
    
-- instantiating the 32 bit counter
    counter: entity work.counter
    port map (
        cnt_max => max_count,
        clk => clk,
        rst => rst,
        irt => irt
    );
    
    
    process (clk, rst)
    begin
     if rst = '1' then
        led_output <= '0';
    elsif rising_edge(clk) then
        if irt = '1' then
            led_output <= not led_output;
        end if;
    end if;
    
    end process;

    led <= led_output;

end Behavioral;
