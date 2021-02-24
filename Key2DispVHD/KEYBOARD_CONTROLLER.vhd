----------------------------------------------------------------------------------
-- Company: BI-PNO FIT CVUT
-- Engineer: MARTIN STAHL
-- Project Name: KEY2SEG
-- Target Devices: BASYS 3
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

-- Controller part of keyboard unit
entity KEYBOARD_CONTROLLER is
  Port (    
        PS2_CLK : in std_logic;
        PS2_DATA: in std_logic;
        RST     : in std_logic;
        CLK     : in std_logic;
        FZERO   : in std_logic;
        LD_BIT  : out std_logic;
        STROBE  : out std_logic
        );
end KEYBOARD_CONTROLLER;

architecture KEYBOARD_CONTROLLER_BODY of KEYBOARD_CONTROLLER is

    -- Signals and states for FSM that controls transfer sequence of PS2
    type TSTATE_LOAD is (RESET, PS2HIGH, PS2LOW, PS2FE, STRB, STOP);
    signal CURRENT_STATE    : TSTATE_LOAD;
    signal NEXT_STATE       : TSTATE_LOAD;
    signal COUNTER          : std_logic_vector(3 downto 0);
    signal DEC              : std_logic;
    signal ZERO             : std_logic;
    signal RST_COUNTER      : std_logic;
    
    -- Signals and states for FSM that controls skipping release if F0 is detected
    type TSTATE_STROBE is (PRESS, FO);
    signal CURRENT_STATE_STROBE : TSTATE_STROBE;
    signal NEXT_STATE_STROBE    : TSTATE_STROBE;
    signal STOP_SIG             : std_logic;
     
begin

    -- With each clock loads next state, identical for both FSMs
    STATES_PROC: process(CLK)
    begin
        if CLK = '1' and CLK'event then
            if RST = '1' then 
                CURRENT_STATE <= RESET;
                CURRENT_STATE_STROBE <= PRESS;
            else
                CURRENT_STATE <= NEXT_STATE;
                CURRENT_STATE_STROBE <= NEXT_STATE_STROBE;
            end if;
        end if;
    end process STATES_PROC;
    
    -- FSM for PS2 transfer sequence
    -- Combination logic setting the upcoming state in FSM 
    NEXT_STATE_PROC: process(CURRENT_STATE, PS2_CLK, PS2_DATA, ZERO)
    begin
        case CURRENT_STATE is
            when RESET => 
                if PS2_CLK = '0' and PS2_DATA = '0' then
                   NEXT_STATE <= PS2LOW; 
                else
                   NEXT_STATE <= RESET;
                end if;
            when PS2HIGH =>
                if PS2_CLK = '0' then
                   NEXT_STATE <= PS2FE; 
                else
                   NEXT_STATE <= PS2HIGH;
                end if;
            when PS2LOW => 
                if ZERO = '1' then
                    NEXT_STATE <= STRB; 
                else 
                    if PS2_CLK = '1' then
                       NEXT_STATE <= PS2HIGH; 
                    else
                       NEXT_STATE <= PS2LOW;
                    end if;
                end if;
            when PS2FE => 
                NEXT_STATE <= PS2LOW;
            when STRB => 
                NEXT_STATE <= STOP;
            when STOP => 
                if PS2_CLK = '1' and PS2_DATA = '1' then
                   NEXT_STATE <= RESET; 
                else
                   NEXT_STATE <= STOP;
                end if;
        end case;
    end process NEXT_STATE_PROC;
    
    -- FSM for PS2 transfer sequence
    -- Comb logic for control signals , mealy type
    CONTROL_SIGNALS_PROC: process(CURRENT_STATE, PS2_CLK, PS2_DATA)
    begin
    
        LD_BIT <= '0';
        STOP_SIG <= '0';
        RST_COUNTER <= '0';
        DEC <= '0';
        
        case CURRENT_STATE is
            when RESET => NULL;
            when PS2HIGH =>
                if PS2_CLK = '0' then
                   LD_BIT <= '1'; -- PSCLK was high now is low indicating falling edge, LD_BIT set
                end if;
            when PS2LOW => NULL;
            when PS2FE => 
                DEC <= '1'; -- decrement counter for bits
            when STRB => NULL;
            when STOP =>
                if PS2_CLK = '1' and PS2_DATA = '1' then
                    RST_COUNTER <= '1'; -- reseting bit counter
                    STOP_SIG <= '1';
                end if;
        end case;
    end process;
    
    -- For PS2 FSM    
    -- Reset value for bit counter is 9 (9 bits), if DEC is set decrements it
    COUNTER_PROC: process (CLK)
    begin
        if CLK = '1' and CLK'event then
            if RST = '1' or RST_COUNTER = '1' then 
                COUNTER <= "1001";
            else
                if DEC = '1' and COUNTER /= "0000" then
                    COUNTER <= std_logic_vector(unsigned(COUNTER) - 1);
                end if;
            end if;
        end if;
    end process;
    
    -- For PS2 FSM  
    -- If counter is zero, zero signal is set
    ZERO_PROC: process (COUNTER)
    begin
        if COUNTER = "0000" then
            ZERO <= '1';
        else
            ZERO <= '0';
        end if;
    end process;
    
    -- FSM for skipping next two codes if F0 code is detected
    -- Combination logic setting the upcoming state in FSM as well as the STROBE signal;
    NEXT_STATE_STROBE_PROC: process(CURRENT_STATE_STROBE, FZERO, STOP_SIG)
    begin
    
        STROBE <= '0';    
        
        case CURRENT_STATE_STROBE is
           when PRESS => 
                if STOP_SIG = '1' and FZERO = '1' then
                    NEXT_STATE_STROBE <= FO;
                elsif STOP_SIG = '1' and FZERO = '0' then
                    STROBE <= '1';
                    NEXT_STATE_STROBE <= PRESS;
                else 
                    NEXT_STATE_STROBE <= PRESS;
                end if;
           when FO =>  
                if STOP_SIG = '1' then
                    NEXT_STATE_STROBE <= PRESS;
                else 
                    NEXT_STATE_STROBE <= FO;
                end if;
        end case;
    end process;

end KEYBOARD_CONTROLLER_BODY;
