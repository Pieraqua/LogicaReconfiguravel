-- Copyright (C) 2022  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 21.1.1 Build 850 06/23/2022 SJ Lite Edition"

-- DATE "08/30/2022 20:36:12"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	cont_57 IS
    PORT (
	RST : IN std_logic;
	CLK : IN std_logic;
	Q : BUFFER std_logic_vector(7 DOWNTO 0);
	EN : IN std_logic;
	CLR : IN std_logic
	);
END cont_57;

-- Design Ports Information
-- Q[0]	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[1]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[2]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[3]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[4]	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[5]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[6]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[7]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EN	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLR	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF cont_57 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_RST : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_Q : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_EN : std_logic;
SIGNAL ww_CLR : std_logic;
SIGNAL \RST~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Q[0]~output_o\ : std_logic;
SIGNAL \Q[1]~output_o\ : std_logic;
SIGNAL \Q[2]~output_o\ : std_logic;
SIGNAL \Q[3]~output_o\ : std_logic;
SIGNAL \Q[4]~output_o\ : std_logic;
SIGNAL \Q[5]~output_o\ : std_logic;
SIGNAL \Q[6]~output_o\ : std_logic;
SIGNAL \Q[7]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \EN~input_o\ : std_logic;
SIGNAL \CLR~input_o\ : std_logic;
SIGNAL \LSB|CONT[1]~2_combout\ : std_logic;
SIGNAL \MSB|CONT[0]~0_combout\ : std_logic;
SIGNAL \RST~input_o\ : std_logic;
SIGNAL \RST~inputclkctrl_outclk\ : std_logic;
SIGNAL \LSB|CONT[2]~4_combout\ : std_logic;
SIGNAL \LSB|CONT[2]~5_combout\ : std_logic;
SIGNAL \LSB|Add0~0_combout\ : std_logic;
SIGNAL \LSB|CONT[3]~6_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \clear~combout\ : std_logic;
SIGNAL \LSB|CONT[1]~3_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \MSB|CONT[1]~1_combout\ : std_logic;
SIGNAL \MSB|Add0~0_combout\ : std_logic;
SIGNAL \MSB|CONT[2]~2_combout\ : std_logic;
SIGNAL \MSB|Add0~1_combout\ : std_logic;
SIGNAL \MSB|CONT[3]~3_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \LSB|CONT[0]~0_combout\ : std_logic;
SIGNAL \LSB|CONT[0]~1_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \LSB|CONT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MSB|CONT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_RST~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \LSB|ALT_INV_CONT\ : std_logic_vector(2 DOWNTO 2);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_RST <= RST;
ww_CLK <= CLK;
Q <= ww_Q;
ww_EN <= EN;
ww_CLR <= CLR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\RST~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RST~input_o\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\ALT_INV_RST~inputclkctrl_outclk\ <= NOT \RST~inputclkctrl_outclk\;
\ALT_INV_Add0~0_combout\ <= NOT \Add0~0_combout\;
\LSB|ALT_INV_CONT\(2) <= NOT \LSB|CONT\(2);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X3_Y0_N2
\Q[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LSB|CONT\(0),
	devoe => ww_devoe,
	o => \Q[0]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\Q[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LSB|CONT\(1),
	devoe => ww_devoe,
	o => \Q[1]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\Q[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LSB|ALT_INV_CONT\(2),
	devoe => ww_devoe,
	o => \Q[2]~output_o\);

-- Location: IOOBUF_X13_Y0_N2
\Q[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Add0~0_combout\,
	devoe => ww_devoe,
	o => \Q[3]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\Q[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MSB|CONT\(0),
	devoe => ww_devoe,
	o => \Q[4]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\Q[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MSB|CONT\(1),
	devoe => ww_devoe,
	o => \Q[5]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\Q[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MSB|CONT\(2),
	devoe => ww_devoe,
	o => \Q[6]~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\Q[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MSB|CONT\(3),
	devoe => ww_devoe,
	o => \Q[7]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G2
\CLK~inputclkctrl\ : cycloneive_clkctrl
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

-- Location: IOIBUF_X16_Y0_N1
\EN~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EN,
	o => \EN~input_o\);

-- Location: IOIBUF_X1_Y0_N22
\CLR~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLR,
	o => \CLR~input_o\);

-- Location: LCCOMB_X5_Y1_N14
\LSB|CONT[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LSB|CONT[1]~2_combout\ = \LSB|CONT\(1) $ (((\EN~input_o\ & \LSB|CONT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EN~input_o\,
	datab => \LSB|CONT\(0),
	datad => \LSB|CONT\(1),
	combout => \LSB|CONT[1]~2_combout\);

-- Location: LCCOMB_X5_Y1_N0
\MSB|CONT[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSB|CONT[0]~0_combout\ = (!\clear~combout\ & (\Equal1~0_combout\ $ (!\MSB|CONT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datac => \MSB|CONT\(0),
	datad => \clear~combout\,
	combout => \MSB|CONT[0]~0_combout\);

-- Location: IOIBUF_X0_Y11_N15
\RST~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RST,
	o => \RST~input_o\);

-- Location: CLKCTRL_G4
\RST~inputclkctrl\ : cycloneive_clkctrl
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

-- Location: FF_X5_Y1_N1
\MSB|CONT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \MSB|CONT[0]~0_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MSB|CONT\(0));

-- Location: LCCOMB_X4_Y1_N14
\LSB|CONT[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LSB|CONT[2]~4_combout\ = (\EN~input_o\ & (((\LSB|CONT\(1) & \LSB|CONT\(0))))) # (!\EN~input_o\ & (\CLR~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EN~input_o\,
	datab => \CLR~input_o\,
	datac => \LSB|CONT\(1),
	datad => \LSB|CONT\(0),
	combout => \LSB|CONT[2]~4_combout\);

-- Location: LCCOMB_X5_Y1_N8
\LSB|CONT[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LSB|CONT[2]~5_combout\ = (\EN~input_o\ & (!\clear~combout\ & (\LSB|CONT[2]~4_combout\ $ (\LSB|CONT\(2))))) # (!\EN~input_o\ & (!\LSB|CONT[2]~4_combout\ & (\LSB|CONT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LSB|CONT[2]~4_combout\,
	datab => \EN~input_o\,
	datac => \LSB|CONT\(2),
	datad => \clear~combout\,
	combout => \LSB|CONT[2]~5_combout\);

-- Location: FF_X5_Y1_N9
\LSB|CONT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \LSB|CONT[2]~5_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LSB|CONT\(2));

-- Location: LCCOMB_X5_Y1_N20
\LSB|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LSB|Add0~0_combout\ = \LSB|CONT\(3) $ (((\LSB|CONT\(1) & (\LSB|CONT\(2) & \LSB|CONT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LSB|CONT\(1),
	datab => \LSB|CONT\(2),
	datac => \LSB|CONT\(3),
	datad => \LSB|CONT\(0),
	combout => \LSB|Add0~0_combout\);

-- Location: LCCOMB_X5_Y1_N2
\LSB|CONT[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LSB|CONT[3]~6_combout\ = (!\clear~combout\ & ((\EN~input_o\ & (\LSB|Add0~0_combout\)) # (!\EN~input_o\ & ((\LSB|CONT\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EN~input_o\,
	datab => \LSB|Add0~0_combout\,
	datac => \LSB|CONT\(3),
	datad => \clear~combout\,
	combout => \LSB|CONT[3]~6_combout\);

-- Location: FF_X5_Y1_N3
\LSB|CONT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \LSB|CONT[3]~6_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LSB|CONT\(3));

-- Location: LCCOMB_X5_Y1_N24
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\LSB|CONT\(1) & (!\LSB|CONT\(2) & \LSB|CONT\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LSB|CONT\(1),
	datac => \LSB|CONT\(2),
	datad => \LSB|CONT\(3),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X5_Y1_N12
clear : cycloneive_lcell_comb
-- Equation(s):
-- \clear~combout\ = (\CLR~input_o\) # ((!\MSB|CONT\(0) & (\Equal0~1_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLR~input_o\,
	datab => \MSB|CONT\(0),
	datac => \Equal0~1_combout\,
	datad => \Equal0~0_combout\,
	combout => \clear~combout\);

-- Location: LCCOMB_X5_Y1_N10
\LSB|CONT[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LSB|CONT[1]~3_combout\ = (\LSB|CONT[1]~2_combout\ & ((\EN~input_o\ & ((!\clear~combout\))) # (!\EN~input_o\ & (!\CLR~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EN~input_o\,
	datab => \CLR~input_o\,
	datac => \LSB|CONT[1]~2_combout\,
	datad => \clear~combout\,
	combout => \LSB|CONT[1]~3_combout\);

-- Location: FF_X5_Y1_N11
\LSB|CONT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \LSB|CONT[1]~3_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LSB|CONT\(1));

-- Location: LCCOMB_X5_Y1_N30
\Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = ((\LSB|CONT\(2)) # ((\LSB|CONT\(3)) # (!\LSB|CONT\(0)))) # (!\LSB|CONT\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LSB|CONT\(1),
	datab => \LSB|CONT\(2),
	datac => \LSB|CONT\(3),
	datad => \LSB|CONT\(0),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X5_Y1_N26
\MSB|CONT[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSB|CONT[1]~1_combout\ = (!\clear~combout\ & (\MSB|CONT\(1) $ (((!\Equal1~0_combout\ & \MSB|CONT\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \MSB|CONT\(0),
	datac => \MSB|CONT\(1),
	datad => \clear~combout\,
	combout => \MSB|CONT[1]~1_combout\);

-- Location: FF_X5_Y1_N27
\MSB|CONT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \MSB|CONT[1]~1_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MSB|CONT\(1));

-- Location: LCCOMB_X5_Y1_N28
\MSB|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSB|Add0~0_combout\ = \MSB|CONT\(2) $ (((\MSB|CONT\(1) & \MSB|CONT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSB|CONT\(1),
	datac => \MSB|CONT\(0),
	datad => \MSB|CONT\(2),
	combout => \MSB|Add0~0_combout\);

-- Location: LCCOMB_X5_Y1_N4
\MSB|CONT[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSB|CONT[2]~2_combout\ = (!\clear~combout\ & ((\Equal1~0_combout\ & ((\MSB|CONT\(2)))) # (!\Equal1~0_combout\ & (\MSB|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \MSB|Add0~0_combout\,
	datac => \MSB|CONT\(2),
	datad => \clear~combout\,
	combout => \MSB|CONT[2]~2_combout\);

-- Location: FF_X5_Y1_N5
\MSB|CONT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \MSB|CONT[2]~2_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MSB|CONT\(2));

-- Location: LCCOMB_X5_Y1_N18
\MSB|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSB|Add0~1_combout\ = \MSB|CONT\(3) $ (((\MSB|CONT\(1) & (\MSB|CONT\(0) & \MSB|CONT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSB|CONT\(1),
	datab => \MSB|CONT\(0),
	datac => \MSB|CONT\(3),
	datad => \MSB|CONT\(2),
	combout => \MSB|Add0~1_combout\);

-- Location: LCCOMB_X5_Y1_N6
\MSB|CONT[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSB|CONT[3]~3_combout\ = (!\clear~combout\ & ((\Equal1~0_combout\ & ((\MSB|CONT\(3)))) # (!\Equal1~0_combout\ & (\MSB|Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \MSB|Add0~1_combout\,
	datac => \MSB|CONT\(3),
	datad => \clear~combout\,
	combout => \MSB|CONT[3]~3_combout\);

-- Location: FF_X5_Y1_N7
\MSB|CONT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \MSB|CONT[3]~3_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MSB|CONT\(3));

-- Location: LCCOMB_X5_Y1_N22
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\MSB|CONT\(1) & (!\LSB|CONT\(0) & (\MSB|CONT\(2) & !\MSB|CONT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSB|CONT\(1),
	datab => \LSB|CONT\(0),
	datac => \MSB|CONT\(2),
	datad => \MSB|CONT\(3),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X4_Y1_N24
\LSB|CONT[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LSB|CONT[0]~0_combout\ = (\CLR~input_o\) # (\EN~input_o\ $ (!\LSB|CONT\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EN~input_o\,
	datac => \CLR~input_o\,
	datad => \LSB|CONT\(0),
	combout => \LSB|CONT[0]~0_combout\);

-- Location: LCCOMB_X5_Y1_N16
\LSB|CONT[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LSB|CONT[0]~1_combout\ = (!\LSB|CONT[0]~0_combout\ & (((\MSB|CONT\(0)) # (!\Equal0~0_combout\)) # (!\Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~0_combout\,
	datac => \MSB|CONT\(0),
	datad => \LSB|CONT[0]~0_combout\,
	combout => \LSB|CONT[0]~1_combout\);

-- Location: FF_X5_Y1_N17
\LSB|CONT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \LSB|CONT[0]~1_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LSB|CONT\(0));

-- Location: LCCOMB_X6_Y1_N24
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \LSB|CONT\(3) $ (\LSB|CONT\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LSB|CONT\(3),
	datad => \LSB|CONT\(2),
	combout => \Add0~0_combout\);

ww_Q(0) <= \Q[0]~output_o\;

ww_Q(1) <= \Q[1]~output_o\;

ww_Q(2) <= \Q[2]~output_o\;

ww_Q(3) <= \Q[3]~output_o\;

ww_Q(4) <= \Q[4]~output_o\;

ww_Q(5) <= \Q[5]~output_o\;

ww_Q(6) <= \Q[6]~output_o\;

ww_Q(7) <= \Q[7]~output_o\;
END structure;


