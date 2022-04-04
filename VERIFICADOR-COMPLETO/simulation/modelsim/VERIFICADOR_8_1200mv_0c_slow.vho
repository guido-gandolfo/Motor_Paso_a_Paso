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

-- DATE "08/05/2018 14:59:05"

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

ENTITY 	VERIFICADOR IS
    PORT (
	ERROR : OUT std_logic;
	Ea : IN std_logic;
	Sa : IN std_logic;
	Eb : IN std_logic;
	Sb : IN std_logic;
	INC : OUT std_logic_vector(2 DOWNTO 0);
	CLK : IN std_logic;
	RST : IN std_logic;
	POS : OUT std_logic_vector(2 DOWNTO 0)
	);
END VERIFICADOR;

-- Design Ports Information
-- ERROR	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INC[2]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INC[1]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INC[0]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- POS[2]	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- POS[1]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- POS[0]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ea	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Eb	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sa	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sb	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF VERIFICADOR IS
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
SIGNAL ww_Ea : std_logic;
SIGNAL ww_Sa : std_logic;
SIGNAL ww_Eb : std_logic;
SIGNAL ww_Sb : std_logic;
SIGNAL ww_INC : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_CLK : std_logic;
SIGNAL ww_RST : std_logic;
SIGNAL ww_POS : std_logic_vector(2 DOWNTO 0);
SIGNAL \RST~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \ERROR~output_o\ : std_logic;
SIGNAL \INC[2]~output_o\ : std_logic;
SIGNAL \INC[1]~output_o\ : std_logic;
SIGNAL \INC[0]~output_o\ : std_logic;
SIGNAL \POS[2]~output_o\ : std_logic;
SIGNAL \POS[1]~output_o\ : std_logic;
SIGNAL \POS[0]~output_o\ : std_logic;
SIGNAL \Eb~input_o\ : std_logic;
SIGNAL \Ea~input_o\ : std_logic;
SIGNAL \inst|inst10~combout\ : std_logic;
SIGNAL \Sa~input_o\ : std_logic;
SIGNAL \inst|inst11~0_combout\ : std_logic;
SIGNAL \inst5|inst1~q\ : std_logic;
SIGNAL \inst4|inst|inst6~0_combout\ : std_logic;
SIGNAL \inst4|inst1|inst6~0_combout\ : std_logic;
SIGNAL \Sb~input_o\ : std_logic;
SIGNAL \inst|inst4~0_combout\ : std_logic;
SIGNAL \inst5|inst~0_combout\ : std_logic;
SIGNAL \RST~input_o\ : std_logic;
SIGNAL \RST~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst5|inst~q\ : std_logic;
SIGNAL \inst4|inst2|inst1~combout\ : std_logic;
SIGNAL \inst5|inst2~q\ : std_logic;
SIGNAL \inst4|inst1|inst1~combout\ : std_logic;
SIGNAL \inst4|inst|inst~combout\ : std_logic;
SIGNAL \inst4|inst1|ALT_INV_inst1~combout\ : std_logic;
SIGNAL \inst|ALT_INV_inst4~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_inst10~combout\ : std_logic;

BEGIN

ERROR <= ww_ERROR;
ww_Ea <= Ea;
ww_Sa <= Sa;
ww_Eb <= Eb;
ww_Sb <= Sb;
INC <= ww_INC;
ww_CLK <= CLK;
ww_RST <= RST;
POS <= ww_POS;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\RST~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RST~input_o\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\inst4|inst1|ALT_INV_inst1~combout\ <= NOT \inst4|inst1|inst1~combout\;
\inst|ALT_INV_inst4~0_combout\ <= NOT \inst|inst4~0_combout\;
\inst|ALT_INV_inst10~combout\ <= NOT \inst|inst10~combout\;

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

-- Location: IOOBUF_X12_Y0_N2
\ERROR~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_inst10~combout\,
	devoe => ww_devoe,
	o => \ERROR~output_o\);

-- Location: IOOBUF_X12_Y0_N9
\INC[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst2|inst1~combout\,
	devoe => ww_devoe,
	o => \INC[2]~output_o\);

-- Location: IOOBUF_X14_Y31_N2
\INC[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst1|ALT_INV_inst1~combout\,
	devoe => ww_devoe,
	o => \INC[1]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\INC[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst|inst~combout\,
	devoe => ww_devoe,
	o => \INC[0]~output_o\);

-- Location: IOOBUF_X33_Y10_N2
\POS[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_inst4~0_combout\,
	devoe => ww_devoe,
	o => \POS[2]~output_o\);

-- Location: IOOBUF_X10_Y0_N9
\POS[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst11~0_combout\,
	devoe => ww_devoe,
	o => \POS[1]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\POS[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst|inst6~0_combout\,
	devoe => ww_devoe,
	o => \POS[0]~output_o\);

-- Location: IOIBUF_X33_Y10_N8
\Eb~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Eb,
	o => \Eb~input_o\);

-- Location: IOIBUF_X33_Y25_N1
\Ea~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ea,
	o => \Ea~input_o\);

-- Location: LCCOMB_X15_Y10_N8
\inst|inst10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst10~combout\ = (\Eb~input_o\) # (\Ea~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Eb~input_o\,
	datac => \Ea~input_o\,
	combout => \inst|inst10~combout\);

-- Location: IOIBUF_X33_Y16_N22
\Sa~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sa,
	o => \Sa~input_o\);

-- Location: LCCOMB_X15_Y10_N18
\inst|inst11~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst11~0_combout\ = ((\Eb~input_o\ & (\Sb~input_o\ $ (\Sa~input_o\)))) # (!\Ea~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sb~input_o\,
	datab => \Sa~input_o\,
	datac => \Ea~input_o\,
	datad => \Eb~input_o\,
	combout => \inst|inst11~0_combout\);

-- Location: FF_X15_Y10_N19
\inst5|inst1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst1~q\);

-- Location: LCCOMB_X15_Y10_N20
\inst4|inst|inst6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4|inst|inst6~0_combout\ = (\Eb~input_o\ & \Ea~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Eb~input_o\,
	datac => \Ea~input_o\,
	combout => \inst4|inst|inst6~0_combout\);

-- Location: LCCOMB_X15_Y10_N6
\inst4|inst1|inst6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4|inst1|inst6~0_combout\ = (\inst5|inst1~q\ & (\inst|inst11~0_combout\ & ((\inst4|inst|inst6~0_combout\) # (!\inst5|inst2~q\)))) # (!\inst5|inst1~q\ & (((\inst|inst11~0_combout\) # (\inst4|inst|inst6~0_combout\)) # (!\inst5|inst2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst2~q\,
	datab => \inst5|inst1~q\,
	datac => \inst|inst11~0_combout\,
	datad => \inst4|inst|inst6~0_combout\,
	combout => \inst4|inst1|inst6~0_combout\);

-- Location: IOIBUF_X33_Y16_N15
\Sb~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sb,
	o => \Sb~input_o\);

-- Location: LCCOMB_X15_Y10_N26
\inst|inst4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst4~0_combout\ = (\Eb~input_o\ & (\Sb~input_o\)) # (!\Eb~input_o\ & ((\Sa~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Eb~input_o\,
	datac => \Sb~input_o\,
	datad => \Sa~input_o\,
	combout => \inst|inst4~0_combout\);

-- Location: LCCOMB_X15_Y10_N16
\inst5|inst~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5|inst~0_combout\ = !\inst|inst4~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst4~0_combout\,
	combout => \inst5|inst~0_combout\);

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

-- Location: FF_X15_Y10_N17
\inst5|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst~0_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst~q\);

-- Location: LCCOMB_X15_Y10_N12
\inst4|inst2|inst1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4|inst2|inst1~combout\ = \inst4|inst1|inst6~0_combout\ $ (\inst5|inst~q\ $ (\inst|inst4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|inst6~0_combout\,
	datab => \inst5|inst~q\,
	datac => \inst|inst4~0_combout\,
	combout => \inst4|inst2|inst1~combout\);

-- Location: FF_X15_Y10_N21
\inst5|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst4|inst|inst6~0_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst2~q\);

-- Location: LCCOMB_X15_Y10_N14
\inst4|inst1|inst1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4|inst1|inst1~combout\ = \inst5|inst1~q\ $ (\inst|inst11~0_combout\ $ (((\inst4|inst|inst6~0_combout\) # (!\inst5|inst2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001101101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst2~q\,
	datab => \inst5|inst1~q\,
	datac => \inst|inst11~0_combout\,
	datad => \inst4|inst|inst6~0_combout\,
	combout => \inst4|inst1|inst1~combout\);

-- Location: LCCOMB_X15_Y10_N24
\inst4|inst|inst\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4|inst|inst~combout\ = \inst5|inst2~q\ $ (((\Ea~input_o\ & \Eb~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst2~q\,
	datac => \Ea~input_o\,
	datad => \Eb~input_o\,
	combout => \inst4|inst|inst~combout\);

ww_ERROR <= \ERROR~output_o\;

ww_INC(2) <= \INC[2]~output_o\;

ww_INC(1) <= \INC[1]~output_o\;

ww_INC(0) <= \INC[0]~output_o\;

ww_POS(2) <= \POS[2]~output_o\;

ww_POS(1) <= \POS[1]~output_o\;

ww_POS(0) <= \POS[0]~output_o\;
END structure;


