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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity adder_tb is
end adder_tb;

architecture Behavioral of adder_tb is
    signal a1 : std_logic_vector(3 downto 0);
    signal a2 : std_logic_vector(3 downto 0);
    signal a3 : std_logic_vector(4 downto 0);
begin
    DUT: entity work.adder
        port map (
            a1 => a1,
            a2 => a2,
            a3 => a3
        );
    
    stim_proc: process
    
    begin
    -- Test 1
    a1 <= "1011"; -- -5
    a2 <= "0110"; -- 6
    
    wait for 10us;
    
    a1 <= std_logic_vector(to_signed(5,4)); -- 5
    a2 <= "0110"; -- 6
    
    wait;
    end process;
end Behavioral;
