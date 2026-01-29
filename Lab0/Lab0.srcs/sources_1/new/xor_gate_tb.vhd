----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.01.2026 10:12:52
-- Design Name: 
-- Module Name: xor_gate_tb - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;


entity xor_gate_tb is
end xor_gate_tb;

architecture tb of xor_gate_tb is
    signal in1, in2, out1 : std_logic;
begin
    dut : entity work.xor_gate
    port map (in1 => in1, in2 => in2, out1 => out1);
    
    stimuli : process
    begin
        in1 <= '0';
        in2 <= '0';
        wait for 10 us;
        in1 <= '1';
        wait for 10 us;
        in2 <= '1';
        wait;
    end process;
end tb;
