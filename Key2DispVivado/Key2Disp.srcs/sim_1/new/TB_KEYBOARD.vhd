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

-- Testbench for keyboard component, sends input generated externally into keyboard component and checks correct results
entity TB_KEYBOARD is
end TB_KEYBOARD;

architecture TB_KEYBOARD_BODY of TB_KEYBOARD is

    signal tb_start: std_logic;
    signal tb_ps2_data: std_logic;
    signal tb_ps2_clk: std_logic; 
    signal tb_strobe: std_logic; 
    signal tb_clk: std_logic; 
    signal tb_strobe_trig: std_logic; 
    signal tb_rst: std_logic;
    signal tb_data: std_logic_vector(8 downto 0);
    
    component KEYBOARD_UNIT is
        port ( ps2_data: in  std_logic;     -- serial PS2 input
             ps2_clk:  in  std_logic;     -- serial PS2 clock
             data:     out std_logic_vector (7 downto 0); -- decoded char output
             strobe:   out std_logic;     -- high for one clock when a new char present
             clk, RST:      in  std_logic     -- standard 50MHz clock
             );
    end component;
begin

    DUT: KEYBOARD_UNIT 
    port map(
        ps2_data => tb_ps2_data,
        ps2_clk => tb_ps2_clk,
        data => tb_data(7 downto 0),
        strobe => tb_strobe,
        clk => tb_clk,
        rst => tb_rst
    );
    
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
    
    -- logs strobe bit if it changes value to 1
    STROBE_LOG: process(tb_strobe, tb_strobe_trig)
    begin 
        if tb_strobe_trig = '0' then
            tb_data(8) <= '0';
        elsif tb_strobe = '1' and tb_strobe_trig = '1' then
            tb_data(8) <= '1';
        end if;
    end process STROBE_LOG;
    
    PS2_GEN: process
        file SIMDATA : TEXT is in "D:\OneDrive\CVUT\Semester5\PNO\Semestralka2_KeyboardToDisplay\Key2Disp\ps2input.txt";
        variable L_SIMDATA : LINE;
        variable BV_IN, BV_OUT : BIT_VECTOR ( 8 downto 0);
        variable VAR_IN, VAR_OUT :STD_LOGIC_VECTOR ( 8 downto 0);
    begin
        tb_rst <= '1';
        wait for 20 ns;
        tb_rst <= '0';
        while not ENDFILE(SIMDATA) loop
        
            -- read input and correct output value from file 
            readline(SIMDATA, L_SIMDATA);
            read(L_SIMDATA, BV_IN);
            read(L_SIMDATA, BV_OUT);
            VAR_IN := To_StdLogicVector(BV_IN);
            VAR_OUT := To_StdLogicVector(BV_OUT);
        
            tb_strobe_trig <= '0'; -- initialize strobe bit in output
                    
            -- start state
            tb_ps2_data <= '1';
            wait for 500 ns;
            tb_strobe_trig <= '1'; -- trigger strobe log
            
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
            
            assert tb_data = VAR_OUT
            report "Chyba vysledku, IN: " & integer'image(TO_INTEGER(UNSIGNED(VAR_IN)))  & " OUT: " & integer'image(TO_INTEGER(UNSIGNED(tb_data))) & " OCEKAVANO: " & integer'image(TO_INTEGER(UNSIGNED(VAR_OUT)))
            severity error;
        end loop;
    
        report "KONEC SIMULACE" severity failure;
    end process PS2_GEN;

end TB_KEYBOARD_BODY;
