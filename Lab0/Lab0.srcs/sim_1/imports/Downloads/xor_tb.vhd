library ieee;
use ieee.std_logic_1164.all;

entity xor_gate_tb is
end xor_gate_tb;

architecture tb of xor_gate_tb is

    signal in1  : std_logic;
    signal in2  : std_logic;
    signal out1 : std_logic;

begin

    dut : entity work.xor_gate
    port map (in1  => in1,
              in2  => in2,
              out1 => out1);

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