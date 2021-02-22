----------------------------------------------------------------------------------
-- Company: BI-PNO FIT CVUT
-- Engineer: MARTIN STAHL
-- Project Name: KEY2SEG
-- Target Devices: BASYS 3
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DD_SYNC is
   Port (DATA_IN    : in std_logic;
         CLK        : in std_logic;
         DATA_OUT: out std_logic);
end DD_SYNC;

-- Simple component that implements 2x D register to sync external asynch inputs with inner clock
architecture DD_SYNC_BODY of DD_SYNC is
    signal D1, D2: std_logic;
begin
    DD_PROC: process(CLK)
    begin
        if CLK = '1' and CLK'event then
            D1 <= DATA_IN;
            D2 <= D1;
            DATA_OUT <= D2;
        end if;
    end process;
end DD_SYNC_BODY;
