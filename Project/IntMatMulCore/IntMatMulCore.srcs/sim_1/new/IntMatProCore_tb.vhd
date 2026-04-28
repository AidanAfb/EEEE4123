library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use ieee.std_logic_textio.all;
use std.textio.all;

entity IntMatProCore_tb is
end IntMatProCore_tb;

architecture Behavioral of IntMatProCore_tb is

component IntMatProCore
    Port( 
       Reset, Clock, WriteEnable : in STD_LOGIC;
       BufferSel : in STD_LOGIC_VECTOR (1 downto 0);
       WriteAddress : in STD_LOGIC_VECTOR (7 downto 0);
       WriteData : in STD_LOGIC_VECTOR (7 downto 0);
       
       ReadAddress : in STD_LOGIC_VECTOR (5 downto 0);
       ReadEnable : in STD_LOGIC;
       ReadData : out STD_LOGIC_VECTOR (31 downto 0);
       
       DataReady : out STD_LOGIC
    );
end component;

signal tb_Reset : std_logic := '0';
signal tb_Clock : std_logic := '0';
signal tb_BufferSel : std_logic_vector(1 downto 0) := (others => '0');
signal tb_WriteEnable : std_logic := '0';
signal tb_WriteAddress : std_logic_vector(7 downto 0) := (others => '0');
signal tb_WriteData : std_logic_vector(7 downto 0) := (others => '0');
signal tb_ReadEnable : std_logic := '0';
signal tb_ReadAddress : std_logic_vector(5 downto 0) := (others => '0');

signal tb_DataReady : std_logic;
signal tb_ReadData : std_logic_vector(31 downto 0);

-- CLock period definition
constant period : time := 200ns;

begin

    -- Instantiate the Unit Under Test (UUT)
    uut: IntMatProCore
        PORT MAP (
            Reset       => tb_Reset,
            Clock       => tb_Clock,
            WriteEnable => tb_WriteEnable,
            BufferSel   => tb_BufferSel,
            
            WriteAddress=> tb_WriteAddress,
            WriteData   => tb_writeData,
            
            ReadEnable  => tb_ReadEnable,
            ReadAddress => tb_ReadAddress,
            ReadData    => tb_ReadData,
            
            DataReady   => tb_DataReady
        );
    
    -- Clock Signal
    process is
    begin
        while now <= 500 * period loop -- Ensure enough time for all operations to complete
            tb_Clock <= '0';
            wait for period / 2;
            tb_Clock <= '1';
            wait for period / 2;
        end loop;
        wait;
    end process;
    
    -- Reset Signal
    process is
    begin
        tb_Reset <= '1';
        wait for 10*period;
        tb_Reset <= '0';
        wait;
    end process;
    
    -- Writing the .txt data to the inputs
    writing: process is
    file FIA: TEXT open READ_MODE is "InputA.txt";
    file FIB: TEXT open READ_MODE is "InputB.txt";
    file FIC: TEXT open READ_MODE is "InputC.txt";
    
    variable lineA, lineB, lineC: LINE;
    variable tb_DataA, tb_DataB, tb_DataC: std_logic_vector(7 downto 0);
    variable write_counter : integer;
    
    begin
        -- Writing to A
        tb_BufferSel <= "00";
        tb_WriteEnable <= '1';
        write_counter := 0;
        
        wait for 20 * period;
        while not ENDFILE(FIA) loop
            READLINE(FIA, lineA);
            HREAD(lineA, tb_DataA);
            
            tb_writeAddress <= std_logic_vector(to_unsigned(write_counter, 8));
            tb_WriteData <= tb_DataA;
            
            wait until falling_edge(tb_Clock);
            write_counter := write_counter + 1;
            
        end loop;
        
        -- Writing to B
        
        tb_BufferSel <= "01";
        write_Counter := 0;
        
        while not ENDFILE(FIB) loop
            READLINE(FIB, lineB);
            HREAD(lineB, tb_DataB);
            
            tb_WriteAddress <= std_logic_vector(to_unsigned(write_counter, 8));
            tb_WriteData <= tb_DataB;
            
            wait until falling_edge(tb_Clock);
            write_counter := write_counter + 1;
        end loop;
        
        -- Writing to C
        tb_BufferSel <= "10";
        write_Counter := 0;
        
        while not ENDFILE(FIC) loop
            READLINE(FIC, lineC);
            HREAD(lineC, tb_DataC);
            
            tb_WriteAddress <= std_logic_vector(to_unsigned(write_counter, 8));
            tb_WriteData <= tb_DataC;
            
            wait until falling_edge(tb_Clock);
            write_counter := write_counter + 1;
        end loop;
        
        -- Writing finished
        tb_WriteEnable <= '0';
        wait for period;
        wait;
    end process;
    
    reaading: process is
        file FO: TEXT open WRITE_MODE is "outputD.txt";
        file FI: TEXT open READ_MODE is "outputD_matlab.txt";
        
        variable lineMatlab : line;
        variable lineOut : line;
        
        variable matlab_data : std_logic_vector(31 downto 0);
        variable sim_data : std_logic_vector(31 downto 0);
        variable compare_ok : boolean;
        
        variable read_count : integer := 0;
        variable match_count : integer := 0;
        variable mismatch_count : integer := 0;
        
    begin
        tb_ReadEnable <= '0';
        tb_ReadAddress <= (others=>'0');
        
        wait until rising_edge(tb_DataReady);
        wait until falling_edge(tb_DataReady);
        wait for period;
        
        write(lineOut, string'("========"));
        writeline(FO, lineOut);
        write(lineOut, string'("Sim Results"));
        writeline(FO, lineOut);
        write(lineOut, string'("======="));
        writeline(FO, lineOut);
        writeline(FO, lineOut);
        
        write(lineOut, string'("Data from Matlab"), left, 20);
        write(lineOut, string'("Data from Simulation"), left, 20);
        write(lineOut, string'("Match?"), left, 20);
        writeline(FO, lineOut);
        
        write(lineOut, string'("--------"), left, 20);
        write(lineOut, string'("--------"), left, 20);
        write(lineOut, string'("------"), left, 20);
        writeline(FO, lineOut);
        
        tb_ReadEnable <= '1';
        
        while not ENDFILE(FI) loop
            readline(FI, lineMatlab);
            hread(lineMatlab, matlab_data);
            
            wait until rising_edge(tb_Clock);
            
            sim_data := tb_ReadData;
            
            if matlab_data = sim_data then
                compare_ok := true;
                match_count := match_count + 1;
            else
                compare_ok := false;
                mismatch_count := mismatch_count + 1;
            end if;
            
            write(lineOut, read_count, left, 8);
            hwrite(lineOut, matlab_data, left, 20);
            hwrite(lineOut, sim_data, left, 20);
            write(lineOut, compare_ok, left, 8);
            writeline(FO, lineOut);
            
            tb_ReadAddress <= std_logic_vector(unsigned(tb_ReadAddress) + 1);
            read_count := read_count + 1;
        end loop;
        
        tb_ReadEnable <= '0';
        
        writeline(FO, lineOut);
        write(lineOut, string'("========================================="));
        writeline(FO, lineOut);
        write(lineOut, string'("SUMMARY:"));
        writeline(FO, lineOut);
        write(lineOut, string'("  Total values read: "), left, 25);
        write(lineOut, read_count);
        writeline(FO, lineOut);
        write(lineOut, string'("  Matches: "), left, 25);
        write(lineOut, match_count);
        writeline(FO, lineOut);
        write(lineOut, string'("  Mismatches: "), left, 25);
        write(lineOut, mismatch_count);
        writeline(FO, lineOut);
        
        if mismatch_count = 0 then
            write(lineOut, string'(" Reasult: all match"));
        else
            write(lineOut, string'(" Result: fail"));
        end if;
        
        wait;
    end process;
end Behavioral;
