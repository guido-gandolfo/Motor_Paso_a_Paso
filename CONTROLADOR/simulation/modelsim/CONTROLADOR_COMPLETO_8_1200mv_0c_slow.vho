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

-- DATE "08/05/2018 06:18:42"

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

ENTITY 	CONTROLADOR_COMPLETO IS
    PORT (
	Ea : OUT std_logic;
	RESET : IN std_logic;
	M : IN std_logic;
	CLK : IN std_logic;
	H : IN std_logic;
	Sa : OUT std_logic;
	Eb : OUT std_logic;
	Sb : OUT std_logic;
	Q2 : OUT std_logic;
	Q1 : OUT std_logic;
	Q0 : OUT std_logic
	);
END CONTROLADOR_COMPLETO;

-- Design Ports Information
-- Ea	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sa	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Eb	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sb	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q2	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q1	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q0	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF CONTROLADOR_COMPLETO IS
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
SIGNAL ww_RESET : std_logic;
SIGNAL ww_M : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_H : std_logic;
SIGNAL ww_Sa : std_logic;
SIGNAL ww_Eb : std_logic;
SIGNAL ww_Sb : std_logic;
SIGNAL ww_Q2 : std_logic;
SIGNAL ww_Q1 : std_logic;
SIGNAL ww_Q0 : std_logic;
SIGNAL \RESET~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \Ea~output_o\ : std_logic;
SIGNAL \Sa~output_o\ : std_logic;
SIGNAL \Eb~output_o\ : std_logic;
SIGNAL \Sb~output_o\ : std_logic;
SIGNAL \Q2~output_o\ : std_logic;
SIGNAL \Q1~output_o\ : std_logic;
SIGNAL \Q0~output_o\ : std_logic;
SIGNAL \M~input_o\ : std_logic;
SIGNAL \inst3~0_combout\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \RESET~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst3~q\ : std_logic;
SIGNAL \inst2~0_combout\ : std_logic;
SIGNAL \inst2~q\ : std_logic;
SIGNAL \inst33~combout\ : std_logic;
SIGNAL \H~input_o\ : std_logic;
SIGNAL \inst1~0_combout\ : std_logic;
SIGNAL \inst1~1_combout\ : std_logic;
SIGNAL \inst1~q\ : std_logic;
SIGNAL \inst35~combout\ : std_logic;
SIGNAL \inst39~combout\ : std_logic;
SIGNAL \inst40~combout\ : std_logic;

BEGIN

Ea <= ww_Ea;
ww_RESET <= RESET;
ww_M <= M;
ww_CLK <= CLK;
ww_H <= H;
Sa <= ww_Sa;
Eb <= ww_Eb;
Sb <= ww_Sb;
Q2 <= ww_Q2;
Q1 <= ww_Q1;
Q0 <= ww_Q0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\RESET~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RESET~input_o\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);

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

-- Location: IOOBUF_X31_Y31_N9
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

-- Location: IOOBUF_X33_Y24_N2
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

-- Location: IOOBUF_X33_Y28_N2
\Eb~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst39~combout\,
	devoe => ww_devoe,
	o => \Eb~output_o\);

-- Location: IOOBUF_X33_Y27_N2
\Sb~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst40~combout\,
	devoe => ww_devoe,
	o => \Sb~output_o\);

-- Location: IOOBUF_X33_Y25_N2
\Q2~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1~q\,
	devoe => ww_devoe,
	o => \Q2~output_o\);

-- Location: IOOBUF_X31_Y31_N2
\Q1~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2~q\,
	devoe => ww_devoe,
	o => \Q1~output_o\);

-- Location: IOOBUF_X33_Y27_N9
\Q0~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3~q\,
	devoe => ww_devoe,
	o => \Q0~output_o\);

-- Location: IOIBUF_X33_Y25_N8
\M~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_M,
	o => \M~input_o\);

-- Location: LCCOMB_X32_Y27_N8
\inst3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3~0_combout\ = \inst3~q\ $ (!\M~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3~q\,
	datad => \M~input_o\,
	combout => \inst3~0_combout\);

-- Location: IOIBUF_X16_Y0_N22
\RESET~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESET,
	o => \RESET~input_o\);

-- Location: CLKCTRL_G19
\RESET~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RESET~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RESET~inputclkctrl_outclk\);

-- Location: FF_X32_Y27_N9
inst3 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3~q\);

-- Location: LCCOMB_X32_Y27_N2
\inst2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2~0_combout\ = (\M~input_o\ & (\H~input_o\ $ (((\inst2~q\) # (!\inst3~q\))))) # (!\M~input_o\ & (((!\inst2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \H~input_o\,
	datab => \inst3~q\,
	datac => \inst2~q\,
	datad => \M~input_o\,
	combout => \inst2~0_combout\);

-- Location: FF_X32_Y27_N3
inst2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst2~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2~q\);

-- Location: LCCOMB_X32_Y27_N20
inst33 : cycloneiv_lcell_comb
-- Equation(s):
-- \inst33~combout\ = (\inst3~q\) # (!\inst2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2~q\,
	datad => \inst3~q\,
	combout => \inst33~combout\);

-- Location: IOIBUF_X33_Y28_N8
\H~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_H,
	o => \H~input_o\);

-- Location: LCCOMB_X32_Y27_N10
\inst1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1~0_combout\ = (\H~input_o\ & (((\M~input_o\ & !\inst3~q\)) # (!\inst2~q\))) # (!\H~input_o\ & ((\inst2~q\) # ((\M~input_o\ & \inst3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M~input_o\,
	datab => \H~input_o\,
	datac => \inst3~q\,
	datad => \inst2~q\,
	combout => \inst1~0_combout\);

-- Location: LCCOMB_X32_Y27_N18
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

-- Location: FF_X32_Y27_N19
inst1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1~1_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1~q\);

-- Location: LCCOMB_X32_Y27_N24
inst35 : cycloneiv_lcell_comb
-- Equation(s):
-- \inst35~combout\ = (\inst2~q\ & (\inst3~q\ & \inst1~q\)) # (!\inst2~q\ & ((!\inst1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3~q\,
	datac => \inst2~q\,
	datad => \inst1~q\,
	combout => \inst35~combout\);

-- Location: LCCOMB_X32_Y27_N30
inst39 : cycloneiv_lcell_comb
-- Equation(s):
-- \inst39~combout\ = (\inst2~q\) # (\inst3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2~q\,
	datad => \inst3~q\,
	combout => \inst39~combout\);

-- Location: LCCOMB_X32_Y27_N4
inst40 : cycloneiv_lcell_comb
-- Equation(s):
-- \inst40~combout\ = ((!\inst3~q\ & !\inst2~q\)) # (!\inst1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3~q\,
	datac => \inst2~q\,
	datad => \inst1~q\,
	combout => \inst40~combout\);

ww_Ea <= \Ea~output_o\;

ww_Sa <= \Sa~output_o\;

ww_Eb <= \Eb~output_o\;

ww_Sb <= \Sb~output_o\;

ww_Q2 <= \Q2~output_o\;

ww_Q1 <= \Q1~output_o\;

ww_Q0 <= \Q0~output_o\;
END structure;


