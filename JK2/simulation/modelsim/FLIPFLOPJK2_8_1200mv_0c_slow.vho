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

-- DATE "08/04/2018 13:33:52"

-- 
-- Device: Altera EP4CGX15BF14C8 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	FLIPFLOPJK2 IS
    PORT (
	SALIDA_Q2 : OUT std_logic;
	RESET : IN std_logic;
	Q0 : IN std_logic;
	H : IN std_logic;
	Q1 : IN std_logic;
	M : IN std_logic;
	CLK : IN std_logic
	);
END FLIPFLOPJK2;

-- Design Ports Information
-- SALIDA_Q2	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q1	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q0	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF FLIPFLOPJK2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SALIDA_Q2 : std_logic;
SIGNAL ww_RESET : std_logic;
SIGNAL ww_Q0 : std_logic;
SIGNAL ww_H : std_logic;
SIGNAL ww_Q1 : std_logic;
SIGNAL ww_M : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL \inst~0_combout\ : std_logic;
SIGNAL \M~input_o\ : std_logic;
SIGNAL \SALIDA_Q2~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \H~input_o\ : std_logic;
SIGNAL \Q1~input_o\ : std_logic;
SIGNAL \Q0~input_o\ : std_logic;
SIGNAL \inst~1_combout\ : std_logic;
SIGNAL \inst~2_combout\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \inst~q\ : std_logic;

BEGIN

SALIDA_Q2 <= ww_SALIDA_Q2;
ww_RESET <= RESET;
ww_Q0 <= Q0;
ww_H <= H;
ww_Q1 <= Q1;
ww_M <= M;
ww_CLK <= CLK;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: LCCOMB_X13_Y1_N4
\inst~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst~0_combout\ = (\Q0~input_o\ & (\H~input_o\ $ (((!\M~input_o\ & !\Q1~input_o\))))) # (!\Q0~input_o\ & ((\H~input_o\ & (\M~input_o\)) # (!\H~input_o\ & ((\Q1~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M~input_o\,
	datab => \H~input_o\,
	datac => \Q1~input_o\,
	datad => \Q0~input_o\,
	combout => \inst~0_combout\);

-- Location: IOIBUF_X12_Y0_N1
\M~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_M,
	o => \M~input_o\);

-- Location: IOOBUF_X10_Y0_N9
\SALIDA_Q2~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst~q\,
	devoe => ww_devoe,
	o => \SALIDA_Q2~output_o\);

-- Location: IOIBUF_X12_Y0_N8
\CLK~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\H~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_H,
	o => \H~input_o\);

-- Location: IOIBUF_X8_Y0_N1
\Q1~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Q1,
	o => \Q1~input_o\);

-- Location: IOIBUF_X14_Y0_N8
\Q0~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Q0,
	o => \Q0~input_o\);

-- Location: LCCOMB_X13_Y1_N6
\inst~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst~1_combout\ = (\H~input_o\ & (\Q1~input_o\ & ((\Q0~input_o\) # (!\M~input_o\)))) # (!\H~input_o\ & (((\Q0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M~input_o\,
	datab => \H~input_o\,
	datac => \Q1~input_o\,
	datad => \Q0~input_o\,
	combout => \inst~1_combout\);

-- Location: LCCOMB_X12_Y1_N28
\inst~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst~2_combout\ = \inst~1_combout\ $ (((\inst~q\) # (!\inst~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst~0_combout\,
	datac => \inst~q\,
	datad => \inst~1_combout\,
	combout => \inst~2_combout\);

-- Location: IOIBUF_X8_Y0_N8
\RESET~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESET,
	o => \RESET~input_o\);

-- Location: FF_X12_Y1_N29
inst : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst~2_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst~q\);

ww_SALIDA_Q2 <= \SALIDA_Q2~output_o\;
END structure;


