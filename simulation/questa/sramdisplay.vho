-- Copyright (C) 2024  Intel Corporation. All rights reserved.
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
-- VERSION "Version 23.1std.1 Build 993 05/14/2024 SC Lite Edition"

-- DATE "09/06/2024 01:34:46"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
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
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


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

ENTITY 	top_module IS
    PORT (
	clk : IN std_logic;
	tsw : IN std_logic_vector(17 DOWNTO 0);
	psw : IN std_logic_vector(3 DOWNTO 0);
	ad_sram : BUFFER std_logic_vector(19 DOWNTO 0);
	dio_sram : BUFFER std_logic_vector(15 DOWNTO 0);
	we_n_sram : BUFFER std_logic;
	oe_n_sram : BUFFER std_logic;
	ce_n_sram : BUFFER std_logic;
	lb_n_sram : BUFFER std_logic;
	ub_n_sram : BUFFER std_logic;
	dio_lcd : BUFFER std_logic_vector(7 DOWNTO 0);
	en_lcd : BUFFER std_logic;
	rw_lcd : BUFFER std_logic;
	rs_lcd : BUFFER std_logic;
	pon_lcd : BUFFER std_logic;
	blon_lcd : BUFFER std_logic;
	segoutL : BUFFER std_logic_vector(13 DOWNTO 0);
	segoutM : BUFFER std_logic_vector(13 DOWNTO 0);
	segoutR : BUFFER std_logic_vector(27 DOWNTO 0)
	);
END top_module;

-- Design Ports Information
-- tsw[16]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- psw[1]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ad_sram[0]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ad_sram[1]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ad_sram[2]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ad_sram[3]	=>  Location: PIN_AC7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ad_sram[4]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ad_sram[5]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ad_sram[6]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ad_sram[7]	=>  Location: PIN_AC5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ad_sram[8]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ad_sram[9]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ad_sram[10]	=>  Location: PIN_AF2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ad_sram[11]	=>  Location: PIN_AD3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ad_sram[12]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ad_sram[13]	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ad_sram[14]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ad_sram[15]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ad_sram[16]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ad_sram[17]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ad_sram[18]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ad_sram[19]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- we_n_sram	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oe_n_sram	=>  Location: PIN_AD5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ce_n_sram	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lb_n_sram	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ub_n_sram	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en_lcd	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rw_lcd	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs_lcd	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pon_lcd	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- blon_lcd	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segoutL[0]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segoutL[1]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segoutL[2]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segoutL[3]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segoutL[4]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segoutL[5]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segoutL[6]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segoutL[7]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segoutL[8]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segoutL[9]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segoutL[10]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segoutL[11]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segoutL[12]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segoutL[13]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segoutM[0]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segoutM[1]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segoutM[2]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segoutM[3]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segoutM[4]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segoutM[5]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segoutM[6]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segoutM[7]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segoutM[8]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segoutM[9]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segoutM[10]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segoutM[11]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segoutM[12]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segoutM[13]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segoutR[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segoutR[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segoutR[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segoutR[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segoutR[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segoutR[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segoutR[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segoutR[7]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segoutR[8]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segoutR[9]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segoutR[10]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segoutR[11]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segoutR[12]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segoutR[13]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segoutR[14]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segoutR[15]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segoutR[16]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segoutR[17]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segoutR[18]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segoutR[19]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segoutR[20]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segoutR[21]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segoutR[22]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segoutR[23]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segoutR[24]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segoutR[25]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segoutR[26]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segoutR[27]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dio_sram[0]	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dio_sram[1]	=>  Location: PIN_AF3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dio_sram[2]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dio_sram[3]	=>  Location: PIN_AE3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dio_sram[4]	=>  Location: PIN_AE1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dio_sram[5]	=>  Location: PIN_AE2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dio_sram[6]	=>  Location: PIN_AD2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dio_sram[7]	=>  Location: PIN_AD1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dio_sram[8]	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dio_sram[9]	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dio_sram[10]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dio_sram[11]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dio_sram[12]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dio_sram[13]	=>  Location: PIN_AG4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dio_sram[14]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dio_sram[15]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dio_lcd[0]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dio_lcd[1]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dio_lcd[2]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dio_lcd[3]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dio_lcd[4]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dio_lcd[5]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dio_lcd[6]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dio_lcd[7]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tsw[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tsw[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tsw[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tsw[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tsw[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tsw[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tsw[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tsw[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tsw[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tsw[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tsw[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tsw[11]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tsw[12]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tsw[13]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tsw[14]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tsw[15]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- psw[0]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- psw[2]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- psw[3]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tsw[17]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF top_module IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_tsw : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_psw : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_ad_sram : std_logic_vector(19 DOWNTO 0);
SIGNAL ww_dio_sram : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_we_n_sram : std_logic;
SIGNAL ww_oe_n_sram : std_logic;
SIGNAL ww_ce_n_sram : std_logic;
SIGNAL ww_lb_n_sram : std_logic;
SIGNAL ww_ub_n_sram : std_logic;
SIGNAL ww_dio_lcd : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_en_lcd : std_logic;
SIGNAL ww_rw_lcd : std_logic;
SIGNAL ww_rs_lcd : std_logic;
SIGNAL ww_pon_lcd : std_logic;
SIGNAL ww_blon_lcd : std_logic;
SIGNAL ww_segoutL : std_logic_vector(13 DOWNTO 0);
SIGNAL ww_segoutM : std_logic_vector(13 DOWNTO 0);
SIGNAL ww_segoutR : std_logic_vector(27 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \A|ck1|q[20]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \tsw[16]~input_o\ : std_logic;
SIGNAL \psw[1]~input_o\ : std_logic;
SIGNAL \dio_sram[8]~input_o\ : std_logic;
SIGNAL \dio_sram[9]~input_o\ : std_logic;
SIGNAL \dio_sram[10]~input_o\ : std_logic;
SIGNAL \dio_sram[11]~input_o\ : std_logic;
SIGNAL \dio_sram[12]~input_o\ : std_logic;
SIGNAL \dio_sram[13]~input_o\ : std_logic;
SIGNAL \dio_sram[14]~input_o\ : std_logic;
SIGNAL \dio_sram[15]~input_o\ : std_logic;
SIGNAL \dio_lcd[0]~input_o\ : std_logic;
SIGNAL \dio_lcd[1]~input_o\ : std_logic;
SIGNAL \dio_lcd[2]~input_o\ : std_logic;
SIGNAL \dio_lcd[3]~input_o\ : std_logic;
SIGNAL \dio_lcd[4]~input_o\ : std_logic;
SIGNAL \dio_lcd[5]~input_o\ : std_logic;
SIGNAL \dio_lcd[6]~input_o\ : std_logic;
SIGNAL \dio_lcd[7]~input_o\ : std_logic;
SIGNAL \dio_sram[0]~output_o\ : std_logic;
SIGNAL \dio_sram[1]~output_o\ : std_logic;
SIGNAL \dio_sram[2]~output_o\ : std_logic;
SIGNAL \dio_sram[3]~output_o\ : std_logic;
SIGNAL \dio_sram[4]~output_o\ : std_logic;
SIGNAL \dio_sram[5]~output_o\ : std_logic;
SIGNAL \dio_sram[6]~output_o\ : std_logic;
SIGNAL \dio_sram[7]~output_o\ : std_logic;
SIGNAL \dio_sram[8]~output_o\ : std_logic;
SIGNAL \dio_sram[9]~output_o\ : std_logic;
SIGNAL \dio_sram[10]~output_o\ : std_logic;
SIGNAL \dio_sram[11]~output_o\ : std_logic;
SIGNAL \dio_sram[12]~output_o\ : std_logic;
SIGNAL \dio_sram[13]~output_o\ : std_logic;
SIGNAL \dio_sram[14]~output_o\ : std_logic;
SIGNAL \dio_sram[15]~output_o\ : std_logic;
SIGNAL \dio_lcd[0]~output_o\ : std_logic;
SIGNAL \dio_lcd[1]~output_o\ : std_logic;
SIGNAL \dio_lcd[2]~output_o\ : std_logic;
SIGNAL \dio_lcd[3]~output_o\ : std_logic;
SIGNAL \dio_lcd[4]~output_o\ : std_logic;
SIGNAL \dio_lcd[5]~output_o\ : std_logic;
SIGNAL \dio_lcd[6]~output_o\ : std_logic;
SIGNAL \dio_lcd[7]~output_o\ : std_logic;
SIGNAL \ad_sram[0]~output_o\ : std_logic;
SIGNAL \ad_sram[1]~output_o\ : std_logic;
SIGNAL \ad_sram[2]~output_o\ : std_logic;
SIGNAL \ad_sram[3]~output_o\ : std_logic;
SIGNAL \ad_sram[4]~output_o\ : std_logic;
SIGNAL \ad_sram[5]~output_o\ : std_logic;
SIGNAL \ad_sram[6]~output_o\ : std_logic;
SIGNAL \ad_sram[7]~output_o\ : std_logic;
SIGNAL \ad_sram[8]~output_o\ : std_logic;
SIGNAL \ad_sram[9]~output_o\ : std_logic;
SIGNAL \ad_sram[10]~output_o\ : std_logic;
SIGNAL \ad_sram[11]~output_o\ : std_logic;
SIGNAL \ad_sram[12]~output_o\ : std_logic;
SIGNAL \ad_sram[13]~output_o\ : std_logic;
SIGNAL \ad_sram[14]~output_o\ : std_logic;
SIGNAL \ad_sram[15]~output_o\ : std_logic;
SIGNAL \ad_sram[16]~output_o\ : std_logic;
SIGNAL \ad_sram[17]~output_o\ : std_logic;
SIGNAL \ad_sram[18]~output_o\ : std_logic;
SIGNAL \ad_sram[19]~output_o\ : std_logic;
SIGNAL \we_n_sram~output_o\ : std_logic;
SIGNAL \oe_n_sram~output_o\ : std_logic;
SIGNAL \ce_n_sram~output_o\ : std_logic;
SIGNAL \lb_n_sram~output_o\ : std_logic;
SIGNAL \ub_n_sram~output_o\ : std_logic;
SIGNAL \en_lcd~output_o\ : std_logic;
SIGNAL \rw_lcd~output_o\ : std_logic;
SIGNAL \rs_lcd~output_o\ : std_logic;
SIGNAL \pon_lcd~output_o\ : std_logic;
SIGNAL \blon_lcd~output_o\ : std_logic;
SIGNAL \segoutL[0]~output_o\ : std_logic;
SIGNAL \segoutL[1]~output_o\ : std_logic;
SIGNAL \segoutL[2]~output_o\ : std_logic;
SIGNAL \segoutL[3]~output_o\ : std_logic;
SIGNAL \segoutL[4]~output_o\ : std_logic;
SIGNAL \segoutL[5]~output_o\ : std_logic;
SIGNAL \segoutL[6]~output_o\ : std_logic;
SIGNAL \segoutL[7]~output_o\ : std_logic;
SIGNAL \segoutL[8]~output_o\ : std_logic;
SIGNAL \segoutL[9]~output_o\ : std_logic;
SIGNAL \segoutL[10]~output_o\ : std_logic;
SIGNAL \segoutL[11]~output_o\ : std_logic;
SIGNAL \segoutL[12]~output_o\ : std_logic;
SIGNAL \segoutL[13]~output_o\ : std_logic;
SIGNAL \segoutM[0]~output_o\ : std_logic;
SIGNAL \segoutM[1]~output_o\ : std_logic;
SIGNAL \segoutM[2]~output_o\ : std_logic;
SIGNAL \segoutM[3]~output_o\ : std_logic;
SIGNAL \segoutM[4]~output_o\ : std_logic;
SIGNAL \segoutM[5]~output_o\ : std_logic;
SIGNAL \segoutM[6]~output_o\ : std_logic;
SIGNAL \segoutM[7]~output_o\ : std_logic;
SIGNAL \segoutM[8]~output_o\ : std_logic;
SIGNAL \segoutM[9]~output_o\ : std_logic;
SIGNAL \segoutM[10]~output_o\ : std_logic;
SIGNAL \segoutM[11]~output_o\ : std_logic;
SIGNAL \segoutM[12]~output_o\ : std_logic;
SIGNAL \segoutM[13]~output_o\ : std_logic;
SIGNAL \segoutR[0]~output_o\ : std_logic;
SIGNAL \segoutR[1]~output_o\ : std_logic;
SIGNAL \segoutR[2]~output_o\ : std_logic;
SIGNAL \segoutR[3]~output_o\ : std_logic;
SIGNAL \segoutR[4]~output_o\ : std_logic;
SIGNAL \segoutR[5]~output_o\ : std_logic;
SIGNAL \segoutR[6]~output_o\ : std_logic;
SIGNAL \segoutR[7]~output_o\ : std_logic;
SIGNAL \segoutR[8]~output_o\ : std_logic;
SIGNAL \segoutR[9]~output_o\ : std_logic;
SIGNAL \segoutR[10]~output_o\ : std_logic;
SIGNAL \segoutR[11]~output_o\ : std_logic;
SIGNAL \segoutR[12]~output_o\ : std_logic;
SIGNAL \segoutR[13]~output_o\ : std_logic;
SIGNAL \segoutR[14]~output_o\ : std_logic;
SIGNAL \segoutR[15]~output_o\ : std_logic;
SIGNAL \segoutR[16]~output_o\ : std_logic;
SIGNAL \segoutR[17]~output_o\ : std_logic;
SIGNAL \segoutR[18]~output_o\ : std_logic;
SIGNAL \segoutR[19]~output_o\ : std_logic;
SIGNAL \segoutR[20]~output_o\ : std_logic;
SIGNAL \segoutR[21]~output_o\ : std_logic;
SIGNAL \segoutR[22]~output_o\ : std_logic;
SIGNAL \segoutR[23]~output_o\ : std_logic;
SIGNAL \segoutR[24]~output_o\ : std_logic;
SIGNAL \segoutR[25]~output_o\ : std_logic;
SIGNAL \segoutR[26]~output_o\ : std_logic;
SIGNAL \segoutR[27]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \tsw[8]~input_o\ : std_logic;
SIGNAL \B|ctl|data_write_reg[0]~feeder_combout\ : std_logic;
SIGNAL \psw[0]~input_o\ : std_logic;
SIGNAL \psw[2]~input_o\ : std_logic;
SIGNAL \psw[3]~input_o\ : std_logic;
SIGNAL \B|ctl|state.w1~q\ : std_logic;
SIGNAL \B|ctl|state.w2~q\ : std_logic;
SIGNAL \B|ctl|nextstate.r1~0_combout\ : std_logic;
SIGNAL \B|ctl|state.r1~q\ : std_logic;
SIGNAL \B|ctl|state.r2~feeder_combout\ : std_logic;
SIGNAL \B|ctl|state.r2~q\ : std_logic;
SIGNAL \B|ctl|Selector0~0_combout\ : std_logic;
SIGNAL \B|ctl|state.idle~q\ : std_logic;
SIGNAL \B|ctl|nextstate.w1~0_combout\ : std_logic;
SIGNAL \B|ctl|tri_buf~0_combout\ : std_logic;
SIGNAL \B|ctl|tri_reg~q\ : std_logic;
SIGNAL \tsw[9]~input_o\ : std_logic;
SIGNAL \tsw[10]~input_o\ : std_logic;
SIGNAL \tsw[11]~input_o\ : std_logic;
SIGNAL \B|ctl|data_write_reg[3]~feeder_combout\ : std_logic;
SIGNAL \tsw[12]~input_o\ : std_logic;
SIGNAL \tsw[13]~input_o\ : std_logic;
SIGNAL \tsw[14]~input_o\ : std_logic;
SIGNAL \B|ctl|data_write_reg[6]~feeder_combout\ : std_logic;
SIGNAL \tsw[15]~input_o\ : std_logic;
SIGNAL \B|ctl|data_write_reg[7]~feeder_combout\ : std_logic;
SIGNAL \A|ck1|q[0]~60_combout\ : std_logic;
SIGNAL \A|ck1|q[1]~20_combout\ : std_logic;
SIGNAL \A|ck1|q[1]~21\ : std_logic;
SIGNAL \A|ck1|q[2]~22_combout\ : std_logic;
SIGNAL \A|ck1|q[2]~23\ : std_logic;
SIGNAL \A|ck1|q[3]~24_combout\ : std_logic;
SIGNAL \A|ck1|q[3]~25\ : std_logic;
SIGNAL \A|ck1|q[4]~26_combout\ : std_logic;
SIGNAL \A|ck1|q[4]~27\ : std_logic;
SIGNAL \A|ck1|q[5]~28_combout\ : std_logic;
SIGNAL \A|ck1|q[5]~29\ : std_logic;
SIGNAL \A|ck1|q[6]~30_combout\ : std_logic;
SIGNAL \A|ck1|q[6]~31\ : std_logic;
SIGNAL \A|ck1|q[7]~32_combout\ : std_logic;
SIGNAL \A|ck1|q[7]~33\ : std_logic;
SIGNAL \A|ck1|q[8]~34_combout\ : std_logic;
SIGNAL \A|ck1|q[8]~35\ : std_logic;
SIGNAL \A|ck1|q[9]~36_combout\ : std_logic;
SIGNAL \A|ck1|q[9]~37\ : std_logic;
SIGNAL \A|ck1|q[10]~38_combout\ : std_logic;
SIGNAL \A|ck1|q[10]~39\ : std_logic;
SIGNAL \A|ck1|q[11]~40_combout\ : std_logic;
SIGNAL \A|ck1|q[11]~41\ : std_logic;
SIGNAL \A|ck1|q[12]~42_combout\ : std_logic;
SIGNAL \A|ck1|q[12]~43\ : std_logic;
SIGNAL \A|ck1|q[13]~44_combout\ : std_logic;
SIGNAL \A|ck1|q[13]~45\ : std_logic;
SIGNAL \A|ck1|q[14]~46_combout\ : std_logic;
SIGNAL \A|ck1|q[14]~47\ : std_logic;
SIGNAL \A|ck1|q[15]~48_combout\ : std_logic;
SIGNAL \A|ck1|q[15]~49\ : std_logic;
SIGNAL \A|ck1|q[16]~50_combout\ : std_logic;
SIGNAL \A|ck1|q[16]~51\ : std_logic;
SIGNAL \A|ck1|q[17]~52_combout\ : std_logic;
SIGNAL \A|ck1|q[17]~53\ : std_logic;
SIGNAL \A|ck1|q[18]~54_combout\ : std_logic;
SIGNAL \A|ck1|q[18]~55\ : std_logic;
SIGNAL \A|ck1|q[19]~56_combout\ : std_logic;
SIGNAL \A|ck1|q[19]~57\ : std_logic;
SIGNAL \A|ck1|q[20]~58_combout\ : std_logic;
SIGNAL \A|ck1|q[20]~clkctrl_outclk\ : std_logic;
SIGNAL \A|lc1|state.power~feeder_combout\ : std_logic;
SIGNAL \A|lc1|state.power~q\ : std_logic;
SIGNAL \A|lc1|state.init1~0_combout\ : std_logic;
SIGNAL \A|lc1|state.init1~q\ : std_logic;
SIGNAL \A|lc1|state.init2~feeder_combout\ : std_logic;
SIGNAL \A|lc1|state.init2~q\ : std_logic;
SIGNAL \A|lc1|state.init3~feeder_combout\ : std_logic;
SIGNAL \A|lc1|state.init3~q\ : std_logic;
SIGNAL \A|lc1|state.init4~q\ : std_logic;
SIGNAL \A|lc1|state.init5~feeder_combout\ : std_logic;
SIGNAL \A|lc1|state.init5~q\ : std_logic;
SIGNAL \A|ul1|Add0~19\ : std_logic;
SIGNAL \A|ul1|Add0~20_combout\ : std_logic;
SIGNAL \A|ul1|Add0~60_combout\ : std_logic;
SIGNAL \A|ul1|Add0~21\ : std_logic;
SIGNAL \A|ul1|Add0~22_combout\ : std_logic;
SIGNAL \A|ul1|Add0~24_combout\ : std_logic;
SIGNAL \A|ul1|Add0~23\ : std_logic;
SIGNAL \A|ul1|Add0~25_combout\ : std_logic;
SIGNAL \A|ul1|Add0~59_combout\ : std_logic;
SIGNAL \A|ul1|Add0~26\ : std_logic;
SIGNAL \A|ul1|Add0~27_combout\ : std_logic;
SIGNAL \A|ul1|Add0~61_combout\ : std_logic;
SIGNAL \A|ul1|Add0~28\ : std_logic;
SIGNAL \A|ul1|Add0~29_combout\ : std_logic;
SIGNAL \A|ul1|Add0~62_combout\ : std_logic;
SIGNAL \A|ul1|count[10]~feeder_combout\ : std_logic;
SIGNAL \A|ul1|Add0~30\ : std_logic;
SIGNAL \A|ul1|Add0~31_combout\ : std_logic;
SIGNAL \A|ul1|Add0~63_combout\ : std_logic;
SIGNAL \A|ul1|Add0~32\ : std_logic;
SIGNAL \A|ul1|Add0~33_combout\ : std_logic;
SIGNAL \A|ul1|Add0~64_combout\ : std_logic;
SIGNAL \A|ul1|Add0~34\ : std_logic;
SIGNAL \A|ul1|Add0~35_combout\ : std_logic;
SIGNAL \A|ul1|Add0~37_combout\ : std_logic;
SIGNAL \A|ul1|Add0~36\ : std_logic;
SIGNAL \A|ul1|Add0~38_combout\ : std_logic;
SIGNAL \A|ul1|Add0~40_combout\ : std_logic;
SIGNAL \A|ul1|Add0~39\ : std_logic;
SIGNAL \A|ul1|Add0~41_combout\ : std_logic;
SIGNAL \A|ul1|Add0~43_combout\ : std_logic;
SIGNAL \A|ul1|Add0~42\ : std_logic;
SIGNAL \A|ul1|Add0~44_combout\ : std_logic;
SIGNAL \A|ul1|Add0~46_combout\ : std_logic;
SIGNAL \A|ul1|Add0~45\ : std_logic;
SIGNAL \A|ul1|Add0~47_combout\ : std_logic;
SIGNAL \A|ul1|Add0~49_combout\ : std_logic;
SIGNAL \A|ul1|Add0~48\ : std_logic;
SIGNAL \A|ul1|Add0~50_combout\ : std_logic;
SIGNAL \A|ul1|Add0~52_combout\ : std_logic;
SIGNAL \A|ul1|Add0~51\ : std_logic;
SIGNAL \A|ul1|Add0~53_combout\ : std_logic;
SIGNAL \A|ul1|Add0~55_combout\ : std_logic;
SIGNAL \A|ul1|Add0~54\ : std_logic;
SIGNAL \A|ul1|Add0~56_combout\ : std_logic;
SIGNAL \A|ul1|Add0~58_combout\ : std_logic;
SIGNAL \A|ul1|Equal0~4_combout\ : std_logic;
SIGNAL \A|ul1|Equal0~3_combout\ : std_logic;
SIGNAL \A|ul1|Equal0~5_combout\ : std_logic;
SIGNAL \A|ul1|Add0~57\ : std_logic;
SIGNAL \A|ul1|Add0~65_combout\ : std_logic;
SIGNAL \A|ul1|Add0~87_combout\ : std_logic;
SIGNAL \A|ul1|Add0~66\ : std_logic;
SIGNAL \A|ul1|Add0~67_combout\ : std_logic;
SIGNAL \A|ul1|Add0~88_combout\ : std_logic;
SIGNAL \A|ul1|Add0~68\ : std_logic;
SIGNAL \A|ul1|Add0~69_combout\ : std_logic;
SIGNAL \A|ul1|Add0~89_combout\ : std_logic;
SIGNAL \A|ul1|Add0~70\ : std_logic;
SIGNAL \A|ul1|Add0~71_combout\ : std_logic;
SIGNAL \A|ul1|Add0~90_combout\ : std_logic;
SIGNAL \A|ul1|Add0~72\ : std_logic;
SIGNAL \A|ul1|Add0~73_combout\ : std_logic;
SIGNAL \A|ul1|Add0~91_combout\ : std_logic;
SIGNAL \A|ul1|Add0~74\ : std_logic;
SIGNAL \A|ul1|Add0~75_combout\ : std_logic;
SIGNAL \A|ul1|Add0~92_combout\ : std_logic;
SIGNAL \A|ul1|Add0~76\ : std_logic;
SIGNAL \A|ul1|Add0~77_combout\ : std_logic;
SIGNAL \A|ul1|Add0~93_combout\ : std_logic;
SIGNAL \A|ul1|Add0~78\ : std_logic;
SIGNAL \A|ul1|Add0~79_combout\ : std_logic;
SIGNAL \A|ul1|Add0~94_combout\ : std_logic;
SIGNAL \A|ul1|Add0~80\ : std_logic;
SIGNAL \A|ul1|Add0~81_combout\ : std_logic;
SIGNAL \A|ul1|Add0~95_combout\ : std_logic;
SIGNAL \A|ul1|Add0~82\ : std_logic;
SIGNAL \A|ul1|Add0~83_combout\ : std_logic;
SIGNAL \A|ul1|Add0~98_combout\ : std_logic;
SIGNAL \A|ul1|Add0~84\ : std_logic;
SIGNAL \A|ul1|Add0~85_combout\ : std_logic;
SIGNAL \A|ul1|LessThan0~10_combout\ : std_logic;
SIGNAL \A|ul1|Equal0~6_combout\ : std_logic;
SIGNAL \A|ul1|Equal0~7_combout\ : std_logic;
SIGNAL \A|ul1|Equal0~8_combout\ : std_logic;
SIGNAL \A|ul1|Equal0~9_combout\ : std_logic;
SIGNAL \A|ul1|Equal0~10_combout\ : std_logic;
SIGNAL \A|ul1|Equal0~11_combout\ : std_logic;
SIGNAL \A|ul1|Equal0~13_combout\ : std_logic;
SIGNAL \A|ul1|Add0~4_combout\ : std_logic;
SIGNAL \A|ul1|Add0~6_combout\ : std_logic;
SIGNAL \A|ul1|Add0~5\ : std_logic;
SIGNAL \A|ul1|Add0~7_combout\ : std_logic;
SIGNAL \A|ul1|Add0~96_combout\ : std_logic;
SIGNAL \A|ul1|Equal3~0_combout\ : std_logic;
SIGNAL \A|ul1|Equal9~0_combout\ : std_logic;
SIGNAL \A|ul1|Equal0~2_combout\ : std_logic;
SIGNAL \A|ul1|Equal15~0_combout\ : std_logic;
SIGNAL \A|ul1|Selector3~0_combout\ : std_logic;
SIGNAL \A|ul1|Equal0~12_combout\ : std_logic;
SIGNAL \A|ul1|WideNor0~1_combout\ : std_logic;
SIGNAL \A|ul1|Equal1~0_combout\ : std_logic;
SIGNAL \A|ul1|Equal5~0_combout\ : std_logic;
SIGNAL \A|ul1|Equal13~0_combout\ : std_logic;
SIGNAL \A|ul1|WideNor0~2_combout\ : std_logic;
SIGNAL \A|ul1|Equal16~0_combout\ : std_logic;
SIGNAL \A|ul1|Equal3~1_combout\ : std_logic;
SIGNAL \A|ul1|Selector5~0_combout\ : std_logic;
SIGNAL \A|ul1|Selector5~1_combout\ : std_logic;
SIGNAL \A|ul1|Equal19~0_combout\ : std_logic;
SIGNAL \A|ul1|Equal19~1_combout\ : std_logic;
SIGNAL \A|ul1|Selector4~0_combout\ : std_logic;
SIGNAL \A|ul1|Selector6~0_combout\ : std_logic;
SIGNAL \A|ul1|Selector6~1_combout\ : std_logic;
SIGNAL \A|ul1|Equal17~0_combout\ : std_logic;
SIGNAL \A|ul1|Equal9~1_combout\ : std_logic;
SIGNAL \A|ul1|Equal11~0_combout\ : std_logic;
SIGNAL \A|ul1|Equal0~14_combout\ : std_logic;
SIGNAL \A|ul1|Selector8~0_combout\ : std_logic;
SIGNAL \A|ul1|WideNor0~0_combout\ : std_logic;
SIGNAL \A|ul1|send_enable~0_combout\ : std_logic;
SIGNAL \A|lc1|Selector1~0_combout\ : std_logic;
SIGNAL \A|lc1|state.send1~feeder_combout\ : std_logic;
SIGNAL \A|lc1|state.send1~q\ : std_logic;
SIGNAL \A|lc1|state.send2~feeder_combout\ : std_logic;
SIGNAL \A|lc1|state.send2~q\ : std_logic;
SIGNAL \A|lc1|state.send3~q\ : std_logic;
SIGNAL \A|lc1|state.send4~feeder_combout\ : std_logic;
SIGNAL \A|lc1|state.send4~q\ : std_logic;
SIGNAL \A|lc1|state.init6~feeder_combout\ : std_logic;
SIGNAL \A|lc1|state.init6~q\ : std_logic;
SIGNAL \A|lc1|state.init7~q\ : std_logic;
SIGNAL \A|lc1|state.init8~q\ : std_logic;
SIGNAL \A|lc1|state.init9~feeder_combout\ : std_logic;
SIGNAL \A|lc1|state.init9~q\ : std_logic;
SIGNAL \A|lc1|Selector0~0_combout\ : std_logic;
SIGNAL \A|lc1|state.ready~q\ : std_logic;
SIGNAL \A|lc1|Selector11~0_combout\ : std_logic;
SIGNAL \A|lc1|Selector11~1_combout\ : std_logic;
SIGNAL \A|lc1|busy_reg~q\ : std_logic;
SIGNAL \A|ul1|send_enable~1_combout\ : std_logic;
SIGNAL \A|ul1|send_enable~q\ : std_logic;
SIGNAL \A|ul1|count[31]~0_combout\ : std_logic;
SIGNAL \A|ul1|Add0~8\ : std_logic;
SIGNAL \A|ul1|Add0~10\ : std_logic;
SIGNAL \A|ul1|Add0~12_combout\ : std_logic;
SIGNAL \A|ul1|Add0~14_combout\ : std_logic;
SIGNAL \A|ul1|Add0~13\ : std_logic;
SIGNAL \A|ul1|Add0~15_combout\ : std_logic;
SIGNAL \A|ul1|Add0~17_combout\ : std_logic;
SIGNAL \A|ul1|Add0~16\ : std_logic;
SIGNAL \A|ul1|Add0~18_combout\ : std_logic;
SIGNAL \A|ul1|Add0~97_combout\ : std_logic;
SIGNAL \A|ul1|LessThan0~4_combout\ : std_logic;
SIGNAL \A|ul1|LessThan0~6_combout\ : std_logic;
SIGNAL \A|ul1|LessThan0~7_combout\ : std_logic;
SIGNAL \A|ul1|LessThan0~5_combout\ : std_logic;
SIGNAL \A|ul1|LessThan0~8_combout\ : std_logic;
SIGNAL \A|ul1|LessThan0~0_combout\ : std_logic;
SIGNAL \A|ul1|LessThan0~1_combout\ : std_logic;
SIGNAL \A|ul1|LessThan0~2_combout\ : std_logic;
SIGNAL \A|ul1|LessThan0~3_combout\ : std_logic;
SIGNAL \A|ul1|LessThan0~9_combout\ : std_logic;
SIGNAL \A|ul1|Add0~99_combout\ : std_logic;
SIGNAL \A|ul1|Add0~9_combout\ : std_logic;
SIGNAL \A|ul1|Add0~11_combout\ : std_logic;
SIGNAL \A|ul1|Equal14~0_combout\ : std_logic;
SIGNAL \A|ul1|LessThan4~0_combout\ : std_logic;
SIGNAL \A|ul1|Selector8~2_combout\ : std_logic;
SIGNAL \tsw[3]~input_o\ : std_logic;
SIGNAL \tsw[1]~input_o\ : std_logic;
SIGNAL \tsw[2]~input_o\ : std_logic;
SIGNAL \A|ul1|LessThan2~0_combout\ : std_logic;
SIGNAL \tsw[0]~input_o\ : std_logic;
SIGNAL \A|ul1|Equal6~0_combout\ : std_logic;
SIGNAL \A|ul1|Selector8~3_combout\ : std_logic;
SIGNAL \tsw[6]~input_o\ : std_logic;
SIGNAL \tsw[5]~input_o\ : std_logic;
SIGNAL \tsw[7]~input_o\ : std_logic;
SIGNAL \A|ul1|LessThan1~0_combout\ : std_logic;
SIGNAL \tsw[4]~input_o\ : std_logic;
SIGNAL \A|ul1|LessThan3~0_combout\ : std_logic;
SIGNAL \A|ul1|Selector8~4_combout\ : std_logic;
SIGNAL \A|ul1|Selector8~5_combout\ : std_logic;
SIGNAL \A|ul1|Selector8~1_combout\ : std_logic;
SIGNAL \A|ul1|Selector8~6_combout\ : std_logic;
SIGNAL \A|lc1|WideOr1~combout\ : std_logic;
SIGNAL \A|lc1|Selector8~0_combout\ : std_logic;
SIGNAL \A|lc1|Selector8~1_combout\ : std_logic;
SIGNAL \A|lc1|Selector6~0_combout\ : std_logic;
SIGNAL \A|ul1|Selector7~0_combout\ : std_logic;
SIGNAL \A|ul1|Selector7~1_combout\ : std_logic;
SIGNAL \A|ul1|Selector7~2_combout\ : std_logic;
SIGNAL \tsw[17]~input_o\ : std_logic;
SIGNAL \A|ul1|Equal18~0_combout\ : std_logic;
SIGNAL \A|ul1|Selector7~6_combout\ : std_logic;
SIGNAL \A|ul1|Selector7~4_combout\ : std_logic;
SIGNAL \A|ul1|Selector7~3_combout\ : std_logic;
SIGNAL \A|ul1|Selector7~5_combout\ : std_logic;
SIGNAL \A|ul1|Selector7~7_combout\ : std_logic;
SIGNAL \A|ul1|WideNor0~combout\ : std_logic;
SIGNAL \A|ul1|Selector7~8_combout\ : std_logic;
SIGNAL \A|lc1|Selector7~0_combout\ : std_logic;
SIGNAL \A|lc1|Selector7~1_combout\ : std_logic;
SIGNAL \A|ul1|Selector6~4_combout\ : std_logic;
SIGNAL \A|ul1|Selector6~5_combout\ : std_logic;
SIGNAL \A|ul1|Selector6~6_combout\ : std_logic;
SIGNAL \A|ul1|Selector6~7_combout\ : std_logic;
SIGNAL \A|ul1|Selector6~8_combout\ : std_logic;
SIGNAL \A|ul1|Selector6~2_combout\ : std_logic;
SIGNAL \A|ul1|Selector6~3_combout\ : std_logic;
SIGNAL \A|ul1|Selector6~9_combout\ : std_logic;
SIGNAL \A|ul1|Selector6~10_combout\ : std_logic;
SIGNAL \A|lc1|Selector6~1_combout\ : std_logic;
SIGNAL \A|lc1|Selector6~2_combout\ : std_logic;
SIGNAL \A|lc1|Selector3~0_combout\ : std_logic;
SIGNAL \A|ul1|Selector5~3_combout\ : std_logic;
SIGNAL \A|ul1|Selector5~2_combout\ : std_logic;
SIGNAL \A|ul1|Selector5~4_combout\ : std_logic;
SIGNAL \A|ul1|Selector5~5_combout\ : std_logic;
SIGNAL \A|ul1|Selector5~6_combout\ : std_logic;
SIGNAL \A|ul1|Selector5~7_combout\ : std_logic;
SIGNAL \A|ul1|Selector5~8_combout\ : std_logic;
SIGNAL \A|lc1|Selector5~0_combout\ : std_logic;
SIGNAL \A|lc1|Selector5~1_combout\ : std_logic;
SIGNAL \A|lc1|Selector4~1_combout\ : std_logic;
SIGNAL \A|lc1|Selector4~0_combout\ : std_logic;
SIGNAL \A|ul1|Selector4~1_combout\ : std_logic;
SIGNAL \A|ul1|Selector4~2_combout\ : std_logic;
SIGNAL \A|ul1|Selector4~3_combout\ : std_logic;
SIGNAL \A|ul1|Selector4~4_combout\ : std_logic;
SIGNAL \A|ul1|Selector4~5_combout\ : std_logic;
SIGNAL \A|lc1|Selector4~2_combout\ : std_logic;
SIGNAL \A|lc1|Selector3~1_combout\ : std_logic;
SIGNAL \A|lc1|Selector3~2_combout\ : std_logic;
SIGNAL \A|ul1|Selector3~1_combout\ : std_logic;
SIGNAL \A|lc1|Selector3~3_combout\ : std_logic;
SIGNAL \A|ul1|Selector2~0_combout\ : std_logic;
SIGNAL \A|ul1|Selector2~1_combout\ : std_logic;
SIGNAL \A|ul1|Selector2~2_combout\ : std_logic;
SIGNAL \A|ul1|Selector2~3_combout\ : std_logic;
SIGNAL \A|ul1|Selector2~4_combout\ : std_logic;
SIGNAL \A|lc1|Selector2~0_combout\ : std_logic;
SIGNAL \A|ul1|Selector1~0_combout\ : std_logic;
SIGNAL \A|lc1|Selector1~1_combout\ : std_logic;
SIGNAL \B|ctl|addr_reg[0]~0_combout\ : std_logic;
SIGNAL \B|ctl|addr_reg[4]~feeder_combout\ : std_logic;
SIGNAL \B|ctl|addr_reg[6]~feeder_combout\ : std_logic;
SIGNAL \B|ctl|addr_reg[7]~feeder_combout\ : std_logic;
SIGNAL \B|ctl|we_reg~feeder_combout\ : std_logic;
SIGNAL \B|ctl|we_reg~q\ : std_logic;
SIGNAL \B|ctl|oe_buf~0_combout\ : std_logic;
SIGNAL \B|ctl|oe_reg~q\ : std_logic;
SIGNAL \A|lc1|WideOr12~0_combout\ : std_logic;
SIGNAL \A|lc1|WideOr12~combout\ : std_logic;
SIGNAL \A|lc1|en_reg~q\ : std_logic;
SIGNAL \A|lc1|WideOr10~2_combout\ : std_logic;
SIGNAL \A|lc1|WideOr10~combout\ : std_logic;
SIGNAL \A|ul1|Selector0~0_combout\ : std_logic;
SIGNAL \A|lc1|Selector10~0_combout\ : std_logic;
SIGNAL \A|lc1|rs_buf~combout\ : std_logic;
SIGNAL \A|lc1|rs_reg~feeder_combout\ : std_logic;
SIGNAL \A|lc1|rs_reg~q\ : std_logic;
SIGNAL \B|dp11|Mux6~0_combout\ : std_logic;
SIGNAL \B|dp11|Mux5~0_combout\ : std_logic;
SIGNAL \B|dp11|Mux4~0_combout\ : std_logic;
SIGNAL \B|dp11|Mux3~0_combout\ : std_logic;
SIGNAL \B|dp11|Mux2~0_combout\ : std_logic;
SIGNAL \B|dp11|Mux1~0_combout\ : std_logic;
SIGNAL \B|dp11|Mux0~0_combout\ : std_logic;
SIGNAL \B|dp12|Mux6~0_combout\ : std_logic;
SIGNAL \B|dp12|Mux5~0_combout\ : std_logic;
SIGNAL \B|dp12|Mux4~0_combout\ : std_logic;
SIGNAL \B|dp12|Mux3~0_combout\ : std_logic;
SIGNAL \B|dp12|Mux2~0_combout\ : std_logic;
SIGNAL \B|dp12|Mux1~0_combout\ : std_logic;
SIGNAL \B|dp12|Mux0~0_combout\ : std_logic;
SIGNAL \B|dp21|Mux6~0_combout\ : std_logic;
SIGNAL \B|dp21|Mux5~0_combout\ : std_logic;
SIGNAL \B|dp21|Mux4~0_combout\ : std_logic;
SIGNAL \B|dp21|Mux3~0_combout\ : std_logic;
SIGNAL \B|dp21|Mux2~0_combout\ : std_logic;
SIGNAL \B|dp21|Mux1~0_combout\ : std_logic;
SIGNAL \B|dp21|Mux0~0_combout\ : std_logic;
SIGNAL \B|dp22|Mux6~0_combout\ : std_logic;
SIGNAL \B|dp22|Mux5~0_combout\ : std_logic;
SIGNAL \B|dp22|Mux4~0_combout\ : std_logic;
SIGNAL \B|dp22|Mux3~0_combout\ : std_logic;
SIGNAL \B|dp22|Mux2~0_combout\ : std_logic;
SIGNAL \B|dp22|Mux1~0_combout\ : std_logic;
SIGNAL \B|dp22|Mux0~0_combout\ : std_logic;
SIGNAL \dio_sram[1]~input_o\ : std_logic;
SIGNAL \B|ctl|data_read_reg[1]~feeder_combout\ : std_logic;
SIGNAL \dio_sram[2]~input_o\ : std_logic;
SIGNAL \B|ctl|data_read_reg[2]~feeder_combout\ : std_logic;
SIGNAL \dio_sram[3]~input_o\ : std_logic;
SIGNAL \dio_sram[0]~input_o\ : std_logic;
SIGNAL \B|ctl|data_read_reg[0]~feeder_combout\ : std_logic;
SIGNAL \B|dp13|Mux6~0_combout\ : std_logic;
SIGNAL \B|dp13|Mux5~0_combout\ : std_logic;
SIGNAL \B|dp13|Mux4~0_combout\ : std_logic;
SIGNAL \B|dp13|Mux3~0_combout\ : std_logic;
SIGNAL \B|dp13|Mux2~0_combout\ : std_logic;
SIGNAL \B|dp13|Mux1~0_combout\ : std_logic;
SIGNAL \B|dp13|Mux0~0_combout\ : std_logic;
SIGNAL \dio_sram[6]~input_o\ : std_logic;
SIGNAL \dio_sram[7]~input_o\ : std_logic;
SIGNAL \B|ctl|data_read_reg[7]~feeder_combout\ : std_logic;
SIGNAL \dio_sram[5]~input_o\ : std_logic;
SIGNAL \B|ctl|data_read_reg[5]~feeder_combout\ : std_logic;
SIGNAL \dio_sram[4]~input_o\ : std_logic;
SIGNAL \B|ctl|data_read_reg[4]~feeder_combout\ : std_logic;
SIGNAL \B|dp23|Mux6~0_combout\ : std_logic;
SIGNAL \B|dp23|Mux5~0_combout\ : std_logic;
SIGNAL \B|dp23|Mux4~0_combout\ : std_logic;
SIGNAL \B|dp23|Mux3~0_combout\ : std_logic;
SIGNAL \B|dp23|Mux2~0_combout\ : std_logic;
SIGNAL \B|dp23|Mux1~0_combout\ : std_logic;
SIGNAL \B|dp23|Mux0~0_combout\ : std_logic;
SIGNAL \A|ck1|q\ : std_logic_vector(20 DOWNTO 0);
SIGNAL \B|ctl|addr_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \A|lc1|data_write_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \B|ctl|data_read_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \A|ul1|data_write\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \B|ctl|data_write_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \A|ul1|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \A|ul1|ALT_INV_send_enable~1_combout\ : std_logic;
SIGNAL \B|dp23|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \B|dp13|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \B|dp22|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \B|dp21|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \B|dp12|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \B|dp11|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \B|ctl|ALT_INV_oe_reg~q\ : std_logic;
SIGNAL \B|ctl|ALT_INV_we_reg~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_tsw <= tsw;
ww_psw <= psw;
ad_sram <= ww_ad_sram;
dio_sram <= ww_dio_sram;
we_n_sram <= ww_we_n_sram;
oe_n_sram <= ww_oe_n_sram;
ce_n_sram <= ww_ce_n_sram;
lb_n_sram <= ww_lb_n_sram;
ub_n_sram <= ww_ub_n_sram;
dio_lcd <= ww_dio_lcd;
en_lcd <= ww_en_lcd;
rw_lcd <= ww_rw_lcd;
rs_lcd <= ww_rs_lcd;
pon_lcd <= ww_pon_lcd;
blon_lcd <= ww_blon_lcd;
segoutL <= ww_segoutL;
segoutM <= ww_segoutM;
segoutR <= ww_segoutR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\A|ck1|q[20]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \A|ck1|q\(20));
\A|ul1|ALT_INV_send_enable~1_combout\ <= NOT \A|ul1|send_enable~1_combout\;
\B|dp23|ALT_INV_Mux0~0_combout\ <= NOT \B|dp23|Mux0~0_combout\;
\B|dp13|ALT_INV_Mux0~0_combout\ <= NOT \B|dp13|Mux0~0_combout\;
\B|dp22|ALT_INV_Mux0~0_combout\ <= NOT \B|dp22|Mux0~0_combout\;
\B|dp21|ALT_INV_Mux0~0_combout\ <= NOT \B|dp21|Mux0~0_combout\;
\B|dp12|ALT_INV_Mux0~0_combout\ <= NOT \B|dp12|Mux0~0_combout\;
\B|dp11|ALT_INV_Mux0~0_combout\ <= NOT \B|dp11|Mux0~0_combout\;
\B|ctl|ALT_INV_oe_reg~q\ <= NOT \B|ctl|oe_reg~q\;
\B|ctl|ALT_INV_we_reg~q\ <= NOT \B|ctl|we_reg~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X3_Y0_N16
\dio_sram[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|ctl|data_write_reg\(0),
	oe => \B|ctl|tri_reg~q\,
	devoe => ww_devoe,
	o => \dio_sram[0]~output_o\);

-- Location: IOOBUF_X7_Y0_N23
\dio_sram[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|ctl|data_write_reg\(1),
	oe => \B|ctl|tri_reg~q\,
	devoe => ww_devoe,
	o => \dio_sram[1]~output_o\);

-- Location: IOOBUF_X3_Y0_N23
\dio_sram[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|ctl|data_write_reg\(2),
	oe => \B|ctl|tri_reg~q\,
	devoe => ww_devoe,
	o => \dio_sram[2]~output_o\);

-- Location: IOOBUF_X0_Y7_N9
\dio_sram[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|ctl|data_write_reg\(3),
	oe => \B|ctl|tri_reg~q\,
	devoe => ww_devoe,
	o => \dio_sram[3]~output_o\);

-- Location: IOOBUF_X0_Y16_N16
\dio_sram[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|ctl|data_write_reg\(4),
	oe => \B|ctl|tri_reg~q\,
	devoe => ww_devoe,
	o => \dio_sram[4]~output_o\);

-- Location: IOOBUF_X0_Y17_N16
\dio_sram[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|ctl|data_write_reg\(5),
	oe => \B|ctl|tri_reg~q\,
	devoe => ww_devoe,
	o => \dio_sram[5]~output_o\);

-- Location: IOOBUF_X0_Y22_N23
\dio_sram[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|ctl|data_write_reg\(6),
	oe => \B|ctl|tri_reg~q\,
	devoe => ww_devoe,
	o => \dio_sram[6]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\dio_sram[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|ctl|data_write_reg\(7),
	oe => \B|ctl|tri_reg~q\,
	devoe => ww_devoe,
	o => \dio_sram[7]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\dio_sram[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dio_sram[8]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\dio_sram[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dio_sram[9]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\dio_sram[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dio_sram[10]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\dio_sram[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dio_sram[11]~output_o\);

-- Location: IOOBUF_X9_Y0_N16
\dio_sram[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dio_sram[12]~output_o\);

-- Location: IOOBUF_X9_Y0_N23
\dio_sram[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dio_sram[13]~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\dio_sram[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dio_sram[14]~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\dio_sram[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dio_sram[15]~output_o\);

-- Location: IOOBUF_X0_Y52_N16
\dio_lcd[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A|lc1|data_write_reg\(0),
	oe => VCC,
	devoe => ww_devoe,
	o => \dio_lcd[0]~output_o\);

-- Location: IOOBUF_X0_Y44_N9
\dio_lcd[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A|lc1|data_write_reg\(1),
	oe => VCC,
	devoe => ww_devoe,
	o => \dio_lcd[1]~output_o\);

-- Location: IOOBUF_X0_Y44_N2
\dio_lcd[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A|lc1|data_write_reg\(2),
	oe => VCC,
	devoe => ww_devoe,
	o => \dio_lcd[2]~output_o\);

-- Location: IOOBUF_X0_Y49_N9
\dio_lcd[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A|lc1|data_write_reg\(3),
	oe => VCC,
	devoe => ww_devoe,
	o => \dio_lcd[3]~output_o\);

-- Location: IOOBUF_X0_Y54_N9
\dio_lcd[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A|lc1|data_write_reg\(4),
	oe => VCC,
	devoe => ww_devoe,
	o => \dio_lcd[4]~output_o\);

-- Location: IOOBUF_X0_Y55_N23
\dio_lcd[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A|lc1|data_write_reg\(5),
	oe => VCC,
	devoe => ww_devoe,
	o => \dio_lcd[5]~output_o\);

-- Location: IOOBUF_X0_Y51_N16
\dio_lcd[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A|lc1|data_write_reg\(6),
	oe => VCC,
	devoe => ww_devoe,
	o => \dio_lcd[6]~output_o\);

-- Location: IOOBUF_X0_Y47_N2
\dio_lcd[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A|lc1|data_write_reg\(7),
	oe => VCC,
	devoe => ww_devoe,
	o => \dio_lcd[7]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\ad_sram[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|ctl|addr_reg\(0),
	devoe => ww_devoe,
	o => \ad_sram[0]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\ad_sram[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|ctl|addr_reg\(1),
	devoe => ww_devoe,
	o => \ad_sram[1]~output_o\);

-- Location: IOOBUF_X20_Y0_N16
\ad_sram[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|ctl|addr_reg\(2),
	devoe => ww_devoe,
	o => \ad_sram[2]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\ad_sram[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|ctl|addr_reg\(3),
	devoe => ww_devoe,
	o => \ad_sram[3]~output_o\);

-- Location: IOOBUF_X0_Y4_N9
\ad_sram[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|ctl|addr_reg\(4),
	devoe => ww_devoe,
	o => \ad_sram[4]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\ad_sram[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|ctl|addr_reg\(5),
	devoe => ww_devoe,
	o => \ad_sram[5]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\ad_sram[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|ctl|addr_reg\(6),
	devoe => ww_devoe,
	o => \ad_sram[6]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\ad_sram[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|ctl|addr_reg\(7),
	devoe => ww_devoe,
	o => \ad_sram[7]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\ad_sram[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ad_sram[8]~output_o\);

-- Location: IOOBUF_X0_Y31_N16
\ad_sram[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ad_sram[9]~output_o\);

-- Location: IOOBUF_X0_Y6_N2
\ad_sram[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ad_sram[10]~output_o\);

-- Location: IOOBUF_X0_Y22_N16
\ad_sram[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ad_sram[11]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\ad_sram[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ad_sram[12]~output_o\);

-- Location: IOOBUF_X0_Y23_N23
\ad_sram[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ad_sram[13]~output_o\);

-- Location: IOOBUF_X0_Y19_N2
\ad_sram[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ad_sram[14]~output_o\);

-- Location: IOOBUF_X27_Y0_N9
\ad_sram[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ad_sram[15]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\ad_sram[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ad_sram[16]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\ad_sram[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ad_sram[17]~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\ad_sram[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ad_sram[18]~output_o\);

-- Location: IOOBUF_X0_Y20_N16
\ad_sram[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ad_sram[19]~output_o\);

-- Location: IOOBUF_X23_Y0_N23
\we_n_sram~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|ctl|ALT_INV_we_reg~q\,
	devoe => ww_devoe,
	o => \we_n_sram~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\oe_n_sram~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|ctl|ALT_INV_oe_reg~q\,
	devoe => ww_devoe,
	o => \oe_n_sram~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\ce_n_sram~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ce_n_sram~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\lb_n_sram~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \lb_n_sram~output_o\);

-- Location: IOOBUF_X0_Y4_N2
\ub_n_sram~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ub_n_sram~output_o\);

-- Location: IOOBUF_X0_Y52_N2
\en_lcd~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A|lc1|en_reg~q\,
	devoe => ww_devoe,
	o => \en_lcd~output_o\);

-- Location: IOOBUF_X0_Y44_N23
\rw_lcd~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rw_lcd~output_o\);

-- Location: IOOBUF_X0_Y44_N16
\rs_lcd~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A|lc1|rs_reg~q\,
	devoe => ww_devoe,
	o => \rs_lcd~output_o\);

-- Location: IOOBUF_X0_Y58_N16
\pon_lcd~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \pon_lcd~output_o\);

-- Location: IOOBUF_X0_Y47_N23
\blon_lcd~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \blon_lcd~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\segoutL[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|dp11|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \segoutL[0]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\segoutL[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|dp11|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \segoutL[1]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\segoutL[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|dp11|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \segoutL[2]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\segoutL[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|dp11|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \segoutL[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\segoutL[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|dp11|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \segoutL[4]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\segoutL[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|dp11|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \segoutL[5]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\segoutL[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|dp11|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \segoutL[6]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\segoutL[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|dp12|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \segoutL[7]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\segoutL[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|dp12|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \segoutL[8]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\segoutL[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|dp12|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \segoutL[9]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\segoutL[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|dp12|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \segoutL[10]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\segoutL[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|dp12|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \segoutL[11]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\segoutL[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|dp12|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \segoutL[12]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\segoutL[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|dp12|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \segoutL[13]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\segoutM[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|dp21|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \segoutM[0]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\segoutM[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|dp21|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \segoutM[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\segoutM[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|dp21|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \segoutM[2]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\segoutM[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|dp21|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \segoutM[3]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\segoutM[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|dp21|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \segoutM[4]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\segoutM[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|dp21|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \segoutM[5]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\segoutM[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|dp21|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \segoutM[6]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\segoutM[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|dp22|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \segoutM[7]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\segoutM[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|dp22|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \segoutM[8]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\segoutM[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|dp22|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \segoutM[9]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\segoutM[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|dp22|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \segoutM[10]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\segoutM[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|dp22|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \segoutM[11]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\segoutM[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|dp22|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \segoutM[12]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\segoutM[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|dp22|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \segoutM[13]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\segoutR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|dp13|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \segoutR[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\segoutR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|dp13|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \segoutR[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\segoutR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|dp13|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \segoutR[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\segoutR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|dp13|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \segoutR[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\segoutR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|dp13|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \segoutR[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\segoutR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|dp13|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \segoutR[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\segoutR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|dp13|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \segoutR[6]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\segoutR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|dp23|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \segoutR[7]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\segoutR[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|dp23|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \segoutR[8]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\segoutR[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|dp23|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \segoutR[9]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\segoutR[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|dp23|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \segoutR[10]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\segoutR[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|dp23|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \segoutR[11]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\segoutR[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|dp23|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \segoutR[12]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\segoutR[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|dp23|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \segoutR[13]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\segoutR[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \segoutR[14]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\segoutR[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \segoutR[15]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\segoutR[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \segoutR[16]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\segoutR[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \segoutR[17]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\segoutR[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \segoutR[18]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\segoutR[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \segoutR[19]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\segoutR[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \segoutR[20]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\segoutR[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \segoutR[21]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\segoutR[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \segoutR[22]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\segoutR[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \segoutR[23]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\segoutR[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \segoutR[24]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\segoutR[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \segoutR[25]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\segoutR[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \segoutR[26]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\segoutR[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \segoutR[27]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X115_Y4_N22
\tsw[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tsw(8),
	o => \tsw[8]~input_o\);

-- Location: LCCOMB_X79_Y13_N8
\B|ctl|data_write_reg[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|ctl|data_write_reg[0]~feeder_combout\ = \tsw[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tsw[8]~input_o\,
	combout => \B|ctl|data_write_reg[0]~feeder_combout\);

-- Location: IOIBUF_X115_Y35_N22
\psw[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_psw(0),
	o => \psw[0]~input_o\);

-- Location: IOIBUF_X115_Y53_N15
\psw[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_psw(2),
	o => \psw[2]~input_o\);

-- Location: IOIBUF_X115_Y40_N8
\psw[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_psw(3),
	o => \psw[3]~input_o\);

-- Location: FF_X80_Y13_N15
\B|ctl|state.w1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \B|ctl|nextstate.w1~0_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|ctl|state.w1~q\);

-- Location: FF_X80_Y13_N3
\B|ctl|state.w2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \B|ctl|state.w1~q\,
	clrn => \psw[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|ctl|state.w2~q\);

-- Location: LCCOMB_X80_Y13_N24
\B|ctl|nextstate.r1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|ctl|nextstate.r1~0_combout\ = (\psw[2]~input_o\ & (\psw[3]~input_o\ & !\B|ctl|state.idle~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \psw[2]~input_o\,
	datac => \psw[3]~input_o\,
	datad => \B|ctl|state.idle~q\,
	combout => \B|ctl|nextstate.r1~0_combout\);

-- Location: FF_X80_Y13_N25
\B|ctl|state.r1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \B|ctl|nextstate.r1~0_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|ctl|state.r1~q\);

-- Location: LCCOMB_X80_Y17_N6
\B|ctl|state.r2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|ctl|state.r2~feeder_combout\ = \B|ctl|state.r1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \B|ctl|state.r1~q\,
	combout => \B|ctl|state.r2~feeder_combout\);

-- Location: FF_X80_Y17_N7
\B|ctl|state.r2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \B|ctl|state.r2~feeder_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|ctl|state.r2~q\);

-- Location: LCCOMB_X80_Y13_N18
\B|ctl|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|ctl|Selector0~0_combout\ = (!\B|ctl|state.w2~q\ & (!\B|ctl|state.r2~q\ & ((\psw[2]~input_o\) # (\B|ctl|state.idle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \psw[2]~input_o\,
	datab => \B|ctl|state.w2~q\,
	datac => \B|ctl|state.idle~q\,
	datad => \B|ctl|state.r2~q\,
	combout => \B|ctl|Selector0~0_combout\);

-- Location: FF_X80_Y13_N19
\B|ctl|state.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \B|ctl|Selector0~0_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|ctl|state.idle~q\);

-- Location: LCCOMB_X80_Y13_N14
\B|ctl|nextstate.w1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|ctl|nextstate.w1~0_combout\ = (\psw[2]~input_o\ & (!\psw[3]~input_o\ & !\B|ctl|state.idle~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \psw[2]~input_o\,
	datac => \psw[3]~input_o\,
	datad => \B|ctl|state.idle~q\,
	combout => \B|ctl|nextstate.w1~0_combout\);

-- Location: FF_X79_Y13_N9
\B|ctl|data_write_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \B|ctl|data_write_reg[0]~feeder_combout\,
	clrn => \psw[0]~input_o\,
	ena => \B|ctl|nextstate.w1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|ctl|data_write_reg\(0));

-- Location: LCCOMB_X80_Y13_N26
\B|ctl|tri_buf~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|ctl|tri_buf~0_combout\ = (\B|ctl|state.w1~q\) # ((!\psw[3]~input_o\ & (!\B|ctl|state.idle~q\ & \psw[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \psw[3]~input_o\,
	datab => \B|ctl|state.idle~q\,
	datac => \B|ctl|state.w1~q\,
	datad => \psw[2]~input_o\,
	combout => \B|ctl|tri_buf~0_combout\);

-- Location: FF_X80_Y13_N27
\B|ctl|tri_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \B|ctl|tri_buf~0_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|ctl|tri_reg~q\);

-- Location: IOIBUF_X115_Y16_N8
\tsw[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tsw(9),
	o => \tsw[9]~input_o\);

-- Location: FF_X79_Y13_N23
\B|ctl|data_write_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \tsw[9]~input_o\,
	clrn => \psw[0]~input_o\,
	sload => VCC,
	ena => \B|ctl|nextstate.w1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|ctl|data_write_reg\(1));

-- Location: IOIBUF_X115_Y4_N15
\tsw[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tsw(10),
	o => \tsw[10]~input_o\);

-- Location: FF_X79_Y13_N29
\B|ctl|data_write_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \tsw[10]~input_o\,
	clrn => \psw[0]~input_o\,
	sload => VCC,
	ena => \B|ctl|nextstate.w1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|ctl|data_write_reg\(2));

-- Location: IOIBUF_X115_Y5_N15
\tsw[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tsw(11),
	o => \tsw[11]~input_o\);

-- Location: LCCOMB_X79_Y13_N26
\B|ctl|data_write_reg[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|ctl|data_write_reg[3]~feeder_combout\ = \tsw[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tsw[11]~input_o\,
	combout => \B|ctl|data_write_reg[3]~feeder_combout\);

-- Location: FF_X79_Y13_N27
\B|ctl|data_write_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \B|ctl|data_write_reg[3]~feeder_combout\,
	clrn => \psw[0]~input_o\,
	ena => \B|ctl|nextstate.w1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|ctl|data_write_reg\(3));

-- Location: IOIBUF_X115_Y7_N15
\tsw[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tsw(12),
	o => \tsw[12]~input_o\);

-- Location: FF_X81_Y13_N19
\B|ctl|data_write_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \tsw[12]~input_o\,
	clrn => \psw[0]~input_o\,
	sload => VCC,
	ena => \B|ctl|nextstate.w1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|ctl|data_write_reg\(4));

-- Location: IOIBUF_X115_Y9_N22
\tsw[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tsw(13),
	o => \tsw[13]~input_o\);

-- Location: FF_X81_Y13_N21
\B|ctl|data_write_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \tsw[13]~input_o\,
	clrn => \psw[0]~input_o\,
	sload => VCC,
	ena => \B|ctl|nextstate.w1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|ctl|data_write_reg\(5));

-- Location: IOIBUF_X115_Y10_N8
\tsw[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tsw(14),
	o => \tsw[14]~input_o\);

-- Location: LCCOMB_X81_Y13_N22
\B|ctl|data_write_reg[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|ctl|data_write_reg[6]~feeder_combout\ = \tsw[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tsw[14]~input_o\,
	combout => \B|ctl|data_write_reg[6]~feeder_combout\);

-- Location: FF_X81_Y13_N23
\B|ctl|data_write_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \B|ctl|data_write_reg[6]~feeder_combout\,
	clrn => \psw[0]~input_o\,
	ena => \B|ctl|nextstate.w1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|ctl|data_write_reg\(6));

-- Location: IOIBUF_X115_Y6_N15
\tsw[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tsw(15),
	o => \tsw[15]~input_o\);

-- Location: LCCOMB_X81_Y13_N28
\B|ctl|data_write_reg[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|ctl|data_write_reg[7]~feeder_combout\ = \tsw[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tsw[15]~input_o\,
	combout => \B|ctl|data_write_reg[7]~feeder_combout\);

-- Location: FF_X81_Y13_N29
\B|ctl|data_write_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \B|ctl|data_write_reg[7]~feeder_combout\,
	clrn => \psw[0]~input_o\,
	ena => \B|ctl|nextstate.w1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|ctl|data_write_reg\(7));

-- Location: LCCOMB_X85_Y14_N8
\A|ck1|q[0]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ck1|q[0]~60_combout\ = !\A|ck1|q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|ck1|q\(0),
	combout => \A|ck1|q[0]~60_combout\);

-- Location: FF_X85_Y14_N9
\A|ck1|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ck1|q[0]~60_combout\,
	clrn => \psw[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ck1|q\(0));

-- Location: LCCOMB_X85_Y14_N12
\A|ck1|q[1]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ck1|q[1]~20_combout\ = (\A|ck1|q\(1) & (\A|ck1|q\(0) $ (VCC))) # (!\A|ck1|q\(1) & (\A|ck1|q\(0) & VCC))
-- \A|ck1|q[1]~21\ = CARRY((\A|ck1|q\(1) & \A|ck1|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ck1|q\(1),
	datab => \A|ck1|q\(0),
	datad => VCC,
	combout => \A|ck1|q[1]~20_combout\,
	cout => \A|ck1|q[1]~21\);

-- Location: FF_X85_Y14_N13
\A|ck1|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ck1|q[1]~20_combout\,
	clrn => \psw[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ck1|q\(1));

-- Location: LCCOMB_X85_Y14_N14
\A|ck1|q[2]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ck1|q[2]~22_combout\ = (\A|ck1|q\(2) & (!\A|ck1|q[1]~21\)) # (!\A|ck1|q\(2) & ((\A|ck1|q[1]~21\) # (GND)))
-- \A|ck1|q[2]~23\ = CARRY((!\A|ck1|q[1]~21\) # (!\A|ck1|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ck1|q\(2),
	datad => VCC,
	cin => \A|ck1|q[1]~21\,
	combout => \A|ck1|q[2]~22_combout\,
	cout => \A|ck1|q[2]~23\);

-- Location: FF_X85_Y14_N15
\A|ck1|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ck1|q[2]~22_combout\,
	clrn => \psw[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ck1|q\(2));

-- Location: LCCOMB_X85_Y14_N16
\A|ck1|q[3]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ck1|q[3]~24_combout\ = (\A|ck1|q\(3) & (\A|ck1|q[2]~23\ $ (GND))) # (!\A|ck1|q\(3) & (!\A|ck1|q[2]~23\ & VCC))
-- \A|ck1|q[3]~25\ = CARRY((\A|ck1|q\(3) & !\A|ck1|q[2]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ck1|q\(3),
	datad => VCC,
	cin => \A|ck1|q[2]~23\,
	combout => \A|ck1|q[3]~24_combout\,
	cout => \A|ck1|q[3]~25\);

-- Location: FF_X85_Y14_N17
\A|ck1|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ck1|q[3]~24_combout\,
	clrn => \psw[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ck1|q\(3));

-- Location: LCCOMB_X85_Y14_N18
\A|ck1|q[4]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ck1|q[4]~26_combout\ = (\A|ck1|q\(4) & (!\A|ck1|q[3]~25\)) # (!\A|ck1|q\(4) & ((\A|ck1|q[3]~25\) # (GND)))
-- \A|ck1|q[4]~27\ = CARRY((!\A|ck1|q[3]~25\) # (!\A|ck1|q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ck1|q\(4),
	datad => VCC,
	cin => \A|ck1|q[3]~25\,
	combout => \A|ck1|q[4]~26_combout\,
	cout => \A|ck1|q[4]~27\);

-- Location: FF_X85_Y14_N19
\A|ck1|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ck1|q[4]~26_combout\,
	clrn => \psw[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ck1|q\(4));

-- Location: LCCOMB_X85_Y14_N20
\A|ck1|q[5]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ck1|q[5]~28_combout\ = (\A|ck1|q\(5) & (\A|ck1|q[4]~27\ $ (GND))) # (!\A|ck1|q\(5) & (!\A|ck1|q[4]~27\ & VCC))
-- \A|ck1|q[5]~29\ = CARRY((\A|ck1|q\(5) & !\A|ck1|q[4]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ck1|q\(5),
	datad => VCC,
	cin => \A|ck1|q[4]~27\,
	combout => \A|ck1|q[5]~28_combout\,
	cout => \A|ck1|q[5]~29\);

-- Location: FF_X85_Y14_N21
\A|ck1|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ck1|q[5]~28_combout\,
	clrn => \psw[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ck1|q\(5));

-- Location: LCCOMB_X85_Y14_N22
\A|ck1|q[6]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ck1|q[6]~30_combout\ = (\A|ck1|q\(6) & (!\A|ck1|q[5]~29\)) # (!\A|ck1|q\(6) & ((\A|ck1|q[5]~29\) # (GND)))
-- \A|ck1|q[6]~31\ = CARRY((!\A|ck1|q[5]~29\) # (!\A|ck1|q\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|ck1|q\(6),
	datad => VCC,
	cin => \A|ck1|q[5]~29\,
	combout => \A|ck1|q[6]~30_combout\,
	cout => \A|ck1|q[6]~31\);

-- Location: FF_X85_Y14_N23
\A|ck1|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ck1|q[6]~30_combout\,
	clrn => \psw[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ck1|q\(6));

-- Location: LCCOMB_X85_Y14_N24
\A|ck1|q[7]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ck1|q[7]~32_combout\ = (\A|ck1|q\(7) & (\A|ck1|q[6]~31\ $ (GND))) # (!\A|ck1|q\(7) & (!\A|ck1|q[6]~31\ & VCC))
-- \A|ck1|q[7]~33\ = CARRY((\A|ck1|q\(7) & !\A|ck1|q[6]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ck1|q\(7),
	datad => VCC,
	cin => \A|ck1|q[6]~31\,
	combout => \A|ck1|q[7]~32_combout\,
	cout => \A|ck1|q[7]~33\);

-- Location: FF_X85_Y14_N25
\A|ck1|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ck1|q[7]~32_combout\,
	clrn => \psw[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ck1|q\(7));

-- Location: LCCOMB_X85_Y14_N26
\A|ck1|q[8]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ck1|q[8]~34_combout\ = (\A|ck1|q\(8) & (!\A|ck1|q[7]~33\)) # (!\A|ck1|q\(8) & ((\A|ck1|q[7]~33\) # (GND)))
-- \A|ck1|q[8]~35\ = CARRY((!\A|ck1|q[7]~33\) # (!\A|ck1|q\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|ck1|q\(8),
	datad => VCC,
	cin => \A|ck1|q[7]~33\,
	combout => \A|ck1|q[8]~34_combout\,
	cout => \A|ck1|q[8]~35\);

-- Location: FF_X85_Y14_N27
\A|ck1|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ck1|q[8]~34_combout\,
	clrn => \psw[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ck1|q\(8));

-- Location: LCCOMB_X85_Y14_N28
\A|ck1|q[9]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ck1|q[9]~36_combout\ = (\A|ck1|q\(9) & (\A|ck1|q[8]~35\ $ (GND))) # (!\A|ck1|q\(9) & (!\A|ck1|q[8]~35\ & VCC))
-- \A|ck1|q[9]~37\ = CARRY((\A|ck1|q\(9) & !\A|ck1|q[8]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ck1|q\(9),
	datad => VCC,
	cin => \A|ck1|q[8]~35\,
	combout => \A|ck1|q[9]~36_combout\,
	cout => \A|ck1|q[9]~37\);

-- Location: FF_X85_Y14_N29
\A|ck1|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ck1|q[9]~36_combout\,
	clrn => \psw[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ck1|q\(9));

-- Location: LCCOMB_X85_Y14_N30
\A|ck1|q[10]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ck1|q[10]~38_combout\ = (\A|ck1|q\(10) & (!\A|ck1|q[9]~37\)) # (!\A|ck1|q\(10) & ((\A|ck1|q[9]~37\) # (GND)))
-- \A|ck1|q[10]~39\ = CARRY((!\A|ck1|q[9]~37\) # (!\A|ck1|q\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|ck1|q\(10),
	datad => VCC,
	cin => \A|ck1|q[9]~37\,
	combout => \A|ck1|q[10]~38_combout\,
	cout => \A|ck1|q[10]~39\);

-- Location: FF_X85_Y14_N31
\A|ck1|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ck1|q[10]~38_combout\,
	clrn => \psw[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ck1|q\(10));

-- Location: LCCOMB_X85_Y13_N0
\A|ck1|q[11]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ck1|q[11]~40_combout\ = (\A|ck1|q\(11) & (\A|ck1|q[10]~39\ $ (GND))) # (!\A|ck1|q\(11) & (!\A|ck1|q[10]~39\ & VCC))
-- \A|ck1|q[11]~41\ = CARRY((\A|ck1|q\(11) & !\A|ck1|q[10]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ck1|q\(11),
	datad => VCC,
	cin => \A|ck1|q[10]~39\,
	combout => \A|ck1|q[11]~40_combout\,
	cout => \A|ck1|q[11]~41\);

-- Location: FF_X85_Y13_N1
\A|ck1|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ck1|q[11]~40_combout\,
	clrn => \psw[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ck1|q\(11));

-- Location: LCCOMB_X85_Y13_N2
\A|ck1|q[12]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ck1|q[12]~42_combout\ = (\A|ck1|q\(12) & (!\A|ck1|q[11]~41\)) # (!\A|ck1|q\(12) & ((\A|ck1|q[11]~41\) # (GND)))
-- \A|ck1|q[12]~43\ = CARRY((!\A|ck1|q[11]~41\) # (!\A|ck1|q\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ck1|q\(12),
	datad => VCC,
	cin => \A|ck1|q[11]~41\,
	combout => \A|ck1|q[12]~42_combout\,
	cout => \A|ck1|q[12]~43\);

-- Location: FF_X85_Y13_N3
\A|ck1|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ck1|q[12]~42_combout\,
	clrn => \psw[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ck1|q\(12));

-- Location: LCCOMB_X85_Y13_N4
\A|ck1|q[13]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ck1|q[13]~44_combout\ = (\A|ck1|q\(13) & (\A|ck1|q[12]~43\ $ (GND))) # (!\A|ck1|q\(13) & (!\A|ck1|q[12]~43\ & VCC))
-- \A|ck1|q[13]~45\ = CARRY((\A|ck1|q\(13) & !\A|ck1|q[12]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ck1|q\(13),
	datad => VCC,
	cin => \A|ck1|q[12]~43\,
	combout => \A|ck1|q[13]~44_combout\,
	cout => \A|ck1|q[13]~45\);

-- Location: FF_X85_Y13_N5
\A|ck1|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ck1|q[13]~44_combout\,
	clrn => \psw[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ck1|q\(13));

-- Location: LCCOMB_X85_Y13_N6
\A|ck1|q[14]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ck1|q[14]~46_combout\ = (\A|ck1|q\(14) & (!\A|ck1|q[13]~45\)) # (!\A|ck1|q\(14) & ((\A|ck1|q[13]~45\) # (GND)))
-- \A|ck1|q[14]~47\ = CARRY((!\A|ck1|q[13]~45\) # (!\A|ck1|q\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|ck1|q\(14),
	datad => VCC,
	cin => \A|ck1|q[13]~45\,
	combout => \A|ck1|q[14]~46_combout\,
	cout => \A|ck1|q[14]~47\);

-- Location: FF_X85_Y13_N7
\A|ck1|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ck1|q[14]~46_combout\,
	clrn => \psw[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ck1|q\(14));

-- Location: LCCOMB_X85_Y13_N8
\A|ck1|q[15]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ck1|q[15]~48_combout\ = (\A|ck1|q\(15) & (\A|ck1|q[14]~47\ $ (GND))) # (!\A|ck1|q\(15) & (!\A|ck1|q[14]~47\ & VCC))
-- \A|ck1|q[15]~49\ = CARRY((\A|ck1|q\(15) & !\A|ck1|q[14]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ck1|q\(15),
	datad => VCC,
	cin => \A|ck1|q[14]~47\,
	combout => \A|ck1|q[15]~48_combout\,
	cout => \A|ck1|q[15]~49\);

-- Location: FF_X85_Y13_N9
\A|ck1|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ck1|q[15]~48_combout\,
	clrn => \psw[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ck1|q\(15));

-- Location: LCCOMB_X85_Y13_N10
\A|ck1|q[16]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ck1|q[16]~50_combout\ = (\A|ck1|q\(16) & (!\A|ck1|q[15]~49\)) # (!\A|ck1|q\(16) & ((\A|ck1|q[15]~49\) # (GND)))
-- \A|ck1|q[16]~51\ = CARRY((!\A|ck1|q[15]~49\) # (!\A|ck1|q\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|ck1|q\(16),
	datad => VCC,
	cin => \A|ck1|q[15]~49\,
	combout => \A|ck1|q[16]~50_combout\,
	cout => \A|ck1|q[16]~51\);

-- Location: FF_X85_Y13_N11
\A|ck1|q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ck1|q[16]~50_combout\,
	clrn => \psw[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ck1|q\(16));

-- Location: LCCOMB_X85_Y13_N12
\A|ck1|q[17]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ck1|q[17]~52_combout\ = (\A|ck1|q\(17) & (\A|ck1|q[16]~51\ $ (GND))) # (!\A|ck1|q\(17) & (!\A|ck1|q[16]~51\ & VCC))
-- \A|ck1|q[17]~53\ = CARRY((\A|ck1|q\(17) & !\A|ck1|q[16]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|ck1|q\(17),
	datad => VCC,
	cin => \A|ck1|q[16]~51\,
	combout => \A|ck1|q[17]~52_combout\,
	cout => \A|ck1|q[17]~53\);

-- Location: FF_X85_Y13_N13
\A|ck1|q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ck1|q[17]~52_combout\,
	clrn => \psw[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ck1|q\(17));

-- Location: LCCOMB_X85_Y13_N14
\A|ck1|q[18]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ck1|q[18]~54_combout\ = (\A|ck1|q\(18) & (!\A|ck1|q[17]~53\)) # (!\A|ck1|q\(18) & ((\A|ck1|q[17]~53\) # (GND)))
-- \A|ck1|q[18]~55\ = CARRY((!\A|ck1|q[17]~53\) # (!\A|ck1|q\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ck1|q\(18),
	datad => VCC,
	cin => \A|ck1|q[17]~53\,
	combout => \A|ck1|q[18]~54_combout\,
	cout => \A|ck1|q[18]~55\);

-- Location: FF_X85_Y13_N15
\A|ck1|q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ck1|q[18]~54_combout\,
	clrn => \psw[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ck1|q\(18));

-- Location: LCCOMB_X85_Y13_N16
\A|ck1|q[19]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ck1|q[19]~56_combout\ = (\A|ck1|q\(19) & (\A|ck1|q[18]~55\ $ (GND))) # (!\A|ck1|q\(19) & (!\A|ck1|q[18]~55\ & VCC))
-- \A|ck1|q[19]~57\ = CARRY((\A|ck1|q\(19) & !\A|ck1|q[18]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ck1|q\(19),
	datad => VCC,
	cin => \A|ck1|q[18]~55\,
	combout => \A|ck1|q[19]~56_combout\,
	cout => \A|ck1|q[19]~57\);

-- Location: FF_X85_Y13_N17
\A|ck1|q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ck1|q[19]~56_combout\,
	clrn => \psw[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ck1|q\(19));

-- Location: LCCOMB_X85_Y13_N18
\A|ck1|q[20]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ck1|q[20]~58_combout\ = \A|ck1|q[19]~57\ $ (\A|ck1|q\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \A|ck1|q\(20),
	cin => \A|ck1|q[19]~57\,
	combout => \A|ck1|q[20]~58_combout\);

-- Location: FF_X85_Y13_N19
\A|ck1|q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ck1|q[20]~58_combout\,
	clrn => \psw[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ck1|q\(20));

-- Location: CLKCTRL_G18
\A|ck1|q[20]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \A|ck1|q[20]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \A|ck1|q[20]~clkctrl_outclk\);

-- Location: LCCOMB_X82_Y13_N10
\A|lc1|state.power~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|state.power~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \A|lc1|state.power~feeder_combout\);

-- Location: FF_X82_Y13_N11
\A|lc1|state.power\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[20]~clkctrl_outclk\,
	d => \A|lc1|state.power~feeder_combout\,
	clrn => \psw[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|state.power~q\);

-- Location: LCCOMB_X82_Y13_N18
\A|lc1|state.init1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|state.init1~0_combout\ = !\A|lc1|state.power~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A|lc1|state.power~q\,
	combout => \A|lc1|state.init1~0_combout\);

-- Location: FF_X82_Y13_N19
\A|lc1|state.init1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[20]~clkctrl_outclk\,
	d => \A|lc1|state.init1~0_combout\,
	clrn => \psw[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|state.init1~q\);

-- Location: LCCOMB_X84_Y13_N10
\A|lc1|state.init2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|state.init2~feeder_combout\ = \A|lc1|state.init1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A|lc1|state.init1~q\,
	combout => \A|lc1|state.init2~feeder_combout\);

-- Location: FF_X84_Y13_N11
\A|lc1|state.init2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[20]~clkctrl_outclk\,
	d => \A|lc1|state.init2~feeder_combout\,
	clrn => \psw[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|state.init2~q\);

-- Location: LCCOMB_X82_Y13_N22
\A|lc1|state.init3~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|state.init3~feeder_combout\ = \A|lc1|state.init2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|lc1|state.init2~q\,
	combout => \A|lc1|state.init3~feeder_combout\);

-- Location: FF_X82_Y13_N23
\A|lc1|state.init3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[20]~clkctrl_outclk\,
	d => \A|lc1|state.init3~feeder_combout\,
	clrn => \psw[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|state.init3~q\);

-- Location: FF_X82_Y13_N1
\A|lc1|state.init4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[20]~clkctrl_outclk\,
	asdata => \A|lc1|state.init3~q\,
	clrn => \psw[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|state.init4~q\);

-- Location: LCCOMB_X82_Y13_N14
\A|lc1|state.init5~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|state.init5~feeder_combout\ = \A|lc1|state.init4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A|lc1|state.init4~q\,
	combout => \A|lc1|state.init5~feeder_combout\);

-- Location: FF_X82_Y13_N15
\A|lc1|state.init5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[20]~clkctrl_outclk\,
	d => \A|lc1|state.init5~feeder_combout\,
	clrn => \psw[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|state.init5~q\);

-- Location: FF_X83_Y16_N1
\A|ul1|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[20]~clkctrl_outclk\,
	d => \A|ul1|Add0~24_combout\,
	clrn => \psw[3]~input_o\,
	ena => \A|ul1|count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(7));

-- Location: LCCOMB_X82_Y16_N10
\A|ul1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~18_combout\ = (\A|ul1|count\(5) & (!\A|ul1|Add0~16\)) # (!\A|ul1|count\(5) & ((\A|ul1|Add0~16\) # (GND)))
-- \A|ul1|Add0~19\ = CARRY((!\A|ul1|Add0~16\) # (!\A|ul1|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(5),
	datad => VCC,
	cin => \A|ul1|Add0~16\,
	combout => \A|ul1|Add0~18_combout\,
	cout => \A|ul1|Add0~19\);

-- Location: LCCOMB_X82_Y16_N12
\A|ul1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~20_combout\ = (\A|ul1|count\(6) & (\A|ul1|Add0~19\ $ (GND))) # (!\A|ul1|count\(6) & (!\A|ul1|Add0~19\ & VCC))
-- \A|ul1|Add0~21\ = CARRY((\A|ul1|count\(6) & !\A|ul1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|count\(6),
	datad => VCC,
	cin => \A|ul1|Add0~19\,
	combout => \A|ul1|Add0~20_combout\,
	cout => \A|ul1|Add0~21\);

-- Location: LCCOMB_X83_Y15_N24
\A|ul1|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~60_combout\ = (\A|ul1|count\(31) & (((\A|ul1|Add0~20_combout\)))) # (!\A|ul1|count\(31) & ((\A|ul1|LessThan0~9_combout\ & ((\A|ul1|Add0~20_combout\))) # (!\A|ul1|LessThan0~9_combout\ & (\A|ul1|count\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(31),
	datab => \A|ul1|count\(6),
	datac => \A|ul1|Add0~20_combout\,
	datad => \A|ul1|LessThan0~9_combout\,
	combout => \A|ul1|Add0~60_combout\);

-- Location: FF_X83_Y15_N1
\A|ul1|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[20]~clkctrl_outclk\,
	asdata => \A|ul1|Add0~60_combout\,
	clrn => \psw[3]~input_o\,
	sload => VCC,
	ena => \A|ul1|count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(6));

-- Location: LCCOMB_X82_Y16_N14
\A|ul1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~22_combout\ = (\A|ul1|count\(7) & (!\A|ul1|Add0~21\)) # (!\A|ul1|count\(7) & ((\A|ul1|Add0~21\) # (GND)))
-- \A|ul1|Add0~23\ = CARRY((!\A|ul1|Add0~21\) # (!\A|ul1|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|count\(7),
	datad => VCC,
	cin => \A|ul1|Add0~21\,
	combout => \A|ul1|Add0~22_combout\,
	cout => \A|ul1|Add0~23\);

-- Location: LCCOMB_X83_Y16_N0
\A|ul1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~24_combout\ = (\A|ul1|count\(31) & (((\A|ul1|Add0~22_combout\)))) # (!\A|ul1|count\(31) & ((\A|ul1|LessThan0~9_combout\ & ((\A|ul1|Add0~22_combout\))) # (!\A|ul1|LessThan0~9_combout\ & (\A|ul1|count\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(31),
	datab => \A|ul1|LessThan0~9_combout\,
	datac => \A|ul1|count\(7),
	datad => \A|ul1|Add0~22_combout\,
	combout => \A|ul1|Add0~24_combout\);

-- Location: FF_X82_Y15_N21
\A|ul1|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[20]~clkctrl_outclk\,
	asdata => \A|ul1|Add0~55_combout\,
	clrn => \psw[3]~input_o\,
	sload => VCC,
	ena => \A|ul1|count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(19));

-- Location: LCCOMB_X82_Y16_N16
\A|ul1|Add0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~25_combout\ = (\A|ul1|count\(8) & (\A|ul1|Add0~23\ $ (GND))) # (!\A|ul1|count\(8) & (!\A|ul1|Add0~23\ & VCC))
-- \A|ul1|Add0~26\ = CARRY((\A|ul1|count\(8) & !\A|ul1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|count\(8),
	datad => VCC,
	cin => \A|ul1|Add0~23\,
	combout => \A|ul1|Add0~25_combout\,
	cout => \A|ul1|Add0~26\);

-- Location: LCCOMB_X83_Y16_N28
\A|ul1|Add0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~59_combout\ = (\A|ul1|count\(31) & (((\A|ul1|Add0~25_combout\)))) # (!\A|ul1|count\(31) & ((\A|ul1|LessThan0~9_combout\ & ((\A|ul1|Add0~25_combout\))) # (!\A|ul1|LessThan0~9_combout\ & (\A|ul1|count\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(8),
	datab => \A|ul1|count\(31),
	datac => \A|ul1|Add0~25_combout\,
	datad => \A|ul1|LessThan0~9_combout\,
	combout => \A|ul1|Add0~59_combout\);

-- Location: FF_X83_Y16_N11
\A|ul1|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[20]~clkctrl_outclk\,
	asdata => \A|ul1|Add0~59_combout\,
	clrn => \psw[3]~input_o\,
	sload => VCC,
	ena => \A|ul1|count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(8));

-- Location: LCCOMB_X82_Y16_N18
\A|ul1|Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~27_combout\ = (\A|ul1|count\(9) & (!\A|ul1|Add0~26\)) # (!\A|ul1|count\(9) & ((\A|ul1|Add0~26\) # (GND)))
-- \A|ul1|Add0~28\ = CARRY((!\A|ul1|Add0~26\) # (!\A|ul1|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|count\(9),
	datad => VCC,
	cin => \A|ul1|Add0~26\,
	combout => \A|ul1|Add0~27_combout\,
	cout => \A|ul1|Add0~28\);

-- Location: LCCOMB_X83_Y14_N8
\A|ul1|Add0~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~61_combout\ = (\A|ul1|count\(31) & (((\A|ul1|Add0~27_combout\)))) # (!\A|ul1|count\(31) & ((\A|ul1|LessThan0~9_combout\ & ((\A|ul1|Add0~27_combout\))) # (!\A|ul1|LessThan0~9_combout\ & (\A|ul1|count\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(9),
	datab => \A|ul1|count\(31),
	datac => \A|ul1|Add0~27_combout\,
	datad => \A|ul1|LessThan0~9_combout\,
	combout => \A|ul1|Add0~61_combout\);

-- Location: FF_X82_Y16_N5
\A|ul1|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[20]~clkctrl_outclk\,
	asdata => \A|ul1|Add0~61_combout\,
	clrn => \psw[3]~input_o\,
	sload => VCC,
	ena => \A|ul1|count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(9));

-- Location: LCCOMB_X82_Y16_N20
\A|ul1|Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~29_combout\ = (\A|ul1|count\(10) & (\A|ul1|Add0~28\ $ (GND))) # (!\A|ul1|count\(10) & (!\A|ul1|Add0~28\ & VCC))
-- \A|ul1|Add0~30\ = CARRY((\A|ul1|count\(10) & !\A|ul1|Add0~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|count\(10),
	datad => VCC,
	cin => \A|ul1|Add0~28\,
	combout => \A|ul1|Add0~29_combout\,
	cout => \A|ul1|Add0~30\);

-- Location: LCCOMB_X83_Y16_N2
\A|ul1|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~62_combout\ = (\A|ul1|count\(31) & (\A|ul1|Add0~29_combout\)) # (!\A|ul1|count\(31) & ((\A|ul1|LessThan0~9_combout\ & (\A|ul1|Add0~29_combout\)) # (!\A|ul1|LessThan0~9_combout\ & ((\A|ul1|count\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(31),
	datab => \A|ul1|Add0~29_combout\,
	datac => \A|ul1|count\(10),
	datad => \A|ul1|LessThan0~9_combout\,
	combout => \A|ul1|Add0~62_combout\);

-- Location: LCCOMB_X83_Y16_N24
\A|ul1|count[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|count[10]~feeder_combout\ = \A|ul1|Add0~62_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A|ul1|Add0~62_combout\,
	combout => \A|ul1|count[10]~feeder_combout\);

-- Location: FF_X83_Y16_N25
\A|ul1|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[20]~clkctrl_outclk\,
	d => \A|ul1|count[10]~feeder_combout\,
	clrn => \psw[3]~input_o\,
	ena => \A|ul1|count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(10));

-- Location: LCCOMB_X82_Y16_N22
\A|ul1|Add0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~31_combout\ = (\A|ul1|count\(11) & (!\A|ul1|Add0~30\)) # (!\A|ul1|count\(11) & ((\A|ul1|Add0~30\) # (GND)))
-- \A|ul1|Add0~32\ = CARRY((!\A|ul1|Add0~30\) # (!\A|ul1|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(11),
	datad => VCC,
	cin => \A|ul1|Add0~30\,
	combout => \A|ul1|Add0~31_combout\,
	cout => \A|ul1|Add0~32\);

-- Location: LCCOMB_X83_Y15_N22
\A|ul1|Add0~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~63_combout\ = (\A|ul1|count\(31) & (((\A|ul1|Add0~31_combout\)))) # (!\A|ul1|count\(31) & ((\A|ul1|LessThan0~9_combout\ & ((\A|ul1|Add0~31_combout\))) # (!\A|ul1|LessThan0~9_combout\ & (\A|ul1|count\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(31),
	datab => \A|ul1|LessThan0~9_combout\,
	datac => \A|ul1|count\(11),
	datad => \A|ul1|Add0~31_combout\,
	combout => \A|ul1|Add0~63_combout\);

-- Location: FF_X83_Y15_N23
\A|ul1|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[20]~clkctrl_outclk\,
	d => \A|ul1|Add0~63_combout\,
	clrn => \psw[3]~input_o\,
	ena => \A|ul1|count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(11));

-- Location: LCCOMB_X82_Y16_N24
\A|ul1|Add0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~33_combout\ = (\A|ul1|count\(12) & (\A|ul1|Add0~32\ $ (GND))) # (!\A|ul1|count\(12) & (!\A|ul1|Add0~32\ & VCC))
-- \A|ul1|Add0~34\ = CARRY((\A|ul1|count\(12) & !\A|ul1|Add0~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(12),
	datad => VCC,
	cin => \A|ul1|Add0~32\,
	combout => \A|ul1|Add0~33_combout\,
	cout => \A|ul1|Add0~34\);

-- Location: LCCOMB_X83_Y16_N8
\A|ul1|Add0~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~64_combout\ = (\A|ul1|count\(31) & (\A|ul1|Add0~33_combout\)) # (!\A|ul1|count\(31) & ((\A|ul1|LessThan0~9_combout\ & (\A|ul1|Add0~33_combout\)) # (!\A|ul1|LessThan0~9_combout\ & ((\A|ul1|count\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(31),
	datab => \A|ul1|Add0~33_combout\,
	datac => \A|ul1|count\(12),
	datad => \A|ul1|LessThan0~9_combout\,
	combout => \A|ul1|Add0~64_combout\);

-- Location: FF_X83_Y16_N27
\A|ul1|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[20]~clkctrl_outclk\,
	asdata => \A|ul1|Add0~64_combout\,
	clrn => \psw[3]~input_o\,
	sload => VCC,
	ena => \A|ul1|count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(12));

-- Location: LCCOMB_X82_Y16_N26
\A|ul1|Add0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~35_combout\ = (\A|ul1|count\(13) & (!\A|ul1|Add0~34\)) # (!\A|ul1|count\(13) & ((\A|ul1|Add0~34\) # (GND)))
-- \A|ul1|Add0~36\ = CARRY((!\A|ul1|Add0~34\) # (!\A|ul1|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|count\(13),
	datad => VCC,
	cin => \A|ul1|Add0~34\,
	combout => \A|ul1|Add0~35_combout\,
	cout => \A|ul1|Add0~36\);

-- Location: LCCOMB_X81_Y15_N26
\A|ul1|Add0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~37_combout\ = (\A|ul1|count\(31) & (((\A|ul1|Add0~35_combout\)))) # (!\A|ul1|count\(31) & ((\A|ul1|LessThan0~9_combout\ & ((\A|ul1|Add0~35_combout\))) # (!\A|ul1|LessThan0~9_combout\ & (\A|ul1|count\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(31),
	datab => \A|ul1|count\(13),
	datac => \A|ul1|Add0~35_combout\,
	datad => \A|ul1|LessThan0~9_combout\,
	combout => \A|ul1|Add0~37_combout\);

-- Location: FF_X82_Y15_N29
\A|ul1|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[20]~clkctrl_outclk\,
	asdata => \A|ul1|Add0~37_combout\,
	clrn => \psw[3]~input_o\,
	sload => VCC,
	ena => \A|ul1|count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(13));

-- Location: LCCOMB_X82_Y16_N28
\A|ul1|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~38_combout\ = (\A|ul1|count\(14) & (\A|ul1|Add0~36\ $ (GND))) # (!\A|ul1|count\(14) & (!\A|ul1|Add0~36\ & VCC))
-- \A|ul1|Add0~39\ = CARRY((\A|ul1|count\(14) & !\A|ul1|Add0~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|count\(14),
	datad => VCC,
	cin => \A|ul1|Add0~36\,
	combout => \A|ul1|Add0~38_combout\,
	cout => \A|ul1|Add0~39\);

-- Location: LCCOMB_X81_Y15_N0
\A|ul1|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~40_combout\ = (\A|ul1|LessThan0~9_combout\ & (((\A|ul1|Add0~38_combout\)))) # (!\A|ul1|LessThan0~9_combout\ & ((\A|ul1|count\(31) & ((\A|ul1|Add0~38_combout\))) # (!\A|ul1|count\(31) & (\A|ul1|count\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|LessThan0~9_combout\,
	datab => \A|ul1|count\(14),
	datac => \A|ul1|count\(31),
	datad => \A|ul1|Add0~38_combout\,
	combout => \A|ul1|Add0~40_combout\);

-- Location: FF_X82_Y16_N21
\A|ul1|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[20]~clkctrl_outclk\,
	asdata => \A|ul1|Add0~40_combout\,
	clrn => \psw[3]~input_o\,
	sload => VCC,
	ena => \A|ul1|count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(14));

-- Location: LCCOMB_X82_Y16_N30
\A|ul1|Add0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~41_combout\ = (\A|ul1|count\(15) & (!\A|ul1|Add0~39\)) # (!\A|ul1|count\(15) & ((\A|ul1|Add0~39\) # (GND)))
-- \A|ul1|Add0~42\ = CARRY((!\A|ul1|Add0~39\) # (!\A|ul1|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(15),
	datad => VCC,
	cin => \A|ul1|Add0~39\,
	combout => \A|ul1|Add0~41_combout\,
	cout => \A|ul1|Add0~42\);

-- Location: LCCOMB_X81_Y15_N30
\A|ul1|Add0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~43_combout\ = (\A|ul1|LessThan0~9_combout\ & (((\A|ul1|Add0~41_combout\)))) # (!\A|ul1|LessThan0~9_combout\ & ((\A|ul1|count\(31) & ((\A|ul1|Add0~41_combout\))) # (!\A|ul1|count\(31) & (\A|ul1|count\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|LessThan0~9_combout\,
	datab => \A|ul1|count\(31),
	datac => \A|ul1|count\(15),
	datad => \A|ul1|Add0~41_combout\,
	combout => \A|ul1|Add0~43_combout\);

-- Location: FF_X81_Y15_N31
\A|ul1|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[20]~clkctrl_outclk\,
	d => \A|ul1|Add0~43_combout\,
	clrn => \psw[3]~input_o\,
	ena => \A|ul1|count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(15));

-- Location: LCCOMB_X82_Y15_N0
\A|ul1|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~44_combout\ = (\A|ul1|count\(16) & (\A|ul1|Add0~42\ $ (GND))) # (!\A|ul1|count\(16) & (!\A|ul1|Add0~42\ & VCC))
-- \A|ul1|Add0~45\ = CARRY((\A|ul1|count\(16) & !\A|ul1|Add0~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|count\(16),
	datad => VCC,
	cin => \A|ul1|Add0~42\,
	combout => \A|ul1|Add0~44_combout\,
	cout => \A|ul1|Add0~45\);

-- Location: LCCOMB_X81_Y15_N20
\A|ul1|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~46_combout\ = (\A|ul1|count\(31) & (\A|ul1|Add0~44_combout\)) # (!\A|ul1|count\(31) & ((\A|ul1|LessThan0~9_combout\ & (\A|ul1|Add0~44_combout\)) # (!\A|ul1|LessThan0~9_combout\ & ((\A|ul1|count\(16))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(31),
	datab => \A|ul1|Add0~44_combout\,
	datac => \A|ul1|count\(16),
	datad => \A|ul1|LessThan0~9_combout\,
	combout => \A|ul1|Add0~46_combout\);

-- Location: FF_X81_Y15_N21
\A|ul1|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[20]~clkctrl_outclk\,
	d => \A|ul1|Add0~46_combout\,
	clrn => \psw[3]~input_o\,
	ena => \A|ul1|count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(16));

-- Location: LCCOMB_X82_Y15_N2
\A|ul1|Add0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~47_combout\ = (\A|ul1|count\(17) & (!\A|ul1|Add0~45\)) # (!\A|ul1|count\(17) & ((\A|ul1|Add0~45\) # (GND)))
-- \A|ul1|Add0~48\ = CARRY((!\A|ul1|Add0~45\) # (!\A|ul1|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(17),
	datad => VCC,
	cin => \A|ul1|Add0~45\,
	combout => \A|ul1|Add0~47_combout\,
	cout => \A|ul1|Add0~48\);

-- Location: LCCOMB_X81_Y15_N2
\A|ul1|Add0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~49_combout\ = (\A|ul1|LessThan0~9_combout\ & (((\A|ul1|Add0~47_combout\)))) # (!\A|ul1|LessThan0~9_combout\ & ((\A|ul1|count\(31) & ((\A|ul1|Add0~47_combout\))) # (!\A|ul1|count\(31) & (\A|ul1|count\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|LessThan0~9_combout\,
	datab => \A|ul1|count\(31),
	datac => \A|ul1|count\(17),
	datad => \A|ul1|Add0~47_combout\,
	combout => \A|ul1|Add0~49_combout\);

-- Location: FF_X81_Y15_N3
\A|ul1|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[20]~clkctrl_outclk\,
	d => \A|ul1|Add0~49_combout\,
	clrn => \psw[3]~input_o\,
	ena => \A|ul1|count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(17));

-- Location: LCCOMB_X82_Y15_N4
\A|ul1|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~50_combout\ = (\A|ul1|count\(18) & (\A|ul1|Add0~48\ $ (GND))) # (!\A|ul1|count\(18) & (!\A|ul1|Add0~48\ & VCC))
-- \A|ul1|Add0~51\ = CARRY((\A|ul1|count\(18) & !\A|ul1|Add0~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(18),
	datad => VCC,
	cin => \A|ul1|Add0~48\,
	combout => \A|ul1|Add0~50_combout\,
	cout => \A|ul1|Add0~51\);

-- Location: LCCOMB_X81_Y15_N8
\A|ul1|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~52_combout\ = (\A|ul1|LessThan0~9_combout\ & (((\A|ul1|Add0~50_combout\)))) # (!\A|ul1|LessThan0~9_combout\ & ((\A|ul1|count\(31) & ((\A|ul1|Add0~50_combout\))) # (!\A|ul1|count\(31) & (\A|ul1|count\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|LessThan0~9_combout\,
	datab => \A|ul1|count\(31),
	datac => \A|ul1|count\(18),
	datad => \A|ul1|Add0~50_combout\,
	combout => \A|ul1|Add0~52_combout\);

-- Location: FF_X81_Y15_N9
\A|ul1|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[20]~clkctrl_outclk\,
	d => \A|ul1|Add0~52_combout\,
	clrn => \psw[3]~input_o\,
	ena => \A|ul1|count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(18));

-- Location: LCCOMB_X82_Y15_N6
\A|ul1|Add0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~53_combout\ = (\A|ul1|count\(19) & (!\A|ul1|Add0~51\)) # (!\A|ul1|count\(19) & ((\A|ul1|Add0~51\) # (GND)))
-- \A|ul1|Add0~54\ = CARRY((!\A|ul1|Add0~51\) # (!\A|ul1|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|count\(19),
	datad => VCC,
	cin => \A|ul1|Add0~51\,
	combout => \A|ul1|Add0~53_combout\,
	cout => \A|ul1|Add0~54\);

-- Location: LCCOMB_X81_Y15_N12
\A|ul1|Add0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~55_combout\ = (\A|ul1|LessThan0~9_combout\ & (((\A|ul1|Add0~53_combout\)))) # (!\A|ul1|LessThan0~9_combout\ & ((\A|ul1|count\(31) & ((\A|ul1|Add0~53_combout\))) # (!\A|ul1|count\(31) & (\A|ul1|count\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|LessThan0~9_combout\,
	datab => \A|ul1|count\(31),
	datac => \A|ul1|count\(19),
	datad => \A|ul1|Add0~53_combout\,
	combout => \A|ul1|Add0~55_combout\);

-- Location: FF_X82_Y15_N27
\A|ul1|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[20]~clkctrl_outclk\,
	asdata => \A|ul1|Add0~58_combout\,
	clrn => \psw[3]~input_o\,
	sload => VCC,
	ena => \A|ul1|count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(20));

-- Location: LCCOMB_X82_Y15_N8
\A|ul1|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~56_combout\ = (\A|ul1|count\(20) & (\A|ul1|Add0~54\ $ (GND))) # (!\A|ul1|count\(20) & (!\A|ul1|Add0~54\ & VCC))
-- \A|ul1|Add0~57\ = CARRY((\A|ul1|count\(20) & !\A|ul1|Add0~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(20),
	datad => VCC,
	cin => \A|ul1|Add0~54\,
	combout => \A|ul1|Add0~56_combout\,
	cout => \A|ul1|Add0~57\);

-- Location: LCCOMB_X81_Y15_N6
\A|ul1|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~58_combout\ = (\A|ul1|LessThan0~9_combout\ & (((\A|ul1|Add0~56_combout\)))) # (!\A|ul1|LessThan0~9_combout\ & ((\A|ul1|count\(31) & (\A|ul1|Add0~56_combout\)) # (!\A|ul1|count\(31) & ((\A|ul1|count\(20))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|LessThan0~9_combout\,
	datab => \A|ul1|count\(31),
	datac => \A|ul1|Add0~56_combout\,
	datad => \A|ul1|count\(20),
	combout => \A|ul1|Add0~58_combout\);

-- Location: LCCOMB_X81_Y15_N28
\A|ul1|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal0~4_combout\ = (!\A|ul1|Add0~55_combout\ & (!\A|ul1|Add0~49_combout\ & (!\A|ul1|Add0~52_combout\ & !\A|ul1|Add0~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~55_combout\,
	datab => \A|ul1|Add0~49_combout\,
	datac => \A|ul1|Add0~52_combout\,
	datad => \A|ul1|Add0~58_combout\,
	combout => \A|ul1|Equal0~4_combout\);

-- Location: LCCOMB_X81_Y15_N18
\A|ul1|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal0~3_combout\ = (!\A|ul1|Add0~37_combout\ & (!\A|ul1|Add0~40_combout\ & (!\A|ul1|Add0~43_combout\ & !\A|ul1|Add0~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~37_combout\,
	datab => \A|ul1|Add0~40_combout\,
	datac => \A|ul1|Add0~43_combout\,
	datad => \A|ul1|Add0~46_combout\,
	combout => \A|ul1|Equal0~3_combout\);

-- Location: LCCOMB_X82_Y14_N8
\A|ul1|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal0~5_combout\ = (!\A|ul1|Add0~62_combout\ & (!\A|ul1|Add0~63_combout\ & (!\A|ul1|Add0~61_combout\ & !\A|ul1|Add0~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~62_combout\,
	datab => \A|ul1|Add0~63_combout\,
	datac => \A|ul1|Add0~61_combout\,
	datad => \A|ul1|Add0~64_combout\,
	combout => \A|ul1|Equal0~5_combout\);

-- Location: LCCOMB_X82_Y15_N10
\A|ul1|Add0~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~65_combout\ = (\A|ul1|count\(21) & (!\A|ul1|Add0~57\)) # (!\A|ul1|count\(21) & ((\A|ul1|Add0~57\) # (GND)))
-- \A|ul1|Add0~66\ = CARRY((!\A|ul1|Add0~57\) # (!\A|ul1|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|count\(21),
	datad => VCC,
	cin => \A|ul1|Add0~57\,
	combout => \A|ul1|Add0~65_combout\,
	cout => \A|ul1|Add0~66\);

-- Location: LCCOMB_X81_Y15_N14
\A|ul1|Add0~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~87_combout\ = (\A|ul1|count\(31) & (((\A|ul1|Add0~65_combout\)))) # (!\A|ul1|count\(31) & ((\A|ul1|LessThan0~9_combout\ & ((\A|ul1|Add0~65_combout\))) # (!\A|ul1|LessThan0~9_combout\ & (\A|ul1|count\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(31),
	datab => \A|ul1|count\(21),
	datac => \A|ul1|Add0~65_combout\,
	datad => \A|ul1|LessThan0~9_combout\,
	combout => \A|ul1|Add0~87_combout\);

-- Location: FF_X82_Y15_N1
\A|ul1|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[20]~clkctrl_outclk\,
	asdata => \A|ul1|Add0~87_combout\,
	clrn => \psw[3]~input_o\,
	sload => VCC,
	ena => \A|ul1|count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(21));

-- Location: LCCOMB_X82_Y15_N12
\A|ul1|Add0~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~67_combout\ = (\A|ul1|count\(22) & (\A|ul1|Add0~66\ $ (GND))) # (!\A|ul1|count\(22) & (!\A|ul1|Add0~66\ & VCC))
-- \A|ul1|Add0~68\ = CARRY((\A|ul1|count\(22) & !\A|ul1|Add0~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(22),
	datad => VCC,
	cin => \A|ul1|Add0~66\,
	combout => \A|ul1|Add0~67_combout\,
	cout => \A|ul1|Add0~68\);

-- Location: LCCOMB_X81_Y15_N24
\A|ul1|Add0~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~88_combout\ = (\A|ul1|count\(31) & (((\A|ul1|Add0~67_combout\)))) # (!\A|ul1|count\(31) & ((\A|ul1|LessThan0~9_combout\ & ((\A|ul1|Add0~67_combout\))) # (!\A|ul1|LessThan0~9_combout\ & (\A|ul1|count\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(31),
	datab => \A|ul1|count\(22),
	datac => \A|ul1|Add0~67_combout\,
	datad => \A|ul1|LessThan0~9_combout\,
	combout => \A|ul1|Add0~88_combout\);

-- Location: FF_X82_Y15_N7
\A|ul1|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[20]~clkctrl_outclk\,
	asdata => \A|ul1|Add0~88_combout\,
	clrn => \psw[3]~input_o\,
	sload => VCC,
	ena => \A|ul1|count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(22));

-- Location: LCCOMB_X82_Y15_N14
\A|ul1|Add0~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~69_combout\ = (\A|ul1|count\(23) & (!\A|ul1|Add0~68\)) # (!\A|ul1|count\(23) & ((\A|ul1|Add0~68\) # (GND)))
-- \A|ul1|Add0~70\ = CARRY((!\A|ul1|Add0~68\) # (!\A|ul1|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(23),
	datad => VCC,
	cin => \A|ul1|Add0~68\,
	combout => \A|ul1|Add0~69_combout\,
	cout => \A|ul1|Add0~70\);

-- Location: LCCOMB_X81_Y15_N10
\A|ul1|Add0~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~89_combout\ = (\A|ul1|count\(31) & (((\A|ul1|Add0~69_combout\)))) # (!\A|ul1|count\(31) & ((\A|ul1|LessThan0~9_combout\ & ((\A|ul1|Add0~69_combout\))) # (!\A|ul1|LessThan0~9_combout\ & (\A|ul1|count\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(31),
	datab => \A|ul1|LessThan0~9_combout\,
	datac => \A|ul1|count\(23),
	datad => \A|ul1|Add0~69_combout\,
	combout => \A|ul1|Add0~89_combout\);

-- Location: FF_X81_Y15_N11
\A|ul1|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[20]~clkctrl_outclk\,
	d => \A|ul1|Add0~89_combout\,
	clrn => \psw[3]~input_o\,
	ena => \A|ul1|count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(23));

-- Location: LCCOMB_X82_Y15_N16
\A|ul1|Add0~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~71_combout\ = (\A|ul1|count\(24) & (\A|ul1|Add0~70\ $ (GND))) # (!\A|ul1|count\(24) & (!\A|ul1|Add0~70\ & VCC))
-- \A|ul1|Add0~72\ = CARRY((\A|ul1|count\(24) & !\A|ul1|Add0~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|count\(24),
	datad => VCC,
	cin => \A|ul1|Add0~70\,
	combout => \A|ul1|Add0~71_combout\,
	cout => \A|ul1|Add0~72\);

-- Location: LCCOMB_X81_Y15_N4
\A|ul1|Add0~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~90_combout\ = (\A|ul1|count\(31) & (((\A|ul1|Add0~71_combout\)))) # (!\A|ul1|count\(31) & ((\A|ul1|LessThan0~9_combout\ & ((\A|ul1|Add0~71_combout\))) # (!\A|ul1|LessThan0~9_combout\ & (\A|ul1|count\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(31),
	datab => \A|ul1|LessThan0~9_combout\,
	datac => \A|ul1|count\(24),
	datad => \A|ul1|Add0~71_combout\,
	combout => \A|ul1|Add0~90_combout\);

-- Location: FF_X81_Y15_N5
\A|ul1|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[20]~clkctrl_outclk\,
	d => \A|ul1|Add0~90_combout\,
	clrn => \psw[3]~input_o\,
	ena => \A|ul1|count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(24));

-- Location: LCCOMB_X82_Y15_N18
\A|ul1|Add0~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~73_combout\ = (\A|ul1|count\(25) & (!\A|ul1|Add0~72\)) # (!\A|ul1|count\(25) & ((\A|ul1|Add0~72\) # (GND)))
-- \A|ul1|Add0~74\ = CARRY((!\A|ul1|Add0~72\) # (!\A|ul1|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|count\(25),
	datad => VCC,
	cin => \A|ul1|Add0~72\,
	combout => \A|ul1|Add0~73_combout\,
	cout => \A|ul1|Add0~74\);

-- Location: LCCOMB_X83_Y15_N30
\A|ul1|Add0~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~91_combout\ = (\A|ul1|count\(31) & (((\A|ul1|Add0~73_combout\)))) # (!\A|ul1|count\(31) & ((\A|ul1|LessThan0~9_combout\ & ((\A|ul1|Add0~73_combout\))) # (!\A|ul1|LessThan0~9_combout\ & (\A|ul1|count\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(31),
	datab => \A|ul1|LessThan0~9_combout\,
	datac => \A|ul1|count\(25),
	datad => \A|ul1|Add0~73_combout\,
	combout => \A|ul1|Add0~91_combout\);

-- Location: FF_X83_Y15_N31
\A|ul1|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[20]~clkctrl_outclk\,
	d => \A|ul1|Add0~91_combout\,
	clrn => \psw[3]~input_o\,
	ena => \A|ul1|count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(25));

-- Location: LCCOMB_X82_Y15_N20
\A|ul1|Add0~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~75_combout\ = (\A|ul1|count\(26) & (\A|ul1|Add0~74\ $ (GND))) # (!\A|ul1|count\(26) & (!\A|ul1|Add0~74\ & VCC))
-- \A|ul1|Add0~76\ = CARRY((\A|ul1|count\(26) & !\A|ul1|Add0~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|count\(26),
	datad => VCC,
	cin => \A|ul1|Add0~74\,
	combout => \A|ul1|Add0~75_combout\,
	cout => \A|ul1|Add0~76\);

-- Location: LCCOMB_X83_Y15_N8
\A|ul1|Add0~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~92_combout\ = (\A|ul1|count\(31) & (((\A|ul1|Add0~75_combout\)))) # (!\A|ul1|count\(31) & ((\A|ul1|LessThan0~9_combout\ & ((\A|ul1|Add0~75_combout\))) # (!\A|ul1|LessThan0~9_combout\ & (\A|ul1|count\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(31),
	datab => \A|ul1|LessThan0~9_combout\,
	datac => \A|ul1|count\(26),
	datad => \A|ul1|Add0~75_combout\,
	combout => \A|ul1|Add0~92_combout\);

-- Location: FF_X83_Y15_N9
\A|ul1|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[20]~clkctrl_outclk\,
	d => \A|ul1|Add0~92_combout\,
	clrn => \psw[3]~input_o\,
	ena => \A|ul1|count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(26));

-- Location: LCCOMB_X82_Y15_N22
\A|ul1|Add0~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~77_combout\ = (\A|ul1|count\(27) & (!\A|ul1|Add0~76\)) # (!\A|ul1|count\(27) & ((\A|ul1|Add0~76\) # (GND)))
-- \A|ul1|Add0~78\ = CARRY((!\A|ul1|Add0~76\) # (!\A|ul1|count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|count\(27),
	datad => VCC,
	cin => \A|ul1|Add0~76\,
	combout => \A|ul1|Add0~77_combout\,
	cout => \A|ul1|Add0~78\);

-- Location: LCCOMB_X83_Y15_N28
\A|ul1|Add0~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~93_combout\ = (\A|ul1|count\(31) & (((\A|ul1|Add0~77_combout\)))) # (!\A|ul1|count\(31) & ((\A|ul1|LessThan0~9_combout\ & ((\A|ul1|Add0~77_combout\))) # (!\A|ul1|LessThan0~9_combout\ & (\A|ul1|count\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(31),
	datab => \A|ul1|LessThan0~9_combout\,
	datac => \A|ul1|count\(27),
	datad => \A|ul1|Add0~77_combout\,
	combout => \A|ul1|Add0~93_combout\);

-- Location: FF_X83_Y15_N29
\A|ul1|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[20]~clkctrl_outclk\,
	d => \A|ul1|Add0~93_combout\,
	clrn => \psw[3]~input_o\,
	ena => \A|ul1|count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(27));

-- Location: LCCOMB_X82_Y15_N24
\A|ul1|Add0~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~79_combout\ = (\A|ul1|count\(28) & (\A|ul1|Add0~78\ $ (GND))) # (!\A|ul1|count\(28) & (!\A|ul1|Add0~78\ & VCC))
-- \A|ul1|Add0~80\ = CARRY((\A|ul1|count\(28) & !\A|ul1|Add0~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(28),
	datad => VCC,
	cin => \A|ul1|Add0~78\,
	combout => \A|ul1|Add0~79_combout\,
	cout => \A|ul1|Add0~80\);

-- Location: LCCOMB_X83_Y15_N10
\A|ul1|Add0~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~94_combout\ = (\A|ul1|count\(31) & (((\A|ul1|Add0~79_combout\)))) # (!\A|ul1|count\(31) & ((\A|ul1|LessThan0~9_combout\ & ((\A|ul1|Add0~79_combout\))) # (!\A|ul1|LessThan0~9_combout\ & (\A|ul1|count\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(31),
	datab => \A|ul1|LessThan0~9_combout\,
	datac => \A|ul1|count\(28),
	datad => \A|ul1|Add0~79_combout\,
	combout => \A|ul1|Add0~94_combout\);

-- Location: FF_X83_Y15_N11
\A|ul1|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[20]~clkctrl_outclk\,
	d => \A|ul1|Add0~94_combout\,
	clrn => \psw[3]~input_o\,
	ena => \A|ul1|count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(28));

-- Location: LCCOMB_X82_Y15_N26
\A|ul1|Add0~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~81_combout\ = (\A|ul1|count\(29) & (!\A|ul1|Add0~80\)) # (!\A|ul1|count\(29) & ((\A|ul1|Add0~80\) # (GND)))
-- \A|ul1|Add0~82\ = CARRY((!\A|ul1|Add0~80\) # (!\A|ul1|count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|count\(29),
	datad => VCC,
	cin => \A|ul1|Add0~80\,
	combout => \A|ul1|Add0~81_combout\,
	cout => \A|ul1|Add0~82\);

-- Location: LCCOMB_X83_Y14_N16
\A|ul1|Add0~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~95_combout\ = (\A|ul1|LessThan0~9_combout\ & (((\A|ul1|Add0~81_combout\)))) # (!\A|ul1|LessThan0~9_combout\ & ((\A|ul1|count\(31) & ((\A|ul1|Add0~81_combout\))) # (!\A|ul1|count\(31) & (\A|ul1|count\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|LessThan0~9_combout\,
	datab => \A|ul1|count\(29),
	datac => \A|ul1|count\(31),
	datad => \A|ul1|Add0~81_combout\,
	combout => \A|ul1|Add0~95_combout\);

-- Location: FF_X82_Y15_N25
\A|ul1|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[20]~clkctrl_outclk\,
	asdata => \A|ul1|Add0~95_combout\,
	clrn => \psw[3]~input_o\,
	sload => VCC,
	ena => \A|ul1|count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(29));

-- Location: LCCOMB_X82_Y15_N28
\A|ul1|Add0~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~83_combout\ = (\A|ul1|count\(30) & (\A|ul1|Add0~82\ $ (GND))) # (!\A|ul1|count\(30) & (!\A|ul1|Add0~82\ & VCC))
-- \A|ul1|Add0~84\ = CARRY((\A|ul1|count\(30) & !\A|ul1|Add0~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(30),
	datad => VCC,
	cin => \A|ul1|Add0~82\,
	combout => \A|ul1|Add0~83_combout\,
	cout => \A|ul1|Add0~84\);

-- Location: LCCOMB_X83_Y15_N20
\A|ul1|Add0~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~98_combout\ = (\A|ul1|count\(31) & (((\A|ul1|Add0~83_combout\)))) # (!\A|ul1|count\(31) & ((\A|ul1|LessThan0~9_combout\ & ((\A|ul1|Add0~83_combout\))) # (!\A|ul1|LessThan0~9_combout\ & (\A|ul1|count\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(31),
	datab => \A|ul1|LessThan0~9_combout\,
	datac => \A|ul1|count\(30),
	datad => \A|ul1|Add0~83_combout\,
	combout => \A|ul1|Add0~98_combout\);

-- Location: FF_X83_Y15_N21
\A|ul1|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[20]~clkctrl_outclk\,
	d => \A|ul1|Add0~98_combout\,
	clrn => \psw[3]~input_o\,
	ena => \A|ul1|count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(30));

-- Location: LCCOMB_X82_Y15_N30
\A|ul1|Add0~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~85_combout\ = \A|ul1|Add0~84\ $ (\A|ul1|count\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \A|ul1|count\(31),
	cin => \A|ul1|Add0~84\,
	combout => \A|ul1|Add0~85_combout\);

-- Location: LCCOMB_X83_Y14_N10
\A|ul1|LessThan0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|LessThan0~10_combout\ = (\A|ul1|count\(31)) # (\A|ul1|LessThan0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|count\(31),
	datad => \A|ul1|LessThan0~9_combout\,
	combout => \A|ul1|LessThan0~10_combout\);

-- Location: LCCOMB_X82_Y14_N18
\A|ul1|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal0~6_combout\ = (\A|ul1|LessThan0~10_combout\ & (((\A|ul1|Add0~18_combout\) # (\A|ul1|Add0~85_combout\)))) # (!\A|ul1|LessThan0~10_combout\ & (\A|ul1|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(5),
	datab => \A|ul1|Add0~18_combout\,
	datac => \A|ul1|Add0~85_combout\,
	datad => \A|ul1|LessThan0~10_combout\,
	combout => \A|ul1|Equal0~6_combout\);

-- Location: LCCOMB_X82_Y14_N12
\A|ul1|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal0~7_combout\ = (!\A|ul1|Add0~60_combout\ & (!\A|ul1|Add0~59_combout\ & (\A|ul1|Equal0~5_combout\ & !\A|ul1|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~60_combout\,
	datab => \A|ul1|Add0~59_combout\,
	datac => \A|ul1|Equal0~5_combout\,
	datad => \A|ul1|Equal0~6_combout\,
	combout => \A|ul1|Equal0~7_combout\);

-- Location: LCCOMB_X82_Y14_N4
\A|ul1|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal0~8_combout\ = (!\A|ul1|Add0~24_combout\ & (\A|ul1|Equal0~4_combout\ & (\A|ul1|Equal0~3_combout\ & \A|ul1|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~24_combout\,
	datab => \A|ul1|Equal0~4_combout\,
	datac => \A|ul1|Equal0~3_combout\,
	datad => \A|ul1|Equal0~7_combout\,
	combout => \A|ul1|Equal0~8_combout\);

-- Location: LCCOMB_X81_Y15_N22
\A|ul1|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal0~9_combout\ = (!\A|ul1|Add0~89_combout\ & (!\A|ul1|Add0~87_combout\ & (!\A|ul1|Add0~90_combout\ & !\A|ul1|Add0~88_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~89_combout\,
	datab => \A|ul1|Add0~87_combout\,
	datac => \A|ul1|Add0~90_combout\,
	datad => \A|ul1|Add0~88_combout\,
	combout => \A|ul1|Equal0~9_combout\);

-- Location: LCCOMB_X83_Y15_N6
\A|ul1|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal0~10_combout\ = (!\A|ul1|Add0~91_combout\ & (!\A|ul1|Add0~93_combout\ & (!\A|ul1|Add0~92_combout\ & !\A|ul1|Add0~94_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~91_combout\,
	datab => \A|ul1|Add0~93_combout\,
	datac => \A|ul1|Add0~92_combout\,
	datad => \A|ul1|Add0~94_combout\,
	combout => \A|ul1|Equal0~10_combout\);

-- Location: LCCOMB_X82_Y14_N20
\A|ul1|Equal0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal0~11_combout\ = (!\A|ul1|Add0~98_combout\ & (!\A|ul1|Add0~95_combout\ & (\A|ul1|Equal0~9_combout\ & \A|ul1|Equal0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~98_combout\,
	datab => \A|ul1|Add0~95_combout\,
	datac => \A|ul1|Equal0~9_combout\,
	datad => \A|ul1|Equal0~10_combout\,
	combout => \A|ul1|Equal0~11_combout\);

-- Location: LCCOMB_X82_Y14_N2
\A|ul1|Equal0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal0~13_combout\ = (!\A|ul1|Add0~17_combout\ & (\A|ul1|Equal0~8_combout\ & \A|ul1|Equal0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|Add0~17_combout\,
	datac => \A|ul1|Equal0~8_combout\,
	datad => \A|ul1|Equal0~11_combout\,
	combout => \A|ul1|Equal0~13_combout\);

-- Location: FF_X83_Y16_N5
\A|ul1|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[20]~clkctrl_outclk\,
	d => \A|ul1|Add0~6_combout\,
	clrn => \psw[3]~input_o\,
	ena => \A|ul1|count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(0));

-- Location: LCCOMB_X82_Y16_N0
\A|ul1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~4_combout\ = \A|ul1|count\(0) $ (VCC)
-- \A|ul1|Add0~5\ = CARRY(\A|ul1|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(0),
	datad => VCC,
	combout => \A|ul1|Add0~4_combout\,
	cout => \A|ul1|Add0~5\);

-- Location: LCCOMB_X83_Y16_N4
\A|ul1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~6_combout\ = (\A|ul1|count\(31) & (((\A|ul1|Add0~4_combout\)))) # (!\A|ul1|count\(31) & ((\A|ul1|LessThan0~9_combout\ & ((\A|ul1|Add0~4_combout\))) # (!\A|ul1|LessThan0~9_combout\ & (\A|ul1|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(31),
	datab => \A|ul1|LessThan0~9_combout\,
	datac => \A|ul1|count\(0),
	datad => \A|ul1|Add0~4_combout\,
	combout => \A|ul1|Add0~6_combout\);

-- Location: FF_X83_Y16_N21
\A|ul1|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[20]~clkctrl_outclk\,
	d => \A|ul1|Add0~96_combout\,
	clrn => \psw[3]~input_o\,
	ena => \A|ul1|count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(1));

-- Location: LCCOMB_X82_Y16_N2
\A|ul1|Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~7_combout\ = (\A|ul1|count\(1) & (!\A|ul1|Add0~5\)) # (!\A|ul1|count\(1) & ((\A|ul1|Add0~5\) # (GND)))
-- \A|ul1|Add0~8\ = CARRY((!\A|ul1|Add0~5\) # (!\A|ul1|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(1),
	datad => VCC,
	cin => \A|ul1|Add0~5\,
	combout => \A|ul1|Add0~7_combout\,
	cout => \A|ul1|Add0~8\);

-- Location: LCCOMB_X83_Y16_N20
\A|ul1|Add0~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~96_combout\ = (\A|ul1|count\(31) & (((\A|ul1|Add0~7_combout\)))) # (!\A|ul1|count\(31) & ((\A|ul1|LessThan0~9_combout\ & ((\A|ul1|Add0~7_combout\))) # (!\A|ul1|LessThan0~9_combout\ & (\A|ul1|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(31),
	datab => \A|ul1|LessThan0~9_combout\,
	datac => \A|ul1|count\(1),
	datad => \A|ul1|Add0~7_combout\,
	combout => \A|ul1|Add0~96_combout\);

-- Location: LCCOMB_X84_Y14_N14
\A|ul1|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal3~0_combout\ = (!\A|ul1|Add0~6_combout\ & !\A|ul1|Add0~96_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|ul1|Add0~6_combout\,
	datad => \A|ul1|Add0~96_combout\,
	combout => \A|ul1|Equal3~0_combout\);

-- Location: LCCOMB_X83_Y16_N10
\A|ul1|Equal9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal9~0_combout\ = (\A|ul1|Add0~14_combout\ & !\A|ul1|Add0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|Add0~14_combout\,
	datad => \A|ul1|Add0~11_combout\,
	combout => \A|ul1|Equal9~0_combout\);

-- Location: LCCOMB_X83_Y16_N26
\A|ul1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal0~2_combout\ = (!\A|ul1|Add0~14_combout\ & !\A|ul1|Add0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|Add0~14_combout\,
	datad => \A|ul1|Add0~11_combout\,
	combout => \A|ul1|Equal0~2_combout\);

-- Location: LCCOMB_X82_Y14_N28
\A|ul1|Equal15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal15~0_combout\ = (\A|ul1|Equal0~2_combout\ & (\A|ul1|Add0~17_combout\ & (\A|ul1|Equal0~8_combout\ & \A|ul1|Equal0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal0~2_combout\,
	datab => \A|ul1|Add0~17_combout\,
	datac => \A|ul1|Equal0~8_combout\,
	datad => \A|ul1|Equal0~11_combout\,
	combout => \A|ul1|Equal15~0_combout\);

-- Location: LCCOMB_X81_Y14_N22
\A|ul1|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector3~0_combout\ = ((!\A|ul1|Equal15~0_combout\ & ((!\A|ul1|Equal9~0_combout\) # (!\A|ul1|Equal0~13_combout\)))) # (!\A|ul1|Equal3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal0~13_combout\,
	datab => \A|ul1|Equal3~0_combout\,
	datac => \A|ul1|Equal9~0_combout\,
	datad => \A|ul1|Equal15~0_combout\,
	combout => \A|ul1|Selector3~0_combout\);

-- Location: LCCOMB_X82_Y14_N24
\A|ul1|Equal0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal0~12_combout\ = (\A|ul1|Add0~6_combout\ & (!\A|ul1|Add0~17_combout\ & (\A|ul1|Equal0~8_combout\ & \A|ul1|Equal0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~6_combout\,
	datab => \A|ul1|Add0~17_combout\,
	datac => \A|ul1|Equal0~8_combout\,
	datad => \A|ul1|Equal0~11_combout\,
	combout => \A|ul1|Equal0~12_combout\);

-- Location: LCCOMB_X81_Y14_N8
\A|ul1|WideNor0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|WideNor0~1_combout\ = ((!\A|ul1|Equal0~12_combout\) # (!\A|ul1|Add0~96_combout\)) # (!\A|ul1|Add0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|Add0~11_combout\,
	datac => \A|ul1|Add0~96_combout\,
	datad => \A|ul1|Equal0~12_combout\,
	combout => \A|ul1|WideNor0~1_combout\);

-- Location: LCCOMB_X82_Y14_N22
\A|ul1|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal1~0_combout\ = (!\A|ul1|Add0~6_combout\ & (\A|ul1|Add0~96_combout\ & \A|ul1|Equal0~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~6_combout\,
	datab => \A|ul1|Add0~96_combout\,
	datad => \A|ul1|Equal0~13_combout\,
	combout => \A|ul1|Equal1~0_combout\);

-- Location: LCCOMB_X81_Y14_N26
\A|ul1|Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal5~0_combout\ = (!\A|ul1|Add0~14_combout\ & (\A|ul1|Add0~11_combout\ & \A|ul1|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~14_combout\,
	datac => \A|ul1|Add0~11_combout\,
	datad => \A|ul1|Equal1~0_combout\,
	combout => \A|ul1|Equal5~0_combout\);

-- Location: LCCOMB_X81_Y14_N24
\A|ul1|Equal13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal13~0_combout\ = (\A|ul1|Add0~14_combout\ & (\A|ul1|Add0~11_combout\ & \A|ul1|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~14_combout\,
	datac => \A|ul1|Add0~11_combout\,
	datad => \A|ul1|Equal1~0_combout\,
	combout => \A|ul1|Equal13~0_combout\);

-- Location: LCCOMB_X81_Y14_N14
\A|ul1|WideNor0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|WideNor0~2_combout\ = (\A|ul1|Selector3~0_combout\ & (\A|ul1|WideNor0~1_combout\ & (!\A|ul1|Equal5~0_combout\ & !\A|ul1|Equal13~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Selector3~0_combout\,
	datab => \A|ul1|WideNor0~1_combout\,
	datac => \A|ul1|Equal5~0_combout\,
	datad => \A|ul1|Equal13~0_combout\,
	combout => \A|ul1|WideNor0~2_combout\);

-- Location: LCCOMB_X83_Y14_N18
\A|ul1|Equal16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal16~0_combout\ = (!\A|ul1|Add0~96_combout\ & (\A|ul1|Add0~6_combout\ & \A|ul1|Equal15~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~96_combout\,
	datac => \A|ul1|Add0~6_combout\,
	datad => \A|ul1|Equal15~0_combout\,
	combout => \A|ul1|Equal16~0_combout\);

-- Location: LCCOMB_X83_Y14_N20
\A|ul1|Equal3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal3~1_combout\ = (\A|ul1|Add0~11_combout\ & (!\A|ul1|Add0~14_combout\ & (\A|ul1|Equal3~0_combout\ & \A|ul1|Equal0~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~11_combout\,
	datab => \A|ul1|Add0~14_combout\,
	datac => \A|ul1|Equal3~0_combout\,
	datad => \A|ul1|Equal0~13_combout\,
	combout => \A|ul1|Equal3~1_combout\);

-- Location: LCCOMB_X81_Y14_N0
\A|ul1|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector5~0_combout\ = ((\A|ul1|Add0~96_combout\) # (!\A|ul1|Equal0~12_combout\)) # (!\A|ul1|Add0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|Add0~11_combout\,
	datac => \A|ul1|Add0~96_combout\,
	datad => \A|ul1|Equal0~12_combout\,
	combout => \A|ul1|Selector5~0_combout\);

-- Location: LCCOMB_X81_Y14_N6
\A|ul1|Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector5~1_combout\ = (\A|ul1|Selector5~0_combout\ & (((!\A|ul1|Add0~96_combout\) # (!\A|ul1|Equal15~0_combout\)) # (!\A|ul1|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~6_combout\,
	datab => \A|ul1|Equal15~0_combout\,
	datac => \A|ul1|Add0~96_combout\,
	datad => \A|ul1|Selector5~0_combout\,
	combout => \A|ul1|Selector5~1_combout\);

-- Location: LCCOMB_X83_Y16_N14
\A|ul1|Equal19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal19~0_combout\ = (\A|ul1|Add0~11_combout\ & (!\A|ul1|Add0~14_combout\ & (!\A|ul1|Add0~96_combout\ & !\A|ul1|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~11_combout\,
	datab => \A|ul1|Add0~14_combout\,
	datac => \A|ul1|Add0~96_combout\,
	datad => \A|ul1|Add0~6_combout\,
	combout => \A|ul1|Equal19~0_combout\);

-- Location: LCCOMB_X82_Y14_N0
\A|ul1|Equal19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal19~1_combout\ = (\A|ul1|Equal19~0_combout\ & (\A|ul1|Add0~17_combout\ & (\A|ul1|Equal0~8_combout\ & \A|ul1|Equal0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal19~0_combout\,
	datab => \A|ul1|Add0~17_combout\,
	datac => \A|ul1|Equal0~8_combout\,
	datad => \A|ul1|Equal0~11_combout\,
	combout => \A|ul1|Equal19~1_combout\);

-- Location: LCCOMB_X82_Y14_N16
\A|ul1|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector4~0_combout\ = (!\A|ul1|Equal19~1_combout\ & (((!\A|ul1|Equal0~12_combout\) # (!\A|ul1|Add0~96_combout\)) # (!\A|ul1|Equal9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal9~0_combout\,
	datab => \A|ul1|Equal19~1_combout\,
	datac => \A|ul1|Add0~96_combout\,
	datad => \A|ul1|Equal0~12_combout\,
	combout => \A|ul1|Selector4~0_combout\);

-- Location: LCCOMB_X83_Y14_N24
\A|ul1|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector6~0_combout\ = (\A|ul1|Add0~11_combout\) # ((\A|ul1|Add0~14_combout\ $ (!\A|ul1|Add0~96_combout\)) # (!\A|ul1|Equal0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~11_combout\,
	datab => \A|ul1|Add0~14_combout\,
	datac => \A|ul1|Add0~96_combout\,
	datad => \A|ul1|Equal0~12_combout\,
	combout => \A|ul1|Selector6~0_combout\);

-- Location: LCCOMB_X82_Y14_N14
\A|ul1|Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector6~1_combout\ = (\A|ul1|Selector4~0_combout\ & (\A|ul1|Selector6~0_combout\ & ((!\A|ul1|Equal1~0_combout\) # (!\A|ul1|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal0~2_combout\,
	datab => \A|ul1|Selector4~0_combout\,
	datac => \A|ul1|Equal1~0_combout\,
	datad => \A|ul1|Selector6~0_combout\,
	combout => \A|ul1|Selector6~1_combout\);

-- Location: LCCOMB_X81_Y14_N16
\A|ul1|Equal17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal17~0_combout\ = (!\A|ul1|Add0~6_combout\ & (\A|ul1|Add0~96_combout\ & \A|ul1|Equal15~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~6_combout\,
	datac => \A|ul1|Add0~96_combout\,
	datad => \A|ul1|Equal15~0_combout\,
	combout => \A|ul1|Equal17~0_combout\);

-- Location: LCCOMB_X82_Y14_N26
\A|ul1|Equal9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal9~1_combout\ = (\A|ul1|Add0~96_combout\ & (!\A|ul1|Add0~6_combout\ & (\A|ul1|Equal9~0_combout\ & \A|ul1|Equal0~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~96_combout\,
	datab => \A|ul1|Add0~6_combout\,
	datac => \A|ul1|Equal9~0_combout\,
	datad => \A|ul1|Equal0~13_combout\,
	combout => \A|ul1|Equal9~1_combout\);

-- Location: LCCOMB_X83_Y14_N14
\A|ul1|Equal11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal11~0_combout\ = (\A|ul1|Add0~11_combout\ & (\A|ul1|Add0~14_combout\ & (\A|ul1|Equal3~0_combout\ & \A|ul1|Equal0~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~11_combout\,
	datab => \A|ul1|Add0~14_combout\,
	datac => \A|ul1|Equal3~0_combout\,
	datad => \A|ul1|Equal0~13_combout\,
	combout => \A|ul1|Equal11~0_combout\);

-- Location: LCCOMB_X83_Y14_N2
\A|ul1|Equal0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal0~14_combout\ = (!\A|ul1|Add0~11_combout\ & (!\A|ul1|Add0~14_combout\ & (!\A|ul1|Add0~96_combout\ & \A|ul1|Equal0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~11_combout\,
	datab => \A|ul1|Add0~14_combout\,
	datac => \A|ul1|Add0~96_combout\,
	datad => \A|ul1|Equal0~12_combout\,
	combout => \A|ul1|Equal0~14_combout\);

-- Location: LCCOMB_X82_Y14_N6
\A|ul1|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector8~0_combout\ = (!\A|ul1|Equal17~0_combout\ & (!\A|ul1|Equal9~1_combout\ & (!\A|ul1|Equal11~0_combout\ & !\A|ul1|Equal0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal17~0_combout\,
	datab => \A|ul1|Equal9~1_combout\,
	datac => \A|ul1|Equal11~0_combout\,
	datad => \A|ul1|Equal0~14_combout\,
	combout => \A|ul1|Selector8~0_combout\);

-- Location: LCCOMB_X82_Y14_N10
\A|ul1|WideNor0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|WideNor0~0_combout\ = (!\A|ul1|Equal3~1_combout\ & (\A|ul1|Selector5~1_combout\ & (\A|ul1|Selector6~1_combout\ & \A|ul1|Selector8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal3~1_combout\,
	datab => \A|ul1|Selector5~1_combout\,
	datac => \A|ul1|Selector6~1_combout\,
	datad => \A|ul1|Selector8~0_combout\,
	combout => \A|ul1|WideNor0~0_combout\);

-- Location: LCCOMB_X82_Y14_N30
\A|ul1|send_enable~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|send_enable~0_combout\ = ((\A|ul1|Equal16~0_combout\) # ((\A|ul1|send_enable~q\) # (!\A|ul1|WideNor0~0_combout\))) # (!\A|ul1|WideNor0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|WideNor0~2_combout\,
	datab => \A|ul1|Equal16~0_combout\,
	datac => \A|ul1|send_enable~q\,
	datad => \A|ul1|WideNor0~0_combout\,
	combout => \A|ul1|send_enable~0_combout\);

-- Location: LCCOMB_X84_Y14_N30
\A|lc1|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector1~0_combout\ = (\A|ul1|send_enable~q\ & \A|lc1|state.ready~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|ul1|send_enable~q\,
	datad => \A|lc1|state.ready~q\,
	combout => \A|lc1|Selector1~0_combout\);

-- Location: LCCOMB_X84_Y13_N22
\A|lc1|state.send1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|state.send1~feeder_combout\ = \A|lc1|Selector1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|lc1|Selector1~0_combout\,
	combout => \A|lc1|state.send1~feeder_combout\);

-- Location: FF_X84_Y13_N23
\A|lc1|state.send1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q\(20),
	d => \A|lc1|state.send1~feeder_combout\,
	clrn => \psw[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|state.send1~q\);

-- Location: LCCOMB_X84_Y13_N14
\A|lc1|state.send2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|state.send2~feeder_combout\ = \A|lc1|state.send1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A|lc1|state.send1~q\,
	combout => \A|lc1|state.send2~feeder_combout\);

-- Location: FF_X84_Y13_N15
\A|lc1|state.send2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q\(20),
	d => \A|lc1|state.send2~feeder_combout\,
	clrn => \psw[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|state.send2~q\);

-- Location: FF_X84_Y13_N25
\A|lc1|state.send3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q\(20),
	asdata => \A|lc1|state.send2~q\,
	clrn => \psw[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|state.send3~q\);

-- Location: LCCOMB_X84_Y13_N8
\A|lc1|state.send4~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|state.send4~feeder_combout\ = \A|lc1|state.send3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|lc1|state.send3~q\,
	combout => \A|lc1|state.send4~feeder_combout\);

-- Location: FF_X84_Y13_N9
\A|lc1|state.send4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[20]~clkctrl_outclk\,
	d => \A|lc1|state.send4~feeder_combout\,
	clrn => \psw[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|state.send4~q\);

-- Location: LCCOMB_X82_Y13_N4
\A|lc1|state.init6~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|state.init6~feeder_combout\ = \A|lc1|state.init5~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|lc1|state.init5~q\,
	combout => \A|lc1|state.init6~feeder_combout\);

-- Location: FF_X82_Y13_N5
\A|lc1|state.init6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[20]~clkctrl_outclk\,
	d => \A|lc1|state.init6~feeder_combout\,
	clrn => \psw[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|state.init6~q\);

-- Location: FF_X82_Y13_N31
\A|lc1|state.init7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[20]~clkctrl_outclk\,
	asdata => \A|lc1|state.init6~q\,
	clrn => \psw[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|state.init7~q\);

-- Location: FF_X82_Y13_N27
\A|lc1|state.init8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[20]~clkctrl_outclk\,
	asdata => \A|lc1|state.init7~q\,
	clrn => \psw[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|state.init8~q\);

-- Location: LCCOMB_X84_Y13_N18
\A|lc1|state.init9~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|state.init9~feeder_combout\ = \A|lc1|state.init8~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A|lc1|state.init8~q\,
	combout => \A|lc1|state.init9~feeder_combout\);

-- Location: FF_X84_Y13_N19
\A|lc1|state.init9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[20]~clkctrl_outclk\,
	d => \A|lc1|state.init9~feeder_combout\,
	clrn => \psw[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|state.init9~q\);

-- Location: LCCOMB_X84_Y13_N30
\A|lc1|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector0~0_combout\ = (\A|lc1|state.send4~q\) # ((\A|lc1|state.init9~q\) # ((!\A|ul1|send_enable~q\ & \A|lc1|state.ready~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|state.send4~q\,
	datab => \A|ul1|send_enable~q\,
	datac => \A|lc1|state.ready~q\,
	datad => \A|lc1|state.init9~q\,
	combout => \A|lc1|Selector0~0_combout\);

-- Location: FF_X84_Y13_N31
\A|lc1|state.ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q\(20),
	d => \A|lc1|Selector0~0_combout\,
	clrn => \psw[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|state.ready~q\);

-- Location: LCCOMB_X84_Y13_N26
\A|lc1|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector11~0_combout\ = (!\A|lc1|state.send4~q\ & !\A|lc1|state.init9~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|lc1|state.send4~q\,
	datad => \A|lc1|state.init9~q\,
	combout => \A|lc1|Selector11~0_combout\);

-- Location: LCCOMB_X83_Y13_N28
\A|lc1|Selector11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector11~1_combout\ = (\A|lc1|state.ready~q\ & (((!\A|ul1|send_enable~q\)))) # (!\A|lc1|state.ready~q\ & ((\A|lc1|Selector11~0_combout\ & (\A|lc1|state.send3~q\)) # (!\A|lc1|Selector11~0_combout\ & ((!\A|ul1|send_enable~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|state.ready~q\,
	datab => \A|lc1|state.send3~q\,
	datac => \A|ul1|send_enable~q\,
	datad => \A|lc1|Selector11~0_combout\,
	combout => \A|lc1|Selector11~1_combout\);

-- Location: FF_X83_Y13_N29
\A|lc1|busy_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[20]~clkctrl_outclk\,
	d => \A|lc1|Selector11~1_combout\,
	clrn => \psw[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|busy_reg~q\);

-- Location: LCCOMB_X83_Y13_N14
\A|ul1|send_enable~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|send_enable~1_combout\ = (!\A|lc1|busy_reg~q\) # (!\psw[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \psw[3]~input_o\,
	datad => \A|lc1|busy_reg~q\,
	combout => \A|ul1|send_enable~1_combout\);

-- Location: FF_X82_Y14_N31
\A|ul1|send_enable\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q\(20),
	d => \A|ul1|send_enable~0_combout\,
	clrn => \A|ul1|ALT_INV_send_enable~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|send_enable~q\);

-- Location: LCCOMB_X83_Y13_N0
\A|ul1|count[31]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|count[31]~0_combout\ = (!\A|ul1|send_enable~q\ & \A|lc1|busy_reg~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|ul1|send_enable~q\,
	datad => \A|lc1|busy_reg~q\,
	combout => \A|ul1|count[31]~0_combout\);

-- Location: FF_X83_Y16_N19
\A|ul1|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[20]~clkctrl_outclk\,
	d => \A|ul1|Add0~11_combout\,
	clrn => \psw[3]~input_o\,
	ena => \A|ul1|count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(2));

-- Location: LCCOMB_X82_Y16_N4
\A|ul1|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~9_combout\ = (\A|ul1|count\(2) & (\A|ul1|Add0~8\ $ (GND))) # (!\A|ul1|count\(2) & (!\A|ul1|Add0~8\ & VCC))
-- \A|ul1|Add0~10\ = CARRY((\A|ul1|count\(2) & !\A|ul1|Add0~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|count\(2),
	datad => VCC,
	cin => \A|ul1|Add0~8\,
	combout => \A|ul1|Add0~9_combout\,
	cout => \A|ul1|Add0~10\);

-- Location: LCCOMB_X82_Y16_N6
\A|ul1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~12_combout\ = (\A|ul1|count\(3) & (!\A|ul1|Add0~10\)) # (!\A|ul1|count\(3) & ((\A|ul1|Add0~10\) # (GND)))
-- \A|ul1|Add0~13\ = CARRY((!\A|ul1|Add0~10\) # (!\A|ul1|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|count\(3),
	datad => VCC,
	cin => \A|ul1|Add0~10\,
	combout => \A|ul1|Add0~12_combout\,
	cout => \A|ul1|Add0~13\);

-- Location: LCCOMB_X83_Y16_N12
\A|ul1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~14_combout\ = (\A|ul1|count\(31) & (\A|ul1|Add0~12_combout\)) # (!\A|ul1|count\(31) & ((\A|ul1|LessThan0~9_combout\ & (\A|ul1|Add0~12_combout\)) # (!\A|ul1|LessThan0~9_combout\ & ((\A|ul1|count\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(31),
	datab => \A|ul1|Add0~12_combout\,
	datac => \A|ul1|count\(3),
	datad => \A|ul1|LessThan0~9_combout\,
	combout => \A|ul1|Add0~14_combout\);

-- Location: FF_X83_Y16_N13
\A|ul1|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[20]~clkctrl_outclk\,
	d => \A|ul1|Add0~14_combout\,
	clrn => \psw[3]~input_o\,
	ena => \A|ul1|count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(3));

-- Location: LCCOMB_X82_Y16_N8
\A|ul1|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~15_combout\ = (\A|ul1|count\(4) & (\A|ul1|Add0~13\ $ (GND))) # (!\A|ul1|count\(4) & (!\A|ul1|Add0~13\ & VCC))
-- \A|ul1|Add0~16\ = CARRY((\A|ul1|count\(4) & !\A|ul1|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|count\(4),
	datad => VCC,
	cin => \A|ul1|Add0~13\,
	combout => \A|ul1|Add0~15_combout\,
	cout => \A|ul1|Add0~16\);

-- Location: LCCOMB_X83_Y16_N16
\A|ul1|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~17_combout\ = (\A|ul1|count\(31) & (((\A|ul1|Add0~15_combout\)))) # (!\A|ul1|count\(31) & ((\A|ul1|LessThan0~9_combout\ & ((\A|ul1|Add0~15_combout\))) # (!\A|ul1|LessThan0~9_combout\ & (\A|ul1|count\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(31),
	datab => \A|ul1|LessThan0~9_combout\,
	datac => \A|ul1|count\(4),
	datad => \A|ul1|Add0~15_combout\,
	combout => \A|ul1|Add0~17_combout\);

-- Location: FF_X83_Y16_N17
\A|ul1|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[20]~clkctrl_outclk\,
	d => \A|ul1|Add0~17_combout\,
	clrn => \psw[3]~input_o\,
	ena => \A|ul1|count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(4));

-- Location: LCCOMB_X83_Y15_N2
\A|ul1|Add0~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~97_combout\ = (\A|ul1|count\(31) & (\A|ul1|Add0~18_combout\)) # (!\A|ul1|count\(31) & ((\A|ul1|LessThan0~9_combout\ & (\A|ul1|Add0~18_combout\)) # (!\A|ul1|LessThan0~9_combout\ & ((\A|ul1|count\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(31),
	datab => \A|ul1|Add0~18_combout\,
	datac => \A|ul1|count\(5),
	datad => \A|ul1|LessThan0~9_combout\,
	combout => \A|ul1|Add0~97_combout\);

-- Location: FF_X83_Y15_N3
\A|ul1|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[20]~clkctrl_outclk\,
	d => \A|ul1|Add0~97_combout\,
	clrn => \psw[3]~input_o\,
	ena => \A|ul1|count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(5));

-- Location: LCCOMB_X83_Y15_N12
\A|ul1|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|LessThan0~4_combout\ = (!\A|ul1|count\(21) & (!\A|ul1|count\(22) & (!\A|ul1|count\(20) & !\A|ul1|count\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(21),
	datab => \A|ul1|count\(22),
	datac => \A|ul1|count\(20),
	datad => \A|ul1|count\(19),
	combout => \A|ul1|LessThan0~4_combout\);

-- Location: LCCOMB_X83_Y15_N4
\A|ul1|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|LessThan0~6_combout\ = (!\A|ul1|count\(11) & (!\A|ul1|count\(12) & (!\A|ul1|count\(13) & !\A|ul1|count\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(11),
	datab => \A|ul1|count\(12),
	datac => \A|ul1|count\(13),
	datad => \A|ul1|count\(14),
	combout => \A|ul1|LessThan0~6_combout\);

-- Location: LCCOMB_X83_Y16_N30
\A|ul1|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|LessThan0~7_combout\ = (!\A|ul1|count\(8) & (!\A|ul1|count\(7) & (!\A|ul1|count\(9) & !\A|ul1|count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(8),
	datab => \A|ul1|count\(7),
	datac => \A|ul1|count\(9),
	datad => \A|ul1|count\(10),
	combout => \A|ul1|LessThan0~7_combout\);

-- Location: LCCOMB_X81_Y15_N16
\A|ul1|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|LessThan0~5_combout\ = (!\A|ul1|count\(17) & (!\A|ul1|count\(15) & (!\A|ul1|count\(16) & !\A|ul1|count\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(17),
	datab => \A|ul1|count\(15),
	datac => \A|ul1|count\(16),
	datad => \A|ul1|count\(18),
	combout => \A|ul1|LessThan0~5_combout\);

-- Location: LCCOMB_X83_Y15_N18
\A|ul1|LessThan0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|LessThan0~8_combout\ = (\A|ul1|LessThan0~4_combout\ & (\A|ul1|LessThan0~6_combout\ & (\A|ul1|LessThan0~7_combout\ & \A|ul1|LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|LessThan0~4_combout\,
	datab => \A|ul1|LessThan0~6_combout\,
	datac => \A|ul1|LessThan0~7_combout\,
	datad => \A|ul1|LessThan0~5_combout\,
	combout => \A|ul1|LessThan0~8_combout\);

-- Location: LCCOMB_X83_Y15_N26
\A|ul1|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|LessThan0~0_combout\ = (!\A|ul1|count\(29) & (!\A|ul1|count\(30) & (!\A|ul1|count\(28) & !\A|ul1|count\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(29),
	datab => \A|ul1|count\(30),
	datac => \A|ul1|count\(28),
	datad => \A|ul1|count\(27),
	combout => \A|ul1|LessThan0~0_combout\);

-- Location: LCCOMB_X83_Y15_N16
\A|ul1|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|LessThan0~1_combout\ = (!\A|ul1|count\(24) & (!\A|ul1|count\(25) & (!\A|ul1|count\(23) & !\A|ul1|count\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(24),
	datab => \A|ul1|count\(25),
	datac => \A|ul1|count\(23),
	datad => \A|ul1|count\(26),
	combout => \A|ul1|LessThan0~1_combout\);

-- Location: LCCOMB_X83_Y16_N6
\A|ul1|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|LessThan0~2_combout\ = (!\A|ul1|count\(3) & (((!\A|ul1|count\(1) & !\A|ul1|count\(0))) # (!\A|ul1|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(3),
	datab => \A|ul1|count\(1),
	datac => \A|ul1|count\(0),
	datad => \A|ul1|count\(2),
	combout => \A|ul1|LessThan0~2_combout\);

-- Location: LCCOMB_X83_Y15_N14
\A|ul1|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|LessThan0~3_combout\ = (\A|ul1|LessThan0~0_combout\ & (\A|ul1|LessThan0~1_combout\ & ((\A|ul1|LessThan0~2_combout\) # (!\A|ul1|count\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|LessThan0~0_combout\,
	datab => \A|ul1|LessThan0~1_combout\,
	datac => \A|ul1|count\(4),
	datad => \A|ul1|LessThan0~2_combout\,
	combout => \A|ul1|LessThan0~3_combout\);

-- Location: LCCOMB_X83_Y15_N0
\A|ul1|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|LessThan0~9_combout\ = (!\A|ul1|count\(5) & (\A|ul1|LessThan0~8_combout\ & (!\A|ul1|count\(6) & \A|ul1|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(5),
	datab => \A|ul1|LessThan0~8_combout\,
	datac => \A|ul1|count\(6),
	datad => \A|ul1|LessThan0~3_combout\,
	combout => \A|ul1|LessThan0~9_combout\);

-- Location: LCCOMB_X83_Y16_N22
\A|ul1|Add0~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~99_combout\ = (\A|ul1|Add0~85_combout\ & ((\A|ul1|LessThan0~9_combout\) # (\A|ul1|count\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|LessThan0~9_combout\,
	datac => \A|ul1|count\(31),
	datad => \A|ul1|Add0~85_combout\,
	combout => \A|ul1|Add0~99_combout\);

-- Location: FF_X83_Y16_N23
\A|ul1|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[20]~clkctrl_outclk\,
	d => \A|ul1|Add0~99_combout\,
	clrn => \psw[3]~input_o\,
	ena => \A|ul1|count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(31));

-- Location: LCCOMB_X83_Y16_N18
\A|ul1|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~11_combout\ = (\A|ul1|count\(31) & (((\A|ul1|Add0~9_combout\)))) # (!\A|ul1|count\(31) & ((\A|ul1|LessThan0~9_combout\ & ((\A|ul1|Add0~9_combout\))) # (!\A|ul1|LessThan0~9_combout\ & (\A|ul1|count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(31),
	datab => \A|ul1|LessThan0~9_combout\,
	datac => \A|ul1|count\(2),
	datad => \A|ul1|Add0~9_combout\,
	combout => \A|ul1|Add0~11_combout\);

-- Location: LCCOMB_X79_Y14_N4
\A|ul1|Equal14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal14~0_combout\ = (\A|ul1|Add0~11_combout\ & (\A|ul1|Add0~14_combout\ & (\A|ul1|Equal0~12_combout\ & \A|ul1|Add0~96_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~11_combout\,
	datab => \A|ul1|Add0~14_combout\,
	datac => \A|ul1|Equal0~12_combout\,
	datad => \A|ul1|Add0~96_combout\,
	combout => \A|ul1|Equal14~0_combout\);

-- Location: LCCOMB_X79_Y14_N10
\A|ul1|LessThan4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|LessThan4~0_combout\ = (\tsw[11]~input_o\ & ((\tsw[10]~input_o\) # (\tsw[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tsw[10]~input_o\,
	datac => \tsw[9]~input_o\,
	datad => \tsw[11]~input_o\,
	combout => \A|ul1|LessThan4~0_combout\);

-- Location: LCCOMB_X83_Y14_N6
\A|ul1|Selector8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector8~2_combout\ = ((\A|ul1|Equal14~0_combout\ & (\A|ul1|LessThan4~0_combout\ $ (\tsw[8]~input_o\)))) # (!\A|ul1|Selector8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal14~0_combout\,
	datab => \A|ul1|LessThan4~0_combout\,
	datac => \A|ul1|Selector8~0_combout\,
	datad => \tsw[8]~input_o\,
	combout => \A|ul1|Selector8~2_combout\);

-- Location: IOIBUF_X115_Y13_N8
\tsw[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tsw(3),
	o => \tsw[3]~input_o\);

-- Location: IOIBUF_X115_Y14_N1
\tsw[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tsw(1),
	o => \tsw[1]~input_o\);

-- Location: IOIBUF_X115_Y15_N8
\tsw[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tsw(2),
	o => \tsw[2]~input_o\);

-- Location: LCCOMB_X80_Y13_N2
\A|ul1|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|LessThan2~0_combout\ = (\tsw[3]~input_o\ & ((\tsw[1]~input_o\) # (\tsw[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[3]~input_o\,
	datab => \tsw[1]~input_o\,
	datad => \tsw[2]~input_o\,
	combout => \A|ul1|LessThan2~0_combout\);

-- Location: IOIBUF_X115_Y17_N1
\tsw[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tsw(0),
	o => \tsw[0]~input_o\);

-- Location: LCCOMB_X79_Y14_N12
\A|ul1|Equal6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal6~0_combout\ = (\A|ul1|Add0~11_combout\ & (!\A|ul1|Add0~14_combout\ & (\A|ul1|Equal0~12_combout\ & \A|ul1|Add0~96_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~11_combout\,
	datab => \A|ul1|Add0~14_combout\,
	datac => \A|ul1|Equal0~12_combout\,
	datad => \A|ul1|Add0~96_combout\,
	combout => \A|ul1|Equal6~0_combout\);

-- Location: LCCOMB_X79_Y14_N2
\A|ul1|Selector8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector8~3_combout\ = (\A|ul1|Equal6~0_combout\ & (\A|ul1|LessThan2~0_combout\ $ (\tsw[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|LessThan2~0_combout\,
	datac => \tsw[0]~input_o\,
	datad => \A|ul1|Equal6~0_combout\,
	combout => \A|ul1|Selector8~3_combout\);

-- Location: IOIBUF_X115_Y10_N1
\tsw[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tsw(6),
	o => \tsw[6]~input_o\);

-- Location: IOIBUF_X115_Y11_N8
\tsw[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tsw(5),
	o => \tsw[5]~input_o\);

-- Location: IOIBUF_X115_Y15_N1
\tsw[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tsw(7),
	o => \tsw[7]~input_o\);

-- Location: LCCOMB_X80_Y14_N26
\A|ul1|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|LessThan1~0_combout\ = (\tsw[7]~input_o\ & ((\tsw[6]~input_o\) # (\tsw[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tsw[6]~input_o\,
	datac => \tsw[5]~input_o\,
	datad => \tsw[7]~input_o\,
	combout => \A|ul1|LessThan1~0_combout\);

-- Location: IOIBUF_X115_Y18_N8
\tsw[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tsw(4),
	o => \tsw[4]~input_o\);

-- Location: LCCOMB_X80_Y14_N30
\A|ul1|LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|LessThan3~0_combout\ = (\tsw[15]~input_o\ & ((\tsw[13]~input_o\) # (\tsw[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[13]~input_o\,
	datab => \tsw[14]~input_o\,
	datad => \tsw[15]~input_o\,
	combout => \A|ul1|LessThan3~0_combout\);

-- Location: LCCOMB_X80_Y14_N12
\A|ul1|Selector8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector8~4_combout\ = (\A|ul1|Equal13~0_combout\ & (\A|ul1|LessThan3~0_combout\ $ (\tsw[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|LessThan3~0_combout\,
	datac => \tsw[12]~input_o\,
	datad => \A|ul1|Equal13~0_combout\,
	combout => \A|ul1|Selector8~4_combout\);

-- Location: LCCOMB_X80_Y14_N24
\A|ul1|Selector8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector8~5_combout\ = (\A|ul1|Selector8~4_combout\) # ((\A|ul1|Equal5~0_combout\ & (\A|ul1|LessThan1~0_combout\ $ (\tsw[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|LessThan1~0_combout\,
	datab => \tsw[4]~input_o\,
	datac => \A|ul1|Equal5~0_combout\,
	datad => \A|ul1|Selector8~4_combout\,
	combout => \A|ul1|Selector8~5_combout\);

-- Location: LCCOMB_X83_Y14_N28
\A|ul1|Selector8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector8~1_combout\ = (\A|ul1|data_write\(0) & (!\A|ul1|Equal16~0_combout\ & (\A|ul1|WideNor0~2_combout\ & \A|ul1|WideNor0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|data_write\(0),
	datab => \A|ul1|Equal16~0_combout\,
	datac => \A|ul1|WideNor0~2_combout\,
	datad => \A|ul1|WideNor0~0_combout\,
	combout => \A|ul1|Selector8~1_combout\);

-- Location: LCCOMB_X83_Y14_N22
\A|ul1|Selector8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector8~6_combout\ = (\A|ul1|Selector8~2_combout\) # ((\A|ul1|Selector8~3_combout\) # ((\A|ul1|Selector8~5_combout\) # (\A|ul1|Selector8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Selector8~2_combout\,
	datab => \A|ul1|Selector8~3_combout\,
	datac => \A|ul1|Selector8~5_combout\,
	datad => \A|ul1|Selector8~1_combout\,
	combout => \A|ul1|Selector8~6_combout\);

-- Location: FF_X83_Y14_N23
\A|ul1|data_write[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[20]~clkctrl_outclk\,
	d => \A|ul1|Selector8~6_combout\,
	clrn => \psw[3]~input_o\,
	ena => \A|ul1|count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|data_write\(0));

-- Location: LCCOMB_X84_Y13_N16
\A|lc1|WideOr1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|WideOr1~combout\ = (\A|lc1|state.send3~q\) # ((\A|lc1|state.send2~q\) # ((\A|lc1|state.send1~q\) # (!\A|lc1|Selector11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|state.send3~q\,
	datab => \A|lc1|state.send2~q\,
	datac => \A|lc1|Selector11~0_combout\,
	datad => \A|lc1|state.send1~q\,
	combout => \A|lc1|WideOr1~combout\);

-- Location: LCCOMB_X82_Y13_N28
\A|lc1|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector8~0_combout\ = (\A|lc1|data_write_reg\(0) & ((\A|lc1|WideOr1~combout\) # ((\A|ul1|data_write\(0) & \A|lc1|Selector1~0_combout\)))) # (!\A|lc1|data_write_reg\(0) & (\A|ul1|data_write\(0) & (\A|lc1|Selector1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|data_write_reg\(0),
	datab => \A|ul1|data_write\(0),
	datac => \A|lc1|Selector1~0_combout\,
	datad => \A|lc1|WideOr1~combout\,
	combout => \A|lc1|Selector8~0_combout\);

-- Location: LCCOMB_X82_Y13_N6
\A|lc1|Selector8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector8~1_combout\ = (\A|lc1|state.init3~q\) # ((\A|lc1|state.init5~q\) # (\A|lc1|Selector8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|state.init3~q\,
	datac => \A|lc1|state.init5~q\,
	datad => \A|lc1|Selector8~0_combout\,
	combout => \A|lc1|Selector8~1_combout\);

-- Location: FF_X82_Y13_N7
\A|lc1|data_write_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[20]~clkctrl_outclk\,
	d => \A|lc1|Selector8~1_combout\,
	clrn => \psw[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|data_write_reg\(0));

-- Location: LCCOMB_X82_Y13_N0
\A|lc1|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector6~0_combout\ = (!\A|lc1|state.init7~q\ & !\A|lc1|state.init1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|state.init7~q\,
	datad => \A|lc1|state.init1~q\,
	combout => \A|lc1|Selector6~0_combout\);

-- Location: LCCOMB_X79_Y13_N0
\A|ul1|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector7~0_combout\ = (\tsw[8]~input_o\ & (((\tsw[9]~input_o\)))) # (!\tsw[8]~input_o\ & ((\tsw[9]~input_o\ & ((!\tsw[11]~input_o\))) # (!\tsw[9]~input_o\ & (\tsw[10]~input_o\ & \tsw[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[8]~input_o\,
	datab => \tsw[10]~input_o\,
	datac => \tsw[9]~input_o\,
	datad => \tsw[11]~input_o\,
	combout => \A|ul1|Selector7~0_combout\);

-- Location: LCCOMB_X80_Y13_N28
\A|ul1|Selector7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector7~1_combout\ = (\tsw[0]~input_o\ & (((\tsw[1]~input_o\)))) # (!\tsw[0]~input_o\ & ((\tsw[1]~input_o\ & ((!\tsw[3]~input_o\))) # (!\tsw[1]~input_o\ & (\tsw[2]~input_o\ & \tsw[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[0]~input_o\,
	datab => \tsw[2]~input_o\,
	datac => \tsw[1]~input_o\,
	datad => \tsw[3]~input_o\,
	combout => \A|ul1|Selector7~1_combout\);

-- Location: LCCOMB_X79_Y14_N28
\A|ul1|Selector7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector7~2_combout\ = (\A|ul1|Selector7~0_combout\ & ((\A|ul1|Equal14~0_combout\) # ((\A|ul1|Selector7~1_combout\ & \A|ul1|Equal6~0_combout\)))) # (!\A|ul1|Selector7~0_combout\ & (\A|ul1|Selector7~1_combout\ & ((\A|ul1|Equal6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Selector7~0_combout\,
	datab => \A|ul1|Selector7~1_combout\,
	datac => \A|ul1|Equal14~0_combout\,
	datad => \A|ul1|Equal6~0_combout\,
	combout => \A|ul1|Selector7~2_combout\);

-- Location: IOIBUF_X115_Y14_N8
\tsw[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tsw(17),
	o => \tsw[17]~input_o\);

-- Location: LCCOMB_X79_Y14_N14
\A|ul1|Equal18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal18~0_combout\ = (\A|ul1|Add0~6_combout\ & (\A|ul1|Add0~96_combout\ & \A|ul1|Equal15~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~6_combout\,
	datab => \A|ul1|Add0~96_combout\,
	datad => \A|ul1|Equal15~0_combout\,
	combout => \A|ul1|Equal18~0_combout\);

-- Location: LCCOMB_X80_Y14_N4
\A|ul1|Selector7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector7~6_combout\ = (\A|ul1|Selector5~0_combout\ & ((\tsw[17]~input_o\) # (!\A|ul1|Equal18~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tsw[17]~input_o\,
	datac => \A|ul1|Selector5~0_combout\,
	datad => \A|ul1|Equal18~0_combout\,
	combout => \A|ul1|Selector7~6_combout\);

-- Location: LCCOMB_X76_Y7_N22
\A|ul1|Selector7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector7~4_combout\ = (\tsw[7]~input_o\ & ((\tsw[5]~input_o\ & ((\tsw[4]~input_o\))) # (!\tsw[5]~input_o\ & (\tsw[6]~input_o\ & !\tsw[4]~input_o\)))) # (!\tsw[7]~input_o\ & (\tsw[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[7]~input_o\,
	datab => \tsw[5]~input_o\,
	datac => \tsw[6]~input_o\,
	datad => \tsw[4]~input_o\,
	combout => \A|ul1|Selector7~4_combout\);

-- Location: LCCOMB_X81_Y13_N10
\A|ul1|Selector7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector7~3_combout\ = (\tsw[15]~input_o\ & ((\tsw[13]~input_o\ & (\tsw[12]~input_o\)) # (!\tsw[13]~input_o\ & (!\tsw[12]~input_o\ & \tsw[14]~input_o\)))) # (!\tsw[15]~input_o\ & (\tsw[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[15]~input_o\,
	datab => \tsw[13]~input_o\,
	datac => \tsw[12]~input_o\,
	datad => \tsw[14]~input_o\,
	combout => \A|ul1|Selector7~3_combout\);

-- Location: LCCOMB_X80_Y14_N2
\A|ul1|Selector7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector7~5_combout\ = (\A|ul1|Selector7~4_combout\ & ((\A|ul1|Equal5~0_combout\) # ((\A|ul1|Selector7~3_combout\ & \A|ul1|Equal13~0_combout\)))) # (!\A|ul1|Selector7~4_combout\ & (\A|ul1|Selector7~3_combout\ & ((\A|ul1|Equal13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Selector7~4_combout\,
	datab => \A|ul1|Selector7~3_combout\,
	datac => \A|ul1|Equal5~0_combout\,
	datad => \A|ul1|Equal13~0_combout\,
	combout => \A|ul1|Selector7~5_combout\);

-- Location: LCCOMB_X80_Y14_N6
\A|ul1|Selector7~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector7~7_combout\ = (\A|ul1|Equal3~1_combout\) # ((\A|ul1|Selector7~2_combout\) # ((\A|ul1|Selector7~5_combout\) # (!\A|ul1|Selector7~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal3~1_combout\,
	datab => \A|ul1|Selector7~2_combout\,
	datac => \A|ul1|Selector7~6_combout\,
	datad => \A|ul1|Selector7~5_combout\,
	combout => \A|ul1|Selector7~7_combout\);

-- Location: LCCOMB_X81_Y14_N28
\A|ul1|WideNor0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|WideNor0~combout\ = ((\A|ul1|Equal16~0_combout\) # (!\A|ul1|WideNor0~0_combout\)) # (!\A|ul1|WideNor0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|WideNor0~2_combout\,
	datac => \A|ul1|WideNor0~0_combout\,
	datad => \A|ul1|Equal16~0_combout\,
	combout => \A|ul1|WideNor0~combout\);

-- Location: LCCOMB_X81_Y14_N12
\A|ul1|Selector7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector7~8_combout\ = (\A|ul1|Selector7~7_combout\) # ((\A|ul1|data_write\(1) & !\A|ul1|WideNor0~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|Selector7~7_combout\,
	datac => \A|ul1|data_write\(1),
	datad => \A|ul1|WideNor0~combout\,
	combout => \A|ul1|Selector7~8_combout\);

-- Location: FF_X81_Y14_N13
\A|ul1|data_write[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[20]~clkctrl_outclk\,
	d => \A|ul1|Selector7~8_combout\,
	clrn => \psw[3]~input_o\,
	ena => \A|ul1|count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|data_write\(1));

-- Location: LCCOMB_X79_Y14_N6
\A|lc1|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector7~0_combout\ = (\A|lc1|state.ready~q\ & (\A|ul1|data_write\(1) & \A|ul1|send_enable~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|state.ready~q\,
	datac => \A|ul1|data_write\(1),
	datad => \A|ul1|send_enable~q\,
	combout => \A|lc1|Selector7~0_combout\);

-- Location: LCCOMB_X79_Y14_N20
\A|lc1|Selector7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector7~1_combout\ = ((\A|lc1|Selector7~0_combout\) # ((\A|lc1|data_write_reg\(1) & \A|lc1|WideOr1~combout\))) # (!\A|lc1|Selector6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Selector6~0_combout\,
	datab => \A|lc1|Selector7~0_combout\,
	datac => \A|lc1|data_write_reg\(1),
	datad => \A|lc1|WideOr1~combout\,
	combout => \A|lc1|Selector7~1_combout\);

-- Location: FF_X79_Y14_N21
\A|lc1|data_write_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[20]~clkctrl_outclk\,
	d => \A|lc1|Selector7~1_combout\,
	clrn => \psw[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|data_write_reg\(1));

-- Location: LCCOMB_X84_Y14_N4
\A|ul1|Selector6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector6~4_combout\ = (\tsw[2]~input_o\ & ((\tsw[0]~input_o\) # ((\tsw[1]~input_o\) # (!\tsw[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[0]~input_o\,
	datab => \tsw[1]~input_o\,
	datac => \tsw[3]~input_o\,
	datad => \tsw[2]~input_o\,
	combout => \A|ul1|Selector6~4_combout\);

-- Location: LCCOMB_X80_Y14_N10
\A|ul1|Selector6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector6~5_combout\ = (\A|ul1|Selector6~4_combout\ & ((\A|ul1|Equal6~0_combout\) # ((\tsw[17]~input_o\ & \A|ul1|Equal17~0_combout\)))) # (!\A|ul1|Selector6~4_combout\ & (\tsw[17]~input_o\ & (\A|ul1|Equal17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Selector6~4_combout\,
	datab => \tsw[17]~input_o\,
	datac => \A|ul1|Equal17~0_combout\,
	datad => \A|ul1|Equal6~0_combout\,
	combout => \A|ul1|Selector6~5_combout\);

-- Location: LCCOMB_X81_Y13_N8
\A|ul1|Selector6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector6~6_combout\ = (\tsw[14]~input_o\ & (((\tsw[13]~input_o\) # (\tsw[12]~input_o\)) # (!\tsw[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[15]~input_o\,
	datab => \tsw[13]~input_o\,
	datac => \tsw[12]~input_o\,
	datad => \tsw[14]~input_o\,
	combout => \A|ul1|Selector6~6_combout\);

-- Location: LCCOMB_X80_Y13_N0
\A|ul1|Selector6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector6~7_combout\ = (\tsw[6]~input_o\ & (((\tsw[5]~input_o\) # (\tsw[4]~input_o\)) # (!\tsw[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[6]~input_o\,
	datab => \tsw[7]~input_o\,
	datac => \tsw[5]~input_o\,
	datad => \tsw[4]~input_o\,
	combout => \A|ul1|Selector6~7_combout\);

-- Location: LCCOMB_X80_Y14_N8
\A|ul1|Selector6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector6~8_combout\ = (\A|ul1|Selector6~6_combout\ & ((\A|ul1|Equal13~0_combout\) # ((\A|ul1|Equal5~0_combout\ & \A|ul1|Selector6~7_combout\)))) # (!\A|ul1|Selector6~6_combout\ & (((\A|ul1|Equal5~0_combout\ & \A|ul1|Selector6~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Selector6~6_combout\,
	datab => \A|ul1|Equal13~0_combout\,
	datac => \A|ul1|Equal5~0_combout\,
	datad => \A|ul1|Selector6~7_combout\,
	combout => \A|ul1|Selector6~8_combout\);

-- Location: LCCOMB_X79_Y13_N2
\A|ul1|Selector6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector6~2_combout\ = (\tsw[10]~input_o\ & ((\tsw[8]~input_o\) # ((\tsw[9]~input_o\) # (!\tsw[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[8]~input_o\,
	datab => \tsw[10]~input_o\,
	datac => \tsw[9]~input_o\,
	datad => \tsw[11]~input_o\,
	combout => \A|ul1|Selector6~2_combout\);

-- Location: LCCOMB_X80_Y14_N0
\A|ul1|Selector6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector6~3_combout\ = ((\A|ul1|Equal14~0_combout\ & \A|ul1|Selector6~2_combout\)) # (!\A|ul1|Selector6~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|Equal14~0_combout\,
	datac => \A|ul1|Selector6~1_combout\,
	datad => \A|ul1|Selector6~2_combout\,
	combout => \A|ul1|Selector6~3_combout\);

-- Location: LCCOMB_X80_Y14_N14
\A|ul1|Selector6~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector6~9_combout\ = (\A|ul1|Selector6~5_combout\) # (((\A|ul1|Selector6~8_combout\) # (\A|ul1|Selector6~3_combout\)) # (!\A|ul1|Selector7~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Selector6~5_combout\,
	datab => \A|ul1|Selector7~6_combout\,
	datac => \A|ul1|Selector6~8_combout\,
	datad => \A|ul1|Selector6~3_combout\,
	combout => \A|ul1|Selector6~9_combout\);

-- Location: LCCOMB_X80_Y14_N20
\A|ul1|Selector6~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector6~10_combout\ = (\A|ul1|Selector6~9_combout\) # ((\A|ul1|data_write\(2) & !\A|ul1|WideNor0~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|Selector6~9_combout\,
	datac => \A|ul1|data_write\(2),
	datad => \A|ul1|WideNor0~combout\,
	combout => \A|ul1|Selector6~10_combout\);

-- Location: FF_X80_Y14_N21
\A|ul1|data_write[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[20]~clkctrl_outclk\,
	d => \A|ul1|Selector6~10_combout\,
	clrn => \psw[3]~input_o\,
	ena => \A|ul1|count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|data_write\(2));

-- Location: LCCOMB_X79_Y14_N8
\A|lc1|Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector6~1_combout\ = (\A|lc1|state.init3~q\) # ((\A|ul1|data_write\(2) & (\A|ul1|send_enable~q\ & \A|lc1|state.ready~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|data_write\(2),
	datab => \A|ul1|send_enable~q\,
	datac => \A|lc1|state.init3~q\,
	datad => \A|lc1|state.ready~q\,
	combout => \A|lc1|Selector6~1_combout\);

-- Location: LCCOMB_X79_Y14_N30
\A|lc1|Selector6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector6~2_combout\ = ((\A|lc1|Selector6~1_combout\) # ((\A|lc1|data_write_reg\(2) & \A|lc1|WideOr1~combout\))) # (!\A|lc1|Selector6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Selector6~0_combout\,
	datab => \A|lc1|Selector6~1_combout\,
	datac => \A|lc1|data_write_reg\(2),
	datad => \A|lc1|WideOr1~combout\,
	combout => \A|lc1|Selector6~2_combout\);

-- Location: FF_X79_Y14_N31
\A|lc1|data_write_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[20]~clkctrl_outclk\,
	d => \A|lc1|Selector6~2_combout\,
	clrn => \psw[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|data_write_reg\(2));

-- Location: LCCOMB_X82_Y13_N20
\A|lc1|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector3~0_combout\ = (\A|lc1|state.power~q\ & !\A|lc1|state.init1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|state.power~q\,
	datad => \A|lc1|state.init1~q\,
	combout => \A|lc1|Selector3~0_combout\);

-- Location: LCCOMB_X84_Y14_N22
\A|ul1|Selector5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector5~3_combout\ = (!\tsw[1]~input_o\ & (\tsw[3]~input_o\ & !\tsw[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tsw[1]~input_o\,
	datac => \tsw[3]~input_o\,
	datad => \tsw[2]~input_o\,
	combout => \A|ul1|Selector5~3_combout\);

-- Location: LCCOMB_X79_Y14_N16
\A|ul1|Selector5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector5~2_combout\ = (!\tsw[9]~input_o\ & (!\tsw[10]~input_o\ & (\A|ul1|Equal14~0_combout\ & \tsw[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[9]~input_o\,
	datab => \tsw[10]~input_o\,
	datac => \A|ul1|Equal14~0_combout\,
	datad => \tsw[11]~input_o\,
	combout => \A|ul1|Selector5~2_combout\);

-- Location: LCCOMB_X80_Y14_N16
\A|ul1|Selector5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector5~4_combout\ = (\A|ul1|Selector5~2_combout\) # (((\A|ul1|Equal6~0_combout\ & \A|ul1|Selector5~3_combout\)) # (!\A|ul1|Selector5~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal6~0_combout\,
	datab => \A|ul1|Selector5~3_combout\,
	datac => \A|ul1|Selector5~2_combout\,
	datad => \A|ul1|Selector5~1_combout\,
	combout => \A|ul1|Selector5~4_combout\);

-- Location: LCCOMB_X80_Y14_N22
\A|ul1|Selector5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector5~5_combout\ = (\tsw[15]~input_o\ & (!\tsw[14]~input_o\ & (!\tsw[13]~input_o\ & \A|ul1|Equal13~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[15]~input_o\,
	datab => \tsw[14]~input_o\,
	datac => \tsw[13]~input_o\,
	datad => \A|ul1|Equal13~0_combout\,
	combout => \A|ul1|Selector5~5_combout\);

-- Location: LCCOMB_X80_Y14_N28
\A|ul1|Selector5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector5~6_combout\ = (\tsw[7]~input_o\ & (!\tsw[6]~input_o\ & (!\tsw[5]~input_o\ & \A|ul1|Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[7]~input_o\,
	datab => \tsw[6]~input_o\,
	datac => \tsw[5]~input_o\,
	datad => \A|ul1|Equal5~0_combout\,
	combout => \A|ul1|Selector5~6_combout\);

-- Location: LCCOMB_X80_Y14_N18
\A|ul1|Selector5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector5~7_combout\ = (\A|ul1|Selector5~5_combout\) # ((\A|ul1|Selector5~6_combout\) # ((!\tsw[17]~input_o\ & \A|ul1|Equal17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[17]~input_o\,
	datab => \A|ul1|Equal17~0_combout\,
	datac => \A|ul1|Selector5~5_combout\,
	datad => \A|ul1|Selector5~6_combout\,
	combout => \A|ul1|Selector5~7_combout\);

-- Location: LCCOMB_X81_Y14_N10
\A|ul1|Selector5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector5~8_combout\ = (\A|ul1|Selector5~4_combout\) # ((\A|ul1|Selector5~7_combout\) # ((\A|ul1|data_write\(3) & !\A|ul1|WideNor0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Selector5~4_combout\,
	datab => \A|ul1|Selector5~7_combout\,
	datac => \A|ul1|data_write\(3),
	datad => \A|ul1|WideNor0~combout\,
	combout => \A|ul1|Selector5~8_combout\);

-- Location: FF_X81_Y14_N11
\A|ul1|data_write[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[20]~clkctrl_outclk\,
	d => \A|ul1|Selector5~8_combout\,
	clrn => \psw[3]~input_o\,
	ena => \A|ul1|count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|data_write\(3));

-- Location: LCCOMB_X79_Y14_N18
\A|lc1|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector5~0_combout\ = (\A|lc1|state.init3~q\) # ((\A|lc1|state.ready~q\ & (\A|ul1|data_write\(3) & \A|ul1|send_enable~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|state.ready~q\,
	datab => \A|lc1|state.init3~q\,
	datac => \A|ul1|data_write\(3),
	datad => \A|ul1|send_enable~q\,
	combout => \A|lc1|Selector5~0_combout\);

-- Location: LCCOMB_X79_Y14_N24
\A|lc1|Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector5~1_combout\ = ((\A|lc1|Selector5~0_combout\) # ((\A|lc1|data_write_reg\(3) & \A|lc1|WideOr1~combout\))) # (!\A|lc1|Selector3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Selector3~0_combout\,
	datab => \A|lc1|Selector5~0_combout\,
	datac => \A|lc1|data_write_reg\(3),
	datad => \A|lc1|WideOr1~combout\,
	combout => \A|lc1|Selector5~1_combout\);

-- Location: FF_X79_Y14_N25
\A|lc1|data_write_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[20]~clkctrl_outclk\,
	d => \A|lc1|Selector5~1_combout\,
	clrn => \psw[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|data_write_reg\(3));

-- Location: LCCOMB_X82_Y13_N26
\A|lc1|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector4~1_combout\ = (!\A|lc1|state.init3~q\ & (!\A|lc1|state.init5~q\ & (!\A|lc1|state.init8~q\ & !\A|lc1|state.ready~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|state.init3~q\,
	datab => \A|lc1|state.init5~q\,
	datac => \A|lc1|state.init8~q\,
	datad => \A|lc1|state.ready~q\,
	combout => \A|lc1|Selector4~1_combout\);

-- Location: LCCOMB_X82_Y13_N12
\A|lc1|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector4~0_combout\ = (!\A|lc1|state.init7~q\ & (!\A|lc1|state.init4~q\ & (!\A|lc1|state.init2~q\ & !\A|lc1|state.init6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|state.init7~q\,
	datab => \A|lc1|state.init4~q\,
	datac => \A|lc1|state.init2~q\,
	datad => \A|lc1|state.init6~q\,
	combout => \A|lc1|Selector4~0_combout\);

-- Location: LCCOMB_X81_Y14_N30
\A|ul1|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector4~1_combout\ = ((\A|ul1|Equal3~1_combout\) # ((\tsw[17]~input_o\ & \A|ul1|Equal18~0_combout\))) # (!\A|ul1|Selector4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[17]~input_o\,
	datab => \A|ul1|Selector4~0_combout\,
	datac => \A|ul1|Equal18~0_combout\,
	datad => \A|ul1|Equal3~1_combout\,
	combout => \A|ul1|Selector4~1_combout\);

-- Location: LCCOMB_X79_Y14_N26
\A|ul1|Selector4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector4~2_combout\ = (\A|ul1|LessThan4~0_combout\ & ((\A|ul1|LessThan2~0_combout\) # ((!\A|ul1|Equal6~0_combout\)))) # (!\A|ul1|LessThan4~0_combout\ & (!\A|ul1|Equal14~0_combout\ & ((\A|ul1|LessThan2~0_combout\) # (!\A|ul1|Equal6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|LessThan4~0_combout\,
	datab => \A|ul1|LessThan2~0_combout\,
	datac => \A|ul1|Equal14~0_combout\,
	datad => \A|ul1|Equal6~0_combout\,
	combout => \A|ul1|Selector4~2_combout\);

-- Location: LCCOMB_X81_Y14_N20
\A|ul1|Selector4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector4~3_combout\ = (\A|ul1|Selector5~0_combout\ & (\A|ul1|Selector4~2_combout\ & ((\A|ul1|LessThan3~0_combout\) # (!\A|ul1|Equal13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Selector5~0_combout\,
	datab => \A|ul1|Equal13~0_combout\,
	datac => \A|ul1|LessThan3~0_combout\,
	datad => \A|ul1|Selector4~2_combout\,
	combout => \A|ul1|Selector4~3_combout\);

-- Location: LCCOMB_X81_Y14_N18
\A|ul1|Selector4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector4~4_combout\ = (\A|ul1|Selector4~3_combout\ & ((\A|ul1|LessThan1~0_combout\) # (!\A|ul1|Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|LessThan1~0_combout\,
	datac => \A|ul1|Equal5~0_combout\,
	datad => \A|ul1|Selector4~3_combout\,
	combout => \A|ul1|Selector4~4_combout\);

-- Location: LCCOMB_X81_Y14_N4
\A|ul1|Selector4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector4~5_combout\ = (\A|ul1|Selector4~1_combout\) # (((\A|ul1|data_write\(4) & !\A|ul1|WideNor0~combout\)) # (!\A|ul1|Selector4~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Selector4~1_combout\,
	datab => \A|ul1|Selector4~4_combout\,
	datac => \A|ul1|data_write\(4),
	datad => \A|ul1|WideNor0~combout\,
	combout => \A|ul1|Selector4~5_combout\);

-- Location: FF_X81_Y14_N5
\A|ul1|data_write[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[20]~clkctrl_outclk\,
	d => \A|ul1|Selector4~5_combout\,
	clrn => \psw[3]~input_o\,
	ena => \A|ul1|count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|data_write\(4));

-- Location: LCCOMB_X82_Y13_N16
\A|lc1|Selector4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector4~2_combout\ = (\A|lc1|Selector4~1_combout\ & ((\A|lc1|Selector4~0_combout\) # ((\A|lc1|Selector1~0_combout\ & \A|ul1|data_write\(4))))) # (!\A|lc1|Selector4~1_combout\ & (\A|lc1|Selector1~0_combout\ & ((\A|ul1|data_write\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Selector4~1_combout\,
	datab => \A|lc1|Selector1~0_combout\,
	datac => \A|lc1|Selector4~0_combout\,
	datad => \A|ul1|data_write\(4),
	combout => \A|lc1|Selector4~2_combout\);

-- Location: LCCOMB_X82_Y13_N30
\A|lc1|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector3~1_combout\ = (\A|lc1|state.init6~q\) # ((\A|lc1|state.init7~q\) # (\A|lc1|state.init4~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|lc1|state.init6~q\,
	datac => \A|lc1|state.init7~q\,
	datad => \A|lc1|state.init4~q\,
	combout => \A|lc1|Selector3~1_combout\);

-- Location: LCCOMB_X82_Y13_N24
\A|lc1|Selector3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector3~2_combout\ = (((\A|lc1|Selector3~1_combout\) # (\A|lc1|state.init2~q\)) # (!\A|lc1|Selector3~0_combout\)) # (!\A|lc1|Selector4~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Selector4~1_combout\,
	datab => \A|lc1|Selector3~0_combout\,
	datac => \A|lc1|Selector3~1_combout\,
	datad => \A|lc1|state.init2~q\,
	combout => \A|lc1|Selector3~2_combout\);

-- Location: FF_X82_Y13_N17
\A|lc1|data_write_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[20]~clkctrl_outclk\,
	d => \A|lc1|Selector4~2_combout\,
	clrn => \psw[3]~input_o\,
	ena => \A|lc1|Selector3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|data_write_reg\(4));

-- Location: LCCOMB_X81_Y14_N2
\A|ul1|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector3~1_combout\ = (((\A|ul1|data_write\(5) & !\A|ul1|WideNor0~combout\)) # (!\A|ul1|Selector4~4_combout\)) # (!\A|ul1|Selector3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Selector3~0_combout\,
	datab => \A|ul1|Selector4~4_combout\,
	datac => \A|ul1|data_write\(5),
	datad => \A|ul1|WideNor0~combout\,
	combout => \A|ul1|Selector3~1_combout\);

-- Location: FF_X81_Y14_N3
\A|ul1|data_write[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[20]~clkctrl_outclk\,
	d => \A|ul1|Selector3~1_combout\,
	clrn => \psw[3]~input_o\,
	ena => \A|ul1|count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|data_write\(5));

-- Location: LCCOMB_X82_Y13_N2
\A|lc1|Selector3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector3~3_combout\ = (\A|lc1|Selector4~1_combout\ & ((\A|lc1|Selector4~0_combout\) # ((\A|lc1|Selector1~0_combout\ & \A|ul1|data_write\(5))))) # (!\A|lc1|Selector4~1_combout\ & (\A|lc1|Selector1~0_combout\ & ((\A|ul1|data_write\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Selector4~1_combout\,
	datab => \A|lc1|Selector1~0_combout\,
	datac => \A|lc1|Selector4~0_combout\,
	datad => \A|ul1|data_write\(5),
	combout => \A|lc1|Selector3~3_combout\);

-- Location: FF_X82_Y13_N3
\A|lc1|data_write_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[20]~clkctrl_outclk\,
	d => \A|lc1|Selector3~3_combout\,
	clrn => \psw[3]~input_o\,
	ena => \A|lc1|Selector3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|data_write_reg\(5));

-- Location: LCCOMB_X83_Y14_N4
\A|ul1|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector2~0_combout\ = (\A|ul1|LessThan1~0_combout\ & (\A|ul1|Equal1~0_combout\ & (\A|ul1|Add0~11_combout\ & !\A|ul1|Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|LessThan1~0_combout\,
	datab => \A|ul1|Equal1~0_combout\,
	datac => \A|ul1|Add0~11_combout\,
	datad => \A|ul1|Add0~14_combout\,
	combout => \A|ul1|Selector2~0_combout\);

-- Location: LCCOMB_X83_Y14_N30
\A|ul1|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector2~1_combout\ = (\A|ul1|data_write\(6) & (!\A|ul1|Equal16~0_combout\ & (\A|ul1|WideNor0~2_combout\ & \A|ul1|WideNor0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|data_write\(6),
	datab => \A|ul1|Equal16~0_combout\,
	datac => \A|ul1|WideNor0~2_combout\,
	datad => \A|ul1|WideNor0~0_combout\,
	combout => \A|ul1|Selector2~1_combout\);

-- Location: LCCOMB_X79_Y14_N0
\A|ul1|Selector2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector2~2_combout\ = (\A|ul1|LessThan4~0_combout\ & ((\A|ul1|Equal14~0_combout\) # ((\A|ul1|LessThan2~0_combout\ & \A|ul1|Equal6~0_combout\)))) # (!\A|ul1|LessThan4~0_combout\ & (\A|ul1|LessThan2~0_combout\ & ((\A|ul1|Equal6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|LessThan4~0_combout\,
	datab => \A|ul1|LessThan2~0_combout\,
	datac => \A|ul1|Equal14~0_combout\,
	datad => \A|ul1|Equal6~0_combout\,
	combout => \A|ul1|Selector2~2_combout\);

-- Location: LCCOMB_X83_Y14_N12
\A|ul1|Selector2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector2~3_combout\ = (\A|ul1|Equal16~0_combout\) # ((\A|ul1|Selector2~2_combout\) # ((\A|ul1|LessThan3~0_combout\ & \A|ul1|Equal13~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|LessThan3~0_combout\,
	datab => \A|ul1|Equal16~0_combout\,
	datac => \A|ul1|Equal13~0_combout\,
	datad => \A|ul1|Selector2~2_combout\,
	combout => \A|ul1|Selector2~3_combout\);

-- Location: LCCOMB_X83_Y14_N0
\A|ul1|Selector2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector2~4_combout\ = ((\A|ul1|Selector2~0_combout\) # ((\A|ul1|Selector2~1_combout\) # (\A|ul1|Selector2~3_combout\))) # (!\A|ul1|WideNor0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|WideNor0~0_combout\,
	datab => \A|ul1|Selector2~0_combout\,
	datac => \A|ul1|Selector2~1_combout\,
	datad => \A|ul1|Selector2~3_combout\,
	combout => \A|ul1|Selector2~4_combout\);

-- Location: FF_X83_Y14_N1
\A|ul1|data_write[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[20]~clkctrl_outclk\,
	d => \A|ul1|Selector2~4_combout\,
	clrn => \psw[3]~input_o\,
	ena => \A|ul1|count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|data_write\(6));

-- Location: LCCOMB_X84_Y14_N2
\A|lc1|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector2~0_combout\ = (\A|ul1|data_write\(6) & ((\A|lc1|Selector1~0_combout\) # ((\A|lc1|data_write_reg\(6) & \A|lc1|WideOr1~combout\)))) # (!\A|ul1|data_write\(6) & (((\A|lc1|data_write_reg\(6) & \A|lc1|WideOr1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|data_write\(6),
	datab => \A|lc1|Selector1~0_combout\,
	datac => \A|lc1|data_write_reg\(6),
	datad => \A|lc1|WideOr1~combout\,
	combout => \A|lc1|Selector2~0_combout\);

-- Location: FF_X84_Y14_N3
\A|lc1|data_write_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[20]~clkctrl_outclk\,
	d => \A|lc1|Selector2~0_combout\,
	clrn => \psw[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|data_write_reg\(6));

-- Location: LCCOMB_X83_Y14_N26
\A|ul1|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector1~0_combout\ = (\A|ul1|Equal16~0_combout\) # ((\A|ul1|WideNor0~2_combout\ & (\A|ul1|data_write\(7) & \A|ul1|WideNor0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal16~0_combout\,
	datab => \A|ul1|WideNor0~2_combout\,
	datac => \A|ul1|data_write\(7),
	datad => \A|ul1|WideNor0~0_combout\,
	combout => \A|ul1|Selector1~0_combout\);

-- Location: FF_X83_Y14_N27
\A|ul1|data_write[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[20]~clkctrl_outclk\,
	d => \A|ul1|Selector1~0_combout\,
	clrn => \psw[3]~input_o\,
	ena => \A|ul1|count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|data_write\(7));

-- Location: LCCOMB_X84_Y14_N0
\A|lc1|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector1~1_combout\ = (\A|ul1|data_write\(7) & ((\A|lc1|Selector1~0_combout\) # ((\A|lc1|data_write_reg\(7) & \A|lc1|WideOr1~combout\)))) # (!\A|ul1|data_write\(7) & (((\A|lc1|data_write_reg\(7) & \A|lc1|WideOr1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|data_write\(7),
	datab => \A|lc1|Selector1~0_combout\,
	datac => \A|lc1|data_write_reg\(7),
	datad => \A|lc1|WideOr1~combout\,
	combout => \A|lc1|Selector1~1_combout\);

-- Location: FF_X84_Y14_N1
\A|lc1|data_write_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[20]~clkctrl_outclk\,
	d => \A|lc1|Selector1~1_combout\,
	clrn => \psw[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|data_write_reg\(7));

-- Location: LCCOMB_X80_Y13_N4
\B|ctl|addr_reg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|ctl|addr_reg[0]~0_combout\ = (\psw[2]~input_o\ & !\B|ctl|state.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \psw[2]~input_o\,
	datad => \B|ctl|state.idle~q\,
	combout => \B|ctl|addr_reg[0]~0_combout\);

-- Location: FF_X80_Y13_N5
\B|ctl|addr_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \tsw[0]~input_o\,
	clrn => \psw[0]~input_o\,
	sload => VCC,
	ena => \B|ctl|addr_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|ctl|addr_reg\(0));

-- Location: FF_X80_Y13_N29
\B|ctl|addr_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \tsw[1]~input_o\,
	clrn => \psw[0]~input_o\,
	sload => VCC,
	ena => \B|ctl|addr_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|ctl|addr_reg\(1));

-- Location: FF_X80_Y13_N31
\B|ctl|addr_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \tsw[2]~input_o\,
	clrn => \psw[0]~input_o\,
	sload => VCC,
	ena => \B|ctl|addr_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|ctl|addr_reg\(2));

-- Location: FF_X80_Y13_N13
\B|ctl|addr_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \tsw[3]~input_o\,
	clrn => \psw[0]~input_o\,
	sload => VCC,
	ena => \B|ctl|addr_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|ctl|addr_reg\(3));

-- Location: LCCOMB_X80_Y13_N6
\B|ctl|addr_reg[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|ctl|addr_reg[4]~feeder_combout\ = \tsw[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tsw[4]~input_o\,
	combout => \B|ctl|addr_reg[4]~feeder_combout\);

-- Location: FF_X80_Y13_N7
\B|ctl|addr_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \B|ctl|addr_reg[4]~feeder_combout\,
	clrn => \psw[0]~input_o\,
	ena => \B|ctl|addr_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|ctl|addr_reg\(4));

-- Location: FF_X80_Y13_N1
\B|ctl|addr_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \tsw[5]~input_o\,
	clrn => \psw[0]~input_o\,
	sload => VCC,
	ena => \B|ctl|addr_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|ctl|addr_reg\(5));

-- Location: LCCOMB_X80_Y13_N16
\B|ctl|addr_reg[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|ctl|addr_reg[6]~feeder_combout\ = \tsw[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tsw[6]~input_o\,
	combout => \B|ctl|addr_reg[6]~feeder_combout\);

-- Location: FF_X80_Y13_N17
\B|ctl|addr_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \B|ctl|addr_reg[6]~feeder_combout\,
	clrn => \psw[0]~input_o\,
	ena => \B|ctl|addr_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|ctl|addr_reg\(6));

-- Location: LCCOMB_X80_Y13_N22
\B|ctl|addr_reg[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|ctl|addr_reg[7]~feeder_combout\ = \tsw[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tsw[7]~input_o\,
	combout => \B|ctl|addr_reg[7]~feeder_combout\);

-- Location: FF_X80_Y13_N23
\B|ctl|addr_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \B|ctl|addr_reg[7]~feeder_combout\,
	clrn => \psw[0]~input_o\,
	ena => \B|ctl|addr_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|ctl|addr_reg\(7));

-- Location: LCCOMB_X79_Y13_N20
\B|ctl|we_reg~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|ctl|we_reg~feeder_combout\ = \B|ctl|nextstate.w1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B|ctl|nextstate.w1~0_combout\,
	combout => \B|ctl|we_reg~feeder_combout\);

-- Location: FF_X79_Y13_N21
\B|ctl|we_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \B|ctl|we_reg~feeder_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|ctl|we_reg~q\);

-- Location: LCCOMB_X80_Y13_N10
\B|ctl|oe_buf~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|ctl|oe_buf~0_combout\ = (\B|ctl|state.r1~q\) # ((\psw[3]~input_o\ & (!\B|ctl|state.idle~q\ & \psw[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \psw[3]~input_o\,
	datab => \B|ctl|state.idle~q\,
	datac => \psw[2]~input_o\,
	datad => \B|ctl|state.r1~q\,
	combout => \B|ctl|oe_buf~0_combout\);

-- Location: FF_X80_Y13_N11
\B|ctl|oe_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \B|ctl|oe_buf~0_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|ctl|oe_reg~q\);

-- Location: LCCOMB_X82_Y13_N8
\A|lc1|WideOr12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|WideOr12~0_combout\ = ((\A|lc1|state.init4~q\) # ((\A|lc1|state.init6~q\) # (\A|lc1|state.init2~q\))) # (!\A|lc1|state.power~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|state.power~q\,
	datab => \A|lc1|state.init4~q\,
	datac => \A|lc1|state.init6~q\,
	datad => \A|lc1|state.init2~q\,
	combout => \A|lc1|WideOr12~0_combout\);

-- Location: LCCOMB_X83_Y13_N24
\A|lc1|WideOr12\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|WideOr12~combout\ = (\A|lc1|state.send1~q\) # (\A|lc1|WideOr12~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|lc1|state.send1~q\,
	datac => \A|lc1|WideOr12~0_combout\,
	combout => \A|lc1|WideOr12~combout\);

-- Location: FF_X83_Y13_N25
\A|lc1|en_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[20]~clkctrl_outclk\,
	d => \A|lc1|WideOr12~combout\,
	clrn => \psw[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|en_reg~q\);

-- Location: LCCOMB_X84_Y13_N6
\A|lc1|WideOr10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|WideOr10~2_combout\ = (\A|lc1|state.send1~q\) # ((\A|lc1|state.send3~q\) # ((\A|lc1|state.send2~q\) # (\A|lc1|state.init2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|state.send1~q\,
	datab => \A|lc1|state.send3~q\,
	datac => \A|lc1|state.send2~q\,
	datad => \A|lc1|state.init2~q\,
	combout => \A|lc1|WideOr10~2_combout\);

-- Location: LCCOMB_X84_Y13_N28
\A|lc1|WideOr10\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|WideOr10~combout\ = (\A|lc1|WideOr10~2_combout\) # ((\A|lc1|state.ready~q\ & \A|ul1|send_enable~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|WideOr10~2_combout\,
	datac => \A|lc1|state.ready~q\,
	datad => \A|ul1|send_enable~q\,
	combout => \A|lc1|WideOr10~combout\);

-- Location: LCCOMB_X84_Y14_N8
\A|ul1|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector0~0_combout\ = (((!\A|ul1|Equal16~0_combout\ & \A|ul1|data_write\(9))) # (!\A|ul1|WideNor0~2_combout\)) # (!\A|ul1|WideNor0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal16~0_combout\,
	datab => \A|ul1|WideNor0~0_combout\,
	datac => \A|ul1|data_write\(9),
	datad => \A|ul1|WideNor0~2_combout\,
	combout => \A|ul1|Selector0~0_combout\);

-- Location: FF_X84_Y14_N9
\A|ul1|data_write[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[20]~clkctrl_outclk\,
	d => \A|ul1|Selector0~0_combout\,
	clrn => \psw[3]~input_o\,
	ena => \A|ul1|count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|data_write\(9));

-- Location: LCCOMB_X84_Y13_N12
\A|lc1|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector10~0_combout\ = (\A|ul1|send_enable~q\ & (((!\A|lc1|Selector11~0_combout\ & \A|ul1|data_write\(9))))) # (!\A|ul1|send_enable~q\ & ((\A|lc1|state.ready~q\) # ((!\A|lc1|Selector11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|state.ready~q\,
	datab => \A|ul1|send_enable~q\,
	datac => \A|lc1|Selector11~0_combout\,
	datad => \A|ul1|data_write\(9),
	combout => \A|lc1|Selector10~0_combout\);

-- Location: LCCOMB_X84_Y13_N20
\A|lc1|rs_buf\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|rs_buf~combout\ = (\A|lc1|WideOr10~combout\ & (\A|lc1|rs_buf~combout\)) # (!\A|lc1|WideOr10~combout\ & ((\A|lc1|Selector10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|lc1|rs_buf~combout\,
	datac => \A|lc1|WideOr10~combout\,
	datad => \A|lc1|Selector10~0_combout\,
	combout => \A|lc1|rs_buf~combout\);

-- Location: LCCOMB_X83_Y13_N22
\A|lc1|rs_reg~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|rs_reg~feeder_combout\ = \A|lc1|rs_buf~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A|lc1|rs_buf~combout\,
	combout => \A|lc1|rs_reg~feeder_combout\);

-- Location: FF_X83_Y13_N23
\A|lc1|rs_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[20]~clkctrl_outclk\,
	d => \A|lc1|rs_reg~feeder_combout\,
	clrn => \psw[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|rs_reg~q\);

-- Location: LCCOMB_X86_Y13_N0
\B|dp11|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp11|Mux6~0_combout\ = (\tsw[3]~input_o\ & (\tsw[0]~input_o\ & (\tsw[1]~input_o\ $ (\tsw[2]~input_o\)))) # (!\tsw[3]~input_o\ & (!\tsw[1]~input_o\ & (\tsw[0]~input_o\ $ (\tsw[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[0]~input_o\,
	datab => \tsw[1]~input_o\,
	datac => \tsw[3]~input_o\,
	datad => \tsw[2]~input_o\,
	combout => \B|dp11|Mux6~0_combout\);

-- Location: LCCOMB_X84_Y14_N16
\B|dp11|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp11|Mux5~0_combout\ = (\tsw[1]~input_o\ & ((\tsw[0]~input_o\ & (\tsw[3]~input_o\)) # (!\tsw[0]~input_o\ & ((\tsw[2]~input_o\))))) # (!\tsw[1]~input_o\ & (\tsw[2]~input_o\ & (\tsw[0]~input_o\ $ (\tsw[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[0]~input_o\,
	datab => \tsw[1]~input_o\,
	datac => \tsw[3]~input_o\,
	datad => \tsw[2]~input_o\,
	combout => \B|dp11|Mux5~0_combout\);

-- Location: LCCOMB_X80_Y13_N12
\B|dp11|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp11|Mux4~0_combout\ = (\tsw[3]~input_o\ & (\tsw[2]~input_o\ & ((\tsw[1]~input_o\) # (!\tsw[0]~input_o\)))) # (!\tsw[3]~input_o\ & (!\tsw[0]~input_o\ & (\tsw[1]~input_o\ & !\tsw[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[0]~input_o\,
	datab => \tsw[1]~input_o\,
	datac => \tsw[3]~input_o\,
	datad => \tsw[2]~input_o\,
	combout => \B|dp11|Mux4~0_combout\);

-- Location: LCCOMB_X86_Y13_N10
\B|dp11|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp11|Mux3~0_combout\ = (\tsw[0]~input_o\ & (\tsw[1]~input_o\ $ (((!\tsw[2]~input_o\))))) # (!\tsw[0]~input_o\ & ((\tsw[1]~input_o\ & (\tsw[3]~input_o\ & !\tsw[2]~input_o\)) # (!\tsw[1]~input_o\ & (!\tsw[3]~input_o\ & \tsw[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[0]~input_o\,
	datab => \tsw[1]~input_o\,
	datac => \tsw[3]~input_o\,
	datad => \tsw[2]~input_o\,
	combout => \B|dp11|Mux3~0_combout\);

-- Location: LCCOMB_X80_Y13_N8
\B|dp11|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp11|Mux2~0_combout\ = (\tsw[1]~input_o\ & (!\tsw[3]~input_o\ & (\tsw[0]~input_o\))) # (!\tsw[1]~input_o\ & ((\tsw[2]~input_o\ & (!\tsw[3]~input_o\)) # (!\tsw[2]~input_o\ & ((\tsw[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[3]~input_o\,
	datab => \tsw[1]~input_o\,
	datac => \tsw[0]~input_o\,
	datad => \tsw[2]~input_o\,
	combout => \B|dp11|Mux2~0_combout\);

-- Location: LCCOMB_X80_Y13_N30
\B|dp11|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp11|Mux1~0_combout\ = (\tsw[0]~input_o\ & (\tsw[3]~input_o\ $ (((\tsw[1]~input_o\) # (!\tsw[2]~input_o\))))) # (!\tsw[0]~input_o\ & (\tsw[1]~input_o\ & (!\tsw[2]~input_o\ & !\tsw[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[0]~input_o\,
	datab => \tsw[1]~input_o\,
	datac => \tsw[2]~input_o\,
	datad => \tsw[3]~input_o\,
	combout => \B|dp11|Mux1~0_combout\);

-- Location: LCCOMB_X80_Y13_N20
\B|dp11|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp11|Mux0~0_combout\ = (\tsw[0]~input_o\ & ((\tsw[3]~input_o\) # (\tsw[2]~input_o\ $ (\tsw[1]~input_o\)))) # (!\tsw[0]~input_o\ & ((\tsw[1]~input_o\) # (\tsw[2]~input_o\ $ (\tsw[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[2]~input_o\,
	datab => \tsw[1]~input_o\,
	datac => \tsw[0]~input_o\,
	datad => \tsw[3]~input_o\,
	combout => \B|dp11|Mux0~0_combout\);

-- Location: LCCOMB_X76_Y7_N28
\B|dp12|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp12|Mux6~0_combout\ = (\tsw[7]~input_o\ & (\tsw[4]~input_o\ & (\tsw[5]~input_o\ $ (\tsw[6]~input_o\)))) # (!\tsw[7]~input_o\ & (!\tsw[5]~input_o\ & (\tsw[6]~input_o\ $ (\tsw[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[7]~input_o\,
	datab => \tsw[5]~input_o\,
	datac => \tsw[6]~input_o\,
	datad => \tsw[4]~input_o\,
	combout => \B|dp12|Mux6~0_combout\);

-- Location: LCCOMB_X76_Y7_N14
\B|dp12|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp12|Mux5~0_combout\ = (\tsw[7]~input_o\ & ((\tsw[4]~input_o\ & (\tsw[5]~input_o\)) # (!\tsw[4]~input_o\ & ((\tsw[6]~input_o\))))) # (!\tsw[7]~input_o\ & (\tsw[6]~input_o\ & (\tsw[5]~input_o\ $ (\tsw[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[7]~input_o\,
	datab => \tsw[5]~input_o\,
	datac => \tsw[6]~input_o\,
	datad => \tsw[4]~input_o\,
	combout => \B|dp12|Mux5~0_combout\);

-- Location: LCCOMB_X76_Y7_N12
\B|dp12|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp12|Mux4~0_combout\ = (\tsw[7]~input_o\ & (\tsw[6]~input_o\ & ((\tsw[5]~input_o\) # (!\tsw[4]~input_o\)))) # (!\tsw[7]~input_o\ & (\tsw[5]~input_o\ & (!\tsw[6]~input_o\ & !\tsw[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[7]~input_o\,
	datab => \tsw[5]~input_o\,
	datac => \tsw[6]~input_o\,
	datad => \tsw[4]~input_o\,
	combout => \B|dp12|Mux4~0_combout\);

-- Location: LCCOMB_X76_Y7_N10
\B|dp12|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp12|Mux3~0_combout\ = (\tsw[4]~input_o\ & ((\tsw[5]~input_o\ $ (!\tsw[6]~input_o\)))) # (!\tsw[4]~input_o\ & ((\tsw[7]~input_o\ & (\tsw[5]~input_o\ & !\tsw[6]~input_o\)) # (!\tsw[7]~input_o\ & (!\tsw[5]~input_o\ & \tsw[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[7]~input_o\,
	datab => \tsw[5]~input_o\,
	datac => \tsw[6]~input_o\,
	datad => \tsw[4]~input_o\,
	combout => \B|dp12|Mux3~0_combout\);

-- Location: LCCOMB_X76_Y7_N20
\B|dp12|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp12|Mux2~0_combout\ = (\tsw[5]~input_o\ & (!\tsw[7]~input_o\ & ((\tsw[4]~input_o\)))) # (!\tsw[5]~input_o\ & ((\tsw[6]~input_o\ & (!\tsw[7]~input_o\)) # (!\tsw[6]~input_o\ & ((\tsw[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[7]~input_o\,
	datab => \tsw[5]~input_o\,
	datac => \tsw[6]~input_o\,
	datad => \tsw[4]~input_o\,
	combout => \B|dp12|Mux2~0_combout\);

-- Location: LCCOMB_X76_Y7_N6
\B|dp12|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp12|Mux1~0_combout\ = (\tsw[5]~input_o\ & (!\tsw[7]~input_o\ & ((\tsw[4]~input_o\) # (!\tsw[6]~input_o\)))) # (!\tsw[5]~input_o\ & (\tsw[4]~input_o\ & (\tsw[7]~input_o\ $ (!\tsw[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[7]~input_o\,
	datab => \tsw[5]~input_o\,
	datac => \tsw[6]~input_o\,
	datad => \tsw[4]~input_o\,
	combout => \B|dp12|Mux1~0_combout\);

-- Location: LCCOMB_X76_Y7_N4
\B|dp12|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp12|Mux0~0_combout\ = (\tsw[4]~input_o\ & ((\tsw[7]~input_o\) # (\tsw[5]~input_o\ $ (\tsw[6]~input_o\)))) # (!\tsw[4]~input_o\ & ((\tsw[5]~input_o\) # (\tsw[7]~input_o\ $ (\tsw[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[7]~input_o\,
	datab => \tsw[5]~input_o\,
	datac => \tsw[6]~input_o\,
	datad => \tsw[4]~input_o\,
	combout => \B|dp12|Mux0~0_combout\);

-- Location: LCCOMB_X79_Y13_N30
\B|dp21|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp21|Mux6~0_combout\ = (\tsw[10]~input_o\ & (!\tsw[9]~input_o\ & (\tsw[8]~input_o\ $ (!\tsw[11]~input_o\)))) # (!\tsw[10]~input_o\ & (\tsw[8]~input_o\ & (\tsw[9]~input_o\ $ (!\tsw[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[8]~input_o\,
	datab => \tsw[10]~input_o\,
	datac => \tsw[9]~input_o\,
	datad => \tsw[11]~input_o\,
	combout => \B|dp21|Mux6~0_combout\);

-- Location: LCCOMB_X79_Y13_N24
\B|dp21|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp21|Mux5~0_combout\ = (\tsw[9]~input_o\ & ((\tsw[8]~input_o\ & ((\tsw[11]~input_o\))) # (!\tsw[8]~input_o\ & (\tsw[10]~input_o\)))) # (!\tsw[9]~input_o\ & (\tsw[10]~input_o\ & (\tsw[8]~input_o\ $ (\tsw[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[8]~input_o\,
	datab => \tsw[10]~input_o\,
	datac => \tsw[9]~input_o\,
	datad => \tsw[11]~input_o\,
	combout => \B|dp21|Mux5~0_combout\);

-- Location: LCCOMB_X79_Y13_N10
\B|dp21|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp21|Mux4~0_combout\ = (\tsw[10]~input_o\ & (\tsw[11]~input_o\ & ((\tsw[9]~input_o\) # (!\tsw[8]~input_o\)))) # (!\tsw[10]~input_o\ & (!\tsw[8]~input_o\ & (\tsw[9]~input_o\ & !\tsw[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[8]~input_o\,
	datab => \tsw[10]~input_o\,
	datac => \tsw[9]~input_o\,
	datad => \tsw[11]~input_o\,
	combout => \B|dp21|Mux4~0_combout\);

-- Location: LCCOMB_X79_Y13_N4
\B|dp21|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp21|Mux3~0_combout\ = (\tsw[8]~input_o\ & (\tsw[10]~input_o\ $ ((!\tsw[9]~input_o\)))) # (!\tsw[8]~input_o\ & ((\tsw[10]~input_o\ & (!\tsw[9]~input_o\ & !\tsw[11]~input_o\)) # (!\tsw[10]~input_o\ & (\tsw[9]~input_o\ & \tsw[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[8]~input_o\,
	datab => \tsw[10]~input_o\,
	datac => \tsw[9]~input_o\,
	datad => \tsw[11]~input_o\,
	combout => \B|dp21|Mux3~0_combout\);

-- Location: LCCOMB_X79_Y13_N6
\B|dp21|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp21|Mux2~0_combout\ = (\tsw[9]~input_o\ & (\tsw[8]~input_o\ & ((!\tsw[11]~input_o\)))) # (!\tsw[9]~input_o\ & ((\tsw[10]~input_o\ & ((!\tsw[11]~input_o\))) # (!\tsw[10]~input_o\ & (\tsw[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[8]~input_o\,
	datab => \tsw[10]~input_o\,
	datac => \tsw[9]~input_o\,
	datad => \tsw[11]~input_o\,
	combout => \B|dp21|Mux2~0_combout\);

-- Location: LCCOMB_X79_Y13_N16
\B|dp21|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp21|Mux1~0_combout\ = (\tsw[8]~input_o\ & (\tsw[11]~input_o\ $ (((\tsw[9]~input_o\) # (!\tsw[10]~input_o\))))) # (!\tsw[8]~input_o\ & (!\tsw[10]~input_o\ & (\tsw[9]~input_o\ & !\tsw[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[8]~input_o\,
	datab => \tsw[10]~input_o\,
	datac => \tsw[9]~input_o\,
	datad => \tsw[11]~input_o\,
	combout => \B|dp21|Mux1~0_combout\);

-- Location: LCCOMB_X79_Y13_N14
\B|dp21|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp21|Mux0~0_combout\ = (\tsw[8]~input_o\ & ((\tsw[11]~input_o\) # (\tsw[10]~input_o\ $ (\tsw[9]~input_o\)))) # (!\tsw[8]~input_o\ & ((\tsw[9]~input_o\) # (\tsw[10]~input_o\ $ (\tsw[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[8]~input_o\,
	datab => \tsw[10]~input_o\,
	datac => \tsw[9]~input_o\,
	datad => \tsw[11]~input_o\,
	combout => \B|dp21|Mux0~0_combout\);

-- Location: LCCOMB_X81_Y13_N12
\B|dp22|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp22|Mux6~0_combout\ = (\tsw[15]~input_o\ & (\tsw[12]~input_o\ & (\tsw[13]~input_o\ $ (\tsw[14]~input_o\)))) # (!\tsw[15]~input_o\ & (!\tsw[13]~input_o\ & (\tsw[12]~input_o\ $ (\tsw[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[15]~input_o\,
	datab => \tsw[13]~input_o\,
	datac => \tsw[12]~input_o\,
	datad => \tsw[14]~input_o\,
	combout => \B|dp22|Mux6~0_combout\);

-- Location: LCCOMB_X81_Y13_N14
\B|dp22|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp22|Mux5~0_combout\ = (\tsw[15]~input_o\ & ((\tsw[12]~input_o\ & (\tsw[13]~input_o\)) # (!\tsw[12]~input_o\ & ((\tsw[14]~input_o\))))) # (!\tsw[15]~input_o\ & (\tsw[14]~input_o\ & (\tsw[13]~input_o\ $ (\tsw[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[15]~input_o\,
	datab => \tsw[13]~input_o\,
	datac => \tsw[12]~input_o\,
	datad => \tsw[14]~input_o\,
	combout => \B|dp22|Mux5~0_combout\);

-- Location: LCCOMB_X81_Y13_N0
\B|dp22|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp22|Mux4~0_combout\ = (\tsw[15]~input_o\ & (\tsw[14]~input_o\ & ((\tsw[13]~input_o\) # (!\tsw[12]~input_o\)))) # (!\tsw[15]~input_o\ & (\tsw[13]~input_o\ & (!\tsw[12]~input_o\ & !\tsw[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[15]~input_o\,
	datab => \tsw[13]~input_o\,
	datac => \tsw[12]~input_o\,
	datad => \tsw[14]~input_o\,
	combout => \B|dp22|Mux4~0_combout\);

-- Location: LCCOMB_X81_Y13_N6
\B|dp22|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp22|Mux3~0_combout\ = (\tsw[12]~input_o\ & ((\tsw[13]~input_o\ $ (!\tsw[14]~input_o\)))) # (!\tsw[12]~input_o\ & ((\tsw[15]~input_o\ & (\tsw[13]~input_o\ & !\tsw[14]~input_o\)) # (!\tsw[15]~input_o\ & (!\tsw[13]~input_o\ & \tsw[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[15]~input_o\,
	datab => \tsw[13]~input_o\,
	datac => \tsw[12]~input_o\,
	datad => \tsw[14]~input_o\,
	combout => \B|dp22|Mux3~0_combout\);

-- Location: LCCOMB_X81_Y13_N24
\B|dp22|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp22|Mux2~0_combout\ = (\tsw[13]~input_o\ & (!\tsw[15]~input_o\ & (\tsw[12]~input_o\))) # (!\tsw[13]~input_o\ & ((\tsw[14]~input_o\ & (!\tsw[15]~input_o\)) # (!\tsw[14]~input_o\ & ((\tsw[12]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[15]~input_o\,
	datab => \tsw[13]~input_o\,
	datac => \tsw[12]~input_o\,
	datad => \tsw[14]~input_o\,
	combout => \B|dp22|Mux2~0_combout\);

-- Location: LCCOMB_X81_Y13_N26
\B|dp22|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp22|Mux1~0_combout\ = (\tsw[13]~input_o\ & (!\tsw[15]~input_o\ & ((\tsw[12]~input_o\) # (!\tsw[14]~input_o\)))) # (!\tsw[13]~input_o\ & (\tsw[12]~input_o\ & (\tsw[15]~input_o\ $ (!\tsw[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[15]~input_o\,
	datab => \tsw[13]~input_o\,
	datac => \tsw[12]~input_o\,
	datad => \tsw[14]~input_o\,
	combout => \B|dp22|Mux1~0_combout\);

-- Location: LCCOMB_X81_Y13_N4
\B|dp22|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp22|Mux0~0_combout\ = (\tsw[12]~input_o\ & ((\tsw[15]~input_o\) # (\tsw[13]~input_o\ $ (\tsw[14]~input_o\)))) # (!\tsw[12]~input_o\ & ((\tsw[13]~input_o\) # (\tsw[15]~input_o\ $ (\tsw[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[15]~input_o\,
	datab => \tsw[13]~input_o\,
	datac => \tsw[12]~input_o\,
	datad => \tsw[14]~input_o\,
	combout => \B|dp22|Mux0~0_combout\);

-- Location: IOIBUF_X7_Y0_N22
\dio_sram[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => dio_sram(1),
	o => \dio_sram[1]~input_o\);

-- Location: LCCOMB_X80_Y17_N10
\B|ctl|data_read_reg[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|ctl|data_read_reg[1]~feeder_combout\ = \dio_sram[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dio_sram[1]~input_o\,
	combout => \B|ctl|data_read_reg[1]~feeder_combout\);

-- Location: FF_X80_Y17_N11
\B|ctl|data_read_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \B|ctl|data_read_reg[1]~feeder_combout\,
	clrn => \psw[0]~input_o\,
	ena => \B|ctl|state.r2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|ctl|data_read_reg\(1));

-- Location: IOIBUF_X3_Y0_N22
\dio_sram[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => dio_sram(2),
	o => \dio_sram[2]~input_o\);

-- Location: LCCOMB_X80_Y17_N24
\B|ctl|data_read_reg[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|ctl|data_read_reg[2]~feeder_combout\ = \dio_sram[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dio_sram[2]~input_o\,
	combout => \B|ctl|data_read_reg[2]~feeder_combout\);

-- Location: FF_X80_Y17_N25
\B|ctl|data_read_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \B|ctl|data_read_reg[2]~feeder_combout\,
	clrn => \psw[0]~input_o\,
	ena => \B|ctl|state.r2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|ctl|data_read_reg\(2));

-- Location: IOIBUF_X0_Y7_N8
\dio_sram[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => dio_sram(3),
	o => \dio_sram[3]~input_o\);

-- Location: FF_X80_Y17_N23
\B|ctl|data_read_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dio_sram[3]~input_o\,
	clrn => \psw[0]~input_o\,
	sload => VCC,
	ena => \B|ctl|state.r2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|ctl|data_read_reg\(3));

-- Location: IOIBUF_X3_Y0_N15
\dio_sram[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => dio_sram(0),
	o => \dio_sram[0]~input_o\);

-- Location: LCCOMB_X80_Y17_N20
\B|ctl|data_read_reg[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|ctl|data_read_reg[0]~feeder_combout\ = \dio_sram[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dio_sram[0]~input_o\,
	combout => \B|ctl|data_read_reg[0]~feeder_combout\);

-- Location: FF_X80_Y17_N21
\B|ctl|data_read_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \B|ctl|data_read_reg[0]~feeder_combout\,
	clrn => \psw[0]~input_o\,
	ena => \B|ctl|state.r2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|ctl|data_read_reg\(0));

-- Location: LCCOMB_X80_Y17_N16
\B|dp13|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp13|Mux6~0_combout\ = (\B|ctl|data_read_reg\(2) & (!\B|ctl|data_read_reg\(1) & (\B|ctl|data_read_reg\(3) $ (!\B|ctl|data_read_reg\(0))))) # (!\B|ctl|data_read_reg\(2) & (\B|ctl|data_read_reg\(0) & (\B|ctl|data_read_reg\(1) $ 
-- (!\B|ctl|data_read_reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B|ctl|data_read_reg\(1),
	datab => \B|ctl|data_read_reg\(2),
	datac => \B|ctl|data_read_reg\(3),
	datad => \B|ctl|data_read_reg\(0),
	combout => \B|dp13|Mux6~0_combout\);

-- Location: LCCOMB_X80_Y17_N2
\B|dp13|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp13|Mux5~0_combout\ = (\B|ctl|data_read_reg\(1) & ((\B|ctl|data_read_reg\(0) & ((\B|ctl|data_read_reg\(3)))) # (!\B|ctl|data_read_reg\(0) & (\B|ctl|data_read_reg\(2))))) # (!\B|ctl|data_read_reg\(1) & (\B|ctl|data_read_reg\(2) & 
-- (\B|ctl|data_read_reg\(3) $ (\B|ctl|data_read_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B|ctl|data_read_reg\(1),
	datab => \B|ctl|data_read_reg\(2),
	datac => \B|ctl|data_read_reg\(3),
	datad => \B|ctl|data_read_reg\(0),
	combout => \B|dp13|Mux5~0_combout\);

-- Location: LCCOMB_X80_Y17_N0
\B|dp13|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp13|Mux4~0_combout\ = (\B|ctl|data_read_reg\(2) & (\B|ctl|data_read_reg\(3) & ((\B|ctl|data_read_reg\(1)) # (!\B|ctl|data_read_reg\(0))))) # (!\B|ctl|data_read_reg\(2) & (\B|ctl|data_read_reg\(1) & (!\B|ctl|data_read_reg\(3) & 
-- !\B|ctl|data_read_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B|ctl|data_read_reg\(1),
	datab => \B|ctl|data_read_reg\(2),
	datac => \B|ctl|data_read_reg\(3),
	datad => \B|ctl|data_read_reg\(0),
	combout => \B|dp13|Mux4~0_combout\);

-- Location: LCCOMB_X80_Y17_N14
\B|dp13|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp13|Mux3~0_combout\ = (\B|ctl|data_read_reg\(0) & (\B|ctl|data_read_reg\(1) $ ((!\B|ctl|data_read_reg\(2))))) # (!\B|ctl|data_read_reg\(0) & ((\B|ctl|data_read_reg\(1) & (!\B|ctl|data_read_reg\(2) & \B|ctl|data_read_reg\(3))) # 
-- (!\B|ctl|data_read_reg\(1) & (\B|ctl|data_read_reg\(2) & !\B|ctl|data_read_reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B|ctl|data_read_reg\(1),
	datab => \B|ctl|data_read_reg\(2),
	datac => \B|ctl|data_read_reg\(3),
	datad => \B|ctl|data_read_reg\(0),
	combout => \B|dp13|Mux3~0_combout\);

-- Location: LCCOMB_X80_Y17_N12
\B|dp13|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp13|Mux2~0_combout\ = (\B|ctl|data_read_reg\(1) & (((!\B|ctl|data_read_reg\(3) & \B|ctl|data_read_reg\(0))))) # (!\B|ctl|data_read_reg\(1) & ((\B|ctl|data_read_reg\(2) & (!\B|ctl|data_read_reg\(3))) # (!\B|ctl|data_read_reg\(2) & 
-- ((\B|ctl|data_read_reg\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B|ctl|data_read_reg\(1),
	datab => \B|ctl|data_read_reg\(2),
	datac => \B|ctl|data_read_reg\(3),
	datad => \B|ctl|data_read_reg\(0),
	combout => \B|dp13|Mux2~0_combout\);

-- Location: LCCOMB_X80_Y17_N26
\B|dp13|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp13|Mux1~0_combout\ = (\B|ctl|data_read_reg\(1) & (!\B|ctl|data_read_reg\(3) & ((\B|ctl|data_read_reg\(0)) # (!\B|ctl|data_read_reg\(2))))) # (!\B|ctl|data_read_reg\(1) & (\B|ctl|data_read_reg\(0) & (\B|ctl|data_read_reg\(2) $ 
-- (!\B|ctl|data_read_reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B|ctl|data_read_reg\(1),
	datab => \B|ctl|data_read_reg\(2),
	datac => \B|ctl|data_read_reg\(3),
	datad => \B|ctl|data_read_reg\(0),
	combout => \B|dp13|Mux1~0_combout\);

-- Location: LCCOMB_X80_Y17_N4
\B|dp13|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp13|Mux0~0_combout\ = (\B|ctl|data_read_reg\(0) & ((\B|ctl|data_read_reg\(3)) # (\B|ctl|data_read_reg\(1) $ (\B|ctl|data_read_reg\(2))))) # (!\B|ctl|data_read_reg\(0) & ((\B|ctl|data_read_reg\(1)) # (\B|ctl|data_read_reg\(2) $ 
-- (\B|ctl|data_read_reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B|ctl|data_read_reg\(1),
	datab => \B|ctl|data_read_reg\(2),
	datac => \B|ctl|data_read_reg\(3),
	datad => \B|ctl|data_read_reg\(0),
	combout => \B|dp13|Mux0~0_combout\);

-- Location: IOIBUF_X0_Y22_N22
\dio_sram[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => dio_sram(6),
	o => \dio_sram[6]~input_o\);

-- Location: FF_X80_Y17_N31
\B|ctl|data_read_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dio_sram[6]~input_o\,
	clrn => \psw[0]~input_o\,
	sload => VCC,
	ena => \B|ctl|state.r2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|ctl|data_read_reg\(6));

-- Location: IOIBUF_X0_Y21_N15
\dio_sram[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => dio_sram(7),
	o => \dio_sram[7]~input_o\);

-- Location: LCCOMB_X80_Y17_N8
\B|ctl|data_read_reg[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|ctl|data_read_reg[7]~feeder_combout\ = \dio_sram[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dio_sram[7]~input_o\,
	combout => \B|ctl|data_read_reg[7]~feeder_combout\);

-- Location: FF_X80_Y17_N9
\B|ctl|data_read_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \B|ctl|data_read_reg[7]~feeder_combout\,
	clrn => \psw[0]~input_o\,
	ena => \B|ctl|state.r2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|ctl|data_read_reg\(7));

-- Location: IOIBUF_X0_Y17_N15
\dio_sram[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => dio_sram(5),
	o => \dio_sram[5]~input_o\);

-- Location: LCCOMB_X80_Y17_N28
\B|ctl|data_read_reg[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|ctl|data_read_reg[5]~feeder_combout\ = \dio_sram[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dio_sram[5]~input_o\,
	combout => \B|ctl|data_read_reg[5]~feeder_combout\);

-- Location: FF_X80_Y17_N29
\B|ctl|data_read_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \B|ctl|data_read_reg[5]~feeder_combout\,
	clrn => \psw[0]~input_o\,
	ena => \B|ctl|state.r2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|ctl|data_read_reg\(5));

-- Location: IOIBUF_X0_Y16_N15
\dio_sram[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => dio_sram(4),
	o => \dio_sram[4]~input_o\);

-- Location: LCCOMB_X80_Y17_N18
\B|ctl|data_read_reg[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|ctl|data_read_reg[4]~feeder_combout\ = \dio_sram[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dio_sram[4]~input_o\,
	combout => \B|ctl|data_read_reg[4]~feeder_combout\);

-- Location: FF_X80_Y17_N19
\B|ctl|data_read_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \B|ctl|data_read_reg[4]~feeder_combout\,
	clrn => \psw[0]~input_o\,
	ena => \B|ctl|state.r2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|ctl|data_read_reg\(4));

-- Location: LCCOMB_X80_Y20_N12
\B|dp23|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp23|Mux6~0_combout\ = (\B|ctl|data_read_reg\(6) & (!\B|ctl|data_read_reg\(5) & (\B|ctl|data_read_reg\(7) $ (!\B|ctl|data_read_reg\(4))))) # (!\B|ctl|data_read_reg\(6) & (\B|ctl|data_read_reg\(4) & (\B|ctl|data_read_reg\(7) $ 
-- (!\B|ctl|data_read_reg\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B|ctl|data_read_reg\(6),
	datab => \B|ctl|data_read_reg\(7),
	datac => \B|ctl|data_read_reg\(5),
	datad => \B|ctl|data_read_reg\(4),
	combout => \B|dp23|Mux6~0_combout\);

-- Location: LCCOMB_X80_Y20_N6
\B|dp23|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp23|Mux5~0_combout\ = (\B|ctl|data_read_reg\(7) & ((\B|ctl|data_read_reg\(4) & ((\B|ctl|data_read_reg\(5)))) # (!\B|ctl|data_read_reg\(4) & (\B|ctl|data_read_reg\(6))))) # (!\B|ctl|data_read_reg\(7) & (\B|ctl|data_read_reg\(6) & 
-- (\B|ctl|data_read_reg\(5) $ (\B|ctl|data_read_reg\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B|ctl|data_read_reg\(6),
	datab => \B|ctl|data_read_reg\(7),
	datac => \B|ctl|data_read_reg\(5),
	datad => \B|ctl|data_read_reg\(4),
	combout => \B|dp23|Mux5~0_combout\);

-- Location: LCCOMB_X80_Y20_N0
\B|dp23|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp23|Mux4~0_combout\ = (\B|ctl|data_read_reg\(6) & (\B|ctl|data_read_reg\(7) & ((\B|ctl|data_read_reg\(5)) # (!\B|ctl|data_read_reg\(4))))) # (!\B|ctl|data_read_reg\(6) & (!\B|ctl|data_read_reg\(7) & (\B|ctl|data_read_reg\(5) & 
-- !\B|ctl|data_read_reg\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B|ctl|data_read_reg\(6),
	datab => \B|ctl|data_read_reg\(7),
	datac => \B|ctl|data_read_reg\(5),
	datad => \B|ctl|data_read_reg\(4),
	combout => \B|dp23|Mux4~0_combout\);

-- Location: LCCOMB_X80_Y20_N2
\B|dp23|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp23|Mux3~0_combout\ = (\B|ctl|data_read_reg\(4) & (\B|ctl|data_read_reg\(6) $ (((!\B|ctl|data_read_reg\(5)))))) # (!\B|ctl|data_read_reg\(4) & ((\B|ctl|data_read_reg\(6) & (!\B|ctl|data_read_reg\(7) & !\B|ctl|data_read_reg\(5))) # 
-- (!\B|ctl|data_read_reg\(6) & (\B|ctl|data_read_reg\(7) & \B|ctl|data_read_reg\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B|ctl|data_read_reg\(6),
	datab => \B|ctl|data_read_reg\(7),
	datac => \B|ctl|data_read_reg\(5),
	datad => \B|ctl|data_read_reg\(4),
	combout => \B|dp23|Mux3~0_combout\);

-- Location: LCCOMB_X80_Y20_N20
\B|dp23|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp23|Mux2~0_combout\ = (\B|ctl|data_read_reg\(5) & (((!\B|ctl|data_read_reg\(7) & \B|ctl|data_read_reg\(4))))) # (!\B|ctl|data_read_reg\(5) & ((\B|ctl|data_read_reg\(6) & (!\B|ctl|data_read_reg\(7))) # (!\B|ctl|data_read_reg\(6) & 
-- ((\B|ctl|data_read_reg\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B|ctl|data_read_reg\(6),
	datab => \B|ctl|data_read_reg\(7),
	datac => \B|ctl|data_read_reg\(5),
	datad => \B|ctl|data_read_reg\(4),
	combout => \B|dp23|Mux2~0_combout\);

-- Location: LCCOMB_X80_Y20_N10
\B|dp23|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp23|Mux1~0_combout\ = (\B|ctl|data_read_reg\(6) & (\B|ctl|data_read_reg\(4) & (\B|ctl|data_read_reg\(7) $ (\B|ctl|data_read_reg\(5))))) # (!\B|ctl|data_read_reg\(6) & (!\B|ctl|data_read_reg\(7) & ((\B|ctl|data_read_reg\(5)) # 
-- (\B|ctl|data_read_reg\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B|ctl|data_read_reg\(6),
	datab => \B|ctl|data_read_reg\(7),
	datac => \B|ctl|data_read_reg\(5),
	datad => \B|ctl|data_read_reg\(4),
	combout => \B|dp23|Mux1~0_combout\);

-- Location: LCCOMB_X80_Y20_N28
\B|dp23|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp23|Mux0~0_combout\ = (\B|ctl|data_read_reg\(4) & ((\B|ctl|data_read_reg\(7)) # (\B|ctl|data_read_reg\(6) $ (\B|ctl|data_read_reg\(5))))) # (!\B|ctl|data_read_reg\(4) & ((\B|ctl|data_read_reg\(5)) # (\B|ctl|data_read_reg\(6) $ 
-- (\B|ctl|data_read_reg\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B|ctl|data_read_reg\(6),
	datab => \B|ctl|data_read_reg\(7),
	datac => \B|ctl|data_read_reg\(5),
	datad => \B|ctl|data_read_reg\(4),
	combout => \B|dp23|Mux0~0_combout\);

-- Location: IOIBUF_X115_Y13_N1
\tsw[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tsw(16),
	o => \tsw[16]~input_o\);

-- Location: IOIBUF_X115_Y42_N15
\psw[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_psw(1),
	o => \psw[1]~input_o\);

-- Location: IOIBUF_X20_Y0_N8
\dio_sram[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => dio_sram(8),
	o => \dio_sram[8]~input_o\);

-- Location: IOIBUF_X11_Y0_N15
\dio_sram[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => dio_sram(9),
	o => \dio_sram[9]~input_o\);

-- Location: IOIBUF_X11_Y0_N22
\dio_sram[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => dio_sram(10),
	o => \dio_sram[10]~input_o\);

-- Location: IOIBUF_X7_Y0_N15
\dio_sram[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => dio_sram(11),
	o => \dio_sram[11]~input_o\);

-- Location: IOIBUF_X9_Y0_N15
\dio_sram[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => dio_sram(12),
	o => \dio_sram[12]~input_o\);

-- Location: IOIBUF_X9_Y0_N22
\dio_sram[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => dio_sram(13),
	o => \dio_sram[13]~input_o\);

-- Location: IOIBUF_X1_Y0_N1
\dio_sram[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => dio_sram(14),
	o => \dio_sram[14]~input_o\);

-- Location: IOIBUF_X5_Y0_N8
\dio_sram[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => dio_sram(15),
	o => \dio_sram[15]~input_o\);

-- Location: IOIBUF_X0_Y52_N15
\dio_lcd[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => dio_lcd(0),
	o => \dio_lcd[0]~input_o\);

-- Location: IOIBUF_X0_Y44_N8
\dio_lcd[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => dio_lcd(1),
	o => \dio_lcd[1]~input_o\);

-- Location: IOIBUF_X0_Y44_N1
\dio_lcd[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => dio_lcd(2),
	o => \dio_lcd[2]~input_o\);

-- Location: IOIBUF_X0_Y49_N8
\dio_lcd[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => dio_lcd(3),
	o => \dio_lcd[3]~input_o\);

-- Location: IOIBUF_X0_Y54_N8
\dio_lcd[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => dio_lcd(4),
	o => \dio_lcd[4]~input_o\);

-- Location: IOIBUF_X0_Y55_N22
\dio_lcd[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => dio_lcd(5),
	o => \dio_lcd[5]~input_o\);

-- Location: IOIBUF_X0_Y51_N15
\dio_lcd[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => dio_lcd(6),
	o => \dio_lcd[6]~input_o\);

-- Location: IOIBUF_X0_Y47_N1
\dio_lcd[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => dio_lcd(7),
	o => \dio_lcd[7]~input_o\);

ww_ad_sram(0) <= \ad_sram[0]~output_o\;

ww_ad_sram(1) <= \ad_sram[1]~output_o\;

ww_ad_sram(2) <= \ad_sram[2]~output_o\;

ww_ad_sram(3) <= \ad_sram[3]~output_o\;

ww_ad_sram(4) <= \ad_sram[4]~output_o\;

ww_ad_sram(5) <= \ad_sram[5]~output_o\;

ww_ad_sram(6) <= \ad_sram[6]~output_o\;

ww_ad_sram(7) <= \ad_sram[7]~output_o\;

ww_ad_sram(8) <= \ad_sram[8]~output_o\;

ww_ad_sram(9) <= \ad_sram[9]~output_o\;

ww_ad_sram(10) <= \ad_sram[10]~output_o\;

ww_ad_sram(11) <= \ad_sram[11]~output_o\;

ww_ad_sram(12) <= \ad_sram[12]~output_o\;

ww_ad_sram(13) <= \ad_sram[13]~output_o\;

ww_ad_sram(14) <= \ad_sram[14]~output_o\;

ww_ad_sram(15) <= \ad_sram[15]~output_o\;

ww_ad_sram(16) <= \ad_sram[16]~output_o\;

ww_ad_sram(17) <= \ad_sram[17]~output_o\;

ww_ad_sram(18) <= \ad_sram[18]~output_o\;

ww_ad_sram(19) <= \ad_sram[19]~output_o\;

ww_we_n_sram <= \we_n_sram~output_o\;

ww_oe_n_sram <= \oe_n_sram~output_o\;

ww_ce_n_sram <= \ce_n_sram~output_o\;

ww_lb_n_sram <= \lb_n_sram~output_o\;

ww_ub_n_sram <= \ub_n_sram~output_o\;

ww_en_lcd <= \en_lcd~output_o\;

ww_rw_lcd <= \rw_lcd~output_o\;

ww_rs_lcd <= \rs_lcd~output_o\;

ww_pon_lcd <= \pon_lcd~output_o\;

ww_blon_lcd <= \blon_lcd~output_o\;

ww_segoutL(0) <= \segoutL[0]~output_o\;

ww_segoutL(1) <= \segoutL[1]~output_o\;

ww_segoutL(2) <= \segoutL[2]~output_o\;

ww_segoutL(3) <= \segoutL[3]~output_o\;

ww_segoutL(4) <= \segoutL[4]~output_o\;

ww_segoutL(5) <= \segoutL[5]~output_o\;

ww_segoutL(6) <= \segoutL[6]~output_o\;

ww_segoutL(7) <= \segoutL[7]~output_o\;

ww_segoutL(8) <= \segoutL[8]~output_o\;

ww_segoutL(9) <= \segoutL[9]~output_o\;

ww_segoutL(10) <= \segoutL[10]~output_o\;

ww_segoutL(11) <= \segoutL[11]~output_o\;

ww_segoutL(12) <= \segoutL[12]~output_o\;

ww_segoutL(13) <= \segoutL[13]~output_o\;

ww_segoutM(0) <= \segoutM[0]~output_o\;

ww_segoutM(1) <= \segoutM[1]~output_o\;

ww_segoutM(2) <= \segoutM[2]~output_o\;

ww_segoutM(3) <= \segoutM[3]~output_o\;

ww_segoutM(4) <= \segoutM[4]~output_o\;

ww_segoutM(5) <= \segoutM[5]~output_o\;

ww_segoutM(6) <= \segoutM[6]~output_o\;

ww_segoutM(7) <= \segoutM[7]~output_o\;

ww_segoutM(8) <= \segoutM[8]~output_o\;

ww_segoutM(9) <= \segoutM[9]~output_o\;

ww_segoutM(10) <= \segoutM[10]~output_o\;

ww_segoutM(11) <= \segoutM[11]~output_o\;

ww_segoutM(12) <= \segoutM[12]~output_o\;

ww_segoutM(13) <= \segoutM[13]~output_o\;

ww_segoutR(0) <= \segoutR[0]~output_o\;

ww_segoutR(1) <= \segoutR[1]~output_o\;

ww_segoutR(2) <= \segoutR[2]~output_o\;

ww_segoutR(3) <= \segoutR[3]~output_o\;

ww_segoutR(4) <= \segoutR[4]~output_o\;

ww_segoutR(5) <= \segoutR[5]~output_o\;

ww_segoutR(6) <= \segoutR[6]~output_o\;

ww_segoutR(7) <= \segoutR[7]~output_o\;

ww_segoutR(8) <= \segoutR[8]~output_o\;

ww_segoutR(9) <= \segoutR[9]~output_o\;

ww_segoutR(10) <= \segoutR[10]~output_o\;

ww_segoutR(11) <= \segoutR[11]~output_o\;

ww_segoutR(12) <= \segoutR[12]~output_o\;

ww_segoutR(13) <= \segoutR[13]~output_o\;

ww_segoutR(14) <= \segoutR[14]~output_o\;

ww_segoutR(15) <= \segoutR[15]~output_o\;

ww_segoutR(16) <= \segoutR[16]~output_o\;

ww_segoutR(17) <= \segoutR[17]~output_o\;

ww_segoutR(18) <= \segoutR[18]~output_o\;

ww_segoutR(19) <= \segoutR[19]~output_o\;

ww_segoutR(20) <= \segoutR[20]~output_o\;

ww_segoutR(21) <= \segoutR[21]~output_o\;

ww_segoutR(22) <= \segoutR[22]~output_o\;

ww_segoutR(23) <= \segoutR[23]~output_o\;

ww_segoutR(24) <= \segoutR[24]~output_o\;

ww_segoutR(25) <= \segoutR[25]~output_o\;

ww_segoutR(26) <= \segoutR[26]~output_o\;

ww_segoutR(27) <= \segoutR[27]~output_o\;

dio_sram(0) <= \dio_sram[0]~output_o\;

dio_sram(1) <= \dio_sram[1]~output_o\;

dio_sram(2) <= \dio_sram[2]~output_o\;

dio_sram(3) <= \dio_sram[3]~output_o\;

dio_sram(4) <= \dio_sram[4]~output_o\;

dio_sram(5) <= \dio_sram[5]~output_o\;

dio_sram(6) <= \dio_sram[6]~output_o\;

dio_sram(7) <= \dio_sram[7]~output_o\;

dio_sram(8) <= \dio_sram[8]~output_o\;

dio_sram(9) <= \dio_sram[9]~output_o\;

dio_sram(10) <= \dio_sram[10]~output_o\;

dio_sram(11) <= \dio_sram[11]~output_o\;

dio_sram(12) <= \dio_sram[12]~output_o\;

dio_sram(13) <= \dio_sram[13]~output_o\;

dio_sram(14) <= \dio_sram[14]~output_o\;

dio_sram(15) <= \dio_sram[15]~output_o\;

dio_lcd(0) <= \dio_lcd[0]~output_o\;

dio_lcd(1) <= \dio_lcd[1]~output_o\;

dio_lcd(2) <= \dio_lcd[2]~output_o\;

dio_lcd(3) <= \dio_lcd[3]~output_o\;

dio_lcd(4) <= \dio_lcd[4]~output_o\;

dio_lcd(5) <= \dio_lcd[5]~output_o\;

dio_lcd(6) <= \dio_lcd[6]~output_o\;

dio_lcd(7) <= \dio_lcd[7]~output_o\;
END structure;


