----------------------------------------------------------------------------------
-- Company: BI-PNO FIT CVUT
-- Engineer: MARTIN STAHL
-- Project Name: KEY2SEG
-- Target Devices: BASYS 3
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Component that combines controller and datapath unit of keyboard
entity KEYBOARD_UNIT is
    port (  ps2_data    : in  std_logic;     -- serial PS2 input
             ps2_clk    : in  std_logic;     -- serial PS2 clock
             data       : out std_logic_vector (7 downto 0); -- decoded char output
             strobe     : out std_logic;     -- high for one clock when a new char present
             clk, rst   : in  std_logic     -- standard 50MHz clock
         );
end KEYBOARD_UNIT;

architecture KEYBOARD_UNIT_BODY of KEYBOARD_UNIT is

    signal KB_UNIT_FZERO: std_logic; 
    signal KB_UNIT_STROBE: std_logic; 
    signal KB_UNIT_LD_BIT: std_logic; 
    signal ps2_data_sync: std_logic; 
    signal ps2_clk_sync: std_logic;
    
    component KEYBOARD_DP is
      Port ( CLK, RST, PS2_DATA, STROBE_IN, LD_BIT: in std_logic;
             STROBE_OUT, FZERO: out std_logic;
             DATA: out std_logic_vector(7 downto 0));
    end component;
    
    component KEYBOARD_CONTROLLER is
          Port ( PS2_CLK, PS2_DATA, RST, CLK, FZERO: in std_logic;
                 LD_BIT, STROBE: out std_logic);
    end component;
    
    component DD_SYNC is
       Port (DATA_IN, CLK: in std_logic;
             DATA_OUT: out std_logic);
    end component;
begin

    KEYBOARD_DP_INST: KEYBOARD_DP port map(
        clk => clk,
        rst => rst,
        ps2_data => ps2_data_sync,
        strobe_in => KB_UNIT_STROBE,
        ld_bit => KB_UNIT_LD_BIT,
        strobe_out => strobe,
        data => data,
        fzero => KB_UNIT_fzero
    );
    
    KEYBOARD_CONTROLLER_INST: KEYBOARD_CONTROLLER port map(
        clk => clk,
        rst => rst,
        ps2_data => ps2_data_sync,
        ps2_clk => ps2_clk_sync,
        ld_bit => KB_UNIT_LD_BIT,
        strobe => KB_UNIT_STROBE,
        fzero => KB_UNIT_fzero
    );
    
    PS2_DATA_SYNC_INST: DD_SYNC port map(
        data_in => ps2_data,
        clk => clk,
        data_out => ps2_data_sync
    );
    
    PS2_CLK_SYNC_INST: DD_SYNC port map(
        data_in => ps2_clk,
        clk => clk,
        data_out => ps2_clk_sync
    );
end KEYBOARD_UNIT_BODY;
