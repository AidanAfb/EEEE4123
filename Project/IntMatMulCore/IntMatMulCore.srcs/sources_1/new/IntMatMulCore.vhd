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

-- InputBufferA (8 x 16)
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

-- InputBufferC (16 x 8)
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

-- OutputBufferD (8 x 8)
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

signal iCountAReset, iCountAEnable, iCountBReset, iCountBEnable, iCountCReset, iCountCEnable,
        iRowAReset, iRowAEnable, iColAReset, iColAEnable, iColTempReset, iColTempEnable,
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
process (presState, WriteEnable, BufferSel, iCountA, iCOuntB, iCountC, iRowA, iColA, iColTemp, iRowTemp, iColD)
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
    iColAEnable <= '0';
    iColTempEnable <= '0';
    iRowTempEnable <= '0';
    iColDEnable <= '0';
    
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
                if BufferSel = "01" then
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
                nextState <= stStartMul1;
            else
                nextState <= stWriteA;
            end if;
        
        when stWriteB =>
            iCountBEnable <= '1';
            if iCountB = 255 then
                nextState <= stStartMul1;
            else
                nextState <= stWriteB;
            end if;
        
        when stWriteC =>
            iCountCEnable <= '1';
            if iCountC = 127 then
                nextState <= stStartMul1;
            else
                nextState <= stWriteC;
            end if;
        
        when stStartMul1 =>
            iMac1Reset <= '1';
            nextState <= stMul1AB;
            
        
        when stMul1AB =>
            iReadEnableAB <= '1';
            iMac1Enable <= '1';
            
            if iColA = 15 then
                nextState <= stWaitWriteTempBuf;
            elsif iColTemp = 15 then
                nextState <= stIncRowA;
            elsif iRowA = 7 then
                nextState <= stMul2TC;
            else
                iColAEnable <= '1';
                nextState <= stMul1AB;
            end if;
            
        when stWaitWriteTempBuf =>
            nextState <= stWriteTempBuf;
            
        when stWriteTempBuf =>
            iWriteEnableTemp(0) <= '1';
            iMac1Reset <= '1';
            nextState <= stMul1AB;
            
        when stIncRowA =>
            iRowAEnable <= '1';
            iColTempReset <= '1';
            iColAReset <= '1';
            nextState <= stMul1AB;
            
        when stMul2TC =>
            iReadENableTC <= '1';
            iMac2Enable <= '1';
            
            if iColD = 7 then
                nextState <= stIncRowTemp;
            elsif iColTemp = 15 then
                nextState <= stWaitWriteOutputBuf;
            elsif iRowTemp = 7 then
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
            nextState <= stIncRowTemp;
        
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
