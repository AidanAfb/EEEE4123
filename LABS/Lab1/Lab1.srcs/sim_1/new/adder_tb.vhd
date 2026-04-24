----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.02.2026 16:28:29
-- Design Name: 
-- Module Name: adder_tb - Behavioral
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

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity adder_tb is
end adder_tb;

architecture Behavioral of adder_tb is
    signal a1 : std_logic_vector(3 downto 0);
    signal a2 : std_logic_vector(3 downto 0);
    signal a3 : std_logic_vector(3 downto 0);
    signal ov : std_logic;
begin
    DUT: entity work.adder
        port map (
            a1 => a1,
            a2 => a2,
            a3 => a3,
            ov => ov
        );
    stim_proc: process
    
    begin
    -- Test 1
    a1 <= std_logic_vector(to_signed(1,4)); -- 1
    a2 <= std_logic_vector(to_signed(-1,4)); -- -1
    
    wait for 1us;
    
    a1 <= std_logic_vector(to_signed(5,4)); -- 5
    a2 <= std_logic_vector(to_signed(5,4)); -- 5
    
    wait for 1us;
    
    a1 <= std_logic_vector(to_signed(-4,4)); -- -4
    a2 <= std_logic_vector(to_signed(-3,4)); -- -3
    
    wait for 1us;
    
    a1 <= std_logic_vector(to_signed(3,4)); -- 3
    a2 <= std_logic_vector(to_signed(4,4)); -- 4
    
    wait for 1us;
    
    a1 <= std_logic_vector(to_signed(-5,4)); -- -5
    a2 <= std_logic_vector(to_signed(-5,4)); -- -5
    
    wait;
    end process;
end Behavioral;
