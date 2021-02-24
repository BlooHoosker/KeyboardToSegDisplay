----------------------------------------------------------------------------------
-- Company: BI-PNO FIT CVUT
-- Engineer: MARTIN STAHL
-- Project Name: KEY2SEG
-- Target Devices: BASYS 3
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Datapath part of keyboard unit
entity KEYBOARD_DP is
  Port (    CLK         : in std_logic;
            RST         : in std_logic;
            PS2_DATA    : in std_logic;
            STROBE_IN   : in std_logic;
            LD_BIT      : in std_logic;
            STROBE_OUT  : out std_logic;
            FZERO       : out std_logic;
            DATA        : out std_logic_vector(7 downto 0)
        );
end KEYBOARD_DP;

architecture KEYBOARD_DP_BODY of KEYBOARD_DP is

    signal data_reg: std_logic_vector (8 downto 0); -- data register holds value that is being loaded
    
begin

    -- Shifting one bit at a time from the left from PS2 data input
    DP_PROC: process(CLK)
    begin
        if CLK = '1' and CLK'event then
            if RST = '1' then -- Reset
                data_reg <= (others => '0');
            else 
                if LD_BIT = '1' then
                    data_reg <= PS2_DATA & data_reg(8 downto 1); -- Shifting to the right and adding one bit to MSB
                end if;
            end if;
        end if;
    end process;
    
    -- Strobe check, if odd parity doesnt match, strobe signal is not set
    STROBE_PROC: process (STROBE_IN, data_reg)
    begin
        if STROBE_IN = '1' and 
        (data_reg(0) xor data_reg(1) xor data_reg(2) xor data_reg(3) xor data_reg(4) xor data_reg(5) xor data_reg(6) xor data_reg(7)) = not(data_reg(8)) then
            STROBE_OUT <= '1';
        else 
            STROBE_OUT <= '0';
        end if;
    end process;
    
    -- If F0 scancode is detected, FZero signal is set
    FZERO_PROC: process(data_reg)
    begin
        if data_reg(7 downto 0) = "11110000" then
            FZERO <= '1';
        else
            FZERO <= '0';
        end if;
    end process;
    
    -- decoder scancode to ascii
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

end KEYBOARD_DP_BODY;
