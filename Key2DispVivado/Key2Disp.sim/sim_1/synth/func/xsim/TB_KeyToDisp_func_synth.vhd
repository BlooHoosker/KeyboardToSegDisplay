-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Tue Dec  8 02:57:39 2020
-- Host        : LAPTOP-IIDKDF3B running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/Users/marti/OneDrive/CVUT/Semester5/PNO/Semestralka2_KeyboardToDisplay/Key2Disp/Key2Disp.sim/sim_1/synth/func/xsim/TB_KeyToDisp_func_synth.vhd
-- Design      : Key2LED
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity DD_SYNC is
  port (
    ps2_clk_sync : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    PS2_CLOCK_IBUF : in STD_LOGIC;
    CLK_IBUF_BUFG : in STD_LOGIC;
    DATA_OUT_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    RESET_IBUF : in STD_LOGIC
  );
end DD_SYNC;

architecture STRUCTURE of DD_SYNC is
  signal D1_reg_n_0 : STD_LOGIC;
  signal D2_reg_n_0 : STD_LOGIC;
  signal \^ps2_clk_sync\ : STD_LOGIC;
begin
  ps2_clk_sync <= \^ps2_clk_sync\;
\COUNTER[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF80"
    )
        port map (
      I0 => \^ps2_clk_sync\,
      I1 => DATA_OUT_reg_0(0),
      I2 => \out\(0),
      I3 => RESET_IBUF,
      O => SR(0)
    );
D1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => PS2_CLOCK_IBUF,
      Q => D1_reg_n_0,
      R => '0'
    );
D2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D1_reg_n_0,
      Q => D2_reg_n_0,
      R => '0'
    );
DATA_OUT_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D2_reg_n_0,
      Q => \^ps2_clk_sync\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity DD_SYNC_0 is
  port (
    \data_reg_reg[8]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    PS2_DATA_IBUF : in STD_LOGIC;
    CLK_IBUF_BUFG : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of DD_SYNC_0 : entity is "DD_SYNC";
end DD_SYNC_0;

architecture STRUCTURE of DD_SYNC_0 is
  signal D1 : STD_LOGIC;
  signal D2 : STD_LOGIC;
begin
D1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => PS2_DATA_IBUF,
      Q => D1,
      R => '0'
    );
D2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D1,
      Q => D2,
      R => '0'
    );
DATA_OUT_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D2,
      Q => \data_reg_reg[8]\(0),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity DISPLAY is
  port (
    data_reg_reg_rep : out STD_LOGIC;
    DIGIT_OBUF : out STD_LOGIC_VECTOR ( 3 downto 0 );
    SEGMENT_OBUF : out STD_LOGIC_VECTOR ( 6 downto 0 );
    RESET_IBUF : in STD_LOGIC;
    ps2_clk_sync : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 6 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK_IBUF_BUFG : in STD_LOGIC
  );
end DISPLAY;

architecture STRUCTURE of DISPLAY is
  signal \PRESCALER_reg_n_0_[0]\ : STD_LOGIC;
  signal \PRESCALER_reg_n_0_[1]\ : STD_LOGIC;
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
  signal \SEGMENT_OBUF[6]_inst_i_4_n_0\ : STD_LOGIC;
  signal SEL : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \VALUES_reg_n_0_[0]\ : STD_LOGIC;
  signal \VALUES_reg_n_0_[1]\ : STD_LOGIC;
  signal \VALUES_reg_n_0_[2]\ : STD_LOGIC;
  signal \VALUES_reg_n_0_[3]\ : STD_LOGIC;
  signal \VALUES_reg_n_0_[4]\ : STD_LOGIC;
  signal \VALUES_reg_n_0_[5]\ : STD_LOGIC;
  signal \VALUES_reg_n_0_[6]\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal plusOp : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \sel__0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \DIGIT_OBUF[0]_inst_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \DIGIT_OBUF[1]_inst_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \DIGIT_OBUF[2]_inst_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \DIGIT_OBUF[3]_inst_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \PRESCALER[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \PRESCALER[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \PRESCALER[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \PRESCALER[3]_i_1\ : label is "soft_lutpair0";
begin
\DIGIT_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => SEL(0),
      I1 => SEL(1),
      O => DIGIT_OBUF(0)
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
\DIGIT_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => SEL(0),
      I1 => SEL(1),
      O => DIGIT_OBUF(2)
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
      I0 => \PRESCALER_reg_n_0_[0]\,
      I1 => \PRESCALER_reg_n_0_[1]\,
      O => plusOp(1)
    );
\PRESCALER[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \PRESCALER_reg_n_0_[1]\,
      I1 => \PRESCALER_reg_n_0_[0]\,
      I2 => SEL(0),
      O => plusOp(2)
    );
\PRESCALER[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \PRESCALER_reg_n_0_[0]\,
      I1 => \PRESCALER_reg_n_0_[1]\,
      I2 => SEL(0),
      I3 => SEL(1),
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
\SEGMENT_OBUF[0]_inst_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \SEGMENT_OBUF[0]_inst_i_2_n_0\,
      I1 => \SEGMENT_OBUF[0]_inst_i_3_n_0\,
      O => SEGMENT_OBUF(0),
      S => \sel__0\(5)
    );
\SEGMENT_OBUF[0]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E00D86800000000"
    )
        port map (
      I0 => \sel__0\(1),
      I1 => \sel__0\(0),
      I2 => \sel__0\(3),
      I3 => \sel__0\(2),
      I4 => \sel__0\(4),
      I5 => \sel__0\(6),
      O => \SEGMENT_OBUF[0]_inst_i_2_n_0\
    );
\SEGMENT_OBUF[0]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008202"
    )
        port map (
      I0 => \sel__0\(4),
      I1 => \sel__0\(2),
      I2 => \sel__0\(1),
      I3 => \sel__0\(0),
      I4 => \sel__0\(3),
      I5 => \sel__0\(6),
      O => \SEGMENT_OBUF[0]_inst_i_3_n_0\
    );
\SEGMENT_OBUF[1]_inst_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \SEGMENT_OBUF[1]_inst_i_2_n_0\,
      I1 => \SEGMENT_OBUF[1]_inst_i_3_n_0\,
      O => SEGMENT_OBUF(1),
      S => \sel__0\(5)
    );
\SEGMENT_OBUF[1]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F2A66121FFFFFFFF"
    )
        port map (
      I0 => \sel__0\(1),
      I1 => \sel__0\(0),
      I2 => \sel__0\(3),
      I3 => \sel__0\(2),
      I4 => \sel__0\(4),
      I5 => \sel__0\(6),
      O => \SEGMENT_OBUF[1]_inst_i_2_n_0\
    );
\SEGMENT_OBUF[1]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFDDDF7F5"
    )
        port map (
      I0 => \sel__0\(4),
      I1 => \sel__0\(3),
      I2 => \sel__0\(1),
      I3 => \sel__0\(0),
      I4 => \sel__0\(2),
      I5 => \sel__0\(6),
      O => \SEGMENT_OBUF[1]_inst_i_3_n_0\
    );
\SEGMENT_OBUF[2]_inst_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \SEGMENT_OBUF[2]_inst_i_2_n_0\,
      I1 => \SEGMENT_OBUF[2]_inst_i_3_n_0\,
      O => SEGMENT_OBUF(2),
      S => \sel__0\(5)
    );
\SEGMENT_OBUF[2]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ECA80001FFFFFFFF"
    )
        port map (
      I0 => \sel__0\(3),
      I1 => \sel__0\(0),
      I2 => \sel__0\(2),
      I3 => \sel__0\(1),
      I4 => \sel__0\(4),
      I5 => \sel__0\(6),
      O => \SEGMENT_OBUF[2]_inst_i_2_n_0\
    );
\SEGMENT_OBUF[2]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFDFFFD5"
    )
        port map (
      I0 => \sel__0\(4),
      I1 => \sel__0\(3),
      I2 => \sel__0\(1),
      I3 => \sel__0\(0),
      I4 => \sel__0\(2),
      I5 => \sel__0\(6),
      O => \SEGMENT_OBUF[2]_inst_i_3_n_0\
    );
\SEGMENT_OBUF[3]_inst_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \SEGMENT_OBUF[3]_inst_i_2_n_0\,
      I1 => \SEGMENT_OBUF[3]_inst_i_3_n_0\,
      O => SEGMENT_OBUF(3),
      S => \sel__0\(5)
    );
\SEGMENT_OBUF[3]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EB157919FFFFFFFF"
    )
        port map (
      I0 => \sel__0\(2),
      I1 => \sel__0\(1),
      I2 => \sel__0\(0),
      I3 => \sel__0\(3),
      I4 => \sel__0\(4),
      I5 => \sel__0\(6),
      O => \SEGMENT_OBUF[3]_inst_i_2_n_0\
    );
\SEGMENT_OBUF[3]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFDDFD7D5"
    )
        port map (
      I0 => \sel__0\(4),
      I1 => \sel__0\(3),
      I2 => \sel__0\(1),
      I3 => \sel__0\(0),
      I4 => \sel__0\(2),
      I5 => \sel__0\(6),
      O => \SEGMENT_OBUF[3]_inst_i_3_n_0\
    );
\SEGMENT_OBUF[4]_inst_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \SEGMENT_OBUF[4]_inst_i_2_n_0\,
      I1 => \SEGMENT_OBUF[4]_inst_i_3_n_0\,
      O => SEGMENT_OBUF(4),
      S => \sel__0\(5)
    );
\SEGMENT_OBUF[4]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FA930669FFFFFFFF"
    )
        port map (
      I0 => \sel__0\(2),
      I1 => \sel__0\(0),
      I2 => \sel__0\(1),
      I3 => \sel__0\(3),
      I4 => \sel__0\(4),
      I5 => \sel__0\(6),
      O => \SEGMENT_OBUF[4]_inst_i_2_n_0\
    );
\SEGMENT_OBUF[4]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFDDDFDD55"
    )
        port map (
      I0 => \sel__0\(4),
      I1 => \sel__0\(3),
      I2 => \sel__0\(0),
      I3 => \sel__0\(2),
      I4 => \sel__0\(1),
      I5 => \sel__0\(6),
      O => \SEGMENT_OBUF[4]_inst_i_3_n_0\
    );
\SEGMENT_OBUF[5]_inst_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \SEGMENT_OBUF[5]_inst_i_2_n_0\,
      I1 => \SEGMENT_OBUF[5]_inst_i_3_n_0\,
      O => SEGMENT_OBUF(5),
      S => \sel__0\(5)
    );
\SEGMENT_OBUF[5]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F83A74EBFFFFFFFF"
    )
        port map (
      I0 => \sel__0\(1),
      I1 => \sel__0\(0),
      I2 => \sel__0\(2),
      I3 => \sel__0\(3),
      I4 => \sel__0\(4),
      I5 => \sel__0\(6),
      O => \SEGMENT_OBUF[5]_inst_i_2_n_0\
    );
\SEGMENT_OBUF[5]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFDFFDD5D5"
    )
        port map (
      I0 => \sel__0\(4),
      I1 => \sel__0\(3),
      I2 => \sel__0\(1),
      I3 => \sel__0\(0),
      I4 => \sel__0\(2),
      I5 => \sel__0\(6),
      O => \SEGMENT_OBUF[5]_inst_i_3_n_0\
    );
\SEGMENT_OBUF[6]_inst_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \SEGMENT_OBUF[6]_inst_i_3_n_0\,
      I1 => \SEGMENT_OBUF[6]_inst_i_4_n_0\,
      O => SEGMENT_OBUF(6),
      S => \sel__0\(5)
    );
\SEGMENT_OBUF[6]_inst_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCFA0CFAFC0A0C0"
    )
        port map (
      I0 => p_1_in(22),
      I1 => p_1_in(14),
      I2 => SEL(1),
      I3 => SEL(0),
      I4 => p_1_in(6),
      I5 => \VALUES_reg_n_0_[6]\,
      O => \sel__0\(6)
    );
\SEGMENT_OBUF[6]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCFA0CFAFC0A0C0"
    )
        port map (
      I0 => p_1_in(21),
      I1 => p_1_in(13),
      I2 => SEL(1),
      I3 => SEL(0),
      I4 => p_1_in(5),
      I5 => \VALUES_reg_n_0_[5]\,
      O => \sel__0\(5)
    );
\SEGMENT_OBUF[6]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBF45F15FFFFFFFF"
    )
        port map (
      I0 => \sel__0\(0),
      I1 => \sel__0\(1),
      I2 => \sel__0\(2),
      I3 => \sel__0\(3),
      I4 => \sel__0\(4),
      I5 => \sel__0\(6),
      O => \SEGMENT_OBUF[6]_inst_i_3_n_0\
    );
\SEGMENT_OBUF[6]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFDDDDD7F5"
    )
        port map (
      I0 => \sel__0\(4),
      I1 => \sel__0\(3),
      I2 => \sel__0\(2),
      I3 => \sel__0\(0),
      I4 => \sel__0\(1),
      I5 => \sel__0\(6),
      O => \SEGMENT_OBUF[6]_inst_i_4_n_0\
    );
\SEGMENT_OBUF[6]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCFA0CFAFC0A0C0"
    )
        port map (
      I0 => p_1_in(16),
      I1 => p_1_in(8),
      I2 => SEL(1),
      I3 => SEL(0),
      I4 => p_1_in(0),
      I5 => \VALUES_reg_n_0_[0]\,
      O => \sel__0\(0)
    );
\SEGMENT_OBUF[6]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCFA0CFAFC0A0C0"
    )
        port map (
      I0 => p_1_in(17),
      I1 => p_1_in(9),
      I2 => SEL(1),
      I3 => SEL(0),
      I4 => p_1_in(1),
      I5 => \VALUES_reg_n_0_[1]\,
      O => \sel__0\(1)
    );
\SEGMENT_OBUF[6]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCFA0CFAFC0A0C0"
    )
        port map (
      I0 => p_1_in(18),
      I1 => p_1_in(10),
      I2 => SEL(1),
      I3 => SEL(0),
      I4 => p_1_in(2),
      I5 => \VALUES_reg_n_0_[2]\,
      O => \sel__0\(2)
    );
\SEGMENT_OBUF[6]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCFA0CFAFC0A0C0"
    )
        port map (
      I0 => p_1_in(19),
      I1 => p_1_in(11),
      I2 => SEL(1),
      I3 => SEL(0),
      I4 => p_1_in(3),
      I5 => \VALUES_reg_n_0_[3]\,
      O => \sel__0\(3)
    );
\SEGMENT_OBUF[6]_inst_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCFA0CFAFC0A0C0"
    )
        port map (
      I0 => p_1_in(20),
      I1 => p_1_in(12),
      I2 => SEL(1),
      I3 => SEL(0),
      I4 => p_1_in(4),
      I5 => \VALUES_reg_n_0_[4]\,
      O => \sel__0\(4)
    );
\VALUES_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => E(0),
      D => p_1_in(0),
      Q => \VALUES_reg_n_0_[0]\,
      R => SR(0)
    );
\VALUES_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => E(0),
      D => p_1_in(10),
      Q => p_1_in(2),
      R => SR(0)
    );
\VALUES_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => E(0),
      D => p_1_in(11),
      Q => p_1_in(3),
      R => SR(0)
    );
\VALUES_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => E(0),
      D => p_1_in(12),
      Q => p_1_in(4),
      R => SR(0)
    );
\VALUES_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => E(0),
      D => p_1_in(13),
      Q => p_1_in(5),
      R => SR(0)
    );
\VALUES_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => E(0),
      D => p_1_in(14),
      Q => p_1_in(6),
      R => SR(0)
    );
\VALUES_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => E(0),
      D => p_1_in(16),
      Q => p_1_in(8),
      R => SR(0)
    );
\VALUES_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => E(0),
      D => p_1_in(17),
      Q => p_1_in(9),
      R => SR(0)
    );
\VALUES_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => E(0),
      D => p_1_in(18),
      Q => p_1_in(10),
      R => SR(0)
    );
\VALUES_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => E(0),
      D => p_1_in(19),
      Q => p_1_in(11),
      R => SR(0)
    );
\VALUES_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => E(0),
      D => p_1_in(1),
      Q => \VALUES_reg_n_0_[1]\,
      R => SR(0)
    );
\VALUES_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => E(0),
      D => p_1_in(20),
      Q => p_1_in(12),
      R => SR(0)
    );
\VALUES_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => E(0),
      D => p_1_in(21),
      Q => p_1_in(13),
      R => SR(0)
    );
\VALUES_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => E(0),
      D => p_1_in(22),
      Q => p_1_in(14),
      R => SR(0)
    );
\VALUES_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => E(0),
      D => D(0),
      Q => p_1_in(16),
      R => SR(0)
    );
\VALUES_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => E(0),
      D => D(1),
      Q => p_1_in(17),
      R => SR(0)
    );
\VALUES_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => E(0),
      D => D(2),
      Q => p_1_in(18),
      R => SR(0)
    );
\VALUES_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => E(0),
      D => D(3),
      Q => p_1_in(19),
      R => SR(0)
    );
\VALUES_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => E(0),
      D => D(4),
      Q => p_1_in(20),
      R => SR(0)
    );
\VALUES_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => E(0),
      D => D(5),
      Q => p_1_in(21),
      R => SR(0)
    );
\VALUES_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => E(0),
      D => p_1_in(2),
      Q => \VALUES_reg_n_0_[2]\,
      R => SR(0)
    );
\VALUES_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => E(0),
      D => D(6),
      Q => p_1_in(22),
      R => SR(0)
    );
\VALUES_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => E(0),
      D => p_1_in(3),
      Q => \VALUES_reg_n_0_[3]\,
      R => SR(0)
    );
\VALUES_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => E(0),
      D => p_1_in(4),
      Q => \VALUES_reg_n_0_[4]\,
      R => SR(0)
    );
\VALUES_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => E(0),
      D => p_1_in(5),
      Q => \VALUES_reg_n_0_[5]\,
      R => SR(0)
    );
\VALUES_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => E(0),
      D => p_1_in(6),
      Q => \VALUES_reg_n_0_[6]\,
      R => SR(0)
    );
\VALUES_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => E(0),
      D => p_1_in(8),
      Q => p_1_in(0),
      R => SR(0)
    );
\VALUES_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => E(0),
      D => p_1_in(9),
      Q => p_1_in(1),
      R => SR(0)
    );
data_reg_reg_rep_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => RESET_IBUF,
      I1 => ps2_clk_sync,
      I2 => \out\(0),
      O => data_reg_reg_rep
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity KEYBOARD_CONTROLLER is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    DATA_OUT_reg : in STD_LOGIC;
    ps2_data_sync : in STD_LOGIC;
    RESET_IBUF : in STD_LOGIC;
    CLK_IBUF_BUFG : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end KEYBOARD_CONTROLLER;

architecture STRUCTURE of KEYBOARD_CONTROLLER is
  signal COUNTER0 : STD_LOGIC;
  signal \COUNTER[1]_i_1_n_0\ : STD_LOGIC;
  signal \COUNTER[2]_i_1_n_0\ : STD_LOGIC;
  signal \COUNTER[3]_i_3_n_0\ : STD_LOGIC;
  signal \COUNTER_reg__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^d\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal DEC : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of DEC : signal is "yes";
  signal \FSM_onehot_CURRENT_STATE[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CURRENT_STATE[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CURRENT_STATE[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CURRENT_STATE[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CURRENT_STATE[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CURRENT_STATE[4]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CURRENT_STATE_reg_n_0_[0]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_CURRENT_STATE_reg_n_0_[0]\ : signal is "yes";
  signal \FSM_onehot_CURRENT_STATE_reg_n_0_[1]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_CURRENT_STATE_reg_n_0_[1]\ : signal is "yes";
  signal minusOp : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^out\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP of \^out\ : signal is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \COUNTER[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \COUNTER[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \COUNTER[3]_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \FSM_onehot_CURRENT_STATE[4]_i_2\ : label is "soft_lutpair4";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_CURRENT_STATE_reg[0]\ : label is "ps2fe:100000,strb:000100,ps2low:000010,ps2high:010000,stop:001000,reset:000001";
  attribute KEEP : string;
  attribute KEEP of \FSM_onehot_CURRENT_STATE_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_CURRENT_STATE_reg[1]\ : label is "ps2fe:100000,strb:000100,ps2low:000010,ps2high:010000,stop:001000,reset:000001";
  attribute KEEP of \FSM_onehot_CURRENT_STATE_reg[1]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_CURRENT_STATE_reg[2]\ : label is "ps2fe:100000,strb:000100,ps2low:000010,ps2high:010000,stop:001000,reset:000001";
  attribute KEEP of \FSM_onehot_CURRENT_STATE_reg[2]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_CURRENT_STATE_reg[3]\ : label is "ps2fe:100000,strb:000100,ps2low:000010,ps2high:010000,stop:001000,reset:000001";
  attribute KEEP of \FSM_onehot_CURRENT_STATE_reg[3]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_CURRENT_STATE_reg[4]\ : label is "ps2fe:100000,strb:000100,ps2low:000010,ps2high:010000,stop:001000,reset:000001";
  attribute KEEP of \FSM_onehot_CURRENT_STATE_reg[4]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_CURRENT_STATE_reg[5]\ : label is "ps2fe:100000,strb:000100,ps2low:000010,ps2high:010000,stop:001000,reset:000001";
  attribute KEEP of \FSM_onehot_CURRENT_STATE_reg[5]\ : label is "yes";
begin
  D(0) <= \^d\(0);
  \out\(2 downto 0) <= \^out\(2 downto 0);
\COUNTER[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \COUNTER_reg__0\(0),
      O => minusOp(0)
    );
\COUNTER[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \COUNTER_reg__0\(0),
      I1 => \COUNTER_reg__0\(1),
      O => \COUNTER[1]_i_1_n_0\
    );
\COUNTER[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => \COUNTER_reg__0\(1),
      I1 => \COUNTER_reg__0\(0),
      I2 => \COUNTER_reg__0\(2),
      O => \COUNTER[2]_i_1_n_0\
    );
\COUNTER[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \COUNTER_reg__0\(3),
      I1 => \COUNTER_reg__0\(1),
      I2 => \COUNTER_reg__0\(0),
      I3 => \COUNTER_reg__0\(2),
      I4 => DEC,
      O => COUNTER0
    );
\COUNTER[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE01"
    )
        port map (
      I0 => \COUNTER_reg__0\(2),
      I1 => \COUNTER_reg__0\(0),
      I2 => \COUNTER_reg__0\(1),
      I3 => \COUNTER_reg__0\(3),
      O => \COUNTER[3]_i_3_n_0\
    );
\COUNTER_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => COUNTER0,
      D => minusOp(0),
      Q => \COUNTER_reg__0\(0),
      S => SR(0)
    );
\COUNTER_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => COUNTER0,
      D => \COUNTER[1]_i_1_n_0\,
      Q => \COUNTER_reg__0\(1),
      R => SR(0)
    );
\COUNTER_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => COUNTER0,
      D => \COUNTER[2]_i_1_n_0\,
      Q => \COUNTER_reg__0\(2),
      R => SR(0)
    );
\COUNTER_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => COUNTER0,
      D => \COUNTER[3]_i_3_n_0\,
      Q => \COUNTER_reg__0\(3),
      S => SR(0)
    );
\FSM_onehot_CURRENT_STATE[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E8A8"
    )
        port map (
      I0 => \FSM_onehot_CURRENT_STATE_reg_n_0_[0]\,
      I1 => DATA_OUT_reg,
      I2 => ps2_data_sync,
      I3 => \^out\(1),
      O => \FSM_onehot_CURRENT_STATE[0]_i_1_n_0\
    );
\FSM_onehot_CURRENT_STATE[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAFFAEAEAE"
    )
        port map (
      I0 => DEC,
      I1 => \FSM_onehot_CURRENT_STATE_reg_n_0_[0]\,
      I2 => ps2_data_sync,
      I3 => \FSM_onehot_CURRENT_STATE[4]_i_2_n_0\,
      I4 => \FSM_onehot_CURRENT_STATE_reg_n_0_[1]\,
      I5 => DATA_OUT_reg,
      O => \FSM_onehot_CURRENT_STATE[1]_i_1_n_0\
    );
\FSM_onehot_CURRENT_STATE[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \FSM_onehot_CURRENT_STATE_reg_n_0_[1]\,
      I1 => \COUNTER_reg__0\(3),
      I2 => \COUNTER_reg__0\(1),
      I3 => \COUNTER_reg__0\(0),
      I4 => \COUNTER_reg__0\(2),
      O => \FSM_onehot_CURRENT_STATE[2]_i_1_n_0\
    );
\FSM_onehot_CURRENT_STATE[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF2A"
    )
        port map (
      I0 => \^out\(1),
      I1 => DATA_OUT_reg,
      I2 => ps2_data_sync,
      I3 => \^out\(0),
      O => \FSM_onehot_CURRENT_STATE[3]_i_1_n_0\
    );
\FSM_onehot_CURRENT_STATE[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F800"
    )
        port map (
      I0 => \FSM_onehot_CURRENT_STATE[4]_i_2_n_0\,
      I1 => \FSM_onehot_CURRENT_STATE_reg_n_0_[1]\,
      I2 => \^out\(2),
      I3 => DATA_OUT_reg,
      O => \FSM_onehot_CURRENT_STATE[4]_i_1_n_0\
    );
\FSM_onehot_CURRENT_STATE[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \COUNTER_reg__0\(2),
      I1 => \COUNTER_reg__0\(0),
      I2 => \COUNTER_reg__0\(1),
      I3 => \COUNTER_reg__0\(3),
      O => \FSM_onehot_CURRENT_STATE[4]_i_2_n_0\
    );
\FSM_onehot_CURRENT_STATE[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^out\(2),
      I1 => DATA_OUT_reg,
      O => \^d\(0)
    );
\FSM_onehot_CURRENT_STATE_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \FSM_onehot_CURRENT_STATE[0]_i_1_n_0\,
      Q => \FSM_onehot_CURRENT_STATE_reg_n_0_[0]\,
      S => RESET_IBUF
    );
\FSM_onehot_CURRENT_STATE_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \FSM_onehot_CURRENT_STATE[1]_i_1_n_0\,
      Q => \FSM_onehot_CURRENT_STATE_reg_n_0_[1]\,
      R => RESET_IBUF
    );
\FSM_onehot_CURRENT_STATE_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \FSM_onehot_CURRENT_STATE[2]_i_1_n_0\,
      Q => \^out\(0),
      R => RESET_IBUF
    );
\FSM_onehot_CURRENT_STATE_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \FSM_onehot_CURRENT_STATE[3]_i_1_n_0\,
      Q => \^out\(1),
      R => RESET_IBUF
    );
\FSM_onehot_CURRENT_STATE_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \FSM_onehot_CURRENT_STATE[4]_i_1_n_0\,
      Q => \^out\(2),
      R => RESET_IBUF
    );
\FSM_onehot_CURRENT_STATE_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \^d\(0),
      Q => DEC,
      R => RESET_IBUF
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity KEYBOARD_DP is
  port (
    D : out STD_LOGIC_VECTOR ( 6 downto 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    CLK_IBUF_BUFG : in STD_LOGIC;
    DATA_OUT_reg : in STD_LOGIC;
    RESET_IBUF : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_CURRENT_STATE_reg[4]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    DATA_OUT_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end KEYBOARD_DP;

architecture STRUCTURE of KEYBOARD_DP is
  signal \^d\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \VALUES[30]_i_3_n_0\ : STD_LOGIC;
  signal \VALUES[30]_i_4_n_0\ : STD_LOGIC;
  signal \VALUES[30]_i_5_n_0\ : STD_LOGIC;
  signal \data_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \data_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal data_reg_reg_rep_i_2_n_0 : STD_LOGIC;
  signal data_reg_reg_rep_i_3_n_0 : STD_LOGIC;
  signal data_reg_reg_rep_i_4_n_0 : STD_LOGIC;
  signal data_reg_reg_rep_i_5_n_0 : STD_LOGIC;
  signal data_reg_reg_rep_i_6_n_0 : STD_LOGIC;
  signal data_reg_reg_rep_i_7_n_0 : STD_LOGIC;
  signal data_reg_reg_rep_i_8_n_0 : STD_LOGIC;
  signal data_reg_reg_rep_i_9_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  signal p_3_in : STD_LOGIC;
  signal p_4_in : STD_LOGIC;
  signal p_5_in : STD_LOGIC;
  signal sel : STD_LOGIC_VECTOR ( 7 to 7 );
  signal NLW_data_reg_reg_rep_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 7 );
  signal NLW_data_reg_reg_rep_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_data_reg_reg_rep_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_data_reg_reg_rep_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of data_reg_reg_rep : label is "p0_d7";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of data_reg_reg_rep : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of data_reg_reg_rep : label is 1792;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of data_reg_reg_rep : label is "KEYBOARD_INST/KEYBOARD_DP_INST/data_reg";
  attribute bram_addr_begin : integer;
  attribute bram_addr_begin of data_reg_reg_rep : label is 0;
  attribute bram_addr_end : integer;
  attribute bram_addr_end of data_reg_reg_rep : label is 1023;
  attribute bram_slice_begin : integer;
  attribute bram_slice_begin of data_reg_reg_rep : label is 0;
  attribute bram_slice_end : integer;
  attribute bram_slice_end of data_reg_reg_rep : label is 6;
begin
  D(6 downto 0) <= \^d\(6 downto 0);
\VALUES[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2000"
    )
        port map (
      I0 => \VALUES[30]_i_3_n_0\,
      I1 => \^d\(0),
      I2 => \^d\(1),
      I3 => \VALUES[30]_i_4_n_0\,
      I4 => RESET_IBUF,
      O => SR(0)
    );
\VALUES[30]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \VALUES[30]_i_4_n_0\,
      I1 => \out\(0),
      O => E(0)
    );
\VALUES[30]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001000000000"
    )
        port map (
      I0 => \^d\(4),
      I1 => \^d\(5),
      I2 => \^d\(3),
      I3 => \^d\(2),
      I4 => \^d\(6),
      I5 => \out\(0),
      O => \VALUES[30]_i_3_n_0\
    );
\VALUES[30]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \VALUES[30]_i_5_n_0\,
      I1 => p_1_in,
      I2 => p_0_in,
      I3 => p_3_in,
      I4 => p_2_in,
      I5 => sel(7),
      O => \VALUES[30]_i_4_n_0\
    );
\VALUES[30]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => p_5_in,
      I1 => p_4_in,
      I2 => \data_reg_reg_n_0_[0]\,
      I3 => \data_reg_reg_n_0_[7]\,
      O => \VALUES[30]_i_5_n_0\
    );
\data_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \FSM_onehot_CURRENT_STATE_reg[4]\(0),
      D => p_0_in,
      Q => \data_reg_reg_n_0_[0]\,
      R => RESET_IBUF
    );
\data_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \FSM_onehot_CURRENT_STATE_reg[4]\(0),
      D => p_1_in,
      Q => p_0_in,
      R => RESET_IBUF
    );
\data_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \FSM_onehot_CURRENT_STATE_reg[4]\(0),
      D => p_2_in,
      Q => p_1_in,
      R => RESET_IBUF
    );
\data_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \FSM_onehot_CURRENT_STATE_reg[4]\(0),
      D => p_3_in,
      Q => p_2_in,
      R => RESET_IBUF
    );
\data_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \FSM_onehot_CURRENT_STATE_reg[4]\(0),
      D => p_4_in,
      Q => p_3_in,
      R => RESET_IBUF
    );
\data_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \FSM_onehot_CURRENT_STATE_reg[4]\(0),
      D => p_5_in,
      Q => p_4_in,
      R => RESET_IBUF
    );
\data_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \FSM_onehot_CURRENT_STATE_reg[4]\(0),
      D => \data_reg_reg_n_0_[7]\,
      Q => p_5_in,
      R => RESET_IBUF
    );
\data_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \FSM_onehot_CURRENT_STATE_reg[4]\(0),
      D => sel(7),
      Q => \data_reg_reg_n_0_[7]\,
      R => RESET_IBUF
    );
\data_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \FSM_onehot_CURRENT_STATE_reg[4]\(0),
      D => DATA_OUT_reg_0(0),
      Q => sel(7),
      R => RESET_IBUF
    );
data_reg_reg_rep: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"000A000A000A000A000A000A000A000A000A000A000A000A000A000A000A000A",
      INIT_01 => X"000A0032005700410053005A000A000A000A00310051000A000A000A000A000A",
      INIT_02 => X"000A003500520054004600560020000A000A003300340045004400580043000A",
      INIT_03 => X"000A003800370055004A004D000A000A000A00360059004700480042004E000A",
      INIT_04 => X"000A000A0050000A004C000A000A000A000A00390030004F0049004B000A000A",
      INIT_05 => X"000A000A000A000A000A000A000A000A000A000A000A000A000A000A000A000A",
      INIT_06 => X"000A000A000A000A000A000A000A000A000A000A000A000A000A000A000A000A",
      INIT_07 => X"000A000A000A000A000A000A000A000A000A000A000A000A000A000A000A000A",
      INIT_08 => X"000A000A000A000A000A000A000A000A000A000A000A000A000A000A000A000A",
      INIT_09 => X"000A000A000A000A000A000A000A000A000A000A000A000A000A000A000A000A",
      INIT_0A => X"000A000A000A000A000A000A000A000A000A000A000A000A000A000A000A000A",
      INIT_0B => X"000A000A000A000A000A000A000A000A000A000A000A000A000A000A000A000A",
      INIT_0C => X"000A000A000A000A000A000A000A000A000A000A000A000A000A000A000A000A",
      INIT_0D => X"000A000A000A000A000A000A000A000A000A000A000A000A000A000A000A000A",
      INIT_0E => X"000A000A000A000A000A000A000A000A000A000A000A000A000A000A000A000A",
      INIT_0F => X"000A000A000A000A000A000A000A000A000A000A000A000A000A000A000A000A",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"00000",
      INIT_B => X"00000",
      INIT_FILE => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(13 downto 12) => B"00",
      ADDRARDADDR(11) => data_reg_reg_rep_i_2_n_0,
      ADDRARDADDR(10) => data_reg_reg_rep_i_3_n_0,
      ADDRARDADDR(9) => data_reg_reg_rep_i_4_n_0,
      ADDRARDADDR(8) => data_reg_reg_rep_i_5_n_0,
      ADDRARDADDR(7) => data_reg_reg_rep_i_6_n_0,
      ADDRARDADDR(6) => data_reg_reg_rep_i_7_n_0,
      ADDRARDADDR(5) => data_reg_reg_rep_i_8_n_0,
      ADDRARDADDR(4) => data_reg_reg_rep_i_9_n_0,
      ADDRARDADDR(3 downto 0) => B"0000",
      ADDRBWRADDR(13 downto 0) => B"11111111111111",
      CLKARDCLK => CLK_IBUF_BUFG,
      CLKBWRCLK => '0',
      DIADI(15 downto 0) => B"0000000001111111",
      DIBDI(15 downto 0) => B"1111111111111111",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"11",
      DOADO(15 downto 7) => NLW_data_reg_reg_rep_DOADO_UNCONNECTED(15 downto 7),
      DOADO(6 downto 0) => \^d\(6 downto 0),
      DOBDO(15 downto 0) => NLW_data_reg_reg_rep_DOBDO_UNCONNECTED(15 downto 0),
      DOPADOP(1 downto 0) => NLW_data_reg_reg_rep_DOPADOP_UNCONNECTED(1 downto 0),
      DOPBDOP(1 downto 0) => NLW_data_reg_reg_rep_DOPBDOP_UNCONNECTED(1 downto 0),
      ENARDEN => DATA_OUT_reg,
      ENBWREN => '0',
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1 downto 0) => B"00",
      WEBWE(3 downto 0) => B"0000"
    );
data_reg_reg_rep_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sel(7),
      I1 => RESET_IBUF,
      O => data_reg_reg_rep_i_2_n_0
    );
data_reg_reg_rep_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \data_reg_reg_n_0_[7]\,
      I1 => RESET_IBUF,
      O => data_reg_reg_rep_i_3_n_0
    );
data_reg_reg_rep_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_5_in,
      I1 => RESET_IBUF,
      O => data_reg_reg_rep_i_4_n_0
    );
data_reg_reg_rep_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_4_in,
      I1 => RESET_IBUF,
      O => data_reg_reg_rep_i_5_n_0
    );
data_reg_reg_rep_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_3_in,
      I1 => RESET_IBUF,
      O => data_reg_reg_rep_i_6_n_0
    );
data_reg_reg_rep_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_2_in,
      I1 => RESET_IBUF,
      O => data_reg_reg_rep_i_7_n_0
    );
data_reg_reg_rep_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_1_in,
      I1 => RESET_IBUF,
      O => data_reg_reg_rep_i_8_n_0
    );
data_reg_reg_rep_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_0_in,
      I1 => RESET_IBUF,
      O => data_reg_reg_rep_i_9_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity KEYBOARD_UNIT is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 6 downto 0 );
    ps2_clk_sync : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    PS2_DATA_IBUF : in STD_LOGIC;
    CLK_IBUF_BUFG : in STD_LOGIC;
    DATA_OUT_reg : in STD_LOGIC;
    PS2_CLOCK_IBUF : in STD_LOGIC;
    RESET_IBUF : in STD_LOGIC
  );
end KEYBOARD_UNIT;

architecture STRUCTURE of KEYBOARD_UNIT is
  signal KB_UNIT_STROBE : STD_LOGIC;
  signal KEYBOARD_CONTROLLER_INST_n_1 : STD_LOGIC;
  signal KEYBOARD_CONTROLLER_INST_n_3 : STD_LOGIC;
  signal PS2_CLK_SYNC_INST_n_1 : STD_LOGIC;
  signal \^ps2_clk_sync\ : STD_LOGIC;
  signal ps2_data_sync : STD_LOGIC;
begin
  ps2_clk_sync <= \^ps2_clk_sync\;
KEYBOARD_CONTROLLER_INST: entity work.KEYBOARD_CONTROLLER
     port map (
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      D(0) => KEYBOARD_CONTROLLER_INST_n_3,
      DATA_OUT_reg => \^ps2_clk_sync\,
      RESET_IBUF => RESET_IBUF,
      SR(0) => PS2_CLK_SYNC_INST_n_1,
      \out\(2) => \out\(0),
      \out\(1) => KEYBOARD_CONTROLLER_INST_n_1,
      \out\(0) => KB_UNIT_STROBE,
      ps2_data_sync => ps2_data_sync
    );
KEYBOARD_DP_INST: entity work.KEYBOARD_DP
     port map (
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      D(6 downto 0) => D(6 downto 0),
      DATA_OUT_reg => DATA_OUT_reg,
      DATA_OUT_reg_0(0) => ps2_data_sync,
      E(0) => E(0),
      \FSM_onehot_CURRENT_STATE_reg[4]\(0) => KEYBOARD_CONTROLLER_INST_n_3,
      RESET_IBUF => RESET_IBUF,
      SR(0) => SR(0),
      \out\(0) => KB_UNIT_STROBE
    );
PS2_CLK_SYNC_INST: entity work.DD_SYNC
     port map (
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      DATA_OUT_reg_0(0) => ps2_data_sync,
      PS2_CLOCK_IBUF => PS2_CLOCK_IBUF,
      RESET_IBUF => RESET_IBUF,
      SR(0) => PS2_CLK_SYNC_INST_n_1,
      \out\(0) => KEYBOARD_CONTROLLER_INST_n_1,
      ps2_clk_sync => \^ps2_clk_sync\
    );
PS2_DATA_SYNC_INST: entity work.DD_SYNC_0
     port map (
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      PS2_DATA_IBUF => PS2_DATA_IBUF,
      \data_reg_reg[8]\(0) => ps2_data_sync
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Key2LED is
  port (
    PS2_DATA : in STD_LOGIC;
    PS2_CLOCK : in STD_LOGIC;
    CLK : in STD_LOGIC;
    RESET : in STD_LOGIC;
    SEGMENT : out STD_LOGIC_VECTOR ( 6 downto 0 );
    DP : out STD_LOGIC;
    DIGIT : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Key2LED : entity is true;
end Key2LED;

architecture STRUCTURE of Key2LED is
  signal CLK_IBUF : STD_LOGIC;
  signal CLK_IBUF_BUFG : STD_LOGIC;
  signal DIGIT_OBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal DISPLAY_INST_n_0 : STD_LOGIC;
  signal KEYBOARD_INST_n_0 : STD_LOGIC;
  signal KEYBOARD_INST_n_9 : STD_LOGIC;
  signal PS2_CLOCK_IBUF : STD_LOGIC;
  signal PS2_DATA_IBUF : STD_LOGIC;
  signal RESET_IBUF : STD_LOGIC;
  signal SEGMENT_OBUF : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal STROBE : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 30 downto 24 );
  signal ps2_clk_sync : STD_LOGIC;
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
\DIGIT_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DIGIT_OBUF(0),
      O => DIGIT(0)
    );
\DIGIT_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DIGIT_OBUF(1),
      O => DIGIT(1)
    );
\DIGIT_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DIGIT_OBUF(2),
      O => DIGIT(2)
    );
\DIGIT_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DIGIT_OBUF(3),
      O => DIGIT(3)
    );
DISPLAY_INST: entity work.DISPLAY
     port map (
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      D(6 downto 0) => p_1_in(30 downto 24),
      DIGIT_OBUF(3 downto 0) => DIGIT_OBUF(3 downto 0),
      E(0) => STROBE,
      RESET_IBUF => RESET_IBUF,
      SEGMENT_OBUF(6 downto 0) => SEGMENT_OBUF(6 downto 0),
      SR(0) => KEYBOARD_INST_n_9,
      data_reg_reg_rep => DISPLAY_INST_n_0,
      \out\(0) => KEYBOARD_INST_n_0,
      ps2_clk_sync => ps2_clk_sync
    );
DP_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => '1',
      O => DP
    );
KEYBOARD_INST: entity work.KEYBOARD_UNIT
     port map (
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      D(6 downto 0) => p_1_in(30 downto 24),
      DATA_OUT_reg => DISPLAY_INST_n_0,
      E(0) => STROBE,
      PS2_CLOCK_IBUF => PS2_CLOCK_IBUF,
      PS2_DATA_IBUF => PS2_DATA_IBUF,
      RESET_IBUF => RESET_IBUF,
      SR(0) => KEYBOARD_INST_n_9,
      \out\(0) => KEYBOARD_INST_n_0,
      ps2_clk_sync => ps2_clk_sync
    );
PS2_CLOCK_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => PS2_CLOCK,
      O => PS2_CLOCK_IBUF
    );
PS2_DATA_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => PS2_DATA,
      O => PS2_DATA_IBUF
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
\SEGMENT_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => SEGMENT_OBUF(1),
      O => SEGMENT(1)
    );
\SEGMENT_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => SEGMENT_OBUF(2),
      O => SEGMENT(2)
    );
\SEGMENT_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => SEGMENT_OBUF(3),
      O => SEGMENT(3)
    );
\SEGMENT_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => SEGMENT_OBUF(4),
      O => SEGMENT(4)
    );
\SEGMENT_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => SEGMENT_OBUF(5),
      O => SEGMENT(5)
    );
\SEGMENT_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => SEGMENT_OBUF(6),
      O => SEGMENT(6)
    );
end STRUCTURE;
