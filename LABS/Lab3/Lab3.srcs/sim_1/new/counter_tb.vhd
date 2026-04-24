library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity counter_tb is
end counter_tb;

architecture arch of counter_tb is
    signal clk : std_logic := '0';
    signal rst : std_logic := '0';
    signal cnt_max : std_logic_vector(31 downto 0);
    signal irt : std_logic;
    
    -- Clock period definitions
    constant Ts : time := 10 ns;
    
begin

    dut: entity work.counter
        port map (
            cnt_max => cnt_max,
            clk => clk,
            rst => rst,
            irt => irt
        );
        
    -- Clock process definitions
    clk_process : process
    begin
        clk <= '0';
        wait for Ts/2;
        clk <= '1';
        wait for Ts/2;
    end process;
    
    stim_process: process
    begin
        cnt_max <= std_logic_vector(to_unsigned(2000,32)); -- Setting the max value of counter
        
        wait;
    end process;
end arch;
