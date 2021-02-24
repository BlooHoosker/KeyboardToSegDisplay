----------------------------------------------------------------------------------
-- Company: BI-PNO FIT CVUT
-- Engineer: MARTIN STAHL
-- Project Name: KEY2SEG
-- Target Devices: BASYS 3
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Key2SegDisp is Port (
    PS2_DATA    :  in std_logic;
    PS2_CLOCK   :  in std_logic;
    GCLK        :  in std_logic;
    RESET       :  in std_logic;
    SEGMENT     :  out STD_LOGIC_VECTOR (6 downto 0);    -- 7 segmentu displeje
    DP          :  out STD_LOGIC;                        -- desetinna tecka
    DIGIT       :  out STD_LOGIC_VECTOR (3 downto 0)     -- 4 cifry displeje
);
end Key2SegDisp;

architecture Key2SegDisp_BODY of Key2SegDisp is

    component DISPLAY is
       port (
           DATA     : in  STD_LOGIC_VECTOR (7 downto 0);   -- vstupni data k zobrazeni (4 sestnactkove cislice)
           CLK      : in  STD_LOGIC;
           RESET    : in  STD_LOGIC;
           STROBE   : in  STD_LOGIC;
           SEGMENT  : out STD_LOGIC_VECTOR (6 downto 0);    -- 7 segmentu displeje
           DP       : out STD_LOGIC;                        -- desetinna tecka
           DIGIT    : out STD_LOGIC_VECTOR (3 downto 0)     -- 4 cifry displeje
        );
    end component DISPLAY;
    
    component KEYBOARD_UNIT is
        port (  ps2_data    : in  std_logic;     -- serial PS2 input
                 ps2_clk    : in  std_logic;     -- serial PS2 clock
                 data       : out std_logic_vector (7 downto 0); -- decoded char output
                 strobe     : out std_logic;     -- high for one clock when a new char present
                 clk, rst   : in  std_logic     -- standard 50MHz clock
             );
    end component;
    
    component DD_SYNC is
       Port (DATA_IN    : in std_logic;
             CLK        : in std_logic;
             DATA_OUT: out std_logic);
    end component;
    
    signal K2SD_STROBE      : std_logic;
    signal K2SD_RESET       : std_logic;
    signal K2SD_ASCII_DATA  : std_logic_vector (7 downto 0);
begin

    DISPLAY_INST: DISPLAY port map(
        DATA => K2SD_ASCII_DATA,
        STROBE => K2SD_STROBE,
        RESET => K2SD_RESET,
        CLK => GCLK,
        SEGMENT => SEGMENT,
        DP => DP,
        DIGIT => DIGIT
    );
    
    KEYBOARD_INST: KEYBOARD_UNIT port map(
        ps2_data => PS2_DATA,
        ps2_clk => PS2_CLOCK,
        clk => GCLK,
        data => K2SD_ASCII_DATA,
        strobe => K2SD_STROBE,
        rst => K2SD_RESET
    );
    
    RESET_SYNC_INST: DD_SYNC port map(
        DATA_IN => RESET,
        CLK => GCLK,
        DATA_OUT => K2SD_RESET
    );
    
end Key2SegDisp_BODY;
