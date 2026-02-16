library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity blinking_led_tb is
end blinking_led_tb;

architecture Behavioral of blinking_led_tb is
    signal clk : std_logic := '0';
    signal rst : std_logic := '0';
    signal led : std_logic;
    
    constant Ts : time := 1 us;
    
begin
--    clk <= '0';
--    rst <= '0';
    
    dut: entity work.blinking_led
        port map (
            clk => clk,
            rst => rst,
            led => led
        );
    
    -- Clock process definitions
    clk_process : process
    begin
        clk <= '0';
        wait for Ts/2;
        clk <= '1';
        wait for Ts/2;
    end process;

    stim_process : process
    begin
        rst <= '1';
        wait for 20ns;
        rst <= '0';
        
        wait;
    end process;

end Behavioral;