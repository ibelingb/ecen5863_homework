-- Copyright (C) 2016  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 16.1.0 Build 196 10/24/2016 SJ Lite Edition"

-- DATE "09/27/2020 12:51:54"

-- 
-- Device: Altera 10M50DAF672C8GES Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_C2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_D3,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_F9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ram_vhdl_max10 IS
    PORT (
	address : IN std_logic_vector(4 DOWNTO 0);
	clock : IN std_logic;
	data : IN std_logic_vector(127 DOWNTO 0);
	wren : IN std_logic;
	q : OUT std_logic_vector(127 DOWNTO 0)
	);
END ram_vhdl_max10;

-- Design Ports Information
-- q[0]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[1]	=>  Location: PIN_P25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[2]	=>  Location: PIN_F25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[3]	=>  Location: PIN_R20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[4]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[5]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[6]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[7]	=>  Location: PIN_J26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[8]	=>  Location: PIN_F26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[9]	=>  Location: PIN_G26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[10]	=>  Location: PIN_K25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[11]	=>  Location: PIN_N24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[12]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[13]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[14]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[15]	=>  Location: PIN_C26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[16]	=>  Location: PIN_K24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[17]	=>  Location: PIN_G25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[18]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[19]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[20]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[21]	=>  Location: PIN_D26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[22]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[23]	=>  Location: PIN_G24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[24]	=>  Location: PIN_J24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[25]	=>  Location: PIN_U26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[26]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[27]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[28]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[29]	=>  Location: PIN_M25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[30]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[31]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[32]	=>  Location: PIN_P26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[33]	=>  Location: PIN_P20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[34]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[35]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[36]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[37]	=>  Location: PIN_AC16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[38]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[39]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[40]	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[41]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[42]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[43]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[44]	=>  Location: PIN_AD22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[45]	=>  Location: PIN_AF22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[46]	=>  Location: PIN_AC21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[47]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[48]	=>  Location: PIN_AE25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[49]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[50]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[51]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[52]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[53]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[54]	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[55]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[56]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[57]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[58]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[59]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[60]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[61]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[62]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[63]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[64]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[65]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[66]	=>  Location: PIN_AD21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[67]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[68]	=>  Location: PIN_AD20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[69]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[70]	=>  Location: PIN_T16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[71]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[72]	=>  Location: PIN_C25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[73]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[74]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[75]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[76]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[77]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[78]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[79]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[80]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[81]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[82]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[83]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[84]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[85]	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[86]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[87]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[88]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[89]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[90]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[91]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[92]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[93]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[94]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[95]	=>  Location: PIN_B23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[96]	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[97]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[98]	=>  Location: PIN_F24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[99]	=>  Location: PIN_J23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[100]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[101]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[102]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[103]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[104]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[105]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[106]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[107]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[108]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[109]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[110]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[111]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[112]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[113]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[114]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[115]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[116]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[117]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[118]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[119]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[120]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[121]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[122]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[123]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[124]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[125]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[126]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[127]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wren	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[0]	=>  Location: PIN_P23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[0]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[1]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[2]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[3]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[4]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[1]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[2]	=>  Location: PIN_T24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[3]	=>  Location: PIN_H25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[4]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[5]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[6]	=>  Location: PIN_V24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[7]	=>  Location: PIN_N17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[8]	=>  Location: PIN_U25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[9]	=>  Location: PIN_N23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[10]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[11]	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[12]	=>  Location: PIN_H26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[13]	=>  Location: PIN_R23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[14]	=>  Location: PIN_M26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[15]	=>  Location: PIN_N22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[16]	=>  Location: PIN_N26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[17]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[18]	=>  Location: PIN_V26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[19]	=>  Location: PIN_E26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[20]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[21]	=>  Location: PIN_K26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[22]	=>  Location: PIN_T26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[23]	=>  Location: PIN_R26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[24]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[25]	=>  Location: PIN_M17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[26]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[27]	=>  Location: PIN_J25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[28]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[29]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[30]	=>  Location: PIN_H23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[31]	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[32]	=>  Location: PIN_K23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[33]	=>  Location: PIN_R25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[34]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[35]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[36]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[37]	=>  Location: PIN_AE21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[38]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[39]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[40]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[41]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[42]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[43]	=>  Location: PIN_AE24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[44]	=>  Location: PIN_W23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[45]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[46]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[47]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[48]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[49]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[50]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[51]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[52]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[53]	=>  Location: PIN_AD23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[54]	=>  Location: PIN_T23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[55]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[56]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[57]	=>  Location: PIN_AC22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[58]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[59]	=>  Location: PIN_AC20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[60]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[61]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[62]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[63]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[64]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[65]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[66]	=>  Location: PIN_AC23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[67]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[68]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[69]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[70]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[71]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[72]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[73]	=>  Location: PIN_F23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[74]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[75]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[76]	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[77]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[78]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[79]	=>  Location: PIN_B25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[80]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[81]	=>  Location: PIN_L23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[82]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[83]	=>  Location: PIN_B24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[84]	=>  Location: PIN_G23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[85]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[86]	=>  Location: PIN_A24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[87]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[88]	=>  Location: PIN_D23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[89]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[90]	=>  Location: PIN_E23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[91]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[92]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[93]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[94]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[95]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[96]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[97]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[98]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[99]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[100]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[101]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[102]	=>  Location: PIN_D24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[103]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[104]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[105]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[106]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[107]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[108]	=>  Location: PIN_K14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[109]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[110]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[111]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[112]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[113]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[114]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[115]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[116]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[117]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[118]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[119]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[120]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[121]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[122]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[123]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[124]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[125]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[126]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[127]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ram_vhdl_max10 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_address : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_clock : std_logic;
SIGNAL ww_data : std_logic_vector(127 DOWNTO 0);
SIGNAL ww_wren : std_logic;
SIGNAL ww_q : std_logic_vector(127 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a18_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a18_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a36_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a36_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a36_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a54_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a54_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a54_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a72_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a72_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a72_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a90_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a90_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a90_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a108_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a108_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a108_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a110_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a110_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a110_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \q[0]~output_o\ : std_logic;
SIGNAL \q[1]~output_o\ : std_logic;
SIGNAL \q[2]~output_o\ : std_logic;
SIGNAL \q[3]~output_o\ : std_logic;
SIGNAL \q[4]~output_o\ : std_logic;
SIGNAL \q[5]~output_o\ : std_logic;
SIGNAL \q[6]~output_o\ : std_logic;
SIGNAL \q[7]~output_o\ : std_logic;
SIGNAL \q[8]~output_o\ : std_logic;
SIGNAL \q[9]~output_o\ : std_logic;
SIGNAL \q[10]~output_o\ : std_logic;
SIGNAL \q[11]~output_o\ : std_logic;
SIGNAL \q[12]~output_o\ : std_logic;
SIGNAL \q[13]~output_o\ : std_logic;
SIGNAL \q[14]~output_o\ : std_logic;
SIGNAL \q[15]~output_o\ : std_logic;
SIGNAL \q[16]~output_o\ : std_logic;
SIGNAL \q[17]~output_o\ : std_logic;
SIGNAL \q[18]~output_o\ : std_logic;
SIGNAL \q[19]~output_o\ : std_logic;
SIGNAL \q[20]~output_o\ : std_logic;
SIGNAL \q[21]~output_o\ : std_logic;
SIGNAL \q[22]~output_o\ : std_logic;
SIGNAL \q[23]~output_o\ : std_logic;
SIGNAL \q[24]~output_o\ : std_logic;
SIGNAL \q[25]~output_o\ : std_logic;
SIGNAL \q[26]~output_o\ : std_logic;
SIGNAL \q[27]~output_o\ : std_logic;
SIGNAL \q[28]~output_o\ : std_logic;
SIGNAL \q[29]~output_o\ : std_logic;
SIGNAL \q[30]~output_o\ : std_logic;
SIGNAL \q[31]~output_o\ : std_logic;
SIGNAL \q[32]~output_o\ : std_logic;
SIGNAL \q[33]~output_o\ : std_logic;
SIGNAL \q[34]~output_o\ : std_logic;
SIGNAL \q[35]~output_o\ : std_logic;
SIGNAL \q[36]~output_o\ : std_logic;
SIGNAL \q[37]~output_o\ : std_logic;
SIGNAL \q[38]~output_o\ : std_logic;
SIGNAL \q[39]~output_o\ : std_logic;
SIGNAL \q[40]~output_o\ : std_logic;
SIGNAL \q[41]~output_o\ : std_logic;
SIGNAL \q[42]~output_o\ : std_logic;
SIGNAL \q[43]~output_o\ : std_logic;
SIGNAL \q[44]~output_o\ : std_logic;
SIGNAL \q[45]~output_o\ : std_logic;
SIGNAL \q[46]~output_o\ : std_logic;
SIGNAL \q[47]~output_o\ : std_logic;
SIGNAL \q[48]~output_o\ : std_logic;
SIGNAL \q[49]~output_o\ : std_logic;
SIGNAL \q[50]~output_o\ : std_logic;
SIGNAL \q[51]~output_o\ : std_logic;
SIGNAL \q[52]~output_o\ : std_logic;
SIGNAL \q[53]~output_o\ : std_logic;
SIGNAL \q[54]~output_o\ : std_logic;
SIGNAL \q[55]~output_o\ : std_logic;
SIGNAL \q[56]~output_o\ : std_logic;
SIGNAL \q[57]~output_o\ : std_logic;
SIGNAL \q[58]~output_o\ : std_logic;
SIGNAL \q[59]~output_o\ : std_logic;
SIGNAL \q[60]~output_o\ : std_logic;
SIGNAL \q[61]~output_o\ : std_logic;
SIGNAL \q[62]~output_o\ : std_logic;
SIGNAL \q[63]~output_o\ : std_logic;
SIGNAL \q[64]~output_o\ : std_logic;
SIGNAL \q[65]~output_o\ : std_logic;
SIGNAL \q[66]~output_o\ : std_logic;
SIGNAL \q[67]~output_o\ : std_logic;
SIGNAL \q[68]~output_o\ : std_logic;
SIGNAL \q[69]~output_o\ : std_logic;
SIGNAL \q[70]~output_o\ : std_logic;
SIGNAL \q[71]~output_o\ : std_logic;
SIGNAL \q[72]~output_o\ : std_logic;
SIGNAL \q[73]~output_o\ : std_logic;
SIGNAL \q[74]~output_o\ : std_logic;
SIGNAL \q[75]~output_o\ : std_logic;
SIGNAL \q[76]~output_o\ : std_logic;
SIGNAL \q[77]~output_o\ : std_logic;
SIGNAL \q[78]~output_o\ : std_logic;
SIGNAL \q[79]~output_o\ : std_logic;
SIGNAL \q[80]~output_o\ : std_logic;
SIGNAL \q[81]~output_o\ : std_logic;
SIGNAL \q[82]~output_o\ : std_logic;
SIGNAL \q[83]~output_o\ : std_logic;
SIGNAL \q[84]~output_o\ : std_logic;
SIGNAL \q[85]~output_o\ : std_logic;
SIGNAL \q[86]~output_o\ : std_logic;
SIGNAL \q[87]~output_o\ : std_logic;
SIGNAL \q[88]~output_o\ : std_logic;
SIGNAL \q[89]~output_o\ : std_logic;
SIGNAL \q[90]~output_o\ : std_logic;
SIGNAL \q[91]~output_o\ : std_logic;
SIGNAL \q[92]~output_o\ : std_logic;
SIGNAL \q[93]~output_o\ : std_logic;
SIGNAL \q[94]~output_o\ : std_logic;
SIGNAL \q[95]~output_o\ : std_logic;
SIGNAL \q[96]~output_o\ : std_logic;
SIGNAL \q[97]~output_o\ : std_logic;
SIGNAL \q[98]~output_o\ : std_logic;
SIGNAL \q[99]~output_o\ : std_logic;
SIGNAL \q[100]~output_o\ : std_logic;
SIGNAL \q[101]~output_o\ : std_logic;
SIGNAL \q[102]~output_o\ : std_logic;
SIGNAL \q[103]~output_o\ : std_logic;
SIGNAL \q[104]~output_o\ : std_logic;
SIGNAL \q[105]~output_o\ : std_logic;
SIGNAL \q[106]~output_o\ : std_logic;
SIGNAL \q[107]~output_o\ : std_logic;
SIGNAL \q[108]~output_o\ : std_logic;
SIGNAL \q[109]~output_o\ : std_logic;
SIGNAL \q[110]~output_o\ : std_logic;
SIGNAL \q[111]~output_o\ : std_logic;
SIGNAL \q[112]~output_o\ : std_logic;
SIGNAL \q[113]~output_o\ : std_logic;
SIGNAL \q[114]~output_o\ : std_logic;
SIGNAL \q[115]~output_o\ : std_logic;
SIGNAL \q[116]~output_o\ : std_logic;
SIGNAL \q[117]~output_o\ : std_logic;
SIGNAL \q[118]~output_o\ : std_logic;
SIGNAL \q[119]~output_o\ : std_logic;
SIGNAL \q[120]~output_o\ : std_logic;
SIGNAL \q[121]~output_o\ : std_logic;
SIGNAL \q[122]~output_o\ : std_logic;
SIGNAL \q[123]~output_o\ : std_logic;
SIGNAL \q[124]~output_o\ : std_logic;
SIGNAL \q[125]~output_o\ : std_logic;
SIGNAL \q[126]~output_o\ : std_logic;
SIGNAL \q[127]~output_o\ : std_logic;
SIGNAL \wren~input_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \data[0]~input_o\ : std_logic;
SIGNAL \address[0]~input_o\ : std_logic;
SIGNAL \address[1]~input_o\ : std_logic;
SIGNAL \address[2]~input_o\ : std_logic;
SIGNAL \address[3]~input_o\ : std_logic;
SIGNAL \address[4]~input_o\ : std_logic;
SIGNAL \data[1]~input_o\ : std_logic;
SIGNAL \data[2]~input_o\ : std_logic;
SIGNAL \data[3]~input_o\ : std_logic;
SIGNAL \data[4]~input_o\ : std_logic;
SIGNAL \data[5]~input_o\ : std_logic;
SIGNAL \data[6]~input_o\ : std_logic;
SIGNAL \data[7]~input_o\ : std_logic;
SIGNAL \data[8]~input_o\ : std_logic;
SIGNAL \data[9]~input_o\ : std_logic;
SIGNAL \data[10]~input_o\ : std_logic;
SIGNAL \data[11]~input_o\ : std_logic;
SIGNAL \data[12]~input_o\ : std_logic;
SIGNAL \data[13]~input_o\ : std_logic;
SIGNAL \data[14]~input_o\ : std_logic;
SIGNAL \data[15]~input_o\ : std_logic;
SIGNAL \data[16]~input_o\ : std_logic;
SIGNAL \data[17]~input_o\ : std_logic;
SIGNAL \data[18]~input_o\ : std_logic;
SIGNAL \data[19]~input_o\ : std_logic;
SIGNAL \data[20]~input_o\ : std_logic;
SIGNAL \data[21]~input_o\ : std_logic;
SIGNAL \data[22]~input_o\ : std_logic;
SIGNAL \data[23]~input_o\ : std_logic;
SIGNAL \data[24]~input_o\ : std_logic;
SIGNAL \data[25]~input_o\ : std_logic;
SIGNAL \data[26]~input_o\ : std_logic;
SIGNAL \data[27]~input_o\ : std_logic;
SIGNAL \data[28]~input_o\ : std_logic;
SIGNAL \data[29]~input_o\ : std_logic;
SIGNAL \data[30]~input_o\ : std_logic;
SIGNAL \data[31]~input_o\ : std_logic;
SIGNAL \data[32]~input_o\ : std_logic;
SIGNAL \data[33]~input_o\ : std_logic;
SIGNAL \data[34]~input_o\ : std_logic;
SIGNAL \data[35]~input_o\ : std_logic;
SIGNAL \data[36]~input_o\ : std_logic;
SIGNAL \data[37]~input_o\ : std_logic;
SIGNAL \data[38]~input_o\ : std_logic;
SIGNAL \data[39]~input_o\ : std_logic;
SIGNAL \data[40]~input_o\ : std_logic;
SIGNAL \data[41]~input_o\ : std_logic;
SIGNAL \data[42]~input_o\ : std_logic;
SIGNAL \data[43]~input_o\ : std_logic;
SIGNAL \data[44]~input_o\ : std_logic;
SIGNAL \data[45]~input_o\ : std_logic;
SIGNAL \data[46]~input_o\ : std_logic;
SIGNAL \data[47]~input_o\ : std_logic;
SIGNAL \data[48]~input_o\ : std_logic;
SIGNAL \data[49]~input_o\ : std_logic;
SIGNAL \data[50]~input_o\ : std_logic;
SIGNAL \data[51]~input_o\ : std_logic;
SIGNAL \data[52]~input_o\ : std_logic;
SIGNAL \data[53]~input_o\ : std_logic;
SIGNAL \data[54]~input_o\ : std_logic;
SIGNAL \data[55]~input_o\ : std_logic;
SIGNAL \data[56]~input_o\ : std_logic;
SIGNAL \data[57]~input_o\ : std_logic;
SIGNAL \data[58]~input_o\ : std_logic;
SIGNAL \data[59]~input_o\ : std_logic;
SIGNAL \data[60]~input_o\ : std_logic;
SIGNAL \data[61]~input_o\ : std_logic;
SIGNAL \data[62]~input_o\ : std_logic;
SIGNAL \data[63]~input_o\ : std_logic;
SIGNAL \data[64]~input_o\ : std_logic;
SIGNAL \data[65]~input_o\ : std_logic;
SIGNAL \data[66]~input_o\ : std_logic;
SIGNAL \data[67]~input_o\ : std_logic;
SIGNAL \data[68]~input_o\ : std_logic;
SIGNAL \data[69]~input_o\ : std_logic;
SIGNAL \data[70]~input_o\ : std_logic;
SIGNAL \data[71]~input_o\ : std_logic;
SIGNAL \data[72]~input_o\ : std_logic;
SIGNAL \data[73]~input_o\ : std_logic;
SIGNAL \data[74]~input_o\ : std_logic;
SIGNAL \data[75]~input_o\ : std_logic;
SIGNAL \data[76]~input_o\ : std_logic;
SIGNAL \data[77]~input_o\ : std_logic;
SIGNAL \data[78]~input_o\ : std_logic;
SIGNAL \data[79]~input_o\ : std_logic;
SIGNAL \data[80]~input_o\ : std_logic;
SIGNAL \data[81]~input_o\ : std_logic;
SIGNAL \data[82]~input_o\ : std_logic;
SIGNAL \data[83]~input_o\ : std_logic;
SIGNAL \data[84]~input_o\ : std_logic;
SIGNAL \data[85]~input_o\ : std_logic;
SIGNAL \data[86]~input_o\ : std_logic;
SIGNAL \data[87]~input_o\ : std_logic;
SIGNAL \data[88]~input_o\ : std_logic;
SIGNAL \data[89]~input_o\ : std_logic;
SIGNAL \data[90]~input_o\ : std_logic;
SIGNAL \data[91]~input_o\ : std_logic;
SIGNAL \data[92]~input_o\ : std_logic;
SIGNAL \data[93]~input_o\ : std_logic;
SIGNAL \data[94]~input_o\ : std_logic;
SIGNAL \data[95]~input_o\ : std_logic;
SIGNAL \data[96]~input_o\ : std_logic;
SIGNAL \data[97]~input_o\ : std_logic;
SIGNAL \data[98]~input_o\ : std_logic;
SIGNAL \data[99]~input_o\ : std_logic;
SIGNAL \data[100]~input_o\ : std_logic;
SIGNAL \data[101]~input_o\ : std_logic;
SIGNAL \data[102]~input_o\ : std_logic;
SIGNAL \data[103]~input_o\ : std_logic;
SIGNAL \data[104]~input_o\ : std_logic;
SIGNAL \data[105]~input_o\ : std_logic;
SIGNAL \data[106]~input_o\ : std_logic;
SIGNAL \data[107]~input_o\ : std_logic;
SIGNAL \data[108]~input_o\ : std_logic;
SIGNAL \data[109]~input_o\ : std_logic;
SIGNAL \data[110]~input_o\ : std_logic;
SIGNAL \data[111]~input_o\ : std_logic;
SIGNAL \data[112]~input_o\ : std_logic;
SIGNAL \data[113]~input_o\ : std_logic;
SIGNAL \data[114]~input_o\ : std_logic;
SIGNAL \data[115]~input_o\ : std_logic;
SIGNAL \data[116]~input_o\ : std_logic;
SIGNAL \data[117]~input_o\ : std_logic;
SIGNAL \data[118]~input_o\ : std_logic;
SIGNAL \data[119]~input_o\ : std_logic;
SIGNAL \data[120]~input_o\ : std_logic;
SIGNAL \data[121]~input_o\ : std_logic;
SIGNAL \data[122]~input_o\ : std_logic;
SIGNAL \data[123]~input_o\ : std_logic;
SIGNAL \data[124]~input_o\ : std_logic;
SIGNAL \data[125]~input_o\ : std_logic;
SIGNAL \data[126]~input_o\ : std_logic;
SIGNAL \data[127]~input_o\ : std_logic;
SIGNAL \altsyncram_component|auto_generated|q_a\ : std_logic_vector(127 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_address <= address;
ww_clock <= clock;
ww_data <= data;
ww_wren <= wren;
q <= ww_q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\data[17]~input_o\ & \data[16]~input_o\ & \data[15]~input_o\ & \data[14]~input_o\ & \data[13]~input_o\ & \data[12]~input_o\ & \data[11]~input_o\ & \data[10]~input_o\ & 
\data[9]~input_o\ & \data[8]~input_o\ & \data[7]~input_o\ & \data[6]~input_o\ & \data[5]~input_o\ & \data[4]~input_o\ & \data[3]~input_o\ & \data[2]~input_o\ & \data[1]~input_o\ & \data[0]~input_o\);

\altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\address[4]~input_o\ & \address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & \address[0]~input_o\);

\altsyncram_component|auto_generated|q_a\(0) <= \altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\altsyncram_component|auto_generated|q_a\(1) <= \altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\altsyncram_component|auto_generated|q_a\(2) <= \altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\altsyncram_component|auto_generated|q_a\(3) <= \altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\altsyncram_component|auto_generated|q_a\(4) <= \altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\altsyncram_component|auto_generated|q_a\(5) <= \altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\altsyncram_component|auto_generated|q_a\(6) <= \altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\altsyncram_component|auto_generated|q_a\(7) <= \altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\altsyncram_component|auto_generated|q_a\(8) <= \altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\altsyncram_component|auto_generated|q_a\(9) <= \altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\altsyncram_component|auto_generated|q_a\(10) <= \altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\altsyncram_component|auto_generated|q_a\(11) <= \altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\altsyncram_component|auto_generated|q_a\(12) <= \altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\altsyncram_component|auto_generated|q_a\(13) <= \altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\altsyncram_component|auto_generated|q_a\(14) <= \altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\altsyncram_component|auto_generated|q_a\(15) <= \altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);
\altsyncram_component|auto_generated|q_a\(16) <= \altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(16);
\altsyncram_component|auto_generated|q_a\(17) <= \altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(17);

\altsyncram_component|auto_generated|ram_block1a18_PORTADATAIN_bus\ <= (\data[35]~input_o\ & \data[34]~input_o\ & \data[33]~input_o\ & \data[32]~input_o\ & \data[31]~input_o\ & \data[30]~input_o\ & \data[29]~input_o\ & \data[28]~input_o\ & 
\data[27]~input_o\ & \data[26]~input_o\ & \data[25]~input_o\ & \data[24]~input_o\ & \data[23]~input_o\ & \data[22]~input_o\ & \data[21]~input_o\ & \data[20]~input_o\ & \data[19]~input_o\ & \data[18]~input_o\);

\altsyncram_component|auto_generated|ram_block1a18_PORTAADDR_bus\ <= (\address[4]~input_o\ & \address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & \address[0]~input_o\);

\altsyncram_component|auto_generated|q_a\(18) <= \altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(0);
\altsyncram_component|auto_generated|q_a\(19) <= \altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(1);
\altsyncram_component|auto_generated|q_a\(20) <= \altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(2);
\altsyncram_component|auto_generated|q_a\(21) <= \altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(3);
\altsyncram_component|auto_generated|q_a\(22) <= \altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(4);
\altsyncram_component|auto_generated|q_a\(23) <= \altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(5);
\altsyncram_component|auto_generated|q_a\(24) <= \altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(6);
\altsyncram_component|auto_generated|q_a\(25) <= \altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(7);
\altsyncram_component|auto_generated|q_a\(26) <= \altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(8);
\altsyncram_component|auto_generated|q_a\(27) <= \altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(9);
\altsyncram_component|auto_generated|q_a\(28) <= \altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(10);
\altsyncram_component|auto_generated|q_a\(29) <= \altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(11);
\altsyncram_component|auto_generated|q_a\(30) <= \altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(12);
\altsyncram_component|auto_generated|q_a\(31) <= \altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(13);
\altsyncram_component|auto_generated|q_a\(32) <= \altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(14);
\altsyncram_component|auto_generated|q_a\(33) <= \altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(15);
\altsyncram_component|auto_generated|q_a\(34) <= \altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(16);
\altsyncram_component|auto_generated|q_a\(35) <= \altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(17);

\altsyncram_component|auto_generated|ram_block1a36_PORTADATAIN_bus\ <= (\data[53]~input_o\ & \data[52]~input_o\ & \data[51]~input_o\ & \data[50]~input_o\ & \data[49]~input_o\ & \data[48]~input_o\ & \data[47]~input_o\ & \data[46]~input_o\ & 
\data[45]~input_o\ & \data[44]~input_o\ & \data[43]~input_o\ & \data[42]~input_o\ & \data[41]~input_o\ & \data[40]~input_o\ & \data[39]~input_o\ & \data[38]~input_o\ & \data[37]~input_o\ & \data[36]~input_o\);

\altsyncram_component|auto_generated|ram_block1a36_PORTAADDR_bus\ <= (\address[4]~input_o\ & \address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & \address[0]~input_o\);

\altsyncram_component|auto_generated|q_a\(36) <= \altsyncram_component|auto_generated|ram_block1a36_PORTADATAOUT_bus\(0);
\altsyncram_component|auto_generated|q_a\(37) <= \altsyncram_component|auto_generated|ram_block1a36_PORTADATAOUT_bus\(1);
\altsyncram_component|auto_generated|q_a\(38) <= \altsyncram_component|auto_generated|ram_block1a36_PORTADATAOUT_bus\(2);
\altsyncram_component|auto_generated|q_a\(39) <= \altsyncram_component|auto_generated|ram_block1a36_PORTADATAOUT_bus\(3);
\altsyncram_component|auto_generated|q_a\(40) <= \altsyncram_component|auto_generated|ram_block1a36_PORTADATAOUT_bus\(4);
\altsyncram_component|auto_generated|q_a\(41) <= \altsyncram_component|auto_generated|ram_block1a36_PORTADATAOUT_bus\(5);
\altsyncram_component|auto_generated|q_a\(42) <= \altsyncram_component|auto_generated|ram_block1a36_PORTADATAOUT_bus\(6);
\altsyncram_component|auto_generated|q_a\(43) <= \altsyncram_component|auto_generated|ram_block1a36_PORTADATAOUT_bus\(7);
\altsyncram_component|auto_generated|q_a\(44) <= \altsyncram_component|auto_generated|ram_block1a36_PORTADATAOUT_bus\(8);
\altsyncram_component|auto_generated|q_a\(45) <= \altsyncram_component|auto_generated|ram_block1a36_PORTADATAOUT_bus\(9);
\altsyncram_component|auto_generated|q_a\(46) <= \altsyncram_component|auto_generated|ram_block1a36_PORTADATAOUT_bus\(10);
\altsyncram_component|auto_generated|q_a\(47) <= \altsyncram_component|auto_generated|ram_block1a36_PORTADATAOUT_bus\(11);
\altsyncram_component|auto_generated|q_a\(48) <= \altsyncram_component|auto_generated|ram_block1a36_PORTADATAOUT_bus\(12);
\altsyncram_component|auto_generated|q_a\(49) <= \altsyncram_component|auto_generated|ram_block1a36_PORTADATAOUT_bus\(13);
\altsyncram_component|auto_generated|q_a\(50) <= \altsyncram_component|auto_generated|ram_block1a36_PORTADATAOUT_bus\(14);
\altsyncram_component|auto_generated|q_a\(51) <= \altsyncram_component|auto_generated|ram_block1a36_PORTADATAOUT_bus\(15);
\altsyncram_component|auto_generated|q_a\(52) <= \altsyncram_component|auto_generated|ram_block1a36_PORTADATAOUT_bus\(16);
\altsyncram_component|auto_generated|q_a\(53) <= \altsyncram_component|auto_generated|ram_block1a36_PORTADATAOUT_bus\(17);

\altsyncram_component|auto_generated|ram_block1a54_PORTADATAIN_bus\ <= (\data[71]~input_o\ & \data[70]~input_o\ & \data[69]~input_o\ & \data[68]~input_o\ & \data[67]~input_o\ & \data[66]~input_o\ & \data[65]~input_o\ & \data[64]~input_o\ & 
\data[63]~input_o\ & \data[62]~input_o\ & \data[61]~input_o\ & \data[60]~input_o\ & \data[59]~input_o\ & \data[58]~input_o\ & \data[57]~input_o\ & \data[56]~input_o\ & \data[55]~input_o\ & \data[54]~input_o\);

\altsyncram_component|auto_generated|ram_block1a54_PORTAADDR_bus\ <= (\address[4]~input_o\ & \address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & \address[0]~input_o\);

\altsyncram_component|auto_generated|q_a\(54) <= \altsyncram_component|auto_generated|ram_block1a54_PORTADATAOUT_bus\(0);
\altsyncram_component|auto_generated|q_a\(55) <= \altsyncram_component|auto_generated|ram_block1a54_PORTADATAOUT_bus\(1);
\altsyncram_component|auto_generated|q_a\(56) <= \altsyncram_component|auto_generated|ram_block1a54_PORTADATAOUT_bus\(2);
\altsyncram_component|auto_generated|q_a\(57) <= \altsyncram_component|auto_generated|ram_block1a54_PORTADATAOUT_bus\(3);
\altsyncram_component|auto_generated|q_a\(58) <= \altsyncram_component|auto_generated|ram_block1a54_PORTADATAOUT_bus\(4);
\altsyncram_component|auto_generated|q_a\(59) <= \altsyncram_component|auto_generated|ram_block1a54_PORTADATAOUT_bus\(5);
\altsyncram_component|auto_generated|q_a\(60) <= \altsyncram_component|auto_generated|ram_block1a54_PORTADATAOUT_bus\(6);
\altsyncram_component|auto_generated|q_a\(61) <= \altsyncram_component|auto_generated|ram_block1a54_PORTADATAOUT_bus\(7);
\altsyncram_component|auto_generated|q_a\(62) <= \altsyncram_component|auto_generated|ram_block1a54_PORTADATAOUT_bus\(8);
\altsyncram_component|auto_generated|q_a\(63) <= \altsyncram_component|auto_generated|ram_block1a54_PORTADATAOUT_bus\(9);
\altsyncram_component|auto_generated|q_a\(64) <= \altsyncram_component|auto_generated|ram_block1a54_PORTADATAOUT_bus\(10);
\altsyncram_component|auto_generated|q_a\(65) <= \altsyncram_component|auto_generated|ram_block1a54_PORTADATAOUT_bus\(11);
\altsyncram_component|auto_generated|q_a\(66) <= \altsyncram_component|auto_generated|ram_block1a54_PORTADATAOUT_bus\(12);
\altsyncram_component|auto_generated|q_a\(67) <= \altsyncram_component|auto_generated|ram_block1a54_PORTADATAOUT_bus\(13);
\altsyncram_component|auto_generated|q_a\(68) <= \altsyncram_component|auto_generated|ram_block1a54_PORTADATAOUT_bus\(14);
\altsyncram_component|auto_generated|q_a\(69) <= \altsyncram_component|auto_generated|ram_block1a54_PORTADATAOUT_bus\(15);
\altsyncram_component|auto_generated|q_a\(70) <= \altsyncram_component|auto_generated|ram_block1a54_PORTADATAOUT_bus\(16);
\altsyncram_component|auto_generated|q_a\(71) <= \altsyncram_component|auto_generated|ram_block1a54_PORTADATAOUT_bus\(17);

\altsyncram_component|auto_generated|ram_block1a72_PORTADATAIN_bus\ <= (\data[89]~input_o\ & \data[88]~input_o\ & \data[87]~input_o\ & \data[86]~input_o\ & \data[85]~input_o\ & \data[84]~input_o\ & \data[83]~input_o\ & \data[82]~input_o\ & 
\data[81]~input_o\ & \data[80]~input_o\ & \data[79]~input_o\ & \data[78]~input_o\ & \data[77]~input_o\ & \data[76]~input_o\ & \data[75]~input_o\ & \data[74]~input_o\ & \data[73]~input_o\ & \data[72]~input_o\);

\altsyncram_component|auto_generated|ram_block1a72_PORTAADDR_bus\ <= (\address[4]~input_o\ & \address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & \address[0]~input_o\);

\altsyncram_component|auto_generated|q_a\(72) <= \altsyncram_component|auto_generated|ram_block1a72_PORTADATAOUT_bus\(0);
\altsyncram_component|auto_generated|q_a\(73) <= \altsyncram_component|auto_generated|ram_block1a72_PORTADATAOUT_bus\(1);
\altsyncram_component|auto_generated|q_a\(74) <= \altsyncram_component|auto_generated|ram_block1a72_PORTADATAOUT_bus\(2);
\altsyncram_component|auto_generated|q_a\(75) <= \altsyncram_component|auto_generated|ram_block1a72_PORTADATAOUT_bus\(3);
\altsyncram_component|auto_generated|q_a\(76) <= \altsyncram_component|auto_generated|ram_block1a72_PORTADATAOUT_bus\(4);
\altsyncram_component|auto_generated|q_a\(77) <= \altsyncram_component|auto_generated|ram_block1a72_PORTADATAOUT_bus\(5);
\altsyncram_component|auto_generated|q_a\(78) <= \altsyncram_component|auto_generated|ram_block1a72_PORTADATAOUT_bus\(6);
\altsyncram_component|auto_generated|q_a\(79) <= \altsyncram_component|auto_generated|ram_block1a72_PORTADATAOUT_bus\(7);
\altsyncram_component|auto_generated|q_a\(80) <= \altsyncram_component|auto_generated|ram_block1a72_PORTADATAOUT_bus\(8);
\altsyncram_component|auto_generated|q_a\(81) <= \altsyncram_component|auto_generated|ram_block1a72_PORTADATAOUT_bus\(9);
\altsyncram_component|auto_generated|q_a\(82) <= \altsyncram_component|auto_generated|ram_block1a72_PORTADATAOUT_bus\(10);
\altsyncram_component|auto_generated|q_a\(83) <= \altsyncram_component|auto_generated|ram_block1a72_PORTADATAOUT_bus\(11);
\altsyncram_component|auto_generated|q_a\(84) <= \altsyncram_component|auto_generated|ram_block1a72_PORTADATAOUT_bus\(12);
\altsyncram_component|auto_generated|q_a\(85) <= \altsyncram_component|auto_generated|ram_block1a72_PORTADATAOUT_bus\(13);
\altsyncram_component|auto_generated|q_a\(86) <= \altsyncram_component|auto_generated|ram_block1a72_PORTADATAOUT_bus\(14);
\altsyncram_component|auto_generated|q_a\(87) <= \altsyncram_component|auto_generated|ram_block1a72_PORTADATAOUT_bus\(15);
\altsyncram_component|auto_generated|q_a\(88) <= \altsyncram_component|auto_generated|ram_block1a72_PORTADATAOUT_bus\(16);
\altsyncram_component|auto_generated|q_a\(89) <= \altsyncram_component|auto_generated|ram_block1a72_PORTADATAOUT_bus\(17);

\altsyncram_component|auto_generated|ram_block1a90_PORTADATAIN_bus\ <= (\data[107]~input_o\ & \data[106]~input_o\ & \data[105]~input_o\ & \data[104]~input_o\ & \data[103]~input_o\ & \data[102]~input_o\ & \data[101]~input_o\ & \data[100]~input_o\ & 
\data[99]~input_o\ & \data[98]~input_o\ & \data[97]~input_o\ & \data[96]~input_o\ & \data[95]~input_o\ & \data[94]~input_o\ & \data[93]~input_o\ & \data[92]~input_o\ & \data[91]~input_o\ & \data[90]~input_o\);

\altsyncram_component|auto_generated|ram_block1a90_PORTAADDR_bus\ <= (\address[4]~input_o\ & \address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & \address[0]~input_o\);

\altsyncram_component|auto_generated|q_a\(90) <= \altsyncram_component|auto_generated|ram_block1a90_PORTADATAOUT_bus\(0);
\altsyncram_component|auto_generated|q_a\(91) <= \altsyncram_component|auto_generated|ram_block1a90_PORTADATAOUT_bus\(1);
\altsyncram_component|auto_generated|q_a\(92) <= \altsyncram_component|auto_generated|ram_block1a90_PORTADATAOUT_bus\(2);
\altsyncram_component|auto_generated|q_a\(93) <= \altsyncram_component|auto_generated|ram_block1a90_PORTADATAOUT_bus\(3);
\altsyncram_component|auto_generated|q_a\(94) <= \altsyncram_component|auto_generated|ram_block1a90_PORTADATAOUT_bus\(4);
\altsyncram_component|auto_generated|q_a\(95) <= \altsyncram_component|auto_generated|ram_block1a90_PORTADATAOUT_bus\(5);
\altsyncram_component|auto_generated|q_a\(96) <= \altsyncram_component|auto_generated|ram_block1a90_PORTADATAOUT_bus\(6);
\altsyncram_component|auto_generated|q_a\(97) <= \altsyncram_component|auto_generated|ram_block1a90_PORTADATAOUT_bus\(7);
\altsyncram_component|auto_generated|q_a\(98) <= \altsyncram_component|auto_generated|ram_block1a90_PORTADATAOUT_bus\(8);
\altsyncram_component|auto_generated|q_a\(99) <= \altsyncram_component|auto_generated|ram_block1a90_PORTADATAOUT_bus\(9);
\altsyncram_component|auto_generated|q_a\(100) <= \altsyncram_component|auto_generated|ram_block1a90_PORTADATAOUT_bus\(10);
\altsyncram_component|auto_generated|q_a\(101) <= \altsyncram_component|auto_generated|ram_block1a90_PORTADATAOUT_bus\(11);
\altsyncram_component|auto_generated|q_a\(102) <= \altsyncram_component|auto_generated|ram_block1a90_PORTADATAOUT_bus\(12);
\altsyncram_component|auto_generated|q_a\(103) <= \altsyncram_component|auto_generated|ram_block1a90_PORTADATAOUT_bus\(13);
\altsyncram_component|auto_generated|q_a\(104) <= \altsyncram_component|auto_generated|ram_block1a90_PORTADATAOUT_bus\(14);
\altsyncram_component|auto_generated|q_a\(105) <= \altsyncram_component|auto_generated|ram_block1a90_PORTADATAOUT_bus\(15);
\altsyncram_component|auto_generated|q_a\(106) <= \altsyncram_component|auto_generated|ram_block1a90_PORTADATAOUT_bus\(16);
\altsyncram_component|auto_generated|q_a\(107) <= \altsyncram_component|auto_generated|ram_block1a90_PORTADATAOUT_bus\(17);

\altsyncram_component|auto_generated|ram_block1a108_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \data[109]~input_o\ & \data[108]~input_o\);

\altsyncram_component|auto_generated|ram_block1a108_PORTAADDR_bus\ <= (\address[4]~input_o\ & \address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & \address[0]~input_o\);

\altsyncram_component|auto_generated|q_a\(108) <= \altsyncram_component|auto_generated|ram_block1a108_PORTADATAOUT_bus\(0);
\altsyncram_component|auto_generated|q_a\(109) <= \altsyncram_component|auto_generated|ram_block1a108_PORTADATAOUT_bus\(1);

\altsyncram_component|auto_generated|ram_block1a110_PORTADATAIN_bus\ <= (\data[127]~input_o\ & \data[126]~input_o\ & \data[125]~input_o\ & \data[124]~input_o\ & \data[123]~input_o\ & \data[122]~input_o\ & \data[121]~input_o\ & \data[120]~input_o\ & 
\data[119]~input_o\ & \data[118]~input_o\ & \data[117]~input_o\ & \data[116]~input_o\ & \data[115]~input_o\ & \data[114]~input_o\ & \data[113]~input_o\ & \data[112]~input_o\ & \data[111]~input_o\ & \data[110]~input_o\);

\altsyncram_component|auto_generated|ram_block1a110_PORTAADDR_bus\ <= (\address[4]~input_o\ & \address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & \address[0]~input_o\);

\altsyncram_component|auto_generated|q_a\(110) <= \altsyncram_component|auto_generated|ram_block1a110_PORTADATAOUT_bus\(0);
\altsyncram_component|auto_generated|q_a\(111) <= \altsyncram_component|auto_generated|ram_block1a110_PORTADATAOUT_bus\(1);
\altsyncram_component|auto_generated|q_a\(112) <= \altsyncram_component|auto_generated|ram_block1a110_PORTADATAOUT_bus\(2);
\altsyncram_component|auto_generated|q_a\(113) <= \altsyncram_component|auto_generated|ram_block1a110_PORTADATAOUT_bus\(3);
\altsyncram_component|auto_generated|q_a\(114) <= \altsyncram_component|auto_generated|ram_block1a110_PORTADATAOUT_bus\(4);
\altsyncram_component|auto_generated|q_a\(115) <= \altsyncram_component|auto_generated|ram_block1a110_PORTADATAOUT_bus\(5);
\altsyncram_component|auto_generated|q_a\(116) <= \altsyncram_component|auto_generated|ram_block1a110_PORTADATAOUT_bus\(6);
\altsyncram_component|auto_generated|q_a\(117) <= \altsyncram_component|auto_generated|ram_block1a110_PORTADATAOUT_bus\(7);
\altsyncram_component|auto_generated|q_a\(118) <= \altsyncram_component|auto_generated|ram_block1a110_PORTADATAOUT_bus\(8);
\altsyncram_component|auto_generated|q_a\(119) <= \altsyncram_component|auto_generated|ram_block1a110_PORTADATAOUT_bus\(9);
\altsyncram_component|auto_generated|q_a\(120) <= \altsyncram_component|auto_generated|ram_block1a110_PORTADATAOUT_bus\(10);
\altsyncram_component|auto_generated|q_a\(121) <= \altsyncram_component|auto_generated|ram_block1a110_PORTADATAOUT_bus\(11);
\altsyncram_component|auto_generated|q_a\(122) <= \altsyncram_component|auto_generated|ram_block1a110_PORTADATAOUT_bus\(12);
\altsyncram_component|auto_generated|q_a\(123) <= \altsyncram_component|auto_generated|ram_block1a110_PORTADATAOUT_bus\(13);
\altsyncram_component|auto_generated|q_a\(124) <= \altsyncram_component|auto_generated|ram_block1a110_PORTADATAOUT_bus\(14);
\altsyncram_component|auto_generated|q_a\(125) <= \altsyncram_component|auto_generated|ram_block1a110_PORTADATAOUT_bus\(15);
\altsyncram_component|auto_generated|q_a\(126) <= \altsyncram_component|auto_generated|ram_block1a110_PORTADATAOUT_bus\(16);
\altsyncram_component|auto_generated|q_a\(127) <= \altsyncram_component|auto_generated|ram_block1a110_PORTADATAOUT_bus\(17);

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y42_N12
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X78_Y15_N9
\q[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(0),
	devoe => ww_devoe,
	o => \q[0]~output_o\);

-- Location: IOOBUF_X78_Y25_N16
\q[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(1),
	devoe => ww_devoe,
	o => \q[1]~output_o\);

-- Location: IOOBUF_X78_Y36_N2
\q[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(2),
	devoe => ww_devoe,
	o => \q[2]~output_o\);

-- Location: IOOBUF_X78_Y20_N16
\q[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(3),
	devoe => ww_devoe,
	o => \q[3]~output_o\);

-- Location: IOOBUF_X78_Y16_N9
\q[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(4),
	devoe => ww_devoe,
	o => \q[4]~output_o\);

-- Location: IOOBUF_X60_Y0_N2
\q[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(5),
	devoe => ww_devoe,
	o => \q[5]~output_o\);

-- Location: IOOBUF_X56_Y0_N9
\q[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(6),
	devoe => ww_devoe,
	o => \q[6]~output_o\);

-- Location: IOOBUF_X78_Y27_N2
\q[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(7),
	devoe => ww_devoe,
	o => \q[7]~output_o\);

-- Location: IOOBUF_X78_Y31_N9
\q[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(8),
	devoe => ww_devoe,
	o => \q[8]~output_o\);

-- Location: IOOBUF_X78_Y29_N2
\q[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(9),
	devoe => ww_devoe,
	o => \q[9]~output_o\);

-- Location: IOOBUF_X78_Y31_N23
\q[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(10),
	devoe => ww_devoe,
	o => \q[10]~output_o\);

-- Location: IOOBUF_X78_Y29_N23
\q[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(11),
	devoe => ww_devoe,
	o => \q[11]~output_o\);

-- Location: IOOBUF_X78_Y20_N24
\q[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(12),
	devoe => ww_devoe,
	o => \q[12]~output_o\);

-- Location: IOOBUF_X78_Y24_N9
\q[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(13),
	devoe => ww_devoe,
	o => \q[13]~output_o\);

-- Location: IOOBUF_X58_Y54_N9
\q[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(14),
	devoe => ww_devoe,
	o => \q[14]~output_o\);

-- Location: IOOBUF_X78_Y35_N2
\q[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(15),
	devoe => ww_devoe,
	o => \q[15]~output_o\);

-- Location: IOOBUF_X78_Y35_N23
\q[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(16),
	devoe => ww_devoe,
	o => \q[16]~output_o\);

-- Location: IOOBUF_X78_Y36_N9
\q[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(17),
	devoe => ww_devoe,
	o => \q[17]~output_o\);

-- Location: IOOBUF_X78_Y34_N2
\q[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(18),
	devoe => ww_devoe,
	o => \q[18]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\q[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(19),
	devoe => ww_devoe,
	o => \q[19]~output_o\);

-- Location: IOOBUF_X78_Y17_N9
\q[20]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(20),
	devoe => ww_devoe,
	o => \q[20]~output_o\);

-- Location: IOOBUF_X78_Y35_N9
\q[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(21),
	devoe => ww_devoe,
	o => \q[21]~output_o\);

-- Location: IOOBUF_X78_Y30_N2
\q[22]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(22),
	devoe => ww_devoe,
	o => \q[22]~output_o\);

-- Location: IOOBUF_X78_Y41_N9
\q[23]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(23),
	devoe => ww_devoe,
	o => \q[23]~output_o\);

-- Location: IOOBUF_X78_Y33_N2
\q[24]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(24),
	devoe => ww_devoe,
	o => \q[24]~output_o\);

-- Location: IOOBUF_X78_Y23_N9
\q[25]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(25),
	devoe => ww_devoe,
	o => \q[25]~output_o\);

-- Location: IOOBUF_X78_Y30_N9
\q[26]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(26),
	devoe => ww_devoe,
	o => \q[26]~output_o\);

-- Location: IOOBUF_X64_Y0_N23
\q[27]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(27),
	devoe => ww_devoe,
	o => \q[27]~output_o\);

-- Location: IOOBUF_X64_Y54_N16
\q[28]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(28),
	devoe => ww_devoe,
	o => \q[28]~output_o\);

-- Location: IOOBUF_X78_Y30_N23
\q[29]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(29),
	devoe => ww_devoe,
	o => \q[29]~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\q[30]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(30),
	devoe => ww_devoe,
	o => \q[30]~output_o\);

-- Location: IOOBUF_X78_Y16_N24
\q[31]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(31),
	devoe => ww_devoe,
	o => \q[31]~output_o\);

-- Location: IOOBUF_X78_Y25_N2
\q[32]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(32),
	devoe => ww_devoe,
	o => \q[32]~output_o\);

-- Location: IOOBUF_X78_Y24_N24
\q[33]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(33),
	devoe => ww_devoe,
	o => \q[33]~output_o\);

-- Location: IOOBUF_X78_Y21_N9
\q[34]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(34),
	devoe => ww_devoe,
	o => \q[34]~output_o\);

-- Location: IOOBUF_X78_Y33_N16
\q[35]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(35),
	devoe => ww_devoe,
	o => \q[35]~output_o\);

-- Location: IOOBUF_X78_Y3_N23
\q[36]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(36),
	devoe => ww_devoe,
	o => \q[36]~output_o\);

-- Location: IOOBUF_X64_Y0_N16
\q[37]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(37),
	devoe => ww_devoe,
	o => \q[37]~output_o\);

-- Location: IOOBUF_X78_Y10_N16
\q[38]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(38),
	devoe => ww_devoe,
	o => \q[38]~output_o\);

-- Location: IOOBUF_X78_Y18_N16
\q[39]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(39),
	devoe => ww_devoe,
	o => \q[39]~output_o\);

-- Location: IOOBUF_X78_Y13_N16
\q[40]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(40),
	devoe => ww_devoe,
	o => \q[40]~output_o\);

-- Location: IOOBUF_X58_Y0_N16
\q[41]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(41),
	devoe => ww_devoe,
	o => \q[41]~output_o\);

-- Location: IOOBUF_X78_Y8_N9
\q[42]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(42),
	devoe => ww_devoe,
	o => \q[42]~output_o\);

-- Location: IOOBUF_X56_Y0_N2
\q[43]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(43),
	devoe => ww_devoe,
	o => \q[43]~output_o\);

-- Location: IOOBUF_X69_Y0_N16
\q[44]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(44),
	devoe => ww_devoe,
	o => \q[44]~output_o\);

-- Location: IOOBUF_X64_Y0_N9
\q[45]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(45),
	devoe => ww_devoe,
	o => \q[45]~output_o\);

-- Location: IOOBUF_X69_Y0_N23
\q[46]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(46),
	devoe => ww_devoe,
	o => \q[46]~output_o\);

-- Location: IOOBUF_X78_Y9_N16
\q[47]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(47),
	devoe => ww_devoe,
	o => \q[47]~output_o\);

-- Location: IOOBUF_X78_Y5_N2
\q[48]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(48),
	devoe => ww_devoe,
	o => \q[48]~output_o\);

-- Location: IOOBUF_X78_Y15_N23
\q[49]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(49),
	devoe => ww_devoe,
	o => \q[49]~output_o\);

-- Location: IOOBUF_X60_Y0_N9
\q[50]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(50),
	devoe => ww_devoe,
	o => \q[50]~output_o\);

-- Location: IOOBUF_X78_Y10_N2
\q[51]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(51),
	devoe => ww_devoe,
	o => \q[51]~output_o\);

-- Location: IOOBUF_X64_Y0_N2
\q[52]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(52),
	devoe => ww_devoe,
	o => \q[52]~output_o\);

-- Location: IOOBUF_X78_Y6_N16
\q[53]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(53),
	devoe => ww_devoe,
	o => \q[53]~output_o\);

-- Location: IOOBUF_X60_Y0_N16
\q[54]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(54),
	devoe => ww_devoe,
	o => \q[54]~output_o\);

-- Location: IOOBUF_X78_Y9_N2
\q[55]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(55),
	devoe => ww_devoe,
	o => \q[55]~output_o\);

-- Location: IOOBUF_X78_Y13_N2
\q[56]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(56),
	devoe => ww_devoe,
	o => \q[56]~output_o\);

-- Location: IOOBUF_X78_Y6_N23
\q[57]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(57),
	devoe => ww_devoe,
	o => \q[57]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\q[58]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(58),
	devoe => ww_devoe,
	o => \q[58]~output_o\);

-- Location: IOOBUF_X78_Y3_N2
\q[59]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(59),
	devoe => ww_devoe,
	o => \q[59]~output_o\);

-- Location: IOOBUF_X78_Y3_N9
\q[60]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(60),
	devoe => ww_devoe,
	o => \q[60]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\q[61]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(61),
	devoe => ww_devoe,
	o => \q[61]~output_o\);

-- Location: IOOBUF_X58_Y0_N2
\q[62]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(62),
	devoe => ww_devoe,
	o => \q[62]~output_o\);

-- Location: IOOBUF_X78_Y12_N9
\q[63]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(63),
	devoe => ww_devoe,
	o => \q[63]~output_o\);

-- Location: IOOBUF_X78_Y9_N9
\q[64]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(64),
	devoe => ww_devoe,
	o => \q[64]~output_o\);

-- Location: IOOBUF_X66_Y0_N16
\q[65]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(65),
	devoe => ww_devoe,
	o => \q[65]~output_o\);

-- Location: IOOBUF_X64_Y0_N30
\q[66]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(66),
	devoe => ww_devoe,
	o => \q[66]~output_o\);

-- Location: IOOBUF_X56_Y0_N16
\q[67]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(67),
	devoe => ww_devoe,
	o => \q[67]~output_o\);

-- Location: IOOBUF_X62_Y0_N2
\q[68]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(68),
	devoe => ww_devoe,
	o => \q[68]~output_o\);

-- Location: IOOBUF_X78_Y15_N2
\q[69]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(69),
	devoe => ww_devoe,
	o => \q[69]~output_o\);

-- Location: IOOBUF_X78_Y15_N16
\q[70]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(70),
	devoe => ww_devoe,
	o => \q[70]~output_o\);

-- Location: IOOBUF_X58_Y0_N23
\q[71]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(71),
	devoe => ww_devoe,
	o => \q[71]~output_o\);

-- Location: IOOBUF_X78_Y40_N2
\q[72]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(72),
	devoe => ww_devoe,
	o => \q[72]~output_o\);

-- Location: IOOBUF_X69_Y54_N9
\q[73]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(73),
	devoe => ww_devoe,
	o => \q[73]~output_o\);

-- Location: IOOBUF_X78_Y45_N23
\q[74]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(74),
	devoe => ww_devoe,
	o => \q[74]~output_o\);

-- Location: IOOBUF_X64_Y54_N9
\q[75]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(75),
	devoe => ww_devoe,
	o => \q[75]~output_o\);

-- Location: IOOBUF_X64_Y54_N2
\q[76]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(76),
	devoe => ww_devoe,
	o => \q[76]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\q[77]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(77),
	devoe => ww_devoe,
	o => \q[77]~output_o\);

-- Location: IOOBUF_X78_Y42_N9
\q[78]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(78),
	devoe => ww_devoe,
	o => \q[78]~output_o\);

-- Location: IOOBUF_X71_Y54_N30
\q[79]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(79),
	devoe => ww_devoe,
	o => \q[79]~output_o\);

-- Location: IOOBUF_X78_Y48_N23
\q[80]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(80),
	devoe => ww_devoe,
	o => \q[80]~output_o\);

-- Location: IOOBUF_X78_Y48_N2
\q[81]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(81),
	devoe => ww_devoe,
	o => \q[81]~output_o\);

-- Location: IOOBUF_X78_Y44_N16
\q[82]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(82),
	devoe => ww_devoe,
	o => \q[82]~output_o\);

-- Location: IOOBUF_X78_Y37_N16
\q[83]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(83),
	devoe => ww_devoe,
	o => \q[83]~output_o\);

-- Location: IOOBUF_X78_Y42_N16
\q[84]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(84),
	devoe => ww_devoe,
	o => \q[84]~output_o\);

-- Location: IOOBUF_X78_Y42_N23
\q[85]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(85),
	devoe => ww_devoe,
	o => \q[85]~output_o\);

-- Location: IOOBUF_X78_Y44_N24
\q[86]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(86),
	devoe => ww_devoe,
	o => \q[86]~output_o\);

-- Location: IOOBUF_X58_Y54_N16
\q[87]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(87),
	devoe => ww_devoe,
	o => \q[87]~output_o\);

-- Location: IOOBUF_X62_Y54_N9
\q[88]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(88),
	devoe => ww_devoe,
	o => \q[88]~output_o\);

-- Location: IOOBUF_X60_Y54_N16
\q[89]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(89),
	devoe => ww_devoe,
	o => \q[89]~output_o\);

-- Location: IOOBUF_X56_Y54_N23
\q[90]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(90),
	devoe => ww_devoe,
	o => \q[90]~output_o\);

-- Location: IOOBUF_X71_Y54_N2
\q[91]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(91),
	devoe => ww_devoe,
	o => \q[91]~output_o\);

-- Location: IOOBUF_X78_Y42_N2
\q[92]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(92),
	devoe => ww_devoe,
	o => \q[92]~output_o\);

-- Location: IOOBUF_X78_Y43_N2
\q[93]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(93),
	devoe => ww_devoe,
	o => \q[93]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\q[94]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(94),
	devoe => ww_devoe,
	o => \q[94]~output_o\);

-- Location: IOOBUF_X78_Y48_N9
\q[95]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(95),
	devoe => ww_devoe,
	o => \q[95]~output_o\);

-- Location: IOOBUF_X78_Y40_N9
\q[96]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(96),
	devoe => ww_devoe,
	o => \q[96]~output_o\);

-- Location: IOOBUF_X58_Y54_N30
\q[97]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(97),
	devoe => ww_devoe,
	o => \q[97]~output_o\);

-- Location: IOOBUF_X78_Y41_N2
\q[98]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(98),
	devoe => ww_devoe,
	o => \q[98]~output_o\);

-- Location: IOOBUF_X78_Y40_N23
\q[99]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(99),
	devoe => ww_devoe,
	o => \q[99]~output_o\);

-- Location: IOOBUF_X78_Y49_N16
\q[100]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(100),
	devoe => ww_devoe,
	o => \q[100]~output_o\);

-- Location: IOOBUF_X54_Y54_N30
\q[101]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(101),
	devoe => ww_devoe,
	o => \q[101]~output_o\);

-- Location: IOOBUF_X78_Y45_N9
\q[102]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(102),
	devoe => ww_devoe,
	o => \q[102]~output_o\);

-- Location: IOOBUF_X71_Y54_N9
\q[103]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(103),
	devoe => ww_devoe,
	o => \q[103]~output_o\);

-- Location: IOOBUF_X78_Y45_N16
\q[104]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(104),
	devoe => ww_devoe,
	o => \q[104]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\q[105]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(105),
	devoe => ww_devoe,
	o => \q[105]~output_o\);

-- Location: IOOBUF_X60_Y54_N23
\q[106]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(106),
	devoe => ww_devoe,
	o => \q[106]~output_o\);

-- Location: IOOBUF_X71_Y54_N16
\q[107]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(107),
	devoe => ww_devoe,
	o => \q[107]~output_o\);

-- Location: IOOBUF_X51_Y54_N30
\q[108]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(108),
	devoe => ww_devoe,
	o => \q[108]~output_o\);

-- Location: IOOBUF_X34_Y39_N23
\q[109]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(109),
	devoe => ww_devoe,
	o => \q[109]~output_o\);

-- Location: IOOBUF_X38_Y39_N30
\q[110]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(110),
	devoe => ww_devoe,
	o => \q[110]~output_o\);

-- Location: IOOBUF_X36_Y39_N2
\q[111]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(111),
	devoe => ww_devoe,
	o => \q[111]~output_o\);

-- Location: IOOBUF_X51_Y54_N9
\q[112]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(112),
	devoe => ww_devoe,
	o => \q[112]~output_o\);

-- Location: IOOBUF_X40_Y39_N2
\q[113]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(113),
	devoe => ww_devoe,
	o => \q[113]~output_o\);

-- Location: IOOBUF_X38_Y39_N23
\q[114]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(114),
	devoe => ww_devoe,
	o => \q[114]~output_o\);

-- Location: IOOBUF_X36_Y39_N9
\q[115]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(115),
	devoe => ww_devoe,
	o => \q[115]~output_o\);

-- Location: IOOBUF_X49_Y54_N23
\q[116]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(116),
	devoe => ww_devoe,
	o => \q[116]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\q[117]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(117),
	devoe => ww_devoe,
	o => \q[117]~output_o\);

-- Location: IOOBUF_X31_Y39_N9
\q[118]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(118),
	devoe => ww_devoe,
	o => \q[118]~output_o\);

-- Location: IOOBUF_X51_Y54_N2
\q[119]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(119),
	devoe => ww_devoe,
	o => \q[119]~output_o\);

-- Location: IOOBUF_X49_Y54_N16
\q[120]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(120),
	devoe => ww_devoe,
	o => \q[120]~output_o\);

-- Location: IOOBUF_X51_Y54_N23
\q[121]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(121),
	devoe => ww_devoe,
	o => \q[121]~output_o\);

-- Location: IOOBUF_X38_Y39_N16
\q[122]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(122),
	devoe => ww_devoe,
	o => \q[122]~output_o\);

-- Location: IOOBUF_X40_Y39_N9
\q[123]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(123),
	devoe => ww_devoe,
	o => \q[123]~output_o\);

-- Location: IOOBUF_X54_Y54_N2
\q[124]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(124),
	devoe => ww_devoe,
	o => \q[124]~output_o\);

-- Location: IOOBUF_X40_Y39_N16
\q[125]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(125),
	devoe => ww_devoe,
	o => \q[125]~output_o\);

-- Location: IOOBUF_X34_Y39_N9
\q[126]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(126),
	devoe => ww_devoe,
	o => \q[126]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\q[127]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(127),
	devoe => ww_devoe,
	o => \q[127]~output_o\);

-- Location: IOIBUF_X78_Y41_N23
\wren~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wren,
	o => \wren~input_o\);

-- Location: IOIBUF_X0_Y18_N15
\clock~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G3
\clock~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: IOIBUF_X78_Y24_N1
\data[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(0),
	o => \data[0]~input_o\);

-- Location: IOIBUF_X56_Y0_N29
\address[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(0),
	o => \address[0]~input_o\);

-- Location: IOIBUF_X78_Y17_N22
\address[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(1),
	o => \address[1]~input_o\);

-- Location: IOIBUF_X78_Y36_N15
\address[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(2),
	o => \address[2]~input_o\);

-- Location: IOIBUF_X78_Y17_N1
\address[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(3),
	o => \address[3]~input_o\);

-- Location: IOIBUF_X54_Y0_N15
\address[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(4),
	o => \address[4]~input_o\);

-- Location: IOIBUF_X78_Y20_N8
\data[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(1),
	o => \data[1]~input_o\);

-- Location: IOIBUF_X78_Y21_N22
\data[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(2),
	o => \data[2]~input_o\);

-- Location: IOIBUF_X78_Y33_N8
\data[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(3),
	o => \data[3]~input_o\);

-- Location: IOIBUF_X78_Y18_N1
\data[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(4),
	o => \data[4]~input_o\);

-- Location: IOIBUF_X78_Y24_N15
\data[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(5),
	o => \data[5]~input_o\);

-- Location: IOIBUF_X78_Y18_N8
\data[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(6),
	o => \data[6]~input_o\);

-- Location: IOIBUF_X78_Y33_N22
\data[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(7),
	o => \data[7]~input_o\);

-- Location: IOIBUF_X78_Y17_N15
\data[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(8),
	o => \data[8]~input_o\);

-- Location: IOIBUF_X78_Y34_N8
\data[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(9),
	o => \data[9]~input_o\);

-- Location: IOIBUF_X78_Y25_N22
\data[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(10),
	o => \data[10]~input_o\);

-- Location: IOIBUF_X78_Y29_N15
\data[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(11),
	o => \data[11]~input_o\);

-- Location: IOIBUF_X78_Y29_N8
\data[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(12),
	o => \data[12]~input_o\);

-- Location: IOIBUF_X78_Y20_N1
\data[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(13),
	o => \data[13]~input_o\);

-- Location: IOIBUF_X78_Y27_N15
\data[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(14),
	o => \data[14]~input_o\);

-- Location: IOIBUF_X78_Y34_N15
\data[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(15),
	o => \data[15]~input_o\);

-- Location: IOIBUF_X78_Y27_N22
\data[16]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(16),
	o => \data[16]~input_o\);

-- Location: IOIBUF_X60_Y54_N29
\data[17]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(17),
	o => \data[17]~input_o\);

-- Location: M9K_X73_Y27_N0
\altsyncram_component|auto_generated|ram_block1a0\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_9ko3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 128,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 5,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \wren~input_o\,
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: IOIBUF_X78_Y21_N1
\data[18]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(18),
	o => \data[18]~input_o\);

-- Location: IOIBUF_X78_Y31_N1
\data[19]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(19),
	o => \data[19]~input_o\);

-- Location: IOIBUF_X78_Y23_N15
\data[20]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(20),
	o => \data[20]~input_o\);

-- Location: IOIBUF_X78_Y27_N8
\data[21]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(21),
	o => \data[21]~input_o\);

-- Location: IOIBUF_X78_Y23_N1
\data[22]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(22),
	o => \data[22]~input_o\);

-- Location: IOIBUF_X78_Y25_N8
\data[23]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(23),
	o => \data[23]~input_o\);

-- Location: IOIBUF_X78_Y30_N15
\data[24]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(24),
	o => \data[24]~input_o\);

-- Location: IOIBUF_X78_Y36_N23
\data[25]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(25),
	o => \data[25]~input_o\);

-- Location: IOIBUF_X58_Y0_N8
\data[26]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(26),
	o => \data[26]~input_o\);

-- Location: IOIBUF_X78_Y31_N15
\data[27]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(27),
	o => \data[27]~input_o\);

-- Location: IOIBUF_X78_Y47_N15
\data[28]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(28),
	o => \data[28]~input_o\);

-- Location: IOIBUF_X78_Y23_N22
\data[29]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(29),
	o => \data[29]~input_o\);

-- Location: IOIBUF_X78_Y40_N15
\data[30]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(30),
	o => \data[30]~input_o\);

-- Location: IOIBUF_X62_Y0_N22
\data[31]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(31),
	o => \data[31]~input_o\);

-- Location: IOIBUF_X78_Y35_N15
\data[32]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(32),
	o => \data[32]~input_o\);

-- Location: IOIBUF_X78_Y21_N15
\data[33]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(33),
	o => \data[33]~input_o\);

-- Location: IOIBUF_X78_Y18_N22
\data[34]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(34),
	o => \data[34]~input_o\);

-- Location: IOIBUF_X78_Y34_N23
\data[35]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(35),
	o => \data[35]~input_o\);

-- Location: M9K_X73_Y27_N0
\altsyncram_component|auto_generated|ram_block1a18\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_9ko3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 18,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 128,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 5,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \wren~input_o\,
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a18_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a18_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\);

-- Location: IOIBUF_X78_Y10_N22
\data[36]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(36),
	o => \data[36]~input_o\);

-- Location: IOIBUF_X62_Y0_N8
\data[37]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(37),
	o => \data[37]~input_o\);

-- Location: IOIBUF_X56_Y0_N22
\data[38]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(38),
	o => \data[38]~input_o\);

-- Location: IOIBUF_X66_Y0_N1
\data[39]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(39),
	o => \data[39]~input_o\);

-- Location: IOIBUF_X60_Y0_N22
\data[40]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(40),
	o => \data[40]~input_o\);

-- Location: IOIBUF_X58_Y0_N29
\data[41]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(41),
	o => \data[41]~input_o\);

-- Location: IOIBUF_X78_Y6_N8
\data[42]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(42),
	o => \data[42]~input_o\);

-- Location: IOIBUF_X78_Y5_N8
\data[43]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(43),
	o => \data[43]~input_o\);

-- Location: IOIBUF_X78_Y13_N22
\data[44]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(44),
	o => \data[44]~input_o\);

-- Location: IOIBUF_X78_Y12_N15
\data[45]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(45),
	o => \data[45]~input_o\);

-- Location: IOIBUF_X78_Y3_N15
\data[46]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(46),
	o => \data[46]~input_o\);

-- Location: IOIBUF_X66_Y0_N29
\data[47]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(47),
	o => \data[47]~input_o\);

-- Location: IOIBUF_X78_Y4_N22
\data[48]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(48),
	o => \data[48]~input_o\);

-- Location: IOIBUF_X78_Y6_N1
\data[49]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(49),
	o => \data[49]~input_o\);

-- Location: IOIBUF_X62_Y0_N29
\data[50]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(50),
	o => \data[50]~input_o\);

-- Location: IOIBUF_X66_Y0_N22
\data[51]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(51),
	o => \data[51]~input_o\);

-- Location: IOIBUF_X78_Y8_N22
\data[52]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(52),
	o => \data[52]~input_o\);

-- Location: IOIBUF_X78_Y5_N22
\data[53]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(53),
	o => \data[53]~input_o\);

-- Location: M9K_X73_Y4_N0
\altsyncram_component|auto_generated|ram_block1a36\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_9ko3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 36,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 128,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 5,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \wren~input_o\,
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a36_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a36_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a36_PORTADATAOUT_bus\);

-- Location: IOIBUF_X78_Y16_N1
\data[54]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(54),
	o => \data[54]~input_o\);

-- Location: IOIBUF_X78_Y12_N23
\data[55]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(55),
	o => \data[55]~input_o\);

-- Location: IOIBUF_X78_Y9_N22
\data[56]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(56),
	o => \data[56]~input_o\);

-- Location: IOIBUF_X78_Y4_N1
\data[57]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(57),
	o => \data[57]~input_o\);

-- Location: IOIBUF_X78_Y10_N8
\data[58]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(58),
	o => \data[58]~input_o\);

-- Location: IOIBUF_X69_Y0_N29
\data[59]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(59),
	o => \data[59]~input_o\);

-- Location: IOIBUF_X66_Y0_N8
\data[60]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(60),
	o => \data[60]~input_o\);

-- Location: IOIBUF_X78_Y12_N1
\data[61]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(61),
	o => \data[61]~input_o\);

-- Location: IOIBUF_X60_Y0_N29
\data[62]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(62),
	o => \data[62]~input_o\);

-- Location: IOIBUF_X69_Y0_N8
\data[63]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(63),
	o => \data[63]~input_o\);

-- Location: IOIBUF_X54_Y0_N8
\data[64]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(64),
	o => \data[64]~input_o\);

-- Location: IOIBUF_X78_Y8_N1
\data[65]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(65),
	o => \data[65]~input_o\);

-- Location: IOIBUF_X78_Y4_N8
\data[66]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(66),
	o => \data[66]~input_o\);

-- Location: IOIBUF_X78_Y5_N15
\data[67]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(67),
	o => \data[67]~input_o\);

-- Location: IOIBUF_X58_Y54_N22
\data[68]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(68),
	o => \data[68]~input_o\);

-- Location: IOIBUF_X78_Y4_N15
\data[69]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(69),
	o => \data[69]~input_o\);

-- Location: IOIBUF_X78_Y8_N15
\data[70]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(70),
	o => \data[70]~input_o\);

-- Location: IOIBUF_X78_Y13_N8
\data[71]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(71),
	o => \data[71]~input_o\);

-- Location: M9K_X73_Y4_N0
\altsyncram_component|auto_generated|ram_block1a54\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_9ko3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 54,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 128,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 5,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \wren~input_o\,
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a54_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a54_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a54_PORTADATAOUT_bus\);

-- Location: IOIBUF_X66_Y54_N8
\data[72]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(72),
	o => \data[72]~input_o\);

-- Location: IOIBUF_X78_Y43_N15
\data[73]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(73),
	o => \data[73]~input_o\);

-- Location: IOIBUF_X69_Y54_N22
\data[74]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(74),
	o => \data[74]~input_o\);

-- Location: IOIBUF_X62_Y54_N29
\data[75]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(75),
	o => \data[75]~input_o\);

-- Location: IOIBUF_X78_Y44_N8
\data[76]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(76),
	o => \data[76]~input_o\);

-- Location: IOIBUF_X66_Y54_N29
\data[77]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(77),
	o => \data[77]~input_o\);

-- Location: IOIBUF_X74_Y54_N1
\data[78]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(78),
	o => \data[78]~input_o\);

-- Location: IOIBUF_X78_Y44_N1
\data[79]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(79),
	o => \data[79]~input_o\);

-- Location: IOIBUF_X62_Y54_N15
\data[80]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(80),
	o => \data[80]~input_o\);

-- Location: IOIBUF_X78_Y37_N1
\data[81]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(81),
	o => \data[81]~input_o\);

-- Location: IOIBUF_X69_Y54_N1
\data[82]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(82),
	o => \data[82]~input_o\);

-- Location: IOIBUF_X78_Y47_N8
\data[83]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(83),
	o => \data[83]~input_o\);

-- Location: IOIBUF_X78_Y43_N22
\data[84]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(84),
	o => \data[84]~input_o\);

-- Location: IOIBUF_X64_Y54_N22
\data[85]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(85),
	o => \data[85]~input_o\);

-- Location: IOIBUF_X78_Y47_N1
\data[86]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(86),
	o => \data[86]~input_o\);

-- Location: IOIBUF_X78_Y37_N22
\data[87]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(87),
	o => \data[87]~input_o\);

-- Location: IOIBUF_X78_Y49_N8
\data[88]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(88),
	o => \data[88]~input_o\);

-- Location: IOIBUF_X64_Y54_N29
\data[89]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(89),
	o => \data[89]~input_o\);

-- Location: M9K_X73_Y47_N0
\altsyncram_component|auto_generated|ram_block1a72\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_9ko3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 72,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 128,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 5,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \wren~input_o\,
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a72_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a72_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a72_PORTADATAOUT_bus\);

-- Location: IOIBUF_X78_Y49_N1
\data[90]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(90),
	o => \data[90]~input_o\);

-- Location: IOIBUF_X78_Y47_N22
\data[91]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(91),
	o => \data[91]~input_o\);

-- Location: IOIBUF_X71_Y54_N22
\data[92]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(92),
	o => \data[92]~input_o\);

-- Location: IOIBUF_X58_Y54_N1
\data[93]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(93),
	o => \data[93]~input_o\);

-- Location: IOIBUF_X78_Y49_N22
\data[94]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(94),
	o => \data[94]~input_o\);

-- Location: IOIBUF_X69_Y54_N15
\data[95]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(95),
	o => \data[95]~input_o\);

-- Location: IOIBUF_X69_Y54_N29
\data[96]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(96),
	o => \data[96]~input_o\);

-- Location: IOIBUF_X78_Y48_N15
\data[97]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(97),
	o => \data[97]~input_o\);

-- Location: IOIBUF_X66_Y54_N22
\data[98]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(98),
	o => \data[98]~input_o\);

-- Location: IOIBUF_X66_Y54_N1
\data[99]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(99),
	o => \data[99]~input_o\);

-- Location: IOIBUF_X62_Y54_N22
\data[100]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(100),
	o => \data[100]~input_o\);

-- Location: IOIBUF_X62_Y54_N1
\data[101]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(101),
	o => \data[101]~input_o\);

-- Location: IOIBUF_X78_Y43_N8
\data[102]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(102),
	o => \data[102]~input_o\);

-- Location: IOIBUF_X78_Y45_N1
\data[103]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(103),
	o => \data[103]~input_o\);

-- Location: IOIBUF_X78_Y41_N15
\data[104]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(104),
	o => \data[104]~input_o\);

-- Location: IOIBUF_X66_Y54_N15
\data[105]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(105),
	o => \data[105]~input_o\);

-- Location: IOIBUF_X74_Y54_N22
\data[106]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(106),
	o => \data[106]~input_o\);

-- Location: IOIBUF_X74_Y54_N15
\data[107]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(107),
	o => \data[107]~input_o\);

-- Location: M9K_X73_Y47_N0
\altsyncram_component|auto_generated|ram_block1a90\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_9ko3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 90,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 128,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 5,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \wren~input_o\,
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a90_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a90_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a90_PORTADATAOUT_bus\);

-- Location: IOIBUF_X54_Y54_N8
\data[108]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(108),
	o => \data[108]~input_o\);

-- Location: IOIBUF_X36_Y39_N29
\data[109]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(109),
	o => \data[109]~input_o\);

-- Location: M9K_X53_Y39_N0
\altsyncram_component|auto_generated|ram_block1a108\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_9ko3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 108,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 128,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 5,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \wren~input_o\,
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a108_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a108_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a108_PORTADATAOUT_bus\);

-- Location: IOIBUF_X31_Y39_N29
\data[110]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(110),
	o => \data[110]~input_o\);

-- Location: IOIBUF_X78_Y37_N8
\data[111]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(111),
	o => \data[111]~input_o\);

-- Location: IOIBUF_X54_Y0_N22
\data[112]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(112),
	o => \data[112]~input_o\);

-- Location: IOIBUF_X34_Y39_N1
\data[113]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(113),
	o => \data[113]~input_o\);

-- Location: IOIBUF_X49_Y54_N29
\data[114]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(114),
	o => \data[114]~input_o\);

-- Location: IOIBUF_X49_Y54_N8
\data[115]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(115),
	o => \data[115]~input_o\);

-- Location: IOIBUF_X34_Y39_N29
\data[116]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(116),
	o => \data[116]~input_o\);

-- Location: IOIBUF_X54_Y54_N15
\data[117]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(117),
	o => \data[117]~input_o\);

-- Location: IOIBUF_X38_Y39_N8
\data[118]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(118),
	o => \data[118]~input_o\);

-- Location: IOIBUF_X36_Y39_N15
\data[119]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(119),
	o => \data[119]~input_o\);

-- Location: IOIBUF_X40_Y39_N29
\data[120]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(120),
	o => \data[120]~input_o\);

-- Location: IOIBUF_X40_Y39_N22
\data[121]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(121),
	o => \data[121]~input_o\);

-- Location: IOIBUF_X46_Y54_N1
\data[122]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(122),
	o => \data[122]~input_o\);

-- Location: IOIBUF_X56_Y54_N29
\data[123]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(123),
	o => \data[123]~input_o\);

-- Location: IOIBUF_X38_Y39_N1
\data[124]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(124),
	o => \data[124]~input_o\);

-- Location: IOIBUF_X49_Y54_N1
\data[125]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(125),
	o => \data[125]~input_o\);

-- Location: IOIBUF_X36_Y39_N22
\data[126]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(126),
	o => \data[126]~input_o\);

-- Location: IOIBUF_X54_Y54_N22
\data[127]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(127),
	o => \data[127]~input_o\);

-- Location: M9K_X53_Y39_N0
\altsyncram_component|auto_generated|ram_block1a110\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_9ko3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 110,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 128,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 5,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \wren~input_o\,
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a110_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a110_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a110_PORTADATAOUT_bus\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_q(0) <= \q[0]~output_o\;

ww_q(1) <= \q[1]~output_o\;

ww_q(2) <= \q[2]~output_o\;

ww_q(3) <= \q[3]~output_o\;

ww_q(4) <= \q[4]~output_o\;

ww_q(5) <= \q[5]~output_o\;

ww_q(6) <= \q[6]~output_o\;

ww_q(7) <= \q[7]~output_o\;

ww_q(8) <= \q[8]~output_o\;

ww_q(9) <= \q[9]~output_o\;

ww_q(10) <= \q[10]~output_o\;

ww_q(11) <= \q[11]~output_o\;

ww_q(12) <= \q[12]~output_o\;

ww_q(13) <= \q[13]~output_o\;

ww_q(14) <= \q[14]~output_o\;

ww_q(15) <= \q[15]~output_o\;

ww_q(16) <= \q[16]~output_o\;

ww_q(17) <= \q[17]~output_o\;

ww_q(18) <= \q[18]~output_o\;

ww_q(19) <= \q[19]~output_o\;

ww_q(20) <= \q[20]~output_o\;

ww_q(21) <= \q[21]~output_o\;

ww_q(22) <= \q[22]~output_o\;

ww_q(23) <= \q[23]~output_o\;

ww_q(24) <= \q[24]~output_o\;

ww_q(25) <= \q[25]~output_o\;

ww_q(26) <= \q[26]~output_o\;

ww_q(27) <= \q[27]~output_o\;

ww_q(28) <= \q[28]~output_o\;

ww_q(29) <= \q[29]~output_o\;

ww_q(30) <= \q[30]~output_o\;

ww_q(31) <= \q[31]~output_o\;

ww_q(32) <= \q[32]~output_o\;

ww_q(33) <= \q[33]~output_o\;

ww_q(34) <= \q[34]~output_o\;

ww_q(35) <= \q[35]~output_o\;

ww_q(36) <= \q[36]~output_o\;

ww_q(37) <= \q[37]~output_o\;

ww_q(38) <= \q[38]~output_o\;

ww_q(39) <= \q[39]~output_o\;

ww_q(40) <= \q[40]~output_o\;

ww_q(41) <= \q[41]~output_o\;

ww_q(42) <= \q[42]~output_o\;

ww_q(43) <= \q[43]~output_o\;

ww_q(44) <= \q[44]~output_o\;

ww_q(45) <= \q[45]~output_o\;

ww_q(46) <= \q[46]~output_o\;

ww_q(47) <= \q[47]~output_o\;

ww_q(48) <= \q[48]~output_o\;

ww_q(49) <= \q[49]~output_o\;

ww_q(50) <= \q[50]~output_o\;

ww_q(51) <= \q[51]~output_o\;

ww_q(52) <= \q[52]~output_o\;

ww_q(53) <= \q[53]~output_o\;

ww_q(54) <= \q[54]~output_o\;

ww_q(55) <= \q[55]~output_o\;

ww_q(56) <= \q[56]~output_o\;

ww_q(57) <= \q[57]~output_o\;

ww_q(58) <= \q[58]~output_o\;

ww_q(59) <= \q[59]~output_o\;

ww_q(60) <= \q[60]~output_o\;

ww_q(61) <= \q[61]~output_o\;

ww_q(62) <= \q[62]~output_o\;

ww_q(63) <= \q[63]~output_o\;

ww_q(64) <= \q[64]~output_o\;

ww_q(65) <= \q[65]~output_o\;

ww_q(66) <= \q[66]~output_o\;

ww_q(67) <= \q[67]~output_o\;

ww_q(68) <= \q[68]~output_o\;

ww_q(69) <= \q[69]~output_o\;

ww_q(70) <= \q[70]~output_o\;

ww_q(71) <= \q[71]~output_o\;

ww_q(72) <= \q[72]~output_o\;

ww_q(73) <= \q[73]~output_o\;

ww_q(74) <= \q[74]~output_o\;

ww_q(75) <= \q[75]~output_o\;

ww_q(76) <= \q[76]~output_o\;

ww_q(77) <= \q[77]~output_o\;

ww_q(78) <= \q[78]~output_o\;

ww_q(79) <= \q[79]~output_o\;

ww_q(80) <= \q[80]~output_o\;

ww_q(81) <= \q[81]~output_o\;

ww_q(82) <= \q[82]~output_o\;

ww_q(83) <= \q[83]~output_o\;

ww_q(84) <= \q[84]~output_o\;

ww_q(85) <= \q[85]~output_o\;

ww_q(86) <= \q[86]~output_o\;

ww_q(87) <= \q[87]~output_o\;

ww_q(88) <= \q[88]~output_o\;

ww_q(89) <= \q[89]~output_o\;

ww_q(90) <= \q[90]~output_o\;

ww_q(91) <= \q[91]~output_o\;

ww_q(92) <= \q[92]~output_o\;

ww_q(93) <= \q[93]~output_o\;

ww_q(94) <= \q[94]~output_o\;

ww_q(95) <= \q[95]~output_o\;

ww_q(96) <= \q[96]~output_o\;

ww_q(97) <= \q[97]~output_o\;

ww_q(98) <= \q[98]~output_o\;

ww_q(99) <= \q[99]~output_o\;

ww_q(100) <= \q[100]~output_o\;

ww_q(101) <= \q[101]~output_o\;

ww_q(102) <= \q[102]~output_o\;

ww_q(103) <= \q[103]~output_o\;

ww_q(104) <= \q[104]~output_o\;

ww_q(105) <= \q[105]~output_o\;

ww_q(106) <= \q[106]~output_o\;

ww_q(107) <= \q[107]~output_o\;

ww_q(108) <= \q[108]~output_o\;

ww_q(109) <= \q[109]~output_o\;

ww_q(110) <= \q[110]~output_o\;

ww_q(111) <= \q[111]~output_o\;

ww_q(112) <= \q[112]~output_o\;

ww_q(113) <= \q[113]~output_o\;

ww_q(114) <= \q[114]~output_o\;

ww_q(115) <= \q[115]~output_o\;

ww_q(116) <= \q[116]~output_o\;

ww_q(117) <= \q[117]~output_o\;

ww_q(118) <= \q[118]~output_o\;

ww_q(119) <= \q[119]~output_o\;

ww_q(120) <= \q[120]~output_o\;

ww_q(121) <= \q[121]~output_o\;

ww_q(122) <= \q[122]~output_o\;

ww_q(123) <= \q[123]~output_o\;

ww_q(124) <= \q[124]~output_o\;

ww_q(125) <= \q[125]~output_o\;

ww_q(126) <= \q[126]~output_o\;

ww_q(127) <= \q[127]~output_o\;
END structure;


