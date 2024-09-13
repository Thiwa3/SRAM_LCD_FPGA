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

-- DATE "09/13/2024 17:53:15"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

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
-- psw[3]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- tsw[16]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- tsw[17]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- psw[0]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- psw[2]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- psw[1]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \B|itnram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \B|itnram|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \B|itnram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \pll1|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \pll1|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \C|comb~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \B|comb~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \psw[3]~input_o\ : std_logic;
SIGNAL \dio_lcd[0]~input_o\ : std_logic;
SIGNAL \dio_lcd[1]~input_o\ : std_logic;
SIGNAL \dio_lcd[2]~input_o\ : std_logic;
SIGNAL \dio_lcd[3]~input_o\ : std_logic;
SIGNAL \dio_lcd[4]~input_o\ : std_logic;
SIGNAL \dio_lcd[5]~input_o\ : std_logic;
SIGNAL \dio_lcd[6]~input_o\ : std_logic;
SIGNAL \dio_lcd[7]~input_o\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DCLK~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_nCEO~~padout\ : std_logic;
SIGNAL \~ALTERA_DCLK~~obuf_o\ : std_logic;
SIGNAL \~ALTERA_nCEO~~obuf_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \pll1|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \tsw[8]~input_o\ : std_logic;
SIGNAL \C|mc1|state.idle~feeder_combout\ : std_logic;
SIGNAL \tsw[16]~input_o\ : std_logic;
SIGNAL \psw[0]~input_o\ : std_logic;
SIGNAL \psw[1]~input_o\ : std_logic;
SIGNAL \C|comb~0_combout\ : std_logic;
SIGNAL \C|comb~0clkctrl_outclk\ : std_logic;
SIGNAL \C|mc1|state.idle~q\ : std_logic;
SIGNAL \C|mc1|state.w4~feeder_combout\ : std_logic;
SIGNAL \C|mc1|state.w4~q\ : std_logic;
SIGNAL \C|mc1|state.r4~feeder_combout\ : std_logic;
SIGNAL \C|mc1|state.r4~q\ : std_logic;
SIGNAL \C|mc1|state.w5~feeder_combout\ : std_logic;
SIGNAL \C|mc1|state.w5~q\ : std_logic;
SIGNAL \C|mc1|addr_reg[0]~14_combout\ : std_logic;
SIGNAL \C|mc1|Selector29~2_combout\ : std_logic;
SIGNAL \tsw[17]~input_o\ : std_logic;
SIGNAL \C|mc1|state.r5~q\ : std_logic;
SIGNAL \C|mc1|addr_reg[0]~16_combout\ : std_logic;
SIGNAL \C|mc1|Add1~0_combout\ : std_logic;
SIGNAL \C|mc1|Add0~0_combout\ : std_logic;
SIGNAL \C|mc1|Selector32~0_combout\ : std_logic;
SIGNAL \C|mc1|Selector29~5_combout\ : std_logic;
SIGNAL \C|mc1|addr_reg[0]~17_combout\ : std_logic;
SIGNAL \C|mc1|addr_reg[0]~15_combout\ : std_logic;
SIGNAL \C|mc1|addr_reg[0]~18_combout\ : std_logic;
SIGNAL \C|mc1|Selector32~1_combout\ : std_logic;
SIGNAL \C|mc1|state.finished~0_combout\ : std_logic;
SIGNAL \C|mc1|state.finished~q\ : std_logic;
SIGNAL \C|mc1|addr_next~0_combout\ : std_logic;
SIGNAL \C|mc1|Add1~1\ : std_logic;
SIGNAL \C|mc1|Add1~2_combout\ : std_logic;
SIGNAL \C|mc1|Add0~1\ : std_logic;
SIGNAL \C|mc1|Add0~2_combout\ : std_logic;
SIGNAL \C|mc1|Selector31~2_combout\ : std_logic;
SIGNAL \C|mc1|Selector31~3_combout\ : std_logic;
SIGNAL \C|mc1|Add1~3\ : std_logic;
SIGNAL \C|mc1|Add1~4_combout\ : std_logic;
SIGNAL \C|mc1|Add0~3\ : std_logic;
SIGNAL \C|mc1|Add0~4_combout\ : std_logic;
SIGNAL \C|mc1|Selector30~0_combout\ : std_logic;
SIGNAL \C|mc1|Selector30~1_combout\ : std_logic;
SIGNAL \C|mc1|Add0~5\ : std_logic;
SIGNAL \C|mc1|Add0~6_combout\ : std_logic;
SIGNAL \C|mc1|Add1~5\ : std_logic;
SIGNAL \C|mc1|Add1~6_combout\ : std_logic;
SIGNAL \C|mc1|Selector29~3_combout\ : std_logic;
SIGNAL \C|mc1|Selector29~4_combout\ : std_logic;
SIGNAL \C|mc1|Add0~7\ : std_logic;
SIGNAL \C|mc1|Add0~8_combout\ : std_logic;
SIGNAL \C|mc1|Add1~7\ : std_logic;
SIGNAL \C|mc1|Add1~8_combout\ : std_logic;
SIGNAL \C|mc1|Selector28~0_combout\ : std_logic;
SIGNAL \C|mc1|Selector28~1_combout\ : std_logic;
SIGNAL \C|mc1|Add1~9\ : std_logic;
SIGNAL \C|mc1|Add1~10_combout\ : std_logic;
SIGNAL \C|mc1|Add0~9\ : std_logic;
SIGNAL \C|mc1|Add0~10_combout\ : std_logic;
SIGNAL \C|mc1|Selector27~0_combout\ : std_logic;
SIGNAL \C|mc1|Selector27~1_combout\ : std_logic;
SIGNAL \C|mc1|Add1~11\ : std_logic;
SIGNAL \C|mc1|Add1~13\ : std_logic;
SIGNAL \C|mc1|Add1~14_combout\ : std_logic;
SIGNAL \C|mc1|Add0~11\ : std_logic;
SIGNAL \C|mc1|Add0~13\ : std_logic;
SIGNAL \C|mc1|Add0~14_combout\ : std_logic;
SIGNAL \C|mc1|Selector25~2_combout\ : std_logic;
SIGNAL \C|mc1|Selector25~3_combout\ : std_logic;
SIGNAL \C|mc1|Add0~15\ : std_logic;
SIGNAL \C|mc1|Add0~16_combout\ : std_logic;
SIGNAL \C|mc1|addr_reg[8]~0_combout\ : std_logic;
SIGNAL \C|mc1|Add1~15\ : std_logic;
SIGNAL \C|mc1|Add1~16_combout\ : std_logic;
SIGNAL \C|mc1|addr_reg[19]~19_combout\ : std_logic;
SIGNAL \C|mc1|Add0~17\ : std_logic;
SIGNAL \C|mc1|Add0~18_combout\ : std_logic;
SIGNAL \C|mc1|addr_reg[9]~1_combout\ : std_logic;
SIGNAL \C|mc1|Add1~17\ : std_logic;
SIGNAL \C|mc1|Add1~18_combout\ : std_logic;
SIGNAL \C|mc1|Add0~19\ : std_logic;
SIGNAL \C|mc1|Add0~20_combout\ : std_logic;
SIGNAL \C|mc1|addr_reg[10]~2_combout\ : std_logic;
SIGNAL \C|mc1|Add1~19\ : std_logic;
SIGNAL \C|mc1|Add1~20_combout\ : std_logic;
SIGNAL \C|mc1|Add0~21\ : std_logic;
SIGNAL \C|mc1|Add0~22_combout\ : std_logic;
SIGNAL \C|mc1|addr_reg[11]~3_combout\ : std_logic;
SIGNAL \C|mc1|Add1~21\ : std_logic;
SIGNAL \C|mc1|Add1~22_combout\ : std_logic;
SIGNAL \C|mc1|Add0~23\ : std_logic;
SIGNAL \C|mc1|Add0~24_combout\ : std_logic;
SIGNAL \C|mc1|addr_reg[12]~4_combout\ : std_logic;
SIGNAL \C|mc1|Add1~23\ : std_logic;
SIGNAL \C|mc1|Add1~24_combout\ : std_logic;
SIGNAL \C|mc1|Add0~25\ : std_logic;
SIGNAL \C|mc1|Add0~26_combout\ : std_logic;
SIGNAL \C|mc1|addr_reg[13]~5_combout\ : std_logic;
SIGNAL \C|mc1|Add1~25\ : std_logic;
SIGNAL \C|mc1|Add1~26_combout\ : std_logic;
SIGNAL \C|mc1|LessThan0~2_combout\ : std_logic;
SIGNAL \C|mc1|Add0~27\ : std_logic;
SIGNAL \C|mc1|Add0~28_combout\ : std_logic;
SIGNAL \C|mc1|addr_reg[14]~6_combout\ : std_logic;
SIGNAL \C|mc1|Add1~27\ : std_logic;
SIGNAL \C|mc1|Add1~28_combout\ : std_logic;
SIGNAL \C|mc1|LessThan0~3_combout\ : std_logic;
SIGNAL \C|mc1|Add0~29\ : std_logic;
SIGNAL \C|mc1|Add0~30_combout\ : std_logic;
SIGNAL \C|mc1|addr_reg[15]~7_combout\ : std_logic;
SIGNAL \C|mc1|Add1~29\ : std_logic;
SIGNAL \C|mc1|Add1~30_combout\ : std_logic;
SIGNAL \C|mc1|Add0~31\ : std_logic;
SIGNAL \C|mc1|Add0~32_combout\ : std_logic;
SIGNAL \C|mc1|addr_reg[16]~8_combout\ : std_logic;
SIGNAL \C|mc1|Add1~31\ : std_logic;
SIGNAL \C|mc1|Add1~32_combout\ : std_logic;
SIGNAL \C|mc1|Add0~33\ : std_logic;
SIGNAL \C|mc1|Add0~34_combout\ : std_logic;
SIGNAL \C|mc1|addr_reg[17]~9_combout\ : std_logic;
SIGNAL \C|mc1|Add1~33\ : std_logic;
SIGNAL \C|mc1|Add1~34_combout\ : std_logic;
SIGNAL \C|mc1|Add0~35\ : std_logic;
SIGNAL \C|mc1|Add0~36_combout\ : std_logic;
SIGNAL \C|mc1|addr_reg[18]~10_combout\ : std_logic;
SIGNAL \C|mc1|Add1~35\ : std_logic;
SIGNAL \C|mc1|Add1~36_combout\ : std_logic;
SIGNAL \C|mc1|LessThan1~2_combout\ : std_logic;
SIGNAL \C|mc1|Add0~37\ : std_logic;
SIGNAL \C|mc1|Add0~38_combout\ : std_logic;
SIGNAL \C|mc1|addr_reg[19]~11_combout\ : std_logic;
SIGNAL \C|mc1|Add1~37\ : std_logic;
SIGNAL \C|mc1|Add1~38_combout\ : std_logic;
SIGNAL \C|mc1|LessThan1~3_combout\ : std_logic;
SIGNAL \C|mc1|LessThan1~0_combout\ : std_logic;
SIGNAL \C|mc1|LessThan1~1_combout\ : std_logic;
SIGNAL \C|mc1|LessThan1~4_combout\ : std_logic;
SIGNAL \C|mc1|Add0~12_combout\ : std_logic;
SIGNAL \C|mc1|Add1~12_combout\ : std_logic;
SIGNAL \C|mc1|Selector26~2_combout\ : std_logic;
SIGNAL \C|mc1|Selector26~3_combout\ : std_logic;
SIGNAL \C|mc1|LessThan0~0_combout\ : std_logic;
SIGNAL \C|mc1|LessThan0~1_combout\ : std_logic;
SIGNAL \C|mc1|LessThan0~4_combout\ : std_logic;
SIGNAL \C|mc1|LessThan0~5_combout\ : std_logic;
SIGNAL \C|mc1|LessThan0~6_combout\ : std_logic;
SIGNAL \C|mc1|LessThan0~7_combout\ : std_logic;
SIGNAL \C|mc1|LessThan0~8_combout\ : std_logic;
SIGNAL \C|mc1|LessThan0~9_combout\ : std_logic;
SIGNAL \C|mc1|Selector0~0_combout\ : std_logic;
SIGNAL \C|mc1|state.w1~q\ : std_logic;
SIGNAL \C|mc1|state.r1~q\ : std_logic;
SIGNAL \C|mc1|state.w2~q\ : std_logic;
SIGNAL \C|mc1|state.r2~q\ : std_logic;
SIGNAL \C|mc1|state.w3~q\ : std_logic;
SIGNAL \C|mc1|Selector5~0_combout\ : std_logic;
SIGNAL \C|mc1|state.r3~q\ : std_logic;
SIGNAL \C|mc1|Selector33~0_combout\ : std_logic;
SIGNAL \C|mc1|Selector33~1_combout\ : std_logic;
SIGNAL \C|mc1|Selector33~2_combout\ : std_logic;
SIGNAL \C|mc1|Selector33~3_combout\ : std_logic;
SIGNAL \C|mc1|data_b_reg~q\ : std_logic;
SIGNAL \data_write[0]~0_combout\ : std_logic;
SIGNAL \C|mc1|Selector11~2_combout\ : std_logic;
SIGNAL \C|mc1|Selector11~3_combout\ : std_logic;
SIGNAL \C|mc1|Selector11~0_combout\ : std_logic;
SIGNAL \C|mc1|Selector11~1_combout\ : std_logic;
SIGNAL \C|mc1|Selector11~4_combout\ : std_logic;
SIGNAL \C|mc1|rw_reg~q\ : std_logic;
SIGNAL \psw[2]~input_o\ : std_logic;
SIGNAL \B|ctl|data_write_reg[15]~0_combout\ : std_logic;
SIGNAL \B|ctl|nextstate.re~0_combout\ : std_logic;
SIGNAL \B|ctl|tri_reg~q\ : std_logic;
SIGNAL \tsw[9]~input_o\ : std_logic;
SIGNAL \data_write[1]~1_combout\ : std_logic;
SIGNAL \tsw[10]~input_o\ : std_logic;
SIGNAL \data_write[2]~2_combout\ : std_logic;
SIGNAL \tsw[11]~input_o\ : std_logic;
SIGNAL \data_write[3]~3_combout\ : std_logic;
SIGNAL \tsw[12]~input_o\ : std_logic;
SIGNAL \data_write[4]~4_combout\ : std_logic;
SIGNAL \tsw[13]~input_o\ : std_logic;
SIGNAL \data_write[5]~5_combout\ : std_logic;
SIGNAL \tsw[14]~input_o\ : std_logic;
SIGNAL \data_write[6]~6_combout\ : std_logic;
SIGNAL \tsw[15]~input_o\ : std_logic;
SIGNAL \data_write[7]~7_combout\ : std_logic;
SIGNAL \data_write[11]~8_combout\ : std_logic;
SIGNAL \B|ctl|data_write_reg[9]~feeder_combout\ : std_logic;
SIGNAL \B|ctl|data_write_reg[10]~feeder_combout\ : std_logic;
SIGNAL \B|ctl|data_write_reg[11]~feeder_combout\ : std_logic;
SIGNAL \B|ctl|data_write_reg[12]~feeder_combout\ : std_logic;
SIGNAL \B|ctl|data_write_reg[14]~feeder_combout\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \A|lc1|LessThan9~8_combout\ : std_logic;
SIGNAL \A|lc1|Add0~0_combout\ : std_logic;
SIGNAL \A|lc1|Selector32~0_combout\ : std_logic;
SIGNAL \A|lc1|Add0~1\ : std_logic;
SIGNAL \A|lc1|Add0~2_combout\ : std_logic;
SIGNAL \A|lc1|Selector31~0_combout\ : std_logic;
SIGNAL \A|lc1|Add0~3\ : std_logic;
SIGNAL \A|lc1|Add0~4_combout\ : std_logic;
SIGNAL \A|lc1|Selector30~0_combout\ : std_logic;
SIGNAL \A|lc1|Add0~5\ : std_logic;
SIGNAL \A|lc1|Add0~6_combout\ : std_logic;
SIGNAL \A|lc1|Selector29~0_combout\ : std_logic;
SIGNAL \A|lc1|Add0~7\ : std_logic;
SIGNAL \A|lc1|Add0~8_combout\ : std_logic;
SIGNAL \A|lc1|Selector28~0_combout\ : std_logic;
SIGNAL \A|lc1|Add0~9\ : std_logic;
SIGNAL \A|lc1|Add0~10_combout\ : std_logic;
SIGNAL \A|lc1|Selector27~0_combout\ : std_logic;
SIGNAL \A|lc1|Add0~11\ : std_logic;
SIGNAL \A|lc1|Add0~12_combout\ : std_logic;
SIGNAL \A|lc1|Selector26~0_combout\ : std_logic;
SIGNAL \A|lc1|Add0~13\ : std_logic;
SIGNAL \A|lc1|Add0~14_combout\ : std_logic;
SIGNAL \A|lc1|Selector25~0_combout\ : std_logic;
SIGNAL \A|lc1|Add0~15\ : std_logic;
SIGNAL \A|lc1|Add0~16_combout\ : std_logic;
SIGNAL \A|lc1|Selector24~0_combout\ : std_logic;
SIGNAL \A|lc1|Add0~17\ : std_logic;
SIGNAL \A|lc1|Add0~18_combout\ : std_logic;
SIGNAL \A|lc1|Selector23~0_combout\ : std_logic;
SIGNAL \A|lc1|Add0~19\ : std_logic;
SIGNAL \A|lc1|Add0~20_combout\ : std_logic;
SIGNAL \A|lc1|Selector22~0_combout\ : std_logic;
SIGNAL \A|lc1|Add0~21\ : std_logic;
SIGNAL \A|lc1|Add0~22_combout\ : std_logic;
SIGNAL \A|lc1|Selector21~0_combout\ : std_logic;
SIGNAL \A|lc1|Add0~23\ : std_logic;
SIGNAL \A|lc1|Add0~24_combout\ : std_logic;
SIGNAL \A|lc1|Selector20~0_combout\ : std_logic;
SIGNAL \A|lc1|Add0~25\ : std_logic;
SIGNAL \A|lc1|Add0~26_combout\ : std_logic;
SIGNAL \A|lc1|Selector19~0_combout\ : std_logic;
SIGNAL \A|lc1|Add0~27\ : std_logic;
SIGNAL \A|lc1|Add0~28_combout\ : std_logic;
SIGNAL \A|lc1|Selector18~0_combout\ : std_logic;
SIGNAL \A|lc1|LessThan0~0_combout\ : std_logic;
SIGNAL \A|lc1|LessThan0~1_combout\ : std_logic;
SIGNAL \A|lc1|LessThan0~2_combout\ : std_logic;
SIGNAL \A|lc1|LessThan0~3_combout\ : std_logic;
SIGNAL \A|lc1|LessThan0~4_combout\ : std_logic;
SIGNAL \A|lc1|LessThan0~5_combout\ : std_logic;
SIGNAL \A|lc1|LessThan9~0_combout\ : std_logic;
SIGNAL \A|lc1|LessThan9~1_combout\ : std_logic;
SIGNAL \A|lc1|LessThan0~6_combout\ : std_logic;
SIGNAL \A|lc1|state~7_combout\ : std_logic;
SIGNAL \A|lc1|state.power~q\ : std_logic;
SIGNAL \A|lc1|Add0~29\ : std_logic;
SIGNAL \A|lc1|Add0~30_combout\ : std_logic;
SIGNAL \A|lc1|busy~7_combout\ : std_logic;
SIGNAL \A|lc1|LessThan5~2_combout\ : std_logic;
SIGNAL \A|lc1|LessThan5~1_combout\ : std_logic;
SIGNAL \A|lc1|LessThan5~0_combout\ : std_logic;
SIGNAL \A|lc1|LessThan5~3_combout\ : std_logic;
SIGNAL \A|lc1|LessThan8~2_combout\ : std_logic;
SIGNAL \A|lc1|LessThan8~1_combout\ : std_logic;
SIGNAL \A|lc1|LessThan8~0_combout\ : std_logic;
SIGNAL \A|lc1|LessThan8~3_combout\ : std_logic;
SIGNAL \A|lc1|LessThan8~4_combout\ : std_logic;
SIGNAL \A|lc1|LessThan8~5_combout\ : std_logic;
SIGNAL \A|lc1|LessThan1~0_combout\ : std_logic;
SIGNAL \A|lc1|LessThan1~1_combout\ : std_logic;
SIGNAL \A|lc1|LessThan7~2_combout\ : std_logic;
SIGNAL \A|lc1|LessThan7~4_combout\ : std_logic;
SIGNAL \A|lc1|LessThan7~3_combout\ : std_logic;
SIGNAL \A|lc1|busy~4_combout\ : std_logic;
SIGNAL \A|lc1|busy~5_combout\ : std_logic;
SIGNAL \A|lc1|busy~6_combout\ : std_logic;
SIGNAL \A|lc1|busy~8_combout\ : std_logic;
SIGNAL \A|lc1|LessThan3~0_combout\ : std_logic;
SIGNAL \A|lc1|LessThan3~1_combout\ : std_logic;
SIGNAL \A|lc1|LessThan5~4_combout\ : std_logic;
SIGNAL \A|lc1|LessThan5~5_combout\ : std_logic;
SIGNAL \A|lc1|LessThan3~2_combout\ : std_logic;
SIGNAL \A|lc1|Selector34~0_combout\ : std_logic;
SIGNAL \A|lc1|Selector34~1_combout\ : std_logic;
SIGNAL \A|lc1|LessThan4~0_combout\ : std_logic;
SIGNAL \A|lc1|LessThan4~1_combout\ : std_logic;
SIGNAL \A|lc1|LessThan4~2_combout\ : std_logic;
SIGNAL \A|lc1|LessThan6~0_combout\ : std_logic;
SIGNAL \A|lc1|LessThan1~2_combout\ : std_logic;
SIGNAL \A|lc1|LessThan2~0_combout\ : std_logic;
SIGNAL \A|lc1|LessThan2~1_combout\ : std_logic;
SIGNAL \A|lc1|LessThan2~2_combout\ : std_logic;
SIGNAL \A|lc1|LessThan5~6_combout\ : std_logic;
SIGNAL \A|lc1|LessThan5~7_combout\ : std_logic;
SIGNAL \A|lc1|LessThan5~8_combout\ : std_logic;
SIGNAL \A|lc1|LessThan5~9_combout\ : std_logic;
SIGNAL \A|lc1|count[13]~2_combout\ : std_logic;
SIGNAL \A|lc1|count[13]~3_combout\ : std_logic;
SIGNAL \A|lc1|count[13]~4_combout\ : std_logic;
SIGNAL \A|lc1|count[13]~5_combout\ : std_logic;
SIGNAL \A|lc1|Selector17~0_combout\ : std_logic;
SIGNAL \A|lc1|Add0~31\ : std_logic;
SIGNAL \A|lc1|Add0~32_combout\ : std_logic;
SIGNAL \A|lc1|Selector16~0_combout\ : std_logic;
SIGNAL \A|lc1|Add0~33\ : std_logic;
SIGNAL \A|lc1|Add0~34_combout\ : std_logic;
SIGNAL \A|lc1|Selector15~0_combout\ : std_logic;
SIGNAL \A|lc1|Add0~35\ : std_logic;
SIGNAL \A|lc1|Add0~36_combout\ : std_logic;
SIGNAL \A|lc1|Selector14~0_combout\ : std_logic;
SIGNAL \A|lc1|Add0~37\ : std_logic;
SIGNAL \A|lc1|Add0~38_combout\ : std_logic;
SIGNAL \A|lc1|Selector13~0_combout\ : std_logic;
SIGNAL \A|lc1|Add0~39\ : std_logic;
SIGNAL \A|lc1|Add0~40_combout\ : std_logic;
SIGNAL \A|lc1|Selector12~0_combout\ : std_logic;
SIGNAL \A|lc1|Add0~41\ : std_logic;
SIGNAL \A|lc1|Add0~42_combout\ : std_logic;
SIGNAL \A|lc1|Selector11~0_combout\ : std_logic;
SIGNAL \A|lc1|Add0~43\ : std_logic;
SIGNAL \A|lc1|Add0~44_combout\ : std_logic;
SIGNAL \A|lc1|Selector10~0_combout\ : std_logic;
SIGNAL \A|lc1|Add0~45\ : std_logic;
SIGNAL \A|lc1|Add0~46_combout\ : std_logic;
SIGNAL \A|lc1|Selector9~0_combout\ : std_logic;
SIGNAL \A|lc1|Add0~47\ : std_logic;
SIGNAL \A|lc1|Add0~48_combout\ : std_logic;
SIGNAL \A|lc1|Selector8~0_combout\ : std_logic;
SIGNAL \A|lc1|Add0~49\ : std_logic;
SIGNAL \A|lc1|Add0~50_combout\ : std_logic;
SIGNAL \A|lc1|Selector7~0_combout\ : std_logic;
SIGNAL \A|lc1|Add0~51\ : std_logic;
SIGNAL \A|lc1|Add0~52_combout\ : std_logic;
SIGNAL \A|lc1|Selector6~0_combout\ : std_logic;
SIGNAL \A|lc1|Add0~53\ : std_logic;
SIGNAL \A|lc1|Add0~54_combout\ : std_logic;
SIGNAL \A|lc1|Selector5~0_combout\ : std_logic;
SIGNAL \A|lc1|Add0~55\ : std_logic;
SIGNAL \A|lc1|Add0~56_combout\ : std_logic;
SIGNAL \A|lc1|Selector4~0_combout\ : std_logic;
SIGNAL \A|lc1|Add0~57\ : std_logic;
SIGNAL \A|lc1|Add0~58_combout\ : std_logic;
SIGNAL \A|lc1|Selector3~0_combout\ : std_logic;
SIGNAL \A|lc1|Add0~59\ : std_logic;
SIGNAL \A|lc1|Add0~60_combout\ : std_logic;
SIGNAL \A|lc1|Selector2~0_combout\ : std_logic;
SIGNAL \A|lc1|Add0~61\ : std_logic;
SIGNAL \A|lc1|Add0~62_combout\ : std_logic;
SIGNAL \A|lc1|Selector1~0_combout\ : std_logic;
SIGNAL \A|lc1|LessThan9~2_combout\ : std_logic;
SIGNAL \A|lc1|LessThan9~3_combout\ : std_logic;
SIGNAL \A|lc1|LessThan9~4_combout\ : std_logic;
SIGNAL \A|lc1|LessThan9~5_combout\ : std_logic;
SIGNAL \A|lc1|LessThan9~6_combout\ : std_logic;
SIGNAL \A|lc1|LessThan9~7_combout\ : std_logic;
SIGNAL \A|lc1|Selector34~2_combout\ : std_logic;
SIGNAL \A|df1|q[0]~63_combout\ : std_logic;
SIGNAL \A|df1|q[1]~21_combout\ : std_logic;
SIGNAL \A|df1|q[1]~22\ : std_logic;
SIGNAL \A|df1|q[2]~23_combout\ : std_logic;
SIGNAL \A|df1|q[2]~24\ : std_logic;
SIGNAL \A|df1|q[3]~25_combout\ : std_logic;
SIGNAL \A|df1|q[3]~26\ : std_logic;
SIGNAL \A|df1|q[4]~27_combout\ : std_logic;
SIGNAL \A|df1|q[4]~28\ : std_logic;
SIGNAL \A|df1|q[5]~29_combout\ : std_logic;
SIGNAL \A|df1|q[5]~30\ : std_logic;
SIGNAL \A|df1|q[6]~31_combout\ : std_logic;
SIGNAL \A|df1|q[6]~32\ : std_logic;
SIGNAL \A|df1|q[7]~33_combout\ : std_logic;
SIGNAL \A|df1|q[7]~34\ : std_logic;
SIGNAL \A|df1|q[8]~35_combout\ : std_logic;
SIGNAL \A|df1|q[8]~36\ : std_logic;
SIGNAL \A|df1|q[9]~37_combout\ : std_logic;
SIGNAL \A|df1|q[9]~38\ : std_logic;
SIGNAL \A|df1|q[10]~39_combout\ : std_logic;
SIGNAL \A|df1|q[10]~40\ : std_logic;
SIGNAL \A|df1|q[11]~41_combout\ : std_logic;
SIGNAL \A|df1|q[11]~42\ : std_logic;
SIGNAL \A|df1|q[12]~43_combout\ : std_logic;
SIGNAL \A|df1|q[12]~44\ : std_logic;
SIGNAL \A|df1|q[13]~45_combout\ : std_logic;
SIGNAL \A|df1|q[13]~46\ : std_logic;
SIGNAL \A|df1|q[14]~47_combout\ : std_logic;
SIGNAL \A|df1|q[14]~48\ : std_logic;
SIGNAL \A|df1|q[15]~49_combout\ : std_logic;
SIGNAL \A|df1|q[15]~50\ : std_logic;
SIGNAL \A|df1|q[16]~51_combout\ : std_logic;
SIGNAL \A|df1|q[16]~52\ : std_logic;
SIGNAL \A|df1|q[17]~53_combout\ : std_logic;
SIGNAL \A|df1|q[17]~54\ : std_logic;
SIGNAL \A|df1|q[18]~55_combout\ : std_logic;
SIGNAL \A|df1|q[18]~56\ : std_logic;
SIGNAL \A|df1|q[19]~57_combout\ : std_logic;
SIGNAL \A|df1|q[19]~58\ : std_logic;
SIGNAL \A|df1|q[20]~59_combout\ : std_logic;
SIGNAL \A|df1|q[20]~60\ : std_logic;
SIGNAL \A|df1|q[21]~61_combout\ : std_logic;
SIGNAL \A|lc1|Selector33~0_combout\ : std_logic;
SIGNAL \A|lc1|state.init~q\ : std_logic;
SIGNAL \A|lc1|Selector34~3_combout\ : std_logic;
SIGNAL \A|lc1|busy~q\ : std_logic;
SIGNAL \A|ul1|data_write[9]~15_combout\ : std_logic;
SIGNAL \A|ul1|Add0~5\ : std_logic;
SIGNAL \A|ul1|Add0~6_combout\ : std_logic;
SIGNAL \A|ul1|Add0~94_combout\ : std_logic;
SIGNAL \A|ul1|count[1]~feeder_combout\ : std_logic;
SIGNAL \A|ul1|Add0~7\ : std_logic;
SIGNAL \A|ul1|Add0~8_combout\ : std_logic;
SIGNAL \A|ul1|Add0~96_combout\ : std_logic;
SIGNAL \A|ul1|count[2]~feeder_combout\ : std_logic;
SIGNAL \A|ul1|Add0~9\ : std_logic;
SIGNAL \A|ul1|Add0~10_combout\ : std_logic;
SIGNAL \A|ul1|Add0~93_combout\ : std_logic;
SIGNAL \A|ul1|Add0~11\ : std_logic;
SIGNAL \A|ul1|Add0~12_combout\ : std_logic;
SIGNAL \A|ul1|Add0~92_combout\ : std_logic;
SIGNAL \A|ul1|count[4]~feeder_combout\ : std_logic;
SIGNAL \A|ul1|Add0~13\ : std_logic;
SIGNAL \A|ul1|Add0~14_combout\ : std_logic;
SIGNAL \A|ul1|Add0~91_combout\ : std_logic;
SIGNAL \A|ul1|Add0~15\ : std_logic;
SIGNAL \A|ul1|Add0~16_combout\ : std_logic;
SIGNAL \A|ul1|Add0~97_combout\ : std_logic;
SIGNAL \A|ul1|LessThan0~1_combout\ : std_logic;
SIGNAL \A|ul1|Add0~17\ : std_logic;
SIGNAL \A|ul1|Add0~18_combout\ : std_logic;
SIGNAL \A|ul1|Add0~58_combout\ : std_logic;
SIGNAL \A|ul1|Add0~19\ : std_logic;
SIGNAL \A|ul1|Add0~20_combout\ : std_logic;
SIGNAL \A|ul1|Add0~22_combout\ : std_logic;
SIGNAL \A|ul1|Add0~21\ : std_logic;
SIGNAL \A|ul1|Add0~23_combout\ : std_logic;
SIGNAL \A|ul1|Add0~57_combout\ : std_logic;
SIGNAL \A|ul1|Add0~24\ : std_logic;
SIGNAL \A|ul1|Add0~25_combout\ : std_logic;
SIGNAL \A|ul1|Add0~59_combout\ : std_logic;
SIGNAL \A|ul1|Add0~26\ : std_logic;
SIGNAL \A|ul1|Add0~27_combout\ : std_logic;
SIGNAL \A|ul1|Add0~60_combout\ : std_logic;
SIGNAL \A|ul1|Add0~28\ : std_logic;
SIGNAL \A|ul1|Add0~29_combout\ : std_logic;
SIGNAL \A|ul1|Add0~61_combout\ : std_logic;
SIGNAL \A|ul1|Add0~30\ : std_logic;
SIGNAL \A|ul1|Add0~31_combout\ : std_logic;
SIGNAL \A|ul1|Add0~62_combout\ : std_logic;
SIGNAL \A|ul1|Add0~32\ : std_logic;
SIGNAL \A|ul1|Add0~33_combout\ : std_logic;
SIGNAL \A|ul1|Add0~35_combout\ : std_logic;
SIGNAL \A|ul1|Add0~34\ : std_logic;
SIGNAL \A|ul1|Add0~36_combout\ : std_logic;
SIGNAL \A|ul1|Add0~38_combout\ : std_logic;
SIGNAL \A|ul1|Add0~37\ : std_logic;
SIGNAL \A|ul1|Add0~39_combout\ : std_logic;
SIGNAL \A|ul1|Add0~41_combout\ : std_logic;
SIGNAL \A|ul1|Add0~40\ : std_logic;
SIGNAL \A|ul1|Add0~42_combout\ : std_logic;
SIGNAL \A|ul1|Add0~44_combout\ : std_logic;
SIGNAL \A|ul1|Add0~43\ : std_logic;
SIGNAL \A|ul1|Add0~45_combout\ : std_logic;
SIGNAL \A|ul1|Add0~47_combout\ : std_logic;
SIGNAL \A|ul1|Add0~46\ : std_logic;
SIGNAL \A|ul1|Add0~48_combout\ : std_logic;
SIGNAL \A|ul1|Add0~50_combout\ : std_logic;
SIGNAL \A|ul1|Add0~49\ : std_logic;
SIGNAL \A|ul1|Add0~51_combout\ : std_logic;
SIGNAL \A|ul1|Add0~53_combout\ : std_logic;
SIGNAL \A|ul1|Add0~52\ : std_logic;
SIGNAL \A|ul1|Add0~54_combout\ : std_logic;
SIGNAL \A|ul1|Add0~56_combout\ : std_logic;
SIGNAL \A|ul1|Add0~55\ : std_logic;
SIGNAL \A|ul1|Add0~63_combout\ : std_logic;
SIGNAL \A|ul1|Add0~89_combout\ : std_logic;
SIGNAL \A|ul1|Add0~64\ : std_logic;
SIGNAL \A|ul1|Add0~65_combout\ : std_logic;
SIGNAL \A|ul1|Add0~90_combout\ : std_logic;
SIGNAL \A|ul1|Add0~66\ : std_logic;
SIGNAL \A|ul1|Add0~67_combout\ : std_logic;
SIGNAL \A|ul1|Add0~85_combout\ : std_logic;
SIGNAL \A|ul1|Add0~68\ : std_logic;
SIGNAL \A|ul1|Add0~69_combout\ : std_logic;
SIGNAL \A|ul1|Add0~86_combout\ : std_logic;
SIGNAL \A|ul1|Add0~70\ : std_logic;
SIGNAL \A|ul1|Add0~71_combout\ : std_logic;
SIGNAL \A|ul1|Add0~87_combout\ : std_logic;
SIGNAL \A|ul1|Add0~72\ : std_logic;
SIGNAL \A|ul1|Add0~73_combout\ : std_logic;
SIGNAL \A|ul1|Add0~88_combout\ : std_logic;
SIGNAL \A|ul1|Add0~74\ : std_logic;
SIGNAL \A|ul1|Add0~75_combout\ : std_logic;
SIGNAL \A|ul1|Add0~83_combout\ : std_logic;
SIGNAL \A|ul1|Add0~76\ : std_logic;
SIGNAL \A|ul1|Add0~77_combout\ : std_logic;
SIGNAL \A|ul1|Add0~84_combout\ : std_logic;
SIGNAL \A|ul1|Add0~78\ : std_logic;
SIGNAL \A|ul1|Add0~79_combout\ : std_logic;
SIGNAL \A|ul1|Add0~99_combout\ : std_logic;
SIGNAL \A|ul1|LessThan0~0_combout\ : std_logic;
SIGNAL \A|ul1|LessThan0~2_combout\ : std_logic;
SIGNAL \A|ul1|LessThan0~4_combout\ : std_logic;
SIGNAL \A|ul1|LessThan0~6_combout\ : std_logic;
SIGNAL \A|ul1|LessThan0~5_combout\ : std_logic;
SIGNAL \A|ul1|LessThan0~3_combout\ : std_logic;
SIGNAL \A|ul1|LessThan0~7_combout\ : std_logic;
SIGNAL \A|ul1|LessThan0~8_combout\ : std_logic;
SIGNAL \A|ul1|LessThan0~9_combout\ : std_logic;
SIGNAL \A|ul1|Add0~80\ : std_logic;
SIGNAL \A|ul1|Add0~81_combout\ : std_logic;
SIGNAL \A|ul1|Add0~98_combout\ : std_logic;
SIGNAL \A|ul1|Add0~4_combout\ : std_logic;
SIGNAL \A|ul1|Add0~95_combout\ : std_logic;
SIGNAL \A|ul1|LessThan0~10_combout\ : std_logic;
SIGNAL \A|ul1|Equal0~6_combout\ : std_logic;
SIGNAL \A|ul1|Equal0~7_combout\ : std_logic;
SIGNAL \A|ul1|Equal0~8_combout\ : std_logic;
SIGNAL \A|ul1|Equal0~9_combout\ : std_logic;
SIGNAL \A|ul1|Equal0~1_combout\ : std_logic;
SIGNAL \A|ul1|Equal0~0_combout\ : std_logic;
SIGNAL \A|ul1|Equal0~3_combout\ : std_logic;
SIGNAL \A|ul1|Equal0~2_combout\ : std_logic;
SIGNAL \A|ul1|Equal0~4_combout\ : std_logic;
SIGNAL \A|ul1|Equal0~5_combout\ : std_logic;
SIGNAL \A|ul1|Equal2~0_combout\ : std_logic;
SIGNAL \A|ul1|Equal3~3_combout\ : std_logic;
SIGNAL \A|ul1|Equal2~2_combout\ : std_logic;
SIGNAL \A|ul1|Equal1~0_combout\ : std_logic;
SIGNAL \A|ul1|WideNor0~2_combout\ : std_logic;
SIGNAL \A|ul1|WideNor0~3_combout\ : std_logic;
SIGNAL \A|ul1|Equal35~0_combout\ : std_logic;
SIGNAL \A|ul1|Equal19~0_combout\ : std_logic;
SIGNAL \A|ul1|Equal19~1_combout\ : std_logic;
SIGNAL \A|ul1|Equal2~1_combout\ : std_logic;
SIGNAL \A|ul1|Equal20~0_combout\ : std_logic;
SIGNAL \A|ul1|Equal27~0_combout\ : std_logic;
SIGNAL \A|ul1|Equal5~2_combout\ : std_logic;
SIGNAL \A|ul1|Equal7~3_combout\ : std_logic;
SIGNAL \A|ul1|Selector12~3_combout\ : std_logic;
SIGNAL \A|ul1|Equal7~2_combout\ : std_logic;
SIGNAL \A|ul1|Selector12~4_combout\ : std_logic;
SIGNAL \A|ul1|Equal18~0_combout\ : std_logic;
SIGNAL \A|ul1|Equal22~0_combout\ : std_logic;
SIGNAL \A|ul1|Equal11~0_combout\ : std_logic;
SIGNAL \A|ul1|Equal6~0_combout\ : std_logic;
SIGNAL \A|ul1|Equal8~0_combout\ : std_logic;
SIGNAL \A|ul1|Selector12~2_combout\ : std_logic;
SIGNAL \A|ul1|Selector12~5_combout\ : std_logic;
SIGNAL \A|ul1|Equal33~0_combout\ : std_logic;
SIGNAL \A|ul1|Equal34~0_combout\ : std_logic;
SIGNAL \A|ul1|Equal26~0_combout\ : std_logic;
SIGNAL \A|ul1|Equal17~2_combout\ : std_logic;
SIGNAL \A|ul1|WideNor1~1_combout\ : std_logic;
SIGNAL \A|ul1|WideNor1~2_combout\ : std_logic;
SIGNAL \A|ul1|Equal12~0_combout\ : std_logic;
SIGNAL \A|ul1|Equal28~0_combout\ : std_logic;
SIGNAL \A|ul1|Equal30~0_combout\ : std_logic;
SIGNAL \A|ul1|Selector15~2_combout\ : std_logic;
SIGNAL \A|ul1|WideNor1~0_combout\ : std_logic;
SIGNAL \A|ul1|data_write~53_combout\ : std_logic;
SIGNAL \A|ul1|Equal10~0_combout\ : std_logic;
SIGNAL \A|ul1|Equal10~1_combout\ : std_logic;
SIGNAL \A|ul1|Selector16~0_combout\ : std_logic;
SIGNAL \A|ul1|WideNor1~3_combout\ : std_logic;
SIGNAL \A|ul1|Equal2~3_combout\ : std_logic;
SIGNAL \A|ul1|Equal18~1_combout\ : std_logic;
SIGNAL \A|ul1|Equal3~2_combout\ : std_logic;
SIGNAL \A|ul1|Selector17~0_combout\ : std_logic;
SIGNAL \A|ul1|Equal17~3_combout\ : std_logic;
SIGNAL \A|ul1|Equal21~2_combout\ : std_logic;
SIGNAL \A|ul1|Selector7~2_combout\ : std_logic;
SIGNAL \A|ul1|Equal5~3_combout\ : std_logic;
SIGNAL \A|ul1|Equal4~0_combout\ : std_logic;
SIGNAL \A|ul1|WideNor1~4_combout\ : std_logic;
SIGNAL \A|ul1|WideNor1~5_combout\ : std_logic;
SIGNAL \A|ul1|send_enable~0_combout\ : std_logic;
SIGNAL \A|ul1|send_enable~1_combout\ : std_logic;
SIGNAL \A|ul1|send_enable~2_combout\ : std_logic;
SIGNAL \A|ul1|send_enable~q\ : std_logic;
SIGNAL \A|lc1|Selector35~3_combout\ : std_logic;
SIGNAL \A|lc1|state.send~q\ : std_logic;
SIGNAL \A|lc1|Selector34~4_combout\ : std_logic;
SIGNAL \A|lc1|state.ready~q\ : std_logic;
SIGNAL \A|lc1|Selector44~0_combout\ : std_logic;
SIGNAL \A|lc1|Selector45~1_combout\ : std_logic;
SIGNAL \A|lc1|Selector35~2_combout\ : std_logic;
SIGNAL \A|ul1|Equal9~0_combout\ : std_logic;
SIGNAL \rw~0_combout\ : std_logic;
SIGNAL \A|ul1|Selector17~3_combout\ : std_logic;
SIGNAL \A|ul1|data_write~18_combout\ : std_logic;
SIGNAL \tsw[2]~input_o\ : std_logic;
SIGNAL \addr[2]~2_combout\ : std_logic;
SIGNAL \tsw[3]~input_o\ : std_logic;
SIGNAL \addr[3]~3_combout\ : std_logic;
SIGNAL \tsw[1]~input_o\ : std_logic;
SIGNAL \addr[1]~1_combout\ : std_logic;
SIGNAL \A|ul1|LessThan2~0_combout\ : std_logic;
SIGNAL \tsw[0]~input_o\ : std_logic;
SIGNAL \addr[0]~0_combout\ : std_logic;
SIGNAL \A|ul1|LessThan3~0_combout\ : std_logic;
SIGNAL \A|ul1|LessThan3~1_combout\ : std_logic;
SIGNAL \A|ul1|Equal11~1_combout\ : std_logic;
SIGNAL \A|ul1|Selector17~4_combout\ : std_logic;
SIGNAL \A|ul1|Selector17~5_combout\ : std_logic;
SIGNAL \A|ul1|Selector17~6_combout\ : std_logic;
SIGNAL \A|ul1|Selector11~0_combout\ : std_logic;
SIGNAL \A|ul1|Equal25~0_combout\ : std_logic;
SIGNAL \tsw[5]~input_o\ : std_logic;
SIGNAL \addr[5]~5_combout\ : std_logic;
SIGNAL \tsw[6]~input_o\ : std_logic;
SIGNAL \addr[6]~6_combout\ : std_logic;
SIGNAL \tsw[4]~input_o\ : std_logic;
SIGNAL \addr[4]~4_combout\ : std_logic;
SIGNAL \tsw[7]~input_o\ : std_logic;
SIGNAL \addr[7]~7_combout\ : std_logic;
SIGNAL \A|ul1|data_write~17_combout\ : std_logic;
SIGNAL \A|ul1|Selector17~2_combout\ : std_logic;
SIGNAL \A|ul1|Selector17~7_combout\ : std_logic;
SIGNAL \C|mc1|Selector12~0_combout\ : std_logic;
SIGNAL \C|mc1|fin_reg~q\ : std_logic;
SIGNAL \A|ul1|Selector8~3_combout\ : std_logic;
SIGNAL \A|ul1|Selector8~4_combout\ : std_logic;
SIGNAL \A|ul1|Equal24~0_combout\ : std_logic;
SIGNAL \A|ul1|Selector8~8_combout\ : std_logic;
SIGNAL \A|ul1|Selector8~5_combout\ : std_logic;
SIGNAL \dio_sram[4]~input_o\ : std_logic;
SIGNAL \B|comb~0_combout\ : std_logic;
SIGNAL \B|comb~0clkctrl_outclk\ : std_logic;
SIGNAL \B|data_display[4]~4_combout\ : std_logic;
SIGNAL \dio_sram[6]~input_o\ : std_logic;
SIGNAL \B|data_display[6]~6_combout\ : std_logic;
SIGNAL \dio_sram[5]~input_o\ : std_logic;
SIGNAL \B|data_display[5]~5_combout\ : std_logic;
SIGNAL \dio_sram[7]~input_o\ : std_logic;
SIGNAL \B|data_display[7]~7_combout\ : std_logic;
SIGNAL \C|oa1|fail_buf~1_combout\ : std_logic;
SIGNAL \dio_sram[2]~input_o\ : std_logic;
SIGNAL \B|data_display[2]~2_combout\ : std_logic;
SIGNAL \dio_sram[3]~input_o\ : std_logic;
SIGNAL \B|data_display[3]~3_combout\ : std_logic;
SIGNAL \C|mc1|ready_reg~q\ : std_logic;
SIGNAL \C|oa1|current_state~0_combout\ : std_logic;
SIGNAL \C|oa1|current_state~q\ : std_logic;
SIGNAL \dio_sram[0]~input_o\ : std_logic;
SIGNAL \B|data_display[0]~0_combout\ : std_logic;
SIGNAL \dio_sram[1]~input_o\ : std_logic;
SIGNAL \B|data_display[1]~1_combout\ : std_logic;
SIGNAL \C|oa1|fail_buf~0_combout\ : std_logic;
SIGNAL \C|oa1|fail_buf~2_combout\ : std_logic;
SIGNAL \dio_sram[10]~input_o\ : std_logic;
SIGNAL \B|data_display[10]~10_combout\ : std_logic;
SIGNAL \dio_sram[11]~input_o\ : std_logic;
SIGNAL \B|data_display[11]~11_combout\ : std_logic;
SIGNAL \dio_sram[8]~input_o\ : std_logic;
SIGNAL \dio_sram[9]~input_o\ : std_logic;
SIGNAL \B|data_display[9]~9_combout\ : std_logic;
SIGNAL \C|oa1|fail_buf~3_combout\ : std_logic;
SIGNAL \dio_sram[12]~input_o\ : std_logic;
SIGNAL \B|data_display[12]~12_combout\ : std_logic;
SIGNAL \dio_sram[13]~input_o\ : std_logic;
SIGNAL \B|data_display[13]~13_combout\ : std_logic;
SIGNAL \dio_sram[15]~input_o\ : std_logic;
SIGNAL \B|data_display[15]~15_combout\ : std_logic;
SIGNAL \dio_sram[14]~input_o\ : std_logic;
SIGNAL \B|data_display[14]~14_combout\ : std_logic;
SIGNAL \C|oa1|fail_buf~4_combout\ : std_logic;
SIGNAL \C|oa1|fail_buf~5_combout\ : std_logic;
SIGNAL \C|oa1|fail_buf~10_combout\ : std_logic;
SIGNAL \B|data_display[8]~8_combout\ : std_logic;
SIGNAL \C|oa1|fail_buf~9_combout\ : std_logic;
SIGNAL \C|oa1|fail_buf~7_combout\ : std_logic;
SIGNAL \C|oa1|fail_buf~6_combout\ : std_logic;
SIGNAL \C|oa1|fail_buf~8_combout\ : std_logic;
SIGNAL \C|oa1|fail_buf~11_combout\ : std_logic;
SIGNAL \C|oa1|fail_reg~0_combout\ : std_logic;
SIGNAL \C|oa1|fail_reg~q\ : std_logic;
SIGNAL \A|ul1|process_0~0_combout\ : std_logic;
SIGNAL \A|ul1|data_write~16_combout\ : std_logic;
SIGNAL \A|ul1|Equal23~0_combout\ : std_logic;
SIGNAL \A|ul1|Selector8~2_combout\ : std_logic;
SIGNAL \A|ul1|Selector8~6_combout\ : std_logic;
SIGNAL \A|ul1|Selector8~7_combout\ : std_logic;
SIGNAL \A|ul1|Selector17~1_combout\ : std_logic;
SIGNAL \A|ul1|data_write~19_combout\ : std_logic;
SIGNAL \A|lc1|Selector45~0_combout\ : std_logic;
SIGNAL \A|lc1|Selector45~2_combout\ : std_logic;
SIGNAL \A|lc1|state~6_combout\ : std_logic;
SIGNAL \A|lc1|lcd_data[0]~0_combout\ : std_logic;
SIGNAL \A|ul1|Selector7~6_combout\ : std_logic;
SIGNAL \A|ul1|Selector7~3_combout\ : std_logic;
SIGNAL \A|ul1|Selector7~4_combout\ : std_logic;
SIGNAL \A|ul1|Selector7~5_combout\ : std_logic;
SIGNAL \A|ul1|Selector16~6_combout\ : std_logic;
SIGNAL \A|ul1|Selector16~5_combout\ : std_logic;
SIGNAL \A|ul1|LessThan4~0_combout\ : std_logic;
SIGNAL \A|ul1|Selector16~4_combout\ : std_logic;
SIGNAL \A|ul1|Selector16~7_combout\ : std_logic;
SIGNAL \A|ul1|Selector17~8_combout\ : std_logic;
SIGNAL \A|ul1|Selector16~2_combout\ : std_logic;
SIGNAL \A|ul1|Selector16~3_combout\ : std_logic;
SIGNAL \A|ul1|Selector16~8_combout\ : std_logic;
SIGNAL \A|ul1|Selector16~1_combout\ : std_logic;
SIGNAL \A|ul1|data_write~20_combout\ : std_logic;
SIGNAL \A|lc1|Selector44~1_combout\ : std_logic;
SIGNAL \A|lc1|Selector44~2_combout\ : std_logic;
SIGNAL \A|lc1|Selector44~3_combout\ : std_logic;
SIGNAL \A|lc1|Selector44~4_combout\ : std_logic;
SIGNAL \A|ul1|Selector6~8_combout\ : std_logic;
SIGNAL \A|ul1|Selector6~7_combout\ : std_logic;
SIGNAL \A|ul1|Selector6~4_combout\ : std_logic;
SIGNAL \A|ul1|Selector6~5_combout\ : std_logic;
SIGNAL \A|ul1|Selector6~6_combout\ : std_logic;
SIGNAL \A|ul1|Selector15~11_combout\ : std_logic;
SIGNAL \A|ul1|Selector15~8_combout\ : std_logic;
SIGNAL \A|ul1|Selector15~7_combout\ : std_logic;
SIGNAL \A|ul1|Selector15~9_combout\ : std_logic;
SIGNAL \A|ul1|Selector15~10_combout\ : std_logic;
SIGNAL \A|ul1|Selector15~12_combout\ : std_logic;
SIGNAL \A|ul1|Selector15~5_combout\ : std_logic;
SIGNAL \A|ul1|Selector15~6_combout\ : std_logic;
SIGNAL \A|ul1|Selector15~4_combout\ : std_logic;
SIGNAL \A|ul1|Selector15~14_combout\ : std_logic;
SIGNAL \A|ul1|Selector15~13_combout\ : std_logic;
SIGNAL \A|ul1|Selector15~3_combout\ : std_logic;
SIGNAL \A|ul1|data_write~21_combout\ : std_logic;
SIGNAL \A|lc1|Selector43~0_combout\ : std_logic;
SIGNAL \A|lc1|Selector43~1_combout\ : std_logic;
SIGNAL \A|lc1|Selector43~2_combout\ : std_logic;
SIGNAL \A|ul1|data_write~28_combout\ : std_logic;
SIGNAL \A|ul1|data_write~26_combout\ : std_logic;
SIGNAL \A|ul1|LessThan1~0_combout\ : std_logic;
SIGNAL \A|ul1|data_write~27_combout\ : std_logic;
SIGNAL \A|ul1|data_write~25_combout\ : std_logic;
SIGNAL \A|ul1|data_write~29_combout\ : std_logic;
SIGNAL \A|ul1|data_write~30_combout\ : std_logic;
SIGNAL \A|ul1|data_write~31_combout\ : std_logic;
SIGNAL \A|ul1|data_write~23_combout\ : std_logic;
SIGNAL \A|ul1|data_write~51_combout\ : std_logic;
SIGNAL \A|ul1|data_write~52_combout\ : std_logic;
SIGNAL \A|ul1|data_write~24_combout\ : std_logic;
SIGNAL \A|ul1|data_write~22_combout\ : std_logic;
SIGNAL \A|ul1|data_write~32_combout\ : std_logic;
SIGNAL \A|lc1|Selector42~2_combout\ : std_logic;
SIGNAL \A|lc1|Selector42~3_combout\ : std_logic;
SIGNAL \A|lc1|Selector42~4_combout\ : std_logic;
SIGNAL \A|ul1|data_write~35_combout\ : std_logic;
SIGNAL \A|ul1|data_write~36_combout\ : std_logic;
SIGNAL \A|ul1|data_write~37_combout\ : std_logic;
SIGNAL \A|ul1|Selector2~2_combout\ : std_logic;
SIGNAL \A|ul1|data_write~34_combout\ : std_logic;
SIGNAL \A|ul1|data_write~38_combout\ : std_logic;
SIGNAL \A|ul1|Selector12~6_combout\ : std_logic;
SIGNAL \A|ul1|Selector13~0_combout\ : std_logic;
SIGNAL \A|ul1|Selector12~7_combout\ : std_logic;
SIGNAL \A|ul1|data_write~39_combout\ : std_logic;
SIGNAL \A|ul1|Selector12~11_combout\ : std_logic;
SIGNAL \A|ul1|data_write~40_combout\ : std_logic;
SIGNAL \A|ul1|data_write~41_combout\ : std_logic;
SIGNAL \A|ul1|data_write~33_combout\ : std_logic;
SIGNAL \A|ul1|data_write~42_combout\ : std_logic;
SIGNAL \A|lc1|Selector41~2_combout\ : std_logic;
SIGNAL \A|ul1|Selector12~9_combout\ : std_logic;
SIGNAL \A|ul1|Selector12~10_combout\ : std_logic;
SIGNAL \A|ul1|Selector9~0_combout\ : std_logic;
SIGNAL \A|ul1|Selector12~8_combout\ : std_logic;
SIGNAL \A|ul1|Selector3~0_combout\ : std_logic;
SIGNAL \A|ul1|data_write~43_combout\ : std_logic;
SIGNAL \A|lc1|Selector40~2_combout\ : std_logic;
SIGNAL \A|ul1|Selector2~3_combout\ : std_logic;
SIGNAL \A|ul1|Selector2~4_combout\ : std_logic;
SIGNAL \A|ul1|Selector2~5_combout\ : std_logic;
SIGNAL \A|ul1|data_write~45_combout\ : std_logic;
SIGNAL \A|ul1|data_write~46_combout\ : std_logic;
SIGNAL \A|ul1|Selector11~4_combout\ : std_logic;
SIGNAL \A|ul1|Selector11~2_combout\ : std_logic;
SIGNAL \A|ul1|Selector11~3_combout\ : std_logic;
SIGNAL \A|ul1|Selector11~1_combout\ : std_logic;
SIGNAL \A|ul1|data_write~44_combout\ : std_logic;
SIGNAL \A|ul1|data_write~47_combout\ : std_logic;
SIGNAL \A|lc1|Selector39~0_combout\ : std_logic;
SIGNAL \A|ul1|data_write~49_combout\ : std_logic;
SIGNAL \A|ul1|data_write~48_combout\ : std_logic;
SIGNAL \A|ul1|data_write~50_combout\ : std_logic;
SIGNAL \A|lc1|Selector38~0_combout\ : std_logic;
SIGNAL \B|ctl|addr_reg[5]~feeder_combout\ : std_logic;
SIGNAL \B|ctl|addr_reg[6]~feeder_combout\ : std_logic;
SIGNAL \addr[8]~8_combout\ : std_logic;
SIGNAL \addr[9]~9_combout\ : std_logic;
SIGNAL \addr[10]~10_combout\ : std_logic;
SIGNAL \addr[11]~11_combout\ : std_logic;
SIGNAL \addr[12]~12_combout\ : std_logic;
SIGNAL \addr[13]~13_combout\ : std_logic;
SIGNAL \addr[14]~14_combout\ : std_logic;
SIGNAL \addr[15]~15_combout\ : std_logic;
SIGNAL \addr[16]~16_combout\ : std_logic;
SIGNAL \addr[17]~17_combout\ : std_logic;
SIGNAL \addr[18]~18_combout\ : std_logic;
SIGNAL \addr[19]~19_combout\ : std_logic;
SIGNAL \B|ctl|we_reg~feeder_combout\ : std_logic;
SIGNAL \B|ctl|we_reg~q\ : std_logic;
SIGNAL \B|ctl|oe_reg~feeder_combout\ : std_logic;
SIGNAL \B|ctl|oe_reg~q\ : std_logic;
SIGNAL \A|lc1|Selector46~2_combout\ : std_logic;
SIGNAL \A|lc1|Selector46~3_combout\ : std_logic;
SIGNAL \A|lc1|Selector46~0_combout\ : std_logic;
SIGNAL \A|lc1|Selector46~1_combout\ : std_logic;
SIGNAL \A|lc1|Selector46~4_combout\ : std_logic;
SIGNAL \A|lc1|Selector46~9_combout\ : std_logic;
SIGNAL \A|lc1|Selector46~10_combout\ : std_logic;
SIGNAL \A|lc1|LessThan12~0_combout\ : std_logic;
SIGNAL \A|lc1|LessThan10~3_combout\ : std_logic;
SIGNAL \A|lc1|LessThan10~1_combout\ : std_logic;
SIGNAL \A|lc1|LessThan10~2_combout\ : std_logic;
SIGNAL \A|lc1|LessThan10~4_combout\ : std_logic;
SIGNAL \A|lc1|LessThan9~10_combout\ : std_logic;
SIGNAL \A|lc1|LessThan12~1_combout\ : std_logic;
SIGNAL \A|lc1|LessThan12~2_combout\ : std_logic;
SIGNAL \A|lc1|Selector46~6_combout\ : std_logic;
SIGNAL \A|lc1|LessThan9~9_combout\ : std_logic;
SIGNAL \A|lc1|LessThan11~0_combout\ : std_logic;
SIGNAL \A|lc1|LessThan11~1_combout\ : std_logic;
SIGNAL \A|lc1|LessThan10~0_combout\ : std_logic;
SIGNAL \A|lc1|Selector46~5_combout\ : std_logic;
SIGNAL \A|lc1|Selector46~7_combout\ : std_logic;
SIGNAL \A|lc1|Selector46~8_combout\ : std_logic;
SIGNAL \A|lc1|lcd_en~q\ : std_logic;
SIGNAL \A|ul1|Selector0~0_combout\ : std_logic;
SIGNAL \A|ul1|Selector9~1_combout\ : std_logic;
SIGNAL \A|ul1|Selector0~1_combout\ : std_logic;
SIGNAL \A|ul1|data_write~14_combout\ : std_logic;
SIGNAL \A|lc1|lcd_rs~0_combout\ : std_logic;
SIGNAL \A|lc1|lcd_rs~1_combout\ : std_logic;
SIGNAL \A|lc1|lcd_rs~q\ : std_logic;
SIGNAL \dp11|Mux6~0_combout\ : std_logic;
SIGNAL \dp11|Mux5~0_combout\ : std_logic;
SIGNAL \dp11|Mux4~0_combout\ : std_logic;
SIGNAL \dp11|Mux3~0_combout\ : std_logic;
SIGNAL \dp11|Mux2~0_combout\ : std_logic;
SIGNAL \dp11|Mux1~0_combout\ : std_logic;
SIGNAL \dp11|Mux0~0_combout\ : std_logic;
SIGNAL \dp12|Mux6~0_combout\ : std_logic;
SIGNAL \dp12|Mux5~0_combout\ : std_logic;
SIGNAL \dp12|Mux4~0_combout\ : std_logic;
SIGNAL \dp12|Mux3~0_combout\ : std_logic;
SIGNAL \dp12|Mux2~0_combout\ : std_logic;
SIGNAL \dp12|Mux1~0_combout\ : std_logic;
SIGNAL \dp12|Mux0~0_combout\ : std_logic;
SIGNAL \dp21|Mux6~0_combout\ : std_logic;
SIGNAL \dp21|Mux5~0_combout\ : std_logic;
SIGNAL \dp21|Mux4~0_combout\ : std_logic;
SIGNAL \dp21|Mux3~0_combout\ : std_logic;
SIGNAL \dp21|Mux2~0_combout\ : std_logic;
SIGNAL \dp21|Mux1~0_combout\ : std_logic;
SIGNAL \dp21|Mux0~0_combout\ : std_logic;
SIGNAL \dp22|Mux6~0_combout\ : std_logic;
SIGNAL \dp22|Mux5~0_combout\ : std_logic;
SIGNAL \dp22|Mux4~0_combout\ : std_logic;
SIGNAL \dp22|Mux3~0_combout\ : std_logic;
SIGNAL \dp22|Mux2~0_combout\ : std_logic;
SIGNAL \dp22|Mux1~0_combout\ : std_logic;
SIGNAL \dp22|Mux0~0_combout\ : std_logic;
SIGNAL \dp13|Mux6~0_combout\ : std_logic;
SIGNAL \dp13|Mux5~0_combout\ : std_logic;
SIGNAL \dp13|Mux4~0_combout\ : std_logic;
SIGNAL \dp13|Mux3~0_combout\ : std_logic;
SIGNAL \dp13|Mux2~0_combout\ : std_logic;
SIGNAL \dp13|Mux1~0_combout\ : std_logic;
SIGNAL \dp13|Mux0~0_combout\ : std_logic;
SIGNAL \dp23|Mux6~0_combout\ : std_logic;
SIGNAL \dp23|Mux5~0_combout\ : std_logic;
SIGNAL \dp23|Mux4~0_combout\ : std_logic;
SIGNAL \dp23|Mux3~0_combout\ : std_logic;
SIGNAL \dp23|Mux2~0_combout\ : std_logic;
SIGNAL \dp23|Mux1~0_combout\ : std_logic;
SIGNAL \dp23|Mux0~0_combout\ : std_logic;
SIGNAL \dp33|Mux6~0_combout\ : std_logic;
SIGNAL \dp33|Mux5~0_combout\ : std_logic;
SIGNAL \dp33|Mux4~0_combout\ : std_logic;
SIGNAL \dp33|Mux3~0_combout\ : std_logic;
SIGNAL \dp33|Mux2~0_combout\ : std_logic;
SIGNAL \dp33|Mux1~0_combout\ : std_logic;
SIGNAL \dp33|Mux0~0_combout\ : std_logic;
SIGNAL \dp43|Mux6~0_combout\ : std_logic;
SIGNAL \dp43|Mux5~0_combout\ : std_logic;
SIGNAL \dp43|Mux4~0_combout\ : std_logic;
SIGNAL \dp43|Mux3~0_combout\ : std_logic;
SIGNAL \dp43|Mux2~0_combout\ : std_logic;
SIGNAL \dp43|Mux1~0_combout\ : std_logic;
SIGNAL \dp43|Mux0~0_combout\ : std_logic;
SIGNAL \A|ul1|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \B|itnram|altsyncram_component|auto_generated|q_a\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \B|ctl|data_write_reg\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \pll1|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \C|mc1|addr_reg\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \A|df1|q\ : std_logic_vector(21 DOWNTO 0);
SIGNAL \B|ctl|addr_reg\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \A|lc1|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \A|ul1|data_write\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \A|lc1|lcd_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \C|ALT_INV_comb~0clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_psw[0]~input_o\ : std_logic;
SIGNAL \B|ctl|ALT_INV_tri_reg~q\ : std_logic;
SIGNAL \A|ul1|ALT_INV_send_enable~2_combout\ : std_logic;
SIGNAL \dp43|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \dp33|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \dp23|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \dp13|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \dp22|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \dp21|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \dp12|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \dp11|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \B|ctl|ALT_INV_oe_reg~q\ : std_logic;

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

\B|itnram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & \data_write[11]~8_combout\ & \data_write[11]~8_combout\ & \data_write[11]~8_combout\ & \data_write[11]~8_combout\ & \data_write[11]~8_combout\ & 
\data_write[11]~8_combout\ & \data_write[11]~8_combout\ & \data_write[11]~8_combout\ & \data_write[7]~7_combout\ & \data_write[6]~6_combout\ & \data_write[5]~5_combout\ & \data_write[4]~4_combout\ & \data_write[3]~3_combout\ & \data_write[2]~2_combout\ & 
\data_write[1]~1_combout\ & \data_write[0]~0_combout\);

\B|itnram|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\addr[7]~7_combout\ & \addr[6]~6_combout\ & \addr[5]~5_combout\ & \addr[4]~4_combout\ & \addr[3]~3_combout\ & \addr[2]~2_combout\ & \addr[1]~1_combout\ & \addr[0]~0_combout\);

\B|itnram|altsyncram_component|auto_generated|q_a\(0) <= \B|itnram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\B|itnram|altsyncram_component|auto_generated|q_a\(1) <= \B|itnram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\B|itnram|altsyncram_component|auto_generated|q_a\(2) <= \B|itnram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\B|itnram|altsyncram_component|auto_generated|q_a\(3) <= \B|itnram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\B|itnram|altsyncram_component|auto_generated|q_a\(4) <= \B|itnram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\B|itnram|altsyncram_component|auto_generated|q_a\(5) <= \B|itnram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\B|itnram|altsyncram_component|auto_generated|q_a\(6) <= \B|itnram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\B|itnram|altsyncram_component|auto_generated|q_a\(7) <= \B|itnram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\B|itnram|altsyncram_component|auto_generated|q_a\(8) <= \B|itnram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\B|itnram|altsyncram_component|auto_generated|q_a\(9) <= \B|itnram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\B|itnram|altsyncram_component|auto_generated|q_a\(10) <= \B|itnram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\B|itnram|altsyncram_component|auto_generated|q_a\(11) <= \B|itnram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\B|itnram|altsyncram_component|auto_generated|q_a\(12) <= \B|itnram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\B|itnram|altsyncram_component|auto_generated|q_a\(13) <= \B|itnram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\B|itnram|altsyncram_component|auto_generated|q_a\(14) <= \B|itnram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\B|itnram|altsyncram_component|auto_generated|q_a\(15) <= \B|itnram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);

\pll1|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \clk~input_o\);

\pll1|altpll_component|auto_generated|wire_pll1_clk\(0) <= \pll1|altpll_component|auto_generated|pll1_CLK_bus\(0);
\pll1|altpll_component|auto_generated|wire_pll1_clk\(1) <= \pll1|altpll_component|auto_generated|pll1_CLK_bus\(1);
\pll1|altpll_component|auto_generated|wire_pll1_clk\(2) <= \pll1|altpll_component|auto_generated|pll1_CLK_bus\(2);
\pll1|altpll_component|auto_generated|wire_pll1_clk\(3) <= \pll1|altpll_component|auto_generated|pll1_CLK_bus\(3);
\pll1|altpll_component|auto_generated|wire_pll1_clk\(4) <= \pll1|altpll_component|auto_generated|pll1_CLK_bus\(4);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \pll1|altpll_component|auto_generated|wire_pll1_clk\(0));

\C|comb~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \C|comb~0_combout\);

\B|comb~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \B|comb~0_combout\);
\C|ALT_INV_comb~0clkctrl_outclk\ <= NOT \C|comb~0clkctrl_outclk\;
\ALT_INV_psw[0]~input_o\ <= NOT \psw[0]~input_o\;
\B|ctl|ALT_INV_tri_reg~q\ <= NOT \B|ctl|tri_reg~q\;
\A|ul1|ALT_INV_send_enable~2_combout\ <= NOT \A|ul1|send_enable~2_combout\;
\dp43|ALT_INV_Mux0~0_combout\ <= NOT \dp43|Mux0~0_combout\;
\dp33|ALT_INV_Mux0~0_combout\ <= NOT \dp33|Mux0~0_combout\;
\dp23|ALT_INV_Mux0~0_combout\ <= NOT \dp23|Mux0~0_combout\;
\dp13|ALT_INV_Mux0~0_combout\ <= NOT \dp13|Mux0~0_combout\;
\dp22|ALT_INV_Mux0~0_combout\ <= NOT \dp22|Mux0~0_combout\;
\dp21|ALT_INV_Mux0~0_combout\ <= NOT \dp21|Mux0~0_combout\;
\dp12|ALT_INV_Mux0~0_combout\ <= NOT \dp12|Mux0~0_combout\;
\dp11|ALT_INV_Mux0~0_combout\ <= NOT \dp11|Mux0~0_combout\;
\B|ctl|ALT_INV_oe_reg~q\ <= NOT \B|ctl|oe_reg~q\;

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
	o => ww_ad_sram(0));

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
	o => ww_ad_sram(1));

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
	o => ww_ad_sram(2));

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
	o => ww_ad_sram(3));

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
	o => ww_ad_sram(4));

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
	o => ww_ad_sram(5));

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
	o => ww_ad_sram(6));

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
	o => ww_ad_sram(7));

-- Location: IOOBUF_X5_Y0_N16
\ad_sram[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|ctl|addr_reg\(8),
	devoe => ww_devoe,
	o => ww_ad_sram(8));

-- Location: IOOBUF_X0_Y31_N16
\ad_sram[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|ctl|addr_reg\(9),
	devoe => ww_devoe,
	o => ww_ad_sram(9));

-- Location: IOOBUF_X0_Y6_N2
\ad_sram[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|ctl|addr_reg\(10),
	devoe => ww_devoe,
	o => ww_ad_sram(10));

-- Location: IOOBUF_X0_Y22_N16
\ad_sram[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|ctl|addr_reg\(11),
	devoe => ww_devoe,
	o => ww_ad_sram(11));

-- Location: IOOBUF_X0_Y8_N23
\ad_sram[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|ctl|addr_reg\(12),
	devoe => ww_devoe,
	o => ww_ad_sram(12));

-- Location: IOOBUF_X0_Y23_N23
\ad_sram[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|ctl|addr_reg\(13),
	devoe => ww_devoe,
	o => ww_ad_sram(13));

-- Location: IOOBUF_X0_Y19_N2
\ad_sram[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|ctl|addr_reg\(14),
	devoe => ww_devoe,
	o => ww_ad_sram(14));

-- Location: IOOBUF_X27_Y0_N9
\ad_sram[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|ctl|addr_reg\(15),
	devoe => ww_devoe,
	o => ww_ad_sram(15));

-- Location: IOOBUF_X49_Y0_N9
\ad_sram[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|ctl|addr_reg\(16),
	devoe => ww_devoe,
	o => ww_ad_sram(16));

-- Location: IOOBUF_X11_Y0_N9
\ad_sram[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|ctl|addr_reg\(17),
	devoe => ww_devoe,
	o => ww_ad_sram(17));

-- Location: IOOBUF_X11_Y0_N2
\ad_sram[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|ctl|addr_reg\(18),
	devoe => ww_devoe,
	o => ww_ad_sram(18));

-- Location: IOOBUF_X0_Y20_N16
\ad_sram[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|ctl|addr_reg\(19),
	devoe => ww_devoe,
	o => ww_ad_sram(19));

-- Location: IOOBUF_X23_Y0_N23
\we_n_sram~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|ctl|we_reg~q\,
	devoe => ww_devoe,
	o => ww_we_n_sram);

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
	o => ww_oe_n_sram);

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
	o => ww_ce_n_sram);

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
	o => ww_lb_n_sram);

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
	o => ww_ub_n_sram);

-- Location: IOOBUF_X0_Y52_N2
\en_lcd~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A|lc1|lcd_en~q\,
	devoe => ww_devoe,
	o => ww_en_lcd);

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
	o => ww_rw_lcd);

-- Location: IOOBUF_X0_Y44_N16
\rs_lcd~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A|lc1|lcd_rs~q\,
	devoe => ww_devoe,
	o => ww_rs_lcd);

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
	o => ww_pon_lcd);

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
	o => ww_blon_lcd);

-- Location: IOOBUF_X89_Y0_N23
\segoutL[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp11|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_segoutL(0));

-- Location: IOOBUF_X65_Y0_N2
\segoutL[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp11|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_segoutL(1));

-- Location: IOOBUF_X65_Y0_N9
\segoutL[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp11|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_segoutL(2));

-- Location: IOOBUF_X89_Y0_N16
\segoutL[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp11|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_segoutL(3));

-- Location: IOOBUF_X67_Y0_N16
\segoutL[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp11|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_segoutL(4));

-- Location: IOOBUF_X67_Y0_N23
\segoutL[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp11|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_segoutL(5));

-- Location: IOOBUF_X74_Y0_N23
\segoutL[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp11|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_segoutL(6));

-- Location: IOOBUF_X74_Y0_N16
\segoutL[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp12|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_segoutL(7));

-- Location: IOOBUF_X67_Y0_N9
\segoutL[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp12|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_segoutL(8));

-- Location: IOOBUF_X62_Y0_N23
\segoutL[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp12|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_segoutL(9));

-- Location: IOOBUF_X62_Y0_N16
\segoutL[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp12|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_segoutL(10));

-- Location: IOOBUF_X67_Y0_N2
\segoutL[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp12|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_segoutL(11));

-- Location: IOOBUF_X69_Y0_N9
\segoutL[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp12|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_segoutL(12));

-- Location: IOOBUF_X54_Y0_N23
\segoutL[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp12|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_segoutL(13));

-- Location: IOOBUF_X98_Y0_N23
\segoutM[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp21|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_segoutM(0));

-- Location: IOOBUF_X107_Y0_N9
\segoutM[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp21|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_segoutM(1));

-- Location: IOOBUF_X74_Y0_N9
\segoutM[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp21|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_segoutM(2));

-- Location: IOOBUF_X74_Y0_N2
\segoutM[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp21|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_segoutM(3));

-- Location: IOOBUF_X83_Y0_N23
\segoutM[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp21|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_segoutM(4));

-- Location: IOOBUF_X83_Y0_N16
\segoutM[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp21|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_segoutM(5));

-- Location: IOOBUF_X79_Y0_N23
\segoutM[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp21|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_segoutM(6));

-- Location: IOOBUF_X85_Y0_N9
\segoutM[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp22|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_segoutM(7));

-- Location: IOOBUF_X87_Y0_N16
\segoutM[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp22|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_segoutM(8));

-- Location: IOOBUF_X98_Y0_N16
\segoutM[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp22|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_segoutM(9));

-- Location: IOOBUF_X72_Y0_N2
\segoutM[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp22|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_segoutM(10));

-- Location: IOOBUF_X72_Y0_N9
\segoutM[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp22|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_segoutM(11));

-- Location: IOOBUF_X79_Y0_N16
\segoutM[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp22|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_segoutM(12));

-- Location: IOOBUF_X69_Y0_N2
\segoutM[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp22|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_segoutM(13));

-- Location: IOOBUF_X69_Y73_N23
\segoutR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp13|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_segoutR(0));

-- Location: IOOBUF_X107_Y73_N23
\segoutR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp13|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_segoutR(1));

-- Location: IOOBUF_X67_Y73_N23
\segoutR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp13|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_segoutR(2));

-- Location: IOOBUF_X115_Y50_N2
\segoutR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp13|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_segoutR(3));

-- Location: IOOBUF_X115_Y54_N16
\segoutR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp13|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_segoutR(4));

-- Location: IOOBUF_X115_Y67_N16
\segoutR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp13|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_segoutR(5));

-- Location: IOOBUF_X115_Y69_N2
\segoutR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp13|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_segoutR(6));

-- Location: IOOBUF_X115_Y41_N2
\segoutR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp23|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_segoutR(7));

-- Location: IOOBUF_X115_Y30_N9
\segoutR[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp23|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_segoutR(8));

-- Location: IOOBUF_X115_Y25_N23
\segoutR[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp23|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_segoutR(9));

-- Location: IOOBUF_X115_Y30_N2
\segoutR[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp23|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_segoutR(10));

-- Location: IOOBUF_X115_Y20_N9
\segoutR[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp23|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_segoutR(11));

-- Location: IOOBUF_X115_Y22_N2
\segoutR[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp23|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_segoutR(12));

-- Location: IOOBUF_X115_Y28_N9
\segoutR[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp23|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_segoutR(13));

-- Location: IOOBUF_X115_Y17_N9
\segoutR[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp33|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_segoutR(14));

-- Location: IOOBUF_X115_Y16_N2
\segoutR[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp33|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_segoutR(15));

-- Location: IOOBUF_X115_Y19_N9
\segoutR[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp33|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_segoutR(16));

-- Location: IOOBUF_X115_Y19_N2
\segoutR[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp33|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_segoutR(17));

-- Location: IOOBUF_X115_Y18_N2
\segoutR[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp33|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_segoutR(18));

-- Location: IOOBUF_X115_Y20_N2
\segoutR[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp33|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_segoutR(19));

-- Location: IOOBUF_X115_Y21_N16
\segoutR[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp33|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_segoutR(20));

-- Location: IOOBUF_X115_Y25_N16
\segoutR[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp43|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_segoutR(21));

-- Location: IOOBUF_X115_Y29_N2
\segoutR[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp43|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_segoutR(22));

-- Location: IOOBUF_X100_Y0_N2
\segoutR[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp43|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_segoutR(23));

-- Location: IOOBUF_X111_Y0_N2
\segoutR[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp43|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_segoutR(24));

-- Location: IOOBUF_X105_Y0_N23
\segoutR[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp43|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_segoutR(25));

-- Location: IOOBUF_X105_Y0_N9
\segoutR[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp43|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_segoutR(26));

-- Location: IOOBUF_X105_Y0_N2
\segoutR[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp43|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_segoutR(27));

-- Location: IOOBUF_X3_Y0_N16
\dio_sram[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|ctl|data_write_reg\(0),
	oe => \B|ctl|ALT_INV_tri_reg~q\,
	devoe => ww_devoe,
	o => ww_dio_sram(0));

-- Location: IOOBUF_X7_Y0_N23
\dio_sram[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|ctl|data_write_reg\(1),
	oe => \B|ctl|ALT_INV_tri_reg~q\,
	devoe => ww_devoe,
	o => ww_dio_sram(1));

-- Location: IOOBUF_X3_Y0_N23
\dio_sram[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|ctl|data_write_reg\(2),
	oe => \B|ctl|ALT_INV_tri_reg~q\,
	devoe => ww_devoe,
	o => ww_dio_sram(2));

-- Location: IOOBUF_X0_Y7_N9
\dio_sram[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|ctl|data_write_reg\(3),
	oe => \B|ctl|ALT_INV_tri_reg~q\,
	devoe => ww_devoe,
	o => ww_dio_sram(3));

-- Location: IOOBUF_X0_Y16_N16
\dio_sram[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|ctl|data_write_reg\(4),
	oe => \B|ctl|ALT_INV_tri_reg~q\,
	devoe => ww_devoe,
	o => ww_dio_sram(4));

-- Location: IOOBUF_X0_Y17_N16
\dio_sram[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|ctl|data_write_reg\(5),
	oe => \B|ctl|ALT_INV_tri_reg~q\,
	devoe => ww_devoe,
	o => ww_dio_sram(5));

-- Location: IOOBUF_X0_Y22_N23
\dio_sram[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|ctl|data_write_reg\(6),
	oe => \B|ctl|ALT_INV_tri_reg~q\,
	devoe => ww_devoe,
	o => ww_dio_sram(6));

-- Location: IOOBUF_X0_Y21_N16
\dio_sram[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|ctl|data_write_reg\(7),
	oe => \B|ctl|ALT_INV_tri_reg~q\,
	devoe => ww_devoe,
	o => ww_dio_sram(7));

-- Location: IOOBUF_X20_Y0_N9
\dio_sram[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|ctl|data_write_reg\(8),
	oe => \B|ctl|ALT_INV_tri_reg~q\,
	devoe => ww_devoe,
	o => ww_dio_sram(8));

-- Location: IOOBUF_X11_Y0_N16
\dio_sram[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|ctl|data_write_reg\(9),
	oe => \B|ctl|ALT_INV_tri_reg~q\,
	devoe => ww_devoe,
	o => ww_dio_sram(9));

-- Location: IOOBUF_X11_Y0_N23
\dio_sram[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|ctl|data_write_reg\(10),
	oe => \B|ctl|ALT_INV_tri_reg~q\,
	devoe => ww_devoe,
	o => ww_dio_sram(10));

-- Location: IOOBUF_X7_Y0_N16
\dio_sram[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|ctl|data_write_reg\(11),
	oe => \B|ctl|ALT_INV_tri_reg~q\,
	devoe => ww_devoe,
	o => ww_dio_sram(11));

-- Location: IOOBUF_X9_Y0_N16
\dio_sram[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|ctl|data_write_reg\(12),
	oe => \B|ctl|ALT_INV_tri_reg~q\,
	devoe => ww_devoe,
	o => ww_dio_sram(12));

-- Location: IOOBUF_X9_Y0_N23
\dio_sram[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|ctl|data_write_reg\(13),
	oe => \B|ctl|ALT_INV_tri_reg~q\,
	devoe => ww_devoe,
	o => ww_dio_sram(13));

-- Location: IOOBUF_X1_Y0_N2
\dio_sram[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|ctl|data_write_reg\(14),
	oe => \B|ctl|ALT_INV_tri_reg~q\,
	devoe => ww_devoe,
	o => ww_dio_sram(14));

-- Location: IOOBUF_X5_Y0_N9
\dio_sram[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|ctl|data_write_reg\(15),
	oe => \B|ctl|ALT_INV_tri_reg~q\,
	devoe => ww_devoe,
	o => ww_dio_sram(15));

-- Location: IOOBUF_X0_Y52_N16
\dio_lcd[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A|lc1|lcd_data\(0),
	oe => VCC,
	devoe => ww_devoe,
	o => ww_dio_lcd(0));

-- Location: IOOBUF_X0_Y44_N9
\dio_lcd[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A|lc1|lcd_data\(1),
	oe => VCC,
	devoe => ww_devoe,
	o => ww_dio_lcd(1));

-- Location: IOOBUF_X0_Y44_N2
\dio_lcd[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A|lc1|lcd_data\(2),
	oe => VCC,
	devoe => ww_devoe,
	o => ww_dio_lcd(2));

-- Location: IOOBUF_X0_Y49_N9
\dio_lcd[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A|lc1|lcd_data\(3),
	oe => VCC,
	devoe => ww_devoe,
	o => ww_dio_lcd(3));

-- Location: IOOBUF_X0_Y54_N9
\dio_lcd[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A|lc1|lcd_data\(4),
	oe => VCC,
	devoe => ww_devoe,
	o => ww_dio_lcd(4));

-- Location: IOOBUF_X0_Y55_N23
\dio_lcd[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A|lc1|lcd_data\(5),
	oe => VCC,
	devoe => ww_devoe,
	o => ww_dio_lcd(5));

-- Location: IOOBUF_X0_Y51_N16
\dio_lcd[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A|lc1|lcd_data\(6),
	oe => VCC,
	devoe => ww_devoe,
	o => ww_dio_lcd(6));

-- Location: IOOBUF_X0_Y47_N2
\dio_lcd[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A|lc1|lcd_data\(7),
	oe => VCC,
	devoe => ww_devoe,
	o => ww_dio_lcd(7));

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

-- Location: PLL_1
\pll1|altpll_component|auto_generated|pll1\ : cycloneive_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 3,
	c0_initial => 1,
	c0_low => 3,
	c0_mode => "even",
	c0_ph => 0,
	c1_high => 0,
	c1_initial => 0,
	c1_low => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c0",
	clk0_divide_by => 1,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 2,
	clk0_phase_shift => "0",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 27,
	m => 12,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	self_reset_on_loss_lock => "off",
	simulation_type => "functional",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 208,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	fbin => \pll1|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \pll1|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \pll1|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \pll1|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G3
\pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

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

-- Location: LCCOMB_X74_Y12_N4
\C|mc1|state.idle~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|state.idle~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \C|mc1|state.idle~feeder_combout\);

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

-- Location: LCCOMB_X79_Y7_N22
\C|comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|comb~0_combout\ = ((\psw[1]~input_o\) # (!\psw[0]~input_o\)) # (!\tsw[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[16]~input_o\,
	datab => \psw[0]~input_o\,
	datad => \psw[1]~input_o\,
	combout => \C|comb~0_combout\);

-- Location: CLKCTRL_G19
\C|comb~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \C|comb~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \C|comb~0clkctrl_outclk\);

-- Location: FF_X74_Y12_N5
\C|mc1|state.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \C|mc1|state.idle~feeder_combout\,
	clrn => \C|ALT_INV_comb~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C|mc1|state.idle~q\);

-- Location: LCCOMB_X75_Y12_N12
\C|mc1|state.w4~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|state.w4~feeder_combout\ = \C|mc1|state.r3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C|mc1|state.r3~q\,
	combout => \C|mc1|state.w4~feeder_combout\);

-- Location: FF_X75_Y12_N13
\C|mc1|state.w4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \C|mc1|state.w4~feeder_combout\,
	clrn => \C|ALT_INV_comb~0clkctrl_outclk\,
	ena => \C|mc1|LessThan1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C|mc1|state.w4~q\);

-- Location: LCCOMB_X75_Y12_N22
\C|mc1|state.r4~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|state.r4~feeder_combout\ = \C|mc1|state.w4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C|mc1|state.w4~q\,
	combout => \C|mc1|state.r4~feeder_combout\);

-- Location: FF_X75_Y12_N23
\C|mc1|state.r4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \C|mc1|state.r4~feeder_combout\,
	clrn => \C|ALT_INV_comb~0clkctrl_outclk\,
	ena => \C|mc1|LessThan1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C|mc1|state.r4~q\);

-- Location: LCCOMB_X75_Y12_N14
\C|mc1|state.w5~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|state.w5~feeder_combout\ = \C|mc1|state.r4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C|mc1|state.r4~q\,
	combout => \C|mc1|state.w5~feeder_combout\);

-- Location: FF_X75_Y12_N15
\C|mc1|state.w5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \C|mc1|state.w5~feeder_combout\,
	clrn => \C|ALT_INV_comb~0clkctrl_outclk\,
	ena => \C|mc1|LessThan1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C|mc1|state.w5~q\);

-- Location: LCCOMB_X75_Y12_N10
\C|mc1|addr_reg[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|addr_reg[0]~14_combout\ = (!\C|mc1|state.r4~q\ & (!\C|mc1|state.r3~q\ & (!\C|mc1|state.w5~q\ & !\C|mc1|state.w4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C|mc1|state.r4~q\,
	datab => \C|mc1|state.r3~q\,
	datac => \C|mc1|state.w5~q\,
	datad => \C|mc1|state.w4~q\,
	combout => \C|mc1|addr_reg[0]~14_combout\);

-- Location: LCCOMB_X74_Y12_N6
\C|mc1|Selector29~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|Selector29~2_combout\ = (\C|mc1|state.w3~q\ & (!\C|mc1|LessThan0~9_combout\ & ((\C|mc1|addr_reg[0]~14_combout\) # (!\C|mc1|LessThan1~4_combout\)))) # (!\C|mc1|state.w3~q\ & (((\C|mc1|addr_reg[0]~14_combout\)) # (!\C|mc1|LessThan1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C|mc1|state.w3~q\,
	datab => \C|mc1|LessThan1~4_combout\,
	datac => \C|mc1|addr_reg[0]~14_combout\,
	datad => \C|mc1|LessThan0~9_combout\,
	combout => \C|mc1|Selector29~2_combout\);

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

-- Location: FF_X75_Y12_N29
\C|mc1|state.r5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \C|mc1|state.w5~q\,
	clrn => \C|ALT_INV_comb~0clkctrl_outclk\,
	sload => VCC,
	ena => \C|mc1|LessThan1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C|mc1|state.r5~q\);

-- Location: LCCOMB_X75_Y12_N18
\C|mc1|addr_reg[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|addr_reg[0]~16_combout\ = (!\C|mc1|LessThan1~4_combout\ & ((\C|mc1|state.r5~q\) # (!\C|mc1|addr_reg[0]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C|mc1|addr_reg[0]~14_combout\,
	datac => \C|mc1|LessThan1~4_combout\,
	datad => \C|mc1|state.r5~q\,
	combout => \C|mc1|addr_reg[0]~16_combout\);

-- Location: LCCOMB_X75_Y11_N12
\C|mc1|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|Add1~0_combout\ = \C|mc1|addr_reg\(0) $ (VCC)
-- \C|mc1|Add1~1\ = CARRY(\C|mc1|addr_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C|mc1|addr_reg\(0),
	datad => VCC,
	combout => \C|mc1|Add1~0_combout\,
	cout => \C|mc1|Add1~1\);

-- Location: LCCOMB_X74_Y11_N12
\C|mc1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|Add0~0_combout\ = \C|mc1|addr_reg\(0) $ (VCC)
-- \C|mc1|Add0~1\ = CARRY(\C|mc1|addr_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C|mc1|addr_reg\(0),
	datad => VCC,
	combout => \C|mc1|Add0~0_combout\,
	cout => \C|mc1|Add0~1\);

-- Location: LCCOMB_X75_Y11_N10
\C|mc1|Selector32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|Selector32~0_combout\ = (\C|mc1|addr_reg[0]~16_combout\ & (\C|mc1|Add1~0_combout\)) # (!\C|mc1|addr_reg[0]~16_combout\ & ((\C|mc1|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C|mc1|Add1~0_combout\,
	datab => \C|mc1|addr_reg[0]~16_combout\,
	datac => \C|mc1|Add0~0_combout\,
	combout => \C|mc1|Selector32~0_combout\);

-- Location: LCCOMB_X75_Y12_N30
\C|mc1|Selector29~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|Selector29~5_combout\ = (!\C|mc1|Selector29~2_combout\ & ((!\C|mc1|state.r5~q\) # (!\C|mc1|LessThan1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C|mc1|LessThan1~4_combout\,
	datac => \C|mc1|Selector29~2_combout\,
	datad => \C|mc1|state.r5~q\,
	combout => \C|mc1|Selector29~5_combout\);

-- Location: LCCOMB_X74_Y12_N26
\C|mc1|addr_reg[0]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|addr_reg[0]~17_combout\ = (!\C|mc1|state.w2~q\ & (!\C|mc1|state.r1~q\ & (!\C|mc1|state.r2~q\ & !\C|mc1|state.w1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C|mc1|state.w2~q\,
	datab => \C|mc1|state.r1~q\,
	datac => \C|mc1|state.r2~q\,
	datad => \C|mc1|state.w1~q\,
	combout => \C|mc1|addr_reg[0]~17_combout\);

-- Location: LCCOMB_X75_Y12_N28
\C|mc1|addr_reg[0]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|addr_reg[0]~15_combout\ = (\C|mc1|LessThan1~4_combout\ & \C|mc1|state.r5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C|mc1|LessThan1~4_combout\,
	datac => \C|mc1|state.r5~q\,
	combout => \C|mc1|addr_reg[0]~15_combout\);

-- Location: LCCOMB_X75_Y12_N6
\C|mc1|addr_reg[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|addr_reg[0]~18_combout\ = (\C|mc1|addr_reg[0]~15_combout\) # (((!\C|mc1|addr_reg[0]~17_combout\ & \C|mc1|LessThan0~9_combout\)) # (!\C|mc1|Selector29~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C|mc1|addr_reg[0]~17_combout\,
	datab => \C|mc1|addr_reg[0]~15_combout\,
	datac => \C|mc1|Selector29~2_combout\,
	datad => \C|mc1|LessThan0~9_combout\,
	combout => \C|mc1|addr_reg[0]~18_combout\);

-- Location: LCCOMB_X76_Y11_N24
\C|mc1|Selector32~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|Selector32~1_combout\ = (\C|mc1|Selector29~5_combout\) # ((\C|mc1|Selector32~0_combout\ & !\C|mc1|addr_reg[0]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C|mc1|Selector32~0_combout\,
	datac => \C|mc1|Selector29~5_combout\,
	datad => \C|mc1|addr_reg[0]~18_combout\,
	combout => \C|mc1|Selector32~1_combout\);

-- Location: LCCOMB_X74_Y12_N12
\C|mc1|state.finished~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|state.finished~0_combout\ = (\C|mc1|state.finished~q\) # ((\C|mc1|state.r5~q\ & \C|mc1|LessThan1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C|mc1|state.r5~q\,
	datac => \C|mc1|state.finished~q\,
	datad => \C|mc1|LessThan1~4_combout\,
	combout => \C|mc1|state.finished~0_combout\);

-- Location: FF_X74_Y12_N13
\C|mc1|state.finished\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \C|mc1|state.finished~0_combout\,
	clrn => \C|ALT_INV_comb~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C|mc1|state.finished~q\);

-- Location: LCCOMB_X74_Y12_N2
\C|mc1|addr_next~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|addr_next~0_combout\ = (\C|mc1|state.idle~q\ & !\C|mc1|state.finished~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C|mc1|state.idle~q\,
	datad => \C|mc1|state.finished~q\,
	combout => \C|mc1|addr_next~0_combout\);

-- Location: FF_X76_Y11_N25
\C|mc1|addr_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \C|mc1|Selector32~1_combout\,
	clrn => \C|ALT_INV_comb~0clkctrl_outclk\,
	ena => \C|mc1|addr_next~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C|mc1|addr_reg\(0));

-- Location: LCCOMB_X75_Y11_N14
\C|mc1|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|Add1~2_combout\ = (\C|mc1|addr_reg\(1) & (\C|mc1|Add1~1\ & VCC)) # (!\C|mc1|addr_reg\(1) & (!\C|mc1|Add1~1\))
-- \C|mc1|Add1~3\ = CARRY((!\C|mc1|addr_reg\(1) & !\C|mc1|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C|mc1|addr_reg\(1),
	datad => VCC,
	cin => \C|mc1|Add1~1\,
	combout => \C|mc1|Add1~2_combout\,
	cout => \C|mc1|Add1~3\);

-- Location: LCCOMB_X74_Y11_N14
\C|mc1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|Add0~2_combout\ = (\C|mc1|addr_reg\(1) & (!\C|mc1|Add0~1\)) # (!\C|mc1|addr_reg\(1) & ((\C|mc1|Add0~1\) # (GND)))
-- \C|mc1|Add0~3\ = CARRY((!\C|mc1|Add0~1\) # (!\C|mc1|addr_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C|mc1|addr_reg\(1),
	datad => VCC,
	cin => \C|mc1|Add0~1\,
	combout => \C|mc1|Add0~2_combout\,
	cout => \C|mc1|Add0~3\);

-- Location: LCCOMB_X75_Y12_N26
\C|mc1|Selector31~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|Selector31~2_combout\ = (!\C|mc1|addr_reg[0]~18_combout\ & ((\C|mc1|addr_reg[0]~16_combout\ & (\C|mc1|Add1~2_combout\)) # (!\C|mc1|addr_reg[0]~16_combout\ & ((\C|mc1|Add0~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C|mc1|Add1~2_combout\,
	datab => \C|mc1|addr_reg[0]~16_combout\,
	datac => \C|mc1|Add0~2_combout\,
	datad => \C|mc1|addr_reg[0]~18_combout\,
	combout => \C|mc1|Selector31~2_combout\);

-- Location: LCCOMB_X75_Y12_N0
\C|mc1|Selector31~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|Selector31~3_combout\ = (\C|mc1|Selector31~2_combout\) # ((!\C|mc1|Selector29~2_combout\ & ((!\C|mc1|state.r5~q\) # (!\C|mc1|LessThan1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C|mc1|LessThan1~4_combout\,
	datab => \C|mc1|state.r5~q\,
	datac => \C|mc1|Selector29~2_combout\,
	datad => \C|mc1|Selector31~2_combout\,
	combout => \C|mc1|Selector31~3_combout\);

-- Location: FF_X75_Y12_N1
\C|mc1|addr_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \C|mc1|Selector31~3_combout\,
	clrn => \C|ALT_INV_comb~0clkctrl_outclk\,
	ena => \C|mc1|addr_next~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C|mc1|addr_reg\(1));

-- Location: LCCOMB_X75_Y11_N16
\C|mc1|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|Add1~4_combout\ = (\C|mc1|addr_reg\(2) & ((GND) # (!\C|mc1|Add1~3\))) # (!\C|mc1|addr_reg\(2) & (\C|mc1|Add1~3\ $ (GND)))
-- \C|mc1|Add1~5\ = CARRY((\C|mc1|addr_reg\(2)) # (!\C|mc1|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C|mc1|addr_reg\(2),
	datad => VCC,
	cin => \C|mc1|Add1~3\,
	combout => \C|mc1|Add1~4_combout\,
	cout => \C|mc1|Add1~5\);

-- Location: LCCOMB_X74_Y11_N16
\C|mc1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|Add0~4_combout\ = (\C|mc1|addr_reg\(2) & (\C|mc1|Add0~3\ $ (GND))) # (!\C|mc1|addr_reg\(2) & (!\C|mc1|Add0~3\ & VCC))
-- \C|mc1|Add0~5\ = CARRY((\C|mc1|addr_reg\(2) & !\C|mc1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C|mc1|addr_reg\(2),
	datad => VCC,
	cin => \C|mc1|Add0~3\,
	combout => \C|mc1|Add0~4_combout\,
	cout => \C|mc1|Add0~5\);

-- Location: LCCOMB_X76_Y11_N30
\C|mc1|Selector30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|Selector30~0_combout\ = (\C|mc1|addr_reg[0]~16_combout\ & (\C|mc1|Add1~4_combout\)) # (!\C|mc1|addr_reg[0]~16_combout\ & ((\C|mc1|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C|mc1|addr_reg[0]~16_combout\,
	datac => \C|mc1|Add1~4_combout\,
	datad => \C|mc1|Add0~4_combout\,
	combout => \C|mc1|Selector30~0_combout\);

-- Location: LCCOMB_X76_Y11_N20
\C|mc1|Selector30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|Selector30~1_combout\ = (\C|mc1|Selector29~5_combout\) # ((\C|mc1|Selector30~0_combout\ & !\C|mc1|addr_reg[0]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C|mc1|Selector30~0_combout\,
	datac => \C|mc1|Selector29~5_combout\,
	datad => \C|mc1|addr_reg[0]~18_combout\,
	combout => \C|mc1|Selector30~1_combout\);

-- Location: FF_X76_Y11_N21
\C|mc1|addr_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \C|mc1|Selector30~1_combout\,
	clrn => \C|ALT_INV_comb~0clkctrl_outclk\,
	ena => \C|mc1|addr_next~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C|mc1|addr_reg\(2));

-- Location: LCCOMB_X74_Y11_N18
\C|mc1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|Add0~6_combout\ = (\C|mc1|addr_reg\(3) & (!\C|mc1|Add0~5\)) # (!\C|mc1|addr_reg\(3) & ((\C|mc1|Add0~5\) # (GND)))
-- \C|mc1|Add0~7\ = CARRY((!\C|mc1|Add0~5\) # (!\C|mc1|addr_reg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C|mc1|addr_reg\(3),
	datad => VCC,
	cin => \C|mc1|Add0~5\,
	combout => \C|mc1|Add0~6_combout\,
	cout => \C|mc1|Add0~7\);

-- Location: LCCOMB_X75_Y11_N18
\C|mc1|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|Add1~6_combout\ = (\C|mc1|addr_reg\(3) & (\C|mc1|Add1~5\ & VCC)) # (!\C|mc1|addr_reg\(3) & (!\C|mc1|Add1~5\))
-- \C|mc1|Add1~7\ = CARRY((!\C|mc1|addr_reg\(3) & !\C|mc1|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C|mc1|addr_reg\(3),
	datad => VCC,
	cin => \C|mc1|Add1~5\,
	combout => \C|mc1|Add1~6_combout\,
	cout => \C|mc1|Add1~7\);

-- Location: LCCOMB_X75_Y11_N4
\C|mc1|Selector29~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|Selector29~3_combout\ = (\C|mc1|addr_reg[0]~16_combout\ & ((\C|mc1|Add1~6_combout\))) # (!\C|mc1|addr_reg[0]~16_combout\ & (\C|mc1|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C|mc1|Add0~6_combout\,
	datac => \C|mc1|addr_reg[0]~16_combout\,
	datad => \C|mc1|Add1~6_combout\,
	combout => \C|mc1|Selector29~3_combout\);

-- Location: LCCOMB_X76_Y11_N26
\C|mc1|Selector29~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|Selector29~4_combout\ = (\C|mc1|Selector29~5_combout\) # ((\C|mc1|Selector29~3_combout\ & !\C|mc1|addr_reg[0]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C|mc1|Selector29~3_combout\,
	datac => \C|mc1|Selector29~5_combout\,
	datad => \C|mc1|addr_reg[0]~18_combout\,
	combout => \C|mc1|Selector29~4_combout\);

-- Location: FF_X76_Y11_N27
\C|mc1|addr_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \C|mc1|Selector29~4_combout\,
	clrn => \C|ALT_INV_comb~0clkctrl_outclk\,
	ena => \C|mc1|addr_next~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C|mc1|addr_reg\(3));

-- Location: LCCOMB_X74_Y11_N20
\C|mc1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|Add0~8_combout\ = (\C|mc1|addr_reg\(4) & (\C|mc1|Add0~7\ $ (GND))) # (!\C|mc1|addr_reg\(4) & (!\C|mc1|Add0~7\ & VCC))
-- \C|mc1|Add0~9\ = CARRY((\C|mc1|addr_reg\(4) & !\C|mc1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C|mc1|addr_reg\(4),
	datad => VCC,
	cin => \C|mc1|Add0~7\,
	combout => \C|mc1|Add0~8_combout\,
	cout => \C|mc1|Add0~9\);

-- Location: LCCOMB_X75_Y11_N20
\C|mc1|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|Add1~8_combout\ = (\C|mc1|addr_reg\(4) & ((GND) # (!\C|mc1|Add1~7\))) # (!\C|mc1|addr_reg\(4) & (\C|mc1|Add1~7\ $ (GND)))
-- \C|mc1|Add1~9\ = CARRY((\C|mc1|addr_reg\(4)) # (!\C|mc1|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C|mc1|addr_reg\(4),
	datad => VCC,
	cin => \C|mc1|Add1~7\,
	combout => \C|mc1|Add1~8_combout\,
	cout => \C|mc1|Add1~9\);

-- Location: LCCOMB_X76_Y11_N28
\C|mc1|Selector28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|Selector28~0_combout\ = (\C|mc1|addr_reg[0]~16_combout\ & ((\C|mc1|Add1~8_combout\))) # (!\C|mc1|addr_reg[0]~16_combout\ & (\C|mc1|Add0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C|mc1|addr_reg[0]~16_combout\,
	datac => \C|mc1|Add0~8_combout\,
	datad => \C|mc1|Add1~8_combout\,
	combout => \C|mc1|Selector28~0_combout\);

-- Location: LCCOMB_X76_Y11_N8
\C|mc1|Selector28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|Selector28~1_combout\ = (\C|mc1|Selector29~5_combout\) # ((\C|mc1|Selector28~0_combout\ & !\C|mc1|addr_reg[0]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C|mc1|Selector28~0_combout\,
	datac => \C|mc1|Selector29~5_combout\,
	datad => \C|mc1|addr_reg[0]~18_combout\,
	combout => \C|mc1|Selector28~1_combout\);

-- Location: FF_X76_Y11_N9
\C|mc1|addr_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \C|mc1|Selector28~1_combout\,
	clrn => \C|ALT_INV_comb~0clkctrl_outclk\,
	ena => \C|mc1|addr_next~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C|mc1|addr_reg\(4));

-- Location: LCCOMB_X75_Y11_N22
\C|mc1|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|Add1~10_combout\ = (\C|mc1|addr_reg\(5) & (\C|mc1|Add1~9\ & VCC)) # (!\C|mc1|addr_reg\(5) & (!\C|mc1|Add1~9\))
-- \C|mc1|Add1~11\ = CARRY((!\C|mc1|addr_reg\(5) & !\C|mc1|Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C|mc1|addr_reg\(5),
	datad => VCC,
	cin => \C|mc1|Add1~9\,
	combout => \C|mc1|Add1~10_combout\,
	cout => \C|mc1|Add1~11\);

-- Location: LCCOMB_X74_Y11_N22
\C|mc1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|Add0~10_combout\ = (\C|mc1|addr_reg\(5) & (!\C|mc1|Add0~9\)) # (!\C|mc1|addr_reg\(5) & ((\C|mc1|Add0~9\) # (GND)))
-- \C|mc1|Add0~11\ = CARRY((!\C|mc1|Add0~9\) # (!\C|mc1|addr_reg\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C|mc1|addr_reg\(5),
	datad => VCC,
	cin => \C|mc1|Add0~9\,
	combout => \C|mc1|Add0~10_combout\,
	cout => \C|mc1|Add0~11\);

-- Location: LCCOMB_X75_Y11_N2
\C|mc1|Selector27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|Selector27~0_combout\ = (\C|mc1|addr_reg[0]~16_combout\ & (\C|mc1|Add1~10_combout\)) # (!\C|mc1|addr_reg[0]~16_combout\ & ((\C|mc1|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C|mc1|Add1~10_combout\,
	datab => \C|mc1|Add0~10_combout\,
	datac => \C|mc1|addr_reg[0]~16_combout\,
	combout => \C|mc1|Selector27~0_combout\);

-- Location: LCCOMB_X76_Y11_N22
\C|mc1|Selector27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|Selector27~1_combout\ = (\C|mc1|Selector29~5_combout\) # ((\C|mc1|Selector27~0_combout\ & !\C|mc1|addr_reg[0]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C|mc1|Selector27~0_combout\,
	datac => \C|mc1|Selector29~5_combout\,
	datad => \C|mc1|addr_reg[0]~18_combout\,
	combout => \C|mc1|Selector27~1_combout\);

-- Location: FF_X76_Y11_N23
\C|mc1|addr_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \C|mc1|Selector27~1_combout\,
	clrn => \C|ALT_INV_comb~0clkctrl_outclk\,
	ena => \C|mc1|addr_next~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C|mc1|addr_reg\(5));

-- Location: LCCOMB_X75_Y11_N24
\C|mc1|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|Add1~12_combout\ = (\C|mc1|addr_reg\(6) & ((GND) # (!\C|mc1|Add1~11\))) # (!\C|mc1|addr_reg\(6) & (\C|mc1|Add1~11\ $ (GND)))
-- \C|mc1|Add1~13\ = CARRY((\C|mc1|addr_reg\(6)) # (!\C|mc1|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C|mc1|addr_reg\(6),
	datad => VCC,
	cin => \C|mc1|Add1~11\,
	combout => \C|mc1|Add1~12_combout\,
	cout => \C|mc1|Add1~13\);

-- Location: LCCOMB_X75_Y11_N26
\C|mc1|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|Add1~14_combout\ = (\C|mc1|addr_reg\(7) & (\C|mc1|Add1~13\ & VCC)) # (!\C|mc1|addr_reg\(7) & (!\C|mc1|Add1~13\))
-- \C|mc1|Add1~15\ = CARRY((!\C|mc1|addr_reg\(7) & !\C|mc1|Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C|mc1|addr_reg\(7),
	datad => VCC,
	cin => \C|mc1|Add1~13\,
	combout => \C|mc1|Add1~14_combout\,
	cout => \C|mc1|Add1~15\);

-- Location: LCCOMB_X74_Y11_N24
\C|mc1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|Add0~12_combout\ = (\C|mc1|addr_reg\(6) & (\C|mc1|Add0~11\ $ (GND))) # (!\C|mc1|addr_reg\(6) & (!\C|mc1|Add0~11\ & VCC))
-- \C|mc1|Add0~13\ = CARRY((\C|mc1|addr_reg\(6) & !\C|mc1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C|mc1|addr_reg\(6),
	datad => VCC,
	cin => \C|mc1|Add0~11\,
	combout => \C|mc1|Add0~12_combout\,
	cout => \C|mc1|Add0~13\);

-- Location: LCCOMB_X74_Y11_N26
\C|mc1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|Add0~14_combout\ = (\C|mc1|addr_reg\(7) & (!\C|mc1|Add0~13\)) # (!\C|mc1|addr_reg\(7) & ((\C|mc1|Add0~13\) # (GND)))
-- \C|mc1|Add0~15\ = CARRY((!\C|mc1|Add0~13\) # (!\C|mc1|addr_reg\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C|mc1|addr_reg\(7),
	datad => VCC,
	cin => \C|mc1|Add0~13\,
	combout => \C|mc1|Add0~14_combout\,
	cout => \C|mc1|Add0~15\);

-- Location: LCCOMB_X75_Y12_N20
\C|mc1|Selector25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|Selector25~2_combout\ = (!\C|mc1|addr_reg[0]~18_combout\ & ((\C|mc1|addr_reg[0]~16_combout\ & (\C|mc1|Add1~14_combout\)) # (!\C|mc1|addr_reg[0]~16_combout\ & ((\C|mc1|Add0~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C|mc1|Add1~14_combout\,
	datab => \C|mc1|addr_reg[0]~16_combout\,
	datac => \C|mc1|Add0~14_combout\,
	datad => \C|mc1|addr_reg[0]~18_combout\,
	combout => \C|mc1|Selector25~2_combout\);

-- Location: LCCOMB_X75_Y12_N16
\C|mc1|Selector25~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|Selector25~3_combout\ = (\C|mc1|Selector25~2_combout\) # ((!\C|mc1|Selector29~2_combout\ & ((!\C|mc1|state.r5~q\) # (!\C|mc1|LessThan1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C|mc1|LessThan1~4_combout\,
	datab => \C|mc1|state.r5~q\,
	datac => \C|mc1|Selector29~2_combout\,
	datad => \C|mc1|Selector25~2_combout\,
	combout => \C|mc1|Selector25~3_combout\);

-- Location: FF_X75_Y12_N17
\C|mc1|addr_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \C|mc1|Selector25~3_combout\,
	clrn => \C|ALT_INV_comb~0clkctrl_outclk\,
	ena => \C|mc1|addr_next~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C|mc1|addr_reg\(7));

-- Location: LCCOMB_X74_Y11_N28
\C|mc1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|Add0~16_combout\ = (\C|mc1|addr_reg\(8) & (\C|mc1|Add0~15\ $ (GND))) # (!\C|mc1|addr_reg\(8) & (!\C|mc1|Add0~15\ & VCC))
-- \C|mc1|Add0~17\ = CARRY((\C|mc1|addr_reg\(8) & !\C|mc1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C|mc1|addr_reg\(8),
	datad => VCC,
	cin => \C|mc1|Add0~15\,
	combout => \C|mc1|Add0~16_combout\,
	cout => \C|mc1|Add0~17\);

-- Location: LCCOMB_X74_Y11_N4
\C|mc1|addr_reg[8]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|addr_reg[8]~0_combout\ = (\C|mc1|Selector29~2_combout\ & ((\C|mc1|Add0~16_combout\))) # (!\C|mc1|Selector29~2_combout\ & (\tsw[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C|mc1|Selector29~2_combout\,
	datab => \tsw[17]~input_o\,
	datad => \C|mc1|Add0~16_combout\,
	combout => \C|mc1|addr_reg[8]~0_combout\);

-- Location: LCCOMB_X75_Y11_N28
\C|mc1|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|Add1~16_combout\ = (\C|mc1|addr_reg\(8) & ((GND) # (!\C|mc1|Add1~15\))) # (!\C|mc1|addr_reg\(8) & (\C|mc1|Add1~15\ $ (GND)))
-- \C|mc1|Add1~17\ = CARRY((\C|mc1|addr_reg\(8)) # (!\C|mc1|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C|mc1|addr_reg\(8),
	datad => VCC,
	cin => \C|mc1|Add1~15\,
	combout => \C|mc1|Add1~16_combout\,
	cout => \C|mc1|Add1~17\);

-- Location: LCCOMB_X75_Y12_N24
\C|mc1|addr_reg[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|addr_reg[19]~19_combout\ = (\C|mc1|LessThan1~4_combout\ & ((\C|mc1|state.r5~q\) # ((!\C|mc1|addr_reg[0]~17_combout\ & \C|mc1|LessThan0~9_combout\)))) # (!\C|mc1|LessThan1~4_combout\ & (((!\C|mc1|addr_reg[0]~17_combout\ & 
-- \C|mc1|LessThan0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C|mc1|LessThan1~4_combout\,
	datab => \C|mc1|state.r5~q\,
	datac => \C|mc1|addr_reg[0]~17_combout\,
	datad => \C|mc1|LessThan0~9_combout\,
	combout => \C|mc1|addr_reg[19]~19_combout\);

-- Location: FF_X74_Y11_N5
\C|mc1|addr_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \C|mc1|addr_reg[8]~0_combout\,
	asdata => \C|mc1|Add1~16_combout\,
	clrn => \C|ALT_INV_comb~0clkctrl_outclk\,
	sclr => \C|mc1|addr_reg[19]~19_combout\,
	sload => \C|mc1|addr_reg[0]~16_combout\,
	ena => \C|mc1|addr_next~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C|mc1|addr_reg\(8));

-- Location: LCCOMB_X74_Y11_N30
\C|mc1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|Add0~18_combout\ = (\C|mc1|addr_reg\(9) & (!\C|mc1|Add0~17\)) # (!\C|mc1|addr_reg\(9) & ((\C|mc1|Add0~17\) # (GND)))
-- \C|mc1|Add0~19\ = CARRY((!\C|mc1|Add0~17\) # (!\C|mc1|addr_reg\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C|mc1|addr_reg\(9),
	datad => VCC,
	cin => \C|mc1|Add0~17\,
	combout => \C|mc1|Add0~18_combout\,
	cout => \C|mc1|Add0~19\);

-- Location: LCCOMB_X74_Y11_N6
\C|mc1|addr_reg[9]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|addr_reg[9]~1_combout\ = (\C|mc1|Selector29~2_combout\ & (\C|mc1|Add0~18_combout\)) # (!\C|mc1|Selector29~2_combout\ & ((\tsw[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C|mc1|Add0~18_combout\,
	datab => \tsw[17]~input_o\,
	datad => \C|mc1|Selector29~2_combout\,
	combout => \C|mc1|addr_reg[9]~1_combout\);

-- Location: LCCOMB_X75_Y11_N30
\C|mc1|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|Add1~18_combout\ = (\C|mc1|addr_reg\(9) & (\C|mc1|Add1~17\ & VCC)) # (!\C|mc1|addr_reg\(9) & (!\C|mc1|Add1~17\))
-- \C|mc1|Add1~19\ = CARRY((!\C|mc1|addr_reg\(9) & !\C|mc1|Add1~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C|mc1|addr_reg\(9),
	datad => VCC,
	cin => \C|mc1|Add1~17\,
	combout => \C|mc1|Add1~18_combout\,
	cout => \C|mc1|Add1~19\);

-- Location: FF_X74_Y11_N7
\C|mc1|addr_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \C|mc1|addr_reg[9]~1_combout\,
	asdata => \C|mc1|Add1~18_combout\,
	clrn => \C|ALT_INV_comb~0clkctrl_outclk\,
	sclr => \C|mc1|addr_reg[19]~19_combout\,
	sload => \C|mc1|addr_reg[0]~16_combout\,
	ena => \C|mc1|addr_next~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C|mc1|addr_reg\(9));

-- Location: LCCOMB_X74_Y10_N0
\C|mc1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|Add0~20_combout\ = (\C|mc1|addr_reg\(10) & (\C|mc1|Add0~19\ $ (GND))) # (!\C|mc1|addr_reg\(10) & (!\C|mc1|Add0~19\ & VCC))
-- \C|mc1|Add0~21\ = CARRY((\C|mc1|addr_reg\(10) & !\C|mc1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C|mc1|addr_reg\(10),
	datad => VCC,
	cin => \C|mc1|Add0~19\,
	combout => \C|mc1|Add0~20_combout\,
	cout => \C|mc1|Add0~21\);

-- Location: LCCOMB_X74_Y11_N8
\C|mc1|addr_reg[10]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|addr_reg[10]~2_combout\ = (\C|mc1|Selector29~2_combout\ & ((\C|mc1|Add0~20_combout\))) # (!\C|mc1|Selector29~2_combout\ & (\tsw[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C|mc1|Selector29~2_combout\,
	datab => \tsw[17]~input_o\,
	datad => \C|mc1|Add0~20_combout\,
	combout => \C|mc1|addr_reg[10]~2_combout\);

-- Location: LCCOMB_X75_Y10_N0
\C|mc1|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|Add1~20_combout\ = (\C|mc1|addr_reg\(10) & ((GND) # (!\C|mc1|Add1~19\))) # (!\C|mc1|addr_reg\(10) & (\C|mc1|Add1~19\ $ (GND)))
-- \C|mc1|Add1~21\ = CARRY((\C|mc1|addr_reg\(10)) # (!\C|mc1|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C|mc1|addr_reg\(10),
	datad => VCC,
	cin => \C|mc1|Add1~19\,
	combout => \C|mc1|Add1~20_combout\,
	cout => \C|mc1|Add1~21\);

-- Location: FF_X74_Y11_N9
\C|mc1|addr_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \C|mc1|addr_reg[10]~2_combout\,
	asdata => \C|mc1|Add1~20_combout\,
	clrn => \C|ALT_INV_comb~0clkctrl_outclk\,
	sclr => \C|mc1|addr_reg[19]~19_combout\,
	sload => \C|mc1|addr_reg[0]~16_combout\,
	ena => \C|mc1|addr_next~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C|mc1|addr_reg\(10));

-- Location: LCCOMB_X74_Y10_N2
\C|mc1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|Add0~22_combout\ = (\C|mc1|addr_reg\(11) & (!\C|mc1|Add0~21\)) # (!\C|mc1|addr_reg\(11) & ((\C|mc1|Add0~21\) # (GND)))
-- \C|mc1|Add0~23\ = CARRY((!\C|mc1|Add0~21\) # (!\C|mc1|addr_reg\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C|mc1|addr_reg\(11),
	datad => VCC,
	cin => \C|mc1|Add0~21\,
	combout => \C|mc1|Add0~22_combout\,
	cout => \C|mc1|Add0~23\);

-- Location: LCCOMB_X74_Y11_N2
\C|mc1|addr_reg[11]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|addr_reg[11]~3_combout\ = (\C|mc1|Selector29~2_combout\ & ((\C|mc1|Add0~22_combout\))) # (!\C|mc1|Selector29~2_combout\ & (\tsw[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C|mc1|Selector29~2_combout\,
	datab => \tsw[17]~input_o\,
	datad => \C|mc1|Add0~22_combout\,
	combout => \C|mc1|addr_reg[11]~3_combout\);

-- Location: LCCOMB_X75_Y10_N2
\C|mc1|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|Add1~22_combout\ = (\C|mc1|addr_reg\(11) & (\C|mc1|Add1~21\ & VCC)) # (!\C|mc1|addr_reg\(11) & (!\C|mc1|Add1~21\))
-- \C|mc1|Add1~23\ = CARRY((!\C|mc1|addr_reg\(11) & !\C|mc1|Add1~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C|mc1|addr_reg\(11),
	datad => VCC,
	cin => \C|mc1|Add1~21\,
	combout => \C|mc1|Add1~22_combout\,
	cout => \C|mc1|Add1~23\);

-- Location: FF_X74_Y11_N3
\C|mc1|addr_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \C|mc1|addr_reg[11]~3_combout\,
	asdata => \C|mc1|Add1~22_combout\,
	clrn => \C|ALT_INV_comb~0clkctrl_outclk\,
	sclr => \C|mc1|addr_reg[19]~19_combout\,
	sload => \C|mc1|addr_reg[0]~16_combout\,
	ena => \C|mc1|addr_next~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C|mc1|addr_reg\(11));

-- Location: LCCOMB_X74_Y10_N4
\C|mc1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|Add0~24_combout\ = (\C|mc1|addr_reg\(12) & (\C|mc1|Add0~23\ $ (GND))) # (!\C|mc1|addr_reg\(12) & (!\C|mc1|Add0~23\ & VCC))
-- \C|mc1|Add0~25\ = CARRY((\C|mc1|addr_reg\(12) & !\C|mc1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C|mc1|addr_reg\(12),
	datad => VCC,
	cin => \C|mc1|Add0~23\,
	combout => \C|mc1|Add0~24_combout\,
	cout => \C|mc1|Add0~25\);

-- Location: LCCOMB_X74_Y10_N28
\C|mc1|addr_reg[12]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|addr_reg[12]~4_combout\ = (\C|mc1|Selector29~2_combout\ & (\C|mc1|Add0~24_combout\)) # (!\C|mc1|Selector29~2_combout\ & ((\tsw[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C|mc1|Add0~24_combout\,
	datab => \tsw[17]~input_o\,
	datad => \C|mc1|Selector29~2_combout\,
	combout => \C|mc1|addr_reg[12]~4_combout\);

-- Location: LCCOMB_X75_Y10_N4
\C|mc1|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|Add1~24_combout\ = (\C|mc1|addr_reg\(12) & ((GND) # (!\C|mc1|Add1~23\))) # (!\C|mc1|addr_reg\(12) & (\C|mc1|Add1~23\ $ (GND)))
-- \C|mc1|Add1~25\ = CARRY((\C|mc1|addr_reg\(12)) # (!\C|mc1|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C|mc1|addr_reg\(12),
	datad => VCC,
	cin => \C|mc1|Add1~23\,
	combout => \C|mc1|Add1~24_combout\,
	cout => \C|mc1|Add1~25\);

-- Location: FF_X74_Y10_N29
\C|mc1|addr_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \C|mc1|addr_reg[12]~4_combout\,
	asdata => \C|mc1|Add1~24_combout\,
	clrn => \C|ALT_INV_comb~0clkctrl_outclk\,
	sclr => \C|mc1|addr_reg[19]~19_combout\,
	sload => \C|mc1|addr_reg[0]~16_combout\,
	ena => \C|mc1|addr_next~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C|mc1|addr_reg\(12));

-- Location: LCCOMB_X74_Y10_N6
\C|mc1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|Add0~26_combout\ = (\C|mc1|addr_reg\(13) & (!\C|mc1|Add0~25\)) # (!\C|mc1|addr_reg\(13) & ((\C|mc1|Add0~25\) # (GND)))
-- \C|mc1|Add0~27\ = CARRY((!\C|mc1|Add0~25\) # (!\C|mc1|addr_reg\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C|mc1|addr_reg\(13),
	datad => VCC,
	cin => \C|mc1|Add0~25\,
	combout => \C|mc1|Add0~26_combout\,
	cout => \C|mc1|Add0~27\);

-- Location: LCCOMB_X74_Y10_N26
\C|mc1|addr_reg[13]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|addr_reg[13]~5_combout\ = (\C|mc1|Selector29~2_combout\ & (\C|mc1|Add0~26_combout\)) # (!\C|mc1|Selector29~2_combout\ & ((\tsw[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C|mc1|Add0~26_combout\,
	datab => \tsw[17]~input_o\,
	datad => \C|mc1|Selector29~2_combout\,
	combout => \C|mc1|addr_reg[13]~5_combout\);

-- Location: LCCOMB_X75_Y10_N6
\C|mc1|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|Add1~26_combout\ = (\C|mc1|addr_reg\(13) & (\C|mc1|Add1~25\ & VCC)) # (!\C|mc1|addr_reg\(13) & (!\C|mc1|Add1~25\))
-- \C|mc1|Add1~27\ = CARRY((!\C|mc1|addr_reg\(13) & !\C|mc1|Add1~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C|mc1|addr_reg\(13),
	datad => VCC,
	cin => \C|mc1|Add1~25\,
	combout => \C|mc1|Add1~26_combout\,
	cout => \C|mc1|Add1~27\);

-- Location: FF_X74_Y10_N27
\C|mc1|addr_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \C|mc1|addr_reg[13]~5_combout\,
	asdata => \C|mc1|Add1~26_combout\,
	clrn => \C|ALT_INV_comb~0clkctrl_outclk\,
	sclr => \C|mc1|addr_reg[19]~19_combout\,
	sload => \C|mc1|addr_reg[0]~16_combout\,
	ena => \C|mc1|addr_next~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C|mc1|addr_reg\(13));

-- Location: LCCOMB_X75_Y11_N8
\C|mc1|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|LessThan0~2_combout\ = (!\C|mc1|addr_reg\(10) & (!\C|mc1|addr_reg\(8) & (!\C|mc1|addr_reg\(9) & !\C|mc1|addr_reg\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C|mc1|addr_reg\(10),
	datab => \C|mc1|addr_reg\(8),
	datac => \C|mc1|addr_reg\(9),
	datad => \C|mc1|addr_reg\(11),
	combout => \C|mc1|LessThan0~2_combout\);

-- Location: LCCOMB_X74_Y10_N8
\C|mc1|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|Add0~28_combout\ = (\C|mc1|addr_reg\(14) & (\C|mc1|Add0~27\ $ (GND))) # (!\C|mc1|addr_reg\(14) & (!\C|mc1|Add0~27\ & VCC))
-- \C|mc1|Add0~29\ = CARRY((\C|mc1|addr_reg\(14) & !\C|mc1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C|mc1|addr_reg\(14),
	datad => VCC,
	cin => \C|mc1|Add0~27\,
	combout => \C|mc1|Add0~28_combout\,
	cout => \C|mc1|Add0~29\);

-- Location: LCCOMB_X74_Y10_N20
\C|mc1|addr_reg[14]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|addr_reg[14]~6_combout\ = (\C|mc1|Selector29~2_combout\ & (\C|mc1|Add0~28_combout\)) # (!\C|mc1|Selector29~2_combout\ & ((\tsw[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C|mc1|Add0~28_combout\,
	datab => \tsw[17]~input_o\,
	datad => \C|mc1|Selector29~2_combout\,
	combout => \C|mc1|addr_reg[14]~6_combout\);

-- Location: LCCOMB_X75_Y10_N8
\C|mc1|Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|Add1~28_combout\ = (\C|mc1|addr_reg\(14) & ((GND) # (!\C|mc1|Add1~27\))) # (!\C|mc1|addr_reg\(14) & (\C|mc1|Add1~27\ $ (GND)))
-- \C|mc1|Add1~29\ = CARRY((\C|mc1|addr_reg\(14)) # (!\C|mc1|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C|mc1|addr_reg\(14),
	datad => VCC,
	cin => \C|mc1|Add1~27\,
	combout => \C|mc1|Add1~28_combout\,
	cout => \C|mc1|Add1~29\);

-- Location: FF_X74_Y10_N21
\C|mc1|addr_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \C|mc1|addr_reg[14]~6_combout\,
	asdata => \C|mc1|Add1~28_combout\,
	clrn => \C|ALT_INV_comb~0clkctrl_outclk\,
	sclr => \C|mc1|addr_reg[19]~19_combout\,
	sload => \C|mc1|addr_reg[0]~16_combout\,
	ena => \C|mc1|addr_next~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C|mc1|addr_reg\(14));

-- Location: LCCOMB_X75_Y11_N6
\C|mc1|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|LessThan0~3_combout\ = (!\C|mc1|addr_reg\(13) & (!\C|mc1|addr_reg\(12) & (\C|mc1|LessThan0~2_combout\ & !\C|mc1|addr_reg\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C|mc1|addr_reg\(13),
	datab => \C|mc1|addr_reg\(12),
	datac => \C|mc1|LessThan0~2_combout\,
	datad => \C|mc1|addr_reg\(14),
	combout => \C|mc1|LessThan0~3_combout\);

-- Location: LCCOMB_X74_Y10_N10
\C|mc1|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|Add0~30_combout\ = (\C|mc1|addr_reg\(15) & (!\C|mc1|Add0~29\)) # (!\C|mc1|addr_reg\(15) & ((\C|mc1|Add0~29\) # (GND)))
-- \C|mc1|Add0~31\ = CARRY((!\C|mc1|Add0~29\) # (!\C|mc1|addr_reg\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C|mc1|addr_reg\(15),
	datad => VCC,
	cin => \C|mc1|Add0~29\,
	combout => \C|mc1|Add0~30_combout\,
	cout => \C|mc1|Add0~31\);

-- Location: LCCOMB_X75_Y10_N28
\C|mc1|addr_reg[15]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|addr_reg[15]~7_combout\ = (\C|mc1|Selector29~2_combout\ & (\C|mc1|Add0~30_combout\)) # (!\C|mc1|Selector29~2_combout\ & ((\tsw[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C|mc1|Add0~30_combout\,
	datab => \tsw[17]~input_o\,
	datad => \C|mc1|Selector29~2_combout\,
	combout => \C|mc1|addr_reg[15]~7_combout\);

-- Location: LCCOMB_X75_Y10_N10
\C|mc1|Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|Add1~30_combout\ = (\C|mc1|addr_reg\(15) & (\C|mc1|Add1~29\ & VCC)) # (!\C|mc1|addr_reg\(15) & (!\C|mc1|Add1~29\))
-- \C|mc1|Add1~31\ = CARRY((!\C|mc1|addr_reg\(15) & !\C|mc1|Add1~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C|mc1|addr_reg\(15),
	datad => VCC,
	cin => \C|mc1|Add1~29\,
	combout => \C|mc1|Add1~30_combout\,
	cout => \C|mc1|Add1~31\);

-- Location: FF_X75_Y10_N29
\C|mc1|addr_reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \C|mc1|addr_reg[15]~7_combout\,
	asdata => \C|mc1|Add1~30_combout\,
	clrn => \C|ALT_INV_comb~0clkctrl_outclk\,
	sclr => \C|mc1|addr_reg[19]~19_combout\,
	sload => \C|mc1|addr_reg[0]~16_combout\,
	ena => \C|mc1|addr_next~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C|mc1|addr_reg\(15));

-- Location: LCCOMB_X74_Y10_N12
\C|mc1|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|Add0~32_combout\ = (\C|mc1|addr_reg\(16) & (\C|mc1|Add0~31\ $ (GND))) # (!\C|mc1|addr_reg\(16) & (!\C|mc1|Add0~31\ & VCC))
-- \C|mc1|Add0~33\ = CARRY((\C|mc1|addr_reg\(16) & !\C|mc1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C|mc1|addr_reg\(16),
	datad => VCC,
	cin => \C|mc1|Add0~31\,
	combout => \C|mc1|Add0~32_combout\,
	cout => \C|mc1|Add0~33\);

-- Location: LCCOMB_X75_Y10_N22
\C|mc1|addr_reg[16]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|addr_reg[16]~8_combout\ = (\C|mc1|Selector29~2_combout\ & (\C|mc1|Add0~32_combout\)) # (!\C|mc1|Selector29~2_combout\ & ((\tsw[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C|mc1|Add0~32_combout\,
	datab => \tsw[17]~input_o\,
	datad => \C|mc1|Selector29~2_combout\,
	combout => \C|mc1|addr_reg[16]~8_combout\);

-- Location: LCCOMB_X75_Y10_N12
\C|mc1|Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|Add1~32_combout\ = (\C|mc1|addr_reg\(16) & ((GND) # (!\C|mc1|Add1~31\))) # (!\C|mc1|addr_reg\(16) & (\C|mc1|Add1~31\ $ (GND)))
-- \C|mc1|Add1~33\ = CARRY((\C|mc1|addr_reg\(16)) # (!\C|mc1|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C|mc1|addr_reg\(16),
	datad => VCC,
	cin => \C|mc1|Add1~31\,
	combout => \C|mc1|Add1~32_combout\,
	cout => \C|mc1|Add1~33\);

-- Location: FF_X75_Y10_N23
\C|mc1|addr_reg[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \C|mc1|addr_reg[16]~8_combout\,
	asdata => \C|mc1|Add1~32_combout\,
	clrn => \C|ALT_INV_comb~0clkctrl_outclk\,
	sclr => \C|mc1|addr_reg[19]~19_combout\,
	sload => \C|mc1|addr_reg[0]~16_combout\,
	ena => \C|mc1|addr_next~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C|mc1|addr_reg\(16));

-- Location: LCCOMB_X74_Y10_N14
\C|mc1|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|Add0~34_combout\ = (\C|mc1|addr_reg\(17) & (!\C|mc1|Add0~33\)) # (!\C|mc1|addr_reg\(17) & ((\C|mc1|Add0~33\) # (GND)))
-- \C|mc1|Add0~35\ = CARRY((!\C|mc1|Add0~33\) # (!\C|mc1|addr_reg\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C|mc1|addr_reg\(17),
	datad => VCC,
	cin => \C|mc1|Add0~33\,
	combout => \C|mc1|Add0~34_combout\,
	cout => \C|mc1|Add0~35\);

-- Location: LCCOMB_X75_Y10_N20
\C|mc1|addr_reg[17]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|addr_reg[17]~9_combout\ = (\C|mc1|Selector29~2_combout\ & (\C|mc1|Add0~34_combout\)) # (!\C|mc1|Selector29~2_combout\ & ((\tsw[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C|mc1|Add0~34_combout\,
	datab => \tsw[17]~input_o\,
	datad => \C|mc1|Selector29~2_combout\,
	combout => \C|mc1|addr_reg[17]~9_combout\);

-- Location: LCCOMB_X75_Y10_N14
\C|mc1|Add1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|Add1~34_combout\ = (\C|mc1|addr_reg\(17) & (\C|mc1|Add1~33\ & VCC)) # (!\C|mc1|addr_reg\(17) & (!\C|mc1|Add1~33\))
-- \C|mc1|Add1~35\ = CARRY((!\C|mc1|addr_reg\(17) & !\C|mc1|Add1~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C|mc1|addr_reg\(17),
	datad => VCC,
	cin => \C|mc1|Add1~33\,
	combout => \C|mc1|Add1~34_combout\,
	cout => \C|mc1|Add1~35\);

-- Location: FF_X75_Y10_N21
\C|mc1|addr_reg[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \C|mc1|addr_reg[17]~9_combout\,
	asdata => \C|mc1|Add1~34_combout\,
	clrn => \C|ALT_INV_comb~0clkctrl_outclk\,
	sclr => \C|mc1|addr_reg[19]~19_combout\,
	sload => \C|mc1|addr_reg[0]~16_combout\,
	ena => \C|mc1|addr_next~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C|mc1|addr_reg\(17));

-- Location: LCCOMB_X74_Y10_N16
\C|mc1|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|Add0~36_combout\ = (\C|mc1|addr_reg\(18) & (\C|mc1|Add0~35\ $ (GND))) # (!\C|mc1|addr_reg\(18) & (!\C|mc1|Add0~35\ & VCC))
-- \C|mc1|Add0~37\ = CARRY((\C|mc1|addr_reg\(18) & !\C|mc1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C|mc1|addr_reg\(18),
	datad => VCC,
	cin => \C|mc1|Add0~35\,
	combout => \C|mc1|Add0~36_combout\,
	cout => \C|mc1|Add0~37\);

-- Location: LCCOMB_X74_Y10_N30
\C|mc1|addr_reg[18]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|addr_reg[18]~10_combout\ = (\C|mc1|Selector29~2_combout\ & ((\C|mc1|Add0~36_combout\))) # (!\C|mc1|Selector29~2_combout\ & (\tsw[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C|mc1|Selector29~2_combout\,
	datab => \tsw[17]~input_o\,
	datad => \C|mc1|Add0~36_combout\,
	combout => \C|mc1|addr_reg[18]~10_combout\);

-- Location: LCCOMB_X75_Y10_N16
\C|mc1|Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|Add1~36_combout\ = (\C|mc1|addr_reg\(18) & ((GND) # (!\C|mc1|Add1~35\))) # (!\C|mc1|addr_reg\(18) & (\C|mc1|Add1~35\ $ (GND)))
-- \C|mc1|Add1~37\ = CARRY((\C|mc1|addr_reg\(18)) # (!\C|mc1|Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C|mc1|addr_reg\(18),
	datad => VCC,
	cin => \C|mc1|Add1~35\,
	combout => \C|mc1|Add1~36_combout\,
	cout => \C|mc1|Add1~37\);

-- Location: FF_X74_Y10_N31
\C|mc1|addr_reg[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \C|mc1|addr_reg[18]~10_combout\,
	asdata => \C|mc1|Add1~36_combout\,
	clrn => \C|ALT_INV_comb~0clkctrl_outclk\,
	sclr => \C|mc1|addr_reg[19]~19_combout\,
	sload => \C|mc1|addr_reg[0]~16_combout\,
	ena => \C|mc1|addr_next~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C|mc1|addr_reg\(18));

-- Location: LCCOMB_X74_Y10_N24
\C|mc1|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|LessThan1~2_combout\ = (\C|mc1|addr_reg\(15)) # (\C|mc1|addr_reg\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C|mc1|addr_reg\(15),
	datad => \C|mc1|addr_reg\(16),
	combout => \C|mc1|LessThan1~2_combout\);

-- Location: LCCOMB_X74_Y10_N18
\C|mc1|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|Add0~38_combout\ = \C|mc1|Add0~37\ $ (\C|mc1|addr_reg\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \C|mc1|addr_reg\(19),
	cin => \C|mc1|Add0~37\,
	combout => \C|mc1|Add0~38_combout\);

-- Location: LCCOMB_X75_Y10_N26
\C|mc1|addr_reg[19]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|addr_reg[19]~11_combout\ = (\C|mc1|Selector29~2_combout\ & ((\C|mc1|Add0~38_combout\))) # (!\C|mc1|Selector29~2_combout\ & (\tsw[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[17]~input_o\,
	datab => \C|mc1|Add0~38_combout\,
	datad => \C|mc1|Selector29~2_combout\,
	combout => \C|mc1|addr_reg[19]~11_combout\);

-- Location: LCCOMB_X75_Y10_N18
\C|mc1|Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|Add1~38_combout\ = \C|mc1|addr_reg\(19) $ (!\C|mc1|Add1~37\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C|mc1|addr_reg\(19),
	cin => \C|mc1|Add1~37\,
	combout => \C|mc1|Add1~38_combout\);

-- Location: FF_X75_Y10_N27
\C|mc1|addr_reg[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \C|mc1|addr_reg[19]~11_combout\,
	asdata => \C|mc1|Add1~38_combout\,
	clrn => \C|ALT_INV_comb~0clkctrl_outclk\,
	sclr => \C|mc1|addr_reg[19]~19_combout\,
	sload => \C|mc1|addr_reg[0]~16_combout\,
	ena => \C|mc1|addr_next~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C|mc1|addr_reg\(19));

-- Location: LCCOMB_X74_Y10_N22
\C|mc1|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|LessThan1~3_combout\ = (\C|mc1|addr_reg\(18)) # ((\C|mc1|LessThan1~2_combout\) # ((\C|mc1|addr_reg\(17)) # (\C|mc1|addr_reg\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C|mc1|addr_reg\(18),
	datab => \C|mc1|LessThan1~2_combout\,
	datac => \C|mc1|addr_reg\(17),
	datad => \C|mc1|addr_reg\(19),
	combout => \C|mc1|LessThan1~3_combout\);

-- Location: LCCOMB_X76_Y11_N14
\C|mc1|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|LessThan1~0_combout\ = (\C|mc1|addr_reg\(6)) # ((\C|mc1|addr_reg\(4)) # ((\C|mc1|addr_reg\(7)) # (\C|mc1|addr_reg\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C|mc1|addr_reg\(6),
	datab => \C|mc1|addr_reg\(4),
	datac => \C|mc1|addr_reg\(7),
	datad => \C|mc1|addr_reg\(5),
	combout => \C|mc1|LessThan1~0_combout\);

-- Location: LCCOMB_X76_Y11_N16
\C|mc1|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|LessThan1~1_combout\ = (\C|mc1|addr_reg\(3)) # ((\C|mc1|addr_reg\(0)) # ((\C|mc1|addr_reg\(1)) # (\C|mc1|addr_reg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C|mc1|addr_reg\(3),
	datab => \C|mc1|addr_reg\(0),
	datac => \C|mc1|addr_reg\(1),
	datad => \C|mc1|addr_reg\(2),
	combout => \C|mc1|LessThan1~1_combout\);

-- Location: LCCOMB_X75_Y11_N0
\C|mc1|LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|LessThan1~4_combout\ = (\C|mc1|LessThan0~3_combout\ & (!\C|mc1|LessThan1~3_combout\ & (!\C|mc1|LessThan1~0_combout\ & !\C|mc1|LessThan1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C|mc1|LessThan0~3_combout\,
	datab => \C|mc1|LessThan1~3_combout\,
	datac => \C|mc1|LessThan1~0_combout\,
	datad => \C|mc1|LessThan1~1_combout\,
	combout => \C|mc1|LessThan1~4_combout\);

-- Location: LCCOMB_X75_Y12_N2
\C|mc1|Selector26~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|Selector26~2_combout\ = (!\C|mc1|addr_reg[0]~18_combout\ & ((\C|mc1|addr_reg[0]~16_combout\ & ((\C|mc1|Add1~12_combout\))) # (!\C|mc1|addr_reg[0]~16_combout\ & (\C|mc1|Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C|mc1|Add0~12_combout\,
	datab => \C|mc1|addr_reg[0]~16_combout\,
	datac => \C|mc1|Add1~12_combout\,
	datad => \C|mc1|addr_reg[0]~18_combout\,
	combout => \C|mc1|Selector26~2_combout\);

-- Location: LCCOMB_X75_Y12_N8
\C|mc1|Selector26~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|Selector26~3_combout\ = (\C|mc1|Selector26~2_combout\) # ((!\C|mc1|Selector29~2_combout\ & ((!\C|mc1|state.r5~q\) # (!\C|mc1|LessThan1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C|mc1|LessThan1~4_combout\,
	datab => \C|mc1|state.r5~q\,
	datac => \C|mc1|Selector29~2_combout\,
	datad => \C|mc1|Selector26~2_combout\,
	combout => \C|mc1|Selector26~3_combout\);

-- Location: FF_X75_Y12_N9
\C|mc1|addr_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \C|mc1|Selector26~3_combout\,
	clrn => \C|ALT_INV_comb~0clkctrl_outclk\,
	ena => \C|mc1|addr_next~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C|mc1|addr_reg\(6));

-- Location: LCCOMB_X76_Y11_N6
\C|mc1|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|LessThan0~0_combout\ = (((!\C|mc1|addr_reg\(5)) # (!\C|mc1|addr_reg\(7))) # (!\C|mc1|addr_reg\(4))) # (!\C|mc1|addr_reg\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C|mc1|addr_reg\(6),
	datab => \C|mc1|addr_reg\(4),
	datac => \C|mc1|addr_reg\(7),
	datad => \C|mc1|addr_reg\(5),
	combout => \C|mc1|LessThan0~0_combout\);

-- Location: LCCOMB_X76_Y11_N4
\C|mc1|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|LessThan0~1_combout\ = (((!\C|mc1|addr_reg\(2)) # (!\C|mc1|addr_reg\(1))) # (!\C|mc1|addr_reg\(0))) # (!\C|mc1|addr_reg\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C|mc1|addr_reg\(3),
	datab => \C|mc1|addr_reg\(0),
	datac => \C|mc1|addr_reg\(1),
	datad => \C|mc1|addr_reg\(2),
	combout => \C|mc1|LessThan0~1_combout\);

-- Location: LCCOMB_X74_Y11_N0
\C|mc1|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|LessThan0~4_combout\ = (((!\C|mc1|addr_reg\(11)) # (!\C|mc1|addr_reg\(10))) # (!\C|mc1|addr_reg\(8))) # (!\C|mc1|addr_reg\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C|mc1|addr_reg\(9),
	datab => \C|mc1|addr_reg\(8),
	datac => \C|mc1|addr_reg\(10),
	datad => \C|mc1|addr_reg\(11),
	combout => \C|mc1|LessThan0~4_combout\);

-- Location: LCCOMB_X74_Y11_N10
\C|mc1|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|LessThan0~5_combout\ = (((\C|mc1|LessThan0~4_combout\) # (!\C|mc1|addr_reg\(12))) # (!\C|mc1|addr_reg\(14))) # (!\C|mc1|addr_reg\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C|mc1|addr_reg\(13),
	datab => \C|mc1|addr_reg\(14),
	datac => \C|mc1|addr_reg\(12),
	datad => \C|mc1|LessThan0~4_combout\,
	combout => \C|mc1|LessThan0~5_combout\);

-- Location: LCCOMB_X75_Y10_N24
\C|mc1|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|LessThan0~6_combout\ = (\C|mc1|addr_reg\(16) & (\C|mc1|addr_reg\(18) & (\C|mc1|addr_reg\(19) & \C|mc1|addr_reg\(17)))) # (!\C|mc1|addr_reg\(16) & ((\C|mc1|addr_reg\(18)) # ((\C|mc1|addr_reg\(19)) # (\C|mc1|addr_reg\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C|mc1|addr_reg\(16),
	datab => \C|mc1|addr_reg\(18),
	datac => \C|mc1|addr_reg\(19),
	datad => \C|mc1|addr_reg\(17),
	combout => \C|mc1|LessThan0~6_combout\);

-- Location: LCCOMB_X75_Y10_N30
\C|mc1|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|LessThan0~7_combout\ = (\C|mc1|addr_reg\(16) & (((\C|mc1|addr_reg\(15) & \C|mc1|LessThan0~6_combout\)) # (!\tsw[17]~input_o\))) # (!\C|mc1|addr_reg\(16) & (!\tsw[17]~input_o\ & ((\C|mc1|addr_reg\(15)) # (\C|mc1|LessThan0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C|mc1|addr_reg\(16),
	datab => \C|mc1|addr_reg\(15),
	datac => \tsw[17]~input_o\,
	datad => \C|mc1|LessThan0~6_combout\,
	combout => \C|mc1|LessThan0~7_combout\);

-- Location: LCCOMB_X76_Y11_N18
\C|mc1|LessThan0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|LessThan0~8_combout\ = (\C|mc1|LessThan0~7_combout\ & (!\C|mc1|LessThan0~5_combout\ & (\tsw[17]~input_o\))) # (!\C|mc1|LessThan0~7_combout\ & (((!\tsw[17]~input_o\ & \C|mc1|LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C|mc1|LessThan0~5_combout\,
	datab => \C|mc1|LessThan0~7_combout\,
	datac => \tsw[17]~input_o\,
	datad => \C|mc1|LessThan0~3_combout\,
	combout => \C|mc1|LessThan0~8_combout\);

-- Location: LCCOMB_X76_Y11_N0
\C|mc1|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|LessThan0~9_combout\ = (\C|mc1|LessThan0~8_combout\ & (!\C|mc1|LessThan0~0_combout\ & (!\C|mc1|LessThan0~1_combout\))) # (!\C|mc1|LessThan0~8_combout\ & (((!\tsw[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C|mc1|LessThan0~0_combout\,
	datab => \C|mc1|LessThan0~1_combout\,
	datac => \tsw[17]~input_o\,
	datad => \C|mc1|LessThan0~8_combout\,
	combout => \C|mc1|LessThan0~9_combout\);

-- Location: LCCOMB_X74_Y12_N18
\C|mc1|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|Selector0~0_combout\ = ((\C|mc1|state.w1~q\ & !\C|mc1|LessThan0~9_combout\)) # (!\C|mc1|state.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C|mc1|state.idle~q\,
	datac => \C|mc1|state.w1~q\,
	datad => \C|mc1|LessThan0~9_combout\,
	combout => \C|mc1|Selector0~0_combout\);

-- Location: FF_X74_Y12_N19
\C|mc1|state.w1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \C|mc1|Selector0~0_combout\,
	clrn => \C|ALT_INV_comb~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C|mc1|state.w1~q\);

-- Location: FF_X74_Y12_N9
\C|mc1|state.r1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \C|mc1|state.w1~q\,
	clrn => \C|ALT_INV_comb~0clkctrl_outclk\,
	sload => VCC,
	ena => \C|mc1|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C|mc1|state.r1~q\);

-- Location: FF_X74_Y12_N11
\C|mc1|state.w2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \C|mc1|state.r1~q\,
	clrn => \C|ALT_INV_comb~0clkctrl_outclk\,
	sload => VCC,
	ena => \C|mc1|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C|mc1|state.w2~q\);

-- Location: FF_X74_Y12_N27
\C|mc1|state.r2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \C|mc1|state.w2~q\,
	clrn => \C|ALT_INV_comb~0clkctrl_outclk\,
	sload => VCC,
	ena => \C|mc1|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C|mc1|state.r2~q\);

-- Location: FF_X74_Y12_N23
\C|mc1|state.w3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \C|mc1|state.r2~q\,
	clrn => \C|ALT_INV_comb~0clkctrl_outclk\,
	sload => VCC,
	ena => \C|mc1|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C|mc1|state.w3~q\);

-- Location: LCCOMB_X74_Y12_N30
\C|mc1|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|Selector5~0_combout\ = (\C|mc1|state.w3~q\ & ((\C|mc1|LessThan0~9_combout\) # ((!\C|mc1|LessThan1~4_combout\ & \C|mc1|state.r3~q\)))) # (!\C|mc1|state.w3~q\ & (!\C|mc1|LessThan1~4_combout\ & (\C|mc1|state.r3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C|mc1|state.w3~q\,
	datab => \C|mc1|LessThan1~4_combout\,
	datac => \C|mc1|state.r3~q\,
	datad => \C|mc1|LessThan0~9_combout\,
	combout => \C|mc1|Selector5~0_combout\);

-- Location: FF_X74_Y12_N31
\C|mc1|state.r3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \C|mc1|Selector5~0_combout\,
	clrn => \C|ALT_INV_comb~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C|mc1|state.r3~q\);

-- Location: LCCOMB_X74_Y12_N8
\C|mc1|Selector33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|Selector33~0_combout\ = (\C|mc1|state.r3~q\ & (!\C|mc1|LessThan1~4_combout\ & ((!\C|mc1|LessThan0~9_combout\) # (!\C|mc1|state.r1~q\)))) # (!\C|mc1|state.r3~q\ & (((!\C|mc1|LessThan0~9_combout\) # (!\C|mc1|state.r1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C|mc1|state.r3~q\,
	datab => \C|mc1|LessThan1~4_combout\,
	datac => \C|mc1|state.r1~q\,
	datad => \C|mc1|LessThan0~9_combout\,
	combout => \C|mc1|Selector33~0_combout\);

-- Location: LCCOMB_X74_Y12_N0
\C|mc1|Selector33~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|Selector33~1_combout\ = (\C|mc1|state.r3~q\) # (\C|mc1|state.r1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C|mc1|state.r3~q\,
	datad => \C|mc1|state.r1~q\,
	combout => \C|mc1|Selector33~1_combout\);

-- Location: LCCOMB_X74_Y12_N22
\C|mc1|Selector33~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|Selector33~2_combout\ = (\C|mc1|state.r4~q\ & (\C|mc1|LessThan1~4_combout\ & ((\C|mc1|LessThan0~9_combout\) # (!\C|mc1|state.r2~q\)))) # (!\C|mc1|state.r4~q\ & (\C|mc1|LessThan0~9_combout\ & (\C|mc1|state.r2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C|mc1|LessThan0~9_combout\,
	datab => \C|mc1|state.r4~q\,
	datac => \C|mc1|state.r2~q\,
	datad => \C|mc1|LessThan1~4_combout\,
	combout => \C|mc1|Selector33~2_combout\);

-- Location: LCCOMB_X74_Y12_N24
\C|mc1|Selector33~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|Selector33~3_combout\ = ((\C|mc1|data_b_reg~q\ & ((\C|mc1|Selector33~1_combout\) # (!\C|mc1|Selector33~2_combout\)))) # (!\C|mc1|Selector33~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C|mc1|Selector33~0_combout\,
	datab => \C|mc1|Selector33~1_combout\,
	datac => \C|mc1|data_b_reg~q\,
	datad => \C|mc1|Selector33~2_combout\,
	combout => \C|mc1|Selector33~3_combout\);

-- Location: FF_X74_Y12_N25
\C|mc1|data_b_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \C|mc1|Selector33~3_combout\,
	clrn => \C|ALT_INV_comb~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C|mc1|data_b_reg~q\);

-- Location: LCCOMB_X79_Y7_N24
\data_write[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_write[0]~0_combout\ = (\tsw[16]~input_o\ & ((\C|mc1|data_b_reg~q\))) # (!\tsw[16]~input_o\ & (\tsw[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tsw[8]~input_o\,
	datac => \C|mc1|data_b_reg~q\,
	datad => \tsw[16]~input_o\,
	combout => \data_write[0]~0_combout\);

-- Location: LCCOMB_X74_Y12_N10
\C|mc1|Selector11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|Selector11~2_combout\ = (\C|mc1|LessThan0~9_combout\) # ((!\C|mc1|state.w3~q\ & (!\C|mc1|state.w1~q\ & !\C|mc1|state.w2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C|mc1|state.w3~q\,
	datab => \C|mc1|state.w1~q\,
	datac => \C|mc1|state.w2~q\,
	datad => \C|mc1|LessThan0~9_combout\,
	combout => \C|mc1|Selector11~2_combout\);

-- Location: LCCOMB_X75_Y12_N4
\C|mc1|Selector11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|Selector11~3_combout\ = (\C|mc1|Selector11~2_combout\ & ((\C|mc1|LessThan1~4_combout\) # ((!\C|mc1|state.w5~q\ & !\C|mc1|state.w4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C|mc1|LessThan1~4_combout\,
	datab => \C|mc1|state.w5~q\,
	datac => \C|mc1|Selector11~2_combout\,
	datad => \C|mc1|state.w4~q\,
	combout => \C|mc1|Selector11~3_combout\);

-- Location: LCCOMB_X74_Y12_N14
\C|mc1|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|Selector11~0_combout\ = (!\C|mc1|LessThan1~4_combout\) # (!\C|mc1|state.r4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C|mc1|state.r4~q\,
	datad => \C|mc1|LessThan1~4_combout\,
	combout => \C|mc1|Selector11~0_combout\);

-- Location: LCCOMB_X74_Y12_N20
\C|mc1|Selector11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|Selector11~1_combout\ = (((\C|mc1|state.r2~q\ & \C|mc1|LessThan0~9_combout\)) # (!\C|mc1|Selector11~0_combout\)) # (!\C|mc1|Selector33~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C|mc1|state.r2~q\,
	datab => \C|mc1|Selector33~0_combout\,
	datac => \C|mc1|Selector11~0_combout\,
	datad => \C|mc1|LessThan0~9_combout\,
	combout => \C|mc1|Selector11~1_combout\);

-- Location: LCCOMB_X74_Y12_N28
\C|mc1|Selector11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|Selector11~4_combout\ = (\C|mc1|Selector11~3_combout\ & (!\C|mc1|Selector11~1_combout\ & ((\C|mc1|state.idle~q\) # (\C|mc1|rw_reg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C|mc1|Selector11~3_combout\,
	datab => \C|mc1|state.idle~q\,
	datac => \C|mc1|rw_reg~q\,
	datad => \C|mc1|Selector11~1_combout\,
	combout => \C|mc1|Selector11~4_combout\);

-- Location: FF_X74_Y12_N29
\C|mc1|rw_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \C|mc1|Selector11~4_combout\,
	clrn => \C|ALT_INV_comb~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C|mc1|rw_reg~q\);

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

-- Location: LCCOMB_X79_Y7_N26
\B|ctl|data_write_reg[15]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|ctl|data_write_reg[15]~0_combout\ = (\tsw[17]~input_o\ & ((\tsw[16]~input_o\ & (!\C|mc1|rw_reg~q\)) # (!\tsw[16]~input_o\ & ((!\psw[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[16]~input_o\,
	datab => \C|mc1|rw_reg~q\,
	datac => \psw[2]~input_o\,
	datad => \tsw[17]~input_o\,
	combout => \B|ctl|data_write_reg[15]~0_combout\);

-- Location: FF_X79_Y7_N25
\B|ctl|data_write_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \data_write[0]~0_combout\,
	clrn => \psw[0]~input_o\,
	ena => \B|ctl|data_write_reg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|ctl|data_write_reg\(0));

-- Location: LCCOMB_X79_Y7_N20
\B|ctl|nextstate.re~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|ctl|nextstate.re~0_combout\ = (\tsw[17]~input_o\ & ((\tsw[16]~input_o\ & (\C|mc1|rw_reg~q\)) # (!\tsw[16]~input_o\ & ((\psw[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[16]~input_o\,
	datab => \C|mc1|rw_reg~q\,
	datac => \psw[2]~input_o\,
	datad => \tsw[17]~input_o\,
	combout => \B|ctl|nextstate.re~0_combout\);

-- Location: FF_X79_Y7_N21
\B|ctl|tri_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \B|ctl|nextstate.re~0_combout\,
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

-- Location: LCCOMB_X79_Y7_N30
\data_write[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_write[1]~1_combout\ = (\tsw[16]~input_o\ & (\C|mc1|data_b_reg~q\)) # (!\tsw[16]~input_o\ & ((\tsw[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C|mc1|data_b_reg~q\,
	datac => \tsw[9]~input_o\,
	datad => \tsw[16]~input_o\,
	combout => \data_write[1]~1_combout\);

-- Location: FF_X79_Y7_N31
\B|ctl|data_write_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \data_write[1]~1_combout\,
	clrn => \psw[0]~input_o\,
	ena => \B|ctl|data_write_reg[15]~0_combout\,
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

-- Location: LCCOMB_X79_Y7_N4
\data_write[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_write[2]~2_combout\ = (\tsw[16]~input_o\ & (\C|mc1|data_b_reg~q\)) # (!\tsw[16]~input_o\ & ((\tsw[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C|mc1|data_b_reg~q\,
	datac => \tsw[10]~input_o\,
	datad => \tsw[16]~input_o\,
	combout => \data_write[2]~2_combout\);

-- Location: FF_X79_Y7_N5
\B|ctl|data_write_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \data_write[2]~2_combout\,
	clrn => \psw[0]~input_o\,
	ena => \B|ctl|data_write_reg[15]~0_combout\,
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

-- Location: LCCOMB_X79_Y7_N2
\data_write[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_write[3]~3_combout\ = (\tsw[16]~input_o\ & (\C|mc1|data_b_reg~q\)) # (!\tsw[16]~input_o\ & ((\tsw[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[16]~input_o\,
	datac => \C|mc1|data_b_reg~q\,
	datad => \tsw[11]~input_o\,
	combout => \data_write[3]~3_combout\);

-- Location: FF_X79_Y7_N3
\B|ctl|data_write_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \data_write[3]~3_combout\,
	clrn => \psw[0]~input_o\,
	ena => \B|ctl|data_write_reg[15]~0_combout\,
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

-- Location: LCCOMB_X81_Y7_N4
\data_write[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_write[4]~4_combout\ = (\tsw[16]~input_o\ & (\C|mc1|data_b_reg~q\)) # (!\tsw[16]~input_o\ & ((\tsw[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C|mc1|data_b_reg~q\,
	datab => \tsw[12]~input_o\,
	datad => \tsw[16]~input_o\,
	combout => \data_write[4]~4_combout\);

-- Location: FF_X81_Y7_N5
\B|ctl|data_write_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \data_write[4]~4_combout\,
	clrn => \psw[0]~input_o\,
	ena => \B|ctl|data_write_reg[15]~0_combout\,
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

-- Location: LCCOMB_X81_Y7_N30
\data_write[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_write[5]~5_combout\ = (\tsw[16]~input_o\ & ((\C|mc1|data_b_reg~q\))) # (!\tsw[16]~input_o\ & (\tsw[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[13]~input_o\,
	datac => \tsw[16]~input_o\,
	datad => \C|mc1|data_b_reg~q\,
	combout => \data_write[5]~5_combout\);

-- Location: FF_X81_Y7_N31
\B|ctl|data_write_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \data_write[5]~5_combout\,
	clrn => \psw[0]~input_o\,
	ena => \B|ctl|data_write_reg[15]~0_combout\,
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

-- Location: LCCOMB_X81_Y7_N12
\data_write[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_write[6]~6_combout\ = (\tsw[16]~input_o\ & ((\C|mc1|data_b_reg~q\))) # (!\tsw[16]~input_o\ & (\tsw[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[14]~input_o\,
	datac => \tsw[16]~input_o\,
	datad => \C|mc1|data_b_reg~q\,
	combout => \data_write[6]~6_combout\);

-- Location: FF_X81_Y7_N13
\B|ctl|data_write_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \data_write[6]~6_combout\,
	clrn => \psw[0]~input_o\,
	ena => \B|ctl|data_write_reg[15]~0_combout\,
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

-- Location: LCCOMB_X81_Y7_N10
\data_write[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_write[7]~7_combout\ = (\tsw[16]~input_o\ & (\C|mc1|data_b_reg~q\)) # (!\tsw[16]~input_o\ & ((\tsw[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C|mc1|data_b_reg~q\,
	datac => \tsw[15]~input_o\,
	datad => \tsw[16]~input_o\,
	combout => \data_write[7]~7_combout\);

-- Location: FF_X81_Y7_N11
\B|ctl|data_write_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \data_write[7]~7_combout\,
	clrn => \psw[0]~input_o\,
	ena => \B|ctl|data_write_reg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|ctl|data_write_reg\(7));

-- Location: LCCOMB_X79_Y7_N18
\data_write[11]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_write[11]~8_combout\ = (\C|mc1|data_b_reg~q\ & \tsw[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C|mc1|data_b_reg~q\,
	datad => \tsw[16]~input_o\,
	combout => \data_write[11]~8_combout\);

-- Location: FF_X79_Y7_N29
\B|ctl|data_write_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \data_write[11]~8_combout\,
	clrn => \psw[0]~input_o\,
	sload => VCC,
	ena => \B|ctl|data_write_reg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|ctl|data_write_reg\(8));

-- Location: LCCOMB_X79_Y7_N16
\B|ctl|data_write_reg[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|ctl|data_write_reg[9]~feeder_combout\ = \data_write[11]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_write[11]~8_combout\,
	combout => \B|ctl|data_write_reg[9]~feeder_combout\);

-- Location: FF_X79_Y7_N17
\B|ctl|data_write_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \B|ctl|data_write_reg[9]~feeder_combout\,
	clrn => \psw[0]~input_o\,
	ena => \B|ctl|data_write_reg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|ctl|data_write_reg\(9));

-- Location: LCCOMB_X79_Y7_N6
\B|ctl|data_write_reg[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|ctl|data_write_reg[10]~feeder_combout\ = \data_write[11]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_write[11]~8_combout\,
	combout => \B|ctl|data_write_reg[10]~feeder_combout\);

-- Location: FF_X79_Y7_N7
\B|ctl|data_write_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \B|ctl|data_write_reg[10]~feeder_combout\,
	clrn => \psw[0]~input_o\,
	ena => \B|ctl|data_write_reg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|ctl|data_write_reg\(10));

-- Location: LCCOMB_X79_Y7_N12
\B|ctl|data_write_reg[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|ctl|data_write_reg[11]~feeder_combout\ = \data_write[11]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_write[11]~8_combout\,
	combout => \B|ctl|data_write_reg[11]~feeder_combout\);

-- Location: FF_X79_Y7_N13
\B|ctl|data_write_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \B|ctl|data_write_reg[11]~feeder_combout\,
	clrn => \psw[0]~input_o\,
	ena => \B|ctl|data_write_reg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|ctl|data_write_reg\(11));

-- Location: LCCOMB_X79_Y7_N10
\B|ctl|data_write_reg[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|ctl|data_write_reg[12]~feeder_combout\ = \data_write[11]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_write[11]~8_combout\,
	combout => \B|ctl|data_write_reg[12]~feeder_combout\);

-- Location: FF_X79_Y7_N11
\B|ctl|data_write_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \B|ctl|data_write_reg[12]~feeder_combout\,
	clrn => \psw[0]~input_o\,
	ena => \B|ctl|data_write_reg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|ctl|data_write_reg\(12));

-- Location: FF_X79_Y7_N23
\B|ctl|data_write_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \data_write[11]~8_combout\,
	clrn => \psw[0]~input_o\,
	sload => VCC,
	ena => \B|ctl|data_write_reg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|ctl|data_write_reg\(13));

-- Location: LCCOMB_X79_Y7_N0
\B|ctl|data_write_reg[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|ctl|data_write_reg[14]~feeder_combout\ = \data_write[11]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_write[11]~8_combout\,
	combout => \B|ctl|data_write_reg[14]~feeder_combout\);

-- Location: FF_X79_Y7_N1
\B|ctl|data_write_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \B|ctl|data_write_reg[14]~feeder_combout\,
	clrn => \psw[0]~input_o\,
	ena => \B|ctl|data_write_reg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|ctl|data_write_reg\(14));

-- Location: FF_X79_Y7_N19
\B|ctl|data_write_reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \data_write[11]~8_combout\,
	clrn => \psw[0]~input_o\,
	ena => \B|ctl|data_write_reg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|ctl|data_write_reg\(15));

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

-- Location: LCCOMB_X84_Y11_N22
\A|lc1|LessThan9~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan9~8_combout\ = (!\A|lc1|count\(27) & (!\A|lc1|count\(28) & (!\A|lc1|count\(30) & !\A|lc1|count\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|count\(27),
	datab => \A|lc1|count\(28),
	datac => \A|lc1|count\(30),
	datad => \A|lc1|count\(29),
	combout => \A|lc1|LessThan9~8_combout\);

-- Location: LCCOMB_X85_Y12_N0
\A|lc1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Add0~0_combout\ = \A|lc1|count\(0) $ (VCC)
-- \A|lc1|Add0~1\ = CARRY(\A|lc1|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|count\(0),
	datad => VCC,
	combout => \A|lc1|Add0~0_combout\,
	cout => \A|lc1|Add0~1\);

-- Location: LCCOMB_X86_Y12_N2
\A|lc1|Selector32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector32~0_combout\ = (\A|lc1|Add0~0_combout\ & \A|lc1|count[13]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|lc1|Add0~0_combout\,
	datad => \A|lc1|count[13]~5_combout\,
	combout => \A|lc1|Selector32~0_combout\);

-- Location: FF_X86_Y12_N3
\A|lc1|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|lc1|Selector32~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|count\(0));

-- Location: LCCOMB_X85_Y12_N2
\A|lc1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Add0~2_combout\ = (\A|lc1|count\(1) & (!\A|lc1|Add0~1\)) # (!\A|lc1|count\(1) & ((\A|lc1|Add0~1\) # (GND)))
-- \A|lc1|Add0~3\ = CARRY((!\A|lc1|Add0~1\) # (!\A|lc1|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|count\(1),
	datad => VCC,
	cin => \A|lc1|Add0~1\,
	combout => \A|lc1|Add0~2_combout\,
	cout => \A|lc1|Add0~3\);

-- Location: LCCOMB_X86_Y12_N4
\A|lc1|Selector31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector31~0_combout\ = (\A|lc1|Add0~2_combout\ & \A|lc1|count[13]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Add0~2_combout\,
	datad => \A|lc1|count[13]~5_combout\,
	combout => \A|lc1|Selector31~0_combout\);

-- Location: FF_X86_Y12_N5
\A|lc1|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|lc1|Selector31~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|count\(1));

-- Location: LCCOMB_X85_Y12_N4
\A|lc1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Add0~4_combout\ = (\A|lc1|count\(2) & (\A|lc1|Add0~3\ $ (GND))) # (!\A|lc1|count\(2) & (!\A|lc1|Add0~3\ & VCC))
-- \A|lc1|Add0~5\ = CARRY((\A|lc1|count\(2) & !\A|lc1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|lc1|count\(2),
	datad => VCC,
	cin => \A|lc1|Add0~3\,
	combout => \A|lc1|Add0~4_combout\,
	cout => \A|lc1|Add0~5\);

-- Location: LCCOMB_X86_Y12_N18
\A|lc1|Selector30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector30~0_combout\ = (\A|lc1|Add0~4_combout\ & \A|lc1|count[13]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|lc1|Add0~4_combout\,
	datad => \A|lc1|count[13]~5_combout\,
	combout => \A|lc1|Selector30~0_combout\);

-- Location: FF_X86_Y12_N19
\A|lc1|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|lc1|Selector30~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|count\(2));

-- Location: LCCOMB_X85_Y12_N6
\A|lc1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Add0~6_combout\ = (\A|lc1|count\(3) & (!\A|lc1|Add0~5\)) # (!\A|lc1|count\(3) & ((\A|lc1|Add0~5\) # (GND)))
-- \A|lc1|Add0~7\ = CARRY((!\A|lc1|Add0~5\) # (!\A|lc1|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|lc1|count\(3),
	datad => VCC,
	cin => \A|lc1|Add0~5\,
	combout => \A|lc1|Add0~6_combout\,
	cout => \A|lc1|Add0~7\);

-- Location: LCCOMB_X86_Y12_N0
\A|lc1|Selector29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector29~0_combout\ = (\A|lc1|Add0~6_combout\ & \A|lc1|count[13]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|lc1|Add0~6_combout\,
	datad => \A|lc1|count[13]~5_combout\,
	combout => \A|lc1|Selector29~0_combout\);

-- Location: FF_X86_Y12_N1
\A|lc1|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|lc1|Selector29~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|count\(3));

-- Location: LCCOMB_X85_Y12_N8
\A|lc1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Add0~8_combout\ = (\A|lc1|count\(4) & (\A|lc1|Add0~7\ $ (GND))) # (!\A|lc1|count\(4) & (!\A|lc1|Add0~7\ & VCC))
-- \A|lc1|Add0~9\ = CARRY((\A|lc1|count\(4) & !\A|lc1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|lc1|count\(4),
	datad => VCC,
	cin => \A|lc1|Add0~7\,
	combout => \A|lc1|Add0~8_combout\,
	cout => \A|lc1|Add0~9\);

-- Location: LCCOMB_X86_Y12_N26
\A|lc1|Selector28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector28~0_combout\ = (\A|lc1|Add0~8_combout\ & \A|lc1|count[13]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Add0~8_combout\,
	datad => \A|lc1|count[13]~5_combout\,
	combout => \A|lc1|Selector28~0_combout\);

-- Location: FF_X86_Y12_N27
\A|lc1|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|lc1|Selector28~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|count\(4));

-- Location: LCCOMB_X85_Y12_N10
\A|lc1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Add0~10_combout\ = (\A|lc1|count\(5) & (!\A|lc1|Add0~9\)) # (!\A|lc1|count\(5) & ((\A|lc1|Add0~9\) # (GND)))
-- \A|lc1|Add0~11\ = CARRY((!\A|lc1|Add0~9\) # (!\A|lc1|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|lc1|count\(5),
	datad => VCC,
	cin => \A|lc1|Add0~9\,
	combout => \A|lc1|Add0~10_combout\,
	cout => \A|lc1|Add0~11\);

-- Location: LCCOMB_X86_Y12_N28
\A|lc1|Selector27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector27~0_combout\ = (\A|lc1|Add0~10_combout\ & \A|lc1|count[13]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Add0~10_combout\,
	datad => \A|lc1|count[13]~5_combout\,
	combout => \A|lc1|Selector27~0_combout\);

-- Location: FF_X86_Y12_N29
\A|lc1|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|lc1|Selector27~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|count\(5));

-- Location: LCCOMB_X85_Y12_N12
\A|lc1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Add0~12_combout\ = (\A|lc1|count\(6) & (\A|lc1|Add0~11\ $ (GND))) # (!\A|lc1|count\(6) & (!\A|lc1|Add0~11\ & VCC))
-- \A|lc1|Add0~13\ = CARRY((\A|lc1|count\(6) & !\A|lc1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|count\(6),
	datad => VCC,
	cin => \A|lc1|Add0~11\,
	combout => \A|lc1|Add0~12_combout\,
	cout => \A|lc1|Add0~13\);

-- Location: LCCOMB_X86_Y12_N6
\A|lc1|Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector26~0_combout\ = (\A|lc1|Add0~12_combout\ & \A|lc1|count[13]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Add0~12_combout\,
	datad => \A|lc1|count[13]~5_combout\,
	combout => \A|lc1|Selector26~0_combout\);

-- Location: FF_X86_Y12_N7
\A|lc1|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|lc1|Selector26~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|count\(6));

-- Location: LCCOMB_X85_Y12_N14
\A|lc1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Add0~14_combout\ = (\A|lc1|count\(7) & (!\A|lc1|Add0~13\)) # (!\A|lc1|count\(7) & ((\A|lc1|Add0~13\) # (GND)))
-- \A|lc1|Add0~15\ = CARRY((!\A|lc1|Add0~13\) # (!\A|lc1|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|count\(7),
	datad => VCC,
	cin => \A|lc1|Add0~13\,
	combout => \A|lc1|Add0~14_combout\,
	cout => \A|lc1|Add0~15\);

-- Location: LCCOMB_X84_Y12_N8
\A|lc1|Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector25~0_combout\ = (\A|lc1|Add0~14_combout\ & \A|lc1|count[13]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|lc1|Add0~14_combout\,
	datac => \A|lc1|count[13]~5_combout\,
	combout => \A|lc1|Selector25~0_combout\);

-- Location: FF_X84_Y12_N9
\A|lc1|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|lc1|Selector25~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|count\(7));

-- Location: LCCOMB_X85_Y12_N16
\A|lc1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Add0~16_combout\ = (\A|lc1|count\(8) & (\A|lc1|Add0~15\ $ (GND))) # (!\A|lc1|count\(8) & (!\A|lc1|Add0~15\ & VCC))
-- \A|lc1|Add0~17\ = CARRY((\A|lc1|count\(8) & !\A|lc1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|lc1|count\(8),
	datad => VCC,
	cin => \A|lc1|Add0~15\,
	combout => \A|lc1|Add0~16_combout\,
	cout => \A|lc1|Add0~17\);

-- Location: LCCOMB_X84_Y12_N18
\A|lc1|Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector24~0_combout\ = (\A|lc1|Add0~16_combout\ & \A|lc1|count[13]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|lc1|Add0~16_combout\,
	datac => \A|lc1|count[13]~5_combout\,
	combout => \A|lc1|Selector24~0_combout\);

-- Location: FF_X84_Y12_N19
\A|lc1|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|lc1|Selector24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|count\(8));

-- Location: LCCOMB_X85_Y12_N18
\A|lc1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Add0~18_combout\ = (\A|lc1|count\(9) & (!\A|lc1|Add0~17\)) # (!\A|lc1|count\(9) & ((\A|lc1|Add0~17\) # (GND)))
-- \A|lc1|Add0~19\ = CARRY((!\A|lc1|Add0~17\) # (!\A|lc1|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|count\(9),
	datad => VCC,
	cin => \A|lc1|Add0~17\,
	combout => \A|lc1|Add0~18_combout\,
	cout => \A|lc1|Add0~19\);

-- Location: LCCOMB_X86_Y12_N20
\A|lc1|Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector23~0_combout\ = (\A|lc1|Add0~18_combout\ & \A|lc1|count[13]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|lc1|Add0~18_combout\,
	datad => \A|lc1|count[13]~5_combout\,
	combout => \A|lc1|Selector23~0_combout\);

-- Location: FF_X86_Y12_N21
\A|lc1|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|lc1|Selector23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|count\(9));

-- Location: LCCOMB_X85_Y12_N20
\A|lc1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Add0~20_combout\ = (\A|lc1|count\(10) & (\A|lc1|Add0~19\ $ (GND))) # (!\A|lc1|count\(10) & (!\A|lc1|Add0~19\ & VCC))
-- \A|lc1|Add0~21\ = CARRY((\A|lc1|count\(10) & !\A|lc1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|lc1|count\(10),
	datad => VCC,
	cin => \A|lc1|Add0~19\,
	combout => \A|lc1|Add0~20_combout\,
	cout => \A|lc1|Add0~21\);

-- Location: LCCOMB_X82_Y12_N2
\A|lc1|Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector22~0_combout\ = (\A|lc1|count[13]~5_combout\ & \A|lc1|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|lc1|count[13]~5_combout\,
	datad => \A|lc1|Add0~20_combout\,
	combout => \A|lc1|Selector22~0_combout\);

-- Location: FF_X82_Y12_N3
\A|lc1|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|lc1|Selector22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|count\(10));

-- Location: LCCOMB_X85_Y12_N22
\A|lc1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Add0~22_combout\ = (\A|lc1|count\(11) & (!\A|lc1|Add0~21\)) # (!\A|lc1|count\(11) & ((\A|lc1|Add0~21\) # (GND)))
-- \A|lc1|Add0~23\ = CARRY((!\A|lc1|Add0~21\) # (!\A|lc1|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|count\(11),
	datad => VCC,
	cin => \A|lc1|Add0~21\,
	combout => \A|lc1|Add0~22_combout\,
	cout => \A|lc1|Add0~23\);

-- Location: LCCOMB_X85_Y13_N4
\A|lc1|Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector21~0_combout\ = (\A|lc1|Add0~22_combout\ & \A|lc1|count[13]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|lc1|Add0~22_combout\,
	datad => \A|lc1|count[13]~5_combout\,
	combout => \A|lc1|Selector21~0_combout\);

-- Location: FF_X85_Y13_N5
\A|lc1|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|lc1|Selector21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|count\(11));

-- Location: LCCOMB_X85_Y12_N24
\A|lc1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Add0~24_combout\ = (\A|lc1|count\(12) & (\A|lc1|Add0~23\ $ (GND))) # (!\A|lc1|count\(12) & (!\A|lc1|Add0~23\ & VCC))
-- \A|lc1|Add0~25\ = CARRY((\A|lc1|count\(12) & !\A|lc1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|lc1|count\(12),
	datad => VCC,
	cin => \A|lc1|Add0~23\,
	combout => \A|lc1|Add0~24_combout\,
	cout => \A|lc1|Add0~25\);

-- Location: LCCOMB_X82_Y12_N28
\A|lc1|Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector20~0_combout\ = (\A|lc1|Add0~24_combout\ & \A|lc1|count[13]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Add0~24_combout\,
	datac => \A|lc1|count[13]~5_combout\,
	combout => \A|lc1|Selector20~0_combout\);

-- Location: FF_X82_Y12_N29
\A|lc1|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|lc1|Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|count\(12));

-- Location: LCCOMB_X85_Y12_N26
\A|lc1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Add0~26_combout\ = (\A|lc1|count\(13) & (!\A|lc1|Add0~25\)) # (!\A|lc1|count\(13) & ((\A|lc1|Add0~25\) # (GND)))
-- \A|lc1|Add0~27\ = CARRY((!\A|lc1|Add0~25\) # (!\A|lc1|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|count\(13),
	datad => VCC,
	cin => \A|lc1|Add0~25\,
	combout => \A|lc1|Add0~26_combout\,
	cout => \A|lc1|Add0~27\);

-- Location: LCCOMB_X85_Y13_N30
\A|lc1|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector19~0_combout\ = (\A|lc1|Add0~26_combout\ & \A|lc1|count[13]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|lc1|Add0~26_combout\,
	datad => \A|lc1|count[13]~5_combout\,
	combout => \A|lc1|Selector19~0_combout\);

-- Location: FF_X85_Y13_N31
\A|lc1|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|lc1|Selector19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|count\(13));

-- Location: LCCOMB_X85_Y12_N28
\A|lc1|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Add0~28_combout\ = (\A|lc1|count\(14) & (\A|lc1|Add0~27\ $ (GND))) # (!\A|lc1|count\(14) & (!\A|lc1|Add0~27\ & VCC))
-- \A|lc1|Add0~29\ = CARRY((\A|lc1|count\(14) & !\A|lc1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|lc1|count\(14),
	datad => VCC,
	cin => \A|lc1|Add0~27\,
	combout => \A|lc1|Add0~28_combout\,
	cout => \A|lc1|Add0~29\);

-- Location: LCCOMB_X84_Y12_N28
\A|lc1|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector18~0_combout\ = (\A|lc1|Add0~28_combout\ & \A|lc1|count[13]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|lc1|Add0~28_combout\,
	datac => \A|lc1|count[13]~5_combout\,
	combout => \A|lc1|Selector18~0_combout\);

-- Location: FF_X84_Y12_N29
\A|lc1|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|lc1|Selector18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|count\(14));

-- Location: LCCOMB_X84_Y12_N14
\A|lc1|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan0~0_combout\ = (!\A|lc1|count\(15) & (!\A|lc1|count\(14) & !\A|lc1|count\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|count\(15),
	datab => \A|lc1|count\(14),
	datad => \A|lc1|count\(16),
	combout => \A|lc1|LessThan0~0_combout\);

-- Location: LCCOMB_X85_Y14_N30
\A|lc1|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan0~1_combout\ = (((!\A|lc1|count\(6) & !\A|lc1|count\(5))) # (!\A|lc1|count\(8))) # (!\A|lc1|count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|count\(7),
	datab => \A|lc1|count\(6),
	datac => \A|lc1|count\(8),
	datad => \A|lc1|count\(5),
	combout => \A|lc1|LessThan0~1_combout\);

-- Location: LCCOMB_X85_Y14_N28
\A|lc1|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan0~2_combout\ = ((\A|lc1|LessThan0~1_combout\ & !\A|lc1|count\(9))) # (!\A|lc1|count\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|LessThan0~1_combout\,
	datab => \A|lc1|count\(9),
	datac => \A|lc1|count\(10),
	combout => \A|lc1|LessThan0~2_combout\);

-- Location: LCCOMB_X85_Y13_N20
\A|lc1|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan0~3_combout\ = ((!\A|lc1|count\(11) & (!\A|lc1|count\(12) & \A|lc1|LessThan0~2_combout\))) # (!\A|lc1|count\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|count\(11),
	datab => \A|lc1|count\(12),
	datac => \A|lc1|count\(13),
	datad => \A|lc1|LessThan0~2_combout\,
	combout => \A|lc1|LessThan0~3_combout\);

-- Location: LCCOMB_X85_Y13_N22
\A|lc1|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan0~4_combout\ = (((\A|lc1|LessThan0~0_combout\ & \A|lc1|LessThan0~3_combout\)) # (!\A|lc1|count\(17))) # (!\A|lc1|count\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|LessThan0~0_combout\,
	datab => \A|lc1|count\(18),
	datac => \A|lc1|count\(17),
	datad => \A|lc1|LessThan0~3_combout\,
	combout => \A|lc1|LessThan0~4_combout\);

-- Location: LCCOMB_X85_Y13_N12
\A|lc1|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan0~5_combout\ = ((!\A|lc1|count\(20) & (\A|lc1|LessThan0~4_combout\ & !\A|lc1|count\(19)))) # (!\A|lc1|count\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|count\(20),
	datab => \A|lc1|count\(21),
	datac => \A|lc1|LessThan0~4_combout\,
	datad => \A|lc1|count\(19),
	combout => \A|lc1|LessThan0~5_combout\);

-- Location: LCCOMB_X84_Y11_N26
\A|lc1|LessThan9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan9~0_combout\ = (!\A|lc1|count\(24) & (!\A|lc1|count\(25) & (!\A|lc1|count\(22) & !\A|lc1|count\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|count\(24),
	datab => \A|lc1|count\(25),
	datac => \A|lc1|count\(22),
	datad => \A|lc1|count\(23),
	combout => \A|lc1|LessThan9~0_combout\);

-- Location: LCCOMB_X84_Y11_N24
\A|lc1|LessThan9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan9~1_combout\ = (\A|lc1|LessThan9~0_combout\ & !\A|lc1|count\(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|lc1|LessThan9~0_combout\,
	datad => \A|lc1|count\(26),
	combout => \A|lc1|LessThan9~1_combout\);

-- Location: LCCOMB_X85_Y14_N22
\A|lc1|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan0~6_combout\ = (\A|lc1|count\(31)) # ((\A|lc1|LessThan9~8_combout\ & (\A|lc1|LessThan0~5_combout\ & \A|lc1|LessThan9~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|count\(31),
	datab => \A|lc1|LessThan9~8_combout\,
	datac => \A|lc1|LessThan0~5_combout\,
	datad => \A|lc1|LessThan9~1_combout\,
	combout => \A|lc1|LessThan0~6_combout\);

-- Location: LCCOMB_X79_Y14_N12
\A|lc1|state~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|state~7_combout\ = (\psw[0]~input_o\ & ((\A|lc1|state.power~q\) # (!\A|lc1|LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \psw[0]~input_o\,
	datac => \A|lc1|state.power~q\,
	datad => \A|lc1|LessThan0~6_combout\,
	combout => \A|lc1|state~7_combout\);

-- Location: FF_X79_Y14_N13
\A|lc1|state.power\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|lc1|state~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|state.power~q\);

-- Location: LCCOMB_X85_Y12_N30
\A|lc1|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Add0~30_combout\ = (\A|lc1|count\(15) & (!\A|lc1|Add0~29\)) # (!\A|lc1|count\(15) & ((\A|lc1|Add0~29\) # (GND)))
-- \A|lc1|Add0~31\ = CARRY((!\A|lc1|Add0~29\) # (!\A|lc1|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|lc1|count\(15),
	datad => VCC,
	cin => \A|lc1|Add0~29\,
	combout => \A|lc1|Add0~30_combout\,
	cout => \A|lc1|Add0~31\);

-- Location: LCCOMB_X84_Y12_N12
\A|lc1|busy~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|busy~7_combout\ = (\A|lc1|Add0~30_combout\ & \A|lc1|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|lc1|Add0~30_combout\,
	datad => \A|lc1|Add0~32_combout\,
	combout => \A|lc1|busy~7_combout\);

-- Location: LCCOMB_X84_Y11_N6
\A|lc1|LessThan5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan5~2_combout\ = (!\A|lc1|Add0~54_combout\ & (!\A|lc1|Add0~56_combout\ & (!\A|lc1|Add0~52_combout\ & !\A|lc1|Add0~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Add0~54_combout\,
	datab => \A|lc1|Add0~56_combout\,
	datac => \A|lc1|Add0~52_combout\,
	datad => \A|lc1|Add0~50_combout\,
	combout => \A|lc1|LessThan5~2_combout\);

-- Location: LCCOMB_X84_Y11_N8
\A|lc1|LessThan5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan5~1_combout\ = (!\A|lc1|Add0~42_combout\ & (!\A|lc1|Add0~44_combout\ & (!\A|lc1|Add0~46_combout\ & !\A|lc1|Add0~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Add0~42_combout\,
	datab => \A|lc1|Add0~44_combout\,
	datac => \A|lc1|Add0~46_combout\,
	datad => \A|lc1|Add0~48_combout\,
	combout => \A|lc1|LessThan5~1_combout\);

-- Location: LCCOMB_X85_Y13_N2
\A|lc1|LessThan5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan5~0_combout\ = (!\A|lc1|Add0~36_combout\ & (!\A|lc1|Add0~40_combout\ & (!\A|lc1|Add0~34_combout\ & !\A|lc1|Add0~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Add0~36_combout\,
	datab => \A|lc1|Add0~40_combout\,
	datac => \A|lc1|Add0~34_combout\,
	datad => \A|lc1|Add0~38_combout\,
	combout => \A|lc1|LessThan5~0_combout\);

-- Location: LCCOMB_X84_Y11_N0
\A|lc1|LessThan5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan5~3_combout\ = (\A|lc1|LessThan5~2_combout\ & (!\A|lc1|Add0~58_combout\ & (\A|lc1|LessThan5~1_combout\ & \A|lc1|LessThan5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|LessThan5~2_combout\,
	datab => \A|lc1|Add0~58_combout\,
	datac => \A|lc1|LessThan5~1_combout\,
	datad => \A|lc1|LessThan5~0_combout\,
	combout => \A|lc1|LessThan5~3_combout\);

-- Location: LCCOMB_X83_Y12_N10
\A|lc1|LessThan8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan8~2_combout\ = (!\A|lc1|Add0~12_combout\ & ((!\A|lc1|Add0~8_combout\) # (!\A|lc1|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Add0~10_combout\,
	datac => \A|lc1|Add0~8_combout\,
	datad => \A|lc1|Add0~12_combout\,
	combout => \A|lc1|LessThan8~2_combout\);

-- Location: LCCOMB_X83_Y12_N30
\A|lc1|LessThan8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan8~1_combout\ = (\A|lc1|Add0~20_combout\ & \A|lc1|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Add0~20_combout\,
	datac => \A|lc1|Add0~22_combout\,
	combout => \A|lc1|LessThan8~1_combout\);

-- Location: LCCOMB_X83_Y12_N2
\A|lc1|LessThan8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan8~0_combout\ = (\A|lc1|Add0~16_combout\ & \A|lc1|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|lc1|Add0~16_combout\,
	datad => \A|lc1|Add0~14_combout\,
	combout => \A|lc1|LessThan8~0_combout\);

-- Location: LCCOMB_X83_Y12_N8
\A|lc1|LessThan8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan8~3_combout\ = ((!\A|lc1|Add0~18_combout\ & ((\A|lc1|LessThan8~2_combout\) # (!\A|lc1|LessThan8~0_combout\)))) # (!\A|lc1|LessThan8~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|LessThan8~2_combout\,
	datab => \A|lc1|LessThan8~1_combout\,
	datac => \A|lc1|Add0~18_combout\,
	datad => \A|lc1|LessThan8~0_combout\,
	combout => \A|lc1|LessThan8~3_combout\);

-- Location: LCCOMB_X84_Y12_N2
\A|lc1|LessThan8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan8~4_combout\ = (!\A|lc1|Add0~28_combout\ & (((\A|lc1|LessThan8~3_combout\ & !\A|lc1|Add0~24_combout\)) # (!\A|lc1|Add0~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|LessThan8~3_combout\,
	datab => \A|lc1|Add0~28_combout\,
	datac => \A|lc1|Add0~24_combout\,
	datad => \A|lc1|Add0~26_combout\,
	combout => \A|lc1|LessThan8~4_combout\);

-- Location: LCCOMB_X84_Y12_N0
\A|lc1|LessThan8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan8~5_combout\ = (\A|lc1|LessThan5~3_combout\ & (!\A|lc1|Add0~60_combout\ & ((\A|lc1|LessThan8~4_combout\) # (!\A|lc1|busy~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|busy~7_combout\,
	datab => \A|lc1|LessThan5~3_combout\,
	datac => \A|lc1|Add0~60_combout\,
	datad => \A|lc1|LessThan8~4_combout\,
	combout => \A|lc1|LessThan8~5_combout\);

-- Location: LCCOMB_X82_Y12_N0
\A|lc1|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan1~0_combout\ = (!\A|lc1|Add0~22_combout\ & (!\A|lc1|Add0~18_combout\ & (!\A|lc1|Add0~24_combout\ & !\A|lc1|Add0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Add0~22_combout\,
	datab => \A|lc1|Add0~18_combout\,
	datac => \A|lc1|Add0~24_combout\,
	datad => \A|lc1|Add0~20_combout\,
	combout => \A|lc1|LessThan1~0_combout\);

-- Location: LCCOMB_X83_Y12_N16
\A|lc1|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan1~1_combout\ = (\A|lc1|Add0~10_combout\ & (\A|lc1|LessThan8~0_combout\ & (\A|lc1|Add0~8_combout\ & \A|lc1|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Add0~10_combout\,
	datab => \A|lc1|LessThan8~0_combout\,
	datac => \A|lc1|Add0~8_combout\,
	datad => \A|lc1|Add0~12_combout\,
	combout => \A|lc1|LessThan1~1_combout\);

-- Location: LCCOMB_X84_Y12_N26
\A|lc1|LessThan7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan7~2_combout\ = ((\A|lc1|LessThan1~0_combout\ & ((!\A|lc1|LessThan1~1_combout\) # (!\A|lc1|Add0~6_combout\)))) # (!\A|lc1|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Add0~6_combout\,
	datab => \A|lc1|LessThan1~0_combout\,
	datac => \A|lc1|LessThan1~1_combout\,
	datad => \A|lc1|Add0~26_combout\,
	combout => \A|lc1|LessThan7~2_combout\);

-- Location: LCCOMB_X84_Y12_N22
\A|lc1|LessThan7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan7~4_combout\ = (((\A|lc1|LessThan7~2_combout\ & !\A|lc1|Add0~28_combout\)) # (!\A|lc1|Add0~30_combout\)) # (!\A|lc1|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|LessThan7~2_combout\,
	datab => \A|lc1|Add0~32_combout\,
	datac => \A|lc1|Add0~30_combout\,
	datad => \A|lc1|Add0~28_combout\,
	combout => \A|lc1|LessThan7~4_combout\);

-- Location: LCCOMB_X84_Y12_N20
\A|lc1|LessThan7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan7~3_combout\ = (\A|lc1|LessThan7~4_combout\ & (!\A|lc1|Add0~60_combout\ & \A|lc1|LessThan5~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|LessThan7~4_combout\,
	datac => \A|lc1|Add0~60_combout\,
	datad => \A|lc1|LessThan5~3_combout\,
	combout => \A|lc1|LessThan7~3_combout\);

-- Location: LCCOMB_X83_Y12_N22
\A|lc1|busy~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|busy~4_combout\ = (!\A|lc1|Add0~4_combout\ & (!\A|lc1|Add0~6_combout\ & (!\A|lc1|Add0~8_combout\ & !\A|lc1|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Add0~4_combout\,
	datab => \A|lc1|Add0~6_combout\,
	datac => \A|lc1|Add0~8_combout\,
	datad => \A|lc1|Add0~10_combout\,
	combout => \A|lc1|busy~4_combout\);

-- Location: LCCOMB_X83_Y12_N12
\A|lc1|busy~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|busy~5_combout\ = (\A|lc1|busy~4_combout\ & (!\A|lc1|Add0~14_combout\ & (!\A|lc1|Add0~16_combout\ & !\A|lc1|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|busy~4_combout\,
	datab => \A|lc1|Add0~14_combout\,
	datac => \A|lc1|Add0~16_combout\,
	datad => \A|lc1|Add0~12_combout\,
	combout => \A|lc1|busy~5_combout\);

-- Location: LCCOMB_X84_Y12_N10
\A|lc1|busy~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|busy~6_combout\ = (!\A|lc1|Add0~28_combout\ & (((\A|lc1|busy~5_combout\ & \A|lc1|LessThan1~0_combout\)) # (!\A|lc1|Add0~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|busy~5_combout\,
	datab => \A|lc1|Add0~28_combout\,
	datac => \A|lc1|LessThan1~0_combout\,
	datad => \A|lc1|Add0~26_combout\,
	combout => \A|lc1|busy~6_combout\);

-- Location: LCCOMB_X84_Y12_N4
\A|lc1|busy~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|busy~8_combout\ = (\A|lc1|LessThan5~3_combout\ & ((\A|lc1|busy~6_combout\) # ((!\A|lc1|Add0~32_combout\) # (!\A|lc1|Add0~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|busy~6_combout\,
	datab => \A|lc1|LessThan5~3_combout\,
	datac => \A|lc1|Add0~30_combout\,
	datad => \A|lc1|Add0~32_combout\,
	combout => \A|lc1|busy~8_combout\);

-- Location: LCCOMB_X83_Y12_N24
\A|lc1|LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan3~0_combout\ = ((!\A|lc1|Add0~8_combout\ & ((!\A|lc1|Add0~6_combout\) # (!\A|lc1|Add0~4_combout\)))) # (!\A|lc1|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Add0~4_combout\,
	datab => \A|lc1|Add0~6_combout\,
	datac => \A|lc1|Add0~8_combout\,
	datad => \A|lc1|Add0~10_combout\,
	combout => \A|lc1|LessThan3~0_combout\);

-- Location: LCCOMB_X82_Y12_N10
\A|lc1|LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan3~1_combout\ = (!\A|lc1|Add0~18_combout\ & (((\A|lc1|LessThan3~0_combout\ & !\A|lc1|Add0~12_combout\)) # (!\A|lc1|LessThan8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|LessThan8~0_combout\,
	datab => \A|lc1|LessThan3~0_combout\,
	datac => \A|lc1|Add0~12_combout\,
	datad => \A|lc1|Add0~18_combout\,
	combout => \A|lc1|LessThan3~1_combout\);

-- Location: LCCOMB_X84_Y12_N30
\A|lc1|LessThan5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan5~4_combout\ = (!\A|lc1|Add0~28_combout\ & !\A|lc1|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|lc1|Add0~28_combout\,
	datad => \A|lc1|Add0~26_combout\,
	combout => \A|lc1|LessThan5~4_combout\);

-- Location: LCCOMB_X84_Y12_N24
\A|lc1|LessThan5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan5~5_combout\ = (\A|lc1|LessThan5~4_combout\ & (\A|lc1|LessThan5~3_combout\ & (!\A|lc1|Add0~30_combout\ & !\A|lc1|Add0~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|LessThan5~4_combout\,
	datab => \A|lc1|LessThan5~3_combout\,
	datac => \A|lc1|Add0~30_combout\,
	datad => \A|lc1|Add0~32_combout\,
	combout => \A|lc1|LessThan5~5_combout\);

-- Location: LCCOMB_X79_Y12_N0
\A|lc1|LessThan3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan3~2_combout\ = (\A|lc1|LessThan5~5_combout\ & (!\A|lc1|Add0~24_combout\ & ((\A|lc1|LessThan3~1_combout\) # (!\A|lc1|LessThan8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|LessThan8~1_combout\,
	datab => \A|lc1|LessThan3~1_combout\,
	datac => \A|lc1|LessThan5~5_combout\,
	datad => \A|lc1|Add0~24_combout\,
	combout => \A|lc1|LessThan3~2_combout\);

-- Location: LCCOMB_X79_Y15_N12
\A|lc1|Selector34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector34~0_combout\ = (!\A|lc1|Add0~62_combout\ & ((\A|lc1|Add0~60_combout\) # ((!\A|lc1|busy~8_combout\ & !\A|lc1|LessThan3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|busy~8_combout\,
	datab => \A|lc1|Add0~62_combout\,
	datac => \A|lc1|LessThan3~2_combout\,
	datad => \A|lc1|Add0~60_combout\,
	combout => \A|lc1|Selector34~0_combout\);

-- Location: LCCOMB_X79_Y14_N8
\A|lc1|Selector34~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector34~1_combout\ = (!\A|lc1|LessThan8~5_combout\ & (!\A|lc1|LessThan7~3_combout\ & \A|lc1|Selector34~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|lc1|LessThan8~5_combout\,
	datac => \A|lc1|LessThan7~3_combout\,
	datad => \A|lc1|Selector34~0_combout\,
	combout => \A|lc1|Selector34~1_combout\);

-- Location: LCCOMB_X83_Y12_N18
\A|lc1|LessThan4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan4~0_combout\ = (!\A|lc1|Add0~14_combout\ & (((!\A|lc1|Add0~10_combout\) # (!\A|lc1|Add0~8_combout\)) # (!\A|lc1|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Add0~12_combout\,
	datab => \A|lc1|Add0~14_combout\,
	datac => \A|lc1|Add0~8_combout\,
	datad => \A|lc1|Add0~10_combout\,
	combout => \A|lc1|LessThan4~0_combout\);

-- Location: LCCOMB_X83_Y12_N0
\A|lc1|LessThan4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan4~1_combout\ = (((\A|lc1|LessThan4~0_combout\) # (!\A|lc1|Add0~20_combout\)) # (!\A|lc1|Add0~18_combout\)) # (!\A|lc1|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Add0~16_combout\,
	datab => \A|lc1|Add0~18_combout\,
	datac => \A|lc1|Add0~20_combout\,
	datad => \A|lc1|LessThan4~0_combout\,
	combout => \A|lc1|LessThan4~1_combout\);

-- Location: LCCOMB_X79_Y12_N12
\A|lc1|LessThan4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan4~2_combout\ = (\A|lc1|LessThan5~5_combout\ & (((\A|lc1|LessThan4~1_combout\ & !\A|lc1|Add0~22_combout\)) # (!\A|lc1|Add0~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|LessThan5~5_combout\,
	datab => \A|lc1|Add0~24_combout\,
	datac => \A|lc1|LessThan4~1_combout\,
	datad => \A|lc1|Add0~22_combout\,
	combout => \A|lc1|LessThan4~2_combout\);

-- Location: LCCOMB_X83_Y12_N4
\A|lc1|LessThan6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan6~0_combout\ = (!\A|lc1|Add0~6_combout\ & !\A|lc1|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|lc1|Add0~6_combout\,
	datad => \A|lc1|Add0~4_combout\,
	combout => \A|lc1|LessThan6~0_combout\);

-- Location: LCCOMB_X83_Y12_N26
\A|lc1|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan1~2_combout\ = (\A|lc1|LessThan1~0_combout\ & (\A|lc1|LessThan5~5_combout\ & ((\A|lc1|LessThan6~0_combout\) # (!\A|lc1|LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|LessThan1~0_combout\,
	datab => \A|lc1|LessThan1~1_combout\,
	datac => \A|lc1|LessThan6~0_combout\,
	datad => \A|lc1|LessThan5~5_combout\,
	combout => \A|lc1|LessThan1~2_combout\);

-- Location: LCCOMB_X83_Y12_N20
\A|lc1|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan2~0_combout\ = (!\A|lc1|Add0~12_combout\ & (((!\A|lc1|Add0~8_combout\) # (!\A|lc1|Add0~6_combout\)) # (!\A|lc1|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Add0~10_combout\,
	datab => \A|lc1|Add0~6_combout\,
	datac => \A|lc1|Add0~8_combout\,
	datad => \A|lc1|Add0~12_combout\,
	combout => \A|lc1|LessThan2~0_combout\);

-- Location: LCCOMB_X82_Y12_N24
\A|lc1|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan2~1_combout\ = (!\A|lc1|Add0~20_combout\ & (((\A|lc1|LessThan2~0_combout\) # (!\A|lc1|Add0~18_combout\)) # (!\A|lc1|LessThan8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|LessThan8~0_combout\,
	datab => \A|lc1|Add0~18_combout\,
	datac => \A|lc1|LessThan2~0_combout\,
	datad => \A|lc1|Add0~20_combout\,
	combout => \A|lc1|LessThan2~1_combout\);

-- Location: LCCOMB_X79_Y12_N10
\A|lc1|LessThan2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan2~2_combout\ = (\A|lc1|LessThan5~5_combout\ & (!\A|lc1|Add0~24_combout\ & ((\A|lc1|LessThan2~1_combout\) # (!\A|lc1|Add0~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|LessThan5~5_combout\,
	datab => \A|lc1|Add0~22_combout\,
	datac => \A|lc1|LessThan2~1_combout\,
	datad => \A|lc1|Add0~24_combout\,
	combout => \A|lc1|LessThan2~2_combout\);

-- Location: LCCOMB_X83_Y12_N14
\A|lc1|LessThan5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan5~6_combout\ = (!\A|lc1|Add0~6_combout\ & (!\A|lc1|Add0~8_combout\ & !\A|lc1|Add0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|lc1|Add0~6_combout\,
	datac => \A|lc1|Add0~8_combout\,
	datad => \A|lc1|Add0~4_combout\,
	combout => \A|lc1|LessThan5~6_combout\);

-- Location: LCCOMB_X83_Y12_N28
\A|lc1|LessThan5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan5~7_combout\ = (!\A|lc1|Add0~14_combout\ & (((\A|lc1|LessThan5~6_combout\) # (!\A|lc1|Add0~10_combout\)) # (!\A|lc1|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Add0~12_combout\,
	datab => \A|lc1|Add0~14_combout\,
	datac => \A|lc1|LessThan5~6_combout\,
	datad => \A|lc1|Add0~10_combout\,
	combout => \A|lc1|LessThan5~7_combout\);

-- Location: LCCOMB_X83_Y12_N6
\A|lc1|LessThan5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan5~8_combout\ = (!\A|lc1|Add0~18_combout\ & (!\A|lc1|Add0~20_combout\ & ((\A|lc1|LessThan5~7_combout\) # (!\A|lc1|Add0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Add0~16_combout\,
	datab => \A|lc1|Add0~18_combout\,
	datac => \A|lc1|Add0~20_combout\,
	datad => \A|lc1|LessThan5~7_combout\,
	combout => \A|lc1|LessThan5~8_combout\);

-- Location: LCCOMB_X79_Y12_N6
\A|lc1|LessThan5~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan5~9_combout\ = (\A|lc1|LessThan5~5_combout\ & (((\A|lc1|LessThan5~8_combout\) # (!\A|lc1|Add0~24_combout\)) # (!\A|lc1|Add0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|LessThan5~5_combout\,
	datab => \A|lc1|Add0~22_combout\,
	datac => \A|lc1|LessThan5~8_combout\,
	datad => \A|lc1|Add0~24_combout\,
	combout => \A|lc1|LessThan5~9_combout\);

-- Location: LCCOMB_X79_Y15_N26
\A|lc1|count[13]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|count[13]~2_combout\ = (!\A|lc1|Add0~60_combout\ & ((\A|lc1|LessThan1~2_combout\) # ((\A|lc1|LessThan2~2_combout\) # (\A|lc1|LessThan5~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|LessThan1~2_combout\,
	datab => \A|lc1|LessThan2~2_combout\,
	datac => \A|lc1|Add0~60_combout\,
	datad => \A|lc1|LessThan5~9_combout\,
	combout => \A|lc1|count[13]~2_combout\);

-- Location: LCCOMB_X79_Y15_N8
\A|lc1|count[13]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|count[13]~3_combout\ = (\A|lc1|count[13]~2_combout\) # ((\A|lc1|LessThan4~2_combout\ & !\A|lc1|Add0~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|lc1|LessThan4~2_combout\,
	datac => \A|lc1|count[13]~2_combout\,
	datad => \A|lc1|Add0~60_combout\,
	combout => \A|lc1|count[13]~3_combout\);

-- Location: LCCOMB_X79_Y14_N4
\A|lc1|count[13]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|count[13]~4_combout\ = (\A|lc1|state.send~q\ & (\A|lc1|Selector34~2_combout\)) # (!\A|lc1|state.send~q\ & (((\A|lc1|Selector34~1_combout\ & !\A|lc1|count[13]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Selector34~2_combout\,
	datab => \A|lc1|state.send~q\,
	datac => \A|lc1|Selector34~1_combout\,
	datad => \A|lc1|count[13]~3_combout\,
	combout => \A|lc1|count[13]~4_combout\);

-- Location: LCCOMB_X79_Y14_N6
\A|lc1|count[13]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|count[13]~5_combout\ = (!\A|lc1|state.ready~q\ & ((\A|lc1|state.power~q\ & (!\A|lc1|count[13]~4_combout\)) # (!\A|lc1|state.power~q\ & ((\A|lc1|LessThan0~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|state.power~q\,
	datab => \A|lc1|state.ready~q\,
	datac => \A|lc1|count[13]~4_combout\,
	datad => \A|lc1|LessThan0~6_combout\,
	combout => \A|lc1|count[13]~5_combout\);

-- Location: LCCOMB_X84_Y12_N6
\A|lc1|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector17~0_combout\ = (\A|lc1|count[13]~5_combout\ & \A|lc1|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|count[13]~5_combout\,
	datac => \A|lc1|Add0~30_combout\,
	combout => \A|lc1|Selector17~0_combout\);

-- Location: FF_X84_Y12_N7
\A|lc1|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|lc1|Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|count\(15));

-- Location: LCCOMB_X85_Y11_N0
\A|lc1|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Add0~32_combout\ = (\A|lc1|count\(16) & (\A|lc1|Add0~31\ $ (GND))) # (!\A|lc1|count\(16) & (!\A|lc1|Add0~31\ & VCC))
-- \A|lc1|Add0~33\ = CARRY((\A|lc1|count\(16) & !\A|lc1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|lc1|count\(16),
	datad => VCC,
	cin => \A|lc1|Add0~31\,
	combout => \A|lc1|Add0~32_combout\,
	cout => \A|lc1|Add0~33\);

-- Location: LCCOMB_X84_Y12_N16
\A|lc1|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector16~0_combout\ = (\A|lc1|Add0~32_combout\ & \A|lc1|count[13]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|lc1|Add0~32_combout\,
	datac => \A|lc1|count[13]~5_combout\,
	combout => \A|lc1|Selector16~0_combout\);

-- Location: FF_X84_Y12_N17
\A|lc1|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|lc1|Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|count\(16));

-- Location: LCCOMB_X85_Y11_N2
\A|lc1|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Add0~34_combout\ = (\A|lc1|count\(17) & (!\A|lc1|Add0~33\)) # (!\A|lc1|count\(17) & ((\A|lc1|Add0~33\) # (GND)))
-- \A|lc1|Add0~35\ = CARRY((!\A|lc1|Add0~33\) # (!\A|lc1|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|count\(17),
	datad => VCC,
	cin => \A|lc1|Add0~33\,
	combout => \A|lc1|Add0~34_combout\,
	cout => \A|lc1|Add0~35\);

-- Location: LCCOMB_X85_Y13_N8
\A|lc1|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector15~0_combout\ = (\A|lc1|Add0~34_combout\ & \A|lc1|count[13]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|lc1|Add0~34_combout\,
	datad => \A|lc1|count[13]~5_combout\,
	combout => \A|lc1|Selector15~0_combout\);

-- Location: FF_X85_Y13_N9
\A|lc1|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|lc1|Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|count\(17));

-- Location: LCCOMB_X85_Y11_N4
\A|lc1|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Add0~36_combout\ = (\A|lc1|count\(18) & (\A|lc1|Add0~35\ $ (GND))) # (!\A|lc1|count\(18) & (!\A|lc1|Add0~35\ & VCC))
-- \A|lc1|Add0~37\ = CARRY((\A|lc1|count\(18) & !\A|lc1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|lc1|count\(18),
	datad => VCC,
	cin => \A|lc1|Add0~35\,
	combout => \A|lc1|Add0~36_combout\,
	cout => \A|lc1|Add0~37\);

-- Location: LCCOMB_X85_Y13_N14
\A|lc1|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector14~0_combout\ = (\A|lc1|Add0~36_combout\ & \A|lc1|count[13]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Add0~36_combout\,
	datad => \A|lc1|count[13]~5_combout\,
	combout => \A|lc1|Selector14~0_combout\);

-- Location: FF_X85_Y13_N15
\A|lc1|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|lc1|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|count\(18));

-- Location: LCCOMB_X85_Y11_N6
\A|lc1|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Add0~38_combout\ = (\A|lc1|count\(19) & (!\A|lc1|Add0~37\)) # (!\A|lc1|count\(19) & ((\A|lc1|Add0~37\) # (GND)))
-- \A|lc1|Add0~39\ = CARRY((!\A|lc1|Add0~37\) # (!\A|lc1|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|count\(19),
	datad => VCC,
	cin => \A|lc1|Add0~37\,
	combout => \A|lc1|Add0~38_combout\,
	cout => \A|lc1|Add0~39\);

-- Location: LCCOMB_X85_Y13_N28
\A|lc1|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector13~0_combout\ = (\A|lc1|Add0~38_combout\ & \A|lc1|count[13]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|lc1|Add0~38_combout\,
	datad => \A|lc1|count[13]~5_combout\,
	combout => \A|lc1|Selector13~0_combout\);

-- Location: FF_X85_Y13_N29
\A|lc1|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|lc1|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|count\(19));

-- Location: LCCOMB_X85_Y11_N8
\A|lc1|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Add0~40_combout\ = (\A|lc1|count\(20) & (\A|lc1|Add0~39\ $ (GND))) # (!\A|lc1|count\(20) & (!\A|lc1|Add0~39\ & VCC))
-- \A|lc1|Add0~41\ = CARRY((\A|lc1|count\(20) & !\A|lc1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|lc1|count\(20),
	datad => VCC,
	cin => \A|lc1|Add0~39\,
	combout => \A|lc1|Add0~40_combout\,
	cout => \A|lc1|Add0~41\);

-- Location: LCCOMB_X85_Y13_N10
\A|lc1|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector12~0_combout\ = (\A|lc1|Add0~40_combout\ & \A|lc1|count[13]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|lc1|Add0~40_combout\,
	datad => \A|lc1|count[13]~5_combout\,
	combout => \A|lc1|Selector12~0_combout\);

-- Location: FF_X85_Y13_N11
\A|lc1|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|lc1|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|count\(20));

-- Location: LCCOMB_X85_Y11_N10
\A|lc1|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Add0~42_combout\ = (\A|lc1|count\(21) & (!\A|lc1|Add0~41\)) # (!\A|lc1|count\(21) & ((\A|lc1|Add0~41\) # (GND)))
-- \A|lc1|Add0~43\ = CARRY((!\A|lc1|Add0~41\) # (!\A|lc1|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|count\(21),
	datad => VCC,
	cin => \A|lc1|Add0~41\,
	combout => \A|lc1|Add0~42_combout\,
	cout => \A|lc1|Add0~43\);

-- Location: LCCOMB_X85_Y13_N16
\A|lc1|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector11~0_combout\ = (\A|lc1|Add0~42_combout\ & \A|lc1|count[13]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Add0~42_combout\,
	datad => \A|lc1|count[13]~5_combout\,
	combout => \A|lc1|Selector11~0_combout\);

-- Location: FF_X85_Y13_N17
\A|lc1|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|lc1|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|count\(21));

-- Location: LCCOMB_X85_Y11_N12
\A|lc1|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Add0~44_combout\ = (\A|lc1|count\(22) & (\A|lc1|Add0~43\ $ (GND))) # (!\A|lc1|count\(22) & (!\A|lc1|Add0~43\ & VCC))
-- \A|lc1|Add0~45\ = CARRY((\A|lc1|count\(22) & !\A|lc1|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|count\(22),
	datad => VCC,
	cin => \A|lc1|Add0~43\,
	combout => \A|lc1|Add0~44_combout\,
	cout => \A|lc1|Add0~45\);

-- Location: LCCOMB_X84_Y11_N14
\A|lc1|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector10~0_combout\ = (\A|lc1|Add0~44_combout\ & \A|lc1|count[13]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|lc1|Add0~44_combout\,
	datad => \A|lc1|count[13]~5_combout\,
	combout => \A|lc1|Selector10~0_combout\);

-- Location: FF_X84_Y11_N15
\A|lc1|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|lc1|Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|count\(22));

-- Location: LCCOMB_X85_Y11_N14
\A|lc1|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Add0~46_combout\ = (\A|lc1|count\(23) & (!\A|lc1|Add0~45\)) # (!\A|lc1|count\(23) & ((\A|lc1|Add0~45\) # (GND)))
-- \A|lc1|Add0~47\ = CARRY((!\A|lc1|Add0~45\) # (!\A|lc1|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|lc1|count\(23),
	datad => VCC,
	cin => \A|lc1|Add0~45\,
	combout => \A|lc1|Add0~46_combout\,
	cout => \A|lc1|Add0~47\);

-- Location: LCCOMB_X84_Y11_N4
\A|lc1|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector9~0_combout\ = (\A|lc1|Add0~46_combout\ & \A|lc1|count[13]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|lc1|Add0~46_combout\,
	datad => \A|lc1|count[13]~5_combout\,
	combout => \A|lc1|Selector9~0_combout\);

-- Location: FF_X84_Y11_N5
\A|lc1|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|lc1|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|count\(23));

-- Location: LCCOMB_X85_Y11_N16
\A|lc1|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Add0~48_combout\ = (\A|lc1|count\(24) & (\A|lc1|Add0~47\ $ (GND))) # (!\A|lc1|count\(24) & (!\A|lc1|Add0~47\ & VCC))
-- \A|lc1|Add0~49\ = CARRY((\A|lc1|count\(24) & !\A|lc1|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|count\(24),
	datad => VCC,
	cin => \A|lc1|Add0~47\,
	combout => \A|lc1|Add0~48_combout\,
	cout => \A|lc1|Add0~49\);

-- Location: LCCOMB_X84_Y11_N10
\A|lc1|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector8~0_combout\ = (\A|lc1|Add0~48_combout\ & \A|lc1|count[13]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|lc1|Add0~48_combout\,
	datad => \A|lc1|count[13]~5_combout\,
	combout => \A|lc1|Selector8~0_combout\);

-- Location: FF_X84_Y11_N11
\A|lc1|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|lc1|Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|count\(24));

-- Location: LCCOMB_X85_Y11_N18
\A|lc1|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Add0~50_combout\ = (\A|lc1|count\(25) & (!\A|lc1|Add0~49\)) # (!\A|lc1|count\(25) & ((\A|lc1|Add0~49\) # (GND)))
-- \A|lc1|Add0~51\ = CARRY((!\A|lc1|Add0~49\) # (!\A|lc1|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|lc1|count\(25),
	datad => VCC,
	cin => \A|lc1|Add0~49\,
	combout => \A|lc1|Add0~50_combout\,
	cout => \A|lc1|Add0~51\);

-- Location: LCCOMB_X84_Y11_N20
\A|lc1|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector7~0_combout\ = (\A|lc1|Add0~50_combout\ & \A|lc1|count[13]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|lc1|Add0~50_combout\,
	datad => \A|lc1|count[13]~5_combout\,
	combout => \A|lc1|Selector7~0_combout\);

-- Location: FF_X84_Y11_N21
\A|lc1|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|lc1|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|count\(25));

-- Location: LCCOMB_X85_Y11_N20
\A|lc1|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Add0~52_combout\ = (\A|lc1|count\(26) & (\A|lc1|Add0~51\ $ (GND))) # (!\A|lc1|count\(26) & (!\A|lc1|Add0~51\ & VCC))
-- \A|lc1|Add0~53\ = CARRY((\A|lc1|count\(26) & !\A|lc1|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|count\(26),
	datad => VCC,
	cin => \A|lc1|Add0~51\,
	combout => \A|lc1|Add0~52_combout\,
	cout => \A|lc1|Add0~53\);

-- Location: LCCOMB_X84_Y11_N2
\A|lc1|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector6~0_combout\ = (\A|lc1|Add0~52_combout\ & \A|lc1|count[13]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|lc1|Add0~52_combout\,
	datad => \A|lc1|count[13]~5_combout\,
	combout => \A|lc1|Selector6~0_combout\);

-- Location: FF_X84_Y11_N3
\A|lc1|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|lc1|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|count\(26));

-- Location: LCCOMB_X85_Y11_N22
\A|lc1|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Add0~54_combout\ = (\A|lc1|count\(27) & (!\A|lc1|Add0~53\)) # (!\A|lc1|count\(27) & ((\A|lc1|Add0~53\) # (GND)))
-- \A|lc1|Add0~55\ = CARRY((!\A|lc1|Add0~53\) # (!\A|lc1|count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|count\(27),
	datad => VCC,
	cin => \A|lc1|Add0~53\,
	combout => \A|lc1|Add0~54_combout\,
	cout => \A|lc1|Add0~55\);

-- Location: LCCOMB_X84_Y11_N16
\A|lc1|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector5~0_combout\ = (\A|lc1|Add0~54_combout\ & \A|lc1|count[13]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|lc1|Add0~54_combout\,
	datad => \A|lc1|count[13]~5_combout\,
	combout => \A|lc1|Selector5~0_combout\);

-- Location: FF_X84_Y11_N17
\A|lc1|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|lc1|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|count\(27));

-- Location: LCCOMB_X85_Y11_N24
\A|lc1|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Add0~56_combout\ = (\A|lc1|count\(28) & (\A|lc1|Add0~55\ $ (GND))) # (!\A|lc1|count\(28) & (!\A|lc1|Add0~55\ & VCC))
-- \A|lc1|Add0~57\ = CARRY((\A|lc1|count\(28) & !\A|lc1|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|lc1|count\(28),
	datad => VCC,
	cin => \A|lc1|Add0~55\,
	combout => \A|lc1|Add0~56_combout\,
	cout => \A|lc1|Add0~57\);

-- Location: LCCOMB_X84_Y11_N18
\A|lc1|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector4~0_combout\ = (\A|lc1|Add0~56_combout\ & \A|lc1|count[13]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|lc1|Add0~56_combout\,
	datad => \A|lc1|count[13]~5_combout\,
	combout => \A|lc1|Selector4~0_combout\);

-- Location: FF_X84_Y11_N19
\A|lc1|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|lc1|Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|count\(28));

-- Location: LCCOMB_X85_Y11_N26
\A|lc1|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Add0~58_combout\ = (\A|lc1|count\(29) & (!\A|lc1|Add0~57\)) # (!\A|lc1|count\(29) & ((\A|lc1|Add0~57\) # (GND)))
-- \A|lc1|Add0~59\ = CARRY((!\A|lc1|Add0~57\) # (!\A|lc1|count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|lc1|count\(29),
	datad => VCC,
	cin => \A|lc1|Add0~57\,
	combout => \A|lc1|Add0~58_combout\,
	cout => \A|lc1|Add0~59\);

-- Location: LCCOMB_X84_Y11_N28
\A|lc1|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector3~0_combout\ = (\A|lc1|Add0~58_combout\ & \A|lc1|count[13]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|lc1|Add0~58_combout\,
	datad => \A|lc1|count[13]~5_combout\,
	combout => \A|lc1|Selector3~0_combout\);

-- Location: FF_X84_Y11_N29
\A|lc1|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|lc1|Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|count\(29));

-- Location: LCCOMB_X85_Y11_N28
\A|lc1|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Add0~60_combout\ = (\A|lc1|count\(30) & (\A|lc1|Add0~59\ $ (GND))) # (!\A|lc1|count\(30) & (!\A|lc1|Add0~59\ & VCC))
-- \A|lc1|Add0~61\ = CARRY((\A|lc1|count\(30) & !\A|lc1|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|lc1|count\(30),
	datad => VCC,
	cin => \A|lc1|Add0~59\,
	combout => \A|lc1|Add0~60_combout\,
	cout => \A|lc1|Add0~61\);

-- Location: LCCOMB_X84_Y11_N30
\A|lc1|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector2~0_combout\ = (\A|lc1|Add0~60_combout\ & \A|lc1|count[13]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|lc1|Add0~60_combout\,
	datad => \A|lc1|count[13]~5_combout\,
	combout => \A|lc1|Selector2~0_combout\);

-- Location: FF_X84_Y11_N31
\A|lc1|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|lc1|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|count\(30));

-- Location: LCCOMB_X85_Y11_N30
\A|lc1|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Add0~62_combout\ = \A|lc1|Add0~61\ $ (\A|lc1|count\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \A|lc1|count\(31),
	cin => \A|lc1|Add0~61\,
	combout => \A|lc1|Add0~62_combout\);

-- Location: LCCOMB_X84_Y11_N12
\A|lc1|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector1~0_combout\ = (\A|lc1|Add0~62_combout\ & \A|lc1|count[13]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|lc1|Add0~62_combout\,
	datad => \A|lc1|count[13]~5_combout\,
	combout => \A|lc1|Selector1~0_combout\);

-- Location: FF_X84_Y11_N13
\A|lc1|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|lc1|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|count\(31));

-- Location: LCCOMB_X85_Y13_N24
\A|lc1|LessThan9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan9~2_combout\ = (!\A|lc1|count\(20) & (!\A|lc1|count\(17) & (!\A|lc1|count\(13) & !\A|lc1|count\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|count\(20),
	datab => \A|lc1|count\(17),
	datac => \A|lc1|count\(13),
	datad => \A|lc1|count\(19),
	combout => \A|lc1|LessThan9~2_combout\);

-- Location: LCCOMB_X85_Y13_N18
\A|lc1|LessThan9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan9~3_combout\ = (\A|lc1|LessThan0~0_combout\ & (!\A|lc1|count\(12) & (\A|lc1|LessThan9~1_combout\ & \A|lc1|LessThan9~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|LessThan0~0_combout\,
	datab => \A|lc1|count\(12),
	datac => \A|lc1|LessThan9~1_combout\,
	datad => \A|lc1|LessThan9~2_combout\,
	combout => \A|lc1|LessThan9~3_combout\);

-- Location: LCCOMB_X85_Y13_N0
\A|lc1|LessThan9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan9~4_combout\ = (!\A|lc1|count\(21) & (!\A|lc1|count\(18) & \A|lc1|LessThan9~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|lc1|count\(21),
	datac => \A|lc1|count\(18),
	datad => \A|lc1|LessThan9~3_combout\,
	combout => \A|lc1|LessThan9~4_combout\);

-- Location: LCCOMB_X86_Y12_N12
\A|lc1|LessThan9~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan9~5_combout\ = (!\A|lc1|count\(5) & (!\A|lc1|count\(3) & (!\A|lc1|count\(4) & !\A|lc1|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|count\(5),
	datab => \A|lc1|count\(3),
	datac => \A|lc1|count\(4),
	datad => \A|lc1|count\(2),
	combout => \A|lc1|LessThan9~5_combout\);

-- Location: LCCOMB_X85_Y14_N18
\A|lc1|LessThan9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan9~6_combout\ = (((\A|lc1|LessThan9~5_combout\) # (!\A|lc1|count\(8))) # (!\A|lc1|count\(6))) # (!\A|lc1|count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|count\(7),
	datab => \A|lc1|count\(6),
	datac => \A|lc1|count\(8),
	datad => \A|lc1|LessThan9~5_combout\,
	combout => \A|lc1|LessThan9~6_combout\);

-- Location: LCCOMB_X85_Y14_N4
\A|lc1|LessThan9~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan9~7_combout\ = ((!\A|lc1|count\(10) & (!\A|lc1|count\(9) & \A|lc1|LessThan9~6_combout\))) # (!\A|lc1|count\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|count\(10),
	datab => \A|lc1|count\(11),
	datac => \A|lc1|count\(9),
	datad => \A|lc1|LessThan9~6_combout\,
	combout => \A|lc1|LessThan9~7_combout\);

-- Location: LCCOMB_X85_Y14_N12
\A|lc1|Selector34~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector34~2_combout\ = (!\A|lc1|count\(31) & (((!\A|lc1|LessThan9~8_combout\) # (!\A|lc1|LessThan9~7_combout\)) # (!\A|lc1|LessThan9~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|count\(31),
	datab => \A|lc1|LessThan9~4_combout\,
	datac => \A|lc1|LessThan9~7_combout\,
	datad => \A|lc1|LessThan9~8_combout\,
	combout => \A|lc1|Selector34~2_combout\);

-- Location: LCCOMB_X84_Y14_N8
\A|df1|q[0]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|df1|q[0]~63_combout\ = !\A|df1|q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|df1|q\(0),
	combout => \A|df1|q[0]~63_combout\);

-- Location: FF_X84_Y14_N9
\A|df1|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|df1|q[0]~63_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|df1|q\(0));

-- Location: LCCOMB_X84_Y14_N12
\A|df1|q[1]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|df1|q[1]~21_combout\ = (\A|df1|q\(1) & (\A|df1|q\(0) $ (VCC))) # (!\A|df1|q\(1) & (\A|df1|q\(0) & VCC))
-- \A|df1|q[1]~22\ = CARRY((\A|df1|q\(1) & \A|df1|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|df1|q\(1),
	datab => \A|df1|q\(0),
	datad => VCC,
	combout => \A|df1|q[1]~21_combout\,
	cout => \A|df1|q[1]~22\);

-- Location: FF_X84_Y14_N13
\A|df1|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|df1|q[1]~21_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|df1|q\(1));

-- Location: LCCOMB_X84_Y14_N14
\A|df1|q[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|df1|q[2]~23_combout\ = (\A|df1|q\(2) & (!\A|df1|q[1]~22\)) # (!\A|df1|q\(2) & ((\A|df1|q[1]~22\) # (GND)))
-- \A|df1|q[2]~24\ = CARRY((!\A|df1|q[1]~22\) # (!\A|df1|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|df1|q\(2),
	datad => VCC,
	cin => \A|df1|q[1]~22\,
	combout => \A|df1|q[2]~23_combout\,
	cout => \A|df1|q[2]~24\);

-- Location: FF_X84_Y14_N15
\A|df1|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|df1|q[2]~23_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|df1|q\(2));

-- Location: LCCOMB_X84_Y14_N16
\A|df1|q[3]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|df1|q[3]~25_combout\ = (\A|df1|q\(3) & (\A|df1|q[2]~24\ $ (GND))) # (!\A|df1|q\(3) & (!\A|df1|q[2]~24\ & VCC))
-- \A|df1|q[3]~26\ = CARRY((\A|df1|q\(3) & !\A|df1|q[2]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|df1|q\(3),
	datad => VCC,
	cin => \A|df1|q[2]~24\,
	combout => \A|df1|q[3]~25_combout\,
	cout => \A|df1|q[3]~26\);

-- Location: FF_X84_Y14_N17
\A|df1|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|df1|q[3]~25_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|df1|q\(3));

-- Location: LCCOMB_X84_Y14_N18
\A|df1|q[4]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|df1|q[4]~27_combout\ = (\A|df1|q\(4) & (!\A|df1|q[3]~26\)) # (!\A|df1|q\(4) & ((\A|df1|q[3]~26\) # (GND)))
-- \A|df1|q[4]~28\ = CARRY((!\A|df1|q[3]~26\) # (!\A|df1|q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|df1|q\(4),
	datad => VCC,
	cin => \A|df1|q[3]~26\,
	combout => \A|df1|q[4]~27_combout\,
	cout => \A|df1|q[4]~28\);

-- Location: FF_X84_Y14_N19
\A|df1|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|df1|q[4]~27_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|df1|q\(4));

-- Location: LCCOMB_X84_Y14_N20
\A|df1|q[5]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|df1|q[5]~29_combout\ = (\A|df1|q\(5) & (\A|df1|q[4]~28\ $ (GND))) # (!\A|df1|q\(5) & (!\A|df1|q[4]~28\ & VCC))
-- \A|df1|q[5]~30\ = CARRY((\A|df1|q\(5) & !\A|df1|q[4]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|df1|q\(5),
	datad => VCC,
	cin => \A|df1|q[4]~28\,
	combout => \A|df1|q[5]~29_combout\,
	cout => \A|df1|q[5]~30\);

-- Location: FF_X84_Y14_N21
\A|df1|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|df1|q[5]~29_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|df1|q\(5));

-- Location: LCCOMB_X84_Y14_N22
\A|df1|q[6]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|df1|q[6]~31_combout\ = (\A|df1|q\(6) & (!\A|df1|q[5]~30\)) # (!\A|df1|q\(6) & ((\A|df1|q[5]~30\) # (GND)))
-- \A|df1|q[6]~32\ = CARRY((!\A|df1|q[5]~30\) # (!\A|df1|q\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|df1|q\(6),
	datad => VCC,
	cin => \A|df1|q[5]~30\,
	combout => \A|df1|q[6]~31_combout\,
	cout => \A|df1|q[6]~32\);

-- Location: FF_X84_Y14_N23
\A|df1|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|df1|q[6]~31_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|df1|q\(6));

-- Location: LCCOMB_X84_Y14_N24
\A|df1|q[7]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|df1|q[7]~33_combout\ = (\A|df1|q\(7) & (\A|df1|q[6]~32\ $ (GND))) # (!\A|df1|q\(7) & (!\A|df1|q[6]~32\ & VCC))
-- \A|df1|q[7]~34\ = CARRY((\A|df1|q\(7) & !\A|df1|q[6]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|df1|q\(7),
	datad => VCC,
	cin => \A|df1|q[6]~32\,
	combout => \A|df1|q[7]~33_combout\,
	cout => \A|df1|q[7]~34\);

-- Location: FF_X84_Y14_N25
\A|df1|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|df1|q[7]~33_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|df1|q\(7));

-- Location: LCCOMB_X84_Y14_N26
\A|df1|q[8]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|df1|q[8]~35_combout\ = (\A|df1|q\(8) & (!\A|df1|q[7]~34\)) # (!\A|df1|q\(8) & ((\A|df1|q[7]~34\) # (GND)))
-- \A|df1|q[8]~36\ = CARRY((!\A|df1|q[7]~34\) # (!\A|df1|q\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|df1|q\(8),
	datad => VCC,
	cin => \A|df1|q[7]~34\,
	combout => \A|df1|q[8]~35_combout\,
	cout => \A|df1|q[8]~36\);

-- Location: FF_X84_Y14_N27
\A|df1|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|df1|q[8]~35_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|df1|q\(8));

-- Location: LCCOMB_X84_Y14_N28
\A|df1|q[9]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|df1|q[9]~37_combout\ = (\A|df1|q\(9) & (\A|df1|q[8]~36\ $ (GND))) # (!\A|df1|q\(9) & (!\A|df1|q[8]~36\ & VCC))
-- \A|df1|q[9]~38\ = CARRY((\A|df1|q\(9) & !\A|df1|q[8]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|df1|q\(9),
	datad => VCC,
	cin => \A|df1|q[8]~36\,
	combout => \A|df1|q[9]~37_combout\,
	cout => \A|df1|q[9]~38\);

-- Location: FF_X84_Y14_N29
\A|df1|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|df1|q[9]~37_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|df1|q\(9));

-- Location: LCCOMB_X84_Y14_N30
\A|df1|q[10]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|df1|q[10]~39_combout\ = (\A|df1|q\(10) & (!\A|df1|q[9]~38\)) # (!\A|df1|q\(10) & ((\A|df1|q[9]~38\) # (GND)))
-- \A|df1|q[10]~40\ = CARRY((!\A|df1|q[9]~38\) # (!\A|df1|q\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|df1|q\(10),
	datad => VCC,
	cin => \A|df1|q[9]~38\,
	combout => \A|df1|q[10]~39_combout\,
	cout => \A|df1|q[10]~40\);

-- Location: FF_X84_Y14_N31
\A|df1|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|df1|q[10]~39_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|df1|q\(10));

-- Location: LCCOMB_X84_Y13_N0
\A|df1|q[11]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|df1|q[11]~41_combout\ = (\A|df1|q\(11) & (\A|df1|q[10]~40\ $ (GND))) # (!\A|df1|q\(11) & (!\A|df1|q[10]~40\ & VCC))
-- \A|df1|q[11]~42\ = CARRY((\A|df1|q\(11) & !\A|df1|q[10]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|df1|q\(11),
	datad => VCC,
	cin => \A|df1|q[10]~40\,
	combout => \A|df1|q[11]~41_combout\,
	cout => \A|df1|q[11]~42\);

-- Location: FF_X84_Y13_N1
\A|df1|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|df1|q[11]~41_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|df1|q\(11));

-- Location: LCCOMB_X84_Y13_N2
\A|df1|q[12]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|df1|q[12]~43_combout\ = (\A|df1|q\(12) & (!\A|df1|q[11]~42\)) # (!\A|df1|q\(12) & ((\A|df1|q[11]~42\) # (GND)))
-- \A|df1|q[12]~44\ = CARRY((!\A|df1|q[11]~42\) # (!\A|df1|q\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|df1|q\(12),
	datad => VCC,
	cin => \A|df1|q[11]~42\,
	combout => \A|df1|q[12]~43_combout\,
	cout => \A|df1|q[12]~44\);

-- Location: FF_X84_Y13_N3
\A|df1|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|df1|q[12]~43_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|df1|q\(12));

-- Location: LCCOMB_X84_Y13_N4
\A|df1|q[13]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|df1|q[13]~45_combout\ = (\A|df1|q\(13) & (\A|df1|q[12]~44\ $ (GND))) # (!\A|df1|q\(13) & (!\A|df1|q[12]~44\ & VCC))
-- \A|df1|q[13]~46\ = CARRY((\A|df1|q\(13) & !\A|df1|q[12]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|df1|q\(13),
	datad => VCC,
	cin => \A|df1|q[12]~44\,
	combout => \A|df1|q[13]~45_combout\,
	cout => \A|df1|q[13]~46\);

-- Location: FF_X84_Y13_N5
\A|df1|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|df1|q[13]~45_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|df1|q\(13));

-- Location: LCCOMB_X84_Y13_N6
\A|df1|q[14]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|df1|q[14]~47_combout\ = (\A|df1|q\(14) & (!\A|df1|q[13]~46\)) # (!\A|df1|q\(14) & ((\A|df1|q[13]~46\) # (GND)))
-- \A|df1|q[14]~48\ = CARRY((!\A|df1|q[13]~46\) # (!\A|df1|q\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|df1|q\(14),
	datad => VCC,
	cin => \A|df1|q[13]~46\,
	combout => \A|df1|q[14]~47_combout\,
	cout => \A|df1|q[14]~48\);

-- Location: FF_X84_Y13_N7
\A|df1|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|df1|q[14]~47_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|df1|q\(14));

-- Location: LCCOMB_X84_Y13_N8
\A|df1|q[15]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|df1|q[15]~49_combout\ = (\A|df1|q\(15) & (\A|df1|q[14]~48\ $ (GND))) # (!\A|df1|q\(15) & (!\A|df1|q[14]~48\ & VCC))
-- \A|df1|q[15]~50\ = CARRY((\A|df1|q\(15) & !\A|df1|q[14]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|df1|q\(15),
	datad => VCC,
	cin => \A|df1|q[14]~48\,
	combout => \A|df1|q[15]~49_combout\,
	cout => \A|df1|q[15]~50\);

-- Location: FF_X84_Y13_N9
\A|df1|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|df1|q[15]~49_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|df1|q\(15));

-- Location: LCCOMB_X84_Y13_N10
\A|df1|q[16]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|df1|q[16]~51_combout\ = (\A|df1|q\(16) & (!\A|df1|q[15]~50\)) # (!\A|df1|q\(16) & ((\A|df1|q[15]~50\) # (GND)))
-- \A|df1|q[16]~52\ = CARRY((!\A|df1|q[15]~50\) # (!\A|df1|q\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|df1|q\(16),
	datad => VCC,
	cin => \A|df1|q[15]~50\,
	combout => \A|df1|q[16]~51_combout\,
	cout => \A|df1|q[16]~52\);

-- Location: FF_X84_Y13_N11
\A|df1|q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|df1|q[16]~51_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|df1|q\(16));

-- Location: LCCOMB_X84_Y13_N12
\A|df1|q[17]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|df1|q[17]~53_combout\ = (\A|df1|q\(17) & (\A|df1|q[16]~52\ $ (GND))) # (!\A|df1|q\(17) & (!\A|df1|q[16]~52\ & VCC))
-- \A|df1|q[17]~54\ = CARRY((\A|df1|q\(17) & !\A|df1|q[16]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|df1|q\(17),
	datad => VCC,
	cin => \A|df1|q[16]~52\,
	combout => \A|df1|q[17]~53_combout\,
	cout => \A|df1|q[17]~54\);

-- Location: FF_X84_Y13_N13
\A|df1|q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|df1|q[17]~53_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|df1|q\(17));

-- Location: LCCOMB_X84_Y13_N14
\A|df1|q[18]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|df1|q[18]~55_combout\ = (\A|df1|q\(18) & (!\A|df1|q[17]~54\)) # (!\A|df1|q\(18) & ((\A|df1|q[17]~54\) # (GND)))
-- \A|df1|q[18]~56\ = CARRY((!\A|df1|q[17]~54\) # (!\A|df1|q\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|df1|q\(18),
	datad => VCC,
	cin => \A|df1|q[17]~54\,
	combout => \A|df1|q[18]~55_combout\,
	cout => \A|df1|q[18]~56\);

-- Location: FF_X84_Y13_N15
\A|df1|q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|df1|q[18]~55_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|df1|q\(18));

-- Location: LCCOMB_X84_Y13_N16
\A|df1|q[19]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|df1|q[19]~57_combout\ = (\A|df1|q\(19) & (\A|df1|q[18]~56\ $ (GND))) # (!\A|df1|q\(19) & (!\A|df1|q[18]~56\ & VCC))
-- \A|df1|q[19]~58\ = CARRY((\A|df1|q\(19) & !\A|df1|q[18]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|df1|q\(19),
	datad => VCC,
	cin => \A|df1|q[18]~56\,
	combout => \A|df1|q[19]~57_combout\,
	cout => \A|df1|q[19]~58\);

-- Location: FF_X84_Y13_N17
\A|df1|q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|df1|q[19]~57_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|df1|q\(19));

-- Location: LCCOMB_X84_Y13_N18
\A|df1|q[20]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|df1|q[20]~59_combout\ = (\A|df1|q\(20) & (!\A|df1|q[19]~58\)) # (!\A|df1|q\(20) & ((\A|df1|q[19]~58\) # (GND)))
-- \A|df1|q[20]~60\ = CARRY((!\A|df1|q[19]~58\) # (!\A|df1|q\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|df1|q\(20),
	datad => VCC,
	cin => \A|df1|q[19]~58\,
	combout => \A|df1|q[20]~59_combout\,
	cout => \A|df1|q[20]~60\);

-- Location: FF_X84_Y13_N19
\A|df1|q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|df1|q[20]~59_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|df1|q\(20));

-- Location: LCCOMB_X84_Y13_N20
\A|df1|q[21]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|df1|q[21]~61_combout\ = \A|df1|q[20]~60\ $ (!\A|df1|q\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \A|df1|q\(21),
	cin => \A|df1|q[20]~60\,
	combout => \A|df1|q[21]~61_combout\);

-- Location: FF_X84_Y13_N21
\A|df1|q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|df1|q[21]~61_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|df1|q\(21));

-- Location: LCCOMB_X79_Y14_N24
\A|lc1|Selector33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector33~0_combout\ = (\A|lc1|state.power~q\ & (!\A|lc1|Selector34~1_combout\ & (\A|lc1|state.init~q\))) # (!\A|lc1|state.power~q\ & (((!\A|lc1|Selector34~1_combout\ & \A|lc1|state.init~q\)) # (!\A|lc1|LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|state.power~q\,
	datab => \A|lc1|Selector34~1_combout\,
	datac => \A|lc1|state.init~q\,
	datad => \A|lc1|LessThan0~6_combout\,
	combout => \A|lc1|Selector33~0_combout\);

-- Location: FF_X79_Y14_N25
\A|lc1|state.init\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|lc1|Selector33~0_combout\,
	sclr => \ALT_INV_psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|state.init~q\);

-- Location: LCCOMB_X79_Y14_N30
\A|lc1|Selector34~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector34~3_combout\ = (\A|lc1|state.init~q\ & (!\A|lc1|Selector34~1_combout\ & ((\A|ul1|send_enable~q\) # (!\A|lc1|state.ready~q\)))) # (!\A|lc1|state.init~q\ & (((\A|ul1|send_enable~q\)) # (!\A|lc1|state.ready~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|state.init~q\,
	datab => \A|lc1|state.ready~q\,
	datac => \A|lc1|Selector34~1_combout\,
	datad => \A|ul1|send_enable~q\,
	combout => \A|lc1|Selector34~3_combout\);

-- Location: FF_X79_Y14_N31
\A|lc1|busy\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|lc1|Selector34~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|busy~q\);

-- Location: LCCOMB_X79_Y13_N16
\A|ul1|data_write[9]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|data_write[9]~15_combout\ = (!\A|lc1|busy~q\ & !\A|ul1|send_enable~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|lc1|busy~q\,
	datad => \A|ul1|send_enable~q\,
	combout => \A|ul1|data_write[9]~15_combout\);

-- Location: FF_X82_Y11_N11
\A|ul1|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ul1|Add0~95_combout\,
	clrn => \A|df1|q\(21),
	ena => \A|ul1|data_write[9]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(0));

-- Location: LCCOMB_X81_Y13_N0
\A|ul1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~4_combout\ = \A|ul1|count\(0) $ (VCC)
-- \A|ul1|Add0~5\ = CARRY(\A|ul1|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|count\(0),
	datad => VCC,
	combout => \A|ul1|Add0~4_combout\,
	cout => \A|ul1|Add0~5\);

-- Location: LCCOMB_X81_Y13_N2
\A|ul1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~6_combout\ = (\A|ul1|count\(1) & (!\A|ul1|Add0~5\)) # (!\A|ul1|count\(1) & ((\A|ul1|Add0~5\) # (GND)))
-- \A|ul1|Add0~7\ = CARRY((!\A|ul1|Add0~5\) # (!\A|ul1|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|count\(1),
	datad => VCC,
	cin => \A|ul1|Add0~5\,
	combout => \A|ul1|Add0~6_combout\,
	cout => \A|ul1|Add0~7\);

-- Location: LCCOMB_X82_Y11_N8
\A|ul1|Add0~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~94_combout\ = (\A|ul1|count\(31) & (((\A|ul1|Add0~6_combout\)))) # (!\A|ul1|count\(31) & ((\A|ul1|LessThan0~9_combout\ & ((\A|ul1|Add0~6_combout\))) # (!\A|ul1|LessThan0~9_combout\ & (\A|ul1|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(31),
	datab => \A|ul1|count\(1),
	datac => \A|ul1|LessThan0~9_combout\,
	datad => \A|ul1|Add0~6_combout\,
	combout => \A|ul1|Add0~94_combout\);

-- Location: LCCOMB_X82_Y11_N24
\A|ul1|count[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|count[1]~feeder_combout\ = \A|ul1|Add0~94_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|ul1|Add0~94_combout\,
	combout => \A|ul1|count[1]~feeder_combout\);

-- Location: FF_X82_Y11_N25
\A|ul1|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ul1|count[1]~feeder_combout\,
	clrn => \A|df1|q\(21),
	ena => \A|ul1|data_write[9]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(1));

-- Location: LCCOMB_X81_Y13_N4
\A|ul1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~8_combout\ = (\A|ul1|count\(2) & (\A|ul1|Add0~7\ $ (GND))) # (!\A|ul1|count\(2) & (!\A|ul1|Add0~7\ & VCC))
-- \A|ul1|Add0~9\ = CARRY((\A|ul1|count\(2) & !\A|ul1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|count\(2),
	datad => VCC,
	cin => \A|ul1|Add0~7\,
	combout => \A|ul1|Add0~8_combout\,
	cout => \A|ul1|Add0~9\);

-- Location: LCCOMB_X82_Y11_N6
\A|ul1|Add0~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~96_combout\ = (\A|ul1|count\(31) & (\A|ul1|Add0~8_combout\)) # (!\A|ul1|count\(31) & ((\A|ul1|LessThan0~9_combout\ & (\A|ul1|Add0~8_combout\)) # (!\A|ul1|LessThan0~9_combout\ & ((\A|ul1|count\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(31),
	datab => \A|ul1|Add0~8_combout\,
	datac => \A|ul1|count\(2),
	datad => \A|ul1|LessThan0~9_combout\,
	combout => \A|ul1|Add0~96_combout\);

-- Location: LCCOMB_X82_Y11_N22
\A|ul1|count[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|count[2]~feeder_combout\ = \A|ul1|Add0~96_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A|ul1|Add0~96_combout\,
	combout => \A|ul1|count[2]~feeder_combout\);

-- Location: FF_X82_Y11_N23
\A|ul1|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ul1|count[2]~feeder_combout\,
	clrn => \A|df1|q\(21),
	ena => \A|ul1|data_write[9]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(2));

-- Location: LCCOMB_X81_Y13_N6
\A|ul1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~10_combout\ = (\A|ul1|count\(3) & (!\A|ul1|Add0~9\)) # (!\A|ul1|count\(3) & ((\A|ul1|Add0~9\) # (GND)))
-- \A|ul1|Add0~11\ = CARRY((!\A|ul1|Add0~9\) # (!\A|ul1|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(3),
	datad => VCC,
	cin => \A|ul1|Add0~9\,
	combout => \A|ul1|Add0~10_combout\,
	cout => \A|ul1|Add0~11\);

-- Location: LCCOMB_X80_Y13_N22
\A|ul1|Add0~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~93_combout\ = (\A|ul1|LessThan0~9_combout\ & (\A|ul1|Add0~10_combout\)) # (!\A|ul1|LessThan0~9_combout\ & ((\A|ul1|count\(31) & (\A|ul1|Add0~10_combout\)) # (!\A|ul1|count\(31) & ((\A|ul1|count\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~10_combout\,
	datab => \A|ul1|count\(3),
	datac => \A|ul1|LessThan0~9_combout\,
	datad => \A|ul1|count\(31),
	combout => \A|ul1|Add0~93_combout\);

-- Location: FF_X81_Y13_N23
\A|ul1|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \A|ul1|Add0~93_combout\,
	clrn => \A|df1|q\(21),
	sload => VCC,
	ena => \A|ul1|data_write[9]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(3));

-- Location: LCCOMB_X81_Y13_N8
\A|ul1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~12_combout\ = (\A|ul1|count\(4) & (\A|ul1|Add0~11\ $ (GND))) # (!\A|ul1|count\(4) & (!\A|ul1|Add0~11\ & VCC))
-- \A|ul1|Add0~13\ = CARRY((\A|ul1|count\(4) & !\A|ul1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|count\(4),
	datad => VCC,
	cin => \A|ul1|Add0~11\,
	combout => \A|ul1|Add0~12_combout\,
	cout => \A|ul1|Add0~13\);

-- Location: LCCOMB_X82_Y11_N30
\A|ul1|Add0~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~92_combout\ = (\A|ul1|count\(31) & (((\A|ul1|Add0~12_combout\)))) # (!\A|ul1|count\(31) & ((\A|ul1|LessThan0~9_combout\ & ((\A|ul1|Add0~12_combout\))) # (!\A|ul1|LessThan0~9_combout\ & (\A|ul1|count\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(31),
	datab => \A|ul1|count\(4),
	datac => \A|ul1|LessThan0~9_combout\,
	datad => \A|ul1|Add0~12_combout\,
	combout => \A|ul1|Add0~92_combout\);

-- Location: LCCOMB_X82_Y11_N20
\A|ul1|count[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|count[4]~feeder_combout\ = \A|ul1|Add0~92_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|ul1|Add0~92_combout\,
	combout => \A|ul1|count[4]~feeder_combout\);

-- Location: FF_X82_Y11_N21
\A|ul1|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ul1|count[4]~feeder_combout\,
	clrn => \A|df1|q\(21),
	ena => \A|ul1|data_write[9]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(4));

-- Location: LCCOMB_X81_Y13_N10
\A|ul1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~14_combout\ = (\A|ul1|count\(5) & (!\A|ul1|Add0~13\)) # (!\A|ul1|count\(5) & ((\A|ul1|Add0~13\) # (GND)))
-- \A|ul1|Add0~15\ = CARRY((!\A|ul1|Add0~13\) # (!\A|ul1|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|count\(5),
	datad => VCC,
	cin => \A|ul1|Add0~13\,
	combout => \A|ul1|Add0~14_combout\,
	cout => \A|ul1|Add0~15\);

-- Location: LCCOMB_X80_Y13_N2
\A|ul1|Add0~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~91_combout\ = (\A|ul1|LessThan0~9_combout\ & (\A|ul1|Add0~14_combout\)) # (!\A|ul1|LessThan0~9_combout\ & ((\A|ul1|count\(31) & (\A|ul1|Add0~14_combout\)) # (!\A|ul1|count\(31) & ((\A|ul1|count\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|LessThan0~9_combout\,
	datab => \A|ul1|Add0~14_combout\,
	datac => \A|ul1|count\(5),
	datad => \A|ul1|count\(31),
	combout => \A|ul1|Add0~91_combout\);

-- Location: FF_X80_Y13_N3
\A|ul1|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ul1|Add0~91_combout\,
	clrn => \A|df1|q\(21),
	ena => \A|ul1|data_write[9]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(5));

-- Location: LCCOMB_X81_Y13_N12
\A|ul1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~16_combout\ = (\A|ul1|count\(6) & (\A|ul1|Add0~15\ $ (GND))) # (!\A|ul1|count\(6) & (!\A|ul1|Add0~15\ & VCC))
-- \A|ul1|Add0~17\ = CARRY((\A|ul1|count\(6) & !\A|ul1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(6),
	datad => VCC,
	cin => \A|ul1|Add0~15\,
	combout => \A|ul1|Add0~16_combout\,
	cout => \A|ul1|Add0~17\);

-- Location: LCCOMB_X80_Y13_N8
\A|ul1|Add0~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~97_combout\ = (\A|ul1|LessThan0~9_combout\ & (\A|ul1|Add0~16_combout\)) # (!\A|ul1|LessThan0~9_combout\ & ((\A|ul1|count\(31) & (\A|ul1|Add0~16_combout\)) # (!\A|ul1|count\(31) & ((\A|ul1|count\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|LessThan0~9_combout\,
	datab => \A|ul1|Add0~16_combout\,
	datac => \A|ul1|count\(6),
	datad => \A|ul1|count\(31),
	combout => \A|ul1|Add0~97_combout\);

-- Location: FF_X80_Y13_N9
\A|ul1|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ul1|Add0~97_combout\,
	clrn => \A|df1|q\(21),
	ena => \A|ul1|data_write[9]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(6));

-- Location: LCCOMB_X82_Y11_N12
\A|ul1|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|LessThan0~1_combout\ = (!\A|ul1|count\(4) & (((!\A|ul1|count\(1) & !\A|ul1|count\(0))) # (!\A|ul1|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(2),
	datab => \A|ul1|count\(4),
	datac => \A|ul1|count\(1),
	datad => \A|ul1|count\(0),
	combout => \A|ul1|LessThan0~1_combout\);

-- Location: LCCOMB_X81_Y13_N14
\A|ul1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~18_combout\ = (\A|ul1|count\(7) & (!\A|ul1|Add0~17\)) # (!\A|ul1|count\(7) & ((\A|ul1|Add0~17\) # (GND)))
-- \A|ul1|Add0~19\ = CARRY((!\A|ul1|Add0~17\) # (!\A|ul1|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|count\(7),
	datad => VCC,
	cin => \A|ul1|Add0~17\,
	combout => \A|ul1|Add0~18_combout\,
	cout => \A|ul1|Add0~19\);

-- Location: LCCOMB_X80_Y13_N4
\A|ul1|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~58_combout\ = (\A|ul1|LessThan0~9_combout\ & (\A|ul1|Add0~18_combout\)) # (!\A|ul1|LessThan0~9_combout\ & ((\A|ul1|count\(31) & (\A|ul1|Add0~18_combout\)) # (!\A|ul1|count\(31) & ((\A|ul1|count\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|LessThan0~9_combout\,
	datab => \A|ul1|Add0~18_combout\,
	datac => \A|ul1|count\(7),
	datad => \A|ul1|count\(31),
	combout => \A|ul1|Add0~58_combout\);

-- Location: FF_X81_Y13_N9
\A|ul1|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \A|ul1|Add0~58_combout\,
	clrn => \A|df1|q\(21),
	sload => VCC,
	ena => \A|ul1|data_write[9]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(7));

-- Location: LCCOMB_X81_Y13_N16
\A|ul1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~20_combout\ = (\A|ul1|count\(8) & (\A|ul1|Add0~19\ $ (GND))) # (!\A|ul1|count\(8) & (!\A|ul1|Add0~19\ & VCC))
-- \A|ul1|Add0~21\ = CARRY((\A|ul1|count\(8) & !\A|ul1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|count\(8),
	datad => VCC,
	cin => \A|ul1|Add0~19\,
	combout => \A|ul1|Add0~20_combout\,
	cout => \A|ul1|Add0~21\);

-- Location: LCCOMB_X82_Y13_N16
\A|ul1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~22_combout\ = (\A|ul1|LessThan0~9_combout\ & (\A|ul1|Add0~20_combout\)) # (!\A|ul1|LessThan0~9_combout\ & ((\A|ul1|count\(31) & (\A|ul1|Add0~20_combout\)) # (!\A|ul1|count\(31) & ((\A|ul1|count\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~20_combout\,
	datab => \A|ul1|LessThan0~9_combout\,
	datac => \A|ul1|count\(8),
	datad => \A|ul1|count\(31),
	combout => \A|ul1|Add0~22_combout\);

-- Location: FF_X81_Y13_N21
\A|ul1|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \A|ul1|Add0~22_combout\,
	clrn => \A|df1|q\(21),
	sload => VCC,
	ena => \A|ul1|data_write[9]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(8));

-- Location: LCCOMB_X81_Y13_N18
\A|ul1|Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~23_combout\ = (\A|ul1|count\(9) & (!\A|ul1|Add0~21\)) # (!\A|ul1|count\(9) & ((\A|ul1|Add0~21\) # (GND)))
-- \A|ul1|Add0~24\ = CARRY((!\A|ul1|Add0~21\) # (!\A|ul1|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|count\(9),
	datad => VCC,
	cin => \A|ul1|Add0~21\,
	combout => \A|ul1|Add0~23_combout\,
	cout => \A|ul1|Add0~24\);

-- Location: LCCOMB_X80_Y13_N18
\A|ul1|Add0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~57_combout\ = (\A|ul1|LessThan0~9_combout\ & (((\A|ul1|Add0~23_combout\)))) # (!\A|ul1|LessThan0~9_combout\ & ((\A|ul1|count\(31) & ((\A|ul1|Add0~23_combout\))) # (!\A|ul1|count\(31) & (\A|ul1|count\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|LessThan0~9_combout\,
	datab => \A|ul1|count\(31),
	datac => \A|ul1|count\(9),
	datad => \A|ul1|Add0~23_combout\,
	combout => \A|ul1|Add0~57_combout\);

-- Location: FF_X80_Y13_N19
\A|ul1|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ul1|Add0~57_combout\,
	clrn => \A|df1|q\(21),
	ena => \A|ul1|data_write[9]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(9));

-- Location: LCCOMB_X81_Y13_N20
\A|ul1|Add0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~25_combout\ = (\A|ul1|count\(10) & (\A|ul1|Add0~24\ $ (GND))) # (!\A|ul1|count\(10) & (!\A|ul1|Add0~24\ & VCC))
-- \A|ul1|Add0~26\ = CARRY((\A|ul1|count\(10) & !\A|ul1|Add0~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(10),
	datad => VCC,
	cin => \A|ul1|Add0~24\,
	combout => \A|ul1|Add0~25_combout\,
	cout => \A|ul1|Add0~26\);

-- Location: LCCOMB_X80_Y13_N0
\A|ul1|Add0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~59_combout\ = (\A|ul1|count\(31) & (\A|ul1|Add0~25_combout\)) # (!\A|ul1|count\(31) & ((\A|ul1|LessThan0~9_combout\ & (\A|ul1|Add0~25_combout\)) # (!\A|ul1|LessThan0~9_combout\ & ((\A|ul1|count\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~25_combout\,
	datab => \A|ul1|count\(31),
	datac => \A|ul1|count\(10),
	datad => \A|ul1|LessThan0~9_combout\,
	combout => \A|ul1|Add0~59_combout\);

-- Location: FF_X80_Y13_N1
\A|ul1|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ul1|Add0~59_combout\,
	clrn => \A|df1|q\(21),
	ena => \A|ul1|data_write[9]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(10));

-- Location: LCCOMB_X81_Y13_N22
\A|ul1|Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~27_combout\ = (\A|ul1|count\(11) & (!\A|ul1|Add0~26\)) # (!\A|ul1|count\(11) & ((\A|ul1|Add0~26\) # (GND)))
-- \A|ul1|Add0~28\ = CARRY((!\A|ul1|Add0~26\) # (!\A|ul1|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|count\(11),
	datad => VCC,
	cin => \A|ul1|Add0~26\,
	combout => \A|ul1|Add0~27_combout\,
	cout => \A|ul1|Add0~28\);

-- Location: LCCOMB_X80_Y13_N26
\A|ul1|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~60_combout\ = (\A|ul1|count\(31) & (\A|ul1|Add0~27_combout\)) # (!\A|ul1|count\(31) & ((\A|ul1|LessThan0~9_combout\ & (\A|ul1|Add0~27_combout\)) # (!\A|ul1|LessThan0~9_combout\ & ((\A|ul1|count\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~27_combout\,
	datab => \A|ul1|count\(31),
	datac => \A|ul1|LessThan0~9_combout\,
	datad => \A|ul1|count\(11),
	combout => \A|ul1|Add0~60_combout\);

-- Location: FF_X81_Y13_N29
\A|ul1|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \A|ul1|Add0~60_combout\,
	clrn => \A|df1|q\(21),
	sload => VCC,
	ena => \A|ul1|data_write[9]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(11));

-- Location: LCCOMB_X81_Y13_N24
\A|ul1|Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~29_combout\ = (\A|ul1|count\(12) & (\A|ul1|Add0~28\ $ (GND))) # (!\A|ul1|count\(12) & (!\A|ul1|Add0~28\ & VCC))
-- \A|ul1|Add0~30\ = CARRY((\A|ul1|count\(12) & !\A|ul1|Add0~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|count\(12),
	datad => VCC,
	cin => \A|ul1|Add0~28\,
	combout => \A|ul1|Add0~29_combout\,
	cout => \A|ul1|Add0~30\);

-- Location: LCCOMB_X80_Y13_N24
\A|ul1|Add0~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~61_combout\ = (\A|ul1|count\(31) & (((\A|ul1|Add0~29_combout\)))) # (!\A|ul1|count\(31) & ((\A|ul1|LessThan0~9_combout\ & ((\A|ul1|Add0~29_combout\))) # (!\A|ul1|LessThan0~9_combout\ & (\A|ul1|count\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(12),
	datab => \A|ul1|count\(31),
	datac => \A|ul1|LessThan0~9_combout\,
	datad => \A|ul1|Add0~29_combout\,
	combout => \A|ul1|Add0~61_combout\);

-- Location: FF_X81_Y13_N15
\A|ul1|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \A|ul1|Add0~61_combout\,
	clrn => \A|df1|q\(21),
	sload => VCC,
	ena => \A|ul1|data_write[9]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(12));

-- Location: LCCOMB_X81_Y13_N26
\A|ul1|Add0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~31_combout\ = (\A|ul1|count\(13) & (!\A|ul1|Add0~30\)) # (!\A|ul1|count\(13) & ((\A|ul1|Add0~30\) # (GND)))
-- \A|ul1|Add0~32\ = CARRY((!\A|ul1|Add0~30\) # (!\A|ul1|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|count\(13),
	datad => VCC,
	cin => \A|ul1|Add0~30\,
	combout => \A|ul1|Add0~31_combout\,
	cout => \A|ul1|Add0~32\);

-- Location: LCCOMB_X80_Y13_N6
\A|ul1|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~62_combout\ = (\A|ul1|count\(31) & (((\A|ul1|Add0~31_combout\)))) # (!\A|ul1|count\(31) & ((\A|ul1|LessThan0~9_combout\ & ((\A|ul1|Add0~31_combout\))) # (!\A|ul1|LessThan0~9_combout\ & (\A|ul1|count\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(13),
	datab => \A|ul1|count\(31),
	datac => \A|ul1|LessThan0~9_combout\,
	datad => \A|ul1|Add0~31_combout\,
	combout => \A|ul1|Add0~62_combout\);

-- Location: FF_X81_Y13_N17
\A|ul1|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \A|ul1|Add0~62_combout\,
	clrn => \A|df1|q\(21),
	sload => VCC,
	ena => \A|ul1|data_write[9]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(13));

-- Location: LCCOMB_X81_Y13_N28
\A|ul1|Add0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~33_combout\ = (\A|ul1|count\(14) & (\A|ul1|Add0~32\ $ (GND))) # (!\A|ul1|count\(14) & (!\A|ul1|Add0~32\ & VCC))
-- \A|ul1|Add0~34\ = CARRY((\A|ul1|count\(14) & !\A|ul1|Add0~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(14),
	datad => VCC,
	cin => \A|ul1|Add0~32\,
	combout => \A|ul1|Add0~33_combout\,
	cout => \A|ul1|Add0~34\);

-- Location: LCCOMB_X82_Y13_N2
\A|ul1|Add0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~35_combout\ = (\A|ul1|LessThan0~9_combout\ & (\A|ul1|Add0~33_combout\)) # (!\A|ul1|LessThan0~9_combout\ & ((\A|ul1|count\(31) & (\A|ul1|Add0~33_combout\)) # (!\A|ul1|count\(31) & ((\A|ul1|count\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~33_combout\,
	datab => \A|ul1|LessThan0~9_combout\,
	datac => \A|ul1|count\(14),
	datad => \A|ul1|count\(31),
	combout => \A|ul1|Add0~35_combout\);

-- Location: FF_X82_Y13_N3
\A|ul1|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ul1|Add0~35_combout\,
	clrn => \A|df1|q\(21),
	ena => \A|ul1|data_write[9]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(14));

-- Location: LCCOMB_X81_Y13_N30
\A|ul1|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~36_combout\ = (\A|ul1|count\(15) & (!\A|ul1|Add0~34\)) # (!\A|ul1|count\(15) & ((\A|ul1|Add0~34\) # (GND)))
-- \A|ul1|Add0~37\ = CARRY((!\A|ul1|Add0~34\) # (!\A|ul1|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|count\(15),
	datad => VCC,
	cin => \A|ul1|Add0~34\,
	combout => \A|ul1|Add0~36_combout\,
	cout => \A|ul1|Add0~37\);

-- Location: LCCOMB_X82_Y13_N22
\A|ul1|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~38_combout\ = (\A|ul1|count\(31) & (((\A|ul1|Add0~36_combout\)))) # (!\A|ul1|count\(31) & ((\A|ul1|LessThan0~9_combout\ & ((\A|ul1|Add0~36_combout\))) # (!\A|ul1|LessThan0~9_combout\ & (\A|ul1|count\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(31),
	datab => \A|ul1|LessThan0~9_combout\,
	datac => \A|ul1|count\(15),
	datad => \A|ul1|Add0~36_combout\,
	combout => \A|ul1|Add0~38_combout\);

-- Location: FF_X82_Y13_N23
\A|ul1|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ul1|Add0~38_combout\,
	clrn => \A|df1|q\(21),
	ena => \A|ul1|data_write[9]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(15));

-- Location: LCCOMB_X81_Y12_N0
\A|ul1|Add0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~39_combout\ = (\A|ul1|count\(16) & (\A|ul1|Add0~37\ $ (GND))) # (!\A|ul1|count\(16) & (!\A|ul1|Add0~37\ & VCC))
-- \A|ul1|Add0~40\ = CARRY((\A|ul1|count\(16) & !\A|ul1|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(16),
	datad => VCC,
	cin => \A|ul1|Add0~37\,
	combout => \A|ul1|Add0~39_combout\,
	cout => \A|ul1|Add0~40\);

-- Location: LCCOMB_X82_Y13_N8
\A|ul1|Add0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~41_combout\ = (\A|ul1|count\(31) & (((\A|ul1|Add0~39_combout\)))) # (!\A|ul1|count\(31) & ((\A|ul1|LessThan0~9_combout\ & ((\A|ul1|Add0~39_combout\))) # (!\A|ul1|LessThan0~9_combout\ & (\A|ul1|count\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(31),
	datab => \A|ul1|LessThan0~9_combout\,
	datac => \A|ul1|count\(16),
	datad => \A|ul1|Add0~39_combout\,
	combout => \A|ul1|Add0~41_combout\);

-- Location: FF_X82_Y13_N9
\A|ul1|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ul1|Add0~41_combout\,
	clrn => \A|df1|q\(21),
	ena => \A|ul1|data_write[9]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(16));

-- Location: LCCOMB_X81_Y12_N2
\A|ul1|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~42_combout\ = (\A|ul1|count\(17) & (!\A|ul1|Add0~40\)) # (!\A|ul1|count\(17) & ((\A|ul1|Add0~40\) # (GND)))
-- \A|ul1|Add0~43\ = CARRY((!\A|ul1|Add0~40\) # (!\A|ul1|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|count\(17),
	datad => VCC,
	cin => \A|ul1|Add0~40\,
	combout => \A|ul1|Add0~42_combout\,
	cout => \A|ul1|Add0~43\);

-- Location: LCCOMB_X82_Y13_N6
\A|ul1|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~44_combout\ = (\A|ul1|LessThan0~9_combout\ & (\A|ul1|Add0~42_combout\)) # (!\A|ul1|LessThan0~9_combout\ & ((\A|ul1|count\(31) & (\A|ul1|Add0~42_combout\)) # (!\A|ul1|count\(31) & ((\A|ul1|count\(17))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~42_combout\,
	datab => \A|ul1|LessThan0~9_combout\,
	datac => \A|ul1|count\(17),
	datad => \A|ul1|count\(31),
	combout => \A|ul1|Add0~44_combout\);

-- Location: FF_X82_Y13_N7
\A|ul1|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ul1|Add0~44_combout\,
	clrn => \A|df1|q\(21),
	ena => \A|ul1|data_write[9]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(17));

-- Location: LCCOMB_X81_Y12_N4
\A|ul1|Add0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~45_combout\ = (\A|ul1|count\(18) & (\A|ul1|Add0~43\ $ (GND))) # (!\A|ul1|count\(18) & (!\A|ul1|Add0~43\ & VCC))
-- \A|ul1|Add0~46\ = CARRY((\A|ul1|count\(18) & !\A|ul1|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|count\(18),
	datad => VCC,
	cin => \A|ul1|Add0~43\,
	combout => \A|ul1|Add0~45_combout\,
	cout => \A|ul1|Add0~46\);

-- Location: LCCOMB_X82_Y13_N12
\A|ul1|Add0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~47_combout\ = (\A|ul1|count\(31) & (\A|ul1|Add0~45_combout\)) # (!\A|ul1|count\(31) & ((\A|ul1|LessThan0~9_combout\ & (\A|ul1|Add0~45_combout\)) # (!\A|ul1|LessThan0~9_combout\ & ((\A|ul1|count\(18))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(31),
	datab => \A|ul1|Add0~45_combout\,
	datac => \A|ul1|count\(18),
	datad => \A|ul1|LessThan0~9_combout\,
	combout => \A|ul1|Add0~47_combout\);

-- Location: FF_X82_Y13_N13
\A|ul1|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ul1|Add0~47_combout\,
	clrn => \A|df1|q\(21),
	ena => \A|ul1|data_write[9]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(18));

-- Location: LCCOMB_X81_Y12_N6
\A|ul1|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~48_combout\ = (\A|ul1|count\(19) & (!\A|ul1|Add0~46\)) # (!\A|ul1|count\(19) & ((\A|ul1|Add0~46\) # (GND)))
-- \A|ul1|Add0~49\ = CARRY((!\A|ul1|Add0~46\) # (!\A|ul1|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(19),
	datad => VCC,
	cin => \A|ul1|Add0~46\,
	combout => \A|ul1|Add0~48_combout\,
	cout => \A|ul1|Add0~49\);

-- Location: LCCOMB_X82_Y13_N24
\A|ul1|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~50_combout\ = (\A|ul1|count\(31) & (\A|ul1|Add0~48_combout\)) # (!\A|ul1|count\(31) & ((\A|ul1|LessThan0~9_combout\ & (\A|ul1|Add0~48_combout\)) # (!\A|ul1|LessThan0~9_combout\ & ((\A|ul1|count\(19))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~48_combout\,
	datab => \A|ul1|count\(31),
	datac => \A|ul1|count\(19),
	datad => \A|ul1|LessThan0~9_combout\,
	combout => \A|ul1|Add0~50_combout\);

-- Location: FF_X82_Y13_N25
\A|ul1|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ul1|Add0~50_combout\,
	clrn => \A|df1|q\(21),
	ena => \A|ul1|data_write[9]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(19));

-- Location: LCCOMB_X81_Y12_N8
\A|ul1|Add0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~51_combout\ = (\A|ul1|count\(20) & (\A|ul1|Add0~49\ $ (GND))) # (!\A|ul1|count\(20) & (!\A|ul1|Add0~49\ & VCC))
-- \A|ul1|Add0~52\ = CARRY((\A|ul1|count\(20) & !\A|ul1|Add0~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(20),
	datad => VCC,
	cin => \A|ul1|Add0~49\,
	combout => \A|ul1|Add0~51_combout\,
	cout => \A|ul1|Add0~52\);

-- Location: LCCOMB_X82_Y13_N14
\A|ul1|Add0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~53_combout\ = (\A|ul1|count\(31) & (\A|ul1|Add0~51_combout\)) # (!\A|ul1|count\(31) & ((\A|ul1|LessThan0~9_combout\ & (\A|ul1|Add0~51_combout\)) # (!\A|ul1|LessThan0~9_combout\ & ((\A|ul1|count\(20))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~51_combout\,
	datab => \A|ul1|count\(31),
	datac => \A|ul1|count\(20),
	datad => \A|ul1|LessThan0~9_combout\,
	combout => \A|ul1|Add0~53_combout\);

-- Location: FF_X82_Y13_N15
\A|ul1|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ul1|Add0~53_combout\,
	clrn => \A|df1|q\(21),
	ena => \A|ul1|data_write[9]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(20));

-- Location: LCCOMB_X81_Y12_N10
\A|ul1|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~54_combout\ = (\A|ul1|count\(21) & (!\A|ul1|Add0~52\)) # (!\A|ul1|count\(21) & ((\A|ul1|Add0~52\) # (GND)))
-- \A|ul1|Add0~55\ = CARRY((!\A|ul1|Add0~52\) # (!\A|ul1|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|count\(21),
	datad => VCC,
	cin => \A|ul1|Add0~52\,
	combout => \A|ul1|Add0~54_combout\,
	cout => \A|ul1|Add0~55\);

-- Location: LCCOMB_X82_Y13_N20
\A|ul1|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~56_combout\ = (\A|ul1|count\(31) & (\A|ul1|Add0~54_combout\)) # (!\A|ul1|count\(31) & ((\A|ul1|LessThan0~9_combout\ & (\A|ul1|Add0~54_combout\)) # (!\A|ul1|LessThan0~9_combout\ & ((\A|ul1|count\(21))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~54_combout\,
	datab => \A|ul1|count\(31),
	datac => \A|ul1|count\(21),
	datad => \A|ul1|LessThan0~9_combout\,
	combout => \A|ul1|Add0~56_combout\);

-- Location: FF_X82_Y13_N21
\A|ul1|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ul1|Add0~56_combout\,
	clrn => \A|df1|q\(21),
	ena => \A|ul1|data_write[9]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(21));

-- Location: LCCOMB_X81_Y12_N12
\A|ul1|Add0~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~63_combout\ = (\A|ul1|count\(22) & (\A|ul1|Add0~55\ $ (GND))) # (!\A|ul1|count\(22) & (!\A|ul1|Add0~55\ & VCC))
-- \A|ul1|Add0~64\ = CARRY((\A|ul1|count\(22) & !\A|ul1|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|count\(22),
	datad => VCC,
	cin => \A|ul1|Add0~55\,
	combout => \A|ul1|Add0~63_combout\,
	cout => \A|ul1|Add0~64\);

-- Location: LCCOMB_X80_Y12_N24
\A|ul1|Add0~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~89_combout\ = (\A|ul1|LessThan0~9_combout\ & (((\A|ul1|Add0~63_combout\)))) # (!\A|ul1|LessThan0~9_combout\ & ((\A|ul1|count\(31) & ((\A|ul1|Add0~63_combout\))) # (!\A|ul1|count\(31) & (\A|ul1|count\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|LessThan0~9_combout\,
	datab => \A|ul1|count\(22),
	datac => \A|ul1|Add0~63_combout\,
	datad => \A|ul1|count\(31),
	combout => \A|ul1|Add0~89_combout\);

-- Location: FF_X81_Y12_N15
\A|ul1|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \A|ul1|Add0~89_combout\,
	clrn => \A|df1|q\(21),
	sload => VCC,
	ena => \A|ul1|data_write[9]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(22));

-- Location: LCCOMB_X81_Y12_N14
\A|ul1|Add0~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~65_combout\ = (\A|ul1|count\(23) & (!\A|ul1|Add0~64\)) # (!\A|ul1|count\(23) & ((\A|ul1|Add0~64\) # (GND)))
-- \A|ul1|Add0~66\ = CARRY((!\A|ul1|Add0~64\) # (!\A|ul1|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(23),
	datad => VCC,
	cin => \A|ul1|Add0~64\,
	combout => \A|ul1|Add0~65_combout\,
	cout => \A|ul1|Add0~66\);

-- Location: LCCOMB_X80_Y12_N12
\A|ul1|Add0~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~90_combout\ = (\A|ul1|LessThan0~9_combout\ & (\A|ul1|Add0~65_combout\)) # (!\A|ul1|LessThan0~9_combout\ & ((\A|ul1|count\(31) & (\A|ul1|Add0~65_combout\)) # (!\A|ul1|count\(31) & ((\A|ul1|count\(23))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|LessThan0~9_combout\,
	datab => \A|ul1|Add0~65_combout\,
	datac => \A|ul1|count\(23),
	datad => \A|ul1|count\(31),
	combout => \A|ul1|Add0~90_combout\);

-- Location: FF_X80_Y12_N13
\A|ul1|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ul1|Add0~90_combout\,
	clrn => \A|df1|q\(21),
	ena => \A|ul1|data_write[9]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(23));

-- Location: LCCOMB_X81_Y12_N16
\A|ul1|Add0~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~67_combout\ = (\A|ul1|count\(24) & (\A|ul1|Add0~66\ $ (GND))) # (!\A|ul1|count\(24) & (!\A|ul1|Add0~66\ & VCC))
-- \A|ul1|Add0~68\ = CARRY((\A|ul1|count\(24) & !\A|ul1|Add0~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|count\(24),
	datad => VCC,
	cin => \A|ul1|Add0~66\,
	combout => \A|ul1|Add0~67_combout\,
	cout => \A|ul1|Add0~68\);

-- Location: LCCOMB_X80_Y12_N22
\A|ul1|Add0~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~85_combout\ = (\A|ul1|LessThan0~9_combout\ & (\A|ul1|Add0~67_combout\)) # (!\A|ul1|LessThan0~9_combout\ & ((\A|ul1|count\(31) & (\A|ul1|Add0~67_combout\)) # (!\A|ul1|count\(31) & ((\A|ul1|count\(24))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|LessThan0~9_combout\,
	datab => \A|ul1|Add0~67_combout\,
	datac => \A|ul1|count\(24),
	datad => \A|ul1|count\(31),
	combout => \A|ul1|Add0~85_combout\);

-- Location: FF_X80_Y12_N23
\A|ul1|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ul1|Add0~85_combout\,
	clrn => \A|df1|q\(21),
	ena => \A|ul1|data_write[9]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(24));

-- Location: LCCOMB_X81_Y12_N18
\A|ul1|Add0~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~69_combout\ = (\A|ul1|count\(25) & (!\A|ul1|Add0~68\)) # (!\A|ul1|count\(25) & ((\A|ul1|Add0~68\) # (GND)))
-- \A|ul1|Add0~70\ = CARRY((!\A|ul1|Add0~68\) # (!\A|ul1|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|count\(25),
	datad => VCC,
	cin => \A|ul1|Add0~68\,
	combout => \A|ul1|Add0~69_combout\,
	cout => \A|ul1|Add0~70\);

-- Location: LCCOMB_X80_Y12_N20
\A|ul1|Add0~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~86_combout\ = (\A|ul1|LessThan0~9_combout\ & (\A|ul1|Add0~69_combout\)) # (!\A|ul1|LessThan0~9_combout\ & ((\A|ul1|count\(31) & (\A|ul1|Add0~69_combout\)) # (!\A|ul1|count\(31) & ((\A|ul1|count\(25))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|LessThan0~9_combout\,
	datab => \A|ul1|Add0~69_combout\,
	datac => \A|ul1|count\(25),
	datad => \A|ul1|count\(31),
	combout => \A|ul1|Add0~86_combout\);

-- Location: FF_X80_Y12_N21
\A|ul1|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ul1|Add0~86_combout\,
	clrn => \A|df1|q\(21),
	ena => \A|ul1|data_write[9]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(25));

-- Location: LCCOMB_X81_Y12_N20
\A|ul1|Add0~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~71_combout\ = (\A|ul1|count\(26) & (\A|ul1|Add0~70\ $ (GND))) # (!\A|ul1|count\(26) & (!\A|ul1|Add0~70\ & VCC))
-- \A|ul1|Add0~72\ = CARRY((\A|ul1|count\(26) & !\A|ul1|Add0~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(26),
	datad => VCC,
	cin => \A|ul1|Add0~70\,
	combout => \A|ul1|Add0~71_combout\,
	cout => \A|ul1|Add0~72\);

-- Location: LCCOMB_X80_Y12_N10
\A|ul1|Add0~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~87_combout\ = (\A|ul1|LessThan0~9_combout\ & (\A|ul1|Add0~71_combout\)) # (!\A|ul1|LessThan0~9_combout\ & ((\A|ul1|count\(31) & (\A|ul1|Add0~71_combout\)) # (!\A|ul1|count\(31) & ((\A|ul1|count\(26))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|LessThan0~9_combout\,
	datab => \A|ul1|Add0~71_combout\,
	datac => \A|ul1|count\(26),
	datad => \A|ul1|count\(31),
	combout => \A|ul1|Add0~87_combout\);

-- Location: FF_X80_Y12_N11
\A|ul1|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ul1|Add0~87_combout\,
	clrn => \A|df1|q\(21),
	ena => \A|ul1|data_write[9]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(26));

-- Location: LCCOMB_X81_Y12_N22
\A|ul1|Add0~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~73_combout\ = (\A|ul1|count\(27) & (!\A|ul1|Add0~72\)) # (!\A|ul1|count\(27) & ((\A|ul1|Add0~72\) # (GND)))
-- \A|ul1|Add0~74\ = CARRY((!\A|ul1|Add0~72\) # (!\A|ul1|count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(27),
	datad => VCC,
	cin => \A|ul1|Add0~72\,
	combout => \A|ul1|Add0~73_combout\,
	cout => \A|ul1|Add0~74\);

-- Location: LCCOMB_X80_Y12_N2
\A|ul1|Add0~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~88_combout\ = (\A|ul1|LessThan0~9_combout\ & (\A|ul1|Add0~73_combout\)) # (!\A|ul1|LessThan0~9_combout\ & ((\A|ul1|count\(31) & (\A|ul1|Add0~73_combout\)) # (!\A|ul1|count\(31) & ((\A|ul1|count\(27))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|LessThan0~9_combout\,
	datab => \A|ul1|Add0~73_combout\,
	datac => \A|ul1|count\(27),
	datad => \A|ul1|count\(31),
	combout => \A|ul1|Add0~88_combout\);

-- Location: FF_X80_Y12_N3
\A|ul1|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ul1|Add0~88_combout\,
	clrn => \A|df1|q\(21),
	ena => \A|ul1|data_write[9]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(27));

-- Location: LCCOMB_X81_Y12_N24
\A|ul1|Add0~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~75_combout\ = (\A|ul1|count\(28) & (\A|ul1|Add0~74\ $ (GND))) # (!\A|ul1|count\(28) & (!\A|ul1|Add0~74\ & VCC))
-- \A|ul1|Add0~76\ = CARRY((\A|ul1|count\(28) & !\A|ul1|Add0~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(28),
	datad => VCC,
	cin => \A|ul1|Add0~74\,
	combout => \A|ul1|Add0~75_combout\,
	cout => \A|ul1|Add0~76\);

-- Location: LCCOMB_X80_Y12_N16
\A|ul1|Add0~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~83_combout\ = (\A|ul1|LessThan0~9_combout\ & (\A|ul1|Add0~75_combout\)) # (!\A|ul1|LessThan0~9_combout\ & ((\A|ul1|count\(31) & (\A|ul1|Add0~75_combout\)) # (!\A|ul1|count\(31) & ((\A|ul1|count\(28))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|LessThan0~9_combout\,
	datab => \A|ul1|Add0~75_combout\,
	datac => \A|ul1|count\(28),
	datad => \A|ul1|count\(31),
	combout => \A|ul1|Add0~83_combout\);

-- Location: FF_X80_Y12_N17
\A|ul1|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ul1|Add0~83_combout\,
	clrn => \A|df1|q\(21),
	ena => \A|ul1|data_write[9]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(28));

-- Location: LCCOMB_X81_Y12_N26
\A|ul1|Add0~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~77_combout\ = (\A|ul1|count\(29) & (!\A|ul1|Add0~76\)) # (!\A|ul1|count\(29) & ((\A|ul1|Add0~76\) # (GND)))
-- \A|ul1|Add0~78\ = CARRY((!\A|ul1|Add0~76\) # (!\A|ul1|count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(29),
	datad => VCC,
	cin => \A|ul1|Add0~76\,
	combout => \A|ul1|Add0~77_combout\,
	cout => \A|ul1|Add0~78\);

-- Location: LCCOMB_X80_Y12_N14
\A|ul1|Add0~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~84_combout\ = (\A|ul1|LessThan0~9_combout\ & (\A|ul1|Add0~77_combout\)) # (!\A|ul1|LessThan0~9_combout\ & ((\A|ul1|count\(31) & (\A|ul1|Add0~77_combout\)) # (!\A|ul1|count\(31) & ((\A|ul1|count\(29))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|LessThan0~9_combout\,
	datab => \A|ul1|Add0~77_combout\,
	datac => \A|ul1|count\(29),
	datad => \A|ul1|count\(31),
	combout => \A|ul1|Add0~84_combout\);

-- Location: FF_X80_Y12_N15
\A|ul1|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ul1|Add0~84_combout\,
	clrn => \A|df1|q\(21),
	ena => \A|ul1|data_write[9]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(29));

-- Location: LCCOMB_X81_Y12_N28
\A|ul1|Add0~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~79_combout\ = (\A|ul1|count\(30) & (\A|ul1|Add0~78\ $ (GND))) # (!\A|ul1|count\(30) & (!\A|ul1|Add0~78\ & VCC))
-- \A|ul1|Add0~80\ = CARRY((\A|ul1|count\(30) & !\A|ul1|Add0~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(30),
	datad => VCC,
	cin => \A|ul1|Add0~78\,
	combout => \A|ul1|Add0~79_combout\,
	cout => \A|ul1|Add0~80\);

-- Location: LCCOMB_X80_Y12_N8
\A|ul1|Add0~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~99_combout\ = (\A|ul1|LessThan0~9_combout\ & (\A|ul1|Add0~79_combout\)) # (!\A|ul1|LessThan0~9_combout\ & ((\A|ul1|count\(31) & (\A|ul1|Add0~79_combout\)) # (!\A|ul1|count\(31) & ((\A|ul1|count\(30))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|LessThan0~9_combout\,
	datab => \A|ul1|Add0~79_combout\,
	datac => \A|ul1|count\(30),
	datad => \A|ul1|count\(31),
	combout => \A|ul1|Add0~99_combout\);

-- Location: FF_X80_Y12_N9
\A|ul1|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ul1|Add0~99_combout\,
	clrn => \A|df1|q\(21),
	ena => \A|ul1|data_write[9]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(30));

-- Location: LCCOMB_X80_Y12_N0
\A|ul1|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|LessThan0~0_combout\ = (!\A|ul1|count\(29) & (!\A|ul1|count\(27) & (!\A|ul1|count\(30) & !\A|ul1|count\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(29),
	datab => \A|ul1|count\(27),
	datac => \A|ul1|count\(30),
	datad => \A|ul1|count\(28),
	combout => \A|ul1|LessThan0~0_combout\);

-- Location: LCCOMB_X80_Y13_N14
\A|ul1|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|LessThan0~2_combout\ = (\A|ul1|LessThan0~0_combout\ & (((\A|ul1|LessThan0~1_combout\ & !\A|ul1|count\(3))) # (!\A|ul1|count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|LessThan0~1_combout\,
	datab => \A|ul1|count\(5),
	datac => \A|ul1|LessThan0~0_combout\,
	datad => \A|ul1|count\(3),
	combout => \A|ul1|LessThan0~2_combout\);

-- Location: LCCOMB_X82_Y13_N10
\A|ul1|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|LessThan0~4_combout\ = (!\A|ul1|count\(22) & (!\A|ul1|count\(20) & (!\A|ul1|count\(21) & !\A|ul1|count\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(22),
	datab => \A|ul1|count\(20),
	datac => \A|ul1|count\(21),
	datad => \A|ul1|count\(19),
	combout => \A|ul1|LessThan0~4_combout\);

-- Location: LCCOMB_X82_Y13_N28
\A|ul1|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|LessThan0~6_combout\ = (!\A|ul1|count\(11) & (!\A|ul1|count\(14) & (!\A|ul1|count\(13) & !\A|ul1|count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(11),
	datab => \A|ul1|count\(14),
	datac => \A|ul1|count\(13),
	datad => \A|ul1|count\(12),
	combout => \A|ul1|LessThan0~6_combout\);

-- Location: LCCOMB_X82_Y13_N4
\A|ul1|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|LessThan0~5_combout\ = (!\A|ul1|count\(18) & (!\A|ul1|count\(15) & (!\A|ul1|count\(17) & !\A|ul1|count\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(18),
	datab => \A|ul1|count\(15),
	datac => \A|ul1|count\(17),
	datad => \A|ul1|count\(16),
	combout => \A|ul1|LessThan0~5_combout\);

-- Location: LCCOMB_X80_Y12_N30
\A|ul1|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|LessThan0~3_combout\ = (!\A|ul1|count\(24) & (!\A|ul1|count\(25) & (!\A|ul1|count\(23) & !\A|ul1|count\(26))))

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
	combout => \A|ul1|LessThan0~3_combout\);

-- Location: LCCOMB_X82_Y13_N30
\A|ul1|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|LessThan0~7_combout\ = (\A|ul1|LessThan0~4_combout\ & (\A|ul1|LessThan0~6_combout\ & (\A|ul1|LessThan0~5_combout\ & \A|ul1|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|LessThan0~4_combout\,
	datab => \A|ul1|LessThan0~6_combout\,
	datac => \A|ul1|LessThan0~5_combout\,
	datad => \A|ul1|LessThan0~3_combout\,
	combout => \A|ul1|LessThan0~7_combout\);

-- Location: LCCOMB_X80_Y13_N16
\A|ul1|LessThan0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|LessThan0~8_combout\ = (!\A|ul1|count\(9) & (!\A|ul1|count\(10) & (!\A|ul1|count\(7) & !\A|ul1|count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(9),
	datab => \A|ul1|count\(10),
	datac => \A|ul1|count\(7),
	datad => \A|ul1|count\(8),
	combout => \A|ul1|LessThan0~8_combout\);

-- Location: LCCOMB_X80_Y13_N30
\A|ul1|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|LessThan0~9_combout\ = (!\A|ul1|count\(6) & (\A|ul1|LessThan0~2_combout\ & (\A|ul1|LessThan0~7_combout\ & \A|ul1|LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(6),
	datab => \A|ul1|LessThan0~2_combout\,
	datac => \A|ul1|LessThan0~7_combout\,
	datad => \A|ul1|LessThan0~8_combout\,
	combout => \A|ul1|LessThan0~9_combout\);

-- Location: LCCOMB_X81_Y12_N30
\A|ul1|Add0~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~81_combout\ = \A|ul1|Add0~80\ $ (\A|ul1|count\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \A|ul1|count\(31),
	cin => \A|ul1|Add0~80\,
	combout => \A|ul1|Add0~81_combout\);

-- Location: LCCOMB_X80_Y13_N20
\A|ul1|Add0~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~98_combout\ = (\A|ul1|Add0~81_combout\ & ((\A|ul1|LessThan0~9_combout\) # (\A|ul1|count\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|LessThan0~9_combout\,
	datac => \A|ul1|count\(31),
	datad => \A|ul1|Add0~81_combout\,
	combout => \A|ul1|Add0~98_combout\);

-- Location: FF_X80_Y13_N21
\A|ul1|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ul1|Add0~98_combout\,
	clrn => \A|df1|q\(21),
	ena => \A|ul1|data_write[9]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(31));

-- Location: LCCOMB_X82_Y11_N10
\A|ul1|Add0~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~95_combout\ = (\A|ul1|count\(31) & (\A|ul1|Add0~4_combout\)) # (!\A|ul1|count\(31) & ((\A|ul1|LessThan0~9_combout\ & (\A|ul1|Add0~4_combout\)) # (!\A|ul1|LessThan0~9_combout\ & ((\A|ul1|count\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(31),
	datab => \A|ul1|Add0~4_combout\,
	datac => \A|ul1|count\(0),
	datad => \A|ul1|LessThan0~9_combout\,
	combout => \A|ul1|Add0~95_combout\);

-- Location: LCCOMB_X80_Y12_N4
\A|ul1|LessThan0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|LessThan0~10_combout\ = (\A|ul1|LessThan0~9_combout\) # (\A|ul1|count\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|ul1|LessThan0~9_combout\,
	datad => \A|ul1|count\(31),
	combout => \A|ul1|LessThan0~10_combout\);

-- Location: LCCOMB_X80_Y12_N18
\A|ul1|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal0~6_combout\ = (!\A|ul1|Add0~86_combout\ & (!\A|ul1|Add0~85_combout\ & ((!\A|ul1|Add0~79_combout\) # (!\A|ul1|LessThan0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~86_combout\,
	datab => \A|ul1|LessThan0~10_combout\,
	datac => \A|ul1|Add0~85_combout\,
	datad => \A|ul1|Add0~79_combout\,
	combout => \A|ul1|Equal0~6_combout\);

-- Location: LCCOMB_X80_Y12_N26
\A|ul1|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal0~7_combout\ = (!\A|ul1|Add0~90_combout\ & (!\A|ul1|Add0~89_combout\ & ((\A|ul1|LessThan0~10_combout\) # (!\A|ul1|count\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~90_combout\,
	datab => \A|ul1|count\(30),
	datac => \A|ul1|LessThan0~10_combout\,
	datad => \A|ul1|Add0~89_combout\,
	combout => \A|ul1|Equal0~7_combout\);

-- Location: LCCOMB_X80_Y12_N28
\A|ul1|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal0~8_combout\ = (\A|ul1|Equal0~7_combout\ & (!\A|ul1|Add0~88_combout\ & !\A|ul1|Add0~87_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal0~7_combout\,
	datab => \A|ul1|Add0~88_combout\,
	datac => \A|ul1|Add0~87_combout\,
	combout => \A|ul1|Equal0~8_combout\);

-- Location: LCCOMB_X80_Y12_N6
\A|ul1|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal0~9_combout\ = (!\A|ul1|Add0~83_combout\ & (\A|ul1|Equal0~6_combout\ & (!\A|ul1|Add0~84_combout\ & \A|ul1|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~83_combout\,
	datab => \A|ul1|Equal0~6_combout\,
	datac => \A|ul1|Add0~84_combout\,
	datad => \A|ul1|Equal0~8_combout\,
	combout => \A|ul1|Equal0~9_combout\);

-- Location: LCCOMB_X82_Y13_N0
\A|ul1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal0~1_combout\ = (!\A|ul1|Add0~53_combout\ & (!\A|ul1|Add0~56_combout\ & (!\A|ul1|Add0~47_combout\ & !\A|ul1|Add0~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~53_combout\,
	datab => \A|ul1|Add0~56_combout\,
	datac => \A|ul1|Add0~47_combout\,
	datad => \A|ul1|Add0~50_combout\,
	combout => \A|ul1|Equal0~1_combout\);

-- Location: LCCOMB_X82_Y13_N26
\A|ul1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal0~0_combout\ = (!\A|ul1|Add0~44_combout\ & (!\A|ul1|Add0~41_combout\ & (!\A|ul1|Add0~38_combout\ & !\A|ul1|Add0~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~44_combout\,
	datab => \A|ul1|Add0~41_combout\,
	datac => \A|ul1|Add0~38_combout\,
	datad => \A|ul1|Add0~35_combout\,
	combout => \A|ul1|Equal0~0_combout\);

-- Location: LCCOMB_X80_Y13_N10
\A|ul1|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal0~3_combout\ = (\A|ul1|LessThan0~10_combout\ & (((\A|ul1|Add0~16_combout\) # (\A|ul1|Add0~81_combout\)))) # (!\A|ul1|LessThan0~10_combout\ & (\A|ul1|count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(6),
	datab => \A|ul1|Add0~16_combout\,
	datac => \A|ul1|LessThan0~10_combout\,
	datad => \A|ul1|Add0~81_combout\,
	combout => \A|ul1|Equal0~3_combout\);

-- Location: LCCOMB_X80_Y13_N28
\A|ul1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal0~2_combout\ = (!\A|ul1|Add0~60_combout\ & (!\A|ul1|Add0~59_combout\ & (!\A|ul1|Add0~62_combout\ & !\A|ul1|Add0~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~60_combout\,
	datab => \A|ul1|Add0~59_combout\,
	datac => \A|ul1|Add0~62_combout\,
	datad => \A|ul1|Add0~61_combout\,
	combout => \A|ul1|Equal0~2_combout\);

-- Location: LCCOMB_X80_Y13_N12
\A|ul1|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal0~4_combout\ = (!\A|ul1|Equal0~3_combout\ & (!\A|ul1|Add0~57_combout\ & (!\A|ul1|Add0~58_combout\ & \A|ul1|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal0~3_combout\,
	datab => \A|ul1|Add0~57_combout\,
	datac => \A|ul1|Add0~58_combout\,
	datad => \A|ul1|Equal0~2_combout\,
	combout => \A|ul1|Equal0~4_combout\);

-- Location: LCCOMB_X82_Y13_N18
\A|ul1|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal0~5_combout\ = (\A|ul1|Equal0~1_combout\ & (!\A|ul1|Add0~22_combout\ & (\A|ul1|Equal0~0_combout\ & \A|ul1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal0~1_combout\,
	datab => \A|ul1|Add0~22_combout\,
	datac => \A|ul1|Equal0~0_combout\,
	datad => \A|ul1|Equal0~4_combout\,
	combout => \A|ul1|Equal0~5_combout\);

-- Location: LCCOMB_X81_Y9_N28
\A|ul1|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal2~0_combout\ = (!\A|ul1|Add0~91_combout\ & (\A|ul1|Equal0~9_combout\ & \A|ul1|Equal0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|Add0~91_combout\,
	datac => \A|ul1|Equal0~9_combout\,
	datad => \A|ul1|Equal0~5_combout\,
	combout => \A|ul1|Equal2~0_combout\);

-- Location: LCCOMB_X81_Y9_N0
\A|ul1|Equal3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal3~3_combout\ = (!\A|ul1|Add0~95_combout\ & (\A|ul1|Add0~94_combout\ & (!\A|ul1|Add0~96_combout\ & \A|ul1|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~95_combout\,
	datab => \A|ul1|Add0~94_combout\,
	datac => \A|ul1|Add0~96_combout\,
	datad => \A|ul1|Equal2~0_combout\,
	combout => \A|ul1|Equal3~3_combout\);

-- Location: LCCOMB_X82_Y9_N10
\A|ul1|Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal2~2_combout\ = (!\A|ul1|Add0~92_combout\ & !\A|ul1|Add0~93_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|ul1|Add0~92_combout\,
	datad => \A|ul1|Add0~93_combout\,
	combout => \A|ul1|Equal2~2_combout\);

-- Location: LCCOMB_X81_Y9_N16
\A|ul1|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal1~0_combout\ = (\A|ul1|Add0~91_combout\ & (\A|ul1|Equal0~9_combout\ & (\A|ul1|Equal2~2_combout\ & \A|ul1|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~91_combout\,
	datab => \A|ul1|Equal0~9_combout\,
	datac => \A|ul1|Equal2~2_combout\,
	datad => \A|ul1|Equal0~5_combout\,
	combout => \A|ul1|Equal1~0_combout\);

-- Location: LCCOMB_X82_Y9_N16
\A|ul1|WideNor0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|WideNor0~2_combout\ = ((\A|ul1|Add0~94_combout\ & ((\A|ul1|Add0~96_combout\) # (!\A|ul1|Add0~95_combout\))) # (!\A|ul1|Add0~94_combout\ & ((\A|ul1|Add0~95_combout\) # (!\A|ul1|Add0~96_combout\)))) # (!\A|ul1|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal1~0_combout\,
	datab => \A|ul1|Add0~94_combout\,
	datac => \A|ul1|Add0~95_combout\,
	datad => \A|ul1|Add0~96_combout\,
	combout => \A|ul1|WideNor0~2_combout\);

-- Location: LCCOMB_X82_Y9_N0
\A|ul1|WideNor0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|WideNor0~3_combout\ = (\A|ul1|WideNor0~2_combout\ & (((\A|ul1|Add0~93_combout\) # (!\A|ul1|Add0~92_combout\)) # (!\A|ul1|Equal3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal3~3_combout\,
	datab => \A|ul1|Add0~93_combout\,
	datac => \A|ul1|Add0~92_combout\,
	datad => \A|ul1|WideNor0~2_combout\,
	combout => \A|ul1|WideNor0~3_combout\);

-- Location: LCCOMB_X82_Y9_N8
\A|ul1|Equal35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal35~0_combout\ = (!\A|ul1|Add0~95_combout\ & \A|ul1|Add0~94_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|ul1|Add0~95_combout\,
	datad => \A|ul1|Add0~94_combout\,
	combout => \A|ul1|Equal35~0_combout\);

-- Location: LCCOMB_X83_Y10_N4
\A|ul1|Equal19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal19~0_combout\ = (\A|ul1|Add0~92_combout\ & !\A|ul1|Add0~93_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|ul1|Add0~92_combout\,
	datad => \A|ul1|Add0~93_combout\,
	combout => \A|ul1|Equal19~0_combout\);

-- Location: LCCOMB_X82_Y9_N14
\A|ul1|Equal19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal19~1_combout\ = (!\A|ul1|Add0~96_combout\ & (\A|ul1|Equal35~0_combout\ & (\A|ul1|Equal19~0_combout\ & \A|ul1|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~96_combout\,
	datab => \A|ul1|Equal35~0_combout\,
	datac => \A|ul1|Equal19~0_combout\,
	datad => \A|ul1|Equal2~0_combout\,
	combout => \A|ul1|Equal19~1_combout\);

-- Location: LCCOMB_X81_Y9_N14
\A|ul1|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal2~1_combout\ = (\A|ul1|Add0~95_combout\ & (!\A|ul1|Add0~91_combout\ & (\A|ul1|Equal0~9_combout\ & \A|ul1|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~95_combout\,
	datab => \A|ul1|Add0~91_combout\,
	datac => \A|ul1|Equal0~9_combout\,
	datad => \A|ul1|Equal0~5_combout\,
	combout => \A|ul1|Equal2~1_combout\);

-- Location: LCCOMB_X82_Y10_N20
\A|ul1|Equal20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal20~0_combout\ = (!\A|ul1|Add0~96_combout\ & (\A|ul1|Equal19~0_combout\ & (\A|ul1|Add0~94_combout\ & \A|ul1|Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~96_combout\,
	datab => \A|ul1|Equal19~0_combout\,
	datac => \A|ul1|Add0~94_combout\,
	datad => \A|ul1|Equal2~1_combout\,
	combout => \A|ul1|Equal20~0_combout\);

-- Location: LCCOMB_X83_Y10_N30
\A|ul1|Equal27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal27~0_combout\ = (\A|ul1|Add0~92_combout\ & \A|ul1|Add0~93_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|ul1|Add0~92_combout\,
	datad => \A|ul1|Add0~93_combout\,
	combout => \A|ul1|Equal27~0_combout\);

-- Location: LCCOMB_X81_Y9_N4
\A|ul1|Equal5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal5~2_combout\ = (!\A|ul1|Add0~95_combout\ & (!\A|ul1|Add0~94_combout\ & (\A|ul1|Add0~96_combout\ & \A|ul1|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~95_combout\,
	datab => \A|ul1|Add0~94_combout\,
	datac => \A|ul1|Add0~96_combout\,
	datad => \A|ul1|Equal2~0_combout\,
	combout => \A|ul1|Equal5~2_combout\);

-- Location: LCCOMB_X81_Y9_N2
\A|ul1|Equal7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal7~3_combout\ = (!\A|ul1|Add0~95_combout\ & (\A|ul1|Add0~94_combout\ & (\A|ul1|Add0~96_combout\ & \A|ul1|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~95_combout\,
	datab => \A|ul1|Add0~94_combout\,
	datac => \A|ul1|Add0~96_combout\,
	datad => \A|ul1|Equal2~0_combout\,
	combout => \A|ul1|Equal7~3_combout\);

-- Location: LCCOMB_X81_Y9_N26
\A|ul1|Selector12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector12~3_combout\ = ((!\A|ul1|Equal3~3_combout\ & (!\A|ul1|Equal5~2_combout\ & !\A|ul1|Equal7~3_combout\))) # (!\A|ul1|Equal27~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal27~0_combout\,
	datab => \A|ul1|Equal3~3_combout\,
	datac => \A|ul1|Equal5~2_combout\,
	datad => \A|ul1|Equal7~3_combout\,
	combout => \A|ul1|Selector12~3_combout\);

-- Location: LCCOMB_X82_Y9_N6
\A|ul1|Equal7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal7~2_combout\ = (\A|ul1|Add0~96_combout\ & (\A|ul1|Equal2~0_combout\ & (\A|ul1|Equal35~0_combout\ & \A|ul1|Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~96_combout\,
	datab => \A|ul1|Equal2~0_combout\,
	datac => \A|ul1|Equal35~0_combout\,
	datad => \A|ul1|Equal2~2_combout\,
	combout => \A|ul1|Equal7~2_combout\);

-- Location: LCCOMB_X82_Y9_N28
\A|ul1|Selector12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector12~4_combout\ = (!\A|ul1|Equal7~2_combout\ & ((\A|ul1|Add0~96_combout\) # ((!\A|ul1|Equal1~0_combout\) # (!\A|ul1|Equal35~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~96_combout\,
	datab => \A|ul1|Equal35~0_combout\,
	datac => \A|ul1|Equal1~0_combout\,
	datad => \A|ul1|Equal7~2_combout\,
	combout => \A|ul1|Selector12~4_combout\);

-- Location: LCCOMB_X81_Y10_N16
\A|ul1|Equal18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal18~0_combout\ = (\A|ul1|Add0~92_combout\ & !\A|ul1|Add0~94_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|ul1|Add0~92_combout\,
	datad => \A|ul1|Add0~94_combout\,
	combout => \A|ul1|Equal18~0_combout\);

-- Location: LCCOMB_X82_Y9_N26
\A|ul1|Equal22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal22~0_combout\ = (\A|ul1|Add0~96_combout\ & (!\A|ul1|Add0~93_combout\ & (\A|ul1|Equal18~0_combout\ & \A|ul1|Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~96_combout\,
	datab => \A|ul1|Add0~93_combout\,
	datac => \A|ul1|Equal18~0_combout\,
	datad => \A|ul1|Equal2~1_combout\,
	combout => \A|ul1|Equal22~0_combout\);

-- Location: LCCOMB_X82_Y9_N20
\A|ul1|Equal11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal11~0_combout\ = (!\A|ul1|Add0~92_combout\ & \A|ul1|Add0~93_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|ul1|Add0~92_combout\,
	datad => \A|ul1|Add0~93_combout\,
	combout => \A|ul1|Equal11~0_combout\);

-- Location: LCCOMB_X82_Y9_N4
\A|ul1|Equal6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal6~0_combout\ = (\A|ul1|Add0~96_combout\ & (!\A|ul1|Add0~94_combout\ & \A|ul1|Equal2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~96_combout\,
	datab => \A|ul1|Add0~94_combout\,
	datad => \A|ul1|Equal2~1_combout\,
	combout => \A|ul1|Equal6~0_combout\);

-- Location: LCCOMB_X82_Y9_N18
\A|ul1|Equal8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal8~0_combout\ = (\A|ul1|Add0~96_combout\ & (\A|ul1|Add0~94_combout\ & \A|ul1|Equal2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~96_combout\,
	datab => \A|ul1|Add0~94_combout\,
	datad => \A|ul1|Equal2~1_combout\,
	combout => \A|ul1|Equal8~0_combout\);

-- Location: LCCOMB_X82_Y9_N24
\A|ul1|Selector12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector12~2_combout\ = (\A|ul1|Equal2~2_combout\ & (((!\A|ul1|Equal6~0_combout\ & !\A|ul1|Equal8~0_combout\)))) # (!\A|ul1|Equal2~2_combout\ & (((!\A|ul1|Equal6~0_combout\)) # (!\A|ul1|Equal11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal2~2_combout\,
	datab => \A|ul1|Equal11~0_combout\,
	datac => \A|ul1|Equal6~0_combout\,
	datad => \A|ul1|Equal8~0_combout\,
	combout => \A|ul1|Selector12~2_combout\);

-- Location: LCCOMB_X81_Y9_N6
\A|ul1|Selector12~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector12~5_combout\ = (\A|ul1|Selector12~3_combout\ & (\A|ul1|Selector12~4_combout\ & (!\A|ul1|Equal22~0_combout\ & \A|ul1|Selector12~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Selector12~3_combout\,
	datab => \A|ul1|Selector12~4_combout\,
	datac => \A|ul1|Equal22~0_combout\,
	datad => \A|ul1|Selector12~2_combout\,
	combout => \A|ul1|Selector12~5_combout\);

-- Location: LCCOMB_X81_Y9_N30
\A|ul1|Equal33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal33~0_combout\ = (!\A|ul1|Add0~95_combout\ & (!\A|ul1|Add0~94_combout\ & (!\A|ul1|Add0~96_combout\ & \A|ul1|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~95_combout\,
	datab => \A|ul1|Add0~94_combout\,
	datac => \A|ul1|Add0~96_combout\,
	datad => \A|ul1|Equal1~0_combout\,
	combout => \A|ul1|Equal33~0_combout\);

-- Location: LCCOMB_X81_Y9_N20
\A|ul1|Equal34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal34~0_combout\ = (\A|ul1|Add0~95_combout\ & (!\A|ul1|Add0~94_combout\ & (!\A|ul1|Add0~96_combout\ & \A|ul1|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~95_combout\,
	datab => \A|ul1|Add0~94_combout\,
	datac => \A|ul1|Add0~96_combout\,
	datad => \A|ul1|Equal1~0_combout\,
	combout => \A|ul1|Equal34~0_combout\);

-- Location: LCCOMB_X82_Y9_N22
\A|ul1|Equal26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal26~0_combout\ = (\A|ul1|Equal2~1_combout\ & (\A|ul1|Add0~93_combout\ & (\A|ul1|Equal18~0_combout\ & !\A|ul1|Add0~96_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal2~1_combout\,
	datab => \A|ul1|Add0~93_combout\,
	datac => \A|ul1|Equal18~0_combout\,
	datad => \A|ul1|Add0~96_combout\,
	combout => \A|ul1|Equal26~0_combout\);

-- Location: LCCOMB_X81_Y9_N10
\A|ul1|Equal17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal17~2_combout\ = (!\A|ul1|Add0~95_combout\ & (!\A|ul1|Add0~94_combout\ & (!\A|ul1|Add0~96_combout\ & \A|ul1|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~95_combout\,
	datab => \A|ul1|Add0~94_combout\,
	datac => \A|ul1|Add0~96_combout\,
	datad => \A|ul1|Equal2~0_combout\,
	combout => \A|ul1|Equal17~2_combout\);

-- Location: LCCOMB_X81_Y9_N12
\A|ul1|WideNor1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|WideNor1~1_combout\ = (!\A|ul1|Equal17~2_combout\) # (!\A|ul1|Add0~93_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|Add0~93_combout\,
	datad => \A|ul1|Equal17~2_combout\,
	combout => \A|ul1|WideNor1~1_combout\);

-- Location: LCCOMB_X81_Y9_N18
\A|ul1|WideNor1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|WideNor1~2_combout\ = (!\A|ul1|Equal33~0_combout\ & (!\A|ul1|Equal34~0_combout\ & (!\A|ul1|Equal26~0_combout\ & \A|ul1|WideNor1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal33~0_combout\,
	datab => \A|ul1|Equal34~0_combout\,
	datac => \A|ul1|Equal26~0_combout\,
	datad => \A|ul1|WideNor1~1_combout\,
	combout => \A|ul1|WideNor1~2_combout\);

-- Location: LCCOMB_X80_Y9_N0
\A|ul1|Equal12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal12~0_combout\ = (\A|ul1|Add0~94_combout\ & (\A|ul1|Equal2~1_combout\ & (!\A|ul1|Add0~96_combout\ & \A|ul1|Equal11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~94_combout\,
	datab => \A|ul1|Equal2~1_combout\,
	datac => \A|ul1|Add0~96_combout\,
	datad => \A|ul1|Equal11~0_combout\,
	combout => \A|ul1|Equal12~0_combout\);

-- Location: LCCOMB_X80_Y9_N12
\A|ul1|Equal28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal28~0_combout\ = (\A|ul1|Add0~94_combout\ & (\A|ul1|Equal27~0_combout\ & (\A|ul1|Equal2~1_combout\ & !\A|ul1|Add0~96_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~94_combout\,
	datab => \A|ul1|Equal27~0_combout\,
	datac => \A|ul1|Equal2~1_combout\,
	datad => \A|ul1|Add0~96_combout\,
	combout => \A|ul1|Equal28~0_combout\);

-- Location: LCCOMB_X82_Y9_N12
\A|ul1|Equal30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal30~0_combout\ = (\A|ul1|Add0~96_combout\ & (\A|ul1|Add0~93_combout\ & (\A|ul1|Equal18~0_combout\ & \A|ul1|Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~96_combout\,
	datab => \A|ul1|Add0~93_combout\,
	datac => \A|ul1|Equal18~0_combout\,
	datad => \A|ul1|Equal2~1_combout\,
	combout => \A|ul1|Equal30~0_combout\);

-- Location: LCCOMB_X80_Y9_N18
\A|ul1|Selector15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector15~2_combout\ = (!\A|ul1|Equal28~0_combout\ & (!\A|ul1|Equal30~0_combout\ & ((!\A|ul1|Equal5~2_combout\) # (!\A|ul1|Equal11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal28~0_combout\,
	datab => \A|ul1|Equal11~0_combout\,
	datac => \A|ul1|Equal30~0_combout\,
	datad => \A|ul1|Equal5~2_combout\,
	combout => \A|ul1|Selector15~2_combout\);

-- Location: LCCOMB_X80_Y9_N30
\A|ul1|WideNor1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|WideNor1~0_combout\ = (!\A|ul1|Equal12~0_combout\ & (\A|ul1|Selector15~2_combout\ & ((!\A|ul1|Equal3~3_combout\) # (!\A|ul1|Equal11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal12~0_combout\,
	datab => \A|ul1|Equal11~0_combout\,
	datac => \A|ul1|Equal3~3_combout\,
	datad => \A|ul1|Selector15~2_combout\,
	combout => \A|ul1|WideNor1~0_combout\);

-- Location: LCCOMB_X80_Y9_N6
\A|ul1|data_write~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|data_write~53_combout\ = (((!\A|ul1|Add0~94_combout\) # (!\A|ul1|Equal2~1_combout\)) # (!\A|ul1|Add0~96_combout\)) # (!\A|ul1|Add0~92_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~92_combout\,
	datab => \A|ul1|Add0~96_combout\,
	datac => \A|ul1|Equal2~1_combout\,
	datad => \A|ul1|Add0~94_combout\,
	combout => \A|ul1|data_write~53_combout\);

-- Location: LCCOMB_X81_Y9_N24
\A|ul1|Equal10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal10~0_combout\ = (\A|ul1|Equal2~1_combout\ & \A|ul1|Add0~93_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|ul1|Equal2~1_combout\,
	datad => \A|ul1|Add0~93_combout\,
	combout => \A|ul1|Equal10~0_combout\);

-- Location: LCCOMB_X80_Y9_N20
\A|ul1|Equal10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal10~1_combout\ = (!\A|ul1|Add0~94_combout\ & (!\A|ul1|Add0~96_combout\ & (!\A|ul1|Add0~92_combout\ & \A|ul1|Equal10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~94_combout\,
	datab => \A|ul1|Add0~96_combout\,
	datac => \A|ul1|Add0~92_combout\,
	datad => \A|ul1|Equal10~0_combout\,
	combout => \A|ul1|Equal10~1_combout\);

-- Location: LCCOMB_X80_Y9_N2
\A|ul1|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector16~0_combout\ = (\A|ul1|data_write~53_combout\ & (!\A|ul1|Equal10~1_combout\ & ((!\A|ul1|Equal7~3_combout\) # (!\A|ul1|Equal19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|data_write~53_combout\,
	datab => \A|ul1|Equal10~1_combout\,
	datac => \A|ul1|Equal19~0_combout\,
	datad => \A|ul1|Equal7~3_combout\,
	combout => \A|ul1|Selector16~0_combout\);

-- Location: LCCOMB_X80_Y9_N28
\A|ul1|WideNor1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|WideNor1~3_combout\ = (\A|ul1|Selector12~5_combout\ & (\A|ul1|WideNor1~2_combout\ & (\A|ul1|WideNor1~0_combout\ & \A|ul1|Selector16~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Selector12~5_combout\,
	datab => \A|ul1|WideNor1~2_combout\,
	datac => \A|ul1|WideNor1~0_combout\,
	datad => \A|ul1|Selector16~0_combout\,
	combout => \A|ul1|WideNor1~3_combout\);

-- Location: LCCOMB_X81_Y10_N20
\A|ul1|Equal2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal2~3_combout\ = (\A|ul1|Equal2~2_combout\ & (!\A|ul1|Add0~94_combout\ & (\A|ul1|Equal2~1_combout\ & !\A|ul1|Add0~96_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal2~2_combout\,
	datab => \A|ul1|Add0~94_combout\,
	datac => \A|ul1|Equal2~1_combout\,
	datad => \A|ul1|Add0~96_combout\,
	combout => \A|ul1|Equal2~3_combout\);

-- Location: LCCOMB_X81_Y10_N6
\A|ul1|Equal18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal18~1_combout\ = (\A|ul1|Equal2~1_combout\ & (!\A|ul1|Add0~96_combout\ & (!\A|ul1|Add0~93_combout\ & \A|ul1|Equal18~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal2~1_combout\,
	datab => \A|ul1|Add0~96_combout\,
	datac => \A|ul1|Add0~93_combout\,
	datad => \A|ul1|Equal18~0_combout\,
	combout => \A|ul1|Equal18~1_combout\);

-- Location: LCCOMB_X81_Y9_N8
\A|ul1|Equal3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal3~2_combout\ = (!\A|ul1|Add0~96_combout\ & (\A|ul1|Equal35~0_combout\ & (\A|ul1|Equal2~2_combout\ & \A|ul1|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~96_combout\,
	datab => \A|ul1|Equal35~0_combout\,
	datac => \A|ul1|Equal2~2_combout\,
	datad => \A|ul1|Equal2~0_combout\,
	combout => \A|ul1|Equal3~2_combout\);

-- Location: LCCOMB_X81_Y10_N28
\A|ul1|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector17~0_combout\ = (!\A|ul1|Equal18~1_combout\ & (!\A|ul1|Equal3~2_combout\ & ((!\A|ul1|Equal8~0_combout\) # (!\A|ul1|Equal11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal18~1_combout\,
	datab => \A|ul1|Equal3~2_combout\,
	datac => \A|ul1|Equal11~0_combout\,
	datad => \A|ul1|Equal8~0_combout\,
	combout => \A|ul1|Selector17~0_combout\);

-- Location: LCCOMB_X81_Y10_N12
\A|ul1|Equal17~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal17~3_combout\ = (!\A|ul1|Add0~93_combout\ & (\A|ul1|Add0~92_combout\ & \A|ul1|Equal17~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|Add0~93_combout\,
	datac => \A|ul1|Add0~92_combout\,
	datad => \A|ul1|Equal17~2_combout\,
	combout => \A|ul1|Equal17~3_combout\);

-- Location: LCCOMB_X81_Y10_N18
\A|ul1|Equal21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal21~2_combout\ = (!\A|ul1|Add0~93_combout\ & (\A|ul1|Add0~92_combout\ & \A|ul1|Equal5~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|Add0~93_combout\,
	datac => \A|ul1|Add0~92_combout\,
	datad => \A|ul1|Equal5~2_combout\,
	combout => \A|ul1|Equal21~2_combout\);

-- Location: LCCOMB_X81_Y10_N2
\A|ul1|Selector7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector7~2_combout\ = (!\A|ul1|Equal17~3_combout\ & (!\A|ul1|Equal21~2_combout\ & ((!\A|ul1|Equal7~3_combout\) # (!\A|ul1|Equal11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal17~3_combout\,
	datab => \A|ul1|Equal11~0_combout\,
	datac => \A|ul1|Equal7~3_combout\,
	datad => \A|ul1|Equal21~2_combout\,
	combout => \A|ul1|Selector7~2_combout\);

-- Location: LCCOMB_X81_Y10_N4
\A|ul1|Equal5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal5~3_combout\ = (!\A|ul1|Add0~93_combout\ & (!\A|ul1|Add0~92_combout\ & \A|ul1|Equal5~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|Add0~93_combout\,
	datac => \A|ul1|Add0~92_combout\,
	datad => \A|ul1|Equal5~2_combout\,
	combout => \A|ul1|Equal5~3_combout\);

-- Location: LCCOMB_X81_Y10_N0
\A|ul1|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal4~0_combout\ = (\A|ul1|Equal2~2_combout\ & (\A|ul1|Add0~94_combout\ & (\A|ul1|Equal2~1_combout\ & !\A|ul1|Add0~96_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal2~2_combout\,
	datab => \A|ul1|Add0~94_combout\,
	datac => \A|ul1|Equal2~1_combout\,
	datad => \A|ul1|Add0~96_combout\,
	combout => \A|ul1|Equal4~0_combout\);

-- Location: LCCOMB_X81_Y10_N10
\A|ul1|WideNor1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|WideNor1~4_combout\ = (\A|ul1|Selector17~0_combout\ & (\A|ul1|Selector7~2_combout\ & (!\A|ul1|Equal5~3_combout\ & !\A|ul1|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Selector17~0_combout\,
	datab => \A|ul1|Selector7~2_combout\,
	datac => \A|ul1|Equal5~3_combout\,
	datad => \A|ul1|Equal4~0_combout\,
	combout => \A|ul1|WideNor1~4_combout\);

-- Location: LCCOMB_X79_Y10_N22
\A|ul1|WideNor1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|WideNor1~5_combout\ = (!\A|ul1|Equal20~0_combout\ & (\A|ul1|WideNor1~3_combout\ & (!\A|ul1|Equal2~3_combout\ & \A|ul1|WideNor1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal20~0_combout\,
	datab => \A|ul1|WideNor1~3_combout\,
	datac => \A|ul1|Equal2~3_combout\,
	datad => \A|ul1|WideNor1~4_combout\,
	combout => \A|ul1|WideNor1~5_combout\);

-- Location: LCCOMB_X80_Y10_N22
\A|ul1|send_enable~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|send_enable~0_combout\ = (\A|ul1|send_enable~q\) # ((!\tsw[16]~input_o\ & ((\A|ul1|Equal19~1_combout\) # (!\A|ul1|WideNor1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal19~1_combout\,
	datab => \tsw[16]~input_o\,
	datac => \A|ul1|send_enable~q\,
	datad => \A|ul1|WideNor1~5_combout\,
	combout => \A|ul1|send_enable~0_combout\);

-- Location: LCCOMB_X80_Y10_N24
\A|ul1|send_enable~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|send_enable~1_combout\ = (\A|ul1|send_enable~0_combout\) # ((\tsw[16]~input_o\ & ((!\A|ul1|WideNor1~5_combout\) # (!\A|ul1|WideNor0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|WideNor0~3_combout\,
	datab => \tsw[16]~input_o\,
	datac => \A|ul1|send_enable~0_combout\,
	datad => \A|ul1|WideNor1~5_combout\,
	combout => \A|ul1|send_enable~1_combout\);

-- Location: LCCOMB_X79_Y13_N30
\A|ul1|send_enable~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|send_enable~2_combout\ = (\A|lc1|busy~q\) # (!\A|df1|q\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|busy~q\,
	datac => \A|df1|q\(21),
	combout => \A|ul1|send_enable~2_combout\);

-- Location: FF_X80_Y10_N25
\A|ul1|send_enable\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ul1|send_enable~1_combout\,
	clrn => \A|ul1|ALT_INV_send_enable~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|send_enable~q\);

-- Location: LCCOMB_X79_Y14_N18
\A|lc1|Selector35~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector35~3_combout\ = (\A|lc1|Selector34~2_combout\ & (\A|lc1|state.ready~q\ & ((\A|ul1|send_enable~q\)))) # (!\A|lc1|Selector34~2_combout\ & ((\A|lc1|state.send~q\) # ((\A|lc1|state.ready~q\ & \A|ul1|send_enable~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Selector34~2_combout\,
	datab => \A|lc1|state.ready~q\,
	datac => \A|lc1|state.send~q\,
	datad => \A|ul1|send_enable~q\,
	combout => \A|lc1|Selector35~3_combout\);

-- Location: FF_X79_Y14_N19
\A|lc1|state.send\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|lc1|Selector35~3_combout\,
	sclr => \ALT_INV_psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|state.send~q\);

-- Location: LCCOMB_X79_Y14_N28
\A|lc1|Selector34~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector34~4_combout\ = ((\A|lc1|state.send~q\ & \A|lc1|Selector34~2_combout\)) # (!\A|lc1|Selector34~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|lc1|state.send~q\,
	datac => \A|lc1|Selector34~3_combout\,
	datad => \A|lc1|Selector34~2_combout\,
	combout => \A|lc1|Selector34~4_combout\);

-- Location: FF_X79_Y14_N29
\A|lc1|state.ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|lc1|Selector34~4_combout\,
	sclr => \ALT_INV_psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|state.ready~q\);

-- Location: LCCOMB_X79_Y13_N20
\A|lc1|Selector44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector44~0_combout\ = (\A|lc1|state.init~q\ & (!\A|lc1|Add0~62_combout\ & ((!\A|ul1|send_enable~q\) # (!\A|lc1|state.ready~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|state.ready~q\,
	datab => \A|ul1|send_enable~q\,
	datac => \A|lc1|state.init~q\,
	datad => \A|lc1|Add0~62_combout\,
	combout => \A|lc1|Selector44~0_combout\);

-- Location: LCCOMB_X79_Y15_N10
\A|lc1|Selector45~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector45~1_combout\ = (\A|lc1|Selector44~0_combout\ & (!\A|lc1|LessThan2~2_combout\ & (!\A|lc1|LessThan1~2_combout\ & !\A|lc1|Add0~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Selector44~0_combout\,
	datab => \A|lc1|LessThan2~2_combout\,
	datac => \A|lc1|LessThan1~2_combout\,
	datad => \A|lc1|Add0~60_combout\,
	combout => \A|lc1|Selector45~1_combout\);

-- Location: LCCOMB_X79_Y13_N28
\A|lc1|Selector35~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector35~2_combout\ = (\A|lc1|state.ready~q\ & \A|ul1|send_enable~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|lc1|state.ready~q\,
	datad => \A|ul1|send_enable~q\,
	combout => \A|lc1|Selector35~2_combout\);

-- Location: LCCOMB_X80_Y9_N16
\A|ul1|Equal9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal9~0_combout\ = (!\A|ul1|Add0~92_combout\ & (\A|ul1|Equal17~2_combout\ & \A|ul1|Add0~93_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~92_combout\,
	datac => \A|ul1|Equal17~2_combout\,
	datad => \A|ul1|Add0~93_combout\,
	combout => \A|ul1|Equal9~0_combout\);

-- Location: LCCOMB_X79_Y7_N28
\rw~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rw~0_combout\ = (\tsw[16]~input_o\ & (!\C|mc1|rw_reg~q\)) # (!\tsw[16]~input_o\ & ((!\psw[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[16]~input_o\,
	datab => \C|mc1|rw_reg~q\,
	datad => \psw[2]~input_o\,
	combout => \rw~0_combout\);

-- Location: LCCOMB_X80_Y9_N10
\A|ul1|Selector17~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector17~3_combout\ = (\rw~0_combout\ & ((\A|ul1|Equal9~0_combout\) # ((\A|ul1|Equal5~2_combout\ & \A|ul1|Equal11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal5~2_combout\,
	datab => \A|ul1|Equal11~0_combout\,
	datac => \A|ul1|Equal9~0_combout\,
	datad => \rw~0_combout\,
	combout => \A|ul1|Selector17~3_combout\);

-- Location: LCCOMB_X80_Y7_N24
\A|ul1|data_write~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|data_write~18_combout\ = \data_write[0]~0_combout\ $ (((\data_write[3]~3_combout\ & ((\data_write[2]~2_combout\) # (\data_write[1]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_write[0]~0_combout\,
	datab => \data_write[3]~3_combout\,
	datac => \data_write[2]~2_combout\,
	datad => \data_write[1]~1_combout\,
	combout => \A|ul1|data_write~18_combout\);

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

-- Location: LCCOMB_X72_Y11_N8
\addr[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \addr[2]~2_combout\ = (\tsw[16]~input_o\ & (\C|mc1|addr_reg\(2))) # (!\tsw[16]~input_o\ & ((\tsw[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C|mc1|addr_reg\(2),
	datab => \tsw[2]~input_o\,
	datac => \tsw[16]~input_o\,
	combout => \addr[2]~2_combout\);

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

-- Location: LCCOMB_X72_Y11_N10
\addr[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \addr[3]~3_combout\ = (\tsw[16]~input_o\ & (\C|mc1|addr_reg\(3))) # (!\tsw[16]~input_o\ & ((\tsw[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C|mc1|addr_reg\(3),
	datac => \tsw[16]~input_o\,
	datad => \tsw[3]~input_o\,
	combout => \addr[3]~3_combout\);

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

-- Location: LCCOMB_X72_Y11_N14
\addr[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \addr[1]~1_combout\ = (\tsw[16]~input_o\ & (\C|mc1|addr_reg\(1))) # (!\tsw[16]~input_o\ & ((\tsw[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C|mc1|addr_reg\(1),
	datab => \tsw[16]~input_o\,
	datac => \tsw[1]~input_o\,
	combout => \addr[1]~1_combout\);

-- Location: LCCOMB_X77_Y7_N28
\A|ul1|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|LessThan2~0_combout\ = (\addr[3]~3_combout\ & ((\addr[2]~2_combout\) # (\addr[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[2]~2_combout\,
	datac => \addr[3]~3_combout\,
	datad => \addr[1]~1_combout\,
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

-- Location: LCCOMB_X76_Y11_N10
\addr[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \addr[0]~0_combout\ = (\tsw[16]~input_o\ & (\C|mc1|addr_reg\(0))) # (!\tsw[16]~input_o\ & ((\tsw[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C|mc1|addr_reg\(0),
	datac => \tsw[16]~input_o\,
	datad => \tsw[0]~input_o\,
	combout => \addr[0]~0_combout\);

-- Location: LCCOMB_X77_Y11_N18
\A|ul1|LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|LessThan3~0_combout\ = (\tsw[16]~input_o\ & (((\C|mc1|data_b_reg~q\)))) # (!\tsw[16]~input_o\ & ((\tsw[13]~input_o\) # ((\tsw[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[13]~input_o\,
	datab => \tsw[14]~input_o\,
	datac => \C|mc1|data_b_reg~q\,
	datad => \tsw[16]~input_o\,
	combout => \A|ul1|LessThan3~0_combout\);

-- Location: LCCOMB_X77_Y11_N8
\A|ul1|LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|LessThan3~1_combout\ = (\A|ul1|LessThan3~0_combout\ & ((\tsw[16]~input_o\ & (\C|mc1|data_b_reg~q\)) # (!\tsw[16]~input_o\ & ((\tsw[15]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[16]~input_o\,
	datab => \C|mc1|data_b_reg~q\,
	datac => \A|ul1|LessThan3~0_combout\,
	datad => \tsw[15]~input_o\,
	combout => \A|ul1|LessThan3~1_combout\);

-- Location: LCCOMB_X81_Y9_N22
\A|ul1|Equal11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal11~1_combout\ = (\A|ul1|Equal11~0_combout\ & (!\A|ul1|Add0~96_combout\ & (\A|ul1|Equal35~0_combout\ & \A|ul1|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal11~0_combout\,
	datab => \A|ul1|Add0~96_combout\,
	datac => \A|ul1|Equal35~0_combout\,
	datad => \A|ul1|Equal2~0_combout\,
	combout => \A|ul1|Equal11~1_combout\);

-- Location: LCCOMB_X81_Y7_N22
\A|ul1|Selector17~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector17~4_combout\ = (\A|ul1|Equal11~1_combout\) # ((\A|ul1|Equal33~0_combout\ & (\A|ul1|LessThan3~1_combout\ $ (\data_write[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|LessThan3~1_combout\,
	datab => \data_write[4]~4_combout\,
	datac => \A|ul1|Equal11~1_combout\,
	datad => \A|ul1|Equal33~0_combout\,
	combout => \A|ul1|Selector17~4_combout\);

-- Location: LCCOMB_X80_Y7_N30
\A|ul1|Selector17~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector17~5_combout\ = (\A|ul1|Selector17~4_combout\) # ((\A|ul1|Equal26~0_combout\ & (\A|ul1|LessThan2~0_combout\ $ (\addr[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|LessThan2~0_combout\,
	datab => \addr[0]~0_combout\,
	datac => \A|ul1|Equal26~0_combout\,
	datad => \A|ul1|Selector17~4_combout\,
	combout => \A|ul1|Selector17~5_combout\);

-- Location: LCCOMB_X80_Y7_N18
\A|ul1|Selector17~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector17~6_combout\ = ((\A|ul1|Selector17~5_combout\) # ((\A|ul1|data_write~18_combout\ & \A|ul1|Equal34~0_combout\))) # (!\A|ul1|Selector17~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Selector17~0_combout\,
	datab => \A|ul1|data_write~18_combout\,
	datac => \A|ul1|Selector17~5_combout\,
	datad => \A|ul1|Equal34~0_combout\,
	combout => \A|ul1|Selector17~6_combout\);

-- Location: LCCOMB_X80_Y9_N4
\A|ul1|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector11~0_combout\ = (!\A|ul1|Equal20~0_combout\ & (((!\A|ul1|Equal5~2_combout\ & !\A|ul1|Equal7~3_combout\)) # (!\A|ul1|Equal27~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal5~2_combout\,
	datab => \A|ul1|Equal27~0_combout\,
	datac => \A|ul1|Equal20~0_combout\,
	datad => \A|ul1|Equal7~3_combout\,
	combout => \A|ul1|Selector11~0_combout\);

-- Location: LCCOMB_X81_Y10_N22
\A|ul1|Equal25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal25~0_combout\ = (\A|ul1|Add0~93_combout\ & (\A|ul1|Add0~92_combout\ & \A|ul1|Equal17~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|Add0~93_combout\,
	datac => \A|ul1|Add0~92_combout\,
	datad => \A|ul1|Equal17~2_combout\,
	combout => \A|ul1|Equal25~0_combout\);

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

-- Location: LCCOMB_X76_Y11_N12
\addr[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \addr[5]~5_combout\ = (\tsw[16]~input_o\ & (\C|mc1|addr_reg\(5))) # (!\tsw[16]~input_o\ & ((\tsw[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C|mc1|addr_reg\(5),
	datac => \tsw[16]~input_o\,
	datad => \tsw[5]~input_o\,
	combout => \addr[5]~5_combout\);

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

-- Location: LCCOMB_X77_Y11_N20
\addr[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \addr[6]~6_combout\ = (\tsw[16]~input_o\ & ((\C|mc1|addr_reg\(6)))) # (!\tsw[16]~input_o\ & (\tsw[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tsw[6]~input_o\,
	datac => \C|mc1|addr_reg\(6),
	datad => \tsw[16]~input_o\,
	combout => \addr[6]~6_combout\);

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

-- Location: LCCOMB_X72_Y11_N0
\addr[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \addr[4]~4_combout\ = (\tsw[16]~input_o\ & ((\C|mc1|addr_reg\(4)))) # (!\tsw[16]~input_o\ & (\tsw[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[4]~input_o\,
	datab => \tsw[16]~input_o\,
	datac => \C|mc1|addr_reg\(4),
	combout => \addr[4]~4_combout\);

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

-- Location: LCCOMB_X82_Y11_N4
\addr[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \addr[7]~7_combout\ = (\tsw[16]~input_o\ & (\C|mc1|addr_reg\(7))) # (!\tsw[16]~input_o\ & ((\tsw[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tsw[16]~input_o\,
	datac => \C|mc1|addr_reg\(7),
	datad => \tsw[7]~input_o\,
	combout => \addr[7]~7_combout\);

-- Location: LCCOMB_X76_Y7_N22
\A|ul1|data_write~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|data_write~17_combout\ = \addr[4]~4_combout\ $ (((\addr[7]~7_combout\ & ((\addr[5]~5_combout\) # (\addr[6]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[5]~5_combout\,
	datab => \addr[6]~6_combout\,
	datac => \addr[4]~4_combout\,
	datad => \addr[7]~7_combout\,
	combout => \A|ul1|data_write~17_combout\);

-- Location: LCCOMB_X80_Y9_N22
\A|ul1|Selector17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector17~2_combout\ = (\rw~0_combout\ & (((\A|ul1|Equal25~0_combout\ & \A|ul1|data_write~17_combout\)))) # (!\rw~0_combout\ & ((\A|ul1|Equal12~0_combout\) # ((\A|ul1|Equal25~0_combout\ & \A|ul1|data_write~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rw~0_combout\,
	datab => \A|ul1|Equal12~0_combout\,
	datac => \A|ul1|Equal25~0_combout\,
	datad => \A|ul1|data_write~17_combout\,
	combout => \A|ul1|Selector17~2_combout\);

-- Location: LCCOMB_X80_Y9_N14
\A|ul1|Selector17~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector17~7_combout\ = (\A|ul1|Selector17~3_combout\) # ((\A|ul1|Selector17~6_combout\) # ((\A|ul1|Selector17~2_combout\) # (!\A|ul1|Selector11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Selector17~3_combout\,
	datab => \A|ul1|Selector17~6_combout\,
	datac => \A|ul1|Selector11~0_combout\,
	datad => \A|ul1|Selector17~2_combout\,
	combout => \A|ul1|Selector17~7_combout\);

-- Location: LCCOMB_X74_Y12_N16
\C|mc1|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|mc1|Selector12~0_combout\ = (\C|mc1|state.finished~q\) # ((!\C|mc1|state.idle~q\ & \C|mc1|fin_reg~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C|mc1|state.finished~q\,
	datab => \C|mc1|state.idle~q\,
	datac => \C|mc1|fin_reg~q\,
	combout => \C|mc1|Selector12~0_combout\);

-- Location: FF_X74_Y12_N17
\C|mc1|fin_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \C|mc1|Selector12~0_combout\,
	clrn => \C|ALT_INV_comb~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C|mc1|fin_reg~q\);

-- Location: LCCOMB_X82_Y10_N2
\A|ul1|Selector8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector8~3_combout\ = (\C|mc1|fin_reg~q\ & \A|ul1|Equal22~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C|mc1|fin_reg~q\,
	datad => \A|ul1|Equal22~0_combout\,
	combout => \A|ul1|Selector8~3_combout\);

-- Location: LCCOMB_X82_Y10_N28
\A|ul1|Selector8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector8~4_combout\ = (\A|ul1|Selector8~3_combout\) # ((\A|ul1|Equal3~2_combout\) # ((\A|ul1|Equal11~0_combout\ & \A|ul1|Equal8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal11~0_combout\,
	datab => \A|ul1|Selector8~3_combout\,
	datac => \A|ul1|Equal3~2_combout\,
	datad => \A|ul1|Equal8~0_combout\,
	combout => \A|ul1|Selector8~4_combout\);

-- Location: LCCOMB_X82_Y10_N14
\A|ul1|Equal24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal24~0_combout\ = (\A|ul1|Add0~96_combout\ & (\A|ul1|Equal19~0_combout\ & (\A|ul1|Add0~94_combout\ & \A|ul1|Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~96_combout\,
	datab => \A|ul1|Equal19~0_combout\,
	datac => \A|ul1|Add0~94_combout\,
	datad => \A|ul1|Equal2~1_combout\,
	combout => \A|ul1|Equal24~0_combout\);

-- Location: LCCOMB_X83_Y10_N24
\A|ul1|Selector8~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector8~8_combout\ = (!\A|ul1|Equal26~0_combout\ & (((!\A|ul1|Equal3~3_combout\) # (!\A|ul1|Add0~92_combout\)) # (!\A|ul1|Add0~93_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal26~0_combout\,
	datab => \A|ul1|Add0~93_combout\,
	datac => \A|ul1|Add0~92_combout\,
	datad => \A|ul1|Equal3~3_combout\,
	combout => \A|ul1|Selector8~8_combout\);

-- Location: LCCOMB_X82_Y10_N8
\A|ul1|Selector8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector8~5_combout\ = (\A|ul1|Equal28~0_combout\) # ((\A|ul1|Equal25~0_combout\) # ((\A|ul1|Equal24~0_combout\) # (!\A|ul1|Selector8~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal28~0_combout\,
	datab => \A|ul1|Equal25~0_combout\,
	datac => \A|ul1|Equal24~0_combout\,
	datad => \A|ul1|Selector8~8_combout\,
	combout => \A|ul1|Selector8~5_combout\);

-- Location: IOIBUF_X0_Y16_N15
\dio_sram[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dio_sram(4),
	o => \dio_sram[4]~input_o\);

-- Location: LCCOMB_X59_Y3_N28
\B|comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|comb~0_combout\ = LCELL((!\tsw[17]~input_o\ & GLOBAL(\pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tsw[17]~input_o\,
	datad => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	combout => \B|comb~0_combout\);

-- Location: CLKCTRL_G15
\B|comb~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \B|comb~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \B|comb~0clkctrl_outclk\);

-- Location: M9K_X78_Y11_N0
\B|itnram|altsyncram_component|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "sub_module_ram:B|ram1:itnram|altsyncram:altsyncram_component|altsyncram_e0q3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 255,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \rw~0_combout\,
	portare => VCC,
	clk0 => \B|comb~0clkctrl_outclk\,
	portadatain => \B|itnram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \B|itnram|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \B|itnram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X80_Y11_N26
\B|data_display[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|data_display[4]~4_combout\ = (\tsw[17]~input_o\ & (\dio_sram[4]~input_o\)) # (!\tsw[17]~input_o\ & ((\B|itnram|altsyncram_component|auto_generated|q_a\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[17]~input_o\,
	datac => \dio_sram[4]~input_o\,
	datad => \B|itnram|altsyncram_component|auto_generated|q_a\(4),
	combout => \B|data_display[4]~4_combout\);

-- Location: IOIBUF_X0_Y22_N22
\dio_sram[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dio_sram(6),
	o => \dio_sram[6]~input_o\);

-- Location: LCCOMB_X80_Y11_N2
\B|data_display[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|data_display[6]~6_combout\ = (\tsw[17]~input_o\ & (\dio_sram[6]~input_o\)) # (!\tsw[17]~input_o\ & ((\B|itnram|altsyncram_component|auto_generated|q_a\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[17]~input_o\,
	datac => \dio_sram[6]~input_o\,
	datad => \B|itnram|altsyncram_component|auto_generated|q_a\(6),
	combout => \B|data_display[6]~6_combout\);

-- Location: IOIBUF_X0_Y17_N15
\dio_sram[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dio_sram(5),
	o => \dio_sram[5]~input_o\);

-- Location: LCCOMB_X80_Y11_N4
\B|data_display[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|data_display[5]~5_combout\ = (\tsw[17]~input_o\ & (\dio_sram[5]~input_o\)) # (!\tsw[17]~input_o\ & ((\B|itnram|altsyncram_component|auto_generated|q_a\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[17]~input_o\,
	datac => \dio_sram[5]~input_o\,
	datad => \B|itnram|altsyncram_component|auto_generated|q_a\(5),
	combout => \B|data_display[5]~5_combout\);

-- Location: IOIBUF_X0_Y21_N15
\dio_sram[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dio_sram(7),
	o => \dio_sram[7]~input_o\);

-- Location: LCCOMB_X80_Y11_N20
\B|data_display[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|data_display[7]~7_combout\ = (\tsw[17]~input_o\ & (\dio_sram[7]~input_o\)) # (!\tsw[17]~input_o\ & ((\B|itnram|altsyncram_component|auto_generated|q_a\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dio_sram[7]~input_o\,
	datac => \B|itnram|altsyncram_component|auto_generated|q_a\(7),
	datad => \tsw[17]~input_o\,
	combout => \B|data_display[7]~7_combout\);

-- Location: LCCOMB_X80_Y11_N12
\C|oa1|fail_buf~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|oa1|fail_buf~1_combout\ = (\B|data_display[4]~4_combout\ & (\B|data_display[6]~6_combout\ & (\B|data_display[5]~5_combout\ & \B|data_display[7]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B|data_display[4]~4_combout\,
	datab => \B|data_display[6]~6_combout\,
	datac => \B|data_display[5]~5_combout\,
	datad => \B|data_display[7]~7_combout\,
	combout => \C|oa1|fail_buf~1_combout\);

-- Location: IOIBUF_X3_Y0_N22
\dio_sram[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dio_sram(2),
	o => \dio_sram[2]~input_o\);

-- Location: LCCOMB_X80_Y11_N16
\B|data_display[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|data_display[2]~2_combout\ = (\tsw[17]~input_o\ & (\dio_sram[2]~input_o\)) # (!\tsw[17]~input_o\ & ((\B|itnram|altsyncram_component|auto_generated|q_a\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[17]~input_o\,
	datac => \dio_sram[2]~input_o\,
	datad => \B|itnram|altsyncram_component|auto_generated|q_a\(2),
	combout => \B|data_display[2]~2_combout\);

-- Location: IOIBUF_X0_Y7_N8
\dio_sram[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dio_sram(3),
	o => \dio_sram[3]~input_o\);

-- Location: LCCOMB_X80_Y11_N14
\B|data_display[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|data_display[3]~3_combout\ = (\tsw[17]~input_o\ & (\dio_sram[3]~input_o\)) # (!\tsw[17]~input_o\ & ((\B|itnram|altsyncram_component|auto_generated|q_a\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dio_sram[3]~input_o\,
	datac => \B|itnram|altsyncram_component|auto_generated|q_a\(3),
	datad => \tsw[17]~input_o\,
	combout => \B|data_display[3]~3_combout\);

-- Location: FF_X74_Y12_N21
\C|mc1|ready_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \C|mc1|Selector11~1_combout\,
	clrn => \C|ALT_INV_comb~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C|mc1|ready_reg~q\);

-- Location: LCCOMB_X77_Y11_N24
\C|oa1|current_state~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|oa1|current_state~0_combout\ = \C|oa1|current_state~q\ $ (\C|mc1|ready_reg~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C|oa1|current_state~q\,
	datad => \C|mc1|ready_reg~q\,
	combout => \C|oa1|current_state~0_combout\);

-- Location: FF_X77_Y11_N25
\C|oa1|current_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \C|oa1|current_state~0_combout\,
	clrn => \C|ALT_INV_comb~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C|oa1|current_state~q\);

-- Location: IOIBUF_X3_Y0_N15
\dio_sram[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dio_sram(0),
	o => \dio_sram[0]~input_o\);

-- Location: LCCOMB_X79_Y11_N16
\B|data_display[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|data_display[0]~0_combout\ = (\tsw[17]~input_o\ & (\dio_sram[0]~input_o\)) # (!\tsw[17]~input_o\ & ((\B|itnram|altsyncram_component|auto_generated|q_a\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tsw[17]~input_o\,
	datac => \dio_sram[0]~input_o\,
	datad => \B|itnram|altsyncram_component|auto_generated|q_a\(0),
	combout => \B|data_display[0]~0_combout\);

-- Location: IOIBUF_X7_Y0_N22
\dio_sram[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dio_sram(1),
	o => \dio_sram[1]~input_o\);

-- Location: LCCOMB_X79_Y11_N2
\B|data_display[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|data_display[1]~1_combout\ = (\tsw[17]~input_o\ & (\dio_sram[1]~input_o\)) # (!\tsw[17]~input_o\ & ((\B|itnram|altsyncram_component|auto_generated|q_a\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dio_sram[1]~input_o\,
	datac => \tsw[17]~input_o\,
	datad => \B|itnram|altsyncram_component|auto_generated|q_a\(1),
	combout => \B|data_display[1]~1_combout\);

-- Location: LCCOMB_X79_Y11_N14
\C|oa1|fail_buf~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|oa1|fail_buf~0_combout\ = (\C|oa1|current_state~q\ & (\B|data_display[0]~0_combout\ & \B|data_display[1]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C|oa1|current_state~q\,
	datab => \B|data_display[0]~0_combout\,
	datad => \B|data_display[1]~1_combout\,
	combout => \C|oa1|fail_buf~0_combout\);

-- Location: LCCOMB_X80_Y11_N10
\C|oa1|fail_buf~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|oa1|fail_buf~2_combout\ = (\C|oa1|fail_buf~1_combout\ & (\B|data_display[2]~2_combout\ & (\B|data_display[3]~3_combout\ & \C|oa1|fail_buf~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C|oa1|fail_buf~1_combout\,
	datab => \B|data_display[2]~2_combout\,
	datac => \B|data_display[3]~3_combout\,
	datad => \C|oa1|fail_buf~0_combout\,
	combout => \C|oa1|fail_buf~2_combout\);

-- Location: IOIBUF_X11_Y0_N22
\dio_sram[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dio_sram(10),
	o => \dio_sram[10]~input_o\);

-- Location: LCCOMB_X81_Y11_N8
\B|data_display[10]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|data_display[10]~10_combout\ = (\tsw[17]~input_o\ & ((\dio_sram[10]~input_o\))) # (!\tsw[17]~input_o\ & (\B|itnram|altsyncram_component|auto_generated|q_a\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tsw[17]~input_o\,
	datac => \B|itnram|altsyncram_component|auto_generated|q_a\(10),
	datad => \dio_sram[10]~input_o\,
	combout => \B|data_display[10]~10_combout\);

-- Location: IOIBUF_X7_Y0_N15
\dio_sram[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dio_sram(11),
	o => \dio_sram[11]~input_o\);

-- Location: LCCOMB_X81_Y11_N18
\B|data_display[11]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|data_display[11]~11_combout\ = (\tsw[17]~input_o\ & (\dio_sram[11]~input_o\)) # (!\tsw[17]~input_o\ & ((\B|itnram|altsyncram_component|auto_generated|q_a\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tsw[17]~input_o\,
	datac => \dio_sram[11]~input_o\,
	datad => \B|itnram|altsyncram_component|auto_generated|q_a\(11),
	combout => \B|data_display[11]~11_combout\);

-- Location: IOIBUF_X20_Y0_N8
\dio_sram[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dio_sram(8),
	o => \dio_sram[8]~input_o\);

-- Location: IOIBUF_X11_Y0_N15
\dio_sram[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dio_sram(9),
	o => \dio_sram[9]~input_o\);

-- Location: LCCOMB_X81_Y11_N22
\B|data_display[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|data_display[9]~9_combout\ = (\tsw[17]~input_o\ & (\dio_sram[9]~input_o\)) # (!\tsw[17]~input_o\ & ((\B|itnram|altsyncram_component|auto_generated|q_a\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dio_sram[9]~input_o\,
	datab => \tsw[17]~input_o\,
	datac => \B|itnram|altsyncram_component|auto_generated|q_a\(9),
	combout => \B|data_display[9]~9_combout\);

-- Location: LCCOMB_X80_Y11_N8
\C|oa1|fail_buf~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|oa1|fail_buf~3_combout\ = (\B|data_display[9]~9_combout\ & ((\tsw[17]~input_o\ & (\dio_sram[8]~input_o\)) # (!\tsw[17]~input_o\ & ((\B|itnram|altsyncram_component|auto_generated|q_a\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[17]~input_o\,
	datab => \dio_sram[8]~input_o\,
	datac => \B|itnram|altsyncram_component|auto_generated|q_a\(8),
	datad => \B|data_display[9]~9_combout\,
	combout => \C|oa1|fail_buf~3_combout\);

-- Location: IOIBUF_X9_Y0_N15
\dio_sram[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dio_sram(12),
	o => \dio_sram[12]~input_o\);

-- Location: LCCOMB_X79_Y11_N12
\B|data_display[12]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|data_display[12]~12_combout\ = (\tsw[17]~input_o\ & (\dio_sram[12]~input_o\)) # (!\tsw[17]~input_o\ & ((\B|itnram|altsyncram_component|auto_generated|q_a\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tsw[17]~input_o\,
	datac => \dio_sram[12]~input_o\,
	datad => \B|itnram|altsyncram_component|auto_generated|q_a\(12),
	combout => \B|data_display[12]~12_combout\);

-- Location: IOIBUF_X9_Y0_N22
\dio_sram[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dio_sram(13),
	o => \dio_sram[13]~input_o\);

-- Location: LCCOMB_X79_Y11_N18
\B|data_display[13]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|data_display[13]~13_combout\ = (\tsw[17]~input_o\ & (\dio_sram[13]~input_o\)) # (!\tsw[17]~input_o\ & ((\B|itnram|altsyncram_component|auto_generated|q_a\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dio_sram[13]~input_o\,
	datac => \tsw[17]~input_o\,
	datad => \B|itnram|altsyncram_component|auto_generated|q_a\(13),
	combout => \B|data_display[13]~13_combout\);

-- Location: IOIBUF_X5_Y0_N8
\dio_sram[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dio_sram(15),
	o => \dio_sram[15]~input_o\);

-- Location: LCCOMB_X79_Y11_N30
\B|data_display[15]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|data_display[15]~15_combout\ = (\tsw[17]~input_o\ & ((\dio_sram[15]~input_o\))) # (!\tsw[17]~input_o\ & (\B|itnram|altsyncram_component|auto_generated|q_a\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tsw[17]~input_o\,
	datac => \B|itnram|altsyncram_component|auto_generated|q_a\(15),
	datad => \dio_sram[15]~input_o\,
	combout => \B|data_display[15]~15_combout\);

-- Location: IOIBUF_X1_Y0_N1
\dio_sram[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dio_sram(14),
	o => \dio_sram[14]~input_o\);

-- Location: LCCOMB_X79_Y11_N20
\B|data_display[14]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|data_display[14]~14_combout\ = (\tsw[17]~input_o\ & ((\dio_sram[14]~input_o\))) # (!\tsw[17]~input_o\ & (\B|itnram|altsyncram_component|auto_generated|q_a\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tsw[17]~input_o\,
	datac => \B|itnram|altsyncram_component|auto_generated|q_a\(14),
	datad => \dio_sram[14]~input_o\,
	combout => \B|data_display[14]~14_combout\);

-- Location: LCCOMB_X79_Y11_N28
\C|oa1|fail_buf~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|oa1|fail_buf~4_combout\ = (\B|data_display[12]~12_combout\ & (\B|data_display[13]~13_combout\ & (\B|data_display[15]~15_combout\ & \B|data_display[14]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B|data_display[12]~12_combout\,
	datab => \B|data_display[13]~13_combout\,
	datac => \B|data_display[15]~15_combout\,
	datad => \B|data_display[14]~14_combout\,
	combout => \C|oa1|fail_buf~4_combout\);

-- Location: LCCOMB_X80_Y11_N18
\C|oa1|fail_buf~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|oa1|fail_buf~5_combout\ = (\B|data_display[10]~10_combout\ & (\B|data_display[11]~11_combout\ & (\C|oa1|fail_buf~3_combout\ & \C|oa1|fail_buf~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B|data_display[10]~10_combout\,
	datab => \B|data_display[11]~11_combout\,
	datac => \C|oa1|fail_buf~3_combout\,
	datad => \C|oa1|fail_buf~4_combout\,
	combout => \C|oa1|fail_buf~5_combout\);

-- Location: LCCOMB_X79_Y11_N6
\C|oa1|fail_buf~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|oa1|fail_buf~10_combout\ = (!\B|data_display[12]~12_combout\ & (!\B|data_display[13]~13_combout\ & (!\B|data_display[15]~15_combout\ & !\B|data_display[14]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B|data_display[12]~12_combout\,
	datab => \B|data_display[13]~13_combout\,
	datac => \B|data_display[15]~15_combout\,
	datad => \B|data_display[14]~14_combout\,
	combout => \C|oa1|fail_buf~10_combout\);

-- Location: LCCOMB_X81_Y11_N24
\B|data_display[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|data_display[8]~8_combout\ = (\tsw[17]~input_o\ & (\dio_sram[8]~input_o\)) # (!\tsw[17]~input_o\ & ((\B|itnram|altsyncram_component|auto_generated|q_a\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tsw[17]~input_o\,
	datac => \dio_sram[8]~input_o\,
	datad => \B|itnram|altsyncram_component|auto_generated|q_a\(8),
	combout => \B|data_display[8]~8_combout\);

-- Location: LCCOMB_X81_Y11_N30
\C|oa1|fail_buf~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|oa1|fail_buf~9_combout\ = (!\B|data_display[9]~9_combout\ & (!\B|data_display[11]~11_combout\ & (!\B|data_display[10]~10_combout\ & !\B|data_display[8]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B|data_display[9]~9_combout\,
	datab => \B|data_display[11]~11_combout\,
	datac => \B|data_display[10]~10_combout\,
	datad => \B|data_display[8]~8_combout\,
	combout => \C|oa1|fail_buf~9_combout\);

-- Location: LCCOMB_X80_Y11_N30
\C|oa1|fail_buf~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|oa1|fail_buf~7_combout\ = (!\B|data_display[4]~4_combout\ & (!\B|data_display[7]~7_combout\ & (!\B|data_display[5]~5_combout\ & !\B|data_display[6]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B|data_display[4]~4_combout\,
	datab => \B|data_display[7]~7_combout\,
	datac => \B|data_display[5]~5_combout\,
	datad => \B|data_display[6]~6_combout\,
	combout => \C|oa1|fail_buf~7_combout\);

-- Location: LCCOMB_X80_Y11_N24
\C|oa1|fail_buf~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|oa1|fail_buf~6_combout\ = (!\C|oa1|current_state~q\ & (!\B|data_display[0]~0_combout\ & !\B|data_display[1]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C|oa1|current_state~q\,
	datac => \B|data_display[0]~0_combout\,
	datad => \B|data_display[1]~1_combout\,
	combout => \C|oa1|fail_buf~6_combout\);

-- Location: LCCOMB_X80_Y11_N28
\C|oa1|fail_buf~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|oa1|fail_buf~8_combout\ = (\C|oa1|fail_buf~7_combout\ & (!\B|data_display[2]~2_combout\ & (!\B|data_display[3]~3_combout\ & \C|oa1|fail_buf~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C|oa1|fail_buf~7_combout\,
	datab => \B|data_display[2]~2_combout\,
	datac => \B|data_display[3]~3_combout\,
	datad => \C|oa1|fail_buf~6_combout\,
	combout => \C|oa1|fail_buf~8_combout\);

-- Location: LCCOMB_X80_Y11_N6
\C|oa1|fail_buf~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|oa1|fail_buf~11_combout\ = ((\C|oa1|fail_buf~10_combout\ & (\C|oa1|fail_buf~9_combout\ & \C|oa1|fail_buf~8_combout\))) # (!\C|mc1|rw_reg~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C|mc1|rw_reg~q\,
	datab => \C|oa1|fail_buf~10_combout\,
	datac => \C|oa1|fail_buf~9_combout\,
	datad => \C|oa1|fail_buf~8_combout\,
	combout => \C|oa1|fail_buf~11_combout\);

-- Location: LCCOMB_X80_Y11_N22
\C|oa1|fail_reg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|oa1|fail_reg~0_combout\ = (\C|oa1|fail_reg~q\) # ((!\C|oa1|fail_buf~11_combout\ & ((!\C|oa1|fail_buf~5_combout\) # (!\C|oa1|fail_buf~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C|oa1|fail_buf~2_combout\,
	datab => \C|oa1|fail_buf~5_combout\,
	datac => \C|oa1|fail_reg~q\,
	datad => \C|oa1|fail_buf~11_combout\,
	combout => \C|oa1|fail_reg~0_combout\);

-- Location: FF_X80_Y11_N23
\C|oa1|fail_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \C|oa1|fail_reg~0_combout\,
	clrn => \C|ALT_INV_comb~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C|oa1|fail_reg~q\);

-- Location: LCCOMB_X84_Y10_N24
\A|ul1|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|process_0~0_combout\ = (\C|mc1|fin_reg~q\ & !\C|oa1|fail_reg~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C|mc1|fin_reg~q\,
	datac => \C|oa1|fail_reg~q\,
	combout => \A|ul1|process_0~0_combout\);

-- Location: LCCOMB_X82_Y10_N18
\A|ul1|data_write~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|data_write~16_combout\ = (\C|oa1|fail_reg~q\ & \C|mc1|fin_reg~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C|oa1|fail_reg~q\,
	datac => \C|mc1|fin_reg~q\,
	combout => \A|ul1|data_write~16_combout\);

-- Location: LCCOMB_X82_Y9_N30
\A|ul1|Equal23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal23~0_combout\ = (\A|ul1|Add0~96_combout\ & (\A|ul1|Equal35~0_combout\ & (\A|ul1|Equal19~0_combout\ & \A|ul1|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~96_combout\,
	datab => \A|ul1|Equal35~0_combout\,
	datac => \A|ul1|Equal19~0_combout\,
	datad => \A|ul1|Equal2~0_combout\,
	combout => \A|ul1|Equal23~0_combout\);

-- Location: LCCOMB_X82_Y10_N24
\A|ul1|Selector8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector8~2_combout\ = (\A|ul1|Equal17~3_combout\) # ((\A|ul1|Equal23~0_combout\) # ((\A|ul1|Equal21~2_combout\ & !\A|ul1|data_write~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal17~3_combout\,
	datab => \A|ul1|Equal21~2_combout\,
	datac => \A|ul1|data_write~16_combout\,
	datad => \A|ul1|Equal23~0_combout\,
	combout => \A|ul1|Selector8~2_combout\);

-- Location: LCCOMB_X82_Y10_N22
\A|ul1|Selector8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector8~6_combout\ = (\A|ul1|Selector8~4_combout\) # ((\A|ul1|Selector8~2_combout\) # ((\A|ul1|Selector8~5_combout\ & \A|ul1|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Selector8~4_combout\,
	datab => \A|ul1|Selector8~5_combout\,
	datac => \A|ul1|process_0~0_combout\,
	datad => \A|ul1|Selector8~2_combout\,
	combout => \A|ul1|Selector8~6_combout\);

-- Location: LCCOMB_X79_Y10_N18
\A|ul1|Selector8~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector8~7_combout\ = (\A|ul1|Selector8~6_combout\) # ((\A|ul1|data_write\(0) & (\A|ul1|WideNor1~5_combout\ & \A|ul1|WideNor0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Selector8~6_combout\,
	datab => \A|ul1|data_write\(0),
	datac => \A|ul1|WideNor1~5_combout\,
	datad => \A|ul1|WideNor0~3_combout\,
	combout => \A|ul1|Selector8~7_combout\);

-- Location: LCCOMB_X79_Y10_N12
\A|ul1|Selector17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector17~1_combout\ = (\A|ul1|WideNor1~5_combout\ & (\A|ul1|data_write\(0) & !\A|ul1|Equal19~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|WideNor1~5_combout\,
	datac => \A|ul1|data_write\(0),
	datad => \A|ul1|Equal19~1_combout\,
	combout => \A|ul1|Selector17~1_combout\);

-- Location: LCCOMB_X79_Y10_N0
\A|ul1|data_write~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|data_write~19_combout\ = (\tsw[16]~input_o\ & (((\A|ul1|Selector8~7_combout\)))) # (!\tsw[16]~input_o\ & ((\A|ul1|Selector17~7_combout\) # ((\A|ul1|Selector17~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[16]~input_o\,
	datab => \A|ul1|Selector17~7_combout\,
	datac => \A|ul1|Selector8~7_combout\,
	datad => \A|ul1|Selector17~1_combout\,
	combout => \A|ul1|data_write~19_combout\);

-- Location: FF_X79_Y10_N13
\A|ul1|data_write[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \A|ul1|data_write~19_combout\,
	clrn => \A|df1|q\(21),
	sload => VCC,
	ena => \A|ul1|data_write[9]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|data_write\(0));

-- Location: LCCOMB_X79_Y15_N24
\A|lc1|Selector45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector45~0_combout\ = (\A|lc1|LessThan3~2_combout\) # ((\A|lc1|LessThan5~9_combout\ & ((\A|lc1|Add0~60_combout\) # (!\A|lc1|LessThan4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|LessThan3~2_combout\,
	datab => \A|lc1|Add0~60_combout\,
	datac => \A|lc1|LessThan4~2_combout\,
	datad => \A|lc1|LessThan5~9_combout\,
	combout => \A|lc1|Selector45~0_combout\);

-- Location: LCCOMB_X79_Y15_N6
\A|lc1|Selector45~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector45~2_combout\ = (\A|lc1|Selector45~1_combout\ & ((\A|lc1|Selector45~0_combout\) # ((\A|lc1|Selector35~2_combout\ & \A|ul1|data_write\(0))))) # (!\A|lc1|Selector45~1_combout\ & (\A|lc1|Selector35~2_combout\ & (\A|ul1|data_write\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Selector45~1_combout\,
	datab => \A|lc1|Selector35~2_combout\,
	datac => \A|ul1|data_write\(0),
	datad => \A|lc1|Selector45~0_combout\,
	combout => \A|lc1|Selector45~2_combout\);

-- Location: LCCOMB_X79_Y14_N10
\A|lc1|state~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|state~6_combout\ = (!\A|lc1|state.power~q\ & \A|lc1|LessThan0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|state.power~q\,
	datad => \A|lc1|LessThan0~6_combout\,
	combout => \A|lc1|state~6_combout\);

-- Location: LCCOMB_X79_Y14_N16
\A|lc1|lcd_data[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|lcd_data[0]~0_combout\ = (!\A|lc1|state.send~q\ & (!\A|lc1|state~6_combout\ & ((!\A|lc1|Selector34~1_combout\) # (!\A|lc1|state.init~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|state.init~q\,
	datab => \A|lc1|state.send~q\,
	datac => \A|lc1|Selector34~1_combout\,
	datad => \A|lc1|state~6_combout\,
	combout => \A|lc1|lcd_data[0]~0_combout\);

-- Location: FF_X79_Y15_N7
\A|lc1|lcd_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|lc1|Selector45~2_combout\,
	ena => \A|lc1|lcd_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|lcd_data\(0));

-- Location: LCCOMB_X82_Y10_N4
\A|ul1|Selector7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector7~6_combout\ = (!\C|oa1|fail_reg~q\ & (\C|mc1|fin_reg~q\ & ((\A|ul1|Equal23~0_combout\) # (!\A|ul1|Selector8~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal23~0_combout\,
	datab => \C|oa1|fail_reg~q\,
	datac => \C|mc1|fin_reg~q\,
	datad => \A|ul1|Selector8~8_combout\,
	combout => \A|ul1|Selector7~6_combout\);

-- Location: LCCOMB_X81_Y10_N8
\A|ul1|Selector7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector7~3_combout\ = (\A|ul1|Selector7~2_combout\ & ((\tsw[17]~input_o\) # (!\A|ul1|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|Equal4~0_combout\,
	datac => \tsw[17]~input_o\,
	datad => \A|ul1|Selector7~2_combout\,
	combout => \A|ul1|Selector7~3_combout\);

-- Location: LCCOMB_X82_Y10_N16
\A|ul1|Selector7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector7~4_combout\ = (\A|ul1|Selector7~6_combout\) # (((!\A|ul1|data_write~16_combout\ & \A|ul1|Equal24~0_combout\)) # (!\A|ul1|Selector7~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|data_write~16_combout\,
	datab => \A|ul1|Equal24~0_combout\,
	datac => \A|ul1|Selector7~6_combout\,
	datad => \A|ul1|Selector7~3_combout\,
	combout => \A|ul1|Selector7~4_combout\);

-- Location: LCCOMB_X79_Y13_N18
\A|ul1|Selector7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector7~5_combout\ = (\A|ul1|Selector7~4_combout\) # ((\A|ul1|WideNor0~3_combout\ & (\A|ul1|data_write\(1) & \A|ul1|WideNor1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Selector7~4_combout\,
	datab => \A|ul1|WideNor0~3_combout\,
	datac => \A|ul1|data_write\(1),
	datad => \A|ul1|WideNor1~5_combout\,
	combout => \A|ul1|Selector7~5_combout\);

-- Location: LCCOMB_X77_Y7_N2
\A|ul1|Selector16~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector16~6_combout\ = (\addr[1]~1_combout\ & ((\addr[0]~0_combout\) # ((!\addr[3]~3_combout\)))) # (!\addr[1]~1_combout\ & (!\addr[0]~0_combout\ & (\addr[3]~3_combout\ & \addr[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[1]~1_combout\,
	datab => \addr[0]~0_combout\,
	datac => \addr[3]~3_combout\,
	datad => \addr[2]~2_combout\,
	combout => \A|ul1|Selector16~6_combout\);

-- Location: LCCOMB_X81_Y7_N8
\A|ul1|Selector16~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector16~5_combout\ = (\A|ul1|Equal33~0_combout\ & (\data_write[5]~5_combout\ $ (((\A|ul1|LessThan3~1_combout\ & !\data_write[4]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|LessThan3~1_combout\,
	datab => \data_write[4]~4_combout\,
	datac => \data_write[5]~5_combout\,
	datad => \A|ul1|Equal33~0_combout\,
	combout => \A|ul1|Selector16~5_combout\);

-- Location: LCCOMB_X80_Y7_N28
\A|ul1|LessThan4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|LessThan4~0_combout\ = (\data_write[3]~3_combout\ & ((\data_write[1]~1_combout\) # (\data_write[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_write[1]~1_combout\,
	datab => \data_write[3]~3_combout\,
	datac => \data_write[2]~2_combout\,
	combout => \A|ul1|LessThan4~0_combout\);

-- Location: LCCOMB_X80_Y7_N22
\A|ul1|Selector16~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector16~4_combout\ = (\A|ul1|Equal34~0_combout\ & (\data_write[1]~1_combout\ $ (((\A|ul1|LessThan4~0_combout\ & !\data_write[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_write[1]~1_combout\,
	datab => \A|ul1|LessThan4~0_combout\,
	datac => \data_write[0]~0_combout\,
	datad => \A|ul1|Equal34~0_combout\,
	combout => \A|ul1|Selector16~4_combout\);

-- Location: LCCOMB_X80_Y7_N8
\A|ul1|Selector16~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector16~7_combout\ = (\A|ul1|Selector16~5_combout\) # ((\A|ul1|Selector16~4_combout\) # ((\A|ul1|Equal26~0_combout\ & \A|ul1|Selector16~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal26~0_combout\,
	datab => \A|ul1|Selector16~6_combout\,
	datac => \A|ul1|Selector16~5_combout\,
	datad => \A|ul1|Selector16~4_combout\,
	combout => \A|ul1|Selector16~7_combout\);

-- Location: LCCOMB_X80_Y10_N26
\A|ul1|Selector17~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector17~8_combout\ = (!\A|ul1|Add0~92_combout\ & (\rw~0_combout\ & (\A|ul1|Add0~93_combout\ & \A|ul1|Equal17~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~92_combout\,
	datab => \rw~0_combout\,
	datac => \A|ul1|Add0~93_combout\,
	datad => \A|ul1|Equal17~2_combout\,
	combout => \A|ul1|Selector17~8_combout\);

-- Location: LCCOMB_X76_Y7_N8
\A|ul1|Selector16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector16~2_combout\ = (\addr[5]~5_combout\ & (((\addr[4]~4_combout\) # (!\addr[7]~7_combout\)))) # (!\addr[5]~5_combout\ & (\addr[6]~6_combout\ & (!\addr[4]~4_combout\ & \addr[7]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[5]~5_combout\,
	datab => \addr[6]~6_combout\,
	datac => \addr[4]~4_combout\,
	datad => \addr[7]~7_combout\,
	combout => \A|ul1|Selector16~2_combout\);

-- Location: LCCOMB_X83_Y10_N12
\A|ul1|Selector16~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector16~3_combout\ = (\tsw[17]~input_o\ & (\A|ul1|Selector16~2_combout\ & (\A|ul1|Equal25~0_combout\))) # (!\tsw[17]~input_o\ & ((\A|ul1|Equal4~0_combout\) # ((\A|ul1|Selector16~2_combout\ & \A|ul1|Equal25~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[17]~input_o\,
	datab => \A|ul1|Selector16~2_combout\,
	datac => \A|ul1|Equal25~0_combout\,
	datad => \A|ul1|Equal4~0_combout\,
	combout => \A|ul1|Selector16~3_combout\);

-- Location: LCCOMB_X79_Y10_N10
\A|ul1|Selector16~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector16~8_combout\ = (\A|ul1|Selector16~7_combout\) # ((\A|ul1|Selector17~8_combout\) # ((\A|ul1|Selector16~3_combout\) # (!\A|ul1|Selector16~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Selector16~7_combout\,
	datab => \A|ul1|Selector17~8_combout\,
	datac => \A|ul1|Selector16~3_combout\,
	datad => \A|ul1|Selector16~0_combout\,
	combout => \A|ul1|Selector16~8_combout\);

-- Location: LCCOMB_X79_Y13_N26
\A|ul1|Selector16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector16~1_combout\ = (\A|ul1|WideNor1~5_combout\ & (\A|ul1|data_write\(1) & !\A|ul1|Equal19~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|WideNor1~5_combout\,
	datac => \A|ul1|data_write\(1),
	datad => \A|ul1|Equal19~1_combout\,
	combout => \A|ul1|Selector16~1_combout\);

-- Location: LCCOMB_X79_Y13_N12
\A|ul1|data_write~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|data_write~20_combout\ = (\tsw[16]~input_o\ & (\A|ul1|Selector7~5_combout\)) # (!\tsw[16]~input_o\ & (((\A|ul1|Selector16~8_combout\) # (\A|ul1|Selector16~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Selector7~5_combout\,
	datab => \tsw[16]~input_o\,
	datac => \A|ul1|Selector16~8_combout\,
	datad => \A|ul1|Selector16~1_combout\,
	combout => \A|ul1|data_write~20_combout\);

-- Location: FF_X79_Y13_N19
\A|ul1|data_write[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \A|ul1|data_write~20_combout\,
	clrn => \A|df1|q\(21),
	sload => VCC,
	ena => \A|ul1|data_write[9]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|data_write\(1));

-- Location: LCCOMB_X79_Y13_N24
\A|lc1|Selector44~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector44~1_combout\ = (\A|lc1|state.ready~q\ & (\A|ul1|data_write\(1) & \A|ul1|send_enable~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|lc1|state.ready~q\,
	datac => \A|ul1|data_write\(1),
	datad => \A|ul1|send_enable~q\,
	combout => \A|lc1|Selector44~1_combout\);

-- Location: LCCOMB_X79_Y15_N28
\A|lc1|Selector44~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector44~2_combout\ = (\A|lc1|Add0~60_combout\) # ((!\A|lc1|LessThan4~2_combout\ & !\A|lc1|LessThan5~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Add0~60_combout\,
	datac => \A|lc1|LessThan4~2_combout\,
	datad => \A|lc1|LessThan5~9_combout\,
	combout => \A|lc1|Selector44~2_combout\);

-- Location: LCCOMB_X79_Y15_N18
\A|lc1|Selector44~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector44~3_combout\ = (\A|lc1|Selector44~2_combout\ & (\A|lc1|LessThan7~3_combout\ & !\A|lc1|busy~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|lc1|Selector44~2_combout\,
	datac => \A|lc1|LessThan7~3_combout\,
	datad => \A|lc1|busy~8_combout\,
	combout => \A|lc1|Selector44~3_combout\);

-- Location: LCCOMB_X79_Y15_N0
\A|lc1|Selector44~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector44~4_combout\ = (\A|lc1|Selector44~1_combout\) # ((\A|lc1|Selector44~0_combout\ & (!\A|lc1|LessThan3~2_combout\ & \A|lc1|Selector44~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Selector44~0_combout\,
	datab => \A|lc1|Selector44~1_combout\,
	datac => \A|lc1|LessThan3~2_combout\,
	datad => \A|lc1|Selector44~3_combout\,
	combout => \A|lc1|Selector44~4_combout\);

-- Location: FF_X79_Y15_N1
\A|lc1|lcd_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|lc1|Selector44~4_combout\,
	ena => \A|lc1|lcd_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|lcd_data\(1));

-- Location: LCCOMB_X82_Y10_N0
\A|ul1|Selector6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector6~8_combout\ = (\C|oa1|fail_reg~q\ & (\C|mc1|fin_reg~q\ & ((\A|ul1|Equal24~0_combout\) # (\A|ul1|Equal21~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C|oa1|fail_reg~q\,
	datab => \C|mc1|fin_reg~q\,
	datac => \A|ul1|Equal24~0_combout\,
	datad => \A|ul1|Equal21~2_combout\,
	combout => \A|ul1|Selector6~8_combout\);

-- Location: LCCOMB_X82_Y10_N6
\A|ul1|Selector6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector6~7_combout\ = (\A|ul1|Equal22~0_combout\ & (((!\C|mc1|fin_reg~q\)) # (!\C|oa1|fail_reg~q\))) # (!\A|ul1|Equal22~0_combout\ & (\A|ul1|Equal25~0_combout\ & ((!\C|mc1|fin_reg~q\) # (!\C|oa1|fail_reg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal22~0_combout\,
	datab => \C|oa1|fail_reg~q\,
	datac => \C|mc1|fin_reg~q\,
	datad => \A|ul1|Equal25~0_combout\,
	combout => \A|ul1|Selector6~7_combout\);

-- Location: LCCOMB_X81_Y10_N30
\A|ul1|Selector6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector6~4_combout\ = (\A|ul1|Equal5~3_combout\) # ((\tsw[17]~input_o\ & (\A|ul1|Equal3~2_combout\)) # (!\tsw[17]~input_o\ & ((\A|ul1|Equal4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[17]~input_o\,
	datab => \A|ul1|Equal3~2_combout\,
	datac => \A|ul1|Equal5~3_combout\,
	datad => \A|ul1|Equal4~0_combout\,
	combout => \A|ul1|Selector6~4_combout\);

-- Location: LCCOMB_X81_Y10_N24
\A|ul1|Selector6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector6~5_combout\ = (\A|ul1|Selector6~8_combout\) # ((\A|ul1|Selector6~7_combout\) # ((\A|ul1|Selector6~4_combout\) # (\A|ul1|Equal18~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Selector6~8_combout\,
	datab => \A|ul1|Selector6~7_combout\,
	datac => \A|ul1|Selector6~4_combout\,
	datad => \A|ul1|Equal18~1_combout\,
	combout => \A|ul1|Selector6~5_combout\);

-- Location: LCCOMB_X80_Y10_N28
\A|ul1|Selector6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector6~6_combout\ = (\A|ul1|Selector6~5_combout\) # ((\A|ul1|WideNor0~3_combout\ & (\A|ul1|data_write\(2) & \A|ul1|WideNor1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|WideNor0~3_combout\,
	datab => \A|ul1|Selector6~5_combout\,
	datac => \A|ul1|data_write\(2),
	datad => \A|ul1|WideNor1~5_combout\,
	combout => \A|ul1|Selector6~6_combout\);

-- Location: LCCOMB_X81_Y7_N0
\A|ul1|Selector15~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector15~11_combout\ = \data_write[6]~6_combout\ $ (((!\data_write[4]~4_combout\ & (!\data_write[5]~5_combout\ & \A|ul1|LessThan3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_write[4]~4_combout\,
	datab => \data_write[5]~5_combout\,
	datac => \data_write[6]~6_combout\,
	datad => \A|ul1|LessThan3~1_combout\,
	combout => \A|ul1|Selector15~11_combout\);

-- Location: LCCOMB_X77_Y7_N12
\A|ul1|Selector15~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector15~8_combout\ = (\addr[2]~2_combout\ & (((\addr[0]~0_combout\) # (\addr[1]~1_combout\)) # (!\addr[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[2]~2_combout\,
	datab => \addr[3]~3_combout\,
	datac => \addr[0]~0_combout\,
	datad => \addr[1]~1_combout\,
	combout => \A|ul1|Selector15~8_combout\);

-- Location: LCCOMB_X80_Y7_N14
\A|ul1|Selector15~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector15~7_combout\ = (\data_write[2]~2_combout\ & ((\data_write[0]~0_combout\) # ((\data_write[1]~1_combout\) # (!\data_write[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_write[0]~0_combout\,
	datab => \data_write[3]~3_combout\,
	datac => \data_write[2]~2_combout\,
	datad => \data_write[1]~1_combout\,
	combout => \A|ul1|Selector15~7_combout\);

-- Location: LCCOMB_X80_Y7_N0
\A|ul1|Selector15~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector15~9_combout\ = (\A|ul1|Selector15~8_combout\ & ((\A|ul1|Equal26~0_combout\) # ((\A|ul1|Selector15~7_combout\ & \A|ul1|Equal34~0_combout\)))) # (!\A|ul1|Selector15~8_combout\ & (\A|ul1|Selector15~7_combout\ & ((\A|ul1|Equal34~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Selector15~8_combout\,
	datab => \A|ul1|Selector15~7_combout\,
	datac => \A|ul1|Equal26~0_combout\,
	datad => \A|ul1|Equal34~0_combout\,
	combout => \A|ul1|Selector15~9_combout\);

-- Location: LCCOMB_X81_Y7_N26
\A|ul1|Selector15~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector15~10_combout\ = (\A|ul1|Selector15~9_combout\) # ((\A|ul1|Equal5~3_combout\) # ((\tsw[17]~input_o\ & \A|ul1|Equal3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Selector15~9_combout\,
	datab => \tsw[17]~input_o\,
	datac => \A|ul1|Equal3~2_combout\,
	datad => \A|ul1|Equal5~3_combout\,
	combout => \A|ul1|Selector15~10_combout\);

-- Location: LCCOMB_X81_Y7_N6
\A|ul1|Selector15~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector15~12_combout\ = (\A|ul1|Selector15~10_combout\) # ((\A|ul1|Selector15~11_combout\ & \A|ul1|Equal33~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|Selector15~11_combout\,
	datac => \A|ul1|Selector15~10_combout\,
	datad => \A|ul1|Equal33~0_combout\,
	combout => \A|ul1|Selector15~12_combout\);

-- Location: LCCOMB_X80_Y9_N8
\A|ul1|Selector15~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector15~5_combout\ = (\A|ul1|Equal22~0_combout\) # ((\rw~0_combout\ & ((\A|ul1|Equal12~0_combout\) # (\A|ul1|Equal9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rw~0_combout\,
	datab => \A|ul1|Equal12~0_combout\,
	datac => \A|ul1|Equal22~0_combout\,
	datad => \A|ul1|Equal9~0_combout\,
	combout => \A|ul1|Selector15~5_combout\);

-- Location: LCCOMB_X80_Y9_N26
\A|ul1|Selector15~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector15~6_combout\ = (\A|ul1|Selector15~5_combout\) # (((!\rw~0_combout\ & \A|ul1|Equal11~1_combout\)) # (!\A|ul1|Selector15~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rw~0_combout\,
	datab => \A|ul1|Equal11~1_combout\,
	datac => \A|ul1|Selector15~5_combout\,
	datad => \A|ul1|Selector15~2_combout\,
	combout => \A|ul1|Selector15~6_combout\);

-- Location: LCCOMB_X76_Y7_N10
\A|ul1|Selector15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector15~4_combout\ = (\addr[6]~6_combout\ & ((\addr[5]~5_combout\) # ((\addr[4]~4_combout\) # (!\addr[7]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[5]~5_combout\,
	datab => \addr[6]~6_combout\,
	datac => \addr[4]~4_combout\,
	datad => \addr[7]~7_combout\,
	combout => \A|ul1|Selector15~4_combout\);

-- Location: LCCOMB_X81_Y10_N14
\A|ul1|Selector15~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector15~14_combout\ = (\A|ul1|Selector15~4_combout\ & ((\A|ul1|Equal25~0_combout\) # ((\A|ul1|Add0~92_combout\ & \A|ul1|Equal8~0_combout\)))) # (!\A|ul1|Selector15~4_combout\ & (((\A|ul1|Add0~92_combout\ & \A|ul1|Equal8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Selector15~4_combout\,
	datab => \A|ul1|Equal25~0_combout\,
	datac => \A|ul1|Add0~92_combout\,
	datad => \A|ul1|Equal8~0_combout\,
	combout => \A|ul1|Selector15~14_combout\);

-- Location: LCCOMB_X81_Y10_N26
\A|ul1|Selector15~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector15~13_combout\ = (\A|ul1|Selector15~12_combout\) # ((\A|ul1|Selector15~6_combout\) # ((\A|ul1|Selector15~14_combout\) # (!\A|ul1|Selector7~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Selector15~12_combout\,
	datab => \A|ul1|Selector15~6_combout\,
	datac => \A|ul1|Selector15~14_combout\,
	datad => \A|ul1|Selector7~3_combout\,
	combout => \A|ul1|Selector15~13_combout\);

-- Location: LCCOMB_X80_Y10_N4
\A|ul1|Selector15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector15~3_combout\ = (\A|ul1|data_write\(2) & (\A|ul1|WideNor1~5_combout\ & ((!\A|ul1|Equal3~3_combout\) # (!\A|ul1|Equal19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal19~0_combout\,
	datab => \A|ul1|Equal3~3_combout\,
	datac => \A|ul1|data_write\(2),
	datad => \A|ul1|WideNor1~5_combout\,
	combout => \A|ul1|Selector15~3_combout\);

-- Location: LCCOMB_X80_Y10_N2
\A|ul1|data_write~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|data_write~21_combout\ = (\tsw[16]~input_o\ & (\A|ul1|Selector6~6_combout\)) # (!\tsw[16]~input_o\ & (((\A|ul1|Selector15~13_combout\) # (\A|ul1|Selector15~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Selector6~6_combout\,
	datab => \A|ul1|Selector15~13_combout\,
	datac => \A|ul1|Selector15~3_combout\,
	datad => \tsw[16]~input_o\,
	combout => \A|ul1|data_write~21_combout\);

-- Location: FF_X80_Y10_N5
\A|ul1|data_write[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \A|ul1|data_write~21_combout\,
	clrn => \A|df1|q\(21),
	sload => VCC,
	ena => \A|ul1|data_write[9]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|data_write\(2));

-- Location: LCCOMB_X79_Y15_N4
\A|lc1|Selector43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector43~0_combout\ = (!\A|lc1|Add0~60_combout\ & (!\A|lc1|LessThan2~2_combout\ & ((\A|lc1|LessThan3~2_combout\) # (\A|lc1|Selector44~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Add0~60_combout\,
	datab => \A|lc1|LessThan2~2_combout\,
	datac => \A|lc1|LessThan3~2_combout\,
	datad => \A|lc1|Selector44~3_combout\,
	combout => \A|lc1|Selector43~0_combout\);

-- Location: LCCOMB_X79_Y15_N14
\A|lc1|Selector43~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector43~1_combout\ = (\A|lc1|Add0~62_combout\) # ((\A|lc1|Selector43~0_combout\) # ((\A|lc1|LessThan1~2_combout\ & !\A|lc1|Add0~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|LessThan1~2_combout\,
	datab => \A|lc1|Add0~62_combout\,
	datac => \A|lc1|Selector43~0_combout\,
	datad => \A|lc1|Add0~60_combout\,
	combout => \A|lc1|Selector43~1_combout\);

-- Location: LCCOMB_X79_Y15_N22
\A|lc1|Selector43~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector43~2_combout\ = (\A|lc1|Selector35~2_combout\ & (\A|ul1|data_write\(2))) # (!\A|lc1|Selector35~2_combout\ & (((\A|lc1|state.init~q\ & \A|lc1|Selector43~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|data_write\(2),
	datab => \A|lc1|state.init~q\,
	datac => \A|lc1|Selector43~1_combout\,
	datad => \A|lc1|Selector35~2_combout\,
	combout => \A|lc1|Selector43~2_combout\);

-- Location: FF_X79_Y15_N23
\A|lc1|lcd_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|lc1|Selector43~2_combout\,
	ena => \A|lc1|lcd_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|lcd_data\(2));

-- Location: LCCOMB_X77_Y7_N10
\A|ul1|data_write~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|data_write~28_combout\ = (!\tsw[9]~input_o\ & (\tsw[11]~input_o\ & (!\tsw[10]~input_o\ & \A|ul1|Equal34~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[9]~input_o\,
	datab => \tsw[11]~input_o\,
	datac => \tsw[10]~input_o\,
	datad => \A|ul1|Equal34~0_combout\,
	combout => \A|ul1|data_write~28_combout\);

-- Location: LCCOMB_X77_Y7_N4
\A|ul1|data_write~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|data_write~26_combout\ = (\A|ul1|Equal11~1_combout\ & ((\tsw[16]~input_o\ & ((!\C|mc1|rw_reg~q\))) # (!\tsw[16]~input_o\ & (!\psw[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[16]~input_o\,
	datab => \psw[2]~input_o\,
	datac => \C|mc1|rw_reg~q\,
	datad => \A|ul1|Equal11~1_combout\,
	combout => \A|ul1|data_write~26_combout\);

-- Location: LCCOMB_X76_Y7_N4
\A|ul1|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|LessThan1~0_combout\ = (\addr[7]~7_combout\ & ((\addr[5]~5_combout\) # (\addr[6]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[5]~5_combout\,
	datab => \addr[6]~6_combout\,
	datad => \addr[7]~7_combout\,
	combout => \A|ul1|LessThan1~0_combout\);

-- Location: LCCOMB_X76_Y7_N18
\A|ul1|data_write~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|data_write~27_combout\ = (\A|ul1|data_write~26_combout\) # ((!\A|ul1|LessThan1~0_combout\ & (\A|ul1|Equal25~0_combout\ & \addr[7]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|data_write~26_combout\,
	datab => \A|ul1|LessThan1~0_combout\,
	datac => \A|ul1|Equal25~0_combout\,
	datad => \addr[7]~7_combout\,
	combout => \A|ul1|data_write~27_combout\);

-- Location: LCCOMB_X77_Y7_N30
\A|ul1|data_write~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|data_write~25_combout\ = ((\A|ul1|Equal26~0_combout\ & (!\A|ul1|LessThan2~0_combout\ & \addr[3]~3_combout\))) # (!\A|ul1|data_write~53_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal26~0_combout\,
	datab => \A|ul1|LessThan2~0_combout\,
	datac => \addr[3]~3_combout\,
	datad => \A|ul1|data_write~53_combout\,
	combout => \A|ul1|data_write~25_combout\);

-- Location: LCCOMB_X77_Y11_N14
\A|ul1|data_write~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|data_write~29_combout\ = (!\tsw[13]~input_o\ & (\tsw[15]~input_o\ & (!\tsw[14]~input_o\ & \A|ul1|Equal33~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[13]~input_o\,
	datab => \tsw[15]~input_o\,
	datac => \tsw[14]~input_o\,
	datad => \A|ul1|Equal33~0_combout\,
	combout => \A|ul1|data_write~29_combout\);

-- Location: LCCOMB_X77_Y7_N0
\A|ul1|data_write~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|data_write~30_combout\ = (\A|ul1|data_write~28_combout\) # ((\A|ul1|data_write~27_combout\) # ((\A|ul1|data_write~25_combout\) # (\A|ul1|data_write~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|data_write~28_combout\,
	datab => \A|ul1|data_write~27_combout\,
	datac => \A|ul1|data_write~25_combout\,
	datad => \A|ul1|data_write~29_combout\,
	combout => \A|ul1|data_write~30_combout\);

-- Location: LCCOMB_X80_Y10_N30
\A|ul1|data_write~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|data_write~31_combout\ = (\A|ul1|data_write~30_combout\) # ((\A|ul1|WideNor1~5_combout\ & (\A|ul1|data_write\(3) & !\A|ul1|Equal19~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|data_write~30_combout\,
	datab => \A|ul1|WideNor1~5_combout\,
	datac => \A|ul1|data_write\(3),
	datad => \A|ul1|Equal19~1_combout\,
	combout => \A|ul1|data_write~31_combout\);

-- Location: LCCOMB_X83_Y10_N22
\A|ul1|data_write~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|data_write~23_combout\ = (\A|ul1|Equal24~0_combout\) # ((\A|ul1|Equal23~0_combout\ & \tsw[16]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal23~0_combout\,
	datac => \tsw[16]~input_o\,
	datad => \A|ul1|Equal24~0_combout\,
	combout => \A|ul1|data_write~23_combout\);

-- Location: LCCOMB_X84_Y10_N14
\A|ul1|data_write~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|data_write~51_combout\ = (\A|ul1|Equal4~0_combout\) # ((\C|oa1|fail_reg~q\ & (\C|mc1|fin_reg~q\ & \A|ul1|data_write~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C|oa1|fail_reg~q\,
	datab => \C|mc1|fin_reg~q\,
	datac => \A|ul1|Equal4~0_combout\,
	datad => \A|ul1|data_write~23_combout\,
	combout => \A|ul1|data_write~51_combout\);

-- Location: LCCOMB_X83_Y10_N2
\A|ul1|data_write~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|data_write~52_combout\ = (\tsw[16]~input_o\ & (!\A|ul1|Add0~92_combout\ & (\A|ul1|Equal8~0_combout\ & \A|ul1|Add0~93_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[16]~input_o\,
	datab => \A|ul1|Add0~92_combout\,
	datac => \A|ul1|Equal8~0_combout\,
	datad => \A|ul1|Add0~93_combout\,
	combout => \A|ul1|data_write~52_combout\);

-- Location: LCCOMB_X83_Y10_N16
\A|ul1|data_write~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|data_write~24_combout\ = (\A|ul1|data_write~51_combout\) # ((\A|ul1|data_write~52_combout\) # ((!\tsw[17]~input_o\ & \A|ul1|Equal3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[17]~input_o\,
	datab => \A|ul1|data_write~51_combout\,
	datac => \A|ul1|Equal3~2_combout\,
	datad => \A|ul1|data_write~52_combout\,
	combout => \A|ul1|data_write~24_combout\);

-- Location: LCCOMB_X80_Y10_N12
\A|ul1|data_write~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|data_write~22_combout\ = (\A|ul1|WideNor0~3_combout\ & (\tsw[16]~input_o\ & (\A|ul1|data_write\(3) & \A|ul1|WideNor1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|WideNor0~3_combout\,
	datab => \tsw[16]~input_o\,
	datac => \A|ul1|data_write\(3),
	datad => \A|ul1|WideNor1~5_combout\,
	combout => \A|ul1|data_write~22_combout\);

-- Location: LCCOMB_X80_Y10_N6
\A|ul1|data_write~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|data_write~32_combout\ = (\A|ul1|data_write~24_combout\) # ((\A|ul1|data_write~22_combout\) # ((\A|ul1|data_write~31_combout\ & !\tsw[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|data_write~31_combout\,
	datab => \tsw[16]~input_o\,
	datac => \A|ul1|data_write~24_combout\,
	datad => \A|ul1|data_write~22_combout\,
	combout => \A|ul1|data_write~32_combout\);

-- Location: FF_X80_Y10_N31
\A|ul1|data_write[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \A|ul1|data_write~32_combout\,
	clrn => \A|df1|q\(21),
	sload => VCC,
	ena => \A|ul1|data_write[9]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|data_write\(3));

-- Location: LCCOMB_X79_Y13_N6
\A|lc1|Selector42~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector42~2_combout\ = (\A|lc1|state.init~q\ & (!\A|lc1|Add0~62_combout\ & ((\A|lc1|Add0~60_combout\) # (!\A|lc1|LessThan1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Add0~60_combout\,
	datab => \A|lc1|state.init~q\,
	datac => \A|lc1|LessThan1~2_combout\,
	datad => \A|lc1|Add0~62_combout\,
	combout => \A|lc1|Selector42~2_combout\);

-- Location: LCCOMB_X79_Y13_N8
\A|lc1|Selector42~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector42~3_combout\ = ((!\A|lc1|LessThan2~2_combout\ & (\A|lc1|LessThan3~2_combout\ & !\A|lc1|Add0~60_combout\))) # (!\A|lc1|Selector42~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|LessThan2~2_combout\,
	datab => \A|lc1|LessThan3~2_combout\,
	datac => \A|lc1|Add0~60_combout\,
	datad => \A|lc1|Selector42~2_combout\,
	combout => \A|lc1|Selector42~3_combout\);

-- Location: LCCOMB_X79_Y13_N22
\A|lc1|Selector42~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector42~4_combout\ = (\A|lc1|state.ready~q\ & (\A|ul1|data_write\(3) & ((\A|ul1|send_enable~q\)))) # (!\A|lc1|state.ready~q\ & (((\A|lc1|Selector42~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|data_write\(3),
	datab => \A|lc1|state.ready~q\,
	datac => \A|lc1|Selector42~3_combout\,
	datad => \A|ul1|send_enable~q\,
	combout => \A|lc1|Selector42~4_combout\);

-- Location: FF_X79_Y13_N23
\A|lc1|lcd_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|lc1|Selector42~4_combout\,
	ena => \A|lc1|lcd_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|lcd_data\(3));

-- Location: LCCOMB_X82_Y10_N26
\A|ul1|data_write~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|data_write~35_combout\ = (\tsw[16]~input_o\ & (!\A|ul1|data_write~16_combout\ & ((\A|ul1|Equal22~0_combout\) # (\A|ul1|Equal21~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal22~0_combout\,
	datab => \tsw[16]~input_o\,
	datac => \A|ul1|data_write~16_combout\,
	datad => \A|ul1|Equal21~2_combout\,
	combout => \A|ul1|data_write~35_combout\);

-- Location: LCCOMB_X82_Y10_N12
\A|ul1|data_write~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|data_write~36_combout\ = (\tsw[16]~input_o\ & ((\A|ul1|Equal18~1_combout\) # ((!\C|mc1|fin_reg~q\ & \A|ul1|Equal25~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal18~1_combout\,
	datab => \tsw[16]~input_o\,
	datac => \C|mc1|fin_reg~q\,
	datad => \A|ul1|Equal25~0_combout\,
	combout => \A|ul1|data_write~36_combout\);

-- Location: LCCOMB_X82_Y10_N30
\A|ul1|data_write~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|data_write~37_combout\ = (\A|ul1|data_write~35_combout\) # ((\A|ul1|Equal5~3_combout\) # ((\A|ul1|data_write~36_combout\) # (\A|ul1|Equal17~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|data_write~35_combout\,
	datab => \A|ul1|Equal5~3_combout\,
	datac => \A|ul1|data_write~36_combout\,
	datad => \A|ul1|Equal17~3_combout\,
	combout => \A|ul1|data_write~37_combout\);

-- Location: LCCOMB_X83_Y10_N8
\A|ul1|Selector2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector2~2_combout\ = (\A|ul1|process_0~0_combout\ & ((\A|ul1|Equal26~0_combout\) # ((\A|ul1|Equal27~0_combout\ & \A|ul1|Equal3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal27~0_combout\,
	datab => \A|ul1|process_0~0_combout\,
	datac => \A|ul1|Equal26~0_combout\,
	datad => \A|ul1|Equal3~3_combout\,
	combout => \A|ul1|Selector2~2_combout\);

-- Location: LCCOMB_X83_Y10_N18
\A|ul1|data_write~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|data_write~34_combout\ = (\tsw[17]~input_o\ & ((\A|ul1|Equal4~0_combout\) # ((!\A|ul1|process_0~0_combout\ & \A|ul1|Equal24~0_combout\)))) # (!\tsw[17]~input_o\ & (!\A|ul1|process_0~0_combout\ & ((\A|ul1|Equal24~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[17]~input_o\,
	datab => \A|ul1|process_0~0_combout\,
	datac => \A|ul1|Equal4~0_combout\,
	datad => \A|ul1|Equal24~0_combout\,
	combout => \A|ul1|data_write~34_combout\);

-- Location: LCCOMB_X83_Y10_N26
\A|ul1|data_write~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|data_write~38_combout\ = (\A|ul1|data_write~37_combout\) # ((\A|ul1|data_write~34_combout\) # ((\A|ul1|Selector2~2_combout\ & \tsw[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|data_write~37_combout\,
	datab => \A|ul1|Selector2~2_combout\,
	datac => \A|ul1|data_write~34_combout\,
	datad => \tsw[16]~input_o\,
	combout => \A|ul1|data_write~38_combout\);

-- Location: LCCOMB_X77_Y7_N6
\A|ul1|Selector12~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector12~6_combout\ = (\A|ul1|LessThan4~0_combout\ & ((\A|ul1|LessThan2~0_combout\) # ((!\A|ul1|Equal26~0_combout\)))) # (!\A|ul1|LessThan4~0_combout\ & (!\A|ul1|Equal34~0_combout\ & ((\A|ul1|LessThan2~0_combout\) # 
-- (!\A|ul1|Equal26~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|LessThan4~0_combout\,
	datab => \A|ul1|LessThan2~0_combout\,
	datac => \A|ul1|Equal26~0_combout\,
	datad => \A|ul1|Equal34~0_combout\,
	combout => \A|ul1|Selector12~6_combout\);

-- Location: LCCOMB_X77_Y7_N16
\A|ul1|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector13~0_combout\ = (!\A|ul1|LessThan3~1_combout\ & \A|ul1|Equal33~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|ul1|LessThan3~1_combout\,
	datad => \A|ul1|Equal33~0_combout\,
	combout => \A|ul1|Selector13~0_combout\);

-- Location: LCCOMB_X76_Y7_N16
\A|ul1|Selector12~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector12~7_combout\ = (\A|ul1|Selector12~6_combout\ & (!\A|ul1|Selector13~0_combout\ & ((\A|ul1|LessThan1~0_combout\) # (!\A|ul1|Equal25~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Selector12~6_combout\,
	datab => \A|ul1|Equal25~0_combout\,
	datac => \A|ul1|LessThan1~0_combout\,
	datad => \A|ul1|Selector13~0_combout\,
	combout => \A|ul1|Selector12~7_combout\);

-- Location: LCCOMB_X80_Y10_N10
\A|ul1|data_write~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|data_write~39_combout\ = (\A|ul1|Equal10~1_combout\) # ((\rw~0_combout\ & ((\A|ul1|Equal12~0_combout\) # (\A|ul1|Equal9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal12~0_combout\,
	datab => \rw~0_combout\,
	datac => \A|ul1|Equal10~1_combout\,
	datad => \A|ul1|Equal9~0_combout\,
	combout => \A|ul1|data_write~39_combout\);

-- Location: LCCOMB_X83_Y9_N0
\A|ul1|Selector12~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector12~11_combout\ = (!\A|ul1|Equal30~0_combout\ & (!\A|ul1|Equal23~0_combout\ & ((!\A|ul1|Add0~92_combout\) # (!\A|ul1|Equal8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal8~0_combout\,
	datab => \A|ul1|Equal30~0_combout\,
	datac => \A|ul1|Add0~92_combout\,
	datad => \A|ul1|Equal23~0_combout\,
	combout => \A|ul1|Selector12~11_combout\);

-- Location: LCCOMB_X80_Y10_N8
\A|ul1|data_write~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|data_write~40_combout\ = ((\A|ul1|data_write~39_combout\) # (!\A|ul1|Selector12~11_combout\)) # (!\A|ul1|Selector12~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Selector12~7_combout\,
	datab => \A|ul1|data_write~39_combout\,
	datad => \A|ul1|Selector12~11_combout\,
	combout => \A|ul1|data_write~40_combout\);

-- Location: LCCOMB_X80_Y10_N20
\A|ul1|data_write~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|data_write~41_combout\ = (\A|ul1|data_write~40_combout\) # ((!\A|ul1|Equal19~1_combout\ & (\A|ul1|WideNor1~5_combout\ & \A|ul1|data_write\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal19~1_combout\,
	datab => \A|ul1|WideNor1~5_combout\,
	datac => \A|ul1|data_write\(4),
	datad => \A|ul1|data_write~40_combout\,
	combout => \A|ul1|data_write~41_combout\);

-- Location: LCCOMB_X80_Y10_N0
\A|ul1|data_write~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|data_write~33_combout\ = (\A|ul1|WideNor0~3_combout\ & (\tsw[16]~input_o\ & (\A|ul1|data_write\(4) & \A|ul1|WideNor1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|WideNor0~3_combout\,
	datab => \tsw[16]~input_o\,
	datac => \A|ul1|data_write\(4),
	datad => \A|ul1|WideNor1~5_combout\,
	combout => \A|ul1|data_write~33_combout\);

-- Location: LCCOMB_X80_Y10_N18
\A|ul1|data_write~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|data_write~42_combout\ = (\A|ul1|data_write~38_combout\) # ((\A|ul1|data_write~33_combout\) # ((!\tsw[16]~input_o\ & \A|ul1|data_write~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|data_write~38_combout\,
	datab => \tsw[16]~input_o\,
	datac => \A|ul1|data_write~41_combout\,
	datad => \A|ul1|data_write~33_combout\,
	combout => \A|ul1|data_write~42_combout\);

-- Location: FF_X80_Y10_N21
\A|ul1|data_write[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \A|ul1|data_write~42_combout\,
	clrn => \A|df1|q\(21),
	sload => VCC,
	ena => \A|ul1|data_write[9]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|data_write\(4));

-- Location: LCCOMB_X79_Y13_N4
\A|lc1|Selector41~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector41~2_combout\ = (\A|lc1|state.ready~q\ & (\A|ul1|send_enable~q\ & (\A|ul1|data_write\(4)))) # (!\A|lc1|state.ready~q\ & (((!\A|lc1|Selector42~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|state.ready~q\,
	datab => \A|ul1|send_enable~q\,
	datac => \A|ul1|data_write\(4),
	datad => \A|lc1|Selector42~2_combout\,
	combout => \A|lc1|Selector41~2_combout\);

-- Location: FF_X79_Y13_N5
\A|lc1|lcd_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|lc1|Selector41~2_combout\,
	ena => \A|lc1|lcd_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|lcd_data\(4));

-- Location: LCCOMB_X80_Y10_N16
\A|ul1|Selector12~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector12~9_combout\ = (\A|ul1|Equal21~2_combout\) # ((!\rw~0_combout\ & \A|ul1|Equal9~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rw~0_combout\,
	datac => \A|ul1|Equal21~2_combout\,
	datad => \A|ul1|Equal9~0_combout\,
	combout => \A|ul1|Selector12~9_combout\);

-- Location: LCCOMB_X80_Y10_N14
\A|ul1|Selector12~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector12~10_combout\ = (((\A|ul1|Selector12~9_combout\) # (!\A|ul1|Selector12~11_combout\)) # (!\A|ul1|Selector12~5_combout\)) # (!\A|ul1|Selector12~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Selector12~7_combout\,
	datab => \A|ul1|Selector12~5_combout\,
	datac => \A|ul1|Selector12~9_combout\,
	datad => \A|ul1|Selector12~11_combout\,
	combout => \A|ul1|Selector12~10_combout\);

-- Location: LCCOMB_X79_Y10_N28
\A|ul1|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector9~0_combout\ = (\A|ul1|WideNor1~4_combout\ & (\A|ul1|WideNor1~3_combout\ & !\A|ul1|Equal20~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|WideNor1~4_combout\,
	datab => \A|ul1|WideNor1~3_combout\,
	datac => \A|ul1|Equal20~0_combout\,
	combout => \A|ul1|Selector9~0_combout\);

-- Location: LCCOMB_X79_Y10_N26
\A|ul1|Selector12~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector12~8_combout\ = (!\A|ul1|Equal2~3_combout\ & (\A|ul1|Selector9~0_combout\ & (\A|ul1|data_write\(5) & !\A|ul1|Equal19~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal2~3_combout\,
	datab => \A|ul1|Selector9~0_combout\,
	datac => \A|ul1|data_write\(5),
	datad => \A|ul1|Equal19~1_combout\,
	combout => \A|ul1|Selector12~8_combout\);

-- Location: LCCOMB_X79_Y10_N8
\A|ul1|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector3~0_combout\ = (((\A|ul1|WideNor1~5_combout\ & \A|ul1|data_write\(5))) # (!\A|ul1|WideNor0~3_combout\)) # (!\A|ul1|WideNor1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|WideNor1~5_combout\,
	datab => \A|ul1|data_write\(5),
	datac => \A|ul1|WideNor1~3_combout\,
	datad => \A|ul1|WideNor0~3_combout\,
	combout => \A|ul1|Selector3~0_combout\);

-- Location: LCCOMB_X79_Y10_N6
\A|ul1|data_write~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|data_write~43_combout\ = (\tsw[16]~input_o\ & (((\A|ul1|Selector3~0_combout\)))) # (!\tsw[16]~input_o\ & ((\A|ul1|Selector12~10_combout\) # ((\A|ul1|Selector12~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[16]~input_o\,
	datab => \A|ul1|Selector12~10_combout\,
	datac => \A|ul1|Selector12~8_combout\,
	datad => \A|ul1|Selector3~0_combout\,
	combout => \A|ul1|data_write~43_combout\);

-- Location: FF_X79_Y10_N27
\A|ul1|data_write[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \A|ul1|data_write~43_combout\,
	clrn => \A|df1|q\(21),
	sload => VCC,
	ena => \A|ul1|data_write[9]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|data_write\(5));

-- Location: LCCOMB_X79_Y13_N14
\A|lc1|Selector40~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector40~2_combout\ = (\A|lc1|state.ready~q\ & (\A|ul1|send_enable~q\ & (\A|ul1|data_write\(5)))) # (!\A|lc1|state.ready~q\ & (((!\A|lc1|Selector42~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|state.ready~q\,
	datab => \A|ul1|send_enable~q\,
	datac => \A|ul1|data_write\(5),
	datad => \A|lc1|Selector42~2_combout\,
	combout => \A|lc1|Selector40~2_combout\);

-- Location: FF_X79_Y13_N15
\A|lc1|lcd_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|lc1|Selector40~2_combout\,
	ena => \A|lc1|lcd_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|lcd_data\(5));

-- Location: LCCOMB_X83_Y10_N0
\A|ul1|Selector2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector2~3_combout\ = (\A|ul1|WideNor1~4_combout\ & !\A|ul1|Equal22~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|WideNor1~4_combout\,
	datac => \A|ul1|Equal22~0_combout\,
	combout => \A|ul1|Selector2~3_combout\);

-- Location: LCCOMB_X83_Y10_N10
\A|ul1|Selector2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector2~4_combout\ = (\A|ul1|Equal24~0_combout\) # ((\A|ul1|Equal20~0_combout\) # ((\A|ul1|Selector2~2_combout\) # (!\A|ul1|Selector2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal24~0_combout\,
	datab => \A|ul1|Equal20~0_combout\,
	datac => \A|ul1|Selector2~2_combout\,
	datad => \A|ul1|Selector2~3_combout\,
	combout => \A|ul1|Selector2~4_combout\);

-- Location: LCCOMB_X82_Y10_N10
\A|ul1|Selector2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector2~5_combout\ = (\A|ul1|Equal23~0_combout\) # ((\A|ul1|Equal25~0_combout\ & ((!\C|mc1|fin_reg~q\) # (!\C|oa1|fail_reg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal23~0_combout\,
	datab => \C|oa1|fail_reg~q\,
	datac => \C|mc1|fin_reg~q\,
	datad => \A|ul1|Equal25~0_combout\,
	combout => \A|ul1|Selector2~5_combout\);

-- Location: LCCOMB_X82_Y11_N16
\A|ul1|data_write~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|data_write~45_combout\ = (!\A|ul1|Equal19~1_combout\ & (\A|ul1|data_write\(6) & \A|ul1|WideNor1~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|Equal19~1_combout\,
	datac => \A|ul1|data_write\(6),
	datad => \A|ul1|WideNor1~5_combout\,
	combout => \A|ul1|data_write~45_combout\);

-- Location: LCCOMB_X82_Y11_N28
\A|ul1|data_write~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|data_write~46_combout\ = (\A|ul1|Selector2~4_combout\) # ((\A|ul1|Selector2~5_combout\) # ((\A|ul1|WideNor0~2_combout\ & \A|ul1|data_write~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Selector2~4_combout\,
	datab => \A|ul1|Selector2~5_combout\,
	datac => \A|ul1|WideNor0~2_combout\,
	datad => \A|ul1|data_write~45_combout\,
	combout => \A|ul1|data_write~46_combout\);

-- Location: LCCOMB_X82_Y11_N0
\A|ul1|Selector11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector11~4_combout\ = (((\A|ul1|LessThan1~0_combout\ & \A|ul1|Equal25~0_combout\)) # (!\A|ul1|Selector2~3_combout\)) # (!\A|ul1|Selector11~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|LessThan1~0_combout\,
	datab => \A|ul1|Equal25~0_combout\,
	datac => \A|ul1|Selector11~0_combout\,
	datad => \A|ul1|Selector2~3_combout\,
	combout => \A|ul1|Selector11~4_combout\);

-- Location: LCCOMB_X80_Y7_N10
\A|ul1|Selector11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector11~2_combout\ = (\A|ul1|LessThan2~0_combout\ & ((\A|ul1|Equal26~0_combout\) # ((\A|ul1|LessThan4~0_combout\ & \A|ul1|Equal34~0_combout\)))) # (!\A|ul1|LessThan2~0_combout\ & (\A|ul1|LessThan4~0_combout\ & ((\A|ul1|Equal34~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|LessThan2~0_combout\,
	datab => \A|ul1|LessThan4~0_combout\,
	datac => \A|ul1|Equal26~0_combout\,
	datad => \A|ul1|Equal34~0_combout\,
	combout => \A|ul1|Selector11~2_combout\);

-- Location: LCCOMB_X82_Y11_N18
\A|ul1|Selector11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector11~3_combout\ = (\A|ul1|Selector11~2_combout\) # ((\A|ul1|Equal19~1_combout\) # ((\A|ul1|Equal33~0_combout\ & \A|ul1|LessThan3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Selector11~2_combout\,
	datab => \A|ul1|Equal33~0_combout\,
	datac => \A|ul1|Equal19~1_combout\,
	datad => \A|ul1|LessThan3~1_combout\,
	combout => \A|ul1|Selector11~3_combout\);

-- Location: LCCOMB_X80_Y9_N24
\A|ul1|Selector11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector11~1_combout\ = (((\rw~0_combout\ & \A|ul1|Equal9~0_combout\)) # (!\A|ul1|Selector16~0_combout\)) # (!\A|ul1|WideNor1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rw~0_combout\,
	datab => \A|ul1|Equal9~0_combout\,
	datac => \A|ul1|WideNor1~0_combout\,
	datad => \A|ul1|Selector16~0_combout\,
	combout => \A|ul1|Selector11~1_combout\);

-- Location: LCCOMB_X82_Y11_N26
\A|ul1|data_write~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|data_write~44_combout\ = (\A|ul1|Selector11~4_combout\) # ((\A|ul1|Selector11~3_combout\) # (\A|ul1|Selector11~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|Selector11~4_combout\,
	datac => \A|ul1|Selector11~3_combout\,
	datad => \A|ul1|Selector11~1_combout\,
	combout => \A|ul1|data_write~44_combout\);

-- Location: LCCOMB_X82_Y11_N14
\A|ul1|data_write~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|data_write~47_combout\ = (\tsw[16]~input_o\ & (\A|ul1|data_write~46_combout\)) # (!\tsw[16]~input_o\ & (((\A|ul1|data_write~44_combout\) # (\A|ul1|data_write~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|data_write~46_combout\,
	datab => \tsw[16]~input_o\,
	datac => \A|ul1|data_write~44_combout\,
	datad => \A|ul1|data_write~45_combout\,
	combout => \A|ul1|data_write~47_combout\);

-- Location: FF_X82_Y11_N17
\A|ul1|data_write[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \A|ul1|data_write~47_combout\,
	clrn => \A|df1|q\(21),
	sload => VCC,
	ena => \A|ul1|data_write[9]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|data_write\(6));

-- Location: LCCOMB_X79_Y13_N0
\A|lc1|Selector39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector39~0_combout\ = (\A|lc1|state.ready~q\ & (\A|ul1|data_write\(6) & \A|ul1|send_enable~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|lc1|state.ready~q\,
	datac => \A|ul1|data_write\(6),
	datad => \A|ul1|send_enable~q\,
	combout => \A|lc1|Selector39~0_combout\);

-- Location: FF_X79_Y13_N1
\A|lc1|lcd_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|lc1|Selector39~0_combout\,
	ena => \A|lc1|lcd_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|lcd_data\(6));

-- Location: LCCOMB_X79_Y10_N2
\A|ul1|data_write~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|data_write~49_combout\ = (\A|ul1|data_write\(7) & ((\A|ul1|WideNor0~3_combout\) # (!\tsw[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[16]~input_o\,
	datac => \A|ul1|data_write\(7),
	datad => \A|ul1|WideNor0~3_combout\,
	combout => \A|ul1|data_write~49_combout\);

-- Location: LCCOMB_X79_Y10_N20
\A|ul1|data_write~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|data_write~48_combout\ = (\tsw[16]~input_o\ & (\A|ul1|Equal20~0_combout\)) # (!\tsw[16]~input_o\ & ((\A|ul1|Equal19~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal20~0_combout\,
	datab => \A|ul1|Equal19~1_combout\,
	datac => \tsw[16]~input_o\,
	combout => \A|ul1|data_write~48_combout\);

-- Location: LCCOMB_X79_Y10_N16
\A|ul1|data_write~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|data_write~50_combout\ = (\A|ul1|Equal2~3_combout\) # ((\A|ul1|data_write~48_combout\) # ((\A|ul1|data_write~49_combout\ & \A|ul1|WideNor1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal2~3_combout\,
	datab => \A|ul1|data_write~49_combout\,
	datac => \A|ul1|WideNor1~5_combout\,
	datad => \A|ul1|data_write~48_combout\,
	combout => \A|ul1|data_write~50_combout\);

-- Location: FF_X79_Y10_N17
\A|ul1|data_write[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ul1|data_write~50_combout\,
	clrn => \A|df1|q\(21),
	ena => \A|ul1|data_write[9]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|data_write\(7));

-- Location: LCCOMB_X79_Y13_N10
\A|lc1|Selector38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector38~0_combout\ = (\A|lc1|state.ready~q\ & (\A|ul1|data_write\(7) & \A|ul1|send_enable~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|lc1|state.ready~q\,
	datac => \A|ul1|data_write\(7),
	datad => \A|ul1|send_enable~q\,
	combout => \A|lc1|Selector38~0_combout\);

-- Location: FF_X79_Y13_N11
\A|lc1|lcd_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|lc1|Selector38~0_combout\,
	ena => \A|lc1|lcd_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|lcd_data\(7));

-- Location: FF_X72_Y11_N17
\B|ctl|addr_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \addr[0]~0_combout\,
	clrn => \psw[0]~input_o\,
	sload => VCC,
	ena => \tsw[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|ctl|addr_reg\(0));

-- Location: FF_X72_Y11_N15
\B|ctl|addr_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \addr[1]~1_combout\,
	clrn => \psw[0]~input_o\,
	ena => \tsw[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|ctl|addr_reg\(1));

-- Location: FF_X72_Y11_N9
\B|ctl|addr_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \addr[2]~2_combout\,
	clrn => \psw[0]~input_o\,
	ena => \tsw[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|ctl|addr_reg\(2));

-- Location: FF_X72_Y11_N11
\B|ctl|addr_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \addr[3]~3_combout\,
	clrn => \psw[0]~input_o\,
	ena => \tsw[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|ctl|addr_reg\(3));

-- Location: FF_X72_Y11_N1
\B|ctl|addr_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \addr[4]~4_combout\,
	clrn => \psw[0]~input_o\,
	ena => \tsw[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|ctl|addr_reg\(4));

-- Location: LCCOMB_X77_Y11_N16
\B|ctl|addr_reg[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|ctl|addr_reg[5]~feeder_combout\ = \addr[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \addr[5]~5_combout\,
	combout => \B|ctl|addr_reg[5]~feeder_combout\);

-- Location: FF_X77_Y11_N17
\B|ctl|addr_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \B|ctl|addr_reg[5]~feeder_combout\,
	clrn => \psw[0]~input_o\,
	ena => \tsw[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|ctl|addr_reg\(5));

-- Location: LCCOMB_X77_Y11_N26
\B|ctl|addr_reg[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|ctl|addr_reg[6]~feeder_combout\ = \addr[6]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \addr[6]~6_combout\,
	combout => \B|ctl|addr_reg[6]~feeder_combout\);

-- Location: FF_X77_Y11_N27
\B|ctl|addr_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \B|ctl|addr_reg[6]~feeder_combout\,
	clrn => \psw[0]~input_o\,
	ena => \tsw[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|ctl|addr_reg\(6));

-- Location: FF_X82_Y11_N5
\B|ctl|addr_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \addr[7]~7_combout\,
	clrn => \psw[0]~input_o\,
	ena => \tsw[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|ctl|addr_reg\(7));

-- Location: LCCOMB_X82_Y11_N2
\addr[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \addr[8]~8_combout\ = (\C|mc1|addr_reg\(8) & \tsw[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C|mc1|addr_reg\(8),
	datad => \tsw[16]~input_o\,
	combout => \addr[8]~8_combout\);

-- Location: FF_X82_Y11_N3
\B|ctl|addr_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \addr[8]~8_combout\,
	clrn => \psw[0]~input_o\,
	ena => \tsw[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|ctl|addr_reg\(8));

-- Location: LCCOMB_X72_Y11_N30
\addr[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \addr[9]~9_combout\ = (\tsw[16]~input_o\ & \C|mc1|addr_reg\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tsw[16]~input_o\,
	datad => \C|mc1|addr_reg\(9),
	combout => \addr[9]~9_combout\);

-- Location: FF_X72_Y11_N31
\B|ctl|addr_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \addr[9]~9_combout\,
	clrn => \psw[0]~input_o\,
	ena => \tsw[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|ctl|addr_reg\(9));

-- Location: LCCOMB_X72_Y11_N12
\addr[10]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \addr[10]~10_combout\ = (\C|mc1|addr_reg\(10) & \tsw[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C|mc1|addr_reg\(10),
	datac => \tsw[16]~input_o\,
	combout => \addr[10]~10_combout\);

-- Location: FF_X72_Y11_N13
\B|ctl|addr_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \addr[10]~10_combout\,
	clrn => \psw[0]~input_o\,
	ena => \tsw[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|ctl|addr_reg\(10));

-- Location: LCCOMB_X72_Y11_N6
\addr[11]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \addr[11]~11_combout\ = (\C|mc1|addr_reg\(11) & \tsw[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C|mc1|addr_reg\(11),
	datac => \tsw[16]~input_o\,
	combout => \addr[11]~11_combout\);

-- Location: FF_X72_Y11_N7
\B|ctl|addr_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \addr[11]~11_combout\,
	clrn => \psw[0]~input_o\,
	ena => \tsw[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|ctl|addr_reg\(11));

-- Location: LCCOMB_X72_Y11_N24
\addr[12]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \addr[12]~12_combout\ = (\tsw[16]~input_o\ & \C|mc1|addr_reg\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tsw[16]~input_o\,
	datad => \C|mc1|addr_reg\(12),
	combout => \addr[12]~12_combout\);

-- Location: FF_X72_Y11_N25
\B|ctl|addr_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \addr[12]~12_combout\,
	clrn => \psw[0]~input_o\,
	ena => \tsw[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|ctl|addr_reg\(12));

-- Location: LCCOMB_X77_Y11_N0
\addr[13]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \addr[13]~13_combout\ = (\tsw[16]~input_o\ & \C|mc1|addr_reg\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[16]~input_o\,
	datac => \C|mc1|addr_reg\(13),
	combout => \addr[13]~13_combout\);

-- Location: FF_X77_Y11_N1
\B|ctl|addr_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \addr[13]~13_combout\,
	clrn => \psw[0]~input_o\,
	ena => \tsw[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|ctl|addr_reg\(13));

-- Location: LCCOMB_X72_Y11_N18
\addr[14]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \addr[14]~14_combout\ = (\tsw[16]~input_o\ & \C|mc1|addr_reg\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tsw[16]~input_o\,
	datad => \C|mc1|addr_reg\(14),
	combout => \addr[14]~14_combout\);

-- Location: FF_X72_Y11_N19
\B|ctl|addr_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \addr[14]~14_combout\,
	clrn => \psw[0]~input_o\,
	ena => \tsw[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|ctl|addr_reg\(14));

-- Location: LCCOMB_X72_Y11_N20
\addr[15]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \addr[15]~15_combout\ = (\tsw[16]~input_o\ & \C|mc1|addr_reg\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tsw[16]~input_o\,
	datad => \C|mc1|addr_reg\(15),
	combout => \addr[15]~15_combout\);

-- Location: FF_X72_Y11_N21
\B|ctl|addr_reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \addr[15]~15_combout\,
	clrn => \psw[0]~input_o\,
	ena => \tsw[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|ctl|addr_reg\(15));

-- Location: LCCOMB_X72_Y11_N26
\addr[16]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \addr[16]~16_combout\ = (\tsw[16]~input_o\ & \C|mc1|addr_reg\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tsw[16]~input_o\,
	datad => \C|mc1|addr_reg\(16),
	combout => \addr[16]~16_combout\);

-- Location: FF_X72_Y11_N27
\B|ctl|addr_reg[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \addr[16]~16_combout\,
	clrn => \psw[0]~input_o\,
	ena => \tsw[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|ctl|addr_reg\(16));

-- Location: LCCOMB_X72_Y11_N4
\addr[17]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \addr[17]~17_combout\ = (\tsw[16]~input_o\ & \C|mc1|addr_reg\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tsw[16]~input_o\,
	datad => \C|mc1|addr_reg\(17),
	combout => \addr[17]~17_combout\);

-- Location: FF_X72_Y11_N5
\B|ctl|addr_reg[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \addr[17]~17_combout\,
	clrn => \psw[0]~input_o\,
	ena => \tsw[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|ctl|addr_reg\(17));

-- Location: LCCOMB_X72_Y11_N22
\addr[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \addr[18]~18_combout\ = (\tsw[16]~input_o\ & \C|mc1|addr_reg\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tsw[16]~input_o\,
	datad => \C|mc1|addr_reg\(18),
	combout => \addr[18]~18_combout\);

-- Location: FF_X72_Y11_N23
\B|ctl|addr_reg[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \addr[18]~18_combout\,
	clrn => \psw[0]~input_o\,
	ena => \tsw[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|ctl|addr_reg\(18));

-- Location: LCCOMB_X77_Y11_N22
\addr[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \addr[19]~19_combout\ = (\tsw[16]~input_o\ & \C|mc1|addr_reg\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[16]~input_o\,
	datad => \C|mc1|addr_reg\(19),
	combout => \addr[19]~19_combout\);

-- Location: FF_X77_Y11_N23
\B|ctl|addr_reg[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \addr[19]~19_combout\,
	clrn => \psw[0]~input_o\,
	ena => \tsw[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|ctl|addr_reg\(19));

-- Location: LCCOMB_X79_Y7_N8
\B|ctl|we_reg~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|ctl|we_reg~feeder_combout\ = \B|ctl|nextstate.re~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \B|ctl|nextstate.re~0_combout\,
	combout => \B|ctl|we_reg~feeder_combout\);

-- Location: FF_X79_Y7_N9
\B|ctl|we_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \B|ctl|we_reg~feeder_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|ctl|we_reg~q\);

-- Location: LCCOMB_X79_Y7_N14
\B|ctl|oe_reg~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|ctl|oe_reg~feeder_combout\ = \B|ctl|nextstate.re~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \B|ctl|nextstate.re~0_combout\,
	combout => \B|ctl|oe_reg~feeder_combout\);

-- Location: FF_X79_Y7_N15
\B|ctl|oe_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \B|ctl|oe_reg~feeder_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|ctl|oe_reg~q\);

-- Location: LCCOMB_X79_Y15_N20
\A|lc1|Selector46~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector46~2_combout\ = (\A|lc1|Add0~60_combout\) # ((!\A|lc1|busy~8_combout\ & (!\A|lc1|LessThan4~2_combout\ & !\A|lc1|LessThan2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|busy~8_combout\,
	datab => \A|lc1|LessThan4~2_combout\,
	datac => \A|lc1|LessThan2~2_combout\,
	datad => \A|lc1|Add0~60_combout\,
	combout => \A|lc1|Selector46~2_combout\);

-- Location: LCCOMB_X79_Y14_N22
\A|lc1|Selector46~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector46~3_combout\ = (\A|lc1|Selector46~2_combout\ & ((\A|lc1|LessThan7~3_combout\) # ((\A|lc1|lcd_en~q\ & !\A|lc1|LessThan8~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|lcd_en~q\,
	datab => \A|lc1|LessThan8~5_combout\,
	datac => \A|lc1|LessThan7~3_combout\,
	datad => \A|lc1|Selector46~2_combout\,
	combout => \A|lc1|Selector46~3_combout\);

-- Location: LCCOMB_X79_Y15_N16
\A|lc1|Selector46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector46~0_combout\ = (\A|lc1|LessThan1~2_combout\) # ((!\A|lc1|LessThan2~2_combout\ & \A|lc1|LessThan3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|LessThan1~2_combout\,
	datab => \A|lc1|LessThan2~2_combout\,
	datac => \A|lc1|LessThan3~2_combout\,
	combout => \A|lc1|Selector46~0_combout\);

-- Location: LCCOMB_X79_Y15_N30
\A|lc1|Selector46~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector46~1_combout\ = (\A|lc1|Add0~62_combout\) # ((!\A|lc1|Add0~60_combout\ & \A|lc1|Selector46~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|lc1|Add0~62_combout\,
	datac => \A|lc1|Add0~60_combout\,
	datad => \A|lc1|Selector46~0_combout\,
	combout => \A|lc1|Selector46~1_combout\);

-- Location: LCCOMB_X79_Y15_N2
\A|lc1|Selector46~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector46~4_combout\ = (!\A|lc1|Add0~60_combout\ & (!\A|lc1|LessThan4~2_combout\ & (!\A|lc1|LessThan2~2_combout\ & \A|lc1|LessThan5~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Add0~60_combout\,
	datab => \A|lc1|LessThan4~2_combout\,
	datac => \A|lc1|LessThan2~2_combout\,
	datad => \A|lc1|LessThan5~9_combout\,
	combout => \A|lc1|Selector46~4_combout\);

-- Location: LCCOMB_X79_Y14_N20
\A|lc1|Selector46~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector46~9_combout\ = (!\A|lc1|state.send~q\ & ((\A|lc1|Selector46~3_combout\) # ((\A|lc1|Selector46~1_combout\) # (\A|lc1|Selector46~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Selector46~3_combout\,
	datab => \A|lc1|state.send~q\,
	datac => \A|lc1|Selector46~1_combout\,
	datad => \A|lc1|Selector46~4_combout\,
	combout => \A|lc1|Selector46~9_combout\);

-- Location: LCCOMB_X79_Y14_N26
\A|lc1|Selector46~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector46~10_combout\ = (!\A|lc1|state.send~q\ & ((\A|lc1|state.init~q\ & ((\A|lc1|Selector46~9_combout\))) # (!\A|lc1|state.init~q\ & (\A|lc1|lcd_en~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|state.init~q\,
	datab => \A|lc1|state.send~q\,
	datac => \A|lc1|lcd_en~q\,
	datad => \A|lc1|Selector46~9_combout\,
	combout => \A|lc1|Selector46~10_combout\);

-- Location: LCCOMB_X85_Y13_N26
\A|lc1|LessThan12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan12~0_combout\ = (!\A|lc1|count\(11) & (!\A|lc1|count\(21) & (!\A|lc1|count\(18) & \A|lc1|LessThan9~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|count\(11),
	datab => \A|lc1|count\(21),
	datac => \A|lc1|count\(18),
	datad => \A|lc1|LessThan9~3_combout\,
	combout => \A|lc1|LessThan12~0_combout\);

-- Location: LCCOMB_X85_Y14_N14
\A|lc1|LessThan10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan10~3_combout\ = (!\A|lc1|count\(7) & (!\A|lc1|count\(9) & (!\A|lc1|count\(8) & !\A|lc1|count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|count\(7),
	datab => \A|lc1|count\(9),
	datac => \A|lc1|count\(8),
	datad => \A|lc1|count\(6),
	combout => \A|lc1|LessThan10~3_combout\);

-- Location: LCCOMB_X86_Y12_N22
\A|lc1|LessThan10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan10~1_combout\ = (\A|lc1|count\(5) & \A|lc1|count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|lc1|count\(5),
	datac => \A|lc1|count\(4),
	combout => \A|lc1|LessThan10~1_combout\);

-- Location: LCCOMB_X86_Y12_N30
\A|lc1|LessThan10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan10~2_combout\ = ((!\A|lc1|count\(3) & (!\A|lc1|count\(1) & !\A|lc1|count\(2)))) # (!\A|lc1|LessThan10~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|LessThan10~1_combout\,
	datab => \A|lc1|count\(3),
	datac => \A|lc1|count\(1),
	datad => \A|lc1|count\(2),
	combout => \A|lc1|LessThan10~2_combout\);

-- Location: LCCOMB_X85_Y14_N20
\A|lc1|LessThan10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan10~4_combout\ = (!\A|lc1|count\(10) & (\A|lc1|LessThan10~3_combout\ & (\A|lc1|LessThan10~2_combout\ & \A|lc1|LessThan12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|count\(10),
	datab => \A|lc1|LessThan10~3_combout\,
	datac => \A|lc1|LessThan10~2_combout\,
	datad => \A|lc1|LessThan12~0_combout\,
	combout => \A|lc1|LessThan10~4_combout\);

-- Location: LCCOMB_X86_Y12_N24
\A|lc1|LessThan9~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan9~10_combout\ = (!\A|lc1|count\(5) & (!\A|lc1|count\(4) & !\A|lc1|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|lc1|count\(5),
	datac => \A|lc1|count\(4),
	datad => \A|lc1|count\(3),
	combout => \A|lc1|LessThan9~10_combout\);

-- Location: LCCOMB_X86_Y12_N10
\A|lc1|LessThan12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan12~1_combout\ = ((\A|lc1|LessThan9~10_combout\ & ((!\A|lc1|count\(2)) # (!\A|lc1|count\(1))))) # (!\A|lc1|count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|count\(6),
	datab => \A|lc1|LessThan9~10_combout\,
	datac => \A|lc1|count\(1),
	datad => \A|lc1|count\(2),
	combout => \A|lc1|LessThan12~1_combout\);

-- Location: LCCOMB_X85_Y14_N16
\A|lc1|LessThan12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan12~2_combout\ = (!\A|lc1|count\(9) & (((!\A|lc1|count\(7) & \A|lc1|LessThan12~1_combout\)) # (!\A|lc1|count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|count\(7),
	datab => \A|lc1|count\(9),
	datac => \A|lc1|count\(8),
	datad => \A|lc1|LessThan12~1_combout\,
	combout => \A|lc1|LessThan12~2_combout\);

-- Location: LCCOMB_X85_Y14_N10
\A|lc1|Selector46~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector46~6_combout\ = (!\A|lc1|LessThan10~4_combout\ & (((\A|lc1|count\(10) & !\A|lc1|LessThan12~2_combout\)) # (!\A|lc1|LessThan12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|LessThan12~0_combout\,
	datab => \A|lc1|LessThan10~4_combout\,
	datac => \A|lc1|count\(10),
	datad => \A|lc1|LessThan12~2_combout\,
	combout => \A|lc1|Selector46~6_combout\);

-- Location: LCCOMB_X85_Y14_N26
\A|lc1|LessThan9~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan9~9_combout\ = (\A|lc1|LessThan9~4_combout\ & (\A|lc1|LessThan9~7_combout\ & \A|lc1|LessThan9~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|lc1|LessThan9~4_combout\,
	datac => \A|lc1|LessThan9~7_combout\,
	datad => \A|lc1|LessThan9~8_combout\,
	combout => \A|lc1|LessThan9~9_combout\);

-- Location: LCCOMB_X86_Y12_N16
\A|lc1|LessThan11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan11~0_combout\ = (!\A|lc1|count\(6) & (((!\A|lc1|count\(2)) # (!\A|lc1|LessThan10~1_combout\)) # (!\A|lc1|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|count\(6),
	datab => \A|lc1|count\(3),
	datac => \A|lc1|LessThan10~1_combout\,
	datad => \A|lc1|count\(2),
	combout => \A|lc1|LessThan11~0_combout\);

-- Location: LCCOMB_X85_Y14_N8
\A|lc1|LessThan11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan11~1_combout\ = ((!\A|lc1|count\(8) & ((\A|lc1|LessThan11~0_combout\) # (!\A|lc1|count\(7))))) # (!\A|lc1|count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|count\(7),
	datab => \A|lc1|count\(9),
	datac => \A|lc1|count\(8),
	datad => \A|lc1|LessThan11~0_combout\,
	combout => \A|lc1|LessThan11~1_combout\);

-- Location: LCCOMB_X85_Y14_N0
\A|lc1|LessThan10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan10~0_combout\ = (!\A|lc1|count\(11) & (!\A|lc1|count\(10) & \A|lc1|LessThan9~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|lc1|count\(11),
	datac => \A|lc1|count\(10),
	datad => \A|lc1|LessThan9~4_combout\,
	combout => \A|lc1|LessThan10~0_combout\);

-- Location: LCCOMB_X85_Y14_N2
\A|lc1|Selector46~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector46~5_combout\ = (\A|lc1|LessThan9~9_combout\ & (!\A|lc1|LessThan10~4_combout\ & (\A|lc1|LessThan11~1_combout\ & \A|lc1|LessThan10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|LessThan9~9_combout\,
	datab => \A|lc1|LessThan10~4_combout\,
	datac => \A|lc1|LessThan11~1_combout\,
	datad => \A|lc1|LessThan10~0_combout\,
	combout => \A|lc1|Selector46~5_combout\);

-- Location: LCCOMB_X85_Y14_N24
\A|lc1|Selector46~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector46~7_combout\ = (\A|lc1|Selector46~5_combout\) # ((\A|lc1|lcd_en~q\ & ((\A|lc1|Selector46~6_combout\) # (!\A|lc1|LessThan9~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Selector46~6_combout\,
	datab => \A|lc1|Selector46~5_combout\,
	datac => \A|lc1|LessThan9~9_combout\,
	datad => \A|lc1|lcd_en~q\,
	combout => \A|lc1|Selector46~7_combout\);

-- Location: LCCOMB_X79_Y14_N14
\A|lc1|Selector46~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector46~8_combout\ = (\A|lc1|Selector46~10_combout\) # ((!\A|lc1|count\(31) & (\A|lc1|state.send~q\ & \A|lc1|Selector46~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|count\(31),
	datab => \A|lc1|state.send~q\,
	datac => \A|lc1|Selector46~10_combout\,
	datad => \A|lc1|Selector46~7_combout\,
	combout => \A|lc1|Selector46~8_combout\);

-- Location: FF_X79_Y14_N15
\A|lc1|lcd_en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|lc1|Selector46~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|lcd_en~q\);

-- Location: LCCOMB_X79_Y10_N24
\A|ul1|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector0~0_combout\ = (!\A|ul1|Equal2~3_combout\ & (\A|ul1|Selector9~0_combout\ & (\A|ul1|data_write\(9) & \A|ul1|WideNor0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal2~3_combout\,
	datab => \A|ul1|Selector9~0_combout\,
	datac => \A|ul1|data_write\(9),
	datad => \A|ul1|WideNor0~3_combout\,
	combout => \A|ul1|Selector0~0_combout\);

-- Location: LCCOMB_X79_Y10_N30
\A|ul1|Selector9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector9~1_combout\ = ((\A|ul1|WideNor1~5_combout\ & (!\A|ul1|Equal19~1_combout\ & \A|ul1|data_write\(9)))) # (!\A|ul1|Selector9~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|WideNor1~5_combout\,
	datab => \A|ul1|Equal19~1_combout\,
	datac => \A|ul1|data_write\(9),
	datad => \A|ul1|Selector9~0_combout\,
	combout => \A|ul1|Selector9~1_combout\);

-- Location: LCCOMB_X79_Y10_N14
\A|ul1|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector0~1_combout\ = ((!\A|ul1|WideNor0~3_combout\) # (!\A|ul1|WideNor1~3_combout\)) # (!\A|ul1|WideNor1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|WideNor1~4_combout\,
	datac => \A|ul1|WideNor1~3_combout\,
	datad => \A|ul1|WideNor0~3_combout\,
	combout => \A|ul1|Selector0~1_combout\);

-- Location: LCCOMB_X79_Y10_N4
\A|ul1|data_write~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|data_write~14_combout\ = (\tsw[16]~input_o\ & ((\A|ul1|Selector0~0_combout\) # ((\A|ul1|Selector0~1_combout\)))) # (!\tsw[16]~input_o\ & (((\A|ul1|Selector9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[16]~input_o\,
	datab => \A|ul1|Selector0~0_combout\,
	datac => \A|ul1|Selector9~1_combout\,
	datad => \A|ul1|Selector0~1_combout\,
	combout => \A|ul1|data_write~14_combout\);

-- Location: FF_X79_Y10_N5
\A|ul1|data_write[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ul1|data_write~14_combout\,
	clrn => \A|df1|q\(21),
	ena => \A|ul1|data_write[9]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|data_write\(9));

-- Location: LCCOMB_X79_Y14_N2
\A|lc1|lcd_rs~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|lcd_rs~0_combout\ = (\A|lc1|lcd_rs~q\ & ((\A|lc1|state.power~q\ & (!\A|lc1|state.ready~q\)) # (!\A|lc1|state.power~q\ & ((\A|lc1|LessThan0~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|state.power~q\,
	datab => \A|lc1|state.ready~q\,
	datac => \A|lc1|LessThan0~6_combout\,
	datad => \A|lc1|lcd_rs~q\,
	combout => \A|lc1|lcd_rs~0_combout\);

-- Location: LCCOMB_X79_Y14_N0
\A|lc1|lcd_rs~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|lcd_rs~1_combout\ = (\A|lc1|lcd_rs~0_combout\) # ((\A|lc1|state.power~q\ & (\A|lc1|Selector35~2_combout\ & \A|ul1|data_write\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|state.power~q\,
	datab => \A|lc1|Selector35~2_combout\,
	datac => \A|ul1|data_write\(9),
	datad => \A|lc1|lcd_rs~0_combout\,
	combout => \A|lc1|lcd_rs~1_combout\);

-- Location: FF_X79_Y14_N1
\A|lc1|lcd_rs\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|lc1|lcd_rs~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|lcd_rs~q\);

-- Location: LCCOMB_X77_Y7_N20
\dp11|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp11|Mux6~0_combout\ = (\addr[2]~2_combout\ & (!\addr[1]~1_combout\ & (\addr[0]~0_combout\ $ (!\addr[3]~3_combout\)))) # (!\addr[2]~2_combout\ & (\addr[0]~0_combout\ & (\addr[1]~1_combout\ $ (!\addr[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[1]~1_combout\,
	datab => \addr[0]~0_combout\,
	datac => \addr[2]~2_combout\,
	datad => \addr[3]~3_combout\,
	combout => \dp11|Mux6~0_combout\);

-- Location: LCCOMB_X72_Y11_N28
\dp11|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp11|Mux5~0_combout\ = (\addr[3]~3_combout\ & ((\addr[0]~0_combout\ & ((\addr[1]~1_combout\))) # (!\addr[0]~0_combout\ & (\addr[2]~2_combout\)))) # (!\addr[3]~3_combout\ & (\addr[2]~2_combout\ & (\addr[0]~0_combout\ $ (\addr[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[3]~3_combout\,
	datab => \addr[2]~2_combout\,
	datac => \addr[0]~0_combout\,
	datad => \addr[1]~1_combout\,
	combout => \dp11|Mux5~0_combout\);

-- Location: LCCOMB_X72_Y11_N2
\dp11|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp11|Mux4~0_combout\ = (\addr[3]~3_combout\ & (\addr[2]~2_combout\ & ((\addr[1]~1_combout\) # (!\addr[0]~0_combout\)))) # (!\addr[3]~3_combout\ & (!\addr[2]~2_combout\ & (!\addr[0]~0_combout\ & \addr[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[3]~3_combout\,
	datab => \addr[2]~2_combout\,
	datac => \addr[0]~0_combout\,
	datad => \addr[1]~1_combout\,
	combout => \dp11|Mux4~0_combout\);

-- Location: LCCOMB_X77_Y7_N14
\dp11|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp11|Mux3~0_combout\ = (\addr[0]~0_combout\ & (\addr[1]~1_combout\ $ ((!\addr[2]~2_combout\)))) # (!\addr[0]~0_combout\ & ((\addr[1]~1_combout\ & (!\addr[2]~2_combout\ & \addr[3]~3_combout\)) # (!\addr[1]~1_combout\ & (\addr[2]~2_combout\ & 
-- !\addr[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[1]~1_combout\,
	datab => \addr[0]~0_combout\,
	datac => \addr[2]~2_combout\,
	datad => \addr[3]~3_combout\,
	combout => \dp11|Mux3~0_combout\);

-- Location: LCCOMB_X72_Y11_N16
\dp11|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp11|Mux2~0_combout\ = (\addr[1]~1_combout\ & (!\addr[3]~3_combout\ & ((\addr[0]~0_combout\)))) # (!\addr[1]~1_combout\ & ((\addr[2]~2_combout\ & (!\addr[3]~3_combout\)) # (!\addr[2]~2_combout\ & ((\addr[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[3]~3_combout\,
	datab => \addr[2]~2_combout\,
	datac => \addr[0]~0_combout\,
	datad => \addr[1]~1_combout\,
	combout => \dp11|Mux2~0_combout\);

-- Location: LCCOMB_X77_Y7_N24
\dp11|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp11|Mux1~0_combout\ = (\addr[1]~1_combout\ & (!\addr[3]~3_combout\ & ((\addr[0]~0_combout\) # (!\addr[2]~2_combout\)))) # (!\addr[1]~1_combout\ & (\addr[0]~0_combout\ & (\addr[2]~2_combout\ $ (!\addr[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[1]~1_combout\,
	datab => \addr[0]~0_combout\,
	datac => \addr[2]~2_combout\,
	datad => \addr[3]~3_combout\,
	combout => \dp11|Mux1~0_combout\);

-- Location: LCCOMB_X77_Y7_N22
\dp11|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp11|Mux0~0_combout\ = (\addr[0]~0_combout\ & ((\addr[3]~3_combout\) # (\addr[1]~1_combout\ $ (\addr[2]~2_combout\)))) # (!\addr[0]~0_combout\ & ((\addr[1]~1_combout\) # (\addr[2]~2_combout\ $ (\addr[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[1]~1_combout\,
	datab => \addr[0]~0_combout\,
	datac => \addr[2]~2_combout\,
	datad => \addr[3]~3_combout\,
	combout => \dp11|Mux0~0_combout\);

-- Location: LCCOMB_X76_Y7_N28
\dp12|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp12|Mux6~0_combout\ = (\addr[6]~6_combout\ & (!\addr[5]~5_combout\ & (\addr[4]~4_combout\ $ (!\addr[7]~7_combout\)))) # (!\addr[6]~6_combout\ & (\addr[4]~4_combout\ & (\addr[5]~5_combout\ $ (!\addr[7]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[5]~5_combout\,
	datab => \addr[6]~6_combout\,
	datac => \addr[4]~4_combout\,
	datad => \addr[7]~7_combout\,
	combout => \dp12|Mux6~0_combout\);

-- Location: LCCOMB_X76_Y7_N2
\dp12|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp12|Mux5~0_combout\ = (\addr[5]~5_combout\ & ((\addr[4]~4_combout\ & ((\addr[7]~7_combout\))) # (!\addr[4]~4_combout\ & (\addr[6]~6_combout\)))) # (!\addr[5]~5_combout\ & (\addr[6]~6_combout\ & (\addr[4]~4_combout\ $ (\addr[7]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[5]~5_combout\,
	datab => \addr[6]~6_combout\,
	datac => \addr[4]~4_combout\,
	datad => \addr[7]~7_combout\,
	combout => \dp12|Mux5~0_combout\);

-- Location: LCCOMB_X76_Y7_N24
\dp12|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp12|Mux4~0_combout\ = (\addr[6]~6_combout\ & (\addr[7]~7_combout\ & ((\addr[5]~5_combout\) # (!\addr[4]~4_combout\)))) # (!\addr[6]~6_combout\ & (\addr[5]~5_combout\ & (!\addr[4]~4_combout\ & !\addr[7]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[5]~5_combout\,
	datab => \addr[6]~6_combout\,
	datac => \addr[4]~4_combout\,
	datad => \addr[7]~7_combout\,
	combout => \dp12|Mux4~0_combout\);

-- Location: LCCOMB_X76_Y7_N30
\dp12|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp12|Mux3~0_combout\ = (\addr[4]~4_combout\ & (\addr[5]~5_combout\ $ ((!\addr[6]~6_combout\)))) # (!\addr[4]~4_combout\ & ((\addr[5]~5_combout\ & (!\addr[6]~6_combout\ & \addr[7]~7_combout\)) # (!\addr[5]~5_combout\ & (\addr[6]~6_combout\ & 
-- !\addr[7]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[5]~5_combout\,
	datab => \addr[6]~6_combout\,
	datac => \addr[4]~4_combout\,
	datad => \addr[7]~7_combout\,
	combout => \dp12|Mux3~0_combout\);

-- Location: LCCOMB_X76_Y7_N20
\dp12|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp12|Mux2~0_combout\ = (\addr[5]~5_combout\ & (((\addr[4]~4_combout\ & !\addr[7]~7_combout\)))) # (!\addr[5]~5_combout\ & ((\addr[6]~6_combout\ & ((!\addr[7]~7_combout\))) # (!\addr[6]~6_combout\ & (\addr[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[5]~5_combout\,
	datab => \addr[6]~6_combout\,
	datac => \addr[4]~4_combout\,
	datad => \addr[7]~7_combout\,
	combout => \dp12|Mux2~0_combout\);

-- Location: LCCOMB_X76_Y7_N14
\dp12|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp12|Mux1~0_combout\ = (\addr[5]~5_combout\ & (!\addr[7]~7_combout\ & ((\addr[4]~4_combout\) # (!\addr[6]~6_combout\)))) # (!\addr[5]~5_combout\ & (\addr[4]~4_combout\ & (\addr[6]~6_combout\ $ (!\addr[7]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[5]~5_combout\,
	datab => \addr[6]~6_combout\,
	datac => \addr[4]~4_combout\,
	datad => \addr[7]~7_combout\,
	combout => \dp12|Mux1~0_combout\);

-- Location: LCCOMB_X76_Y7_N12
\dp12|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp12|Mux0~0_combout\ = (\addr[4]~4_combout\ & ((\addr[7]~7_combout\) # (\addr[5]~5_combout\ $ (\addr[6]~6_combout\)))) # (!\addr[4]~4_combout\ & ((\addr[5]~5_combout\) # (\addr[6]~6_combout\ $ (\addr[7]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[5]~5_combout\,
	datab => \addr[6]~6_combout\,
	datac => \addr[4]~4_combout\,
	datad => \addr[7]~7_combout\,
	combout => \dp12|Mux0~0_combout\);

-- Location: LCCOMB_X80_Y7_N12
\dp21|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp21|Mux6~0_combout\ = (\data_write[3]~3_combout\ & (\data_write[0]~0_combout\ & (\data_write[2]~2_combout\ $ (\data_write[1]~1_combout\)))) # (!\data_write[3]~3_combout\ & (!\data_write[1]~1_combout\ & (\data_write[0]~0_combout\ $ 
-- (\data_write[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_write[0]~0_combout\,
	datab => \data_write[3]~3_combout\,
	datac => \data_write[2]~2_combout\,
	datad => \data_write[1]~1_combout\,
	combout => \dp21|Mux6~0_combout\);

-- Location: LCCOMB_X80_Y7_N2
\dp21|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp21|Mux5~0_combout\ = (\data_write[3]~3_combout\ & ((\data_write[0]~0_combout\ & ((\data_write[1]~1_combout\))) # (!\data_write[0]~0_combout\ & (\data_write[2]~2_combout\)))) # (!\data_write[3]~3_combout\ & (\data_write[2]~2_combout\ & 
-- (\data_write[0]~0_combout\ $ (\data_write[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_write[0]~0_combout\,
	datab => \data_write[3]~3_combout\,
	datac => \data_write[2]~2_combout\,
	datad => \data_write[1]~1_combout\,
	combout => \dp21|Mux5~0_combout\);

-- Location: LCCOMB_X80_Y7_N20
\dp21|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp21|Mux4~0_combout\ = (\data_write[3]~3_combout\ & (\data_write[2]~2_combout\ & ((\data_write[1]~1_combout\) # (!\data_write[0]~0_combout\)))) # (!\data_write[3]~3_combout\ & (!\data_write[0]~0_combout\ & (!\data_write[2]~2_combout\ & 
-- \data_write[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_write[0]~0_combout\,
	datab => \data_write[3]~3_combout\,
	datac => \data_write[2]~2_combout\,
	datad => \data_write[1]~1_combout\,
	combout => \dp21|Mux4~0_combout\);

-- Location: LCCOMB_X80_Y7_N26
\dp21|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp21|Mux3~0_combout\ = (\data_write[0]~0_combout\ & ((\data_write[2]~2_combout\ $ (!\data_write[1]~1_combout\)))) # (!\data_write[0]~0_combout\ & ((\data_write[3]~3_combout\ & (!\data_write[2]~2_combout\ & \data_write[1]~1_combout\)) # 
-- (!\data_write[3]~3_combout\ & (\data_write[2]~2_combout\ & !\data_write[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_write[0]~0_combout\,
	datab => \data_write[3]~3_combout\,
	datac => \data_write[2]~2_combout\,
	datad => \data_write[1]~1_combout\,
	combout => \dp21|Mux3~0_combout\);

-- Location: LCCOMB_X80_Y7_N4
\dp21|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp21|Mux2~0_combout\ = (\data_write[1]~1_combout\ & (\data_write[0]~0_combout\ & (!\data_write[3]~3_combout\))) # (!\data_write[1]~1_combout\ & ((\data_write[2]~2_combout\ & ((!\data_write[3]~3_combout\))) # (!\data_write[2]~2_combout\ & 
-- (\data_write[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_write[0]~0_combout\,
	datab => \data_write[3]~3_combout\,
	datac => \data_write[2]~2_combout\,
	datad => \data_write[1]~1_combout\,
	combout => \dp21|Mux2~0_combout\);

-- Location: LCCOMB_X80_Y7_N6
\dp21|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp21|Mux1~0_combout\ = (\data_write[0]~0_combout\ & (\data_write[3]~3_combout\ $ (((\data_write[1]~1_combout\) # (!\data_write[2]~2_combout\))))) # (!\data_write[0]~0_combout\ & (!\data_write[3]~3_combout\ & (!\data_write[2]~2_combout\ & 
-- \data_write[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_write[0]~0_combout\,
	datab => \data_write[3]~3_combout\,
	datac => \data_write[2]~2_combout\,
	datad => \data_write[1]~1_combout\,
	combout => \dp21|Mux1~0_combout\);

-- Location: LCCOMB_X80_Y7_N16
\dp21|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp21|Mux0~0_combout\ = (\data_write[0]~0_combout\ & ((\data_write[3]~3_combout\) # (\data_write[2]~2_combout\ $ (\data_write[1]~1_combout\)))) # (!\data_write[0]~0_combout\ & ((\data_write[1]~1_combout\) # (\data_write[3]~3_combout\ $ 
-- (\data_write[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_write[0]~0_combout\,
	datab => \data_write[3]~3_combout\,
	datac => \data_write[2]~2_combout\,
	datad => \data_write[1]~1_combout\,
	combout => \dp21|Mux0~0_combout\);

-- Location: LCCOMB_X81_Y7_N20
\dp22|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp22|Mux6~0_combout\ = (\data_write[6]~6_combout\ & (!\data_write[5]~5_combout\ & (\data_write[4]~4_combout\ $ (!\data_write[7]~7_combout\)))) # (!\data_write[6]~6_combout\ & (\data_write[4]~4_combout\ & (\data_write[5]~5_combout\ $ 
-- (!\data_write[7]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_write[5]~5_combout\,
	datab => \data_write[6]~6_combout\,
	datac => \data_write[4]~4_combout\,
	datad => \data_write[7]~7_combout\,
	combout => \dp22|Mux6~0_combout\);

-- Location: LCCOMB_X81_Y7_N18
\dp22|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp22|Mux5~0_combout\ = (\data_write[5]~5_combout\ & ((\data_write[4]~4_combout\ & ((\data_write[7]~7_combout\))) # (!\data_write[4]~4_combout\ & (\data_write[6]~6_combout\)))) # (!\data_write[5]~5_combout\ & (\data_write[6]~6_combout\ & 
-- (\data_write[4]~4_combout\ $ (\data_write[7]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_write[5]~5_combout\,
	datab => \data_write[6]~6_combout\,
	datac => \data_write[4]~4_combout\,
	datad => \data_write[7]~7_combout\,
	combout => \dp22|Mux5~0_combout\);

-- Location: LCCOMB_X81_Y7_N28
\dp22|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp22|Mux4~0_combout\ = (\data_write[7]~7_combout\ & (\data_write[6]~6_combout\ & ((\data_write[5]~5_combout\) # (!\data_write[4]~4_combout\)))) # (!\data_write[7]~7_combout\ & (!\data_write[6]~6_combout\ & (\data_write[5]~5_combout\ & 
-- !\data_write[4]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_write[7]~7_combout\,
	datab => \data_write[6]~6_combout\,
	datac => \data_write[5]~5_combout\,
	datad => \data_write[4]~4_combout\,
	combout => \dp22|Mux4~0_combout\);

-- Location: LCCOMB_X81_Y7_N14
\dp22|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp22|Mux3~0_combout\ = (\data_write[4]~4_combout\ & ((\data_write[6]~6_combout\ $ (!\data_write[5]~5_combout\)))) # (!\data_write[4]~4_combout\ & ((\data_write[7]~7_combout\ & (!\data_write[6]~6_combout\ & \data_write[5]~5_combout\)) # 
-- (!\data_write[7]~7_combout\ & (\data_write[6]~6_combout\ & !\data_write[5]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_write[7]~7_combout\,
	datab => \data_write[6]~6_combout\,
	datac => \data_write[5]~5_combout\,
	datad => \data_write[4]~4_combout\,
	combout => \dp22|Mux3~0_combout\);

-- Location: LCCOMB_X81_Y7_N24
\dp22|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp22|Mux2~0_combout\ = (\data_write[5]~5_combout\ & (!\data_write[7]~7_combout\ & ((\data_write[4]~4_combout\)))) # (!\data_write[5]~5_combout\ & ((\data_write[6]~6_combout\ & (!\data_write[7]~7_combout\)) # (!\data_write[6]~6_combout\ & 
-- ((\data_write[4]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_write[7]~7_combout\,
	datab => \data_write[6]~6_combout\,
	datac => \data_write[5]~5_combout\,
	datad => \data_write[4]~4_combout\,
	combout => \dp22|Mux2~0_combout\);

-- Location: LCCOMB_X81_Y7_N2
\dp22|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp22|Mux1~0_combout\ = (\data_write[6]~6_combout\ & (\data_write[4]~4_combout\ & (\data_write[7]~7_combout\ $ (\data_write[5]~5_combout\)))) # (!\data_write[6]~6_combout\ & (!\data_write[7]~7_combout\ & ((\data_write[5]~5_combout\) # 
-- (\data_write[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_write[7]~7_combout\,
	datab => \data_write[6]~6_combout\,
	datac => \data_write[5]~5_combout\,
	datad => \data_write[4]~4_combout\,
	combout => \dp22|Mux1~0_combout\);

-- Location: LCCOMB_X81_Y7_N16
\dp22|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp22|Mux0~0_combout\ = (\data_write[4]~4_combout\ & ((\data_write[7]~7_combout\) # (\data_write[6]~6_combout\ $ (\data_write[5]~5_combout\)))) # (!\data_write[4]~4_combout\ & ((\data_write[5]~5_combout\) # (\data_write[7]~7_combout\ $ 
-- (\data_write[6]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_write[7]~7_combout\,
	datab => \data_write[6]~6_combout\,
	datac => \data_write[5]~5_combout\,
	datad => \data_write[4]~4_combout\,
	combout => \dp22|Mux0~0_combout\);

-- Location: LCCOMB_X77_Y11_N10
\dp13|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp13|Mux6~0_combout\ = (\B|data_display[3]~3_combout\ & (\B|data_display[0]~0_combout\ & (\B|data_display[1]~1_combout\ $ (\B|data_display[2]~2_combout\)))) # (!\B|data_display[3]~3_combout\ & (!\B|data_display[1]~1_combout\ & 
-- (\B|data_display[0]~0_combout\ $ (\B|data_display[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B|data_display[3]~3_combout\,
	datab => \B|data_display[1]~1_combout\,
	datac => \B|data_display[0]~0_combout\,
	datad => \B|data_display[2]~2_combout\,
	combout => \dp13|Mux6~0_combout\);

-- Location: LCCOMB_X79_Y11_N0
\dp13|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp13|Mux5~0_combout\ = (\B|data_display[1]~1_combout\ & ((\B|data_display[0]~0_combout\ & ((\B|data_display[3]~3_combout\))) # (!\B|data_display[0]~0_combout\ & (\B|data_display[2]~2_combout\)))) # (!\B|data_display[1]~1_combout\ & 
-- (\B|data_display[2]~2_combout\ & (\B|data_display[3]~3_combout\ $ (\B|data_display[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B|data_display[2]~2_combout\,
	datab => \B|data_display[1]~1_combout\,
	datac => \B|data_display[3]~3_combout\,
	datad => \B|data_display[0]~0_combout\,
	combout => \dp13|Mux5~0_combout\);

-- Location: LCCOMB_X77_Y11_N28
\dp13|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp13|Mux4~0_combout\ = (\B|data_display[3]~3_combout\ & (\B|data_display[2]~2_combout\ & ((\B|data_display[1]~1_combout\) # (!\B|data_display[0]~0_combout\)))) # (!\B|data_display[3]~3_combout\ & (\B|data_display[1]~1_combout\ & 
-- (!\B|data_display[0]~0_combout\ & !\B|data_display[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B|data_display[3]~3_combout\,
	datab => \B|data_display[1]~1_combout\,
	datac => \B|data_display[0]~0_combout\,
	datad => \B|data_display[2]~2_combout\,
	combout => \dp13|Mux4~0_combout\);

-- Location: LCCOMB_X79_Y11_N10
\dp13|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp13|Mux3~0_combout\ = (\B|data_display[0]~0_combout\ & (\B|data_display[2]~2_combout\ $ ((!\B|data_display[1]~1_combout\)))) # (!\B|data_display[0]~0_combout\ & ((\B|data_display[2]~2_combout\ & (!\B|data_display[1]~1_combout\ & 
-- !\B|data_display[3]~3_combout\)) # (!\B|data_display[2]~2_combout\ & (\B|data_display[1]~1_combout\ & \B|data_display[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B|data_display[2]~2_combout\,
	datab => \B|data_display[1]~1_combout\,
	datac => \B|data_display[3]~3_combout\,
	datad => \B|data_display[0]~0_combout\,
	combout => \dp13|Mux3~0_combout\);

-- Location: LCCOMB_X79_Y11_N24
\dp13|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp13|Mux2~0_combout\ = (\B|data_display[1]~1_combout\ & (((!\B|data_display[3]~3_combout\ & \B|data_display[0]~0_combout\)))) # (!\B|data_display[1]~1_combout\ & ((\B|data_display[2]~2_combout\ & (!\B|data_display[3]~3_combout\)) # 
-- (!\B|data_display[2]~2_combout\ & ((\B|data_display[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B|data_display[2]~2_combout\,
	datab => \B|data_display[1]~1_combout\,
	datac => \B|data_display[3]~3_combout\,
	datad => \B|data_display[0]~0_combout\,
	combout => \dp13|Mux2~0_combout\);

-- Location: LCCOMB_X80_Y11_N0
\dp13|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp13|Mux1~0_combout\ = (\B|data_display[1]~1_combout\ & (!\B|data_display[3]~3_combout\ & ((\B|data_display[0]~0_combout\) # (!\B|data_display[2]~2_combout\)))) # (!\B|data_display[1]~1_combout\ & (\B|data_display[0]~0_combout\ & 
-- (\B|data_display[3]~3_combout\ $ (!\B|data_display[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B|data_display[1]~1_combout\,
	datab => \B|data_display[3]~3_combout\,
	datac => \B|data_display[0]~0_combout\,
	datad => \B|data_display[2]~2_combout\,
	combout => \dp13|Mux1~0_combout\);

-- Location: LCCOMB_X79_Y11_N26
\dp13|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp13|Mux0~0_combout\ = (\B|data_display[0]~0_combout\ & ((\B|data_display[3]~3_combout\) # (\B|data_display[2]~2_combout\ $ (\B|data_display[1]~1_combout\)))) # (!\B|data_display[0]~0_combout\ & ((\B|data_display[1]~1_combout\) # 
-- (\B|data_display[2]~2_combout\ $ (\B|data_display[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B|data_display[2]~2_combout\,
	datab => \B|data_display[1]~1_combout\,
	datac => \B|data_display[3]~3_combout\,
	datad => \B|data_display[0]~0_combout\,
	combout => \dp13|Mux0~0_combout\);

-- Location: LCCOMB_X114_Y25_N16
\dp23|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp23|Mux6~0_combout\ = (\B|data_display[6]~6_combout\ & (!\B|data_display[5]~5_combout\ & (\B|data_display[4]~4_combout\ $ (!\B|data_display[7]~7_combout\)))) # (!\B|data_display[6]~6_combout\ & (\B|data_display[4]~4_combout\ & 
-- (\B|data_display[5]~5_combout\ $ (!\B|data_display[7]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B|data_display[6]~6_combout\,
	datab => \B|data_display[5]~5_combout\,
	datac => \B|data_display[4]~4_combout\,
	datad => \B|data_display[7]~7_combout\,
	combout => \dp23|Mux6~0_combout\);

-- Location: LCCOMB_X114_Y25_N2
\dp23|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp23|Mux5~0_combout\ = (\B|data_display[5]~5_combout\ & ((\B|data_display[4]~4_combout\ & ((\B|data_display[7]~7_combout\))) # (!\B|data_display[4]~4_combout\ & (\B|data_display[6]~6_combout\)))) # (!\B|data_display[5]~5_combout\ & 
-- (\B|data_display[6]~6_combout\ & (\B|data_display[4]~4_combout\ $ (\B|data_display[7]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B|data_display[6]~6_combout\,
	datab => \B|data_display[5]~5_combout\,
	datac => \B|data_display[4]~4_combout\,
	datad => \B|data_display[7]~7_combout\,
	combout => \dp23|Mux5~0_combout\);

-- Location: LCCOMB_X114_Y25_N12
\dp23|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp23|Mux4~0_combout\ = (\B|data_display[6]~6_combout\ & (\B|data_display[7]~7_combout\ & ((\B|data_display[5]~5_combout\) # (!\B|data_display[4]~4_combout\)))) # (!\B|data_display[6]~6_combout\ & (\B|data_display[5]~5_combout\ & 
-- (!\B|data_display[4]~4_combout\ & !\B|data_display[7]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B|data_display[6]~6_combout\,
	datab => \B|data_display[5]~5_combout\,
	datac => \B|data_display[4]~4_combout\,
	datad => \B|data_display[7]~7_combout\,
	combout => \dp23|Mux4~0_combout\);

-- Location: LCCOMB_X114_Y25_N22
\dp23|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp23|Mux3~0_combout\ = (\B|data_display[4]~4_combout\ & (\B|data_display[6]~6_combout\ $ ((!\B|data_display[5]~5_combout\)))) # (!\B|data_display[4]~4_combout\ & ((\B|data_display[6]~6_combout\ & (!\B|data_display[5]~5_combout\ & 
-- !\B|data_display[7]~7_combout\)) # (!\B|data_display[6]~6_combout\ & (\B|data_display[5]~5_combout\ & \B|data_display[7]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B|data_display[6]~6_combout\,
	datab => \B|data_display[5]~5_combout\,
	datac => \B|data_display[4]~4_combout\,
	datad => \B|data_display[7]~7_combout\,
	combout => \dp23|Mux3~0_combout\);

-- Location: LCCOMB_X114_Y25_N8
\dp23|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp23|Mux2~0_combout\ = (\B|data_display[5]~5_combout\ & (((\B|data_display[4]~4_combout\ & !\B|data_display[7]~7_combout\)))) # (!\B|data_display[5]~5_combout\ & ((\B|data_display[6]~6_combout\ & ((!\B|data_display[7]~7_combout\))) # 
-- (!\B|data_display[6]~6_combout\ & (\B|data_display[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B|data_display[6]~6_combout\,
	datab => \B|data_display[5]~5_combout\,
	datac => \B|data_display[4]~4_combout\,
	datad => \B|data_display[7]~7_combout\,
	combout => \dp23|Mux2~0_combout\);

-- Location: LCCOMB_X114_Y25_N14
\dp23|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp23|Mux1~0_combout\ = (\B|data_display[6]~6_combout\ & (\B|data_display[4]~4_combout\ & (\B|data_display[5]~5_combout\ $ (\B|data_display[7]~7_combout\)))) # (!\B|data_display[6]~6_combout\ & (!\B|data_display[7]~7_combout\ & 
-- ((\B|data_display[5]~5_combout\) # (\B|data_display[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B|data_display[6]~6_combout\,
	datab => \B|data_display[5]~5_combout\,
	datac => \B|data_display[4]~4_combout\,
	datad => \B|data_display[7]~7_combout\,
	combout => \dp23|Mux1~0_combout\);

-- Location: LCCOMB_X114_Y25_N0
\dp23|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp23|Mux0~0_combout\ = (\B|data_display[4]~4_combout\ & ((\B|data_display[7]~7_combout\) # (\B|data_display[6]~6_combout\ $ (\B|data_display[5]~5_combout\)))) # (!\B|data_display[4]~4_combout\ & ((\B|data_display[5]~5_combout\) # 
-- (\B|data_display[6]~6_combout\ $ (\B|data_display[7]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B|data_display[6]~6_combout\,
	datab => \B|data_display[5]~5_combout\,
	datac => \B|data_display[4]~4_combout\,
	datad => \B|data_display[7]~7_combout\,
	combout => \dp23|Mux0~0_combout\);

-- Location: LCCOMB_X81_Y11_N16
\dp33|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp33|Mux6~0_combout\ = (\B|data_display[11]~11_combout\ & (\B|data_display[8]~8_combout\ & (\B|data_display[9]~9_combout\ $ (\B|data_display[10]~10_combout\)))) # (!\B|data_display[11]~11_combout\ & (!\B|data_display[9]~9_combout\ & 
-- (\B|data_display[10]~10_combout\ $ (\B|data_display[8]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B|data_display[9]~9_combout\,
	datab => \B|data_display[11]~11_combout\,
	datac => \B|data_display[10]~10_combout\,
	datad => \B|data_display[8]~8_combout\,
	combout => \dp33|Mux6~0_combout\);

-- Location: LCCOMB_X81_Y11_N14
\dp33|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp33|Mux5~0_combout\ = (\B|data_display[9]~9_combout\ & ((\B|data_display[8]~8_combout\ & (\B|data_display[11]~11_combout\)) # (!\B|data_display[8]~8_combout\ & ((\B|data_display[10]~10_combout\))))) # (!\B|data_display[9]~9_combout\ & 
-- (\B|data_display[10]~10_combout\ & (\B|data_display[11]~11_combout\ $ (\B|data_display[8]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B|data_display[9]~9_combout\,
	datab => \B|data_display[11]~11_combout\,
	datac => \B|data_display[10]~10_combout\,
	datad => \B|data_display[8]~8_combout\,
	combout => \dp33|Mux5~0_combout\);

-- Location: LCCOMB_X81_Y11_N12
\dp33|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp33|Mux4~0_combout\ = (\B|data_display[11]~11_combout\ & (\B|data_display[10]~10_combout\ & ((\B|data_display[9]~9_combout\) # (!\B|data_display[8]~8_combout\)))) # (!\B|data_display[11]~11_combout\ & (\B|data_display[9]~9_combout\ & 
-- (!\B|data_display[10]~10_combout\ & !\B|data_display[8]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B|data_display[9]~9_combout\,
	datab => \B|data_display[11]~11_combout\,
	datac => \B|data_display[10]~10_combout\,
	datad => \B|data_display[8]~8_combout\,
	combout => \dp33|Mux4~0_combout\);

-- Location: LCCOMB_X81_Y11_N10
\dp33|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp33|Mux3~0_combout\ = (\B|data_display[8]~8_combout\ & (\B|data_display[9]~9_combout\ $ (((!\B|data_display[10]~10_combout\))))) # (!\B|data_display[8]~8_combout\ & ((\B|data_display[9]~9_combout\ & (\B|data_display[11]~11_combout\ & 
-- !\B|data_display[10]~10_combout\)) # (!\B|data_display[9]~9_combout\ & (!\B|data_display[11]~11_combout\ & \B|data_display[10]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B|data_display[9]~9_combout\,
	datab => \B|data_display[11]~11_combout\,
	datac => \B|data_display[10]~10_combout\,
	datad => \B|data_display[8]~8_combout\,
	combout => \dp33|Mux3~0_combout\);

-- Location: LCCOMB_X81_Y11_N28
\dp33|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp33|Mux2~0_combout\ = (\B|data_display[9]~9_combout\ & (!\B|data_display[11]~11_combout\ & ((\B|data_display[8]~8_combout\)))) # (!\B|data_display[9]~9_combout\ & ((\B|data_display[10]~10_combout\ & (!\B|data_display[11]~11_combout\)) # 
-- (!\B|data_display[10]~10_combout\ & ((\B|data_display[8]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B|data_display[9]~9_combout\,
	datab => \B|data_display[11]~11_combout\,
	datac => \B|data_display[10]~10_combout\,
	datad => \B|data_display[8]~8_combout\,
	combout => \dp33|Mux2~0_combout\);

-- Location: LCCOMB_X81_Y11_N26
\dp33|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp33|Mux1~0_combout\ = (\B|data_display[9]~9_combout\ & (!\B|data_display[11]~11_combout\ & ((\B|data_display[8]~8_combout\) # (!\B|data_display[10]~10_combout\)))) # (!\B|data_display[9]~9_combout\ & (\B|data_display[8]~8_combout\ & 
-- (\B|data_display[11]~11_combout\ $ (!\B|data_display[10]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B|data_display[9]~9_combout\,
	datab => \B|data_display[11]~11_combout\,
	datac => \B|data_display[10]~10_combout\,
	datad => \B|data_display[8]~8_combout\,
	combout => \dp33|Mux1~0_combout\);

-- Location: LCCOMB_X81_Y11_N20
\dp33|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp33|Mux0~0_combout\ = (\B|data_display[8]~8_combout\ & ((\B|data_display[11]~11_combout\) # (\B|data_display[9]~9_combout\ $ (\B|data_display[10]~10_combout\)))) # (!\B|data_display[8]~8_combout\ & ((\B|data_display[9]~9_combout\) # 
-- (\B|data_display[11]~11_combout\ $ (\B|data_display[10]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B|data_display[9]~9_combout\,
	datab => \B|data_display[11]~11_combout\,
	datac => \B|data_display[10]~10_combout\,
	datad => \B|data_display[8]~8_combout\,
	combout => \dp33|Mux0~0_combout\);

-- Location: LCCOMB_X79_Y11_N4
\dp43|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp43|Mux6~0_combout\ = (\B|data_display[15]~15_combout\ & (\B|data_display[12]~12_combout\ & (\B|data_display[14]~14_combout\ $ (\B|data_display[13]~13_combout\)))) # (!\B|data_display[15]~15_combout\ & (!\B|data_display[13]~13_combout\ & 
-- (\B|data_display[14]~14_combout\ $ (\B|data_display[12]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B|data_display[15]~15_combout\,
	datab => \B|data_display[14]~14_combout\,
	datac => \B|data_display[12]~12_combout\,
	datad => \B|data_display[13]~13_combout\,
	combout => \dp43|Mux6~0_combout\);

-- Location: LCCOMB_X79_Y11_N22
\dp43|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp43|Mux5~0_combout\ = (\B|data_display[15]~15_combout\ & ((\B|data_display[12]~12_combout\ & ((\B|data_display[13]~13_combout\))) # (!\B|data_display[12]~12_combout\ & (\B|data_display[14]~14_combout\)))) # (!\B|data_display[15]~15_combout\ & 
-- (\B|data_display[14]~14_combout\ & (\B|data_display[12]~12_combout\ $ (\B|data_display[13]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B|data_display[15]~15_combout\,
	datab => \B|data_display[14]~14_combout\,
	datac => \B|data_display[12]~12_combout\,
	datad => \B|data_display[13]~13_combout\,
	combout => \dp43|Mux5~0_combout\);

-- Location: LCCOMB_X77_Y11_N6
\dp43|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp43|Mux4~0_combout\ = (\B|data_display[14]~14_combout\ & (\B|data_display[15]~15_combout\ & ((\B|data_display[13]~13_combout\) # (!\B|data_display[12]~12_combout\)))) # (!\B|data_display[14]~14_combout\ & (!\B|data_display[15]~15_combout\ & 
-- (\B|data_display[13]~13_combout\ & !\B|data_display[12]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B|data_display[14]~14_combout\,
	datab => \B|data_display[15]~15_combout\,
	datac => \B|data_display[13]~13_combout\,
	datad => \B|data_display[12]~12_combout\,
	combout => \dp43|Mux4~0_combout\);

-- Location: LCCOMB_X79_Y11_N8
\dp43|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp43|Mux3~0_combout\ = (\B|data_display[12]~12_combout\ & ((\B|data_display[14]~14_combout\ $ (!\B|data_display[13]~13_combout\)))) # (!\B|data_display[12]~12_combout\ & ((\B|data_display[15]~15_combout\ & (!\B|data_display[14]~14_combout\ & 
-- \B|data_display[13]~13_combout\)) # (!\B|data_display[15]~15_combout\ & (\B|data_display[14]~14_combout\ & !\B|data_display[13]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B|data_display[15]~15_combout\,
	datab => \B|data_display[14]~14_combout\,
	datac => \B|data_display[12]~12_combout\,
	datad => \B|data_display[13]~13_combout\,
	combout => \dp43|Mux3~0_combout\);

-- Location: LCCOMB_X77_Y11_N4
\dp43|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp43|Mux2~0_combout\ = (\B|data_display[13]~13_combout\ & (((!\B|data_display[15]~15_combout\ & \B|data_display[12]~12_combout\)))) # (!\B|data_display[13]~13_combout\ & ((\B|data_display[14]~14_combout\ & (!\B|data_display[15]~15_combout\)) # 
-- (!\B|data_display[14]~14_combout\ & ((\B|data_display[12]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B|data_display[14]~14_combout\,
	datab => \B|data_display[15]~15_combout\,
	datac => \B|data_display[13]~13_combout\,
	datad => \B|data_display[12]~12_combout\,
	combout => \dp43|Mux2~0_combout\);

-- Location: LCCOMB_X77_Y11_N30
\dp43|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp43|Mux1~0_combout\ = (\B|data_display[14]~14_combout\ & (\B|data_display[12]~12_combout\ & (\B|data_display[15]~15_combout\ $ (\B|data_display[13]~13_combout\)))) # (!\B|data_display[14]~14_combout\ & (!\B|data_display[15]~15_combout\ & 
-- ((\B|data_display[13]~13_combout\) # (\B|data_display[12]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B|data_display[14]~14_combout\,
	datab => \B|data_display[15]~15_combout\,
	datac => \B|data_display[13]~13_combout\,
	datad => \B|data_display[12]~12_combout\,
	combout => \dp43|Mux1~0_combout\);

-- Location: LCCOMB_X77_Y11_N12
\dp43|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp43|Mux0~0_combout\ = (\B|data_display[12]~12_combout\ & ((\B|data_display[15]~15_combout\) # (\B|data_display[14]~14_combout\ $ (\B|data_display[13]~13_combout\)))) # (!\B|data_display[12]~12_combout\ & ((\B|data_display[13]~13_combout\) # 
-- (\B|data_display[14]~14_combout\ $ (\B|data_display[15]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B|data_display[14]~14_combout\,
	datab => \B|data_display[15]~15_combout\,
	datac => \B|data_display[13]~13_combout\,
	datad => \B|data_display[12]~12_combout\,
	combout => \dp43|Mux0~0_combout\);

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

-- Location: IOIBUF_X0_Y52_N15
\dio_lcd[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dio_lcd(0),
	o => \dio_lcd[0]~input_o\);

-- Location: IOIBUF_X0_Y44_N8
\dio_lcd[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dio_lcd(1),
	o => \dio_lcd[1]~input_o\);

-- Location: IOIBUF_X0_Y44_N1
\dio_lcd[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dio_lcd(2),
	o => \dio_lcd[2]~input_o\);

-- Location: IOIBUF_X0_Y49_N8
\dio_lcd[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dio_lcd(3),
	o => \dio_lcd[3]~input_o\);

-- Location: IOIBUF_X0_Y54_N8
\dio_lcd[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dio_lcd(4),
	o => \dio_lcd[4]~input_o\);

-- Location: IOIBUF_X0_Y55_N22
\dio_lcd[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dio_lcd(5),
	o => \dio_lcd[5]~input_o\);

-- Location: IOIBUF_X0_Y51_N15
\dio_lcd[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dio_lcd(6),
	o => \dio_lcd[6]~input_o\);

-- Location: IOIBUF_X0_Y47_N1
\dio_lcd[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dio_lcd(7),
	o => \dio_lcd[7]~input_o\);
END structure;


