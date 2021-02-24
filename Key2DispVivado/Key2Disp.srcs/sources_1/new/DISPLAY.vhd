----------------------------------------------------------------------------------
-- Company: BI-PNO FIT CVUT
-- Engineer: MARTIN STAHL
-- Project Name: KEY2SEG
-- Target Devices: BASYS 3
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- zobrazi 4 ascii znaky (DATA) na 4 mistnem 7segmentovem displeji (SEGMENT, DP, DIGIT)
entity DISPLAY is
   port (
      DATA     : in  STD_LOGIC_VECTOR (7 downto 0);   -- vstupni data k zobrazeni (4 sestnactkove cislice)
      CLK      : in  STD_LOGIC;
      RESET    : in  STD_LOGIC;
      STROBE   : in  STD_LOGIC;
      SEGMENT  : out STD_LOGIC_VECTOR (6 downto 0);    -- 7 segmentu displeje
      DP       : out STD_LOGIC;                        -- desetinna tecka
      DIGIT    : out STD_LOGIC_VECTOR (3 downto 0)     -- 4 cifry displeje
   );
end entity DISPLAY;

architecture DISPLAY_BODY of DISPLAY is

   constant PRESCALER_WIDTH : integer := 16;
   signal PRESCALER : UNSIGNED (PRESCALER_WIDTH-1 downto 0);
   signal SEL       : STD_LOGIC_VECTOR (1 downto 0);
   
   signal ASCII       : STD_LOGIC_VECTOR (7 downto 0);
   signal VALUES     :  STD_LOGIC_VECTOR (31 downto 0);
   
begin

    -- Load and shift right reg. Shifts reg to the right by one byte 
    VALUESREG_PROC : process(CLK)
    begin
        if CLK = '1' and clk'event then
            if RESET = '1' then -- reset
                VALUES <= (others => '0');
            else
                if STROBE = '1' then
                    if DATA = "00001010" then -- when enter is pressed
                        VALUES <= (others => '0');
                    else
                        VALUES <= VALUES(23 downto 0) & DATA; -- shift characters on display to the left
                    end if;
                end if;
            end if;
        end if; 
    end process VALUESREG_PROC;
    
   -- Ascii value to value for 7 seg display decoder
   ASCII_2_7SEG : process (ASCII)
   begin
      case ASCII is
          -- when "00100000" => SEGMENT <= "1111111"; -- space is included in "others"
          when "00110000" => SEGMENT <= "0000001"; -- 0
          when "00110001" => SEGMENT <= "1001111"; -- 1
          when "00110010" => SEGMENT <= "0010010"; -- 2
          when "00110011" => SEGMENT <= "0000110"; -- 3
          when "00110100" => SEGMENT <= "1001100"; -- 4
          when "00110101" => SEGMENT <= "0100100"; -- 5
          when "00110110" => SEGMENT <= "0100000"; -- 6
          when "00110111" => SEGMENT <= "0001111"; -- 7
          when "00111000" => SEGMENT <= "0000000"; -- 8
          when "00111001" => SEGMENT <= "0000100"; -- 9
          when "01000001" => SEGMENT <= "0001000"; -- A
          when "01000010" => SEGMENT <= "1100000"; -- b
          when "01000011" => SEGMENT <= "0110001"; -- C
          when "01000100" => SEGMENT <= "1000010"; -- d
          when "01000101" => SEGMENT <= "0110000"; -- E
          when "01000110" => SEGMENT <= "0111000"; -- F
          when "01000111" => SEGMENT <= "0100001"; -- G
          when "01001000" => SEGMENT <= "1001000"; -- H
          when "01001001" => SEGMENT <= "1111001"; -- I
          when "01001010" => SEGMENT <= "1000011"; -- J
          when "01001011" => SEGMENT <= "1001000"; -- K
          when "01001100" => SEGMENT <= "1110001"; -- L
          when "01001101" => SEGMENT <= "0101011"; -- M
          when "01001110" => SEGMENT <= "1101010"; -- N
          when "01001111" => SEGMENT <= "0000001"; -- O
          when "01010000" => SEGMENT <= "0011000"; -- P
          when "01010001" => SEGMENT <= "0001010"; -- Q
          when "01010010" => SEGMENT <= "1111010"; -- R
          when "01010011" => SEGMENT <= "0100100"; -- S
          when "01010100" => SEGMENT <= "1110000"; -- T
          when "01010101" => SEGMENT <= "1000001"; -- U
          when "01010110" => SEGMENT <= "1100011"; -- V
          when "01010111" => SEGMENT <= "1010101"; -- W
          when "01011000" => SEGMENT <= "1001000"; -- X
          when "01011001" => SEGMENT <= "1000100"; -- Y
          when "01011010" => SEGMENT <= "0010010"; -- Z
          when others => SEGMENT <= "1111111";
      end case;
   end process;
    
   -- Following code borrowed and modified from:
   ----------------------------------------------------------------------------------
   -- Company:     CTU in Prague, Faculty of Information Technology
   -- Engineer:    Martin Novotny
   ----------------------------------------------------------------------------------

   -- hodinovy kmitocet 100 MHz vydelime pomoci 16 bitoveho citace
   -- tim ziskame obnovovaci kmitocet displeje
   P_PRESCALER : process (CLK)
   begin
      if CLK = '1' and CLK'event then
         if RESET = '1' then
            PRESCALER <= (others => '0');
         else 
            PRESCALER <= PRESCALER + 1;
         end if;
      end if;
   end process;

   -- nejvyssi 2 bity citace slouzi k prepinani 4 cifer displeje
   SEL <= STD_LOGIC_VECTOR(PRESCALER(PRESCALER_WIDTH-1 downto PRESCALER_WIDTH-2));

   -- binarni kod prevedeme do kodu 1 z N
   -- cifra I je aktivni, jestlize DIGIT(I) = '0'
   SEL_DIGIT : process (SEL)
   begin
      case SEL is
         when "00"   => DIGIT <= "1110";   -- 0. cifra
         when "01"   => DIGIT <= "1101";   -- 1. cifra
         when "10"   => DIGIT <= "1011";   -- 2. cifra
         when others => DIGIT <= "0111";   -- 3. cifra
      end case;
   end process;

   -- a zaroven vybereme prislusnou ctverici bitu (znak) k zobrazeni
   SEL_INPUT : process (SEL, VALUES)
   begin
      case SEL is
         when "00"   => ASCII <= VALUES( 7  downto 0);  -- 0. sestnactkova cifra
         when "01"   => ASCII <= VALUES( 15 downto 8);  -- 1. sestnactkova cifra
         when "10"   => ASCII <= VALUES( 23 downto 16);  -- 2. sestnactkova cifra
         when others => ASCII <= VALUES( 31  downto 24);  -- 3. sestnactkova cifra
      end case;
   end process;

   -- desetinna tecka bude stale zhasnuta
   DP <= '1';
   
end architecture DISPLAY_BODY;
