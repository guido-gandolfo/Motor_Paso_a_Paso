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

-- DATE "08/04/2018 08:21:20"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
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

ENTITY 	guido IS
    PORT (
	Ea : OUT std_logic;
	pin_name3 : INOUT std_logic;
	pin_name1 : INOUT std_logic;
	pin_name2 : INOUT std_logic;
	Sa : OUT std_logic;
	Eb : OUT std_logic;
	Sb : OUT std_logic;
	nRST : IN std_logic;
	MODO : IN std_logic;
	HORARIO : IN std_logic;
	CLK : IN std_logic
	);
END guido;

-- Design Ports Information
-- Ea	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sa	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Eb	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sb	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name3	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name1	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name2	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MODO	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nRST	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HORARIO	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF guido IS
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
SIGNAL ww_Sa : std_logic;
SIGNAL ww_Eb : std_logic;
SIGNAL ww_Sb : std_logic;
SIGNAL ww_nRST : std_logic;
SIGNAL ww_MODO : std_logic;
SIGNAL ww_HORARIO : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL \nRST~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pin_name3~input_o\ : std_logic;
SIGNAL \pin_name1~input_o\ : std_logic;
SIGNAL \pin_name2~input_o\ : std_logic;
SIGNAL \pin_name3~output_o\ : std_logic;
SIGNAL \pin_name1~output_o\ : std_logic;
SIGNAL \pin_name2~output_o\ : std_logic;
SIGNAL \Ea~output_o\ : std_logic;
SIGNAL \Sa~output_o\ : std_logic;
SIGNAL \Eb~output_o\ : std_logic;
SIGNAL \Sb~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \HORARIO~input_o\ : std_logic;
SIGNAL \MODO~input_o\ : std_logic;
SIGNAL \inst6~0_combout\ : std_logic;
SIGNAL \nRST~input_o\ : std_logic;
SIGNAL \nRST~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst6~q\ : std_logic;
SIGNAL \inst5~0_combout\ : std_logic;
SIGNAL \inst5~q\ : std_logic;
SIGNAL \inst4~0_combout\ : std_logic;
SIGNAL \inst4~1_combout\ : std_logic;
SIGNAL \inst4~q\ : std_logic;
SIGNAL \inst33~combout\ : std_logic;
SIGNAL \inst38~0_combout\ : std_logic;
SIGNAL \ALT_INV_inst4~q\ : std_logic;

BEGIN

Ea <= ww_Ea;
Sa <= ww_Sa;
Eb <= ww_Eb;
Sb <= ww_Sb;
ww_nRST <= nRST;
ww_MODO <= MODO;
ww_HORARIO <= HORARIO;
ww_CLK <= CLK;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\nRST~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \nRST~input_o\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\ALT_INV_inst4~q\ <= NOT \inst4~q\;

-- Location: IOOBUF_X20_Y0_N9
\pin_name3~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4~q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \pin_name3~output_o\);

-- Location: IOOBUF_X12_Y0_N2
\pin_name1~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5~q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \pin_name1~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\pin_name2~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6~q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \pin_name2~output_o\);

-- Location: IOOBUF_X12_Y0_N9
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

-- Location: IOOBUF_X24_Y0_N2
\Sa~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Sa~output_o\);

-- Location: IOOBUF_X10_Y0_N9
\Eb~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst38~0_combout\,
	devoe => ww_devoe,
	o => \Eb~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\Sb~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst4~q\,
	devoe => ww_devoe,
	o => \Sb~output_o\);

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

-- Location: IOIBUF_X22_Y0_N8
\MODO~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MODO,
	o => \MODO~input_o\);

-- Location: LCCOMB_X14_Y1_N4
\inst6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst6~0_combout\ = \MODO~input_o\ $ (\inst6~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MODO~input_o\,
	datac => \inst6~q\,
	combout => \inst6~0_combout\);

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

-- Location: FF_X14_Y1_N5
inst6 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst6~0_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6~q\);

-- Location: LCCOMB_X14_Y1_N28
\inst5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5~0_combout\ = \inst5~q\ $ (((\HORARIO~input_o\ $ (!\inst6~q\)) # (!\MODO~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110110000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODO~input_o\,
	datab => \HORARIO~input_o\,
	datac => \inst5~q\,
	datad => \inst6~q\,
	combout => \inst5~0_combout\);

-- Location: FF_X14_Y1_N29
inst5 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5~0_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5~q\);

-- Location: LCCOMB_X14_Y1_N6
\inst4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4~0_combout\ = (\MODO~input_o\ & (((\HORARIO~input_o\ & !\inst5~q\)) # (!\inst6~q\))) # (!\MODO~input_o\ & (\HORARIO~input_o\ $ (((\inst5~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HORARIO~input_o\,
	datab => \MODO~input_o\,
	datac => \inst6~q\,
	datad => \inst5~q\,
	combout => \inst4~0_combout\);

-- Location: LCCOMB_X14_Y1_N26
\inst4~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4~1_combout\ = (\inst4~q\ & (((\inst4~0_combout\)))) # (!\inst4~q\ & (((!\MODO~input_o\ & !\HORARIO~input_o\)) # (!\inst4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODO~input_o\,
	datab => \HORARIO~input_o\,
	datac => \inst4~q\,
	datad => \inst4~0_combout\,
	combout => \inst4~1_combout\);

-- Location: FF_X14_Y1_N27
inst4 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst4~1_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4~q\);

-- Location: LCCOMB_X14_Y1_N30
inst33 : cycloneiv_lcell_comb
-- Equation(s):
-- \inst33~combout\ = (\inst4~q\ & (\inst6~q\ & \inst5~q\)) # (!\inst4~q\ & ((!\inst5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4~q\,
	datab => \inst6~q\,
	datad => \inst5~q\,
	combout => \inst33~combout\);

-- Location: LCCOMB_X14_Y1_N24
\inst38~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst38~0_combout\ = (\inst4~q\ & \inst6~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4~q\,
	datad => \inst6~q\,
	combout => \inst38~0_combout\);

-- Location: IOIBUF_X20_Y0_N8
\pin_name3~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => pin_name3,
	o => \pin_name3~input_o\);

-- Location: IOIBUF_X12_Y0_N1
\pin_name1~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => pin_name1,
	o => \pin_name1~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\pin_name2~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => pin_name2,
	o => \pin_name2~input_o\);

ww_Ea <= \Ea~output_o\;

ww_Sa <= \Sa~output_o\;

ww_Eb <= \Eb~output_o\;

ww_Sb <= \Sb~output_o\;

pin_name3 <= \pin_name3~output_o\;

pin_name1 <= \pin_name1~output_o\;

pin_name2 <= \pin_name2~output_o\;
END structure;


