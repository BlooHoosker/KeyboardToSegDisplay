----------------------------------------------------------------------------------
-- Company: BI-PNO FIT CVUT
-- Engineer: MARTIN STAHL
-- Project Name: KEY2SEG
-- Target Devices: BASYS 3
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Software version of keyboard component for testing purposes
entity SW_KEYBOARD is
    port ( ps2_data: in  std_logic;     -- serial PS2 input
         ps2_clk:  in  std_logic;     -- serial PS2 clock
         data:     out std_logic_vector (7 downto 0); -- decoded char output
         strobe:   out std_logic;     -- high for one clock when a new char present
         clk:      in  std_logic     -- standard 100MHz clock
         );
end SW_KEYBOARD;

architecture SW_KEYBOARD_BODY of SW_KEYBOARD is
    signal data_reg: std_logic_vector (8 downto 0);
    signal strobe_tmp: std_logic;
begin

    RECV_DATA: process
    begin
        strobe <= '0';
        -- waits until start bit and falling edge of ps2_clk
        wait until ps2_clk='0' and ps2_clk'event and ps2_data = '0'; -- start bit
        
        for I in 0 to 7 loop
            -- each falling edge stores value
            wait until ps2_clk='0' and ps2_clk'event; 
            data_reg(I) <= ps2_data; -- D0-7
        end loop;
        
        -- parity bit
        wait until ps2_clk='0' and ps2_clk'event;
        data_reg(8) <= ps2_data;
        
        -- stop bit
        wait until ps2_clk='0' and ps2_clk'event and ps2_data = '1';
        
        -- strobe for one clk if parity matches
        wait until clk='1' and clk'event;
        if data_reg(8) = not(data_reg(0) xor data_reg(1) xor data_reg(2) xor data_reg(3) xor data_reg(4) xor data_reg(5) xor data_reg(6) xor data_reg(7)) then
            strobe <= '1';
        else 
            strobe <= '0';
        end if;
        wait until clk='1' and clk'event;
    end process RECV_DATA;
    
    -- assigns lower 8 bits from data_reg to data output
    DATA_PROC: process(data_reg)
    begin
        case data_reg(7 DOWNTO 0) is 
            when x"15" => data <= x"51"; -- Q
            when x"1D" => data <= x"57"; -- W
            when x"24" => data <= x"45"; -- E
            when x"2D" => data <= x"52"; -- R
            when x"2C" => data <= x"54"; -- T
            when x"35" => data <= x"59"; -- Y
            when x"3C" => data <= x"55"; -- U
            when x"43" => data <= x"49"; -- I
            when x"44" => data <= x"4F"; -- O
            when x"4D" => data <= x"50"; -- P
            when x"1C" => data <= x"41"; -- A
            when x"1B" => data <= x"53"; -- S
            when x"23" => data <= x"44"; -- D
            when x"2B" => data <= x"46"; -- F
            when x"34" => data <= x"47"; -- G
            when x"33" => data <= x"48"; -- H
            when x"3B" => data <= x"4A"; -- J
            when x"42" => data <= x"4B"; -- K
            when x"4B" => data <= x"4C"; -- L
            when x"1A" => data <= x"5A"; -- Z
            when x"22" => data <= x"58"; -- X
            when x"21" => data <= x"43"; -- C
            when x"2A" => data <= x"56"; -- V
            when x"32" => data <= x"42"; -- B
            when x"31" => data <= x"4E"; -- N
            when x"3A" => data <= x"4D"; -- M
            when x"16" => data <= x"31"; -- 1
            when x"1E" => data <= x"32"; -- 2
            when x"26" => data <= x"33"; -- 3
            when x"25" => data <= x"34"; -- 4
            when x"2E" => data <= x"35"; -- 5
            when x"36" => data <= x"36"; -- 6
            when x"3D" => data <= x"37"; -- 7
            when x"3E" => data <= x"38"; -- 8
            when x"46" => data <= x"39"; -- 9
            when x"45" => data <= x"30"; -- 0
            when x"5A" => data <= x"0A"; -- ENTER
            when others => data <= x"20"; -- SPACE
        end case;
    end process DATA_PROC;

end SW_KEYBOARD_BODY;
