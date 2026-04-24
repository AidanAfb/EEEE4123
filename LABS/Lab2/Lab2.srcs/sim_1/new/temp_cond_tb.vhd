----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.02.2026 18:05:38
-- Design Name: 
-- Module Name: temp_cond_tb - Behavioral
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

entity temp_cond_tb is
--  Port ( );
end temp_cond_tb;

architecture Behavioral of temp_cond_tb is
    signal temp_raw : std_logic_vector(7 downto 0);
    signal tempf : std_logic_vector(7 downto 0);
    
begin
    DUT : entity work.temp_cond
        port map (
            temp_raw => temp_raw,
            temp_f => tempf
        );
        
    stimprocess : process
    begin
        
        temp_raw <= std_logic_vector(to_signed(62, 8)); -- (19.375 C / 40) * 128 = 62.0
        wait for 5us;
        
        temp_raw <= std_logic_vector(to_signed(32, 8)); -- (10.0 C / 40) * 128 = 32
        wait for 5us;
        
        temp_raw <= std_logic_vector(to_signed(0, 8)); -- (0.0 C / 40) * 128 = 0
        wait for 5us;
        
        temp_raw <= std_logic_vector(to_signed(-16, 8)); -- (-5.0 C / 40) * 128 = -`6
        wait for 5us;
        
        temp_raw <= std_logic_vector(to_signed(-122, 8)); -- (-38.1875 C / 40) * 128 = -128
        wait for 5us;
        
        wait;
    end process;
end Behavioral;
