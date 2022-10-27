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

-- DATE "10/26/2022 21:09:08"

-- 
-- Device: Altera 10CL025YU256I7G Package UFBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY CYCLONE10LP;
LIBRARY IEEE;
USE CYCLONE10LP.CYCLONE10LP_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


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
LIBRARY CYCLONE10LP;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONE10LP.CYCLONE10LP_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	USERHW_NIOS IS
    PORT (
	RST : IN std_logic;
	CLK : IN std_logic;
	READDATA : BUFFER std_logic_vector(31 DOWNTO 0);
	WRITEDATA : IN std_logic_vector(31 DOWNTO 0);
	WRITE_EN : IN std_logic;
	READ_EN : IN std_logic;
	CS : IN std_logic;
	ADD : IN std_logic_vector(1 DOWNTO 0)
	);
END USERHW_NIOS;

-- Design Ports Information
-- READDATA[0]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READDATA[1]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READDATA[2]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READDATA[3]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READDATA[4]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READDATA[5]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READDATA[6]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READDATA[7]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READDATA[8]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READDATA[9]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READDATA[10]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READDATA[11]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READDATA[12]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READDATA[13]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READDATA[14]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READDATA[15]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READDATA[16]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READDATA[17]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READDATA[18]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READDATA[19]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READDATA[20]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READDATA[21]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READDATA[22]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READDATA[23]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READDATA[24]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READDATA[25]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READDATA[26]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READDATA[27]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READDATA[28]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READDATA[29]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READDATA[30]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READDATA[31]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRITEDATA[16]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRITEDATA[17]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRITEDATA[18]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRITEDATA[19]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRITEDATA[20]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRITEDATA[21]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRITEDATA[22]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRITEDATA[23]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRITEDATA[24]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRITEDATA[25]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRITEDATA[26]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRITEDATA[27]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRITEDATA[28]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRITEDATA[29]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRITEDATA[30]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRITEDATA[31]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READ_EN	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CS	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRITEDATA[15]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRITE_EN	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADD[0]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADD[1]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRITEDATA[14]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRITEDATA[0]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRITEDATA[13]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRITEDATA[1]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRITEDATA[2]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRITEDATA[3]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRITEDATA[4]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRITEDATA[5]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRITEDATA[6]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRITEDATA[7]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRITEDATA[8]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRITEDATA[9]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRITEDATA[10]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRITEDATA[11]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRITEDATA[12]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF USERHW_NIOS IS
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
SIGNAL ww_READDATA : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_WRITEDATA : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_WRITE_EN : std_logic;
SIGNAL ww_READ_EN : std_logic;
SIGNAL ww_CS : std_logic;
SIGNAL ww_ADD : std_logic_vector(1 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a48_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a48_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a48_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a40_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a40_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a40_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a32_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a32_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a32_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a56_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a56_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a56_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a16_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a16_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a24_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a24_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a24_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a49_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a49_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a49_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a41_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a41_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a41_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a33_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a33_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a33_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a57_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a57_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a57_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a9_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a17_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a17_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a17_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a1_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a25_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a25_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a25_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a50_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a50_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a50_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a42_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a42_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a42_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a34_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a34_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a34_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a58_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a58_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a58_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a10_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a18_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a18_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a26_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a26_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a26_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a51_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a51_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a51_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a43_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a43_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a43_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a35_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a35_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a35_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a59_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a59_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a59_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a11_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a19_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a19_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a19_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a3_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a27_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a27_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a27_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a52_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a52_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a52_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a44_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a44_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a44_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a36_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a36_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a36_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a60_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a60_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a60_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a20_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a20_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a28_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a28_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a28_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a53_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a53_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a53_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a45_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a45_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a45_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a37_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a37_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a37_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a61_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a61_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a61_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a13_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a13_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a13_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a21_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a21_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a21_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a5_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a29_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a29_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a29_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a54_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a54_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a54_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a46_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a46_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a46_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a38_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a38_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a38_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a62_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a62_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a62_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a22_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a22_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a22_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a30_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a30_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a30_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a55_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a55_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a55_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a47_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a47_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a47_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a39_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a39_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a39_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a63_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a63_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a63_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a15_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a15_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a15_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a23_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a23_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a23_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a7_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a31_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a31_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a31_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RST~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \WRITEDATA[16]~input_o\ : std_logic;
SIGNAL \WRITEDATA[17]~input_o\ : std_logic;
SIGNAL \WRITEDATA[18]~input_o\ : std_logic;
SIGNAL \WRITEDATA[19]~input_o\ : std_logic;
SIGNAL \WRITEDATA[20]~input_o\ : std_logic;
SIGNAL \WRITEDATA[21]~input_o\ : std_logic;
SIGNAL \WRITEDATA[22]~input_o\ : std_logic;
SIGNAL \WRITEDATA[23]~input_o\ : std_logic;
SIGNAL \WRITEDATA[24]~input_o\ : std_logic;
SIGNAL \WRITEDATA[25]~input_o\ : std_logic;
SIGNAL \WRITEDATA[26]~input_o\ : std_logic;
SIGNAL \WRITEDATA[27]~input_o\ : std_logic;
SIGNAL \WRITEDATA[28]~input_o\ : std_logic;
SIGNAL \WRITEDATA[29]~input_o\ : std_logic;
SIGNAL \WRITEDATA[30]~input_o\ : std_logic;
SIGNAL \WRITEDATA[31]~input_o\ : std_logic;
SIGNAL \READDATA[0]~output_o\ : std_logic;
SIGNAL \READDATA[1]~output_o\ : std_logic;
SIGNAL \READDATA[2]~output_o\ : std_logic;
SIGNAL \READDATA[3]~output_o\ : std_logic;
SIGNAL \READDATA[4]~output_o\ : std_logic;
SIGNAL \READDATA[5]~output_o\ : std_logic;
SIGNAL \READDATA[6]~output_o\ : std_logic;
SIGNAL \READDATA[7]~output_o\ : std_logic;
SIGNAL \READDATA[8]~output_o\ : std_logic;
SIGNAL \READDATA[9]~output_o\ : std_logic;
SIGNAL \READDATA[10]~output_o\ : std_logic;
SIGNAL \READDATA[11]~output_o\ : std_logic;
SIGNAL \READDATA[12]~output_o\ : std_logic;
SIGNAL \READDATA[13]~output_o\ : std_logic;
SIGNAL \READDATA[14]~output_o\ : std_logic;
SIGNAL \READDATA[15]~output_o\ : std_logic;
SIGNAL \READDATA[16]~output_o\ : std_logic;
SIGNAL \READDATA[17]~output_o\ : std_logic;
SIGNAL \READDATA[18]~output_o\ : std_logic;
SIGNAL \READDATA[19]~output_o\ : std_logic;
SIGNAL \READDATA[20]~output_o\ : std_logic;
SIGNAL \READDATA[21]~output_o\ : std_logic;
SIGNAL \READDATA[22]~output_o\ : std_logic;
SIGNAL \READDATA[23]~output_o\ : std_logic;
SIGNAL \READDATA[24]~output_o\ : std_logic;
SIGNAL \READDATA[25]~output_o\ : std_logic;
SIGNAL \READDATA[26]~output_o\ : std_logic;
SIGNAL \READDATA[27]~output_o\ : std_logic;
SIGNAL \READDATA[28]~output_o\ : std_logic;
SIGNAL \READDATA[29]~output_o\ : std_logic;
SIGNAL \READDATA[30]~output_o\ : std_logic;
SIGNAL \READDATA[31]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \WRITEDATA[15]~input_o\ : std_logic;
SIGNAL \RST~input_o\ : std_logic;
SIGNAL \RST~inputclkctrl_outclk\ : std_logic;
SIGNAL \WRITE_EN~input_o\ : std_logic;
SIGNAL \CS~input_o\ : std_logic;
SIGNAL \ADD[0]~input_o\ : std_logic;
SIGNAL \ADD[1]~input_o\ : std_logic;
SIGNAL \WE_REG0~combout\ : std_logic;
SIGNAL \WRITEDATA[14]~input_o\ : std_logic;
SIGNAL \WRITEDATA[0]~input_o\ : std_logic;
SIGNAL \REG32_2|READDATA~0_combout\ : std_logic;
SIGNAL \REG32_2|READDATA~1_combout\ : std_logic;
SIGNAL \WRITEDATA[13]~input_o\ : std_logic;
SIGNAL \WRITEDATA[1]~input_o\ : std_logic;
SIGNAL \REG32_2|READDATA~2_combout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|wren_a_store~q\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|rden_a_store~q\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|_~0_combout\ : std_logic;
SIGNAL \REG32_1|READDATA[0]~feeder_combout\ : std_logic;
SIGNAL \WE_REG1~0_combout\ : std_logic;
SIGNAL \REG32_0|READDATA[0]~feeder_combout\ : std_logic;
SIGNAL \REG32_0|READDATA[1]~feeder_combout\ : std_logic;
SIGNAL \WRITEDATA[2]~input_o\ : std_logic;
SIGNAL \WRITEDATA[3]~input_o\ : std_logic;
SIGNAL \REG32_0|READDATA[3]~feeder_combout\ : std_logic;
SIGNAL \WRITEDATA[4]~input_o\ : std_logic;
SIGNAL \REG32_0|READDATA[4]~feeder_combout\ : std_logic;
SIGNAL \WRITEDATA[5]~input_o\ : std_logic;
SIGNAL \REG32_0|READDATA[5]~feeder_combout\ : std_logic;
SIGNAL \WRITEDATA[6]~input_o\ : std_logic;
SIGNAL \WRITEDATA[7]~input_o\ : std_logic;
SIGNAL \WRITEDATA[8]~input_o\ : std_logic;
SIGNAL \REG32_0|READDATA[8]~feeder_combout\ : std_logic;
SIGNAL \WRITEDATA[9]~input_o\ : std_logic;
SIGNAL \WRITEDATA[10]~input_o\ : std_logic;
SIGNAL \REG32_0|READDATA[10]~feeder_combout\ : std_logic;
SIGNAL \WRITEDATA[11]~input_o\ : std_logic;
SIGNAL \WRITEDATA[12]~input_o\ : std_logic;
SIGNAL \REG32_0|READDATA[12]~feeder_combout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a48~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|address_reg_a[1]~feeder_combout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|out_address_reg_a[1]~feeder_combout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a56~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a40~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|address_reg_a[0]~feeder_combout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|out_address_reg_a[0]~feeder_combout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a32~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|mux2|_~0_combout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|mux2|_~1_combout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a16~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|mux2|_~2_combout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a8~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a24~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|mux2|_~3_combout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|address_reg_a[2]~feeder_combout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|mux2|_~4_combout\ : std_logic;
SIGNAL \READ_EN~input_o\ : std_logic;
SIGNAL \READDATA~32_combout\ : std_logic;
SIGNAL \REG32_1|READDATA[1]~feeder_combout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a41~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a33~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|mux2|_~5_combout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a49~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a57~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|mux2|_~6_combout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a9~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a25~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a17~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a1~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|mux2|_~7_combout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|mux2|_~8_combout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|mux2|_~9_combout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a2~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a18~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|mux2|_~12_combout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a10~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a26~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|mux2|_~13_combout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a50~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a42~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a34~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|mux2|_~10_combout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a58~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|mux2|_~11_combout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|mux2|_~14_combout\ : std_logic;
SIGNAL \REG32_1|READDATA[3]~feeder_combout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a59~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a51~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a43~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a35~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|mux2|_~15_combout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|mux2|_~16_combout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a3~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a19~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|mux2|_~17_combout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a11~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a27~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|mux2|_~18_combout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|mux2|_~19_combout\ : std_logic;
SIGNAL \REG32_1|READDATA[4]~feeder_combout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a4~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a20~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|mux2|_~22_combout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a28~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a12~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|mux2|_~23_combout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a36~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a44~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|mux2|_~20_combout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a52~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a60~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|mux2|_~21_combout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|mux2|_~24_combout\ : std_logic;
SIGNAL \REG32_1|READDATA[5]~feeder_combout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a13~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a21~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a5~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|mux2|_~27_combout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a29~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|mux2|_~28_combout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a53~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a37~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a45~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|mux2|_~25_combout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a61~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|mux2|_~26_combout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|mux2|_~29_combout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a14~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a30~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a6~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a22~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|mux2|_~32_combout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|mux2|_~33_combout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a54~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a62~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a38~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a46~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|mux2|_~30_combout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|mux2|_~31_combout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|mux2|_~34_combout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a31~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a23~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a7~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|mux2|_~37_combout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a15~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|mux2|_~38_combout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a47~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a39~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|mux2|_~35_combout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a63~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a55~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|mux2|_~36_combout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|mux2|_~39_combout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \REG32_0|READDATA\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|rden_decode|w_anode491w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG32_2|READDATA\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|rden_decode|w_anode501w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode501w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode461w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG32_1|READDATA\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|address_reg_a\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode491w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode481w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|rden_decode|w_anode481w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode511w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode434w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|rden_decode|w_anode511w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode451w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|rden_decode|w_anode451w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|rden_decode|w_anode461w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|rden_decode|w_anode434w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode471w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|rden_decode|w_anode471w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_RST~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_READDATA~32_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_RST <= RST;
ww_CLK <= CLK;
READDATA <= ww_READDATA;
ww_WRITEDATA <= WRITEDATA;
ww_WRITE_EN <= WRITE_EN;
ww_READ_EN <= READ_EN;
ww_CS <= CS;
ww_ADD <= ADD;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\RAM_inst|altsyncram_component|auto_generated|ram_block1a48_PORTADATAIN_bus\(0) <= \REG32_1|READDATA\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a48_PORTAADDR_bus\ <= (\REG32_0|READDATA\(12) & \REG32_0|READDATA\(11) & \REG32_0|READDATA\(10) & \REG32_0|READDATA\(9) & \REG32_0|READDATA\(8) & \REG32_0|READDATA\(7) & 
\REG32_0|READDATA\(6) & \REG32_0|READDATA\(5) & \REG32_0|READDATA\(4) & \REG32_0|READDATA\(3) & \REG32_0|READDATA\(2) & \REG32_0|READDATA\(1) & \REG32_0|READDATA\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a48~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a48_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a40_PORTADATAIN_bus\(0) <= \REG32_1|READDATA\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a40_PORTAADDR_bus\ <= (\REG32_0|READDATA\(12) & \REG32_0|READDATA\(11) & \REG32_0|READDATA\(10) & \REG32_0|READDATA\(9) & \REG32_0|READDATA\(8) & \REG32_0|READDATA\(7) & 
\REG32_0|READDATA\(6) & \REG32_0|READDATA\(5) & \REG32_0|READDATA\(4) & \REG32_0|READDATA\(3) & \REG32_0|READDATA\(2) & \REG32_0|READDATA\(1) & \REG32_0|READDATA\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a40~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a40_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a32_PORTADATAIN_bus\(0) <= \REG32_1|READDATA\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a32_PORTAADDR_bus\ <= (\REG32_0|READDATA\(12) & \REG32_0|READDATA\(11) & \REG32_0|READDATA\(10) & \REG32_0|READDATA\(9) & \REG32_0|READDATA\(8) & \REG32_0|READDATA\(7) & 
\REG32_0|READDATA\(6) & \REG32_0|READDATA\(5) & \REG32_0|READDATA\(4) & \REG32_0|READDATA\(3) & \REG32_0|READDATA\(2) & \REG32_0|READDATA\(1) & \REG32_0|READDATA\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a32~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a32_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a56_PORTADATAIN_bus\(0) <= \REG32_1|READDATA\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a56_PORTAADDR_bus\ <= (\REG32_0|READDATA\(12) & \REG32_0|READDATA\(11) & \REG32_0|READDATA\(10) & \REG32_0|READDATA\(9) & \REG32_0|READDATA\(8) & \REG32_0|READDATA\(7) & 
\REG32_0|READDATA\(6) & \REG32_0|READDATA\(5) & \REG32_0|READDATA\(4) & \REG32_0|READDATA\(3) & \REG32_0|READDATA\(2) & \REG32_0|READDATA\(1) & \REG32_0|READDATA\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a56~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a56_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\(0) <= \REG32_1|READDATA\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\REG32_0|READDATA\(12) & \REG32_0|READDATA\(11) & \REG32_0|READDATA\(10) & \REG32_0|READDATA\(9) & \REG32_0|READDATA\(8) & \REG32_0|READDATA\(7) & 
\REG32_0|READDATA\(6) & \REG32_0|READDATA\(5) & \REG32_0|READDATA\(4) & \REG32_0|READDATA\(3) & \REG32_0|READDATA\(2) & \REG32_0|READDATA\(1) & \REG32_0|READDATA\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a8~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a16_PORTADATAIN_bus\(0) <= \REG32_1|READDATA\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a16_PORTAADDR_bus\ <= (\REG32_0|READDATA\(12) & \REG32_0|READDATA\(11) & \REG32_0|READDATA\(10) & \REG32_0|READDATA\(9) & \REG32_0|READDATA\(8) & \REG32_0|READDATA\(7) & 
\REG32_0|READDATA\(6) & \REG32_0|READDATA\(5) & \REG32_0|READDATA\(4) & \REG32_0|READDATA\(3) & \REG32_0|READDATA\(2) & \REG32_0|READDATA\(1) & \REG32_0|READDATA\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a16~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\(0) <= \REG32_1|READDATA\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\REG32_0|READDATA\(12) & \REG32_0|READDATA\(11) & \REG32_0|READDATA\(10) & \REG32_0|READDATA\(9) & \REG32_0|READDATA\(8) & \REG32_0|READDATA\(7) & 
\REG32_0|READDATA\(6) & \REG32_0|READDATA\(5) & \REG32_0|READDATA\(4) & \REG32_0|READDATA\(3) & \REG32_0|READDATA\(2) & \REG32_0|READDATA\(1) & \REG32_0|READDATA\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a0~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a24_PORTADATAIN_bus\(0) <= \REG32_1|READDATA\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a24_PORTAADDR_bus\ <= (\REG32_0|READDATA\(12) & \REG32_0|READDATA\(11) & \REG32_0|READDATA\(10) & \REG32_0|READDATA\(9) & \REG32_0|READDATA\(8) & \REG32_0|READDATA\(7) & 
\REG32_0|READDATA\(6) & \REG32_0|READDATA\(5) & \REG32_0|READDATA\(4) & \REG32_0|READDATA\(3) & \REG32_0|READDATA\(2) & \REG32_0|READDATA\(1) & \REG32_0|READDATA\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a24~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a24_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a49_PORTADATAIN_bus\(0) <= \REG32_1|READDATA\(1);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a49_PORTAADDR_bus\ <= (\REG32_0|READDATA\(12) & \REG32_0|READDATA\(11) & \REG32_0|READDATA\(10) & \REG32_0|READDATA\(9) & \REG32_0|READDATA\(8) & \REG32_0|READDATA\(7) & 
\REG32_0|READDATA\(6) & \REG32_0|READDATA\(5) & \REG32_0|READDATA\(4) & \REG32_0|READDATA\(3) & \REG32_0|READDATA\(2) & \REG32_0|READDATA\(1) & \REG32_0|READDATA\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a49~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a49_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a41_PORTADATAIN_bus\(0) <= \REG32_1|READDATA\(1);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a41_PORTAADDR_bus\ <= (\REG32_0|READDATA\(12) & \REG32_0|READDATA\(11) & \REG32_0|READDATA\(10) & \REG32_0|READDATA\(9) & \REG32_0|READDATA\(8) & \REG32_0|READDATA\(7) & 
\REG32_0|READDATA\(6) & \REG32_0|READDATA\(5) & \REG32_0|READDATA\(4) & \REG32_0|READDATA\(3) & \REG32_0|READDATA\(2) & \REG32_0|READDATA\(1) & \REG32_0|READDATA\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a41~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a41_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a33_PORTADATAIN_bus\(0) <= \REG32_1|READDATA\(1);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a33_PORTAADDR_bus\ <= (\REG32_0|READDATA\(12) & \REG32_0|READDATA\(11) & \REG32_0|READDATA\(10) & \REG32_0|READDATA\(9) & \REG32_0|READDATA\(8) & \REG32_0|READDATA\(7) & 
\REG32_0|READDATA\(6) & \REG32_0|READDATA\(5) & \REG32_0|READDATA\(4) & \REG32_0|READDATA\(3) & \REG32_0|READDATA\(2) & \REG32_0|READDATA\(1) & \REG32_0|READDATA\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a33~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a33_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a57_PORTADATAIN_bus\(0) <= \REG32_1|READDATA\(1);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a57_PORTAADDR_bus\ <= (\REG32_0|READDATA\(12) & \REG32_0|READDATA\(11) & \REG32_0|READDATA\(10) & \REG32_0|READDATA\(9) & \REG32_0|READDATA\(8) & \REG32_0|READDATA\(7) & 
\REG32_0|READDATA\(6) & \REG32_0|READDATA\(5) & \REG32_0|READDATA\(4) & \REG32_0|READDATA\(3) & \REG32_0|READDATA\(2) & \REG32_0|READDATA\(1) & \REG32_0|READDATA\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a57~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a57_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a9_PORTADATAIN_bus\(0) <= \REG32_1|READDATA\(1);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\ <= (\REG32_0|READDATA\(12) & \REG32_0|READDATA\(11) & \REG32_0|READDATA\(10) & \REG32_0|READDATA\(9) & \REG32_0|READDATA\(8) & \REG32_0|READDATA\(7) & 
\REG32_0|READDATA\(6) & \REG32_0|READDATA\(5) & \REG32_0|READDATA\(4) & \REG32_0|READDATA\(3) & \REG32_0|READDATA\(2) & \REG32_0|READDATA\(1) & \REG32_0|READDATA\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a9~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a17_PORTADATAIN_bus\(0) <= \REG32_1|READDATA\(1);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a17_PORTAADDR_bus\ <= (\REG32_0|READDATA\(12) & \REG32_0|READDATA\(11) & \REG32_0|READDATA\(10) & \REG32_0|READDATA\(9) & \REG32_0|READDATA\(8) & \REG32_0|READDATA\(7) & 
\REG32_0|READDATA\(6) & \REG32_0|READDATA\(5) & \REG32_0|READDATA\(4) & \REG32_0|READDATA\(3) & \REG32_0|READDATA\(2) & \REG32_0|READDATA\(1) & \REG32_0|READDATA\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a17~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a17_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a1_PORTADATAIN_bus\(0) <= \REG32_1|READDATA\(1);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\REG32_0|READDATA\(12) & \REG32_0|READDATA\(11) & \REG32_0|READDATA\(10) & \REG32_0|READDATA\(9) & \REG32_0|READDATA\(8) & \REG32_0|READDATA\(7) & 
\REG32_0|READDATA\(6) & \REG32_0|READDATA\(5) & \REG32_0|READDATA\(4) & \REG32_0|READDATA\(3) & \REG32_0|READDATA\(2) & \REG32_0|READDATA\(1) & \REG32_0|READDATA\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a1~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a25_PORTADATAIN_bus\(0) <= \REG32_1|READDATA\(1);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a25_PORTAADDR_bus\ <= (\REG32_0|READDATA\(12) & \REG32_0|READDATA\(11) & \REG32_0|READDATA\(10) & \REG32_0|READDATA\(9) & \REG32_0|READDATA\(8) & \REG32_0|READDATA\(7) & 
\REG32_0|READDATA\(6) & \REG32_0|READDATA\(5) & \REG32_0|READDATA\(4) & \REG32_0|READDATA\(3) & \REG32_0|READDATA\(2) & \REG32_0|READDATA\(1) & \REG32_0|READDATA\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a25~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a25_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a50_PORTADATAIN_bus\(0) <= \REG32_1|READDATA\(2);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a50_PORTAADDR_bus\ <= (\REG32_0|READDATA\(12) & \REG32_0|READDATA\(11) & \REG32_0|READDATA\(10) & \REG32_0|READDATA\(9) & \REG32_0|READDATA\(8) & \REG32_0|READDATA\(7) & 
\REG32_0|READDATA\(6) & \REG32_0|READDATA\(5) & \REG32_0|READDATA\(4) & \REG32_0|READDATA\(3) & \REG32_0|READDATA\(2) & \REG32_0|READDATA\(1) & \REG32_0|READDATA\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a50~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a50_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a42_PORTADATAIN_bus\(0) <= \REG32_1|READDATA\(2);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a42_PORTAADDR_bus\ <= (\REG32_0|READDATA\(12) & \REG32_0|READDATA\(11) & \REG32_0|READDATA\(10) & \REG32_0|READDATA\(9) & \REG32_0|READDATA\(8) & \REG32_0|READDATA\(7) & 
\REG32_0|READDATA\(6) & \REG32_0|READDATA\(5) & \REG32_0|READDATA\(4) & \REG32_0|READDATA\(3) & \REG32_0|READDATA\(2) & \REG32_0|READDATA\(1) & \REG32_0|READDATA\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a42~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a42_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a34_PORTADATAIN_bus\(0) <= \REG32_1|READDATA\(2);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a34_PORTAADDR_bus\ <= (\REG32_0|READDATA\(12) & \REG32_0|READDATA\(11) & \REG32_0|READDATA\(10) & \REG32_0|READDATA\(9) & \REG32_0|READDATA\(8) & \REG32_0|READDATA\(7) & 
\REG32_0|READDATA\(6) & \REG32_0|READDATA\(5) & \REG32_0|READDATA\(4) & \REG32_0|READDATA\(3) & \REG32_0|READDATA\(2) & \REG32_0|READDATA\(1) & \REG32_0|READDATA\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a34~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a34_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a58_PORTADATAIN_bus\(0) <= \REG32_1|READDATA\(2);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a58_PORTAADDR_bus\ <= (\REG32_0|READDATA\(12) & \REG32_0|READDATA\(11) & \REG32_0|READDATA\(10) & \REG32_0|READDATA\(9) & \REG32_0|READDATA\(8) & \REG32_0|READDATA\(7) & 
\REG32_0|READDATA\(6) & \REG32_0|READDATA\(5) & \REG32_0|READDATA\(4) & \REG32_0|READDATA\(3) & \REG32_0|READDATA\(2) & \REG32_0|READDATA\(1) & \REG32_0|READDATA\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a58~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a58_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a10_PORTADATAIN_bus\(0) <= \REG32_1|READDATA\(2);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\REG32_0|READDATA\(12) & \REG32_0|READDATA\(11) & \REG32_0|READDATA\(10) & \REG32_0|READDATA\(9) & \REG32_0|READDATA\(8) & \REG32_0|READDATA\(7) & 
\REG32_0|READDATA\(6) & \REG32_0|READDATA\(5) & \REG32_0|READDATA\(4) & \REG32_0|READDATA\(3) & \REG32_0|READDATA\(2) & \REG32_0|READDATA\(1) & \REG32_0|READDATA\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a10~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a18_PORTADATAIN_bus\(0) <= \REG32_1|READDATA\(2);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a18_PORTAADDR_bus\ <= (\REG32_0|READDATA\(12) & \REG32_0|READDATA\(11) & \REG32_0|READDATA\(10) & \REG32_0|READDATA\(9) & \REG32_0|READDATA\(8) & \REG32_0|READDATA\(7) & 
\REG32_0|READDATA\(6) & \REG32_0|READDATA\(5) & \REG32_0|READDATA\(4) & \REG32_0|READDATA\(3) & \REG32_0|READDATA\(2) & \REG32_0|READDATA\(1) & \REG32_0|READDATA\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a18~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\(0) <= \REG32_1|READDATA\(2);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\REG32_0|READDATA\(12) & \REG32_0|READDATA\(11) & \REG32_0|READDATA\(10) & \REG32_0|READDATA\(9) & \REG32_0|READDATA\(8) & \REG32_0|READDATA\(7) & 
\REG32_0|READDATA\(6) & \REG32_0|READDATA\(5) & \REG32_0|READDATA\(4) & \REG32_0|READDATA\(3) & \REG32_0|READDATA\(2) & \REG32_0|READDATA\(1) & \REG32_0|READDATA\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a2~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a26_PORTADATAIN_bus\(0) <= \REG32_1|READDATA\(2);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a26_PORTAADDR_bus\ <= (\REG32_0|READDATA\(12) & \REG32_0|READDATA\(11) & \REG32_0|READDATA\(10) & \REG32_0|READDATA\(9) & \REG32_0|READDATA\(8) & \REG32_0|READDATA\(7) & 
\REG32_0|READDATA\(6) & \REG32_0|READDATA\(5) & \REG32_0|READDATA\(4) & \REG32_0|READDATA\(3) & \REG32_0|READDATA\(2) & \REG32_0|READDATA\(1) & \REG32_0|READDATA\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a26~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a26_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a51_PORTADATAIN_bus\(0) <= \REG32_1|READDATA\(3);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a51_PORTAADDR_bus\ <= (\REG32_0|READDATA\(12) & \REG32_0|READDATA\(11) & \REG32_0|READDATA\(10) & \REG32_0|READDATA\(9) & \REG32_0|READDATA\(8) & \REG32_0|READDATA\(7) & 
\REG32_0|READDATA\(6) & \REG32_0|READDATA\(5) & \REG32_0|READDATA\(4) & \REG32_0|READDATA\(3) & \REG32_0|READDATA\(2) & \REG32_0|READDATA\(1) & \REG32_0|READDATA\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a51~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a51_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a43_PORTADATAIN_bus\(0) <= \REG32_1|READDATA\(3);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a43_PORTAADDR_bus\ <= (\REG32_0|READDATA\(12) & \REG32_0|READDATA\(11) & \REG32_0|READDATA\(10) & \REG32_0|READDATA\(9) & \REG32_0|READDATA\(8) & \REG32_0|READDATA\(7) & 
\REG32_0|READDATA\(6) & \REG32_0|READDATA\(5) & \REG32_0|READDATA\(4) & \REG32_0|READDATA\(3) & \REG32_0|READDATA\(2) & \REG32_0|READDATA\(1) & \REG32_0|READDATA\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a43~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a43_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a35_PORTADATAIN_bus\(0) <= \REG32_1|READDATA\(3);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a35_PORTAADDR_bus\ <= (\REG32_0|READDATA\(12) & \REG32_0|READDATA\(11) & \REG32_0|READDATA\(10) & \REG32_0|READDATA\(9) & \REG32_0|READDATA\(8) & \REG32_0|READDATA\(7) & 
\REG32_0|READDATA\(6) & \REG32_0|READDATA\(5) & \REG32_0|READDATA\(4) & \REG32_0|READDATA\(3) & \REG32_0|READDATA\(2) & \REG32_0|READDATA\(1) & \REG32_0|READDATA\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a35~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a35_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a59_PORTADATAIN_bus\(0) <= \REG32_1|READDATA\(3);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a59_PORTAADDR_bus\ <= (\REG32_0|READDATA\(12) & \REG32_0|READDATA\(11) & \REG32_0|READDATA\(10) & \REG32_0|READDATA\(9) & \REG32_0|READDATA\(8) & \REG32_0|READDATA\(7) & 
\REG32_0|READDATA\(6) & \REG32_0|READDATA\(5) & \REG32_0|READDATA\(4) & \REG32_0|READDATA\(3) & \REG32_0|READDATA\(2) & \REG32_0|READDATA\(1) & \REG32_0|READDATA\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a59~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a59_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a11_PORTADATAIN_bus\(0) <= \REG32_1|READDATA\(3);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\ <= (\REG32_0|READDATA\(12) & \REG32_0|READDATA\(11) & \REG32_0|READDATA\(10) & \REG32_0|READDATA\(9) & \REG32_0|READDATA\(8) & \REG32_0|READDATA\(7) & 
\REG32_0|READDATA\(6) & \REG32_0|READDATA\(5) & \REG32_0|READDATA\(4) & \REG32_0|READDATA\(3) & \REG32_0|READDATA\(2) & \REG32_0|READDATA\(1) & \REG32_0|READDATA\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a11~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a19_PORTADATAIN_bus\(0) <= \REG32_1|READDATA\(3);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a19_PORTAADDR_bus\ <= (\REG32_0|READDATA\(12) & \REG32_0|READDATA\(11) & \REG32_0|READDATA\(10) & \REG32_0|READDATA\(9) & \REG32_0|READDATA\(8) & \REG32_0|READDATA\(7) & 
\REG32_0|READDATA\(6) & \REG32_0|READDATA\(5) & \REG32_0|READDATA\(4) & \REG32_0|READDATA\(3) & \REG32_0|READDATA\(2) & \REG32_0|READDATA\(1) & \REG32_0|READDATA\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a19~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a19_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a3_PORTADATAIN_bus\(0) <= \REG32_1|READDATA\(3);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\REG32_0|READDATA\(12) & \REG32_0|READDATA\(11) & \REG32_0|READDATA\(10) & \REG32_0|READDATA\(9) & \REG32_0|READDATA\(8) & \REG32_0|READDATA\(7) & 
\REG32_0|READDATA\(6) & \REG32_0|READDATA\(5) & \REG32_0|READDATA\(4) & \REG32_0|READDATA\(3) & \REG32_0|READDATA\(2) & \REG32_0|READDATA\(1) & \REG32_0|READDATA\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a3~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a27_PORTADATAIN_bus\(0) <= \REG32_1|READDATA\(3);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a27_PORTAADDR_bus\ <= (\REG32_0|READDATA\(12) & \REG32_0|READDATA\(11) & \REG32_0|READDATA\(10) & \REG32_0|READDATA\(9) & \REG32_0|READDATA\(8) & \REG32_0|READDATA\(7) & 
\REG32_0|READDATA\(6) & \REG32_0|READDATA\(5) & \REG32_0|READDATA\(4) & \REG32_0|READDATA\(3) & \REG32_0|READDATA\(2) & \REG32_0|READDATA\(1) & \REG32_0|READDATA\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a27~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a27_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a52_PORTADATAIN_bus\(0) <= \REG32_1|READDATA\(4);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a52_PORTAADDR_bus\ <= (\REG32_0|READDATA\(12) & \REG32_0|READDATA\(11) & \REG32_0|READDATA\(10) & \REG32_0|READDATA\(9) & \REG32_0|READDATA\(8) & \REG32_0|READDATA\(7) & 
\REG32_0|READDATA\(6) & \REG32_0|READDATA\(5) & \REG32_0|READDATA\(4) & \REG32_0|READDATA\(3) & \REG32_0|READDATA\(2) & \REG32_0|READDATA\(1) & \REG32_0|READDATA\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a52~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a52_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a44_PORTADATAIN_bus\(0) <= \REG32_1|READDATA\(4);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a44_PORTAADDR_bus\ <= (\REG32_0|READDATA\(12) & \REG32_0|READDATA\(11) & \REG32_0|READDATA\(10) & \REG32_0|READDATA\(9) & \REG32_0|READDATA\(8) & \REG32_0|READDATA\(7) & 
\REG32_0|READDATA\(6) & \REG32_0|READDATA\(5) & \REG32_0|READDATA\(4) & \REG32_0|READDATA\(3) & \REG32_0|READDATA\(2) & \REG32_0|READDATA\(1) & \REG32_0|READDATA\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a44~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a44_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a36_PORTADATAIN_bus\(0) <= \REG32_1|READDATA\(4);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a36_PORTAADDR_bus\ <= (\REG32_0|READDATA\(12) & \REG32_0|READDATA\(11) & \REG32_0|READDATA\(10) & \REG32_0|READDATA\(9) & \REG32_0|READDATA\(8) & \REG32_0|READDATA\(7) & 
\REG32_0|READDATA\(6) & \REG32_0|READDATA\(5) & \REG32_0|READDATA\(4) & \REG32_0|READDATA\(3) & \REG32_0|READDATA\(2) & \REG32_0|READDATA\(1) & \REG32_0|READDATA\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a36~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a36_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a60_PORTADATAIN_bus\(0) <= \REG32_1|READDATA\(4);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a60_PORTAADDR_bus\ <= (\REG32_0|READDATA\(12) & \REG32_0|READDATA\(11) & \REG32_0|READDATA\(10) & \REG32_0|READDATA\(9) & \REG32_0|READDATA\(8) & \REG32_0|READDATA\(7) & 
\REG32_0|READDATA\(6) & \REG32_0|READDATA\(5) & \REG32_0|READDATA\(4) & \REG32_0|READDATA\(3) & \REG32_0|READDATA\(2) & \REG32_0|READDATA\(1) & \REG32_0|READDATA\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a60~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a60_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\(0) <= \REG32_1|READDATA\(4);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\ <= (\REG32_0|READDATA\(12) & \REG32_0|READDATA\(11) & \REG32_0|READDATA\(10) & \REG32_0|READDATA\(9) & \REG32_0|READDATA\(8) & \REG32_0|READDATA\(7) & 
\REG32_0|READDATA\(6) & \REG32_0|READDATA\(5) & \REG32_0|READDATA\(4) & \REG32_0|READDATA\(3) & \REG32_0|READDATA\(2) & \REG32_0|READDATA\(1) & \REG32_0|READDATA\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a12~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a20_PORTADATAIN_bus\(0) <= \REG32_1|READDATA\(4);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a20_PORTAADDR_bus\ <= (\REG32_0|READDATA\(12) & \REG32_0|READDATA\(11) & \REG32_0|READDATA\(10) & \REG32_0|READDATA\(9) & \REG32_0|READDATA\(8) & \REG32_0|READDATA\(7) & 
\REG32_0|READDATA\(6) & \REG32_0|READDATA\(5) & \REG32_0|READDATA\(4) & \REG32_0|READDATA\(3) & \REG32_0|READDATA\(2) & \REG32_0|READDATA\(1) & \REG32_0|READDATA\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a20~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\(0) <= \REG32_1|READDATA\(4);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\REG32_0|READDATA\(12) & \REG32_0|READDATA\(11) & \REG32_0|READDATA\(10) & \REG32_0|READDATA\(9) & \REG32_0|READDATA\(8) & \REG32_0|READDATA\(7) & 
\REG32_0|READDATA\(6) & \REG32_0|READDATA\(5) & \REG32_0|READDATA\(4) & \REG32_0|READDATA\(3) & \REG32_0|READDATA\(2) & \REG32_0|READDATA\(1) & \REG32_0|READDATA\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a4~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a28_PORTADATAIN_bus\(0) <= \REG32_1|READDATA\(4);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a28_PORTAADDR_bus\ <= (\REG32_0|READDATA\(12) & \REG32_0|READDATA\(11) & \REG32_0|READDATA\(10) & \REG32_0|READDATA\(9) & \REG32_0|READDATA\(8) & \REG32_0|READDATA\(7) & 
\REG32_0|READDATA\(6) & \REG32_0|READDATA\(5) & \REG32_0|READDATA\(4) & \REG32_0|READDATA\(3) & \REG32_0|READDATA\(2) & \REG32_0|READDATA\(1) & \REG32_0|READDATA\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a28~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a28_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a53_PORTADATAIN_bus\(0) <= \REG32_1|READDATA\(5);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a53_PORTAADDR_bus\ <= (\REG32_0|READDATA\(12) & \REG32_0|READDATA\(11) & \REG32_0|READDATA\(10) & \REG32_0|READDATA\(9) & \REG32_0|READDATA\(8) & \REG32_0|READDATA\(7) & 
\REG32_0|READDATA\(6) & \REG32_0|READDATA\(5) & \REG32_0|READDATA\(4) & \REG32_0|READDATA\(3) & \REG32_0|READDATA\(2) & \REG32_0|READDATA\(1) & \REG32_0|READDATA\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a53~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a53_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a45_PORTADATAIN_bus\(0) <= \REG32_1|READDATA\(5);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a45_PORTAADDR_bus\ <= (\REG32_0|READDATA\(12) & \REG32_0|READDATA\(11) & \REG32_0|READDATA\(10) & \REG32_0|READDATA\(9) & \REG32_0|READDATA\(8) & \REG32_0|READDATA\(7) & 
\REG32_0|READDATA\(6) & \REG32_0|READDATA\(5) & \REG32_0|READDATA\(4) & \REG32_0|READDATA\(3) & \REG32_0|READDATA\(2) & \REG32_0|READDATA\(1) & \REG32_0|READDATA\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a45~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a45_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a37_PORTADATAIN_bus\(0) <= \REG32_1|READDATA\(5);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a37_PORTAADDR_bus\ <= (\REG32_0|READDATA\(12) & \REG32_0|READDATA\(11) & \REG32_0|READDATA\(10) & \REG32_0|READDATA\(9) & \REG32_0|READDATA\(8) & \REG32_0|READDATA\(7) & 
\REG32_0|READDATA\(6) & \REG32_0|READDATA\(5) & \REG32_0|READDATA\(4) & \REG32_0|READDATA\(3) & \REG32_0|READDATA\(2) & \REG32_0|READDATA\(1) & \REG32_0|READDATA\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a37~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a37_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a61_PORTADATAIN_bus\(0) <= \REG32_1|READDATA\(5);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a61_PORTAADDR_bus\ <= (\REG32_0|READDATA\(12) & \REG32_0|READDATA\(11) & \REG32_0|READDATA\(10) & \REG32_0|READDATA\(9) & \REG32_0|READDATA\(8) & \REG32_0|READDATA\(7) & 
\REG32_0|READDATA\(6) & \REG32_0|READDATA\(5) & \REG32_0|READDATA\(4) & \REG32_0|READDATA\(3) & \REG32_0|READDATA\(2) & \REG32_0|READDATA\(1) & \REG32_0|READDATA\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a61~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a61_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a13_PORTADATAIN_bus\(0) <= \REG32_1|READDATA\(5);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a13_PORTAADDR_bus\ <= (\REG32_0|READDATA\(12) & \REG32_0|READDATA\(11) & \REG32_0|READDATA\(10) & \REG32_0|READDATA\(9) & \REG32_0|READDATA\(8) & \REG32_0|READDATA\(7) & 
\REG32_0|READDATA\(6) & \REG32_0|READDATA\(5) & \REG32_0|READDATA\(4) & \REG32_0|READDATA\(3) & \REG32_0|READDATA\(2) & \REG32_0|READDATA\(1) & \REG32_0|READDATA\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a13~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a13_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a21_PORTADATAIN_bus\(0) <= \REG32_1|READDATA\(5);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a21_PORTAADDR_bus\ <= (\REG32_0|READDATA\(12) & \REG32_0|READDATA\(11) & \REG32_0|READDATA\(10) & \REG32_0|READDATA\(9) & \REG32_0|READDATA\(8) & \REG32_0|READDATA\(7) & 
\REG32_0|READDATA\(6) & \REG32_0|READDATA\(5) & \REG32_0|READDATA\(4) & \REG32_0|READDATA\(3) & \REG32_0|READDATA\(2) & \REG32_0|READDATA\(1) & \REG32_0|READDATA\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a21~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a21_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a5_PORTADATAIN_bus\(0) <= \REG32_1|READDATA\(5);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\REG32_0|READDATA\(12) & \REG32_0|READDATA\(11) & \REG32_0|READDATA\(10) & \REG32_0|READDATA\(9) & \REG32_0|READDATA\(8) & \REG32_0|READDATA\(7) & 
\REG32_0|READDATA\(6) & \REG32_0|READDATA\(5) & \REG32_0|READDATA\(4) & \REG32_0|READDATA\(3) & \REG32_0|READDATA\(2) & \REG32_0|READDATA\(1) & \REG32_0|READDATA\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a5~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a29_PORTADATAIN_bus\(0) <= \REG32_1|READDATA\(5);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a29_PORTAADDR_bus\ <= (\REG32_0|READDATA\(12) & \REG32_0|READDATA\(11) & \REG32_0|READDATA\(10) & \REG32_0|READDATA\(9) & \REG32_0|READDATA\(8) & \REG32_0|READDATA\(7) & 
\REG32_0|READDATA\(6) & \REG32_0|READDATA\(5) & \REG32_0|READDATA\(4) & \REG32_0|READDATA\(3) & \REG32_0|READDATA\(2) & \REG32_0|READDATA\(1) & \REG32_0|READDATA\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a29~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a29_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a54_PORTADATAIN_bus\(0) <= \REG32_1|READDATA\(6);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a54_PORTAADDR_bus\ <= (\REG32_0|READDATA\(12) & \REG32_0|READDATA\(11) & \REG32_0|READDATA\(10) & \REG32_0|READDATA\(9) & \REG32_0|READDATA\(8) & \REG32_0|READDATA\(7) & 
\REG32_0|READDATA\(6) & \REG32_0|READDATA\(5) & \REG32_0|READDATA\(4) & \REG32_0|READDATA\(3) & \REG32_0|READDATA\(2) & \REG32_0|READDATA\(1) & \REG32_0|READDATA\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a54~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a54_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a46_PORTADATAIN_bus\(0) <= \REG32_1|READDATA\(6);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a46_PORTAADDR_bus\ <= (\REG32_0|READDATA\(12) & \REG32_0|READDATA\(11) & \REG32_0|READDATA\(10) & \REG32_0|READDATA\(9) & \REG32_0|READDATA\(8) & \REG32_0|READDATA\(7) & 
\REG32_0|READDATA\(6) & \REG32_0|READDATA\(5) & \REG32_0|READDATA\(4) & \REG32_0|READDATA\(3) & \REG32_0|READDATA\(2) & \REG32_0|READDATA\(1) & \REG32_0|READDATA\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a46~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a46_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a38_PORTADATAIN_bus\(0) <= \REG32_1|READDATA\(6);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a38_PORTAADDR_bus\ <= (\REG32_0|READDATA\(12) & \REG32_0|READDATA\(11) & \REG32_0|READDATA\(10) & \REG32_0|READDATA\(9) & \REG32_0|READDATA\(8) & \REG32_0|READDATA\(7) & 
\REG32_0|READDATA\(6) & \REG32_0|READDATA\(5) & \REG32_0|READDATA\(4) & \REG32_0|READDATA\(3) & \REG32_0|READDATA\(2) & \REG32_0|READDATA\(1) & \REG32_0|READDATA\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a38~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a38_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a62_PORTADATAIN_bus\(0) <= \REG32_1|READDATA\(6);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a62_PORTAADDR_bus\ <= (\REG32_0|READDATA\(12) & \REG32_0|READDATA\(11) & \REG32_0|READDATA\(10) & \REG32_0|READDATA\(9) & \REG32_0|READDATA\(8) & \REG32_0|READDATA\(7) & 
\REG32_0|READDATA\(6) & \REG32_0|READDATA\(5) & \REG32_0|READDATA\(4) & \REG32_0|READDATA\(3) & \REG32_0|READDATA\(2) & \REG32_0|READDATA\(1) & \REG32_0|READDATA\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a62~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a62_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\(0) <= \REG32_1|READDATA\(6);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\REG32_0|READDATA\(12) & \REG32_0|READDATA\(11) & \REG32_0|READDATA\(10) & \REG32_0|READDATA\(9) & \REG32_0|READDATA\(8) & \REG32_0|READDATA\(7) & 
\REG32_0|READDATA\(6) & \REG32_0|READDATA\(5) & \REG32_0|READDATA\(4) & \REG32_0|READDATA\(3) & \REG32_0|READDATA\(2) & \REG32_0|READDATA\(1) & \REG32_0|READDATA\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a14~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a22_PORTADATAIN_bus\(0) <= \REG32_1|READDATA\(6);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a22_PORTAADDR_bus\ <= (\REG32_0|READDATA\(12) & \REG32_0|READDATA\(11) & \REG32_0|READDATA\(10) & \REG32_0|READDATA\(9) & \REG32_0|READDATA\(8) & \REG32_0|READDATA\(7) & 
\REG32_0|READDATA\(6) & \REG32_0|READDATA\(5) & \REG32_0|READDATA\(4) & \REG32_0|READDATA\(3) & \REG32_0|READDATA\(2) & \REG32_0|READDATA\(1) & \REG32_0|READDATA\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a22~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a22_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\(0) <= \REG32_1|READDATA\(6);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\REG32_0|READDATA\(12) & \REG32_0|READDATA\(11) & \REG32_0|READDATA\(10) & \REG32_0|READDATA\(9) & \REG32_0|READDATA\(8) & \REG32_0|READDATA\(7) & 
\REG32_0|READDATA\(6) & \REG32_0|READDATA\(5) & \REG32_0|READDATA\(4) & \REG32_0|READDATA\(3) & \REG32_0|READDATA\(2) & \REG32_0|READDATA\(1) & \REG32_0|READDATA\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a6~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a30_PORTADATAIN_bus\(0) <= \REG32_1|READDATA\(6);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a30_PORTAADDR_bus\ <= (\REG32_0|READDATA\(12) & \REG32_0|READDATA\(11) & \REG32_0|READDATA\(10) & \REG32_0|READDATA\(9) & \REG32_0|READDATA\(8) & \REG32_0|READDATA\(7) & 
\REG32_0|READDATA\(6) & \REG32_0|READDATA\(5) & \REG32_0|READDATA\(4) & \REG32_0|READDATA\(3) & \REG32_0|READDATA\(2) & \REG32_0|READDATA\(1) & \REG32_0|READDATA\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a30~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a30_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a55_PORTADATAIN_bus\(0) <= \REG32_1|READDATA\(7);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a55_PORTAADDR_bus\ <= (\REG32_0|READDATA\(12) & \REG32_0|READDATA\(11) & \REG32_0|READDATA\(10) & \REG32_0|READDATA\(9) & \REG32_0|READDATA\(8) & \REG32_0|READDATA\(7) & 
\REG32_0|READDATA\(6) & \REG32_0|READDATA\(5) & \REG32_0|READDATA\(4) & \REG32_0|READDATA\(3) & \REG32_0|READDATA\(2) & \REG32_0|READDATA\(1) & \REG32_0|READDATA\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a55~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a55_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a47_PORTADATAIN_bus\(0) <= \REG32_1|READDATA\(7);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a47_PORTAADDR_bus\ <= (\REG32_0|READDATA\(12) & \REG32_0|READDATA\(11) & \REG32_0|READDATA\(10) & \REG32_0|READDATA\(9) & \REG32_0|READDATA\(8) & \REG32_0|READDATA\(7) & 
\REG32_0|READDATA\(6) & \REG32_0|READDATA\(5) & \REG32_0|READDATA\(4) & \REG32_0|READDATA\(3) & \REG32_0|READDATA\(2) & \REG32_0|READDATA\(1) & \REG32_0|READDATA\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a47~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a47_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a39_PORTADATAIN_bus\(0) <= \REG32_1|READDATA\(7);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a39_PORTAADDR_bus\ <= (\REG32_0|READDATA\(12) & \REG32_0|READDATA\(11) & \REG32_0|READDATA\(10) & \REG32_0|READDATA\(9) & \REG32_0|READDATA\(8) & \REG32_0|READDATA\(7) & 
\REG32_0|READDATA\(6) & \REG32_0|READDATA\(5) & \REG32_0|READDATA\(4) & \REG32_0|READDATA\(3) & \REG32_0|READDATA\(2) & \REG32_0|READDATA\(1) & \REG32_0|READDATA\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a39~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a39_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a63_PORTADATAIN_bus\(0) <= \REG32_1|READDATA\(7);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a63_PORTAADDR_bus\ <= (\REG32_0|READDATA\(12) & \REG32_0|READDATA\(11) & \REG32_0|READDATA\(10) & \REG32_0|READDATA\(9) & \REG32_0|READDATA\(8) & \REG32_0|READDATA\(7) & 
\REG32_0|READDATA\(6) & \REG32_0|READDATA\(5) & \REG32_0|READDATA\(4) & \REG32_0|READDATA\(3) & \REG32_0|READDATA\(2) & \REG32_0|READDATA\(1) & \REG32_0|READDATA\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a63~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a63_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a15_PORTADATAIN_bus\(0) <= \REG32_1|READDATA\(7);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a15_PORTAADDR_bus\ <= (\REG32_0|READDATA\(12) & \REG32_0|READDATA\(11) & \REG32_0|READDATA\(10) & \REG32_0|READDATA\(9) & \REG32_0|READDATA\(8) & \REG32_0|READDATA\(7) & 
\REG32_0|READDATA\(6) & \REG32_0|READDATA\(5) & \REG32_0|READDATA\(4) & \REG32_0|READDATA\(3) & \REG32_0|READDATA\(2) & \REG32_0|READDATA\(1) & \REG32_0|READDATA\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a15~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a15_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a23_PORTADATAIN_bus\(0) <= \REG32_1|READDATA\(7);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a23_PORTAADDR_bus\ <= (\REG32_0|READDATA\(12) & \REG32_0|READDATA\(11) & \REG32_0|READDATA\(10) & \REG32_0|READDATA\(9) & \REG32_0|READDATA\(8) & \REG32_0|READDATA\(7) & 
\REG32_0|READDATA\(6) & \REG32_0|READDATA\(5) & \REG32_0|READDATA\(4) & \REG32_0|READDATA\(3) & \REG32_0|READDATA\(2) & \REG32_0|READDATA\(1) & \REG32_0|READDATA\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a23~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a23_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a7_PORTADATAIN_bus\(0) <= \REG32_1|READDATA\(7);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\REG32_0|READDATA\(12) & \REG32_0|READDATA\(11) & \REG32_0|READDATA\(10) & \REG32_0|READDATA\(9) & \REG32_0|READDATA\(8) & \REG32_0|READDATA\(7) & 
\REG32_0|READDATA\(6) & \REG32_0|READDATA\(5) & \REG32_0|READDATA\(4) & \REG32_0|READDATA\(3) & \REG32_0|READDATA\(2) & \REG32_0|READDATA\(1) & \REG32_0|READDATA\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a7~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a31_PORTADATAIN_bus\(0) <= \REG32_1|READDATA\(7);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a31_PORTAADDR_bus\ <= (\REG32_0|READDATA\(12) & \REG32_0|READDATA\(11) & \REG32_0|READDATA\(10) & \REG32_0|READDATA\(9) & \REG32_0|READDATA\(8) & \REG32_0|READDATA\(7) & 
\REG32_0|READDATA\(6) & \REG32_0|READDATA\(5) & \REG32_0|READDATA\(4) & \REG32_0|READDATA\(3) & \REG32_0|READDATA\(2) & \REG32_0|READDATA\(1) & \REG32_0|READDATA\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a31~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a31_PORTADATAOUT_bus\(0);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);

\RST~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RST~input_o\);
\ALT_INV_RST~inputclkctrl_outclk\ <= NOT \RST~inputclkctrl_outclk\;
\ALT_INV_READDATA~32_combout\ <= NOT \READDATA~32_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X23_Y34_N16
\READDATA[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM_inst|altsyncram_component|auto_generated|mux2|_~4_combout\,
	oe => \READDATA~32_combout\,
	devoe => ww_devoe,
	o => \READDATA[0]~output_o\);

-- Location: IOOBUF_X18_Y34_N2
\READDATA[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM_inst|altsyncram_component|auto_generated|mux2|_~9_combout\,
	oe => \READDATA~32_combout\,
	devoe => ww_devoe,
	o => \READDATA[1]~output_o\);

-- Location: IOOBUF_X16_Y34_N2
\READDATA[2]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM_inst|altsyncram_component|auto_generated|mux2|_~14_combout\,
	oe => \READDATA~32_combout\,
	devoe => ww_devoe,
	o => \READDATA[2]~output_o\);

-- Location: IOOBUF_X36_Y0_N9
\READDATA[3]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM_inst|altsyncram_component|auto_generated|mux2|_~19_combout\,
	oe => \READDATA~32_combout\,
	devoe => ww_devoe,
	o => \READDATA[3]~output_o\);

-- Location: IOOBUF_X34_Y0_N16
\READDATA[4]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM_inst|altsyncram_component|auto_generated|mux2|_~24_combout\,
	oe => \READDATA~32_combout\,
	devoe => ww_devoe,
	o => \READDATA[4]~output_o\);

-- Location: IOOBUF_X14_Y34_N16
\READDATA[5]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM_inst|altsyncram_component|auto_generated|mux2|_~29_combout\,
	oe => \READDATA~32_combout\,
	devoe => ww_devoe,
	o => \READDATA[5]~output_o\);

-- Location: IOOBUF_X34_Y0_N23
\READDATA[6]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM_inst|altsyncram_component|auto_generated|mux2|_~34_combout\,
	oe => \READDATA~32_combout\,
	devoe => ww_devoe,
	o => \READDATA[6]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\READDATA[7]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM_inst|altsyncram_component|auto_generated|mux2|_~39_combout\,
	oe => \READDATA~32_combout\,
	devoe => ww_devoe,
	o => \READDATA[7]~output_o\);

-- Location: IOOBUF_X43_Y0_N16
\READDATA[8]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_READDATA~32_combout\,
	devoe => ww_devoe,
	o => \READDATA[8]~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\READDATA[9]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_READDATA~32_combout\,
	devoe => ww_devoe,
	o => \READDATA[9]~output_o\);

-- Location: IOOBUF_X18_Y34_N23
\READDATA[10]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_READDATA~32_combout\,
	devoe => ww_devoe,
	o => \READDATA[10]~output_o\);

-- Location: IOOBUF_X23_Y34_N23
\READDATA[11]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_READDATA~32_combout\,
	devoe => ww_devoe,
	o => \READDATA[11]~output_o\);

-- Location: IOOBUF_X14_Y0_N23
\READDATA[12]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_READDATA~32_combout\,
	devoe => ww_devoe,
	o => \READDATA[12]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\READDATA[13]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_READDATA~32_combout\,
	devoe => ww_devoe,
	o => \READDATA[13]~output_o\);

-- Location: IOOBUF_X20_Y34_N16
\READDATA[14]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_READDATA~32_combout\,
	devoe => ww_devoe,
	o => \READDATA[14]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\READDATA[15]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_READDATA~32_combout\,
	devoe => ww_devoe,
	o => \READDATA[15]~output_o\);

-- Location: IOOBUF_X40_Y34_N2
\READDATA[16]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_READDATA~32_combout\,
	devoe => ww_devoe,
	o => \READDATA[16]~output_o\);

-- Location: IOOBUF_X34_Y0_N2
\READDATA[17]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_READDATA~32_combout\,
	devoe => ww_devoe,
	o => \READDATA[17]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\READDATA[18]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_READDATA~32_combout\,
	devoe => ww_devoe,
	o => \READDATA[18]~output_o\);

-- Location: IOOBUF_X14_Y0_N16
\READDATA[19]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_READDATA~32_combout\,
	devoe => ww_devoe,
	o => \READDATA[19]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\READDATA[20]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_READDATA~32_combout\,
	devoe => ww_devoe,
	o => \READDATA[20]~output_o\);

-- Location: IOOBUF_X11_Y34_N2
\READDATA[21]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_READDATA~32_combout\,
	devoe => ww_devoe,
	o => \READDATA[21]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\READDATA[22]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_READDATA~32_combout\,
	devoe => ww_devoe,
	o => \READDATA[22]~output_o\);

-- Location: IOOBUF_X43_Y34_N23
\READDATA[23]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_READDATA~32_combout\,
	devoe => ww_devoe,
	o => \READDATA[23]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\READDATA[24]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_READDATA~32_combout\,
	devoe => ww_devoe,
	o => \READDATA[24]~output_o\);

-- Location: IOOBUF_X43_Y0_N23
\READDATA[25]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_READDATA~32_combout\,
	devoe => ww_devoe,
	o => \READDATA[25]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\READDATA[26]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_READDATA~32_combout\,
	devoe => ww_devoe,
	o => \READDATA[26]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\READDATA[27]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_READDATA~32_combout\,
	devoe => ww_devoe,
	o => \READDATA[27]~output_o\);

-- Location: IOOBUF_X14_Y34_N23
\READDATA[28]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_READDATA~32_combout\,
	devoe => ww_devoe,
	o => \READDATA[28]~output_o\);

-- Location: IOOBUF_X36_Y0_N23
\READDATA[29]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_READDATA~32_combout\,
	devoe => ww_devoe,
	o => \READDATA[29]~output_o\);

-- Location: IOOBUF_X20_Y34_N23
\READDATA[30]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_READDATA~32_combout\,
	devoe => ww_devoe,
	o => \READDATA[30]~output_o\);

-- Location: IOOBUF_X16_Y34_N16
\READDATA[31]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_READDATA~32_combout\,
	devoe => ww_devoe,
	o => \READDATA[31]~output_o\);

-- Location: IOIBUF_X0_Y16_N1
\CLK~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G4
\CLK~inputclkctrl\ : cyclone10lp_clkctrl
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

-- Location: IOIBUF_X20_Y34_N8
\WRITEDATA[15]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITEDATA(15),
	o => \WRITEDATA[15]~input_o\);

-- Location: IOIBUF_X0_Y16_N8
\RST~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RST,
	o => \RST~input_o\);

-- Location: CLKCTRL_G2
\RST~inputclkctrl\ : cyclone10lp_clkctrl
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

-- Location: IOIBUF_X34_Y34_N1
\WRITE_EN~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITE_EN,
	o => \WRITE_EN~input_o\);

-- Location: IOIBUF_X34_Y34_N15
\CS~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CS,
	o => \CS~input_o\);

-- Location: IOIBUF_X53_Y12_N1
\ADD[0]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADD(0),
	o => \ADD[0]~input_o\);

-- Location: IOIBUF_X53_Y22_N1
\ADD[1]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADD(1),
	o => \ADD[1]~input_o\);

-- Location: LCCOMB_X32_Y19_N0
WE_REG0 : cyclone10lp_lcell_comb
-- Equation(s):
-- \WE_REG0~combout\ = (\WRITE_EN~input_o\ & (\CS~input_o\ & (!\ADD[0]~input_o\ & !\ADD[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WRITE_EN~input_o\,
	datab => \CS~input_o\,
	datac => \ADD[0]~input_o\,
	datad => \ADD[1]~input_o\,
	combout => \WE_REG0~combout\);

-- Location: FF_X25_Y19_N13
\REG32_0|READDATA[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \WRITEDATA[15]~input_o\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \WE_REG0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG32_0|READDATA\(15));

-- Location: IOIBUF_X27_Y0_N22
\WRITEDATA[14]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITEDATA(14),
	o => \WRITEDATA[14]~input_o\);

-- Location: FF_X25_Y19_N1
\REG32_0|READDATA[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \WRITEDATA[14]~input_o\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \WE_REG0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG32_0|READDATA\(14));

-- Location: IOIBUF_X27_Y0_N15
\WRITEDATA[0]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITEDATA(0),
	o => \WRITEDATA[0]~input_o\);

-- Location: LCCOMB_X32_Y19_N22
\REG32_2|READDATA~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG32_2|READDATA~0_combout\ = (\WRITE_EN~input_o\ & (\CS~input_o\ & (\ADD[0]~input_o\ & !\ADD[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WRITE_EN~input_o\,
	datab => \CS~input_o\,
	datac => \ADD[0]~input_o\,
	datad => \ADD[1]~input_o\,
	combout => \REG32_2|READDATA~0_combout\);

-- Location: LCCOMB_X26_Y19_N8
\REG32_2|READDATA~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG32_2|READDATA~1_combout\ = (\WRITEDATA[0]~input_o\ & \REG32_2|READDATA~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WRITEDATA[0]~input_o\,
	datad => \REG32_2|READDATA~0_combout\,
	combout => \REG32_2|READDATA~1_combout\);

-- Location: FF_X25_Y19_N27
\REG32_2|READDATA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \REG32_2|READDATA~1_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG32_2|READDATA\(0));

-- Location: IOIBUF_X16_Y34_N8
\WRITEDATA[13]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITEDATA(13),
	o => \WRITEDATA[13]~input_o\);

-- Location: FF_X25_Y19_N9
\REG32_0|READDATA[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \WRITEDATA[13]~input_o\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \WE_REG0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG32_0|READDATA\(13));

-- Location: LCCOMB_X25_Y19_N26
\RAM_inst|altsyncram_component|auto_generated|decode3|w_anode501w[3]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode501w\(3) = (\REG32_0|READDATA\(15) & (\REG32_0|READDATA\(14) & (\REG32_2|READDATA\(0) & !\REG32_0|READDATA\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG32_0|READDATA\(15),
	datab => \REG32_0|READDATA\(14),
	datac => \REG32_2|READDATA\(0),
	datad => \REG32_0|READDATA\(13),
	combout => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode501w\(3));

-- Location: IOIBUF_X0_Y16_N15
\WRITEDATA[1]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITEDATA(1),
	o => \WRITEDATA[1]~input_o\);

-- Location: LCCOMB_X25_Y19_N22
\REG32_2|READDATA~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG32_2|READDATA~2_combout\ = (\WRITEDATA[1]~input_o\ & \REG32_2|READDATA~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WRITEDATA[1]~input_o\,
	datad => \REG32_2|READDATA~0_combout\,
	combout => \REG32_2|READDATA~2_combout\);

-- Location: FF_X25_Y19_N23
\REG32_2|READDATA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \REG32_2|READDATA~2_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG32_2|READDATA\(1));

-- Location: FF_X25_Y19_N25
\RAM_inst|altsyncram_component|auto_generated|wren_a_store\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \REG32_2|READDATA\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|altsyncram_component|auto_generated|wren_a_store~q\);

-- Location: FF_X25_Y19_N3
\RAM_inst|altsyncram_component|auto_generated|rden_a_store\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \REG32_2|READDATA\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|altsyncram_component|auto_generated|rden_a_store~q\);

-- Location: LCCOMB_X25_Y19_N2
\RAM_inst|altsyncram_component|auto_generated|_~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|_~0_combout\ = (\REG32_2|READDATA\(1)) # ((\RAM_inst|altsyncram_component|auto_generated|wren_a_store~q\) # ((\RAM_inst|altsyncram_component|auto_generated|rden_a_store~q\) # (\REG32_2|READDATA\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG32_2|READDATA\(1),
	datab => \RAM_inst|altsyncram_component|auto_generated|wren_a_store~q\,
	datac => \RAM_inst|altsyncram_component|auto_generated|rden_a_store~q\,
	datad => \REG32_2|READDATA\(0),
	combout => \RAM_inst|altsyncram_component|auto_generated|_~0_combout\);

-- Location: LCCOMB_X25_Y19_N14
\RAM_inst|altsyncram_component|auto_generated|rden_decode|w_anode501w[3]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|rden_decode|w_anode501w\(3) = (\REG32_0|READDATA\(15) & (\REG32_0|READDATA\(14) & (!\REG32_0|READDATA\(13) & \RAM_inst|altsyncram_component|auto_generated|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG32_0|READDATA\(15),
	datab => \REG32_0|READDATA\(14),
	datac => \REG32_0|READDATA\(13),
	datad => \RAM_inst|altsyncram_component|auto_generated|_~0_combout\,
	combout => \RAM_inst|altsyncram_component|auto_generated|rden_decode|w_anode501w\(3));

-- Location: LCCOMB_X31_Y20_N16
\REG32_1|READDATA[0]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG32_1|READDATA[0]~feeder_combout\ = \WRITEDATA[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WRITEDATA[0]~input_o\,
	combout => \REG32_1|READDATA[0]~feeder_combout\);

-- Location: LCCOMB_X32_Y19_N12
\WE_REG1~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \WE_REG1~0_combout\ = (\WRITE_EN~input_o\ & (\CS~input_o\ & (!\ADD[0]~input_o\ & \ADD[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WRITE_EN~input_o\,
	datab => \CS~input_o\,
	datac => \ADD[0]~input_o\,
	datad => \ADD[1]~input_o\,
	combout => \WE_REG1~0_combout\);

-- Location: FF_X31_Y20_N17
\REG32_1|READDATA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \REG32_1|READDATA[0]~feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \WE_REG1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG32_1|READDATA\(0));

-- Location: LCCOMB_X31_Y20_N22
\REG32_0|READDATA[0]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG32_0|READDATA[0]~feeder_combout\ = \WRITEDATA[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WRITEDATA[0]~input_o\,
	combout => \REG32_0|READDATA[0]~feeder_combout\);

-- Location: FF_X31_Y20_N23
\REG32_0|READDATA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \REG32_0|READDATA[0]~feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \WE_REG0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG32_0|READDATA\(0));

-- Location: LCCOMB_X27_Y20_N28
\REG32_0|READDATA[1]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG32_0|READDATA[1]~feeder_combout\ = \WRITEDATA[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WRITEDATA[1]~input_o\,
	combout => \REG32_0|READDATA[1]~feeder_combout\);

-- Location: FF_X27_Y20_N29
\REG32_0|READDATA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \REG32_0|READDATA[1]~feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \WE_REG0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG32_0|READDATA\(1));

-- Location: IOIBUF_X0_Y16_N22
\WRITEDATA[2]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITEDATA(2),
	o => \WRITEDATA[2]~input_o\);

-- Location: FF_X32_Y19_N17
\REG32_0|READDATA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \WRITEDATA[2]~input_o\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \WE_REG0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG32_0|READDATA\(2));

-- Location: IOIBUF_X53_Y15_N8
\WRITEDATA[3]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITEDATA(3),
	o => \WRITEDATA[3]~input_o\);

-- Location: LCCOMB_X32_Y19_N2
\REG32_0|READDATA[3]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG32_0|READDATA[3]~feeder_combout\ = \WRITEDATA[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WRITEDATA[3]~input_o\,
	combout => \REG32_0|READDATA[3]~feeder_combout\);

-- Location: FF_X32_Y19_N3
\REG32_0|READDATA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \REG32_0|READDATA[3]~feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \WE_REG0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG32_0|READDATA\(3));

-- Location: IOIBUF_X53_Y22_N8
\WRITEDATA[4]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITEDATA(4),
	o => \WRITEDATA[4]~input_o\);

-- Location: LCCOMB_X32_Y19_N28
\REG32_0|READDATA[4]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG32_0|READDATA[4]~feeder_combout\ = \WRITEDATA[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WRITEDATA[4]~input_o\,
	combout => \REG32_0|READDATA[4]~feeder_combout\);

-- Location: FF_X32_Y19_N29
\REG32_0|READDATA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \REG32_0|READDATA[4]~feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \WE_REG0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG32_0|READDATA\(4));

-- Location: IOIBUF_X38_Y34_N1
\WRITEDATA[5]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITEDATA(5),
	o => \WRITEDATA[5]~input_o\);

-- Location: LCCOMB_X32_Y19_N30
\REG32_0|READDATA[5]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG32_0|READDATA[5]~feeder_combout\ = \WRITEDATA[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WRITEDATA[5]~input_o\,
	combout => \REG32_0|READDATA[5]~feeder_combout\);

-- Location: FF_X32_Y19_N31
\REG32_0|READDATA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \REG32_0|READDATA[5]~feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \WE_REG0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG32_0|READDATA\(5));

-- Location: IOIBUF_X38_Y34_N15
\WRITEDATA[6]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITEDATA(6),
	o => \WRITEDATA[6]~input_o\);

-- Location: FF_X32_Y19_N21
\REG32_0|READDATA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \WRITEDATA[6]~input_o\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \WE_REG0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG32_0|READDATA\(6));

-- Location: IOIBUF_X53_Y21_N22
\WRITEDATA[7]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITEDATA(7),
	o => \WRITEDATA[7]~input_o\);

-- Location: FF_X31_Y20_N13
\REG32_0|READDATA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \WRITEDATA[7]~input_o\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \WE_REG0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG32_0|READDATA\(7));

-- Location: IOIBUF_X53_Y20_N22
\WRITEDATA[8]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITEDATA(8),
	o => \WRITEDATA[8]~input_o\);

-- Location: LCCOMB_X31_Y20_N6
\REG32_0|READDATA[8]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG32_0|READDATA[8]~feeder_combout\ = \WRITEDATA[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WRITEDATA[8]~input_o\,
	combout => \REG32_0|READDATA[8]~feeder_combout\);

-- Location: FF_X31_Y20_N7
\REG32_0|READDATA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \REG32_0|READDATA[8]~feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \WE_REG0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG32_0|READDATA\(8));

-- Location: IOIBUF_X29_Y34_N15
\WRITEDATA[9]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITEDATA(9),
	o => \WRITEDATA[9]~input_o\);

-- Location: FF_X29_Y20_N13
\REG32_0|READDATA[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \WRITEDATA[9]~input_o\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \WE_REG0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG32_0|READDATA\(9));

-- Location: IOIBUF_X31_Y34_N8
\WRITEDATA[10]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITEDATA(10),
	o => \WRITEDATA[10]~input_o\);

-- Location: LCCOMB_X31_Y20_N4
\REG32_0|READDATA[10]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG32_0|READDATA[10]~feeder_combout\ = \WRITEDATA[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WRITEDATA[10]~input_o\,
	combout => \REG32_0|READDATA[10]~feeder_combout\);

-- Location: FF_X31_Y20_N5
\REG32_0|READDATA[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \REG32_0|READDATA[10]~feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \WE_REG0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG32_0|READDATA\(10));

-- Location: IOIBUF_X31_Y34_N1
\WRITEDATA[11]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITEDATA(11),
	o => \WRITEDATA[11]~input_o\);

-- Location: FF_X31_Y20_N3
\REG32_0|READDATA[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \WRITEDATA[11]~input_o\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \WE_REG0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG32_0|READDATA\(11));

-- Location: IOIBUF_X53_Y20_N15
\WRITEDATA[12]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITEDATA(12),
	o => \WRITEDATA[12]~input_o\);

-- Location: LCCOMB_X31_Y20_N20
\REG32_0|READDATA[12]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG32_0|READDATA[12]~feeder_combout\ = \WRITEDATA[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WRITEDATA[12]~input_o\,
	combout => \REG32_0|READDATA[12]~feeder_combout\);

-- Location: FF_X31_Y20_N21
\REG32_0|READDATA[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \REG32_0|READDATA[12]~feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \WE_REG0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG32_0|READDATA\(12));

-- Location: M9K_X33_Y15_N0
\RAM_inst|altsyncram_component|auto_generated|ram_block1a48\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_81q3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode501w\(3),
	portare => \REG32_2|READDATA\(1),
	clk0 => \CLK~inputclkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|rden_decode|w_anode501w\(3),
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a48_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a48_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a48_PORTADATAOUT_bus\);

-- Location: LCCOMB_X26_Y19_N18
\RAM_inst|altsyncram_component|auto_generated|address_reg_a[1]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|address_reg_a[1]~feeder_combout\ = \REG32_0|READDATA\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \REG32_0|READDATA\(14),
	combout => \RAM_inst|altsyncram_component|auto_generated|address_reg_a[1]~feeder_combout\);

-- Location: FF_X26_Y19_N19
\RAM_inst|altsyncram_component|auto_generated|address_reg_a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RAM_inst|altsyncram_component|auto_generated|address_reg_a[1]~feeder_combout\,
	ena => \REG32_2|READDATA\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|altsyncram_component|auto_generated|address_reg_a\(1));

-- Location: LCCOMB_X26_Y19_N28
\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a[1]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|out_address_reg_a[1]~feeder_combout\ = \RAM_inst|altsyncram_component|auto_generated|address_reg_a\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RAM_inst|altsyncram_component|auto_generated|address_reg_a\(1),
	combout => \RAM_inst|altsyncram_component|auto_generated|out_address_reg_a[1]~feeder_combout\);

-- Location: FF_X26_Y19_N29
\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RAM_inst|altsyncram_component|auto_generated|out_address_reg_a[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(1));

-- Location: LCCOMB_X26_Y19_N20
\RAM_inst|altsyncram_component|auto_generated|decode3|w_anode511w[3]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode511w\(3) = (\REG32_0|READDATA\(15) & (\REG32_0|READDATA\(14) & (\REG32_2|READDATA\(0) & \REG32_0|READDATA\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG32_0|READDATA\(15),
	datab => \REG32_0|READDATA\(14),
	datac => \REG32_2|READDATA\(0),
	datad => \REG32_0|READDATA\(13),
	combout => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode511w\(3));

-- Location: LCCOMB_X25_Y19_N30
\RAM_inst|altsyncram_component|auto_generated|rden_decode|w_anode511w[3]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|rden_decode|w_anode511w\(3) = (\REG32_0|READDATA\(15) & (\REG32_0|READDATA\(14) & (\REG32_0|READDATA\(13) & \RAM_inst|altsyncram_component|auto_generated|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG32_0|READDATA\(15),
	datab => \REG32_0|READDATA\(14),
	datac => \REG32_0|READDATA\(13),
	datad => \RAM_inst|altsyncram_component|auto_generated|_~0_combout\,
	combout => \RAM_inst|altsyncram_component|auto_generated|rden_decode|w_anode511w\(3));

-- Location: M9K_X33_Y29_N0
\RAM_inst|altsyncram_component|auto_generated|ram_block1a56\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_81q3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode511w\(3),
	portare => \REG32_2|READDATA\(1),
	clk0 => \CLK~inputclkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|rden_decode|w_anode511w\(3),
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a56_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a56_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a56_PORTADATAOUT_bus\);

-- Location: LCCOMB_X26_Y19_N4
\RAM_inst|altsyncram_component|auto_generated|decode3|w_anode491w[3]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode491w\(3) = (\REG32_2|READDATA\(0) & (\REG32_0|READDATA\(13) & (!\REG32_0|READDATA\(14) & \REG32_0|READDATA\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG32_2|READDATA\(0),
	datab => \REG32_0|READDATA\(13),
	datac => \REG32_0|READDATA\(14),
	datad => \REG32_0|READDATA\(15),
	combout => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode491w\(3));

-- Location: LCCOMB_X25_Y19_N10
\RAM_inst|altsyncram_component|auto_generated|rden_decode|w_anode491w[3]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|rden_decode|w_anode491w\(3) = (\REG32_0|READDATA\(15) & (!\REG32_0|READDATA\(14) & (\REG32_0|READDATA\(13) & \RAM_inst|altsyncram_component|auto_generated|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG32_0|READDATA\(15),
	datab => \REG32_0|READDATA\(14),
	datac => \REG32_0|READDATA\(13),
	datad => \RAM_inst|altsyncram_component|auto_generated|_~0_combout\,
	combout => \RAM_inst|altsyncram_component|auto_generated|rden_decode|w_anode491w\(3));

-- Location: M9K_X33_Y17_N0
\RAM_inst|altsyncram_component|auto_generated|ram_block1a40\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_81q3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode491w\(3),
	portare => \REG32_2|READDATA\(1),
	clk0 => \CLK~inputclkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|rden_decode|w_anode491w\(3),
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a40_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a40_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a40_PORTADATAOUT_bus\);

-- Location: LCCOMB_X26_Y19_N2
\RAM_inst|altsyncram_component|auto_generated|address_reg_a[0]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|address_reg_a[0]~feeder_combout\ = \REG32_0|READDATA\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \REG32_0|READDATA\(13),
	combout => \RAM_inst|altsyncram_component|auto_generated|address_reg_a[0]~feeder_combout\);

-- Location: FF_X26_Y19_N3
\RAM_inst|altsyncram_component|auto_generated|address_reg_a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RAM_inst|altsyncram_component|auto_generated|address_reg_a[0]~feeder_combout\,
	ena => \REG32_2|READDATA\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|altsyncram_component|auto_generated|address_reg_a\(0));

-- Location: LCCOMB_X26_Y19_N30
\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a[0]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|out_address_reg_a[0]~feeder_combout\ = \RAM_inst|altsyncram_component|auto_generated|address_reg_a\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RAM_inst|altsyncram_component|auto_generated|address_reg_a\(0),
	combout => \RAM_inst|altsyncram_component|auto_generated|out_address_reg_a[0]~feeder_combout\);

-- Location: FF_X26_Y19_N31
\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RAM_inst|altsyncram_component|auto_generated|out_address_reg_a[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(0));

-- Location: LCCOMB_X25_Y19_N24
\RAM_inst|altsyncram_component|auto_generated|decode3|w_anode481w[3]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode481w\(3) = (\REG32_0|READDATA\(15) & (!\REG32_0|READDATA\(13) & (\REG32_2|READDATA\(0) & !\REG32_0|READDATA\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG32_0|READDATA\(15),
	datab => \REG32_0|READDATA\(13),
	datac => \REG32_2|READDATA\(0),
	datad => \REG32_0|READDATA\(14),
	combout => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode481w\(3));

-- Location: LCCOMB_X25_Y19_N20
\RAM_inst|altsyncram_component|auto_generated|rden_decode|w_anode481w[3]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|rden_decode|w_anode481w\(3) = (\REG32_0|READDATA\(15) & (!\REG32_0|READDATA\(14) & (!\REG32_0|READDATA\(13) & \RAM_inst|altsyncram_component|auto_generated|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG32_0|READDATA\(15),
	datab => \REG32_0|READDATA\(14),
	datac => \REG32_0|READDATA\(13),
	datad => \RAM_inst|altsyncram_component|auto_generated|_~0_combout\,
	combout => \RAM_inst|altsyncram_component|auto_generated|rden_decode|w_anode481w\(3));

-- Location: M9K_X33_Y32_N0
\RAM_inst|altsyncram_component|auto_generated|ram_block1a32\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_81q3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode481w\(3),
	portare => \REG32_2|READDATA\(1),
	clk0 => \CLK~inputclkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|rden_decode|w_anode481w\(3),
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a32_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a32_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a32_PORTADATAOUT_bus\);

-- Location: LCCOMB_X26_Y19_N0
\RAM_inst|altsyncram_component|auto_generated|mux2|_~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|mux2|_~0_combout\ = (\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(1) & (((\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(0))))) # 
-- (!\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\RAM_inst|altsyncram_component|auto_generated|ram_block1a40~portadataout\)) # 
-- (!\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\RAM_inst|altsyncram_component|auto_generated|ram_block1a32~portadataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|altsyncram_component|auto_generated|ram_block1a40~portadataout\,
	datab => \RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datac => \RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datad => \RAM_inst|altsyncram_component|auto_generated|ram_block1a32~portadataout\,
	combout => \RAM_inst|altsyncram_component|auto_generated|mux2|_~0_combout\);

-- Location: LCCOMB_X26_Y19_N22
\RAM_inst|altsyncram_component|auto_generated|mux2|_~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|mux2|_~1_combout\ = (\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\RAM_inst|altsyncram_component|auto_generated|mux2|_~0_combout\ & 
-- ((\RAM_inst|altsyncram_component|auto_generated|ram_block1a56~portadataout\))) # (!\RAM_inst|altsyncram_component|auto_generated|mux2|_~0_combout\ & (\RAM_inst|altsyncram_component|auto_generated|ram_block1a48~portadataout\)))) # 
-- (!\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(1) & (((\RAM_inst|altsyncram_component|auto_generated|mux2|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|altsyncram_component|auto_generated|ram_block1a48~portadataout\,
	datab => \RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datac => \RAM_inst|altsyncram_component|auto_generated|ram_block1a56~portadataout\,
	datad => \RAM_inst|altsyncram_component|auto_generated|mux2|_~0_combout\,
	combout => \RAM_inst|altsyncram_component|auto_generated|mux2|_~1_combout\);

-- Location: LCCOMB_X25_Y19_N8
\RAM_inst|altsyncram_component|auto_generated|decode3|w_anode461w[3]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode461w\(3) = (!\REG32_0|READDATA\(15) & (\REG32_0|READDATA\(14) & (!\REG32_0|READDATA\(13) & \REG32_2|READDATA\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG32_0|READDATA\(15),
	datab => \REG32_0|READDATA\(14),
	datac => \REG32_0|READDATA\(13),
	datad => \REG32_2|READDATA\(0),
	combout => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode461w\(3));

-- Location: LCCOMB_X25_Y19_N16
\RAM_inst|altsyncram_component|auto_generated|rden_decode|w_anode461w[3]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|rden_decode|w_anode461w\(3) = (!\REG32_0|READDATA\(15) & (\REG32_0|READDATA\(14) & (!\REG32_0|READDATA\(13) & \RAM_inst|altsyncram_component|auto_generated|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG32_0|READDATA\(15),
	datab => \REG32_0|READDATA\(14),
	datac => \REG32_0|READDATA\(13),
	datad => \RAM_inst|altsyncram_component|auto_generated|_~0_combout\,
	combout => \RAM_inst|altsyncram_component|auto_generated|rden_decode|w_anode461w\(3));

-- Location: M9K_X33_Y18_N0
\RAM_inst|altsyncram_component|auto_generated|ram_block1a16\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_81q3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode461w\(3),
	portare => \REG32_2|READDATA\(1),
	clk0 => \CLK~inputclkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|rden_decode|w_anode461w\(3),
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a16_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a16_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\);

-- Location: LCCOMB_X25_Y19_N12
\RAM_inst|altsyncram_component|auto_generated|decode3|w_anode434w[3]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode434w\(3) = (\REG32_2|READDATA\(0) & (!\REG32_0|READDATA\(14) & (!\REG32_0|READDATA\(15) & !\REG32_0|READDATA\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG32_2|READDATA\(0),
	datab => \REG32_0|READDATA\(14),
	datac => \REG32_0|READDATA\(15),
	datad => \REG32_0|READDATA\(13),
	combout => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode434w\(3));

-- Location: LCCOMB_X25_Y19_N18
\RAM_inst|altsyncram_component|auto_generated|rden_decode|w_anode434w[3]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|rden_decode|w_anode434w\(3) = (!\REG32_0|READDATA\(15) & (!\REG32_0|READDATA\(14) & (!\REG32_0|READDATA\(13) & \RAM_inst|altsyncram_component|auto_generated|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG32_0|READDATA\(15),
	datab => \REG32_0|READDATA\(14),
	datac => \REG32_0|READDATA\(13),
	datad => \RAM_inst|altsyncram_component|auto_generated|_~0_combout\,
	combout => \RAM_inst|altsyncram_component|auto_generated|rden_decode|w_anode434w\(3));

-- Location: M9K_X22_Y33_N0
\RAM_inst|altsyncram_component|auto_generated|ram_block1a0\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_81q3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode434w\(3),
	portare => \REG32_2|READDATA\(1),
	clk0 => \CLK~inputclkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|rden_decode|w_anode434w\(3),
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X23_Y22_N28
\RAM_inst|altsyncram_component|auto_generated|mux2|_~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|mux2|_~2_combout\ = (\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\RAM_inst|altsyncram_component|auto_generated|ram_block1a16~portadataout\) # 
-- ((\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(0))))) # (!\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(1) & (((!\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(0) & 
-- \RAM_inst|altsyncram_component|auto_generated|ram_block1a0~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datab => \RAM_inst|altsyncram_component|auto_generated|ram_block1a16~portadataout\,
	datac => \RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datad => \RAM_inst|altsyncram_component|auto_generated|ram_block1a0~portadataout\,
	combout => \RAM_inst|altsyncram_component|auto_generated|mux2|_~2_combout\);

-- Location: LCCOMB_X25_Y19_N0
\RAM_inst|altsyncram_component|auto_generated|decode3|w_anode451w[3]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode451w\(3) = (\REG32_2|READDATA\(0) & (\REG32_0|READDATA\(13) & (!\REG32_0|READDATA\(14) & !\REG32_0|READDATA\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG32_2|READDATA\(0),
	datab => \REG32_0|READDATA\(13),
	datac => \REG32_0|READDATA\(14),
	datad => \REG32_0|READDATA\(15),
	combout => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode451w\(3));

-- Location: LCCOMB_X25_Y19_N6
\RAM_inst|altsyncram_component|auto_generated|rden_decode|w_anode451w[3]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|rden_decode|w_anode451w\(3) = (!\REG32_0|READDATA\(15) & (!\REG32_0|READDATA\(14) & (\REG32_0|READDATA\(13) & \RAM_inst|altsyncram_component|auto_generated|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG32_0|READDATA\(15),
	datab => \REG32_0|READDATA\(14),
	datac => \REG32_0|READDATA\(13),
	datad => \RAM_inst|altsyncram_component|auto_generated|_~0_combout\,
	combout => \RAM_inst|altsyncram_component|auto_generated|rden_decode|w_anode451w\(3));

-- Location: M9K_X22_Y22_N0
\RAM_inst|altsyncram_component|auto_generated|ram_block1a8\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_81q3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode451w\(3),
	portare => \REG32_2|READDATA\(1),
	clk0 => \CLK~inputclkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|rden_decode|w_anode451w\(3),
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\);

-- Location: LCCOMB_X25_Y19_N4
\RAM_inst|altsyncram_component|auto_generated|decode3|w_anode471w[3]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode471w\(3) = (!\REG32_0|READDATA\(15) & (\REG32_2|READDATA\(0) & (\REG32_0|READDATA\(13) & \REG32_0|READDATA\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG32_0|READDATA\(15),
	datab => \REG32_2|READDATA\(0),
	datac => \REG32_0|READDATA\(13),
	datad => \REG32_0|READDATA\(14),
	combout => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode471w\(3));

-- Location: LCCOMB_X25_Y19_N28
\RAM_inst|altsyncram_component|auto_generated|rden_decode|w_anode471w[3]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|rden_decode|w_anode471w\(3) = (!\REG32_0|READDATA\(15) & (\REG32_0|READDATA\(14) & (\REG32_0|READDATA\(13) & \RAM_inst|altsyncram_component|auto_generated|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG32_0|READDATA\(15),
	datab => \REG32_0|READDATA\(14),
	datac => \REG32_0|READDATA\(13),
	datad => \RAM_inst|altsyncram_component|auto_generated|_~0_combout\,
	combout => \RAM_inst|altsyncram_component|auto_generated|rden_decode|w_anode471w\(3));

-- Location: M9K_X33_Y28_N0
\RAM_inst|altsyncram_component|auto_generated|ram_block1a24\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_81q3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode471w\(3),
	portare => \REG32_2|READDATA\(1),
	clk0 => \CLK~inputclkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|rden_decode|w_anode471w\(3),
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a24_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a24_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a24_PORTADATAOUT_bus\);

-- Location: LCCOMB_X23_Y22_N30
\RAM_inst|altsyncram_component|auto_generated|mux2|_~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|mux2|_~3_combout\ = (\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\RAM_inst|altsyncram_component|auto_generated|mux2|_~2_combout\ & 
-- ((\RAM_inst|altsyncram_component|auto_generated|ram_block1a24~portadataout\))) # (!\RAM_inst|altsyncram_component|auto_generated|mux2|_~2_combout\ & (\RAM_inst|altsyncram_component|auto_generated|ram_block1a8~portadataout\)))) # 
-- (!\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\RAM_inst|altsyncram_component|auto_generated|mux2|_~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datab => \RAM_inst|altsyncram_component|auto_generated|mux2|_~2_combout\,
	datac => \RAM_inst|altsyncram_component|auto_generated|ram_block1a8~portadataout\,
	datad => \RAM_inst|altsyncram_component|auto_generated|ram_block1a24~portadataout\,
	combout => \RAM_inst|altsyncram_component|auto_generated|mux2|_~3_combout\);

-- Location: LCCOMB_X26_Y19_N26
\RAM_inst|altsyncram_component|auto_generated|address_reg_a[2]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|address_reg_a[2]~feeder_combout\ = \REG32_0|READDATA\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \REG32_0|READDATA\(15),
	combout => \RAM_inst|altsyncram_component|auto_generated|address_reg_a[2]~feeder_combout\);

-- Location: FF_X26_Y19_N27
\RAM_inst|altsyncram_component|auto_generated|address_reg_a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RAM_inst|altsyncram_component|auto_generated|address_reg_a[2]~feeder_combout\,
	ena => \REG32_2|READDATA\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|altsyncram_component|auto_generated|address_reg_a\(2));

-- Location: FF_X26_Y19_N25
\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RAM_inst|altsyncram_component|auto_generated|address_reg_a\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(2));

-- Location: LCCOMB_X26_Y19_N6
\RAM_inst|altsyncram_component|auto_generated|mux2|_~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|mux2|_~4_combout\ = (\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(2) & (\RAM_inst|altsyncram_component|auto_generated|mux2|_~1_combout\)) # 
-- (!\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(2) & ((\RAM_inst|altsyncram_component|auto_generated|mux2|_~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|altsyncram_component|auto_generated|mux2|_~1_combout\,
	datac => \RAM_inst|altsyncram_component|auto_generated|mux2|_~3_combout\,
	datad => \RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(2),
	combout => \RAM_inst|altsyncram_component|auto_generated|mux2|_~4_combout\);

-- Location: IOIBUF_X34_Y34_N8
\READ_EN~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_READ_EN,
	o => \READ_EN~input_o\);

-- Location: LCCOMB_X34_Y33_N16
\READDATA~32\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \READDATA~32_combout\ = (\READ_EN~input_o\ & \CS~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \READ_EN~input_o\,
	datad => \CS~input_o\,
	combout => \READDATA~32_combout\);

-- Location: LCCOMB_X27_Y20_N10
\REG32_1|READDATA[1]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG32_1|READDATA[1]~feeder_combout\ = \WRITEDATA[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WRITEDATA[1]~input_o\,
	combout => \REG32_1|READDATA[1]~feeder_combout\);

-- Location: FF_X27_Y20_N11
\REG32_1|READDATA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \REG32_1|READDATA[1]~feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \WE_REG1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG32_1|READDATA\(1));

-- Location: M9K_X33_Y21_N0
\RAM_inst|altsyncram_component|auto_generated|ram_block1a41\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_81q3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode491w\(3),
	portare => \REG32_2|READDATA\(1),
	clk0 => \CLK~inputclkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|rden_decode|w_anode491w\(3),
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a41_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a41_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a41_PORTADATAOUT_bus\);

-- Location: M9K_X22_Y31_N0
\RAM_inst|altsyncram_component|auto_generated|ram_block1a33\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_81q3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode481w\(3),
	portare => \REG32_2|READDATA\(1),
	clk0 => \CLK~inputclkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|rden_decode|w_anode481w\(3),
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a33_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a33_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a33_PORTADATAOUT_bus\);

-- Location: LCCOMB_X21_Y23_N12
\RAM_inst|altsyncram_component|auto_generated|mux2|_~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|mux2|_~5_combout\ = (\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(1)) # 
-- ((\RAM_inst|altsyncram_component|auto_generated|ram_block1a41~portadataout\)))) # (!\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(0) & (!\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(1) & 
-- ((\RAM_inst|altsyncram_component|auto_generated|ram_block1a33~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datab => \RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datac => \RAM_inst|altsyncram_component|auto_generated|ram_block1a41~portadataout\,
	datad => \RAM_inst|altsyncram_component|auto_generated|ram_block1a33~portadataout\,
	combout => \RAM_inst|altsyncram_component|auto_generated|mux2|_~5_combout\);

-- Location: M9K_X22_Y27_N0
\RAM_inst|altsyncram_component|auto_generated|ram_block1a49\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_81q3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode501w\(3),
	portare => \REG32_2|READDATA\(1),
	clk0 => \CLK~inputclkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|rden_decode|w_anode501w\(3),
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a49_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a49_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a49_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y2_N0
\RAM_inst|altsyncram_component|auto_generated|ram_block1a57\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_81q3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode511w\(3),
	portare => \REG32_2|READDATA\(1),
	clk0 => \CLK~inputclkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|rden_decode|w_anode511w\(3),
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a57_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a57_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a57_PORTADATAOUT_bus\);

-- Location: LCCOMB_X21_Y23_N10
\RAM_inst|altsyncram_component|auto_generated|mux2|_~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|mux2|_~6_combout\ = (\RAM_inst|altsyncram_component|auto_generated|mux2|_~5_combout\ & (((\RAM_inst|altsyncram_component|auto_generated|ram_block1a57~portadataout\) # 
-- (!\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(1))))) # (!\RAM_inst|altsyncram_component|auto_generated|mux2|_~5_combout\ & (\RAM_inst|altsyncram_component|auto_generated|ram_block1a49~portadataout\ & 
-- ((\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|altsyncram_component|auto_generated|mux2|_~5_combout\,
	datab => \RAM_inst|altsyncram_component|auto_generated|ram_block1a49~portadataout\,
	datac => \RAM_inst|altsyncram_component|auto_generated|ram_block1a57~portadataout\,
	datad => \RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(1),
	combout => \RAM_inst|altsyncram_component|auto_generated|mux2|_~6_combout\);

-- Location: M9K_X22_Y24_N0
\RAM_inst|altsyncram_component|auto_generated|ram_block1a9\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_81q3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode451w\(3),
	portare => \REG32_2|READDATA\(1),
	clk0 => \CLK~inputclkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|rden_decode|w_anode451w\(3),
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a9_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\);

-- Location: M9K_X22_Y9_N0
\RAM_inst|altsyncram_component|auto_generated|ram_block1a25\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_81q3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode471w\(3),
	portare => \REG32_2|READDATA\(1),
	clk0 => \CLK~inputclkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|rden_decode|w_anode471w\(3),
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a25_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a25_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a25_PORTADATAOUT_bus\);

-- Location: M9K_X22_Y8_N0
\RAM_inst|altsyncram_component|auto_generated|ram_block1a17\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_81q3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode461w\(3),
	portare => \REG32_2|READDATA\(1),
	clk0 => \CLK~inputclkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|rden_decode|w_anode461w\(3),
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a17_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a17_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a17_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y33_N0
\RAM_inst|altsyncram_component|auto_generated|ram_block1a1\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_81q3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode434w\(3),
	portare => \REG32_2|READDATA\(1),
	clk0 => \CLK~inputclkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|rden_decode|w_anode434w\(3),
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a1_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\);

-- Location: LCCOMB_X21_Y23_N0
\RAM_inst|altsyncram_component|auto_generated|mux2|_~7\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|mux2|_~7_combout\ = (\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(1))) # 
-- (!\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(1) & (\RAM_inst|altsyncram_component|auto_generated|ram_block1a17~portadataout\)) # 
-- (!\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\RAM_inst|altsyncram_component|auto_generated|ram_block1a1~portadataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datab => \RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datac => \RAM_inst|altsyncram_component|auto_generated|ram_block1a17~portadataout\,
	datad => \RAM_inst|altsyncram_component|auto_generated|ram_block1a1~portadataout\,
	combout => \RAM_inst|altsyncram_component|auto_generated|mux2|_~7_combout\);

-- Location: LCCOMB_X21_Y23_N26
\RAM_inst|altsyncram_component|auto_generated|mux2|_~8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|mux2|_~8_combout\ = (\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\RAM_inst|altsyncram_component|auto_generated|mux2|_~7_combout\ & 
-- ((\RAM_inst|altsyncram_component|auto_generated|ram_block1a25~portadataout\))) # (!\RAM_inst|altsyncram_component|auto_generated|mux2|_~7_combout\ & (\RAM_inst|altsyncram_component|auto_generated|ram_block1a9~portadataout\)))) # 
-- (!\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(0) & (((\RAM_inst|altsyncram_component|auto_generated|mux2|_~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|altsyncram_component|auto_generated|ram_block1a9~portadataout\,
	datab => \RAM_inst|altsyncram_component|auto_generated|ram_block1a25~portadataout\,
	datac => \RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datad => \RAM_inst|altsyncram_component|auto_generated|mux2|_~7_combout\,
	combout => \RAM_inst|altsyncram_component|auto_generated|mux2|_~8_combout\);

-- Location: LCCOMB_X21_Y23_N16
\RAM_inst|altsyncram_component|auto_generated|mux2|_~9\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|mux2|_~9_combout\ = (\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(2) & (\RAM_inst|altsyncram_component|auto_generated|mux2|_~6_combout\)) # 
-- (!\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(2) & ((\RAM_inst|altsyncram_component|auto_generated|mux2|_~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|altsyncram_component|auto_generated|mux2|_~6_combout\,
	datac => \RAM_inst|altsyncram_component|auto_generated|mux2|_~8_combout\,
	datad => \RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(2),
	combout => \RAM_inst|altsyncram_component|auto_generated|mux2|_~9_combout\);

-- Location: FF_X32_Y19_N15
\REG32_1|READDATA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \WRITEDATA[2]~input_o\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \WE_REG1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG32_1|READDATA\(2));

-- Location: M9K_X22_Y20_N0
\RAM_inst|altsyncram_component|auto_generated|ram_block1a2\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_81q3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode434w\(3),
	portare => \REG32_2|READDATA\(1),
	clk0 => \CLK~inputclkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|rden_decode|w_anode434w\(3),
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y26_N0
\RAM_inst|altsyncram_component|auto_generated|ram_block1a18\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_81q3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode461w\(3),
	portare => \REG32_2|READDATA\(1),
	clk0 => \CLK~inputclkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|rden_decode|w_anode461w\(3),
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a18_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a18_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\);

-- Location: LCCOMB_X21_Y23_N6
\RAM_inst|altsyncram_component|auto_generated|mux2|_~12\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|mux2|_~12_combout\ = (\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(1))) # 
-- (!\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\RAM_inst|altsyncram_component|auto_generated|ram_block1a18~portadataout\))) # 
-- (!\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(1) & (\RAM_inst|altsyncram_component|auto_generated|ram_block1a2~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datab => \RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datac => \RAM_inst|altsyncram_component|auto_generated|ram_block1a2~portadataout\,
	datad => \RAM_inst|altsyncram_component|auto_generated|ram_block1a18~portadataout\,
	combout => \RAM_inst|altsyncram_component|auto_generated|mux2|_~12_combout\);

-- Location: M9K_X22_Y25_N0
\RAM_inst|altsyncram_component|auto_generated|ram_block1a10\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_81q3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode451w\(3),
	portare => \REG32_2|READDATA\(1),
	clk0 => \CLK~inputclkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|rden_decode|w_anode451w\(3),
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a10_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y14_N0
\RAM_inst|altsyncram_component|auto_generated|ram_block1a26\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_81q3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode471w\(3),
	portare => \REG32_2|READDATA\(1),
	clk0 => \CLK~inputclkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|rden_decode|w_anode471w\(3),
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a26_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a26_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a26_PORTADATAOUT_bus\);

-- Location: LCCOMB_X21_Y23_N8
\RAM_inst|altsyncram_component|auto_generated|mux2|_~13\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|mux2|_~13_combout\ = (\RAM_inst|altsyncram_component|auto_generated|mux2|_~12_combout\ & (((\RAM_inst|altsyncram_component|auto_generated|ram_block1a26~portadataout\) # 
-- (!\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(0))))) # (!\RAM_inst|altsyncram_component|auto_generated|mux2|_~12_combout\ & (\RAM_inst|altsyncram_component|auto_generated|ram_block1a10~portadataout\ & 
-- (\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|altsyncram_component|auto_generated|mux2|_~12_combout\,
	datab => \RAM_inst|altsyncram_component|auto_generated|ram_block1a10~portadataout\,
	datac => \RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datad => \RAM_inst|altsyncram_component|auto_generated|ram_block1a26~portadataout\,
	combout => \RAM_inst|altsyncram_component|auto_generated|mux2|_~13_combout\);

-- Location: M9K_X33_Y13_N0
\RAM_inst|altsyncram_component|auto_generated|ram_block1a50\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_81q3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode501w\(3),
	portare => \REG32_2|READDATA\(1),
	clk0 => \CLK~inputclkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|rden_decode|w_anode501w\(3),
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a50_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a50_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a50_PORTADATAOUT_bus\);

-- Location: M9K_X22_Y16_N0
\RAM_inst|altsyncram_component|auto_generated|ram_block1a42\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_81q3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode491w\(3),
	portare => \REG32_2|READDATA\(1),
	clk0 => \CLK~inputclkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|rden_decode|w_anode491w\(3),
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a42_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a42_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a42_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y31_N0
\RAM_inst|altsyncram_component|auto_generated|ram_block1a34\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_81q3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode481w\(3),
	portare => \REG32_2|READDATA\(1),
	clk0 => \CLK~inputclkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|rden_decode|w_anode481w\(3),
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a34_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a34_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a34_PORTADATAOUT_bus\);

-- Location: LCCOMB_X21_Y23_N30
\RAM_inst|altsyncram_component|auto_generated|mux2|_~10\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|mux2|_~10_combout\ = (\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(1)) # 
-- ((\RAM_inst|altsyncram_component|auto_generated|ram_block1a42~portadataout\)))) # (!\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(0) & (!\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(1) & 
-- ((\RAM_inst|altsyncram_component|auto_generated|ram_block1a34~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datab => \RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datac => \RAM_inst|altsyncram_component|auto_generated|ram_block1a42~portadataout\,
	datad => \RAM_inst|altsyncram_component|auto_generated|ram_block1a34~portadataout\,
	combout => \RAM_inst|altsyncram_component|auto_generated|mux2|_~10_combout\);

-- Location: M9K_X33_Y30_N0
\RAM_inst|altsyncram_component|auto_generated|ram_block1a58\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_81q3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode511w\(3),
	portare => \REG32_2|READDATA\(1),
	clk0 => \CLK~inputclkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|rden_decode|w_anode511w\(3),
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a58_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a58_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a58_PORTADATAOUT_bus\);

-- Location: LCCOMB_X21_Y23_N4
\RAM_inst|altsyncram_component|auto_generated|mux2|_~11\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|mux2|_~11_combout\ = (\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\RAM_inst|altsyncram_component|auto_generated|mux2|_~10_combout\ & 
-- ((\RAM_inst|altsyncram_component|auto_generated|ram_block1a58~portadataout\))) # (!\RAM_inst|altsyncram_component|auto_generated|mux2|_~10_combout\ & (\RAM_inst|altsyncram_component|auto_generated|ram_block1a50~portadataout\)))) # 
-- (!\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(1) & (((\RAM_inst|altsyncram_component|auto_generated|mux2|_~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|altsyncram_component|auto_generated|ram_block1a50~portadataout\,
	datab => \RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datac => \RAM_inst|altsyncram_component|auto_generated|mux2|_~10_combout\,
	datad => \RAM_inst|altsyncram_component|auto_generated|ram_block1a58~portadataout\,
	combout => \RAM_inst|altsyncram_component|auto_generated|mux2|_~11_combout\);

-- Location: LCCOMB_X21_Y23_N14
\RAM_inst|altsyncram_component|auto_generated|mux2|_~14\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|mux2|_~14_combout\ = (\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(2) & ((\RAM_inst|altsyncram_component|auto_generated|mux2|_~11_combout\))) # 
-- (!\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(2) & (\RAM_inst|altsyncram_component|auto_generated|mux2|_~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM_inst|altsyncram_component|auto_generated|mux2|_~13_combout\,
	datac => \RAM_inst|altsyncram_component|auto_generated|mux2|_~11_combout\,
	datad => \RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(2),
	combout => \RAM_inst|altsyncram_component|auto_generated|mux2|_~14_combout\);

-- Location: LCCOMB_X32_Y19_N4
\REG32_1|READDATA[3]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG32_1|READDATA[3]~feeder_combout\ = \WRITEDATA[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WRITEDATA[3]~input_o\,
	combout => \REG32_1|READDATA[3]~feeder_combout\);

-- Location: FF_X32_Y19_N5
\REG32_1|READDATA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \REG32_1|READDATA[3]~feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \WE_REG1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG32_1|READDATA\(3));

-- Location: M9K_X22_Y13_N0
\RAM_inst|altsyncram_component|auto_generated|ram_block1a59\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_81q3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode511w\(3),
	portare => \REG32_2|READDATA\(1),
	clk0 => \CLK~inputclkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|rden_decode|w_anode511w\(3),
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a59_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a59_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a59_PORTADATAOUT_bus\);

-- Location: M9K_X22_Y6_N0
\RAM_inst|altsyncram_component|auto_generated|ram_block1a51\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_81q3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode501w\(3),
	portare => \REG32_2|READDATA\(1),
	clk0 => \CLK~inputclkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|rden_decode|w_anode501w\(3),
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a51_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a51_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a51_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y6_N0
\RAM_inst|altsyncram_component|auto_generated|ram_block1a43\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_81q3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode491w\(3),
	portare => \REG32_2|READDATA\(1),
	clk0 => \CLK~inputclkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|rden_decode|w_anode491w\(3),
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a43_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a43_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a43_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y23_N0
\RAM_inst|altsyncram_component|auto_generated|ram_block1a35\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_81q3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode481w\(3),
	portare => \REG32_2|READDATA\(1),
	clk0 => \CLK~inputclkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|rden_decode|w_anode481w\(3),
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a35_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a35_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a35_PORTADATAOUT_bus\);

-- Location: LCCOMB_X30_Y14_N16
\RAM_inst|altsyncram_component|auto_generated|mux2|_~15\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|mux2|_~15_combout\ = (\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(1) & (\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(0))) # 
-- (!\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\RAM_inst|altsyncram_component|auto_generated|ram_block1a43~portadataout\)) # 
-- (!\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\RAM_inst|altsyncram_component|auto_generated|ram_block1a35~portadataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datab => \RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datac => \RAM_inst|altsyncram_component|auto_generated|ram_block1a43~portadataout\,
	datad => \RAM_inst|altsyncram_component|auto_generated|ram_block1a35~portadataout\,
	combout => \RAM_inst|altsyncram_component|auto_generated|mux2|_~15_combout\);

-- Location: LCCOMB_X30_Y14_N30
\RAM_inst|altsyncram_component|auto_generated|mux2|_~16\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|mux2|_~16_combout\ = (\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\RAM_inst|altsyncram_component|auto_generated|mux2|_~15_combout\ & 
-- (\RAM_inst|altsyncram_component|auto_generated|ram_block1a59~portadataout\)) # (!\RAM_inst|altsyncram_component|auto_generated|mux2|_~15_combout\ & ((\RAM_inst|altsyncram_component|auto_generated|ram_block1a51~portadataout\))))) # 
-- (!\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(1) & (((\RAM_inst|altsyncram_component|auto_generated|mux2|_~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datab => \RAM_inst|altsyncram_component|auto_generated|ram_block1a59~portadataout\,
	datac => \RAM_inst|altsyncram_component|auto_generated|ram_block1a51~portadataout\,
	datad => \RAM_inst|altsyncram_component|auto_generated|mux2|_~15_combout\,
	combout => \RAM_inst|altsyncram_component|auto_generated|mux2|_~16_combout\);

-- Location: M9K_X22_Y15_N0
\RAM_inst|altsyncram_component|auto_generated|ram_block1a3\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_81q3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode434w\(3),
	portare => \REG32_2|READDATA\(1),
	clk0 => \CLK~inputclkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|rden_decode|w_anode434w\(3),
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a3_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\);

-- Location: M9K_X22_Y7_N0
\RAM_inst|altsyncram_component|auto_generated|ram_block1a19\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_81q3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode461w\(3),
	portare => \REG32_2|READDATA\(1),
	clk0 => \CLK~inputclkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|rden_decode|w_anode461w\(3),
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a19_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a19_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a19_PORTADATAOUT_bus\);

-- Location: LCCOMB_X30_Y14_N12
\RAM_inst|altsyncram_component|auto_generated|mux2|_~17\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|mux2|_~17_combout\ = (\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(0) & (((\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(1))))) # 
-- (!\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\RAM_inst|altsyncram_component|auto_generated|ram_block1a19~portadataout\))) # 
-- (!\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(1) & (\RAM_inst|altsyncram_component|auto_generated|ram_block1a3~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|altsyncram_component|auto_generated|ram_block1a3~portadataout\,
	datab => \RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datac => \RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datad => \RAM_inst|altsyncram_component|auto_generated|ram_block1a19~portadataout\,
	combout => \RAM_inst|altsyncram_component|auto_generated|mux2|_~17_combout\);

-- Location: M9K_X22_Y4_N0
\RAM_inst|altsyncram_component|auto_generated|ram_block1a11\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_81q3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode451w\(3),
	portare => \REG32_2|READDATA\(1),
	clk0 => \CLK~inputclkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|rden_decode|w_anode451w\(3),
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a11_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y3_N0
\RAM_inst|altsyncram_component|auto_generated|ram_block1a27\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_81q3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode471w\(3),
	portare => \REG32_2|READDATA\(1),
	clk0 => \CLK~inputclkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|rden_decode|w_anode471w\(3),
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a27_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a27_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a27_PORTADATAOUT_bus\);

-- Location: LCCOMB_X30_Y14_N26
\RAM_inst|altsyncram_component|auto_generated|mux2|_~18\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|mux2|_~18_combout\ = (\RAM_inst|altsyncram_component|auto_generated|mux2|_~17_combout\ & (((\RAM_inst|altsyncram_component|auto_generated|ram_block1a27~portadataout\)) # 
-- (!\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(0)))) # (!\RAM_inst|altsyncram_component|auto_generated|mux2|_~17_combout\ & (\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(0) & 
-- (\RAM_inst|altsyncram_component|auto_generated|ram_block1a11~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|altsyncram_component|auto_generated|mux2|_~17_combout\,
	datab => \RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datac => \RAM_inst|altsyncram_component|auto_generated|ram_block1a11~portadataout\,
	datad => \RAM_inst|altsyncram_component|auto_generated|ram_block1a27~portadataout\,
	combout => \RAM_inst|altsyncram_component|auto_generated|mux2|_~18_combout\);

-- Location: LCCOMB_X30_Y14_N4
\RAM_inst|altsyncram_component|auto_generated|mux2|_~19\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|mux2|_~19_combout\ = (\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(2) & (\RAM_inst|altsyncram_component|auto_generated|mux2|_~16_combout\)) # 
-- (!\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(2) & ((\RAM_inst|altsyncram_component|auto_generated|mux2|_~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|altsyncram_component|auto_generated|mux2|_~16_combout\,
	datac => \RAM_inst|altsyncram_component|auto_generated|mux2|_~18_combout\,
	datad => \RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(2),
	combout => \RAM_inst|altsyncram_component|auto_generated|mux2|_~19_combout\);

-- Location: LCCOMB_X32_Y19_N26
\REG32_1|READDATA[4]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG32_1|READDATA[4]~feeder_combout\ = \WRITEDATA[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WRITEDATA[4]~input_o\,
	combout => \REG32_1|READDATA[4]~feeder_combout\);

-- Location: FF_X32_Y19_N27
\REG32_1|READDATA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \REG32_1|READDATA[4]~feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \WE_REG1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG32_1|READDATA\(4));

-- Location: M9K_X22_Y32_N0
\RAM_inst|altsyncram_component|auto_generated|ram_block1a4\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_81q3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode434w\(3),
	portare => \REG32_2|READDATA\(1),
	clk0 => \CLK~inputclkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|rden_decode|w_anode434w\(3),
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\);

-- Location: M9K_X22_Y21_N0
\RAM_inst|altsyncram_component|auto_generated|ram_block1a20\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_81q3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode461w\(3),
	portare => \REG32_2|READDATA\(1),
	clk0 => \CLK~inputclkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|rden_decode|w_anode461w\(3),
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a20_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a20_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\);

-- Location: LCCOMB_X30_Y14_N10
\RAM_inst|altsyncram_component|auto_generated|mux2|_~22\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|mux2|_~22_combout\ = (\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(1) & (((\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(0)) # 
-- (\RAM_inst|altsyncram_component|auto_generated|ram_block1a20~portadataout\)))) # (!\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(1) & (\RAM_inst|altsyncram_component|auto_generated|ram_block1a4~portadataout\ & 
-- (!\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datab => \RAM_inst|altsyncram_component|auto_generated|ram_block1a4~portadataout\,
	datac => \RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datad => \RAM_inst|altsyncram_component|auto_generated|ram_block1a20~portadataout\,
	combout => \RAM_inst|altsyncram_component|auto_generated|mux2|_~22_combout\);

-- Location: M9K_X22_Y2_N0
\RAM_inst|altsyncram_component|auto_generated|ram_block1a28\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_81q3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode471w\(3),
	portare => \REG32_2|READDATA\(1),
	clk0 => \CLK~inputclkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|rden_decode|w_anode471w\(3),
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a28_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a28_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a28_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y8_N0
\RAM_inst|altsyncram_component|auto_generated|ram_block1a12\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_81q3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode451w\(3),
	portare => \REG32_2|READDATA\(1),
	clk0 => \CLK~inputclkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|rden_decode|w_anode451w\(3),
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\);

-- Location: LCCOMB_X30_Y14_N8
\RAM_inst|altsyncram_component|auto_generated|mux2|_~23\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|mux2|_~23_combout\ = (\RAM_inst|altsyncram_component|auto_generated|mux2|_~22_combout\ & (((\RAM_inst|altsyncram_component|auto_generated|ram_block1a28~portadataout\)) # 
-- (!\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(0)))) # (!\RAM_inst|altsyncram_component|auto_generated|mux2|_~22_combout\ & (\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(0) & 
-- ((\RAM_inst|altsyncram_component|auto_generated|ram_block1a12~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|altsyncram_component|auto_generated|mux2|_~22_combout\,
	datab => \RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datac => \RAM_inst|altsyncram_component|auto_generated|ram_block1a28~portadataout\,
	datad => \RAM_inst|altsyncram_component|auto_generated|ram_block1a12~portadataout\,
	combout => \RAM_inst|altsyncram_component|auto_generated|mux2|_~23_combout\);

-- Location: M9K_X22_Y18_N0
\RAM_inst|altsyncram_component|auto_generated|ram_block1a36\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_81q3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode481w\(3),
	portare => \REG32_2|READDATA\(1),
	clk0 => \CLK~inputclkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|rden_decode|w_anode481w\(3),
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a36_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a36_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a36_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y19_N0
\RAM_inst|altsyncram_component|auto_generated|ram_block1a44\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_81q3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode491w\(3),
	portare => \REG32_2|READDATA\(1),
	clk0 => \CLK~inputclkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|rden_decode|w_anode491w\(3),
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a44_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a44_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a44_PORTADATAOUT_bus\);

-- Location: LCCOMB_X30_Y14_N2
\RAM_inst|altsyncram_component|auto_generated|mux2|_~20\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|mux2|_~20_combout\ = (\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(1) & (\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(0))) # 
-- (!\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\RAM_inst|altsyncram_component|auto_generated|ram_block1a44~portadataout\))) # 
-- (!\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\RAM_inst|altsyncram_component|auto_generated|ram_block1a36~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datab => \RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datac => \RAM_inst|altsyncram_component|auto_generated|ram_block1a36~portadataout\,
	datad => \RAM_inst|altsyncram_component|auto_generated|ram_block1a44~portadataout\,
	combout => \RAM_inst|altsyncram_component|auto_generated|mux2|_~20_combout\);

-- Location: M9K_X22_Y10_N0
\RAM_inst|altsyncram_component|auto_generated|ram_block1a52\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_81q3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode501w\(3),
	portare => \REG32_2|READDATA\(1),
	clk0 => \CLK~inputclkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|rden_decode|w_anode501w\(3),
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a52_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a52_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a52_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y4_N0
\RAM_inst|altsyncram_component|auto_generated|ram_block1a60\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_81q3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode511w\(3),
	portare => \REG32_2|READDATA\(1),
	clk0 => \CLK~inputclkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|rden_decode|w_anode511w\(3),
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a60_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a60_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a60_PORTADATAOUT_bus\);

-- Location: LCCOMB_X30_Y14_N0
\RAM_inst|altsyncram_component|auto_generated|mux2|_~21\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|mux2|_~21_combout\ = (\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\RAM_inst|altsyncram_component|auto_generated|mux2|_~20_combout\ & 
-- ((\RAM_inst|altsyncram_component|auto_generated|ram_block1a60~portadataout\))) # (!\RAM_inst|altsyncram_component|auto_generated|mux2|_~20_combout\ & (\RAM_inst|altsyncram_component|auto_generated|ram_block1a52~portadataout\)))) # 
-- (!\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(1) & (\RAM_inst|altsyncram_component|auto_generated|mux2|_~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datab => \RAM_inst|altsyncram_component|auto_generated|mux2|_~20_combout\,
	datac => \RAM_inst|altsyncram_component|auto_generated|ram_block1a52~portadataout\,
	datad => \RAM_inst|altsyncram_component|auto_generated|ram_block1a60~portadataout\,
	combout => \RAM_inst|altsyncram_component|auto_generated|mux2|_~21_combout\);

-- Location: LCCOMB_X30_Y14_N14
\RAM_inst|altsyncram_component|auto_generated|mux2|_~24\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|mux2|_~24_combout\ = (\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(2) & ((\RAM_inst|altsyncram_component|auto_generated|mux2|_~21_combout\))) # 
-- (!\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(2) & (\RAM_inst|altsyncram_component|auto_generated|mux2|_~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(2),
	datac => \RAM_inst|altsyncram_component|auto_generated|mux2|_~23_combout\,
	datad => \RAM_inst|altsyncram_component|auto_generated|mux2|_~21_combout\,
	combout => \RAM_inst|altsyncram_component|auto_generated|mux2|_~24_combout\);

-- Location: LCCOMB_X32_Y19_N24
\REG32_1|READDATA[5]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG32_1|READDATA[5]~feeder_combout\ = \WRITEDATA[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WRITEDATA[5]~input_o\,
	combout => \REG32_1|READDATA[5]~feeder_combout\);

-- Location: FF_X32_Y19_N25
\REG32_1|READDATA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \REG32_1|READDATA[5]~feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \WE_REG1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG32_1|READDATA\(5));

-- Location: M9K_X22_Y23_N0
\RAM_inst|altsyncram_component|auto_generated|ram_block1a13\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_81q3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode451w\(3),
	portare => \REG32_2|READDATA\(1),
	clk0 => \CLK~inputclkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|rden_decode|w_anode451w\(3),
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a13_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a13_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a13_PORTADATAOUT_bus\);

-- Location: M9K_X22_Y26_N0
\RAM_inst|altsyncram_component|auto_generated|ram_block1a21\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_81q3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode461w\(3),
	portare => \REG32_2|READDATA\(1),
	clk0 => \CLK~inputclkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|rden_decode|w_anode461w\(3),
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a21_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a21_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a21_PORTADATAOUT_bus\);

-- Location: M9K_X22_Y17_N0
\RAM_inst|altsyncram_component|auto_generated|ram_block1a5\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_81q3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode434w\(3),
	portare => \REG32_2|READDATA\(1),
	clk0 => \CLK~inputclkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|rden_decode|w_anode434w\(3),
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a5_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\);

-- Location: LCCOMB_X21_Y23_N24
\RAM_inst|altsyncram_component|auto_generated|mux2|_~27\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|mux2|_~27_combout\ = (\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(0) & (((\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(1))))) # 
-- (!\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(1) & (\RAM_inst|altsyncram_component|auto_generated|ram_block1a21~portadataout\)) # 
-- (!\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\RAM_inst|altsyncram_component|auto_generated|ram_block1a5~portadataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datab => \RAM_inst|altsyncram_component|auto_generated|ram_block1a21~portadataout\,
	datac => \RAM_inst|altsyncram_component|auto_generated|ram_block1a5~portadataout\,
	datad => \RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(1),
	combout => \RAM_inst|altsyncram_component|auto_generated|mux2|_~27_combout\);

-- Location: M9K_X22_Y3_N0
\RAM_inst|altsyncram_component|auto_generated|ram_block1a29\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_81q3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode471w\(3),
	portare => \REG32_2|READDATA\(1),
	clk0 => \CLK~inputclkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|rden_decode|w_anode471w\(3),
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a29_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a29_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a29_PORTADATAOUT_bus\);

-- Location: LCCOMB_X21_Y23_N2
\RAM_inst|altsyncram_component|auto_generated|mux2|_~28\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|mux2|_~28_combout\ = (\RAM_inst|altsyncram_component|auto_generated|mux2|_~27_combout\ & (((\RAM_inst|altsyncram_component|auto_generated|ram_block1a29~portadataout\) # 
-- (!\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(0))))) # (!\RAM_inst|altsyncram_component|auto_generated|mux2|_~27_combout\ & (\RAM_inst|altsyncram_component|auto_generated|ram_block1a13~portadataout\ & 
-- (\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|altsyncram_component|auto_generated|ram_block1a13~portadataout\,
	datab => \RAM_inst|altsyncram_component|auto_generated|mux2|_~27_combout\,
	datac => \RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datad => \RAM_inst|altsyncram_component|auto_generated|ram_block1a29~portadataout\,
	combout => \RAM_inst|altsyncram_component|auto_generated|mux2|_~28_combout\);

-- Location: M9K_X33_Y27_N0
\RAM_inst|altsyncram_component|auto_generated|ram_block1a53\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_81q3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode501w\(3),
	portare => \REG32_2|READDATA\(1),
	clk0 => \CLK~inputclkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|rden_decode|w_anode501w\(3),
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a53_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a53_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a53_PORTADATAOUT_bus\);

-- Location: M9K_X22_Y30_N0
\RAM_inst|altsyncram_component|auto_generated|ram_block1a37\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_81q3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode481w\(3),
	portare => \REG32_2|READDATA\(1),
	clk0 => \CLK~inputclkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|rden_decode|w_anode481w\(3),
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a37_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a37_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a37_PORTADATAOUT_bus\);

-- Location: M9K_X22_Y5_N0
\RAM_inst|altsyncram_component|auto_generated|ram_block1a45\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_81q3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode491w\(3),
	portare => \REG32_2|READDATA\(1),
	clk0 => \CLK~inputclkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|rden_decode|w_anode491w\(3),
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a45_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a45_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a45_PORTADATAOUT_bus\);

-- Location: LCCOMB_X21_Y23_N28
\RAM_inst|altsyncram_component|auto_generated|mux2|_~25\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|mux2|_~25_combout\ = (\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(0) & (((\RAM_inst|altsyncram_component|auto_generated|ram_block1a45~portadataout\) # 
-- (\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(1))))) # (!\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\RAM_inst|altsyncram_component|auto_generated|ram_block1a37~portadataout\ & 
-- ((!\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|altsyncram_component|auto_generated|ram_block1a37~portadataout\,
	datab => \RAM_inst|altsyncram_component|auto_generated|ram_block1a45~portadataout\,
	datac => \RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datad => \RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(1),
	combout => \RAM_inst|altsyncram_component|auto_generated|mux2|_~25_combout\);

-- Location: M9K_X22_Y28_N0
\RAM_inst|altsyncram_component|auto_generated|ram_block1a61\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_81q3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode511w\(3),
	portare => \REG32_2|READDATA\(1),
	clk0 => \CLK~inputclkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|rden_decode|w_anode511w\(3),
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a61_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a61_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a61_PORTADATAOUT_bus\);

-- Location: LCCOMB_X21_Y23_N22
\RAM_inst|altsyncram_component|auto_generated|mux2|_~26\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|mux2|_~26_combout\ = (\RAM_inst|altsyncram_component|auto_generated|mux2|_~25_combout\ & (((\RAM_inst|altsyncram_component|auto_generated|ram_block1a61~portadataout\) # 
-- (!\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(1))))) # (!\RAM_inst|altsyncram_component|auto_generated|mux2|_~25_combout\ & (\RAM_inst|altsyncram_component|auto_generated|ram_block1a53~portadataout\ & 
-- ((\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|altsyncram_component|auto_generated|ram_block1a53~portadataout\,
	datab => \RAM_inst|altsyncram_component|auto_generated|mux2|_~25_combout\,
	datac => \RAM_inst|altsyncram_component|auto_generated|ram_block1a61~portadataout\,
	datad => \RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(1),
	combout => \RAM_inst|altsyncram_component|auto_generated|mux2|_~26_combout\);

-- Location: LCCOMB_X21_Y23_N20
\RAM_inst|altsyncram_component|auto_generated|mux2|_~29\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|mux2|_~29_combout\ = (\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(2) & ((\RAM_inst|altsyncram_component|auto_generated|mux2|_~26_combout\))) # 
-- (!\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(2) & (\RAM_inst|altsyncram_component|auto_generated|mux2|_~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM_inst|altsyncram_component|auto_generated|mux2|_~28_combout\,
	datac => \RAM_inst|altsyncram_component|auto_generated|mux2|_~26_combout\,
	datad => \RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(2),
	combout => \RAM_inst|altsyncram_component|auto_generated|mux2|_~29_combout\);

-- Location: FF_X32_Y19_N19
\REG32_1|READDATA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \WRITEDATA[6]~input_o\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \WE_REG1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG32_1|READDATA\(6));

-- Location: M9K_X22_Y19_N0
\RAM_inst|altsyncram_component|auto_generated|ram_block1a14\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_81q3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode451w\(3),
	portare => \REG32_2|READDATA\(1),
	clk0 => \CLK~inputclkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|rden_decode|w_anode451w\(3),
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y12_N0
\RAM_inst|altsyncram_component|auto_generated|ram_block1a30\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_81q3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode471w\(3),
	portare => \REG32_2|READDATA\(1),
	clk0 => \CLK~inputclkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|rden_decode|w_anode471w\(3),
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a30_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a30_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a30_PORTADATAOUT_bus\);

-- Location: M9K_X22_Y11_N0
\RAM_inst|altsyncram_component|auto_generated|ram_block1a6\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_81q3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode434w\(3),
	portare => \REG32_2|READDATA\(1),
	clk0 => \CLK~inputclkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|rden_decode|w_anode434w\(3),
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y7_N0
\RAM_inst|altsyncram_component|auto_generated|ram_block1a22\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_81q3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode461w\(3),
	portare => \REG32_2|READDATA\(1),
	clk0 => \CLK~inputclkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|rden_decode|w_anode461w\(3),
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a22_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a22_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a22_PORTADATAOUT_bus\);

-- Location: LCCOMB_X30_Y14_N20
\RAM_inst|altsyncram_component|auto_generated|mux2|_~32\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|mux2|_~32_combout\ = (\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(0)) # 
-- ((\RAM_inst|altsyncram_component|auto_generated|ram_block1a22~portadataout\)))) # (!\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(1) & (!\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(0) & 
-- (\RAM_inst|altsyncram_component|auto_generated|ram_block1a6~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datab => \RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datac => \RAM_inst|altsyncram_component|auto_generated|ram_block1a6~portadataout\,
	datad => \RAM_inst|altsyncram_component|auto_generated|ram_block1a22~portadataout\,
	combout => \RAM_inst|altsyncram_component|auto_generated|mux2|_~32_combout\);

-- Location: LCCOMB_X30_Y14_N22
\RAM_inst|altsyncram_component|auto_generated|mux2|_~33\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|mux2|_~33_combout\ = (\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\RAM_inst|altsyncram_component|auto_generated|mux2|_~32_combout\ & 
-- ((\RAM_inst|altsyncram_component|auto_generated|ram_block1a30~portadataout\))) # (!\RAM_inst|altsyncram_component|auto_generated|mux2|_~32_combout\ & (\RAM_inst|altsyncram_component|auto_generated|ram_block1a14~portadataout\)))) # 
-- (!\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(0) & (((\RAM_inst|altsyncram_component|auto_generated|mux2|_~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|altsyncram_component|auto_generated|ram_block1a14~portadataout\,
	datab => \RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datac => \RAM_inst|altsyncram_component|auto_generated|ram_block1a30~portadataout\,
	datad => \RAM_inst|altsyncram_component|auto_generated|mux2|_~32_combout\,
	combout => \RAM_inst|altsyncram_component|auto_generated|mux2|_~33_combout\);

-- Location: M9K_X22_Y14_N0
\RAM_inst|altsyncram_component|auto_generated|ram_block1a54\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_81q3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode501w\(3),
	portare => \REG32_2|READDATA\(1),
	clk0 => \CLK~inputclkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|rden_decode|w_anode501w\(3),
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a54_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a54_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a54_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y9_N0
\RAM_inst|altsyncram_component|auto_generated|ram_block1a62\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_81q3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode511w\(3),
	portare => \REG32_2|READDATA\(1),
	clk0 => \CLK~inputclkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|rden_decode|w_anode511w\(3),
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a62_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a62_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a62_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y11_N0
\RAM_inst|altsyncram_component|auto_generated|ram_block1a38\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_81q3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode481w\(3),
	portare => \REG32_2|READDATA\(1),
	clk0 => \CLK~inputclkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|rden_decode|w_anode481w\(3),
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a38_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a38_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a38_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y20_N0
\RAM_inst|altsyncram_component|auto_generated|ram_block1a46\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_81q3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode491w\(3),
	portare => \REG32_2|READDATA\(1),
	clk0 => \CLK~inputclkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|rden_decode|w_anode491w\(3),
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a46_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a46_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a46_PORTADATAOUT_bus\);

-- Location: LCCOMB_X30_Y14_N24
\RAM_inst|altsyncram_component|auto_generated|mux2|_~30\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|mux2|_~30_combout\ = (\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(0) & (((\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(1)) # 
-- (\RAM_inst|altsyncram_component|auto_generated|ram_block1a46~portadataout\)))) # (!\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\RAM_inst|altsyncram_component|auto_generated|ram_block1a38~portadataout\ & 
-- (!\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|altsyncram_component|auto_generated|ram_block1a38~portadataout\,
	datab => \RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datac => \RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datad => \RAM_inst|altsyncram_component|auto_generated|ram_block1a46~portadataout\,
	combout => \RAM_inst|altsyncram_component|auto_generated|mux2|_~30_combout\);

-- Location: LCCOMB_X30_Y14_N6
\RAM_inst|altsyncram_component|auto_generated|mux2|_~31\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|mux2|_~31_combout\ = (\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\RAM_inst|altsyncram_component|auto_generated|mux2|_~30_combout\ & 
-- ((\RAM_inst|altsyncram_component|auto_generated|ram_block1a62~portadataout\))) # (!\RAM_inst|altsyncram_component|auto_generated|mux2|_~30_combout\ & (\RAM_inst|altsyncram_component|auto_generated|ram_block1a54~portadataout\)))) # 
-- (!\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(1) & (((\RAM_inst|altsyncram_component|auto_generated|mux2|_~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datab => \RAM_inst|altsyncram_component|auto_generated|ram_block1a54~portadataout\,
	datac => \RAM_inst|altsyncram_component|auto_generated|ram_block1a62~portadataout\,
	datad => \RAM_inst|altsyncram_component|auto_generated|mux2|_~30_combout\,
	combout => \RAM_inst|altsyncram_component|auto_generated|mux2|_~31_combout\);

-- Location: LCCOMB_X30_Y14_N28
\RAM_inst|altsyncram_component|auto_generated|mux2|_~34\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|mux2|_~34_combout\ = (\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(2) & ((\RAM_inst|altsyncram_component|auto_generated|mux2|_~31_combout\))) # 
-- (!\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(2) & (\RAM_inst|altsyncram_component|auto_generated|mux2|_~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(2),
	datac => \RAM_inst|altsyncram_component|auto_generated|mux2|_~33_combout\,
	datad => \RAM_inst|altsyncram_component|auto_generated|mux2|_~31_combout\,
	combout => \RAM_inst|altsyncram_component|auto_generated|mux2|_~34_combout\);

-- Location: FF_X31_Y20_N19
\REG32_1|READDATA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \WRITEDATA[7]~input_o\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \WE_REG1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG32_1|READDATA\(7));

-- Location: M9K_X33_Y5_N0
\RAM_inst|altsyncram_component|auto_generated|ram_block1a31\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_81q3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode471w\(3),
	portare => \REG32_2|READDATA\(1),
	clk0 => \CLK~inputclkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|rden_decode|w_anode471w\(3),
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a31_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a31_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a31_PORTADATAOUT_bus\);

-- Location: M9K_X22_Y12_N0
\RAM_inst|altsyncram_component|auto_generated|ram_block1a23\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_81q3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode461w\(3),
	portare => \REG32_2|READDATA\(1),
	clk0 => \CLK~inputclkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|rden_decode|w_anode461w\(3),
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a23_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a23_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a23_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y10_N0
\RAM_inst|altsyncram_component|auto_generated|ram_block1a7\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_81q3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode434w\(3),
	portare => \REG32_2|READDATA\(1),
	clk0 => \CLK~inputclkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|rden_decode|w_anode434w\(3),
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a7_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\);

-- Location: LCCOMB_X23_Y19_N24
\RAM_inst|altsyncram_component|auto_generated|mux2|_~37\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|mux2|_~37_combout\ = (\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\RAM_inst|altsyncram_component|auto_generated|ram_block1a23~portadataout\) # 
-- ((\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(0))))) # (!\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(1) & (((\RAM_inst|altsyncram_component|auto_generated|ram_block1a7~portadataout\ & 
-- !\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datab => \RAM_inst|altsyncram_component|auto_generated|ram_block1a23~portadataout\,
	datac => \RAM_inst|altsyncram_component|auto_generated|ram_block1a7~portadataout\,
	datad => \RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(0),
	combout => \RAM_inst|altsyncram_component|auto_generated|mux2|_~37_combout\);

-- Location: M9K_X33_Y25_N0
\RAM_inst|altsyncram_component|auto_generated|ram_block1a15\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_81q3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode451w\(3),
	portare => \REG32_2|READDATA\(1),
	clk0 => \CLK~inputclkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|rden_decode|w_anode451w\(3),
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a15_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a15_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a15_PORTADATAOUT_bus\);

-- Location: LCCOMB_X26_Y19_N16
\RAM_inst|altsyncram_component|auto_generated|mux2|_~38\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|mux2|_~38_combout\ = (\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\RAM_inst|altsyncram_component|auto_generated|mux2|_~37_combout\ & 
-- (\RAM_inst|altsyncram_component|auto_generated|ram_block1a31~portadataout\)) # (!\RAM_inst|altsyncram_component|auto_generated|mux2|_~37_combout\ & ((\RAM_inst|altsyncram_component|auto_generated|ram_block1a15~portadataout\))))) # 
-- (!\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(0) & (((\RAM_inst|altsyncram_component|auto_generated|mux2|_~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datab => \RAM_inst|altsyncram_component|auto_generated|ram_block1a31~portadataout\,
	datac => \RAM_inst|altsyncram_component|auto_generated|mux2|_~37_combout\,
	datad => \RAM_inst|altsyncram_component|auto_generated|ram_block1a15~portadataout\,
	combout => \RAM_inst|altsyncram_component|auto_generated|mux2|_~38_combout\);

-- Location: M9K_X33_Y16_N0
\RAM_inst|altsyncram_component|auto_generated|ram_block1a47\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_81q3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode491w\(3),
	portare => \REG32_2|READDATA\(1),
	clk0 => \CLK~inputclkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|rden_decode|w_anode491w\(3),
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a47_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a47_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a47_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y24_N0
\RAM_inst|altsyncram_component|auto_generated|ram_block1a39\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_81q3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode481w\(3),
	portare => \REG32_2|READDATA\(1),
	clk0 => \CLK~inputclkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|rden_decode|w_anode481w\(3),
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a39_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a39_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a39_PORTADATAOUT_bus\);

-- Location: LCCOMB_X26_Y19_N12
\RAM_inst|altsyncram_component|auto_generated|mux2|_~35\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|mux2|_~35_combout\ = (\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(1)) # 
-- ((\RAM_inst|altsyncram_component|auto_generated|ram_block1a47~portadataout\)))) # (!\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(0) & (!\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(1) & 
-- ((\RAM_inst|altsyncram_component|auto_generated|ram_block1a39~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datab => \RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datac => \RAM_inst|altsyncram_component|auto_generated|ram_block1a47~portadataout\,
	datad => \RAM_inst|altsyncram_component|auto_generated|ram_block1a39~portadataout\,
	combout => \RAM_inst|altsyncram_component|auto_generated|mux2|_~35_combout\);

-- Location: M9K_X22_Y29_N0
\RAM_inst|altsyncram_component|auto_generated|ram_block1a63\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_81q3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode511w\(3),
	portare => \REG32_2|READDATA\(1),
	clk0 => \CLK~inputclkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|rden_decode|w_anode511w\(3),
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a63_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a63_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a63_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y22_N0
\RAM_inst|altsyncram_component|auto_generated|ram_block1a55\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_81q3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode501w\(3),
	portare => \REG32_2|READDATA\(1),
	clk0 => \CLK~inputclkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|rden_decode|w_anode501w\(3),
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a55_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a55_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a55_PORTADATAOUT_bus\);

-- Location: LCCOMB_X26_Y19_N10
\RAM_inst|altsyncram_component|auto_generated|mux2|_~36\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|mux2|_~36_combout\ = (\RAM_inst|altsyncram_component|auto_generated|mux2|_~35_combout\ & (((\RAM_inst|altsyncram_component|auto_generated|ram_block1a63~portadataout\)) # 
-- (!\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(1)))) # (!\RAM_inst|altsyncram_component|auto_generated|mux2|_~35_combout\ & (\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(1) & 
-- ((\RAM_inst|altsyncram_component|auto_generated|ram_block1a55~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|altsyncram_component|auto_generated|mux2|_~35_combout\,
	datab => \RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datac => \RAM_inst|altsyncram_component|auto_generated|ram_block1a63~portadataout\,
	datad => \RAM_inst|altsyncram_component|auto_generated|ram_block1a55~portadataout\,
	combout => \RAM_inst|altsyncram_component|auto_generated|mux2|_~36_combout\);

-- Location: LCCOMB_X26_Y19_N24
\RAM_inst|altsyncram_component|auto_generated|mux2|_~39\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|mux2|_~39_combout\ = (\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(2) & ((\RAM_inst|altsyncram_component|auto_generated|mux2|_~36_combout\))) # 
-- (!\RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(2) & (\RAM_inst|altsyncram_component|auto_generated|mux2|_~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM_inst|altsyncram_component|auto_generated|mux2|_~38_combout\,
	datac => \RAM_inst|altsyncram_component|auto_generated|out_address_reg_a\(2),
	datad => \RAM_inst|altsyncram_component|auto_generated|mux2|_~36_combout\,
	combout => \RAM_inst|altsyncram_component|auto_generated|mux2|_~39_combout\);

-- Location: IOIBUF_X51_Y34_N22
\WRITEDATA[16]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITEDATA(16),
	o => \WRITEDATA[16]~input_o\);

-- Location: IOIBUF_X3_Y0_N1
\WRITEDATA[17]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITEDATA(17),
	o => \WRITEDATA[17]~input_o\);

-- Location: IOIBUF_X0_Y23_N22
\WRITEDATA[18]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITEDATA(18),
	o => \WRITEDATA[18]~input_o\);

-- Location: IOIBUF_X1_Y0_N8
\WRITEDATA[19]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITEDATA(19),
	o => \WRITEDATA[19]~input_o\);

-- Location: IOIBUF_X3_Y34_N1
\WRITEDATA[20]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITEDATA(20),
	o => \WRITEDATA[20]~input_o\);

-- Location: IOIBUF_X7_Y34_N15
\WRITEDATA[21]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITEDATA(21),
	o => \WRITEDATA[21]~input_o\);

-- Location: IOIBUF_X53_Y26_N22
\WRITEDATA[22]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITEDATA(22),
	o => \WRITEDATA[22]~input_o\);

-- Location: IOIBUF_X0_Y8_N22
\WRITEDATA[23]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITEDATA(23),
	o => \WRITEDATA[23]~input_o\);

-- Location: IOIBUF_X53_Y9_N15
\WRITEDATA[24]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITEDATA(24),
	o => \WRITEDATA[24]~input_o\);

-- Location: IOIBUF_X1_Y0_N22
\WRITEDATA[25]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITEDATA(25),
	o => \WRITEDATA[25]~input_o\);

-- Location: IOIBUF_X5_Y0_N15
\WRITEDATA[26]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITEDATA(26),
	o => \WRITEDATA[26]~input_o\);

-- Location: IOIBUF_X45_Y34_N8
\WRITEDATA[27]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITEDATA(27),
	o => \WRITEDATA[27]~input_o\);

-- Location: IOIBUF_X1_Y0_N15
\WRITEDATA[28]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITEDATA(28),
	o => \WRITEDATA[28]~input_o\);

-- Location: IOIBUF_X7_Y34_N1
\WRITEDATA[29]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITEDATA(29),
	o => \WRITEDATA[29]~input_o\);

-- Location: IOIBUF_X5_Y0_N1
\WRITEDATA[30]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITEDATA(30),
	o => \WRITEDATA[30]~input_o\);

-- Location: IOIBUF_X53_Y30_N8
\WRITEDATA[31]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITEDATA(31),
	o => \WRITEDATA[31]~input_o\);

ww_READDATA(0) <= \READDATA[0]~output_o\;

ww_READDATA(1) <= \READDATA[1]~output_o\;

ww_READDATA(2) <= \READDATA[2]~output_o\;

ww_READDATA(3) <= \READDATA[3]~output_o\;

ww_READDATA(4) <= \READDATA[4]~output_o\;

ww_READDATA(5) <= \READDATA[5]~output_o\;

ww_READDATA(6) <= \READDATA[6]~output_o\;

ww_READDATA(7) <= \READDATA[7]~output_o\;

ww_READDATA(8) <= \READDATA[8]~output_o\;

ww_READDATA(9) <= \READDATA[9]~output_o\;

ww_READDATA(10) <= \READDATA[10]~output_o\;

ww_READDATA(11) <= \READDATA[11]~output_o\;

ww_READDATA(12) <= \READDATA[12]~output_o\;

ww_READDATA(13) <= \READDATA[13]~output_o\;

ww_READDATA(14) <= \READDATA[14]~output_o\;

ww_READDATA(15) <= \READDATA[15]~output_o\;

ww_READDATA(16) <= \READDATA[16]~output_o\;

ww_READDATA(17) <= \READDATA[17]~output_o\;

ww_READDATA(18) <= \READDATA[18]~output_o\;

ww_READDATA(19) <= \READDATA[19]~output_o\;

ww_READDATA(20) <= \READDATA[20]~output_o\;

ww_READDATA(21) <= \READDATA[21]~output_o\;

ww_READDATA(22) <= \READDATA[22]~output_o\;

ww_READDATA(23) <= \READDATA[23]~output_o\;

ww_READDATA(24) <= \READDATA[24]~output_o\;

ww_READDATA(25) <= \READDATA[25]~output_o\;

ww_READDATA(26) <= \READDATA[26]~output_o\;

ww_READDATA(27) <= \READDATA[27]~output_o\;

ww_READDATA(28) <= \READDATA[28]~output_o\;

ww_READDATA(29) <= \READDATA[29]~output_o\;

ww_READDATA(30) <= \READDATA[30]~output_o\;

ww_READDATA(31) <= \READDATA[31]~output_o\;
END structure;


