----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/15/2026 03:45:16 PM
-- Design Name: 
-- Module Name: counter_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


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
        cnt_max <= std_logic_vector(to_unsigned(21,32));
        
        rst <= '1';
        wait for 20ns;
        rst <= '0';
        
        wait for 100ns;
        
        wait;
    end process;
end arch;
