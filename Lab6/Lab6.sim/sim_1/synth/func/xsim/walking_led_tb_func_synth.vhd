-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Mon Feb 23 23:16:14 2026
-- Host        : AIDANALEXAN6AEF running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/Mac/Home/Documents/GitHub/EEEE4123/Lab6/Lab6.sim/sim_1/synth/func/xsim/walking_led_tb_func_synth.vhd
-- Design      : walking_led
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a15tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity debouncing is
  port (
    debounce_out : out STD_LOGIC;
    button_IBUF : in STD_LOGIC;
    clk_IBUF_BUFG : in STD_LOGIC;
    AS : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end debouncing;

architecture STRUCTURE of debouncing is
  signal \FSM_sequential_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_2_n_0\ : STD_LOGIC;
  signal cnt : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[5]_i_2_n_0\ : STD_LOGIC;
  signal \cnt[6]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[7]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[7]_i_2_n_0\ : STD_LOGIC;
  signal cnt_n : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^debounce_out\ : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "wait0:01,wait1:11,zero:00,one:10";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "wait0:01,wait1:11,zero:00,one:10";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \cnt[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cnt[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cnt[5]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \cnt[6]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \cnt[7]_i_1\ : label is "soft_lutpair1";
begin
  debounce_out <= \^debounce_out\;
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FEFE0000FFFF00"
    )
        port map (
      I0 => \FSM_sequential_state[1]_i_2_n_0\,
      I1 => cnt(6),
      I2 => cnt(7),
      I3 => button_IBUF,
      I4 => \^debounce_out\,
      I5 => state(0),
      O => \FSM_sequential_state[0]_i_1_n_0\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCCCCCCCCE4"
    )
        port map (
      I0 => state(0),
      I1 => \^debounce_out\,
      I2 => button_IBUF,
      I3 => cnt(7),
      I4 => cnt(6),
      I5 => \FSM_sequential_state[1]_i_2_n_0\,
      O => \FSM_sequential_state[1]_i_1_n_0\
    );
\FSM_sequential_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => cnt(0),
      I1 => cnt(1),
      I2 => cnt(2),
      I3 => cnt(3),
      I4 => cnt(4),
      I5 => cnt(5),
      O => \FSM_sequential_state[1]_i_2_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => AS(0),
      D => \FSM_sequential_state[0]_i_1_n_0\,
      Q => state(0)
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => AS(0),
      D => \FSM_sequential_state[1]_i_1_n_0\,
      Q => \^debounce_out\
    );
\cnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => state(0),
      I1 => cnt(0),
      O => cnt_n(0)
    );
\cnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => state(0),
      I1 => cnt(1),
      I2 => cnt(0),
      O => \cnt[1]_i_1_n_0\
    );
\cnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2888"
    )
        port map (
      I0 => state(0),
      I1 => cnt(2),
      I2 => cnt(1),
      I3 => cnt(0),
      O => \cnt[2]_i_1_n_0\
    );
\cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"28888888"
    )
        port map (
      I0 => state(0),
      I1 => cnt(3),
      I2 => cnt(2),
      I3 => cnt(0),
      I4 => cnt(1),
      O => \cnt[3]_i_1_n_0\
    );
\cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2888888888888888"
    )
        port map (
      I0 => state(0),
      I1 => cnt(4),
      I2 => cnt(3),
      I3 => cnt(1),
      I4 => cnt(0),
      I5 => cnt(2),
      O => \cnt[4]_i_1_n_0\
    );
\cnt[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => state(0),
      I1 => cnt(5),
      I2 => \cnt[5]_i_2_n_0\,
      O => \cnt[5]_i_1_n_0\
    );
\cnt[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => cnt(4),
      I1 => cnt(2),
      I2 => cnt(0),
      I3 => cnt(1),
      I4 => cnt(3),
      O => \cnt[5]_i_2_n_0\
    );
\cnt[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => state(0),
      I1 => cnt(6),
      I2 => \cnt[7]_i_2_n_0\,
      O => \cnt[6]_i_1_n_0\
    );
\cnt[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2888"
    )
        port map (
      I0 => state(0),
      I1 => cnt(7),
      I2 => cnt(6),
      I3 => \cnt[7]_i_2_n_0\,
      O => \cnt[7]_i_1_n_0\
    );
\cnt[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => cnt(5),
      I1 => cnt(3),
      I2 => cnt(1),
      I3 => cnt(0),
      I4 => cnt(2),
      I5 => cnt(4),
      O => \cnt[7]_i_2_n_0\
    );
\cnt_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => AS(0),
      D => cnt_n(0),
      Q => cnt(0)
    );
\cnt_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => AS(0),
      D => \cnt[1]_i_1_n_0\,
      Q => cnt(1)
    );
\cnt_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => AS(0),
      D => \cnt[2]_i_1_n_0\,
      Q => cnt(2)
    );
\cnt_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => AS(0),
      D => \cnt[3]_i_1_n_0\,
      Q => cnt(3)
    );
\cnt_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => AS(0),
      D => \cnt[4]_i_1_n_0\,
      Q => cnt(4)
    );
\cnt_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => AS(0),
      D => \cnt[5]_i_1_n_0\,
      Q => cnt(5)
    );
\cnt_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => AS(0),
      D => \cnt[6]_i_1_n_0\,
      Q => cnt(6)
    );
\cnt_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => AS(0),
      D => \cnt[7]_i_1_n_0\,
      Q => cnt(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity edge_moore is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    debounce_out : in STD_LOGIC;
    clk_IBUF_BUFG : in STD_LOGIC;
    AS : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end edge_moore;

architecture STRUCTURE of edge_moore is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \FSM_sequential_state[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1__0_n_0\ : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 1 to 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_1__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1__0\ : label is "soft_lutpair3";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "edge:01,one:10,zero:00,iSTATE:11";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "edge:01,one:10,zero:00,iSTATE:11";
begin
  E(0) <= \^e\(0);
\FSM_sequential_state[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^e\(0),
      I1 => debounce_out,
      I2 => state(1),
      O => \FSM_sequential_state[0]_i_1__0_n_0\
    );
\FSM_sequential_state[1]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"48"
    )
        port map (
      I0 => \^e\(0),
      I1 => debounce_out,
      I2 => state(1),
      O => \FSM_sequential_state[1]_i_1__0_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => AS(0),
      D => \FSM_sequential_state[0]_i_1__0_n_0\,
      Q => \^e\(0)
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => AS(0),
      D => \FSM_sequential_state[1]_i_1__0_n_0\,
      Q => state(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity walking_led is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    button : in STD_LOGIC;
    leds : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of walking_led : entity is true;
end walking_led;

architecture STRUCTURE of walking_led is
  signal button_IBUF : STD_LOGIC;
  signal clk_IBUF : STD_LOGIC;
  signal clk_IBUF_BUFG : STD_LOGIC;
  signal debounce_out : STD_LOGIC;
  signal edge_trigger : STD_LOGIC;
  signal leds_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rst_IBUF : STD_LOGIC;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \led_results_reg[0]\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \led_results_reg[1]\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \led_results_reg[2]\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \led_results_reg[3]\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \led_results_reg[4]\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \led_results_reg[5]\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \led_results_reg[6]\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \led_results_reg[7]\ : label is "LDP";
begin
button_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => button,
      O => button_IBUF
    );
clk_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => clk_IBUF,
      O => clk_IBUF_BUFG
    );
clk_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => clk,
      O => clk_IBUF
    );
debounce0: entity work.debouncing
     port map (
      AS(0) => rst_IBUF,
      button_IBUF => button_IBUF,
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      debounce_out => debounce_out
    );
edge0: entity work.edge_moore
     port map (
      AS(0) => rst_IBUF,
      E(0) => edge_trigger,
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      debounce_out => debounce_out
    );
\led_results_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => rst_IBUF,
      D => leds_OBUF(1),
      G => edge_trigger,
      GE => '1',
      Q => leds_OBUF(0)
    );
\led_results_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => rst_IBUF,
      D => leds_OBUF(2),
      G => edge_trigger,
      GE => '1',
      Q => leds_OBUF(1)
    );
\led_results_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => rst_IBUF,
      D => leds_OBUF(3),
      G => edge_trigger,
      GE => '1',
      Q => leds_OBUF(2)
    );
\led_results_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => rst_IBUF,
      D => leds_OBUF(4),
      G => edge_trigger,
      GE => '1',
      Q => leds_OBUF(3)
    );
\led_results_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => rst_IBUF,
      D => leds_OBUF(5),
      G => edge_trigger,
      GE => '1',
      Q => leds_OBUF(4)
    );
\led_results_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => rst_IBUF,
      D => leds_OBUF(6),
      G => edge_trigger,
      GE => '1',
      Q => leds_OBUF(5)
    );
\led_results_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => rst_IBUF,
      D => leds_OBUF(7),
      G => edge_trigger,
      GE => '1',
      Q => leds_OBUF(6)
    );
\led_results_reg[7]\: unisim.vcomponents.LDPE
    generic map(
      INIT => '1'
    )
        port map (
      D => leds_OBUF(0),
      G => edge_trigger,
      GE => '1',
      PRE => rst_IBUF,
      Q => leds_OBUF(7)
    );
\leds_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => leds_OBUF(0),
      O => leds(0)
    );
\leds_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => leds_OBUF(1),
      O => leds(1)
    );
\leds_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => leds_OBUF(2),
      O => leds(2)
    );
\leds_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => leds_OBUF(3),
      O => leds(3)
    );
\leds_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => leds_OBUF(4),
      O => leds(4)
    );
\leds_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => leds_OBUF(5),
      O => leds(5)
    );
\leds_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => leds_OBUF(6),
      O => leds(6)
    );
\leds_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => leds_OBUF(7),
      O => leds(7)
    );
rst_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => rst,
      O => rst_IBUF
    );
end STRUCTURE;
