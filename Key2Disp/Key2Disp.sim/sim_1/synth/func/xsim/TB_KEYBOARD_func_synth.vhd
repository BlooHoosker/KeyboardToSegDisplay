-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Mon Nov 30 00:16:47 2020
-- Host        : LAPTOP-IIDKDF3B running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/Users/marti/OneDrive/CVUT/Semester5/PNO/GITLAB/Semestralka2_KeyboardToDisplay/Key2Disp/Key2Disp.sim/sim_1/synth/func/xsim/TB_KEYBOARD_func_synth.vhd
-- Design      : DISPLAY
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity DISPLAY is
  port (
    DATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    CLK : in STD_LOGIC;
    RESET : in STD_LOGIC;
    STROBE : in STD_LOGIC;
    SEGMENT : out STD_LOGIC_VECTOR ( 6 downto 0 );
    DP : out STD_LOGIC;
    DIGIT : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of DISPLAY : entity is true;
end DISPLAY;

architecture STRUCTURE of DISPLAY is
  signal CLK_IBUF : STD_LOGIC;
  signal CLK_IBUF_BUFG : STD_LOGIC;
  signal DATA_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal DIGIT_OBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \PRESCALER[0]_i_2_n_0\ : STD_LOGIC;
  signal \PRESCALER_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \PRESCALER_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \PRESCALER_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \PRESCALER_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \PRESCALER_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \PRESCALER_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \PRESCALER_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \PRESCALER_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \PRESCALER_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \PRESCALER_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \PRESCALER_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \PRESCALER_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \PRESCALER_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \PRESCALER_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \PRESCALER_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \PRESCALER_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \PRESCALER_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \PRESCALER_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \PRESCALER_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \PRESCALER_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \PRESCALER_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \PRESCALER_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \PRESCALER_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \PRESCALER_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \PRESCALER_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \PRESCALER_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \PRESCALER_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \PRESCALER_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \PRESCALER_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \PRESCALER_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \PRESCALER_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \PRESCALER_reg_n_0_[0]\ : STD_LOGIC;
  signal \PRESCALER_reg_n_0_[10]\ : STD_LOGIC;
  signal \PRESCALER_reg_n_0_[11]\ : STD_LOGIC;
  signal \PRESCALER_reg_n_0_[12]\ : STD_LOGIC;
  signal \PRESCALER_reg_n_0_[13]\ : STD_LOGIC;
  signal \PRESCALER_reg_n_0_[1]\ : STD_LOGIC;
  signal \PRESCALER_reg_n_0_[2]\ : STD_LOGIC;
  signal \PRESCALER_reg_n_0_[3]\ : STD_LOGIC;
  signal \PRESCALER_reg_n_0_[4]\ : STD_LOGIC;
  signal \PRESCALER_reg_n_0_[5]\ : STD_LOGIC;
  signal \PRESCALER_reg_n_0_[6]\ : STD_LOGIC;
  signal \PRESCALER_reg_n_0_[7]\ : STD_LOGIC;
  signal \PRESCALER_reg_n_0_[8]\ : STD_LOGIC;
  signal \PRESCALER_reg_n_0_[9]\ : STD_LOGIC;
  signal RESET_IBUF : STD_LOGIC;
  signal SEGMENT_OBUF : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \SEGMENT_OBUF[0]_inst_i_2_n_0\ : STD_LOGIC;
  signal \SEGMENT_OBUF[0]_inst_i_3_n_0\ : STD_LOGIC;
  signal \SEGMENT_OBUF[1]_inst_i_2_n_0\ : STD_LOGIC;
  signal \SEGMENT_OBUF[1]_inst_i_3_n_0\ : STD_LOGIC;
  signal \SEGMENT_OBUF[2]_inst_i_2_n_0\ : STD_LOGIC;
  signal \SEGMENT_OBUF[2]_inst_i_3_n_0\ : STD_LOGIC;
  signal \SEGMENT_OBUF[3]_inst_i_2_n_0\ : STD_LOGIC;
  signal \SEGMENT_OBUF[3]_inst_i_3_n_0\ : STD_LOGIC;
  signal \SEGMENT_OBUF[4]_inst_i_2_n_0\ : STD_LOGIC;
  signal \SEGMENT_OBUF[4]_inst_i_3_n_0\ : STD_LOGIC;
  signal \SEGMENT_OBUF[5]_inst_i_2_n_0\ : STD_LOGIC;
  signal \SEGMENT_OBUF[5]_inst_i_3_n_0\ : STD_LOGIC;
  signal \SEGMENT_OBUF[6]_inst_i_3_n_0\ : STD_LOGIC;
  signal \SEGMENT_OBUF[6]_inst_i_5_n_0\ : STD_LOGIC;
  signal SEL : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal STROBE_IBUF : STD_LOGIC;
  signal \VALUES[31]_i_1_n_0\ : STD_LOGIC;
  signal \VALUES[31]_i_2_n_0\ : STD_LOGIC;
  signal \VALUES_reg_n_0_[0]\ : STD_LOGIC;
  signal \VALUES_reg_n_0_[1]\ : STD_LOGIC;
  signal \VALUES_reg_n_0_[2]\ : STD_LOGIC;
  signal \VALUES_reg_n_0_[3]\ : STD_LOGIC;
  signal \VALUES_reg_n_0_[4]\ : STD_LOGIC;
  signal \VALUES_reg_n_0_[5]\ : STD_LOGIC;
  signal \VALUES_reg_n_0_[6]\ : STD_LOGIC;
  signal \VALUES_reg_n_0_[7]\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \^sel\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_PRESCALER_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \DIGIT_OBUF[0]_inst_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \DIGIT_OBUF[1]_inst_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \DIGIT_OBUF[2]_inst_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \DIGIT_OBUF[3]_inst_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \SEGMENT_OBUF[0]_inst_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \SEGMENT_OBUF[0]_inst_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \SEGMENT_OBUF[1]_inst_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \SEGMENT_OBUF[1]_inst_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \SEGMENT_OBUF[2]_inst_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \SEGMENT_OBUF[2]_inst_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \SEGMENT_OBUF[3]_inst_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \SEGMENT_OBUF[3]_inst_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \SEGMENT_OBUF[4]_inst_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \SEGMENT_OBUF[4]_inst_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \SEGMENT_OBUF[5]_inst_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \SEGMENT_OBUF[5]_inst_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \SEGMENT_OBUF[6]_inst_i_3\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \SEGMENT_OBUF[6]_inst_i_5\ : label is "soft_lutpair3";
begin
CLK_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => CLK_IBUF,
      O => CLK_IBUF_BUFG
    );
CLK_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => CLK,
      O => CLK_IBUF
    );
\DATA_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DATA(0),
      O => DATA_IBUF(0)
    );
\DATA_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DATA(1),
      O => DATA_IBUF(1)
    );
\DATA_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DATA(2),
      O => DATA_IBUF(2)
    );
\DATA_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DATA(3),
      O => DATA_IBUF(3)
    );
\DATA_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DATA(4),
      O => DATA_IBUF(4)
    );
\DATA_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DATA(5),
      O => DATA_IBUF(5)
    );
\DATA_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DATA(6),
      O => DATA_IBUF(6)
    );
\DATA_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DATA(7),
      O => DATA_IBUF(7)
    );
\DIGIT_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DIGIT_OBUF(0),
      O => DIGIT(0)
    );
\DIGIT_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => SEL(1),
      I1 => SEL(0),
      O => DIGIT_OBUF(0)
    );
\DIGIT_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DIGIT_OBUF(1),
      O => DIGIT(1)
    );
\DIGIT_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => SEL(1),
      I1 => SEL(0),
      O => DIGIT_OBUF(1)
    );
\DIGIT_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DIGIT_OBUF(2),
      O => DIGIT(2)
    );
\DIGIT_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => SEL(0),
      I1 => SEL(1),
      O => DIGIT_OBUF(2)
    );
\DIGIT_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DIGIT_OBUF(3),
      O => DIGIT(3)
    );
\DIGIT_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => SEL(1),
      I1 => SEL(0),
      O => DIGIT_OBUF(3)
    );
DP_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => '1',
      O => DP
    );
\PRESCALER[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \PRESCALER_reg_n_0_[0]\,
      O => \PRESCALER[0]_i_2_n_0\
    );
\PRESCALER_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \PRESCALER_reg[0]_i_1_n_7\,
      Q => \PRESCALER_reg_n_0_[0]\,
      R => RESET_IBUF
    );
\PRESCALER_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \PRESCALER_reg[0]_i_1_n_0\,
      CO(2) => \PRESCALER_reg[0]_i_1_n_1\,
      CO(1) => \PRESCALER_reg[0]_i_1_n_2\,
      CO(0) => \PRESCALER_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \PRESCALER_reg[0]_i_1_n_4\,
      O(2) => \PRESCALER_reg[0]_i_1_n_5\,
      O(1) => \PRESCALER_reg[0]_i_1_n_6\,
      O(0) => \PRESCALER_reg[0]_i_1_n_7\,
      S(3) => \PRESCALER_reg_n_0_[3]\,
      S(2) => \PRESCALER_reg_n_0_[2]\,
      S(1) => \PRESCALER_reg_n_0_[1]\,
      S(0) => \PRESCALER[0]_i_2_n_0\
    );
\PRESCALER_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \PRESCALER_reg[8]_i_1_n_5\,
      Q => \PRESCALER_reg_n_0_[10]\,
      R => RESET_IBUF
    );
\PRESCALER_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \PRESCALER_reg[8]_i_1_n_4\,
      Q => \PRESCALER_reg_n_0_[11]\,
      R => RESET_IBUF
    );
\PRESCALER_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \PRESCALER_reg[12]_i_1_n_7\,
      Q => \PRESCALER_reg_n_0_[12]\,
      R => RESET_IBUF
    );
\PRESCALER_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \PRESCALER_reg[8]_i_1_n_0\,
      CO(3) => \NLW_PRESCALER_reg[12]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \PRESCALER_reg[12]_i_1_n_1\,
      CO(1) => \PRESCALER_reg[12]_i_1_n_2\,
      CO(0) => \PRESCALER_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \PRESCALER_reg[12]_i_1_n_4\,
      O(2) => \PRESCALER_reg[12]_i_1_n_5\,
      O(1) => \PRESCALER_reg[12]_i_1_n_6\,
      O(0) => \PRESCALER_reg[12]_i_1_n_7\,
      S(3 downto 2) => SEL(1 downto 0),
      S(1) => \PRESCALER_reg_n_0_[13]\,
      S(0) => \PRESCALER_reg_n_0_[12]\
    );
\PRESCALER_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \PRESCALER_reg[12]_i_1_n_6\,
      Q => \PRESCALER_reg_n_0_[13]\,
      R => RESET_IBUF
    );
\PRESCALER_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \PRESCALER_reg[12]_i_1_n_5\,
      Q => SEL(0),
      R => RESET_IBUF
    );
\PRESCALER_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \PRESCALER_reg[12]_i_1_n_4\,
      Q => SEL(1),
      R => RESET_IBUF
    );
\PRESCALER_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \PRESCALER_reg[0]_i_1_n_6\,
      Q => \PRESCALER_reg_n_0_[1]\,
      R => RESET_IBUF
    );
\PRESCALER_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \PRESCALER_reg[0]_i_1_n_5\,
      Q => \PRESCALER_reg_n_0_[2]\,
      R => RESET_IBUF
    );
\PRESCALER_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \PRESCALER_reg[0]_i_1_n_4\,
      Q => \PRESCALER_reg_n_0_[3]\,
      R => RESET_IBUF
    );
\PRESCALER_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \PRESCALER_reg[4]_i_1_n_7\,
      Q => \PRESCALER_reg_n_0_[4]\,
      R => RESET_IBUF
    );
\PRESCALER_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \PRESCALER_reg[0]_i_1_n_0\,
      CO(3) => \PRESCALER_reg[4]_i_1_n_0\,
      CO(2) => \PRESCALER_reg[4]_i_1_n_1\,
      CO(1) => \PRESCALER_reg[4]_i_1_n_2\,
      CO(0) => \PRESCALER_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \PRESCALER_reg[4]_i_1_n_4\,
      O(2) => \PRESCALER_reg[4]_i_1_n_5\,
      O(1) => \PRESCALER_reg[4]_i_1_n_6\,
      O(0) => \PRESCALER_reg[4]_i_1_n_7\,
      S(3) => \PRESCALER_reg_n_0_[7]\,
      S(2) => \PRESCALER_reg_n_0_[6]\,
      S(1) => \PRESCALER_reg_n_0_[5]\,
      S(0) => \PRESCALER_reg_n_0_[4]\
    );
\PRESCALER_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \PRESCALER_reg[4]_i_1_n_6\,
      Q => \PRESCALER_reg_n_0_[5]\,
      R => RESET_IBUF
    );
\PRESCALER_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \PRESCALER_reg[4]_i_1_n_5\,
      Q => \PRESCALER_reg_n_0_[6]\,
      R => RESET_IBUF
    );
\PRESCALER_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \PRESCALER_reg[4]_i_1_n_4\,
      Q => \PRESCALER_reg_n_0_[7]\,
      R => RESET_IBUF
    );
\PRESCALER_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \PRESCALER_reg[8]_i_1_n_7\,
      Q => \PRESCALER_reg_n_0_[8]\,
      R => RESET_IBUF
    );
\PRESCALER_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \PRESCALER_reg[4]_i_1_n_0\,
      CO(3) => \PRESCALER_reg[8]_i_1_n_0\,
      CO(2) => \PRESCALER_reg[8]_i_1_n_1\,
      CO(1) => \PRESCALER_reg[8]_i_1_n_2\,
      CO(0) => \PRESCALER_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \PRESCALER_reg[8]_i_1_n_4\,
      O(2) => \PRESCALER_reg[8]_i_1_n_5\,
      O(1) => \PRESCALER_reg[8]_i_1_n_6\,
      O(0) => \PRESCALER_reg[8]_i_1_n_7\,
      S(3) => \PRESCALER_reg_n_0_[11]\,
      S(2) => \PRESCALER_reg_n_0_[10]\,
      S(1) => \PRESCALER_reg_n_0_[9]\,
      S(0) => \PRESCALER_reg_n_0_[8]\
    );
\PRESCALER_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \PRESCALER_reg[8]_i_1_n_6\,
      Q => \PRESCALER_reg_n_0_[9]\,
      R => RESET_IBUF
    );
RESET_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => RESET,
      O => RESET_IBUF
    );
\SEGMENT_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => SEGMENT_OBUF(0),
      O => SEGMENT(0)
    );
\SEGMENT_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFDAD"
    )
        port map (
      I0 => \^sel\(6),
      I1 => \SEGMENT_OBUF[0]_inst_i_2_n_0\,
      I2 => \^sel\(5),
      I3 => \SEGMENT_OBUF[0]_inst_i_3_n_0\,
      I4 => \^sel\(7),
      O => SEGMENT_OBUF(0)
    );
\SEGMENT_OBUF[0]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE94AC41"
    )
        port map (
      I0 => \^sel\(4),
      I1 => \^sel\(3),
      I2 => \^sel\(1),
      I3 => \^sel\(2),
      I4 => \^sel\(0),
      O => \SEGMENT_OBUF[0]_inst_i_2_n_0\
    );
\SEGMENT_OBUF[0]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EE91FFFF"
    )
        port map (
      I0 => \^sel\(2),
      I1 => \^sel\(1),
      I2 => \^sel\(0),
      I3 => \^sel\(3),
      I4 => \^sel\(4),
      O => \SEGMENT_OBUF[0]_inst_i_3_n_0\
    );
\SEGMENT_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => SEGMENT_OBUF(1),
      O => SEGMENT(1)
    );
\SEGMENT_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFDAD"
    )
        port map (
      I0 => \^sel\(6),
      I1 => \SEGMENT_OBUF[1]_inst_i_2_n_0\,
      I2 => \^sel\(5),
      I3 => \SEGMENT_OBUF[1]_inst_i_3_n_0\,
      I4 => \^sel\(7),
      O => SEGMENT_OBUF(1)
    );
\SEGMENT_OBUF[1]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0FAC285"
    )
        port map (
      I0 => \^sel\(4),
      I1 => \^sel\(2),
      I2 => \^sel\(3),
      I3 => \^sel\(0),
      I4 => \^sel\(1),
      O => \SEGMENT_OBUF[1]_inst_i_2_n_0\
    );
\SEGMENT_OBUF[1]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAD4FFFF"
    )
        port map (
      I0 => \^sel\(2),
      I1 => \^sel\(0),
      I2 => \^sel\(1),
      I3 => \^sel\(3),
      I4 => \^sel\(4),
      O => \SEGMENT_OBUF[1]_inst_i_3_n_0\
    );
\SEGMENT_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => SEGMENT_OBUF(2),
      O => SEGMENT(2)
    );
\SEGMENT_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFDAD"
    )
        port map (
      I0 => \^sel\(6),
      I1 => \SEGMENT_OBUF[2]_inst_i_2_n_0\,
      I2 => \^sel\(5),
      I3 => \SEGMENT_OBUF[2]_inst_i_3_n_0\,
      I4 => \^sel\(7),
      O => SEGMENT_OBUF(2)
    );
\SEGMENT_OBUF[2]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA08801"
    )
        port map (
      I0 => \^sel\(4),
      I1 => \^sel\(1),
      I2 => \^sel\(2),
      I3 => \^sel\(0),
      I4 => \^sel\(3),
      O => \SEGMENT_OBUF[2]_inst_i_2_n_0\
    );
\SEGMENT_OBUF[2]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FECEFFFF"
    )
        port map (
      I0 => \^sel\(2),
      I1 => \^sel\(0),
      I2 => \^sel\(1),
      I3 => \^sel\(3),
      I4 => \^sel\(4),
      O => \SEGMENT_OBUF[2]_inst_i_3_n_0\
    );
\SEGMENT_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => SEGMENT_OBUF(3),
      O => SEGMENT(3)
    );
\SEGMENT_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFDAD"
    )
        port map (
      I0 => \^sel\(6),
      I1 => \SEGMENT_OBUF[3]_inst_i_2_n_0\,
      I2 => \^sel\(5),
      I3 => \SEGMENT_OBUF[3]_inst_i_3_n_0\,
      I4 => \^sel\(7),
      O => SEGMENT_OBUF(3)
    );
\SEGMENT_OBUF[3]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8DC8C27F"
    )
        port map (
      I0 => \^sel\(4),
      I1 => \^sel\(3),
      I2 => \^sel\(0),
      I3 => \^sel\(1),
      I4 => \^sel\(2),
      O => \SEGMENT_OBUF[3]_inst_i_2_n_0\
    );
\SEGMENT_OBUF[3]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FA86FFFF"
    )
        port map (
      I0 => \^sel\(2),
      I1 => \^sel\(0),
      I2 => \^sel\(1),
      I3 => \^sel\(3),
      I4 => \^sel\(4),
      O => \SEGMENT_OBUF[3]_inst_i_3_n_0\
    );
\SEGMENT_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => SEGMENT_OBUF(4),
      O => SEGMENT(4)
    );
\SEGMENT_OBUF[4]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFDAD"
    )
        port map (
      I0 => \^sel\(6),
      I1 => \SEGMENT_OBUF[4]_inst_i_2_n_0\,
      I2 => \^sel\(5),
      I3 => \SEGMENT_OBUF[4]_inst_i_3_n_0\,
      I4 => \^sel\(7),
      O => SEGMENT_OBUF(4)
    );
\SEGMENT_OBUF[4]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A99E94A3"
    )
        port map (
      I0 => \^sel\(4),
      I1 => \^sel\(3),
      I2 => \^sel\(1),
      I3 => \^sel\(0),
      I4 => \^sel\(2),
      O => \SEGMENT_OBUF[4]_inst_i_2_n_0\
    );
\SEGMENT_OBUF[4]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EE02FFFF"
    )
        port map (
      I0 => \^sel\(1),
      I1 => \^sel\(2),
      I2 => \^sel\(0),
      I3 => \^sel\(3),
      I4 => \^sel\(4),
      O => \SEGMENT_OBUF[4]_inst_i_3_n_0\
    );
\SEGMENT_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => SEGMENT_OBUF(5),
      O => SEGMENT(5)
    );
\SEGMENT_OBUF[5]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFDAD"
    )
        port map (
      I0 => \^sel\(6),
      I1 => \SEGMENT_OBUF[5]_inst_i_2_n_0\,
      I2 => \^sel\(5),
      I3 => \SEGMENT_OBUF[5]_inst_i_3_n_0\,
      I4 => \^sel\(7),
      O => SEGMENT_OBUF(5)
    );
\SEGMENT_OBUF[5]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9BF3D4E1"
    )
        port map (
      I0 => \^sel\(4),
      I1 => \^sel\(3),
      I2 => \^sel\(2),
      I3 => \^sel\(0),
      I4 => \^sel\(1),
      O => \SEGMENT_OBUF[5]_inst_i_2_n_0\
    );
\SEGMENT_OBUF[5]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FA28FFFF"
    )
        port map (
      I0 => \^sel\(2),
      I1 => \^sel\(0),
      I2 => \^sel\(1),
      I3 => \^sel\(3),
      I4 => \^sel\(4),
      O => \SEGMENT_OBUF[5]_inst_i_3_n_0\
    );
\SEGMENT_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => SEGMENT_OBUF(6),
      O => SEGMENT(6)
    );
\SEGMENT_OBUF[6]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFDAD"
    )
        port map (
      I0 => \^sel\(6),
      I1 => \SEGMENT_OBUF[6]_inst_i_3_n_0\,
      I2 => \^sel\(5),
      I3 => \SEGMENT_OBUF[6]_inst_i_5_n_0\,
      I4 => \^sel\(7),
      O => SEGMENT_OBUF(6)
    );
\SEGMENT_OBUF[6]_inst_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => p_1_in(1),
      I1 => \VALUES_reg_n_0_[1]\,
      I2 => p_1_in(17),
      I3 => SEL(0),
      I4 => SEL(1),
      I5 => p_1_in(9),
      O => \^sel\(1)
    );
\SEGMENT_OBUF[6]_inst_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => p_1_in(0),
      I1 => \VALUES_reg_n_0_[0]\,
      I2 => p_1_in(16),
      I3 => SEL(0),
      I4 => SEL(1),
      I5 => p_1_in(8),
      O => \^sel\(0)
    );
\SEGMENT_OBUF[6]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => p_1_in(6),
      I1 => \VALUES_reg_n_0_[6]\,
      I2 => p_1_in(22),
      I3 => SEL(0),
      I4 => SEL(1),
      I5 => p_1_in(14),
      O => \^sel\(6)
    );
\SEGMENT_OBUF[6]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACACE7FD"
    )
        port map (
      I0 => \^sel\(4),
      I1 => \^sel\(3),
      I2 => \^sel\(2),
      I3 => \^sel\(1),
      I4 => \^sel\(0),
      O => \SEGMENT_OBUF[6]_inst_i_3_n_0\
    );
\SEGMENT_OBUF[6]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => p_1_in(5),
      I1 => \VALUES_reg_n_0_[5]\,
      I2 => p_1_in(21),
      I3 => SEL(0),
      I4 => SEL(1),
      I5 => p_1_in(13),
      O => \^sel\(5)
    );
\SEGMENT_OBUF[6]_inst_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FA14FFFF"
    )
        port map (
      I0 => \^sel\(1),
      I1 => \^sel\(0),
      I2 => \^sel\(2),
      I3 => \^sel\(3),
      I4 => \^sel\(4),
      O => \SEGMENT_OBUF[6]_inst_i_5_n_0\
    );
\SEGMENT_OBUF[6]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => p_1_in(7),
      I1 => \VALUES_reg_n_0_[7]\,
      I2 => p_1_in(23),
      I3 => SEL(0),
      I4 => SEL(1),
      I5 => p_1_in(15),
      O => \^sel\(7)
    );
\SEGMENT_OBUF[6]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => p_1_in(4),
      I1 => \VALUES_reg_n_0_[4]\,
      I2 => p_1_in(20),
      I3 => SEL(0),
      I4 => SEL(1),
      I5 => p_1_in(12),
      O => \^sel\(4)
    );
\SEGMENT_OBUF[6]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => p_1_in(3),
      I1 => \VALUES_reg_n_0_[3]\,
      I2 => p_1_in(19),
      I3 => SEL(0),
      I4 => SEL(1),
      I5 => p_1_in(11),
      O => \^sel\(3)
    );
\SEGMENT_OBUF[6]_inst_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => p_1_in(2),
      I1 => \VALUES_reg_n_0_[2]\,
      I2 => p_1_in(18),
      I3 => SEL(0),
      I4 => SEL(1),
      I5 => p_1_in(10),
      O => \^sel\(2)
    );
STROBE_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => STROBE,
      O => STROBE_IBUF
    );
\VALUES[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAAB"
    )
        port map (
      I0 => RESET_IBUF,
      I1 => \VALUES[31]_i_2_n_0\,
      I2 => DATA_IBUF(7),
      I3 => DATA_IBUF(6),
      I4 => DATA_IBUF(4),
      I5 => DATA_IBUF(5),
      O => \VALUES[31]_i_1_n_0\
    );
\VALUES[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => DATA_IBUF(2),
      I1 => DATA_IBUF(0),
      I2 => DATA_IBUF(1),
      I3 => DATA_IBUF(3),
      O => \VALUES[31]_i_2_n_0\
    );
\VALUES_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => STROBE_IBUF,
      D => p_1_in(0),
      Q => \VALUES_reg_n_0_[0]\,
      R => \VALUES[31]_i_1_n_0\
    );
\VALUES_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => STROBE_IBUF,
      D => p_1_in(10),
      Q => p_1_in(2),
      R => \VALUES[31]_i_1_n_0\
    );
\VALUES_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => STROBE_IBUF,
      D => p_1_in(11),
      Q => p_1_in(3),
      R => \VALUES[31]_i_1_n_0\
    );
\VALUES_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => STROBE_IBUF,
      D => p_1_in(12),
      Q => p_1_in(4),
      R => \VALUES[31]_i_1_n_0\
    );
\VALUES_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => STROBE_IBUF,
      D => p_1_in(13),
      Q => p_1_in(5),
      R => \VALUES[31]_i_1_n_0\
    );
\VALUES_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => STROBE_IBUF,
      D => p_1_in(14),
      Q => p_1_in(6),
      R => \VALUES[31]_i_1_n_0\
    );
\VALUES_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => STROBE_IBUF,
      D => p_1_in(15),
      Q => p_1_in(7),
      R => \VALUES[31]_i_1_n_0\
    );
\VALUES_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => STROBE_IBUF,
      D => p_1_in(16),
      Q => p_1_in(8),
      R => \VALUES[31]_i_1_n_0\
    );
\VALUES_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => STROBE_IBUF,
      D => p_1_in(17),
      Q => p_1_in(9),
      R => \VALUES[31]_i_1_n_0\
    );
\VALUES_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => STROBE_IBUF,
      D => p_1_in(18),
      Q => p_1_in(10),
      R => \VALUES[31]_i_1_n_0\
    );
\VALUES_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => STROBE_IBUF,
      D => p_1_in(19),
      Q => p_1_in(11),
      R => \VALUES[31]_i_1_n_0\
    );
\VALUES_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => STROBE_IBUF,
      D => p_1_in(1),
      Q => \VALUES_reg_n_0_[1]\,
      R => \VALUES[31]_i_1_n_0\
    );
\VALUES_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => STROBE_IBUF,
      D => p_1_in(20),
      Q => p_1_in(12),
      R => \VALUES[31]_i_1_n_0\
    );
\VALUES_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => STROBE_IBUF,
      D => p_1_in(21),
      Q => p_1_in(13),
      R => \VALUES[31]_i_1_n_0\
    );
\VALUES_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => STROBE_IBUF,
      D => p_1_in(22),
      Q => p_1_in(14),
      R => \VALUES[31]_i_1_n_0\
    );
\VALUES_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => STROBE_IBUF,
      D => p_1_in(23),
      Q => p_1_in(15),
      R => \VALUES[31]_i_1_n_0\
    );
\VALUES_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => STROBE_IBUF,
      D => DATA_IBUF(0),
      Q => p_1_in(16),
      R => \VALUES[31]_i_1_n_0\
    );
\VALUES_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => STROBE_IBUF,
      D => DATA_IBUF(1),
      Q => p_1_in(17),
      R => \VALUES[31]_i_1_n_0\
    );
\VALUES_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => STROBE_IBUF,
      D => DATA_IBUF(2),
      Q => p_1_in(18),
      R => \VALUES[31]_i_1_n_0\
    );
\VALUES_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => STROBE_IBUF,
      D => DATA_IBUF(3),
      Q => p_1_in(19),
      R => \VALUES[31]_i_1_n_0\
    );
\VALUES_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => STROBE_IBUF,
      D => DATA_IBUF(4),
      Q => p_1_in(20),
      R => \VALUES[31]_i_1_n_0\
    );
\VALUES_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => STROBE_IBUF,
      D => DATA_IBUF(5),
      Q => p_1_in(21),
      R => \VALUES[31]_i_1_n_0\
    );
\VALUES_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => STROBE_IBUF,
      D => p_1_in(2),
      Q => \VALUES_reg_n_0_[2]\,
      R => \VALUES[31]_i_1_n_0\
    );
\VALUES_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => STROBE_IBUF,
      D => DATA_IBUF(6),
      Q => p_1_in(22),
      R => \VALUES[31]_i_1_n_0\
    );
\VALUES_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => STROBE_IBUF,
      D => DATA_IBUF(7),
      Q => p_1_in(23),
      R => \VALUES[31]_i_1_n_0\
    );
\VALUES_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => STROBE_IBUF,
      D => p_1_in(3),
      Q => \VALUES_reg_n_0_[3]\,
      R => \VALUES[31]_i_1_n_0\
    );
\VALUES_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => STROBE_IBUF,
      D => p_1_in(4),
      Q => \VALUES_reg_n_0_[4]\,
      R => \VALUES[31]_i_1_n_0\
    );
\VALUES_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => STROBE_IBUF,
      D => p_1_in(5),
      Q => \VALUES_reg_n_0_[5]\,
      R => \VALUES[31]_i_1_n_0\
    );
\VALUES_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => STROBE_IBUF,
      D => p_1_in(6),
      Q => \VALUES_reg_n_0_[6]\,
      R => \VALUES[31]_i_1_n_0\
    );
\VALUES_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => STROBE_IBUF,
      D => p_1_in(7),
      Q => \VALUES_reg_n_0_[7]\,
      R => \VALUES[31]_i_1_n_0\
    );
\VALUES_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => STROBE_IBUF,
      D => p_1_in(8),
      Q => p_1_in(0),
      R => \VALUES[31]_i_1_n_0\
    );
\VALUES_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => STROBE_IBUF,
      D => p_1_in(9),
      Q => p_1_in(1),
      R => \VALUES[31]_i_1_n_0\
    );
end STRUCTURE;
