library ieee;
use ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;

entity pwm_tb is
end pwm_tb;

architecture tb of pwm_tb is
    
    constant N: integer := 8;
    signal duty: std_logic_vector(N-1 downto 0);
    
    signal clk, rst, y : std_logic;
    -- Clock period definitions
    constant Ts : time := 1 us;

begin

    cnt0 : entity work.pwm
    port map (clk => clk,
              rst => rst,
              duty => duty,
              y => y);

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
        -- Start with 10 / 256 cycle input duty cycle
        duty <= std_logic_vector(to_unsigned(10,N));
        
        wait for 10us;
        
        rst <= '0';
        
        wait for 1 ms;
        
        -- Moving to 20 cycle duty
        duty <= std_logic_vector(to_unsigned(20,N));
        
        wait for 1 ms;
        
        -- Moving to 20 cycle duty
        duty <= std_logic_vector(to_unsigned(128,N));
        
        wait for 1 ms;
        
        -- Moving to 20 cycle duty
        duty <= std_logic_vector(to_unsigned(200,N));
        
        wait for 1 ms;
        
        -- Moving to 20 cycle duty
        duty <= std_logic_vector(to_unsigned(250,N));

        wait;
    end process;

end tb;