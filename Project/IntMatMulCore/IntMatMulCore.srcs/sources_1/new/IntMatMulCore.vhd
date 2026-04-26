library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity IntMatMulCore is
    Port ( Reset : in STD_LOGIC;
           Clock : in STD_LOGIC;
           WriteEnable : in STD_LOGIC;
           BufferSel : in STD_LOGIC_VECTOR (1 downto 0);
           WriteAddress : in STD_LOGIC_VECTOR (7 downto 0);
           WriteData : in STD_LOGIC_VECTOR (7 downto 0);
           ReadAddress : in STD_LOGIC_VECTOR (5 downto 0);
           ReadEnable : in STD_LOGIC;
           ReadData : out STD_LOGIC_VECTOR (31 downto 0);
           DataReady : out STD_LOGIC);
end IntMatMulCore;

architecture IntMatMulCore_arch of IntMatMulCore is

-- InputBuffer A and C (8 x 16)
COMPONENT dpram128x8
    PORT ( 
        clka : IN STD_LOGIC;
        wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
        addra : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
        dina : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        clkb : IN STD_LOGIC;
        enb : IN STD_LOGIC;
        addrb : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
        doutb : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
        );
END COMPONENT;

-- InputBufferB (16 x 16)
COMPONENT dpram256x8
    PORT ( 
        clka : IN STD_LOGIC;
        wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
        addra : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        dina : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        clkb : IN STD_LOGIC;
        enb : IN STD_LOGIC;
        addrb : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        doutb : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
        );
END COMPONENT;

-- TempBuffer (A x B result)
COMPONENT dpram128x20
    PORT ( 
        clka : IN STD_LOGIC;
        wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
        addra : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
        dina : IN STD_LOGIC_VECTOR(19 DOWNTO 0);
        clkb : IN STD_LOGIC;
        enb : IN STD_LOGIC;
        addrb : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
        doutb : OUT STD_LOGIC_VECTOR(19 DOWNTO 0)
        );
END COMPONENT;

-- OutputBufferD (64 x 32)
COMPONENT dpram64x32
    PORT ( 
        clka : IN STD_LOGIC;
        wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
        addra : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
        dina : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
        clkb : IN STD_LOGIC;
        enb : IN STD_LOGIC;
        addrb : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
        doutb : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
        );
END COMPONENT;

-- States definitions and signals
type stateType is (stIdle, stWriteA, stWriteB, stWriteC, 
        stStartMul1, stMul1AB, stWaitWriteTempBuf, stWriteTempBuf, 
        stIncRowA, stMul2TC, stWaitWriteOutputBuf, stWriteOutputBufferD,
        stIncRowTemp, stComplete);
        
signal presState: stateType;
signal nextState: stateType;

signal iWriteEnableA, iWriteEnableB, iWriteEnableC : std_logic_vector(0 downto 0);
signal iWriteAddressA : std_logic_vector (6 downto 0);
signal iWriteAddressB : std_logic_vector (7 downto 0);
signal iWriteAddressC : std_logic_vector (6 downto 0);

signal iReadEnableAB, iReadEnableTC : std_logic;
signal iReadAddressA : std_logic_vector (6 downto 0);
signal iReadAddressB : std_logic_vector (7 downto 0);
signal iReadAddressC : std_logic_vector (6 downto 0);
signal iReadAddressTemp : std_logic_vector (6 downto 0);

signal iReadDataA, iReadDataB, iReadDataC : std_logic_vector (7 downto 0);
signal iReadDataTemp : std_logic_vector (19 downto 0);

signal iMac1Reset, iMac1Enable, iMac2Reset, iMac2Enable : std_logic;
signal iMac1Result : std_logic_vector (19 downto 0);
signal iMac2Result : std_logic_vector (31 downto 0);

signal iWriteEnableTemp, iWriteEnableOutput : std_logic_vector (0 downto 0);
signal iWriteAddressTemp : std_logic_vector (6 downto 0);
signal iWriteAddressOutput : std_logic_vector (5 downto 0);

signal iCountA, iCountC : unsigned (6 downto 0);
signal iCountB : unsigned (7 downto 0);

signal iRowA, iRowTemp : unsigned (2 downto 0);
signal iColA, iColTemp : unsigned (3 downto 0);
signal iColD : unsigned (2 downto 0);

signal iCountAReset, iCountAEnable, iCountBReset, iCountBEnable, iCountCReset, iCountCEnable : std_logic;
signal iRowAReset, iRowAEnable, iColAReset, iColAEnable, iColTempReset, iColTempEnable,
        iRowTempReset, iRowTempEnable, iColDReset, iColDEnable : std_logic;

begin

-- Taking matrix inputs

-- Buffer Select based on which matrix being inputted
iWriteEnableA(0) <= WriteEnable when BufferSel = "00" else '0';
iWriteEnableB(0) <= WriteEnable when BufferSel = "01" else '0';
iWriteEnableC(0) <= WriteEnable when BufferSel  = "10" else '0';
-- Setting the write address
iWriteAddressA <= WriteAddress (6 downto 0);
iWriteAddressB <= WriteAddress  (7 downto 0);
iWriteAddressC <= WriteAddress (6 downto 0);

-- Instantiating the buffers
InputBufferA : dpram128x8
    PORT MAP (
        clka  	=> Clock,
        wea   	=> iWriteEnableA,
        addra 	=> iWriteAddressA,
        dina  	=> WriteData,
        clkb 	=> Clock,
        enb		=> iReadEnableAB,
        addrb 	=> iReadAddressA,
        doutb 	=> iReadDataA
    );

InputBufferB : dpram256x8
    PORT MAP (
        clka  	=> Clock,
        wea   	=> iWriteEnableB,
        addra 	=> iWriteAddressB,
        dina  	=> WriteData,
        clkb 	=> Clock,
        enb		=> iReadEnableAB,
        addrb 	=> iReadAddressB,
        doutb 	=> iReadDataB
    );
    
InputBufferC : dpram128x8
    PORT MAP (
        clka  	=> Clock,
        wea   	=> iWriteEnableC,
        addra 	=> iWriteAddressC,
        dina  	=> WriteData,
        clkb 	=> Clock,
        enb		=> iReadEnableTC,
        addrb 	=> iReadAddressC,
        doutb 	=> iReadDataC
    );
    
TempBuffer : dpram128x20
    PORT MAP (
        clka  	=> Clock,
        wea   	=> iWriteEnableTemp,
        addra 	=> iWriteAddressTemp,
        dina  	=> iMac1Result,
        clkb 	=> Clock,
        enb		=> iReadEnableTC,
        addrb 	=> iReadAddressTemp,
        doutb 	=> iReadDataTemp
    );
    
OutputBufferD : dpram64x32
    PORT MAP (
        clka  	=> Clock,
        wea   	=> iWriteEnableOutput,
        addra 	=> iWriteAddressOutput,
        dina  	=> iMac2Result,
        clkb 	=> Clock,
        enb		=> ReadEnable,
        addrb 	=> ReadAddress,
        doutb 	=> ReadData
    );

-- MAC1 for A x B
process(Clock)
begin
    if rising_edge(Clock) then
        if iMac1Reset = '1' then
            iMac1Result <= (others=>'0');
        elsif iMac1Enable = '1' then
            iMac1Result <= std_logic_vector(signed(iReadDataA) * signed(iReadDataB) + signed(iMac1Result));
        end if;
    end if;
end process;

-- MAC2 for Temp * C
process(Clock)
begin
    if rising_edge(Clock) then
        if iMac2Reset = '1' then
            iMac2Result <= (others=>'0');
        elsif iMac2Enable = '1' then
            iMac2Result <= std_logic_vector(signed(iReadDataTemp) * signed(iReadDataC) + signed(iMac2Result));
        end if;
    end if;
end process;


-- Generating addresses

-- Read addresses for A, 3 bits (iRowA) + 4 bits (iColA)
iReadAddressA <= std_logic_vector(iRowA & iColA);

-- Read addresses for B, 4 bits (iColA) + 4 bits (iColTemp)
iReadAddressB <= std_logic_vector(iColA & iColTemp);

-- Read addresses for C, 4 bits (iColTemp) + 3 bits (iColD)
iReadAddressC <= std_logic_vector(iColTemp & iColD);

-- Read addresses for Temp, 5 bits (iRowA) + 4 bits (iColTemp)
iReadAddressTemp <= std_logic_vector(iRowA & iColTemp);

-- Write addresses for TempBuffer
iWriteAddressTemp <= std_logic_vector(iRowA & iColTemp);

-- Write addresses for Output D, 3 bits (iRowTemp) + 3 bits (iColD)
iWriteAddressOutput <= std_logic_vector(iRowTemp & iColD);


-- Counter
process(Clock)
begin
    if rising_edge(Clock) then
        if iCountAReset = '1' then
            iCountA <= (others=>'0');
        elsif iCountAEnable = '1' then
            iCountA <= iCountA +1;
        end if;
        
        if iCountBReset = '1' then
            iCountB <= (others=>'0');
        elsif iCountBEnable = '1' then
            iCountB <= iCountB +1;
        end if;
        
        if iCountCReset = '1' then
            iCountC <= (others=>'0');
        elsif iCountCEnable = '1' then
            iCountC <= iCountC +1;
        end if;
        
        -- Row counter for A, 0 to 7
        if iRowAReset = '1' then
            iRowA <= (others=>'0');
        elsif iRowAEnable = '1' then
            iRowA <= iRowA +1;
        end if;
        
        -- Column Counter for A, 0 to 15
        if iColAReset = '1' then
            iColA <= (others=>'0');
        elsif iCOlAEnable = '1' then
            iColA <= iCOlA +1;
        end if;
        
        -- Row counter for Temp, 0 to 7
        if iRowTempReset = '1' then
            iRowTemp <= (others=>'0');
        elsif iRowTempEnable = '1' then
            iRowTemp <= iRowTemp +1;
        end if;
        
        -- Column counter for Temp, 0 to 15
        if iColTempReset = '1' then
            iColTemp <= (others=>'0');
        elsif iColTempEnable = '1' then
            iColTemp <= iColTemp +1;
        end if;
        
        -- Column counter for D, 0 to 7
        if iColDReset = '1' then
            iColD <= (others=>'0');
        elsif iColDEnable = '1' then
            iCOlD <= iColD +1;
        end if;
    end if;
end process;

-- State Machine Clock
process(Clock)
begin
    if rising_edge (Clock) then
        if Reset = '1' then
            presState <= stIdle;
        else
            presState <= nextState;
        end if;
    end if;
end process;

-- State Machine Process
process (presState, WriteEnable, BufferSel, iCountA, iCountB, iCountC, iRowA, iColA, iColTemp, iRowTemp, iColD)
begin
    nextState <= presState;
    
    -- Signal Defaults
    iCountAEnable <= '0';
    iCountAReset <= '0';
    
    iCountBEnable <= '0';
    iCountBReset <= '0';
    
    iCountCEnable <= '0';
    iCountCReset <= '0';
    
    iRowAEnable <= '0';
    iRowAReset <= '0';
    
    iColAEnable <= '0';
    iColAReset <= '0';
        
    iRowTempEnable <= '0';
    iRowTempReset <= '0';
    
    iColTempEnable <= '0';
    iColTempReset <= '0';
    
    iColDEnable <= '0';
    iColDReset <= '0';
    
    iReadEnableAB <= '0';
    iReadEnableTC <= '0';
    iMac1Reset <= '0';
    iMac1Enable <= '0';
    iMac2Reset <= '0';
    iMac2Enable <= '0';
    iWriteEnableTemp(0) <= '0';
    iWriteEnableOutput(0) <= '0';
    
    DataReady <= '0';
    
    case presState is
        when stIdle =>
            if WriteEnable = '1' then
                if BufferSel = "00" then
                    nextState <= stWriteA;
                elsif BufferSel = "01" then
                    nextState <= stWriteB;
                elsif BufferSel = "10" then
                    nextState <= stWriteC;
                end if;
            end if;
        
        when stWriteA =>
            iCountAEnable <= '1';
            if iCountA = 127 then
                iCountAReset <= '1';
                nextState <= stStartMul1;
            else
                nextState <= stWriteA;
            end if;
        
        when stWriteB =>
            iCountBEnable <= '1';
            if iCountB = 255 then
                iCountBReset <= '1';
                nextState <= stStartMul1;
            else
                nextState <= stWriteB;
            end if;
        
        when stWriteC =>
            iCountCEnable <= '1';
            if iCountC = 127 then
                iCountCReset <= '1';
                nextState <= stStartMul1;
            else
                nextState <= stWriteC;
            end if;
        
        when stStartMul1 =>
            iMac1Reset <= '1';
            -- Reset all the counters for the multiplication
            iRowAReset <= '1';
            iColAReset <= '1';
            iColTempReset <= '1';
            nextState <= stMul1AB;
            
        
        when stMul1AB =>
            iReadEnableAB <= '1';
            iMac1Enable <= '1';
            
            if iColA = 15 then
            -- MAC finished for current element
                nextState <= stWaitWriteTempBuf;
            elsif iColTemp = 15 then
            -- Current temp row in buffer
                nextState <= stIncRowA;
            elsif iRowA = 7 then
            -- All temp rows calculated
                nextState <= stMul2TC;
            else
            -- Incriment column A, normal operation
                iColAEnable <= '1';
                nextState <= stMul1AB;
            end if;
            
        when stWaitWriteTempBuf =>
            nextState <= stWriteTempBuf;
            
        when stWriteTempBuf =>
            iWriteEnableTemp(0) <= '1';
            iMac1Reset <= '1';
            iColTempEnable <= '1'; -- Go to the next column
            iColAReset <= '1'; -- Reset Column A for the next element
            nextState <= stMul1AB;
            
        when stIncRowA =>
            iRowAEnable <= '1';
            iColTempReset <= '1';
            iColAReset <= '1';
            nextState <= stMul1AB;
            
        when stMul2TC =>
            iReadEnableTC <= '1';
            iMac2Enable <= '1';
            
            if iColTemp = 15 then
            -- Element complete
                nextState <= stWaitWriteOutputBuf;
            elsif iColD = 7 then
            -- Row complete, inc to start the next one
                nextState <= stIncRowTemp;
            elsif iRowTemp = 7 then
            -- All complete
                nextState <= stComplete;
            else
                iColTempEnable <= '1';
                nextState <= stMul2TC;
            end if;
            
        when stWaitWriteOutputBuf =>
            nextState <= stWriteOutputBufferD;
        
        when stWriteOutputBufferD =>
            iWriteEnableOutput(0) <= '1';
            iMac2Reset <= '1';
            -- After each write inc ColD and rows
            if iColD = 7 then
                nextState <= stIncRowTemp;
            else
                iColDEnable <= '1';
                iCOlTempReset <= '1';
                nextState <= stMul2TC;
            end if;
        
        when stIncRowTemp =>
            iRowTempEnable <= '1';
            iColDReset <= '1';
            iColTempReset <= '1';
            nextState <= stMul2TC;
            
        when stComplete =>
            DataReady <= '1';
            nextState <= stIdle;
            
    end case;
end process;
        

end IntMatMulCore_arch;
