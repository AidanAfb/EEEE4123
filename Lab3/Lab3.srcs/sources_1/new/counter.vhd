----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/15/2026 03:37:37 PM
-- Design Name: 
-- Module Name: counter - Behavioral
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

entity counter is
    Port ( cnt_max : in STD_LOGIC_VECTOR (31 downto 0);
           clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           irt : out STD_LOGIC);
end counter;

architecture arch of counter is
    signal cnt, cnt_n: unsigned(31 downto 0);
    begin
    -- clock process
        process(clk,rst)
            begin
            if(rst='1') then
            cnt <= (others=>'0');
            elsif(rising_edge(clk)) then
            cnt <= cnt_n;
            end if;
        end process;
    -- next-state logic
    cnt_n <= (others=>'0') when (cnt = unsigned(cnt_max)-1) else
    cnt + 1;
    -- irt logic
    irt <= '1' when (cnt = unsigned(cnt_max)-1) else
    '0';
end arch;
