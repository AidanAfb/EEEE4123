library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity walking_led is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           button : in STD_LOGIC;
           leds : out STD_LOGIC_VECTOR (7 downto 0));
end walking_led;

architecture Behavioral of walking_led is

signal delay : std_logic_vector(7 downto 0);
signal led_results : std_logic_vector(7 downto 0);
signal debounce_out, edge_out : std_logic;
signal edge_trigger : std_logic;

begin

    -- Instantiating the debouncing
    debounce0 : entity work.debouncing
    generic map(N => 8)
    port map (
        clk => clk,
        rst => rst,
        delay => delay,
        u => button,
        y => debounce_out);

-- delay?

    -- Instantiating the moore edge detector
    edge0 : entity work.edge_moore
    port map (
        clk => clk,
        rst => rst,
        u => debounce_out,
        y => edge_trigger);
        
    process(clk, rst)
    begin
    
    if (rst = '1') then led_results <= "10000000";
    elsif (edge_trigger = '1') then led_results <= led_results(0) & led_results(7 downto 1);
    end if;
    
    leds <= led_results;
    
    end process;
end Behavioral;
