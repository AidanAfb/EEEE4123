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
    -- delay input for debouncing, set to 20 clock cycles after button press.
    -- note with current 10ns clock cycle this means a 200ns delay not 20ms like on slides
    -- done to reduce the simulation time on my laptop TT
    delay <= std_logic_vector(to_unsigned(20, 8));
    
    -- Instantiating the debouncing
    debounce0 : entity work.debouncing
    generic map(N => 8)
    port map (
        clk => clk,
        rst => rst,
        delay => delay,
        u => button,
        y => debounce_out);


    -- Instantiating the moore edge detector
    edge0 : entity work.edge_moore
    port map (
        clk => clk,
        rst => rst,
        u => debounce_out,
        y => edge_trigger);
        
    process(clk, rst)
    begin
    
    -- starting with bit 7 on
    if (rst = '1') then led_results <= "10000000";
    elsif (rising_edge(clk)) then
        -- shifting bit right after each button press
        if (edge_trigger = '1') then led_results <= led_results(0) & led_results(7 downto 1);
        end if;
    end if;
    
    leds <= led_results;
    
    end process;
end Behavioral;
