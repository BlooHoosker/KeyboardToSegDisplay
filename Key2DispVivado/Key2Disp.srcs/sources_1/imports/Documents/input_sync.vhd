----------------------------------------------------------------------------------
-- Company: BI-PNO FIT CVUT
-- Engineer: MARTIN STAHL
-- Module Name: INPUT_SYNC - INPUT_SYNC_BODY
-- Project Name: KEY2SEG
-- Target Devices: BASYS 3
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Simple component that implements 2x D register to sync external asynch inputs with inner clock
entity INPUT_SYNC is
port (
    INPUT : in std_logic;
    CLK : in std_logic;
    OUTPUT : out std_logic
    );
end entity INPUT_SYNC;

architecture INPUT_SYNC_BODY of INPUT_SYNC is
    signal STAGE_CON : std_logic;
begin
    STAGE1 : process (CLK)
    begin
        if CLK = '1' and CLK'event then                       
            STAGE_CON <= INPUT;           
        end if;
    end process STAGE1;
    
    STAGE2 : process (CLK)
    begin
        if CLK = '1' and CLK'event then                       
            OUTPUT <= STAGE_CON;           
        end if;
    end process STAGE2;
        
end architecture INPUT_SYNC_BODY;