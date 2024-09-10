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

-- DATE "09/10/2024 19:56:09"

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
-- psw[2]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- tsw[17]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- psw[0]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- psw[3]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tsw[16]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL \B|comb~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \psw[2]~input_o\ : std_logic;
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
SIGNAL \psw[0]~input_o\ : std_logic;
SIGNAL \psw[3]~input_o\ : std_logic;
SIGNAL \tsw[17]~input_o\ : std_logic;
SIGNAL \B|ctl|nextstate.r1~0_combout\ : std_logic;
SIGNAL \B|ctl|state.r1~q\ : std_logic;
SIGNAL \B|ctl|state.r2~feeder_combout\ : std_logic;
SIGNAL \B|ctl|state.r2~q\ : std_logic;
SIGNAL \B|ctl|state.w1~feeder_combout\ : std_logic;
SIGNAL \B|ctl|state.w1~q\ : std_logic;
SIGNAL \B|ctl|state.w2~feeder_combout\ : std_logic;
SIGNAL \B|ctl|state.w2~q\ : std_logic;
SIGNAL \B|ctl|Selector0~0_combout\ : std_logic;
SIGNAL \B|ctl|state.idle~q\ : std_logic;
SIGNAL \B|ctl|nextstate.w1~0_combout\ : std_logic;
SIGNAL \B|ctl|tri_buf~0_combout\ : std_logic;
SIGNAL \B|ctl|tri_reg~q\ : std_logic;
SIGNAL \tsw[9]~input_o\ : std_logic;
SIGNAL \B|ctl|data_write_reg[1]~feeder_combout\ : std_logic;
SIGNAL \tsw[10]~input_o\ : std_logic;
SIGNAL \B|ctl|data_write_reg[2]~feeder_combout\ : std_logic;
SIGNAL \tsw[11]~input_o\ : std_logic;
SIGNAL \tsw[12]~input_o\ : std_logic;
SIGNAL \tsw[13]~input_o\ : std_logic;
SIGNAL \B|ctl|data_write_reg[5]~feeder_combout\ : std_logic;
SIGNAL \tsw[14]~input_o\ : std_logic;
SIGNAL \B|ctl|data_write_reg[6]~feeder_combout\ : std_logic;
SIGNAL \tsw[15]~input_o\ : std_logic;
SIGNAL \B|ctl|data_write_reg[7]~feeder_combout\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
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
SIGNAL \A|lc1|Add0~29\ : std_logic;
SIGNAL \A|lc1|Add0~30_combout\ : std_logic;
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
SIGNAL \A|lc1|LessThan9~0_combout\ : std_logic;
SIGNAL \A|lc1|Add0~51\ : std_logic;
SIGNAL \A|lc1|Add0~52_combout\ : std_logic;
SIGNAL \A|lc1|Selector6~0_combout\ : std_logic;
SIGNAL \A|lc1|LessThan9~1_combout\ : std_logic;
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
SIGNAL \A|lc1|Add0~61\ : std_logic;
SIGNAL \A|lc1|Add0~62_combout\ : std_logic;
SIGNAL \A|lc1|Selector1~0_combout\ : std_logic;
SIGNAL \A|lc1|LessThan9~8_combout\ : std_logic;
SIGNAL \A|lc1|LessThan0~0_combout\ : std_logic;
SIGNAL \A|lc1|LessThan0~1_combout\ : std_logic;
SIGNAL \A|lc1|LessThan0~2_combout\ : std_logic;
SIGNAL \A|lc1|LessThan0~3_combout\ : std_logic;
SIGNAL \A|lc1|LessThan0~4_combout\ : std_logic;
SIGNAL \A|lc1|LessThan0~5_combout\ : std_logic;
SIGNAL \A|lc1|LessThan0~6_combout\ : std_logic;
SIGNAL \A|lc1|state~7_combout\ : std_logic;
SIGNAL \A|lc1|state.power~q\ : std_logic;
SIGNAL \A|lc1|LessThan9~2_combout\ : std_logic;
SIGNAL \A|lc1|LessThan9~3_combout\ : std_logic;
SIGNAL \A|lc1|LessThan9~4_combout\ : std_logic;
SIGNAL \A|lc1|LessThan9~5_combout\ : std_logic;
SIGNAL \A|lc1|LessThan9~6_combout\ : std_logic;
SIGNAL \A|lc1|LessThan9~7_combout\ : std_logic;
SIGNAL \A|lc1|Selector34~2_combout\ : std_logic;
SIGNAL \A|ul1|count[1]~feeder_combout\ : std_logic;
SIGNAL \A|update1|q[0]~63_combout\ : std_logic;
SIGNAL \A|update1|q[1]~21_combout\ : std_logic;
SIGNAL \A|update1|q[1]~22\ : std_logic;
SIGNAL \A|update1|q[2]~23_combout\ : std_logic;
SIGNAL \A|update1|q[2]~24\ : std_logic;
SIGNAL \A|update1|q[3]~25_combout\ : std_logic;
SIGNAL \A|update1|q[3]~26\ : std_logic;
SIGNAL \A|update1|q[4]~27_combout\ : std_logic;
SIGNAL \A|update1|q[4]~28\ : std_logic;
SIGNAL \A|update1|q[5]~29_combout\ : std_logic;
SIGNAL \A|update1|q[5]~30\ : std_logic;
SIGNAL \A|update1|q[6]~31_combout\ : std_logic;
SIGNAL \A|update1|q[6]~32\ : std_logic;
SIGNAL \A|update1|q[7]~33_combout\ : std_logic;
SIGNAL \A|update1|q[7]~34\ : std_logic;
SIGNAL \A|update1|q[8]~35_combout\ : std_logic;
SIGNAL \A|update1|q[8]~36\ : std_logic;
SIGNAL \A|update1|q[9]~37_combout\ : std_logic;
SIGNAL \A|update1|q[9]~38\ : std_logic;
SIGNAL \A|update1|q[10]~39_combout\ : std_logic;
SIGNAL \A|update1|q[10]~40\ : std_logic;
SIGNAL \A|update1|q[11]~41_combout\ : std_logic;
SIGNAL \A|update1|q[11]~42\ : std_logic;
SIGNAL \A|update1|q[12]~43_combout\ : std_logic;
SIGNAL \A|update1|q[12]~44\ : std_logic;
SIGNAL \A|update1|q[13]~45_combout\ : std_logic;
SIGNAL \A|update1|q[13]~46\ : std_logic;
SIGNAL \A|update1|q[14]~47_combout\ : std_logic;
SIGNAL \A|update1|q[14]~48\ : std_logic;
SIGNAL \A|update1|q[15]~49_combout\ : std_logic;
SIGNAL \A|update1|q[15]~50\ : std_logic;
SIGNAL \A|update1|q[16]~51_combout\ : std_logic;
SIGNAL \A|update1|q[16]~52\ : std_logic;
SIGNAL \A|update1|q[17]~53_combout\ : std_logic;
SIGNAL \A|update1|q[17]~54\ : std_logic;
SIGNAL \A|update1|q[18]~55_combout\ : std_logic;
SIGNAL \A|update1|q[18]~56\ : std_logic;
SIGNAL \A|update1|q[19]~57_combout\ : std_logic;
SIGNAL \A|update1|q[19]~58\ : std_logic;
SIGNAL \A|update1|q[20]~59_combout\ : std_logic;
SIGNAL \A|update1|q[20]~60\ : std_logic;
SIGNAL \A|update1|q[21]~61_combout\ : std_logic;
SIGNAL \A|lc1|LessThan5~0_combout\ : std_logic;
SIGNAL \A|lc1|LessThan5~1_combout\ : std_logic;
SIGNAL \A|lc1|LessThan5~2_combout\ : std_logic;
SIGNAL \A|lc1|LessThan5~3_combout\ : std_logic;
SIGNAL \A|lc1|LessThan1~0_combout\ : std_logic;
SIGNAL \A|lc1|busy~4_combout\ : std_logic;
SIGNAL \A|lc1|busy~5_combout\ : std_logic;
SIGNAL \A|lc1|busy~6_combout\ : std_logic;
SIGNAL \A|lc1|busy~8_combout\ : std_logic;
SIGNAL \A|lc1|LessThan8~0_combout\ : std_logic;
SIGNAL \A|lc1|LessThan3~0_combout\ : std_logic;
SIGNAL \A|lc1|LessThan3~1_combout\ : std_logic;
SIGNAL \A|lc1|LessThan8~1_combout\ : std_logic;
SIGNAL \A|lc1|LessThan5~4_combout\ : std_logic;
SIGNAL \A|lc1|LessThan5~5_combout\ : std_logic;
SIGNAL \A|lc1|LessThan3~2_combout\ : std_logic;
SIGNAL \A|lc1|Selector34~0_combout\ : std_logic;
SIGNAL \A|lc1|LessThan1~1_combout\ : std_logic;
SIGNAL \A|lc1|LessThan7~2_combout\ : std_logic;
SIGNAL \A|lc1|LessThan7~4_combout\ : std_logic;
SIGNAL \A|lc1|LessThan7~3_combout\ : std_logic;
SIGNAL \A|lc1|LessThan8~2_combout\ : std_logic;
SIGNAL \A|lc1|LessThan8~3_combout\ : std_logic;
SIGNAL \A|lc1|LessThan8~4_combout\ : std_logic;
SIGNAL \A|lc1|busy~7_combout\ : std_logic;
SIGNAL \A|lc1|LessThan8~5_combout\ : std_logic;
SIGNAL \A|lc1|Selector34~1_combout\ : std_logic;
SIGNAL \A|lc1|Selector33~0_combout\ : std_logic;
SIGNAL \A|lc1|state.init~q\ : std_logic;
SIGNAL \A|lc1|Selector34~3_combout\ : std_logic;
SIGNAL \A|lc1|busy~q\ : std_logic;
SIGNAL \A|ul1|data_write[9]~8_combout\ : std_logic;
SIGNAL \A|ul1|Add0~4_combout\ : std_logic;
SIGNAL \A|ul1|Add0~7\ : std_logic;
SIGNAL \A|ul1|Add0~9_combout\ : std_logic;
SIGNAL \A|ul1|Add0~94_combout\ : std_logic;
SIGNAL \A|ul1|Add0~10\ : std_logic;
SIGNAL \A|ul1|Add0~11_combout\ : std_logic;
SIGNAL \A|ul1|Add0~92_combout\ : std_logic;
SIGNAL \A|ul1|Add0~12\ : std_logic;
SIGNAL \A|ul1|Add0~13_combout\ : std_logic;
SIGNAL \A|ul1|Add0~91_combout\ : std_logic;
SIGNAL \A|ul1|LessThan0~1_combout\ : std_logic;
SIGNAL \A|ul1|Add0~14\ : std_logic;
SIGNAL \A|ul1|Add0~15_combout\ : std_logic;
SIGNAL \A|ul1|Add0~85_combout\ : std_logic;
SIGNAL \A|ul1|count[5]~feeder_combout\ : std_logic;
SIGNAL \A|ul1|Add0~16\ : std_logic;
SIGNAL \A|ul1|Add0~17_combout\ : std_logic;
SIGNAL \A|ul1|Add0~72_combout\ : std_logic;
SIGNAL \A|ul1|Add0~18\ : std_logic;
SIGNAL \A|ul1|Add0~19_combout\ : std_logic;
SIGNAL \A|ul1|Add0~71_combout\ : std_logic;
SIGNAL \A|ul1|count[7]~feeder_combout\ : std_logic;
SIGNAL \A|ul1|Add0~20\ : std_logic;
SIGNAL \A|ul1|Add0~21_combout\ : std_logic;
SIGNAL \A|ul1|Add0~23_combout\ : std_logic;
SIGNAL \A|ul1|Add0~22\ : std_logic;
SIGNAL \A|ul1|Add0~24_combout\ : std_logic;
SIGNAL \A|ul1|Add0~70_combout\ : std_logic;
SIGNAL \A|ul1|Add0~25\ : std_logic;
SIGNAL \A|ul1|Add0~26_combout\ : std_logic;
SIGNAL \A|ul1|Add0~73_combout\ : std_logic;
SIGNAL \A|ul1|Add0~27\ : std_logic;
SIGNAL \A|ul1|Add0~28_combout\ : std_logic;
SIGNAL \A|ul1|Add0~74_combout\ : std_logic;
SIGNAL \A|ul1|Add0~29\ : std_logic;
SIGNAL \A|ul1|Add0~30_combout\ : std_logic;
SIGNAL \A|ul1|Add0~75_combout\ : std_logic;
SIGNAL \A|ul1|Add0~31\ : std_logic;
SIGNAL \A|ul1|Add0~32_combout\ : std_logic;
SIGNAL \A|ul1|Add0~76_combout\ : std_logic;
SIGNAL \A|ul1|Add0~33\ : std_logic;
SIGNAL \A|ul1|Add0~34_combout\ : std_logic;
SIGNAL \A|ul1|Add0~78_combout\ : std_logic;
SIGNAL \A|ul1|Add0~35\ : std_logic;
SIGNAL \A|ul1|Add0~36_combout\ : std_logic;
SIGNAL \A|ul1|Add0~79_combout\ : std_logic;
SIGNAL \A|ul1|Add0~37\ : std_logic;
SIGNAL \A|ul1|Add0~38_combout\ : std_logic;
SIGNAL \A|ul1|Add0~80_combout\ : std_logic;
SIGNAL \A|ul1|Add0~39\ : std_logic;
SIGNAL \A|ul1|Add0~40_combout\ : std_logic;
SIGNAL \A|ul1|Add0~81_combout\ : std_logic;
SIGNAL \A|ul1|Add0~41\ : std_logic;
SIGNAL \A|ul1|Add0~42_combout\ : std_logic;
SIGNAL \A|ul1|Add0~82_combout\ : std_logic;
SIGNAL \A|ul1|Add0~43\ : std_logic;
SIGNAL \A|ul1|Add0~44_combout\ : std_logic;
SIGNAL \A|ul1|Add0~97_combout\ : std_logic;
SIGNAL \A|ul1|Add0~45\ : std_logic;
SIGNAL \A|ul1|Add0~46_combout\ : std_logic;
SIGNAL \A|ul1|Add0~83_combout\ : std_logic;
SIGNAL \A|ul1|Add0~47\ : std_logic;
SIGNAL \A|ul1|Add0~48_combout\ : std_logic;
SIGNAL \A|ul1|Add0~84_combout\ : std_logic;
SIGNAL \A|ul1|Add0~49\ : std_logic;
SIGNAL \A|ul1|Add0~50_combout\ : std_logic;
SIGNAL \A|ul1|Add0~86_combout\ : std_logic;
SIGNAL \A|ul1|Add0~51\ : std_logic;
SIGNAL \A|ul1|Add0~52_combout\ : std_logic;
SIGNAL \A|ul1|Add0~87_combout\ : std_logic;
SIGNAL \A|ul1|Add0~53\ : std_logic;
SIGNAL \A|ul1|Add0~54_combout\ : std_logic;
SIGNAL \A|ul1|Add0~88_combout\ : std_logic;
SIGNAL \A|ul1|Add0~55\ : std_logic;
SIGNAL \A|ul1|Add0~56_combout\ : std_logic;
SIGNAL \A|ul1|Add0~89_combout\ : std_logic;
SIGNAL \A|ul1|Add0~57\ : std_logic;
SIGNAL \A|ul1|Add0~58_combout\ : std_logic;
SIGNAL \A|ul1|Add0~90_combout\ : std_logic;
SIGNAL \A|ul1|Add0~59\ : std_logic;
SIGNAL \A|ul1|Add0~60_combout\ : std_logic;
SIGNAL \A|ul1|Add0~96_combout\ : std_logic;
SIGNAL \A|ul1|count[27]~feeder_combout\ : std_logic;
SIGNAL \A|ul1|Add0~61\ : std_logic;
SIGNAL \A|ul1|Add0~62_combout\ : std_logic;
SIGNAL \A|ul1|Add0~77_combout\ : std_logic;
SIGNAL \A|ul1|count[28]~feeder_combout\ : std_logic;
SIGNAL \A|ul1|Add0~63\ : std_logic;
SIGNAL \A|ul1|Add0~64_combout\ : std_logic;
SIGNAL \A|ul1|Add0~95_combout\ : std_logic;
SIGNAL \A|ul1|count[29]~feeder_combout\ : std_logic;
SIGNAL \A|ul1|LessThan0~0_combout\ : std_logic;
SIGNAL \A|ul1|LessThan0~2_combout\ : std_logic;
SIGNAL \A|ul1|LessThan0~8_combout\ : std_logic;
SIGNAL \A|ul1|LessThan0~3_combout\ : std_logic;
SIGNAL \A|ul1|LessThan0~4_combout\ : std_logic;
SIGNAL \A|ul1|LessThan0~6_combout\ : std_logic;
SIGNAL \A|ul1|LessThan0~5_combout\ : std_logic;
SIGNAL \A|ul1|LessThan0~7_combout\ : std_logic;
SIGNAL \A|ul1|LessThan0~9_combout\ : std_logic;
SIGNAL \A|ul1|Add0~65\ : std_logic;
SIGNAL \A|ul1|Add0~66_combout\ : std_logic;
SIGNAL \A|ul1|Add0~98_combout\ : std_logic;
SIGNAL \A|ul1|count[30]~feeder_combout\ : std_logic;
SIGNAL \A|ul1|Add0~67\ : std_logic;
SIGNAL \A|ul1|Add0~68_combout\ : std_logic;
SIGNAL \A|ul1|Add0~99_combout\ : std_logic;
SIGNAL \A|ul1|Add0~93_combout\ : std_logic;
SIGNAL \A|ul1|count[0]~feeder_combout\ : std_logic;
SIGNAL \A|ul1|Add0~5\ : std_logic;
SIGNAL \A|ul1|Add0~6_combout\ : std_logic;
SIGNAL \A|ul1|Add0~8_combout\ : std_logic;
SIGNAL \A|ul1|LessThan0~10_combout\ : std_logic;
SIGNAL \A|ul1|Equal0~3_combout\ : std_logic;
SIGNAL \A|ul1|Equal0~0_combout\ : std_logic;
SIGNAL \A|ul1|Equal0~1_combout\ : std_logic;
SIGNAL \A|ul1|Equal0~2_combout\ : std_logic;
SIGNAL \A|ul1|Equal0~8_combout\ : std_logic;
SIGNAL \A|ul1|Equal0~7_combout\ : std_logic;
SIGNAL \A|ul1|Equal0~5_combout\ : std_logic;
SIGNAL \A|ul1|Equal0~4_combout\ : std_logic;
SIGNAL \A|ul1|Equal0~6_combout\ : std_logic;
SIGNAL \A|ul1|Equal3~0_combout\ : std_logic;
SIGNAL \A|ul1|Equal3~1_combout\ : std_logic;
SIGNAL \A|ul1|Equal2~0_combout\ : std_logic;
SIGNAL \A|ul1|Equal17~0_combout\ : std_logic;
SIGNAL \A|ul1|Equal2~2_combout\ : std_logic;
SIGNAL \A|ul1|Equal2~1_combout\ : std_logic;
SIGNAL \A|ul1|WideNor1~0_combout\ : std_logic;
SIGNAL \A|ul1|Equal13~0_combout\ : std_logic;
SIGNAL \A|ul1|Equal15~2_combout\ : std_logic;
SIGNAL \A|ul1|Equal1~2_combout\ : std_logic;
SIGNAL \A|ul1|Equal3~2_combout\ : std_logic;
SIGNAL \A|ul1|Equal4~1_combout\ : std_logic;
SIGNAL \A|ul1|Equal2~3_combout\ : std_logic;
SIGNAL \A|ul1|Equal16~0_combout\ : std_logic;
SIGNAL \A|ul1|Equal4~2_combout\ : std_logic;
SIGNAL \A|ul1|WideNor1~2_combout\ : std_logic;
SIGNAL \A|ul1|Equal27~0_combout\ : std_logic;
SIGNAL \A|ul1|data_write~29_combout\ : std_logic;
SIGNAL \A|ul1|Equal23~0_combout\ : std_logic;
SIGNAL \A|ul1|Equal10~0_combout\ : std_logic;
SIGNAL \A|ul1|Selector16~0_combout\ : std_logic;
SIGNAL \A|ul1|Equal1~0_combout\ : std_logic;
SIGNAL \A|ul1|Equal1~1_combout\ : std_logic;
SIGNAL \A|ul1|Equal34~0_combout\ : std_logic;
SIGNAL \A|ul1|Equal9~0_combout\ : std_logic;
SIGNAL \A|ul1|Equal25~0_combout\ : std_logic;
SIGNAL \A|ul1|Equal33~0_combout\ : std_logic;
SIGNAL \A|ul1|Selector3~5_combout\ : std_logic;
SIGNAL \A|ul1|Equal21~0_combout\ : std_logic;
SIGNAL \A|ul1|Selector15~2_combout\ : std_logic;
SIGNAL \A|ul1|Equal5~0_combout\ : std_logic;
SIGNAL \A|ul1|Equal18~0_combout\ : std_logic;
SIGNAL \A|ul1|WideNor1~1_combout\ : std_logic;
SIGNAL \A|ul1|Equal28~0_combout\ : std_logic;
SIGNAL \A|ul1|Equal13~1_combout\ : std_logic;
SIGNAL \A|ul1|Equal26~0_combout\ : std_logic;
SIGNAL \A|ul1|Selector3~2_combout\ : std_logic;
SIGNAL \A|ul1|Equal26~1_combout\ : std_logic;
SIGNAL \A|ul1|Equal7~0_combout\ : std_logic;
SIGNAL \A|ul1|Equal0~9_combout\ : std_logic;
SIGNAL \A|ul1|Selector12~3_combout\ : std_logic;
SIGNAL \A|ul1|Selector12~0_combout\ : std_logic;
SIGNAL \A|ul1|Selector12~1_combout\ : std_logic;
SIGNAL \A|ul1|Equal8~0_combout\ : std_logic;
SIGNAL \A|ul1|Equal4~0_combout\ : std_logic;
SIGNAL \A|ul1|Selector12~2_combout\ : std_logic;
SIGNAL \A|ul1|Selector12~4_combout\ : std_logic;
SIGNAL \A|ul1|Equal12~0_combout\ : std_logic;
SIGNAL \A|ul1|Equal9~1_combout\ : std_logic;
SIGNAL \A|ul1|Equal20~0_combout\ : std_logic;
SIGNAL \A|ul1|Selector3~7_combout\ : std_logic;
SIGNAL \A|ul1|Selector3~3_combout\ : std_logic;
SIGNAL \A|ul1|Selector3~4_combout\ : std_logic;
SIGNAL \A|ul1|WideNor1~3_combout\ : std_logic;
SIGNAL \tsw[16]~input_o\ : std_logic;
SIGNAL \A|ul1|Equal1~3_combout\ : std_logic;
SIGNAL \A|ul1|Selector3~6_combout\ : std_logic;
SIGNAL \A|ul1|send_enable~0_combout\ : std_logic;
SIGNAL \A|ul1|send_enable~1_combout\ : std_logic;
SIGNAL \A|ul1|send_enable~2_combout\ : std_logic;
SIGNAL \A|ul1|send_enable~q\ : std_logic;
SIGNAL \A|lc1|Selector35~3_combout\ : std_logic;
SIGNAL \A|lc1|state.send~q\ : std_logic;
SIGNAL \A|lc1|Selector34~4_combout\ : std_logic;
SIGNAL \A|lc1|state.ready~q\ : std_logic;
SIGNAL \A|lc1|LessThan2~0_combout\ : std_logic;
SIGNAL \A|lc1|LessThan2~1_combout\ : std_logic;
SIGNAL \A|lc1|LessThan2~2_combout\ : std_logic;
SIGNAL \A|lc1|LessThan5~6_combout\ : std_logic;
SIGNAL \A|lc1|LessThan5~7_combout\ : std_logic;
SIGNAL \A|lc1|LessThan5~8_combout\ : std_logic;
SIGNAL \A|lc1|LessThan5~9_combout\ : std_logic;
SIGNAL \A|lc1|LessThan6~0_combout\ : std_logic;
SIGNAL \A|lc1|LessThan1~2_combout\ : std_logic;
SIGNAL \A|lc1|count[30]~2_combout\ : std_logic;
SIGNAL \A|lc1|LessThan4~0_combout\ : std_logic;
SIGNAL \A|lc1|LessThan4~1_combout\ : std_logic;
SIGNAL \A|lc1|LessThan4~2_combout\ : std_logic;
SIGNAL \A|lc1|count[30]~3_combout\ : std_logic;
SIGNAL \A|lc1|count[30]~4_combout\ : std_logic;
SIGNAL \A|lc1|count[30]~5_combout\ : std_logic;
SIGNAL \A|lc1|Selector2~0_combout\ : std_logic;
SIGNAL \A|lc1|Add0~60_combout\ : std_logic;
SIGNAL \A|lc1|Selector45~0_combout\ : std_logic;
SIGNAL \A|ul1|WideNor0~combout\ : std_logic;
SIGNAL \C|count[0]~32_combout\ : std_logic;
SIGNAL \psw[1]~input_o\ : std_logic;
SIGNAL \C|count[3]~96_combout\ : std_logic;
SIGNAL \C|count[0]~33\ : std_logic;
SIGNAL \C|count[1]~34_combout\ : std_logic;
SIGNAL \C|count[1]~35\ : std_logic;
SIGNAL \C|count[2]~36_combout\ : std_logic;
SIGNAL \C|count[2]~37\ : std_logic;
SIGNAL \C|count[3]~38_combout\ : std_logic;
SIGNAL \C|count[3]~39\ : std_logic;
SIGNAL \C|count[4]~40_combout\ : std_logic;
SIGNAL \C|count[4]~41\ : std_logic;
SIGNAL \C|count[5]~42_combout\ : std_logic;
SIGNAL \C|count[5]~43\ : std_logic;
SIGNAL \C|count[6]~44_combout\ : std_logic;
SIGNAL \C|count[6]~45\ : std_logic;
SIGNAL \C|count[7]~46_combout\ : std_logic;
SIGNAL \C|count[7]~47\ : std_logic;
SIGNAL \C|count[8]~48_combout\ : std_logic;
SIGNAL \C|count[8]~49\ : std_logic;
SIGNAL \C|count[9]~50_combout\ : std_logic;
SIGNAL \C|count[9]~51\ : std_logic;
SIGNAL \C|count[10]~52_combout\ : std_logic;
SIGNAL \C|count[10]~53\ : std_logic;
SIGNAL \C|count[11]~54_combout\ : std_logic;
SIGNAL \C|LessThan0~2_combout\ : std_logic;
SIGNAL \C|count[11]~55\ : std_logic;
SIGNAL \C|count[12]~56_combout\ : std_logic;
SIGNAL \C|count[12]~57\ : std_logic;
SIGNAL \C|count[13]~58_combout\ : std_logic;
SIGNAL \C|count[13]~59\ : std_logic;
SIGNAL \C|count[14]~60_combout\ : std_logic;
SIGNAL \C|count[14]~61\ : std_logic;
SIGNAL \C|count[15]~62_combout\ : std_logic;
SIGNAL \C|count[15]~63\ : std_logic;
SIGNAL \C|count[16]~64_combout\ : std_logic;
SIGNAL \C|LessThan0~1_combout\ : std_logic;
SIGNAL \C|count[16]~65\ : std_logic;
SIGNAL \C|count[17]~66_combout\ : std_logic;
SIGNAL \C|LessThan0~3_combout\ : std_logic;
SIGNAL \C|count[17]~67\ : std_logic;
SIGNAL \C|count[18]~68_combout\ : std_logic;
SIGNAL \C|count[18]~69\ : std_logic;
SIGNAL \C|count[19]~70_combout\ : std_logic;
SIGNAL \C|LessThan0~4_combout\ : std_logic;
SIGNAL \C|count[19]~71\ : std_logic;
SIGNAL \C|count[20]~72_combout\ : std_logic;
SIGNAL \C|count[20]~73\ : std_logic;
SIGNAL \C|count[21]~74_combout\ : std_logic;
SIGNAL \C|count[21]~75\ : std_logic;
SIGNAL \C|count[22]~76_combout\ : std_logic;
SIGNAL \C|count[22]~77\ : std_logic;
SIGNAL \C|count[23]~78_combout\ : std_logic;
SIGNAL \C|LessThan0~5_combout\ : std_logic;
SIGNAL \C|count[23]~79\ : std_logic;
SIGNAL \C|count[24]~80_combout\ : std_logic;
SIGNAL \C|count[24]~81\ : std_logic;
SIGNAL \C|count[25]~82_combout\ : std_logic;
SIGNAL \C|LessThan0~6_combout\ : std_logic;
SIGNAL \C|count[25]~83\ : std_logic;
SIGNAL \C|count[26]~84_combout\ : std_logic;
SIGNAL \C|count[26]~85\ : std_logic;
SIGNAL \C|count[27]~86_combout\ : std_logic;
SIGNAL \C|count[27]~87\ : std_logic;
SIGNAL \C|count[28]~88_combout\ : std_logic;
SIGNAL \C|count[28]~89\ : std_logic;
SIGNAL \C|count[29]~90_combout\ : std_logic;
SIGNAL \C|count[29]~91\ : std_logic;
SIGNAL \C|count[30]~92_combout\ : std_logic;
SIGNAL \C|count[30]~93\ : std_logic;
SIGNAL \C|count[31]~94_combout\ : std_logic;
SIGNAL \C|LessThan0~0_combout\ : std_logic;
SIGNAL \C|LessThan0~7_combout\ : std_logic;
SIGNAL \C|success~0_combout\ : std_logic;
SIGNAL \C|success~q\ : std_logic;
SIGNAL \A|ul1|Equal22~0_combout\ : std_logic;
SIGNAL \A|ul1|Equal22~1_combout\ : std_logic;
SIGNAL \A|ul1|Selector7~0_combout\ : std_logic;
SIGNAL \A|ul1|Equal24~0_combout\ : std_logic;
SIGNAL \A|ul1|Selector2~0_combout\ : std_logic;
SIGNAL \A|ul1|Selector8~0_combout\ : std_logic;
SIGNAL \A|ul1|Selector17~6_combout\ : std_logic;
SIGNAL \A|ul1|Selector8~1_combout\ : std_logic;
SIGNAL \A|ul1|Equal23~1_combout\ : std_logic;
SIGNAL \A|ul1|Selector8~2_combout\ : std_logic;
SIGNAL \A|ul1|LessThan3~0_combout\ : std_logic;
SIGNAL \A|ul1|Selector17~2_combout\ : std_logic;
SIGNAL \A|ul1|WideNor1~combout\ : std_logic;
SIGNAL \A|ul1|Selector17~10_combout\ : std_logic;
SIGNAL \tsw[4]~input_o\ : std_logic;
SIGNAL \tsw[6]~input_o\ : std_logic;
SIGNAL \tsw[5]~input_o\ : std_logic;
SIGNAL \tsw[7]~input_o\ : std_logic;
SIGNAL \A|ul1|LessThan1~0_combout\ : std_logic;
SIGNAL \A|ul1|Selector17~7_combout\ : std_logic;
SIGNAL \A|ul1|Selector17~3_combout\ : std_logic;
SIGNAL \tsw[2]~input_o\ : std_logic;
SIGNAL \tsw[3]~input_o\ : std_logic;
SIGNAL \tsw[1]~input_o\ : std_logic;
SIGNAL \A|ul1|LessThan2~0_combout\ : std_logic;
SIGNAL \A|ul1|LessThan4~0_combout\ : std_logic;
SIGNAL \A|ul1|Selector17~4_combout\ : std_logic;
SIGNAL \tsw[0]~input_o\ : std_logic;
SIGNAL \A|ul1|Selector17~5_combout\ : std_logic;
SIGNAL \A|ul1|Selector17~8_combout\ : std_logic;
SIGNAL \A|ul1|Selector17~9_combout\ : std_logic;
SIGNAL \A|ul1|data_write~9_combout\ : std_logic;
SIGNAL \A|lc1|Selector44~2_combout\ : std_logic;
SIGNAL \A|lc1|Selector45~1_combout\ : std_logic;
SIGNAL \A|lc1|Selector35~2_combout\ : std_logic;
SIGNAL \A|lc1|Selector45~2_combout\ : std_logic;
SIGNAL \A|lc1|state~6_combout\ : std_logic;
SIGNAL \A|lc1|lcd_data[1]~0_combout\ : std_logic;
SIGNAL \A|lc1|Selector44~6_combout\ : std_logic;
SIGNAL \A|lc1|Selector44~4_combout\ : std_logic;
SIGNAL \A|ul1|Selector7~1_combout\ : std_logic;
SIGNAL \A|ul1|Selector7~2_combout\ : std_logic;
SIGNAL \A|ul1|Selector15~3_combout\ : std_logic;
SIGNAL \A|ul1|Selector7~3_combout\ : std_logic;
SIGNAL \A|ul1|Selector16~8_combout\ : std_logic;
SIGNAL \A|ul1|Selector16~6_combout\ : std_logic;
SIGNAL \A|ul1|Selector16~4_combout\ : std_logic;
SIGNAL \A|ul1|Selector16~3_combout\ : std_logic;
SIGNAL \A|ul1|Selector16~5_combout\ : std_logic;
SIGNAL \A|ul1|Selector16~1_combout\ : std_logic;
SIGNAL \A|ul1|Selector16~2_combout\ : std_logic;
SIGNAL \A|ul1|Selector16~7_combout\ : std_logic;
SIGNAL \A|ul1|Selector16~9_combout\ : std_logic;
SIGNAL \A|ul1|data_write~10_combout\ : std_logic;
SIGNAL \A|lc1|Selector44~3_combout\ : std_logic;
SIGNAL \A|lc1|Selector44~5_combout\ : std_logic;
SIGNAL \A|lc1|Selector43~0_combout\ : std_logic;
SIGNAL \A|lc1|Selector43~1_combout\ : std_logic;
SIGNAL \A|ul1|Selector15~6_combout\ : std_logic;
SIGNAL \A|ul1|Selector15~5_combout\ : std_logic;
SIGNAL \A|ul1|Selector15~7_combout\ : std_logic;
SIGNAL \A|ul1|Selector13~0_combout\ : std_logic;
SIGNAL \A|ul1|Equal32~0_combout\ : std_logic;
SIGNAL \A|ul1|Selector15~15_combout\ : std_logic;
SIGNAL \A|ul1|Selector15~4_combout\ : std_logic;
SIGNAL \A|ul1|Selector15~8_combout\ : std_logic;
SIGNAL \A|ul1|Selector15~9_combout\ : std_logic;
SIGNAL \A|ul1|Selector15~11_combout\ : std_logic;
SIGNAL \A|ul1|Selector15~10_combout\ : std_logic;
SIGNAL \A|ul1|Selector15~12_combout\ : std_logic;
SIGNAL \A|ul1|Selector15~13_combout\ : std_logic;
SIGNAL \A|ul1|Selector15~14_combout\ : std_logic;
SIGNAL \A|ul1|data_write~11_combout\ : std_logic;
SIGNAL \A|ul1|data_write~12_combout\ : std_logic;
SIGNAL \A|ul1|data_write~13_combout\ : std_logic;
SIGNAL \A|lc1|Selector43~2_combout\ : std_logic;
SIGNAL \A|lc1|Selector42~2_combout\ : std_logic;
SIGNAL \A|lc1|Selector42~3_combout\ : std_logic;
SIGNAL \A|ul1|data_write~15_combout\ : std_logic;
SIGNAL \A|ul1|data_write~16_combout\ : std_logic;
SIGNAL \A|ul1|data_write~17_combout\ : std_logic;
SIGNAL \A|ul1|data_write~18_combout\ : std_logic;
SIGNAL \A|ul1|data_write~19_combout\ : std_logic;
SIGNAL \A|ul1|data_write~20_combout\ : std_logic;
SIGNAL \A|ul1|data_write~21_combout\ : std_logic;
SIGNAL \A|ul1|data_write~14_combout\ : std_logic;
SIGNAL \A|ul1|data_write~30_combout\ : std_logic;
SIGNAL \A|ul1|data_write~22_combout\ : std_logic;
SIGNAL \A|lc1|Selector42~4_combout\ : std_logic;
SIGNAL \A|ul1|Selector13~1_combout\ : std_logic;
SIGNAL \A|ul1|Selector13~2_combout\ : std_logic;
SIGNAL \A|ul1|Selector13~3_combout\ : std_logic;
SIGNAL \A|ul1|Selector13~4_combout\ : std_logic;
SIGNAL \A|ul1|Selector13~5_combout\ : std_logic;
SIGNAL \A|ul1|Selector13~6_combout\ : std_logic;
SIGNAL \A|ul1|Selector13~7_combout\ : std_logic;
SIGNAL \A|ul1|Selector13~8_combout\ : std_logic;
SIGNAL \A|ul1|Selector2~1_combout\ : std_logic;
SIGNAL \A|ul1|Selector2~2_combout\ : std_logic;
SIGNAL \A|ul1|Selector4~0_combout\ : std_logic;
SIGNAL \A|ul1|Selector4~1_combout\ : std_logic;
SIGNAL \A|ul1|data_write~23_combout\ : std_logic;
SIGNAL \A|lc1|Selector41~2_combout\ : std_logic;
SIGNAL \A|ul1|data_write~24_combout\ : std_logic;
SIGNAL \A|ul1|data_write~25_combout\ : std_logic;
SIGNAL \A|ul1|Selector12~5_combout\ : std_logic;
SIGNAL \A|ul1|Selector12~6_combout\ : std_logic;
SIGNAL \A|ul1|data_write~26_combout\ : std_logic;
SIGNAL \A|lc1|Selector40~2_combout\ : std_logic;
SIGNAL \A|ul1|Selector2~3_combout\ : std_logic;
SIGNAL \A|ul1|Selector2~5_combout\ : std_logic;
SIGNAL \A|ul1|Selector2~4_combout\ : std_logic;
SIGNAL \A|ul1|Selector11~0_combout\ : std_logic;
SIGNAL \A|ul1|Selector11~2_combout\ : std_logic;
SIGNAL \A|ul1|Selector11~1_combout\ : std_logic;
SIGNAL \A|ul1|Selector11~3_combout\ : std_logic;
SIGNAL \A|ul1|Selector11~4_combout\ : std_logic;
SIGNAL \A|ul1|Selector11~5_combout\ : std_logic;
SIGNAL \A|ul1|data_write~27_combout\ : std_logic;
SIGNAL \A|lc1|Selector39~0_combout\ : std_logic;
SIGNAL \A|ul1|data_write~28_combout\ : std_logic;
SIGNAL \A|lc1|Selector38~0_combout\ : std_logic;
SIGNAL \B|ctl|addr_reg[0]~0_combout\ : std_logic;
SIGNAL \B|ctl|addr_reg[1]~feeder_combout\ : std_logic;
SIGNAL \B|ctl|addr_reg[2]~feeder_combout\ : std_logic;
SIGNAL \B|ctl|addr_reg[6]~feeder_combout\ : std_logic;
SIGNAL \B|ctl|addr_reg[7]~feeder_combout\ : std_logic;
SIGNAL \B|ctl|we_reg~feeder_combout\ : std_logic;
SIGNAL \B|ctl|we_reg~q\ : std_logic;
SIGNAL \B|ctl|oe_buf~0_combout\ : std_logic;
SIGNAL \B|ctl|oe_reg~q\ : std_logic;
SIGNAL \A|lc1|Selector46~2_combout\ : std_logic;
SIGNAL \A|lc1|Selector46~3_combout\ : std_logic;
SIGNAL \A|lc1|Selector46~0_combout\ : std_logic;
SIGNAL \A|lc1|Selector46~1_combout\ : std_logic;
SIGNAL \A|lc1|Selector46~4_combout\ : std_logic;
SIGNAL \A|lc1|Selector46~9_combout\ : std_logic;
SIGNAL \A|lc1|Selector46~10_combout\ : std_logic;
SIGNAL \A|lc1|LessThan10~3_combout\ : std_logic;
SIGNAL \A|lc1|LessThan10~1_combout\ : std_logic;
SIGNAL \A|lc1|LessThan10~2_combout\ : std_logic;
SIGNAL \A|lc1|LessThan12~0_combout\ : std_logic;
SIGNAL \A|lc1|LessThan10~4_combout\ : std_logic;
SIGNAL \A|lc1|LessThan9~10_combout\ : std_logic;
SIGNAL \A|lc1|LessThan12~1_combout\ : std_logic;
SIGNAL \A|lc1|LessThan12~2_combout\ : std_logic;
SIGNAL \A|lc1|Selector46~6_combout\ : std_logic;
SIGNAL \A|lc1|LessThan9~9_combout\ : std_logic;
SIGNAL \A|lc1|LessThan10~0_combout\ : std_logic;
SIGNAL \A|lc1|LessThan11~0_combout\ : std_logic;
SIGNAL \A|lc1|LessThan11~1_combout\ : std_logic;
SIGNAL \A|lc1|Selector46~5_combout\ : std_logic;
SIGNAL \A|lc1|Selector46~7_combout\ : std_logic;
SIGNAL \A|lc1|Selector46~8_combout\ : std_logic;
SIGNAL \A|lc1|lcd_en~q\ : std_logic;
SIGNAL \A|ul1|data_write~6_combout\ : std_logic;
SIGNAL \A|ul1|data_write~7_combout\ : std_logic;
SIGNAL \A|lc1|lcd_rs~0_combout\ : std_logic;
SIGNAL \A|lc1|lcd_rs~1_combout\ : std_logic;
SIGNAL \A|lc1|lcd_rs~q\ : std_logic;
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
SIGNAL \dio_sram[2]~input_o\ : std_logic;
SIGNAL \B|comb~0_combout\ : std_logic;
SIGNAL \B|comb~0clkctrl_outclk\ : std_logic;
SIGNAL \B|data_display[2]~2_combout\ : std_logic;
SIGNAL \dio_sram[0]~input_o\ : std_logic;
SIGNAL \B|data_display[0]~0_combout\ : std_logic;
SIGNAL \dio_sram[3]~input_o\ : std_logic;
SIGNAL \B|data_display[3]~3_combout\ : std_logic;
SIGNAL \dio_sram[1]~input_o\ : std_logic;
SIGNAL \B|data_display[1]~1_combout\ : std_logic;
SIGNAL \B|dp13|Mux6~0_combout\ : std_logic;
SIGNAL \B|dp13|Mux5~0_combout\ : std_logic;
SIGNAL \B|dp13|Mux4~0_combout\ : std_logic;
SIGNAL \B|dp13|Mux3~0_combout\ : std_logic;
SIGNAL \B|dp13|Mux2~0_combout\ : std_logic;
SIGNAL \B|dp13|Mux1~0_combout\ : std_logic;
SIGNAL \B|dp13|Mux0~0_combout\ : std_logic;
SIGNAL \dio_sram[7]~input_o\ : std_logic;
SIGNAL \B|data_display[7]~7_combout\ : std_logic;
SIGNAL \dio_sram[6]~input_o\ : std_logic;
SIGNAL \B|data_display[6]~6_combout\ : std_logic;
SIGNAL \dio_sram[5]~input_o\ : std_logic;
SIGNAL \B|data_display[5]~5_combout\ : std_logic;
SIGNAL \dio_sram[4]~input_o\ : std_logic;
SIGNAL \B|data_display[4]~4_combout\ : std_logic;
SIGNAL \B|dp23|Mux6~0_combout\ : std_logic;
SIGNAL \B|dp23|Mux5~0_combout\ : std_logic;
SIGNAL \B|dp23|Mux4~0_combout\ : std_logic;
SIGNAL \B|dp23|Mux3~0_combout\ : std_logic;
SIGNAL \B|dp23|Mux2~0_combout\ : std_logic;
SIGNAL \B|dp23|Mux1~0_combout\ : std_logic;
SIGNAL \B|dp23|Mux0~0_combout\ : std_logic;
SIGNAL \B|ctl|data_read_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \B|itnram|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \pll1|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \A|update1|q\ : std_logic_vector(21 DOWNTO 0);
SIGNAL \C|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \B|ctl|addr_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \A|lc1|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \A|ul1|data_write\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \A|ul1|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \B|ctl|data_write_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \A|lc1|lcd_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_psw[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_psw[0]~input_o\ : std_logic;
SIGNAL \A|ul1|ALT_INV_send_enable~2_combout\ : std_logic;
SIGNAL \B|dp23|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \B|dp13|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \B|dp22|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \B|dp21|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \B|dp12|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \B|dp11|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \B|ctl|ALT_INV_oe_reg~q\ : std_logic;
SIGNAL \B|ctl|ALT_INV_we_reg~q\ : std_logic;

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

\B|itnram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \tsw[15]~input_o\ & \tsw[14]~input_o\ & \tsw[13]~input_o\ & \tsw[12]~input_o\ & \tsw[11]~input_o\ & 
\tsw[10]~input_o\ & \tsw[9]~input_o\ & \tsw[8]~input_o\);

\B|itnram|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\tsw[7]~input_o\ & \tsw[6]~input_o\ & \tsw[5]~input_o\ & \tsw[4]~input_o\ & \tsw[3]~input_o\ & \tsw[2]~input_o\ & \tsw[1]~input_o\ & \tsw[0]~input_o\);

\B|itnram|altsyncram_component|auto_generated|q_a\(0) <= \B|itnram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\B|itnram|altsyncram_component|auto_generated|q_a\(1) <= \B|itnram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\B|itnram|altsyncram_component|auto_generated|q_a\(2) <= \B|itnram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\B|itnram|altsyncram_component|auto_generated|q_a\(3) <= \B|itnram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\B|itnram|altsyncram_component|auto_generated|q_a\(4) <= \B|itnram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\B|itnram|altsyncram_component|auto_generated|q_a\(5) <= \B|itnram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\B|itnram|altsyncram_component|auto_generated|q_a\(6) <= \B|itnram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\B|itnram|altsyncram_component|auto_generated|q_a\(7) <= \B|itnram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\pll1|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \clk~input_o\);

\pll1|altpll_component|auto_generated|wire_pll1_clk\(0) <= \pll1|altpll_component|auto_generated|pll1_CLK_bus\(0);
\pll1|altpll_component|auto_generated|wire_pll1_clk\(1) <= \pll1|altpll_component|auto_generated|pll1_CLK_bus\(1);
\pll1|altpll_component|auto_generated|wire_pll1_clk\(2) <= \pll1|altpll_component|auto_generated|pll1_CLK_bus\(2);
\pll1|altpll_component|auto_generated|wire_pll1_clk\(3) <= \pll1|altpll_component|auto_generated|pll1_CLK_bus\(3);
\pll1|altpll_component|auto_generated|wire_pll1_clk\(4) <= \pll1|altpll_component|auto_generated|pll1_CLK_bus\(4);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \pll1|altpll_component|auto_generated|wire_pll1_clk\(0));

\B|comb~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \B|comb~0_combout\);
\ALT_INV_psw[3]~input_o\ <= NOT \psw[3]~input_o\;
\ALT_INV_psw[0]~input_o\ <= NOT \psw[0]~input_o\;
\A|ul1|ALT_INV_send_enable~2_combout\ <= NOT \A|ul1|send_enable~2_combout\;
\B|dp23|ALT_INV_Mux0~0_combout\ <= NOT \B|dp23|Mux0~0_combout\;
\B|dp13|ALT_INV_Mux0~0_combout\ <= NOT \B|dp13|Mux0~0_combout\;
\B|dp22|ALT_INV_Mux0~0_combout\ <= NOT \B|dp22|Mux0~0_combout\;
\B|dp21|ALT_INV_Mux0~0_combout\ <= NOT \B|dp21|Mux0~0_combout\;
\B|dp12|ALT_INV_Mux0~0_combout\ <= NOT \B|dp12|Mux0~0_combout\;
\B|dp11|ALT_INV_Mux0~0_combout\ <= NOT \B|dp11|Mux0~0_combout\;
\B|ctl|ALT_INV_oe_reg~q\ <= NOT \B|ctl|oe_reg~q\;
\B|ctl|ALT_INV_we_reg~q\ <= NOT \B|ctl|we_reg~q\;

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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => \B|ctl|ALT_INV_we_reg~q\,
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
	i => \B|dp11|Mux6~0_combout\,
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
	i => \B|dp11|Mux5~0_combout\,
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
	i => \B|dp11|Mux4~0_combout\,
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
	i => \B|dp11|Mux3~0_combout\,
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
	i => \B|dp11|Mux2~0_combout\,
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
	i => \B|dp11|Mux1~0_combout\,
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
	i => \B|dp11|ALT_INV_Mux0~0_combout\,
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
	i => \B|dp12|Mux6~0_combout\,
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
	i => \B|dp12|Mux5~0_combout\,
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
	i => \B|dp12|Mux4~0_combout\,
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
	i => \B|dp12|Mux3~0_combout\,
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
	i => \B|dp12|Mux2~0_combout\,
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
	i => \B|dp12|Mux1~0_combout\,
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
	i => \B|dp12|ALT_INV_Mux0~0_combout\,
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
	i => \B|dp21|Mux6~0_combout\,
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
	i => \B|dp21|Mux5~0_combout\,
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
	i => \B|dp21|Mux4~0_combout\,
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
	i => \B|dp21|Mux3~0_combout\,
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
	i => \B|dp21|Mux2~0_combout\,
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
	i => \B|dp21|Mux1~0_combout\,
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
	i => \B|dp21|ALT_INV_Mux0~0_combout\,
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
	i => \B|dp22|Mux6~0_combout\,
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
	i => \B|dp22|Mux5~0_combout\,
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
	i => \B|dp22|Mux4~0_combout\,
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
	i => \B|dp22|Mux3~0_combout\,
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
	i => \B|dp22|Mux2~0_combout\,
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
	i => \B|dp22|Mux1~0_combout\,
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
	i => \B|dp22|ALT_INV_Mux0~0_combout\,
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
	i => \B|dp13|Mux6~0_combout\,
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
	i => \B|dp13|Mux5~0_combout\,
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
	i => \B|dp13|Mux4~0_combout\,
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
	i => \B|dp13|Mux3~0_combout\,
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
	i => \B|dp13|Mux2~0_combout\,
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
	i => \B|dp13|Mux1~0_combout\,
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
	i => \B|dp13|ALT_INV_Mux0~0_combout\,
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
	i => \B|dp23|Mux6~0_combout\,
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
	i => \B|dp23|Mux5~0_combout\,
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
	i => \B|dp23|Mux4~0_combout\,
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
	i => \B|dp23|Mux3~0_combout\,
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
	i => \B|dp23|Mux2~0_combout\,
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
	i => \B|dp23|Mux1~0_combout\,
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
	i => \B|dp23|ALT_INV_Mux0~0_combout\,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => VCC,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => VCC,
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
	oe => \B|ctl|tri_reg~q\,
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
	oe => \B|ctl|tri_reg~q\,
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
	oe => \B|ctl|tri_reg~q\,
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
	oe => \B|ctl|tri_reg~q\,
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
	oe => \B|ctl|tri_reg~q\,
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
	oe => \B|ctl|tri_reg~q\,
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
	oe => \B|ctl|tri_reg~q\,
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
	oe => \B|ctl|tri_reg~q\,
	devoe => ww_devoe,
	o => ww_dio_sram(7));

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
	o => ww_dio_sram(8));

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
	o => ww_dio_sram(9));

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
	o => ww_dio_sram(10));

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
	o => ww_dio_sram(11));

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
	o => ww_dio_sram(12));

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
	o => ww_dio_sram(13));

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
	o => ww_dio_sram(14));

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

-- Location: LCCOMB_X68_Y11_N10
\B|ctl|nextstate.r1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|ctl|nextstate.r1~0_combout\ = (\psw[3]~input_o\ & (\tsw[17]~input_o\ & !\B|ctl|state.idle~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \psw[3]~input_o\,
	datac => \tsw[17]~input_o\,
	datad => \B|ctl|state.idle~q\,
	combout => \B|ctl|nextstate.r1~0_combout\);

-- Location: FF_X68_Y11_N11
\B|ctl|state.r1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \B|ctl|nextstate.r1~0_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|ctl|state.r1~q\);

-- Location: LCCOMB_X68_Y11_N4
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

-- Location: FF_X68_Y11_N5
\B|ctl|state.r2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \B|ctl|state.r2~feeder_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|ctl|state.r2~q\);

-- Location: LCCOMB_X68_Y11_N18
\B|ctl|state.w1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|ctl|state.w1~feeder_combout\ = \B|ctl|nextstate.w1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \B|ctl|nextstate.w1~0_combout\,
	combout => \B|ctl|state.w1~feeder_combout\);

-- Location: FF_X68_Y11_N19
\B|ctl|state.w1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \B|ctl|state.w1~feeder_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|ctl|state.w1~q\);

-- Location: LCCOMB_X68_Y11_N6
\B|ctl|state.w2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|ctl|state.w2~feeder_combout\ = \B|ctl|state.w1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \B|ctl|state.w1~q\,
	combout => \B|ctl|state.w2~feeder_combout\);

-- Location: FF_X68_Y11_N7
\B|ctl|state.w2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \B|ctl|state.w2~feeder_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|ctl|state.w2~q\);

-- Location: LCCOMB_X68_Y11_N20
\B|ctl|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|ctl|Selector0~0_combout\ = (!\B|ctl|state.r2~q\ & (!\B|ctl|state.w2~q\ & ((\tsw[17]~input_o\) # (\B|ctl|state.idle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B|ctl|state.r2~q\,
	datab => \tsw[17]~input_o\,
	datac => \B|ctl|state.idle~q\,
	datad => \B|ctl|state.w2~q\,
	combout => \B|ctl|Selector0~0_combout\);

-- Location: FF_X68_Y11_N21
\B|ctl|state.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \B|ctl|Selector0~0_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|ctl|state.idle~q\);

-- Location: LCCOMB_X68_Y11_N0
\B|ctl|nextstate.w1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|ctl|nextstate.w1~0_combout\ = (!\psw[3]~input_o\ & (\tsw[17]~input_o\ & !\B|ctl|state.idle~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \psw[3]~input_o\,
	datac => \tsw[17]~input_o\,
	datad => \B|ctl|state.idle~q\,
	combout => \B|ctl|nextstate.w1~0_combout\);

-- Location: FF_X68_Y11_N17
\B|ctl|data_write_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \tsw[8]~input_o\,
	clrn => \psw[0]~input_o\,
	sload => VCC,
	ena => \B|ctl|nextstate.w1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|ctl|data_write_reg\(0));

-- Location: LCCOMB_X68_Y11_N2
\B|ctl|tri_buf~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|ctl|tri_buf~0_combout\ = (\B|ctl|state.w1~q\) # ((!\psw[3]~input_o\ & (\tsw[17]~input_o\ & !\B|ctl|state.idle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \psw[3]~input_o\,
	datab => \B|ctl|state.w1~q\,
	datac => \tsw[17]~input_o\,
	datad => \B|ctl|state.idle~q\,
	combout => \B|ctl|tri_buf~0_combout\);

-- Location: FF_X68_Y11_N3
\B|ctl|tri_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
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

-- Location: LCCOMB_X68_Y11_N28
\B|ctl|data_write_reg[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|ctl|data_write_reg[1]~feeder_combout\ = \tsw[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tsw[9]~input_o\,
	combout => \B|ctl|data_write_reg[1]~feeder_combout\);

-- Location: FF_X68_Y11_N29
\B|ctl|data_write_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \B|ctl|data_write_reg[1]~feeder_combout\,
	clrn => \psw[0]~input_o\,
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

-- Location: LCCOMB_X68_Y11_N14
\B|ctl|data_write_reg[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|ctl|data_write_reg[2]~feeder_combout\ = \tsw[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tsw[10]~input_o\,
	combout => \B|ctl|data_write_reg[2]~feeder_combout\);

-- Location: FF_X68_Y11_N15
\B|ctl|data_write_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \B|ctl|data_write_reg[2]~feeder_combout\,
	clrn => \psw[0]~input_o\,
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

-- Location: FF_X68_Y11_N25
\B|ctl|data_write_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \tsw[11]~input_o\,
	clrn => \psw[0]~input_o\,
	sload => VCC,
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

-- Location: FF_X79_Y9_N7
\B|ctl|data_write_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
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

-- Location: LCCOMB_X79_Y9_N8
\B|ctl|data_write_reg[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|ctl|data_write_reg[5]~feeder_combout\ = \tsw[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tsw[13]~input_o\,
	combout => \B|ctl|data_write_reg[5]~feeder_combout\);

-- Location: FF_X79_Y9_N9
\B|ctl|data_write_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \B|ctl|data_write_reg[5]~feeder_combout\,
	clrn => \psw[0]~input_o\,
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

-- Location: LCCOMB_X79_Y9_N10
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

-- Location: FF_X79_Y9_N11
\B|ctl|data_write_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
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

-- Location: LCCOMB_X79_Y9_N20
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

-- Location: FF_X79_Y9_N21
\B|ctl|data_write_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \B|ctl|data_write_reg[7]~feeder_combout\,
	clrn => \psw[0]~input_o\,
	ena => \B|ctl|nextstate.w1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|ctl|data_write_reg\(7));

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

-- Location: LCCOMB_X62_Y20_N0
\A|lc1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Add0~0_combout\ = \A|lc1|count\(0) $ (VCC)
-- \A|lc1|Add0~1\ = CARRY(\A|lc1|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|lc1|count\(0),
	datad => VCC,
	combout => \A|lc1|Add0~0_combout\,
	cout => \A|lc1|Add0~1\);

-- Location: LCCOMB_X62_Y18_N12
\A|lc1|Selector32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector32~0_combout\ = (\A|lc1|Add0~0_combout\ & \A|lc1|count[30]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Add0~0_combout\,
	datac => \A|lc1|count[30]~5_combout\,
	combout => \A|lc1|Selector32~0_combout\);

-- Location: FF_X62_Y18_N13
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

-- Location: LCCOMB_X62_Y20_N2
\A|lc1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Add0~2_combout\ = (\A|lc1|count\(1) & (!\A|lc1|Add0~1\)) # (!\A|lc1|count\(1) & ((\A|lc1|Add0~1\) # (GND)))
-- \A|lc1|Add0~3\ = CARRY((!\A|lc1|Add0~1\) # (!\A|lc1|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|lc1|count\(1),
	datad => VCC,
	cin => \A|lc1|Add0~1\,
	combout => \A|lc1|Add0~2_combout\,
	cout => \A|lc1|Add0~3\);

-- Location: LCCOMB_X61_Y17_N22
\A|lc1|Selector31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector31~0_combout\ = (\A|lc1|count[30]~5_combout\ & \A|lc1|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|lc1|count[30]~5_combout\,
	datad => \A|lc1|Add0~2_combout\,
	combout => \A|lc1|Selector31~0_combout\);

-- Location: FF_X61_Y17_N23
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

-- Location: LCCOMB_X62_Y20_N4
\A|lc1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Add0~4_combout\ = (\A|lc1|count\(2) & (\A|lc1|Add0~3\ $ (GND))) # (!\A|lc1|count\(2) & (!\A|lc1|Add0~3\ & VCC))
-- \A|lc1|Add0~5\ = CARRY((\A|lc1|count\(2) & !\A|lc1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|count\(2),
	datad => VCC,
	cin => \A|lc1|Add0~3\,
	combout => \A|lc1|Add0~4_combout\,
	cout => \A|lc1|Add0~5\);

-- Location: LCCOMB_X62_Y18_N2
\A|lc1|Selector30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector30~0_combout\ = (\A|lc1|count[30]~5_combout\ & \A|lc1|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|lc1|count[30]~5_combout\,
	datad => \A|lc1|Add0~4_combout\,
	combout => \A|lc1|Selector30~0_combout\);

-- Location: FF_X62_Y18_N3
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

-- Location: LCCOMB_X62_Y20_N6
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

-- Location: LCCOMB_X63_Y20_N14
\A|lc1|Selector29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector29~0_combout\ = (\A|lc1|Add0~6_combout\ & \A|lc1|count[30]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|lc1|Add0~6_combout\,
	datad => \A|lc1|count[30]~5_combout\,
	combout => \A|lc1|Selector29~0_combout\);

-- Location: FF_X63_Y20_N15
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

-- Location: LCCOMB_X62_Y20_N8
\A|lc1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Add0~8_combout\ = (\A|lc1|count\(4) & (\A|lc1|Add0~7\ $ (GND))) # (!\A|lc1|count\(4) & (!\A|lc1|Add0~7\ & VCC))
-- \A|lc1|Add0~9\ = CARRY((\A|lc1|count\(4) & !\A|lc1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|count\(4),
	datad => VCC,
	cin => \A|lc1|Add0~7\,
	combout => \A|lc1|Add0~8_combout\,
	cout => \A|lc1|Add0~9\);

-- Location: LCCOMB_X65_Y20_N18
\A|lc1|Selector28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector28~0_combout\ = (\A|lc1|count[30]~5_combout\ & \A|lc1|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|lc1|count[30]~5_combout\,
	datad => \A|lc1|Add0~8_combout\,
	combout => \A|lc1|Selector28~0_combout\);

-- Location: FF_X65_Y20_N19
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

-- Location: LCCOMB_X62_Y20_N10
\A|lc1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Add0~10_combout\ = (\A|lc1|count\(5) & (!\A|lc1|Add0~9\)) # (!\A|lc1|count\(5) & ((\A|lc1|Add0~9\) # (GND)))
-- \A|lc1|Add0~11\ = CARRY((!\A|lc1|Add0~9\) # (!\A|lc1|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|count\(5),
	datad => VCC,
	cin => \A|lc1|Add0~9\,
	combout => \A|lc1|Add0~10_combout\,
	cout => \A|lc1|Add0~11\);

-- Location: LCCOMB_X63_Y20_N20
\A|lc1|Selector27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector27~0_combout\ = (\A|lc1|Add0~10_combout\ & \A|lc1|count[30]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Add0~10_combout\,
	datad => \A|lc1|count[30]~5_combout\,
	combout => \A|lc1|Selector27~0_combout\);

-- Location: FF_X63_Y20_N21
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

-- Location: LCCOMB_X62_Y20_N12
\A|lc1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Add0~12_combout\ = (\A|lc1|count\(6) & (\A|lc1|Add0~11\ $ (GND))) # (!\A|lc1|count\(6) & (!\A|lc1|Add0~11\ & VCC))
-- \A|lc1|Add0~13\ = CARRY((\A|lc1|count\(6) & !\A|lc1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|lc1|count\(6),
	datad => VCC,
	cin => \A|lc1|Add0~11\,
	combout => \A|lc1|Add0~12_combout\,
	cout => \A|lc1|Add0~13\);

-- Location: LCCOMB_X62_Y18_N0
\A|lc1|Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector26~0_combout\ = (\A|lc1|count[30]~5_combout\ & \A|lc1|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|lc1|count[30]~5_combout\,
	datad => \A|lc1|Add0~12_combout\,
	combout => \A|lc1|Selector26~0_combout\);

-- Location: FF_X62_Y18_N1
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

-- Location: LCCOMB_X62_Y20_N14
\A|lc1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Add0~14_combout\ = (\A|lc1|count\(7) & (!\A|lc1|Add0~13\)) # (!\A|lc1|count\(7) & ((\A|lc1|Add0~13\) # (GND)))
-- \A|lc1|Add0~15\ = CARRY((!\A|lc1|Add0~13\) # (!\A|lc1|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|lc1|count\(7),
	datad => VCC,
	cin => \A|lc1|Add0~13\,
	combout => \A|lc1|Add0~14_combout\,
	cout => \A|lc1|Add0~15\);

-- Location: LCCOMB_X61_Y17_N28
\A|lc1|Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector25~0_combout\ = (\A|lc1|count[30]~5_combout\ & \A|lc1|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|lc1|count[30]~5_combout\,
	datac => \A|lc1|Add0~14_combout\,
	combout => \A|lc1|Selector25~0_combout\);

-- Location: FF_X61_Y17_N29
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

-- Location: LCCOMB_X62_Y20_N16
\A|lc1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Add0~16_combout\ = (\A|lc1|count\(8) & (\A|lc1|Add0~15\ $ (GND))) # (!\A|lc1|count\(8) & (!\A|lc1|Add0~15\ & VCC))
-- \A|lc1|Add0~17\ = CARRY((\A|lc1|count\(8) & !\A|lc1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|count\(8),
	datad => VCC,
	cin => \A|lc1|Add0~15\,
	combout => \A|lc1|Add0~16_combout\,
	cout => \A|lc1|Add0~17\);

-- Location: LCCOMB_X63_Y20_N2
\A|lc1|Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector24~0_combout\ = (\A|lc1|Add0~16_combout\ & \A|lc1|count[30]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|lc1|Add0~16_combout\,
	datad => \A|lc1|count[30]~5_combout\,
	combout => \A|lc1|Selector24~0_combout\);

-- Location: FF_X63_Y20_N3
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

-- Location: LCCOMB_X62_Y20_N18
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

-- Location: LCCOMB_X61_Y17_N26
\A|lc1|Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector23~0_combout\ = (\A|lc1|count[30]~5_combout\ & \A|lc1|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|lc1|count[30]~5_combout\,
	datad => \A|lc1|Add0~18_combout\,
	combout => \A|lc1|Selector23~0_combout\);

-- Location: FF_X61_Y17_N27
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

-- Location: LCCOMB_X62_Y20_N20
\A|lc1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Add0~20_combout\ = (\A|lc1|count\(10) & (\A|lc1|Add0~19\ $ (GND))) # (!\A|lc1|count\(10) & (!\A|lc1|Add0~19\ & VCC))
-- \A|lc1|Add0~21\ = CARRY((\A|lc1|count\(10) & !\A|lc1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|count\(10),
	datad => VCC,
	cin => \A|lc1|Add0~19\,
	combout => \A|lc1|Add0~20_combout\,
	cout => \A|lc1|Add0~21\);

-- Location: LCCOMB_X61_Y17_N8
\A|lc1|Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector22~0_combout\ = (\A|lc1|count[30]~5_combout\ & \A|lc1|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|lc1|count[30]~5_combout\,
	datad => \A|lc1|Add0~20_combout\,
	combout => \A|lc1|Selector22~0_combout\);

-- Location: FF_X61_Y17_N9
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

-- Location: LCCOMB_X62_Y20_N22
\A|lc1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Add0~22_combout\ = (\A|lc1|count\(11) & (!\A|lc1|Add0~21\)) # (!\A|lc1|count\(11) & ((\A|lc1|Add0~21\) # (GND)))
-- \A|lc1|Add0~23\ = CARRY((!\A|lc1|Add0~21\) # (!\A|lc1|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|lc1|count\(11),
	datad => VCC,
	cin => \A|lc1|Add0~21\,
	combout => \A|lc1|Add0~22_combout\,
	cout => \A|lc1|Add0~23\);

-- Location: LCCOMB_X63_Y20_N8
\A|lc1|Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector21~0_combout\ = (\A|lc1|Add0~22_combout\ & \A|lc1|count[30]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|lc1|Add0~22_combout\,
	datad => \A|lc1|count[30]~5_combout\,
	combout => \A|lc1|Selector21~0_combout\);

-- Location: FF_X63_Y20_N9
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

-- Location: LCCOMB_X62_Y20_N24
\A|lc1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Add0~24_combout\ = (\A|lc1|count\(12) & (\A|lc1|Add0~23\ $ (GND))) # (!\A|lc1|count\(12) & (!\A|lc1|Add0~23\ & VCC))
-- \A|lc1|Add0~25\ = CARRY((\A|lc1|count\(12) & !\A|lc1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|count\(12),
	datad => VCC,
	cin => \A|lc1|Add0~23\,
	combout => \A|lc1|Add0~24_combout\,
	cout => \A|lc1|Add0~25\);

-- Location: LCCOMB_X65_Y20_N8
\A|lc1|Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector20~0_combout\ = (\A|lc1|Add0~24_combout\ & \A|lc1|count[30]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Add0~24_combout\,
	datac => \A|lc1|count[30]~5_combout\,
	combout => \A|lc1|Selector20~0_combout\);

-- Location: FF_X65_Y20_N9
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

-- Location: LCCOMB_X62_Y20_N26
\A|lc1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Add0~26_combout\ = (\A|lc1|count\(13) & (!\A|lc1|Add0~25\)) # (!\A|lc1|count\(13) & ((\A|lc1|Add0~25\) # (GND)))
-- \A|lc1|Add0~27\ = CARRY((!\A|lc1|Add0~25\) # (!\A|lc1|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|lc1|count\(13),
	datad => VCC,
	cin => \A|lc1|Add0~25\,
	combout => \A|lc1|Add0~26_combout\,
	cout => \A|lc1|Add0~27\);

-- Location: LCCOMB_X66_Y18_N6
\A|lc1|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector19~0_combout\ = (\A|lc1|count[30]~5_combout\ & \A|lc1|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|lc1|count[30]~5_combout\,
	datad => \A|lc1|Add0~26_combout\,
	combout => \A|lc1|Selector19~0_combout\);

-- Location: FF_X66_Y18_N7
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

-- Location: LCCOMB_X62_Y20_N28
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

-- Location: LCCOMB_X66_Y18_N12
\A|lc1|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector18~0_combout\ = (\A|lc1|count[30]~5_combout\ & \A|lc1|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|lc1|count[30]~5_combout\,
	datad => \A|lc1|Add0~28_combout\,
	combout => \A|lc1|Selector18~0_combout\);

-- Location: FF_X66_Y18_N13
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

-- Location: LCCOMB_X62_Y20_N30
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

-- Location: LCCOMB_X66_Y18_N10
\A|lc1|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector17~0_combout\ = (\A|lc1|Add0~30_combout\ & \A|lc1|count[30]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|lc1|Add0~30_combout\,
	datac => \A|lc1|count[30]~5_combout\,
	combout => \A|lc1|Selector17~0_combout\);

-- Location: FF_X66_Y18_N11
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

-- Location: LCCOMB_X62_Y19_N0
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

-- Location: LCCOMB_X66_Y18_N0
\A|lc1|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector16~0_combout\ = (\A|lc1|Add0~32_combout\ & \A|lc1|count[30]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Add0~32_combout\,
	datac => \A|lc1|count[30]~5_combout\,
	combout => \A|lc1|Selector16~0_combout\);

-- Location: FF_X66_Y18_N1
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

-- Location: LCCOMB_X62_Y19_N2
\A|lc1|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Add0~34_combout\ = (\A|lc1|count\(17) & (!\A|lc1|Add0~33\)) # (!\A|lc1|count\(17) & ((\A|lc1|Add0~33\) # (GND)))
-- \A|lc1|Add0~35\ = CARRY((!\A|lc1|Add0~33\) # (!\A|lc1|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|lc1|count\(17),
	datad => VCC,
	cin => \A|lc1|Add0~33\,
	combout => \A|lc1|Add0~34_combout\,
	cout => \A|lc1|Add0~35\);

-- Location: LCCOMB_X63_Y19_N10
\A|lc1|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector15~0_combout\ = (\A|lc1|Add0~34_combout\ & \A|lc1|count[30]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Add0~34_combout\,
	datad => \A|lc1|count[30]~5_combout\,
	combout => \A|lc1|Selector15~0_combout\);

-- Location: FF_X63_Y19_N11
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

-- Location: LCCOMB_X62_Y19_N4
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

-- Location: LCCOMB_X63_Y19_N8
\A|lc1|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector14~0_combout\ = (\A|lc1|Add0~36_combout\ & \A|lc1|count[30]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|lc1|Add0~36_combout\,
	datad => \A|lc1|count[30]~5_combout\,
	combout => \A|lc1|Selector14~0_combout\);

-- Location: FF_X63_Y19_N9
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

-- Location: LCCOMB_X62_Y19_N6
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

-- Location: LCCOMB_X65_Y19_N18
\A|lc1|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector13~0_combout\ = (\A|lc1|Add0~38_combout\ & \A|lc1|count[30]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|lc1|Add0~38_combout\,
	datac => \A|lc1|count[30]~5_combout\,
	combout => \A|lc1|Selector13~0_combout\);

-- Location: FF_X65_Y19_N19
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

-- Location: LCCOMB_X62_Y19_N8
\A|lc1|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Add0~40_combout\ = (\A|lc1|count\(20) & (\A|lc1|Add0~39\ $ (GND))) # (!\A|lc1|count\(20) & (!\A|lc1|Add0~39\ & VCC))
-- \A|lc1|Add0~41\ = CARRY((\A|lc1|count\(20) & !\A|lc1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|count\(20),
	datad => VCC,
	cin => \A|lc1|Add0~39\,
	combout => \A|lc1|Add0~40_combout\,
	cout => \A|lc1|Add0~41\);

-- Location: LCCOMB_X61_Y19_N16
\A|lc1|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector12~0_combout\ = (\A|lc1|count[30]~5_combout\ & \A|lc1|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|count[30]~5_combout\,
	datac => \A|lc1|Add0~40_combout\,
	combout => \A|lc1|Selector12~0_combout\);

-- Location: FF_X61_Y19_N17
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

-- Location: LCCOMB_X62_Y19_N10
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

-- Location: LCCOMB_X65_Y19_N24
\A|lc1|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector11~0_combout\ = (\A|lc1|count[30]~5_combout\ & \A|lc1|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|lc1|count[30]~5_combout\,
	datad => \A|lc1|Add0~42_combout\,
	combout => \A|lc1|Selector11~0_combout\);

-- Location: FF_X65_Y19_N25
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

-- Location: LCCOMB_X62_Y19_N12
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

-- Location: LCCOMB_X61_Y19_N14
\A|lc1|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector10~0_combout\ = (\A|lc1|count[30]~5_combout\ & \A|lc1|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|count[30]~5_combout\,
	datac => \A|lc1|Add0~44_combout\,
	combout => \A|lc1|Selector10~0_combout\);

-- Location: FF_X61_Y19_N15
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

-- Location: LCCOMB_X62_Y19_N14
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

-- Location: LCCOMB_X62_Y18_N14
\A|lc1|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector9~0_combout\ = (\A|lc1|Add0~46_combout\ & \A|lc1|count[30]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Add0~46_combout\,
	datac => \A|lc1|count[30]~5_combout\,
	combout => \A|lc1|Selector9~0_combout\);

-- Location: FF_X62_Y18_N15
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

-- Location: LCCOMB_X62_Y19_N16
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

-- Location: LCCOMB_X61_Y19_N12
\A|lc1|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector8~0_combout\ = (\A|lc1|count[30]~5_combout\ & \A|lc1|Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|lc1|count[30]~5_combout\,
	datad => \A|lc1|Add0~48_combout\,
	combout => \A|lc1|Selector8~0_combout\);

-- Location: FF_X61_Y19_N13
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

-- Location: LCCOMB_X62_Y19_N18
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

-- Location: LCCOMB_X61_Y19_N2
\A|lc1|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector7~0_combout\ = (\A|lc1|count[30]~5_combout\ & \A|lc1|Add0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|lc1|count[30]~5_combout\,
	datad => \A|lc1|Add0~50_combout\,
	combout => \A|lc1|Selector7~0_combout\);

-- Location: FF_X61_Y19_N3
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

-- Location: LCCOMB_X61_Y19_N10
\A|lc1|LessThan9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan9~0_combout\ = (!\A|lc1|count\(24) & (!\A|lc1|count\(25) & (!\A|lc1|count\(23) & !\A|lc1|count\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|count\(24),
	datab => \A|lc1|count\(25),
	datac => \A|lc1|count\(23),
	datad => \A|lc1|count\(22),
	combout => \A|lc1|LessThan9~0_combout\);

-- Location: LCCOMB_X62_Y19_N20
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

-- Location: LCCOMB_X61_Y19_N8
\A|lc1|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector6~0_combout\ = (\A|lc1|count[30]~5_combout\ & \A|lc1|Add0~52_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|count[30]~5_combout\,
	datac => \A|lc1|Add0~52_combout\,
	combout => \A|lc1|Selector6~0_combout\);

-- Location: FF_X61_Y19_N9
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

-- Location: LCCOMB_X61_Y19_N28
\A|lc1|LessThan9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan9~1_combout\ = (\A|lc1|LessThan9~0_combout\ & !\A|lc1|count\(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|LessThan9~0_combout\,
	datac => \A|lc1|count\(26),
	combout => \A|lc1|LessThan9~1_combout\);

-- Location: LCCOMB_X62_Y19_N22
\A|lc1|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Add0~54_combout\ = (\A|lc1|count\(27) & (!\A|lc1|Add0~53\)) # (!\A|lc1|count\(27) & ((\A|lc1|Add0~53\) # (GND)))
-- \A|lc1|Add0~55\ = CARRY((!\A|lc1|Add0~53\) # (!\A|lc1|count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|lc1|count\(27),
	datad => VCC,
	cin => \A|lc1|Add0~53\,
	combout => \A|lc1|Add0~54_combout\,
	cout => \A|lc1|Add0~55\);

-- Location: LCCOMB_X61_Y19_N6
\A|lc1|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector5~0_combout\ = (\A|lc1|count[30]~5_combout\ & \A|lc1|Add0~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|lc1|count[30]~5_combout\,
	datad => \A|lc1|Add0~54_combout\,
	combout => \A|lc1|Selector5~0_combout\);

-- Location: FF_X61_Y19_N7
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

-- Location: LCCOMB_X62_Y19_N24
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

-- Location: LCCOMB_X61_Y19_N4
\A|lc1|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector4~0_combout\ = (\A|lc1|Add0~56_combout\ & \A|lc1|count[30]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Add0~56_combout\,
	datac => \A|lc1|count[30]~5_combout\,
	combout => \A|lc1|Selector4~0_combout\);

-- Location: FF_X61_Y19_N5
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

-- Location: LCCOMB_X62_Y19_N26
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

-- Location: LCCOMB_X61_Y19_N18
\A|lc1|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector3~0_combout\ = (\A|lc1|count[30]~5_combout\ & \A|lc1|Add0~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|lc1|count[30]~5_combout\,
	datad => \A|lc1|Add0~58_combout\,
	combout => \A|lc1|Selector3~0_combout\);

-- Location: FF_X61_Y19_N19
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

-- Location: LCCOMB_X62_Y19_N28
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

-- Location: LCCOMB_X62_Y19_N30
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

-- Location: LCCOMB_X62_Y17_N20
\A|lc1|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector1~0_combout\ = (\A|lc1|count[30]~5_combout\ & \A|lc1|Add0~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|lc1|count[30]~5_combout\,
	datad => \A|lc1|Add0~62_combout\,
	combout => \A|lc1|Selector1~0_combout\);

-- Location: FF_X62_Y17_N21
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

-- Location: LCCOMB_X61_Y19_N30
\A|lc1|LessThan9~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan9~8_combout\ = (!\A|lc1|count\(27) & (!\A|lc1|count\(30) & (!\A|lc1|count\(28) & !\A|lc1|count\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|count\(27),
	datab => \A|lc1|count\(30),
	datac => \A|lc1|count\(28),
	datad => \A|lc1|count\(29),
	combout => \A|lc1|LessThan9~8_combout\);

-- Location: LCCOMB_X66_Y18_N22
\A|lc1|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan0~0_combout\ = (!\A|lc1|count\(15) & (!\A|lc1|count\(16) & !\A|lc1|count\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|count\(15),
	datab => \A|lc1|count\(16),
	datad => \A|lc1|count\(14),
	combout => \A|lc1|LessThan0~0_combout\);

-- Location: LCCOMB_X61_Y17_N12
\A|lc1|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan0~1_combout\ = (((!\A|lc1|count\(6) & !\A|lc1|count\(5))) # (!\A|lc1|count\(8))) # (!\A|lc1|count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|count\(6),
	datab => \A|lc1|count\(7),
	datac => \A|lc1|count\(8),
	datad => \A|lc1|count\(5),
	combout => \A|lc1|LessThan0~1_combout\);

-- Location: LCCOMB_X61_Y17_N6
\A|lc1|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan0~2_combout\ = ((!\A|lc1|count\(9) & \A|lc1|LessThan0~1_combout\)) # (!\A|lc1|count\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|count\(9),
	datac => \A|lc1|count\(10),
	datad => \A|lc1|LessThan0~1_combout\,
	combout => \A|lc1|LessThan0~2_combout\);

-- Location: LCCOMB_X65_Y18_N28
\A|lc1|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan0~3_combout\ = ((!\A|lc1|count\(11) & (!\A|lc1|count\(12) & \A|lc1|LessThan0~2_combout\))) # (!\A|lc1|count\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|count\(11),
	datab => \A|lc1|count\(12),
	datac => \A|lc1|LessThan0~2_combout\,
	datad => \A|lc1|count\(13),
	combout => \A|lc1|LessThan0~3_combout\);

-- Location: LCCOMB_X65_Y18_N30
\A|lc1|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan0~4_combout\ = (((\A|lc1|LessThan0~0_combout\ & \A|lc1|LessThan0~3_combout\)) # (!\A|lc1|count\(17))) # (!\A|lc1|count\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|LessThan0~0_combout\,
	datab => \A|lc1|LessThan0~3_combout\,
	datac => \A|lc1|count\(18),
	datad => \A|lc1|count\(17),
	combout => \A|lc1|LessThan0~4_combout\);

-- Location: LCCOMB_X65_Y18_N0
\A|lc1|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan0~5_combout\ = ((!\A|lc1|count\(20) & (!\A|lc1|count\(19) & \A|lc1|LessThan0~4_combout\))) # (!\A|lc1|count\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|count\(20),
	datab => \A|lc1|count\(21),
	datac => \A|lc1|count\(19),
	datad => \A|lc1|LessThan0~4_combout\,
	combout => \A|lc1|LessThan0~5_combout\);

-- Location: LCCOMB_X65_Y18_N26
\A|lc1|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan0~6_combout\ = (\A|lc1|count\(31)) # ((\A|lc1|LessThan9~1_combout\ & (\A|lc1|LessThan9~8_combout\ & \A|lc1|LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|LessThan9~1_combout\,
	datab => \A|lc1|count\(31),
	datac => \A|lc1|LessThan9~8_combout\,
	datad => \A|lc1|LessThan0~5_combout\,
	combout => \A|lc1|LessThan0~6_combout\);

-- Location: LCCOMB_X62_Y17_N6
\A|lc1|state~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|state~7_combout\ = (\psw[0]~input_o\ & ((\A|lc1|state.power~q\) # (!\A|lc1|LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \psw[0]~input_o\,
	datab => \A|lc1|LessThan0~6_combout\,
	datac => \A|lc1|state.power~q\,
	combout => \A|lc1|state~7_combout\);

-- Location: FF_X62_Y17_N7
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

-- Location: LCCOMB_X65_Y18_N8
\A|lc1|LessThan9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan9~2_combout\ = (!\A|lc1|count\(19) & (!\A|lc1|count\(17) & (!\A|lc1|count\(20) & !\A|lc1|count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|count\(19),
	datab => \A|lc1|count\(17),
	datac => \A|lc1|count\(20),
	datad => \A|lc1|count\(13),
	combout => \A|lc1|LessThan9~2_combout\);

-- Location: LCCOMB_X65_Y18_N18
\A|lc1|LessThan9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan9~3_combout\ = (\A|lc1|LessThan9~1_combout\ & (!\A|lc1|count\(12) & (\A|lc1|LessThan9~2_combout\ & \A|lc1|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|LessThan9~1_combout\,
	datab => \A|lc1|count\(12),
	datac => \A|lc1|LessThan9~2_combout\,
	datad => \A|lc1|LessThan0~0_combout\,
	combout => \A|lc1|LessThan9~3_combout\);

-- Location: LCCOMB_X65_Y18_N4
\A|lc1|LessThan9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan9~4_combout\ = (!\A|lc1|count\(18) & (\A|lc1|LessThan9~3_combout\ & !\A|lc1|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|count\(18),
	datab => \A|lc1|LessThan9~3_combout\,
	datac => \A|lc1|count\(21),
	combout => \A|lc1|LessThan9~4_combout\);

-- Location: LCCOMB_X61_Y17_N16
\A|lc1|LessThan9~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan9~5_combout\ = (!\A|lc1|count\(3) & (!\A|lc1|count\(5) & (!\A|lc1|count\(2) & !\A|lc1|count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|count\(3),
	datab => \A|lc1|count\(5),
	datac => \A|lc1|count\(2),
	datad => \A|lc1|count\(4),
	combout => \A|lc1|LessThan9~5_combout\);

-- Location: LCCOMB_X61_Y17_N10
\A|lc1|LessThan9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan9~6_combout\ = ((\A|lc1|LessThan9~5_combout\) # ((!\A|lc1|count\(7)) # (!\A|lc1|count\(8)))) # (!\A|lc1|count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|count\(6),
	datab => \A|lc1|LessThan9~5_combout\,
	datac => \A|lc1|count\(8),
	datad => \A|lc1|count\(7),
	combout => \A|lc1|LessThan9~6_combout\);

-- Location: LCCOMB_X65_Y18_N24
\A|lc1|LessThan9~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan9~7_combout\ = ((!\A|lc1|count\(10) & (!\A|lc1|count\(9) & \A|lc1|LessThan9~6_combout\))) # (!\A|lc1|count\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|count\(10),
	datab => \A|lc1|count\(9),
	datac => \A|lc1|count\(11),
	datad => \A|lc1|LessThan9~6_combout\,
	combout => \A|lc1|LessThan9~7_combout\);

-- Location: LCCOMB_X65_Y18_N12
\A|lc1|Selector34~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector34~2_combout\ = (!\A|lc1|count\(31) & (((!\A|lc1|LessThan9~7_combout\) # (!\A|lc1|LessThan9~4_combout\)) # (!\A|lc1|LessThan9~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|LessThan9~8_combout\,
	datab => \A|lc1|count\(31),
	datac => \A|lc1|LessThan9~4_combout\,
	datad => \A|lc1|LessThan9~7_combout\,
	combout => \A|lc1|Selector34~2_combout\);

-- Location: LCCOMB_X74_Y14_N0
\A|ul1|count[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|count[1]~feeder_combout\ = \A|ul1|Add0~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A|ul1|Add0~8_combout\,
	combout => \A|ul1|count[1]~feeder_combout\);

-- Location: LCCOMB_X75_Y21_N8
\A|update1|q[0]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|update1|q[0]~63_combout\ = !\A|update1|q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|update1|q\(0),
	combout => \A|update1|q[0]~63_combout\);

-- Location: FF_X75_Y21_N9
\A|update1|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|update1|q[0]~63_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|update1|q\(0));

-- Location: LCCOMB_X75_Y21_N12
\A|update1|q[1]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|update1|q[1]~21_combout\ = (\A|update1|q\(1) & (\A|update1|q\(0) $ (VCC))) # (!\A|update1|q\(1) & (\A|update1|q\(0) & VCC))
-- \A|update1|q[1]~22\ = CARRY((\A|update1|q\(1) & \A|update1|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|update1|q\(1),
	datab => \A|update1|q\(0),
	datad => VCC,
	combout => \A|update1|q[1]~21_combout\,
	cout => \A|update1|q[1]~22\);

-- Location: FF_X75_Y21_N13
\A|update1|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|update1|q[1]~21_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|update1|q\(1));

-- Location: LCCOMB_X75_Y21_N14
\A|update1|q[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|update1|q[2]~23_combout\ = (\A|update1|q\(2) & (!\A|update1|q[1]~22\)) # (!\A|update1|q\(2) & ((\A|update1|q[1]~22\) # (GND)))
-- \A|update1|q[2]~24\ = CARRY((!\A|update1|q[1]~22\) # (!\A|update1|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|update1|q\(2),
	datad => VCC,
	cin => \A|update1|q[1]~22\,
	combout => \A|update1|q[2]~23_combout\,
	cout => \A|update1|q[2]~24\);

-- Location: FF_X75_Y21_N15
\A|update1|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|update1|q[2]~23_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|update1|q\(2));

-- Location: LCCOMB_X75_Y21_N16
\A|update1|q[3]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|update1|q[3]~25_combout\ = (\A|update1|q\(3) & (\A|update1|q[2]~24\ $ (GND))) # (!\A|update1|q\(3) & (!\A|update1|q[2]~24\ & VCC))
-- \A|update1|q[3]~26\ = CARRY((\A|update1|q\(3) & !\A|update1|q[2]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|update1|q\(3),
	datad => VCC,
	cin => \A|update1|q[2]~24\,
	combout => \A|update1|q[3]~25_combout\,
	cout => \A|update1|q[3]~26\);

-- Location: FF_X75_Y21_N17
\A|update1|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|update1|q[3]~25_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|update1|q\(3));

-- Location: LCCOMB_X75_Y21_N18
\A|update1|q[4]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|update1|q[4]~27_combout\ = (\A|update1|q\(4) & (!\A|update1|q[3]~26\)) # (!\A|update1|q\(4) & ((\A|update1|q[3]~26\) # (GND)))
-- \A|update1|q[4]~28\ = CARRY((!\A|update1|q[3]~26\) # (!\A|update1|q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|update1|q\(4),
	datad => VCC,
	cin => \A|update1|q[3]~26\,
	combout => \A|update1|q[4]~27_combout\,
	cout => \A|update1|q[4]~28\);

-- Location: FF_X75_Y21_N19
\A|update1|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|update1|q[4]~27_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|update1|q\(4));

-- Location: LCCOMB_X75_Y21_N20
\A|update1|q[5]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|update1|q[5]~29_combout\ = (\A|update1|q\(5) & (\A|update1|q[4]~28\ $ (GND))) # (!\A|update1|q\(5) & (!\A|update1|q[4]~28\ & VCC))
-- \A|update1|q[5]~30\ = CARRY((\A|update1|q\(5) & !\A|update1|q[4]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|update1|q\(5),
	datad => VCC,
	cin => \A|update1|q[4]~28\,
	combout => \A|update1|q[5]~29_combout\,
	cout => \A|update1|q[5]~30\);

-- Location: FF_X75_Y21_N21
\A|update1|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|update1|q[5]~29_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|update1|q\(5));

-- Location: LCCOMB_X75_Y21_N22
\A|update1|q[6]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|update1|q[6]~31_combout\ = (\A|update1|q\(6) & (!\A|update1|q[5]~30\)) # (!\A|update1|q\(6) & ((\A|update1|q[5]~30\) # (GND)))
-- \A|update1|q[6]~32\ = CARRY((!\A|update1|q[5]~30\) # (!\A|update1|q\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|update1|q\(6),
	datad => VCC,
	cin => \A|update1|q[5]~30\,
	combout => \A|update1|q[6]~31_combout\,
	cout => \A|update1|q[6]~32\);

-- Location: FF_X75_Y21_N23
\A|update1|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|update1|q[6]~31_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|update1|q\(6));

-- Location: LCCOMB_X75_Y21_N24
\A|update1|q[7]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|update1|q[7]~33_combout\ = (\A|update1|q\(7) & (\A|update1|q[6]~32\ $ (GND))) # (!\A|update1|q\(7) & (!\A|update1|q[6]~32\ & VCC))
-- \A|update1|q[7]~34\ = CARRY((\A|update1|q\(7) & !\A|update1|q[6]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|update1|q\(7),
	datad => VCC,
	cin => \A|update1|q[6]~32\,
	combout => \A|update1|q[7]~33_combout\,
	cout => \A|update1|q[7]~34\);

-- Location: FF_X75_Y21_N25
\A|update1|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|update1|q[7]~33_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|update1|q\(7));

-- Location: LCCOMB_X75_Y21_N26
\A|update1|q[8]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|update1|q[8]~35_combout\ = (\A|update1|q\(8) & (!\A|update1|q[7]~34\)) # (!\A|update1|q\(8) & ((\A|update1|q[7]~34\) # (GND)))
-- \A|update1|q[8]~36\ = CARRY((!\A|update1|q[7]~34\) # (!\A|update1|q\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|update1|q\(8),
	datad => VCC,
	cin => \A|update1|q[7]~34\,
	combout => \A|update1|q[8]~35_combout\,
	cout => \A|update1|q[8]~36\);

-- Location: FF_X75_Y21_N27
\A|update1|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|update1|q[8]~35_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|update1|q\(8));

-- Location: LCCOMB_X75_Y21_N28
\A|update1|q[9]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|update1|q[9]~37_combout\ = (\A|update1|q\(9) & (\A|update1|q[8]~36\ $ (GND))) # (!\A|update1|q\(9) & (!\A|update1|q[8]~36\ & VCC))
-- \A|update1|q[9]~38\ = CARRY((\A|update1|q\(9) & !\A|update1|q[8]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|update1|q\(9),
	datad => VCC,
	cin => \A|update1|q[8]~36\,
	combout => \A|update1|q[9]~37_combout\,
	cout => \A|update1|q[9]~38\);

-- Location: FF_X75_Y21_N29
\A|update1|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|update1|q[9]~37_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|update1|q\(9));

-- Location: LCCOMB_X75_Y21_N30
\A|update1|q[10]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|update1|q[10]~39_combout\ = (\A|update1|q\(10) & (!\A|update1|q[9]~38\)) # (!\A|update1|q\(10) & ((\A|update1|q[9]~38\) # (GND)))
-- \A|update1|q[10]~40\ = CARRY((!\A|update1|q[9]~38\) # (!\A|update1|q\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|update1|q\(10),
	datad => VCC,
	cin => \A|update1|q[9]~38\,
	combout => \A|update1|q[10]~39_combout\,
	cout => \A|update1|q[10]~40\);

-- Location: FF_X75_Y21_N31
\A|update1|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|update1|q[10]~39_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|update1|q\(10));

-- Location: LCCOMB_X75_Y20_N0
\A|update1|q[11]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|update1|q[11]~41_combout\ = (\A|update1|q\(11) & (\A|update1|q[10]~40\ $ (GND))) # (!\A|update1|q\(11) & (!\A|update1|q[10]~40\ & VCC))
-- \A|update1|q[11]~42\ = CARRY((\A|update1|q\(11) & !\A|update1|q[10]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|update1|q\(11),
	datad => VCC,
	cin => \A|update1|q[10]~40\,
	combout => \A|update1|q[11]~41_combout\,
	cout => \A|update1|q[11]~42\);

-- Location: FF_X75_Y20_N1
\A|update1|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|update1|q[11]~41_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|update1|q\(11));

-- Location: LCCOMB_X75_Y20_N2
\A|update1|q[12]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|update1|q[12]~43_combout\ = (\A|update1|q\(12) & (!\A|update1|q[11]~42\)) # (!\A|update1|q\(12) & ((\A|update1|q[11]~42\) # (GND)))
-- \A|update1|q[12]~44\ = CARRY((!\A|update1|q[11]~42\) # (!\A|update1|q\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|update1|q\(12),
	datad => VCC,
	cin => \A|update1|q[11]~42\,
	combout => \A|update1|q[12]~43_combout\,
	cout => \A|update1|q[12]~44\);

-- Location: FF_X75_Y20_N3
\A|update1|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|update1|q[12]~43_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|update1|q\(12));

-- Location: LCCOMB_X75_Y20_N4
\A|update1|q[13]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|update1|q[13]~45_combout\ = (\A|update1|q\(13) & (\A|update1|q[12]~44\ $ (GND))) # (!\A|update1|q\(13) & (!\A|update1|q[12]~44\ & VCC))
-- \A|update1|q[13]~46\ = CARRY((\A|update1|q\(13) & !\A|update1|q[12]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|update1|q\(13),
	datad => VCC,
	cin => \A|update1|q[12]~44\,
	combout => \A|update1|q[13]~45_combout\,
	cout => \A|update1|q[13]~46\);

-- Location: FF_X75_Y20_N5
\A|update1|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|update1|q[13]~45_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|update1|q\(13));

-- Location: LCCOMB_X75_Y20_N6
\A|update1|q[14]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|update1|q[14]~47_combout\ = (\A|update1|q\(14) & (!\A|update1|q[13]~46\)) # (!\A|update1|q\(14) & ((\A|update1|q[13]~46\) # (GND)))
-- \A|update1|q[14]~48\ = CARRY((!\A|update1|q[13]~46\) # (!\A|update1|q\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|update1|q\(14),
	datad => VCC,
	cin => \A|update1|q[13]~46\,
	combout => \A|update1|q[14]~47_combout\,
	cout => \A|update1|q[14]~48\);

-- Location: FF_X75_Y20_N7
\A|update1|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|update1|q[14]~47_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|update1|q\(14));

-- Location: LCCOMB_X75_Y20_N8
\A|update1|q[15]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|update1|q[15]~49_combout\ = (\A|update1|q\(15) & (\A|update1|q[14]~48\ $ (GND))) # (!\A|update1|q\(15) & (!\A|update1|q[14]~48\ & VCC))
-- \A|update1|q[15]~50\ = CARRY((\A|update1|q\(15) & !\A|update1|q[14]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|update1|q\(15),
	datad => VCC,
	cin => \A|update1|q[14]~48\,
	combout => \A|update1|q[15]~49_combout\,
	cout => \A|update1|q[15]~50\);

-- Location: FF_X75_Y20_N9
\A|update1|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|update1|q[15]~49_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|update1|q\(15));

-- Location: LCCOMB_X75_Y20_N10
\A|update1|q[16]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|update1|q[16]~51_combout\ = (\A|update1|q\(16) & (!\A|update1|q[15]~50\)) # (!\A|update1|q\(16) & ((\A|update1|q[15]~50\) # (GND)))
-- \A|update1|q[16]~52\ = CARRY((!\A|update1|q[15]~50\) # (!\A|update1|q\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|update1|q\(16),
	datad => VCC,
	cin => \A|update1|q[15]~50\,
	combout => \A|update1|q[16]~51_combout\,
	cout => \A|update1|q[16]~52\);

-- Location: FF_X75_Y20_N11
\A|update1|q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|update1|q[16]~51_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|update1|q\(16));

-- Location: LCCOMB_X75_Y20_N12
\A|update1|q[17]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|update1|q[17]~53_combout\ = (\A|update1|q\(17) & (\A|update1|q[16]~52\ $ (GND))) # (!\A|update1|q\(17) & (!\A|update1|q[16]~52\ & VCC))
-- \A|update1|q[17]~54\ = CARRY((\A|update1|q\(17) & !\A|update1|q[16]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|update1|q\(17),
	datad => VCC,
	cin => \A|update1|q[16]~52\,
	combout => \A|update1|q[17]~53_combout\,
	cout => \A|update1|q[17]~54\);

-- Location: FF_X75_Y20_N13
\A|update1|q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|update1|q[17]~53_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|update1|q\(17));

-- Location: LCCOMB_X75_Y20_N14
\A|update1|q[18]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|update1|q[18]~55_combout\ = (\A|update1|q\(18) & (!\A|update1|q[17]~54\)) # (!\A|update1|q\(18) & ((\A|update1|q[17]~54\) # (GND)))
-- \A|update1|q[18]~56\ = CARRY((!\A|update1|q[17]~54\) # (!\A|update1|q\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|update1|q\(18),
	datad => VCC,
	cin => \A|update1|q[17]~54\,
	combout => \A|update1|q[18]~55_combout\,
	cout => \A|update1|q[18]~56\);

-- Location: FF_X75_Y20_N15
\A|update1|q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|update1|q[18]~55_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|update1|q\(18));

-- Location: LCCOMB_X75_Y20_N16
\A|update1|q[19]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|update1|q[19]~57_combout\ = (\A|update1|q\(19) & (\A|update1|q[18]~56\ $ (GND))) # (!\A|update1|q\(19) & (!\A|update1|q[18]~56\ & VCC))
-- \A|update1|q[19]~58\ = CARRY((\A|update1|q\(19) & !\A|update1|q[18]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|update1|q\(19),
	datad => VCC,
	cin => \A|update1|q[18]~56\,
	combout => \A|update1|q[19]~57_combout\,
	cout => \A|update1|q[19]~58\);

-- Location: FF_X75_Y20_N17
\A|update1|q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|update1|q[19]~57_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|update1|q\(19));

-- Location: LCCOMB_X75_Y20_N18
\A|update1|q[20]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|update1|q[20]~59_combout\ = (\A|update1|q\(20) & (!\A|update1|q[19]~58\)) # (!\A|update1|q\(20) & ((\A|update1|q[19]~58\) # (GND)))
-- \A|update1|q[20]~60\ = CARRY((!\A|update1|q[19]~58\) # (!\A|update1|q\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|update1|q\(20),
	datad => VCC,
	cin => \A|update1|q[19]~58\,
	combout => \A|update1|q[20]~59_combout\,
	cout => \A|update1|q[20]~60\);

-- Location: FF_X75_Y20_N19
\A|update1|q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|update1|q[20]~59_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|update1|q\(20));

-- Location: LCCOMB_X75_Y20_N20
\A|update1|q[21]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|update1|q[21]~61_combout\ = \A|update1|q[20]~60\ $ (!\A|update1|q\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \A|update1|q\(21),
	cin => \A|update1|q[20]~60\,
	combout => \A|update1|q[21]~61_combout\);

-- Location: FF_X75_Y20_N21
\A|update1|q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|update1|q[21]~61_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|update1|q\(21));

-- Location: LCCOMB_X61_Y19_N26
\A|lc1|LessThan5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan5~0_combout\ = (!\A|lc1|Add0~34_combout\ & (!\A|lc1|Add0~36_combout\ & (!\A|lc1|Add0~40_combout\ & !\A|lc1|Add0~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Add0~34_combout\,
	datab => \A|lc1|Add0~36_combout\,
	datac => \A|lc1|Add0~40_combout\,
	datad => \A|lc1|Add0~38_combout\,
	combout => \A|lc1|LessThan5~0_combout\);

-- Location: LCCOMB_X61_Y19_N20
\A|lc1|LessThan5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan5~1_combout\ = (!\A|lc1|Add0~42_combout\ & (!\A|lc1|Add0~46_combout\ & (!\A|lc1|Add0~44_combout\ & !\A|lc1|Add0~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Add0~42_combout\,
	datab => \A|lc1|Add0~46_combout\,
	datac => \A|lc1|Add0~44_combout\,
	datad => \A|lc1|Add0~48_combout\,
	combout => \A|lc1|LessThan5~1_combout\);

-- Location: LCCOMB_X61_Y19_N22
\A|lc1|LessThan5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan5~2_combout\ = (!\A|lc1|Add0~56_combout\ & (!\A|lc1|Add0~54_combout\ & (!\A|lc1|Add0~52_combout\ & !\A|lc1|Add0~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Add0~56_combout\,
	datab => \A|lc1|Add0~54_combout\,
	datac => \A|lc1|Add0~52_combout\,
	datad => \A|lc1|Add0~50_combout\,
	combout => \A|lc1|LessThan5~2_combout\);

-- Location: LCCOMB_X61_Y19_N0
\A|lc1|LessThan5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan5~3_combout\ = (\A|lc1|LessThan5~0_combout\ & (\A|lc1|LessThan5~1_combout\ & (\A|lc1|LessThan5~2_combout\ & !\A|lc1|Add0~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|LessThan5~0_combout\,
	datab => \A|lc1|LessThan5~1_combout\,
	datac => \A|lc1|LessThan5~2_combout\,
	datad => \A|lc1|Add0~58_combout\,
	combout => \A|lc1|LessThan5~3_combout\);

-- Location: LCCOMB_X63_Y20_N18
\A|lc1|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan1~0_combout\ = (!\A|lc1|Add0~22_combout\ & (!\A|lc1|Add0~20_combout\ & (!\A|lc1|Add0~24_combout\ & !\A|lc1|Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Add0~22_combout\,
	datab => \A|lc1|Add0~20_combout\,
	datac => \A|lc1|Add0~24_combout\,
	datad => \A|lc1|Add0~18_combout\,
	combout => \A|lc1|LessThan1~0_combout\);

-- Location: LCCOMB_X65_Y20_N10
\A|lc1|busy~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|busy~4_combout\ = (!\A|lc1|Add0~8_combout\ & (!\A|lc1|Add0~10_combout\ & (!\A|lc1|Add0~4_combout\ & !\A|lc1|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Add0~8_combout\,
	datab => \A|lc1|Add0~10_combout\,
	datac => \A|lc1|Add0~4_combout\,
	datad => \A|lc1|Add0~6_combout\,
	combout => \A|lc1|busy~4_combout\);

-- Location: LCCOMB_X65_Y20_N20
\A|lc1|busy~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|busy~5_combout\ = (!\A|lc1|Add0~16_combout\ & (!\A|lc1|Add0~12_combout\ & (!\A|lc1|Add0~14_combout\ & \A|lc1|busy~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Add0~16_combout\,
	datab => \A|lc1|Add0~12_combout\,
	datac => \A|lc1|Add0~14_combout\,
	datad => \A|lc1|busy~4_combout\,
	combout => \A|lc1|busy~5_combout\);

-- Location: LCCOMB_X66_Y20_N8
\A|lc1|busy~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|busy~6_combout\ = (!\A|lc1|Add0~28_combout\ & (((\A|lc1|LessThan1~0_combout\ & \A|lc1|busy~5_combout\)) # (!\A|lc1|Add0~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Add0~26_combout\,
	datab => \A|lc1|LessThan1~0_combout\,
	datac => \A|lc1|Add0~28_combout\,
	datad => \A|lc1|busy~5_combout\,
	combout => \A|lc1|busy~6_combout\);

-- Location: LCCOMB_X66_Y18_N24
\A|lc1|busy~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|busy~8_combout\ = (\A|lc1|LessThan5~3_combout\ & (((\A|lc1|busy~6_combout\) # (!\A|lc1|Add0~30_combout\)) # (!\A|lc1|Add0~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Add0~32_combout\,
	datab => \A|lc1|Add0~30_combout\,
	datac => \A|lc1|LessThan5~3_combout\,
	datad => \A|lc1|busy~6_combout\,
	combout => \A|lc1|busy~8_combout\);

-- Location: LCCOMB_X65_Y20_N6
\A|lc1|LessThan8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan8~0_combout\ = (\A|lc1|Add0~14_combout\ & \A|lc1|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|lc1|Add0~14_combout\,
	datad => \A|lc1|Add0~16_combout\,
	combout => \A|lc1|LessThan8~0_combout\);

-- Location: LCCOMB_X65_Y20_N4
\A|lc1|LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan3~0_combout\ = ((!\A|lc1|Add0~8_combout\ & ((!\A|lc1|Add0~6_combout\) # (!\A|lc1|Add0~4_combout\)))) # (!\A|lc1|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Add0~8_combout\,
	datab => \A|lc1|Add0~10_combout\,
	datac => \A|lc1|Add0~4_combout\,
	datad => \A|lc1|Add0~6_combout\,
	combout => \A|lc1|LessThan3~0_combout\);

-- Location: LCCOMB_X63_Y20_N12
\A|lc1|LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan3~1_combout\ = (!\A|lc1|Add0~18_combout\ & (((!\A|lc1|Add0~12_combout\ & \A|lc1|LessThan3~0_combout\)) # (!\A|lc1|LessThan8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Add0~12_combout\,
	datab => \A|lc1|LessThan8~0_combout\,
	datac => \A|lc1|LessThan3~0_combout\,
	datad => \A|lc1|Add0~18_combout\,
	combout => \A|lc1|LessThan3~1_combout\);

-- Location: LCCOMB_X63_Y20_N22
\A|lc1|LessThan8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan8~1_combout\ = (\A|lc1|Add0~20_combout\ & \A|lc1|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|lc1|Add0~20_combout\,
	datad => \A|lc1|Add0~22_combout\,
	combout => \A|lc1|LessThan8~1_combout\);

-- Location: LCCOMB_X63_Y19_N12
\A|lc1|LessThan5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan5~4_combout\ = (!\A|lc1|Add0~28_combout\ & !\A|lc1|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|lc1|Add0~28_combout\,
	datac => \A|lc1|Add0~26_combout\,
	combout => \A|lc1|LessThan5~4_combout\);

-- Location: LCCOMB_X63_Y20_N24
\A|lc1|LessThan5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan5~5_combout\ = (!\A|lc1|Add0~32_combout\ & (!\A|lc1|Add0~30_combout\ & (\A|lc1|LessThan5~4_combout\ & \A|lc1|LessThan5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Add0~32_combout\,
	datab => \A|lc1|Add0~30_combout\,
	datac => \A|lc1|LessThan5~4_combout\,
	datad => \A|lc1|LessThan5~3_combout\,
	combout => \A|lc1|LessThan5~5_combout\);

-- Location: LCCOMB_X63_Y20_N16
\A|lc1|LessThan3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan3~2_combout\ = (!\A|lc1|Add0~24_combout\ & (\A|lc1|LessThan5~5_combout\ & ((\A|lc1|LessThan3~1_combout\) # (!\A|lc1|LessThan8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|LessThan3~1_combout\,
	datab => \A|lc1|Add0~24_combout\,
	datac => \A|lc1|LessThan8~1_combout\,
	datad => \A|lc1|LessThan5~5_combout\,
	combout => \A|lc1|LessThan3~2_combout\);

-- Location: LCCOMB_X61_Y21_N0
\A|lc1|Selector34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector34~0_combout\ = (!\A|lc1|Add0~62_combout\ & ((\A|lc1|Add0~60_combout\) # ((!\A|lc1|busy~8_combout\ & !\A|lc1|LessThan3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Add0~62_combout\,
	datab => \A|lc1|busy~8_combout\,
	datac => \A|lc1|LessThan3~2_combout\,
	datad => \A|lc1|Add0~60_combout\,
	combout => \A|lc1|Selector34~0_combout\);

-- Location: LCCOMB_X65_Y20_N0
\A|lc1|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan1~1_combout\ = (\A|lc1|Add0~8_combout\ & (\A|lc1|Add0~10_combout\ & (\A|lc1|Add0~12_combout\ & \A|lc1|LessThan8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Add0~8_combout\,
	datab => \A|lc1|Add0~10_combout\,
	datac => \A|lc1|Add0~12_combout\,
	datad => \A|lc1|LessThan8~0_combout\,
	combout => \A|lc1|LessThan1~1_combout\);

-- Location: LCCOMB_X65_Y20_N14
\A|lc1|LessThan7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan7~2_combout\ = ((\A|lc1|LessThan1~0_combout\ & ((!\A|lc1|LessThan1~1_combout\) # (!\A|lc1|Add0~6_combout\)))) # (!\A|lc1|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Add0~6_combout\,
	datab => \A|lc1|LessThan1~0_combout\,
	datac => \A|lc1|Add0~26_combout\,
	datad => \A|lc1|LessThan1~1_combout\,
	combout => \A|lc1|LessThan7~2_combout\);

-- Location: LCCOMB_X66_Y18_N2
\A|lc1|LessThan7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan7~4_combout\ = (((!\A|lc1|Add0~28_combout\ & \A|lc1|LessThan7~2_combout\)) # (!\A|lc1|Add0~32_combout\)) # (!\A|lc1|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Add0~28_combout\,
	datab => \A|lc1|Add0~30_combout\,
	datac => \A|lc1|Add0~32_combout\,
	datad => \A|lc1|LessThan7~2_combout\,
	combout => \A|lc1|LessThan7~4_combout\);

-- Location: LCCOMB_X66_Y18_N18
\A|lc1|LessThan7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan7~3_combout\ = (!\A|lc1|Add0~60_combout\ & (\A|lc1|LessThan5~3_combout\ & \A|lc1|LessThan7~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Add0~60_combout\,
	datac => \A|lc1|LessThan5~3_combout\,
	datad => \A|lc1|LessThan7~4_combout\,
	combout => \A|lc1|LessThan7~3_combout\);

-- Location: LCCOMB_X65_Y20_N24
\A|lc1|LessThan8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan8~2_combout\ = (!\A|lc1|Add0~12_combout\ & ((!\A|lc1|Add0~8_combout\) # (!\A|lc1|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|lc1|Add0~10_combout\,
	datac => \A|lc1|Add0~12_combout\,
	datad => \A|lc1|Add0~8_combout\,
	combout => \A|lc1|LessThan8~2_combout\);

-- Location: LCCOMB_X63_Y20_N26
\A|lc1|LessThan8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan8~3_combout\ = ((!\A|lc1|Add0~18_combout\ & ((\A|lc1|LessThan8~2_combout\) # (!\A|lc1|LessThan8~0_combout\)))) # (!\A|lc1|LessThan8~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|LessThan8~1_combout\,
	datab => \A|lc1|Add0~18_combout\,
	datac => \A|lc1|LessThan8~0_combout\,
	datad => \A|lc1|LessThan8~2_combout\,
	combout => \A|lc1|LessThan8~3_combout\);

-- Location: LCCOMB_X65_Y20_N26
\A|lc1|LessThan8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan8~4_combout\ = (!\A|lc1|Add0~28_combout\ & (((!\A|lc1|Add0~24_combout\ & \A|lc1|LessThan8~3_combout\)) # (!\A|lc1|Add0~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Add0~24_combout\,
	datab => \A|lc1|Add0~28_combout\,
	datac => \A|lc1|Add0~26_combout\,
	datad => \A|lc1|LessThan8~3_combout\,
	combout => \A|lc1|LessThan8~4_combout\);

-- Location: LCCOMB_X66_Y18_N16
\A|lc1|busy~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|busy~7_combout\ = (\A|lc1|Add0~30_combout\ & \A|lc1|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|lc1|Add0~30_combout\,
	datac => \A|lc1|Add0~32_combout\,
	combout => \A|lc1|busy~7_combout\);

-- Location: LCCOMB_X66_Y18_N4
\A|lc1|LessThan8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan8~5_combout\ = (!\A|lc1|Add0~60_combout\ & (\A|lc1|LessThan5~3_combout\ & ((\A|lc1|LessThan8~4_combout\) # (!\A|lc1|busy~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Add0~60_combout\,
	datab => \A|lc1|LessThan5~3_combout\,
	datac => \A|lc1|LessThan8~4_combout\,
	datad => \A|lc1|busy~7_combout\,
	combout => \A|lc1|LessThan8~5_combout\);

-- Location: LCCOMB_X62_Y18_N26
\A|lc1|Selector34~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector34~1_combout\ = (\A|lc1|Selector34~0_combout\ & (!\A|lc1|LessThan7~3_combout\ & !\A|lc1|LessThan8~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Selector34~0_combout\,
	datac => \A|lc1|LessThan7~3_combout\,
	datad => \A|lc1|LessThan8~5_combout\,
	combout => \A|lc1|Selector34~1_combout\);

-- Location: LCCOMB_X62_Y17_N0
\A|lc1|Selector33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector33~0_combout\ = (\A|lc1|LessThan0~6_combout\ & (!\A|lc1|Selector34~1_combout\ & (\A|lc1|state.init~q\))) # (!\A|lc1|LessThan0~6_combout\ & (((!\A|lc1|Selector34~1_combout\ & \A|lc1|state.init~q\)) # (!\A|lc1|state.power~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|LessThan0~6_combout\,
	datab => \A|lc1|Selector34~1_combout\,
	datac => \A|lc1|state.init~q\,
	datad => \A|lc1|state.power~q\,
	combout => \A|lc1|Selector33~0_combout\);

-- Location: FF_X62_Y17_N1
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

-- Location: LCCOMB_X62_Y18_N30
\A|lc1|Selector34~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector34~3_combout\ = (\A|lc1|Selector34~1_combout\ & (!\A|lc1|state.init~q\ & ((\A|ul1|send_enable~q\) # (!\A|lc1|state.ready~q\)))) # (!\A|lc1|Selector34~1_combout\ & (((\A|ul1|send_enable~q\)) # (!\A|lc1|state.ready~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Selector34~1_combout\,
	datab => \A|lc1|state.ready~q\,
	datac => \A|ul1|send_enable~q\,
	datad => \A|lc1|state.init~q\,
	combout => \A|lc1|Selector34~3_combout\);

-- Location: FF_X62_Y18_N31
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

-- Location: LCCOMB_X72_Y14_N24
\A|ul1|data_write[9]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|data_write[9]~8_combout\ = (!\A|lc1|busy~q\ & !\A|ul1|send_enable~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|lc1|busy~q\,
	datad => \A|ul1|send_enable~q\,
	combout => \A|ul1|data_write[9]~8_combout\);

-- Location: FF_X74_Y14_N1
\A|ul1|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ul1|count[1]~feeder_combout\,
	clrn => \A|update1|q\(21),
	ena => \A|ul1|data_write[9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(1));

-- Location: LCCOMB_X76_Y17_N0
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

-- Location: LCCOMB_X76_Y17_N2
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

-- Location: LCCOMB_X76_Y17_N4
\A|ul1|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~9_combout\ = (\A|ul1|count\(2) & (\A|ul1|Add0~7\ $ (GND))) # (!\A|ul1|count\(2) & (!\A|ul1|Add0~7\ & VCC))
-- \A|ul1|Add0~10\ = CARRY((\A|ul1|count\(2) & !\A|ul1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(2),
	datad => VCC,
	cin => \A|ul1|Add0~7\,
	combout => \A|ul1|Add0~9_combout\,
	cout => \A|ul1|Add0~10\);

-- Location: LCCOMB_X74_Y14_N20
\A|ul1|Add0~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~94_combout\ = (\A|ul1|count\(31) & (\A|ul1|Add0~9_combout\)) # (!\A|ul1|count\(31) & ((\A|ul1|LessThan0~9_combout\ & (\A|ul1|Add0~9_combout\)) # (!\A|ul1|LessThan0~9_combout\ & ((\A|ul1|count\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~9_combout\,
	datab => \A|ul1|count\(31),
	datac => \A|ul1|count\(2),
	datad => \A|ul1|LessThan0~9_combout\,
	combout => \A|ul1|Add0~94_combout\);

-- Location: FF_X74_Y14_N21
\A|ul1|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ul1|Add0~94_combout\,
	clrn => \A|update1|q\(21),
	ena => \A|ul1|data_write[9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(2));

-- Location: LCCOMB_X76_Y17_N6
\A|ul1|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~11_combout\ = (\A|ul1|count\(3) & (!\A|ul1|Add0~10\)) # (!\A|ul1|count\(3) & ((\A|ul1|Add0~10\) # (GND)))
-- \A|ul1|Add0~12\ = CARRY((!\A|ul1|Add0~10\) # (!\A|ul1|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|count\(3),
	datad => VCC,
	cin => \A|ul1|Add0~10\,
	combout => \A|ul1|Add0~11_combout\,
	cout => \A|ul1|Add0~12\);

-- Location: LCCOMB_X74_Y14_N18
\A|ul1|Add0~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~92_combout\ = (\A|ul1|count\(31) & (((\A|ul1|Add0~11_combout\)))) # (!\A|ul1|count\(31) & ((\A|ul1|LessThan0~9_combout\ & ((\A|ul1|Add0~11_combout\))) # (!\A|ul1|LessThan0~9_combout\ & (\A|ul1|count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(3),
	datab => \A|ul1|count\(31),
	datac => \A|ul1|Add0~11_combout\,
	datad => \A|ul1|LessThan0~9_combout\,
	combout => \A|ul1|Add0~92_combout\);

-- Location: FF_X74_Y14_N11
\A|ul1|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \A|ul1|Add0~92_combout\,
	clrn => \A|update1|q\(21),
	sload => VCC,
	ena => \A|ul1|data_write[9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(3));

-- Location: LCCOMB_X76_Y17_N8
\A|ul1|Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~13_combout\ = (\A|ul1|count\(4) & (\A|ul1|Add0~12\ $ (GND))) # (!\A|ul1|count\(4) & (!\A|ul1|Add0~12\ & VCC))
-- \A|ul1|Add0~14\ = CARRY((\A|ul1|count\(4) & !\A|ul1|Add0~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(4),
	datad => VCC,
	cin => \A|ul1|Add0~12\,
	combout => \A|ul1|Add0~13_combout\,
	cout => \A|ul1|Add0~14\);

-- Location: LCCOMB_X74_Y14_N8
\A|ul1|Add0~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~91_combout\ = (\A|ul1|count\(31) & (\A|ul1|Add0~13_combout\)) # (!\A|ul1|count\(31) & ((\A|ul1|LessThan0~9_combout\ & (\A|ul1|Add0~13_combout\)) # (!\A|ul1|LessThan0~9_combout\ & ((\A|ul1|count\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~13_combout\,
	datab => \A|ul1|count\(31),
	datac => \A|ul1|count\(4),
	datad => \A|ul1|LessThan0~9_combout\,
	combout => \A|ul1|Add0~91_combout\);

-- Location: FF_X74_Y14_N31
\A|ul1|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \A|ul1|Add0~91_combout\,
	clrn => \A|update1|q\(21),
	sload => VCC,
	ena => \A|ul1|data_write[9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(4));

-- Location: LCCOMB_X74_Y14_N24
\A|ul1|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|LessThan0~1_combout\ = (!\A|ul1|count\(4) & (((!\A|ul1|count\(0) & !\A|ul1|count\(1))) # (!\A|ul1|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(0),
	datab => \A|ul1|count\(1),
	datac => \A|ul1|count\(4),
	datad => \A|ul1|count\(2),
	combout => \A|ul1|LessThan0~1_combout\);

-- Location: LCCOMB_X76_Y17_N10
\A|ul1|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~15_combout\ = (\A|ul1|count\(5) & (!\A|ul1|Add0~14\)) # (!\A|ul1|count\(5) & ((\A|ul1|Add0~14\) # (GND)))
-- \A|ul1|Add0~16\ = CARRY((!\A|ul1|Add0~14\) # (!\A|ul1|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(5),
	datad => VCC,
	cin => \A|ul1|Add0~14\,
	combout => \A|ul1|Add0~15_combout\,
	cout => \A|ul1|Add0~16\);

-- Location: LCCOMB_X76_Y18_N6
\A|ul1|Add0~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~85_combout\ = (\A|ul1|count\(31) & (((\A|ul1|Add0~15_combout\)))) # (!\A|ul1|count\(31) & ((\A|ul1|LessThan0~9_combout\ & ((\A|ul1|Add0~15_combout\))) # (!\A|ul1|LessThan0~9_combout\ & (\A|ul1|count\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(5),
	datab => \A|ul1|count\(31),
	datac => \A|ul1|LessThan0~9_combout\,
	datad => \A|ul1|Add0~15_combout\,
	combout => \A|ul1|Add0~85_combout\);

-- Location: LCCOMB_X75_Y18_N18
\A|ul1|count[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|count[5]~feeder_combout\ = \A|ul1|Add0~85_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A|ul1|Add0~85_combout\,
	combout => \A|ul1|count[5]~feeder_combout\);

-- Location: FF_X75_Y18_N19
\A|ul1|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ul1|count[5]~feeder_combout\,
	clrn => \A|update1|q\(21),
	ena => \A|ul1|data_write[9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(5));

-- Location: LCCOMB_X76_Y17_N12
\A|ul1|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~17_combout\ = (\A|ul1|count\(6) & (\A|ul1|Add0~16\ $ (GND))) # (!\A|ul1|count\(6) & (!\A|ul1|Add0~16\ & VCC))
-- \A|ul1|Add0~18\ = CARRY((\A|ul1|count\(6) & !\A|ul1|Add0~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|count\(6),
	datad => VCC,
	cin => \A|ul1|Add0~16\,
	combout => \A|ul1|Add0~17_combout\,
	cout => \A|ul1|Add0~18\);

-- Location: LCCOMB_X77_Y16_N14
\A|ul1|Add0~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~72_combout\ = (\A|ul1|count\(31) & (\A|ul1|Add0~17_combout\)) # (!\A|ul1|count\(31) & ((\A|ul1|LessThan0~9_combout\ & (\A|ul1|Add0~17_combout\)) # (!\A|ul1|LessThan0~9_combout\ & ((\A|ul1|count\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(31),
	datab => \A|ul1|Add0~17_combout\,
	datac => \A|ul1|count\(6),
	datad => \A|ul1|LessThan0~9_combout\,
	combout => \A|ul1|Add0~72_combout\);

-- Location: FF_X77_Y16_N15
\A|ul1|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ul1|Add0~72_combout\,
	clrn => \A|update1|q\(21),
	ena => \A|ul1|data_write[9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(6));

-- Location: LCCOMB_X76_Y17_N14
\A|ul1|Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~19_combout\ = (\A|ul1|count\(7) & (!\A|ul1|Add0~18\)) # (!\A|ul1|count\(7) & ((\A|ul1|Add0~18\) # (GND)))
-- \A|ul1|Add0~20\ = CARRY((!\A|ul1|Add0~18\) # (!\A|ul1|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|count\(7),
	datad => VCC,
	cin => \A|ul1|Add0~18\,
	combout => \A|ul1|Add0~19_combout\,
	cout => \A|ul1|Add0~20\);

-- Location: LCCOMB_X76_Y18_N14
\A|ul1|Add0~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~71_combout\ = (\A|ul1|count\(31) & (\A|ul1|Add0~19_combout\)) # (!\A|ul1|count\(31) & ((\A|ul1|LessThan0~9_combout\ & (\A|ul1|Add0~19_combout\)) # (!\A|ul1|LessThan0~9_combout\ & ((\A|ul1|count\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~19_combout\,
	datab => \A|ul1|count\(31),
	datac => \A|ul1|LessThan0~9_combout\,
	datad => \A|ul1|count\(7),
	combout => \A|ul1|Add0~71_combout\);

-- Location: LCCOMB_X76_Y18_N20
\A|ul1|count[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|count[7]~feeder_combout\ = \A|ul1|Add0~71_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|ul1|Add0~71_combout\,
	combout => \A|ul1|count[7]~feeder_combout\);

-- Location: FF_X76_Y18_N21
\A|ul1|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ul1|count[7]~feeder_combout\,
	clrn => \A|update1|q\(21),
	ena => \A|ul1|data_write[9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(7));

-- Location: LCCOMB_X76_Y17_N16
\A|ul1|Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~21_combout\ = (\A|ul1|count\(8) & (\A|ul1|Add0~20\ $ (GND))) # (!\A|ul1|count\(8) & (!\A|ul1|Add0~20\ & VCC))
-- \A|ul1|Add0~22\ = CARRY((\A|ul1|count\(8) & !\A|ul1|Add0~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(8),
	datad => VCC,
	cin => \A|ul1|Add0~20\,
	combout => \A|ul1|Add0~21_combout\,
	cout => \A|ul1|Add0~22\);

-- Location: LCCOMB_X75_Y17_N14
\A|ul1|Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~23_combout\ = (\A|ul1|LessThan0~9_combout\ & (\A|ul1|Add0~21_combout\)) # (!\A|ul1|LessThan0~9_combout\ & ((\A|ul1|count\(31) & (\A|ul1|Add0~21_combout\)) # (!\A|ul1|count\(31) & ((\A|ul1|count\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|LessThan0~9_combout\,
	datab => \A|ul1|Add0~21_combout\,
	datac => \A|ul1|count\(8),
	datad => \A|ul1|count\(31),
	combout => \A|ul1|Add0~23_combout\);

-- Location: FF_X75_Y17_N15
\A|ul1|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ul1|Add0~23_combout\,
	clrn => \A|update1|q\(21),
	ena => \A|ul1|data_write[9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(8));

-- Location: LCCOMB_X76_Y17_N18
\A|ul1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~24_combout\ = (\A|ul1|count\(9) & (!\A|ul1|Add0~22\)) # (!\A|ul1|count\(9) & ((\A|ul1|Add0~22\) # (GND)))
-- \A|ul1|Add0~25\ = CARRY((!\A|ul1|Add0~22\) # (!\A|ul1|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|count\(9),
	datad => VCC,
	cin => \A|ul1|Add0~22\,
	combout => \A|ul1|Add0~24_combout\,
	cout => \A|ul1|Add0~25\);

-- Location: LCCOMB_X75_Y17_N20
\A|ul1|Add0~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~70_combout\ = (\A|ul1|LessThan0~9_combout\ & (\A|ul1|Add0~24_combout\)) # (!\A|ul1|LessThan0~9_combout\ & ((\A|ul1|count\(31) & (\A|ul1|Add0~24_combout\)) # (!\A|ul1|count\(31) & ((\A|ul1|count\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|LessThan0~9_combout\,
	datab => \A|ul1|Add0~24_combout\,
	datac => \A|ul1|count\(9),
	datad => \A|ul1|count\(31),
	combout => \A|ul1|Add0~70_combout\);

-- Location: FF_X75_Y17_N21
\A|ul1|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ul1|Add0~70_combout\,
	clrn => \A|update1|q\(21),
	ena => \A|ul1|data_write[9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(9));

-- Location: LCCOMB_X76_Y17_N20
\A|ul1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~26_combout\ = (\A|ul1|count\(10) & (\A|ul1|Add0~25\ $ (GND))) # (!\A|ul1|count\(10) & (!\A|ul1|Add0~25\ & VCC))
-- \A|ul1|Add0~27\ = CARRY((\A|ul1|count\(10) & !\A|ul1|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|count\(10),
	datad => VCC,
	cin => \A|ul1|Add0~25\,
	combout => \A|ul1|Add0~26_combout\,
	cout => \A|ul1|Add0~27\);

-- Location: LCCOMB_X75_Y17_N18
\A|ul1|Add0~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~73_combout\ = (\A|ul1|LessThan0~9_combout\ & (\A|ul1|Add0~26_combout\)) # (!\A|ul1|LessThan0~9_combout\ & ((\A|ul1|count\(31) & (\A|ul1|Add0~26_combout\)) # (!\A|ul1|count\(31) & ((\A|ul1|count\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|LessThan0~9_combout\,
	datab => \A|ul1|Add0~26_combout\,
	datac => \A|ul1|count\(10),
	datad => \A|ul1|count\(31),
	combout => \A|ul1|Add0~73_combout\);

-- Location: FF_X75_Y17_N19
\A|ul1|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ul1|Add0~73_combout\,
	clrn => \A|update1|q\(21),
	ena => \A|ul1|data_write[9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(10));

-- Location: LCCOMB_X76_Y17_N22
\A|ul1|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~28_combout\ = (\A|ul1|count\(11) & (!\A|ul1|Add0~27\)) # (!\A|ul1|count\(11) & ((\A|ul1|Add0~27\) # (GND)))
-- \A|ul1|Add0~29\ = CARRY((!\A|ul1|Add0~27\) # (!\A|ul1|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(11),
	datad => VCC,
	cin => \A|ul1|Add0~27\,
	combout => \A|ul1|Add0~28_combout\,
	cout => \A|ul1|Add0~29\);

-- Location: LCCOMB_X75_Y17_N6
\A|ul1|Add0~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~74_combout\ = (\A|ul1|LessThan0~9_combout\ & (\A|ul1|Add0~28_combout\)) # (!\A|ul1|LessThan0~9_combout\ & ((\A|ul1|count\(31) & (\A|ul1|Add0~28_combout\)) # (!\A|ul1|count\(31) & ((\A|ul1|count\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|LessThan0~9_combout\,
	datab => \A|ul1|Add0~28_combout\,
	datac => \A|ul1|count\(11),
	datad => \A|ul1|count\(31),
	combout => \A|ul1|Add0~74_combout\);

-- Location: FF_X75_Y17_N7
\A|ul1|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ul1|Add0~74_combout\,
	clrn => \A|update1|q\(21),
	ena => \A|ul1|data_write[9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(11));

-- Location: LCCOMB_X76_Y17_N24
\A|ul1|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~30_combout\ = (\A|ul1|count\(12) & (\A|ul1|Add0~29\ $ (GND))) # (!\A|ul1|count\(12) & (!\A|ul1|Add0~29\ & VCC))
-- \A|ul1|Add0~31\ = CARRY((\A|ul1|count\(12) & !\A|ul1|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(12),
	datad => VCC,
	cin => \A|ul1|Add0~29\,
	combout => \A|ul1|Add0~30_combout\,
	cout => \A|ul1|Add0~31\);

-- Location: LCCOMB_X75_Y17_N12
\A|ul1|Add0~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~75_combout\ = (\A|ul1|LessThan0~9_combout\ & (\A|ul1|Add0~30_combout\)) # (!\A|ul1|LessThan0~9_combout\ & ((\A|ul1|count\(31) & (\A|ul1|Add0~30_combout\)) # (!\A|ul1|count\(31) & ((\A|ul1|count\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|LessThan0~9_combout\,
	datab => \A|ul1|Add0~30_combout\,
	datac => \A|ul1|count\(12),
	datad => \A|ul1|count\(31),
	combout => \A|ul1|Add0~75_combout\);

-- Location: FF_X75_Y17_N13
\A|ul1|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ul1|Add0~75_combout\,
	clrn => \A|update1|q\(21),
	ena => \A|ul1|data_write[9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(12));

-- Location: LCCOMB_X76_Y17_N26
\A|ul1|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~32_combout\ = (\A|ul1|count\(13) & (!\A|ul1|Add0~31\)) # (!\A|ul1|count\(13) & ((\A|ul1|Add0~31\) # (GND)))
-- \A|ul1|Add0~33\ = CARRY((!\A|ul1|Add0~31\) # (!\A|ul1|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(13),
	datad => VCC,
	cin => \A|ul1|Add0~31\,
	combout => \A|ul1|Add0~32_combout\,
	cout => \A|ul1|Add0~33\);

-- Location: LCCOMB_X75_Y17_N26
\A|ul1|Add0~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~76_combout\ = (\A|ul1|LessThan0~9_combout\ & (\A|ul1|Add0~32_combout\)) # (!\A|ul1|LessThan0~9_combout\ & ((\A|ul1|count\(31) & (\A|ul1|Add0~32_combout\)) # (!\A|ul1|count\(31) & ((\A|ul1|count\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|LessThan0~9_combout\,
	datab => \A|ul1|Add0~32_combout\,
	datac => \A|ul1|count\(13),
	datad => \A|ul1|count\(31),
	combout => \A|ul1|Add0~76_combout\);

-- Location: FF_X75_Y17_N27
\A|ul1|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ul1|Add0~76_combout\,
	clrn => \A|update1|q\(21),
	ena => \A|ul1|data_write[9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(13));

-- Location: LCCOMB_X76_Y17_N28
\A|ul1|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~34_combout\ = (\A|ul1|count\(14) & (\A|ul1|Add0~33\ $ (GND))) # (!\A|ul1|count\(14) & (!\A|ul1|Add0~33\ & VCC))
-- \A|ul1|Add0~35\ = CARRY((\A|ul1|count\(14) & !\A|ul1|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(14),
	datad => VCC,
	cin => \A|ul1|Add0~33\,
	combout => \A|ul1|Add0~34_combout\,
	cout => \A|ul1|Add0~35\);

-- Location: LCCOMB_X75_Y17_N16
\A|ul1|Add0~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~78_combout\ = (\A|ul1|LessThan0~9_combout\ & (\A|ul1|Add0~34_combout\)) # (!\A|ul1|LessThan0~9_combout\ & ((\A|ul1|count\(31) & (\A|ul1|Add0~34_combout\)) # (!\A|ul1|count\(31) & ((\A|ul1|count\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|LessThan0~9_combout\,
	datab => \A|ul1|Add0~34_combout\,
	datac => \A|ul1|count\(14),
	datad => \A|ul1|count\(31),
	combout => \A|ul1|Add0~78_combout\);

-- Location: FF_X75_Y17_N17
\A|ul1|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ul1|Add0~78_combout\,
	clrn => \A|update1|q\(21),
	ena => \A|ul1|data_write[9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(14));

-- Location: LCCOMB_X76_Y17_N30
\A|ul1|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~36_combout\ = (\A|ul1|count\(15) & (!\A|ul1|Add0~35\)) # (!\A|ul1|count\(15) & ((\A|ul1|Add0~35\) # (GND)))
-- \A|ul1|Add0~37\ = CARRY((!\A|ul1|Add0~35\) # (!\A|ul1|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|count\(15),
	datad => VCC,
	cin => \A|ul1|Add0~35\,
	combout => \A|ul1|Add0~36_combout\,
	cout => \A|ul1|Add0~37\);

-- Location: LCCOMB_X75_Y17_N28
\A|ul1|Add0~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~79_combout\ = (\A|ul1|LessThan0~9_combout\ & (((\A|ul1|Add0~36_combout\)))) # (!\A|ul1|LessThan0~9_combout\ & ((\A|ul1|count\(31) & ((\A|ul1|Add0~36_combout\))) # (!\A|ul1|count\(31) & (\A|ul1|count\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|LessThan0~9_combout\,
	datab => \A|ul1|count\(31),
	datac => \A|ul1|count\(15),
	datad => \A|ul1|Add0~36_combout\,
	combout => \A|ul1|Add0~79_combout\);

-- Location: FF_X75_Y17_N29
\A|ul1|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ul1|Add0~79_combout\,
	clrn => \A|update1|q\(21),
	ena => \A|ul1|data_write[9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(15));

-- Location: LCCOMB_X76_Y16_N0
\A|ul1|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~38_combout\ = (\A|ul1|count\(16) & (\A|ul1|Add0~37\ $ (GND))) # (!\A|ul1|count\(16) & (!\A|ul1|Add0~37\ & VCC))
-- \A|ul1|Add0~39\ = CARRY((\A|ul1|count\(16) & !\A|ul1|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|count\(16),
	datad => VCC,
	cin => \A|ul1|Add0~37\,
	combout => \A|ul1|Add0~38_combout\,
	cout => \A|ul1|Add0~39\);

-- Location: LCCOMB_X75_Y17_N10
\A|ul1|Add0~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~80_combout\ = (\A|ul1|LessThan0~9_combout\ & (((\A|ul1|Add0~38_combout\)))) # (!\A|ul1|LessThan0~9_combout\ & ((\A|ul1|count\(31) & ((\A|ul1|Add0~38_combout\))) # (!\A|ul1|count\(31) & (\A|ul1|count\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|LessThan0~9_combout\,
	datab => \A|ul1|count\(31),
	datac => \A|ul1|count\(16),
	datad => \A|ul1|Add0~38_combout\,
	combout => \A|ul1|Add0~80_combout\);

-- Location: FF_X75_Y17_N11
\A|ul1|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ul1|Add0~80_combout\,
	clrn => \A|update1|q\(21),
	ena => \A|ul1|data_write[9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(16));

-- Location: LCCOMB_X76_Y16_N2
\A|ul1|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~40_combout\ = (\A|ul1|count\(17) & (!\A|ul1|Add0~39\)) # (!\A|ul1|count\(17) & ((\A|ul1|Add0~39\) # (GND)))
-- \A|ul1|Add0~41\ = CARRY((!\A|ul1|Add0~39\) # (!\A|ul1|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|count\(17),
	datad => VCC,
	cin => \A|ul1|Add0~39\,
	combout => \A|ul1|Add0~40_combout\,
	cout => \A|ul1|Add0~41\);

-- Location: LCCOMB_X75_Y17_N0
\A|ul1|Add0~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~81_combout\ = (\A|ul1|LessThan0~9_combout\ & (\A|ul1|Add0~40_combout\)) # (!\A|ul1|LessThan0~9_combout\ & ((\A|ul1|count\(31) & (\A|ul1|Add0~40_combout\)) # (!\A|ul1|count\(31) & ((\A|ul1|count\(17))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|LessThan0~9_combout\,
	datab => \A|ul1|Add0~40_combout\,
	datac => \A|ul1|count\(17),
	datad => \A|ul1|count\(31),
	combout => \A|ul1|Add0~81_combout\);

-- Location: FF_X75_Y17_N1
\A|ul1|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ul1|Add0~81_combout\,
	clrn => \A|update1|q\(21),
	ena => \A|ul1|data_write[9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(17));

-- Location: LCCOMB_X76_Y16_N4
\A|ul1|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~42_combout\ = (\A|ul1|count\(18) & (\A|ul1|Add0~41\ $ (GND))) # (!\A|ul1|count\(18) & (!\A|ul1|Add0~41\ & VCC))
-- \A|ul1|Add0~43\ = CARRY((\A|ul1|count\(18) & !\A|ul1|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|count\(18),
	datad => VCC,
	cin => \A|ul1|Add0~41\,
	combout => \A|ul1|Add0~42_combout\,
	cout => \A|ul1|Add0~43\);

-- Location: LCCOMB_X77_Y16_N18
\A|ul1|Add0~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~82_combout\ = (\A|ul1|count\(31) & (\A|ul1|Add0~42_combout\)) # (!\A|ul1|count\(31) & ((\A|ul1|LessThan0~9_combout\ & (\A|ul1|Add0~42_combout\)) # (!\A|ul1|LessThan0~9_combout\ & ((\A|ul1|count\(18))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(31),
	datab => \A|ul1|Add0~42_combout\,
	datac => \A|ul1|count\(18),
	datad => \A|ul1|LessThan0~9_combout\,
	combout => \A|ul1|Add0~82_combout\);

-- Location: FF_X77_Y16_N19
\A|ul1|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ul1|Add0~82_combout\,
	clrn => \A|update1|q\(21),
	ena => \A|ul1|data_write[9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(18));

-- Location: LCCOMB_X76_Y16_N6
\A|ul1|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~44_combout\ = (\A|ul1|count\(19) & (!\A|ul1|Add0~43\)) # (!\A|ul1|count\(19) & ((\A|ul1|Add0~43\) # (GND)))
-- \A|ul1|Add0~45\ = CARRY((!\A|ul1|Add0~43\) # (!\A|ul1|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|count\(19),
	datad => VCC,
	cin => \A|ul1|Add0~43\,
	combout => \A|ul1|Add0~44_combout\,
	cout => \A|ul1|Add0~45\);

-- Location: LCCOMB_X77_Y16_N22
\A|ul1|Add0~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~97_combout\ = (\A|ul1|count\(31) & (\A|ul1|Add0~44_combout\)) # (!\A|ul1|count\(31) & ((\A|ul1|LessThan0~9_combout\ & (\A|ul1|Add0~44_combout\)) # (!\A|ul1|LessThan0~9_combout\ & ((\A|ul1|count\(19))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(31),
	datab => \A|ul1|Add0~44_combout\,
	datac => \A|ul1|count\(19),
	datad => \A|ul1|LessThan0~9_combout\,
	combout => \A|ul1|Add0~97_combout\);

-- Location: FF_X77_Y16_N23
\A|ul1|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ul1|Add0~97_combout\,
	clrn => \A|update1|q\(21),
	ena => \A|ul1|data_write[9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(19));

-- Location: LCCOMB_X76_Y16_N8
\A|ul1|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~46_combout\ = (\A|ul1|count\(20) & (\A|ul1|Add0~45\ $ (GND))) # (!\A|ul1|count\(20) & (!\A|ul1|Add0~45\ & VCC))
-- \A|ul1|Add0~47\ = CARRY((\A|ul1|count\(20) & !\A|ul1|Add0~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(20),
	datad => VCC,
	cin => \A|ul1|Add0~45\,
	combout => \A|ul1|Add0~46_combout\,
	cout => \A|ul1|Add0~47\);

-- Location: LCCOMB_X77_Y16_N20
\A|ul1|Add0~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~83_combout\ = (\A|ul1|count\(31) & (((\A|ul1|Add0~46_combout\)))) # (!\A|ul1|count\(31) & ((\A|ul1|LessThan0~9_combout\ & ((\A|ul1|Add0~46_combout\))) # (!\A|ul1|LessThan0~9_combout\ & (\A|ul1|count\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(31),
	datab => \A|ul1|LessThan0~9_combout\,
	datac => \A|ul1|count\(20),
	datad => \A|ul1|Add0~46_combout\,
	combout => \A|ul1|Add0~83_combout\);

-- Location: FF_X77_Y16_N21
\A|ul1|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ul1|Add0~83_combout\,
	clrn => \A|update1|q\(21),
	ena => \A|ul1|data_write[9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(20));

-- Location: LCCOMB_X76_Y16_N10
\A|ul1|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~48_combout\ = (\A|ul1|count\(21) & (!\A|ul1|Add0~47\)) # (!\A|ul1|count\(21) & ((\A|ul1|Add0~47\) # (GND)))
-- \A|ul1|Add0~49\ = CARRY((!\A|ul1|Add0~47\) # (!\A|ul1|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(21),
	datad => VCC,
	cin => \A|ul1|Add0~47\,
	combout => \A|ul1|Add0~48_combout\,
	cout => \A|ul1|Add0~49\);

-- Location: LCCOMB_X77_Y16_N2
\A|ul1|Add0~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~84_combout\ = (\A|ul1|count\(31) & (((\A|ul1|Add0~48_combout\)))) # (!\A|ul1|count\(31) & ((\A|ul1|LessThan0~9_combout\ & ((\A|ul1|Add0~48_combout\))) # (!\A|ul1|LessThan0~9_combout\ & (\A|ul1|count\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(31),
	datab => \A|ul1|LessThan0~9_combout\,
	datac => \A|ul1|count\(21),
	datad => \A|ul1|Add0~48_combout\,
	combout => \A|ul1|Add0~84_combout\);

-- Location: FF_X77_Y16_N3
\A|ul1|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ul1|Add0~84_combout\,
	clrn => \A|update1|q\(21),
	ena => \A|ul1|data_write[9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(21));

-- Location: LCCOMB_X76_Y16_N12
\A|ul1|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~50_combout\ = (\A|ul1|count\(22) & (\A|ul1|Add0~49\ $ (GND))) # (!\A|ul1|count\(22) & (!\A|ul1|Add0~49\ & VCC))
-- \A|ul1|Add0~51\ = CARRY((\A|ul1|count\(22) & !\A|ul1|Add0~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|count\(22),
	datad => VCC,
	cin => \A|ul1|Add0~49\,
	combout => \A|ul1|Add0~50_combout\,
	cout => \A|ul1|Add0~51\);

-- Location: LCCOMB_X77_Y16_N8
\A|ul1|Add0~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~86_combout\ = (\A|ul1|count\(31) & (((\A|ul1|Add0~50_combout\)))) # (!\A|ul1|count\(31) & ((\A|ul1|LessThan0~9_combout\ & ((\A|ul1|Add0~50_combout\))) # (!\A|ul1|LessThan0~9_combout\ & (\A|ul1|count\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(31),
	datab => \A|ul1|LessThan0~9_combout\,
	datac => \A|ul1|count\(22),
	datad => \A|ul1|Add0~50_combout\,
	combout => \A|ul1|Add0~86_combout\);

-- Location: FF_X77_Y16_N9
\A|ul1|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ul1|Add0~86_combout\,
	clrn => \A|update1|q\(21),
	ena => \A|ul1|data_write[9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(22));

-- Location: LCCOMB_X76_Y16_N14
\A|ul1|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~52_combout\ = (\A|ul1|count\(23) & (!\A|ul1|Add0~51\)) # (!\A|ul1|count\(23) & ((\A|ul1|Add0~51\) # (GND)))
-- \A|ul1|Add0~53\ = CARRY((!\A|ul1|Add0~51\) # (!\A|ul1|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|count\(23),
	datad => VCC,
	cin => \A|ul1|Add0~51\,
	combout => \A|ul1|Add0~52_combout\,
	cout => \A|ul1|Add0~53\);

-- Location: LCCOMB_X77_Y16_N12
\A|ul1|Add0~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~87_combout\ = (\A|ul1|count\(31) & (((\A|ul1|Add0~52_combout\)))) # (!\A|ul1|count\(31) & ((\A|ul1|LessThan0~9_combout\ & ((\A|ul1|Add0~52_combout\))) # (!\A|ul1|LessThan0~9_combout\ & (\A|ul1|count\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(31),
	datab => \A|ul1|LessThan0~9_combout\,
	datac => \A|ul1|count\(23),
	datad => \A|ul1|Add0~52_combout\,
	combout => \A|ul1|Add0~87_combout\);

-- Location: FF_X77_Y16_N13
\A|ul1|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ul1|Add0~87_combout\,
	clrn => \A|update1|q\(21),
	ena => \A|ul1|data_write[9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(23));

-- Location: LCCOMB_X76_Y16_N16
\A|ul1|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~54_combout\ = (\A|ul1|count\(24) & (\A|ul1|Add0~53\ $ (GND))) # (!\A|ul1|count\(24) & (!\A|ul1|Add0~53\ & VCC))
-- \A|ul1|Add0~55\ = CARRY((\A|ul1|count\(24) & !\A|ul1|Add0~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|count\(24),
	datad => VCC,
	cin => \A|ul1|Add0~53\,
	combout => \A|ul1|Add0~54_combout\,
	cout => \A|ul1|Add0~55\);

-- Location: LCCOMB_X77_Y16_N26
\A|ul1|Add0~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~88_combout\ = (\A|ul1|count\(31) & (\A|ul1|Add0~54_combout\)) # (!\A|ul1|count\(31) & ((\A|ul1|LessThan0~9_combout\ & (\A|ul1|Add0~54_combout\)) # (!\A|ul1|LessThan0~9_combout\ & ((\A|ul1|count\(24))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(31),
	datab => \A|ul1|Add0~54_combout\,
	datac => \A|ul1|count\(24),
	datad => \A|ul1|LessThan0~9_combout\,
	combout => \A|ul1|Add0~88_combout\);

-- Location: FF_X77_Y16_N27
\A|ul1|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ul1|Add0~88_combout\,
	clrn => \A|update1|q\(21),
	ena => \A|ul1|data_write[9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(24));

-- Location: LCCOMB_X76_Y16_N18
\A|ul1|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~56_combout\ = (\A|ul1|count\(25) & (!\A|ul1|Add0~55\)) # (!\A|ul1|count\(25) & ((\A|ul1|Add0~55\) # (GND)))
-- \A|ul1|Add0~57\ = CARRY((!\A|ul1|Add0~55\) # (!\A|ul1|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|count\(25),
	datad => VCC,
	cin => \A|ul1|Add0~55\,
	combout => \A|ul1|Add0~56_combout\,
	cout => \A|ul1|Add0~57\);

-- Location: LCCOMB_X77_Y16_N24
\A|ul1|Add0~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~89_combout\ = (\A|ul1|count\(31) & (((\A|ul1|Add0~56_combout\)))) # (!\A|ul1|count\(31) & ((\A|ul1|LessThan0~9_combout\ & ((\A|ul1|Add0~56_combout\))) # (!\A|ul1|LessThan0~9_combout\ & (\A|ul1|count\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(31),
	datab => \A|ul1|LessThan0~9_combout\,
	datac => \A|ul1|count\(25),
	datad => \A|ul1|Add0~56_combout\,
	combout => \A|ul1|Add0~89_combout\);

-- Location: FF_X77_Y16_N25
\A|ul1|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ul1|Add0~89_combout\,
	clrn => \A|update1|q\(21),
	ena => \A|ul1|data_write[9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(25));

-- Location: LCCOMB_X76_Y16_N20
\A|ul1|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~58_combout\ = (\A|ul1|count\(26) & (\A|ul1|Add0~57\ $ (GND))) # (!\A|ul1|count\(26) & (!\A|ul1|Add0~57\ & VCC))
-- \A|ul1|Add0~59\ = CARRY((\A|ul1|count\(26) & !\A|ul1|Add0~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|count\(26),
	datad => VCC,
	cin => \A|ul1|Add0~57\,
	combout => \A|ul1|Add0~58_combout\,
	cout => \A|ul1|Add0~59\);

-- Location: LCCOMB_X76_Y18_N10
\A|ul1|Add0~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~90_combout\ = (\A|ul1|LessThan0~9_combout\ & (((\A|ul1|Add0~58_combout\)))) # (!\A|ul1|LessThan0~9_combout\ & ((\A|ul1|count\(31) & ((\A|ul1|Add0~58_combout\))) # (!\A|ul1|count\(31) & (\A|ul1|count\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|LessThan0~9_combout\,
	datab => \A|ul1|count\(31),
	datac => \A|ul1|count\(26),
	datad => \A|ul1|Add0~58_combout\,
	combout => \A|ul1|Add0~90_combout\);

-- Location: FF_X76_Y18_N11
\A|ul1|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ul1|Add0~90_combout\,
	clrn => \A|update1|q\(21),
	ena => \A|ul1|data_write[9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(26));

-- Location: LCCOMB_X76_Y16_N22
\A|ul1|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~60_combout\ = (\A|ul1|count\(27) & (!\A|ul1|Add0~59\)) # (!\A|ul1|count\(27) & ((\A|ul1|Add0~59\) # (GND)))
-- \A|ul1|Add0~61\ = CARRY((!\A|ul1|Add0~59\) # (!\A|ul1|count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(27),
	datad => VCC,
	cin => \A|ul1|Add0~59\,
	combout => \A|ul1|Add0~60_combout\,
	cout => \A|ul1|Add0~61\);

-- Location: LCCOMB_X76_Y18_N4
\A|ul1|Add0~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~96_combout\ = (\A|ul1|LessThan0~9_combout\ & (\A|ul1|Add0~60_combout\)) # (!\A|ul1|LessThan0~9_combout\ & ((\A|ul1|count\(31) & (\A|ul1|Add0~60_combout\)) # (!\A|ul1|count\(31) & ((\A|ul1|count\(27))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~60_combout\,
	datab => \A|ul1|count\(27),
	datac => \A|ul1|LessThan0~9_combout\,
	datad => \A|ul1|count\(31),
	combout => \A|ul1|Add0~96_combout\);

-- Location: LCCOMB_X75_Y18_N6
\A|ul1|count[27]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|count[27]~feeder_combout\ = \A|ul1|Add0~96_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A|ul1|Add0~96_combout\,
	combout => \A|ul1|count[27]~feeder_combout\);

-- Location: FF_X75_Y18_N7
\A|ul1|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ul1|count[27]~feeder_combout\,
	clrn => \A|update1|q\(21),
	ena => \A|ul1|data_write[9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(27));

-- Location: LCCOMB_X76_Y16_N24
\A|ul1|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~62_combout\ = (\A|ul1|count\(28) & (\A|ul1|Add0~61\ $ (GND))) # (!\A|ul1|count\(28) & (!\A|ul1|Add0~61\ & VCC))
-- \A|ul1|Add0~63\ = CARRY((\A|ul1|count\(28) & !\A|ul1|Add0~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(28),
	datad => VCC,
	cin => \A|ul1|Add0~61\,
	combout => \A|ul1|Add0~62_combout\,
	cout => \A|ul1|Add0~63\);

-- Location: LCCOMB_X76_Y18_N18
\A|ul1|Add0~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~77_combout\ = (\A|ul1|LessThan0~9_combout\ & (((\A|ul1|Add0~62_combout\)))) # (!\A|ul1|LessThan0~9_combout\ & ((\A|ul1|count\(31) & ((\A|ul1|Add0~62_combout\))) # (!\A|ul1|count\(31) & (\A|ul1|count\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|LessThan0~9_combout\,
	datab => \A|ul1|count\(28),
	datac => \A|ul1|count\(31),
	datad => \A|ul1|Add0~62_combout\,
	combout => \A|ul1|Add0~77_combout\);

-- Location: LCCOMB_X75_Y18_N4
\A|ul1|count[28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|count[28]~feeder_combout\ = \A|ul1|Add0~77_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A|ul1|Add0~77_combout\,
	combout => \A|ul1|count[28]~feeder_combout\);

-- Location: FF_X75_Y18_N5
\A|ul1|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ul1|count[28]~feeder_combout\,
	clrn => \A|update1|q\(21),
	ena => \A|ul1|data_write[9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(28));

-- Location: LCCOMB_X76_Y16_N26
\A|ul1|Add0~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~64_combout\ = (\A|ul1|count\(29) & (!\A|ul1|Add0~63\)) # (!\A|ul1|count\(29) & ((\A|ul1|Add0~63\) # (GND)))
-- \A|ul1|Add0~65\ = CARRY((!\A|ul1|Add0~63\) # (!\A|ul1|count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(29),
	datad => VCC,
	cin => \A|ul1|Add0~63\,
	combout => \A|ul1|Add0~64_combout\,
	cout => \A|ul1|Add0~65\);

-- Location: LCCOMB_X76_Y18_N26
\A|ul1|Add0~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~95_combout\ = (\A|ul1|count\(31) & (((\A|ul1|Add0~64_combout\)))) # (!\A|ul1|count\(31) & ((\A|ul1|LessThan0~9_combout\ & ((\A|ul1|Add0~64_combout\))) # (!\A|ul1|LessThan0~9_combout\ & (\A|ul1|count\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(29),
	datab => \A|ul1|count\(31),
	datac => \A|ul1|LessThan0~9_combout\,
	datad => \A|ul1|Add0~64_combout\,
	combout => \A|ul1|Add0~95_combout\);

-- Location: LCCOMB_X75_Y18_N26
\A|ul1|count[29]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|count[29]~feeder_combout\ = \A|ul1|Add0~95_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A|ul1|Add0~95_combout\,
	combout => \A|ul1|count[29]~feeder_combout\);

-- Location: FF_X75_Y18_N27
\A|ul1|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ul1|count[29]~feeder_combout\,
	clrn => \A|update1|q\(21),
	ena => \A|ul1|data_write[9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(29));

-- Location: LCCOMB_X75_Y18_N8
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

-- Location: LCCOMB_X74_Y14_N28
\A|ul1|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|LessThan0~2_combout\ = (\A|ul1|LessThan0~0_combout\ & (((!\A|ul1|count\(3) & \A|ul1|LessThan0~1_combout\)) # (!\A|ul1|count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(3),
	datab => \A|ul1|LessThan0~1_combout\,
	datac => \A|ul1|LessThan0~0_combout\,
	datad => \A|ul1|count\(5),
	combout => \A|ul1|LessThan0~2_combout\);

-- Location: LCCOMB_X75_Y17_N8
\A|ul1|LessThan0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|LessThan0~8_combout\ = (!\A|ul1|count\(7) & (!\A|ul1|count\(8) & (!\A|ul1|count\(10) & !\A|ul1|count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(7),
	datab => \A|ul1|count\(8),
	datac => \A|ul1|count\(10),
	datad => \A|ul1|count\(9),
	combout => \A|ul1|LessThan0~8_combout\);

-- Location: LCCOMB_X77_Y16_N6
\A|ul1|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|LessThan0~3_combout\ = (!\A|ul1|count\(24) & (!\A|ul1|count\(25) & (!\A|ul1|count\(26) & !\A|ul1|count\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(24),
	datab => \A|ul1|count\(25),
	datac => \A|ul1|count\(26),
	datad => \A|ul1|count\(23),
	combout => \A|ul1|LessThan0~3_combout\);

-- Location: LCCOMB_X77_Y16_N16
\A|ul1|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|LessThan0~4_combout\ = (!\A|ul1|count\(19) & (!\A|ul1|count\(21) & (!\A|ul1|count\(22) & !\A|ul1|count\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(19),
	datab => \A|ul1|count\(21),
	datac => \A|ul1|count\(22),
	datad => \A|ul1|count\(20),
	combout => \A|ul1|LessThan0~4_combout\);

-- Location: LCCOMB_X75_Y17_N24
\A|ul1|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|LessThan0~6_combout\ = (!\A|ul1|count\(13) & (!\A|ul1|count\(14) & (!\A|ul1|count\(11) & !\A|ul1|count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(13),
	datab => \A|ul1|count\(14),
	datac => \A|ul1|count\(11),
	datad => \A|ul1|count\(12),
	combout => \A|ul1|LessThan0~6_combout\);

-- Location: LCCOMB_X75_Y17_N22
\A|ul1|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|LessThan0~5_combout\ = (!\A|ul1|count\(16) & (!\A|ul1|count\(17) & (!\A|ul1|count\(18) & !\A|ul1|count\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(16),
	datab => \A|ul1|count\(17),
	datac => \A|ul1|count\(18),
	datad => \A|ul1|count\(15),
	combout => \A|ul1|LessThan0~5_combout\);

-- Location: LCCOMB_X77_Y16_N28
\A|ul1|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|LessThan0~7_combout\ = (\A|ul1|LessThan0~3_combout\ & (\A|ul1|LessThan0~4_combout\ & (\A|ul1|LessThan0~6_combout\ & \A|ul1|LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|LessThan0~3_combout\,
	datab => \A|ul1|LessThan0~4_combout\,
	datac => \A|ul1|LessThan0~6_combout\,
	datad => \A|ul1|LessThan0~5_combout\,
	combout => \A|ul1|LessThan0~7_combout\);

-- Location: LCCOMB_X77_Y16_N0
\A|ul1|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|LessThan0~9_combout\ = (\A|ul1|LessThan0~2_combout\ & (!\A|ul1|count\(6) & (\A|ul1|LessThan0~8_combout\ & \A|ul1|LessThan0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|LessThan0~2_combout\,
	datab => \A|ul1|count\(6),
	datac => \A|ul1|LessThan0~8_combout\,
	datad => \A|ul1|LessThan0~7_combout\,
	combout => \A|ul1|LessThan0~9_combout\);

-- Location: LCCOMB_X76_Y16_N28
\A|ul1|Add0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~66_combout\ = (\A|ul1|count\(30) & (\A|ul1|Add0~65\ $ (GND))) # (!\A|ul1|count\(30) & (!\A|ul1|Add0~65\ & VCC))
-- \A|ul1|Add0~67\ = CARRY((\A|ul1|count\(30) & !\A|ul1|Add0~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|count\(30),
	datad => VCC,
	cin => \A|ul1|Add0~65\,
	combout => \A|ul1|Add0~66_combout\,
	cout => \A|ul1|Add0~67\);

-- Location: LCCOMB_X76_Y18_N22
\A|ul1|Add0~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~98_combout\ = (\A|ul1|LessThan0~9_combout\ & (\A|ul1|Add0~66_combout\)) # (!\A|ul1|LessThan0~9_combout\ & ((\A|ul1|count\(31) & (\A|ul1|Add0~66_combout\)) # (!\A|ul1|count\(31) & ((\A|ul1|count\(30))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|LessThan0~9_combout\,
	datab => \A|ul1|Add0~66_combout\,
	datac => \A|ul1|count\(31),
	datad => \A|ul1|count\(30),
	combout => \A|ul1|Add0~98_combout\);

-- Location: LCCOMB_X75_Y18_N24
\A|ul1|count[30]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|count[30]~feeder_combout\ = \A|ul1|Add0~98_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A|ul1|Add0~98_combout\,
	combout => \A|ul1|count[30]~feeder_combout\);

-- Location: FF_X75_Y18_N25
\A|ul1|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ul1|count[30]~feeder_combout\,
	clrn => \A|update1|q\(21),
	ena => \A|ul1|data_write[9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(30));

-- Location: LCCOMB_X76_Y16_N30
\A|ul1|Add0~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~68_combout\ = \A|ul1|Add0~67\ $ (\A|ul1|count\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \A|ul1|count\(31),
	cin => \A|ul1|Add0~67\,
	combout => \A|ul1|Add0~68_combout\);

-- Location: LCCOMB_X76_Y18_N8
\A|ul1|Add0~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~99_combout\ = (\A|ul1|Add0~68_combout\ & ((\A|ul1|count\(31)) # (\A|ul1|LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~68_combout\,
	datac => \A|ul1|count\(31),
	datad => \A|ul1|LessThan0~9_combout\,
	combout => \A|ul1|Add0~99_combout\);

-- Location: FF_X76_Y18_N9
\A|ul1|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ul1|Add0~99_combout\,
	clrn => \A|update1|q\(21),
	ena => \A|ul1|data_write[9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(31));

-- Location: LCCOMB_X74_Y14_N14
\A|ul1|Add0~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~93_combout\ = (\A|ul1|count\(31) & (\A|ul1|Add0~4_combout\)) # (!\A|ul1|count\(31) & ((\A|ul1|LessThan0~9_combout\ & (\A|ul1|Add0~4_combout\)) # (!\A|ul1|LessThan0~9_combout\ & ((\A|ul1|count\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~4_combout\,
	datab => \A|ul1|count\(31),
	datac => \A|ul1|count\(0),
	datad => \A|ul1|LessThan0~9_combout\,
	combout => \A|ul1|Add0~93_combout\);

-- Location: LCCOMB_X74_Y14_N26
\A|ul1|count[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|count[0]~feeder_combout\ = \A|ul1|Add0~93_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|ul1|Add0~93_combout\,
	combout => \A|ul1|count[0]~feeder_combout\);

-- Location: FF_X74_Y14_N27
\A|ul1|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ul1|count[0]~feeder_combout\,
	clrn => \A|update1|q\(21),
	ena => \A|ul1|data_write[9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(0));

-- Location: LCCOMB_X74_Y14_N22
\A|ul1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~8_combout\ = (\A|ul1|count\(31) & (\A|ul1|Add0~6_combout\)) # (!\A|ul1|count\(31) & ((\A|ul1|LessThan0~9_combout\ & (\A|ul1|Add0~6_combout\)) # (!\A|ul1|LessThan0~9_combout\ & ((\A|ul1|count\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~6_combout\,
	datab => \A|ul1|count\(1),
	datac => \A|ul1|count\(31),
	datad => \A|ul1|LessThan0~9_combout\,
	combout => \A|ul1|Add0~8_combout\);

-- Location: LCCOMB_X75_Y16_N8
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

-- Location: LCCOMB_X76_Y18_N12
\A|ul1|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal0~3_combout\ = (!\A|ul1|Add0~77_combout\ & ((\A|ul1|LessThan0~10_combout\ & ((!\A|ul1|Add0~64_combout\))) # (!\A|ul1|LessThan0~10_combout\ & (!\A|ul1|count\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(29),
	datab => \A|ul1|Add0~77_combout\,
	datac => \A|ul1|LessThan0~10_combout\,
	datad => \A|ul1|Add0~64_combout\,
	combout => \A|ul1|Equal0~3_combout\);

-- Location: LCCOMB_X75_Y17_N2
\A|ul1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal0~0_combout\ = (!\A|ul1|Add0~74_combout\ & (!\A|ul1|Add0~73_combout\ & (!\A|ul1|Add0~76_combout\ & !\A|ul1|Add0~75_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~74_combout\,
	datab => \A|ul1|Add0~73_combout\,
	datac => \A|ul1|Add0~76_combout\,
	datad => \A|ul1|Add0~75_combout\,
	combout => \A|ul1|Equal0~0_combout\);

-- Location: LCCOMB_X75_Y17_N4
\A|ul1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal0~1_combout\ = (!\A|ul1|Add0~70_combout\ & (!\A|ul1|Add0~71_combout\ & (\A|ul1|Equal0~0_combout\ & !\A|ul1|Add0~72_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~70_combout\,
	datab => \A|ul1|Add0~71_combout\,
	datac => \A|ul1|Equal0~0_combout\,
	datad => \A|ul1|Add0~72_combout\,
	combout => \A|ul1|Equal0~1_combout\);

-- Location: LCCOMB_X76_Y18_N0
\A|ul1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal0~2_combout\ = (\A|ul1|Equal0~1_combout\ & (!\A|ul1|Add0~23_combout\ & ((!\A|ul1|Add0~68_combout\) # (!\A|ul1|LessThan0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal0~1_combout\,
	datab => \A|ul1|LessThan0~10_combout\,
	datac => \A|ul1|Add0~68_combout\,
	datad => \A|ul1|Add0~23_combout\,
	combout => \A|ul1|Equal0~2_combout\);

-- Location: LCCOMB_X76_Y18_N16
\A|ul1|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal0~8_combout\ = (!\A|ul1|Add0~90_combout\ & ((\A|ul1|LessThan0~10_combout\ & (!\A|ul1|Add0~60_combout\)) # (!\A|ul1|LessThan0~10_combout\ & ((!\A|ul1|count\(27))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~60_combout\,
	datab => \A|ul1|count\(27),
	datac => \A|ul1|LessThan0~10_combout\,
	datad => \A|ul1|Add0~90_combout\,
	combout => \A|ul1|Equal0~8_combout\);

-- Location: LCCOMB_X77_Y16_N30
\A|ul1|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal0~7_combout\ = (!\A|ul1|Add0~86_combout\ & (!\A|ul1|Add0~87_combout\ & (!\A|ul1|Add0~89_combout\ & !\A|ul1|Add0~88_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~86_combout\,
	datab => \A|ul1|Add0~87_combout\,
	datac => \A|ul1|Add0~89_combout\,
	datad => \A|ul1|Add0~88_combout\,
	combout => \A|ul1|Equal0~7_combout\);

-- Location: LCCOMB_X77_Y16_N10
\A|ul1|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal0~5_combout\ = (!\A|ul1|Add0~82_combout\ & ((\A|ul1|LessThan0~10_combout\ & ((!\A|ul1|Add0~44_combout\))) # (!\A|ul1|LessThan0~10_combout\ & (!\A|ul1|count\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(19),
	datab => \A|ul1|LessThan0~10_combout\,
	datac => \A|ul1|Add0~44_combout\,
	datad => \A|ul1|Add0~82_combout\,
	combout => \A|ul1|Equal0~5_combout\);

-- Location: LCCOMB_X75_Y17_N30
\A|ul1|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal0~4_combout\ = (!\A|ul1|Add0~78_combout\ & (!\A|ul1|Add0~79_combout\ & (!\A|ul1|Add0~80_combout\ & !\A|ul1|Add0~81_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~78_combout\,
	datab => \A|ul1|Add0~79_combout\,
	datac => \A|ul1|Add0~80_combout\,
	datad => \A|ul1|Add0~81_combout\,
	combout => \A|ul1|Equal0~4_combout\);

-- Location: LCCOMB_X77_Y16_N4
\A|ul1|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal0~6_combout\ = (\A|ul1|Equal0~5_combout\ & (\A|ul1|Equal0~4_combout\ & (!\A|ul1|Add0~84_combout\ & !\A|ul1|Add0~83_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal0~5_combout\,
	datab => \A|ul1|Equal0~4_combout\,
	datac => \A|ul1|Add0~84_combout\,
	datad => \A|ul1|Add0~83_combout\,
	combout => \A|ul1|Equal0~6_combout\);

-- Location: LCCOMB_X76_Y18_N2
\A|ul1|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal3~0_combout\ = (!\A|ul1|Add0~85_combout\ & (\A|ul1|Equal0~8_combout\ & (\A|ul1|Equal0~7_combout\ & \A|ul1|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~85_combout\,
	datab => \A|ul1|Equal0~8_combout\,
	datac => \A|ul1|Equal0~7_combout\,
	datad => \A|ul1|Equal0~6_combout\,
	combout => \A|ul1|Equal3~0_combout\);

-- Location: LCCOMB_X76_Y18_N28
\A|ul1|Equal3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal3~1_combout\ = (\A|ul1|Equal0~3_combout\ & (\A|ul1|Equal0~2_combout\ & (!\A|ul1|Add0~98_combout\ & \A|ul1|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal0~3_combout\,
	datab => \A|ul1|Equal0~2_combout\,
	datac => \A|ul1|Add0~98_combout\,
	datad => \A|ul1|Equal3~0_combout\,
	combout => \A|ul1|Equal3~1_combout\);

-- Location: LCCOMB_X74_Y14_N12
\A|ul1|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal2~0_combout\ = (!\A|ul1|Add0~92_combout\ & ((\A|ul1|LessThan0~10_combout\ & (!\A|ul1|Add0~9_combout\)) # (!\A|ul1|LessThan0~10_combout\ & ((!\A|ul1|count\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~9_combout\,
	datab => \A|ul1|count\(2),
	datac => \A|ul1|Add0~92_combout\,
	datad => \A|ul1|LessThan0~10_combout\,
	combout => \A|ul1|Equal2~0_combout\);

-- Location: LCCOMB_X73_Y16_N24
\A|ul1|Equal17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal17~0_combout\ = (\A|ul1|Add0~91_combout\ & (!\A|ul1|Add0~93_combout\ & (\A|ul1|Equal3~1_combout\ & \A|ul1|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~91_combout\,
	datab => \A|ul1|Add0~93_combout\,
	datac => \A|ul1|Equal3~1_combout\,
	datad => \A|ul1|Equal2~0_combout\,
	combout => \A|ul1|Equal17~0_combout\);

-- Location: LCCOMB_X76_Y15_N0
\A|ul1|Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal2~2_combout\ = (!\A|ul1|Add0~94_combout\ & (!\A|ul1|Add0~91_combout\ & !\A|ul1|Add0~92_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|Add0~94_combout\,
	datac => \A|ul1|Add0~91_combout\,
	datad => \A|ul1|Add0~92_combout\,
	combout => \A|ul1|Equal2~2_combout\);

-- Location: LCCOMB_X73_Y15_N8
\A|ul1|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal2~1_combout\ = (\A|ul1|Add0~93_combout\ & (!\A|ul1|Add0~8_combout\ & \A|ul1|Equal3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~93_combout\,
	datab => \A|ul1|Add0~8_combout\,
	datad => \A|ul1|Equal3~1_combout\,
	combout => \A|ul1|Equal2~1_combout\);

-- Location: LCCOMB_X74_Y15_N0
\A|ul1|WideNor1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|WideNor1~0_combout\ = (\A|ul1|Add0~8_combout\ & (!\A|ul1|Equal17~0_combout\ & ((!\A|ul1|Equal2~1_combout\) # (!\A|ul1|Equal2~2_combout\)))) # (!\A|ul1|Add0~8_combout\ & (((!\A|ul1|Equal2~1_combout\) # (!\A|ul1|Equal2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~8_combout\,
	datab => \A|ul1|Equal17~0_combout\,
	datac => \A|ul1|Equal2~2_combout\,
	datad => \A|ul1|Equal2~1_combout\,
	combout => \A|ul1|WideNor1~0_combout\);

-- Location: LCCOMB_X73_Y15_N26
\A|ul1|Equal13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal13~0_combout\ = (\A|ul1|Add0~94_combout\ & (!\A|ul1|Add0~93_combout\ & \A|ul1|Equal3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~94_combout\,
	datac => \A|ul1|Add0~93_combout\,
	datad => \A|ul1|Equal3~1_combout\,
	combout => \A|ul1|Equal13~0_combout\);

-- Location: LCCOMB_X73_Y16_N22
\A|ul1|Equal15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal15~2_combout\ = (!\A|ul1|Add0~91_combout\ & (\A|ul1|Add0~92_combout\ & (\A|ul1|Equal13~0_combout\ & \A|ul1|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~91_combout\,
	datab => \A|ul1|Add0~92_combout\,
	datac => \A|ul1|Equal13~0_combout\,
	datad => \A|ul1|Add0~8_combout\,
	combout => \A|ul1|Equal15~2_combout\);

-- Location: LCCOMB_X76_Y15_N28
\A|ul1|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal1~2_combout\ = (!\A|ul1|Add0~92_combout\ & (!\A|ul1|Add0~91_combout\ & !\A|ul1|Add0~93_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|Add0~92_combout\,
	datac => \A|ul1|Add0~91_combout\,
	datad => \A|ul1|Add0~93_combout\,
	combout => \A|ul1|Equal1~2_combout\);

-- Location: LCCOMB_X74_Y16_N0
\A|ul1|Equal3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal3~2_combout\ = (\A|ul1|Add0~8_combout\ & (\A|ul1|Equal1~2_combout\ & (!\A|ul1|Add0~94_combout\ & \A|ul1|Equal3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~8_combout\,
	datab => \A|ul1|Equal1~2_combout\,
	datac => \A|ul1|Add0~94_combout\,
	datad => \A|ul1|Equal3~1_combout\,
	combout => \A|ul1|Equal3~2_combout\);

-- Location: LCCOMB_X74_Y15_N6
\A|ul1|Equal4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal4~1_combout\ = (\A|ul1|Add0~8_combout\ & !\A|ul1|Add0~91_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~8_combout\,
	datac => \A|ul1|Add0~91_combout\,
	combout => \A|ul1|Equal4~1_combout\);

-- Location: LCCOMB_X75_Y16_N10
\A|ul1|Equal2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal2~3_combout\ = (\A|ul1|Add0~93_combout\ & \A|ul1|Equal3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|ul1|Add0~93_combout\,
	datad => \A|ul1|Equal3~1_combout\,
	combout => \A|ul1|Equal2~3_combout\);

-- Location: LCCOMB_X75_Y16_N16
\A|ul1|Equal16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal16~0_combout\ = (\A|ul1|Add0~94_combout\ & (\A|ul1|Equal4~1_combout\ & (\A|ul1|Add0~92_combout\ & \A|ul1|Equal2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~94_combout\,
	datab => \A|ul1|Equal4~1_combout\,
	datac => \A|ul1|Add0~92_combout\,
	datad => \A|ul1|Equal2~3_combout\,
	combout => \A|ul1|Equal16~0_combout\);

-- Location: LCCOMB_X73_Y16_N2
\A|ul1|Equal4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal4~2_combout\ = (\A|ul1|Equal4~1_combout\ & (\A|ul1|Add0~93_combout\ & (\A|ul1|Equal3~1_combout\ & \A|ul1|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal4~1_combout\,
	datab => \A|ul1|Add0~93_combout\,
	datac => \A|ul1|Equal3~1_combout\,
	datad => \A|ul1|Equal2~0_combout\,
	combout => \A|ul1|Equal4~2_combout\);

-- Location: LCCOMB_X73_Y16_N12
\A|ul1|WideNor1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|WideNor1~2_combout\ = (!\A|ul1|Equal15~2_combout\ & (!\A|ul1|Equal3~2_combout\ & (!\A|ul1|Equal16~0_combout\ & !\A|ul1|Equal4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal15~2_combout\,
	datab => \A|ul1|Equal3~2_combout\,
	datac => \A|ul1|Equal16~0_combout\,
	datad => \A|ul1|Equal4~2_combout\,
	combout => \A|ul1|WideNor1~2_combout\);

-- Location: LCCOMB_X74_Y14_N30
\A|ul1|Equal27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal27~0_combout\ = (\A|ul1|Add0~91_combout\ & ((\A|ul1|LessThan0~10_combout\ & (\A|ul1|Add0~6_combout\)) # (!\A|ul1|LessThan0~10_combout\ & ((\A|ul1|count\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~6_combout\,
	datab => \A|ul1|count\(1),
	datac => \A|ul1|Add0~91_combout\,
	datad => \A|ul1|LessThan0~10_combout\,
	combout => \A|ul1|Equal27~0_combout\);

-- Location: LCCOMB_X73_Y15_N6
\A|ul1|data_write~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|data_write~29_combout\ = (((!\A|ul1|Add0~94_combout\) # (!\A|ul1|Equal27~0_combout\)) # (!\A|ul1|Equal3~1_combout\)) # (!\A|ul1|Add0~93_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~93_combout\,
	datab => \A|ul1|Equal3~1_combout\,
	datac => \A|ul1|Equal27~0_combout\,
	datad => \A|ul1|Add0~94_combout\,
	combout => \A|ul1|data_write~29_combout\);

-- Location: LCCOMB_X73_Y15_N24
\A|ul1|Equal23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal23~0_combout\ = (!\A|ul1|Add0~92_combout\ & (\A|ul1|Add0~91_combout\ & \A|ul1|Add0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~92_combout\,
	datac => \A|ul1|Add0~91_combout\,
	datad => \A|ul1|Add0~8_combout\,
	combout => \A|ul1|Equal23~0_combout\);

-- Location: LCCOMB_X73_Y15_N2
\A|ul1|Equal10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal10~0_combout\ = (\A|ul1|Add0~92_combout\ & (\A|ul1|Equal2~1_combout\ & (!\A|ul1|Add0~91_combout\ & !\A|ul1|Add0~94_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~92_combout\,
	datab => \A|ul1|Equal2~1_combout\,
	datac => \A|ul1|Add0~91_combout\,
	datad => \A|ul1|Add0~94_combout\,
	combout => \A|ul1|Equal10~0_combout\);

-- Location: LCCOMB_X73_Y15_N12
\A|ul1|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector16~0_combout\ = (\A|ul1|data_write~29_combout\ & (!\A|ul1|Equal10~0_combout\ & ((!\A|ul1|Equal13~0_combout\) # (!\A|ul1|Equal23~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|data_write~29_combout\,
	datab => \A|ul1|Equal23~0_combout\,
	datac => \A|ul1|Equal13~0_combout\,
	datad => \A|ul1|Equal10~0_combout\,
	combout => \A|ul1|Selector16~0_combout\);

-- Location: LCCOMB_X76_Y18_N30
\A|ul1|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal1~0_combout\ = (\A|ul1|Add0~85_combout\ & (\A|ul1|Equal0~8_combout\ & (\A|ul1|Equal0~7_combout\ & \A|ul1|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~85_combout\,
	datab => \A|ul1|Equal0~8_combout\,
	datac => \A|ul1|Equal0~7_combout\,
	datad => \A|ul1|Equal0~6_combout\,
	combout => \A|ul1|Equal1~0_combout\);

-- Location: LCCOMB_X76_Y18_N24
\A|ul1|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal1~1_combout\ = (\A|ul1|Equal1~0_combout\ & (\A|ul1|Equal0~2_combout\ & (!\A|ul1|Add0~98_combout\ & \A|ul1|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal1~0_combout\,
	datab => \A|ul1|Equal0~2_combout\,
	datac => \A|ul1|Add0~98_combout\,
	datad => \A|ul1|Equal0~3_combout\,
	combout => \A|ul1|Equal1~1_combout\);

-- Location: LCCOMB_X76_Y15_N20
\A|ul1|Equal34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal34~0_combout\ = (\A|ul1|Add0~93_combout\ & (\A|ul1|Equal2~2_combout\ & (!\A|ul1|Add0~8_combout\ & \A|ul1|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~93_combout\,
	datab => \A|ul1|Equal2~2_combout\,
	datac => \A|ul1|Add0~8_combout\,
	datad => \A|ul1|Equal1~1_combout\,
	combout => \A|ul1|Equal34~0_combout\);

-- Location: LCCOMB_X74_Y14_N16
\A|ul1|Equal9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal9~0_combout\ = (!\A|ul1|Add0~94_combout\ & (\A|ul1|Add0~92_combout\ & (!\A|ul1|Add0~93_combout\ & \A|ul1|Equal3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~94_combout\,
	datab => \A|ul1|Add0~92_combout\,
	datac => \A|ul1|Add0~93_combout\,
	datad => \A|ul1|Equal3~1_combout\,
	combout => \A|ul1|Equal9~0_combout\);

-- Location: LCCOMB_X74_Y14_N2
\A|ul1|Equal25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal25~0_combout\ = (\A|ul1|Equal9~0_combout\ & (\A|ul1|Add0~91_combout\ & !\A|ul1|Add0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|Equal9~0_combout\,
	datac => \A|ul1|Add0~91_combout\,
	datad => \A|ul1|Add0~8_combout\,
	combout => \A|ul1|Equal25~0_combout\);

-- Location: LCCOMB_X76_Y15_N26
\A|ul1|Equal33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal33~0_combout\ = (!\A|ul1|Add0~93_combout\ & (\A|ul1|Equal2~2_combout\ & (!\A|ul1|Add0~8_combout\ & \A|ul1|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~93_combout\,
	datab => \A|ul1|Equal2~2_combout\,
	datac => \A|ul1|Add0~8_combout\,
	datad => \A|ul1|Equal1~1_combout\,
	combout => \A|ul1|Equal33~0_combout\);

-- Location: LCCOMB_X72_Y17_N2
\A|ul1|Selector3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector3~5_combout\ = (\A|ul1|Selector16~0_combout\ & (!\A|ul1|Equal34~0_combout\ & (!\A|ul1|Equal25~0_combout\ & !\A|ul1|Equal33~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Selector16~0_combout\,
	datab => \A|ul1|Equal34~0_combout\,
	datac => \A|ul1|Equal25~0_combout\,
	datad => \A|ul1|Equal33~0_combout\,
	combout => \A|ul1|Selector3~5_combout\);

-- Location: LCCOMB_X73_Y15_N14
\A|ul1|Equal21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal21~0_combout\ = (\A|ul1|Add0~91_combout\ & (!\A|ul1|Add0~8_combout\ & (\A|ul1|Equal13~0_combout\ & !\A|ul1|Add0~92_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~91_combout\,
	datab => \A|ul1|Add0~8_combout\,
	datac => \A|ul1|Equal13~0_combout\,
	datad => \A|ul1|Add0~92_combout\,
	combout => \A|ul1|Equal21~0_combout\);

-- Location: LCCOMB_X73_Y16_N10
\A|ul1|Selector15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector15~2_combout\ = (!\A|ul1|Equal21~0_combout\ & ((\A|ul1|Add0~8_combout\) # (!\A|ul1|Equal17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|Add0~8_combout\,
	datac => \A|ul1|Equal21~0_combout\,
	datad => \A|ul1|Equal17~0_combout\,
	combout => \A|ul1|Selector15~2_combout\);

-- Location: LCCOMB_X73_Y16_N28
\A|ul1|Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal5~0_combout\ = (\A|ul1|Equal1~2_combout\ & (!\A|ul1|Add0~8_combout\ & (\A|ul1|Equal3~1_combout\ & \A|ul1|Add0~94_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal1~2_combout\,
	datab => \A|ul1|Add0~8_combout\,
	datac => \A|ul1|Equal3~1_combout\,
	datad => \A|ul1|Add0~94_combout\,
	combout => \A|ul1|Equal5~0_combout\);

-- Location: LCCOMB_X73_Y16_N6
\A|ul1|Equal18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal18~0_combout\ = (\A|ul1|Add0~91_combout\ & (\A|ul1|Equal2~1_combout\ & \A|ul1|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~91_combout\,
	datac => \A|ul1|Equal2~1_combout\,
	datad => \A|ul1|Equal2~0_combout\,
	combout => \A|ul1|Equal18~0_combout\);

-- Location: LCCOMB_X73_Y16_N16
\A|ul1|WideNor1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|WideNor1~1_combout\ = (\A|ul1|Selector15~2_combout\ & (!\A|ul1|Equal5~0_combout\ & !\A|ul1|Equal18~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Selector15~2_combout\,
	datab => \A|ul1|Equal5~0_combout\,
	datad => \A|ul1|Equal18~0_combout\,
	combout => \A|ul1|WideNor1~1_combout\);

-- Location: LCCOMB_X75_Y16_N28
\A|ul1|Equal28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal28~0_combout\ = (!\A|ul1|Add0~94_combout\ & (\A|ul1|Equal27~0_combout\ & (\A|ul1|Add0~92_combout\ & \A|ul1|Equal2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~94_combout\,
	datab => \A|ul1|Equal27~0_combout\,
	datac => \A|ul1|Add0~92_combout\,
	datad => \A|ul1|Equal2~3_combout\,
	combout => \A|ul1|Equal28~0_combout\);

-- Location: LCCOMB_X74_Y15_N4
\A|ul1|Equal13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal13~1_combout\ = (!\A|ul1|Add0~8_combout\ & (!\A|ul1|Add0~91_combout\ & (\A|ul1|Equal13~0_combout\ & \A|ul1|Add0~92_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~8_combout\,
	datab => \A|ul1|Add0~91_combout\,
	datac => \A|ul1|Equal13~0_combout\,
	datad => \A|ul1|Add0~92_combout\,
	combout => \A|ul1|Equal13~1_combout\);

-- Location: LCCOMB_X74_Y15_N18
\A|ul1|Equal26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal26~0_combout\ = (\A|ul1|Add0~92_combout\ & (\A|ul1|Add0~91_combout\ & \A|ul1|Equal2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~92_combout\,
	datac => \A|ul1|Add0~91_combout\,
	datad => \A|ul1|Equal2~1_combout\,
	combout => \A|ul1|Equal26~0_combout\);

-- Location: LCCOMB_X75_Y16_N6
\A|ul1|Selector3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector3~2_combout\ = (!\A|ul1|Equal28~0_combout\ & (!\A|ul1|Equal13~1_combout\ & ((!\A|ul1|Equal26~0_combout\) # (!\A|ul1|Add0~94_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~94_combout\,
	datab => \A|ul1|Equal28~0_combout\,
	datac => \A|ul1|Equal13~1_combout\,
	datad => \A|ul1|Equal26~0_combout\,
	combout => \A|ul1|Selector3~2_combout\);

-- Location: LCCOMB_X73_Y15_N22
\A|ul1|Equal26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal26~1_combout\ = (\A|ul1|Add0~91_combout\ & (!\A|ul1|Add0~94_combout\ & (\A|ul1|Equal2~1_combout\ & \A|ul1|Add0~92_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~91_combout\,
	datab => \A|ul1|Add0~94_combout\,
	datac => \A|ul1|Equal2~1_combout\,
	datad => \A|ul1|Add0~92_combout\,
	combout => \A|ul1|Equal26~1_combout\);

-- Location: LCCOMB_X76_Y15_N22
\A|ul1|Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal7~0_combout\ = (\A|ul1|Add0~8_combout\ & (\A|ul1|Equal1~2_combout\ & (\A|ul1|Add0~94_combout\ & \A|ul1|Equal3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~8_combout\,
	datab => \A|ul1|Equal1~2_combout\,
	datac => \A|ul1|Add0~94_combout\,
	datad => \A|ul1|Equal3~1_combout\,
	combout => \A|ul1|Equal7~0_combout\);

-- Location: LCCOMB_X76_Y15_N2
\A|ul1|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal0~9_combout\ = (\A|ul1|Equal2~0_combout\ & (!\A|ul1|Add0~91_combout\ & \A|ul1|Equal1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|Equal2~0_combout\,
	datac => \A|ul1|Add0~91_combout\,
	datad => \A|ul1|Equal1~1_combout\,
	combout => \A|ul1|Equal0~9_combout\);

-- Location: LCCOMB_X76_Y15_N24
\A|ul1|Selector12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector12~3_combout\ = (!\A|ul1|Equal7~0_combout\ & ((\A|ul1|Add0~93_combout\) # ((!\A|ul1|Equal0~9_combout\) # (!\A|ul1|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~93_combout\,
	datab => \A|ul1|Add0~8_combout\,
	datac => \A|ul1|Equal7~0_combout\,
	datad => \A|ul1|Equal0~9_combout\,
	combout => \A|ul1|Selector12~3_combout\);

-- Location: LCCOMB_X73_Y15_N28
\A|ul1|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector12~0_combout\ = ((!\A|ul1|Add0~92_combout\) # (!\A|ul1|Add0~91_combout\)) # (!\A|ul1|Equal13~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal13~0_combout\,
	datac => \A|ul1|Add0~91_combout\,
	datad => \A|ul1|Add0~92_combout\,
	combout => \A|ul1|Selector12~0_combout\);

-- Location: LCCOMB_X73_Y15_N30
\A|ul1|Selector12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector12~1_combout\ = (((\A|ul1|Add0~92_combout\ & \A|ul1|Add0~91_combout\)) # (!\A|ul1|Add0~94_combout\)) # (!\A|ul1|Equal2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~92_combout\,
	datab => \A|ul1|Equal2~1_combout\,
	datac => \A|ul1|Add0~91_combout\,
	datad => \A|ul1|Add0~94_combout\,
	combout => \A|ul1|Selector12~1_combout\);

-- Location: LCCOMB_X74_Y14_N10
\A|ul1|Equal8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal8~0_combout\ = (\A|ul1|Add0~94_combout\ & !\A|ul1|Add0~92_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~94_combout\,
	datad => \A|ul1|Add0~92_combout\,
	combout => \A|ul1|Equal8~0_combout\);

-- Location: LCCOMB_X73_Y15_N0
\A|ul1|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal4~0_combout\ = (\A|ul1|Add0~93_combout\ & (\A|ul1|Add0~8_combout\ & (!\A|ul1|Add0~91_combout\ & \A|ul1|Equal3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~93_combout\,
	datab => \A|ul1|Add0~8_combout\,
	datac => \A|ul1|Add0~91_combout\,
	datad => \A|ul1|Equal3~1_combout\,
	combout => \A|ul1|Equal4~0_combout\);

-- Location: LCCOMB_X73_Y15_N10
\A|ul1|Selector12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector12~2_combout\ = (\A|ul1|Equal27~0_combout\ & (!\A|ul1|Equal9~0_combout\ & ((!\A|ul1|Equal4~0_combout\) # (!\A|ul1|Equal8~0_combout\)))) # (!\A|ul1|Equal27~0_combout\ & (((!\A|ul1|Equal4~0_combout\)) # (!\A|ul1|Equal8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal27~0_combout\,
	datab => \A|ul1|Equal8~0_combout\,
	datac => \A|ul1|Equal9~0_combout\,
	datad => \A|ul1|Equal4~0_combout\,
	combout => \A|ul1|Selector12~2_combout\);

-- Location: LCCOMB_X73_Y15_N4
\A|ul1|Selector12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector12~4_combout\ = (\A|ul1|Selector12~3_combout\ & (\A|ul1|Selector12~0_combout\ & (\A|ul1|Selector12~1_combout\ & \A|ul1|Selector12~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Selector12~3_combout\,
	datab => \A|ul1|Selector12~0_combout\,
	datac => \A|ul1|Selector12~1_combout\,
	datad => \A|ul1|Selector12~2_combout\,
	combout => \A|ul1|Selector12~4_combout\);

-- Location: LCCOMB_X75_Y16_N20
\A|ul1|Equal12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal12~0_combout\ = (!\A|ul1|Add0~94_combout\ & (\A|ul1|Equal4~1_combout\ & (\A|ul1|Add0~92_combout\ & \A|ul1|Equal2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~94_combout\,
	datab => \A|ul1|Equal4~1_combout\,
	datac => \A|ul1|Add0~92_combout\,
	datad => \A|ul1|Equal2~3_combout\,
	combout => \A|ul1|Equal12~0_combout\);

-- Location: LCCOMB_X75_Y16_N26
\A|ul1|Equal9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal9~1_combout\ = (!\A|ul1|Add0~91_combout\ & (\A|ul1|Equal9~0_combout\ & !\A|ul1|Add0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|Add0~91_combout\,
	datac => \A|ul1|Equal9~0_combout\,
	datad => \A|ul1|Add0~8_combout\,
	combout => \A|ul1|Equal9~1_combout\);

-- Location: LCCOMB_X75_Y16_N0
\A|ul1|Equal20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal20~0_combout\ = (\A|ul1|Equal2~0_combout\ & (\A|ul1|Equal27~0_combout\ & (\A|ul1|Add0~93_combout\ & \A|ul1|Equal3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal2~0_combout\,
	datab => \A|ul1|Equal27~0_combout\,
	datac => \A|ul1|Add0~93_combout\,
	datad => \A|ul1|Equal3~1_combout\,
	combout => \A|ul1|Equal20~0_combout\);

-- Location: LCCOMB_X75_Y16_N12
\A|ul1|Selector3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector3~7_combout\ = (!\A|ul1|Equal20~0_combout\ & (((\A|ul1|Add0~91_combout\) # (!\A|ul1|Equal9~0_combout\)) # (!\A|ul1|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~8_combout\,
	datab => \A|ul1|Add0~91_combout\,
	datac => \A|ul1|Equal9~0_combout\,
	datad => \A|ul1|Equal20~0_combout\,
	combout => \A|ul1|Selector3~7_combout\);

-- Location: LCCOMB_X75_Y16_N30
\A|ul1|Selector3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector3~3_combout\ = (!\A|ul1|Equal12~0_combout\ & (!\A|ul1|Equal9~1_combout\ & \A|ul1|Selector3~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|Equal12~0_combout\,
	datac => \A|ul1|Equal9~1_combout\,
	datad => \A|ul1|Selector3~7_combout\,
	combout => \A|ul1|Selector3~3_combout\);

-- Location: LCCOMB_X72_Y17_N24
\A|ul1|Selector3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector3~4_combout\ = (\A|ul1|Selector3~2_combout\ & (!\A|ul1|Equal26~1_combout\ & (\A|ul1|Selector12~4_combout\ & \A|ul1|Selector3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Selector3~2_combout\,
	datab => \A|ul1|Equal26~1_combout\,
	datac => \A|ul1|Selector12~4_combout\,
	datad => \A|ul1|Selector3~3_combout\,
	combout => \A|ul1|Selector3~4_combout\);

-- Location: LCCOMB_X72_Y17_N4
\A|ul1|WideNor1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|WideNor1~3_combout\ = (\A|ul1|WideNor1~2_combout\ & (\A|ul1|Selector3~5_combout\ & (\A|ul1|WideNor1~1_combout\ & \A|ul1|Selector3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|WideNor1~2_combout\,
	datab => \A|ul1|Selector3~5_combout\,
	datac => \A|ul1|WideNor1~1_combout\,
	datad => \A|ul1|Selector3~4_combout\,
	combout => \A|ul1|WideNor1~3_combout\);

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

-- Location: LCCOMB_X76_Y15_N6
\A|ul1|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal1~3_combout\ = (!\A|ul1|Add0~8_combout\ & (\A|ul1|Equal1~2_combout\ & (\A|ul1|Add0~94_combout\ & \A|ul1|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~8_combout\,
	datab => \A|ul1|Equal1~2_combout\,
	datac => \A|ul1|Add0~94_combout\,
	datad => \A|ul1|Equal1~1_combout\,
	combout => \A|ul1|Equal1~3_combout\);

-- Location: LCCOMB_X76_Y15_N8
\A|ul1|Selector3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector3~6_combout\ = (!\A|ul1|Equal1~3_combout\ & (((!\A|ul1|Add0~8_combout\) # (!\A|ul1|Equal0~9_combout\)) # (!\A|ul1|Add0~93_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~93_combout\,
	datab => \A|ul1|Equal0~9_combout\,
	datac => \A|ul1|Add0~8_combout\,
	datad => \A|ul1|Equal1~3_combout\,
	combout => \A|ul1|Selector3~6_combout\);

-- Location: LCCOMB_X72_Y14_N12
\A|ul1|send_enable~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|send_enable~0_combout\ = (\A|ul1|WideNor1~0_combout\ & (\A|ul1|WideNor1~3_combout\ & ((\tsw[16]~input_o\) # (\A|ul1|Selector3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|WideNor1~0_combout\,
	datab => \A|ul1|WideNor1~3_combout\,
	datac => \tsw[16]~input_o\,
	datad => \A|ul1|Selector3~6_combout\,
	combout => \A|ul1|send_enable~0_combout\);

-- Location: LCCOMB_X72_Y14_N0
\A|ul1|send_enable~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|send_enable~1_combout\ = (\A|ul1|send_enable~q\) # (!\A|ul1|send_enable~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|ul1|send_enable~q\,
	datad => \A|ul1|send_enable~0_combout\,
	combout => \A|ul1|send_enable~1_combout\);

-- Location: LCCOMB_X69_Y11_N24
\A|ul1|send_enable~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|send_enable~2_combout\ = (\A|lc1|busy~q\) # (!\A|update1|q\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|lc1|busy~q\,
	datad => \A|update1|q\(21),
	combout => \A|ul1|send_enable~2_combout\);

-- Location: FF_X72_Y14_N1
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

-- Location: LCCOMB_X62_Y18_N16
\A|lc1|Selector35~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector35~3_combout\ = (\A|lc1|Selector34~2_combout\ & (\A|ul1|send_enable~q\ & ((\A|lc1|state.ready~q\)))) # (!\A|lc1|Selector34~2_combout\ & ((\A|lc1|state.send~q\) # ((\A|ul1|send_enable~q\ & \A|lc1|state.ready~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Selector34~2_combout\,
	datab => \A|ul1|send_enable~q\,
	datac => \A|lc1|state.send~q\,
	datad => \A|lc1|state.ready~q\,
	combout => \A|lc1|Selector35~3_combout\);

-- Location: FF_X62_Y18_N17
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

-- Location: LCCOMB_X62_Y18_N18
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

-- Location: FF_X62_Y18_N19
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

-- Location: LCCOMB_X65_Y20_N22
\A|lc1|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan2~0_combout\ = (!\A|lc1|Add0~12_combout\ & (((!\A|lc1|Add0~6_combout\) # (!\A|lc1|Add0~10_combout\)) # (!\A|lc1|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Add0~8_combout\,
	datab => \A|lc1|Add0~10_combout\,
	datac => \A|lc1|Add0~12_combout\,
	datad => \A|lc1|Add0~6_combout\,
	combout => \A|lc1|LessThan2~0_combout\);

-- Location: LCCOMB_X63_Y20_N10
\A|lc1|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan2~1_combout\ = (!\A|lc1|Add0~20_combout\ & ((\A|lc1|LessThan2~0_combout\) # ((!\A|lc1|LessThan8~0_combout\) # (!\A|lc1|Add0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|LessThan2~0_combout\,
	datab => \A|lc1|Add0~18_combout\,
	datac => \A|lc1|LessThan8~0_combout\,
	datad => \A|lc1|Add0~20_combout\,
	combout => \A|lc1|LessThan2~1_combout\);

-- Location: LCCOMB_X63_Y20_N28
\A|lc1|LessThan2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan2~2_combout\ = (!\A|lc1|Add0~24_combout\ & (\A|lc1|LessThan5~5_combout\ & ((\A|lc1|LessThan2~1_combout\) # (!\A|lc1|Add0~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|LessThan2~1_combout\,
	datab => \A|lc1|Add0~22_combout\,
	datac => \A|lc1|Add0~24_combout\,
	datad => \A|lc1|LessThan5~5_combout\,
	combout => \A|lc1|LessThan2~2_combout\);

-- Location: LCCOMB_X65_Y20_N28
\A|lc1|LessThan5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan5~6_combout\ = (!\A|lc1|Add0~8_combout\ & (!\A|lc1|Add0~4_combout\ & !\A|lc1|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Add0~8_combout\,
	datac => \A|lc1|Add0~4_combout\,
	datad => \A|lc1|Add0~6_combout\,
	combout => \A|lc1|LessThan5~6_combout\);

-- Location: LCCOMB_X65_Y20_N30
\A|lc1|LessThan5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan5~7_combout\ = (!\A|lc1|Add0~14_combout\ & (((\A|lc1|LessThan5~6_combout\) # (!\A|lc1|Add0~10_combout\)) # (!\A|lc1|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Add0~14_combout\,
	datab => \A|lc1|Add0~12_combout\,
	datac => \A|lc1|Add0~10_combout\,
	datad => \A|lc1|LessThan5~6_combout\,
	combout => \A|lc1|LessThan5~7_combout\);

-- Location: LCCOMB_X63_Y20_N4
\A|lc1|LessThan5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan5~8_combout\ = (!\A|lc1|Add0~20_combout\ & (!\A|lc1|Add0~18_combout\ & ((\A|lc1|LessThan5~7_combout\) # (!\A|lc1|Add0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|LessThan5~7_combout\,
	datab => \A|lc1|Add0~20_combout\,
	datac => \A|lc1|Add0~16_combout\,
	datad => \A|lc1|Add0~18_combout\,
	combout => \A|lc1|LessThan5~8_combout\);

-- Location: LCCOMB_X63_Y20_N6
\A|lc1|LessThan5~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan5~9_combout\ = (\A|lc1|LessThan5~5_combout\ & (((\A|lc1|LessThan5~8_combout\) # (!\A|lc1|Add0~22_combout\)) # (!\A|lc1|Add0~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Add0~24_combout\,
	datab => \A|lc1|Add0~22_combout\,
	datac => \A|lc1|LessThan5~8_combout\,
	datad => \A|lc1|LessThan5~5_combout\,
	combout => \A|lc1|LessThan5~9_combout\);

-- Location: LCCOMB_X65_Y20_N12
\A|lc1|LessThan6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan6~0_combout\ = (!\A|lc1|Add0~4_combout\ & !\A|lc1|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|lc1|Add0~4_combout\,
	datad => \A|lc1|Add0~6_combout\,
	combout => \A|lc1|LessThan6~0_combout\);

-- Location: LCCOMB_X65_Y20_N2
\A|lc1|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan1~2_combout\ = (\A|lc1|LessThan1~0_combout\ & (\A|lc1|LessThan5~5_combout\ & ((\A|lc1|LessThan6~0_combout\) # (!\A|lc1|LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|LessThan6~0_combout\,
	datab => \A|lc1|LessThan1~1_combout\,
	datac => \A|lc1|LessThan1~0_combout\,
	datad => \A|lc1|LessThan5~5_combout\,
	combout => \A|lc1|LessThan1~2_combout\);

-- Location: LCCOMB_X61_Y21_N10
\A|lc1|count[30]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|count[30]~2_combout\ = (!\A|lc1|Add0~60_combout\ & ((\A|lc1|LessThan2~2_combout\) # ((\A|lc1|LessThan5~9_combout\) # (\A|lc1|LessThan1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Add0~60_combout\,
	datab => \A|lc1|LessThan2~2_combout\,
	datac => \A|lc1|LessThan5~9_combout\,
	datad => \A|lc1|LessThan1~2_combout\,
	combout => \A|lc1|count[30]~2_combout\);

-- Location: LCCOMB_X65_Y20_N16
\A|lc1|LessThan4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan4~0_combout\ = (!\A|lc1|Add0~14_combout\ & (((!\A|lc1|Add0~8_combout\) # (!\A|lc1|Add0~10_combout\)) # (!\A|lc1|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Add0~14_combout\,
	datab => \A|lc1|Add0~12_combout\,
	datac => \A|lc1|Add0~10_combout\,
	datad => \A|lc1|Add0~8_combout\,
	combout => \A|lc1|LessThan4~0_combout\);

-- Location: LCCOMB_X63_Y20_N30
\A|lc1|LessThan4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan4~1_combout\ = (\A|lc1|LessThan4~0_combout\) # (((!\A|lc1|Add0~18_combout\) # (!\A|lc1|Add0~16_combout\)) # (!\A|lc1|Add0~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|LessThan4~0_combout\,
	datab => \A|lc1|Add0~20_combout\,
	datac => \A|lc1|Add0~16_combout\,
	datad => \A|lc1|Add0~18_combout\,
	combout => \A|lc1|LessThan4~1_combout\);

-- Location: LCCOMB_X63_Y20_N0
\A|lc1|LessThan4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan4~2_combout\ = (\A|lc1|LessThan5~5_combout\ & (((!\A|lc1|Add0~22_combout\ & \A|lc1|LessThan4~1_combout\)) # (!\A|lc1|Add0~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Add0~24_combout\,
	datab => \A|lc1|Add0~22_combout\,
	datac => \A|lc1|LessThan4~1_combout\,
	datad => \A|lc1|LessThan5~5_combout\,
	combout => \A|lc1|LessThan4~2_combout\);

-- Location: LCCOMB_X61_Y21_N20
\A|lc1|count[30]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|count[30]~3_combout\ = (\A|lc1|count[30]~2_combout\) # ((\A|lc1|LessThan4~2_combout\ & !\A|lc1|Add0~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|count[30]~2_combout\,
	datab => \A|lc1|LessThan4~2_combout\,
	datad => \A|lc1|Add0~60_combout\,
	combout => \A|lc1|count[30]~3_combout\);

-- Location: LCCOMB_X62_Y18_N4
\A|lc1|count[30]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|count[30]~4_combout\ = (\A|lc1|state.send~q\ & (\A|lc1|Selector34~2_combout\)) # (!\A|lc1|state.send~q\ & (((!\A|lc1|count[30]~3_combout\ & \A|lc1|Selector34~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Selector34~2_combout\,
	datab => \A|lc1|count[30]~3_combout\,
	datac => \A|lc1|Selector34~1_combout\,
	datad => \A|lc1|state.send~q\,
	combout => \A|lc1|count[30]~4_combout\);

-- Location: LCCOMB_X62_Y18_N24
\A|lc1|count[30]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|count[30]~5_combout\ = (!\A|lc1|state.ready~q\ & ((\A|lc1|state.power~q\ & (!\A|lc1|count[30]~4_combout\)) # (!\A|lc1|state.power~q\ & ((\A|lc1|LessThan0~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|state.power~q\,
	datab => \A|lc1|state.ready~q\,
	datac => \A|lc1|count[30]~4_combout\,
	datad => \A|lc1|LessThan0~6_combout\,
	combout => \A|lc1|count[30]~5_combout\);

-- Location: LCCOMB_X61_Y19_N24
\A|lc1|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector2~0_combout\ = (\A|lc1|count[30]~5_combout\ & \A|lc1|Add0~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|lc1|count[30]~5_combout\,
	datad => \A|lc1|Add0~60_combout\,
	combout => \A|lc1|Selector2~0_combout\);

-- Location: FF_X61_Y19_N25
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

-- Location: LCCOMB_X61_Y21_N8
\A|lc1|Selector45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector45~0_combout\ = (\A|lc1|LessThan3~2_combout\) # ((\A|lc1|LessThan5~9_combout\ & ((\A|lc1|Add0~60_combout\) # (!\A|lc1|LessThan4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Add0~60_combout\,
	datab => \A|lc1|LessThan3~2_combout\,
	datac => \A|lc1|LessThan5~9_combout\,
	datad => \A|lc1|LessThan4~2_combout\,
	combout => \A|lc1|Selector45~0_combout\);

-- Location: LCCOMB_X72_Y17_N12
\A|ul1|WideNor0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|WideNor0~combout\ = (\A|ul1|WideNor1~3_combout\ & (\A|ul1|WideNor1~0_combout\ & \A|ul1|Selector3~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|WideNor1~3_combout\,
	datac => \A|ul1|WideNor1~0_combout\,
	datad => \A|ul1|Selector3~6_combout\,
	combout => \A|ul1|WideNor0~combout\);

-- Location: LCCOMB_X109_Y31_N0
\C|count[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|count[0]~32_combout\ = \C|count\(0) $ (VCC)
-- \C|count[0]~33\ = CARRY(\C|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C|count\(0),
	datad => VCC,
	combout => \C|count[0]~32_combout\,
	cout => \C|count[0]~33\);

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

-- Location: LCCOMB_X109_Y29_N2
\C|count[3]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|count[3]~96_combout\ = ((\tsw[16]~input_o\) # (\psw[1]~input_o\)) # (!\C|LessThan0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C|LessThan0~7_combout\,
	datac => \tsw[16]~input_o\,
	datad => \psw[1]~input_o\,
	combout => \C|count[3]~96_combout\);

-- Location: FF_X109_Y31_N1
\C|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \C|count[0]~32_combout\,
	clrn => \psw[0]~input_o\,
	sclr => \C|count[3]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C|count\(0));

-- Location: LCCOMB_X109_Y31_N2
\C|count[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|count[1]~34_combout\ = (\C|count\(1) & (!\C|count[0]~33\)) # (!\C|count\(1) & ((\C|count[0]~33\) # (GND)))
-- \C|count[1]~35\ = CARRY((!\C|count[0]~33\) # (!\C|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C|count\(1),
	datad => VCC,
	cin => \C|count[0]~33\,
	combout => \C|count[1]~34_combout\,
	cout => \C|count[1]~35\);

-- Location: FF_X109_Y31_N3
\C|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \C|count[1]~34_combout\,
	clrn => \psw[0]~input_o\,
	sclr => \C|count[3]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C|count\(1));

-- Location: LCCOMB_X109_Y31_N4
\C|count[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|count[2]~36_combout\ = (\C|count\(2) & (\C|count[1]~35\ $ (GND))) # (!\C|count\(2) & (!\C|count[1]~35\ & VCC))
-- \C|count[2]~37\ = CARRY((\C|count\(2) & !\C|count[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C|count\(2),
	datad => VCC,
	cin => \C|count[1]~35\,
	combout => \C|count[2]~36_combout\,
	cout => \C|count[2]~37\);

-- Location: FF_X109_Y31_N5
\C|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \C|count[2]~36_combout\,
	clrn => \psw[0]~input_o\,
	sclr => \C|count[3]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C|count\(2));

-- Location: LCCOMB_X109_Y31_N6
\C|count[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|count[3]~38_combout\ = (\C|count\(3) & (!\C|count[2]~37\)) # (!\C|count\(3) & ((\C|count[2]~37\) # (GND)))
-- \C|count[3]~39\ = CARRY((!\C|count[2]~37\) # (!\C|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C|count\(3),
	datad => VCC,
	cin => \C|count[2]~37\,
	combout => \C|count[3]~38_combout\,
	cout => \C|count[3]~39\);

-- Location: FF_X109_Y31_N7
\C|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \C|count[3]~38_combout\,
	clrn => \psw[0]~input_o\,
	sclr => \C|count[3]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C|count\(3));

-- Location: LCCOMB_X109_Y31_N8
\C|count[4]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|count[4]~40_combout\ = (\C|count\(4) & (\C|count[3]~39\ $ (GND))) # (!\C|count\(4) & (!\C|count[3]~39\ & VCC))
-- \C|count[4]~41\ = CARRY((\C|count\(4) & !\C|count[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C|count\(4),
	datad => VCC,
	cin => \C|count[3]~39\,
	combout => \C|count[4]~40_combout\,
	cout => \C|count[4]~41\);

-- Location: FF_X109_Y31_N9
\C|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \C|count[4]~40_combout\,
	clrn => \psw[0]~input_o\,
	sclr => \C|count[3]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C|count\(4));

-- Location: LCCOMB_X109_Y31_N10
\C|count[5]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|count[5]~42_combout\ = (\C|count\(5) & (!\C|count[4]~41\)) # (!\C|count\(5) & ((\C|count[4]~41\) # (GND)))
-- \C|count[5]~43\ = CARRY((!\C|count[4]~41\) # (!\C|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C|count\(5),
	datad => VCC,
	cin => \C|count[4]~41\,
	combout => \C|count[5]~42_combout\,
	cout => \C|count[5]~43\);

-- Location: FF_X109_Y31_N11
\C|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \C|count[5]~42_combout\,
	clrn => \psw[0]~input_o\,
	sclr => \C|count[3]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C|count\(5));

-- Location: LCCOMB_X109_Y31_N12
\C|count[6]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|count[6]~44_combout\ = (\C|count\(6) & (\C|count[5]~43\ $ (GND))) # (!\C|count\(6) & (!\C|count[5]~43\ & VCC))
-- \C|count[6]~45\ = CARRY((\C|count\(6) & !\C|count[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C|count\(6),
	datad => VCC,
	cin => \C|count[5]~43\,
	combout => \C|count[6]~44_combout\,
	cout => \C|count[6]~45\);

-- Location: FF_X109_Y31_N13
\C|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \C|count[6]~44_combout\,
	clrn => \psw[0]~input_o\,
	sclr => \C|count[3]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C|count\(6));

-- Location: LCCOMB_X109_Y31_N14
\C|count[7]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|count[7]~46_combout\ = (\C|count\(7) & (!\C|count[6]~45\)) # (!\C|count\(7) & ((\C|count[6]~45\) # (GND)))
-- \C|count[7]~47\ = CARRY((!\C|count[6]~45\) # (!\C|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C|count\(7),
	datad => VCC,
	cin => \C|count[6]~45\,
	combout => \C|count[7]~46_combout\,
	cout => \C|count[7]~47\);

-- Location: FF_X109_Y31_N15
\C|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \C|count[7]~46_combout\,
	clrn => \psw[0]~input_o\,
	sclr => \C|count[3]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C|count\(7));

-- Location: LCCOMB_X109_Y31_N16
\C|count[8]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|count[8]~48_combout\ = (\C|count\(8) & (\C|count[7]~47\ $ (GND))) # (!\C|count\(8) & (!\C|count[7]~47\ & VCC))
-- \C|count[8]~49\ = CARRY((\C|count\(8) & !\C|count[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C|count\(8),
	datad => VCC,
	cin => \C|count[7]~47\,
	combout => \C|count[8]~48_combout\,
	cout => \C|count[8]~49\);

-- Location: FF_X109_Y31_N17
\C|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \C|count[8]~48_combout\,
	clrn => \psw[0]~input_o\,
	sclr => \C|count[3]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C|count\(8));

-- Location: LCCOMB_X109_Y31_N18
\C|count[9]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|count[9]~50_combout\ = (\C|count\(9) & (!\C|count[8]~49\)) # (!\C|count\(9) & ((\C|count[8]~49\) # (GND)))
-- \C|count[9]~51\ = CARRY((!\C|count[8]~49\) # (!\C|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C|count\(9),
	datad => VCC,
	cin => \C|count[8]~49\,
	combout => \C|count[9]~50_combout\,
	cout => \C|count[9]~51\);

-- Location: FF_X109_Y31_N19
\C|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \C|count[9]~50_combout\,
	clrn => \psw[0]~input_o\,
	sclr => \C|count[3]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C|count\(9));

-- Location: LCCOMB_X109_Y31_N20
\C|count[10]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|count[10]~52_combout\ = (\C|count\(10) & (\C|count[9]~51\ $ (GND))) # (!\C|count\(10) & (!\C|count[9]~51\ & VCC))
-- \C|count[10]~53\ = CARRY((\C|count\(10) & !\C|count[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C|count\(10),
	datad => VCC,
	cin => \C|count[9]~51\,
	combout => \C|count[10]~52_combout\,
	cout => \C|count[10]~53\);

-- Location: FF_X109_Y31_N21
\C|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \C|count[10]~52_combout\,
	clrn => \psw[0]~input_o\,
	sclr => \C|count[3]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C|count\(10));

-- Location: LCCOMB_X109_Y31_N22
\C|count[11]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|count[11]~54_combout\ = (\C|count\(11) & (!\C|count[10]~53\)) # (!\C|count\(11) & ((\C|count[10]~53\) # (GND)))
-- \C|count[11]~55\ = CARRY((!\C|count[10]~53\) # (!\C|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C|count\(11),
	datad => VCC,
	cin => \C|count[10]~53\,
	combout => \C|count[11]~54_combout\,
	cout => \C|count[11]~55\);

-- Location: FF_X109_Y31_N23
\C|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \C|count[11]~54_combout\,
	clrn => \psw[0]~input_o\,
	sclr => \C|count[3]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C|count\(11));

-- Location: LCCOMB_X109_Y29_N6
\C|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|LessThan0~2_combout\ = (!\C|count\(11) & (!\C|count\(10) & (!\C|count\(8) & !\C|count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C|count\(11),
	datab => \C|count\(10),
	datac => \C|count\(8),
	datad => \C|count\(9),
	combout => \C|LessThan0~2_combout\);

-- Location: LCCOMB_X109_Y31_N24
\C|count[12]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|count[12]~56_combout\ = (\C|count\(12) & (\C|count[11]~55\ $ (GND))) # (!\C|count\(12) & (!\C|count[11]~55\ & VCC))
-- \C|count[12]~57\ = CARRY((\C|count\(12) & !\C|count[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C|count\(12),
	datad => VCC,
	cin => \C|count[11]~55\,
	combout => \C|count[12]~56_combout\,
	cout => \C|count[12]~57\);

-- Location: FF_X109_Y31_N25
\C|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \C|count[12]~56_combout\,
	clrn => \psw[0]~input_o\,
	sclr => \C|count[3]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C|count\(12));

-- Location: LCCOMB_X109_Y31_N26
\C|count[13]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|count[13]~58_combout\ = (\C|count\(13) & (!\C|count[12]~57\)) # (!\C|count\(13) & ((\C|count[12]~57\) # (GND)))
-- \C|count[13]~59\ = CARRY((!\C|count[12]~57\) # (!\C|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C|count\(13),
	datad => VCC,
	cin => \C|count[12]~57\,
	combout => \C|count[13]~58_combout\,
	cout => \C|count[13]~59\);

-- Location: FF_X109_Y31_N27
\C|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \C|count[13]~58_combout\,
	clrn => \psw[0]~input_o\,
	sclr => \C|count[3]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C|count\(13));

-- Location: LCCOMB_X109_Y31_N28
\C|count[14]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|count[14]~60_combout\ = (\C|count\(14) & (\C|count[13]~59\ $ (GND))) # (!\C|count\(14) & (!\C|count[13]~59\ & VCC))
-- \C|count[14]~61\ = CARRY((\C|count\(14) & !\C|count[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C|count\(14),
	datad => VCC,
	cin => \C|count[13]~59\,
	combout => \C|count[14]~60_combout\,
	cout => \C|count[14]~61\);

-- Location: FF_X109_Y31_N29
\C|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \C|count[14]~60_combout\,
	clrn => \psw[0]~input_o\,
	sclr => \C|count[3]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C|count\(14));

-- Location: LCCOMB_X109_Y31_N30
\C|count[15]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|count[15]~62_combout\ = (\C|count\(15) & (!\C|count[14]~61\)) # (!\C|count\(15) & ((\C|count[14]~61\) # (GND)))
-- \C|count[15]~63\ = CARRY((!\C|count[14]~61\) # (!\C|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C|count\(15),
	datad => VCC,
	cin => \C|count[14]~61\,
	combout => \C|count[15]~62_combout\,
	cout => \C|count[15]~63\);

-- Location: FF_X109_Y31_N31
\C|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \C|count[15]~62_combout\,
	clrn => \psw[0]~input_o\,
	sclr => \C|count[3]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C|count\(15));

-- Location: LCCOMB_X109_Y30_N0
\C|count[16]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|count[16]~64_combout\ = (\C|count\(16) & (\C|count[15]~63\ $ (GND))) # (!\C|count\(16) & (!\C|count[15]~63\ & VCC))
-- \C|count[16]~65\ = CARRY((\C|count\(16) & !\C|count[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C|count\(16),
	datad => VCC,
	cin => \C|count[15]~63\,
	combout => \C|count[16]~64_combout\,
	cout => \C|count[16]~65\);

-- Location: FF_X109_Y30_N1
\C|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \C|count[16]~64_combout\,
	clrn => \psw[0]~input_o\,
	sclr => \C|count[3]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C|count\(16));

-- Location: LCCOMB_X109_Y29_N4
\C|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|LessThan0~1_combout\ = (((!\C|count\(13)) # (!\C|count\(14))) # (!\C|count\(15))) # (!\C|count\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C|count\(16),
	datab => \C|count\(15),
	datac => \C|count\(14),
	datad => \C|count\(13),
	combout => \C|LessThan0~1_combout\);

-- Location: LCCOMB_X109_Y30_N2
\C|count[17]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|count[17]~66_combout\ = (\C|count\(17) & (!\C|count[16]~65\)) # (!\C|count\(17) & ((\C|count[16]~65\) # (GND)))
-- \C|count[17]~67\ = CARRY((!\C|count[16]~65\) # (!\C|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C|count\(17),
	datad => VCC,
	cin => \C|count[16]~65\,
	combout => \C|count[17]~66_combout\,
	cout => \C|count[17]~67\);

-- Location: FF_X109_Y30_N3
\C|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \C|count[17]~66_combout\,
	clrn => \psw[0]~input_o\,
	sclr => \C|count[3]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C|count\(17));

-- Location: LCCOMB_X109_Y29_N24
\C|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|LessThan0~3_combout\ = (!\C|count\(17) & ((\C|LessThan0~1_combout\) # ((\C|LessThan0~2_combout\ & !\C|count\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C|LessThan0~2_combout\,
	datab => \C|LessThan0~1_combout\,
	datac => \C|count\(12),
	datad => \C|count\(17),
	combout => \C|LessThan0~3_combout\);

-- Location: LCCOMB_X109_Y30_N4
\C|count[18]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|count[18]~68_combout\ = (\C|count\(18) & (\C|count[17]~67\ $ (GND))) # (!\C|count\(18) & (!\C|count[17]~67\ & VCC))
-- \C|count[18]~69\ = CARRY((\C|count\(18) & !\C|count[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C|count\(18),
	datad => VCC,
	cin => \C|count[17]~67\,
	combout => \C|count[18]~68_combout\,
	cout => \C|count[18]~69\);

-- Location: FF_X109_Y30_N5
\C|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \C|count[18]~68_combout\,
	clrn => \psw[0]~input_o\,
	sclr => \C|count[3]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C|count\(18));

-- Location: LCCOMB_X109_Y30_N6
\C|count[19]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|count[19]~70_combout\ = (\C|count\(19) & (!\C|count[18]~69\)) # (!\C|count\(19) & ((\C|count[18]~69\) # (GND)))
-- \C|count[19]~71\ = CARRY((!\C|count[18]~69\) # (!\C|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C|count\(19),
	datad => VCC,
	cin => \C|count[18]~69\,
	combout => \C|count[19]~70_combout\,
	cout => \C|count[19]~71\);

-- Location: FF_X109_Y30_N7
\C|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \C|count[19]~70_combout\,
	clrn => \psw[0]~input_o\,
	sclr => \C|count[3]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C|count\(19));

-- Location: LCCOMB_X109_Y29_N10
\C|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|LessThan0~4_combout\ = (!\C|count\(19) & ((\C|LessThan0~3_combout\) # (!\C|count\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C|LessThan0~3_combout\,
	datac => \C|count\(18),
	datad => \C|count\(19),
	combout => \C|LessThan0~4_combout\);

-- Location: LCCOMB_X109_Y30_N8
\C|count[20]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|count[20]~72_combout\ = (\C|count\(20) & (\C|count[19]~71\ $ (GND))) # (!\C|count\(20) & (!\C|count[19]~71\ & VCC))
-- \C|count[20]~73\ = CARRY((\C|count\(20) & !\C|count[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C|count\(20),
	datad => VCC,
	cin => \C|count[19]~71\,
	combout => \C|count[20]~72_combout\,
	cout => \C|count[20]~73\);

-- Location: FF_X109_Y30_N9
\C|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \C|count[20]~72_combout\,
	clrn => \psw[0]~input_o\,
	sclr => \C|count[3]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C|count\(20));

-- Location: LCCOMB_X109_Y30_N10
\C|count[21]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|count[21]~74_combout\ = (\C|count\(21) & (!\C|count[20]~73\)) # (!\C|count\(21) & ((\C|count[20]~73\) # (GND)))
-- \C|count[21]~75\ = CARRY((!\C|count[20]~73\) # (!\C|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C|count\(21),
	datad => VCC,
	cin => \C|count[20]~73\,
	combout => \C|count[21]~74_combout\,
	cout => \C|count[21]~75\);

-- Location: FF_X109_Y30_N11
\C|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \C|count[21]~74_combout\,
	clrn => \psw[0]~input_o\,
	sclr => \C|count[3]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C|count\(21));

-- Location: LCCOMB_X109_Y30_N12
\C|count[22]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|count[22]~76_combout\ = (\C|count\(22) & (\C|count[21]~75\ $ (GND))) # (!\C|count\(22) & (!\C|count[21]~75\ & VCC))
-- \C|count[22]~77\ = CARRY((\C|count\(22) & !\C|count[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C|count\(22),
	datad => VCC,
	cin => \C|count[21]~75\,
	combout => \C|count[22]~76_combout\,
	cout => \C|count[22]~77\);

-- Location: FF_X109_Y30_N13
\C|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \C|count[22]~76_combout\,
	clrn => \psw[0]~input_o\,
	sclr => \C|count[3]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C|count\(22));

-- Location: LCCOMB_X109_Y30_N14
\C|count[23]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|count[23]~78_combout\ = (\C|count\(23) & (!\C|count[22]~77\)) # (!\C|count\(23) & ((\C|count[22]~77\) # (GND)))
-- \C|count[23]~79\ = CARRY((!\C|count[22]~77\) # (!\C|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C|count\(23),
	datad => VCC,
	cin => \C|count[22]~77\,
	combout => \C|count[23]~78_combout\,
	cout => \C|count[23]~79\);

-- Location: FF_X109_Y30_N15
\C|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \C|count[23]~78_combout\,
	clrn => \psw[0]~input_o\,
	sclr => \C|count[3]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C|count\(23));

-- Location: LCCOMB_X109_Y29_N20
\C|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|LessThan0~5_combout\ = (((!\C|count\(20)) # (!\C|count\(23))) # (!\C|count\(22))) # (!\C|count\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C|count\(21),
	datab => \C|count\(22),
	datac => \C|count\(23),
	datad => \C|count\(20),
	combout => \C|LessThan0~5_combout\);

-- Location: LCCOMB_X109_Y30_N16
\C|count[24]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|count[24]~80_combout\ = (\C|count\(24) & (\C|count[23]~79\ $ (GND))) # (!\C|count\(24) & (!\C|count[23]~79\ & VCC))
-- \C|count[24]~81\ = CARRY((\C|count\(24) & !\C|count[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C|count\(24),
	datad => VCC,
	cin => \C|count[23]~79\,
	combout => \C|count[24]~80_combout\,
	cout => \C|count[24]~81\);

-- Location: FF_X109_Y30_N17
\C|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \C|count[24]~80_combout\,
	clrn => \psw[0]~input_o\,
	sclr => \C|count[3]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C|count\(24));

-- Location: LCCOMB_X109_Y30_N18
\C|count[25]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|count[25]~82_combout\ = (\C|count\(25) & (!\C|count[24]~81\)) # (!\C|count\(25) & ((\C|count[24]~81\) # (GND)))
-- \C|count[25]~83\ = CARRY((!\C|count[24]~81\) # (!\C|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C|count\(25),
	datad => VCC,
	cin => \C|count[24]~81\,
	combout => \C|count[25]~82_combout\,
	cout => \C|count[25]~83\);

-- Location: FF_X109_Y30_N19
\C|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \C|count[25]~82_combout\,
	clrn => \psw[0]~input_o\,
	sclr => \C|count[3]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C|count\(25));

-- Location: LCCOMB_X109_Y29_N22
\C|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|LessThan0~6_combout\ = (!\C|count\(25) & ((\C|LessThan0~4_combout\) # ((\C|LessThan0~5_combout\) # (!\C|count\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C|LessThan0~4_combout\,
	datab => \C|LessThan0~5_combout\,
	datac => \C|count\(25),
	datad => \C|count\(24),
	combout => \C|LessThan0~6_combout\);

-- Location: LCCOMB_X109_Y30_N20
\C|count[26]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|count[26]~84_combout\ = (\C|count\(26) & (\C|count[25]~83\ $ (GND))) # (!\C|count\(26) & (!\C|count[25]~83\ & VCC))
-- \C|count[26]~85\ = CARRY((\C|count\(26) & !\C|count[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C|count\(26),
	datad => VCC,
	cin => \C|count[25]~83\,
	combout => \C|count[26]~84_combout\,
	cout => \C|count[26]~85\);

-- Location: FF_X109_Y30_N21
\C|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \C|count[26]~84_combout\,
	clrn => \psw[0]~input_o\,
	sclr => \C|count[3]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C|count\(26));

-- Location: LCCOMB_X109_Y30_N22
\C|count[27]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|count[27]~86_combout\ = (\C|count\(27) & (!\C|count[26]~85\)) # (!\C|count\(27) & ((\C|count[26]~85\) # (GND)))
-- \C|count[27]~87\ = CARRY((!\C|count[26]~85\) # (!\C|count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C|count\(27),
	datad => VCC,
	cin => \C|count[26]~85\,
	combout => \C|count[27]~86_combout\,
	cout => \C|count[27]~87\);

-- Location: FF_X109_Y30_N23
\C|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \C|count[27]~86_combout\,
	clrn => \psw[0]~input_o\,
	sclr => \C|count[3]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C|count\(27));

-- Location: LCCOMB_X109_Y30_N24
\C|count[28]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|count[28]~88_combout\ = (\C|count\(28) & (\C|count[27]~87\ $ (GND))) # (!\C|count\(28) & (!\C|count[27]~87\ & VCC))
-- \C|count[28]~89\ = CARRY((\C|count\(28) & !\C|count[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C|count\(28),
	datad => VCC,
	cin => \C|count[27]~87\,
	combout => \C|count[28]~88_combout\,
	cout => \C|count[28]~89\);

-- Location: FF_X109_Y30_N25
\C|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \C|count[28]~88_combout\,
	clrn => \psw[0]~input_o\,
	sclr => \C|count[3]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C|count\(28));

-- Location: LCCOMB_X109_Y30_N26
\C|count[29]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|count[29]~90_combout\ = (\C|count\(29) & (!\C|count[28]~89\)) # (!\C|count\(29) & ((\C|count[28]~89\) # (GND)))
-- \C|count[29]~91\ = CARRY((!\C|count[28]~89\) # (!\C|count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C|count\(29),
	datad => VCC,
	cin => \C|count[28]~89\,
	combout => \C|count[29]~90_combout\,
	cout => \C|count[29]~91\);

-- Location: FF_X109_Y30_N27
\C|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \C|count[29]~90_combout\,
	clrn => \psw[0]~input_o\,
	sclr => \C|count[3]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C|count\(29));

-- Location: LCCOMB_X109_Y30_N28
\C|count[30]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|count[30]~92_combout\ = (\C|count\(30) & (\C|count[29]~91\ $ (GND))) # (!\C|count\(30) & (!\C|count[29]~91\ & VCC))
-- \C|count[30]~93\ = CARRY((\C|count\(30) & !\C|count[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C|count\(30),
	datad => VCC,
	cin => \C|count[29]~91\,
	combout => \C|count[30]~92_combout\,
	cout => \C|count[30]~93\);

-- Location: FF_X109_Y30_N29
\C|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \C|count[30]~92_combout\,
	clrn => \psw[0]~input_o\,
	sclr => \C|count[3]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C|count\(30));

-- Location: LCCOMB_X109_Y30_N30
\C|count[31]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|count[31]~94_combout\ = \C|count\(31) $ (\C|count[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C|count\(31),
	cin => \C|count[30]~93\,
	combout => \C|count[31]~94_combout\);

-- Location: FF_X109_Y30_N31
\C|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \C|count[31]~94_combout\,
	clrn => \psw[0]~input_o\,
	sclr => \C|count[3]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C|count\(31));

-- Location: LCCOMB_X109_Y29_N26
\C|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|LessThan0~0_combout\ = (!\C|count\(30) & (!\C|count\(28) & (!\C|count\(27) & !\C|count\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C|count\(30),
	datab => \C|count\(28),
	datac => \C|count\(27),
	datad => \C|count\(29),
	combout => \C|LessThan0~0_combout\);

-- Location: LCCOMB_X109_Y29_N16
\C|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|LessThan0~7_combout\ = (\C|count\(31)) # ((\C|LessThan0~0_combout\ & ((\C|LessThan0~6_combout\) # (!\C|count\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C|LessThan0~6_combout\,
	datab => \C|count\(31),
	datac => \C|LessThan0~0_combout\,
	datad => \C|count\(26),
	combout => \C|LessThan0~7_combout\);

-- Location: LCCOMB_X109_Y29_N8
\C|success~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|success~0_combout\ = (!\C|LessThan0~7_combout\ & (!\tsw[16]~input_o\ & !\psw[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C|LessThan0~7_combout\,
	datac => \tsw[16]~input_o\,
	datad => \psw[1]~input_o\,
	combout => \C|success~0_combout\);

-- Location: FF_X109_Y29_N9
\C|success\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \C|success~0_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C|success~q\);

-- Location: LCCOMB_X73_Y15_N18
\A|ul1|Equal22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal22~0_combout\ = (!\A|ul1|Add0~92_combout\ & (\A|ul1|Add0~91_combout\ & \A|ul1|Add0~94_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~92_combout\,
	datac => \A|ul1|Add0~91_combout\,
	datad => \A|ul1|Add0~94_combout\,
	combout => \A|ul1|Equal22~0_combout\);

-- Location: LCCOMB_X73_Y16_N14
\A|ul1|Equal22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal22~1_combout\ = (\A|ul1|Equal3~1_combout\ & (!\A|ul1|Add0~8_combout\ & (\A|ul1|Add0~93_combout\ & \A|ul1|Equal22~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal3~1_combout\,
	datab => \A|ul1|Add0~8_combout\,
	datac => \A|ul1|Add0~93_combout\,
	datad => \A|ul1|Equal22~0_combout\,
	combout => \A|ul1|Equal22~1_combout\);

-- Location: LCCOMB_X73_Y17_N26
\A|ul1|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector7~0_combout\ = (!\A|ul1|Equal26~1_combout\ & ((!\A|ul1|Equal27~0_combout\) # (!\A|ul1|Equal9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal9~0_combout\,
	datab => \A|ul1|Equal26~1_combout\,
	datad => \A|ul1|Equal27~0_combout\,
	combout => \A|ul1|Selector7~0_combout\);

-- Location: LCCOMB_X74_Y14_N4
\A|ul1|Equal24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal24~0_combout\ = (\A|ul1|Equal27~0_combout\ & (\A|ul1|Add0~93_combout\ & (\A|ul1|Equal8~0_combout\ & \A|ul1|Equal3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal27~0_combout\,
	datab => \A|ul1|Add0~93_combout\,
	datac => \A|ul1|Equal8~0_combout\,
	datad => \A|ul1|Equal3~1_combout\,
	combout => \A|ul1|Equal24~0_combout\);

-- Location: LCCOMB_X74_Y14_N6
\A|ul1|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector2~0_combout\ = (!\A|ul1|Equal24~0_combout\ & ((\A|ul1|Add0~8_combout\) # ((!\A|ul1|Equal9~0_combout\) # (!\A|ul1|Add0~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~8_combout\,
	datab => \A|ul1|Equal24~0_combout\,
	datac => \A|ul1|Add0~91_combout\,
	datad => \A|ul1|Equal9~0_combout\,
	combout => \A|ul1|Selector2~0_combout\);

-- Location: LCCOMB_X73_Y16_N8
\A|ul1|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector8~0_combout\ = (!\A|ul1|Equal28~0_combout\ & (!\A|ul1|Equal22~1_combout\ & (\A|ul1|Selector7~0_combout\ & \A|ul1|Selector2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal28~0_combout\,
	datab => \A|ul1|Equal22~1_combout\,
	datac => \A|ul1|Selector7~0_combout\,
	datad => \A|ul1|Selector2~0_combout\,
	combout => \A|ul1|Selector8~0_combout\);

-- Location: LCCOMB_X74_Y16_N2
\A|ul1|Selector17~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector17~6_combout\ = (!\A|ul1|Equal3~2_combout\ & !\A|ul1|Equal16~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|Equal3~2_combout\,
	datad => \A|ul1|Equal16~0_combout\,
	combout => \A|ul1|Selector17~6_combout\);

-- Location: LCCOMB_X73_Y16_N18
\A|ul1|Selector8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector8~1_combout\ = (((\C|success~q\ & !\A|ul1|Selector8~0_combout\)) # (!\A|ul1|Selector17~6_combout\)) # (!\A|ul1|Selector15~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Selector15~2_combout\,
	datab => \C|success~q\,
	datac => \A|ul1|Selector8~0_combout\,
	datad => \A|ul1|Selector17~6_combout\,
	combout => \A|ul1|Selector8~1_combout\);

-- Location: LCCOMB_X73_Y15_N16
\A|ul1|Equal23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal23~1_combout\ = (\A|ul1|Add0~94_combout\ & (\A|ul1|Equal23~0_combout\ & (!\A|ul1|Add0~93_combout\ & \A|ul1|Equal3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~94_combout\,
	datab => \A|ul1|Equal23~0_combout\,
	datac => \A|ul1|Add0~93_combout\,
	datad => \A|ul1|Equal3~1_combout\,
	combout => \A|ul1|Equal23~1_combout\);

-- Location: LCCOMB_X73_Y17_N24
\A|ul1|Selector8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector8~2_combout\ = (\A|ul1|Selector8~1_combout\) # ((\A|ul1|Equal23~1_combout\) # ((\A|ul1|WideNor0~combout\ & \A|ul1|data_write\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|WideNor0~combout\,
	datab => \A|ul1|Selector8~1_combout\,
	datac => \A|ul1|data_write\(0),
	datad => \A|ul1|Equal23~1_combout\,
	combout => \A|ul1|Selector8~2_combout\);

-- Location: LCCOMB_X79_Y9_N14
\A|ul1|LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|LessThan3~0_combout\ = (\tsw[15]~input_o\ & ((\tsw[13]~input_o\) # (\tsw[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[15]~input_o\,
	datab => \tsw[13]~input_o\,
	datad => \tsw[14]~input_o\,
	combout => \A|ul1|LessThan3~0_combout\);

-- Location: LCCOMB_X72_Y14_N14
\A|ul1|Selector17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector17~2_combout\ = (\A|ul1|Equal18~0_combout\) # ((\A|ul1|Equal33~0_combout\ & (\tsw[12]~input_o\ $ (\A|ul1|LessThan3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal18~0_combout\,
	datab => \tsw[12]~input_o\,
	datac => \A|ul1|LessThan3~0_combout\,
	datad => \A|ul1|Equal33~0_combout\,
	combout => \A|ul1|Selector17~2_combout\);

-- Location: LCCOMB_X73_Y17_N8
\A|ul1|WideNor1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|WideNor1~combout\ = (\A|ul1|WideNor1~3_combout\ & \A|ul1|WideNor1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|ul1|WideNor1~3_combout\,
	datad => \A|ul1|WideNor1~0_combout\,
	combout => \A|ul1|WideNor1~combout\);

-- Location: LCCOMB_X76_Y13_N12
\A|ul1|Selector17~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector17~10_combout\ = (\A|ul1|Selector3~7_combout\ & (((!\A|ul1|Equal13~0_combout\) # (!\A|ul1|Add0~92_combout\)) # (!\A|ul1|Add0~91_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~91_combout\,
	datab => \A|ul1|Add0~92_combout\,
	datac => \A|ul1|Equal13~0_combout\,
	datad => \A|ul1|Selector3~7_combout\,
	combout => \A|ul1|Selector17~10_combout\);

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

-- Location: LCCOMB_X70_Y8_N30
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

-- Location: LCCOMB_X75_Y13_N24
\A|ul1|Selector17~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector17~7_combout\ = ((\A|ul1|Equal25~0_combout\ & (\tsw[4]~input_o\ $ (\A|ul1|LessThan1~0_combout\)))) # (!\A|ul1|Selector17~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[4]~input_o\,
	datab => \A|ul1|Equal25~0_combout\,
	datac => \A|ul1|LessThan1~0_combout\,
	datad => \A|ul1|Selector17~6_combout\,
	combout => \A|ul1|Selector17~7_combout\);

-- Location: LCCOMB_X75_Y16_N2
\A|ul1|Selector17~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector17~3_combout\ = (\psw[3]~input_o\ & (((\A|ul1|Equal12~0_combout\)))) # (!\psw[3]~input_o\ & ((\A|ul1|Equal13~1_combout\) # ((\A|ul1|Equal9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \psw[3]~input_o\,
	datab => \A|ul1|Equal13~1_combout\,
	datac => \A|ul1|Equal9~1_combout\,
	datad => \A|ul1|Equal12~0_combout\,
	combout => \A|ul1|Selector17~3_combout\);

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

-- Location: LCCOMB_X74_Y9_N22
\A|ul1|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|LessThan2~0_combout\ = (\tsw[3]~input_o\ & ((\tsw[2]~input_o\) # (\tsw[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[2]~input_o\,
	datac => \tsw[3]~input_o\,
	datad => \tsw[1]~input_o\,
	combout => \A|ul1|LessThan2~0_combout\);

-- Location: LCCOMB_X80_Y10_N14
\A|ul1|LessThan4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|LessThan4~0_combout\ = (\tsw[11]~input_o\ & ((\tsw[10]~input_o\) # (\tsw[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[10]~input_o\,
	datac => \tsw[11]~input_o\,
	datad => \tsw[9]~input_o\,
	combout => \A|ul1|LessThan4~0_combout\);

-- Location: LCCOMB_X77_Y13_N8
\A|ul1|Selector17~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector17~4_combout\ = (\A|ul1|Equal34~0_combout\ & (\A|ul1|LessThan4~0_combout\ $ (\tsw[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal34~0_combout\,
	datab => \A|ul1|LessThan4~0_combout\,
	datac => \tsw[8]~input_o\,
	combout => \A|ul1|Selector17~4_combout\);

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

-- Location: LCCOMB_X77_Y13_N18
\A|ul1|Selector17~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector17~5_combout\ = (\A|ul1|Selector17~4_combout\) # ((\A|ul1|Equal26~1_combout\ & (\A|ul1|LessThan2~0_combout\ $ (\tsw[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal26~1_combout\,
	datab => \A|ul1|LessThan2~0_combout\,
	datac => \A|ul1|Selector17~4_combout\,
	datad => \tsw[0]~input_o\,
	combout => \A|ul1|Selector17~5_combout\);

-- Location: LCCOMB_X76_Y13_N0
\A|ul1|Selector17~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector17~8_combout\ = ((\A|ul1|Selector17~7_combout\) # ((\A|ul1|Selector17~3_combout\) # (\A|ul1|Selector17~5_combout\))) # (!\A|ul1|Selector17~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Selector17~10_combout\,
	datab => \A|ul1|Selector17~7_combout\,
	datac => \A|ul1|Selector17~3_combout\,
	datad => \A|ul1|Selector17~5_combout\,
	combout => \A|ul1|Selector17~8_combout\);

-- Location: LCCOMB_X73_Y17_N10
\A|ul1|Selector17~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector17~9_combout\ = (\A|ul1|Selector17~2_combout\) # ((\A|ul1|Selector17~8_combout\) # ((\A|ul1|data_write\(0) & \A|ul1|WideNor1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Selector17~2_combout\,
	datab => \A|ul1|data_write\(0),
	datac => \A|ul1|WideNor1~combout\,
	datad => \A|ul1|Selector17~8_combout\,
	combout => \A|ul1|Selector17~9_combout\);

-- Location: LCCOMB_X73_Y17_N28
\A|ul1|data_write~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|data_write~9_combout\ = (\tsw[16]~input_o\ & ((\A|ul1|Selector17~9_combout\))) # (!\tsw[16]~input_o\ & (\A|ul1|Selector8~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Selector8~2_combout\,
	datab => \tsw[16]~input_o\,
	datad => \A|ul1|Selector17~9_combout\,
	combout => \A|ul1|data_write~9_combout\);

-- Location: FF_X73_Y17_N25
\A|ul1|data_write[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \A|ul1|data_write~9_combout\,
	clrn => \A|update1|q\(21),
	sload => VCC,
	ena => \A|ul1|data_write[9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|data_write\(0));

-- Location: LCCOMB_X62_Y17_N12
\A|lc1|Selector44~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector44~2_combout\ = (!\A|lc1|Add0~62_combout\ & (\A|lc1|state.init~q\ & ((!\A|lc1|state.ready~q\) # (!\A|ul1|send_enable~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|send_enable~q\,
	datab => \A|lc1|Add0~62_combout\,
	datac => \A|lc1|state.init~q\,
	datad => \A|lc1|state.ready~q\,
	combout => \A|lc1|Selector44~2_combout\);

-- Location: LCCOMB_X61_Y21_N26
\A|lc1|Selector45~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector45~1_combout\ = (!\A|lc1|Add0~60_combout\ & (!\A|lc1|LessThan1~2_combout\ & (\A|lc1|Selector44~2_combout\ & !\A|lc1|LessThan2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Add0~60_combout\,
	datab => \A|lc1|LessThan1~2_combout\,
	datac => \A|lc1|Selector44~2_combout\,
	datad => \A|lc1|LessThan2~2_combout\,
	combout => \A|lc1|Selector45~1_combout\);

-- Location: LCCOMB_X62_Y17_N10
\A|lc1|Selector35~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector35~2_combout\ = (\A|lc1|state.ready~q\ & \A|ul1|send_enable~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|state.ready~q\,
	datad => \A|ul1|send_enable~q\,
	combout => \A|lc1|Selector35~2_combout\);

-- Location: LCCOMB_X62_Y17_N22
\A|lc1|Selector45~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector45~2_combout\ = (\A|lc1|Selector45~0_combout\ & ((\A|lc1|Selector45~1_combout\) # ((\A|ul1|data_write\(0) & \A|lc1|Selector35~2_combout\)))) # (!\A|lc1|Selector45~0_combout\ & (\A|ul1|data_write\(0) & ((\A|lc1|Selector35~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Selector45~0_combout\,
	datab => \A|ul1|data_write\(0),
	datac => \A|lc1|Selector45~1_combout\,
	datad => \A|lc1|Selector35~2_combout\,
	combout => \A|lc1|Selector45~2_combout\);

-- Location: LCCOMB_X62_Y17_N4
\A|lc1|state~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|state~6_combout\ = (!\A|lc1|state.power~q\ & \A|lc1|LessThan0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|state.power~q\,
	datac => \A|lc1|LessThan0~6_combout\,
	combout => \A|lc1|state~6_combout\);

-- Location: LCCOMB_X62_Y17_N14
\A|lc1|lcd_data[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|lcd_data[1]~0_combout\ = (!\A|lc1|state.send~q\ & (!\A|lc1|state~6_combout\ & ((!\A|lc1|Selector34~1_combout\) # (!\A|lc1|state.init~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|state.send~q\,
	datab => \A|lc1|state.init~q\,
	datac => \A|lc1|state~6_combout\,
	datad => \A|lc1|Selector34~1_combout\,
	combout => \A|lc1|lcd_data[1]~0_combout\);

-- Location: FF_X62_Y17_N23
\A|lc1|lcd_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|lc1|Selector45~2_combout\,
	ena => \A|lc1|lcd_data[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|lcd_data\(0));

-- Location: LCCOMB_X66_Y18_N20
\A|lc1|Selector44~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector44~6_combout\ = (!\A|lc1|Add0~60_combout\ & (\A|lc1|LessThan7~4_combout\ & (\A|lc1|LessThan5~3_combout\ & !\A|lc1|busy~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Add0~60_combout\,
	datab => \A|lc1|LessThan7~4_combout\,
	datac => \A|lc1|LessThan5~3_combout\,
	datad => \A|lc1|busy~8_combout\,
	combout => \A|lc1|Selector44~6_combout\);

-- Location: LCCOMB_X61_Y21_N4
\A|lc1|Selector44~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector44~4_combout\ = (\A|lc1|Selector44~6_combout\ & ((\A|lc1|Add0~60_combout\) # ((!\A|lc1|LessThan5~9_combout\ & !\A|lc1|LessThan4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Add0~60_combout\,
	datab => \A|lc1|LessThan5~9_combout\,
	datac => \A|lc1|Selector44~6_combout\,
	datad => \A|lc1|LessThan4~2_combout\,
	combout => \A|lc1|Selector44~4_combout\);

-- Location: LCCOMB_X73_Y17_N22
\A|ul1|Selector7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector7~1_combout\ = (\C|success~q\ & ((\A|ul1|Equal23~1_combout\) # (!\A|ul1|Selector7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C|success~q\,
	datac => \A|ul1|Selector7~0_combout\,
	datad => \A|ul1|Equal23~1_combout\,
	combout => \A|ul1|Selector7~1_combout\);

-- Location: LCCOMB_X72_Y14_N8
\A|ul1|Selector7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector7~2_combout\ = (!\tsw[17]~input_o\ & \A|ul1|Equal4~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[17]~input_o\,
	datad => \A|ul1|Equal4~2_combout\,
	combout => \A|ul1|Selector7~2_combout\);

-- Location: LCCOMB_X73_Y16_N4
\A|ul1|Selector15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector15~3_combout\ = (\A|ul1|Selector15~2_combout\ & (!\A|ul1|Selector7~2_combout\ & (!\A|ul1|Equal15~2_combout\ & !\A|ul1|Equal24~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Selector15~2_combout\,
	datab => \A|ul1|Selector7~2_combout\,
	datac => \A|ul1|Equal15~2_combout\,
	datad => \A|ul1|Equal24~0_combout\,
	combout => \A|ul1|Selector15~3_combout\);

-- Location: LCCOMB_X73_Y17_N16
\A|ul1|Selector7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector7~3_combout\ = (\A|ul1|Selector7~1_combout\) # (((\A|ul1|data_write\(1) & \A|ul1|WideNor0~combout\)) # (!\A|ul1|Selector15~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Selector7~1_combout\,
	datab => \A|ul1|Selector15~3_combout\,
	datac => \A|ul1|data_write\(1),
	datad => \A|ul1|WideNor0~combout\,
	combout => \A|ul1|Selector7~3_combout\);

-- Location: LCCOMB_X73_Y15_N20
\A|ul1|Selector16~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector16~8_combout\ = (\A|ul1|Selector16~0_combout\ & ((\psw[3]~input_o\) # (!\A|ul1|Equal9~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Selector16~0_combout\,
	datac => \psw[3]~input_o\,
	datad => \A|ul1|Equal9~1_combout\,
	combout => \A|ul1|Selector16~8_combout\);

-- Location: LCCOMB_X70_Y8_N0
\A|ul1|Selector16~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector16~6_combout\ = (\tsw[4]~input_o\ & (((\tsw[5]~input_o\)))) # (!\tsw[4]~input_o\ & ((\tsw[5]~input_o\ & ((!\tsw[7]~input_o\))) # (!\tsw[5]~input_o\ & (\tsw[6]~input_o\ & \tsw[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[4]~input_o\,
	datab => \tsw[6]~input_o\,
	datac => \tsw[5]~input_o\,
	datad => \tsw[7]~input_o\,
	combout => \A|ul1|Selector16~6_combout\);

-- Location: LCCOMB_X79_Y9_N16
\A|ul1|Selector16~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector16~4_combout\ = (\tsw[15]~input_o\ & ((\tsw[13]~input_o\ & (\tsw[12]~input_o\)) # (!\tsw[13]~input_o\ & (!\tsw[12]~input_o\ & \tsw[14]~input_o\)))) # (!\tsw[15]~input_o\ & (\tsw[13]~input_o\))

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
	combout => \A|ul1|Selector16~4_combout\);

-- Location: LCCOMB_X80_Y10_N0
\A|ul1|Selector16~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector16~3_combout\ = (\tsw[11]~input_o\ & ((\tsw[8]~input_o\ & ((\tsw[9]~input_o\))) # (!\tsw[8]~input_o\ & (\tsw[10]~input_o\ & !\tsw[9]~input_o\)))) # (!\tsw[11]~input_o\ & (((\tsw[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[10]~input_o\,
	datab => \tsw[11]~input_o\,
	datac => \tsw[8]~input_o\,
	datad => \tsw[9]~input_o\,
	combout => \A|ul1|Selector16~3_combout\);

-- Location: LCCOMB_X77_Y13_N22
\A|ul1|Selector16~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector16~5_combout\ = (\A|ul1|Selector16~4_combout\ & ((\A|ul1|Equal33~0_combout\) # ((\A|ul1|Equal34~0_combout\ & \A|ul1|Selector16~3_combout\)))) # (!\A|ul1|Selector16~4_combout\ & (((\A|ul1|Equal34~0_combout\ & \A|ul1|Selector16~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Selector16~4_combout\,
	datab => \A|ul1|Equal33~0_combout\,
	datac => \A|ul1|Equal34~0_combout\,
	datad => \A|ul1|Selector16~3_combout\,
	combout => \A|ul1|Selector16~5_combout\);

-- Location: LCCOMB_X74_Y9_N24
\A|ul1|Selector16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector16~1_combout\ = (\tsw[0]~input_o\ & (((\tsw[1]~input_o\)))) # (!\tsw[0]~input_o\ & ((\tsw[3]~input_o\ & (\tsw[2]~input_o\ & !\tsw[1]~input_o\)) # (!\tsw[3]~input_o\ & ((\tsw[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[2]~input_o\,
	datab => \tsw[0]~input_o\,
	datac => \tsw[3]~input_o\,
	datad => \tsw[1]~input_o\,
	combout => \A|ul1|Selector16~1_combout\);

-- Location: LCCOMB_X77_Y13_N20
\A|ul1|Selector16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector16~2_combout\ = (\A|ul1|Equal26~1_combout\ & ((\A|ul1|Selector16~1_combout\) # ((!\tsw[17]~input_o\ & \A|ul1|Equal4~2_combout\)))) # (!\A|ul1|Equal26~1_combout\ & (!\tsw[17]~input_o\ & ((\A|ul1|Equal4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal26~1_combout\,
	datab => \tsw[17]~input_o\,
	datac => \A|ul1|Selector16~1_combout\,
	datad => \A|ul1|Equal4~2_combout\,
	combout => \A|ul1|Selector16~2_combout\);

-- Location: LCCOMB_X77_Y13_N16
\A|ul1|Selector16~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector16~7_combout\ = (\A|ul1|Selector16~5_combout\) # ((\A|ul1|Selector16~2_combout\) # ((\A|ul1|Equal25~0_combout\ & \A|ul1|Selector16~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal25~0_combout\,
	datab => \A|ul1|Selector16~6_combout\,
	datac => \A|ul1|Selector16~5_combout\,
	datad => \A|ul1|Selector16~2_combout\,
	combout => \A|ul1|Selector16~7_combout\);

-- Location: LCCOMB_X77_Y13_N10
\A|ul1|Selector16~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector16~9_combout\ = ((\A|ul1|Selector16~7_combout\) # ((\A|ul1|data_write\(1) & \A|ul1|WideNor1~combout\))) # (!\A|ul1|Selector16~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Selector16~8_combout\,
	datab => \A|ul1|data_write\(1),
	datac => \A|ul1|WideNor1~combout\,
	datad => \A|ul1|Selector16~7_combout\,
	combout => \A|ul1|Selector16~9_combout\);

-- Location: LCCOMB_X73_Y17_N2
\A|ul1|data_write~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|data_write~10_combout\ = (\tsw[16]~input_o\ & ((\A|ul1|Selector16~9_combout\))) # (!\tsw[16]~input_o\ & (\A|ul1|Selector7~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tsw[16]~input_o\,
	datac => \A|ul1|Selector7~3_combout\,
	datad => \A|ul1|Selector16~9_combout\,
	combout => \A|ul1|data_write~10_combout\);

-- Location: FF_X73_Y17_N27
\A|ul1|data_write[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \A|ul1|data_write~10_combout\,
	clrn => \A|update1|q\(21),
	sload => VCC,
	ena => \A|ul1|data_write[9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|data_write\(1));

-- Location: LCCOMB_X73_Y17_N20
\A|lc1|Selector44~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector44~3_combout\ = (\A|ul1|data_write\(1) & (\A|ul1|send_enable~q\ & \A|lc1|state.ready~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|data_write\(1),
	datac => \A|ul1|send_enable~q\,
	datad => \A|lc1|state.ready~q\,
	combout => \A|lc1|Selector44~3_combout\);

-- Location: LCCOMB_X61_Y21_N14
\A|lc1|Selector44~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector44~5_combout\ = (\A|lc1|Selector44~3_combout\) # ((\A|lc1|Selector44~4_combout\ & (!\A|lc1|LessThan3~2_combout\ & \A|lc1|Selector44~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Selector44~4_combout\,
	datab => \A|lc1|LessThan3~2_combout\,
	datac => \A|lc1|Selector44~2_combout\,
	datad => \A|lc1|Selector44~3_combout\,
	combout => \A|lc1|Selector44~5_combout\);

-- Location: FF_X61_Y21_N15
\A|lc1|lcd_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|lc1|Selector44~5_combout\,
	ena => \A|lc1|lcd_data[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|lcd_data\(1));

-- Location: LCCOMB_X61_Y21_N30
\A|lc1|Selector43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector43~0_combout\ = (!\A|lc1|Add0~60_combout\ & (!\A|lc1|LessThan2~2_combout\ & ((\A|lc1|LessThan3~2_combout\) # (\A|lc1|Selector44~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Add0~60_combout\,
	datab => \A|lc1|LessThan3~2_combout\,
	datac => \A|lc1|Selector44~4_combout\,
	datad => \A|lc1|LessThan2~2_combout\,
	combout => \A|lc1|Selector43~0_combout\);

-- Location: LCCOMB_X61_Y21_N16
\A|lc1|Selector43~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector43~1_combout\ = (\A|lc1|Selector43~0_combout\) # ((\A|lc1|Add0~62_combout\) # ((!\A|lc1|Add0~60_combout\ & \A|lc1|LessThan1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Add0~60_combout\,
	datab => \A|lc1|LessThan1~2_combout\,
	datac => \A|lc1|Selector43~0_combout\,
	datad => \A|lc1|Add0~62_combout\,
	combout => \A|lc1|Selector43~1_combout\);

-- Location: LCCOMB_X74_Y9_N10
\A|ul1|Selector15~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector15~6_combout\ = (\tsw[2]~input_o\ & ((\tsw[0]~input_o\) # ((\tsw[1]~input_o\) # (!\tsw[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[2]~input_o\,
	datab => \tsw[0]~input_o\,
	datac => \tsw[3]~input_o\,
	datad => \tsw[1]~input_o\,
	combout => \A|ul1|Selector15~6_combout\);

-- Location: LCCOMB_X80_Y10_N2
\A|ul1|Selector15~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector15~5_combout\ = (\tsw[10]~input_o\ & (((\tsw[8]~input_o\) # (\tsw[9]~input_o\)) # (!\tsw[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[10]~input_o\,
	datab => \tsw[11]~input_o\,
	datac => \tsw[8]~input_o\,
	datad => \tsw[9]~input_o\,
	combout => \A|ul1|Selector15~5_combout\);

-- Location: LCCOMB_X74_Y15_N24
\A|ul1|Selector15~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector15~7_combout\ = (\A|ul1|Equal34~0_combout\ & ((\A|ul1|Selector15~5_combout\) # ((\A|ul1|Selector15~6_combout\ & \A|ul1|Equal26~1_combout\)))) # (!\A|ul1|Equal34~0_combout\ & (\A|ul1|Selector15~6_combout\ & (\A|ul1|Equal26~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal34~0_combout\,
	datab => \A|ul1|Selector15~6_combout\,
	datac => \A|ul1|Equal26~1_combout\,
	datad => \A|ul1|Selector15~5_combout\,
	combout => \A|ul1|Selector15~7_combout\);

-- Location: LCCOMB_X75_Y16_N22
\A|ul1|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector13~0_combout\ = (!\psw[3]~input_o\ & ((\A|ul1|Equal9~1_combout\) # (\A|ul1|Equal12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \psw[3]~input_o\,
	datac => \A|ul1|Equal9~1_combout\,
	datad => \A|ul1|Equal12~0_combout\,
	combout => \A|ul1|Selector13~0_combout\);

-- Location: LCCOMB_X75_Y16_N4
\A|ul1|Equal32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal32~0_combout\ = (\A|ul1|Add0~94_combout\ & (\A|ul1|Equal27~0_combout\ & (\A|ul1|Add0~92_combout\ & \A|ul1|Equal2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~94_combout\,
	datab => \A|ul1|Equal27~0_combout\,
	datac => \A|ul1|Add0~92_combout\,
	datad => \A|ul1|Equal2~3_combout\,
	combout => \A|ul1|Equal32~0_combout\);

-- Location: LCCOMB_X75_Y16_N14
\A|ul1|Selector15~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector15~15_combout\ = (\psw[3]~input_o\ & (!\A|ul1|Add0~91_combout\ & (\A|ul1|Equal9~0_combout\ & \A|ul1|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \psw[3]~input_o\,
	datab => \A|ul1|Add0~91_combout\,
	datac => \A|ul1|Equal9~0_combout\,
	datad => \A|ul1|Add0~8_combout\,
	combout => \A|ul1|Selector15~15_combout\);

-- Location: LCCOMB_X75_Y16_N24
\A|ul1|Selector15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector15~4_combout\ = (\A|ul1|Selector13~0_combout\) # ((\A|ul1|Equal32~0_combout\) # ((\A|ul1|Selector15~15_combout\) # (!\A|ul1|Selector3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Selector13~0_combout\,
	datab => \A|ul1|Equal32~0_combout\,
	datac => \A|ul1|Selector15~15_combout\,
	datad => \A|ul1|Selector3~2_combout\,
	combout => \A|ul1|Selector15~4_combout\);

-- Location: LCCOMB_X70_Y8_N18
\A|ul1|Selector15~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector15~8_combout\ = (\tsw[6]~input_o\ & ((\tsw[4]~input_o\) # ((\tsw[5]~input_o\) # (!\tsw[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[4]~input_o\,
	datab => \tsw[6]~input_o\,
	datac => \tsw[5]~input_o\,
	datad => \tsw[7]~input_o\,
	combout => \A|ul1|Selector15~8_combout\);

-- Location: LCCOMB_X76_Y15_N10
\A|ul1|Selector15~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector15~9_combout\ = (!\A|ul1|Add0~8_combout\ & (\A|ul1|Equal9~0_combout\ & (\A|ul1|Add0~91_combout\ & \A|ul1|Selector15~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~8_combout\,
	datab => \A|ul1|Equal9~0_combout\,
	datac => \A|ul1|Add0~91_combout\,
	datad => \A|ul1|Selector15~8_combout\,
	combout => \A|ul1|Selector15~9_combout\);

-- Location: LCCOMB_X73_Y16_N30
\A|ul1|Selector15~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector15~11_combout\ = (!\A|ul1|Equal22~1_combout\ & (!\A|ul1|Equal5~0_combout\ & ((!\A|ul1|Equal3~2_combout\) # (!\tsw[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[17]~input_o\,
	datab => \A|ul1|Equal22~1_combout\,
	datac => \A|ul1|Equal3~2_combout\,
	datad => \A|ul1|Equal5~0_combout\,
	combout => \A|ul1|Selector15~11_combout\);

-- Location: LCCOMB_X79_Y9_N2
\A|ul1|Selector15~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector15~10_combout\ = (\tsw[14]~input_o\ & (((\tsw[13]~input_o\) # (\tsw[12]~input_o\)) # (!\tsw[15]~input_o\)))

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
	combout => \A|ul1|Selector15~10_combout\);

-- Location: LCCOMB_X76_Y15_N4
\A|ul1|Selector15~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector15~12_combout\ = (\A|ul1|Selector15~9_combout\) # (((\A|ul1|Equal33~0_combout\ & \A|ul1|Selector15~10_combout\)) # (!\A|ul1|Selector15~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Selector15~9_combout\,
	datab => \A|ul1|Selector15~11_combout\,
	datac => \A|ul1|Equal33~0_combout\,
	datad => \A|ul1|Selector15~10_combout\,
	combout => \A|ul1|Selector15~12_combout\);

-- Location: LCCOMB_X75_Y16_N18
\A|ul1|Selector15~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector15~13_combout\ = (\A|ul1|Selector15~7_combout\) # ((\A|ul1|Selector15~4_combout\) # ((\A|ul1|Selector15~12_combout\) # (!\A|ul1|Selector15~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Selector15~7_combout\,
	datab => \A|ul1|Selector15~4_combout\,
	datac => \A|ul1|Selector15~3_combout\,
	datad => \A|ul1|Selector15~12_combout\,
	combout => \A|ul1|Selector15~13_combout\);

-- Location: LCCOMB_X72_Y17_N22
\A|ul1|Selector15~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector15~14_combout\ = (\A|ul1|Selector15~13_combout\) # ((\A|ul1|WideNor1~0_combout\ & (\A|ul1|WideNor1~3_combout\ & \A|ul1|data_write\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|WideNor1~0_combout\,
	datab => \A|ul1|WideNor1~3_combout\,
	datac => \A|ul1|data_write\(2),
	datad => \A|ul1|Selector15~13_combout\,
	combout => \A|ul1|Selector15~14_combout\);

-- Location: LCCOMB_X72_Y17_N8
\A|ul1|data_write~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|data_write~11_combout\ = (\A|ul1|WideNor1~0_combout\ & (\A|ul1|WideNor1~3_combout\ & (\A|ul1|data_write\(2) & \A|ul1|Selector3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|WideNor1~0_combout\,
	datab => \A|ul1|WideNor1~3_combout\,
	datac => \A|ul1|data_write\(2),
	datad => \A|ul1|Selector3~6_combout\,
	combout => \A|ul1|data_write~11_combout\);

-- Location: LCCOMB_X72_Y14_N2
\A|ul1|data_write~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|data_write~12_combout\ = (\A|ul1|Equal18~0_combout\) # ((\A|ul1|Selector7~2_combout\) # ((\A|ul1|Equal25~0_combout\) # (!\A|ul1|Selector15~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal18~0_combout\,
	datab => \A|ul1|Selector7~2_combout\,
	datac => \A|ul1|Equal25~0_combout\,
	datad => \A|ul1|Selector15~11_combout\,
	combout => \A|ul1|data_write~12_combout\);

-- Location: LCCOMB_X72_Y17_N14
\A|ul1|data_write~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|data_write~13_combout\ = (\tsw[16]~input_o\ & (\A|ul1|Selector15~14_combout\)) # (!\tsw[16]~input_o\ & (((\A|ul1|data_write~11_combout\) # (\A|ul1|data_write~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Selector15~14_combout\,
	datab => \tsw[16]~input_o\,
	datac => \A|ul1|data_write~11_combout\,
	datad => \A|ul1|data_write~12_combout\,
	combout => \A|ul1|data_write~13_combout\);

-- Location: FF_X72_Y17_N15
\A|ul1|data_write[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ul1|data_write~13_combout\,
	clrn => \A|update1|q\(21),
	ena => \A|ul1|data_write[9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|data_write\(2));

-- Location: LCCOMB_X62_Y17_N24
\A|lc1|Selector43~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector43~2_combout\ = (\A|lc1|Selector35~2_combout\ & (((\A|ul1|data_write\(2))))) # (!\A|lc1|Selector35~2_combout\ & (\A|lc1|Selector43~1_combout\ & ((\A|lc1|state.init~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Selector35~2_combout\,
	datab => \A|lc1|Selector43~1_combout\,
	datac => \A|ul1|data_write\(2),
	datad => \A|lc1|state.init~q\,
	combout => \A|lc1|Selector43~2_combout\);

-- Location: FF_X62_Y17_N25
\A|lc1|lcd_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|lc1|Selector43~2_combout\,
	ena => \A|lc1|lcd_data[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|lcd_data\(2));

-- Location: LCCOMB_X61_Y21_N2
\A|lc1|Selector42~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector42~2_combout\ = (\A|lc1|state.init~q\ & (!\A|lc1|Add0~62_combout\ & ((\A|lc1|Add0~60_combout\) # (!\A|lc1|LessThan1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Add0~60_combout\,
	datab => \A|lc1|LessThan1~2_combout\,
	datac => \A|lc1|state.init~q\,
	datad => \A|lc1|Add0~62_combout\,
	combout => \A|lc1|Selector42~2_combout\);

-- Location: LCCOMB_X61_Y21_N28
\A|lc1|Selector42~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector42~3_combout\ = ((!\A|lc1|Add0~60_combout\ & (\A|lc1|LessThan3~2_combout\ & !\A|lc1|LessThan2~2_combout\))) # (!\A|lc1|Selector42~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Add0~60_combout\,
	datab => \A|lc1|Selector42~2_combout\,
	datac => \A|lc1|LessThan3~2_combout\,
	datad => \A|lc1|LessThan2~2_combout\,
	combout => \A|lc1|Selector42~3_combout\);

-- Location: LCCOMB_X74_Y9_N4
\A|ul1|data_write~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|data_write~15_combout\ = (!\tsw[2]~input_o\ & (!\tsw[1]~input_o\ & (\tsw[3]~input_o\ & \A|ul1|Equal26~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[2]~input_o\,
	datab => \tsw[1]~input_o\,
	datac => \tsw[3]~input_o\,
	datad => \A|ul1|Equal26~1_combout\,
	combout => \A|ul1|data_write~15_combout\);

-- Location: LCCOMB_X75_Y10_N0
\A|ul1|data_write~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|data_write~16_combout\ = (\A|ul1|data_write~15_combout\) # ((!\psw[3]~input_o\ & (\A|ul1|Equal4~1_combout\ & \A|ul1|Equal9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \psw[3]~input_o\,
	datab => \A|ul1|Equal4~1_combout\,
	datac => \A|ul1|Equal9~0_combout\,
	datad => \A|ul1|data_write~15_combout\,
	combout => \A|ul1|data_write~16_combout\);

-- Location: LCCOMB_X79_Y9_N4
\A|ul1|data_write~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|data_write~17_combout\ = (\tsw[15]~input_o\ & (!\tsw[13]~input_o\ & (\A|ul1|Equal33~0_combout\ & !\tsw[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[15]~input_o\,
	datab => \tsw[13]~input_o\,
	datac => \A|ul1|Equal33~0_combout\,
	datad => \tsw[14]~input_o\,
	combout => \A|ul1|data_write~17_combout\);

-- Location: LCCOMB_X80_Y10_N28
\A|ul1|data_write~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|data_write~18_combout\ = (!\tsw[6]~input_o\ & (\A|ul1|Equal25~0_combout\ & (\tsw[7]~input_o\ & !\tsw[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[6]~input_o\,
	datab => \A|ul1|Equal25~0_combout\,
	datac => \tsw[7]~input_o\,
	datad => \tsw[5]~input_o\,
	combout => \A|ul1|data_write~18_combout\);

-- Location: LCCOMB_X80_Y10_N6
\A|ul1|data_write~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|data_write~19_combout\ = (!\tsw[10]~input_o\ & (!\tsw[9]~input_o\ & (\tsw[11]~input_o\ & \A|ul1|Equal34~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[10]~input_o\,
	datab => \tsw[9]~input_o\,
	datac => \tsw[11]~input_o\,
	datad => \A|ul1|Equal34~0_combout\,
	combout => \A|ul1|data_write~19_combout\);

-- Location: LCCOMB_X80_Y10_N16
\A|ul1|data_write~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|data_write~20_combout\ = (\A|ul1|data_write~17_combout\) # ((\A|ul1|data_write~18_combout\) # ((\A|ul1|data_write~19_combout\) # (!\A|ul1|data_write~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|data_write~17_combout\,
	datab => \A|ul1|data_write~18_combout\,
	datac => \A|ul1|data_write~29_combout\,
	datad => \A|ul1|data_write~19_combout\,
	combout => \A|ul1|data_write~20_combout\);

-- Location: LCCOMB_X72_Y14_N22
\A|ul1|data_write~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|data_write~21_combout\ = (\tsw[16]~input_o\ & (((\A|ul1|data_write~16_combout\) # (\A|ul1|data_write~20_combout\)))) # (!\tsw[16]~input_o\ & (\A|ul1|Equal16~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal16~0_combout\,
	datab => \A|ul1|data_write~16_combout\,
	datac => \tsw[16]~input_o\,
	datad => \A|ul1|data_write~20_combout\,
	combout => \A|ul1|data_write~21_combout\);

-- Location: LCCOMB_X72_Y14_N28
\A|ul1|data_write~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|data_write~14_combout\ = (\A|ul1|Equal4~2_combout\) # ((!\tsw[17]~input_o\ & \A|ul1|Equal3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[17]~input_o\,
	datab => \A|ul1|Equal3~2_combout\,
	datad => \A|ul1|Equal4~2_combout\,
	combout => \A|ul1|data_write~14_combout\);

-- Location: LCCOMB_X72_Y17_N6
\A|ul1|data_write~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|data_write~30_combout\ = (\A|ul1|WideNor1~3_combout\ & (\A|ul1|WideNor1~0_combout\ & ((\A|ul1|Selector3~6_combout\) # (\tsw[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Selector3~6_combout\,
	datab => \A|ul1|WideNor1~3_combout\,
	datac => \A|ul1|WideNor1~0_combout\,
	datad => \tsw[16]~input_o\,
	combout => \A|ul1|data_write~30_combout\);

-- Location: LCCOMB_X72_Y14_N26
\A|ul1|data_write~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|data_write~22_combout\ = (\A|ul1|data_write~21_combout\) # ((\A|ul1|data_write~14_combout\) # ((\A|ul1|data_write\(3) & \A|ul1|data_write~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|data_write~21_combout\,
	datab => \A|ul1|data_write~14_combout\,
	datac => \A|ul1|data_write\(3),
	datad => \A|ul1|data_write~30_combout\,
	combout => \A|ul1|data_write~22_combout\);

-- Location: FF_X72_Y14_N27
\A|ul1|data_write[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ul1|data_write~22_combout\,
	clrn => \A|update1|q\(21),
	ena => \A|ul1|data_write[9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|data_write\(3));

-- Location: LCCOMB_X62_Y17_N18
\A|lc1|Selector42~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector42~4_combout\ = (\A|lc1|state.ready~q\ & (((\A|ul1|data_write\(3) & \A|ul1|send_enable~q\)))) # (!\A|lc1|state.ready~q\ & (\A|lc1|Selector42~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|state.ready~q\,
	datab => \A|lc1|Selector42~3_combout\,
	datac => \A|ul1|data_write\(3),
	datad => \A|ul1|send_enable~q\,
	combout => \A|lc1|Selector42~4_combout\);

-- Location: FF_X62_Y17_N19
\A|lc1|lcd_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|lc1|Selector42~4_combout\,
	ena => \A|lc1|lcd_data[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|lcd_data\(3));

-- Location: LCCOMB_X73_Y17_N6
\A|ul1|Selector13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector13~1_combout\ = (\A|ul1|WideNor1~3_combout\ & (\A|ul1|data_write\(4) & \A|ul1|WideNor1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|WideNor1~3_combout\,
	datac => \A|ul1|data_write\(4),
	datad => \A|ul1|WideNor1~0_combout\,
	combout => \A|ul1|Selector13~1_combout\);

-- Location: LCCOMB_X73_Y16_N0
\A|ul1|Selector13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector13~2_combout\ = (\A|ul1|Equal10~0_combout\) # ((\A|ul1|Equal5~0_combout\) # ((!\A|ul1|Add0~8_combout\ & \A|ul1|Equal17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~8_combout\,
	datab => \A|ul1|Equal17~0_combout\,
	datac => \A|ul1|Equal10~0_combout\,
	datad => \A|ul1|Equal5~0_combout\,
	combout => \A|ul1|Selector13~2_combout\);

-- Location: LCCOMB_X74_Y16_N12
\A|ul1|Selector13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector13~3_combout\ = (\A|ul1|Selector13~0_combout\) # ((\A|ul1|Equal4~2_combout\ & \tsw[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal4~2_combout\,
	datac => \tsw[17]~input_o\,
	datad => \A|ul1|Selector13~0_combout\,
	combout => \A|ul1|Selector13~3_combout\);

-- Location: LCCOMB_X77_Y13_N4
\A|ul1|Selector13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector13~4_combout\ = (!\A|ul1|Equal23~1_combout\ & (\A|ul1|data_write~29_combout\ & ((\A|ul1|LessThan1~0_combout\) # (!\A|ul1|Equal25~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal25~0_combout\,
	datab => \A|ul1|Equal23~1_combout\,
	datac => \A|ul1|LessThan1~0_combout\,
	datad => \A|ul1|data_write~29_combout\,
	combout => \A|ul1|Selector13~4_combout\);

-- Location: LCCOMB_X77_Y13_N6
\A|ul1|Selector13~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector13~5_combout\ = (\A|ul1|Add0~94_combout\ & (!\A|ul1|Equal26~0_combout\ & ((\A|ul1|LessThan4~0_combout\) # (!\A|ul1|Equal34~0_combout\)))) # (!\A|ul1|Add0~94_combout\ & ((\A|ul1|LessThan4~0_combout\) # ((!\A|ul1|Equal34~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~94_combout\,
	datab => \A|ul1|LessThan4~0_combout\,
	datac => \A|ul1|Equal34~0_combout\,
	datad => \A|ul1|Equal26~0_combout\,
	combout => \A|ul1|Selector13~5_combout\);

-- Location: LCCOMB_X77_Y13_N0
\A|ul1|Selector13~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector13~6_combout\ = (\A|ul1|Selector13~5_combout\ & ((\A|ul1|LessThan2~0_combout\) # (!\A|ul1|Equal26~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|LessThan2~0_combout\,
	datac => \A|ul1|Equal26~1_combout\,
	datad => \A|ul1|Selector13~5_combout\,
	combout => \A|ul1|Selector13~6_combout\);

-- Location: LCCOMB_X77_Y13_N26
\A|ul1|Selector13~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector13~7_combout\ = (\A|ul1|Selector13~4_combout\ & (\A|ul1|Selector13~6_combout\ & ((\A|ul1|LessThan3~0_combout\) # (!\A|ul1|Equal33~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|LessThan3~0_combout\,
	datab => \A|ul1|Equal33~0_combout\,
	datac => \A|ul1|Selector13~4_combout\,
	datad => \A|ul1|Selector13~6_combout\,
	combout => \A|ul1|Selector13~7_combout\);

-- Location: LCCOMB_X73_Y17_N4
\A|ul1|Selector13~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector13~8_combout\ = (\A|ul1|Selector13~1_combout\) # ((\A|ul1|Selector13~2_combout\) # ((\A|ul1|Selector13~3_combout\) # (!\A|ul1|Selector13~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Selector13~1_combout\,
	datab => \A|ul1|Selector13~2_combout\,
	datac => \A|ul1|Selector13~3_combout\,
	datad => \A|ul1|Selector13~7_combout\,
	combout => \A|ul1|Selector13~8_combout\);

-- Location: LCCOMB_X73_Y16_N26
\A|ul1|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector2~1_combout\ = (!\A|ul1|Equal18~0_combout\ & (!\A|ul1|Equal5~0_combout\ & (!\A|ul1|Equal22~1_combout\ & \A|ul1|Selector15~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal18~0_combout\,
	datab => \A|ul1|Equal5~0_combout\,
	datac => \A|ul1|Equal22~1_combout\,
	datad => \A|ul1|Selector15~2_combout\,
	combout => \A|ul1|Selector2~1_combout\);

-- Location: LCCOMB_X73_Y17_N0
\A|ul1|Selector2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector2~2_combout\ = (\A|ul1|Selector2~1_combout\ & ((\A|ul1|Selector7~0_combout\) # (!\C|success~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C|success~q\,
	datac => \A|ul1|Selector7~0_combout\,
	datad => \A|ul1|Selector2~1_combout\,
	combout => \A|ul1|Selector2~2_combout\);

-- Location: LCCOMB_X73_Y17_N14
\A|ul1|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector4~0_combout\ = (\tsw[17]~input_o\ & ((\A|ul1|Equal4~2_combout\) # ((!\C|success~q\ & !\A|ul1|Selector2~0_combout\)))) # (!\tsw[17]~input_o\ & (!\C|success~q\ & ((!\A|ul1|Selector2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[17]~input_o\,
	datab => \C|success~q\,
	datac => \A|ul1|Equal4~2_combout\,
	datad => \A|ul1|Selector2~0_combout\,
	combout => \A|ul1|Selector4~0_combout\);

-- Location: LCCOMB_X73_Y17_N18
\A|ul1|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector4~1_combout\ = ((\A|ul1|Selector4~0_combout\) # ((\A|ul1|WideNor0~combout\ & \A|ul1|data_write\(4)))) # (!\A|ul1|Selector2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|WideNor0~combout\,
	datab => \A|ul1|Selector2~2_combout\,
	datac => \A|ul1|data_write\(4),
	datad => \A|ul1|Selector4~0_combout\,
	combout => \A|ul1|Selector4~1_combout\);

-- Location: LCCOMB_X73_Y17_N12
\A|ul1|data_write~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|data_write~23_combout\ = (\tsw[16]~input_o\ & (\A|ul1|Selector13~8_combout\)) # (!\tsw[16]~input_o\ & ((\A|ul1|Selector4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tsw[16]~input_o\,
	datac => \A|ul1|Selector13~8_combout\,
	datad => \A|ul1|Selector4~1_combout\,
	combout => \A|ul1|data_write~23_combout\);

-- Location: FF_X73_Y17_N7
\A|ul1|data_write[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \A|ul1|data_write~23_combout\,
	clrn => \A|update1|q\(21),
	sload => VCC,
	ena => \A|ul1|data_write[9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|data_write\(4));

-- Location: LCCOMB_X62_Y17_N28
\A|lc1|Selector41~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector41~2_combout\ = (\A|lc1|state.ready~q\ & (\A|ul1|data_write\(4) & ((\A|ul1|send_enable~q\)))) # (!\A|lc1|state.ready~q\ & (((!\A|lc1|Selector42~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|state.ready~q\,
	datab => \A|ul1|data_write\(4),
	datac => \A|lc1|Selector42~2_combout\,
	datad => \A|ul1|send_enable~q\,
	combout => \A|lc1|Selector41~2_combout\);

-- Location: FF_X62_Y17_N29
\A|lc1|lcd_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|lc1|Selector41~2_combout\,
	ena => \A|lc1|lcd_data[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|lcd_data\(4));

-- Location: LCCOMB_X72_Y17_N28
\A|ul1|data_write~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|data_write~24_combout\ = (\A|ul1|Selector3~6_combout\ & (\A|ul1|Selector3~5_combout\ & \A|ul1|Selector3~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Selector3~6_combout\,
	datab => \A|ul1|Selector3~5_combout\,
	datad => \A|ul1|Selector3~4_combout\,
	combout => \A|ul1|data_write~24_combout\);

-- Location: LCCOMB_X72_Y17_N30
\A|ul1|data_write~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|data_write~25_combout\ = (\A|ul1|WideNor1~3_combout\ & (\A|ul1|WideNor1~0_combout\ & \A|ul1|data_write\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|WideNor1~3_combout\,
	datac => \A|ul1|WideNor1~0_combout\,
	datad => \A|ul1|data_write\(5),
	combout => \A|ul1|data_write~25_combout\);

-- Location: LCCOMB_X73_Y18_N8
\A|ul1|Selector12~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector12~5_combout\ = (!\A|ul1|Add0~91_combout\ & (\psw[3]~input_o\ & (\A|ul1|Equal9~0_combout\ & !\A|ul1|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~91_combout\,
	datab => \psw[3]~input_o\,
	datac => \A|ul1|Equal9~0_combout\,
	datad => \A|ul1|Add0~8_combout\,
	combout => \A|ul1|Selector12~5_combout\);

-- Location: LCCOMB_X72_Y17_N18
\A|ul1|Selector12~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector12~6_combout\ = (\A|ul1|Selector12~5_combout\) # (((\A|ul1|Equal21~0_combout\) # (!\A|ul1|Selector13~7_combout\)) # (!\A|ul1|Selector12~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Selector12~5_combout\,
	datab => \A|ul1|Selector12~4_combout\,
	datac => \A|ul1|Equal21~0_combout\,
	datad => \A|ul1|Selector13~7_combout\,
	combout => \A|ul1|Selector12~6_combout\);

-- Location: LCCOMB_X72_Y17_N0
\A|ul1|data_write~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|data_write~26_combout\ = (\A|ul1|data_write~25_combout\) # ((\tsw[16]~input_o\ & ((\A|ul1|Selector12~6_combout\))) # (!\tsw[16]~input_o\ & (!\A|ul1|data_write~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[16]~input_o\,
	datab => \A|ul1|data_write~24_combout\,
	datac => \A|ul1|data_write~25_combout\,
	datad => \A|ul1|Selector12~6_combout\,
	combout => \A|ul1|data_write~26_combout\);

-- Location: FF_X72_Y17_N1
\A|ul1|data_write[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ul1|data_write~26_combout\,
	clrn => \A|update1|q\(21),
	ena => \A|ul1|data_write[9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|data_write\(5));

-- Location: LCCOMB_X62_Y17_N30
\A|lc1|Selector40~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector40~2_combout\ = (\A|lc1|state.ready~q\ & (\A|ul1|data_write\(5) & ((\A|ul1|send_enable~q\)))) # (!\A|lc1|state.ready~q\ & (((!\A|lc1|Selector42~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|state.ready~q\,
	datab => \A|ul1|data_write\(5),
	datac => \A|lc1|Selector42~2_combout\,
	datad => \A|ul1|send_enable~q\,
	combout => \A|lc1|Selector40~2_combout\);

-- Location: FF_X62_Y17_N31
\A|lc1|lcd_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|lc1|Selector40~2_combout\,
	ena => \A|lc1|lcd_data[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|lcd_data\(5));

-- Location: LCCOMB_X73_Y16_N20
\A|ul1|Selector2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector2~3_combout\ = (\A|ul1|WideNor1~2_combout\ & ((!\A|ul1|Equal17~0_combout\) # (!\A|ul1|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|WideNor1~2_combout\,
	datab => \A|ul1|Add0~8_combout\,
	datad => \A|ul1|Equal17~0_combout\,
	combout => \A|ul1|Selector2~3_combout\);

-- Location: LCCOMB_X73_Y17_N30
\A|ul1|Selector2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector2~5_combout\ = ((\A|ul1|Equal23~1_combout\) # ((!\A|ul1|Selector2~0_combout\) # (!\A|ul1|Selector2~2_combout\))) # (!\A|ul1|Selector2~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Selector2~3_combout\,
	datab => \A|ul1|Equal23~1_combout\,
	datac => \A|ul1|Selector2~2_combout\,
	datad => \A|ul1|Selector2~0_combout\,
	combout => \A|ul1|Selector2~5_combout\);

-- Location: LCCOMB_X72_Y17_N10
\A|ul1|Selector2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector2~4_combout\ = (\A|ul1|WideNor1~0_combout\ & (\A|ul1|WideNor1~3_combout\ & (\A|ul1|data_write\(6) & \A|ul1|Selector3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|WideNor1~0_combout\,
	datab => \A|ul1|WideNor1~3_combout\,
	datac => \A|ul1|data_write\(6),
	datad => \A|ul1|Selector3~6_combout\,
	combout => \A|ul1|Selector2~4_combout\);

-- Location: LCCOMB_X72_Y17_N26
\A|ul1|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector11~0_combout\ = (\A|ul1|WideNor1~0_combout\ & (\A|ul1|WideNor1~3_combout\ & \A|ul1|data_write\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|WideNor1~0_combout\,
	datab => \A|ul1|WideNor1~3_combout\,
	datac => \A|ul1|data_write\(6),
	combout => \A|ul1|Selector11~0_combout\);

-- Location: LCCOMB_X77_Y13_N30
\A|ul1|Selector11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector11~2_combout\ = (\A|ul1|Equal34~0_combout\ & ((\A|ul1|LessThan4~0_combout\) # ((\A|ul1|LessThan3~0_combout\ & \A|ul1|Equal33~0_combout\)))) # (!\A|ul1|Equal34~0_combout\ & (\A|ul1|LessThan3~0_combout\ & ((\A|ul1|Equal33~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal34~0_combout\,
	datab => \A|ul1|LessThan3~0_combout\,
	datac => \A|ul1|LessThan4~0_combout\,
	datad => \A|ul1|Equal33~0_combout\,
	combout => \A|ul1|Selector11~2_combout\);

-- Location: LCCOMB_X77_Y13_N12
\A|ul1|Selector11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector11~1_combout\ = (\A|ul1|Equal12~0_combout\) # ((\A|ul1|LessThan2~0_combout\ & \A|ul1|Equal26~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|LessThan2~0_combout\,
	datac => \A|ul1|Equal26~1_combout\,
	datad => \A|ul1|Equal12~0_combout\,
	combout => \A|ul1|Selector11~1_combout\);

-- Location: LCCOMB_X77_Y13_N24
\A|ul1|Selector11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector11~3_combout\ = (\A|ul1|Selector11~2_combout\) # ((\A|ul1|Selector11~1_combout\) # ((\A|ul1|Equal25~0_combout\ & \A|ul1|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal25~0_combout\,
	datab => \A|ul1|LessThan1~0_combout\,
	datac => \A|ul1|Selector11~2_combout\,
	datad => \A|ul1|Selector11~1_combout\,
	combout => \A|ul1|Selector11~3_combout\);

-- Location: LCCOMB_X76_Y13_N26
\A|ul1|Selector11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector11~4_combout\ = (((\A|ul1|Selector11~3_combout\) # (!\A|ul1|Selector2~1_combout\)) # (!\A|ul1|Selector3~2_combout\)) # (!\A|ul1|Selector17~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Selector17~10_combout\,
	datab => \A|ul1|Selector3~2_combout\,
	datac => \A|ul1|Selector2~1_combout\,
	datad => \A|ul1|Selector11~3_combout\,
	combout => \A|ul1|Selector11~4_combout\);

-- Location: LCCOMB_X72_Y17_N16
\A|ul1|Selector11~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector11~5_combout\ = (((\A|ul1|Selector11~0_combout\) # (\A|ul1|Selector11~4_combout\)) # (!\A|ul1|Selector16~8_combout\)) # (!\A|ul1|Selector2~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Selector2~3_combout\,
	datab => \A|ul1|Selector16~8_combout\,
	datac => \A|ul1|Selector11~0_combout\,
	datad => \A|ul1|Selector11~4_combout\,
	combout => \A|ul1|Selector11~5_combout\);

-- Location: LCCOMB_X72_Y17_N20
\A|ul1|data_write~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|data_write~27_combout\ = (\tsw[16]~input_o\ & (((\A|ul1|Selector11~5_combout\)))) # (!\tsw[16]~input_o\ & ((\A|ul1|Selector2~5_combout\) # ((\A|ul1|Selector2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Selector2~5_combout\,
	datab => \tsw[16]~input_o\,
	datac => \A|ul1|Selector2~4_combout\,
	datad => \A|ul1|Selector11~5_combout\,
	combout => \A|ul1|data_write~27_combout\);

-- Location: FF_X72_Y17_N27
\A|ul1|data_write[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \A|ul1|data_write~27_combout\,
	clrn => \A|update1|q\(21),
	sload => VCC,
	ena => \A|ul1|data_write[9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|data_write\(6));

-- Location: LCCOMB_X62_Y17_N16
\A|lc1|Selector39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector39~0_combout\ = (\A|lc1|state.ready~q\ & (\A|ul1|data_write\(6) & \A|ul1|send_enable~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|state.ready~q\,
	datab => \A|ul1|data_write\(6),
	datad => \A|ul1|send_enable~q\,
	combout => \A|lc1|Selector39~0_combout\);

-- Location: FF_X62_Y17_N17
\A|lc1|lcd_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|lc1|Selector39~0_combout\,
	ena => \A|lc1|lcd_data[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|lcd_data\(6));

-- Location: LCCOMB_X72_Y14_N20
\A|ul1|data_write~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|data_write~28_combout\ = ((\A|ul1|data_write\(7) & \A|ul1|send_enable~0_combout\)) # (!\A|ul1|WideNor1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|WideNor1~0_combout\,
	datac => \A|ul1|data_write\(7),
	datad => \A|ul1|send_enable~0_combout\,
	combout => \A|ul1|data_write~28_combout\);

-- Location: FF_X72_Y14_N21
\A|ul1|data_write[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ul1|data_write~28_combout\,
	clrn => \A|update1|q\(21),
	ena => \A|ul1|data_write[9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|data_write\(7));

-- Location: LCCOMB_X62_Y17_N2
\A|lc1|Selector38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector38~0_combout\ = (\A|lc1|state.ready~q\ & (\A|ul1|data_write\(7) & \A|ul1|send_enable~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|state.ready~q\,
	datab => \A|ul1|data_write\(7),
	datad => \A|ul1|send_enable~q\,
	combout => \A|lc1|Selector38~0_combout\);

-- Location: FF_X62_Y17_N3
\A|lc1|lcd_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|lc1|Selector38~0_combout\,
	ena => \A|lc1|lcd_data[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|lcd_data\(7));

-- Location: LCCOMB_X68_Y11_N30
\B|ctl|addr_reg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|ctl|addr_reg[0]~0_combout\ = (\tsw[17]~input_o\ & !\B|ctl|state.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tsw[17]~input_o\,
	datad => \B|ctl|state.idle~q\,
	combout => \B|ctl|addr_reg[0]~0_combout\);

-- Location: FF_X74_Y9_N17
\B|ctl|addr_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \tsw[0]~input_o\,
	clrn => \psw[0]~input_o\,
	sload => VCC,
	ena => \B|ctl|addr_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|ctl|addr_reg\(0));

-- Location: LCCOMB_X74_Y9_N18
\B|ctl|addr_reg[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|ctl|addr_reg[1]~feeder_combout\ = \tsw[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tsw[1]~input_o\,
	combout => \B|ctl|addr_reg[1]~feeder_combout\);

-- Location: FF_X74_Y9_N19
\B|ctl|addr_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \B|ctl|addr_reg[1]~feeder_combout\,
	clrn => \psw[0]~input_o\,
	ena => \B|ctl|addr_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|ctl|addr_reg\(1));

-- Location: LCCOMB_X74_Y9_N20
\B|ctl|addr_reg[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|ctl|addr_reg[2]~feeder_combout\ = \tsw[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tsw[2]~input_o\,
	combout => \B|ctl|addr_reg[2]~feeder_combout\);

-- Location: FF_X74_Y9_N21
\B|ctl|addr_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \B|ctl|addr_reg[2]~feeder_combout\,
	clrn => \psw[0]~input_o\,
	ena => \B|ctl|addr_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|ctl|addr_reg\(2));

-- Location: FF_X74_Y9_N7
\B|ctl|addr_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \tsw[3]~input_o\,
	clrn => \psw[0]~input_o\,
	sload => VCC,
	ena => \B|ctl|addr_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|ctl|addr_reg\(3));

-- Location: FF_X70_Y8_N9
\B|ctl|addr_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \tsw[4]~input_o\,
	clrn => \psw[0]~input_o\,
	sload => VCC,
	ena => \B|ctl|addr_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|ctl|addr_reg\(4));

-- Location: FF_X70_Y8_N27
\B|ctl|addr_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \tsw[5]~input_o\,
	clrn => \psw[0]~input_o\,
	sload => VCC,
	ena => \B|ctl|addr_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|ctl|addr_reg\(5));

-- Location: LCCOMB_X70_Y8_N4
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

-- Location: FF_X70_Y8_N5
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
	ena => \B|ctl|addr_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|ctl|addr_reg\(6));

-- Location: LCCOMB_X70_Y8_N22
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

-- Location: FF_X70_Y8_N23
\B|ctl|addr_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \B|ctl|addr_reg[7]~feeder_combout\,
	clrn => \psw[0]~input_o\,
	ena => \B|ctl|addr_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|ctl|addr_reg\(7));

-- Location: LCCOMB_X68_Y11_N8
\B|ctl|we_reg~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|ctl|we_reg~feeder_combout\ = \B|ctl|nextstate.w1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \B|ctl|nextstate.w1~0_combout\,
	combout => \B|ctl|we_reg~feeder_combout\);

-- Location: FF_X68_Y11_N9
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

-- Location: LCCOMB_X68_Y11_N26
\B|ctl|oe_buf~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|ctl|oe_buf~0_combout\ = (\B|ctl|state.r1~q\) # ((\psw[3]~input_o\ & (!\B|ctl|state.idle~q\ & \tsw[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \psw[3]~input_o\,
	datab => \B|ctl|state.idle~q\,
	datac => \tsw[17]~input_o\,
	datad => \B|ctl|state.r1~q\,
	combout => \B|ctl|oe_buf~0_combout\);

-- Location: FF_X68_Y11_N27
\B|ctl|oe_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \B|ctl|oe_buf~0_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|ctl|oe_reg~q\);

-- Location: LCCOMB_X61_Y21_N12
\A|lc1|Selector46~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector46~2_combout\ = (\A|lc1|Add0~60_combout\) # ((!\A|lc1|LessThan4~2_combout\ & (!\A|lc1|LessThan2~2_combout\ & !\A|lc1|busy~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Add0~60_combout\,
	datab => \A|lc1|LessThan4~2_combout\,
	datac => \A|lc1|LessThan2~2_combout\,
	datad => \A|lc1|busy~8_combout\,
	combout => \A|lc1|Selector46~2_combout\);

-- Location: LCCOMB_X62_Y18_N22
\A|lc1|Selector46~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector46~3_combout\ = (\A|lc1|Selector46~2_combout\ & ((\A|lc1|LessThan7~3_combout\) # ((\A|lc1|lcd_en~q\ & !\A|lc1|LessThan8~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Selector46~2_combout\,
	datab => \A|lc1|lcd_en~q\,
	datac => \A|lc1|LessThan7~3_combout\,
	datad => \A|lc1|LessThan8~5_combout\,
	combout => \A|lc1|Selector46~3_combout\);

-- Location: LCCOMB_X61_Y21_N24
\A|lc1|Selector46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector46~0_combout\ = (\A|lc1|LessThan1~2_combout\) # ((!\A|lc1|LessThan2~2_combout\ & \A|lc1|LessThan3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|lc1|LessThan2~2_combout\,
	datac => \A|lc1|LessThan3~2_combout\,
	datad => \A|lc1|LessThan1~2_combout\,
	combout => \A|lc1|Selector46~0_combout\);

-- Location: LCCOMB_X61_Y21_N18
\A|lc1|Selector46~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector46~1_combout\ = (\A|lc1|Add0~62_combout\) # ((!\A|lc1|Add0~60_combout\ & \A|lc1|Selector46~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Add0~60_combout\,
	datab => \A|lc1|Selector46~0_combout\,
	datad => \A|lc1|Add0~62_combout\,
	combout => \A|lc1|Selector46~1_combout\);

-- Location: LCCOMB_X61_Y21_N6
\A|lc1|Selector46~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector46~4_combout\ = (!\A|lc1|Add0~60_combout\ & (!\A|lc1|LessThan4~2_combout\ & (\A|lc1|LessThan5~9_combout\ & !\A|lc1|LessThan2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Add0~60_combout\,
	datab => \A|lc1|LessThan4~2_combout\,
	datac => \A|lc1|LessThan5~9_combout\,
	datad => \A|lc1|LessThan2~2_combout\,
	combout => \A|lc1|Selector46~4_combout\);

-- Location: LCCOMB_X62_Y18_N10
\A|lc1|Selector46~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector46~9_combout\ = (!\A|lc1|state.send~q\ & ((\A|lc1|Selector46~3_combout\) # ((\A|lc1|Selector46~1_combout\) # (\A|lc1|Selector46~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Selector46~3_combout\,
	datab => \A|lc1|Selector46~1_combout\,
	datac => \A|lc1|Selector46~4_combout\,
	datad => \A|lc1|state.send~q\,
	combout => \A|lc1|Selector46~9_combout\);

-- Location: LCCOMB_X62_Y18_N20
\A|lc1|Selector46~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector46~10_combout\ = (!\A|lc1|state.send~q\ & ((\A|lc1|state.init~q\ & (\A|lc1|Selector46~9_combout\)) # (!\A|lc1|state.init~q\ & ((\A|lc1|lcd_en~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Selector46~9_combout\,
	datab => \A|lc1|lcd_en~q\,
	datac => \A|lc1|state.init~q\,
	datad => \A|lc1|state.send~q\,
	combout => \A|lc1|Selector46~10_combout\);

-- Location: LCCOMB_X61_Y17_N4
\A|lc1|LessThan10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan10~3_combout\ = (!\A|lc1|count\(6) & (!\A|lc1|count\(7) & (!\A|lc1|count\(8) & !\A|lc1|count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|count\(6),
	datab => \A|lc1|count\(7),
	datac => \A|lc1|count\(8),
	datad => \A|lc1|count\(9),
	combout => \A|lc1|LessThan10~3_combout\);

-- Location: LCCOMB_X61_Y17_N20
\A|lc1|LessThan10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan10~1_combout\ = (\A|lc1|count\(5) & \A|lc1|count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|lc1|count\(5),
	datad => \A|lc1|count\(4),
	combout => \A|lc1|LessThan10~1_combout\);

-- Location: LCCOMB_X61_Y17_N2
\A|lc1|LessThan10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan10~2_combout\ = ((!\A|lc1|count\(2) & (!\A|lc1|count\(1) & !\A|lc1|count\(3)))) # (!\A|lc1|LessThan10~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|count\(2),
	datab => \A|lc1|LessThan10~1_combout\,
	datac => \A|lc1|count\(1),
	datad => \A|lc1|count\(3),
	combout => \A|lc1|LessThan10~2_combout\);

-- Location: LCCOMB_X65_Y18_N20
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

-- Location: LCCOMB_X65_Y18_N14
\A|lc1|LessThan10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan10~4_combout\ = (\A|lc1|LessThan10~3_combout\ & (\A|lc1|LessThan10~2_combout\ & (!\A|lc1|count\(10) & \A|lc1|LessThan12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|LessThan10~3_combout\,
	datab => \A|lc1|LessThan10~2_combout\,
	datac => \A|lc1|count\(10),
	datad => \A|lc1|LessThan12~0_combout\,
	combout => \A|lc1|LessThan10~4_combout\);

-- Location: LCCOMB_X61_Y17_N30
\A|lc1|LessThan9~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan9~10_combout\ = (!\A|lc1|count\(3) & (!\A|lc1|count\(5) & !\A|lc1|count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|count\(3),
	datab => \A|lc1|count\(5),
	datad => \A|lc1|count\(4),
	combout => \A|lc1|LessThan9~10_combout\);

-- Location: LCCOMB_X61_Y17_N0
\A|lc1|LessThan12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan12~1_combout\ = ((\A|lc1|LessThan9~10_combout\ & ((!\A|lc1|count\(2)) # (!\A|lc1|count\(1))))) # (!\A|lc1|count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|count\(6),
	datab => \A|lc1|count\(1),
	datac => \A|lc1|count\(2),
	datad => \A|lc1|LessThan9~10_combout\,
	combout => \A|lc1|LessThan12~1_combout\);

-- Location: LCCOMB_X61_Y17_N18
\A|lc1|LessThan12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan12~2_combout\ = (!\A|lc1|count\(9) & (((\A|lc1|LessThan12~1_combout\ & !\A|lc1|count\(7))) # (!\A|lc1|count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|count\(9),
	datab => \A|lc1|LessThan12~1_combout\,
	datac => \A|lc1|count\(8),
	datad => \A|lc1|count\(7),
	combout => \A|lc1|LessThan12~2_combout\);

-- Location: LCCOMB_X65_Y18_N2
\A|lc1|Selector46~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector46~6_combout\ = (!\A|lc1|LessThan10~4_combout\ & (((\A|lc1|count\(10) & !\A|lc1|LessThan12~2_combout\)) # (!\A|lc1|LessThan12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|count\(10),
	datab => \A|lc1|LessThan10~4_combout\,
	datac => \A|lc1|LessThan12~2_combout\,
	datad => \A|lc1|LessThan12~0_combout\,
	combout => \A|lc1|Selector46~6_combout\);

-- Location: LCCOMB_X65_Y18_N10
\A|lc1|LessThan9~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan9~9_combout\ = (\A|lc1|LessThan9~7_combout\ & (\A|lc1|LessThan9~4_combout\ & \A|lc1|LessThan9~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|lc1|LessThan9~7_combout\,
	datac => \A|lc1|LessThan9~4_combout\,
	datad => \A|lc1|LessThan9~8_combout\,
	combout => \A|lc1|LessThan9~9_combout\);

-- Location: LCCOMB_X65_Y18_N6
\A|lc1|LessThan10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan10~0_combout\ = (!\A|lc1|count\(11) & (\A|lc1|LessThan9~4_combout\ & !\A|lc1|count\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|count\(11),
	datab => \A|lc1|LessThan9~4_combout\,
	datac => \A|lc1|count\(10),
	combout => \A|lc1|LessThan10~0_combout\);

-- Location: LCCOMB_X61_Y17_N14
\A|lc1|LessThan11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan11~0_combout\ = (!\A|lc1|count\(6) & (((!\A|lc1|count\(3)) # (!\A|lc1|count\(2))) # (!\A|lc1|LessThan10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|count\(6),
	datab => \A|lc1|LessThan10~1_combout\,
	datac => \A|lc1|count\(2),
	datad => \A|lc1|count\(3),
	combout => \A|lc1|LessThan11~0_combout\);

-- Location: LCCOMB_X61_Y17_N24
\A|lc1|LessThan11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan11~1_combout\ = ((!\A|lc1|count\(8) & ((\A|lc1|LessThan11~0_combout\) # (!\A|lc1|count\(7))))) # (!\A|lc1|count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|count\(9),
	datab => \A|lc1|LessThan11~0_combout\,
	datac => \A|lc1|count\(8),
	datad => \A|lc1|count\(7),
	combout => \A|lc1|LessThan11~1_combout\);

-- Location: LCCOMB_X65_Y18_N16
\A|lc1|Selector46~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector46~5_combout\ = (\A|lc1|LessThan10~0_combout\ & (\A|lc1|LessThan11~1_combout\ & (!\A|lc1|LessThan10~4_combout\ & \A|lc1|LessThan9~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|LessThan10~0_combout\,
	datab => \A|lc1|LessThan11~1_combout\,
	datac => \A|lc1|LessThan10~4_combout\,
	datad => \A|lc1|LessThan9~9_combout\,
	combout => \A|lc1|Selector46~5_combout\);

-- Location: LCCOMB_X62_Y18_N8
\A|lc1|Selector46~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector46~7_combout\ = (\A|lc1|Selector46~5_combout\) # ((\A|lc1|lcd_en~q\ & ((\A|lc1|Selector46~6_combout\) # (!\A|lc1|LessThan9~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Selector46~6_combout\,
	datab => \A|lc1|lcd_en~q\,
	datac => \A|lc1|LessThan9~9_combout\,
	datad => \A|lc1|Selector46~5_combout\,
	combout => \A|lc1|Selector46~7_combout\);

-- Location: LCCOMB_X62_Y18_N28
\A|lc1|Selector46~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector46~8_combout\ = (\A|lc1|Selector46~10_combout\) # ((\A|lc1|Selector46~7_combout\ & (!\A|lc1|count\(31) & \A|lc1|state.send~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Selector46~10_combout\,
	datab => \A|lc1|Selector46~7_combout\,
	datac => \A|lc1|count\(31),
	datad => \A|lc1|state.send~q\,
	combout => \A|lc1|Selector46~8_combout\);

-- Location: FF_X62_Y18_N29
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

-- Location: LCCOMB_X72_Y14_N6
\A|ul1|data_write~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|data_write~6_combout\ = (\A|ul1|WideNor1~3_combout\ & ((!\A|ul1|WideNor1~0_combout\) # (!\A|ul1|data_write\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|data_write\(9),
	datab => \A|ul1|WideNor1~3_combout\,
	datac => \A|ul1|WideNor1~0_combout\,
	combout => \A|ul1|data_write~6_combout\);

-- Location: LCCOMB_X72_Y14_N10
\A|ul1|data_write~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|data_write~7_combout\ = ((!\A|ul1|Selector3~6_combout\ & !\tsw[16]~input_o\)) # (!\A|ul1|data_write~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|Selector3~6_combout\,
	datac => \tsw[16]~input_o\,
	datad => \A|ul1|data_write~6_combout\,
	combout => \A|ul1|data_write~7_combout\);

-- Location: FF_X72_Y14_N11
\A|ul1|data_write[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ul1|data_write~7_combout\,
	clrn => \A|update1|q\(21),
	ena => \A|ul1|data_write[9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|data_write\(9));

-- Location: LCCOMB_X62_Y17_N8
\A|lc1|lcd_rs~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|lcd_rs~0_combout\ = (\A|lc1|lcd_rs~q\ & ((\A|lc1|state.power~q\ & (!\A|lc1|state.ready~q\)) # (!\A|lc1|state.power~q\ & ((\A|lc1|LessThan0~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|state.ready~q\,
	datab => \A|lc1|lcd_rs~q\,
	datac => \A|lc1|LessThan0~6_combout\,
	datad => \A|lc1|state.power~q\,
	combout => \A|lc1|lcd_rs~0_combout\);

-- Location: LCCOMB_X62_Y17_N26
\A|lc1|lcd_rs~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|lcd_rs~1_combout\ = (\A|lc1|lcd_rs~0_combout\) # ((\A|lc1|Selector35~2_combout\ & (\A|ul1|data_write\(9) & \A|lc1|state.power~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Selector35~2_combout\,
	datab => \A|ul1|data_write\(9),
	datac => \A|lc1|lcd_rs~0_combout\,
	datad => \A|lc1|state.power~q\,
	combout => \A|lc1|lcd_rs~1_combout\);

-- Location: FF_X62_Y17_N27
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

-- Location: LCCOMB_X74_Y9_N8
\B|dp11|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp11|Mux6~0_combout\ = (\tsw[2]~input_o\ & (!\tsw[1]~input_o\ & (\tsw[0]~input_o\ $ (!\tsw[3]~input_o\)))) # (!\tsw[2]~input_o\ & (\tsw[0]~input_o\ & (\tsw[3]~input_o\ $ (!\tsw[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[2]~input_o\,
	datab => \tsw[0]~input_o\,
	datac => \tsw[3]~input_o\,
	datad => \tsw[1]~input_o\,
	combout => \B|dp11|Mux6~0_combout\);

-- Location: LCCOMB_X74_Y9_N26
\B|dp11|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp11|Mux5~0_combout\ = (\tsw[3]~input_o\ & ((\tsw[0]~input_o\ & ((\tsw[1]~input_o\))) # (!\tsw[0]~input_o\ & (\tsw[2]~input_o\)))) # (!\tsw[3]~input_o\ & (\tsw[2]~input_o\ & (\tsw[0]~input_o\ $ (\tsw[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[2]~input_o\,
	datab => \tsw[0]~input_o\,
	datac => \tsw[3]~input_o\,
	datad => \tsw[1]~input_o\,
	combout => \B|dp11|Mux5~0_combout\);

-- Location: LCCOMB_X74_Y9_N28
\B|dp11|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp11|Mux4~0_combout\ = (\tsw[2]~input_o\ & (\tsw[3]~input_o\ & ((\tsw[1]~input_o\) # (!\tsw[0]~input_o\)))) # (!\tsw[2]~input_o\ & (!\tsw[0]~input_o\ & (!\tsw[3]~input_o\ & \tsw[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[2]~input_o\,
	datab => \tsw[0]~input_o\,
	datac => \tsw[3]~input_o\,
	datad => \tsw[1]~input_o\,
	combout => \B|dp11|Mux4~0_combout\);

-- Location: LCCOMB_X74_Y9_N30
\B|dp11|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp11|Mux3~0_combout\ = (\tsw[0]~input_o\ & (\tsw[2]~input_o\ $ (((!\tsw[1]~input_o\))))) # (!\tsw[0]~input_o\ & ((\tsw[2]~input_o\ & (!\tsw[3]~input_o\ & !\tsw[1]~input_o\)) # (!\tsw[2]~input_o\ & (\tsw[3]~input_o\ & \tsw[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[2]~input_o\,
	datab => \tsw[0]~input_o\,
	datac => \tsw[3]~input_o\,
	datad => \tsw[1]~input_o\,
	combout => \B|dp11|Mux3~0_combout\);

-- Location: LCCOMB_X74_Y9_N0
\B|dp11|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp11|Mux2~0_combout\ = (\tsw[1]~input_o\ & (((\tsw[0]~input_o\ & !\tsw[3]~input_o\)))) # (!\tsw[1]~input_o\ & ((\tsw[2]~input_o\ & ((!\tsw[3]~input_o\))) # (!\tsw[2]~input_o\ & (\tsw[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[2]~input_o\,
	datab => \tsw[0]~input_o\,
	datac => \tsw[3]~input_o\,
	datad => \tsw[1]~input_o\,
	combout => \B|dp11|Mux2~0_combout\);

-- Location: LCCOMB_X74_Y9_N2
\B|dp11|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp11|Mux1~0_combout\ = (\tsw[2]~input_o\ & (\tsw[0]~input_o\ & (\tsw[3]~input_o\ $ (\tsw[1]~input_o\)))) # (!\tsw[2]~input_o\ & (!\tsw[3]~input_o\ & ((\tsw[0]~input_o\) # (\tsw[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[2]~input_o\,
	datab => \tsw[0]~input_o\,
	datac => \tsw[3]~input_o\,
	datad => \tsw[1]~input_o\,
	combout => \B|dp11|Mux1~0_combout\);

-- Location: LCCOMB_X74_Y9_N12
\B|dp11|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp11|Mux0~0_combout\ = (\tsw[0]~input_o\ & ((\tsw[3]~input_o\) # (\tsw[2]~input_o\ $ (\tsw[1]~input_o\)))) # (!\tsw[0]~input_o\ & ((\tsw[1]~input_o\) # (\tsw[2]~input_o\ $ (\tsw[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[2]~input_o\,
	datab => \tsw[0]~input_o\,
	datac => \tsw[3]~input_o\,
	datad => \tsw[1]~input_o\,
	combout => \B|dp11|Mux0~0_combout\);

-- Location: LCCOMB_X70_Y8_N16
\B|dp12|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp12|Mux6~0_combout\ = (\tsw[6]~input_o\ & (!\tsw[5]~input_o\ & (\tsw[4]~input_o\ $ (!\tsw[7]~input_o\)))) # (!\tsw[6]~input_o\ & (\tsw[4]~input_o\ & (\tsw[5]~input_o\ $ (!\tsw[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[4]~input_o\,
	datab => \tsw[6]~input_o\,
	datac => \tsw[5]~input_o\,
	datad => \tsw[7]~input_o\,
	combout => \B|dp12|Mux6~0_combout\);

-- Location: LCCOMB_X70_Y8_N2
\B|dp12|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp12|Mux5~0_combout\ = (\tsw[5]~input_o\ & ((\tsw[4]~input_o\ & ((\tsw[7]~input_o\))) # (!\tsw[4]~input_o\ & (\tsw[6]~input_o\)))) # (!\tsw[5]~input_o\ & (\tsw[6]~input_o\ & (\tsw[4]~input_o\ $ (\tsw[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[4]~input_o\,
	datab => \tsw[6]~input_o\,
	datac => \tsw[5]~input_o\,
	datad => \tsw[7]~input_o\,
	combout => \B|dp12|Mux5~0_combout\);

-- Location: LCCOMB_X70_Y8_N20
\B|dp12|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp12|Mux4~0_combout\ = (\tsw[6]~input_o\ & (\tsw[7]~input_o\ & ((\tsw[5]~input_o\) # (!\tsw[4]~input_o\)))) # (!\tsw[6]~input_o\ & (!\tsw[4]~input_o\ & (\tsw[5]~input_o\ & !\tsw[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[4]~input_o\,
	datab => \tsw[6]~input_o\,
	datac => \tsw[5]~input_o\,
	datad => \tsw[7]~input_o\,
	combout => \B|dp12|Mux4~0_combout\);

-- Location: LCCOMB_X70_Y8_N14
\B|dp12|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp12|Mux3~0_combout\ = (\tsw[4]~input_o\ & (\tsw[6]~input_o\ $ ((!\tsw[5]~input_o\)))) # (!\tsw[4]~input_o\ & ((\tsw[6]~input_o\ & (!\tsw[5]~input_o\ & !\tsw[7]~input_o\)) # (!\tsw[6]~input_o\ & (\tsw[5]~input_o\ & \tsw[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[4]~input_o\,
	datab => \tsw[6]~input_o\,
	datac => \tsw[5]~input_o\,
	datad => \tsw[7]~input_o\,
	combout => \B|dp12|Mux3~0_combout\);

-- Location: LCCOMB_X70_Y8_N24
\B|dp12|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp12|Mux2~0_combout\ = (\tsw[5]~input_o\ & (\tsw[4]~input_o\ & ((!\tsw[7]~input_o\)))) # (!\tsw[5]~input_o\ & ((\tsw[6]~input_o\ & ((!\tsw[7]~input_o\))) # (!\tsw[6]~input_o\ & (\tsw[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[4]~input_o\,
	datab => \tsw[6]~input_o\,
	datac => \tsw[5]~input_o\,
	datad => \tsw[7]~input_o\,
	combout => \B|dp12|Mux2~0_combout\);

-- Location: LCCOMB_X70_Y8_N10
\B|dp12|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp12|Mux1~0_combout\ = (\tsw[4]~input_o\ & (\tsw[7]~input_o\ $ (((\tsw[5]~input_o\) # (!\tsw[6]~input_o\))))) # (!\tsw[4]~input_o\ & (!\tsw[6]~input_o\ & (\tsw[5]~input_o\ & !\tsw[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[4]~input_o\,
	datab => \tsw[6]~input_o\,
	datac => \tsw[5]~input_o\,
	datad => \tsw[7]~input_o\,
	combout => \B|dp12|Mux1~0_combout\);

-- Location: LCCOMB_X70_Y8_N28
\B|dp12|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp12|Mux0~0_combout\ = (\tsw[4]~input_o\ & ((\tsw[7]~input_o\) # (\tsw[6]~input_o\ $ (\tsw[5]~input_o\)))) # (!\tsw[4]~input_o\ & ((\tsw[5]~input_o\) # (\tsw[6]~input_o\ $ (\tsw[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[4]~input_o\,
	datab => \tsw[6]~input_o\,
	datac => \tsw[5]~input_o\,
	datad => \tsw[7]~input_o\,
	combout => \B|dp12|Mux0~0_combout\);

-- Location: LCCOMB_X80_Y10_N24
\B|dp21|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp21|Mux6~0_combout\ = (\tsw[10]~input_o\ & (!\tsw[9]~input_o\ & (\tsw[11]~input_o\ $ (!\tsw[8]~input_o\)))) # (!\tsw[10]~input_o\ & (\tsw[8]~input_o\ & (\tsw[11]~input_o\ $ (!\tsw[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[10]~input_o\,
	datab => \tsw[11]~input_o\,
	datac => \tsw[8]~input_o\,
	datad => \tsw[9]~input_o\,
	combout => \B|dp21|Mux6~0_combout\);

-- Location: LCCOMB_X80_Y10_N10
\B|dp21|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp21|Mux5~0_combout\ = (\tsw[11]~input_o\ & ((\tsw[8]~input_o\ & ((\tsw[9]~input_o\))) # (!\tsw[8]~input_o\ & (\tsw[10]~input_o\)))) # (!\tsw[11]~input_o\ & (\tsw[10]~input_o\ & (\tsw[8]~input_o\ $ (\tsw[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[10]~input_o\,
	datab => \tsw[11]~input_o\,
	datac => \tsw[8]~input_o\,
	datad => \tsw[9]~input_o\,
	combout => \B|dp21|Mux5~0_combout\);

-- Location: LCCOMB_X80_Y10_N4
\B|dp21|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp21|Mux4~0_combout\ = (\tsw[10]~input_o\ & (\tsw[11]~input_o\ & ((\tsw[9]~input_o\) # (!\tsw[8]~input_o\)))) # (!\tsw[10]~input_o\ & (!\tsw[11]~input_o\ & (!\tsw[8]~input_o\ & \tsw[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[10]~input_o\,
	datab => \tsw[11]~input_o\,
	datac => \tsw[8]~input_o\,
	datad => \tsw[9]~input_o\,
	combout => \B|dp21|Mux4~0_combout\);

-- Location: LCCOMB_X80_Y10_N22
\B|dp21|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp21|Mux3~0_combout\ = (\tsw[8]~input_o\ & (\tsw[10]~input_o\ $ (((!\tsw[9]~input_o\))))) # (!\tsw[8]~input_o\ & ((\tsw[10]~input_o\ & (!\tsw[11]~input_o\ & !\tsw[9]~input_o\)) # (!\tsw[10]~input_o\ & (\tsw[11]~input_o\ & \tsw[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[10]~input_o\,
	datab => \tsw[11]~input_o\,
	datac => \tsw[8]~input_o\,
	datad => \tsw[9]~input_o\,
	combout => \B|dp21|Mux3~0_combout\);

-- Location: LCCOMB_X80_Y10_N8
\B|dp21|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp21|Mux2~0_combout\ = (\tsw[9]~input_o\ & (((!\tsw[11]~input_o\ & \tsw[8]~input_o\)))) # (!\tsw[9]~input_o\ & ((\tsw[10]~input_o\ & (!\tsw[11]~input_o\)) # (!\tsw[10]~input_o\ & ((\tsw[8]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[10]~input_o\,
	datab => \tsw[11]~input_o\,
	datac => \tsw[8]~input_o\,
	datad => \tsw[9]~input_o\,
	combout => \B|dp21|Mux2~0_combout\);

-- Location: LCCOMB_X80_Y10_N18
\B|dp21|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp21|Mux1~0_combout\ = (\tsw[10]~input_o\ & (\tsw[8]~input_o\ & (\tsw[11]~input_o\ $ (\tsw[9]~input_o\)))) # (!\tsw[10]~input_o\ & (!\tsw[11]~input_o\ & ((\tsw[8]~input_o\) # (\tsw[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[10]~input_o\,
	datab => \tsw[11]~input_o\,
	datac => \tsw[8]~input_o\,
	datad => \tsw[9]~input_o\,
	combout => \B|dp21|Mux1~0_combout\);

-- Location: LCCOMB_X80_Y10_N20
\B|dp21|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp21|Mux0~0_combout\ = (\tsw[8]~input_o\ & ((\tsw[11]~input_o\) # (\tsw[10]~input_o\ $ (\tsw[9]~input_o\)))) # (!\tsw[8]~input_o\ & ((\tsw[9]~input_o\) # (\tsw[10]~input_o\ $ (\tsw[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[10]~input_o\,
	datab => \tsw[11]~input_o\,
	datac => \tsw[8]~input_o\,
	datad => \tsw[9]~input_o\,
	combout => \B|dp21|Mux0~0_combout\);

-- Location: LCCOMB_X79_Y9_N24
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

-- Location: LCCOMB_X79_Y9_N26
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

-- Location: LCCOMB_X79_Y9_N12
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

-- Location: LCCOMB_X79_Y9_N30
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

-- Location: LCCOMB_X79_Y9_N0
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

-- Location: LCCOMB_X79_Y9_N18
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

-- Location: LCCOMB_X79_Y9_N28
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

-- Location: FF_X103_Y13_N13
\B|ctl|data_read_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \dio_sram[2]~input_o\,
	clrn => \psw[0]~input_o\,
	sload => VCC,
	ena => \B|ctl|state.r2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|ctl|data_read_reg\(2));

-- Location: LCCOMB_X114_Y37_N10
\B|comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|comb~0_combout\ = LCELL((!\tsw[17]~input_o\ & GLOBAL(\pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tsw[17]~input_o\,
	datad => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	combout => \B|comb~0_combout\);

-- Location: CLKCTRL_G5
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

-- Location: M9K_X104_Y13_N0
\B|itnram|altsyncram_component|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "sub_module_ram:B|ram1:itnram|altsyncram:altsyncram_component|altsyncram_0vp3:auto_generated|ALTSYNCRAM",
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
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \ALT_INV_psw[3]~input_o\,
	portare => VCC,
	clk0 => \B|comb~0clkctrl_outclk\,
	portadatain => \B|itnram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \B|itnram|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \B|itnram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X103_Y13_N12
\B|data_display[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|data_display[2]~2_combout\ = (\tsw[17]~input_o\ & (\B|ctl|data_read_reg\(2))) # (!\tsw[17]~input_o\ & ((\B|itnram|altsyncram_component|auto_generated|q_a\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tsw[17]~input_o\,
	datac => \B|ctl|data_read_reg\(2),
	datad => \B|itnram|altsyncram_component|auto_generated|q_a\(2),
	combout => \B|data_display[2]~2_combout\);

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

-- Location: FF_X103_Y13_N1
\B|ctl|data_read_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \dio_sram[0]~input_o\,
	clrn => \psw[0]~input_o\,
	sload => VCC,
	ena => \B|ctl|state.r2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|ctl|data_read_reg\(0));

-- Location: LCCOMB_X103_Y13_N0
\B|data_display[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|data_display[0]~0_combout\ = (\tsw[17]~input_o\ & (\B|ctl|data_read_reg\(0))) # (!\tsw[17]~input_o\ & ((\B|itnram|altsyncram_component|auto_generated|q_a\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tsw[17]~input_o\,
	datac => \B|ctl|data_read_reg\(0),
	datad => \B|itnram|altsyncram_component|auto_generated|q_a\(0),
	combout => \B|data_display[0]~0_combout\);

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

-- Location: FF_X85_Y18_N1
\B|ctl|data_read_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \dio_sram[3]~input_o\,
	clrn => \psw[0]~input_o\,
	sload => VCC,
	ena => \B|ctl|state.r2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|ctl|data_read_reg\(3));

-- Location: LCCOMB_X85_Y18_N0
\B|data_display[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|data_display[3]~3_combout\ = (\tsw[17]~input_o\ & (\B|ctl|data_read_reg\(3))) # (!\tsw[17]~input_o\ & ((\B|itnram|altsyncram_component|auto_generated|q_a\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[17]~input_o\,
	datac => \B|ctl|data_read_reg\(3),
	datad => \B|itnram|altsyncram_component|auto_generated|q_a\(3),
	combout => \B|data_display[3]~3_combout\);

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

-- Location: FF_X103_Y13_N11
\B|ctl|data_read_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \dio_sram[1]~input_o\,
	clrn => \psw[0]~input_o\,
	sload => VCC,
	ena => \B|ctl|state.r2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|ctl|data_read_reg\(1));

-- Location: LCCOMB_X103_Y13_N10
\B|data_display[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|data_display[1]~1_combout\ = (\tsw[17]~input_o\ & (\B|ctl|data_read_reg\(1))) # (!\tsw[17]~input_o\ & ((\B|itnram|altsyncram_component|auto_generated|q_a\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tsw[17]~input_o\,
	datac => \B|ctl|data_read_reg\(1),
	datad => \B|itnram|altsyncram_component|auto_generated|q_a\(1),
	combout => \B|data_display[1]~1_combout\);

-- Location: LCCOMB_X112_Y38_N8
\B|dp13|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp13|Mux6~0_combout\ = (\B|data_display[2]~2_combout\ & (!\B|data_display[1]~1_combout\ & (\B|data_display[0]~0_combout\ $ (!\B|data_display[3]~3_combout\)))) # (!\B|data_display[2]~2_combout\ & (\B|data_display[0]~0_combout\ & 
-- (\B|data_display[3]~3_combout\ $ (!\B|data_display[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B|data_display[2]~2_combout\,
	datab => \B|data_display[0]~0_combout\,
	datac => \B|data_display[3]~3_combout\,
	datad => \B|data_display[1]~1_combout\,
	combout => \B|dp13|Mux6~0_combout\);

-- Location: LCCOMB_X112_Y38_N26
\B|dp13|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp13|Mux5~0_combout\ = (\B|data_display[3]~3_combout\ & ((\B|data_display[0]~0_combout\ & ((\B|data_display[1]~1_combout\))) # (!\B|data_display[0]~0_combout\ & (\B|data_display[2]~2_combout\)))) # (!\B|data_display[3]~3_combout\ & 
-- (\B|data_display[2]~2_combout\ & (\B|data_display[0]~0_combout\ $ (\B|data_display[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B|data_display[2]~2_combout\,
	datab => \B|data_display[0]~0_combout\,
	datac => \B|data_display[3]~3_combout\,
	datad => \B|data_display[1]~1_combout\,
	combout => \B|dp13|Mux5~0_combout\);

-- Location: LCCOMB_X112_Y38_N12
\B|dp13|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp13|Mux4~0_combout\ = (\B|data_display[2]~2_combout\ & (\B|data_display[3]~3_combout\ & ((\B|data_display[1]~1_combout\) # (!\B|data_display[0]~0_combout\)))) # (!\B|data_display[2]~2_combout\ & (!\B|data_display[0]~0_combout\ & 
-- (!\B|data_display[3]~3_combout\ & \B|data_display[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B|data_display[2]~2_combout\,
	datab => \B|data_display[0]~0_combout\,
	datac => \B|data_display[3]~3_combout\,
	datad => \B|data_display[1]~1_combout\,
	combout => \B|dp13|Mux4~0_combout\);

-- Location: LCCOMB_X112_Y38_N22
\B|dp13|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp13|Mux3~0_combout\ = (\B|data_display[0]~0_combout\ & (\B|data_display[2]~2_combout\ $ (((!\B|data_display[1]~1_combout\))))) # (!\B|data_display[0]~0_combout\ & ((\B|data_display[2]~2_combout\ & (!\B|data_display[3]~3_combout\ & 
-- !\B|data_display[1]~1_combout\)) # (!\B|data_display[2]~2_combout\ & (\B|data_display[3]~3_combout\ & \B|data_display[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B|data_display[2]~2_combout\,
	datab => \B|data_display[0]~0_combout\,
	datac => \B|data_display[3]~3_combout\,
	datad => \B|data_display[1]~1_combout\,
	combout => \B|dp13|Mux3~0_combout\);

-- Location: LCCOMB_X112_Y38_N16
\B|dp13|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp13|Mux2~0_combout\ = (\B|data_display[1]~1_combout\ & (((\B|data_display[0]~0_combout\ & !\B|data_display[3]~3_combout\)))) # (!\B|data_display[1]~1_combout\ & ((\B|data_display[2]~2_combout\ & ((!\B|data_display[3]~3_combout\))) # 
-- (!\B|data_display[2]~2_combout\ & (\B|data_display[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B|data_display[2]~2_combout\,
	datab => \B|data_display[0]~0_combout\,
	datac => \B|data_display[3]~3_combout\,
	datad => \B|data_display[1]~1_combout\,
	combout => \B|dp13|Mux2~0_combout\);

-- Location: LCCOMB_X112_Y38_N10
\B|dp13|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp13|Mux1~0_combout\ = (\B|data_display[2]~2_combout\ & (\B|data_display[0]~0_combout\ & (\B|data_display[3]~3_combout\ $ (\B|data_display[1]~1_combout\)))) # (!\B|data_display[2]~2_combout\ & (!\B|data_display[3]~3_combout\ & 
-- ((\B|data_display[0]~0_combout\) # (\B|data_display[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B|data_display[2]~2_combout\,
	datab => \B|data_display[0]~0_combout\,
	datac => \B|data_display[3]~3_combout\,
	datad => \B|data_display[1]~1_combout\,
	combout => \B|dp13|Mux1~0_combout\);

-- Location: LCCOMB_X112_Y38_N20
\B|dp13|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp13|Mux0~0_combout\ = (\B|data_display[0]~0_combout\ & ((\B|data_display[3]~3_combout\) # (\B|data_display[2]~2_combout\ $ (\B|data_display[1]~1_combout\)))) # (!\B|data_display[0]~0_combout\ & ((\B|data_display[1]~1_combout\) # 
-- (\B|data_display[2]~2_combout\ $ (\B|data_display[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B|data_display[2]~2_combout\,
	datab => \B|data_display[0]~0_combout\,
	datac => \B|data_display[3]~3_combout\,
	datad => \B|data_display[1]~1_combout\,
	combout => \B|dp13|Mux0~0_combout\);

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

-- Location: FF_X103_Y13_N9
\B|ctl|data_read_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \dio_sram[7]~input_o\,
	clrn => \psw[0]~input_o\,
	sload => VCC,
	ena => \B|ctl|state.r2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|ctl|data_read_reg\(7));

-- Location: LCCOMB_X103_Y13_N8
\B|data_display[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|data_display[7]~7_combout\ = (\tsw[17]~input_o\ & ((\B|ctl|data_read_reg\(7)))) # (!\tsw[17]~input_o\ & (\B|itnram|altsyncram_component|auto_generated|q_a\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B|itnram|altsyncram_component|auto_generated|q_a\(7),
	datac => \B|ctl|data_read_reg\(7),
	datad => \tsw[17]~input_o\,
	combout => \B|data_display[7]~7_combout\);

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

-- Location: FF_X114_Y37_N21
\B|ctl|data_read_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \dio_sram[6]~input_o\,
	clrn => \psw[0]~input_o\,
	sload => VCC,
	ena => \B|ctl|state.r2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|ctl|data_read_reg\(6));

-- Location: LCCOMB_X114_Y37_N20
\B|data_display[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|data_display[6]~6_combout\ = (\tsw[17]~input_o\ & (\B|ctl|data_read_reg\(6))) # (!\tsw[17]~input_o\ & ((\B|itnram|altsyncram_component|auto_generated|q_a\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tsw[17]~input_o\,
	datac => \B|ctl|data_read_reg\(6),
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

-- Location: FF_X103_Y13_N31
\B|ctl|data_read_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \dio_sram[5]~input_o\,
	clrn => \psw[0]~input_o\,
	sload => VCC,
	ena => \B|ctl|state.r2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|ctl|data_read_reg\(5));

-- Location: LCCOMB_X103_Y13_N30
\B|data_display[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|data_display[5]~5_combout\ = (\tsw[17]~input_o\ & (\B|ctl|data_read_reg\(5))) # (!\tsw[17]~input_o\ & ((\B|itnram|altsyncram_component|auto_generated|q_a\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tsw[17]~input_o\,
	datac => \B|ctl|data_read_reg\(5),
	datad => \B|itnram|altsyncram_component|auto_generated|q_a\(5),
	combout => \B|data_display[5]~5_combout\);

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

-- Location: FF_X114_Y37_N19
\B|ctl|data_read_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \dio_sram[4]~input_o\,
	clrn => \psw[0]~input_o\,
	sload => VCC,
	ena => \B|ctl|state.r2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|ctl|data_read_reg\(4));

-- Location: LCCOMB_X114_Y37_N18
\B|data_display[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|data_display[4]~4_combout\ = (\tsw[17]~input_o\ & (\B|ctl|data_read_reg\(4))) # (!\tsw[17]~input_o\ & ((\B|itnram|altsyncram_component|auto_generated|q_a\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tsw[17]~input_o\,
	datac => \B|ctl|data_read_reg\(4),
	datad => \B|itnram|altsyncram_component|auto_generated|q_a\(4),
	combout => \B|data_display[4]~4_combout\);

-- Location: LCCOMB_X114_Y37_N2
\B|dp23|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp23|Mux6~0_combout\ = (\B|data_display[7]~7_combout\ & (\B|data_display[4]~4_combout\ & (\B|data_display[6]~6_combout\ $ (\B|data_display[5]~5_combout\)))) # (!\B|data_display[7]~7_combout\ & (!\B|data_display[5]~5_combout\ & 
-- (\B|data_display[6]~6_combout\ $ (\B|data_display[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B|data_display[7]~7_combout\,
	datab => \B|data_display[6]~6_combout\,
	datac => \B|data_display[5]~5_combout\,
	datad => \B|data_display[4]~4_combout\,
	combout => \B|dp23|Mux6~0_combout\);

-- Location: LCCOMB_X114_Y37_N8
\B|dp23|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp23|Mux5~0_combout\ = (\B|data_display[7]~7_combout\ & ((\B|data_display[4]~4_combout\ & ((\B|data_display[5]~5_combout\))) # (!\B|data_display[4]~4_combout\ & (\B|data_display[6]~6_combout\)))) # (!\B|data_display[7]~7_combout\ & 
-- (\B|data_display[6]~6_combout\ & (\B|data_display[5]~5_combout\ $ (\B|data_display[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B|data_display[7]~7_combout\,
	datab => \B|data_display[6]~6_combout\,
	datac => \B|data_display[5]~5_combout\,
	datad => \B|data_display[4]~4_combout\,
	combout => \B|dp23|Mux5~0_combout\);

-- Location: LCCOMB_X114_Y37_N24
\B|dp23|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp23|Mux4~0_combout\ = (\B|data_display[7]~7_combout\ & (\B|data_display[6]~6_combout\ & ((\B|data_display[5]~5_combout\) # (!\B|data_display[4]~4_combout\)))) # (!\B|data_display[7]~7_combout\ & (!\B|data_display[6]~6_combout\ & 
-- (\B|data_display[5]~5_combout\ & !\B|data_display[4]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B|data_display[7]~7_combout\,
	datab => \B|data_display[6]~6_combout\,
	datac => \B|data_display[5]~5_combout\,
	datad => \B|data_display[4]~4_combout\,
	combout => \B|dp23|Mux4~0_combout\);

-- Location: LCCOMB_X114_Y37_N22
\B|dp23|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp23|Mux3~0_combout\ = (\B|data_display[4]~4_combout\ & ((\B|data_display[6]~6_combout\ $ (!\B|data_display[5]~5_combout\)))) # (!\B|data_display[4]~4_combout\ & ((\B|data_display[7]~7_combout\ & (!\B|data_display[6]~6_combout\ & 
-- \B|data_display[5]~5_combout\)) # (!\B|data_display[7]~7_combout\ & (\B|data_display[6]~6_combout\ & !\B|data_display[5]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B|data_display[7]~7_combout\,
	datab => \B|data_display[6]~6_combout\,
	datac => \B|data_display[5]~5_combout\,
	datad => \B|data_display[4]~4_combout\,
	combout => \B|dp23|Mux3~0_combout\);

-- Location: LCCOMB_X114_Y37_N12
\B|dp23|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp23|Mux2~0_combout\ = (\B|data_display[5]~5_combout\ & (!\B|data_display[7]~7_combout\ & ((\B|data_display[4]~4_combout\)))) # (!\B|data_display[5]~5_combout\ & ((\B|data_display[6]~6_combout\ & (!\B|data_display[7]~7_combout\)) # 
-- (!\B|data_display[6]~6_combout\ & ((\B|data_display[4]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B|data_display[7]~7_combout\,
	datab => \B|data_display[6]~6_combout\,
	datac => \B|data_display[5]~5_combout\,
	datad => \B|data_display[4]~4_combout\,
	combout => \B|dp23|Mux2~0_combout\);

-- Location: LCCOMB_X114_Y37_N26
\B|dp23|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp23|Mux1~0_combout\ = (\B|data_display[6]~6_combout\ & (\B|data_display[4]~4_combout\ & (\B|data_display[7]~7_combout\ $ (\B|data_display[5]~5_combout\)))) # (!\B|data_display[6]~6_combout\ & (!\B|data_display[7]~7_combout\ & 
-- ((\B|data_display[5]~5_combout\) # (\B|data_display[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B|data_display[7]~7_combout\,
	datab => \B|data_display[6]~6_combout\,
	datac => \B|data_display[5]~5_combout\,
	datad => \B|data_display[4]~4_combout\,
	combout => \B|dp23|Mux1~0_combout\);

-- Location: LCCOMB_X114_Y37_N4
\B|dp23|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp23|Mux0~0_combout\ = (\B|data_display[4]~4_combout\ & ((\B|data_display[7]~7_combout\) # (\B|data_display[6]~6_combout\ $ (\B|data_display[5]~5_combout\)))) # (!\B|data_display[4]~4_combout\ & ((\B|data_display[5]~5_combout\) # 
-- (\B|data_display[7]~7_combout\ $ (\B|data_display[6]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B|data_display[7]~7_combout\,
	datab => \B|data_display[6]~6_combout\,
	datac => \B|data_display[5]~5_combout\,
	datad => \B|data_display[4]~4_combout\,
	combout => \B|dp23|Mux0~0_combout\);

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


