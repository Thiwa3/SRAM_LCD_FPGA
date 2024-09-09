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

-- DATE "09/10/2024 00:47:25"

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
	ad_sram : OUT std_logic_vector(19 DOWNTO 0);
	dio_sram : INOUT std_logic_vector(15 DOWNTO 0);
	we_n_sram : OUT std_logic;
	oe_n_sram : OUT std_logic;
	ce_n_sram : OUT std_logic;
	lb_n_sram : OUT std_logic;
	ub_n_sram : OUT std_logic;
	dio_lcd : INOUT std_logic_vector(7 DOWNTO 0);
	en_lcd : OUT std_logic;
	rw_lcd : OUT std_logic;
	rs_lcd : OUT std_logic;
	pon_lcd : OUT std_logic;
	blon_lcd : OUT std_logic;
	segoutL : OUT std_logic_vector(13 DOWNTO 0);
	segoutM : OUT std_logic_vector(13 DOWNTO 0);
	segoutR : OUT std_logic_vector(27 DOWNTO 0)
	);
END top_module;

-- Design Ports Information
-- tsw[16]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- psw[1]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_we_n_sram : std_logic;
SIGNAL ww_oe_n_sram : std_logic;
SIGNAL ww_ce_n_sram : std_logic;
SIGNAL ww_lb_n_sram : std_logic;
SIGNAL ww_ub_n_sram : std_logic;
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
SIGNAL \tsw[16]~input_o\ : std_logic;
SIGNAL \psw[1]~input_o\ : std_logic;
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
SIGNAL \tsw[17]~input_o\ : std_logic;
SIGNAL \psw[3]~input_o\ : std_logic;
SIGNAL \B|ctl|nextstate.r1~0_combout\ : std_logic;
SIGNAL \B|ctl|state.r1~q\ : std_logic;
SIGNAL \B|ctl|state.r2~feeder_combout\ : std_logic;
SIGNAL \B|ctl|state.r2~q\ : std_logic;
SIGNAL \B|ctl|state.w1~q\ : std_logic;
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
SIGNAL \tsw[14]~input_o\ : std_logic;
SIGNAL \B|ctl|data_write_reg[6]~feeder_combout\ : std_logic;
SIGNAL \tsw[15]~input_o\ : std_logic;
SIGNAL \B|ctl|data_write_reg[7]~feeder_combout\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \tsw[1]~input_o\ : std_logic;
SIGNAL \tsw[3]~input_o\ : std_logic;
SIGNAL \tsw[2]~input_o\ : std_logic;
SIGNAL \A|ul1|LessThan2~0_combout\ : std_logic;
SIGNAL \A|ul1|count[5]~feeder_combout\ : std_logic;
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
SIGNAL \A|ul1|Add0~2_combout\ : std_logic;
SIGNAL \A|ul1|Add0~4_combout\ : std_logic;
SIGNAL \A|ul1|Add0~3\ : std_logic;
SIGNAL \A|ul1|Add0~5_combout\ : std_logic;
SIGNAL \A|ul1|Add0~12_combout\ : std_logic;
SIGNAL \A|ul1|count[1]~feeder_combout\ : std_logic;
SIGNAL \A|ul1|Add0~6\ : std_logic;
SIGNAL \A|ul1|Add0~7_combout\ : std_logic;
SIGNAL \A|ul1|Add0~94_combout\ : std_logic;
SIGNAL \A|ul1|Add0~8\ : std_logic;
SIGNAL \A|ul1|Add0~9_combout\ : std_logic;
SIGNAL \A|ul1|Add0~11_combout\ : std_logic;
SIGNAL \A|ul1|Add0~10\ : std_logic;
SIGNAL \A|ul1|Add0~13_combout\ : std_logic;
SIGNAL \A|ul1|Add0~93_combout\ : std_logic;
SIGNAL \A|ul1|Add0~14\ : std_logic;
SIGNAL \A|ul1|Add0~16\ : std_logic;
SIGNAL \A|ul1|Add0~17_combout\ : std_logic;
SIGNAL \A|ul1|Add0~19_combout\ : std_logic;
SIGNAL \A|ul1|Add0~18\ : std_logic;
SIGNAL \A|ul1|Add0~20_combout\ : std_logic;
SIGNAL \A|ul1|Add0~22_combout\ : std_logic;
SIGNAL \A|ul1|Add0~21\ : std_logic;
SIGNAL \A|ul1|Add0~23_combout\ : std_logic;
SIGNAL \A|ul1|Add0~25_combout\ : std_logic;
SIGNAL \A|ul1|Add0~24\ : std_logic;
SIGNAL \A|ul1|Add0~26_combout\ : std_logic;
SIGNAL \A|ul1|Add0~28_combout\ : std_logic;
SIGNAL \A|ul1|Add0~27\ : std_logic;
SIGNAL \A|ul1|Add0~29_combout\ : std_logic;
SIGNAL \A|ul1|Add0~31_combout\ : std_logic;
SIGNAL \A|ul1|Add0~30\ : std_logic;
SIGNAL \A|ul1|Add0~32_combout\ : std_logic;
SIGNAL \A|ul1|Add0~34_combout\ : std_logic;
SIGNAL \A|ul1|Add0~33\ : std_logic;
SIGNAL \A|ul1|Add0~35_combout\ : std_logic;
SIGNAL \A|ul1|Add0~37_combout\ : std_logic;
SIGNAL \A|ul1|Add0~36\ : std_logic;
SIGNAL \A|ul1|Add0~38_combout\ : std_logic;
SIGNAL \A|ul1|Add0~40_combout\ : std_logic;
SIGNAL \A|ul1|Add0~39\ : std_logic;
SIGNAL \A|ul1|Add0~41_combout\ : std_logic;
SIGNAL \A|ul1|Add0~43_combout\ : std_logic;
SIGNAL \A|ul1|LessThan0~6_combout\ : std_logic;
SIGNAL \A|ul1|LessThan0~7_combout\ : std_logic;
SIGNAL \A|ul1|Add0~42\ : std_logic;
SIGNAL \A|ul1|Add0~44_combout\ : std_logic;
SIGNAL \A|ul1|Add0~46_combout\ : std_logic;
SIGNAL \A|ul1|count[15]~feeder_combout\ : std_logic;
SIGNAL \A|ul1|Add0~45\ : std_logic;
SIGNAL \A|ul1|Add0~47_combout\ : std_logic;
SIGNAL \A|ul1|Add0~49_combout\ : std_logic;
SIGNAL \A|ul1|Add0~48\ : std_logic;
SIGNAL \A|ul1|Add0~50_combout\ : std_logic;
SIGNAL \A|ul1|Add0~52_combout\ : std_logic;
SIGNAL \A|ul1|Add0~51\ : std_logic;
SIGNAL \A|ul1|Add0~53_combout\ : std_logic;
SIGNAL \A|ul1|Add0~55_combout\ : std_logic;
SIGNAL \A|ul1|LessThan0~5_combout\ : std_logic;
SIGNAL \A|ul1|LessThan0~8_combout\ : std_logic;
SIGNAL \A|ul1|Add0~68\ : std_logic;
SIGNAL \A|ul1|Add0~69_combout\ : std_logic;
SIGNAL \A|ul1|Add0~87_combout\ : std_logic;
SIGNAL \A|ul1|Add0~70\ : std_logic;
SIGNAL \A|ul1|Add0~71_combout\ : std_logic;
SIGNAL \A|ul1|Add0~88_combout\ : std_logic;
SIGNAL \A|ul1|Add0~72\ : std_logic;
SIGNAL \A|ul1|Add0~73_combout\ : std_logic;
SIGNAL \A|ul1|Add0~89_combout\ : std_logic;
SIGNAL \A|ul1|Add0~74\ : std_logic;
SIGNAL \A|ul1|Add0~75_combout\ : std_logic;
SIGNAL \A|ul1|Add0~90_combout\ : std_logic;
SIGNAL \A|ul1|Add0~76\ : std_logic;
SIGNAL \A|ul1|Add0~77_combout\ : std_logic;
SIGNAL \A|ul1|Add0~91_combout\ : std_logic;
SIGNAL \A|ul1|Add0~78\ : std_logic;
SIGNAL \A|ul1|Add0~79_combout\ : std_logic;
SIGNAL \A|ul1|Add0~92_combout\ : std_logic;
SIGNAL \A|ul1|Add0~80\ : std_logic;
SIGNAL \A|ul1|Add0~81_combout\ : std_logic;
SIGNAL \A|ul1|Add0~96_combout\ : std_logic;
SIGNAL \A|ul1|Add0~82\ : std_logic;
SIGNAL \A|ul1|Add0~83_combout\ : std_logic;
SIGNAL \A|ul1|LessThan0~0_combout\ : std_logic;
SIGNAL \A|ul1|LessThan0~2_combout\ : std_logic;
SIGNAL \A|ul1|Add0~54\ : std_logic;
SIGNAL \A|ul1|Add0~56_combout\ : std_logic;
SIGNAL \A|ul1|Add0~58_combout\ : std_logic;
SIGNAL \A|ul1|Add0~57\ : std_logic;
SIGNAL \A|ul1|Add0~59_combout\ : std_logic;
SIGNAL \A|ul1|Add0~61_combout\ : std_logic;
SIGNAL \A|ul1|LessThan0~3_combout\ : std_logic;
SIGNAL \A|ul1|LessThan0~1_combout\ : std_logic;
SIGNAL \A|ul1|LessThan0~4_combout\ : std_logic;
SIGNAL \A|ul1|Add0~97_combout\ : std_logic;
SIGNAL \A|ul1|LessThan0~9_combout\ : std_logic;
SIGNAL \A|ul1|Add0~60\ : std_logic;
SIGNAL \A|ul1|Add0~62_combout\ : std_logic;
SIGNAL \A|ul1|Add0~64_combout\ : std_logic;
SIGNAL \A|ul1|Add0~63\ : std_logic;
SIGNAL \A|ul1|Add0~65_combout\ : std_logic;
SIGNAL \A|ul1|Add0~85_combout\ : std_logic;
SIGNAL \A|ul1|Add0~66\ : std_logic;
SIGNAL \A|ul1|Add0~67_combout\ : std_logic;
SIGNAL \A|ul1|Add0~86_combout\ : std_logic;
SIGNAL \A|ul1|Equal0~7_combout\ : std_logic;
SIGNAL \A|ul1|Equal0~4_combout\ : std_logic;
SIGNAL \A|ul1|Equal0~2_combout\ : std_logic;
SIGNAL \A|ul1|Equal0~3_combout\ : std_logic;
SIGNAL \A|ul1|Equal0~1_combout\ : std_logic;
SIGNAL \A|ul1|Equal0~5_combout\ : std_logic;
SIGNAL \A|ul1|Equal3~0_combout\ : std_logic;
SIGNAL \A|ul1|Equal0~6_combout\ : std_logic;
SIGNAL \A|ul1|Equal0~8_combout\ : std_logic;
SIGNAL \A|ul1|Equal3~1_combout\ : std_logic;
SIGNAL \A|ul1|Equal7~5_combout\ : std_logic;
SIGNAL \A|ul1|Equal10~0_combout\ : std_logic;
SIGNAL \A|ul1|Equal8~0_combout\ : std_logic;
SIGNAL \A|ul1|Equal2~0_combout\ : std_logic;
SIGNAL \A|ul1|Equal0~9_combout\ : std_logic;
SIGNAL \A|ul1|Equal19~0_combout\ : std_logic;
SIGNAL \A|ul1|WideNor0~1_combout\ : std_logic;
SIGNAL \A|ul1|Selector8~0_combout\ : std_logic;
SIGNAL \A|ul1|Selector3~1_combout\ : std_logic;
SIGNAL \A|ul1|Equal14~0_combout\ : std_logic;
SIGNAL \A|ul1|Equal14~1_combout\ : std_logic;
SIGNAL \A|ul1|Selector8~1_combout\ : std_logic;
SIGNAL \A|ul1|Selector8~2_combout\ : std_logic;
SIGNAL \A|ul1|WideNor0~2_combout\ : std_logic;
SIGNAL \A|ul1|Equal0~0_combout\ : std_logic;
SIGNAL \A|ul1|Equal3~2_combout\ : std_logic;
SIGNAL \A|ul1|Selector4~0_combout\ : std_logic;
SIGNAL \A|ul1|Equal18~2_combout\ : std_logic;
SIGNAL \A|ul1|Equal30~0_combout\ : std_logic;
SIGNAL \A|ul1|Equal30~1_combout\ : std_logic;
SIGNAL \A|ul1|Selector4~1_combout\ : std_logic;
SIGNAL \A|ul1|Selector4~2_combout\ : std_logic;
SIGNAL \A|ul1|Equal1~4_combout\ : std_logic;
SIGNAL \A|ul1|Selector3~0_combout\ : std_logic;
SIGNAL \A|ul1|Equal26~0_combout\ : std_logic;
SIGNAL \A|ul1|Equal4~0_combout\ : std_logic;
SIGNAL \A|ul1|Equal13~0_combout\ : std_logic;
SIGNAL \A|ul1|Selector6~0_combout\ : std_logic;
SIGNAL \A|ul1|Selector6~1_combout\ : std_logic;
SIGNAL \A|ul1|Equal23~0_combout\ : std_logic;
SIGNAL \A|ul1|Equal31~0_combout\ : std_logic;
SIGNAL \A|ul1|Equal32~0_combout\ : std_logic;
SIGNAL \A|ul1|WideNor0~3_combout\ : std_logic;
SIGNAL \A|ul1|Selector3~2_combout\ : std_logic;
SIGNAL \A|ul1|Equal33~0_combout\ : std_logic;
SIGNAL \A|ul1|Selector3~3_combout\ : std_logic;
SIGNAL \A|ul1|Selector3~4_combout\ : std_logic;
SIGNAL \A|ul1|Equal24~0_combout\ : std_logic;
SIGNAL \A|ul1|WideNor0~4_combout\ : std_logic;
SIGNAL \A|ul1|WideNor0~0_combout\ : std_logic;
SIGNAL \A|ul1|WideNor0~combout\ : std_logic;
SIGNAL \A|ul1|send_enable~0_combout\ : std_logic;
SIGNAL \A|ul1|send_enable~1_combout\ : std_logic;
SIGNAL \A|ul1|send_enable~q\ : std_logic;
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
SIGNAL \A|lc1|LessThan9~8_combout\ : std_logic;
SIGNAL \A|lc1|LessThan9~2_combout\ : std_logic;
SIGNAL \A|lc1|LessThan9~0_combout\ : std_logic;
SIGNAL \A|lc1|LessThan9~1_combout\ : std_logic;
SIGNAL \A|lc1|LessThan0~0_combout\ : std_logic;
SIGNAL \A|lc1|LessThan9~3_combout\ : std_logic;
SIGNAL \A|lc1|LessThan9~4_combout\ : std_logic;
SIGNAL \A|lc1|LessThan9~5_combout\ : std_logic;
SIGNAL \A|lc1|LessThan9~6_combout\ : std_logic;
SIGNAL \A|lc1|LessThan9~7_combout\ : std_logic;
SIGNAL \A|lc1|Add0~59\ : std_logic;
SIGNAL \A|lc1|Add0~61\ : std_logic;
SIGNAL \A|lc1|Add0~62_combout\ : std_logic;
SIGNAL \A|lc1|Selector1~0_combout\ : std_logic;
SIGNAL \A|lc1|count[24]~5_combout\ : std_logic;
SIGNAL \A|lc1|LessThan6~1_combout\ : std_logic;
SIGNAL \A|lc1|LessThan1~2_combout\ : std_logic;
SIGNAL \A|lc1|LessThan1~1_combout\ : std_logic;
SIGNAL \A|lc1|LessThan1~0_combout\ : std_logic;
SIGNAL \A|lc1|LessThan1~3_combout\ : std_logic;
SIGNAL \A|lc1|LessThan1~5_combout\ : std_logic;
SIGNAL \A|lc1|LessThan6~2_combout\ : std_logic;
SIGNAL \A|lc1|LessThan5~0_combout\ : std_logic;
SIGNAL \A|lc1|LessThan5~1_combout\ : std_logic;
SIGNAL \A|lc1|LessThan5~2_combout\ : std_logic;
SIGNAL \A|lc1|LessThan4~0_combout\ : std_logic;
SIGNAL \A|lc1|LessThan4~1_combout\ : std_logic;
SIGNAL \A|lc1|LessThan4~2_combout\ : std_logic;
SIGNAL \A|lc1|Selector44~0_combout\ : std_logic;
SIGNAL \A|lc1|LessThan8~0_combout\ : std_logic;
SIGNAL \A|lc1|LessThan2~0_combout\ : std_logic;
SIGNAL \A|lc1|LessThan2~1_combout\ : std_logic;
SIGNAL \A|lc1|LessThan2~2_combout\ : std_logic;
SIGNAL \A|lc1|LessThan6~6_combout\ : std_logic;
SIGNAL \A|lc1|LessThan1~4_combout\ : std_logic;
SIGNAL \A|lc1|LessThan7~0_combout\ : std_logic;
SIGNAL \A|lc1|LessThan1~6_combout\ : std_logic;
SIGNAL \A|lc1|count~2_combout\ : std_logic;
SIGNAL \A|lc1|Selector34~0_combout\ : std_logic;
SIGNAL \A|lc1|Selector34~4_combout\ : std_logic;
SIGNAL \A|lc1|state.ready~q\ : std_logic;
SIGNAL \A|lc1|Selector35~3_combout\ : std_logic;
SIGNAL \A|lc1|state.send~q\ : std_logic;
SIGNAL \A|lc1|count[24]~3_combout\ : std_logic;
SIGNAL \A|lc1|LessThan0~1_combout\ : std_logic;
SIGNAL \A|lc1|LessThan0~2_combout\ : std_logic;
SIGNAL \A|lc1|LessThan0~3_combout\ : std_logic;
SIGNAL \A|lc1|LessThan0~4_combout\ : std_logic;
SIGNAL \A|lc1|LessThan0~5_combout\ : std_logic;
SIGNAL \A|lc1|LessThan0~6_combout\ : std_logic;
SIGNAL \A|lc1|state~6_combout\ : std_logic;
SIGNAL \A|lc1|state.power~q\ : std_logic;
SIGNAL \A|lc1|count[24]~4_combout\ : std_logic;
SIGNAL \A|lc1|Selector2~0_combout\ : std_logic;
SIGNAL \A|lc1|Add0~60_combout\ : std_logic;
SIGNAL \A|lc1|LessThan6~0_combout\ : std_logic;
SIGNAL \A|lc1|LessThan7~1_combout\ : std_logic;
SIGNAL \A|lc1|LessThan7~2_combout\ : std_logic;
SIGNAL \A|lc1|LessThan8~2_combout\ : std_logic;
SIGNAL \A|lc1|LessThan8~1_combout\ : std_logic;
SIGNAL \A|lc1|LessThan8~3_combout\ : std_logic;
SIGNAL \A|lc1|LessThan8~4_combout\ : std_logic;
SIGNAL \A|lc1|LessThan8~5_combout\ : std_logic;
SIGNAL \A|lc1|LessThan3~0_combout\ : std_logic;
SIGNAL \A|lc1|LessThan3~1_combout\ : std_logic;
SIGNAL \A|lc1|LessThan3~2_combout\ : std_logic;
SIGNAL \A|lc1|LessThan6~4_combout\ : std_logic;
SIGNAL \A|lc1|LessThan6~3_combout\ : std_logic;
SIGNAL \A|lc1|LessThan6~5_combout\ : std_logic;
SIGNAL \A|lc1|busy~2_combout\ : std_logic;
SIGNAL \A|lc1|Selector34~1_combout\ : std_logic;
SIGNAL \A|lc1|Selector34~2_combout\ : std_logic;
SIGNAL \A|lc1|Selector33~0_combout\ : std_logic;
SIGNAL \A|lc1|state.init~q\ : std_logic;
SIGNAL \A|lc1|Selector34~3_combout\ : std_logic;
SIGNAL \A|lc1|busy~q\ : std_logic;
SIGNAL \A|ul1|data_write[9]~0_combout\ : std_logic;
SIGNAL \A|ul1|Add0~15_combout\ : std_logic;
SIGNAL \A|ul1|Add0~95_combout\ : std_logic;
SIGNAL \A|ul1|Equal0~10_combout\ : std_logic;
SIGNAL \A|ul1|Equal7~4_combout\ : std_logic;
SIGNAL \A|ul1|Selector8~3_combout\ : std_logic;
SIGNAL \tsw[0]~input_o\ : std_logic;
SIGNAL \A|ul1|Selector8~4_combout\ : std_logic;
SIGNAL \A|ul1|LessThan4~0_combout\ : std_logic;
SIGNAL \tsw[6]~input_o\ : std_logic;
SIGNAL \tsw[5]~input_o\ : std_logic;
SIGNAL \tsw[7]~input_o\ : std_logic;
SIGNAL \A|ul1|LessThan1~0_combout\ : std_logic;
SIGNAL \tsw[4]~input_o\ : std_logic;
SIGNAL \A|ul1|LessThan3~0_combout\ : std_logic;
SIGNAL \A|ul1|Selector8~5_combout\ : std_logic;
SIGNAL \A|ul1|Selector8~6_combout\ : std_logic;
SIGNAL \A|ul1|Selector8~7_combout\ : std_logic;
SIGNAL \A|ul1|Selector8~8_combout\ : std_logic;
SIGNAL \A|ul1|Selector8~9_combout\ : std_logic;
SIGNAL \A|lc1|Selector35~2_combout\ : std_logic;
SIGNAL \A|lc1|Selector45~0_combout\ : std_logic;
SIGNAL \A|lc1|Selector45~1_combout\ : std_logic;
SIGNAL \A|lc1|Selector45~2_combout\ : std_logic;
SIGNAL \A|lc1|Selector45~3_combout\ : std_logic;
SIGNAL \A|lc1|state~7_combout\ : std_logic;
SIGNAL \A|lc1|lcd_data[2]~0_combout\ : std_logic;
SIGNAL \A|lc1|Selector44~2_combout\ : std_logic;
SIGNAL \A|ul1|Selector7~0_combout\ : std_logic;
SIGNAL \A|ul1|Selector7~1_combout\ : std_logic;
SIGNAL \A|ul1|WideNor0~5_combout\ : std_logic;
SIGNAL \A|ul1|Selector7~2_combout\ : std_logic;
SIGNAL \A|ul1|Selector7~3_combout\ : std_logic;
SIGNAL \A|ul1|Selector7~5_combout\ : std_logic;
SIGNAL \A|ul1|Selector7~4_combout\ : std_logic;
SIGNAL \A|ul1|Selector7~6_combout\ : std_logic;
SIGNAL \A|ul1|Selector7~7_combout\ : std_logic;
SIGNAL \A|ul1|Selector7~8_combout\ : std_logic;
SIGNAL \A|ul1|Selector7~9_combout\ : std_logic;
SIGNAL \A|lc1|Selector44~1_combout\ : std_logic;
SIGNAL \A|lc1|Selector44~3_combout\ : std_logic;
SIGNAL \A|lc1|Selector43~1_combout\ : std_logic;
SIGNAL \A|ul1|Equal9~0_combout\ : std_logic;
SIGNAL \A|ul1|Selector6~5_combout\ : std_logic;
SIGNAL \A|ul1|Selector6~6_combout\ : std_logic;
SIGNAL \A|ul1|Selector6~7_combout\ : std_logic;
SIGNAL \A|ul1|Selector6~8_combout\ : std_logic;
SIGNAL \A|ul1|Selector6~3_combout\ : std_logic;
SIGNAL \A|ul1|Selector6~2_combout\ : std_logic;
SIGNAL \A|ul1|Selector6~4_combout\ : std_logic;
SIGNAL \A|ul1|Selector6~9_combout\ : std_logic;
SIGNAL \A|ul1|Selector4~3_combout\ : std_logic;
SIGNAL \A|ul1|Selector6~10_combout\ : std_logic;
SIGNAL \A|ul1|Selector6~11_combout\ : std_logic;
SIGNAL \A|lc1|Selector43~0_combout\ : std_logic;
SIGNAL \A|lc1|Selector43~2_combout\ : std_logic;
SIGNAL \A|lc1|Selector43~3_combout\ : std_logic;
SIGNAL \A|ul1|Selector5~5_combout\ : std_logic;
SIGNAL \A|ul1|Selector5~6_combout\ : std_logic;
SIGNAL \A|ul1|Selector5~4_combout\ : std_logic;
SIGNAL \A|ul1|Selector5~7_combout\ : std_logic;
SIGNAL \A|ul1|Selector5~0_combout\ : std_logic;
SIGNAL \A|ul1|Selector5~1_combout\ : std_logic;
SIGNAL \A|ul1|Selector5~2_combout\ : std_logic;
SIGNAL \A|ul1|Selector5~3_combout\ : std_logic;
SIGNAL \A|ul1|Selector5~8_combout\ : std_logic;
SIGNAL \A|lc1|Selector42~2_combout\ : std_logic;
SIGNAL \A|lc1|Selector42~3_combout\ : std_logic;
SIGNAL \A|lc1|Selector42~4_combout\ : std_logic;
SIGNAL \A|ul1|Selector4~8_combout\ : std_logic;
SIGNAL \A|ul1|Selector4~6_combout\ : std_logic;
SIGNAL \A|ul1|Selector4~7_combout\ : std_logic;
SIGNAL \A|ul1|Selector4~9_combout\ : std_logic;
SIGNAL \A|ul1|Selector4~4_combout\ : std_logic;
SIGNAL \A|ul1|Selector4~5_combout\ : std_logic;
SIGNAL \A|ul1|Selector4~10_combout\ : std_logic;
SIGNAL \A|lc1|Selector41~2_combout\ : std_logic;
SIGNAL \A|lc1|Selector41~3_combout\ : std_logic;
SIGNAL \A|ul1|Selector3~5_combout\ : std_logic;
SIGNAL \A|ul1|Selector3~6_combout\ : std_logic;
SIGNAL \A|ul1|Selector3~7_combout\ : std_logic;
SIGNAL \A|lc1|Selector40~2_combout\ : std_logic;
SIGNAL \A|ul1|Selector2~1_combout\ : std_logic;
SIGNAL \A|ul1|Selector2~0_combout\ : std_logic;
SIGNAL \A|ul1|Selector2~2_combout\ : std_logic;
SIGNAL \A|ul1|Selector2~3_combout\ : std_logic;
SIGNAL \A|ul1|Selector2~4_combout\ : std_logic;
SIGNAL \A|lc1|Selector39~0_combout\ : std_logic;
SIGNAL \A|ul1|Selector1~0_combout\ : std_logic;
SIGNAL \A|lc1|Selector38~0_combout\ : std_logic;
SIGNAL \B|ctl|addr_reg[0]~0_combout\ : std_logic;
SIGNAL \B|ctl|addr_reg[4]~feeder_combout\ : std_logic;
SIGNAL \B|ctl|addr_reg[6]~feeder_combout\ : std_logic;
SIGNAL \B|ctl|we_reg~feeder_combout\ : std_logic;
SIGNAL \B|ctl|we_reg~q\ : std_logic;
SIGNAL \B|ctl|oe_buf~0_combout\ : std_logic;
SIGNAL \B|ctl|oe_reg~q\ : std_logic;
SIGNAL \A|lc1|Selector46~3_combout\ : std_logic;
SIGNAL \A|lc1|Selector46~2_combout\ : std_logic;
SIGNAL \A|lc1|Selector46~4_combout\ : std_logic;
SIGNAL \A|lc1|Selector46~5_combout\ : std_logic;
SIGNAL \A|lc1|Selector46~6_combout\ : std_logic;
SIGNAL \A|lc1|Selector46~11_combout\ : std_logic;
SIGNAL \A|lc1|LessThan9~9_combout\ : std_logic;
SIGNAL \A|lc1|LessThan10~1_combout\ : std_logic;
SIGNAL \A|lc1|LessThan11~0_combout\ : std_logic;
SIGNAL \A|lc1|LessThan11~1_combout\ : std_logic;
SIGNAL \A|lc1|LessThan10~2_combout\ : std_logic;
SIGNAL \A|lc1|LessThan10~3_combout\ : std_logic;
SIGNAL \A|lc1|LessThan12~0_combout\ : std_logic;
SIGNAL \A|lc1|LessThan10~4_combout\ : std_logic;
SIGNAL \A|lc1|LessThan10~0_combout\ : std_logic;
SIGNAL \A|lc1|Selector46~7_combout\ : std_logic;
SIGNAL \A|lc1|LessThan9~10_combout\ : std_logic;
SIGNAL \A|lc1|LessThan12~1_combout\ : std_logic;
SIGNAL \A|lc1|LessThan12~2_combout\ : std_logic;
SIGNAL \A|lc1|Selector46~8_combout\ : std_logic;
SIGNAL \A|lc1|Selector46~9_combout\ : std_logic;
SIGNAL \A|lc1|Selector46~10_combout\ : std_logic;
SIGNAL \A|lc1|lcd_en~q\ : std_logic;
SIGNAL \A|lc1|lcd_rs~0_combout\ : std_logic;
SIGNAL \A|ul1|Selector0~1_combout\ : std_logic;
SIGNAL \A|ul1|Selector0~0_combout\ : std_logic;
SIGNAL \A|ul1|Selector0~2_combout\ : std_logic;
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
SIGNAL \B|comb~0_combout\ : std_logic;
SIGNAL \B|comb~0clkctrl_outclk\ : std_logic;
SIGNAL \dio_sram[2]~input_o\ : std_logic;
SIGNAL \B|data_display[2]~2_combout\ : std_logic;
SIGNAL \dio_sram[1]~input_o\ : std_logic;
SIGNAL \B|data_display[1]~1_combout\ : std_logic;
SIGNAL \dio_sram[3]~input_o\ : std_logic;
SIGNAL \B|data_display[3]~3_combout\ : std_logic;
SIGNAL \dio_sram[0]~input_o\ : std_logic;
SIGNAL \B|data_display[0]~0_combout\ : std_logic;
SIGNAL \B|dp13|Mux6~0_combout\ : std_logic;
SIGNAL \B|dp13|Mux5~0_combout\ : std_logic;
SIGNAL \B|dp13|Mux4~0_combout\ : std_logic;
SIGNAL \B|dp13|Mux3~0_combout\ : std_logic;
SIGNAL \B|dp13|Mux2~0_combout\ : std_logic;
SIGNAL \B|dp13|Mux1~0_combout\ : std_logic;
SIGNAL \B|dp13|Mux0~0_combout\ : std_logic;
SIGNAL \dio_sram[4]~input_o\ : std_logic;
SIGNAL \B|data_display[4]~4_combout\ : std_logic;
SIGNAL \dio_sram[7]~input_o\ : std_logic;
SIGNAL \B|data_display[7]~7_combout\ : std_logic;
SIGNAL \dio_sram[5]~input_o\ : std_logic;
SIGNAL \B|data_display[5]~5_combout\ : std_logic;
SIGNAL \dio_sram[6]~input_o\ : std_logic;
SIGNAL \B|data_display[6]~6_combout\ : std_logic;
SIGNAL \B|dp23|Mux6~0_combout\ : std_logic;
SIGNAL \B|dp23|Mux5~0_combout\ : std_logic;
SIGNAL \B|dp23|Mux4~0_combout\ : std_logic;
SIGNAL \B|dp23|Mux3~0_combout\ : std_logic;
SIGNAL \B|dp23|Mux2~0_combout\ : std_logic;
SIGNAL \B|dp23|Mux1~0_combout\ : std_logic;
SIGNAL \B|dp23|Mux0~0_combout\ : std_logic;
SIGNAL \A|ul1|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \A|df1|q\ : std_logic_vector(21 DOWNTO 0);
SIGNAL \B|ctl|data_read_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \B|itnram|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \B|ctl|addr_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \pll1|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \A|lc1|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \A|ul1|data_write\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \B|ctl|data_write_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \A|lc1|lcd_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_psw[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_psw[0]~input_o\ : std_logic;
SIGNAL \A|ul1|ALT_INV_send_enable~1_combout\ : std_logic;
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
we_n_sram <= ww_we_n_sram;
oe_n_sram <= ww_oe_n_sram;
ce_n_sram <= ww_ce_n_sram;
lb_n_sram <= ww_lb_n_sram;
ub_n_sram <= ww_ub_n_sram;
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
\A|ul1|ALT_INV_send_enable~1_combout\ <= NOT \A|ul1|send_enable~1_combout\;
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
	o => dio_sram(0));

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
	o => dio_sram(1));

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
	o => dio_sram(2));

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
	o => dio_sram(3));

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
	o => dio_sram(4));

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
	o => dio_sram(5));

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
	o => dio_sram(6));

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
	o => dio_sram(7));

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
	o => dio_sram(8));

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
	o => dio_sram(9));

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
	o => dio_sram(10));

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
	o => dio_sram(11));

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
	o => dio_sram(12));

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
	o => dio_sram(13));

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
	o => dio_sram(14));

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
	o => dio_sram(15));

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
	o => dio_lcd(0));

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
	o => dio_lcd(1));

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
	o => dio_lcd(2));

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
	o => dio_lcd(3));

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
	o => dio_lcd(4));

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
	o => dio_lcd(5));

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
	o => dio_lcd(6));

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
	o => dio_lcd(7));

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

-- Location: LCCOMB_X89_Y8_N16
\B|ctl|nextstate.r1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|ctl|nextstate.r1~0_combout\ = (\tsw[17]~input_o\ & (\psw[3]~input_o\ & !\B|ctl|state.idle~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[17]~input_o\,
	datac => \psw[3]~input_o\,
	datad => \B|ctl|state.idle~q\,
	combout => \B|ctl|nextstate.r1~0_combout\);

-- Location: FF_X89_Y8_N17
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

-- Location: LCCOMB_X89_Y8_N18
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

-- Location: FF_X89_Y8_N19
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

-- Location: FF_X89_Y8_N31
\B|ctl|state.w1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \B|ctl|nextstate.w1~0_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|ctl|state.w1~q\);

-- Location: FF_X89_Y8_N21
\B|ctl|state.w2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \B|ctl|state.w1~q\,
	clrn => \psw[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|ctl|state.w2~q\);

-- Location: LCCOMB_X89_Y8_N10
\B|ctl|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|ctl|Selector0~0_combout\ = (!\B|ctl|state.r2~q\ & (!\B|ctl|state.w2~q\ & ((\tsw[17]~input_o\) # (\B|ctl|state.idle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[17]~input_o\,
	datab => \B|ctl|state.r2~q\,
	datac => \B|ctl|state.idle~q\,
	datad => \B|ctl|state.w2~q\,
	combout => \B|ctl|Selector0~0_combout\);

-- Location: FF_X89_Y8_N11
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

-- Location: LCCOMB_X89_Y8_N30
\B|ctl|nextstate.w1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|ctl|nextstate.w1~0_combout\ = (\tsw[17]~input_o\ & (!\psw[3]~input_o\ & !\B|ctl|state.idle~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[17]~input_o\,
	datac => \psw[3]~input_o\,
	datad => \B|ctl|state.idle~q\,
	combout => \B|ctl|nextstate.w1~0_combout\);

-- Location: FF_X83_Y4_N17
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

-- Location: LCCOMB_X89_Y8_N14
\B|ctl|tri_buf~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|ctl|tri_buf~0_combout\ = (\B|ctl|state.w1~q\) # ((\tsw[17]~input_o\ & (!\psw[3]~input_o\ & !\B|ctl|state.idle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[17]~input_o\,
	datab => \psw[3]~input_o\,
	datac => \B|ctl|state.w1~q\,
	datad => \B|ctl|state.idle~q\,
	combout => \B|ctl|tri_buf~0_combout\);

-- Location: FF_X89_Y8_N15
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

-- Location: LCCOMB_X83_Y4_N10
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

-- Location: FF_X83_Y4_N11
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

-- Location: LCCOMB_X83_Y4_N4
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

-- Location: FF_X83_Y4_N5
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

-- Location: FF_X83_Y4_N23
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

-- Location: FF_X87_Y8_N7
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

-- Location: FF_X87_Y8_N9
\B|ctl|data_write_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
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

-- Location: LCCOMB_X87_Y8_N26
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

-- Location: FF_X87_Y8_N27
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

-- Location: LCCOMB_X87_Y8_N12
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

-- Location: FF_X87_Y8_N13
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

-- Location: LCCOMB_X89_Y8_N8
\A|ul1|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|LessThan2~0_combout\ = (\tsw[3]~input_o\ & ((\tsw[1]~input_o\) # (\tsw[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[1]~input_o\,
	datab => \tsw[3]~input_o\,
	datad => \tsw[2]~input_o\,
	combout => \A|ul1|LessThan2~0_combout\);

-- Location: LCCOMB_X90_Y12_N6
\A|ul1|count[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|count[5]~feeder_combout\ = \A|ul1|Add0~95_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A|ul1|Add0~95_combout\,
	combout => \A|ul1|count[5]~feeder_combout\);

-- Location: LCCOMB_X92_Y14_N8
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

-- Location: FF_X92_Y14_N9
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

-- Location: LCCOMB_X92_Y14_N12
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

-- Location: FF_X92_Y14_N13
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

-- Location: LCCOMB_X92_Y14_N14
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

-- Location: FF_X92_Y14_N15
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

-- Location: LCCOMB_X92_Y14_N16
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

-- Location: FF_X92_Y14_N17
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

-- Location: LCCOMB_X92_Y14_N18
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

-- Location: FF_X92_Y14_N19
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

-- Location: LCCOMB_X92_Y14_N20
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

-- Location: FF_X92_Y14_N21
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

-- Location: LCCOMB_X92_Y14_N22
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

-- Location: FF_X92_Y14_N23
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

-- Location: LCCOMB_X92_Y14_N24
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

-- Location: FF_X92_Y14_N25
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

-- Location: LCCOMB_X92_Y14_N26
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

-- Location: FF_X92_Y14_N27
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

-- Location: LCCOMB_X92_Y14_N28
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

-- Location: FF_X92_Y14_N29
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

-- Location: LCCOMB_X92_Y14_N30
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

-- Location: FF_X92_Y14_N31
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

-- Location: LCCOMB_X92_Y13_N0
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

-- Location: FF_X92_Y13_N1
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

-- Location: LCCOMB_X92_Y13_N2
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

-- Location: FF_X92_Y13_N3
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

-- Location: LCCOMB_X92_Y13_N4
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

-- Location: FF_X92_Y13_N5
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

-- Location: LCCOMB_X92_Y13_N6
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

-- Location: FF_X92_Y13_N7
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

-- Location: LCCOMB_X92_Y13_N8
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

-- Location: FF_X92_Y13_N9
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

-- Location: LCCOMB_X92_Y13_N10
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

-- Location: FF_X92_Y13_N11
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

-- Location: LCCOMB_X92_Y13_N12
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

-- Location: FF_X92_Y13_N13
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

-- Location: LCCOMB_X92_Y13_N14
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

-- Location: FF_X92_Y13_N15
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

-- Location: LCCOMB_X92_Y13_N16
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

-- Location: FF_X92_Y13_N17
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

-- Location: LCCOMB_X92_Y13_N18
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

-- Location: FF_X92_Y13_N19
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

-- Location: LCCOMB_X92_Y13_N20
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

-- Location: FF_X92_Y13_N21
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

-- Location: FF_X90_Y13_N27
\A|ul1|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ul1|Add0~86_combout\,
	clrn => \A|df1|q\(21),
	ena => \A|ul1|data_write[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(23));

-- Location: LCCOMB_X89_Y14_N0
\A|ul1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~2_combout\ = \A|ul1|count\(0) $ (VCC)
-- \A|ul1|Add0~3\ = CARRY(\A|ul1|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(0),
	datad => VCC,
	combout => \A|ul1|Add0~2_combout\,
	cout => \A|ul1|Add0~3\);

-- Location: LCCOMB_X90_Y13_N0
\A|ul1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~4_combout\ = (\A|ul1|LessThan0~9_combout\ & (\A|ul1|Add0~2_combout\)) # (!\A|ul1|LessThan0~9_combout\ & ((\A|ul1|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~2_combout\,
	datac => \A|ul1|count\(0),
	datad => \A|ul1|LessThan0~9_combout\,
	combout => \A|ul1|Add0~4_combout\);

-- Location: FF_X90_Y13_N1
\A|ul1|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ul1|Add0~4_combout\,
	clrn => \A|df1|q\(21),
	ena => \A|ul1|data_write[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(0));

-- Location: LCCOMB_X89_Y14_N2
\A|ul1|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~5_combout\ = (\A|ul1|count\(1) & (!\A|ul1|Add0~3\)) # (!\A|ul1|count\(1) & ((\A|ul1|Add0~3\) # (GND)))
-- \A|ul1|Add0~6\ = CARRY((!\A|ul1|Add0~3\) # (!\A|ul1|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(1),
	datad => VCC,
	cin => \A|ul1|Add0~3\,
	combout => \A|ul1|Add0~5_combout\,
	cout => \A|ul1|Add0~6\);

-- Location: LCCOMB_X88_Y13_N24
\A|ul1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~12_combout\ = (\A|ul1|LessThan0~9_combout\ & (\A|ul1|Add0~5_combout\)) # (!\A|ul1|LessThan0~9_combout\ & ((\A|ul1|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~5_combout\,
	datab => \A|ul1|LessThan0~9_combout\,
	datad => \A|ul1|count\(1),
	combout => \A|ul1|Add0~12_combout\);

-- Location: LCCOMB_X88_Y13_N18
\A|ul1|count[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|count[1]~feeder_combout\ = \A|ul1|Add0~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A|ul1|Add0~12_combout\,
	combout => \A|ul1|count[1]~feeder_combout\);

-- Location: FF_X88_Y13_N19
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
	ena => \A|ul1|data_write[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(1));

-- Location: LCCOMB_X89_Y14_N4
\A|ul1|Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~7_combout\ = (\A|ul1|count\(2) & (\A|ul1|Add0~6\ $ (GND))) # (!\A|ul1|count\(2) & (!\A|ul1|Add0~6\ & VCC))
-- \A|ul1|Add0~8\ = CARRY((\A|ul1|count\(2) & !\A|ul1|Add0~6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(2),
	datad => VCC,
	cin => \A|ul1|Add0~6\,
	combout => \A|ul1|Add0~7_combout\,
	cout => \A|ul1|Add0~8\);

-- Location: LCCOMB_X90_Y12_N10
\A|ul1|Add0~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~94_combout\ = (\A|ul1|LessThan0~9_combout\ & (\A|ul1|Add0~7_combout\)) # (!\A|ul1|LessThan0~9_combout\ & ((\A|ul1|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|Add0~7_combout\,
	datac => \A|ul1|count\(2),
	datad => \A|ul1|LessThan0~9_combout\,
	combout => \A|ul1|Add0~94_combout\);

-- Location: FF_X90_Y12_N21
\A|ul1|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \A|ul1|Add0~94_combout\,
	clrn => \A|df1|q\(21),
	sload => VCC,
	ena => \A|ul1|data_write[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(2));

-- Location: LCCOMB_X89_Y14_N6
\A|ul1|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~9_combout\ = (\A|ul1|count\(3) & (!\A|ul1|Add0~8\)) # (!\A|ul1|count\(3) & ((\A|ul1|Add0~8\) # (GND)))
-- \A|ul1|Add0~10\ = CARRY((!\A|ul1|Add0~8\) # (!\A|ul1|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|count\(3),
	datad => VCC,
	cin => \A|ul1|Add0~8\,
	combout => \A|ul1|Add0~9_combout\,
	cout => \A|ul1|Add0~10\);

-- Location: LCCOMB_X90_Y12_N18
\A|ul1|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~11_combout\ = (\A|ul1|LessThan0~9_combout\ & (\A|ul1|Add0~9_combout\)) # (!\A|ul1|LessThan0~9_combout\ & ((\A|ul1|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|Add0~9_combout\,
	datac => \A|ul1|count\(3),
	datad => \A|ul1|LessThan0~9_combout\,
	combout => \A|ul1|Add0~11_combout\);

-- Location: FF_X90_Y12_N19
\A|ul1|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ul1|Add0~11_combout\,
	clrn => \A|df1|q\(21),
	ena => \A|ul1|data_write[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(3));

-- Location: LCCOMB_X89_Y14_N8
\A|ul1|Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~13_combout\ = (\A|ul1|count\(4) & (\A|ul1|Add0~10\ $ (GND))) # (!\A|ul1|count\(4) & (!\A|ul1|Add0~10\ & VCC))
-- \A|ul1|Add0~14\ = CARRY((\A|ul1|count\(4) & !\A|ul1|Add0~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(4),
	datad => VCC,
	cin => \A|ul1|Add0~10\,
	combout => \A|ul1|Add0~13_combout\,
	cout => \A|ul1|Add0~14\);

-- Location: LCCOMB_X90_Y12_N8
\A|ul1|Add0~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~93_combout\ = (\A|ul1|LessThan0~9_combout\ & (\A|ul1|Add0~13_combout\)) # (!\A|ul1|LessThan0~9_combout\ & ((\A|ul1|count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~13_combout\,
	datac => \A|ul1|count\(4),
	datad => \A|ul1|LessThan0~9_combout\,
	combout => \A|ul1|Add0~93_combout\);

-- Location: FF_X90_Y12_N9
\A|ul1|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ul1|Add0~93_combout\,
	clrn => \A|df1|q\(21),
	ena => \A|ul1|data_write[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(4));

-- Location: LCCOMB_X89_Y14_N10
\A|ul1|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~15_combout\ = (\A|ul1|count\(5) & (!\A|ul1|Add0~14\)) # (!\A|ul1|count\(5) & ((\A|ul1|Add0~14\) # (GND)))
-- \A|ul1|Add0~16\ = CARRY((!\A|ul1|Add0~14\) # (!\A|ul1|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|count\(5),
	datad => VCC,
	cin => \A|ul1|Add0~14\,
	combout => \A|ul1|Add0~15_combout\,
	cout => \A|ul1|Add0~16\);

-- Location: LCCOMB_X89_Y14_N12
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

-- Location: LCCOMB_X88_Y14_N2
\A|ul1|Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~19_combout\ = (\A|ul1|LessThan0~9_combout\ & ((\A|ul1|Add0~17_combout\))) # (!\A|ul1|LessThan0~9_combout\ & (\A|ul1|count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(6),
	datab => \A|ul1|Add0~17_combout\,
	datad => \A|ul1|LessThan0~9_combout\,
	combout => \A|ul1|Add0~19_combout\);

-- Location: FF_X88_Y14_N31
\A|ul1|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \A|ul1|Add0~19_combout\,
	clrn => \A|df1|q\(21),
	sload => VCC,
	ena => \A|ul1|data_write[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(6));

-- Location: LCCOMB_X89_Y14_N14
\A|ul1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~20_combout\ = (\A|ul1|count\(7) & (!\A|ul1|Add0~18\)) # (!\A|ul1|count\(7) & ((\A|ul1|Add0~18\) # (GND)))
-- \A|ul1|Add0~21\ = CARRY((!\A|ul1|Add0~18\) # (!\A|ul1|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(7),
	datad => VCC,
	cin => \A|ul1|Add0~18\,
	combout => \A|ul1|Add0~20_combout\,
	cout => \A|ul1|Add0~21\);

-- Location: LCCOMB_X88_Y14_N10
\A|ul1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~22_combout\ = (\A|ul1|LessThan0~9_combout\ & (\A|ul1|Add0~20_combout\)) # (!\A|ul1|LessThan0~9_combout\ & ((\A|ul1|count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|LessThan0~9_combout\,
	datab => \A|ul1|Add0~20_combout\,
	datac => \A|ul1|count\(7),
	combout => \A|ul1|Add0~22_combout\);

-- Location: FF_X88_Y14_N11
\A|ul1|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ul1|Add0~22_combout\,
	clrn => \A|df1|q\(21),
	ena => \A|ul1|data_write[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(7));

-- Location: LCCOMB_X89_Y14_N16
\A|ul1|Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~23_combout\ = (\A|ul1|count\(8) & (\A|ul1|Add0~21\ $ (GND))) # (!\A|ul1|count\(8) & (!\A|ul1|Add0~21\ & VCC))
-- \A|ul1|Add0~24\ = CARRY((\A|ul1|count\(8) & !\A|ul1|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(8),
	datad => VCC,
	cin => \A|ul1|Add0~21\,
	combout => \A|ul1|Add0~23_combout\,
	cout => \A|ul1|Add0~24\);

-- Location: LCCOMB_X88_Y14_N0
\A|ul1|Add0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~25_combout\ = (\A|ul1|LessThan0~9_combout\ & (\A|ul1|Add0~23_combout\)) # (!\A|ul1|LessThan0~9_combout\ & ((\A|ul1|count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|LessThan0~9_combout\,
	datab => \A|ul1|Add0~23_combout\,
	datac => \A|ul1|count\(8),
	combout => \A|ul1|Add0~25_combout\);

-- Location: FF_X88_Y14_N1
\A|ul1|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ul1|Add0~25_combout\,
	clrn => \A|df1|q\(21),
	ena => \A|ul1|data_write[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(8));

-- Location: LCCOMB_X89_Y14_N18
\A|ul1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~26_combout\ = (\A|ul1|count\(9) & (!\A|ul1|Add0~24\)) # (!\A|ul1|count\(9) & ((\A|ul1|Add0~24\) # (GND)))
-- \A|ul1|Add0~27\ = CARRY((!\A|ul1|Add0~24\) # (!\A|ul1|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|count\(9),
	datad => VCC,
	cin => \A|ul1|Add0~24\,
	combout => \A|ul1|Add0~26_combout\,
	cout => \A|ul1|Add0~27\);

-- Location: LCCOMB_X88_Y14_N6
\A|ul1|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~28_combout\ = (\A|ul1|LessThan0~9_combout\ & (\A|ul1|Add0~26_combout\)) # (!\A|ul1|LessThan0~9_combout\ & ((\A|ul1|count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|LessThan0~9_combout\,
	datab => \A|ul1|Add0~26_combout\,
	datac => \A|ul1|count\(9),
	combout => \A|ul1|Add0~28_combout\);

-- Location: FF_X88_Y14_N7
\A|ul1|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ul1|Add0~28_combout\,
	clrn => \A|df1|q\(21),
	ena => \A|ul1|data_write[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(9));

-- Location: LCCOMB_X89_Y14_N20
\A|ul1|Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~29_combout\ = (\A|ul1|count\(10) & (\A|ul1|Add0~27\ $ (GND))) # (!\A|ul1|count\(10) & (!\A|ul1|Add0~27\ & VCC))
-- \A|ul1|Add0~30\ = CARRY((\A|ul1|count\(10) & !\A|ul1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|count\(10),
	datad => VCC,
	cin => \A|ul1|Add0~27\,
	combout => \A|ul1|Add0~29_combout\,
	cout => \A|ul1|Add0~30\);

-- Location: LCCOMB_X88_Y14_N28
\A|ul1|Add0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~31_combout\ = (\A|ul1|LessThan0~9_combout\ & ((\A|ul1|Add0~29_combout\))) # (!\A|ul1|LessThan0~9_combout\ & (\A|ul1|count\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|LessThan0~9_combout\,
	datac => \A|ul1|count\(10),
	datad => \A|ul1|Add0~29_combout\,
	combout => \A|ul1|Add0~31_combout\);

-- Location: FF_X88_Y14_N29
\A|ul1|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ul1|Add0~31_combout\,
	clrn => \A|df1|q\(21),
	ena => \A|ul1|data_write[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(10));

-- Location: LCCOMB_X89_Y14_N22
\A|ul1|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~32_combout\ = (\A|ul1|count\(11) & (!\A|ul1|Add0~30\)) # (!\A|ul1|count\(11) & ((\A|ul1|Add0~30\) # (GND)))
-- \A|ul1|Add0~33\ = CARRY((!\A|ul1|Add0~30\) # (!\A|ul1|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(11),
	datad => VCC,
	cin => \A|ul1|Add0~30\,
	combout => \A|ul1|Add0~32_combout\,
	cout => \A|ul1|Add0~33\);

-- Location: LCCOMB_X88_Y14_N16
\A|ul1|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~34_combout\ = (\A|ul1|LessThan0~9_combout\ & (\A|ul1|Add0~32_combout\)) # (!\A|ul1|LessThan0~9_combout\ & ((\A|ul1|count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|LessThan0~9_combout\,
	datab => \A|ul1|Add0~32_combout\,
	datac => \A|ul1|count\(11),
	combout => \A|ul1|Add0~34_combout\);

-- Location: FF_X88_Y14_N17
\A|ul1|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ul1|Add0~34_combout\,
	clrn => \A|df1|q\(21),
	ena => \A|ul1|data_write[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(11));

-- Location: LCCOMB_X89_Y14_N24
\A|ul1|Add0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~35_combout\ = (\A|ul1|count\(12) & (\A|ul1|Add0~33\ $ (GND))) # (!\A|ul1|count\(12) & (!\A|ul1|Add0~33\ & VCC))
-- \A|ul1|Add0~36\ = CARRY((\A|ul1|count\(12) & !\A|ul1|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(12),
	datad => VCC,
	cin => \A|ul1|Add0~33\,
	combout => \A|ul1|Add0~35_combout\,
	cout => \A|ul1|Add0~36\);

-- Location: LCCOMB_X88_Y14_N14
\A|ul1|Add0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~37_combout\ = (\A|ul1|LessThan0~9_combout\ & ((\A|ul1|Add0~35_combout\))) # (!\A|ul1|LessThan0~9_combout\ & (\A|ul1|count\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|LessThan0~9_combout\,
	datac => \A|ul1|count\(12),
	datad => \A|ul1|Add0~35_combout\,
	combout => \A|ul1|Add0~37_combout\);

-- Location: FF_X88_Y14_N15
\A|ul1|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ul1|Add0~37_combout\,
	clrn => \A|df1|q\(21),
	ena => \A|ul1|data_write[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(12));

-- Location: LCCOMB_X89_Y14_N26
\A|ul1|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~38_combout\ = (\A|ul1|count\(13) & (!\A|ul1|Add0~36\)) # (!\A|ul1|count\(13) & ((\A|ul1|Add0~36\) # (GND)))
-- \A|ul1|Add0~39\ = CARRY((!\A|ul1|Add0~36\) # (!\A|ul1|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(13),
	datad => VCC,
	cin => \A|ul1|Add0~36\,
	combout => \A|ul1|Add0~38_combout\,
	cout => \A|ul1|Add0~39\);

-- Location: LCCOMB_X88_Y14_N12
\A|ul1|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~40_combout\ = (\A|ul1|LessThan0~9_combout\ & (\A|ul1|Add0~38_combout\)) # (!\A|ul1|LessThan0~9_combout\ & ((\A|ul1|count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|LessThan0~9_combout\,
	datab => \A|ul1|Add0~38_combout\,
	datac => \A|ul1|count\(13),
	combout => \A|ul1|Add0~40_combout\);

-- Location: FF_X88_Y14_N13
\A|ul1|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ul1|Add0~40_combout\,
	clrn => \A|df1|q\(21),
	ena => \A|ul1|data_write[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(13));

-- Location: LCCOMB_X89_Y14_N28
\A|ul1|Add0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~41_combout\ = (\A|ul1|count\(14) & (\A|ul1|Add0~39\ $ (GND))) # (!\A|ul1|count\(14) & (!\A|ul1|Add0~39\ & VCC))
-- \A|ul1|Add0~42\ = CARRY((\A|ul1|count\(14) & !\A|ul1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(14),
	datad => VCC,
	cin => \A|ul1|Add0~39\,
	combout => \A|ul1|Add0~41_combout\,
	cout => \A|ul1|Add0~42\);

-- Location: LCCOMB_X88_Y14_N30
\A|ul1|Add0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~43_combout\ = (\A|ul1|LessThan0~9_combout\ & ((\A|ul1|Add0~41_combout\))) # (!\A|ul1|LessThan0~9_combout\ & (\A|ul1|count\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|LessThan0~9_combout\,
	datab => \A|ul1|count\(14),
	datad => \A|ul1|Add0~41_combout\,
	combout => \A|ul1|Add0~43_combout\);

-- Location: FF_X88_Y14_N3
\A|ul1|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \A|ul1|Add0~43_combout\,
	clrn => \A|df1|q\(21),
	sload => VCC,
	ena => \A|ul1|data_write[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(14));

-- Location: LCCOMB_X88_Y14_N26
\A|ul1|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|LessThan0~6_combout\ = (!\A|ul1|count\(12) & (!\A|ul1|count\(14) & (!\A|ul1|count\(13) & !\A|ul1|count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(12),
	datab => \A|ul1|count\(14),
	datac => \A|ul1|count\(13),
	datad => \A|ul1|count\(11),
	combout => \A|ul1|LessThan0~6_combout\);

-- Location: LCCOMB_X88_Y14_N4
\A|ul1|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|LessThan0~7_combout\ = (!\A|ul1|count\(7) & (!\A|ul1|count\(10) & (!\A|ul1|count\(8) & !\A|ul1|count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(7),
	datab => \A|ul1|count\(10),
	datac => \A|ul1|count\(8),
	datad => \A|ul1|count\(9),
	combout => \A|ul1|LessThan0~7_combout\);

-- Location: LCCOMB_X89_Y14_N30
\A|ul1|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~44_combout\ = (\A|ul1|count\(15) & (!\A|ul1|Add0~42\)) # (!\A|ul1|count\(15) & ((\A|ul1|Add0~42\) # (GND)))
-- \A|ul1|Add0~45\ = CARRY((!\A|ul1|Add0~42\) # (!\A|ul1|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|count\(15),
	datad => VCC,
	cin => \A|ul1|Add0~42\,
	combout => \A|ul1|Add0~44_combout\,
	cout => \A|ul1|Add0~45\);

-- Location: LCCOMB_X88_Y13_N4
\A|ul1|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~46_combout\ = (\A|ul1|LessThan0~9_combout\ & ((\A|ul1|Add0~44_combout\))) # (!\A|ul1|LessThan0~9_combout\ & (\A|ul1|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(15),
	datab => \A|ul1|LessThan0~9_combout\,
	datac => \A|ul1|Add0~44_combout\,
	combout => \A|ul1|Add0~46_combout\);

-- Location: LCCOMB_X88_Y13_N22
\A|ul1|count[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|count[15]~feeder_combout\ = \A|ul1|Add0~46_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|ul1|Add0~46_combout\,
	combout => \A|ul1|count[15]~feeder_combout\);

-- Location: FF_X88_Y13_N23
\A|ul1|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ul1|count[15]~feeder_combout\,
	clrn => \A|df1|q\(21),
	ena => \A|ul1|data_write[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(15));

-- Location: LCCOMB_X89_Y13_N0
\A|ul1|Add0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~47_combout\ = (\A|ul1|count\(16) & (\A|ul1|Add0~45\ $ (GND))) # (!\A|ul1|count\(16) & (!\A|ul1|Add0~45\ & VCC))
-- \A|ul1|Add0~48\ = CARRY((\A|ul1|count\(16) & !\A|ul1|Add0~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(16),
	datad => VCC,
	cin => \A|ul1|Add0~45\,
	combout => \A|ul1|Add0~47_combout\,
	cout => \A|ul1|Add0~48\);

-- Location: LCCOMB_X88_Y13_N12
\A|ul1|Add0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~49_combout\ = (\A|ul1|LessThan0~9_combout\ & ((\A|ul1|Add0~47_combout\))) # (!\A|ul1|LessThan0~9_combout\ & (\A|ul1|count\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|LessThan0~9_combout\,
	datac => \A|ul1|count\(16),
	datad => \A|ul1|Add0~47_combout\,
	combout => \A|ul1|Add0~49_combout\);

-- Location: FF_X88_Y13_N13
\A|ul1|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ul1|Add0~49_combout\,
	clrn => \A|df1|q\(21),
	ena => \A|ul1|data_write[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(16));

-- Location: LCCOMB_X89_Y13_N2
\A|ul1|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~50_combout\ = (\A|ul1|count\(17) & (!\A|ul1|Add0~48\)) # (!\A|ul1|count\(17) & ((\A|ul1|Add0~48\) # (GND)))
-- \A|ul1|Add0~51\ = CARRY((!\A|ul1|Add0~48\) # (!\A|ul1|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(17),
	datad => VCC,
	cin => \A|ul1|Add0~48\,
	combout => \A|ul1|Add0~50_combout\,
	cout => \A|ul1|Add0~51\);

-- Location: LCCOMB_X88_Y13_N2
\A|ul1|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~52_combout\ = (\A|ul1|LessThan0~9_combout\ & ((\A|ul1|Add0~50_combout\))) # (!\A|ul1|LessThan0~9_combout\ & (\A|ul1|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|LessThan0~9_combout\,
	datac => \A|ul1|count\(17),
	datad => \A|ul1|Add0~50_combout\,
	combout => \A|ul1|Add0~52_combout\);

-- Location: FF_X88_Y13_N3
\A|ul1|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ul1|Add0~52_combout\,
	clrn => \A|df1|q\(21),
	ena => \A|ul1|data_write[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(17));

-- Location: LCCOMB_X89_Y13_N4
\A|ul1|Add0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~53_combout\ = (\A|ul1|count\(18) & (\A|ul1|Add0~51\ $ (GND))) # (!\A|ul1|count\(18) & (!\A|ul1|Add0~51\ & VCC))
-- \A|ul1|Add0~54\ = CARRY((\A|ul1|count\(18) & !\A|ul1|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|count\(18),
	datad => VCC,
	cin => \A|ul1|Add0~51\,
	combout => \A|ul1|Add0~53_combout\,
	cout => \A|ul1|Add0~54\);

-- Location: LCCOMB_X88_Y13_N8
\A|ul1|Add0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~55_combout\ = (\A|ul1|LessThan0~9_combout\ & ((\A|ul1|Add0~53_combout\))) # (!\A|ul1|LessThan0~9_combout\ & (\A|ul1|count\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|LessThan0~9_combout\,
	datac => \A|ul1|count\(18),
	datad => \A|ul1|Add0~53_combout\,
	combout => \A|ul1|Add0~55_combout\);

-- Location: FF_X88_Y13_N25
\A|ul1|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \A|ul1|Add0~55_combout\,
	clrn => \A|df1|q\(21),
	sload => VCC,
	ena => \A|ul1|data_write[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(18));

-- Location: LCCOMB_X88_Y13_N0
\A|ul1|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|LessThan0~5_combout\ = (!\A|ul1|count\(18) & (!\A|ul1|count\(17) & (!\A|ul1|count\(15) & !\A|ul1|count\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(18),
	datab => \A|ul1|count\(17),
	datac => \A|ul1|count\(15),
	datad => \A|ul1|count\(16),
	combout => \A|ul1|LessThan0~5_combout\);

-- Location: LCCOMB_X88_Y14_N24
\A|ul1|LessThan0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|LessThan0~8_combout\ = (\A|ul1|LessThan0~6_combout\ & (\A|ul1|LessThan0~7_combout\ & (!\A|ul1|count\(6) & \A|ul1|LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|LessThan0~6_combout\,
	datab => \A|ul1|LessThan0~7_combout\,
	datac => \A|ul1|count\(6),
	datad => \A|ul1|LessThan0~5_combout\,
	combout => \A|ul1|LessThan0~8_combout\);

-- Location: LCCOMB_X89_Y13_N14
\A|ul1|Add0~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~67_combout\ = (\A|ul1|count\(23) & (!\A|ul1|Add0~66\)) # (!\A|ul1|count\(23) & ((\A|ul1|Add0~66\) # (GND)))
-- \A|ul1|Add0~68\ = CARRY((!\A|ul1|Add0~66\) # (!\A|ul1|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(23),
	datad => VCC,
	cin => \A|ul1|Add0~66\,
	combout => \A|ul1|Add0~67_combout\,
	cout => \A|ul1|Add0~68\);

-- Location: LCCOMB_X89_Y13_N16
\A|ul1|Add0~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~69_combout\ = (\A|ul1|count\(24) & (\A|ul1|Add0~68\ $ (GND))) # (!\A|ul1|count\(24) & (!\A|ul1|Add0~68\ & VCC))
-- \A|ul1|Add0~70\ = CARRY((\A|ul1|count\(24) & !\A|ul1|Add0~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|count\(24),
	datad => VCC,
	cin => \A|ul1|Add0~68\,
	combout => \A|ul1|Add0~69_combout\,
	cout => \A|ul1|Add0~70\);

-- Location: LCCOMB_X90_Y13_N8
\A|ul1|Add0~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~87_combout\ = (\A|ul1|LessThan0~9_combout\ & (\A|ul1|Add0~69_combout\)) # (!\A|ul1|LessThan0~9_combout\ & ((\A|ul1|count\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~69_combout\,
	datac => \A|ul1|count\(24),
	datad => \A|ul1|LessThan0~9_combout\,
	combout => \A|ul1|Add0~87_combout\);

-- Location: FF_X90_Y13_N9
\A|ul1|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ul1|Add0~87_combout\,
	clrn => \A|df1|q\(21),
	ena => \A|ul1|data_write[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(24));

-- Location: LCCOMB_X89_Y13_N18
\A|ul1|Add0~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~71_combout\ = (\A|ul1|count\(25) & (!\A|ul1|Add0~70\)) # (!\A|ul1|count\(25) & ((\A|ul1|Add0~70\) # (GND)))
-- \A|ul1|Add0~72\ = CARRY((!\A|ul1|Add0~70\) # (!\A|ul1|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(25),
	datad => VCC,
	cin => \A|ul1|Add0~70\,
	combout => \A|ul1|Add0~71_combout\,
	cout => \A|ul1|Add0~72\);

-- Location: LCCOMB_X90_Y13_N22
\A|ul1|Add0~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~88_combout\ = (\A|ul1|LessThan0~9_combout\ & ((\A|ul1|Add0~71_combout\))) # (!\A|ul1|LessThan0~9_combout\ & (\A|ul1|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|LessThan0~9_combout\,
	datac => \A|ul1|count\(25),
	datad => \A|ul1|Add0~71_combout\,
	combout => \A|ul1|Add0~88_combout\);

-- Location: FF_X90_Y13_N23
\A|ul1|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ul1|Add0~88_combout\,
	clrn => \A|df1|q\(21),
	ena => \A|ul1|data_write[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(25));

-- Location: LCCOMB_X89_Y13_N20
\A|ul1|Add0~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~73_combout\ = (\A|ul1|count\(26) & (\A|ul1|Add0~72\ $ (GND))) # (!\A|ul1|count\(26) & (!\A|ul1|Add0~72\ & VCC))
-- \A|ul1|Add0~74\ = CARRY((\A|ul1|count\(26) & !\A|ul1|Add0~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(26),
	datad => VCC,
	cin => \A|ul1|Add0~72\,
	combout => \A|ul1|Add0~73_combout\,
	cout => \A|ul1|Add0~74\);

-- Location: LCCOMB_X90_Y13_N20
\A|ul1|Add0~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~89_combout\ = (\A|ul1|LessThan0~9_combout\ & ((\A|ul1|Add0~73_combout\))) # (!\A|ul1|LessThan0~9_combout\ & (\A|ul1|count\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|LessThan0~9_combout\,
	datac => \A|ul1|count\(26),
	datad => \A|ul1|Add0~73_combout\,
	combout => \A|ul1|Add0~89_combout\);

-- Location: FF_X90_Y13_N21
\A|ul1|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ul1|Add0~89_combout\,
	clrn => \A|df1|q\(21),
	ena => \A|ul1|data_write[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(26));

-- Location: LCCOMB_X89_Y13_N22
\A|ul1|Add0~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~75_combout\ = (\A|ul1|count\(27) & (!\A|ul1|Add0~74\)) # (!\A|ul1|count\(27) & ((\A|ul1|Add0~74\) # (GND)))
-- \A|ul1|Add0~76\ = CARRY((!\A|ul1|Add0~74\) # (!\A|ul1|count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|count\(27),
	datad => VCC,
	cin => \A|ul1|Add0~74\,
	combout => \A|ul1|Add0~75_combout\,
	cout => \A|ul1|Add0~76\);

-- Location: LCCOMB_X90_Y13_N24
\A|ul1|Add0~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~90_combout\ = (\A|ul1|LessThan0~9_combout\ & (\A|ul1|Add0~75_combout\)) # (!\A|ul1|LessThan0~9_combout\ & ((\A|ul1|count\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~75_combout\,
	datab => \A|ul1|LessThan0~9_combout\,
	datac => \A|ul1|count\(27),
	combout => \A|ul1|Add0~90_combout\);

-- Location: FF_X90_Y13_N25
\A|ul1|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ul1|Add0~90_combout\,
	clrn => \A|df1|q\(21),
	ena => \A|ul1|data_write[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(27));

-- Location: LCCOMB_X89_Y13_N24
\A|ul1|Add0~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~77_combout\ = (\A|ul1|count\(28) & (\A|ul1|Add0~76\ $ (GND))) # (!\A|ul1|count\(28) & (!\A|ul1|Add0~76\ & VCC))
-- \A|ul1|Add0~78\ = CARRY((\A|ul1|count\(28) & !\A|ul1|Add0~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|count\(28),
	datad => VCC,
	cin => \A|ul1|Add0~76\,
	combout => \A|ul1|Add0~77_combout\,
	cout => \A|ul1|Add0~78\);

-- Location: LCCOMB_X90_Y13_N6
\A|ul1|Add0~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~91_combout\ = (\A|ul1|LessThan0~9_combout\ & ((\A|ul1|Add0~77_combout\))) # (!\A|ul1|LessThan0~9_combout\ & (\A|ul1|count\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|LessThan0~9_combout\,
	datac => \A|ul1|count\(28),
	datad => \A|ul1|Add0~77_combout\,
	combout => \A|ul1|Add0~91_combout\);

-- Location: FF_X90_Y13_N7
\A|ul1|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ul1|Add0~91_combout\,
	clrn => \A|df1|q\(21),
	ena => \A|ul1|data_write[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(28));

-- Location: LCCOMB_X89_Y13_N26
\A|ul1|Add0~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~79_combout\ = (\A|ul1|count\(29) & (!\A|ul1|Add0~78\)) # (!\A|ul1|count\(29) & ((\A|ul1|Add0~78\) # (GND)))
-- \A|ul1|Add0~80\ = CARRY((!\A|ul1|Add0~78\) # (!\A|ul1|count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|count\(29),
	datad => VCC,
	cin => \A|ul1|Add0~78\,
	combout => \A|ul1|Add0~79_combout\,
	cout => \A|ul1|Add0~80\);

-- Location: LCCOMB_X90_Y13_N12
\A|ul1|Add0~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~92_combout\ = (\A|ul1|LessThan0~9_combout\ & (\A|ul1|Add0~79_combout\)) # (!\A|ul1|LessThan0~9_combout\ & ((\A|ul1|count\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~79_combout\,
	datac => \A|ul1|count\(29),
	datad => \A|ul1|LessThan0~9_combout\,
	combout => \A|ul1|Add0~92_combout\);

-- Location: FF_X90_Y13_N13
\A|ul1|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ul1|Add0~92_combout\,
	clrn => \A|df1|q\(21),
	ena => \A|ul1|data_write[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(29));

-- Location: LCCOMB_X89_Y13_N28
\A|ul1|Add0~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~81_combout\ = (\A|ul1|count\(30) & (\A|ul1|Add0~80\ $ (GND))) # (!\A|ul1|count\(30) & (!\A|ul1|Add0~80\ & VCC))
-- \A|ul1|Add0~82\ = CARRY((\A|ul1|count\(30) & !\A|ul1|Add0~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|count\(30),
	datad => VCC,
	cin => \A|ul1|Add0~80\,
	combout => \A|ul1|Add0~81_combout\,
	cout => \A|ul1|Add0~82\);

-- Location: LCCOMB_X88_Y14_N8
\A|ul1|Add0~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~96_combout\ = (\A|ul1|LessThan0~9_combout\ & (\A|ul1|Add0~81_combout\)) # (!\A|ul1|LessThan0~9_combout\ & ((\A|ul1|count\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|LessThan0~9_combout\,
	datab => \A|ul1|Add0~81_combout\,
	datac => \A|ul1|count\(30),
	combout => \A|ul1|Add0~96_combout\);

-- Location: FF_X88_Y14_N9
\A|ul1|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ul1|Add0~96_combout\,
	clrn => \A|df1|q\(21),
	ena => \A|ul1|data_write[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(30));

-- Location: LCCOMB_X89_Y13_N30
\A|ul1|Add0~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~83_combout\ = \A|ul1|count\(31) $ (\A|ul1|Add0~82\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|count\(31),
	cin => \A|ul1|Add0~82\,
	combout => \A|ul1|Add0~83_combout\);

-- Location: LCCOMB_X90_Y12_N16
\A|ul1|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|LessThan0~0_combout\ = ((!\A|ul1|count\(4) & (!\A|ul1|count\(2) & !\A|ul1|count\(3)))) # (!\A|ul1|count\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(5),
	datab => \A|ul1|count\(4),
	datac => \A|ul1|count\(2),
	datad => \A|ul1|count\(3),
	combout => \A|ul1|LessThan0~0_combout\);

-- Location: LCCOMB_X90_Y13_N28
\A|ul1|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|LessThan0~2_combout\ = (!\A|ul1|count\(24) & (!\A|ul1|count\(26) & (!\A|ul1|count\(25) & !\A|ul1|count\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(24),
	datab => \A|ul1|count\(26),
	datac => \A|ul1|count\(25),
	datad => \A|ul1|count\(23),
	combout => \A|ul1|LessThan0~2_combout\);

-- Location: LCCOMB_X89_Y13_N6
\A|ul1|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~56_combout\ = (\A|ul1|count\(19) & (!\A|ul1|Add0~54\)) # (!\A|ul1|count\(19) & ((\A|ul1|Add0~54\) # (GND)))
-- \A|ul1|Add0~57\ = CARRY((!\A|ul1|Add0~54\) # (!\A|ul1|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|count\(19),
	datad => VCC,
	cin => \A|ul1|Add0~54\,
	combout => \A|ul1|Add0~56_combout\,
	cout => \A|ul1|Add0~57\);

-- Location: LCCOMB_X88_Y13_N28
\A|ul1|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~58_combout\ = (\A|ul1|LessThan0~9_combout\ & ((\A|ul1|Add0~56_combout\))) # (!\A|ul1|LessThan0~9_combout\ & (\A|ul1|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|LessThan0~9_combout\,
	datac => \A|ul1|count\(19),
	datad => \A|ul1|Add0~56_combout\,
	combout => \A|ul1|Add0~58_combout\);

-- Location: FF_X88_Y13_N29
\A|ul1|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ul1|Add0~58_combout\,
	clrn => \A|df1|q\(21),
	ena => \A|ul1|data_write[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(19));

-- Location: LCCOMB_X89_Y13_N8
\A|ul1|Add0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~59_combout\ = (\A|ul1|count\(20) & (\A|ul1|Add0~57\ $ (GND))) # (!\A|ul1|count\(20) & (!\A|ul1|Add0~57\ & VCC))
-- \A|ul1|Add0~60\ = CARRY((\A|ul1|count\(20) & !\A|ul1|Add0~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(20),
	datad => VCC,
	cin => \A|ul1|Add0~57\,
	combout => \A|ul1|Add0~59_combout\,
	cout => \A|ul1|Add0~60\);

-- Location: LCCOMB_X88_Y13_N10
\A|ul1|Add0~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~61_combout\ = (\A|ul1|LessThan0~9_combout\ & ((\A|ul1|Add0~59_combout\))) # (!\A|ul1|LessThan0~9_combout\ & (\A|ul1|count\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|LessThan0~9_combout\,
	datac => \A|ul1|count\(20),
	datad => \A|ul1|Add0~59_combout\,
	combout => \A|ul1|Add0~61_combout\);

-- Location: FF_X88_Y13_N11
\A|ul1|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ul1|Add0~61_combout\,
	clrn => \A|df1|q\(21),
	ena => \A|ul1|data_write[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(20));

-- Location: LCCOMB_X88_Y13_N30
\A|ul1|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|LessThan0~3_combout\ = (!\A|ul1|count\(21) & (!\A|ul1|count\(20) & (!\A|ul1|count\(19) & !\A|ul1|count\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(21),
	datab => \A|ul1|count\(20),
	datac => \A|ul1|count\(19),
	datad => \A|ul1|count\(22),
	combout => \A|ul1|LessThan0~3_combout\);

-- Location: LCCOMB_X90_Y13_N18
\A|ul1|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|LessThan0~1_combout\ = (!\A|ul1|count\(29) & (!\A|ul1|count\(30) & (!\A|ul1|count\(27) & !\A|ul1|count\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(29),
	datab => \A|ul1|count\(30),
	datac => \A|ul1|count\(27),
	datad => \A|ul1|count\(28),
	combout => \A|ul1|LessThan0~1_combout\);

-- Location: LCCOMB_X90_Y13_N16
\A|ul1|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|LessThan0~4_combout\ = (\A|ul1|LessThan0~0_combout\ & (\A|ul1|LessThan0~2_combout\ & (\A|ul1|LessThan0~3_combout\ & \A|ul1|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|LessThan0~0_combout\,
	datab => \A|ul1|LessThan0~2_combout\,
	datac => \A|ul1|LessThan0~3_combout\,
	datad => \A|ul1|LessThan0~1_combout\,
	combout => \A|ul1|LessThan0~4_combout\);

-- Location: LCCOMB_X90_Y13_N10
\A|ul1|Add0~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~97_combout\ = (\A|ul1|Add0~83_combout\ & ((\A|ul1|count\(31)) # ((\A|ul1|LessThan0~8_combout\ & \A|ul1|LessThan0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|LessThan0~8_combout\,
	datab => \A|ul1|Add0~83_combout\,
	datac => \A|ul1|count\(31),
	datad => \A|ul1|LessThan0~4_combout\,
	combout => \A|ul1|Add0~97_combout\);

-- Location: FF_X90_Y13_N11
\A|ul1|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ul1|Add0~97_combout\,
	clrn => \A|df1|q\(21),
	ena => \A|ul1|data_write[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(31));

-- Location: LCCOMB_X90_Y13_N2
\A|ul1|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|LessThan0~9_combout\ = (\A|ul1|count\(31)) # ((\A|ul1|LessThan0~8_combout\ & \A|ul1|LessThan0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(31),
	datac => \A|ul1|LessThan0~8_combout\,
	datad => \A|ul1|LessThan0~4_combout\,
	combout => \A|ul1|LessThan0~9_combout\);

-- Location: LCCOMB_X89_Y13_N10
\A|ul1|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~62_combout\ = (\A|ul1|count\(21) & (!\A|ul1|Add0~60\)) # (!\A|ul1|count\(21) & ((\A|ul1|Add0~60\) # (GND)))
-- \A|ul1|Add0~63\ = CARRY((!\A|ul1|Add0~60\) # (!\A|ul1|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(21),
	datad => VCC,
	cin => \A|ul1|Add0~60\,
	combout => \A|ul1|Add0~62_combout\,
	cout => \A|ul1|Add0~63\);

-- Location: LCCOMB_X88_Y13_N16
\A|ul1|Add0~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~64_combout\ = (\A|ul1|LessThan0~9_combout\ & ((\A|ul1|Add0~62_combout\))) # (!\A|ul1|LessThan0~9_combout\ & (\A|ul1|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|LessThan0~9_combout\,
	datac => \A|ul1|count\(21),
	datad => \A|ul1|Add0~62_combout\,
	combout => \A|ul1|Add0~64_combout\);

-- Location: FF_X88_Y13_N17
\A|ul1|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ul1|Add0~64_combout\,
	clrn => \A|df1|q\(21),
	ena => \A|ul1|data_write[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(21));

-- Location: LCCOMB_X89_Y13_N12
\A|ul1|Add0~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~65_combout\ = (\A|ul1|count\(22) & (\A|ul1|Add0~63\ $ (GND))) # (!\A|ul1|count\(22) & (!\A|ul1|Add0~63\ & VCC))
-- \A|ul1|Add0~66\ = CARRY((\A|ul1|count\(22) & !\A|ul1|Add0~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|count\(22),
	datad => VCC,
	cin => \A|ul1|Add0~63\,
	combout => \A|ul1|Add0~65_combout\,
	cout => \A|ul1|Add0~66\);

-- Location: LCCOMB_X90_Y13_N14
\A|ul1|Add0~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~85_combout\ = (\A|ul1|LessThan0~9_combout\ & (\A|ul1|Add0~65_combout\)) # (!\A|ul1|LessThan0~9_combout\ & ((\A|ul1|count\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~65_combout\,
	datac => \A|ul1|count\(22),
	datad => \A|ul1|LessThan0~9_combout\,
	combout => \A|ul1|Add0~85_combout\);

-- Location: FF_X90_Y13_N15
\A|ul1|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ul1|Add0~85_combout\,
	clrn => \A|df1|q\(21),
	ena => \A|ul1|data_write[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(22));

-- Location: LCCOMB_X90_Y13_N26
\A|ul1|Add0~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~86_combout\ = (\A|ul1|LessThan0~9_combout\ & (\A|ul1|Add0~67_combout\)) # (!\A|ul1|LessThan0~9_combout\ & ((\A|ul1|count\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~67_combout\,
	datac => \A|ul1|count\(23),
	datad => \A|ul1|LessThan0~9_combout\,
	combout => \A|ul1|Add0~86_combout\);

-- Location: LCCOMB_X90_Y13_N4
\A|ul1|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal0~7_combout\ = (!\A|ul1|Add0~86_combout\ & (!\A|ul1|Add0~87_combout\ & (!\A|ul1|Add0~85_combout\ & !\A|ul1|Add0~88_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~86_combout\,
	datab => \A|ul1|Add0~87_combout\,
	datac => \A|ul1|Add0~85_combout\,
	datad => \A|ul1|Add0~88_combout\,
	combout => \A|ul1|Equal0~7_combout\);

-- Location: LCCOMB_X88_Y13_N26
\A|ul1|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal0~4_combout\ = (!\A|ul1|Add0~61_combout\ & (!\A|ul1|Add0~64_combout\ & (!\A|ul1|Add0~55_combout\ & !\A|ul1|Add0~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~61_combout\,
	datab => \A|ul1|Add0~64_combout\,
	datac => \A|ul1|Add0~55_combout\,
	datad => \A|ul1|Add0~58_combout\,
	combout => \A|ul1|Equal0~4_combout\);

-- Location: LCCOMB_X88_Y14_N20
\A|ul1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal0~2_combout\ = (!\A|ul1|Add0~31_combout\ & (!\A|ul1|Add0~37_combout\ & (!\A|ul1|Add0~34_combout\ & !\A|ul1|Add0~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~31_combout\,
	datab => \A|ul1|Add0~37_combout\,
	datac => \A|ul1|Add0~34_combout\,
	datad => \A|ul1|Add0~40_combout\,
	combout => \A|ul1|Equal0~2_combout\);

-- Location: LCCOMB_X88_Y13_N6
\A|ul1|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal0~3_combout\ = (!\A|ul1|Add0~43_combout\ & (!\A|ul1|Add0~46_combout\ & (!\A|ul1|Add0~49_combout\ & !\A|ul1|Add0~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~43_combout\,
	datab => \A|ul1|Add0~46_combout\,
	datac => \A|ul1|Add0~49_combout\,
	datad => \A|ul1|Add0~52_combout\,
	combout => \A|ul1|Equal0~3_combout\);

-- Location: LCCOMB_X88_Y14_N18
\A|ul1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal0~1_combout\ = (!\A|ul1|Add0~22_combout\ & (!\A|ul1|Add0~19_combout\ & (!\A|ul1|Add0~28_combout\ & !\A|ul1|Add0~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~22_combout\,
	datab => \A|ul1|Add0~19_combout\,
	datac => \A|ul1|Add0~28_combout\,
	datad => \A|ul1|Add0~25_combout\,
	combout => \A|ul1|Equal0~1_combout\);

-- Location: LCCOMB_X88_Y14_N22
\A|ul1|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal0~5_combout\ = (\A|ul1|Equal0~4_combout\ & (\A|ul1|Equal0~2_combout\ & (\A|ul1|Equal0~3_combout\ & \A|ul1|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal0~4_combout\,
	datab => \A|ul1|Equal0~2_combout\,
	datac => \A|ul1|Equal0~3_combout\,
	datad => \A|ul1|Equal0~1_combout\,
	combout => \A|ul1|Equal0~5_combout\);

-- Location: LCCOMB_X89_Y12_N20
\A|ul1|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal3~0_combout\ = (\A|ul1|Add0~94_combout\ & (!\A|ul1|Add0~95_combout\ & (\A|ul1|Equal0~5_combout\ & !\A|ul1|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~94_combout\,
	datab => \A|ul1|Add0~95_combout\,
	datac => \A|ul1|Equal0~5_combout\,
	datad => \A|ul1|Add0~4_combout\,
	combout => \A|ul1|Equal3~0_combout\);

-- Location: LCCOMB_X88_Y13_N20
\A|ul1|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal0~6_combout\ = (\A|ul1|LessThan0~9_combout\ & (((!\A|ul1|Add0~81_combout\ & !\A|ul1|Add0~83_combout\)))) # (!\A|ul1|LessThan0~9_combout\ & (!\A|ul1|count\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(30),
	datab => \A|ul1|Add0~81_combout\,
	datac => \A|ul1|LessThan0~9_combout\,
	datad => \A|ul1|Add0~83_combout\,
	combout => \A|ul1|Equal0~6_combout\);

-- Location: LCCOMB_X90_Y13_N30
\A|ul1|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal0~8_combout\ = (!\A|ul1|Add0~91_combout\ & (!\A|ul1|Add0~90_combout\ & (!\A|ul1|Add0~92_combout\ & !\A|ul1|Add0~89_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~91_combout\,
	datab => \A|ul1|Add0~90_combout\,
	datac => \A|ul1|Add0~92_combout\,
	datad => \A|ul1|Add0~89_combout\,
	combout => \A|ul1|Equal0~8_combout\);

-- Location: LCCOMB_X89_Y12_N14
\A|ul1|Equal3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal3~1_combout\ = (\A|ul1|Equal0~7_combout\ & (\A|ul1|Equal3~0_combout\ & (\A|ul1|Equal0~6_combout\ & \A|ul1|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal0~7_combout\,
	datab => \A|ul1|Equal3~0_combout\,
	datac => \A|ul1|Equal0~6_combout\,
	datad => \A|ul1|Equal0~8_combout\,
	combout => \A|ul1|Equal3~1_combout\);

-- Location: LCCOMB_X90_Y12_N2
\A|ul1|Equal7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal7~5_combout\ = (!\A|ul1|Add0~12_combout\ & ((\A|ul1|LessThan0~9_combout\ & (\A|ul1|Add0~9_combout\)) # (!\A|ul1|LessThan0~9_combout\ & ((\A|ul1|count\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~9_combout\,
	datab => \A|ul1|count\(3),
	datac => \A|ul1|Add0~12_combout\,
	datad => \A|ul1|LessThan0~9_combout\,
	combout => \A|ul1|Equal7~5_combout\);

-- Location: LCCOMB_X90_Y12_N26
\A|ul1|Equal10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal10~0_combout\ = (\A|ul1|Equal3~1_combout\ & (\A|ul1|Equal7~5_combout\ & !\A|ul1|Add0~93_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal3~1_combout\,
	datab => \A|ul1|Equal7~5_combout\,
	datad => \A|ul1|Add0~93_combout\,
	combout => \A|ul1|Equal10~0_combout\);

-- Location: LCCOMB_X89_Y9_N4
\A|ul1|Equal8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal8~0_combout\ = (\A|ul1|Add0~11_combout\ & (!\A|ul1|Add0~12_combout\ & \A|ul1|Add0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~11_combout\,
	datab => \A|ul1|Add0~12_combout\,
	datac => \A|ul1|Add0~4_combout\,
	combout => \A|ul1|Equal8~0_combout\);

-- Location: LCCOMB_X89_Y9_N26
\A|ul1|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal2~0_combout\ = (!\A|ul1|Add0~11_combout\ & (\A|ul1|Add0~12_combout\ & \A|ul1|Add0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~11_combout\,
	datab => \A|ul1|Add0~12_combout\,
	datac => \A|ul1|Add0~4_combout\,
	combout => \A|ul1|Equal2~0_combout\);

-- Location: LCCOMB_X89_Y12_N24
\A|ul1|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal0~9_combout\ = (\A|ul1|Equal0~7_combout\ & (\A|ul1|Equal0~5_combout\ & (\A|ul1|Equal0~6_combout\ & \A|ul1|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal0~7_combout\,
	datab => \A|ul1|Equal0~5_combout\,
	datac => \A|ul1|Equal0~6_combout\,
	datad => \A|ul1|Equal0~8_combout\,
	combout => \A|ul1|Equal0~9_combout\);

-- Location: LCCOMB_X89_Y12_N10
\A|ul1|Equal19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal19~0_combout\ = (!\A|ul1|Add0~95_combout\ & (\A|ul1|Equal0~9_combout\ & (\A|ul1|Add0~94_combout\ & \A|ul1|Add0~93_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~95_combout\,
	datab => \A|ul1|Equal0~9_combout\,
	datac => \A|ul1|Add0~94_combout\,
	datad => \A|ul1|Add0~93_combout\,
	combout => \A|ul1|Equal19~0_combout\);

-- Location: LCCOMB_X89_Y10_N26
\A|ul1|WideNor0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|WideNor0~1_combout\ = (\A|ul1|Equal0~10_combout\ & (!\A|ul1|Equal8~0_combout\ & (!\A|ul1|Equal2~0_combout\))) # (!\A|ul1|Equal0~10_combout\ & (((!\A|ul1|Equal19~0_combout\) # (!\A|ul1|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal0~10_combout\,
	datab => \A|ul1|Equal8~0_combout\,
	datac => \A|ul1|Equal2~0_combout\,
	datad => \A|ul1|Equal19~0_combout\,
	combout => \A|ul1|WideNor0~1_combout\);

-- Location: LCCOMB_X89_Y12_N26
\A|ul1|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector8~0_combout\ = (\A|ul1|Add0~12_combout\ & (((\A|ul1|Equal0~10_combout\)))) # (!\A|ul1|Add0~12_combout\ & (\A|ul1|Equal3~1_combout\ & ((\A|ul1|Add0~93_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~12_combout\,
	datab => \A|ul1|Equal3~1_combout\,
	datac => \A|ul1|Equal0~10_combout\,
	datad => \A|ul1|Add0~93_combout\,
	combout => \A|ul1|Selector8~0_combout\);

-- Location: LCCOMB_X89_Y12_N16
\A|ul1|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector3~1_combout\ = ((!\A|ul1|Add0~4_combout\) # (!\A|ul1|Add0~11_combout\)) # (!\A|ul1|Equal19~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal19~0_combout\,
	datac => \A|ul1|Add0~11_combout\,
	datad => \A|ul1|Add0~4_combout\,
	combout => \A|ul1|Selector3~1_combout\);

-- Location: LCCOMB_X89_Y12_N30
\A|ul1|Equal14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal14~0_combout\ = (!\A|ul1|Add0~94_combout\ & (!\A|ul1|Add0~95_combout\ & (\A|ul1|Add0~93_combout\ & \A|ul1|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~94_combout\,
	datab => \A|ul1|Add0~95_combout\,
	datac => \A|ul1|Add0~93_combout\,
	datad => \A|ul1|Equal0~5_combout\,
	combout => \A|ul1|Equal14~0_combout\);

-- Location: LCCOMB_X89_Y12_N8
\A|ul1|Equal14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal14~1_combout\ = (\A|ul1|Equal14~0_combout\ & (\A|ul1|Equal0~6_combout\ & (\A|ul1|Equal0~7_combout\ & \A|ul1|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal14~0_combout\,
	datab => \A|ul1|Equal0~6_combout\,
	datac => \A|ul1|Equal0~7_combout\,
	datad => \A|ul1|Equal0~8_combout\,
	combout => \A|ul1|Equal14~1_combout\);

-- Location: LCCOMB_X89_Y12_N28
\A|ul1|Selector8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector8~1_combout\ = (\A|ul1|Selector8~0_combout\ & ((\A|ul1|Add0~12_combout\ & ((\A|ul1|Add0~4_combout\))) # (!\A|ul1|Add0~12_combout\ & (\A|ul1|Add0~11_combout\)))) # (!\A|ul1|Selector8~0_combout\ & (((\A|ul1|Add0~11_combout\) # 
-- (\A|ul1|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Selector8~0_combout\,
	datab => \A|ul1|Add0~12_combout\,
	datac => \A|ul1|Add0~11_combout\,
	datad => \A|ul1|Add0~4_combout\,
	combout => \A|ul1|Selector8~1_combout\);

-- Location: LCCOMB_X89_Y12_N6
\A|ul1|Selector8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector8~2_combout\ = (\A|ul1|Selector3~1_combout\ & ((\A|ul1|Selector8~1_combout\) # ((!\A|ul1|Selector8~0_combout\ & !\A|ul1|Equal14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Selector8~0_combout\,
	datab => \A|ul1|Selector3~1_combout\,
	datac => \A|ul1|Equal14~1_combout\,
	datad => \A|ul1|Selector8~1_combout\,
	combout => \A|ul1|Selector8~2_combout\);

-- Location: LCCOMB_X90_Y11_N10
\A|ul1|WideNor0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|WideNor0~2_combout\ = (!\A|ul1|Equal10~0_combout\ & (\A|ul1|WideNor0~1_combout\ & \A|ul1|Selector8~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|Equal10~0_combout\,
	datac => \A|ul1|WideNor0~1_combout\,
	datad => \A|ul1|Selector8~2_combout\,
	combout => \A|ul1|WideNor0~2_combout\);

-- Location: LCCOMB_X89_Y9_N0
\A|ul1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal0~0_combout\ = (!\A|ul1|Add0~11_combout\ & (!\A|ul1|Add0~12_combout\ & \A|ul1|Add0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~11_combout\,
	datab => \A|ul1|Add0~12_combout\,
	datac => \A|ul1|Add0~4_combout\,
	combout => \A|ul1|Equal0~0_combout\);

-- Location: LCCOMB_X89_Y12_N0
\A|ul1|Equal3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal3~2_combout\ = (!\A|ul1|Add0~11_combout\ & (!\A|ul1|Add0~12_combout\ & (\A|ul1|Equal3~1_combout\ & !\A|ul1|Add0~93_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~11_combout\,
	datab => \A|ul1|Add0~12_combout\,
	datac => \A|ul1|Equal3~1_combout\,
	datad => \A|ul1|Add0~93_combout\,
	combout => \A|ul1|Equal3~2_combout\);

-- Location: LCCOMB_X89_Y10_N14
\A|ul1|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector4~0_combout\ = (!\A|ul1|Equal3~2_combout\ & ((!\A|ul1|Equal14~1_combout\) # (!\A|ul1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|Equal0~0_combout\,
	datac => \A|ul1|Equal3~2_combout\,
	datad => \A|ul1|Equal14~1_combout\,
	combout => \A|ul1|Selector4~0_combout\);

-- Location: LCCOMB_X90_Y12_N0
\A|ul1|Equal18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal18~2_combout\ = (\A|ul1|Equal3~1_combout\ & ((\A|ul1|LessThan0~9_combout\ & ((\A|ul1|Add0~13_combout\))) # (!\A|ul1|LessThan0~9_combout\ & (\A|ul1|count\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal3~1_combout\,
	datab => \A|ul1|count\(4),
	datac => \A|ul1|Add0~13_combout\,
	datad => \A|ul1|LessThan0~9_combout\,
	combout => \A|ul1|Equal18~2_combout\);

-- Location: LCCOMB_X89_Y12_N2
\A|ul1|Equal30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal30~0_combout\ = (!\A|ul1|Add0~11_combout\ & (!\A|ul1|Add0~93_combout\ & (!\A|ul1|Add0~94_combout\ & \A|ul1|Add0~95_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~11_combout\,
	datab => \A|ul1|Add0~93_combout\,
	datac => \A|ul1|Add0~94_combout\,
	datad => \A|ul1|Add0~95_combout\,
	combout => \A|ul1|Equal30~0_combout\);

-- Location: LCCOMB_X89_Y12_N12
\A|ul1|Equal30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal30~1_combout\ = (\A|ul1|Equal0~9_combout\ & (\A|ul1|Equal30~0_combout\ & (!\A|ul1|Add0~12_combout\ & !\A|ul1|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal0~9_combout\,
	datab => \A|ul1|Equal30~0_combout\,
	datac => \A|ul1|Add0~12_combout\,
	datad => \A|ul1|Add0~4_combout\,
	combout => \A|ul1|Equal30~1_combout\);

-- Location: LCCOMB_X90_Y12_N12
\A|ul1|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector4~1_combout\ = (!\A|ul1|Equal30~1_combout\ & (((\A|ul1|Add0~4_combout\) # (!\A|ul1|Equal7~5_combout\)) # (!\A|ul1|Equal14~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal14~1_combout\,
	datab => \A|ul1|Equal7~5_combout\,
	datac => \A|ul1|Add0~4_combout\,
	datad => \A|ul1|Equal30~1_combout\,
	combout => \A|ul1|Selector4~1_combout\);

-- Location: LCCOMB_X89_Y10_N8
\A|ul1|Selector4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector4~2_combout\ = (\A|ul1|Selector4~1_combout\ & (((!\A|ul1|Add0~12_combout\) # (!\A|ul1|Add0~11_combout\)) # (!\A|ul1|Equal18~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal18~2_combout\,
	datab => \A|ul1|Add0~11_combout\,
	datac => \A|ul1|Add0~12_combout\,
	datad => \A|ul1|Selector4~1_combout\,
	combout => \A|ul1|Selector4~2_combout\);

-- Location: LCCOMB_X88_Y13_N14
\A|ul1|Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal1~4_combout\ = (!\A|ul1|Add0~11_combout\ & ((\A|ul1|LessThan0~9_combout\ & (\A|ul1|Add0~5_combout\)) # (!\A|ul1|LessThan0~9_combout\ & ((\A|ul1|count\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~5_combout\,
	datab => \A|ul1|count\(1),
	datac => \A|ul1|LessThan0~9_combout\,
	datad => \A|ul1|Add0~11_combout\,
	combout => \A|ul1|Equal1~4_combout\);

-- Location: LCCOMB_X89_Y10_N4
\A|ul1|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector3~0_combout\ = (\A|ul1|Equal1~4_combout\ & (!\A|ul1|Equal18~2_combout\ & ((!\A|ul1|Equal19~0_combout\) # (!\A|ul1|Equal0~0_combout\)))) # (!\A|ul1|Equal1~4_combout\ & (((!\A|ul1|Equal19~0_combout\)) # (!\A|ul1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal1~4_combout\,
	datab => \A|ul1|Equal0~0_combout\,
	datac => \A|ul1|Equal18~2_combout\,
	datad => \A|ul1|Equal19~0_combout\,
	combout => \A|ul1|Selector3~0_combout\);

-- Location: LCCOMB_X90_Y12_N22
\A|ul1|Equal26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal26~0_combout\ = (\A|ul1|Equal3~1_combout\ & (\A|ul1|Equal7~5_combout\ & \A|ul1|Add0~93_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal3~1_combout\,
	datab => \A|ul1|Equal7~5_combout\,
	datad => \A|ul1|Add0~93_combout\,
	combout => \A|ul1|Equal26~0_combout\);

-- Location: LCCOMB_X89_Y12_N22
\A|ul1|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal4~0_combout\ = (!\A|ul1|Add0~95_combout\ & (!\A|ul1|Add0~93_combout\ & (\A|ul1|Add0~94_combout\ & \A|ul1|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~95_combout\,
	datab => \A|ul1|Add0~93_combout\,
	datac => \A|ul1|Add0~94_combout\,
	datad => \A|ul1|Equal0~9_combout\,
	combout => \A|ul1|Equal4~0_combout\);

-- Location: LCCOMB_X90_Y12_N20
\A|ul1|Equal13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal13~0_combout\ = (\A|ul1|Add0~4_combout\ & (\A|ul1|Add0~12_combout\ & \A|ul1|Add0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~4_combout\,
	datab => \A|ul1|Add0~12_combout\,
	datad => \A|ul1|Add0~11_combout\,
	combout => \A|ul1|Equal13~0_combout\);

-- Location: LCCOMB_X90_Y12_N24
\A|ul1|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector6~0_combout\ = (!\A|ul1|Equal26~0_combout\ & (((!\A|ul1|Equal8~0_combout\ & !\A|ul1|Equal13~0_combout\)) # (!\A|ul1|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal26~0_combout\,
	datab => \A|ul1|Equal4~0_combout\,
	datac => \A|ul1|Equal8~0_combout\,
	datad => \A|ul1|Equal13~0_combout\,
	combout => \A|ul1|Selector6~0_combout\);

-- Location: LCCOMB_X90_Y10_N0
\A|ul1|Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector6~1_combout\ = (\A|ul1|Selector4~0_combout\ & (\A|ul1|Selector4~2_combout\ & (\A|ul1|Selector3~0_combout\ & \A|ul1|Selector6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Selector4~0_combout\,
	datab => \A|ul1|Selector4~2_combout\,
	datac => \A|ul1|Selector3~0_combout\,
	datad => \A|ul1|Selector6~0_combout\,
	combout => \A|ul1|Selector6~1_combout\);

-- Location: LCCOMB_X90_Y9_N30
\A|ul1|Equal23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal23~0_combout\ = (!\A|ul1|Add0~12_combout\ & (\A|ul1|Equal14~1_combout\ & (\A|ul1|Add0~11_combout\ & \A|ul1|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~12_combout\,
	datab => \A|ul1|Equal14~1_combout\,
	datac => \A|ul1|Add0~11_combout\,
	datad => \A|ul1|Add0~4_combout\,
	combout => \A|ul1|Equal23~0_combout\);

-- Location: LCCOMB_X90_Y9_N8
\A|ul1|Equal31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal31~0_combout\ = (\A|ul1|Equal0~9_combout\ & (\A|ul1|Equal30~0_combout\ & (!\A|ul1|Add0~12_combout\ & \A|ul1|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal0~9_combout\,
	datab => \A|ul1|Equal30~0_combout\,
	datac => \A|ul1|Add0~12_combout\,
	datad => \A|ul1|Add0~4_combout\,
	combout => \A|ul1|Equal31~0_combout\);

-- Location: LCCOMB_X90_Y9_N2
\A|ul1|Equal32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal32~0_combout\ = (\A|ul1|Equal0~9_combout\ & (\A|ul1|Equal30~0_combout\ & (\A|ul1|Add0~12_combout\ & !\A|ul1|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal0~9_combout\,
	datab => \A|ul1|Equal30~0_combout\,
	datac => \A|ul1|Add0~12_combout\,
	datad => \A|ul1|Add0~4_combout\,
	combout => \A|ul1|Equal32~0_combout\);

-- Location: LCCOMB_X90_Y11_N20
\A|ul1|WideNor0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|WideNor0~3_combout\ = (!\A|ul1|Equal7~4_combout\ & (!\A|ul1|Equal31~0_combout\ & !\A|ul1|Equal32~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|Equal7~4_combout\,
	datac => \A|ul1|Equal31~0_combout\,
	datad => \A|ul1|Equal32~0_combout\,
	combout => \A|ul1|WideNor0~3_combout\);

-- Location: LCCOMB_X90_Y12_N28
\A|ul1|Selector3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector3~2_combout\ = ((\A|ul1|Add0~93_combout\) # (!\A|ul1|Add0~12_combout\)) # (!\A|ul1|Equal3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal3~1_combout\,
	datac => \A|ul1|Add0~12_combout\,
	datad => \A|ul1|Add0~93_combout\,
	combout => \A|ul1|Selector3~2_combout\);

-- Location: LCCOMB_X90_Y9_N28
\A|ul1|Equal33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal33~0_combout\ = (\A|ul1|Equal0~9_combout\ & (\A|ul1|Equal30~0_combout\ & (\A|ul1|Add0~12_combout\ & \A|ul1|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal0~9_combout\,
	datab => \A|ul1|Equal30~0_combout\,
	datac => \A|ul1|Add0~12_combout\,
	datad => \A|ul1|Add0~4_combout\,
	combout => \A|ul1|Equal33~0_combout\);

-- Location: LCCOMB_X89_Y9_N16
\A|ul1|Selector3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector3~3_combout\ = (!\A|ul1|Equal33~0_combout\ & (((!\A|ul1|Equal0~0_combout\ & !\A|ul1|Equal2~0_combout\)) # (!\A|ul1|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal0~0_combout\,
	datab => \A|ul1|Equal4~0_combout\,
	datac => \A|ul1|Equal2~0_combout\,
	datad => \A|ul1|Equal33~0_combout\,
	combout => \A|ul1|Selector3~3_combout\);

-- Location: LCCOMB_X90_Y12_N30
\A|ul1|Selector3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector3~4_combout\ = (\A|ul1|Selector3~2_combout\ & (\A|ul1|Selector3~3_combout\ & ((!\A|ul1|Equal13~0_combout\) # (!\A|ul1|Equal14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal14~1_combout\,
	datab => \A|ul1|Selector3~2_combout\,
	datac => \A|ul1|Selector3~3_combout\,
	datad => \A|ul1|Equal13~0_combout\,
	combout => \A|ul1|Selector3~4_combout\);

-- Location: LCCOMB_X89_Y9_N2
\A|ul1|Equal24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal24~0_combout\ = (\A|ul1|Add0~11_combout\ & (\A|ul1|Equal14~1_combout\ & (!\A|ul1|Add0~4_combout\ & \A|ul1|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~11_combout\,
	datab => \A|ul1|Equal14~1_combout\,
	datac => \A|ul1|Add0~4_combout\,
	datad => \A|ul1|Add0~12_combout\,
	combout => \A|ul1|Equal24~0_combout\);

-- Location: LCCOMB_X90_Y11_N30
\A|ul1|WideNor0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|WideNor0~4_combout\ = (!\A|ul1|Equal23~0_combout\ & (\A|ul1|WideNor0~3_combout\ & (\A|ul1|Selector3~4_combout\ & !\A|ul1|Equal24~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal23~0_combout\,
	datab => \A|ul1|WideNor0~3_combout\,
	datac => \A|ul1|Selector3~4_combout\,
	datad => \A|ul1|Equal24~0_combout\,
	combout => \A|ul1|WideNor0~4_combout\);

-- Location: LCCOMB_X89_Y10_N10
\A|ul1|WideNor0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|WideNor0~0_combout\ = (\A|ul1|Equal0~10_combout\ & (!\A|ul1|Equal0~0_combout\ & ((!\A|ul1|Equal14~1_combout\) # (!\A|ul1|Equal2~0_combout\)))) # (!\A|ul1|Equal0~10_combout\ & (((!\A|ul1|Equal14~1_combout\) # (!\A|ul1|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal0~10_combout\,
	datab => \A|ul1|Equal0~0_combout\,
	datac => \A|ul1|Equal2~0_combout\,
	datad => \A|ul1|Equal14~1_combout\,
	combout => \A|ul1|WideNor0~0_combout\);

-- Location: LCCOMB_X90_Y11_N24
\A|ul1|WideNor0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|WideNor0~combout\ = (((!\A|ul1|WideNor0~0_combout\) # (!\A|ul1|WideNor0~4_combout\)) # (!\A|ul1|Selector6~1_combout\)) # (!\A|ul1|WideNor0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|WideNor0~2_combout\,
	datab => \A|ul1|Selector6~1_combout\,
	datac => \A|ul1|WideNor0~4_combout\,
	datad => \A|ul1|WideNor0~0_combout\,
	combout => \A|ul1|WideNor0~combout\);

-- Location: LCCOMB_X89_Y10_N16
\A|ul1|send_enable~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|send_enable~0_combout\ = (\A|ul1|send_enable~q\) # (\A|ul1|WideNor0~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|ul1|send_enable~q\,
	datad => \A|ul1|WideNor0~combout\,
	combout => \A|ul1|send_enable~0_combout\);

-- Location: LCCOMB_X89_Y10_N28
\A|ul1|send_enable~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|send_enable~1_combout\ = (\A|lc1|busy~q\) # (!\A|df1|q\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|busy~q\,
	datac => \A|df1|q\(21),
	combout => \A|ul1|send_enable~1_combout\);

-- Location: FF_X89_Y10_N17
\A|ul1|send_enable\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ul1|send_enable~0_combout\,
	clrn => \A|ul1|ALT_INV_send_enable~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|send_enable~q\);

-- Location: LCCOMB_X61_Y26_N0
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

-- Location: LCCOMB_X60_Y26_N12
\A|lc1|Selector32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector32~0_combout\ = (\A|lc1|Add0~0_combout\ & \A|lc1|count[24]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|lc1|Add0~0_combout\,
	datad => \A|lc1|count[24]~4_combout\,
	combout => \A|lc1|Selector32~0_combout\);

-- Location: FF_X60_Y26_N13
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

-- Location: LCCOMB_X61_Y26_N2
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

-- Location: LCCOMB_X60_Y26_N2
\A|lc1|Selector31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector31~0_combout\ = (\A|lc1|count[24]~4_combout\ & \A|lc1|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|lc1|count[24]~4_combout\,
	datad => \A|lc1|Add0~2_combout\,
	combout => \A|lc1|Selector31~0_combout\);

-- Location: FF_X60_Y26_N3
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

-- Location: LCCOMB_X61_Y26_N4
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

-- Location: LCCOMB_X62_Y26_N4
\A|lc1|Selector30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector30~0_combout\ = (\A|lc1|Add0~4_combout\ & \A|lc1|count[24]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|lc1|Add0~4_combout\,
	datad => \A|lc1|count[24]~4_combout\,
	combout => \A|lc1|Selector30~0_combout\);

-- Location: FF_X62_Y26_N5
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

-- Location: LCCOMB_X61_Y26_N6
\A|lc1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Add0~6_combout\ = (\A|lc1|count\(3) & (!\A|lc1|Add0~5\)) # (!\A|lc1|count\(3) & ((\A|lc1|Add0~5\) # (GND)))
-- \A|lc1|Add0~7\ = CARRY((!\A|lc1|Add0~5\) # (!\A|lc1|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|count\(3),
	datad => VCC,
	cin => \A|lc1|Add0~5\,
	combout => \A|lc1|Add0~6_combout\,
	cout => \A|lc1|Add0~7\);

-- Location: LCCOMB_X60_Y26_N16
\A|lc1|Selector29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector29~0_combout\ = (\A|lc1|count[24]~4_combout\ & \A|lc1|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|lc1|count[24]~4_combout\,
	datad => \A|lc1|Add0~6_combout\,
	combout => \A|lc1|Selector29~0_combout\);

-- Location: FF_X60_Y26_N17
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

-- Location: LCCOMB_X61_Y26_N8
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

-- Location: LCCOMB_X61_Y27_N24
\A|lc1|Selector28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector28~0_combout\ = (\A|lc1|Add0~8_combout\ & \A|lc1|count[24]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|lc1|Add0~8_combout\,
	datac => \A|lc1|count[24]~4_combout\,
	combout => \A|lc1|Selector28~0_combout\);

-- Location: FF_X61_Y27_N25
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

-- Location: LCCOMB_X61_Y26_N10
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

-- Location: LCCOMB_X61_Y27_N30
\A|lc1|Selector27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector27~0_combout\ = (\A|lc1|count[24]~4_combout\ & \A|lc1|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|count[24]~4_combout\,
	datac => \A|lc1|Add0~10_combout\,
	combout => \A|lc1|Selector27~0_combout\);

-- Location: FF_X61_Y27_N31
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

-- Location: LCCOMB_X61_Y26_N12
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

-- Location: LCCOMB_X61_Y27_N4
\A|lc1|Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector26~0_combout\ = (\A|lc1|count[24]~4_combout\ & \A|lc1|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|count[24]~4_combout\,
	datac => \A|lc1|Add0~12_combout\,
	combout => \A|lc1|Selector26~0_combout\);

-- Location: FF_X61_Y27_N5
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

-- Location: LCCOMB_X61_Y26_N14
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

-- Location: LCCOMB_X62_Y26_N2
\A|lc1|Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector25~0_combout\ = (\A|lc1|count[24]~4_combout\ & \A|lc1|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|count[24]~4_combout\,
	datad => \A|lc1|Add0~14_combout\,
	combout => \A|lc1|Selector25~0_combout\);

-- Location: FF_X62_Y26_N3
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

-- Location: LCCOMB_X61_Y26_N16
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

-- Location: LCCOMB_X61_Y27_N26
\A|lc1|Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector24~0_combout\ = (\A|lc1|count[24]~4_combout\ & \A|lc1|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|lc1|count[24]~4_combout\,
	datad => \A|lc1|Add0~16_combout\,
	combout => \A|lc1|Selector24~0_combout\);

-- Location: FF_X61_Y27_N27
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

-- Location: LCCOMB_X61_Y26_N18
\A|lc1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Add0~18_combout\ = (\A|lc1|count\(9) & (!\A|lc1|Add0~17\)) # (!\A|lc1|count\(9) & ((\A|lc1|Add0~17\) # (GND)))
-- \A|lc1|Add0~19\ = CARRY((!\A|lc1|Add0~17\) # (!\A|lc1|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|lc1|count\(9),
	datad => VCC,
	cin => \A|lc1|Add0~17\,
	combout => \A|lc1|Add0~18_combout\,
	cout => \A|lc1|Add0~19\);

-- Location: LCCOMB_X61_Y27_N0
\A|lc1|Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector23~0_combout\ = (\A|lc1|count[24]~4_combout\ & \A|lc1|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|lc1|count[24]~4_combout\,
	datad => \A|lc1|Add0~18_combout\,
	combout => \A|lc1|Selector23~0_combout\);

-- Location: FF_X61_Y27_N1
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

-- Location: LCCOMB_X61_Y26_N20
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

-- Location: LCCOMB_X61_Y27_N14
\A|lc1|Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector22~0_combout\ = (\A|lc1|Add0~20_combout\ & \A|lc1|count[24]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|lc1|Add0~20_combout\,
	datac => \A|lc1|count[24]~4_combout\,
	combout => \A|lc1|Selector22~0_combout\);

-- Location: FF_X61_Y27_N15
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

-- Location: LCCOMB_X61_Y26_N22
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

-- Location: LCCOMB_X61_Y27_N20
\A|lc1|Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector21~0_combout\ = (\A|lc1|Add0~22_combout\ & \A|lc1|count[24]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Add0~22_combout\,
	datac => \A|lc1|count[24]~4_combout\,
	combout => \A|lc1|Selector21~0_combout\);

-- Location: FF_X61_Y27_N21
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

-- Location: LCCOMB_X61_Y26_N24
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

-- Location: LCCOMB_X61_Y27_N10
\A|lc1|Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector20~0_combout\ = (\A|lc1|Add0~24_combout\ & \A|lc1|count[24]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|lc1|Add0~24_combout\,
	datac => \A|lc1|count[24]~4_combout\,
	combout => \A|lc1|Selector20~0_combout\);

-- Location: FF_X61_Y27_N11
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

-- Location: LCCOMB_X61_Y26_N26
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

-- Location: LCCOMB_X61_Y27_N8
\A|lc1|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector19~0_combout\ = (\A|lc1|Add0~26_combout\ & \A|lc1|count[24]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|lc1|Add0~26_combout\,
	datac => \A|lc1|count[24]~4_combout\,
	combout => \A|lc1|Selector19~0_combout\);

-- Location: FF_X61_Y27_N9
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

-- Location: LCCOMB_X61_Y26_N28
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

-- Location: LCCOMB_X62_Y25_N14
\A|lc1|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector18~0_combout\ = (\A|lc1|Add0~28_combout\ & \A|lc1|count[24]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|lc1|Add0~28_combout\,
	datad => \A|lc1|count[24]~4_combout\,
	combout => \A|lc1|Selector18~0_combout\);

-- Location: FF_X62_Y25_N15
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

-- Location: LCCOMB_X61_Y26_N30
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

-- Location: LCCOMB_X62_Y26_N16
\A|lc1|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector17~0_combout\ = (\A|lc1|count[24]~4_combout\ & \A|lc1|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|count[24]~4_combout\,
	datad => \A|lc1|Add0~30_combout\,
	combout => \A|lc1|Selector17~0_combout\);

-- Location: FF_X62_Y26_N17
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

-- Location: LCCOMB_X61_Y25_N0
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

-- Location: LCCOMB_X62_Y25_N28
\A|lc1|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector16~0_combout\ = (\A|lc1|Add0~32_combout\ & \A|lc1|count[24]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|lc1|Add0~32_combout\,
	datad => \A|lc1|count[24]~4_combout\,
	combout => \A|lc1|Selector16~0_combout\);

-- Location: FF_X62_Y25_N29
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

-- Location: LCCOMB_X61_Y25_N2
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

-- Location: LCCOMB_X62_Y25_N2
\A|lc1|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector15~0_combout\ = (\A|lc1|count[24]~4_combout\ & \A|lc1|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|lc1|count[24]~4_combout\,
	datad => \A|lc1|Add0~34_combout\,
	combout => \A|lc1|Selector15~0_combout\);

-- Location: FF_X62_Y25_N3
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

-- Location: LCCOMB_X61_Y25_N4
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

-- Location: LCCOMB_X62_Y25_N8
\A|lc1|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector14~0_combout\ = (\A|lc1|Add0~36_combout\ & \A|lc1|count[24]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|lc1|Add0~36_combout\,
	datad => \A|lc1|count[24]~4_combout\,
	combout => \A|lc1|Selector14~0_combout\);

-- Location: FF_X62_Y25_N9
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

-- Location: LCCOMB_X61_Y25_N6
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

-- Location: LCCOMB_X62_Y25_N6
\A|lc1|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector13~0_combout\ = (\A|lc1|Add0~38_combout\ & \A|lc1|count[24]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|lc1|Add0~38_combout\,
	datad => \A|lc1|count[24]~4_combout\,
	combout => \A|lc1|Selector13~0_combout\);

-- Location: FF_X62_Y25_N7
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

-- Location: LCCOMB_X61_Y25_N8
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

-- Location: LCCOMB_X62_Y25_N20
\A|lc1|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector12~0_combout\ = (\A|lc1|count[24]~4_combout\ & \A|lc1|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|lc1|count[24]~4_combout\,
	datad => \A|lc1|Add0~40_combout\,
	combout => \A|lc1|Selector12~0_combout\);

-- Location: FF_X62_Y25_N21
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

-- Location: LCCOMB_X61_Y25_N10
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

-- Location: LCCOMB_X60_Y25_N14
\A|lc1|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector11~0_combout\ = (\A|lc1|count[24]~4_combout\ & \A|lc1|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|count[24]~4_combout\,
	datac => \A|lc1|Add0~42_combout\,
	combout => \A|lc1|Selector11~0_combout\);

-- Location: FF_X60_Y25_N15
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

-- Location: LCCOMB_X61_Y25_N12
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

-- Location: LCCOMB_X60_Y25_N12
\A|lc1|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector10~0_combout\ = (\A|lc1|count[24]~4_combout\ & \A|lc1|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|count[24]~4_combout\,
	datac => \A|lc1|Add0~44_combout\,
	combout => \A|lc1|Selector10~0_combout\);

-- Location: FF_X60_Y25_N13
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

-- Location: LCCOMB_X61_Y25_N14
\A|lc1|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Add0~46_combout\ = (\A|lc1|count\(23) & (!\A|lc1|Add0~45\)) # (!\A|lc1|count\(23) & ((\A|lc1|Add0~45\) # (GND)))
-- \A|lc1|Add0~47\ = CARRY((!\A|lc1|Add0~45\) # (!\A|lc1|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|count\(23),
	datad => VCC,
	cin => \A|lc1|Add0~45\,
	combout => \A|lc1|Add0~46_combout\,
	cout => \A|lc1|Add0~47\);

-- Location: LCCOMB_X60_Y25_N26
\A|lc1|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector9~0_combout\ = (\A|lc1|count[24]~4_combout\ & \A|lc1|Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|count[24]~4_combout\,
	datac => \A|lc1|Add0~46_combout\,
	combout => \A|lc1|Selector9~0_combout\);

-- Location: FF_X60_Y25_N27
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

-- Location: LCCOMB_X61_Y25_N16
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

-- Location: LCCOMB_X60_Y25_N0
\A|lc1|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector8~0_combout\ = (\A|lc1|count[24]~4_combout\ & \A|lc1|Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|lc1|count[24]~4_combout\,
	datad => \A|lc1|Add0~48_combout\,
	combout => \A|lc1|Selector8~0_combout\);

-- Location: FF_X60_Y25_N1
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

-- Location: LCCOMB_X61_Y25_N18
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

-- Location: LCCOMB_X62_Y25_N18
\A|lc1|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector7~0_combout\ = (\A|lc1|count[24]~4_combout\ & \A|lc1|Add0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|lc1|count[24]~4_combout\,
	datad => \A|lc1|Add0~50_combout\,
	combout => \A|lc1|Selector7~0_combout\);

-- Location: FF_X62_Y25_N19
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

-- Location: LCCOMB_X61_Y25_N20
\A|lc1|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Add0~52_combout\ = (\A|lc1|count\(26) & (\A|lc1|Add0~51\ $ (GND))) # (!\A|lc1|count\(26) & (!\A|lc1|Add0~51\ & VCC))
-- \A|lc1|Add0~53\ = CARRY((\A|lc1|count\(26) & !\A|lc1|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|lc1|count\(26),
	datad => VCC,
	cin => \A|lc1|Add0~51\,
	combout => \A|lc1|Add0~52_combout\,
	cout => \A|lc1|Add0~53\);

-- Location: LCCOMB_X62_Y25_N24
\A|lc1|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector6~0_combout\ = (\A|lc1|count[24]~4_combout\ & \A|lc1|Add0~52_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|lc1|count[24]~4_combout\,
	datac => \A|lc1|Add0~52_combout\,
	combout => \A|lc1|Selector6~0_combout\);

-- Location: FF_X62_Y25_N25
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

-- Location: LCCOMB_X61_Y25_N22
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

-- Location: LCCOMB_X60_Y25_N22
\A|lc1|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector5~0_combout\ = (\A|lc1|count[24]~4_combout\ & \A|lc1|Add0~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|lc1|count[24]~4_combout\,
	datad => \A|lc1|Add0~54_combout\,
	combout => \A|lc1|Selector5~0_combout\);

-- Location: FF_X60_Y25_N23
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

-- Location: LCCOMB_X61_Y25_N24
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

-- Location: LCCOMB_X60_Y25_N20
\A|lc1|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector4~0_combout\ = (\A|lc1|Add0~56_combout\ & \A|lc1|count[24]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Add0~56_combout\,
	datac => \A|lc1|count[24]~4_combout\,
	combout => \A|lc1|Selector4~0_combout\);

-- Location: FF_X60_Y25_N21
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

-- Location: LCCOMB_X61_Y25_N26
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

-- Location: LCCOMB_X60_Y25_N18
\A|lc1|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector3~0_combout\ = (\A|lc1|Add0~58_combout\ & \A|lc1|count[24]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|lc1|Add0~58_combout\,
	datac => \A|lc1|count[24]~4_combout\,
	combout => \A|lc1|Selector3~0_combout\);

-- Location: FF_X60_Y25_N19
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

-- Location: LCCOMB_X60_Y25_N24
\A|lc1|LessThan9~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan9~8_combout\ = (!\A|lc1|count\(29) & (!\A|lc1|count\(28) & (!\A|lc1|count\(27) & !\A|lc1|count\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|count\(29),
	datab => \A|lc1|count\(28),
	datac => \A|lc1|count\(27),
	datad => \A|lc1|count\(30),
	combout => \A|lc1|LessThan9~8_combout\);

-- Location: LCCOMB_X62_Y25_N30
\A|lc1|LessThan9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan9~2_combout\ = (!\A|lc1|count\(13) & (!\A|lc1|count\(17) & (!\A|lc1|count\(20) & !\A|lc1|count\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|count\(13),
	datab => \A|lc1|count\(17),
	datac => \A|lc1|count\(20),
	datad => \A|lc1|count\(19),
	combout => \A|lc1|LessThan9~2_combout\);

-- Location: LCCOMB_X60_Y25_N28
\A|lc1|LessThan9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan9~0_combout\ = (!\A|lc1|count\(22) & (!\A|lc1|count\(24) & (!\A|lc1|count\(23) & !\A|lc1|count\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|count\(22),
	datab => \A|lc1|count\(24),
	datac => \A|lc1|count\(23),
	datad => \A|lc1|count\(25),
	combout => \A|lc1|LessThan9~0_combout\);

-- Location: LCCOMB_X60_Y25_N30
\A|lc1|LessThan9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan9~1_combout\ = (\A|lc1|LessThan9~0_combout\ & !\A|lc1|count\(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|lc1|LessThan9~0_combout\,
	datad => \A|lc1|count\(26),
	combout => \A|lc1|LessThan9~1_combout\);

-- Location: LCCOMB_X62_Y25_N12
\A|lc1|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan0~0_combout\ = (!\A|lc1|count\(16) & (!\A|lc1|count\(14) & !\A|lc1|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|lc1|count\(16),
	datac => \A|lc1|count\(14),
	datad => \A|lc1|count\(15),
	combout => \A|lc1|LessThan0~0_combout\);

-- Location: LCCOMB_X62_Y25_N0
\A|lc1|LessThan9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan9~3_combout\ = (\A|lc1|LessThan9~2_combout\ & (!\A|lc1|count\(12) & (\A|lc1|LessThan9~1_combout\ & \A|lc1|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|LessThan9~2_combout\,
	datab => \A|lc1|count\(12),
	datac => \A|lc1|LessThan9~1_combout\,
	datad => \A|lc1|LessThan0~0_combout\,
	combout => \A|lc1|LessThan9~3_combout\);

-- Location: LCCOMB_X61_Y27_N6
\A|lc1|LessThan9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan9~4_combout\ = (!\A|lc1|count\(21) & (\A|lc1|LessThan9~3_combout\ & !\A|lc1|count\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|count\(21),
	datac => \A|lc1|LessThan9~3_combout\,
	datad => \A|lc1|count\(18),
	combout => \A|lc1|LessThan9~4_combout\);

-- Location: LCCOMB_X60_Y27_N0
\A|lc1|LessThan9~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan9~5_combout\ = (!\A|lc1|count\(3) & (!\A|lc1|count\(4) & (!\A|lc1|count\(2) & !\A|lc1|count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|count\(3),
	datab => \A|lc1|count\(4),
	datac => \A|lc1|count\(2),
	datad => \A|lc1|count\(5),
	combout => \A|lc1|LessThan9~5_combout\);

-- Location: LCCOMB_X60_Y27_N2
\A|lc1|LessThan9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan9~6_combout\ = (((\A|lc1|LessThan9~5_combout\) # (!\A|lc1|count\(6))) # (!\A|lc1|count\(7))) # (!\A|lc1|count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|count\(8),
	datab => \A|lc1|count\(7),
	datac => \A|lc1|LessThan9~5_combout\,
	datad => \A|lc1|count\(6),
	combout => \A|lc1|LessThan9~6_combout\);

-- Location: LCCOMB_X61_Y27_N18
\A|lc1|LessThan9~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan9~7_combout\ = ((\A|lc1|LessThan9~6_combout\ & (!\A|lc1|count\(9) & !\A|lc1|count\(10)))) # (!\A|lc1|count\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|LessThan9~6_combout\,
	datab => \A|lc1|count\(9),
	datac => \A|lc1|count\(10),
	datad => \A|lc1|count\(11),
	combout => \A|lc1|LessThan9~7_combout\);

-- Location: LCCOMB_X61_Y25_N28
\A|lc1|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Add0~60_combout\ = (\A|lc1|count\(30) & (\A|lc1|Add0~59\ $ (GND))) # (!\A|lc1|count\(30) & (!\A|lc1|Add0~59\ & VCC))
-- \A|lc1|Add0~61\ = CARRY((\A|lc1|count\(30) & !\A|lc1|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|count\(30),
	datad => VCC,
	cin => \A|lc1|Add0~59\,
	combout => \A|lc1|Add0~60_combout\,
	cout => \A|lc1|Add0~61\);

-- Location: LCCOMB_X61_Y25_N30
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

-- Location: LCCOMB_X60_Y25_N10
\A|lc1|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector1~0_combout\ = (\A|lc1|count[24]~4_combout\ & \A|lc1|Add0~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|count[24]~4_combout\,
	datad => \A|lc1|Add0~62_combout\,
	combout => \A|lc1|Selector1~0_combout\);

-- Location: FF_X60_Y25_N11
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

-- Location: LCCOMB_X60_Y26_N30
\A|lc1|count[24]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|count[24]~5_combout\ = (\A|lc1|count\(31)) # ((\A|lc1|LessThan9~8_combout\ & (\A|lc1|LessThan9~4_combout\ & \A|lc1|LessThan9~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|LessThan9~8_combout\,
	datab => \A|lc1|LessThan9~4_combout\,
	datac => \A|lc1|LessThan9~7_combout\,
	datad => \A|lc1|count\(31),
	combout => \A|lc1|count[24]~5_combout\);

-- Location: LCCOMB_X61_Y24_N20
\A|lc1|LessThan6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan6~1_combout\ = (!\A|lc1|Add0~28_combout\ & !\A|lc1|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|lc1|Add0~28_combout\,
	datad => \A|lc1|Add0~26_combout\,
	combout => \A|lc1|LessThan6~1_combout\);

-- Location: LCCOMB_X62_Y25_N10
\A|lc1|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan1~2_combout\ = (!\A|lc1|Add0~54_combout\ & (!\A|lc1|Add0~50_combout\ & (!\A|lc1|Add0~52_combout\ & !\A|lc1|Add0~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Add0~54_combout\,
	datab => \A|lc1|Add0~50_combout\,
	datac => \A|lc1|Add0~52_combout\,
	datad => \A|lc1|Add0~56_combout\,
	combout => \A|lc1|LessThan1~2_combout\);

-- Location: LCCOMB_X60_Y25_N8
\A|lc1|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan1~1_combout\ = (!\A|lc1|Add0~42_combout\ & (!\A|lc1|Add0~44_combout\ & (!\A|lc1|Add0~46_combout\ & !\A|lc1|Add0~48_combout\)))

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
	combout => \A|lc1|LessThan1~1_combout\);

-- Location: LCCOMB_X62_Y25_N16
\A|lc1|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan1~0_combout\ = (!\A|lc1|Add0~40_combout\ & (!\A|lc1|Add0~38_combout\ & (!\A|lc1|Add0~36_combout\ & !\A|lc1|Add0~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Add0~40_combout\,
	datab => \A|lc1|Add0~38_combout\,
	datac => \A|lc1|Add0~36_combout\,
	datad => \A|lc1|Add0~34_combout\,
	combout => \A|lc1|LessThan1~0_combout\);

-- Location: LCCOMB_X61_Y24_N0
\A|lc1|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan1~3_combout\ = (\A|lc1|LessThan1~2_combout\ & (!\A|lc1|Add0~58_combout\ & (\A|lc1|LessThan1~1_combout\ & \A|lc1|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|LessThan1~2_combout\,
	datab => \A|lc1|Add0~58_combout\,
	datac => \A|lc1|LessThan1~1_combout\,
	datad => \A|lc1|LessThan1~0_combout\,
	combout => \A|lc1|LessThan1~3_combout\);

-- Location: LCCOMB_X61_Y24_N14
\A|lc1|LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan1~5_combout\ = (\A|lc1|LessThan6~1_combout\ & (\A|lc1|LessThan1~3_combout\ & (!\A|lc1|Add0~32_combout\ & !\A|lc1|Add0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|LessThan6~1_combout\,
	datab => \A|lc1|LessThan1~3_combout\,
	datac => \A|lc1|Add0~32_combout\,
	datad => \A|lc1|Add0~30_combout\,
	combout => \A|lc1|LessThan1~5_combout\);

-- Location: LCCOMB_X62_Y24_N10
\A|lc1|LessThan6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan6~2_combout\ = (!\A|lc1|Add0~8_combout\ & (!\A|lc1|Add0~4_combout\ & !\A|lc1|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Add0~8_combout\,
	datab => \A|lc1|Add0~4_combout\,
	datad => \A|lc1|Add0~6_combout\,
	combout => \A|lc1|LessThan6~2_combout\);

-- Location: LCCOMB_X62_Y24_N4
\A|lc1|LessThan5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan5~0_combout\ = (!\A|lc1|Add0~14_combout\ & ((\A|lc1|LessThan6~2_combout\) # ((!\A|lc1|Add0~12_combout\) # (!\A|lc1|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|LessThan6~2_combout\,
	datab => \A|lc1|Add0~10_combout\,
	datac => \A|lc1|Add0~12_combout\,
	datad => \A|lc1|Add0~14_combout\,
	combout => \A|lc1|LessThan5~0_combout\);

-- Location: LCCOMB_X62_Y24_N6
\A|lc1|LessThan5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan5~1_combout\ = (!\A|lc1|Add0~20_combout\ & (!\A|lc1|Add0~18_combout\ & ((\A|lc1|LessThan5~0_combout\) # (!\A|lc1|Add0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Add0~16_combout\,
	datab => \A|lc1|Add0~20_combout\,
	datac => \A|lc1|Add0~18_combout\,
	datad => \A|lc1|LessThan5~0_combout\,
	combout => \A|lc1|LessThan5~1_combout\);

-- Location: LCCOMB_X61_Y24_N24
\A|lc1|LessThan5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan5~2_combout\ = (\A|lc1|LessThan1~5_combout\ & (((\A|lc1|LessThan5~1_combout\) # (!\A|lc1|Add0~22_combout\)) # (!\A|lc1|Add0~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Add0~24_combout\,
	datab => \A|lc1|LessThan1~5_combout\,
	datac => \A|lc1|Add0~22_combout\,
	datad => \A|lc1|LessThan5~1_combout\,
	combout => \A|lc1|LessThan5~2_combout\);

-- Location: LCCOMB_X62_Y24_N28
\A|lc1|LessThan4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan4~0_combout\ = (!\A|lc1|Add0~14_combout\ & (((!\A|lc1|Add0~8_combout\) # (!\A|lc1|Add0~10_combout\)) # (!\A|lc1|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Add0~12_combout\,
	datab => \A|lc1|Add0~10_combout\,
	datac => \A|lc1|Add0~8_combout\,
	datad => \A|lc1|Add0~14_combout\,
	combout => \A|lc1|LessThan4~0_combout\);

-- Location: LCCOMB_X62_Y24_N14
\A|lc1|LessThan4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan4~1_combout\ = (((\A|lc1|LessThan4~0_combout\) # (!\A|lc1|Add0~18_combout\)) # (!\A|lc1|Add0~20_combout\)) # (!\A|lc1|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Add0~16_combout\,
	datab => \A|lc1|Add0~20_combout\,
	datac => \A|lc1|Add0~18_combout\,
	datad => \A|lc1|LessThan4~0_combout\,
	combout => \A|lc1|LessThan4~1_combout\);

-- Location: LCCOMB_X61_Y24_N4
\A|lc1|LessThan4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan4~2_combout\ = (\A|lc1|LessThan1~5_combout\ & (((!\A|lc1|Add0~22_combout\ & \A|lc1|LessThan4~1_combout\)) # (!\A|lc1|Add0~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Add0~24_combout\,
	datab => \A|lc1|LessThan1~5_combout\,
	datac => \A|lc1|Add0~22_combout\,
	datad => \A|lc1|LessThan4~1_combout\,
	combout => \A|lc1|LessThan4~2_combout\);

-- Location: LCCOMB_X60_Y24_N16
\A|lc1|Selector44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector44~0_combout\ = (\A|lc1|Add0~60_combout\) # ((!\A|lc1|LessThan5~2_combout\ & !\A|lc1|LessThan4~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|lc1|LessThan5~2_combout\,
	datac => \A|lc1|Add0~60_combout\,
	datad => \A|lc1|LessThan4~2_combout\,
	combout => \A|lc1|Selector44~0_combout\);

-- Location: LCCOMB_X62_Y24_N16
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

-- Location: LCCOMB_X62_Y24_N0
\A|lc1|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan2~0_combout\ = (!\A|lc1|Add0~12_combout\ & (((!\A|lc1|Add0~10_combout\) # (!\A|lc1|Add0~6_combout\)) # (!\A|lc1|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Add0~8_combout\,
	datab => \A|lc1|Add0~6_combout\,
	datac => \A|lc1|Add0~12_combout\,
	datad => \A|lc1|Add0~10_combout\,
	combout => \A|lc1|LessThan2~0_combout\);

-- Location: LCCOMB_X62_Y24_N18
\A|lc1|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan2~1_combout\ = (!\A|lc1|Add0~20_combout\ & (((\A|lc1|LessThan2~0_combout\) # (!\A|lc1|LessThan8~0_combout\)) # (!\A|lc1|Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Add0~18_combout\,
	datab => \A|lc1|LessThan8~0_combout\,
	datac => \A|lc1|Add0~20_combout\,
	datad => \A|lc1|LessThan2~0_combout\,
	combout => \A|lc1|LessThan2~1_combout\);

-- Location: LCCOMB_X61_Y24_N26
\A|lc1|LessThan2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan2~2_combout\ = (!\A|lc1|Add0~24_combout\ & (\A|lc1|LessThan1~5_combout\ & ((\A|lc1|LessThan2~1_combout\) # (!\A|lc1|Add0~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Add0~24_combout\,
	datab => \A|lc1|LessThan1~5_combout\,
	datac => \A|lc1|Add0~22_combout\,
	datad => \A|lc1|LessThan2~1_combout\,
	combout => \A|lc1|LessThan2~2_combout\);

-- Location: LCCOMB_X61_Y27_N12
\A|lc1|LessThan6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan6~6_combout\ = (!\A|lc1|Add0~6_combout\ & !\A|lc1|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|lc1|Add0~6_combout\,
	datad => \A|lc1|Add0~4_combout\,
	combout => \A|lc1|LessThan6~6_combout\);

-- Location: LCCOMB_X61_Y27_N2
\A|lc1|LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan1~4_combout\ = (!\A|lc1|Add0~22_combout\ & (!\A|lc1|Add0~20_combout\ & (!\A|lc1|Add0~24_combout\ & !\A|lc1|Add0~18_combout\)))

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
	combout => \A|lc1|LessThan1~4_combout\);

-- Location: LCCOMB_X62_Y24_N26
\A|lc1|LessThan7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan7~0_combout\ = (\A|lc1|Add0~12_combout\ & (\A|lc1|Add0~10_combout\ & (\A|lc1|Add0~8_combout\ & \A|lc1|LessThan8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Add0~12_combout\,
	datab => \A|lc1|Add0~10_combout\,
	datac => \A|lc1|Add0~8_combout\,
	datad => \A|lc1|LessThan8~0_combout\,
	combout => \A|lc1|LessThan7~0_combout\);

-- Location: LCCOMB_X61_Y24_N18
\A|lc1|LessThan1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan1~6_combout\ = (\A|lc1|LessThan1~4_combout\ & (\A|lc1|LessThan1~5_combout\ & ((\A|lc1|LessThan6~6_combout\) # (!\A|lc1|LessThan7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|LessThan6~6_combout\,
	datab => \A|lc1|LessThan1~4_combout\,
	datac => \A|lc1|LessThan1~5_combout\,
	datad => \A|lc1|LessThan7~0_combout\,
	combout => \A|lc1|LessThan1~6_combout\);

-- Location: LCCOMB_X60_Y24_N2
\A|lc1|count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|count~2_combout\ = ((!\A|lc1|Add0~60_combout\ & ((\A|lc1|LessThan2~2_combout\) # (\A|lc1|LessThan1~6_combout\)))) # (!\A|lc1|Selector44~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Add0~60_combout\,
	datab => \A|lc1|Selector44~0_combout\,
	datac => \A|lc1|LessThan2~2_combout\,
	datad => \A|lc1|LessThan1~6_combout\,
	combout => \A|lc1|count~2_combout\);

-- Location: LCCOMB_X60_Y26_N28
\A|lc1|Selector34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector34~0_combout\ = (!\A|lc1|count\(31) & (((!\A|lc1|LessThan9~7_combout\) # (!\A|lc1|LessThan9~4_combout\)) # (!\A|lc1|LessThan9~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|LessThan9~8_combout\,
	datab => \A|lc1|LessThan9~4_combout\,
	datac => \A|lc1|LessThan9~7_combout\,
	datad => \A|lc1|count\(31),
	combout => \A|lc1|Selector34~0_combout\);

-- Location: LCCOMB_X60_Y26_N4
\A|lc1|Selector34~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector34~4_combout\ = ((\A|lc1|Selector34~0_combout\ & \A|lc1|state.send~q\)) # (!\A|lc1|Selector34~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|lc1|Selector34~0_combout\,
	datac => \A|lc1|Selector34~3_combout\,
	datad => \A|lc1|state.send~q\,
	combout => \A|lc1|Selector34~4_combout\);

-- Location: FF_X60_Y26_N5
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

-- Location: LCCOMB_X60_Y26_N8
\A|lc1|Selector35~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector35~3_combout\ = (\A|ul1|send_enable~q\ & ((\A|lc1|state.ready~q\) # ((\A|lc1|state.send~q\ & !\A|lc1|Selector34~0_combout\)))) # (!\A|ul1|send_enable~q\ & (((\A|lc1|state.send~q\ & !\A|lc1|Selector34~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|send_enable~q\,
	datab => \A|lc1|state.ready~q\,
	datac => \A|lc1|state.send~q\,
	datad => \A|lc1|Selector34~0_combout\,
	combout => \A|lc1|Selector35~3_combout\);

-- Location: FF_X60_Y26_N9
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

-- Location: LCCOMB_X60_Y26_N6
\A|lc1|count[24]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|count[24]~3_combout\ = (\A|lc1|state.send~q\ & (!\A|lc1|count[24]~5_combout\)) # (!\A|lc1|state.send~q\ & (((!\A|lc1|count~2_combout\ & \A|lc1|Selector34~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|count[24]~5_combout\,
	datab => \A|lc1|count~2_combout\,
	datac => \A|lc1|Selector34~2_combout\,
	datad => \A|lc1|state.send~q\,
	combout => \A|lc1|count[24]~3_combout\);

-- Location: LCCOMB_X60_Y27_N18
\A|lc1|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan0~1_combout\ = (((!\A|lc1|count\(6) & !\A|lc1|count\(5))) # (!\A|lc1|count\(7))) # (!\A|lc1|count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|count\(6),
	datab => \A|lc1|count\(5),
	datac => \A|lc1|count\(8),
	datad => \A|lc1|count\(7),
	combout => \A|lc1|LessThan0~1_combout\);

-- Location: LCCOMB_X60_Y27_N12
\A|lc1|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan0~2_combout\ = ((!\A|lc1|count\(9) & \A|lc1|LessThan0~1_combout\)) # (!\A|lc1|count\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|lc1|count\(10),
	datac => \A|lc1|count\(9),
	datad => \A|lc1|LessThan0~1_combout\,
	combout => \A|lc1|LessThan0~2_combout\);

-- Location: LCCOMB_X61_Y27_N22
\A|lc1|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan0~3_combout\ = ((!\A|lc1|count\(12) & (!\A|lc1|count\(11) & \A|lc1|LessThan0~2_combout\))) # (!\A|lc1|count\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|count\(12),
	datab => \A|lc1|count\(11),
	datac => \A|lc1|count\(13),
	datad => \A|lc1|LessThan0~2_combout\,
	combout => \A|lc1|LessThan0~3_combout\);

-- Location: LCCOMB_X62_Y25_N26
\A|lc1|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan0~4_combout\ = (((\A|lc1|LessThan0~3_combout\ & \A|lc1|LessThan0~0_combout\)) # (!\A|lc1|count\(18))) # (!\A|lc1|count\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|LessThan0~3_combout\,
	datab => \A|lc1|count\(17),
	datac => \A|lc1|count\(18),
	datad => \A|lc1|LessThan0~0_combout\,
	combout => \A|lc1|LessThan0~4_combout\);

-- Location: LCCOMB_X62_Y25_N4
\A|lc1|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan0~5_combout\ = ((\A|lc1|LessThan0~4_combout\ & (!\A|lc1|count\(20) & !\A|lc1|count\(19)))) # (!\A|lc1|count\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|LessThan0~4_combout\,
	datab => \A|lc1|count\(20),
	datac => \A|lc1|count\(21),
	datad => \A|lc1|count\(19),
	combout => \A|lc1|LessThan0~5_combout\);

-- Location: LCCOMB_X60_Y25_N2
\A|lc1|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan0~6_combout\ = (\A|lc1|count\(31)) # ((\A|lc1|LessThan9~8_combout\ & (\A|lc1|LessThan9~1_combout\ & \A|lc1|LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|count\(31),
	datab => \A|lc1|LessThan9~8_combout\,
	datac => \A|lc1|LessThan9~1_combout\,
	datad => \A|lc1|LessThan0~5_combout\,
	combout => \A|lc1|LessThan0~6_combout\);

-- Location: LCCOMB_X60_Y26_N24
\A|lc1|state~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|state~6_combout\ = (\psw[0]~input_o\ & ((\A|lc1|state.power~q\) # (!\A|lc1|LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \psw[0]~input_o\,
	datac => \A|lc1|state.power~q\,
	datad => \A|lc1|LessThan0~6_combout\,
	combout => \A|lc1|state~6_combout\);

-- Location: FF_X60_Y26_N25
\A|lc1|state.power\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|lc1|state~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|state.power~q\);

-- Location: LCCOMB_X60_Y26_N0
\A|lc1|count[24]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|count[24]~4_combout\ = (!\A|lc1|state.ready~q\ & ((\A|lc1|state.power~q\ & (!\A|lc1|count[24]~3_combout\)) # (!\A|lc1|state.power~q\ & ((\A|lc1|LessThan0~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|count[24]~3_combout\,
	datab => \A|lc1|LessThan0~6_combout\,
	datac => \A|lc1|state.ready~q\,
	datad => \A|lc1|state.power~q\,
	combout => \A|lc1|count[24]~4_combout\);

-- Location: LCCOMB_X60_Y25_N16
\A|lc1|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector2~0_combout\ = (\A|lc1|Add0~60_combout\ & \A|lc1|count[24]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|lc1|Add0~60_combout\,
	datac => \A|lc1|count[24]~4_combout\,
	combout => \A|lc1|Selector2~0_combout\);

-- Location: FF_X60_Y25_N17
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

-- Location: LCCOMB_X61_Y24_N28
\A|lc1|LessThan6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan6~0_combout\ = (\A|lc1|Add0~32_combout\ & (\A|lc1|Add0~30_combout\ & ((\A|lc1|Add0~26_combout\) # (\A|lc1|Add0~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Add0~26_combout\,
	datab => \A|lc1|Add0~28_combout\,
	datac => \A|lc1|Add0~32_combout\,
	datad => \A|lc1|Add0~30_combout\,
	combout => \A|lc1|LessThan6~0_combout\);

-- Location: LCCOMB_X61_Y24_N2
\A|lc1|LessThan7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan7~1_combout\ = (!\A|lc1|Add0~28_combout\ & (\A|lc1|LessThan1~4_combout\ & ((!\A|lc1|LessThan7~0_combout\) # (!\A|lc1|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Add0~6_combout\,
	datab => \A|lc1|Add0~28_combout\,
	datac => \A|lc1|LessThan1~4_combout\,
	datad => \A|lc1|LessThan7~0_combout\,
	combout => \A|lc1|LessThan7~1_combout\);

-- Location: LCCOMB_X61_Y24_N6
\A|lc1|LessThan7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan7~2_combout\ = (!\A|lc1|Add0~60_combout\ & (\A|lc1|LessThan1~3_combout\ & ((\A|lc1|LessThan7~1_combout\) # (!\A|lc1|LessThan6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Add0~60_combout\,
	datab => \A|lc1|LessThan6~0_combout\,
	datac => \A|lc1|LessThan7~1_combout\,
	datad => \A|lc1|LessThan1~3_combout\,
	combout => \A|lc1|LessThan7~2_combout\);

-- Location: LCCOMB_X62_Y24_N22
\A|lc1|LessThan8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan8~2_combout\ = (\A|lc1|Add0~22_combout\ & \A|lc1|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|lc1|Add0~22_combout\,
	datac => \A|lc1|Add0~20_combout\,
	combout => \A|lc1|LessThan8~2_combout\);

-- Location: LCCOMB_X62_Y24_N20
\A|lc1|LessThan8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan8~1_combout\ = (!\A|lc1|Add0~12_combout\ & ((!\A|lc1|Add0~10_combout\) # (!\A|lc1|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Add0~12_combout\,
	datac => \A|lc1|Add0~8_combout\,
	datad => \A|lc1|Add0~10_combout\,
	combout => \A|lc1|LessThan8~1_combout\);

-- Location: LCCOMB_X62_Y24_N24
\A|lc1|LessThan8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan8~3_combout\ = ((!\A|lc1|Add0~18_combout\ & ((\A|lc1|LessThan8~1_combout\) # (!\A|lc1|LessThan8~0_combout\)))) # (!\A|lc1|LessThan8~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|LessThan8~2_combout\,
	datab => \A|lc1|LessThan8~0_combout\,
	datac => \A|lc1|Add0~18_combout\,
	datad => \A|lc1|LessThan8~1_combout\,
	combout => \A|lc1|LessThan8~3_combout\);

-- Location: LCCOMB_X61_Y24_N16
\A|lc1|LessThan8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan8~4_combout\ = ((!\A|lc1|Add0~28_combout\ & (\A|lc1|LessThan8~3_combout\ & !\A|lc1|Add0~24_combout\))) # (!\A|lc1|LessThan6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Add0~28_combout\,
	datab => \A|lc1|LessThan8~3_combout\,
	datac => \A|lc1|Add0~24_combout\,
	datad => \A|lc1|LessThan6~0_combout\,
	combout => \A|lc1|LessThan8~4_combout\);

-- Location: LCCOMB_X61_Y24_N10
\A|lc1|LessThan8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan8~5_combout\ = (!\A|lc1|Add0~60_combout\ & (\A|lc1|LessThan1~3_combout\ & \A|lc1|LessThan8~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Add0~60_combout\,
	datab => \A|lc1|LessThan1~3_combout\,
	datad => \A|lc1|LessThan8~4_combout\,
	combout => \A|lc1|LessThan8~5_combout\);

-- Location: LCCOMB_X62_Y24_N12
\A|lc1|LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan3~0_combout\ = ((!\A|lc1|Add0~8_combout\ & ((!\A|lc1|Add0~6_combout\) # (!\A|lc1|Add0~4_combout\)))) # (!\A|lc1|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Add0~8_combout\,
	datab => \A|lc1|Add0~4_combout\,
	datac => \A|lc1|Add0~6_combout\,
	datad => \A|lc1|Add0~10_combout\,
	combout => \A|lc1|LessThan3~0_combout\);

-- Location: LCCOMB_X62_Y24_N30
\A|lc1|LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan3~1_combout\ = (!\A|lc1|Add0~18_combout\ & (((!\A|lc1|Add0~12_combout\ & \A|lc1|LessThan3~0_combout\)) # (!\A|lc1|LessThan8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Add0~12_combout\,
	datab => \A|lc1|LessThan8~0_combout\,
	datac => \A|lc1|Add0~18_combout\,
	datad => \A|lc1|LessThan3~0_combout\,
	combout => \A|lc1|LessThan3~1_combout\);

-- Location: LCCOMB_X61_Y24_N12
\A|lc1|LessThan3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan3~2_combout\ = (!\A|lc1|Add0~24_combout\ & (\A|lc1|LessThan1~5_combout\ & ((\A|lc1|LessThan3~1_combout\) # (!\A|lc1|LessThan8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Add0~24_combout\,
	datab => \A|lc1|LessThan3~1_combout\,
	datac => \A|lc1|LessThan1~5_combout\,
	datad => \A|lc1|LessThan8~2_combout\,
	combout => \A|lc1|LessThan3~2_combout\);

-- Location: LCCOMB_X62_Y24_N2
\A|lc1|LessThan6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan6~4_combout\ = (!\A|lc1|Add0~12_combout\ & (!\A|lc1|Add0~16_combout\ & !\A|lc1|Add0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Add0~12_combout\,
	datac => \A|lc1|Add0~16_combout\,
	datad => \A|lc1|Add0~14_combout\,
	combout => \A|lc1|LessThan6~4_combout\);

-- Location: LCCOMB_X62_Y24_N8
\A|lc1|LessThan6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan6~3_combout\ = (!\A|lc1|Add0~8_combout\ & (!\A|lc1|Add0~4_combout\ & (!\A|lc1|Add0~6_combout\ & !\A|lc1|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Add0~8_combout\,
	datab => \A|lc1|Add0~4_combout\,
	datac => \A|lc1|Add0~6_combout\,
	datad => \A|lc1|Add0~10_combout\,
	combout => \A|lc1|LessThan6~3_combout\);

-- Location: LCCOMB_X61_Y24_N30
\A|lc1|LessThan6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan6~5_combout\ = (\A|lc1|LessThan6~4_combout\ & (\A|lc1|LessThan1~4_combout\ & (\A|lc1|LessThan6~3_combout\ & !\A|lc1|Add0~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|LessThan6~4_combout\,
	datab => \A|lc1|LessThan1~4_combout\,
	datac => \A|lc1|LessThan6~3_combout\,
	datad => \A|lc1|Add0~28_combout\,
	combout => \A|lc1|LessThan6~5_combout\);

-- Location: LCCOMB_X61_Y24_N8
\A|lc1|busy~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|busy~2_combout\ = (\A|lc1|LessThan1~3_combout\ & ((\A|lc1|LessThan6~5_combout\) # (!\A|lc1|LessThan6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|lc1|LessThan1~3_combout\,
	datac => \A|lc1|LessThan6~5_combout\,
	datad => \A|lc1|LessThan6~0_combout\,
	combout => \A|lc1|busy~2_combout\);

-- Location: LCCOMB_X61_Y24_N22
\A|lc1|Selector34~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector34~1_combout\ = (\A|lc1|Add0~60_combout\) # ((!\A|lc1|LessThan3~2_combout\ & !\A|lc1|busy~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|LessThan3~2_combout\,
	datab => \A|lc1|busy~2_combout\,
	datad => \A|lc1|Add0~60_combout\,
	combout => \A|lc1|Selector34~1_combout\);

-- Location: LCCOMB_X60_Y24_N14
\A|lc1|Selector34~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector34~2_combout\ = (!\A|lc1|LessThan7~2_combout\ & (!\A|lc1|LessThan8~5_combout\ & (!\A|lc1|Add0~62_combout\ & \A|lc1|Selector34~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|LessThan7~2_combout\,
	datab => \A|lc1|LessThan8~5_combout\,
	datac => \A|lc1|Add0~62_combout\,
	datad => \A|lc1|Selector34~1_combout\,
	combout => \A|lc1|Selector34~2_combout\);

-- Location: LCCOMB_X60_Y26_N18
\A|lc1|Selector33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector33~0_combout\ = (\A|lc1|Selector34~2_combout\ & (!\A|lc1|LessThan0~6_combout\ & ((!\A|lc1|state.power~q\)))) # (!\A|lc1|Selector34~2_combout\ & ((\A|lc1|state.init~q\) # ((!\A|lc1|LessThan0~6_combout\ & !\A|lc1|state.power~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Selector34~2_combout\,
	datab => \A|lc1|LessThan0~6_combout\,
	datac => \A|lc1|state.init~q\,
	datad => \A|lc1|state.power~q\,
	combout => \A|lc1|Selector33~0_combout\);

-- Location: FF_X60_Y26_N19
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

-- Location: LCCOMB_X60_Y26_N26
\A|lc1|Selector34~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector34~3_combout\ = (\A|ul1|send_enable~q\ & (((!\A|lc1|state.init~q\)) # (!\A|lc1|Selector34~2_combout\))) # (!\A|ul1|send_enable~q\ & (!\A|lc1|state.ready~q\ & ((!\A|lc1|state.init~q\) # (!\A|lc1|Selector34~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|send_enable~q\,
	datab => \A|lc1|Selector34~2_combout\,
	datac => \A|lc1|state.ready~q\,
	datad => \A|lc1|state.init~q\,
	combout => \A|lc1|Selector34~3_combout\);

-- Location: FF_X60_Y26_N27
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

-- Location: LCCOMB_X89_Y10_N30
\A|ul1|data_write[9]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|data_write[9]~0_combout\ = (!\A|lc1|busy~q\ & !\A|ul1|send_enable~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|lc1|busy~q\,
	datad => \A|ul1|send_enable~q\,
	combout => \A|ul1|data_write[9]~0_combout\);

-- Location: FF_X90_Y12_N7
\A|ul1|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ul1|count[5]~feeder_combout\,
	clrn => \A|df1|q\(21),
	ena => \A|ul1|data_write[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(5));

-- Location: LCCOMB_X89_Y12_N18
\A|ul1|Add0~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~95_combout\ = (\A|ul1|LessThan0~9_combout\ & ((\A|ul1|Add0~15_combout\))) # (!\A|ul1|LessThan0~9_combout\ & (\A|ul1|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(5),
	datac => \A|ul1|Add0~15_combout\,
	datad => \A|ul1|LessThan0~9_combout\,
	combout => \A|ul1|Add0~95_combout\);

-- Location: LCCOMB_X89_Y12_N4
\A|ul1|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal0~10_combout\ = (!\A|ul1|Add0~95_combout\ & (\A|ul1|Equal0~9_combout\ & (!\A|ul1|Add0~94_combout\ & !\A|ul1|Add0~93_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~95_combout\,
	datab => \A|ul1|Equal0~9_combout\,
	datac => \A|ul1|Add0~94_combout\,
	datad => \A|ul1|Add0~93_combout\,
	combout => \A|ul1|Equal0~10_combout\);

-- Location: LCCOMB_X89_Y9_N6
\A|ul1|Equal7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal7~4_combout\ = (\A|ul1|Equal0~10_combout\ & (!\A|ul1|Add0~4_combout\ & \A|ul1|Equal7~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|Equal0~10_combout\,
	datac => \A|ul1|Add0~4_combout\,
	datad => \A|ul1|Equal7~5_combout\,
	combout => \A|ul1|Equal7~4_combout\);

-- Location: LCCOMB_X89_Y9_N20
\A|ul1|Selector8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector8~3_combout\ = (!\psw[3]~input_o\ & ((\A|ul1|Equal7~4_combout\) # ((\A|ul1|Equal8~0_combout\ & \A|ul1|Equal4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal7~4_combout\,
	datab => \A|ul1|Equal8~0_combout\,
	datac => \psw[3]~input_o\,
	datad => \A|ul1|Equal4~0_combout\,
	combout => \A|ul1|Selector8~3_combout\);

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

-- Location: LCCOMB_X89_Y9_N14
\A|ul1|Selector8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector8~4_combout\ = (\A|ul1|Selector8~3_combout\) # ((\A|ul1|Equal24~0_combout\ & (\A|ul1|LessThan2~0_combout\ $ (\tsw[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|LessThan2~0_combout\,
	datab => \A|ul1|Selector8~3_combout\,
	datac => \tsw[0]~input_o\,
	datad => \A|ul1|Equal24~0_combout\,
	combout => \A|ul1|Selector8~4_combout\);

-- Location: LCCOMB_X83_Y4_N0
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

-- Location: LCCOMB_X90_Y9_N26
\A|ul1|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|LessThan1~0_combout\ = (\tsw[7]~input_o\ & ((\tsw[6]~input_o\) # (\tsw[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[6]~input_o\,
	datab => \tsw[5]~input_o\,
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

-- Location: LCCOMB_X87_Y8_N14
\A|ul1|LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|LessThan3~0_combout\ = (\tsw[15]~input_o\ & ((\tsw[13]~input_o\) # (\tsw[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[15]~input_o\,
	datac => \tsw[13]~input_o\,
	datad => \tsw[14]~input_o\,
	combout => \A|ul1|LessThan3~0_combout\);

-- Location: LCCOMB_X90_Y9_N0
\A|ul1|Selector8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector8~5_combout\ = (\A|ul1|Equal31~0_combout\ & (\A|ul1|LessThan3~0_combout\ $ (\tsw[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|LessThan3~0_combout\,
	datac => \A|ul1|Equal31~0_combout\,
	datad => \tsw[12]~input_o\,
	combout => \A|ul1|Selector8~5_combout\);

-- Location: LCCOMB_X90_Y9_N4
\A|ul1|Selector8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector8~6_combout\ = (\A|ul1|Selector8~5_combout\) # ((\A|ul1|Equal23~0_combout\ & (\A|ul1|LessThan1~0_combout\ $ (\tsw[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|LessThan1~0_combout\,
	datab => \tsw[4]~input_o\,
	datac => \A|ul1|Equal23~0_combout\,
	datad => \A|ul1|Selector8~5_combout\,
	combout => \A|ul1|Selector8~6_combout\);

-- Location: LCCOMB_X90_Y9_N6
\A|ul1|Selector8~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector8~7_combout\ = (\A|ul1|Selector8~6_combout\) # ((\A|ul1|Equal32~0_combout\ & (\tsw[8]~input_o\ $ (\A|ul1|LessThan4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[8]~input_o\,
	datab => \A|ul1|LessThan4~0_combout\,
	datac => \A|ul1|Selector8~6_combout\,
	datad => \A|ul1|Equal32~0_combout\,
	combout => \A|ul1|Selector8~7_combout\);

-- Location: LCCOMB_X90_Y9_N24
\A|ul1|Selector8~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector8~8_combout\ = (\A|ul1|Selector8~4_combout\) # ((\A|ul1|Selector8~7_combout\) # ((\A|ul1|Equal10~0_combout\ & \psw[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Selector8~4_combout\,
	datab => \A|ul1|Equal10~0_combout\,
	datac => \psw[3]~input_o\,
	datad => \A|ul1|Selector8~7_combout\,
	combout => \A|ul1|Selector8~8_combout\);

-- Location: LCCOMB_X90_Y11_N6
\A|ul1|Selector8~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector8~9_combout\ = (\A|ul1|Selector8~8_combout\) # (((\A|ul1|data_write\(0) & !\A|ul1|WideNor0~combout\)) # (!\A|ul1|Selector8~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Selector8~8_combout\,
	datab => \A|ul1|Selector8~2_combout\,
	datac => \A|ul1|data_write\(0),
	datad => \A|ul1|WideNor0~combout\,
	combout => \A|ul1|Selector8~9_combout\);

-- Location: FF_X90_Y11_N7
\A|ul1|data_write[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ul1|Selector8~9_combout\,
	clrn => \A|df1|q\(21),
	ena => \A|ul1|data_write[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|data_write\(0));

-- Location: LCCOMB_X59_Y24_N0
\A|lc1|Selector35~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector35~2_combout\ = (\A|ul1|send_enable~q\ & \A|lc1|state.ready~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|ul1|send_enable~q\,
	datad => \A|lc1|state.ready~q\,
	combout => \A|lc1|Selector35~2_combout\);

-- Location: LCCOMB_X59_Y24_N26
\A|lc1|Selector45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector45~0_combout\ = (!\A|lc1|LessThan2~2_combout\ & (!\A|lc1|Selector35~2_combout\ & (!\A|lc1|Add0~60_combout\ & \A|lc1|state.init~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|LessThan2~2_combout\,
	datab => \A|lc1|Selector35~2_combout\,
	datac => \A|lc1|Add0~60_combout\,
	datad => \A|lc1|state.init~q\,
	combout => \A|lc1|Selector45~0_combout\);

-- Location: LCCOMB_X60_Y24_N28
\A|lc1|Selector45~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector45~1_combout\ = (\A|lc1|LessThan5~2_combout\ & ((\A|lc1|Add0~60_combout\) # (!\A|lc1|LessThan4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|lc1|LessThan5~2_combout\,
	datac => \A|lc1|Add0~60_combout\,
	datad => \A|lc1|LessThan4~2_combout\,
	combout => \A|lc1|Selector45~1_combout\);

-- Location: LCCOMB_X60_Y24_N6
\A|lc1|Selector45~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector45~2_combout\ = (!\A|lc1|LessThan1~6_combout\ & (!\A|lc1|Add0~62_combout\ & ((\A|lc1|LessThan3~2_combout\) # (\A|lc1|Selector45~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|LessThan1~6_combout\,
	datab => \A|lc1|LessThan3~2_combout\,
	datac => \A|lc1|Add0~62_combout\,
	datad => \A|lc1|Selector45~1_combout\,
	combout => \A|lc1|Selector45~2_combout\);

-- Location: LCCOMB_X59_Y24_N2
\A|lc1|Selector45~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector45~3_combout\ = (\A|ul1|data_write\(0) & ((\A|lc1|Selector35~2_combout\) # ((\A|lc1|Selector45~0_combout\ & \A|lc1|Selector45~2_combout\)))) # (!\A|ul1|data_write\(0) & (((\A|lc1|Selector45~0_combout\ & \A|lc1|Selector45~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|data_write\(0),
	datab => \A|lc1|Selector35~2_combout\,
	datac => \A|lc1|Selector45~0_combout\,
	datad => \A|lc1|Selector45~2_combout\,
	combout => \A|lc1|Selector45~3_combout\);

-- Location: LCCOMB_X60_Y26_N20
\A|lc1|state~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|state~7_combout\ = (\A|lc1|LessThan0~6_combout\ & !\A|lc1|state.power~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|lc1|LessThan0~6_combout\,
	datad => \A|lc1|state.power~q\,
	combout => \A|lc1|state~7_combout\);

-- Location: LCCOMB_X60_Y24_N24
\A|lc1|lcd_data[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|lcd_data[2]~0_combout\ = (!\A|lc1|state.send~q\ & (!\A|lc1|state~7_combout\ & ((!\A|lc1|Selector34~2_combout\) # (!\A|lc1|state.init~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|state.send~q\,
	datab => \A|lc1|state.init~q\,
	datac => \A|lc1|state~7_combout\,
	datad => \A|lc1|Selector34~2_combout\,
	combout => \A|lc1|lcd_data[2]~0_combout\);

-- Location: FF_X59_Y24_N3
\A|lc1|lcd_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|lc1|Selector45~3_combout\,
	ena => \A|lc1|lcd_data[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|lcd_data\(0));

-- Location: LCCOMB_X59_Y24_N12
\A|lc1|Selector44~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector44~2_combout\ = (\A|lc1|state.init~q\ & (!\A|lc1|Selector35~2_combout\ & (!\A|lc1|Add0~62_combout\ & !\A|lc1|LessThan3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|state.init~q\,
	datab => \A|lc1|Selector35~2_combout\,
	datac => \A|lc1|Add0~62_combout\,
	datad => \A|lc1|LessThan3~2_combout\,
	combout => \A|lc1|Selector44~2_combout\);

-- Location: LCCOMB_X89_Y7_N22
\A|ul1|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector7~0_combout\ = (\tsw[1]~input_o\ & (((\tsw[0]~input_o\)) # (!\tsw[3]~input_o\))) # (!\tsw[1]~input_o\ & (\tsw[3]~input_o\ & (\tsw[2]~input_o\ & !\tsw[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[1]~input_o\,
	datab => \tsw[3]~input_o\,
	datac => \tsw[2]~input_o\,
	datad => \tsw[0]~input_o\,
	combout => \A|ul1|Selector7~0_combout\);

-- Location: LCCOMB_X89_Y11_N24
\A|ul1|Selector7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector7~1_combout\ = (\A|ul1|Equal24~0_combout\ & ((\A|ul1|Selector7~0_combout\) # ((!\psw[3]~input_o\ & \A|ul1|Equal7~4_combout\)))) # (!\A|ul1|Equal24~0_combout\ & (((!\psw[3]~input_o\ & \A|ul1|Equal7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal24~0_combout\,
	datab => \A|ul1|Selector7~0_combout\,
	datac => \psw[3]~input_o\,
	datad => \A|ul1|Equal7~4_combout\,
	combout => \A|ul1|Selector7~1_combout\);

-- Location: LCCOMB_X89_Y10_N20
\A|ul1|WideNor0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|WideNor0~5_combout\ = (\A|ul1|Equal0~10_combout\ & (!\A|ul1|Equal8~0_combout\ & ((!\A|ul1|Equal19~0_combout\) # (!\A|ul1|Equal2~0_combout\)))) # (!\A|ul1|Equal0~10_combout\ & (((!\A|ul1|Equal19~0_combout\) # (!\A|ul1|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal0~10_combout\,
	datab => \A|ul1|Equal8~0_combout\,
	datac => \A|ul1|Equal2~0_combout\,
	datad => \A|ul1|Equal19~0_combout\,
	combout => \A|ul1|WideNor0~5_combout\);

-- Location: LCCOMB_X89_Y11_N2
\A|ul1|Selector7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector7~2_combout\ = ((\A|ul1|Selector7~1_combout\) # (!\A|ul1|WideNor0~5_combout\)) # (!\A|ul1|Selector4~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Selector4~1_combout\,
	datab => \A|ul1|Selector7~1_combout\,
	datac => \A|ul1|WideNor0~5_combout\,
	combout => \A|ul1|Selector7~2_combout\);

-- Location: LCCOMB_X89_Y10_N22
\A|ul1|Selector7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector7~3_combout\ = (\A|ul1|Equal0~10_combout\ & (!\tsw[17]~input_o\ & \A|ul1|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal0~10_combout\,
	datac => \tsw[17]~input_o\,
	datad => \A|ul1|Equal2~0_combout\,
	combout => \A|ul1|Selector7~3_combout\);

-- Location: LCCOMB_X90_Y8_N18
\A|ul1|Selector7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector7~5_combout\ = (\tsw[11]~input_o\ & ((\tsw[8]~input_o\ & ((\tsw[9]~input_o\))) # (!\tsw[8]~input_o\ & (\tsw[10]~input_o\ & !\tsw[9]~input_o\)))) # (!\tsw[11]~input_o\ & (((\tsw[9]~input_o\))))

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
	combout => \A|ul1|Selector7~5_combout\);

-- Location: LCCOMB_X90_Y8_N0
\A|ul1|Selector7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector7~4_combout\ = (\tsw[4]~input_o\ & (((\tsw[5]~input_o\)))) # (!\tsw[4]~input_o\ & ((\tsw[7]~input_o\ & (\tsw[6]~input_o\ & !\tsw[5]~input_o\)) # (!\tsw[7]~input_o\ & ((\tsw[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[6]~input_o\,
	datab => \tsw[4]~input_o\,
	datac => \tsw[7]~input_o\,
	datad => \tsw[5]~input_o\,
	combout => \A|ul1|Selector7~4_combout\);

-- Location: LCCOMB_X90_Y8_N4
\A|ul1|Selector7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector7~6_combout\ = (\A|ul1|Selector7~5_combout\ & ((\A|ul1|Equal32~0_combout\) # ((\A|ul1|Selector7~4_combout\ & \A|ul1|Equal23~0_combout\)))) # (!\A|ul1|Selector7~5_combout\ & (\A|ul1|Selector7~4_combout\ & (\A|ul1|Equal23~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Selector7~5_combout\,
	datab => \A|ul1|Selector7~4_combout\,
	datac => \A|ul1|Equal23~0_combout\,
	datad => \A|ul1|Equal32~0_combout\,
	combout => \A|ul1|Selector7~6_combout\);

-- Location: LCCOMB_X87_Y8_N24
\A|ul1|Selector7~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector7~7_combout\ = (\tsw[15]~input_o\ & ((\tsw[12]~input_o\ & (\tsw[13]~input_o\)) # (!\tsw[12]~input_o\ & (!\tsw[13]~input_o\ & \tsw[14]~input_o\)))) # (!\tsw[15]~input_o\ & (((\tsw[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[15]~input_o\,
	datab => \tsw[12]~input_o\,
	datac => \tsw[13]~input_o\,
	datad => \tsw[14]~input_o\,
	combout => \A|ul1|Selector7~7_combout\);

-- Location: LCCOMB_X90_Y11_N8
\A|ul1|Selector7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector7~8_combout\ = (\A|ul1|Selector7~3_combout\) # ((\A|ul1|Selector7~6_combout\) # ((\A|ul1|Equal31~0_combout\ & \A|ul1|Selector7~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Selector7~3_combout\,
	datab => \A|ul1|Selector7~6_combout\,
	datac => \A|ul1|Equal31~0_combout\,
	datad => \A|ul1|Selector7~7_combout\,
	combout => \A|ul1|Selector7~8_combout\);

-- Location: LCCOMB_X90_Y11_N16
\A|ul1|Selector7~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector7~9_combout\ = (\A|ul1|Selector7~2_combout\) # ((\A|ul1|Selector7~8_combout\) # ((\A|ul1|data_write\(1) & !\A|ul1|WideNor0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Selector7~2_combout\,
	datab => \A|ul1|Selector7~8_combout\,
	datac => \A|ul1|data_write\(1),
	datad => \A|ul1|WideNor0~combout\,
	combout => \A|ul1|Selector7~9_combout\);

-- Location: FF_X90_Y11_N17
\A|ul1|data_write[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ul1|Selector7~9_combout\,
	clrn => \A|df1|q\(21),
	ena => \A|ul1|data_write[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|data_write\(1));

-- Location: LCCOMB_X60_Y24_N18
\A|lc1|Selector44~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector44~1_combout\ = (\A|lc1|LessThan7~2_combout\ & (\A|lc1|Selector44~0_combout\ & !\A|lc1|busy~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|LessThan7~2_combout\,
	datab => \A|lc1|Selector44~0_combout\,
	datac => \A|lc1|busy~2_combout\,
	combout => \A|lc1|Selector44~1_combout\);

-- Location: LCCOMB_X59_Y24_N4
\A|lc1|Selector44~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector44~3_combout\ = (\A|lc1|Selector44~2_combout\ & ((\A|lc1|Selector44~1_combout\) # ((\A|lc1|Selector35~2_combout\ & \A|ul1|data_write\(1))))) # (!\A|lc1|Selector44~2_combout\ & (\A|lc1|Selector35~2_combout\ & (\A|ul1|data_write\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Selector44~2_combout\,
	datab => \A|lc1|Selector35~2_combout\,
	datac => \A|ul1|data_write\(1),
	datad => \A|lc1|Selector44~1_combout\,
	combout => \A|lc1|Selector44~3_combout\);

-- Location: FF_X59_Y24_N5
\A|lc1|lcd_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|lc1|Selector44~3_combout\,
	ena => \A|lc1|lcd_data[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|lcd_data\(1));

-- Location: LCCOMB_X60_Y24_N4
\A|lc1|Selector43~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector43~1_combout\ = (!\A|lc1|Add0~60_combout\ & \A|lc1|LessThan1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|lc1|Add0~60_combout\,
	datad => \A|lc1|LessThan1~6_combout\,
	combout => \A|lc1|Selector43~1_combout\);

-- Location: LCCOMB_X89_Y9_N12
\A|ul1|Equal9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal9~0_combout\ = (\A|ul1|Add0~11_combout\ & (\A|ul1|Equal0~10_combout\ & (!\A|ul1|Add0~4_combout\ & \A|ul1|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~11_combout\,
	datab => \A|ul1|Equal0~10_combout\,
	datac => \A|ul1|Add0~4_combout\,
	datad => \A|ul1|Add0~12_combout\,
	combout => \A|ul1|Equal9~0_combout\);

-- Location: LCCOMB_X90_Y9_N20
\A|ul1|Selector6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector6~5_combout\ = (\tsw[6]~input_o\ & ((\tsw[5]~input_o\) # ((\tsw[4]~input_o\) # (!\tsw[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[6]~input_o\,
	datab => \tsw[5]~input_o\,
	datac => \tsw[4]~input_o\,
	datad => \tsw[7]~input_o\,
	combout => \A|ul1|Selector6~5_combout\);

-- Location: LCCOMB_X87_Y8_N18
\A|ul1|Selector6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector6~6_combout\ = (\tsw[14]~input_o\ & (((\tsw[12]~input_o\) # (\tsw[13]~input_o\)) # (!\tsw[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[15]~input_o\,
	datab => \tsw[12]~input_o\,
	datac => \tsw[13]~input_o\,
	datad => \tsw[14]~input_o\,
	combout => \A|ul1|Selector6~6_combout\);

-- Location: LCCOMB_X90_Y9_N22
\A|ul1|Selector6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector6~7_combout\ = (\A|ul1|Equal23~0_combout\ & ((\A|ul1|Selector6~5_combout\) # ((\A|ul1|Equal31~0_combout\ & \A|ul1|Selector6~6_combout\)))) # (!\A|ul1|Equal23~0_combout\ & (((\A|ul1|Equal31~0_combout\ & \A|ul1|Selector6~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal23~0_combout\,
	datab => \A|ul1|Selector6~5_combout\,
	datac => \A|ul1|Equal31~0_combout\,
	datad => \A|ul1|Selector6~6_combout\,
	combout => \A|ul1|Selector6~7_combout\);

-- Location: LCCOMB_X90_Y8_N30
\A|ul1|Selector6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector6~8_combout\ = (\tsw[10]~input_o\ & (((\tsw[8]~input_o\) # (\tsw[9]~input_o\)) # (!\tsw[11]~input_o\)))

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
	combout => \A|ul1|Selector6~8_combout\);

-- Location: LCCOMB_X89_Y8_N12
\A|ul1|Selector6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector6~3_combout\ = (\tsw[2]~input_o\ & ((\tsw[0]~input_o\) # ((\tsw[1]~input_o\) # (!\tsw[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[0]~input_o\,
	datab => \tsw[3]~input_o\,
	datac => \tsw[2]~input_o\,
	datad => \tsw[1]~input_o\,
	combout => \A|ul1|Selector6~3_combout\);

-- Location: LCCOMB_X89_Y9_N24
\A|ul1|Selector6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector6~2_combout\ = (\A|ul1|Equal0~10_combout\ & (\A|ul1|Equal1~4_combout\ & (\tsw[17]~input_o\ $ (\A|ul1|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[17]~input_o\,
	datab => \A|ul1|Equal0~10_combout\,
	datac => \A|ul1|Add0~4_combout\,
	datad => \A|ul1|Equal1~4_combout\,
	combout => \A|ul1|Selector6~2_combout\);

-- Location: LCCOMB_X89_Y9_N18
\A|ul1|Selector6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector6~4_combout\ = (\A|ul1|Selector6~2_combout\) # ((\A|ul1|Selector6~3_combout\ & \A|ul1|Equal24~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Selector6~3_combout\,
	datab => \A|ul1|Selector6~2_combout\,
	datad => \A|ul1|Equal24~0_combout\,
	combout => \A|ul1|Selector6~4_combout\);

-- Location: LCCOMB_X90_Y9_N16
\A|ul1|Selector6~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector6~9_combout\ = (\A|ul1|Selector6~7_combout\) # ((\A|ul1|Selector6~4_combout\) # ((\A|ul1|Selector6~8_combout\ & \A|ul1|Equal32~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Selector6~7_combout\,
	datab => \A|ul1|Selector6~8_combout\,
	datac => \A|ul1|Selector6~4_combout\,
	datad => \A|ul1|Equal32~0_combout\,
	combout => \A|ul1|Selector6~9_combout\);

-- Location: LCCOMB_X90_Y9_N10
\A|ul1|Selector4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector4~3_combout\ = (!\psw[3]~input_o\ & ((\A|ul1|Equal7~4_combout\) # (\A|ul1|Equal10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|Equal7~4_combout\,
	datac => \psw[3]~input_o\,
	datad => \A|ul1|Equal10~0_combout\,
	combout => \A|ul1|Selector4~3_combout\);

-- Location: LCCOMB_X90_Y9_N18
\A|ul1|Selector6~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector6~10_combout\ = (\A|ul1|Selector6~9_combout\) # ((\A|ul1|Selector4~3_combout\) # ((\A|ul1|Equal9~0_combout\ & \psw[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal9~0_combout\,
	datab => \A|ul1|Selector6~9_combout\,
	datac => \psw[3]~input_o\,
	datad => \A|ul1|Selector4~3_combout\,
	combout => \A|ul1|Selector6~10_combout\);

-- Location: LCCOMB_X90_Y11_N26
\A|ul1|Selector6~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector6~11_combout\ = (\A|ul1|Selector6~10_combout\) # (((\A|ul1|data_write\(2) & !\A|ul1|WideNor0~combout\)) # (!\A|ul1|Selector6~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Selector6~10_combout\,
	datab => \A|ul1|Selector6~1_combout\,
	datac => \A|ul1|data_write\(2),
	datad => \A|ul1|WideNor0~combout\,
	combout => \A|ul1|Selector6~11_combout\);

-- Location: FF_X90_Y11_N27
\A|ul1|data_write[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ul1|Selector6~11_combout\,
	clrn => \A|df1|q\(21),
	ena => \A|ul1|data_write[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|data_write\(2));

-- Location: LCCOMB_X59_Y24_N30
\A|lc1|Selector43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector43~0_combout\ = (\A|lc1|Selector35~2_combout\ & (((\A|ul1|data_write\(2))))) # (!\A|lc1|Selector35~2_combout\ & (\A|lc1|state.init~q\ & ((\A|lc1|Add0~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|state.init~q\,
	datab => \A|ul1|data_write\(2),
	datac => \A|lc1|Add0~62_combout\,
	datad => \A|lc1|Selector35~2_combout\,
	combout => \A|lc1|Selector43~0_combout\);

-- Location: LCCOMB_X59_Y24_N8
\A|lc1|Selector43~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector43~2_combout\ = (\A|lc1|Selector43~0_combout\) # ((\A|lc1|Selector43~1_combout\ & (!\A|lc1|Selector35~2_combout\ & \A|lc1|state.init~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Selector43~1_combout\,
	datab => \A|lc1|Selector35~2_combout\,
	datac => \A|lc1|Selector43~0_combout\,
	datad => \A|lc1|state.init~q\,
	combout => \A|lc1|Selector43~2_combout\);

-- Location: LCCOMB_X59_Y24_N22
\A|lc1|Selector43~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector43~3_combout\ = (\A|lc1|Selector43~2_combout\) # ((\A|lc1|Selector45~0_combout\ & ((\A|lc1|Selector44~1_combout\) # (\A|lc1|LessThan3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Selector45~0_combout\,
	datab => \A|lc1|Selector44~1_combout\,
	datac => \A|lc1|Selector43~2_combout\,
	datad => \A|lc1|LessThan3~2_combout\,
	combout => \A|lc1|Selector43~3_combout\);

-- Location: FF_X59_Y24_N23
\A|lc1|lcd_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|lc1|Selector43~3_combout\,
	ena => \A|lc1|lcd_data[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|lcd_data\(2));

-- Location: LCCOMB_X90_Y8_N10
\A|ul1|Selector5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector5~5_combout\ = (!\tsw[6]~input_o\ & (\A|ul1|Equal23~0_combout\ & (\tsw[7]~input_o\ & !\tsw[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[6]~input_o\,
	datab => \A|ul1|Equal23~0_combout\,
	datac => \tsw[7]~input_o\,
	datad => \tsw[5]~input_o\,
	combout => \A|ul1|Selector5~5_combout\);

-- Location: LCCOMB_X90_Y8_N20
\A|ul1|Selector5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector5~6_combout\ = (!\tsw[10]~input_o\ & (\tsw[11]~input_o\ & !\tsw[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[10]~input_o\,
	datab => \tsw[11]~input_o\,
	datad => \tsw[9]~input_o\,
	combout => \A|ul1|Selector5~6_combout\);

-- Location: LCCOMB_X87_Y8_N4
\A|ul1|Selector5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector5~4_combout\ = (\A|ul1|Equal31~0_combout\ & (!\tsw[14]~input_o\ & (!\tsw[13]~input_o\ & \tsw[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal31~0_combout\,
	datab => \tsw[14]~input_o\,
	datac => \tsw[13]~input_o\,
	datad => \tsw[15]~input_o\,
	combout => \A|ul1|Selector5~4_combout\);

-- Location: LCCOMB_X90_Y8_N6
\A|ul1|Selector5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector5~7_combout\ = (\A|ul1|Selector5~5_combout\) # ((\A|ul1|Selector5~4_combout\) # ((\A|ul1|Selector5~6_combout\ & \A|ul1|Equal32~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Selector5~5_combout\,
	datab => \A|ul1|Selector5~6_combout\,
	datac => \A|ul1|Selector5~4_combout\,
	datad => \A|ul1|Equal32~0_combout\,
	combout => \A|ul1|Selector5~7_combout\);

-- Location: LCCOMB_X89_Y9_N30
\A|ul1|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector5~0_combout\ = (\A|ul1|Equal0~10_combout\ & (\A|ul1|Equal1~4_combout\ & ((\A|ul1|Add0~4_combout\) # (!\tsw[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[17]~input_o\,
	datab => \A|ul1|Equal0~10_combout\,
	datac => \A|ul1|Add0~4_combout\,
	datad => \A|ul1|Equal1~4_combout\,
	combout => \A|ul1|Selector5~0_combout\);

-- Location: LCCOMB_X89_Y9_N8
\A|ul1|Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector5~1_combout\ = (\A|ul1|Selector5~0_combout\) # ((!\psw[3]~input_o\ & \A|ul1|Equal9~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Selector5~0_combout\,
	datac => \psw[3]~input_o\,
	datad => \A|ul1|Equal9~0_combout\,
	combout => \A|ul1|Selector5~1_combout\);

-- Location: LCCOMB_X89_Y8_N2
\A|ul1|Selector5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector5~2_combout\ = (!\tsw[1]~input_o\ & (\tsw[3]~input_o\ & !\tsw[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[1]~input_o\,
	datab => \tsw[3]~input_o\,
	datad => \tsw[2]~input_o\,
	combout => \A|ul1|Selector5~2_combout\);

-- Location: LCCOMB_X90_Y8_N16
\A|ul1|Selector5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector5~3_combout\ = (\A|ul1|Selector5~1_combout\) # (((\A|ul1|Selector5~2_combout\ & \A|ul1|Equal24~0_combout\)) # (!\A|ul1|Selector4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Selector5~1_combout\,
	datab => \A|ul1|Selector5~2_combout\,
	datac => \A|ul1|Equal24~0_combout\,
	datad => \A|ul1|Selector4~1_combout\,
	combout => \A|ul1|Selector5~3_combout\);

-- Location: LCCOMB_X90_Y8_N22
\A|ul1|Selector5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector5~8_combout\ = (\A|ul1|Selector5~7_combout\) # ((\A|ul1|Selector5~3_combout\) # ((\A|ul1|data_write\(3) & !\A|ul1|WideNor0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Selector5~7_combout\,
	datab => \A|ul1|Selector5~3_combout\,
	datac => \A|ul1|data_write\(3),
	datad => \A|ul1|WideNor0~combout\,
	combout => \A|ul1|Selector5~8_combout\);

-- Location: FF_X90_Y8_N23
\A|ul1|data_write[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ul1|Selector5~8_combout\,
	clrn => \A|df1|q\(21),
	ena => \A|ul1|data_write[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|data_write\(3));

-- Location: LCCOMB_X59_Y24_N18
\A|lc1|Selector42~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector42~2_combout\ = (!\A|lc1|LessThan2~2_combout\ & (!\A|lc1|Add0~60_combout\ & \A|lc1|LessThan3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|LessThan2~2_combout\,
	datac => \A|lc1|Add0~60_combout\,
	datad => \A|lc1|LessThan3~2_combout\,
	combout => \A|lc1|Selector42~2_combout\);

-- Location: LCCOMB_X59_Y24_N20
\A|lc1|Selector42~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector42~3_combout\ = (!\A|lc1|Selector43~1_combout\ & (!\A|lc1|Selector42~2_combout\ & (!\A|lc1|Add0~62_combout\ & \A|lc1|state.init~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Selector43~1_combout\,
	datab => \A|lc1|Selector42~2_combout\,
	datac => \A|lc1|Add0~62_combout\,
	datad => \A|lc1|state.init~q\,
	combout => \A|lc1|Selector42~3_combout\);

-- Location: LCCOMB_X59_Y24_N24
\A|lc1|Selector42~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector42~4_combout\ = (\A|lc1|state.ready~q\ & (\A|ul1|data_write\(3) & ((\A|ul1|send_enable~q\)))) # (!\A|lc1|state.ready~q\ & (((!\A|lc1|Selector42~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|data_write\(3),
	datab => \A|lc1|Selector42~3_combout\,
	datac => \A|ul1|send_enable~q\,
	datad => \A|lc1|state.ready~q\,
	combout => \A|lc1|Selector42~4_combout\);

-- Location: FF_X59_Y24_N25
\A|lc1|lcd_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|lc1|Selector42~4_combout\,
	ena => \A|lc1|lcd_data[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|lcd_data\(3));

-- Location: LCCOMB_X89_Y7_N16
\A|ul1|Selector4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector4~8_combout\ = (\A|ul1|Equal24~0_combout\ & (((!\tsw[1]~input_o\ & !\tsw[2]~input_o\)) # (!\tsw[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[1]~input_o\,
	datab => \A|ul1|Equal24~0_combout\,
	datac => \tsw[2]~input_o\,
	datad => \tsw[3]~input_o\,
	combout => \A|ul1|Selector4~8_combout\);

-- Location: LCCOMB_X90_Y9_N12
\A|ul1|Selector4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector4~6_combout\ = (\A|ul1|LessThan1~0_combout\ & (((\A|ul1|LessThan3~0_combout\)) # (!\A|ul1|Equal31~0_combout\))) # (!\A|ul1|LessThan1~0_combout\ & (!\A|ul1|Equal23~0_combout\ & ((\A|ul1|LessThan3~0_combout\) # (!\A|ul1|Equal31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|LessThan1~0_combout\,
	datab => \A|ul1|Equal31~0_combout\,
	datac => \A|ul1|Equal23~0_combout\,
	datad => \A|ul1|LessThan3~0_combout\,
	combout => \A|ul1|Selector4~6_combout\);

-- Location: LCCOMB_X89_Y10_N18
\A|ul1|Selector4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector4~7_combout\ = (\A|ul1|Equal2~0_combout\ & (!\A|ul1|Equal19~0_combout\ & ((\A|ul1|LessThan4~0_combout\) # (!\A|ul1|Equal32~0_combout\)))) # (!\A|ul1|Equal2~0_combout\ & (((\A|ul1|LessThan4~0_combout\) # (!\A|ul1|Equal32~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal2~0_combout\,
	datab => \A|ul1|Equal19~0_combout\,
	datac => \A|ul1|LessThan4~0_combout\,
	datad => \A|ul1|Equal32~0_combout\,
	combout => \A|ul1|Selector4~7_combout\);

-- Location: LCCOMB_X89_Y10_N12
\A|ul1|Selector4~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector4~9_combout\ = (!\A|ul1|Selector4~8_combout\ & (\A|ul1|Selector4~2_combout\ & (\A|ul1|Selector4~6_combout\ & \A|ul1|Selector4~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Selector4~8_combout\,
	datab => \A|ul1|Selector4~2_combout\,
	datac => \A|ul1|Selector4~6_combout\,
	datad => \A|ul1|Selector4~7_combout\,
	combout => \A|ul1|Selector4~9_combout\);

-- Location: LCCOMB_X89_Y10_N0
\A|ul1|Selector4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector4~4_combout\ = (\A|ul1|Equal0~10_combout\ & ((\A|ul1|Equal8~0_combout\) # ((\tsw[17]~input_o\ & \A|ul1|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal0~10_combout\,
	datab => \A|ul1|Equal8~0_combout\,
	datac => \tsw[17]~input_o\,
	datad => \A|ul1|Equal2~0_combout\,
	combout => \A|ul1|Selector4~4_combout\);

-- Location: LCCOMB_X90_Y10_N2
\A|ul1|Selector4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector4~5_combout\ = ((\A|ul1|Selector4~4_combout\) # (\A|ul1|Selector4~3_combout\)) # (!\A|ul1|Selector4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Selector4~0_combout\,
	datac => \A|ul1|Selector4~4_combout\,
	datad => \A|ul1|Selector4~3_combout\,
	combout => \A|ul1|Selector4~5_combout\);

-- Location: LCCOMB_X89_Y10_N24
\A|ul1|Selector4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector4~10_combout\ = ((\A|ul1|Selector4~5_combout\) # ((\A|ul1|data_write\(4) & !\A|ul1|WideNor0~combout\))) # (!\A|ul1|Selector4~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Selector4~9_combout\,
	datab => \A|ul1|Selector4~5_combout\,
	datac => \A|ul1|data_write\(4),
	datad => \A|ul1|WideNor0~combout\,
	combout => \A|ul1|Selector4~10_combout\);

-- Location: FF_X89_Y10_N25
\A|ul1|data_write[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ul1|Selector4~10_combout\,
	clrn => \A|df1|q\(21),
	ena => \A|ul1|data_write[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|data_write\(4));

-- Location: LCCOMB_X59_Y24_N14
\A|lc1|Selector41~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector41~2_combout\ = (!\A|lc1|state.ready~q\ & (((\A|lc1|Add0~62_combout\) # (\A|lc1|Selector43~1_combout\)) # (!\A|lc1|state.init~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|state.init~q\,
	datab => \A|lc1|state.ready~q\,
	datac => \A|lc1|Add0~62_combout\,
	datad => \A|lc1|Selector43~1_combout\,
	combout => \A|lc1|Selector41~2_combout\);

-- Location: LCCOMB_X59_Y24_N10
\A|lc1|Selector41~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector41~3_combout\ = (\A|lc1|Selector41~2_combout\) # ((\A|ul1|data_write\(4) & (\A|ul1|send_enable~q\ & \A|lc1|state.ready~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|data_write\(4),
	datab => \A|lc1|Selector41~2_combout\,
	datac => \A|ul1|send_enable~q\,
	datad => \A|lc1|state.ready~q\,
	combout => \A|lc1|Selector41~3_combout\);

-- Location: FF_X59_Y24_N11
\A|lc1|lcd_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|lc1|Selector41~3_combout\,
	ena => \A|lc1|lcd_data[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|lcd_data\(4));

-- Location: LCCOMB_X89_Y9_N10
\A|ul1|Selector3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector3~5_combout\ = (\A|ul1|Equal0~10_combout\ & (!\A|ul1|Add0~4_combout\ & (\psw[3]~input_o\ & \A|ul1|Equal7~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal0~10_combout\,
	datab => \A|ul1|Add0~4_combout\,
	datac => \psw[3]~input_o\,
	datad => \A|ul1|Equal7~5_combout\,
	combout => \A|ul1|Selector3~5_combout\);

-- Location: LCCOMB_X89_Y10_N6
\A|ul1|Selector3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector3~6_combout\ = (\A|ul1|Selector3~5_combout\) # (((!\A|ul1|Selector3~4_combout\) # (!\A|ul1|Selector3~1_combout\)) # (!\A|ul1|Selector3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Selector3~5_combout\,
	datab => \A|ul1|Selector3~0_combout\,
	datac => \A|ul1|Selector3~1_combout\,
	datad => \A|ul1|Selector3~4_combout\,
	combout => \A|ul1|Selector3~6_combout\);

-- Location: LCCOMB_X89_Y10_N2
\A|ul1|Selector3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector3~7_combout\ = (\A|ul1|Selector3~6_combout\) # (((\A|ul1|data_write\(5) & !\A|ul1|WideNor0~combout\)) # (!\A|ul1|Selector4~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Selector3~6_combout\,
	datab => \A|ul1|Selector4~9_combout\,
	datac => \A|ul1|data_write\(5),
	datad => \A|ul1|WideNor0~combout\,
	combout => \A|ul1|Selector3~7_combout\);

-- Location: FF_X89_Y10_N3
\A|ul1|data_write[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ul1|Selector3~7_combout\,
	clrn => \A|df1|q\(21),
	ena => \A|ul1|data_write[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|data_write\(5));

-- Location: LCCOMB_X59_Y24_N28
\A|lc1|Selector40~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector40~2_combout\ = (\A|lc1|Selector41~2_combout\) # ((\A|ul1|send_enable~q\ & (\A|ul1|data_write\(5) & \A|lc1|state.ready~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|send_enable~q\,
	datab => \A|lc1|Selector41~2_combout\,
	datac => \A|ul1|data_write\(5),
	datad => \A|lc1|state.ready~q\,
	combout => \A|lc1|Selector40~2_combout\);

-- Location: FF_X59_Y24_N29
\A|lc1|lcd_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|lc1|Selector40~2_combout\,
	ena => \A|lc1|lcd_data[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|lcd_data\(5));

-- Location: LCCOMB_X89_Y9_N28
\A|ul1|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector2~1_combout\ = (\A|ul1|Equal14~1_combout\ & ((\A|ul1|Equal2~0_combout\) # ((\A|ul1|Equal8~0_combout\ & \A|ul1|LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal2~0_combout\,
	datab => \A|ul1|Equal8~0_combout\,
	datac => \A|ul1|Equal14~1_combout\,
	datad => \A|ul1|LessThan1~0_combout\,
	combout => \A|ul1|Selector2~1_combout\);

-- Location: LCCOMB_X89_Y11_N20
\A|ul1|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector2~0_combout\ = (\A|ul1|Equal24~0_combout\ & ((\A|ul1|LessThan2~0_combout\) # ((!\psw[3]~input_o\ & \A|ul1|Equal7~4_combout\)))) # (!\A|ul1|Equal24~0_combout\ & (((!\psw[3]~input_o\ & \A|ul1|Equal7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal24~0_combout\,
	datab => \A|ul1|LessThan2~0_combout\,
	datac => \psw[3]~input_o\,
	datad => \A|ul1|Equal7~4_combout\,
	combout => \A|ul1|Selector2~0_combout\);

-- Location: LCCOMB_X90_Y9_N14
\A|ul1|Selector2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector2~2_combout\ = (\A|ul1|LessThan3~0_combout\ & ((\A|ul1|Equal31~0_combout\) # ((\A|ul1|LessThan4~0_combout\ & \A|ul1|Equal32~0_combout\)))) # (!\A|ul1|LessThan3~0_combout\ & (\A|ul1|LessThan4~0_combout\ & ((\A|ul1|Equal32~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|LessThan3~0_combout\,
	datab => \A|ul1|LessThan4~0_combout\,
	datac => \A|ul1|Equal31~0_combout\,
	datad => \A|ul1|Equal32~0_combout\,
	combout => \A|ul1|Selector2~2_combout\);

-- Location: LCCOMB_X90_Y11_N18
\A|ul1|Selector2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector2~3_combout\ = (!\A|ul1|Selector2~1_combout\ & (!\A|ul1|Selector2~0_combout\ & (!\A|ul1|Selector2~2_combout\ & \A|ul1|Selector6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Selector2~1_combout\,
	datab => \A|ul1|Selector2~0_combout\,
	datac => \A|ul1|Selector2~2_combout\,
	datad => \A|ul1|Selector6~1_combout\,
	combout => \A|ul1|Selector2~3_combout\);

-- Location: LCCOMB_X90_Y11_N28
\A|ul1|Selector2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector2~4_combout\ = (((\A|ul1|data_write\(6) & !\A|ul1|WideNor0~combout\)) # (!\A|ul1|Selector2~3_combout\)) # (!\A|ul1|WideNor0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|WideNor0~2_combout\,
	datab => \A|ul1|Selector2~3_combout\,
	datac => \A|ul1|data_write\(6),
	datad => \A|ul1|WideNor0~combout\,
	combout => \A|ul1|Selector2~4_combout\);

-- Location: FF_X90_Y11_N29
\A|ul1|data_write[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ul1|Selector2~4_combout\,
	clrn => \A|df1|q\(21),
	ena => \A|ul1|data_write[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|data_write\(6));

-- Location: LCCOMB_X59_Y24_N6
\A|lc1|Selector39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector39~0_combout\ = (\A|ul1|send_enable~q\ & (\A|ul1|data_write\(6) & \A|lc1|state.ready~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|send_enable~q\,
	datac => \A|ul1|data_write\(6),
	datad => \A|lc1|state.ready~q\,
	combout => \A|lc1|Selector39~0_combout\);

-- Location: FF_X59_Y24_N7
\A|lc1|lcd_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|lc1|Selector39~0_combout\,
	ena => \A|lc1|lcd_data[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|lcd_data\(6));

-- Location: LCCOMB_X90_Y11_N22
\A|ul1|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector1~0_combout\ = ((\A|ul1|data_write\(7) & !\A|ul1|WideNor0~combout\)) # (!\A|ul1|WideNor0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|WideNor0~0_combout\,
	datac => \A|ul1|data_write\(7),
	datad => \A|ul1|WideNor0~combout\,
	combout => \A|ul1|Selector1~0_combout\);

-- Location: FF_X90_Y11_N23
\A|ul1|data_write[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ul1|Selector1~0_combout\,
	clrn => \A|df1|q\(21),
	ena => \A|ul1|data_write[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|data_write\(7));

-- Location: LCCOMB_X59_Y24_N16
\A|lc1|Selector38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector38~0_combout\ = (\A|ul1|data_write\(7) & (\A|ul1|send_enable~q\ & \A|lc1|state.ready~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|data_write\(7),
	datac => \A|ul1|send_enable~q\,
	datad => \A|lc1|state.ready~q\,
	combout => \A|lc1|Selector38~0_combout\);

-- Location: FF_X59_Y24_N17
\A|lc1|lcd_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|lc1|Selector38~0_combout\,
	ena => \A|lc1|lcd_data[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|lcd_data\(7));

-- Location: LCCOMB_X89_Y8_N4
\B|ctl|addr_reg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|ctl|addr_reg[0]~0_combout\ = (\tsw[17]~input_o\ & !\B|ctl|state.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[17]~input_o\,
	datad => \B|ctl|state.idle~q\,
	combout => \B|ctl|addr_reg[0]~0_combout\);

-- Location: FF_X89_Y8_N9
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

-- Location: FF_X89_Y8_N27
\B|ctl|addr_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \tsw[1]~input_o\,
	clrn => \psw[0]~input_o\,
	sload => VCC,
	ena => \B|ctl|addr_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|ctl|addr_reg\(1));

-- Location: FF_X89_Y8_N13
\B|ctl|addr_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \tsw[2]~input_o\,
	clrn => \psw[0]~input_o\,
	sload => VCC,
	ena => \B|ctl|addr_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|ctl|addr_reg\(2));

-- Location: FF_X89_Y8_N23
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

-- Location: LCCOMB_X89_Y8_N24
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

-- Location: FF_X89_Y8_N25
\B|ctl|addr_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \B|ctl|addr_reg[4]~feeder_combout\,
	clrn => \psw[0]~input_o\,
	ena => \B|ctl|addr_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|ctl|addr_reg\(4));

-- Location: FF_X89_Y8_N3
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

-- Location: LCCOMB_X89_Y8_N28
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

-- Location: FF_X89_Y8_N29
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

-- Location: FF_X89_Y8_N7
\B|ctl|addr_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \tsw[7]~input_o\,
	clrn => \psw[0]~input_o\,
	sload => VCC,
	ena => \B|ctl|addr_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|ctl|addr_reg\(7));

-- Location: LCCOMB_X83_Y4_N24
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

-- Location: FF_X83_Y4_N25
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

-- Location: LCCOMB_X89_Y8_N0
\B|ctl|oe_buf~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|ctl|oe_buf~0_combout\ = (\B|ctl|state.r1~q\) # ((\tsw[17]~input_o\ & (\psw[3]~input_o\ & !\B|ctl|state.idle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[17]~input_o\,
	datab => \B|ctl|state.r1~q\,
	datac => \psw[3]~input_o\,
	datad => \B|ctl|state.idle~q\,
	combout => \B|ctl|oe_buf~0_combout\);

-- Location: FF_X89_Y8_N1
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

-- Location: LCCOMB_X60_Y24_N20
\A|lc1|Selector46~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector46~3_combout\ = (\A|lc1|LessThan4~2_combout\) # ((\A|lc1|LessThan2~2_combout\) # ((\A|lc1|busy~2_combout\ & !\A|lc1|LessThan5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|LessThan4~2_combout\,
	datab => \A|lc1|busy~2_combout\,
	datac => \A|lc1|LessThan2~2_combout\,
	datad => \A|lc1|LessThan5~2_combout\,
	combout => \A|lc1|Selector46~3_combout\);

-- Location: LCCOMB_X60_Y24_N26
\A|lc1|Selector46~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector46~2_combout\ = (\A|lc1|LessThan7~2_combout\) # ((!\A|lc1|LessThan8~5_combout\ & \A|lc1|lcd_en~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|LessThan7~2_combout\,
	datab => \A|lc1|LessThan8~5_combout\,
	datac => \A|lc1|lcd_en~q\,
	combout => \A|lc1|Selector46~2_combout\);

-- Location: LCCOMB_X60_Y24_N30
\A|lc1|Selector46~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector46~4_combout\ = (\A|lc1|Add0~60_combout\ & (((\A|lc1|Selector46~2_combout\)))) # (!\A|lc1|Add0~60_combout\ & (!\A|lc1|Selector46~3_combout\ & ((\A|lc1|Selector46~2_combout\) # (\A|lc1|LessThan5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Add0~60_combout\,
	datab => \A|lc1|Selector46~3_combout\,
	datac => \A|lc1|Selector46~2_combout\,
	datad => \A|lc1|LessThan5~2_combout\,
	combout => \A|lc1|Selector46~4_combout\);

-- Location: LCCOMB_X60_Y24_N0
\A|lc1|Selector46~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector46~5_combout\ = (!\A|lc1|Add0~60_combout\ & ((\A|lc1|LessThan1~6_combout\) # ((\A|lc1|LessThan3~2_combout\ & !\A|lc1|LessThan2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Add0~60_combout\,
	datab => \A|lc1|LessThan3~2_combout\,
	datac => \A|lc1|LessThan2~2_combout\,
	datad => \A|lc1|LessThan1~6_combout\,
	combout => \A|lc1|Selector46~5_combout\);

-- Location: LCCOMB_X60_Y24_N10
\A|lc1|Selector46~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector46~6_combout\ = (\A|lc1|state.init~q\ & (((\A|lc1|Add0~62_combout\) # (\A|lc1|Selector46~5_combout\)))) # (!\A|lc1|state.init~q\ & (\A|lc1|lcd_en~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|lcd_en~q\,
	datab => \A|lc1|state.init~q\,
	datac => \A|lc1|Add0~62_combout\,
	datad => \A|lc1|Selector46~5_combout\,
	combout => \A|lc1|Selector46~6_combout\);

-- Location: LCCOMB_X60_Y24_N22
\A|lc1|Selector46~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector46~11_combout\ = (!\A|lc1|state.send~q\ & ((\A|lc1|Selector46~6_combout\) # ((\A|lc1|Selector46~4_combout\ & \A|lc1|state.init~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Selector46~4_combout\,
	datab => \A|lc1|state.init~q\,
	datac => \A|lc1|state.send~q\,
	datad => \A|lc1|Selector46~6_combout\,
	combout => \A|lc1|Selector46~11_combout\);

-- Location: LCCOMB_X60_Y26_N14
\A|lc1|LessThan9~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan9~9_combout\ = (\A|lc1|LessThan9~8_combout\ & (\A|lc1|LessThan9~4_combout\ & \A|lc1|LessThan9~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|LessThan9~8_combout\,
	datab => \A|lc1|LessThan9~4_combout\,
	datac => \A|lc1|LessThan9~7_combout\,
	combout => \A|lc1|LessThan9~9_combout\);

-- Location: LCCOMB_X60_Y27_N20
\A|lc1|LessThan10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan10~1_combout\ = (\A|lc1|count\(4) & \A|lc1|count\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|lc1|count\(4),
	datad => \A|lc1|count\(5),
	combout => \A|lc1|LessThan10~1_combout\);

-- Location: LCCOMB_X60_Y27_N6
\A|lc1|LessThan11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan11~0_combout\ = (!\A|lc1|count\(6) & (((!\A|lc1|count\(2)) # (!\A|lc1|LessThan10~1_combout\)) # (!\A|lc1|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|count\(3),
	datab => \A|lc1|LessThan10~1_combout\,
	datac => \A|lc1|count\(2),
	datad => \A|lc1|count\(6),
	combout => \A|lc1|LessThan11~0_combout\);

-- Location: LCCOMB_X60_Y27_N24
\A|lc1|LessThan11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan11~1_combout\ = ((!\A|lc1|count\(8) & ((\A|lc1|LessThan11~0_combout\) # (!\A|lc1|count\(7))))) # (!\A|lc1|count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|LessThan11~0_combout\,
	datab => \A|lc1|count\(9),
	datac => \A|lc1|count\(8),
	datad => \A|lc1|count\(7),
	combout => \A|lc1|LessThan11~1_combout\);

-- Location: LCCOMB_X60_Y27_N26
\A|lc1|LessThan10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan10~2_combout\ = ((!\A|lc1|count\(3) & (!\A|lc1|count\(1) & !\A|lc1|count\(2)))) # (!\A|lc1|LessThan10~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|count\(3),
	datab => \A|lc1|count\(1),
	datac => \A|lc1|count\(2),
	datad => \A|lc1|LessThan10~1_combout\,
	combout => \A|lc1|LessThan10~2_combout\);

-- Location: LCCOMB_X60_Y27_N28
\A|lc1|LessThan10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan10~3_combout\ = (!\A|lc1|count\(6) & (!\A|lc1|count\(9) & (!\A|lc1|count\(8) & !\A|lc1|count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|count\(6),
	datab => \A|lc1|count\(9),
	datac => \A|lc1|count\(8),
	datad => \A|lc1|count\(7),
	combout => \A|lc1|LessThan10~3_combout\);

-- Location: LCCOMB_X61_Y27_N28
\A|lc1|LessThan12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan12~0_combout\ = (!\A|lc1|count\(21) & (!\A|lc1|count\(11) & (\A|lc1|LessThan9~3_combout\ & !\A|lc1|count\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|count\(21),
	datab => \A|lc1|count\(11),
	datac => \A|lc1|LessThan9~3_combout\,
	datad => \A|lc1|count\(18),
	combout => \A|lc1|LessThan12~0_combout\);

-- Location: LCCOMB_X60_Y27_N30
\A|lc1|LessThan10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan10~4_combout\ = (\A|lc1|LessThan10~2_combout\ & (\A|lc1|LessThan10~3_combout\ & (!\A|lc1|count\(10) & \A|lc1|LessThan12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|LessThan10~2_combout\,
	datab => \A|lc1|LessThan10~3_combout\,
	datac => \A|lc1|count\(10),
	datad => \A|lc1|LessThan12~0_combout\,
	combout => \A|lc1|LessThan10~4_combout\);

-- Location: LCCOMB_X61_Y27_N16
\A|lc1|LessThan10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan10~0_combout\ = (\A|lc1|LessThan9~4_combout\ & (!\A|lc1|count\(10) & !\A|lc1|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|LessThan9~4_combout\,
	datac => \A|lc1|count\(10),
	datad => \A|lc1|count\(11),
	combout => \A|lc1|LessThan10~0_combout\);

-- Location: LCCOMB_X60_Y27_N8
\A|lc1|Selector46~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector46~7_combout\ = (\A|lc1|LessThan9~9_combout\ & (\A|lc1|LessThan11~1_combout\ & (!\A|lc1|LessThan10~4_combout\ & \A|lc1|LessThan10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|LessThan9~9_combout\,
	datab => \A|lc1|LessThan11~1_combout\,
	datac => \A|lc1|LessThan10~4_combout\,
	datad => \A|lc1|LessThan10~0_combout\,
	combout => \A|lc1|Selector46~7_combout\);

-- Location: LCCOMB_X60_Y27_N10
\A|lc1|LessThan9~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan9~10_combout\ = (!\A|lc1|count\(4) & (!\A|lc1|count\(3) & !\A|lc1|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|lc1|count\(4),
	datac => \A|lc1|count\(3),
	datad => \A|lc1|count\(5),
	combout => \A|lc1|LessThan9~10_combout\);

-- Location: LCCOMB_X60_Y27_N4
\A|lc1|LessThan12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan12~1_combout\ = ((\A|lc1|LessThan9~10_combout\ & ((!\A|lc1|count\(2)) # (!\A|lc1|count\(1))))) # (!\A|lc1|count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|LessThan9~10_combout\,
	datab => \A|lc1|count\(1),
	datac => \A|lc1|count\(2),
	datad => \A|lc1|count\(6),
	combout => \A|lc1|LessThan12~1_combout\);

-- Location: LCCOMB_X60_Y27_N22
\A|lc1|LessThan12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|LessThan12~2_combout\ = (!\A|lc1|count\(9) & (((\A|lc1|LessThan12~1_combout\ & !\A|lc1|count\(7))) # (!\A|lc1|count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|count\(8),
	datab => \A|lc1|count\(9),
	datac => \A|lc1|LessThan12~1_combout\,
	datad => \A|lc1|count\(7),
	combout => \A|lc1|LessThan12~2_combout\);

-- Location: LCCOMB_X60_Y27_N16
\A|lc1|Selector46~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector46~8_combout\ = (!\A|lc1|LessThan10~4_combout\ & (((!\A|lc1|LessThan12~2_combout\ & \A|lc1|count\(10))) # (!\A|lc1|LessThan12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|LessThan12~2_combout\,
	datab => \A|lc1|count\(10),
	datac => \A|lc1|LessThan10~4_combout\,
	datad => \A|lc1|LessThan12~0_combout\,
	combout => \A|lc1|Selector46~8_combout\);

-- Location: LCCOMB_X60_Y24_N12
\A|lc1|Selector46~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector46~9_combout\ = (\A|lc1|Selector46~7_combout\) # ((\A|lc1|lcd_en~q\ & ((\A|lc1|Selector46~8_combout\) # (!\A|lc1|LessThan9~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Selector46~7_combout\,
	datab => \A|lc1|lcd_en~q\,
	datac => \A|lc1|Selector46~8_combout\,
	datad => \A|lc1|LessThan9~9_combout\,
	combout => \A|lc1|Selector46~9_combout\);

-- Location: LCCOMB_X60_Y24_N8
\A|lc1|Selector46~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector46~10_combout\ = (\A|lc1|Selector46~11_combout\) # ((!\A|lc1|count\(31) & (\A|lc1|state.send~q\ & \A|lc1|Selector46~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Selector46~11_combout\,
	datab => \A|lc1|count\(31),
	datac => \A|lc1|state.send~q\,
	datad => \A|lc1|Selector46~9_combout\,
	combout => \A|lc1|Selector46~10_combout\);

-- Location: FF_X60_Y24_N9
\A|lc1|lcd_en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|lc1|Selector46~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|lcd_en~q\);

-- Location: LCCOMB_X60_Y26_N10
\A|lc1|lcd_rs~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|lcd_rs~0_combout\ = (\A|lc1|lcd_rs~q\ & ((\A|lc1|state.power~q\ & ((!\A|lc1|state.ready~q\))) # (!\A|lc1|state.power~q\ & (\A|lc1|LessThan0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|lcd_rs~q\,
	datab => \A|lc1|LessThan0~6_combout\,
	datac => \A|lc1|state.ready~q\,
	datad => \A|lc1|state.power~q\,
	combout => \A|lc1|lcd_rs~0_combout\);

-- Location: LCCOMB_X90_Y11_N4
\A|ul1|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector0~1_combout\ = ((\A|ul1|Equal7~4_combout\) # ((\A|ul1|Equal31~0_combout\) # (\A|ul1|Equal23~0_combout\))) # (!\A|ul1|Selector3~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Selector3~4_combout\,
	datab => \A|ul1|Equal7~4_combout\,
	datac => \A|ul1|Equal31~0_combout\,
	datad => \A|ul1|Equal23~0_combout\,
	combout => \A|ul1|Selector0~1_combout\);

-- Location: LCCOMB_X90_Y11_N2
\A|ul1|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector0~0_combout\ = (\A|ul1|Equal32~0_combout\) # ((\A|ul1|Equal24~0_combout\) # ((\A|ul1|WideNor0~0_combout\ & \A|ul1|data_write\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|WideNor0~0_combout\,
	datab => \A|ul1|data_write\(9),
	datac => \A|ul1|Equal32~0_combout\,
	datad => \A|ul1|Equal24~0_combout\,
	combout => \A|ul1|Selector0~0_combout\);

-- Location: LCCOMB_X90_Y11_N0
\A|ul1|Selector0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector0~2_combout\ = (((\A|ul1|Selector0~1_combout\) # (\A|ul1|Selector0~0_combout\)) # (!\A|ul1|Selector6~1_combout\)) # (!\A|ul1|WideNor0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|WideNor0~2_combout\,
	datab => \A|ul1|Selector6~1_combout\,
	datac => \A|ul1|Selector0~1_combout\,
	datad => \A|ul1|Selector0~0_combout\,
	combout => \A|ul1|Selector0~2_combout\);

-- Location: FF_X90_Y11_N1
\A|ul1|data_write[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ul1|Selector0~2_combout\,
	clrn => \A|df1|q\(21),
	ena => \A|ul1|data_write[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|data_write\(9));

-- Location: LCCOMB_X60_Y26_N22
\A|lc1|lcd_rs~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|lcd_rs~1_combout\ = (\A|lc1|lcd_rs~0_combout\) # ((\A|lc1|state.power~q\ & (\A|ul1|data_write\(9) & \A|lc1|Selector35~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|lcd_rs~0_combout\,
	datab => \A|lc1|state.power~q\,
	datac => \A|ul1|data_write\(9),
	datad => \A|lc1|Selector35~2_combout\,
	combout => \A|lc1|lcd_rs~1_combout\);

-- Location: FF_X60_Y26_N23
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

-- Location: LCCOMB_X89_Y7_N8
\B|dp11|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp11|Mux6~0_combout\ = (\tsw[3]~input_o\ & (\tsw[0]~input_o\ & (\tsw[1]~input_o\ $ (\tsw[2]~input_o\)))) # (!\tsw[3]~input_o\ & (!\tsw[1]~input_o\ & (\tsw[2]~input_o\ $ (\tsw[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[1]~input_o\,
	datab => \tsw[3]~input_o\,
	datac => \tsw[2]~input_o\,
	datad => \tsw[0]~input_o\,
	combout => \B|dp11|Mux6~0_combout\);

-- Location: LCCOMB_X89_Y7_N26
\B|dp11|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp11|Mux5~0_combout\ = (\tsw[1]~input_o\ & ((\tsw[0]~input_o\ & (\tsw[3]~input_o\)) # (!\tsw[0]~input_o\ & ((\tsw[2]~input_o\))))) # (!\tsw[1]~input_o\ & (\tsw[2]~input_o\ & (\tsw[3]~input_o\ $ (\tsw[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[1]~input_o\,
	datab => \tsw[3]~input_o\,
	datac => \tsw[2]~input_o\,
	datad => \tsw[0]~input_o\,
	combout => \B|dp11|Mux5~0_combout\);

-- Location: LCCOMB_X89_Y7_N12
\B|dp11|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp11|Mux4~0_combout\ = (\tsw[3]~input_o\ & (\tsw[2]~input_o\ & ((\tsw[1]~input_o\) # (!\tsw[0]~input_o\)))) # (!\tsw[3]~input_o\ & (\tsw[1]~input_o\ & (!\tsw[2]~input_o\ & !\tsw[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[1]~input_o\,
	datab => \tsw[3]~input_o\,
	datac => \tsw[2]~input_o\,
	datad => \tsw[0]~input_o\,
	combout => \B|dp11|Mux4~0_combout\);

-- Location: LCCOMB_X89_Y7_N6
\B|dp11|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp11|Mux3~0_combout\ = (\tsw[0]~input_o\ & (\tsw[1]~input_o\ $ (((!\tsw[2]~input_o\))))) # (!\tsw[0]~input_o\ & ((\tsw[1]~input_o\ & (\tsw[3]~input_o\ & !\tsw[2]~input_o\)) # (!\tsw[1]~input_o\ & (!\tsw[3]~input_o\ & \tsw[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[1]~input_o\,
	datab => \tsw[3]~input_o\,
	datac => \tsw[2]~input_o\,
	datad => \tsw[0]~input_o\,
	combout => \B|dp11|Mux3~0_combout\);

-- Location: LCCOMB_X89_Y7_N24
\B|dp11|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp11|Mux2~0_combout\ = (\tsw[1]~input_o\ & (!\tsw[3]~input_o\ & ((\tsw[0]~input_o\)))) # (!\tsw[1]~input_o\ & ((\tsw[2]~input_o\ & (!\tsw[3]~input_o\)) # (!\tsw[2]~input_o\ & ((\tsw[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[1]~input_o\,
	datab => \tsw[3]~input_o\,
	datac => \tsw[2]~input_o\,
	datad => \tsw[0]~input_o\,
	combout => \B|dp11|Mux2~0_combout\);

-- Location: LCCOMB_X89_Y7_N10
\B|dp11|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp11|Mux1~0_combout\ = (\tsw[1]~input_o\ & (!\tsw[3]~input_o\ & ((\tsw[0]~input_o\) # (!\tsw[2]~input_o\)))) # (!\tsw[1]~input_o\ & (\tsw[0]~input_o\ & (\tsw[3]~input_o\ $ (!\tsw[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[1]~input_o\,
	datab => \tsw[3]~input_o\,
	datac => \tsw[2]~input_o\,
	datad => \tsw[0]~input_o\,
	combout => \B|dp11|Mux1~0_combout\);

-- Location: LCCOMB_X89_Y7_N4
\B|dp11|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp11|Mux0~0_combout\ = (\tsw[0]~input_o\ & ((\tsw[3]~input_o\) # (\tsw[1]~input_o\ $ (\tsw[2]~input_o\)))) # (!\tsw[0]~input_o\ & ((\tsw[1]~input_o\) # (\tsw[3]~input_o\ $ (\tsw[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[1]~input_o\,
	datab => \tsw[3]~input_o\,
	datac => \tsw[2]~input_o\,
	datad => \tsw[0]~input_o\,
	combout => \B|dp11|Mux0~0_combout\);

-- Location: LCCOMB_X90_Y8_N24
\B|dp12|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp12|Mux6~0_combout\ = (\tsw[6]~input_o\ & (!\tsw[5]~input_o\ & (\tsw[4]~input_o\ $ (!\tsw[7]~input_o\)))) # (!\tsw[6]~input_o\ & (\tsw[4]~input_o\ & (\tsw[7]~input_o\ $ (!\tsw[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[6]~input_o\,
	datab => \tsw[4]~input_o\,
	datac => \tsw[7]~input_o\,
	datad => \tsw[5]~input_o\,
	combout => \B|dp12|Mux6~0_combout\);

-- Location: LCCOMB_X90_Y8_N26
\B|dp12|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp12|Mux5~0_combout\ = (\tsw[7]~input_o\ & ((\tsw[4]~input_o\ & ((\tsw[5]~input_o\))) # (!\tsw[4]~input_o\ & (\tsw[6]~input_o\)))) # (!\tsw[7]~input_o\ & (\tsw[6]~input_o\ & (\tsw[4]~input_o\ $ (\tsw[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[6]~input_o\,
	datab => \tsw[4]~input_o\,
	datac => \tsw[7]~input_o\,
	datad => \tsw[5]~input_o\,
	combout => \B|dp12|Mux5~0_combout\);

-- Location: LCCOMB_X90_Y8_N28
\B|dp12|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp12|Mux4~0_combout\ = (\tsw[6]~input_o\ & (\tsw[7]~input_o\ & ((\tsw[5]~input_o\) # (!\tsw[4]~input_o\)))) # (!\tsw[6]~input_o\ & (!\tsw[4]~input_o\ & (!\tsw[7]~input_o\ & \tsw[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[6]~input_o\,
	datab => \tsw[4]~input_o\,
	datac => \tsw[7]~input_o\,
	datad => \tsw[5]~input_o\,
	combout => \B|dp12|Mux4~0_combout\);

-- Location: LCCOMB_X90_Y8_N14
\B|dp12|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp12|Mux3~0_combout\ = (\tsw[4]~input_o\ & (\tsw[6]~input_o\ $ (((!\tsw[5]~input_o\))))) # (!\tsw[4]~input_o\ & ((\tsw[6]~input_o\ & (!\tsw[7]~input_o\ & !\tsw[5]~input_o\)) # (!\tsw[6]~input_o\ & (\tsw[7]~input_o\ & \tsw[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[6]~input_o\,
	datab => \tsw[4]~input_o\,
	datac => \tsw[7]~input_o\,
	datad => \tsw[5]~input_o\,
	combout => \B|dp12|Mux3~0_combout\);

-- Location: LCCOMB_X90_Y8_N8
\B|dp12|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp12|Mux2~0_combout\ = (\tsw[5]~input_o\ & (((\tsw[4]~input_o\ & !\tsw[7]~input_o\)))) # (!\tsw[5]~input_o\ & ((\tsw[6]~input_o\ & ((!\tsw[7]~input_o\))) # (!\tsw[6]~input_o\ & (\tsw[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[6]~input_o\,
	datab => \tsw[4]~input_o\,
	datac => \tsw[7]~input_o\,
	datad => \tsw[5]~input_o\,
	combout => \B|dp12|Mux2~0_combout\);

-- Location: LCCOMB_X90_Y8_N2
\B|dp12|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp12|Mux1~0_combout\ = (\tsw[6]~input_o\ & (\tsw[4]~input_o\ & (\tsw[7]~input_o\ $ (\tsw[5]~input_o\)))) # (!\tsw[6]~input_o\ & (!\tsw[7]~input_o\ & ((\tsw[4]~input_o\) # (\tsw[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[6]~input_o\,
	datab => \tsw[4]~input_o\,
	datac => \tsw[7]~input_o\,
	datad => \tsw[5]~input_o\,
	combout => \B|dp12|Mux1~0_combout\);

-- Location: LCCOMB_X90_Y8_N12
\B|dp12|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp12|Mux0~0_combout\ = (\tsw[4]~input_o\ & ((\tsw[7]~input_o\) # (\tsw[6]~input_o\ $ (\tsw[5]~input_o\)))) # (!\tsw[4]~input_o\ & ((\tsw[5]~input_o\) # (\tsw[6]~input_o\ $ (\tsw[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[6]~input_o\,
	datab => \tsw[4]~input_o\,
	datac => \tsw[7]~input_o\,
	datad => \tsw[5]~input_o\,
	combout => \B|dp12|Mux0~0_combout\);

-- Location: LCCOMB_X83_Y4_N26
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

-- Location: LCCOMB_X83_Y4_N20
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

-- Location: LCCOMB_X83_Y4_N14
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

-- Location: LCCOMB_X83_Y4_N8
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

-- Location: LCCOMB_X83_Y4_N18
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

-- Location: LCCOMB_X83_Y4_N28
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

-- Location: LCCOMB_X83_Y4_N30
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

-- Location: LCCOMB_X87_Y8_N16
\B|dp22|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp22|Mux6~0_combout\ = (\tsw[15]~input_o\ & (\tsw[12]~input_o\ & (\tsw[13]~input_o\ $ (\tsw[14]~input_o\)))) # (!\tsw[15]~input_o\ & (!\tsw[13]~input_o\ & (\tsw[12]~input_o\ $ (\tsw[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[15]~input_o\,
	datab => \tsw[12]~input_o\,
	datac => \tsw[13]~input_o\,
	datad => \tsw[14]~input_o\,
	combout => \B|dp22|Mux6~0_combout\);

-- Location: LCCOMB_X87_Y8_N2
\B|dp22|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp22|Mux5~0_combout\ = (\tsw[15]~input_o\ & ((\tsw[12]~input_o\ & (\tsw[13]~input_o\)) # (!\tsw[12]~input_o\ & ((\tsw[14]~input_o\))))) # (!\tsw[15]~input_o\ & (\tsw[14]~input_o\ & (\tsw[12]~input_o\ $ (\tsw[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[15]~input_o\,
	datab => \tsw[12]~input_o\,
	datac => \tsw[13]~input_o\,
	datad => \tsw[14]~input_o\,
	combout => \B|dp22|Mux5~0_combout\);

-- Location: LCCOMB_X87_Y8_N20
\B|dp22|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp22|Mux4~0_combout\ = (\tsw[15]~input_o\ & (\tsw[14]~input_o\ & ((\tsw[13]~input_o\) # (!\tsw[12]~input_o\)))) # (!\tsw[15]~input_o\ & (!\tsw[12]~input_o\ & (\tsw[13]~input_o\ & !\tsw[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[15]~input_o\,
	datab => \tsw[12]~input_o\,
	datac => \tsw[13]~input_o\,
	datad => \tsw[14]~input_o\,
	combout => \B|dp22|Mux4~0_combout\);

-- Location: LCCOMB_X87_Y8_N30
\B|dp22|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp22|Mux3~0_combout\ = (\tsw[12]~input_o\ & ((\tsw[13]~input_o\ $ (!\tsw[14]~input_o\)))) # (!\tsw[12]~input_o\ & ((\tsw[15]~input_o\ & (\tsw[13]~input_o\ & !\tsw[14]~input_o\)) # (!\tsw[15]~input_o\ & (!\tsw[13]~input_o\ & \tsw[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[15]~input_o\,
	datab => \tsw[12]~input_o\,
	datac => \tsw[13]~input_o\,
	datad => \tsw[14]~input_o\,
	combout => \B|dp22|Mux3~0_combout\);

-- Location: LCCOMB_X87_Y8_N0
\B|dp22|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp22|Mux2~0_combout\ = (\tsw[13]~input_o\ & (!\tsw[15]~input_o\ & (\tsw[12]~input_o\))) # (!\tsw[13]~input_o\ & ((\tsw[14]~input_o\ & (!\tsw[15]~input_o\)) # (!\tsw[14]~input_o\ & ((\tsw[12]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[15]~input_o\,
	datab => \tsw[12]~input_o\,
	datac => \tsw[13]~input_o\,
	datad => \tsw[14]~input_o\,
	combout => \B|dp22|Mux2~0_combout\);

-- Location: LCCOMB_X87_Y8_N10
\B|dp22|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp22|Mux1~0_combout\ = (\tsw[12]~input_o\ & (\tsw[15]~input_o\ $ (((\tsw[13]~input_o\) # (!\tsw[14]~input_o\))))) # (!\tsw[12]~input_o\ & (!\tsw[15]~input_o\ & (\tsw[13]~input_o\ & !\tsw[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[15]~input_o\,
	datab => \tsw[12]~input_o\,
	datac => \tsw[13]~input_o\,
	datad => \tsw[14]~input_o\,
	combout => \B|dp22|Mux1~0_combout\);

-- Location: LCCOMB_X87_Y8_N28
\B|dp22|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp22|Mux0~0_combout\ = (\tsw[12]~input_o\ & ((\tsw[15]~input_o\) # (\tsw[13]~input_o\ $ (\tsw[14]~input_o\)))) # (!\tsw[12]~input_o\ & ((\tsw[13]~input_o\) # (\tsw[15]~input_o\ $ (\tsw[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[15]~input_o\,
	datab => \tsw[12]~input_o\,
	datac => \tsw[13]~input_o\,
	datad => \tsw[14]~input_o\,
	combout => \B|dp22|Mux0~0_combout\);

-- Location: LCCOMB_X114_Y33_N10
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

-- Location: CLKCTRL_G7
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

-- Location: M9K_X104_Y10_N0
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

-- Location: FF_X108_Y26_N13
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

-- Location: LCCOMB_X108_Y26_N12
\B|data_display[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|data_display[2]~2_combout\ = (\tsw[17]~input_o\ & ((\B|ctl|data_read_reg\(2)))) # (!\tsw[17]~input_o\ & (\B|itnram|altsyncram_component|auto_generated|q_a\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B|itnram|altsyncram_component|auto_generated|q_a\(2),
	datac => \B|ctl|data_read_reg\(2),
	datad => \tsw[17]~input_o\,
	combout => \B|data_display[2]~2_combout\);

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

-- Location: FF_X108_Y26_N19
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

-- Location: LCCOMB_X108_Y26_N18
\B|data_display[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|data_display[1]~1_combout\ = (\tsw[17]~input_o\ & ((\B|ctl|data_read_reg\(1)))) # (!\tsw[17]~input_o\ & (\B|itnram|altsyncram_component|auto_generated|q_a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B|itnram|altsyncram_component|auto_generated|q_a\(1),
	datac => \B|ctl|data_read_reg\(1),
	datad => \tsw[17]~input_o\,
	combout => \B|data_display[1]~1_combout\);

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

-- Location: FF_X108_Y26_N31
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

-- Location: LCCOMB_X108_Y26_N30
\B|data_display[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|data_display[3]~3_combout\ = (\tsw[17]~input_o\ & ((\B|ctl|data_read_reg\(3)))) # (!\tsw[17]~input_o\ & (\B|itnram|altsyncram_component|auto_generated|q_a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B|itnram|altsyncram_component|auto_generated|q_a\(3),
	datac => \B|ctl|data_read_reg\(3),
	datad => \tsw[17]~input_o\,
	combout => \B|data_display[3]~3_combout\);

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

-- Location: FF_X108_Y26_N17
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

-- Location: LCCOMB_X108_Y26_N16
\B|data_display[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|data_display[0]~0_combout\ = (\tsw[17]~input_o\ & ((\B|ctl|data_read_reg\(0)))) # (!\tsw[17]~input_o\ & (\B|itnram|altsyncram_component|auto_generated|q_a\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B|itnram|altsyncram_component|auto_generated|q_a\(0),
	datac => \B|ctl|data_read_reg\(0),
	datad => \tsw[17]~input_o\,
	combout => \B|data_display[0]~0_combout\);

-- Location: LCCOMB_X108_Y26_N8
\B|dp13|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp13|Mux6~0_combout\ = (\B|data_display[2]~2_combout\ & (!\B|data_display[1]~1_combout\ & (\B|data_display[3]~3_combout\ $ (!\B|data_display[0]~0_combout\)))) # (!\B|data_display[2]~2_combout\ & (\B|data_display[0]~0_combout\ & 
-- (\B|data_display[1]~1_combout\ $ (!\B|data_display[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B|data_display[2]~2_combout\,
	datab => \B|data_display[1]~1_combout\,
	datac => \B|data_display[3]~3_combout\,
	datad => \B|data_display[0]~0_combout\,
	combout => \B|dp13|Mux6~0_combout\);

-- Location: LCCOMB_X108_Y26_N2
\B|dp13|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp13|Mux5~0_combout\ = (\B|data_display[1]~1_combout\ & ((\B|data_display[0]~0_combout\ & ((\B|data_display[3]~3_combout\))) # (!\B|data_display[0]~0_combout\ & (\B|data_display[2]~2_combout\)))) # (!\B|data_display[1]~1_combout\ & 
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
	combout => \B|dp13|Mux5~0_combout\);

-- Location: LCCOMB_X108_Y26_N4
\B|dp13|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp13|Mux4~0_combout\ = (\B|data_display[2]~2_combout\ & (\B|data_display[3]~3_combout\ & ((\B|data_display[1]~1_combout\) # (!\B|data_display[0]~0_combout\)))) # (!\B|data_display[2]~2_combout\ & (\B|data_display[1]~1_combout\ & 
-- (!\B|data_display[3]~3_combout\ & !\B|data_display[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B|data_display[2]~2_combout\,
	datab => \B|data_display[1]~1_combout\,
	datac => \B|data_display[3]~3_combout\,
	datad => \B|data_display[0]~0_combout\,
	combout => \B|dp13|Mux4~0_combout\);

-- Location: LCCOMB_X108_Y26_N22
\B|dp13|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp13|Mux3~0_combout\ = (\B|data_display[0]~0_combout\ & (\B|data_display[2]~2_combout\ $ ((!\B|data_display[1]~1_combout\)))) # (!\B|data_display[0]~0_combout\ & ((\B|data_display[2]~2_combout\ & (!\B|data_display[1]~1_combout\ & 
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
	combout => \B|dp13|Mux3~0_combout\);

-- Location: LCCOMB_X108_Y26_N0
\B|dp13|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp13|Mux2~0_combout\ = (\B|data_display[1]~1_combout\ & (((!\B|data_display[3]~3_combout\ & \B|data_display[0]~0_combout\)))) # (!\B|data_display[1]~1_combout\ & ((\B|data_display[2]~2_combout\ & (!\B|data_display[3]~3_combout\)) # 
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
	combout => \B|dp13|Mux2~0_combout\);

-- Location: LCCOMB_X108_Y26_N10
\B|dp13|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp13|Mux1~0_combout\ = (\B|data_display[2]~2_combout\ & (\B|data_display[0]~0_combout\ & (\B|data_display[1]~1_combout\ $ (\B|data_display[3]~3_combout\)))) # (!\B|data_display[2]~2_combout\ & (!\B|data_display[3]~3_combout\ & 
-- ((\B|data_display[1]~1_combout\) # (\B|data_display[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B|data_display[2]~2_combout\,
	datab => \B|data_display[1]~1_combout\,
	datac => \B|data_display[3]~3_combout\,
	datad => \B|data_display[0]~0_combout\,
	combout => \B|dp13|Mux1~0_combout\);

-- Location: LCCOMB_X108_Y26_N20
\B|dp13|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp13|Mux0~0_combout\ = (\B|data_display[0]~0_combout\ & ((\B|data_display[3]~3_combout\) # (\B|data_display[2]~2_combout\ $ (\B|data_display[1]~1_combout\)))) # (!\B|data_display[0]~0_combout\ & ((\B|data_display[1]~1_combout\) # 
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
	combout => \B|dp13|Mux0~0_combout\);

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

-- Location: FF_X108_Y26_N7
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

-- Location: LCCOMB_X108_Y26_N6
\B|data_display[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|data_display[4]~4_combout\ = (\tsw[17]~input_o\ & ((\B|ctl|data_read_reg\(4)))) # (!\tsw[17]~input_o\ & (\B|itnram|altsyncram_component|auto_generated|q_a\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B|itnram|altsyncram_component|auto_generated|q_a\(4),
	datac => \B|ctl|data_read_reg\(4),
	datad => \tsw[17]~input_o\,
	combout => \B|data_display[4]~4_combout\);

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

-- Location: FF_X108_Y26_N29
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

-- Location: LCCOMB_X108_Y26_N28
\B|data_display[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|data_display[7]~7_combout\ = (\tsw[17]~input_o\ & ((\B|ctl|data_read_reg\(7)))) # (!\tsw[17]~input_o\ & (\B|itnram|altsyncram_component|auto_generated|q_a\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B|itnram|altsyncram_component|auto_generated|q_a\(7),
	datac => \B|ctl|data_read_reg\(7),
	datad => \tsw[17]~input_o\,
	combout => \B|data_display[7]~7_combout\);

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

-- Location: FF_X108_Y26_N25
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

-- Location: LCCOMB_X108_Y26_N24
\B|data_display[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|data_display[5]~5_combout\ = (\tsw[17]~input_o\ & ((\B|ctl|data_read_reg\(5)))) # (!\tsw[17]~input_o\ & (\B|itnram|altsyncram_component|auto_generated|q_a\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B|itnram|altsyncram_component|auto_generated|q_a\(5),
	datac => \B|ctl|data_read_reg\(5),
	datad => \tsw[17]~input_o\,
	combout => \B|data_display[5]~5_combout\);

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

-- Location: FF_X108_Y26_N27
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

-- Location: LCCOMB_X108_Y26_N26
\B|data_display[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|data_display[6]~6_combout\ = (\tsw[17]~input_o\ & ((\B|ctl|data_read_reg\(6)))) # (!\tsw[17]~input_o\ & (\B|itnram|altsyncram_component|auto_generated|q_a\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B|itnram|altsyncram_component|auto_generated|q_a\(6),
	datac => \B|ctl|data_read_reg\(6),
	datad => \tsw[17]~input_o\,
	combout => \B|data_display[6]~6_combout\);

-- Location: LCCOMB_X114_Y26_N0
\B|dp23|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp23|Mux6~0_combout\ = (\B|data_display[7]~7_combout\ & (\B|data_display[4]~4_combout\ & (\B|data_display[5]~5_combout\ $ (\B|data_display[6]~6_combout\)))) # (!\B|data_display[7]~7_combout\ & (!\B|data_display[5]~5_combout\ & 
-- (\B|data_display[4]~4_combout\ $ (\B|data_display[6]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B|data_display[4]~4_combout\,
	datab => \B|data_display[7]~7_combout\,
	datac => \B|data_display[5]~5_combout\,
	datad => \B|data_display[6]~6_combout\,
	combout => \B|dp23|Mux6~0_combout\);

-- Location: LCCOMB_X114_Y26_N2
\B|dp23|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp23|Mux5~0_combout\ = (\B|data_display[7]~7_combout\ & ((\B|data_display[4]~4_combout\ & (\B|data_display[5]~5_combout\)) # (!\B|data_display[4]~4_combout\ & ((\B|data_display[6]~6_combout\))))) # (!\B|data_display[7]~7_combout\ & 
-- (\B|data_display[6]~6_combout\ & (\B|data_display[4]~4_combout\ $ (\B|data_display[5]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B|data_display[4]~4_combout\,
	datab => \B|data_display[7]~7_combout\,
	datac => \B|data_display[5]~5_combout\,
	datad => \B|data_display[6]~6_combout\,
	combout => \B|dp23|Mux5~0_combout\);

-- Location: LCCOMB_X114_Y26_N28
\B|dp23|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp23|Mux4~0_combout\ = (\B|data_display[7]~7_combout\ & (\B|data_display[6]~6_combout\ & ((\B|data_display[5]~5_combout\) # (!\B|data_display[4]~4_combout\)))) # (!\B|data_display[7]~7_combout\ & (!\B|data_display[4]~4_combout\ & 
-- (\B|data_display[5]~5_combout\ & !\B|data_display[6]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B|data_display[4]~4_combout\,
	datab => \B|data_display[7]~7_combout\,
	datac => \B|data_display[5]~5_combout\,
	datad => \B|data_display[6]~6_combout\,
	combout => \B|dp23|Mux4~0_combout\);

-- Location: LCCOMB_X114_Y26_N22
\B|dp23|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp23|Mux3~0_combout\ = (\B|data_display[4]~4_combout\ & ((\B|data_display[5]~5_combout\ $ (!\B|data_display[6]~6_combout\)))) # (!\B|data_display[4]~4_combout\ & ((\B|data_display[7]~7_combout\ & (\B|data_display[5]~5_combout\ & 
-- !\B|data_display[6]~6_combout\)) # (!\B|data_display[7]~7_combout\ & (!\B|data_display[5]~5_combout\ & \B|data_display[6]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B|data_display[4]~4_combout\,
	datab => \B|data_display[7]~7_combout\,
	datac => \B|data_display[5]~5_combout\,
	datad => \B|data_display[6]~6_combout\,
	combout => \B|dp23|Mux3~0_combout\);

-- Location: LCCOMB_X114_Y26_N8
\B|dp23|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp23|Mux2~0_combout\ = (\B|data_display[5]~5_combout\ & (\B|data_display[4]~4_combout\ & (!\B|data_display[7]~7_combout\))) # (!\B|data_display[5]~5_combout\ & ((\B|data_display[6]~6_combout\ & ((!\B|data_display[7]~7_combout\))) # 
-- (!\B|data_display[6]~6_combout\ & (\B|data_display[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B|data_display[4]~4_combout\,
	datab => \B|data_display[7]~7_combout\,
	datac => \B|data_display[5]~5_combout\,
	datad => \B|data_display[6]~6_combout\,
	combout => \B|dp23|Mux2~0_combout\);

-- Location: LCCOMB_X114_Y26_N18
\B|dp23|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp23|Mux1~0_combout\ = (\B|data_display[4]~4_combout\ & (\B|data_display[7]~7_combout\ $ (((\B|data_display[5]~5_combout\) # (!\B|data_display[6]~6_combout\))))) # (!\B|data_display[4]~4_combout\ & (!\B|data_display[7]~7_combout\ & 
-- (\B|data_display[5]~5_combout\ & !\B|data_display[6]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B|data_display[4]~4_combout\,
	datab => \B|data_display[7]~7_combout\,
	datac => \B|data_display[5]~5_combout\,
	datad => \B|data_display[6]~6_combout\,
	combout => \B|dp23|Mux1~0_combout\);

-- Location: LCCOMB_X114_Y26_N12
\B|dp23|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp23|Mux0~0_combout\ = (\B|data_display[4]~4_combout\ & ((\B|data_display[7]~7_combout\) # (\B|data_display[5]~5_combout\ $ (\B|data_display[6]~6_combout\)))) # (!\B|data_display[4]~4_combout\ & ((\B|data_display[5]~5_combout\) # 
-- (\B|data_display[7]~7_combout\ $ (\B|data_display[6]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B|data_display[4]~4_combout\,
	datab => \B|data_display[7]~7_combout\,
	datac => \B|data_display[5]~5_combout\,
	datad => \B|data_display[6]~6_combout\,
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
END structure;


