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

-- DATE "08/29/2022 22:37:39"

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

ENTITY 	cont_4 IS
    PORT (
	RST : IN std_logic;
	CLK : IN std_logic;
	Q : BUFFER std_logic_vector(3 DOWNTO 0);
	EN : IN std_logic;
	CLR : IN std_logic;
	LD : IN std_logic;
	LOAD : IN std_logic_vector(3 DOWNTO 0)
	);
END cont_4;

-- Design Ports Information
-- Q[0]	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[1]	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[2]	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[3]	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LOAD[0]	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LD	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLR	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EN	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LOAD[1]	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LOAD[2]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LOAD[3]	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF cont_4 IS
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
SIGNAL ww_Q : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_EN : std_logic;
SIGNAL ww_CLR : std_logic;
SIGNAL ww_LD : std_logic;
SIGNAL ww_LOAD : std_logic_vector(3 DOWNTO 0);
SIGNAL \RST~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Q[0]~output_o\ : std_logic;
SIGNAL \Q[1]~output_o\ : std_logic;
SIGNAL \Q[2]~output_o\ : std_logic;
SIGNAL \Q[3]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \CLR~input_o\ : std_logic;
SIGNAL \LD~input_o\ : std_logic;
SIGNAL \LOAD[0]~input_o\ : std_logic;
SIGNAL \CONT~0_combout\ : std_logic;
SIGNAL \RST~input_o\ : std_logic;
SIGNAL \RST~inputclkctrl_outclk\ : std_logic;
SIGNAL \EN~input_o\ : std_logic;
SIGNAL \CONT[0]~1_combout\ : std_logic;
SIGNAL \LOAD[1]~input_o\ : std_logic;
SIGNAL \CONT~2_combout\ : std_logic;
SIGNAL \CONT~3_combout\ : std_logic;
SIGNAL \LOAD[2]~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \CONT~4_combout\ : std_logic;
SIGNAL \LOAD[3]~input_o\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \CONT~5_combout\ : std_logic;
SIGNAL CONT : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_RST~inputclkctrl_outclk\ : std_logic;

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
ww_LD <= LD;
ww_LOAD <= LOAD;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\RST~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RST~input_o\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\ALT_INV_RST~inputclkctrl_outclk\ <= NOT \RST~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y6_N16
\Q[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => CONT(0),
	devoe => ww_devoe,
	o => \Q[0]~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\Q[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => CONT(1),
	devoe => ww_devoe,
	o => \Q[1]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\Q[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => CONT(2),
	devoe => ww_devoe,
	o => \Q[2]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\Q[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => CONT(3),
	devoe => ww_devoe,
	o => \Q[3]~output_o\);

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

-- Location: IOIBUF_X34_Y12_N1
\LD~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LD,
	o => \LD~input_o\);

-- Location: IOIBUF_X34_Y12_N8
\LOAD[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LOAD(0),
	o => \LOAD[0]~input_o\);

-- Location: LCCOMB_X1_Y8_N28
\CONT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONT~0_combout\ = (!\CLR~input_o\ & ((\LD~input_o\ & ((\LOAD[0]~input_o\))) # (!\LD~input_o\ & (!CONT(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLR~input_o\,
	datab => \LD~input_o\,
	datac => CONT(0),
	datad => \LOAD[0]~input_o\,
	combout => \CONT~0_combout\);

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

-- Location: IOIBUF_X0_Y7_N1
\EN~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EN,
	o => \EN~input_o\);

-- Location: LCCOMB_X1_Y8_N16
\CONT[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONT[0]~1_combout\ = (\EN~input_o\) # (\CLR~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \EN~input_o\,
	datad => \CLR~input_o\,
	combout => \CONT[0]~1_combout\);

-- Location: FF_X1_Y8_N29
\CONT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CONT~0_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \CONT[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CONT(0));

-- Location: IOIBUF_X0_Y8_N15
\LOAD[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LOAD(1),
	o => \LOAD[1]~input_o\);

-- Location: LCCOMB_X1_Y8_N18
\CONT~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONT~2_combout\ = (!\CLR~input_o\ & (!\LD~input_o\ & (CONT(1) $ (CONT(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLR~input_o\,
	datab => \LD~input_o\,
	datac => CONT(1),
	datad => CONT(0),
	combout => \CONT~2_combout\);

-- Location: LCCOMB_X1_Y8_N22
\CONT~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONT~3_combout\ = (\CONT~2_combout\) # ((\LOAD[1]~input_o\ & (\LD~input_o\ & !\CLR~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LOAD[1]~input_o\,
	datab => \LD~input_o\,
	datac => \CLR~input_o\,
	datad => \CONT~2_combout\,
	combout => \CONT~3_combout\);

-- Location: FF_X1_Y8_N23
\CONT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CONT~3_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \CONT[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CONT(1));

-- Location: IOIBUF_X1_Y0_N15
\LOAD[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LOAD(2),
	o => \LOAD[2]~input_o\);

-- Location: LCCOMB_X1_Y8_N24
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = CONT(2) $ (((CONT(1) & CONT(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => CONT(2),
	datac => CONT(1),
	datad => CONT(0),
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X1_Y8_N8
\CONT~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONT~4_combout\ = (!\CLR~input_o\ & ((\LD~input_o\ & (\LOAD[2]~input_o\)) # (!\LD~input_o\ & ((\Add0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLR~input_o\,
	datab => \LD~input_o\,
	datac => \LOAD[2]~input_o\,
	datad => \Add0~0_combout\,
	combout => \CONT~4_combout\);

-- Location: FF_X1_Y8_N9
\CONT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CONT~4_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \CONT[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CONT(2));

-- Location: IOIBUF_X0_Y6_N22
\LOAD[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LOAD(3),
	o => \LOAD[3]~input_o\);

-- Location: LCCOMB_X1_Y8_N10
\Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = CONT(3) $ (((CONT(1) & (CONT(2) & CONT(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CONT(1),
	datab => CONT(2),
	datac => CONT(3),
	datad => CONT(0),
	combout => \Add0~1_combout\);

-- Location: LCCOMB_X1_Y8_N30
\CONT~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONT~5_combout\ = (!\CLR~input_o\ & ((\LD~input_o\ & (\LOAD[3]~input_o\)) # (!\LD~input_o\ & ((\Add0~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLR~input_o\,
	datab => \LD~input_o\,
	datac => \LOAD[3]~input_o\,
	datad => \Add0~1_combout\,
	combout => \CONT~5_combout\);

-- Location: FF_X1_Y8_N31
\CONT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CONT~5_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \CONT[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CONT(3));

ww_Q(0) <= \Q[0]~output_o\;

ww_Q(1) <= \Q[1]~output_o\;

ww_Q(2) <= \Q[2]~output_o\;

ww_Q(3) <= \Q[3]~output_o\;
END structure;


