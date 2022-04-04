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

-- DATE "08/04/2018 16:30:36"

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

ENTITY 	FLIPFLOP_JK1 IS
    PORT (
	SALIDA_J1 : OUT std_logic;
	Q0 : IN std_logic;
	M : IN std_logic;
	H : IN std_logic
	);
END FLIPFLOP_JK1;

-- Design Ports Information
-- SALIDA_J1	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q0	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF FLIPFLOP_JK1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SALIDA_J1 : std_logic;
SIGNAL ww_Q0 : std_logic;
SIGNAL ww_M : std_logic;
SIGNAL ww_H : std_logic;
SIGNAL \SALIDA_J1~output_o\ : std_logic;
SIGNAL \Q0~input_o\ : std_logic;
SIGNAL \M~input_o\ : std_logic;
SIGNAL \H~input_o\ : std_logic;
SIGNAL \inst5~0_combout\ : std_logic;

BEGIN

SALIDA_J1 <= ww_SALIDA_J1;
ww_Q0 <= Q0;
ww_M <= M;
ww_H <= H;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X12_Y0_N2
\SALIDA_J1~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5~0_combout\,
	devoe => ww_devoe,
	o => \SALIDA_J1~output_o\);

-- Location: IOIBUF_X10_Y31_N1
\Q0~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Q0,
	o => \Q0~input_o\);

-- Location: IOIBUF_X12_Y31_N8
\M~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_M,
	o => \M~input_o\);

-- Location: IOIBUF_X12_Y31_N1
\H~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_H,
	o => \H~input_o\);

-- Location: LCCOMB_X13_Y21_N16
\inst5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5~0_combout\ = (\Q0~input_o\ $ (!\H~input_o\)) # (!\M~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q0~input_o\,
	datac => \M~input_o\,
	datad => \H~input_o\,
	combout => \inst5~0_combout\);

ww_SALIDA_J1 <= \SALIDA_J1~output_o\;
END structure;


