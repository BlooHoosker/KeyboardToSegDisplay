-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Tue Dec  8 02:48:07 2020
-- Host        : LAPTOP-IIDKDF3B running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/Users/marti/OneDrive/CVUT/Semester5/PNO/Semestralka2_KeyboardToDisplay/Key2Disp/Key2Disp.sim/sim_1/synth/func/xsim/TB_DISPLAY_func_synth.vhd
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
  signal \PRESCALER_reg_n_0_[0]\ : STD_LOGIC;
  signal \PRESCALER_reg_n_0_[1]\ : STD_LOGIC;
  signal RESET_IBUF : STD_LOGIC;
  signal SEGMENT_OBUF : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal SEL : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal STROBE_IBUF : STD_LOGIC;
  signal \VALUES[30]_i_1_n_0\ : STD_LOGIC;
  signal \VALUES[30]_i_2_n_0\ : STD_LOGIC;
  signal \VALUES_reg_n_0_[0]\ : STD_LOGIC;
  signal \VALUES_reg_n_0_[10]\ : STD_LOGIC;
  signal \VALUES_reg_n_0_[11]\ : STD_LOGIC;
  signal \VALUES_reg_n_0_[12]\ : STD_LOGIC;
  signal \VALUES_reg_n_0_[13]\ : STD_LOGIC;
  signal \VALUES_reg_n_0_[14]\ : STD_LOGIC;
  signal \VALUES_reg_n_0_[16]\ : STD_LOGIC;
  signal \VALUES_reg_n_0_[17]\ : STD_LOGIC;
  signal \VALUES_reg_n_0_[18]\ : STD_LOGIC;
  signal \VALUES_reg_n_0_[19]\ : STD_LOGIC;
  signal \VALUES_reg_n_0_[1]\ : STD_LOGIC;
  signal \VALUES_reg_n_0_[20]\ : STD_LOGIC;
  signal \VALUES_reg_n_0_[21]\ : STD_LOGIC;
  signal \VALUES_reg_n_0_[22]\ : STD_LOGIC;
  signal \VALUES_reg_n_0_[24]\ : STD_LOGIC;
  signal \VALUES_reg_n_0_[25]\ : STD_LOGIC;
  signal \VALUES_reg_n_0_[26]\ : STD_LOGIC;
  signal \VALUES_reg_n_0_[27]\ : STD_LOGIC;
  signal \VALUES_reg_n_0_[28]\ : STD_LOGIC;
  signal \VALUES_reg_n_0_[29]\ : STD_LOGIC;
  signal \VALUES_reg_n_0_[2]\ : STD_LOGIC;
  signal \VALUES_reg_n_0_[30]\ : STD_LOGIC;
  signal \VALUES_reg_n_0_[3]\ : STD_LOGIC;
  signal \VALUES_reg_n_0_[4]\ : STD_LOGIC;
  signal \VALUES_reg_n_0_[5]\ : STD_LOGIC;
  signal \VALUES_reg_n_0_[6]\ : STD_LOGIC;
  signal \VALUES_reg_n_0_[8]\ : STD_LOGIC;
  signal \VALUES_reg_n_0_[9]\ : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \DIGIT_OBUF[0]_inst_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \DIGIT_OBUF[1]_inst_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \DIGIT_OBUF[2]_inst_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \DIGIT_OBUF[3]_inst_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \PRESCALER[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \PRESCALER[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \PRESCALER[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \PRESCALER[3]_i_1\ : label is "soft_lutpair0";
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
      I0 => SEL(0),
      I1 => SEL(1),
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
      I0 => SEL(0),
      I1 => SEL(1),
      O => DIGIT_OBUF(3)
    );
DP_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => '1',
      O => DP
    );
\PRESCALER[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \PRESCALER_reg_n_0_[0]\,
      O => plusOp(0)
    );
\PRESCALER[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \PRESCALER_reg_n_0_[1]\,
      I1 => \PRESCALER_reg_n_0_[0]\,
      O => plusOp(1)
    );
\PRESCALER[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => SEL(0),
      I1 => \PRESCALER_reg_n_0_[1]\,
      I2 => \PRESCALER_reg_n_0_[0]\,
      O => plusOp(2)
    );
\PRESCALER[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => SEL(1),
      I1 => \PRESCALER_reg_n_0_[1]\,
      I2 => \PRESCALER_reg_n_0_[0]\,
      I3 => SEL(0),
      O => plusOp(3)
    );
\PRESCALER_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => plusOp(0),
      Q => \PRESCALER_reg_n_0_[0]\,
      R => RESET_IBUF
    );
\PRESCALER_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => plusOp(1),
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
      D => plusOp(2),
      Q => SEL(0),
      R => RESET_IBUF
    );
\PRESCALER_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => plusOp(3),
      Q => SEL(1),
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
\SEGMENT_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \VALUES_reg_n_0_[24]\,
      I1 => \VALUES_reg_n_0_[16]\,
      I2 => SEL(1),
      I3 => \VALUES_reg_n_0_[8]\,
      I4 => SEL(0),
      I5 => \VALUES_reg_n_0_[0]\,
      O => SEGMENT_OBUF(0)
    );
\SEGMENT_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => SEGMENT_OBUF(1),
      O => SEGMENT(1)
    );
\SEGMENT_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \VALUES_reg_n_0_[25]\,
      I1 => \VALUES_reg_n_0_[17]\,
      I2 => SEL(1),
      I3 => \VALUES_reg_n_0_[9]\,
      I4 => SEL(0),
      I5 => \VALUES_reg_n_0_[1]\,
      O => SEGMENT_OBUF(1)
    );
\SEGMENT_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => SEGMENT_OBUF(2),
      O => SEGMENT(2)
    );
\SEGMENT_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \VALUES_reg_n_0_[26]\,
      I1 => \VALUES_reg_n_0_[18]\,
      I2 => SEL(1),
      I3 => \VALUES_reg_n_0_[10]\,
      I4 => SEL(0),
      I5 => \VALUES_reg_n_0_[2]\,
      O => SEGMENT_OBUF(2)
    );
\SEGMENT_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => SEGMENT_OBUF(3),
      O => SEGMENT(3)
    );
\SEGMENT_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \VALUES_reg_n_0_[27]\,
      I1 => \VALUES_reg_n_0_[19]\,
      I2 => SEL(1),
      I3 => \VALUES_reg_n_0_[11]\,
      I4 => SEL(0),
      I5 => \VALUES_reg_n_0_[3]\,
      O => SEGMENT_OBUF(3)
    );
\SEGMENT_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => SEGMENT_OBUF(4),
      O => SEGMENT(4)
    );
\SEGMENT_OBUF[4]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \VALUES_reg_n_0_[28]\,
      I1 => \VALUES_reg_n_0_[20]\,
      I2 => SEL(1),
      I3 => \VALUES_reg_n_0_[12]\,
      I4 => SEL(0),
      I5 => \VALUES_reg_n_0_[4]\,
      O => SEGMENT_OBUF(4)
    );
\SEGMENT_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => SEGMENT_OBUF(5),
      O => SEGMENT(5)
    );
\SEGMENT_OBUF[5]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \VALUES_reg_n_0_[29]\,
      I1 => \VALUES_reg_n_0_[21]\,
      I2 => SEL(1),
      I3 => \VALUES_reg_n_0_[13]\,
      I4 => SEL(0),
      I5 => \VALUES_reg_n_0_[5]\,
      O => SEGMENT_OBUF(5)
    );
\SEGMENT_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => SEGMENT_OBUF(6),
      O => SEGMENT(6)
    );
\SEGMENT_OBUF[6]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \VALUES_reg_n_0_[30]\,
      I1 => \VALUES_reg_n_0_[22]\,
      I2 => SEL(1),
      I3 => \VALUES_reg_n_0_[14]\,
      I4 => SEL(0),
      I5 => \VALUES_reg_n_0_[6]\,
      O => SEGMENT_OBUF(6)
    );
STROBE_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => STROBE,
      O => STROBE_IBUF
    );
\VALUES[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0400"
    )
        port map (
      I0 => DATA_IBUF(6),
      I1 => \VALUES[30]_i_2_n_0\,
      I2 => DATA_IBUF(7),
      I3 => STROBE_IBUF,
      I4 => RESET_IBUF,
      O => \VALUES[30]_i_1_n_0\
    );
\VALUES[30]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000040000"
    )
        port map (
      I0 => DATA_IBUF(5),
      I1 => DATA_IBUF(3),
      I2 => DATA_IBUF(2),
      I3 => DATA_IBUF(0),
      I4 => DATA_IBUF(1),
      I5 => DATA_IBUF(4),
      O => \VALUES[30]_i_2_n_0\
    );
\VALUES_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => STROBE_IBUF,
      D => \VALUES_reg_n_0_[8]\,
      Q => \VALUES_reg_n_0_[0]\,
      R => \VALUES[30]_i_1_n_0\
    );
\VALUES_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => STROBE_IBUF,
      D => \VALUES_reg_n_0_[18]\,
      Q => \VALUES_reg_n_0_[10]\,
      R => \VALUES[30]_i_1_n_0\
    );
\VALUES_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => STROBE_IBUF,
      D => \VALUES_reg_n_0_[19]\,
      Q => \VALUES_reg_n_0_[11]\,
      R => \VALUES[30]_i_1_n_0\
    );
\VALUES_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => STROBE_IBUF,
      D => \VALUES_reg_n_0_[20]\,
      Q => \VALUES_reg_n_0_[12]\,
      R => \VALUES[30]_i_1_n_0\
    );
\VALUES_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => STROBE_IBUF,
      D => \VALUES_reg_n_0_[21]\,
      Q => \VALUES_reg_n_0_[13]\,
      R => \VALUES[30]_i_1_n_0\
    );
\VALUES_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => STROBE_IBUF,
      D => \VALUES_reg_n_0_[22]\,
      Q => \VALUES_reg_n_0_[14]\,
      R => \VALUES[30]_i_1_n_0\
    );
\VALUES_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => STROBE_IBUF,
      D => \VALUES_reg_n_0_[24]\,
      Q => \VALUES_reg_n_0_[16]\,
      R => \VALUES[30]_i_1_n_0\
    );
\VALUES_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => STROBE_IBUF,
      D => \VALUES_reg_n_0_[25]\,
      Q => \VALUES_reg_n_0_[17]\,
      R => \VALUES[30]_i_1_n_0\
    );
\VALUES_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => STROBE_IBUF,
      D => \VALUES_reg_n_0_[26]\,
      Q => \VALUES_reg_n_0_[18]\,
      R => \VALUES[30]_i_1_n_0\
    );
\VALUES_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => STROBE_IBUF,
      D => \VALUES_reg_n_0_[27]\,
      Q => \VALUES_reg_n_0_[19]\,
      R => \VALUES[30]_i_1_n_0\
    );
\VALUES_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => STROBE_IBUF,
      D => \VALUES_reg_n_0_[9]\,
      Q => \VALUES_reg_n_0_[1]\,
      R => \VALUES[30]_i_1_n_0\
    );
\VALUES_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => STROBE_IBUF,
      D => \VALUES_reg_n_0_[28]\,
      Q => \VALUES_reg_n_0_[20]\,
      R => \VALUES[30]_i_1_n_0\
    );
\VALUES_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => STROBE_IBUF,
      D => \VALUES_reg_n_0_[29]\,
      Q => \VALUES_reg_n_0_[21]\,
      R => \VALUES[30]_i_1_n_0\
    );
\VALUES_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => STROBE_IBUF,
      D => \VALUES_reg_n_0_[30]\,
      Q => \VALUES_reg_n_0_[22]\,
      R => \VALUES[30]_i_1_n_0\
    );
\VALUES_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => STROBE_IBUF,
      D => DATA_IBUF(0),
      Q => \VALUES_reg_n_0_[24]\,
      R => \VALUES[30]_i_1_n_0\
    );
\VALUES_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => STROBE_IBUF,
      D => DATA_IBUF(1),
      Q => \VALUES_reg_n_0_[25]\,
      R => \VALUES[30]_i_1_n_0\
    );
\VALUES_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => STROBE_IBUF,
      D => DATA_IBUF(2),
      Q => \VALUES_reg_n_0_[26]\,
      R => \VALUES[30]_i_1_n_0\
    );
\VALUES_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => STROBE_IBUF,
      D => DATA_IBUF(3),
      Q => \VALUES_reg_n_0_[27]\,
      R => \VALUES[30]_i_1_n_0\
    );
\VALUES_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => STROBE_IBUF,
      D => DATA_IBUF(4),
      Q => \VALUES_reg_n_0_[28]\,
      R => \VALUES[30]_i_1_n_0\
    );
\VALUES_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => STROBE_IBUF,
      D => DATA_IBUF(5),
      Q => \VALUES_reg_n_0_[29]\,
      R => \VALUES[30]_i_1_n_0\
    );
\VALUES_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => STROBE_IBUF,
      D => \VALUES_reg_n_0_[10]\,
      Q => \VALUES_reg_n_0_[2]\,
      R => \VALUES[30]_i_1_n_0\
    );
\VALUES_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => STROBE_IBUF,
      D => DATA_IBUF(6),
      Q => \VALUES_reg_n_0_[30]\,
      R => \VALUES[30]_i_1_n_0\
    );
\VALUES_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => STROBE_IBUF,
      D => \VALUES_reg_n_0_[11]\,
      Q => \VALUES_reg_n_0_[3]\,
      R => \VALUES[30]_i_1_n_0\
    );
\VALUES_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => STROBE_IBUF,
      D => \VALUES_reg_n_0_[12]\,
      Q => \VALUES_reg_n_0_[4]\,
      R => \VALUES[30]_i_1_n_0\
    );
\VALUES_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => STROBE_IBUF,
      D => \VALUES_reg_n_0_[13]\,
      Q => \VALUES_reg_n_0_[5]\,
      R => \VALUES[30]_i_1_n_0\
    );
\VALUES_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => STROBE_IBUF,
      D => \VALUES_reg_n_0_[14]\,
      Q => \VALUES_reg_n_0_[6]\,
      R => \VALUES[30]_i_1_n_0\
    );
\VALUES_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => STROBE_IBUF,
      D => \VALUES_reg_n_0_[16]\,
      Q => \VALUES_reg_n_0_[8]\,
      R => \VALUES[30]_i_1_n_0\
    );
\VALUES_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => STROBE_IBUF,
      D => \VALUES_reg_n_0_[17]\,
      Q => \VALUES_reg_n_0_[9]\,
      R => \VALUES[30]_i_1_n_0\
    );
end STRUCTURE;
