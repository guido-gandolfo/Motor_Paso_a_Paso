-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"

-- DATE "08/04/2018 10:07:00"

-- 
-- Device: Altera EP4CGX15BF14C8 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	salidas IS
    PORT (
	Ea : OUT std_logic;
	Q1 : IN std_logic;
	Q0 : IN std_logic;
	Sa : OUT std_logic;
	Q2 : IN std_logic;
	Eb : OUT std_logic;
	Sb : OUT std_logic
	);
END salidas;

-- Design Ports Information
-- Ea	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sa	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Eb	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sb	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q0	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q1	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q2	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF salidas IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Ea : std_logic;
SIGNAL ww_Q1 : std_logic;
SIGNAL ww_Q0 : std_logic;
SIGNAL ww_Sa : std_logic;
SIGNAL ww_Q2 : std_logic;
SIGNAL ww_Eb : std_logic;
SIGNAL ww_Sb : std_logic;
SIGNAL \Ea~output_o\ : std_logic;
SIGNAL \Sa~output_o\ : std_logic;
SIGNAL \Eb~output_o\ : std_logic;
SIGNAL \Sb~output_o\ : std_logic;
SIGNAL \Q0~input_o\ : std_logic;
SIGNAL \Q1~input_o\ : std_logic;
SIGNAL \inst33~combout\ : std_logic;
SIGNAL \Q2~input_o\ : std_logic;
SIGNAL \inst35~combout\ : std_logic;
SIGNAL \inst38~combout\ : std_logic;

BEGIN

Ea <= ww_Ea;
ww_Q1 <= Q1;
ww_Q0 <= Q0;
Sa <= ww_Sa;
ww_Q2 <= Q2;
Eb <= ww_Eb;
Sb <= ww_Sb;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X20_Y31_N2
\Ea~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst33~combout\,
	devoe => ww_devoe,
	o => \Ea~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\Sa~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst35~combout\,
	devoe => ww_devoe,
	o => \Sa~output_o\);

-- Location: IOOBUF_X31_Y31_N9
\Eb~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst33~combout\,
	devoe => ww_devoe,
	o => \Eb~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\Sb~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst38~combout\,
	devoe => ww_devoe,
	o => \Sb~output_o\);

-- Location: IOIBUF_X14_Y0_N1
\Q0~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Q0,
	o => \Q0~input_o\);

-- Location: IOIBUF_X20_Y0_N8
\Q1~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Q1,
	o => \Q1~input_o\);

-- Location: LCCOMB_X21_Y1_N0
inst33 : cycloneiv_lcell_comb
-- Equation(s):
-- \inst33~combout\ = (\Q0~input_o\) # (!\Q1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Q0~input_o\,
	datad => \Q1~input_o\,
	combout => \inst33~combout\);

-- Location: IOIBUF_X14_Y0_N8
\Q2~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Q2,
	o => \Q2~input_o\);

-- Location: LCCOMB_X21_Y1_N10
inst35 : cycloneiv_lcell_comb
-- Equation(s):
-- \inst35~combout\ = (\Q2~input_o\ & (\Q0~input_o\ & \Q1~input_o\)) # (!\Q2~input_o\ & ((!\Q1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Q0~input_o\,
	datac => \Q2~input_o\,
	datad => \Q1~input_o\,
	combout => \inst35~combout\);

-- Location: LCCOMB_X21_Y1_N4
inst38 : cycloneiv_lcell_comb
-- Equation(s):
-- \inst38~combout\ = (\Q0~input_o\ & (!\Q2~input_o\)) # (!\Q0~input_o\ & (\Q2~input_o\ & \Q1~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Q0~input_o\,
	datac => \Q2~input_o\,
	datad => \Q1~input_o\,
	combout => \inst38~combout\);

ww_Ea <= \Ea~output_o\;

ww_Sa <= \Sa~output_o\;

ww_Eb <= \Eb~output_o\;

ww_Sb <= \Sb~output_o\;
END structure;


