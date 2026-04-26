library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity MatrixProcessingCore is
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
end MatrixProcessingCore;

architecture Behavioral of MatrixProcessingCore is

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
        stStartMul1, stMul1_AB, stWaitWriteTempBuf, stWriteTempBuf, 
        stIncRowA, stMul2_TC, stWaitWriteOutputBuf, stWriteOutputBufferD,
        stIncRowTemp, stComplete);
        
signal presState: stateType;
signal nextState: stateType;

signal iWriteEnableA, iWriteEnableB, iWriteEnableC : std_logic_vector(0 downto 0);
signal iWriteAddressA : std_logic_vector (6 downto 0);
signal iWriteAddressB : std_logic_vector (7 downto 0);
signal iWriteAddressC : std_logic_vector (6 downto 0);

signal iReadEnableAB, iReadEnableTC : std_logic;
signal iReadA : std_logic_vector (6 downto 0);
signal iReadB : std_logic_vector (7 downto 0);
signal iReadC : std_logic_vector (6 downto 0);

signal iReadDataA, iReadDataB, iReadDataC : std_logic_vector (7 downto 0);
signal iReadDataTemp : std_logic_vector (19 downto 0);

signal iMac1Reset, iMac1Enable, iMac2Reset, iMac2Enable : std_logic;
signal iMac1Result : std_logic_vector (19 downto 0);
signal iMac2Result : std_logic_vector (31 downto 0);

signal iWriteEnableTemp, iWiteEnableOutput : std_logic_vector (0 downto 0);
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


end Behavioral;
