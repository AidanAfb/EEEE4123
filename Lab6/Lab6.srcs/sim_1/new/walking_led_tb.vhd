library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity walking_led_tb is

end walking_led_tb;

architecture Behavioral of walking_led_tb is

    signal clk, rst, button : std_logic;
    signal leds : std_logic_vector(7 downto 0);
    
    -- Clock period definitions
    constant Ts : time := 10 ns;
    
begin

    dut : entity work.walking_led
    port map (
        clk => clk,
        rst => rst,
        button => button,
        leds => leds);

    -- Clock process definitions
    process
    begin
	   clk <= '0';
	   wait for Ts/2;
	   clk <= '1';
	   wait for Ts/2;
    end process;
    
    stimuli : process
    begin
        rst <= '1';
        button <= '0';
        
        wait for 5*Ts;
        rst <= '0';
        
        button <= '1';
        wait for 50ns;
        button <= '0';
        
        wait for 200ns;
        
        button <= '1';
        wait for 50ns;
        button <= '0';
        
        wait;
    end process;
end Behavioral;
