----------------------------------------------------------------------------------
-- Company: BI-PNO FIT CVUT
-- Engineer: MARTIN STAHL
-- Project Name: KEY2SEG
-- Target Devices: BASYS 3
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use STD.TEXTIO.all;    
use IEEE.NUMERIC_STD.ALL;

-- Simple test bench which sends all supported scancodes into the key2segdisp component
entity TB_KeyToDisp is
end TB_KeyToDisp;

architecture TB_KeyToDisp_BODY of TB_KeyToDisp is

    signal tb_start     : std_logic;
    signal tb_ps2_data  : std_logic;
    signal tb_ps2_clk   : std_logic;
    signal tb_clk       : std_logic;
    signal tb_dp        : std_logic; 
    signal tb_reset     : std_logic;
    signal tb_segment   : std_logic_vector(6 downto 0);
    
    component Key2SegDisp is 
        port (
            PS2_DATA    :  in std_logic;
            PS2_CLOCK   :  in std_logic;
            GCLK, RESET :  in std_logic;
            SEGMENT     :  out STD_LOGIC_VECTOR (6 downto 0);    -- 7 segmentu displeje
            DP          :  out STD_LOGIC;                        -- desetinna tecka
            DIGIT       :  out STD_LOGIC_VECTOR (3 downto 0)     -- 4 cifry displeje
        );
    end component;

begin

    DUT: Key2SegDisp 
        port map(
            ps2_data => tb_ps2_data,
            ps2_clock => tb_ps2_clk,
            SEGMENT => tb_segment,
            dp => tb_dp,
            GCLK => tb_clk,
            reset => tb_reset
        );
    
    -- Generating 100 mhz clock signal 
    CLK_GEN: process
    begin
        tb_clk <= '1';
        wait for 10 ns;
        tb_clk <= '0';
        wait for 10 ns;
    end process CLK_GEN;
    
    -- clock sequence of ps2clk for 1 full transmition, started by tb_start
    PS2_CLK_GEN: process
    begin
        if tb_start = '1' then
            tb_ps2_clk <= '0';
            wait for 300 ns;
        end if;
        tb_ps2_clk <= '1';
        wait for 300 ns;
    end process PS2_CLK_GEN;
    
    PS2_GEN: process
        file SIMDATA : TEXT is in "C:\Users\marti\OneDrive\CVUT\Semester5\PNO\Semestralka2_KeyboardToDisplay\Key2Disp\scanInput.txt";
        variable L_SIMDATA : LINE;
        variable BV_IN, BV_OUT : BIT_VECTOR ( 8 downto 0);
        variable VAR_IN, VAR_OUT :STD_LOGIC_VECTOR ( 8 downto 0);
    begin
        tb_reset <= '1';
        wait for 20 ns;
        tb_reset <= '0';
        while not ENDFILE(SIMDATA) loop
        
            -- read input and correct output value from file 
            readline(SIMDATA, L_SIMDATA);
            read(L_SIMDATA, BV_IN);
            VAR_IN := To_StdLogicVector(BV_IN);
                    
            -- start state
            tb_ps2_data <= '1';
            wait for 500 ns;
            
            -- start bit
            tb_ps2_data <= '0';
            wait for 50 ns;
            tb_start <= '1';
            wait until tb_ps2_clk = '1' and tb_ps2_clk'event;
            
            -- reading bit of data with each falling edge
            for I in 0 to 7 loop
                wait for 250 ns;
                tb_ps2_data <= VAR_IN(I);
                wait until tb_ps2_clk = '1' and tb_ps2_clk'event;
            end loop;
            
            -- parity bit
            wait for 250 ns;
            tb_ps2_data <= VAR_IN(8);
            wait until tb_ps2_clk = '1' and tb_ps2_clk'event;
            
            -- stop bit
            wait for 250 ns;
            tb_ps2_data <= '1';
            
            wait until tb_ps2_clk = '1' and tb_ps2_clk'event;
            tb_start <= '0'; -- pause ps2 clk sequence
            
            -- wait for result
            wait for 1000 ns;
            
        end loop;
    
        report "KONEC SIMULACE" severity failure;
    end process PS2_GEN;

end TB_KeyToDisp_BODY;
