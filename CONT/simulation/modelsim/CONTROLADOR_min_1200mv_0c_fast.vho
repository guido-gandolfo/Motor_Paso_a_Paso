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

-- DATE "08/06/2018 18:00:35"

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

ENTITY 	CONTROLADOR IS
    PORT (
	SALIDA_Q2 : OUT std_logic;
	nRST : IN std_logic;
	MODO : IN std_logic;
	CLK : IN std_logic;
	HORARIO : IN std_logic;
	SALIDA_Q1 : OUT std_logic;
	SALIDA_Q0 : OUT std_logic;
	SALIDA : OUT std_logic
	);
END CONTROLADOR;

-- Design Ports Information
-- SALIDA_Q2	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SALIDA_Q1	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SALIDA_Q0	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SALIDA	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MODO	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HORARIO	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nRST	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF CONTROLADOR IS
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
SIGNAL ww_nRST : std_logic;
SIGNAL ww_MODO : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_HORARIO : std_logic;
SIGNAL ww_SALIDA_Q1 : std_logic;
SIGNAL ww_SALIDA_Q0 : std_logic;
SIGNAL ww_SALIDA : std_logic;
SIGNAL \nRST~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SALIDA_Q2~output_o\ : std_logic;
SIGNAL \SALIDA_Q1~output_o\ : std_logic;
SIGNAL \SALIDA_Q0~output_o\ : std_logic;
SIGNAL \SALIDA~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \HORARIO~input_o\ : std_logic;
SIGNAL \MODO~input_o\ : std_logic;
SIGNAL \inst3~0_combout\ : std_logic;
SIGNAL \nRST~input_o\ : std_logic;
SIGNAL \nRST~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst3~q\ : std_logic;
SIGNAL \inst2~0_combout\ : std_logic;
SIGNAL \inst2~q\ : std_logic;
SIGNAL \inst1~0_combout\ : std_logic;
SIGNAL \inst1~1_combout\ : std_logic;
SIGNAL \inst1~q\ : std_logic;

BEGIN

SALIDA_Q2 <= ww_SALIDA_Q2;
ww_nRST <= nRST;
ww_MODO <= MODO;
ww_CLK <= CLK;
ww_HORARIO <= HORARIO;
SALIDA_Q1 <= ww_SALIDA_Q1;
SALIDA_Q0 <= ww_SALIDA_Q0;
SALIDA <= ww_SALIDA;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\nRST~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \nRST~input_o\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);

-- Location: IOOBUF_X12_Y0_N2
\SALIDA_Q2~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1~q\,
	devoe => ww_devoe,
	o => \SALIDA_Q2~output_o\);

-- Location: IOOBUF_X12_Y0_N9
\SALIDA_Q1~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2~q\,
	devoe => ww_devoe,
	o => \SALIDA_Q1~output_o\);

-- Location: IOOBUF_X10_Y0_N9
\SALIDA_Q0~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3~q\,
	devoe => ww_devoe,
	o => \SALIDA_Q0~output_o\);

-- Location: IOOBUF_X33_Y27_N9
\SALIDA~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SALIDA~output_o\);

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

-- Location: IOIBUF_X14_Y0_N1
\HORARIO~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_HORARIO,
	o => \HORARIO~input_o\);

-- Location: IOIBUF_X14_Y0_N8
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
\inst3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3~0_combout\ = \inst3~q\ $ (\MODO~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3~q\,
	datad => \MODO~input_o\,
	combout => \inst3~0_combout\);

-- Location: IOIBUF_X16_Y0_N22
\nRST~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nRST,
	o => \nRST~input_o\);

-- Location: CLKCTRL_G19
\nRST~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \nRST~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \nRST~inputclkctrl_outclk\);

-- Location: FF_X13_Y1_N9
inst3 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3~0_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3~q\);

-- Location: LCCOMB_X13_Y1_N18
\inst2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2~0_combout\ = (\MODO~input_o\ & (\HORARIO~input_o\ $ (\inst2~q\ $ (!\inst3~q\)))) # (!\MODO~input_o\ & (((!\HORARIO~input_o\ & \inst3~q\)) # (!\inst2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110110000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODO~input_o\,
	datab => \HORARIO~input_o\,
	datac => \inst2~q\,
	datad => \inst3~q\,
	combout => \inst2~0_combout\);

-- Location: FF_X13_Y1_N19
inst2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst2~0_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2~q\);

-- Location: LCCOMB_X13_Y1_N2
\inst1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1~0_combout\ = (\HORARIO~input_o\ & (((\MODO~input_o\ & !\inst3~q\)) # (!\inst2~q\))) # (!\HORARIO~input_o\ & ((\inst2~q\) # ((\MODO~input_o\ & \inst3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODO~input_o\,
	datab => \HORARIO~input_o\,
	datac => \inst3~q\,
	datad => \inst2~q\,
	combout => \inst1~0_combout\);

-- Location: LCCOMB_X13_Y1_N28
\inst1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1~1_combout\ = \inst1~q\ $ (!\inst1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1~q\,
	datad => \inst1~0_combout\,
	combout => \inst1~1_combout\);

-- Location: FF_X13_Y1_N29
inst1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1~1_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1~q\);

ww_SALIDA_Q2 <= \SALIDA_Q2~output_o\;

ww_SALIDA_Q1 <= \SALIDA_Q1~output_o\;

ww_SALIDA_Q0 <= \SALIDA_Q0~output_o\;

ww_SALIDA <= \SALIDA~output_o\;
END structure;


