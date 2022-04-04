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

-- DATE "08/05/2018 18:04:09"

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

ENTITY 	MOTOR IS
    PORT (
	ERROR : OUT std_logic;
	MODO : IN std_logic;
	HORARIO : IN std_logic;
	CLK : IN std_logic;
	RST : IN std_logic;
	POSICION : OUT std_logic_vector(2 DOWNTO 0)
	);
END MOTOR;

-- Design Ports Information
-- ERROR	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- POSICION[2]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- POSICION[1]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- POSICION[0]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MODO	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HORARIO	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MOTOR IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ERROR : std_logic;
SIGNAL ww_MODO : std_logic;
SIGNAL ww_HORARIO : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_RST : std_logic;
SIGNAL ww_POSICION : std_logic_vector(2 DOWNTO 0);
SIGNAL \RST~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ERROR~output_o\ : std_logic;
SIGNAL \POSICION[2]~output_o\ : std_logic;
SIGNAL \POSICION[1]~output_o\ : std_logic;
SIGNAL \POSICION[0]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \HORARIO~input_o\ : std_logic;
SIGNAL \MODO~input_o\ : std_logic;
SIGNAL \inst|inst3~0_combout\ : std_logic;
SIGNAL \RST~input_o\ : std_logic;
SIGNAL \RST~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|inst3~q\ : std_logic;
SIGNAL \inst|inst2~0_combout\ : std_logic;
SIGNAL \inst|inst2~q\ : std_logic;
SIGNAL \inst|inst1~0_combout\ : std_logic;
SIGNAL \inst|inst1~1_combout\ : std_logic;
SIGNAL \inst|inst1~q\ : std_logic;

BEGIN

ERROR <= ww_ERROR;
ww_MODO <= MODO;
ww_HORARIO <= HORARIO;
ww_CLK <= CLK;
ww_RST <= RST;
POSICION <= ww_POSICION;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\RST~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RST~input_o\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);

-- Location: IOOBUF_X20_Y0_N2
\ERROR~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ERROR~output_o\);

-- Location: IOOBUF_X12_Y0_N9
\POSICION[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst1~q\,
	devoe => ww_devoe,
	o => \POSICION[2]~output_o\);

-- Location: IOOBUF_X10_Y0_N9
\POSICION[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst2~q\,
	devoe => ww_devoe,
	o => \POSICION[1]~output_o\);

-- Location: IOOBUF_X12_Y0_N2
\POSICION[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst3~q\,
	devoe => ww_devoe,
	o => \POSICION[0]~output_o\);

-- Location: IOIBUF_X16_Y0_N15
\CLK~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G17
\CLK~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: IOIBUF_X14_Y0_N8
\HORARIO~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_HORARIO,
	o => \HORARIO~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\MODO~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MODO,
	o => \MODO~input_o\);

-- Location: LCCOMB_X13_Y1_N8
\inst|inst3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst3~0_combout\ = \inst|inst3~q\ $ (\MODO~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst3~q\,
	datad => \MODO~input_o\,
	combout => \inst|inst3~0_combout\);

-- Location: IOIBUF_X16_Y0_N22
\RST~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RST,
	o => \RST~input_o\);

-- Location: CLKCTRL_G19
\RST~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RST~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RST~inputclkctrl_outclk\);

-- Location: FF_X13_Y1_N9
\inst|inst3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst3~0_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3~q\);

-- Location: LCCOMB_X13_Y1_N10
\inst|inst2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst2~0_combout\ = (\MODO~input_o\ & (\HORARIO~input_o\ $ (((\inst|inst2~q\) # (!\inst|inst3~q\))))) # (!\MODO~input_o\ & (((!\inst|inst2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODO~input_o\,
	datab => \HORARIO~input_o\,
	datac => \inst|inst2~q\,
	datad => \inst|inst3~q\,
	combout => \inst|inst2~0_combout\);

-- Location: FF_X13_Y1_N11
\inst|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst2~0_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2~q\);

-- Location: LCCOMB_X13_Y1_N18
\inst|inst1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst1~0_combout\ = (\HORARIO~input_o\ & (((\MODO~input_o\ & !\inst|inst3~q\)) # (!\inst|inst2~q\))) # (!\HORARIO~input_o\ & ((\inst|inst2~q\) # ((\MODO~input_o\ & \inst|inst3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODO~input_o\,
	datab => \HORARIO~input_o\,
	datac => \inst|inst3~q\,
	datad => \inst|inst2~q\,
	combout => \inst|inst1~0_combout\);

-- Location: LCCOMB_X13_Y1_N28
\inst|inst1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst1~1_combout\ = \inst|inst1~q\ $ (!\inst|inst1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst1~q\,
	datad => \inst|inst1~0_combout\,
	combout => \inst|inst1~1_combout\);

-- Location: FF_X13_Y1_N29
\inst|inst1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst1~1_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1~q\);

ww_ERROR <= \ERROR~output_o\;

ww_POSICION(2) <= \POSICION[2]~output_o\;

ww_POSICION(1) <= \POSICION[1]~output_o\;

ww_POSICION(0) <= \POSICION[0]~output_o\;
END structure;


