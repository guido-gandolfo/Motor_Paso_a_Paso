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

-- DATE "08/04/2018 08:45:16"

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

ENTITY 	encoder IS
    PORT (
	ERRORPOSICION : OUT std_logic;
	Ea : IN std_logic;
	Eb : IN std_logic;
	PASOACTUAL : OUT std_logic_vector(2 DOWNTO 0);
	Sb : IN std_logic;
	Sa : IN std_logic
	);
END encoder;

-- Design Ports Information
-- ERRORPOSICION	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PASOACTUAL[2]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PASOACTUAL[1]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PASOACTUAL[0]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ea	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Eb	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sb	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sa	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF encoder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ERRORPOSICION : std_logic;
SIGNAL ww_Ea : std_logic;
SIGNAL ww_Eb : std_logic;
SIGNAL ww_PASOACTUAL : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Sb : std_logic;
SIGNAL ww_Sa : std_logic;
SIGNAL \ERRORPOSICION~output_o\ : std_logic;
SIGNAL \PASOACTUAL[2]~output_o\ : std_logic;
SIGNAL \PASOACTUAL[1]~output_o\ : std_logic;
SIGNAL \PASOACTUAL[0]~output_o\ : std_logic;
SIGNAL \Ea~input_o\ : std_logic;
SIGNAL \Eb~input_o\ : std_logic;
SIGNAL \inst10~combout\ : std_logic;
SIGNAL \Sa~input_o\ : std_logic;
SIGNAL \Sb~input_o\ : std_logic;
SIGNAL \inst4~0_combout\ : std_logic;
SIGNAL \inst11~0_combout\ : std_logic;
SIGNAL \inst9~combout\ : std_logic;
SIGNAL \ALT_INV_inst4~0_combout\ : std_logic;
SIGNAL \ALT_INV_inst10~combout\ : std_logic;

BEGIN

ERRORPOSICION <= ww_ERRORPOSICION;
ww_Ea <= Ea;
ww_Eb <= Eb;
PASOACTUAL <= ww_PASOACTUAL;
ww_Sb <= Sb;
ww_Sa <= Sa;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_inst4~0_combout\ <= NOT \inst4~0_combout\;
\ALT_INV_inst10~combout\ <= NOT \inst10~combout\;

-- Location: IOOBUF_X10_Y0_N9
\ERRORPOSICION~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst10~combout\,
	devoe => ww_devoe,
	o => \ERRORPOSICION~output_o\);

-- Location: IOOBUF_X12_Y0_N9
\PASOACTUAL[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst4~0_combout\,
	devoe => ww_devoe,
	o => \PASOACTUAL[2]~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\PASOACTUAL[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11~0_combout\,
	devoe => ww_devoe,
	o => \PASOACTUAL[1]~output_o\);

-- Location: IOOBUF_X8_Y0_N2
\PASOACTUAL[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9~combout\,
	devoe => ww_devoe,
	o => \PASOACTUAL[0]~output_o\);

-- Location: IOIBUF_X12_Y31_N1
\Ea~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ea,
	o => \Ea~input_o\);

-- Location: IOIBUF_X14_Y0_N8
\Eb~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Eb,
	o => \Eb~input_o\);

-- Location: LCCOMB_X12_Y1_N24
inst10 : cycloneiv_lcell_comb
-- Equation(s):
-- \inst10~combout\ = (\Ea~input_o\) # (\Eb~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Ea~input_o\,
	datad => \Eb~input_o\,
	combout => \inst10~combout\);

-- Location: IOIBUF_X12_Y0_N1
\Sa~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sa,
	o => \Sa~input_o\);

-- Location: IOIBUF_X8_Y0_N8
\Sb~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sb,
	o => \Sb~input_o\);

-- Location: LCCOMB_X12_Y1_N10
\inst4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4~0_combout\ = (\Eb~input_o\ & ((\Sb~input_o\))) # (!\Eb~input_o\ & (\Sa~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sa~input_o\,
	datab => \Sb~input_o\,
	datad => \Eb~input_o\,
	combout => \inst4~0_combout\);

-- Location: LCCOMB_X12_Y1_N4
\inst11~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst11~0_combout\ = ((\Eb~input_o\ & (\Sa~input_o\ $ (\Sb~input_o\)))) # (!\Ea~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sa~input_o\,
	datab => \Sb~input_o\,
	datac => \Ea~input_o\,
	datad => \Eb~input_o\,
	combout => \inst11~0_combout\);

-- Location: LCCOMB_X12_Y1_N22
inst9 : cycloneiv_lcell_comb
-- Equation(s):
-- \inst9~combout\ = (\Ea~input_o\ & \Eb~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Ea~input_o\,
	datad => \Eb~input_o\,
	combout => \inst9~combout\);

ww_ERRORPOSICION <= \ERRORPOSICION~output_o\;

ww_PASOACTUAL(2) <= \PASOACTUAL[2]~output_o\;

ww_PASOACTUAL(1) <= \PASOACTUAL[1]~output_o\;

ww_PASOACTUAL(0) <= \PASOACTUAL[0]~output_o\;
END structure;


