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

-- DATE "09/05/2024 18:24:38"

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
	segoutR : BUFFER std_logic_vector(13 DOWNTO 0)
	);
END top_module;

-- Design Ports Information
-- tsw[16]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tsw[17]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- clk	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- psw[0]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- psw[2]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tsw[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tsw[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tsw[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tsw[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tsw[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tsw[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tsw[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- psw[3]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tsw[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tsw[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tsw[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tsw[11]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tsw[12]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tsw[13]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tsw[14]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tsw[15]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_segoutR : std_logic_vector(13 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \A|ck1|q[21]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \tsw[16]~input_o\ : std_logic;
SIGNAL \tsw[17]~input_o\ : std_logic;
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
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \tsw[8]~input_o\ : std_logic;
SIGNAL \B|ctl|data_write_reg[0]~feeder_combout\ : std_logic;
SIGNAL \psw[0]~input_o\ : std_logic;
SIGNAL \psw[2]~input_o\ : std_logic;
SIGNAL \psw[3]~input_o\ : std_logic;
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
SIGNAL \tsw[11]~input_o\ : std_logic;
SIGNAL \B|ctl|data_write_reg[3]~feeder_combout\ : std_logic;
SIGNAL \tsw[12]~input_o\ : std_logic;
SIGNAL \B|ctl|data_write_reg[4]~feeder_combout\ : std_logic;
SIGNAL \tsw[13]~input_o\ : std_logic;
SIGNAL \tsw[14]~input_o\ : std_logic;
SIGNAL \B|ctl|data_write_reg[6]~feeder_combout\ : std_logic;
SIGNAL \tsw[15]~input_o\ : std_logic;
SIGNAL \A|ck1|q[0]~63_combout\ : std_logic;
SIGNAL \A|ck1|q[1]~21_combout\ : std_logic;
SIGNAL \A|ck1|q[1]~22\ : std_logic;
SIGNAL \A|ck1|q[2]~23_combout\ : std_logic;
SIGNAL \A|ck1|q[2]~24\ : std_logic;
SIGNAL \A|ck1|q[3]~25_combout\ : std_logic;
SIGNAL \A|ck1|q[3]~26\ : std_logic;
SIGNAL \A|ck1|q[4]~27_combout\ : std_logic;
SIGNAL \A|ck1|q[4]~28\ : std_logic;
SIGNAL \A|ck1|q[5]~29_combout\ : std_logic;
SIGNAL \A|ck1|q[5]~30\ : std_logic;
SIGNAL \A|ck1|q[6]~31_combout\ : std_logic;
SIGNAL \A|ck1|q[6]~32\ : std_logic;
SIGNAL \A|ck1|q[7]~33_combout\ : std_logic;
SIGNAL \A|ck1|q[7]~34\ : std_logic;
SIGNAL \A|ck1|q[8]~35_combout\ : std_logic;
SIGNAL \A|ck1|q[8]~36\ : std_logic;
SIGNAL \A|ck1|q[9]~37_combout\ : std_logic;
SIGNAL \A|ck1|q[9]~38\ : std_logic;
SIGNAL \A|ck1|q[10]~39_combout\ : std_logic;
SIGNAL \A|ck1|q[10]~40\ : std_logic;
SIGNAL \A|ck1|q[11]~41_combout\ : std_logic;
SIGNAL \A|ck1|q[11]~42\ : std_logic;
SIGNAL \A|ck1|q[12]~43_combout\ : std_logic;
SIGNAL \A|ck1|q[12]~44\ : std_logic;
SIGNAL \A|ck1|q[13]~45_combout\ : std_logic;
SIGNAL \A|ck1|q[13]~46\ : std_logic;
SIGNAL \A|ck1|q[14]~47_combout\ : std_logic;
SIGNAL \A|ck1|q[14]~48\ : std_logic;
SIGNAL \A|ck1|q[15]~49_combout\ : std_logic;
SIGNAL \A|ck1|q[15]~50\ : std_logic;
SIGNAL \A|ck1|q[16]~51_combout\ : std_logic;
SIGNAL \A|ck1|q[16]~52\ : std_logic;
SIGNAL \A|ck1|q[17]~53_combout\ : std_logic;
SIGNAL \A|ck1|q[17]~54\ : std_logic;
SIGNAL \A|ck1|q[18]~55_combout\ : std_logic;
SIGNAL \A|ck1|q[18]~56\ : std_logic;
SIGNAL \A|ck1|q[19]~57_combout\ : std_logic;
SIGNAL \A|ck1|q[19]~58\ : std_logic;
SIGNAL \A|ck1|q[20]~59_combout\ : std_logic;
SIGNAL \A|ck1|q[20]~60\ : std_logic;
SIGNAL \A|ck1|q[21]~61_combout\ : std_logic;
SIGNAL \A|ck1|q[21]~clkctrl_outclk\ : std_logic;
SIGNAL \A|lc1|state.power~feeder_combout\ : std_logic;
SIGNAL \A|lc1|state.power~q\ : std_logic;
SIGNAL \A|lc1|state.init1~0_combout\ : std_logic;
SIGNAL \A|lc1|state.init1~q\ : std_logic;
SIGNAL \A|lc1|state.init2~q\ : std_logic;
SIGNAL \A|lc1|state.init3~q\ : std_logic;
SIGNAL \A|lc1|state.init4~feeder_combout\ : std_logic;
SIGNAL \A|lc1|state.init4~q\ : std_logic;
SIGNAL \A|lc1|state.init5~q\ : std_logic;
SIGNAL \A|lc1|state.init6~feeder_combout\ : std_logic;
SIGNAL \A|lc1|state.init6~q\ : std_logic;
SIGNAL \A|lc1|state.init7~q\ : std_logic;
SIGNAL \A|lc1|state.init8~q\ : std_logic;
SIGNAL \A|lc1|state.init9~feeder_combout\ : std_logic;
SIGNAL \A|lc1|state.init9~q\ : std_logic;
SIGNAL \A|lc1|Selector10~1_combout\ : std_logic;
SIGNAL \A|lc1|busy_reg~q\ : std_logic;
SIGNAL \A|ul1|process_0~0_combout\ : std_logic;
SIGNAL \A|ul1|Add0~2_combout\ : std_logic;
SIGNAL \A|ul1|Add0~95_combout\ : std_logic;
SIGNAL \A|ul1|Add0~3\ : std_logic;
SIGNAL \A|ul1|Add0~4_combout\ : std_logic;
SIGNAL \A|ul1|Add0~94_combout\ : std_logic;
SIGNAL \A|ul1|Add0~5\ : std_logic;
SIGNAL \A|ul1|Add0~7\ : std_logic;
SIGNAL \A|ul1|Add0~8_combout\ : std_logic;
SIGNAL \A|ul1|Add0~71_combout\ : std_logic;
SIGNAL \A|ul1|Add0~9\ : std_logic;
SIGNAL \A|ul1|Add0~10_combout\ : std_logic;
SIGNAL \A|ul1|Add0~72_combout\ : std_logic;
SIGNAL \A|ul1|Add0~11\ : std_logic;
SIGNAL \A|ul1|Add0~12_combout\ : std_logic;
SIGNAL \A|ul1|Add0~73_combout\ : std_logic;
SIGNAL \A|ul1|Add0~13\ : std_logic;
SIGNAL \A|ul1|Add0~14_combout\ : std_logic;
SIGNAL \A|ul1|Add0~74_combout\ : std_logic;
SIGNAL \A|ul1|Add0~15\ : std_logic;
SIGNAL \A|ul1|Add0~16_combout\ : std_logic;
SIGNAL \A|ul1|Add0~75_combout\ : std_logic;
SIGNAL \A|ul1|count[7]~feeder_combout\ : std_logic;
SIGNAL \A|ul1|Add0~17\ : std_logic;
SIGNAL \A|ul1|Add0~18_combout\ : std_logic;
SIGNAL \A|ul1|Add0~76_combout\ : std_logic;
SIGNAL \A|ul1|count[8]~feeder_combout\ : std_logic;
SIGNAL \A|ul1|Add0~19\ : std_logic;
SIGNAL \A|ul1|Add0~20_combout\ : std_logic;
SIGNAL \A|ul1|Add0~77_combout\ : std_logic;
SIGNAL \A|ul1|Add0~21\ : std_logic;
SIGNAL \A|ul1|Add0~22_combout\ : std_logic;
SIGNAL \A|ul1|Add0~78_combout\ : std_logic;
SIGNAL \A|ul1|Add0~23\ : std_logic;
SIGNAL \A|ul1|Add0~24_combout\ : std_logic;
SIGNAL \A|ul1|Add0~79_combout\ : std_logic;
SIGNAL \A|ul1|Add0~25\ : std_logic;
SIGNAL \A|ul1|Add0~26_combout\ : std_logic;
SIGNAL \A|ul1|Add0~80_combout\ : std_logic;
SIGNAL \A|ul1|Add0~27\ : std_logic;
SIGNAL \A|ul1|Add0~28_combout\ : std_logic;
SIGNAL \A|ul1|Add0~81_combout\ : std_logic;
SIGNAL \A|ul1|Add0~29\ : std_logic;
SIGNAL \A|ul1|Add0~30_combout\ : std_logic;
SIGNAL \A|ul1|Add0~82_combout\ : std_logic;
SIGNAL \A|ul1|Add0~31\ : std_logic;
SIGNAL \A|ul1|Add0~32_combout\ : std_logic;
SIGNAL \A|ul1|Add0~83_combout\ : std_logic;
SIGNAL \A|ul1|Add0~33\ : std_logic;
SIGNAL \A|ul1|Add0~34_combout\ : std_logic;
SIGNAL \A|ul1|Add0~84_combout\ : std_logic;
SIGNAL \A|ul1|Add0~35\ : std_logic;
SIGNAL \A|ul1|Add0~36_combout\ : std_logic;
SIGNAL \A|ul1|Add0~85_combout\ : std_logic;
SIGNAL \A|ul1|Add0~37\ : std_logic;
SIGNAL \A|ul1|Add0~38_combout\ : std_logic;
SIGNAL \A|ul1|Add0~86_combout\ : std_logic;
SIGNAL \A|ul1|Add0~39\ : std_logic;
SIGNAL \A|ul1|Add0~40_combout\ : std_logic;
SIGNAL \A|ul1|Add0~87_combout\ : std_logic;
SIGNAL \A|ul1|Add0~41\ : std_logic;
SIGNAL \A|ul1|Add0~42_combout\ : std_logic;
SIGNAL \A|ul1|Add0~88_combout\ : std_logic;
SIGNAL \A|ul1|Add0~43\ : std_logic;
SIGNAL \A|ul1|Add0~44_combout\ : std_logic;
SIGNAL \A|ul1|Add0~89_combout\ : std_logic;
SIGNAL \A|ul1|Add0~45\ : std_logic;
SIGNAL \A|ul1|Add0~46_combout\ : std_logic;
SIGNAL \A|ul1|Add0~90_combout\ : std_logic;
SIGNAL \A|ul1|LessThan0~2_combout\ : std_logic;
SIGNAL \A|ul1|Add0~47\ : std_logic;
SIGNAL \A|ul1|Add0~48_combout\ : std_logic;
SIGNAL \A|ul1|Add0~70_combout\ : std_logic;
SIGNAL \A|ul1|Add0~49\ : std_logic;
SIGNAL \A|ul1|Add0~50_combout\ : std_logic;
SIGNAL \A|ul1|Add0~91_combout\ : std_logic;
SIGNAL \A|ul1|Add0~51\ : std_logic;
SIGNAL \A|ul1|Add0~52_combout\ : std_logic;
SIGNAL \A|ul1|Add0~92_combout\ : std_logic;
SIGNAL \A|ul1|Add0~53\ : std_logic;
SIGNAL \A|ul1|Add0~54_combout\ : std_logic;
SIGNAL \A|ul1|Add0~69_combout\ : std_logic;
SIGNAL \A|ul1|LessThan0~1_combout\ : std_logic;
SIGNAL \A|ul1|LessThan0~3_combout\ : std_logic;
SIGNAL \A|ul1|LessThan0~6_combout\ : std_logic;
SIGNAL \A|ul1|LessThan0~5_combout\ : std_logic;
SIGNAL \A|ul1|LessThan0~7_combout\ : std_logic;
SIGNAL \A|ul1|LessThan0~10_combout\ : std_logic;
SIGNAL \A|ul1|Add0~55\ : std_logic;
SIGNAL \A|ul1|Add0~56_combout\ : std_logic;
SIGNAL \A|ul1|Add0~68_combout\ : std_logic;
SIGNAL \A|ul1|Add0~57\ : std_logic;
SIGNAL \A|ul1|Add0~58_combout\ : std_logic;
SIGNAL \A|ul1|Add0~96_combout\ : std_logic;
SIGNAL \A|ul1|Add0~59\ : std_logic;
SIGNAL \A|ul1|Add0~60_combout\ : std_logic;
SIGNAL \A|ul1|Add0~66_combout\ : std_logic;
SIGNAL \A|ul1|Add0~61\ : std_logic;
SIGNAL \A|ul1|Add0~62_combout\ : std_logic;
SIGNAL \A|ul1|Add0~67_combout\ : std_logic;
SIGNAL \A|ul1|LessThan0~0_combout\ : std_logic;
SIGNAL \A|ul1|LessThan0~4_combout\ : std_logic;
SIGNAL \A|ul1|LessThan0~8_combout\ : std_logic;
SIGNAL \A|ul1|Add0~63\ : std_logic;
SIGNAL \A|ul1|Add0~64_combout\ : std_logic;
SIGNAL \A|ul1|Add0~97_combout\ : std_logic;
SIGNAL \A|ul1|LessThan0~9_combout\ : std_logic;
SIGNAL \A|ul1|Add0~6_combout\ : std_logic;
SIGNAL \A|ul1|Add0~93_combout\ : std_logic;
SIGNAL \A|ul1|Equal0~0_combout\ : std_logic;
SIGNAL \A|ul1|Equal0~6_combout\ : std_logic;
SIGNAL \A|ul1|Equal0~1_combout\ : std_logic;
SIGNAL \A|ul1|Equal0~4_combout\ : std_logic;
SIGNAL \A|ul1|Equal0~2_combout\ : std_logic;
SIGNAL \A|ul1|Equal0~3_combout\ : std_logic;
SIGNAL \A|ul1|Equal0~5_combout\ : std_logic;
SIGNAL \A|ul1|Equal0~7_combout\ : std_logic;
SIGNAL \A|ul1|Equal0~8_combout\ : std_logic;
SIGNAL \A|ul1|Equal0~9_combout\ : std_logic;
SIGNAL \A|ul1|WideNor0~combout\ : std_logic;
SIGNAL \A|ul1|send_enable~0_combout\ : std_logic;
SIGNAL \A|ul1|send_enable~q\ : std_logic;
SIGNAL \A|lc1|Selector0~0_combout\ : std_logic;
SIGNAL \A|lc1|state.ready~q\ : std_logic;
SIGNAL \A|lc1|Selector2~0_combout\ : std_logic;
SIGNAL \A|lc1|state.send1~q\ : std_logic;
SIGNAL \A|lc1|state.send2~q\ : std_logic;
SIGNAL \A|lc1|state.send3~feeder_combout\ : std_logic;
SIGNAL \A|lc1|state.send3~q\ : std_logic;
SIGNAL \A|lc1|state.send4~q\ : std_logic;
SIGNAL \A|lc1|Selector10~0_combout\ : std_logic;
SIGNAL \A|lc1|WideOr1~combout\ : std_logic;
SIGNAL \tsw[4]~input_o\ : std_logic;
SIGNAL \A|ul1|Equal0~10_combout\ : std_logic;
SIGNAL \A|ul1|Equal5~0_combout\ : std_logic;
SIGNAL \tsw[0]~input_o\ : std_logic;
SIGNAL \A|ul1|Equal6~0_combout\ : std_logic;
SIGNAL \A|ul1|Selector6~0_combout\ : std_logic;
SIGNAL \A|ul1|Selector6~1_combout\ : std_logic;
SIGNAL \A|lc1|Selector8~0_combout\ : std_logic;
SIGNAL \A|lc1|Selector8~1_combout\ : std_logic;
SIGNAL \A|ul1|Selector5~1_combout\ : std_logic;
SIGNAL \tsw[5]~input_o\ : std_logic;
SIGNAL \tsw[1]~input_o\ : std_logic;
SIGNAL \A|ul1|Selector5~0_combout\ : std_logic;
SIGNAL \A|ul1|Selector5~2_combout\ : std_logic;
SIGNAL \A|lc1|Selector7~0_combout\ : std_logic;
SIGNAL \A|lc1|Selector7~1_combout\ : std_logic;
SIGNAL \A|lc1|Selector6~0_combout\ : std_logic;
SIGNAL \A|ul1|Selector4~1_combout\ : std_logic;
SIGNAL \tsw[6]~input_o\ : std_logic;
SIGNAL \tsw[2]~input_o\ : std_logic;
SIGNAL \A|ul1|Selector4~0_combout\ : std_logic;
SIGNAL \A|ul1|Selector4~2_combout\ : std_logic;
SIGNAL \A|lc1|Selector6~1_combout\ : std_logic;
SIGNAL \A|lc1|Selector6~2_combout\ : std_logic;
SIGNAL \tsw[7]~input_o\ : std_logic;
SIGNAL \A|ul1|Equal4~0_combout\ : std_logic;
SIGNAL \tsw[3]~input_o\ : std_logic;
SIGNAL \A|ul1|Selector3~0_combout\ : std_logic;
SIGNAL \A|ul1|Selector3~1_combout\ : std_logic;
SIGNAL \A|lc1|Selector5~0_combout\ : std_logic;
SIGNAL \A|lc1|Selector5~1_combout\ : std_logic;
SIGNAL \A|lc1|Selector4~2_combout\ : std_logic;
SIGNAL \A|lc1|WideOr9~0_combout\ : std_logic;
SIGNAL \A|lc1|Selector4~3_combout\ : std_logic;
SIGNAL \A|ul1|Selector2~0_combout\ : std_logic;
SIGNAL \A|lc1|Selector4~4_combout\ : std_logic;
SIGNAL \A|lc1|Selector3~2_combout\ : std_logic;
SIGNAL \A|ul1|Selector1~0_combout\ : std_logic;
SIGNAL \A|lc1|Selector3~3_combout\ : std_logic;
SIGNAL \A|ul1|WideNor0~0_combout\ : std_logic;
SIGNAL \A|ul1|Selector0~0_combout\ : std_logic;
SIGNAL \A|lc1|Selector2~1_combout\ : std_logic;
SIGNAL \B|ctl|addr_reg[0]~0_combout\ : std_logic;
SIGNAL \B|ctl|addr_reg[4]~feeder_combout\ : std_logic;
SIGNAL \B|ctl|addr_reg[5]~feeder_combout\ : std_logic;
SIGNAL \B|ctl|addr_reg[6]~feeder_combout\ : std_logic;
SIGNAL \B|ctl|addr_reg[7]~feeder_combout\ : std_logic;
SIGNAL \B|ctl|we_reg~q\ : std_logic;
SIGNAL \B|ctl|oe_buf~0_combout\ : std_logic;
SIGNAL \B|ctl|oe_reg~q\ : std_logic;
SIGNAL \A|lc1|WideOr9~combout\ : std_logic;
SIGNAL \A|lc1|en_reg~q\ : std_logic;
SIGNAL \A|lc1|Selector9~0_combout\ : std_logic;
SIGNAL \A|ul1|data_write[9]~0_combout\ : std_logic;
SIGNAL \A|lc1|Selector9~1_combout\ : std_logic;
SIGNAL \A|lc1|rs_reg~q\ : std_logic;
SIGNAL \dio_sram[1]~input_o\ : std_logic;
SIGNAL \B|ctl|data_read_reg[1]~feeder_combout\ : std_logic;
SIGNAL \dio_sram[2]~input_o\ : std_logic;
SIGNAL \B|ctl|data_read_reg[2]~feeder_combout\ : std_logic;
SIGNAL \dio_sram[3]~input_o\ : std_logic;
SIGNAL \B|ctl|data_read_reg[3]~feeder_combout\ : std_logic;
SIGNAL \dio_sram[0]~input_o\ : std_logic;
SIGNAL \B|dp1|Mux6~0_combout\ : std_logic;
SIGNAL \B|dp1|Mux5~0_combout\ : std_logic;
SIGNAL \B|dp1|Mux4~0_combout\ : std_logic;
SIGNAL \B|dp1|Mux3~0_combout\ : std_logic;
SIGNAL \B|dp1|Mux2~0_combout\ : std_logic;
SIGNAL \B|dp1|Mux1~0_combout\ : std_logic;
SIGNAL \B|dp1|Mux0~0_combout\ : std_logic;
SIGNAL \dio_sram[6]~input_o\ : std_logic;
SIGNAL \dio_sram[7]~input_o\ : std_logic;
SIGNAL \dio_sram[4]~input_o\ : std_logic;
SIGNAL \B|ctl|data_read_reg[4]~feeder_combout\ : std_logic;
SIGNAL \dio_sram[5]~input_o\ : std_logic;
SIGNAL \B|dp2|Mux6~0_combout\ : std_logic;
SIGNAL \B|dp2|Mux5~0_combout\ : std_logic;
SIGNAL \B|dp2|Mux4~0_combout\ : std_logic;
SIGNAL \B|dp2|Mux3~0_combout\ : std_logic;
SIGNAL \B|dp2|Mux2~0_combout\ : std_logic;
SIGNAL \B|dp2|Mux1~0_combout\ : std_logic;
SIGNAL \B|dp2|Mux0~0_combout\ : std_logic;
SIGNAL \B|ctl|data_write_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \A|ck1|q\ : std_logic_vector(21 DOWNTO 0);
SIGNAL \A|ul1|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \B|ctl|addr_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \A|lc1|data_write_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \A|ul1|data_write\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \B|ctl|data_read_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \A|ul1|ALT_INV_send_enable~0_combout\ : std_logic;
SIGNAL \B|dp2|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \B|dp1|ALT_INV_Mux0~0_combout\ : std_logic;
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
segoutR <= ww_segoutR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\A|ck1|q[21]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \A|ck1|q\(21));
\A|ul1|ALT_INV_send_enable~0_combout\ <= NOT \A|ul1|send_enable~0_combout\;
\B|dp2|ALT_INV_Mux0~0_combout\ <= NOT \B|dp2|Mux0~0_combout\;
\B|dp1|ALT_INV_Mux0~0_combout\ <= NOT \B|dp1|Mux0~0_combout\;
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
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
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

-- Location: IOOBUF_X69_Y73_N23
\segoutR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|dp1|Mux6~0_combout\,
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
	i => \B|dp1|Mux5~0_combout\,
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
	i => \B|dp1|Mux4~0_combout\,
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
	i => \B|dp1|Mux3~0_combout\,
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
	i => \B|dp1|Mux2~0_combout\,
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
	i => \B|dp1|Mux1~0_combout\,
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
	i => \B|dp1|ALT_INV_Mux0~0_combout\,
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
	i => \B|dp2|Mux6~0_combout\,
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
	i => \B|dp2|Mux5~0_combout\,
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
	i => \B|dp2|Mux4~0_combout\,
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
	i => \B|dp2|Mux3~0_combout\,
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
	i => \B|dp2|Mux2~0_combout\,
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
	i => \B|dp2|Mux1~0_combout\,
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
	i => \B|dp2|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \segoutR[13]~output_o\);

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

-- Location: LCCOMB_X107_Y7_N28
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

-- Location: LCCOMB_X107_Y11_N6
\B|ctl|nextstate.r1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|ctl|nextstate.r1~0_combout\ = (\psw[2]~input_o\ & (\psw[3]~input_o\ & !\B|ctl|state.idle~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \psw[2]~input_o\,
	datac => \psw[3]~input_o\,
	datad => \B|ctl|state.idle~q\,
	combout => \B|ctl|nextstate.r1~0_combout\);

-- Location: FF_X107_Y11_N7
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

-- Location: LCCOMB_X105_Y11_N28
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

-- Location: FF_X105_Y11_N29
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

-- Location: LCCOMB_X107_Y7_N18
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

-- Location: FF_X107_Y7_N19
\B|ctl|state.w1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \B|ctl|state.w1~feeder_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|ctl|state.w1~q\);

-- Location: LCCOMB_X107_Y7_N26
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

-- Location: FF_X107_Y7_N27
\B|ctl|state.w2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \B|ctl|state.w2~feeder_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|ctl|state.w2~q\);

-- Location: LCCOMB_X106_Y7_N12
\B|ctl|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|ctl|Selector0~0_combout\ = (!\B|ctl|state.r2~q\ & (!\B|ctl|state.w2~q\ & ((\psw[2]~input_o\) # (\B|ctl|state.idle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B|ctl|state.r2~q\,
	datab => \psw[2]~input_o\,
	datac => \B|ctl|state.idle~q\,
	datad => \B|ctl|state.w2~q\,
	combout => \B|ctl|Selector0~0_combout\);

-- Location: FF_X106_Y7_N13
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

-- Location: LCCOMB_X107_Y7_N8
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

-- Location: FF_X107_Y7_N29
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

-- Location: LCCOMB_X107_Y7_N10
\B|ctl|tri_buf~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|ctl|tri_buf~0_combout\ = (\B|ctl|state.w1~q\) # ((\psw[2]~input_o\ & (!\psw[3]~input_o\ & !\B|ctl|state.idle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \psw[2]~input_o\,
	datab => \B|ctl|state.w1~q\,
	datac => \psw[3]~input_o\,
	datad => \B|ctl|state.idle~q\,
	combout => \B|ctl|tri_buf~0_combout\);

-- Location: FF_X107_Y7_N11
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

-- Location: LCCOMB_X107_Y7_N20
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

-- Location: FF_X107_Y7_N21
\B|ctl|data_write_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
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

-- Location: FF_X107_Y7_N7
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

-- Location: LCCOMB_X107_Y7_N12
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

-- Location: FF_X107_Y7_N13
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

-- Location: LCCOMB_X107_Y7_N14
\B|ctl|data_write_reg[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|ctl|data_write_reg[4]~feeder_combout\ = \tsw[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tsw[12]~input_o\,
	combout => \B|ctl|data_write_reg[4]~feeder_combout\);

-- Location: FF_X107_Y7_N15
\B|ctl|data_write_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \B|ctl|data_write_reg[4]~feeder_combout\,
	clrn => \psw[0]~input_o\,
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

-- Location: FF_X107_Y7_N25
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

-- Location: LCCOMB_X107_Y7_N30
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

-- Location: FF_X107_Y7_N31
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

-- Location: FF_X107_Y7_N17
\B|ctl|data_write_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \tsw[15]~input_o\,
	clrn => \psw[0]~input_o\,
	sload => VCC,
	ena => \B|ctl|nextstate.w1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|ctl|data_write_reg\(7));

-- Location: LCCOMB_X114_Y36_N8
\A|ck1|q[0]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ck1|q[0]~63_combout\ = !\A|ck1|q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|ck1|q\(0),
	combout => \A|ck1|q[0]~63_combout\);

-- Location: FF_X114_Y36_N9
\A|ck1|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ck1|q[0]~63_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ck1|q\(0));

-- Location: LCCOMB_X114_Y36_N12
\A|ck1|q[1]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ck1|q[1]~21_combout\ = (\A|ck1|q\(1) & (\A|ck1|q\(0) $ (VCC))) # (!\A|ck1|q\(1) & (\A|ck1|q\(0) & VCC))
-- \A|ck1|q[1]~22\ = CARRY((\A|ck1|q\(1) & \A|ck1|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ck1|q\(1),
	datab => \A|ck1|q\(0),
	datad => VCC,
	combout => \A|ck1|q[1]~21_combout\,
	cout => \A|ck1|q[1]~22\);

-- Location: FF_X114_Y36_N13
\A|ck1|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ck1|q[1]~21_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ck1|q\(1));

-- Location: LCCOMB_X114_Y36_N14
\A|ck1|q[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ck1|q[2]~23_combout\ = (\A|ck1|q\(2) & (!\A|ck1|q[1]~22\)) # (!\A|ck1|q\(2) & ((\A|ck1|q[1]~22\) # (GND)))
-- \A|ck1|q[2]~24\ = CARRY((!\A|ck1|q[1]~22\) # (!\A|ck1|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ck1|q\(2),
	datad => VCC,
	cin => \A|ck1|q[1]~22\,
	combout => \A|ck1|q[2]~23_combout\,
	cout => \A|ck1|q[2]~24\);

-- Location: FF_X114_Y36_N15
\A|ck1|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ck1|q[2]~23_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ck1|q\(2));

-- Location: LCCOMB_X114_Y36_N16
\A|ck1|q[3]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ck1|q[3]~25_combout\ = (\A|ck1|q\(3) & (\A|ck1|q[2]~24\ $ (GND))) # (!\A|ck1|q\(3) & (!\A|ck1|q[2]~24\ & VCC))
-- \A|ck1|q[3]~26\ = CARRY((\A|ck1|q\(3) & !\A|ck1|q[2]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ck1|q\(3),
	datad => VCC,
	cin => \A|ck1|q[2]~24\,
	combout => \A|ck1|q[3]~25_combout\,
	cout => \A|ck1|q[3]~26\);

-- Location: FF_X114_Y36_N17
\A|ck1|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ck1|q[3]~25_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ck1|q\(3));

-- Location: LCCOMB_X114_Y36_N18
\A|ck1|q[4]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ck1|q[4]~27_combout\ = (\A|ck1|q\(4) & (!\A|ck1|q[3]~26\)) # (!\A|ck1|q\(4) & ((\A|ck1|q[3]~26\) # (GND)))
-- \A|ck1|q[4]~28\ = CARRY((!\A|ck1|q[3]~26\) # (!\A|ck1|q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ck1|q\(4),
	datad => VCC,
	cin => \A|ck1|q[3]~26\,
	combout => \A|ck1|q[4]~27_combout\,
	cout => \A|ck1|q[4]~28\);

-- Location: FF_X114_Y36_N19
\A|ck1|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ck1|q[4]~27_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ck1|q\(4));

-- Location: LCCOMB_X114_Y36_N20
\A|ck1|q[5]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ck1|q[5]~29_combout\ = (\A|ck1|q\(5) & (\A|ck1|q[4]~28\ $ (GND))) # (!\A|ck1|q\(5) & (!\A|ck1|q[4]~28\ & VCC))
-- \A|ck1|q[5]~30\ = CARRY((\A|ck1|q\(5) & !\A|ck1|q[4]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ck1|q\(5),
	datad => VCC,
	cin => \A|ck1|q[4]~28\,
	combout => \A|ck1|q[5]~29_combout\,
	cout => \A|ck1|q[5]~30\);

-- Location: FF_X114_Y36_N21
\A|ck1|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ck1|q[5]~29_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ck1|q\(5));

-- Location: LCCOMB_X114_Y36_N22
\A|ck1|q[6]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ck1|q[6]~31_combout\ = (\A|ck1|q\(6) & (!\A|ck1|q[5]~30\)) # (!\A|ck1|q\(6) & ((\A|ck1|q[5]~30\) # (GND)))
-- \A|ck1|q[6]~32\ = CARRY((!\A|ck1|q[5]~30\) # (!\A|ck1|q\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|ck1|q\(6),
	datad => VCC,
	cin => \A|ck1|q[5]~30\,
	combout => \A|ck1|q[6]~31_combout\,
	cout => \A|ck1|q[6]~32\);

-- Location: FF_X114_Y36_N23
\A|ck1|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ck1|q[6]~31_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ck1|q\(6));

-- Location: LCCOMB_X114_Y36_N24
\A|ck1|q[7]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ck1|q[7]~33_combout\ = (\A|ck1|q\(7) & (\A|ck1|q[6]~32\ $ (GND))) # (!\A|ck1|q\(7) & (!\A|ck1|q[6]~32\ & VCC))
-- \A|ck1|q[7]~34\ = CARRY((\A|ck1|q\(7) & !\A|ck1|q[6]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ck1|q\(7),
	datad => VCC,
	cin => \A|ck1|q[6]~32\,
	combout => \A|ck1|q[7]~33_combout\,
	cout => \A|ck1|q[7]~34\);

-- Location: FF_X114_Y36_N25
\A|ck1|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ck1|q[7]~33_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ck1|q\(7));

-- Location: LCCOMB_X114_Y36_N26
\A|ck1|q[8]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ck1|q[8]~35_combout\ = (\A|ck1|q\(8) & (!\A|ck1|q[7]~34\)) # (!\A|ck1|q\(8) & ((\A|ck1|q[7]~34\) # (GND)))
-- \A|ck1|q[8]~36\ = CARRY((!\A|ck1|q[7]~34\) # (!\A|ck1|q\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|ck1|q\(8),
	datad => VCC,
	cin => \A|ck1|q[7]~34\,
	combout => \A|ck1|q[8]~35_combout\,
	cout => \A|ck1|q[8]~36\);

-- Location: FF_X114_Y36_N27
\A|ck1|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ck1|q[8]~35_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ck1|q\(8));

-- Location: LCCOMB_X114_Y36_N28
\A|ck1|q[9]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ck1|q[9]~37_combout\ = (\A|ck1|q\(9) & (\A|ck1|q[8]~36\ $ (GND))) # (!\A|ck1|q\(9) & (!\A|ck1|q[8]~36\ & VCC))
-- \A|ck1|q[9]~38\ = CARRY((\A|ck1|q\(9) & !\A|ck1|q[8]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ck1|q\(9),
	datad => VCC,
	cin => \A|ck1|q[8]~36\,
	combout => \A|ck1|q[9]~37_combout\,
	cout => \A|ck1|q[9]~38\);

-- Location: FF_X114_Y36_N29
\A|ck1|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ck1|q[9]~37_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ck1|q\(9));

-- Location: LCCOMB_X114_Y36_N30
\A|ck1|q[10]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ck1|q[10]~39_combout\ = (\A|ck1|q\(10) & (!\A|ck1|q[9]~38\)) # (!\A|ck1|q\(10) & ((\A|ck1|q[9]~38\) # (GND)))
-- \A|ck1|q[10]~40\ = CARRY((!\A|ck1|q[9]~38\) # (!\A|ck1|q\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|ck1|q\(10),
	datad => VCC,
	cin => \A|ck1|q[9]~38\,
	combout => \A|ck1|q[10]~39_combout\,
	cout => \A|ck1|q[10]~40\);

-- Location: FF_X114_Y36_N31
\A|ck1|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ck1|q[10]~39_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ck1|q\(10));

-- Location: LCCOMB_X114_Y35_N0
\A|ck1|q[11]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ck1|q[11]~41_combout\ = (\A|ck1|q\(11) & (\A|ck1|q[10]~40\ $ (GND))) # (!\A|ck1|q\(11) & (!\A|ck1|q[10]~40\ & VCC))
-- \A|ck1|q[11]~42\ = CARRY((\A|ck1|q\(11) & !\A|ck1|q[10]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ck1|q\(11),
	datad => VCC,
	cin => \A|ck1|q[10]~40\,
	combout => \A|ck1|q[11]~41_combout\,
	cout => \A|ck1|q[11]~42\);

-- Location: FF_X114_Y35_N1
\A|ck1|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ck1|q[11]~41_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ck1|q\(11));

-- Location: LCCOMB_X114_Y35_N2
\A|ck1|q[12]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ck1|q[12]~43_combout\ = (\A|ck1|q\(12) & (!\A|ck1|q[11]~42\)) # (!\A|ck1|q\(12) & ((\A|ck1|q[11]~42\) # (GND)))
-- \A|ck1|q[12]~44\ = CARRY((!\A|ck1|q[11]~42\) # (!\A|ck1|q\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ck1|q\(12),
	datad => VCC,
	cin => \A|ck1|q[11]~42\,
	combout => \A|ck1|q[12]~43_combout\,
	cout => \A|ck1|q[12]~44\);

-- Location: FF_X114_Y35_N3
\A|ck1|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ck1|q[12]~43_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ck1|q\(12));

-- Location: LCCOMB_X114_Y35_N4
\A|ck1|q[13]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ck1|q[13]~45_combout\ = (\A|ck1|q\(13) & (\A|ck1|q[12]~44\ $ (GND))) # (!\A|ck1|q\(13) & (!\A|ck1|q[12]~44\ & VCC))
-- \A|ck1|q[13]~46\ = CARRY((\A|ck1|q\(13) & !\A|ck1|q[12]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ck1|q\(13),
	datad => VCC,
	cin => \A|ck1|q[12]~44\,
	combout => \A|ck1|q[13]~45_combout\,
	cout => \A|ck1|q[13]~46\);

-- Location: FF_X114_Y35_N5
\A|ck1|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ck1|q[13]~45_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ck1|q\(13));

-- Location: LCCOMB_X114_Y35_N6
\A|ck1|q[14]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ck1|q[14]~47_combout\ = (\A|ck1|q\(14) & (!\A|ck1|q[13]~46\)) # (!\A|ck1|q\(14) & ((\A|ck1|q[13]~46\) # (GND)))
-- \A|ck1|q[14]~48\ = CARRY((!\A|ck1|q[13]~46\) # (!\A|ck1|q\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|ck1|q\(14),
	datad => VCC,
	cin => \A|ck1|q[13]~46\,
	combout => \A|ck1|q[14]~47_combout\,
	cout => \A|ck1|q[14]~48\);

-- Location: FF_X114_Y35_N7
\A|ck1|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ck1|q[14]~47_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ck1|q\(14));

-- Location: LCCOMB_X114_Y35_N8
\A|ck1|q[15]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ck1|q[15]~49_combout\ = (\A|ck1|q\(15) & (\A|ck1|q[14]~48\ $ (GND))) # (!\A|ck1|q\(15) & (!\A|ck1|q[14]~48\ & VCC))
-- \A|ck1|q[15]~50\ = CARRY((\A|ck1|q\(15) & !\A|ck1|q[14]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ck1|q\(15),
	datad => VCC,
	cin => \A|ck1|q[14]~48\,
	combout => \A|ck1|q[15]~49_combout\,
	cout => \A|ck1|q[15]~50\);

-- Location: FF_X114_Y35_N9
\A|ck1|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ck1|q[15]~49_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ck1|q\(15));

-- Location: LCCOMB_X114_Y35_N10
\A|ck1|q[16]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ck1|q[16]~51_combout\ = (\A|ck1|q\(16) & (!\A|ck1|q[15]~50\)) # (!\A|ck1|q\(16) & ((\A|ck1|q[15]~50\) # (GND)))
-- \A|ck1|q[16]~52\ = CARRY((!\A|ck1|q[15]~50\) # (!\A|ck1|q\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|ck1|q\(16),
	datad => VCC,
	cin => \A|ck1|q[15]~50\,
	combout => \A|ck1|q[16]~51_combout\,
	cout => \A|ck1|q[16]~52\);

-- Location: FF_X114_Y35_N11
\A|ck1|q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ck1|q[16]~51_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ck1|q\(16));

-- Location: LCCOMB_X114_Y35_N12
\A|ck1|q[17]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ck1|q[17]~53_combout\ = (\A|ck1|q\(17) & (\A|ck1|q[16]~52\ $ (GND))) # (!\A|ck1|q\(17) & (!\A|ck1|q[16]~52\ & VCC))
-- \A|ck1|q[17]~54\ = CARRY((\A|ck1|q\(17) & !\A|ck1|q[16]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|ck1|q\(17),
	datad => VCC,
	cin => \A|ck1|q[16]~52\,
	combout => \A|ck1|q[17]~53_combout\,
	cout => \A|ck1|q[17]~54\);

-- Location: FF_X114_Y35_N13
\A|ck1|q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ck1|q[17]~53_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ck1|q\(17));

-- Location: LCCOMB_X114_Y35_N14
\A|ck1|q[18]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ck1|q[18]~55_combout\ = (\A|ck1|q\(18) & (!\A|ck1|q[17]~54\)) # (!\A|ck1|q\(18) & ((\A|ck1|q[17]~54\) # (GND)))
-- \A|ck1|q[18]~56\ = CARRY((!\A|ck1|q[17]~54\) # (!\A|ck1|q\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ck1|q\(18),
	datad => VCC,
	cin => \A|ck1|q[17]~54\,
	combout => \A|ck1|q[18]~55_combout\,
	cout => \A|ck1|q[18]~56\);

-- Location: FF_X114_Y35_N15
\A|ck1|q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ck1|q[18]~55_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ck1|q\(18));

-- Location: LCCOMB_X114_Y35_N16
\A|ck1|q[19]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ck1|q[19]~57_combout\ = (\A|ck1|q\(19) & (\A|ck1|q[18]~56\ $ (GND))) # (!\A|ck1|q\(19) & (!\A|ck1|q[18]~56\ & VCC))
-- \A|ck1|q[19]~58\ = CARRY((\A|ck1|q\(19) & !\A|ck1|q[18]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ck1|q\(19),
	datad => VCC,
	cin => \A|ck1|q[18]~56\,
	combout => \A|ck1|q[19]~57_combout\,
	cout => \A|ck1|q[19]~58\);

-- Location: FF_X114_Y35_N17
\A|ck1|q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ck1|q[19]~57_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ck1|q\(19));

-- Location: LCCOMB_X114_Y35_N18
\A|ck1|q[20]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ck1|q[20]~59_combout\ = (\A|ck1|q\(20) & (!\A|ck1|q[19]~58\)) # (!\A|ck1|q\(20) & ((\A|ck1|q[19]~58\) # (GND)))
-- \A|ck1|q[20]~60\ = CARRY((!\A|ck1|q[19]~58\) # (!\A|ck1|q\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ck1|q\(20),
	datad => VCC,
	cin => \A|ck1|q[19]~58\,
	combout => \A|ck1|q[20]~59_combout\,
	cout => \A|ck1|q[20]~60\);

-- Location: FF_X114_Y35_N19
\A|ck1|q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ck1|q[20]~59_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ck1|q\(20));

-- Location: LCCOMB_X114_Y35_N20
\A|ck1|q[21]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ck1|q[21]~61_combout\ = \A|ck1|q[20]~60\ $ (!\A|ck1|q\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \A|ck1|q\(21),
	cin => \A|ck1|q[20]~60\,
	combout => \A|ck1|q[21]~61_combout\);

-- Location: FF_X114_Y35_N21
\A|ck1|q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A|ck1|q[21]~61_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ck1|q\(21));

-- Location: CLKCTRL_G7
\A|ck1|q[21]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \A|ck1|q[21]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \A|ck1|q[21]~clkctrl_outclk\);

-- Location: LCCOMB_X94_Y40_N10
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

-- Location: FF_X94_Y40_N11
\A|lc1|state.power\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[21]~clkctrl_outclk\,
	d => \A|lc1|state.power~feeder_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|state.power~q\);

-- Location: LCCOMB_X94_Y40_N8
\A|lc1|state.init1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|state.init1~0_combout\ = !\A|lc1|state.power~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|lc1|state.power~q\,
	combout => \A|lc1|state.init1~0_combout\);

-- Location: FF_X94_Y40_N9
\A|lc1|state.init1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[21]~clkctrl_outclk\,
	d => \A|lc1|state.init1~0_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|state.init1~q\);

-- Location: FF_X94_Y40_N5
\A|lc1|state.init2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[21]~clkctrl_outclk\,
	asdata => \A|lc1|state.init1~q\,
	clrn => \psw[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|state.init2~q\);

-- Location: FF_X94_Y40_N27
\A|lc1|state.init3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[21]~clkctrl_outclk\,
	asdata => \A|lc1|state.init2~q\,
	clrn => \psw[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|state.init3~q\);

-- Location: LCCOMB_X94_Y40_N22
\A|lc1|state.init4~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|state.init4~feeder_combout\ = \A|lc1|state.init3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A|lc1|state.init3~q\,
	combout => \A|lc1|state.init4~feeder_combout\);

-- Location: FF_X94_Y40_N23
\A|lc1|state.init4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[21]~clkctrl_outclk\,
	d => \A|lc1|state.init4~feeder_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|state.init4~q\);

-- Location: FF_X94_Y40_N25
\A|lc1|state.init5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[21]~clkctrl_outclk\,
	asdata => \A|lc1|state.init4~q\,
	clrn => \psw[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|state.init5~q\);

-- Location: LCCOMB_X94_Y40_N30
\A|lc1|state.init6~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|state.init6~feeder_combout\ = \A|lc1|state.init5~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A|lc1|state.init5~q\,
	combout => \A|lc1|state.init6~feeder_combout\);

-- Location: FF_X94_Y40_N31
\A|lc1|state.init6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[21]~clkctrl_outclk\,
	d => \A|lc1|state.init6~feeder_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|state.init6~q\);

-- Location: FF_X94_Y40_N15
\A|lc1|state.init7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[21]~clkctrl_outclk\,
	asdata => \A|lc1|state.init6~q\,
	clrn => \psw[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|state.init7~q\);

-- Location: FF_X94_Y40_N21
\A|lc1|state.init8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[21]~clkctrl_outclk\,
	asdata => \A|lc1|state.init7~q\,
	clrn => \psw[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|state.init8~q\);

-- Location: LCCOMB_X95_Y40_N30
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

-- Location: FF_X95_Y40_N31
\A|lc1|state.init9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[21]~clkctrl_outclk\,
	d => \A|lc1|state.init9~feeder_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|state.init9~q\);

-- Location: LCCOMB_X95_Y40_N28
\A|lc1|Selector10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector10~1_combout\ = (\A|lc1|Selector10~0_combout\ & ((\A|lc1|state.ready~q\ & ((!\A|ul1|send_enable~q\))) # (!\A|lc1|state.ready~q\ & (\A|lc1|state.send3~q\)))) # (!\A|lc1|Selector10~0_combout\ & (((!\A|ul1|send_enable~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Selector10~0_combout\,
	datab => \A|lc1|state.send3~q\,
	datac => \A|lc1|state.ready~q\,
	datad => \A|ul1|send_enable~q\,
	combout => \A|lc1|Selector10~1_combout\);

-- Location: FF_X97_Y40_N21
\A|lc1|busy_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[21]~clkctrl_outclk\,
	asdata => \A|lc1|Selector10~1_combout\,
	clrn => \psw[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|busy_reg~q\);

-- Location: LCCOMB_X97_Y40_N20
\A|ul1|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|process_0~0_combout\ = (\A|lc1|busy_reg~q\ & !\A|ul1|send_enable~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|lc1|busy_reg~q\,
	datad => \A|ul1|send_enable~q\,
	combout => \A|ul1|process_0~0_combout\);

-- Location: FF_X99_Y41_N19
\A|ul1|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[21]~clkctrl_outclk\,
	asdata => \A|ul1|Add0~93_combout\,
	clrn => \psw[0]~input_o\,
	sload => VCC,
	ena => \A|ul1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(2));

-- Location: LCCOMB_X99_Y41_N0
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

-- Location: LCCOMB_X96_Y40_N16
\A|ul1|Add0~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~95_combout\ = (\A|ul1|LessThan0~9_combout\ & (\A|ul1|Add0~2_combout\)) # (!\A|ul1|LessThan0~9_combout\ & ((\A|ul1|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~2_combout\,
	datab => \A|ul1|count\(0),
	datad => \A|ul1|LessThan0~9_combout\,
	combout => \A|ul1|Add0~95_combout\);

-- Location: FF_X99_Y41_N7
\A|ul1|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[21]~clkctrl_outclk\,
	asdata => \A|ul1|Add0~95_combout\,
	clrn => \psw[0]~input_o\,
	sload => VCC,
	ena => \A|ul1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(0));

-- Location: LCCOMB_X99_Y41_N2
\A|ul1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~4_combout\ = (\A|ul1|count\(1) & (!\A|ul1|Add0~3\)) # (!\A|ul1|count\(1) & ((\A|ul1|Add0~3\) # (GND)))
-- \A|ul1|Add0~5\ = CARRY((!\A|ul1|Add0~3\) # (!\A|ul1|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|count\(1),
	datad => VCC,
	cin => \A|ul1|Add0~3\,
	combout => \A|ul1|Add0~4_combout\,
	cout => \A|ul1|Add0~5\);

-- Location: LCCOMB_X95_Y40_N24
\A|ul1|Add0~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~94_combout\ = (\A|ul1|LessThan0~9_combout\ & ((\A|ul1|Add0~4_combout\))) # (!\A|ul1|LessThan0~9_combout\ & (\A|ul1|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|count\(1),
	datac => \A|ul1|LessThan0~9_combout\,
	datad => \A|ul1|Add0~4_combout\,
	combout => \A|ul1|Add0~94_combout\);

-- Location: FF_X99_Y41_N25
\A|ul1|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[21]~clkctrl_outclk\,
	asdata => \A|ul1|Add0~94_combout\,
	clrn => \psw[0]~input_o\,
	sload => VCC,
	ena => \A|ul1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(1));

-- Location: LCCOMB_X99_Y41_N4
\A|ul1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~6_combout\ = (\A|ul1|count\(2) & (\A|ul1|Add0~5\ $ (GND))) # (!\A|ul1|count\(2) & (!\A|ul1|Add0~5\ & VCC))
-- \A|ul1|Add0~7\ = CARRY((\A|ul1|count\(2) & !\A|ul1|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|count\(2),
	datad => VCC,
	cin => \A|ul1|Add0~5\,
	combout => \A|ul1|Add0~6_combout\,
	cout => \A|ul1|Add0~7\);

-- Location: LCCOMB_X99_Y41_N6
\A|ul1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~8_combout\ = (\A|ul1|count\(3) & (!\A|ul1|Add0~7\)) # (!\A|ul1|count\(3) & ((\A|ul1|Add0~7\) # (GND)))
-- \A|ul1|Add0~9\ = CARRY((!\A|ul1|Add0~7\) # (!\A|ul1|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|count\(3),
	datad => VCC,
	cin => \A|ul1|Add0~7\,
	combout => \A|ul1|Add0~8_combout\,
	cout => \A|ul1|Add0~9\);

-- Location: LCCOMB_X100_Y40_N2
\A|ul1|Add0~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~71_combout\ = (\A|ul1|LessThan0~9_combout\ & (\A|ul1|Add0~8_combout\)) # (!\A|ul1|LessThan0~9_combout\ & ((\A|ul1|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|Add0~8_combout\,
	datac => \A|ul1|count\(3),
	datad => \A|ul1|LessThan0~9_combout\,
	combout => \A|ul1|Add0~71_combout\);

-- Location: FF_X100_Y40_N3
\A|ul1|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[21]~clkctrl_outclk\,
	d => \A|ul1|Add0~71_combout\,
	clrn => \psw[0]~input_o\,
	ena => \A|ul1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(3));

-- Location: LCCOMB_X99_Y41_N8
\A|ul1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~10_combout\ = (\A|ul1|count\(4) & (\A|ul1|Add0~9\ $ (GND))) # (!\A|ul1|count\(4) & (!\A|ul1|Add0~9\ & VCC))
-- \A|ul1|Add0~11\ = CARRY((\A|ul1|count\(4) & !\A|ul1|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|count\(4),
	datad => VCC,
	cin => \A|ul1|Add0~9\,
	combout => \A|ul1|Add0~10_combout\,
	cout => \A|ul1|Add0~11\);

-- Location: LCCOMB_X100_Y40_N16
\A|ul1|Add0~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~72_combout\ = (\A|ul1|LessThan0~9_combout\ & (\A|ul1|Add0~10_combout\)) # (!\A|ul1|LessThan0~9_combout\ & ((\A|ul1|count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~10_combout\,
	datab => \A|ul1|count\(4),
	datad => \A|ul1|LessThan0~9_combout\,
	combout => \A|ul1|Add0~72_combout\);

-- Location: FF_X100_Y40_N1
\A|ul1|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[21]~clkctrl_outclk\,
	asdata => \A|ul1|Add0~72_combout\,
	clrn => \psw[0]~input_o\,
	sload => VCC,
	ena => \A|ul1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(4));

-- Location: LCCOMB_X99_Y41_N10
\A|ul1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~12_combout\ = (\A|ul1|count\(5) & (!\A|ul1|Add0~11\)) # (!\A|ul1|count\(5) & ((\A|ul1|Add0~11\) # (GND)))
-- \A|ul1|Add0~13\ = CARRY((!\A|ul1|Add0~11\) # (!\A|ul1|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|count\(5),
	datad => VCC,
	cin => \A|ul1|Add0~11\,
	combout => \A|ul1|Add0~12_combout\,
	cout => \A|ul1|Add0~13\);

-- Location: LCCOMB_X100_Y40_N4
\A|ul1|Add0~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~73_combout\ = (\A|ul1|LessThan0~9_combout\ & ((\A|ul1|Add0~12_combout\))) # (!\A|ul1|LessThan0~9_combout\ & (\A|ul1|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(5),
	datab => \A|ul1|LessThan0~9_combout\,
	datad => \A|ul1|Add0~12_combout\,
	combout => \A|ul1|Add0~73_combout\);

-- Location: FF_X100_Y40_N27
\A|ul1|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[21]~clkctrl_outclk\,
	asdata => \A|ul1|Add0~73_combout\,
	clrn => \psw[0]~input_o\,
	sload => VCC,
	ena => \A|ul1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(5));

-- Location: LCCOMB_X99_Y41_N12
\A|ul1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~14_combout\ = (\A|ul1|count\(6) & (\A|ul1|Add0~13\ $ (GND))) # (!\A|ul1|count\(6) & (!\A|ul1|Add0~13\ & VCC))
-- \A|ul1|Add0~15\ = CARRY((\A|ul1|count\(6) & !\A|ul1|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|count\(6),
	datad => VCC,
	cin => \A|ul1|Add0~13\,
	combout => \A|ul1|Add0~14_combout\,
	cout => \A|ul1|Add0~15\);

-- Location: LCCOMB_X100_Y40_N10
\A|ul1|Add0~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~74_combout\ = (\A|ul1|LessThan0~9_combout\ & (\A|ul1|Add0~14_combout\)) # (!\A|ul1|LessThan0~9_combout\ & ((\A|ul1|count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~14_combout\,
	datab => \A|ul1|count\(6),
	datad => \A|ul1|LessThan0~9_combout\,
	combout => \A|ul1|Add0~74_combout\);

-- Location: FF_X100_Y40_N17
\A|ul1|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[21]~clkctrl_outclk\,
	asdata => \A|ul1|Add0~74_combout\,
	clrn => \psw[0]~input_o\,
	sload => VCC,
	ena => \A|ul1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(6));

-- Location: LCCOMB_X99_Y41_N14
\A|ul1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~16_combout\ = (\A|ul1|count\(7) & (!\A|ul1|Add0~15\)) # (!\A|ul1|count\(7) & ((\A|ul1|Add0~15\) # (GND)))
-- \A|ul1|Add0~17\ = CARRY((!\A|ul1|Add0~15\) # (!\A|ul1|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|count\(7),
	datad => VCC,
	cin => \A|ul1|Add0~15\,
	combout => \A|ul1|Add0~16_combout\,
	cout => \A|ul1|Add0~17\);

-- Location: LCCOMB_X101_Y40_N24
\A|ul1|Add0~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~75_combout\ = (\A|ul1|LessThan0~9_combout\ & ((\A|ul1|Add0~16_combout\))) # (!\A|ul1|LessThan0~9_combout\ & (\A|ul1|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|count\(7),
	datac => \A|ul1|Add0~16_combout\,
	datad => \A|ul1|LessThan0~9_combout\,
	combout => \A|ul1|Add0~75_combout\);

-- Location: LCCOMB_X101_Y40_N2
\A|ul1|count[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|count[7]~feeder_combout\ = \A|ul1|Add0~75_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A|ul1|Add0~75_combout\,
	combout => \A|ul1|count[7]~feeder_combout\);

-- Location: FF_X101_Y40_N3
\A|ul1|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[21]~clkctrl_outclk\,
	d => \A|ul1|count[7]~feeder_combout\,
	clrn => \psw[0]~input_o\,
	ena => \A|ul1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(7));

-- Location: LCCOMB_X99_Y41_N16
\A|ul1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~18_combout\ = (\A|ul1|count\(8) & (\A|ul1|Add0~17\ $ (GND))) # (!\A|ul1|count\(8) & (!\A|ul1|Add0~17\ & VCC))
-- \A|ul1|Add0~19\ = CARRY((\A|ul1|count\(8) & !\A|ul1|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(8),
	datad => VCC,
	cin => \A|ul1|Add0~17\,
	combout => \A|ul1|Add0~18_combout\,
	cout => \A|ul1|Add0~19\);

-- Location: LCCOMB_X101_Y40_N30
\A|ul1|Add0~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~76_combout\ = (\A|ul1|LessThan0~9_combout\ & ((\A|ul1|Add0~18_combout\))) # (!\A|ul1|LessThan0~9_combout\ & (\A|ul1|count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|count\(8),
	datac => \A|ul1|Add0~18_combout\,
	datad => \A|ul1|LessThan0~9_combout\,
	combout => \A|ul1|Add0~76_combout\);

-- Location: LCCOMB_X101_Y40_N0
\A|ul1|count[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|count[8]~feeder_combout\ = \A|ul1|Add0~76_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|ul1|Add0~76_combout\,
	combout => \A|ul1|count[8]~feeder_combout\);

-- Location: FF_X101_Y40_N1
\A|ul1|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[21]~clkctrl_outclk\,
	d => \A|ul1|count[8]~feeder_combout\,
	clrn => \psw[0]~input_o\,
	ena => \A|ul1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(8));

-- Location: LCCOMB_X99_Y41_N18
\A|ul1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~20_combout\ = (\A|ul1|count\(9) & (!\A|ul1|Add0~19\)) # (!\A|ul1|count\(9) & ((\A|ul1|Add0~19\) # (GND)))
-- \A|ul1|Add0~21\ = CARRY((!\A|ul1|Add0~19\) # (!\A|ul1|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|count\(9),
	datad => VCC,
	cin => \A|ul1|Add0~19\,
	combout => \A|ul1|Add0~20_combout\,
	cout => \A|ul1|Add0~21\);

-- Location: LCCOMB_X101_Y40_N8
\A|ul1|Add0~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~77_combout\ = (\A|ul1|LessThan0~9_combout\ & ((\A|ul1|Add0~20_combout\))) # (!\A|ul1|LessThan0~9_combout\ & (\A|ul1|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(9),
	datac => \A|ul1|Add0~20_combout\,
	datad => \A|ul1|LessThan0~9_combout\,
	combout => \A|ul1|Add0~77_combout\);

-- Location: FF_X99_Y41_N15
\A|ul1|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[21]~clkctrl_outclk\,
	asdata => \A|ul1|Add0~77_combout\,
	clrn => \psw[0]~input_o\,
	sload => VCC,
	ena => \A|ul1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(9));

-- Location: LCCOMB_X99_Y41_N20
\A|ul1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~22_combout\ = (\A|ul1|count\(10) & (\A|ul1|Add0~21\ $ (GND))) # (!\A|ul1|count\(10) & (!\A|ul1|Add0~21\ & VCC))
-- \A|ul1|Add0~23\ = CARRY((\A|ul1|count\(10) & !\A|ul1|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|count\(10),
	datad => VCC,
	cin => \A|ul1|Add0~21\,
	combout => \A|ul1|Add0~22_combout\,
	cout => \A|ul1|Add0~23\);

-- Location: LCCOMB_X100_Y40_N28
\A|ul1|Add0~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~78_combout\ = (\A|ul1|LessThan0~9_combout\ & ((\A|ul1|Add0~22_combout\))) # (!\A|ul1|LessThan0~9_combout\ & (\A|ul1|count\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(10),
	datab => \A|ul1|LessThan0~9_combout\,
	datad => \A|ul1|Add0~22_combout\,
	combout => \A|ul1|Add0~78_combout\);

-- Location: FF_X100_Y40_N31
\A|ul1|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[21]~clkctrl_outclk\,
	asdata => \A|ul1|Add0~78_combout\,
	clrn => \psw[0]~input_o\,
	sload => VCC,
	ena => \A|ul1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(10));

-- Location: LCCOMB_X99_Y41_N22
\A|ul1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~24_combout\ = (\A|ul1|count\(11) & (!\A|ul1|Add0~23\)) # (!\A|ul1|count\(11) & ((\A|ul1|Add0~23\) # (GND)))
-- \A|ul1|Add0~25\ = CARRY((!\A|ul1|Add0~23\) # (!\A|ul1|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(11),
	datad => VCC,
	cin => \A|ul1|Add0~23\,
	combout => \A|ul1|Add0~24_combout\,
	cout => \A|ul1|Add0~25\);

-- Location: LCCOMB_X100_Y40_N0
\A|ul1|Add0~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~79_combout\ = (\A|ul1|LessThan0~9_combout\ & (\A|ul1|Add0~24_combout\)) # (!\A|ul1|LessThan0~9_combout\ & ((\A|ul1|count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~24_combout\,
	datab => \A|ul1|count\(11),
	datad => \A|ul1|LessThan0~9_combout\,
	combout => \A|ul1|Add0~79_combout\);

-- Location: FF_X100_Y40_N21
\A|ul1|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[21]~clkctrl_outclk\,
	asdata => \A|ul1|Add0~79_combout\,
	clrn => \psw[0]~input_o\,
	sload => VCC,
	ena => \A|ul1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(11));

-- Location: LCCOMB_X99_Y41_N24
\A|ul1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~26_combout\ = (\A|ul1|count\(12) & (\A|ul1|Add0~25\ $ (GND))) # (!\A|ul1|count\(12) & (!\A|ul1|Add0~25\ & VCC))
-- \A|ul1|Add0~27\ = CARRY((\A|ul1|count\(12) & !\A|ul1|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(12),
	datad => VCC,
	cin => \A|ul1|Add0~25\,
	combout => \A|ul1|Add0~26_combout\,
	cout => \A|ul1|Add0~27\);

-- Location: LCCOMB_X100_Y40_N12
\A|ul1|Add0~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~80_combout\ = (\A|ul1|LessThan0~9_combout\ & ((\A|ul1|Add0~26_combout\))) # (!\A|ul1|LessThan0~9_combout\ & (\A|ul1|count\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(12),
	datab => \A|ul1|LessThan0~9_combout\,
	datad => \A|ul1|Add0~26_combout\,
	combout => \A|ul1|Add0~80_combout\);

-- Location: FF_X100_Y40_N11
\A|ul1|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[21]~clkctrl_outclk\,
	asdata => \A|ul1|Add0~80_combout\,
	clrn => \psw[0]~input_o\,
	sload => VCC,
	ena => \A|ul1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(12));

-- Location: LCCOMB_X99_Y41_N26
\A|ul1|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~28_combout\ = (\A|ul1|count\(13) & (!\A|ul1|Add0~27\)) # (!\A|ul1|count\(13) & ((\A|ul1|Add0~27\) # (GND)))
-- \A|ul1|Add0~29\ = CARRY((!\A|ul1|Add0~27\) # (!\A|ul1|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(13),
	datad => VCC,
	cin => \A|ul1|Add0~27\,
	combout => \A|ul1|Add0~28_combout\,
	cout => \A|ul1|Add0~29\);

-- Location: LCCOMB_X100_Y40_N8
\A|ul1|Add0~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~81_combout\ = (\A|ul1|LessThan0~9_combout\ & ((\A|ul1|Add0~28_combout\))) # (!\A|ul1|LessThan0~9_combout\ & (\A|ul1|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|count\(13),
	datac => \A|ul1|Add0~28_combout\,
	datad => \A|ul1|LessThan0~9_combout\,
	combout => \A|ul1|Add0~81_combout\);

-- Location: FF_X100_Y40_N5
\A|ul1|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[21]~clkctrl_outclk\,
	asdata => \A|ul1|Add0~81_combout\,
	clrn => \psw[0]~input_o\,
	sload => VCC,
	ena => \A|ul1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(13));

-- Location: LCCOMB_X99_Y41_N28
\A|ul1|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~30_combout\ = (\A|ul1|count\(14) & (\A|ul1|Add0~29\ $ (GND))) # (!\A|ul1|count\(14) & (!\A|ul1|Add0~29\ & VCC))
-- \A|ul1|Add0~31\ = CARRY((\A|ul1|count\(14) & !\A|ul1|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|count\(14),
	datad => VCC,
	cin => \A|ul1|Add0~29\,
	combout => \A|ul1|Add0~30_combout\,
	cout => \A|ul1|Add0~31\);

-- Location: LCCOMB_X100_Y40_N22
\A|ul1|Add0~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~82_combout\ = (\A|ul1|LessThan0~9_combout\ & ((\A|ul1|Add0~30_combout\))) # (!\A|ul1|LessThan0~9_combout\ & (\A|ul1|count\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(14),
	datac => \A|ul1|Add0~30_combout\,
	datad => \A|ul1|LessThan0~9_combout\,
	combout => \A|ul1|Add0~82_combout\);

-- Location: FF_X100_Y40_N19
\A|ul1|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[21]~clkctrl_outclk\,
	asdata => \A|ul1|Add0~82_combout\,
	clrn => \psw[0]~input_o\,
	sload => VCC,
	ena => \A|ul1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(14));

-- Location: LCCOMB_X99_Y41_N30
\A|ul1|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~32_combout\ = (\A|ul1|count\(15) & (!\A|ul1|Add0~31\)) # (!\A|ul1|count\(15) & ((\A|ul1|Add0~31\) # (GND)))
-- \A|ul1|Add0~33\ = CARRY((!\A|ul1|Add0~31\) # (!\A|ul1|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|count\(15),
	datad => VCC,
	cin => \A|ul1|Add0~31\,
	combout => \A|ul1|Add0~32_combout\,
	cout => \A|ul1|Add0~33\);

-- Location: LCCOMB_X98_Y40_N4
\A|ul1|Add0~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~83_combout\ = (\A|ul1|LessThan0~9_combout\ & (\A|ul1|Add0~32_combout\)) # (!\A|ul1|LessThan0~9_combout\ & ((\A|ul1|count\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~32_combout\,
	datab => \A|ul1|count\(15),
	datad => \A|ul1|LessThan0~9_combout\,
	combout => \A|ul1|Add0~83_combout\);

-- Location: FF_X98_Y40_N1
\A|ul1|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[21]~clkctrl_outclk\,
	asdata => \A|ul1|Add0~83_combout\,
	clrn => \psw[0]~input_o\,
	sload => VCC,
	ena => \A|ul1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(15));

-- Location: LCCOMB_X99_Y40_N0
\A|ul1|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~34_combout\ = (\A|ul1|count\(16) & (\A|ul1|Add0~33\ $ (GND))) # (!\A|ul1|count\(16) & (!\A|ul1|Add0~33\ & VCC))
-- \A|ul1|Add0~35\ = CARRY((\A|ul1|count\(16) & !\A|ul1|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(16),
	datad => VCC,
	cin => \A|ul1|Add0~33\,
	combout => \A|ul1|Add0~34_combout\,
	cout => \A|ul1|Add0~35\);

-- Location: LCCOMB_X98_Y40_N20
\A|ul1|Add0~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~84_combout\ = (\A|ul1|LessThan0~9_combout\ & ((\A|ul1|Add0~34_combout\))) # (!\A|ul1|LessThan0~9_combout\ & (\A|ul1|count\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(16),
	datab => \A|ul1|Add0~34_combout\,
	datad => \A|ul1|LessThan0~9_combout\,
	combout => \A|ul1|Add0~84_combout\);

-- Location: FF_X98_Y40_N27
\A|ul1|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[21]~clkctrl_outclk\,
	asdata => \A|ul1|Add0~84_combout\,
	clrn => \psw[0]~input_o\,
	sload => VCC,
	ena => \A|ul1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(16));

-- Location: LCCOMB_X99_Y40_N2
\A|ul1|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~36_combout\ = (\A|ul1|count\(17) & (!\A|ul1|Add0~35\)) # (!\A|ul1|count\(17) & ((\A|ul1|Add0~35\) # (GND)))
-- \A|ul1|Add0~37\ = CARRY((!\A|ul1|Add0~35\) # (!\A|ul1|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|count\(17),
	datad => VCC,
	cin => \A|ul1|Add0~35\,
	combout => \A|ul1|Add0~36_combout\,
	cout => \A|ul1|Add0~37\);

-- Location: LCCOMB_X100_Y40_N30
\A|ul1|Add0~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~85_combout\ = (\A|ul1|LessThan0~9_combout\ & ((\A|ul1|Add0~36_combout\))) # (!\A|ul1|LessThan0~9_combout\ & (\A|ul1|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(17),
	datab => \A|ul1|LessThan0~9_combout\,
	datad => \A|ul1|Add0~36_combout\,
	combout => \A|ul1|Add0~85_combout\);

-- Location: FF_X99_Y40_N9
\A|ul1|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[21]~clkctrl_outclk\,
	asdata => \A|ul1|Add0~85_combout\,
	clrn => \psw[0]~input_o\,
	sload => VCC,
	ena => \A|ul1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(17));

-- Location: LCCOMB_X99_Y40_N4
\A|ul1|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~38_combout\ = (\A|ul1|count\(18) & (\A|ul1|Add0~37\ $ (GND))) # (!\A|ul1|count\(18) & (!\A|ul1|Add0~37\ & VCC))
-- \A|ul1|Add0~39\ = CARRY((\A|ul1|count\(18) & !\A|ul1|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(18),
	datad => VCC,
	cin => \A|ul1|Add0~37\,
	combout => \A|ul1|Add0~38_combout\,
	cout => \A|ul1|Add0~39\);

-- Location: LCCOMB_X98_Y40_N16
\A|ul1|Add0~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~86_combout\ = (\A|ul1|LessThan0~9_combout\ & ((\A|ul1|Add0~38_combout\))) # (!\A|ul1|LessThan0~9_combout\ & (\A|ul1|count\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|LessThan0~9_combout\,
	datac => \A|ul1|count\(18),
	datad => \A|ul1|Add0~38_combout\,
	combout => \A|ul1|Add0~86_combout\);

-- Location: FF_X98_Y40_N17
\A|ul1|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[21]~clkctrl_outclk\,
	d => \A|ul1|Add0~86_combout\,
	clrn => \psw[0]~input_o\,
	ena => \A|ul1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(18));

-- Location: LCCOMB_X99_Y40_N6
\A|ul1|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~40_combout\ = (\A|ul1|count\(19) & (!\A|ul1|Add0~39\)) # (!\A|ul1|count\(19) & ((\A|ul1|Add0~39\) # (GND)))
-- \A|ul1|Add0~41\ = CARRY((!\A|ul1|Add0~39\) # (!\A|ul1|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|count\(19),
	datad => VCC,
	cin => \A|ul1|Add0~39\,
	combout => \A|ul1|Add0~40_combout\,
	cout => \A|ul1|Add0~41\);

-- Location: LCCOMB_X98_Y40_N0
\A|ul1|Add0~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~87_combout\ = (\A|ul1|LessThan0~9_combout\ & ((\A|ul1|Add0~40_combout\))) # (!\A|ul1|LessThan0~9_combout\ & (\A|ul1|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|LessThan0~9_combout\,
	datab => \A|ul1|count\(19),
	datad => \A|ul1|Add0~40_combout\,
	combout => \A|ul1|Add0~87_combout\);

-- Location: FF_X98_Y40_N19
\A|ul1|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[21]~clkctrl_outclk\,
	asdata => \A|ul1|Add0~87_combout\,
	clrn => \psw[0]~input_o\,
	sload => VCC,
	ena => \A|ul1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(19));

-- Location: LCCOMB_X99_Y40_N8
\A|ul1|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~42_combout\ = (\A|ul1|count\(20) & (\A|ul1|Add0~41\ $ (GND))) # (!\A|ul1|count\(20) & (!\A|ul1|Add0~41\ & VCC))
-- \A|ul1|Add0~43\ = CARRY((\A|ul1|count\(20) & !\A|ul1|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|count\(20),
	datad => VCC,
	cin => \A|ul1|Add0~41\,
	combout => \A|ul1|Add0~42_combout\,
	cout => \A|ul1|Add0~43\);

-- Location: LCCOMB_X98_Y40_N22
\A|ul1|Add0~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~88_combout\ = (\A|ul1|LessThan0~9_combout\ & ((\A|ul1|Add0~42_combout\))) # (!\A|ul1|LessThan0~9_combout\ & (\A|ul1|count\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|count\(20),
	datac => \A|ul1|LessThan0~9_combout\,
	datad => \A|ul1|Add0~42_combout\,
	combout => \A|ul1|Add0~88_combout\);

-- Location: FF_X98_Y40_N21
\A|ul1|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[21]~clkctrl_outclk\,
	asdata => \A|ul1|Add0~88_combout\,
	clrn => \psw[0]~input_o\,
	sload => VCC,
	ena => \A|ul1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(20));

-- Location: LCCOMB_X99_Y40_N10
\A|ul1|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~44_combout\ = (\A|ul1|count\(21) & (!\A|ul1|Add0~43\)) # (!\A|ul1|count\(21) & ((\A|ul1|Add0~43\) # (GND)))
-- \A|ul1|Add0~45\ = CARRY((!\A|ul1|Add0~43\) # (!\A|ul1|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|count\(21),
	datad => VCC,
	cin => \A|ul1|Add0~43\,
	combout => \A|ul1|Add0~44_combout\,
	cout => \A|ul1|Add0~45\);

-- Location: LCCOMB_X98_Y40_N8
\A|ul1|Add0~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~89_combout\ = (\A|ul1|LessThan0~9_combout\ & ((\A|ul1|Add0~44_combout\))) # (!\A|ul1|LessThan0~9_combout\ & (\A|ul1|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(21),
	datac => \A|ul1|Add0~44_combout\,
	datad => \A|ul1|LessThan0~9_combout\,
	combout => \A|ul1|Add0~89_combout\);

-- Location: FF_X98_Y40_N31
\A|ul1|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[21]~clkctrl_outclk\,
	asdata => \A|ul1|Add0~89_combout\,
	clrn => \psw[0]~input_o\,
	sload => VCC,
	ena => \A|ul1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(21));

-- Location: LCCOMB_X99_Y40_N12
\A|ul1|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~46_combout\ = (\A|ul1|count\(22) & (\A|ul1|Add0~45\ $ (GND))) # (!\A|ul1|count\(22) & (!\A|ul1|Add0~45\ & VCC))
-- \A|ul1|Add0~47\ = CARRY((\A|ul1|count\(22) & !\A|ul1|Add0~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|count\(22),
	datad => VCC,
	cin => \A|ul1|Add0~45\,
	combout => \A|ul1|Add0~46_combout\,
	cout => \A|ul1|Add0~47\);

-- Location: LCCOMB_X98_Y40_N28
\A|ul1|Add0~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~90_combout\ = (\A|ul1|LessThan0~9_combout\ & (\A|ul1|Add0~46_combout\)) # (!\A|ul1|LessThan0~9_combout\ & ((\A|ul1|count\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|Add0~46_combout\,
	datac => \A|ul1|count\(22),
	datad => \A|ul1|LessThan0~9_combout\,
	combout => \A|ul1|Add0~90_combout\);

-- Location: FF_X98_Y40_N29
\A|ul1|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[21]~clkctrl_outclk\,
	d => \A|ul1|Add0~90_combout\,
	clrn => \psw[0]~input_o\,
	ena => \A|ul1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(22));

-- Location: LCCOMB_X98_Y40_N18
\A|ul1|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|LessThan0~2_combout\ = (!\A|ul1|count\(21) & (!\A|ul1|count\(20) & (!\A|ul1|count\(19) & !\A|ul1|count\(22))))

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
	combout => \A|ul1|LessThan0~2_combout\);

-- Location: LCCOMB_X99_Y40_N14
\A|ul1|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~48_combout\ = (\A|ul1|count\(23) & (!\A|ul1|Add0~47\)) # (!\A|ul1|count\(23) & ((\A|ul1|Add0~47\) # (GND)))
-- \A|ul1|Add0~49\ = CARRY((!\A|ul1|Add0~47\) # (!\A|ul1|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(23),
	datad => VCC,
	cin => \A|ul1|Add0~47\,
	combout => \A|ul1|Add0~48_combout\,
	cout => \A|ul1|Add0~49\);

-- Location: LCCOMB_X101_Y40_N4
\A|ul1|Add0~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~70_combout\ = (\A|ul1|LessThan0~9_combout\ & ((\A|ul1|Add0~48_combout\))) # (!\A|ul1|LessThan0~9_combout\ & (\A|ul1|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|LessThan0~9_combout\,
	datac => \A|ul1|count\(23),
	datad => \A|ul1|Add0~48_combout\,
	combout => \A|ul1|Add0~70_combout\);

-- Location: FF_X98_Y40_N3
\A|ul1|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[21]~clkctrl_outclk\,
	asdata => \A|ul1|Add0~70_combout\,
	clrn => \psw[0]~input_o\,
	sload => VCC,
	ena => \A|ul1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(23));

-- Location: LCCOMB_X99_Y40_N16
\A|ul1|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~50_combout\ = (\A|ul1|count\(24) & (\A|ul1|Add0~49\ $ (GND))) # (!\A|ul1|count\(24) & (!\A|ul1|Add0~49\ & VCC))
-- \A|ul1|Add0~51\ = CARRY((\A|ul1|count\(24) & !\A|ul1|Add0~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(24),
	datad => VCC,
	cin => \A|ul1|Add0~49\,
	combout => \A|ul1|Add0~50_combout\,
	cout => \A|ul1|Add0~51\);

-- Location: LCCOMB_X98_Y40_N12
\A|ul1|Add0~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~91_combout\ = (\A|ul1|LessThan0~9_combout\ & ((\A|ul1|Add0~50_combout\))) # (!\A|ul1|LessThan0~9_combout\ & (\A|ul1|count\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|LessThan0~9_combout\,
	datac => \A|ul1|count\(24),
	datad => \A|ul1|Add0~50_combout\,
	combout => \A|ul1|Add0~91_combout\);

-- Location: FF_X98_Y40_N13
\A|ul1|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[21]~clkctrl_outclk\,
	d => \A|ul1|Add0~91_combout\,
	clrn => \psw[0]~input_o\,
	ena => \A|ul1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(24));

-- Location: LCCOMB_X99_Y40_N18
\A|ul1|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~52_combout\ = (\A|ul1|count\(25) & (!\A|ul1|Add0~51\)) # (!\A|ul1|count\(25) & ((\A|ul1|Add0~51\) # (GND)))
-- \A|ul1|Add0~53\ = CARRY((!\A|ul1|Add0~51\) # (!\A|ul1|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(25),
	datad => VCC,
	cin => \A|ul1|Add0~51\,
	combout => \A|ul1|Add0~52_combout\,
	cout => \A|ul1|Add0~53\);

-- Location: LCCOMB_X98_Y40_N10
\A|ul1|Add0~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~92_combout\ = (\A|ul1|LessThan0~9_combout\ & ((\A|ul1|Add0~52_combout\))) # (!\A|ul1|LessThan0~9_combout\ & (\A|ul1|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|LessThan0~9_combout\,
	datac => \A|ul1|count\(25),
	datad => \A|ul1|Add0~52_combout\,
	combout => \A|ul1|Add0~92_combout\);

-- Location: FF_X98_Y40_N11
\A|ul1|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[21]~clkctrl_outclk\,
	d => \A|ul1|Add0~92_combout\,
	clrn => \psw[0]~input_o\,
	ena => \A|ul1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(25));

-- Location: LCCOMB_X99_Y40_N20
\A|ul1|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~54_combout\ = (\A|ul1|count\(26) & (\A|ul1|Add0~53\ $ (GND))) # (!\A|ul1|count\(26) & (!\A|ul1|Add0~53\ & VCC))
-- \A|ul1|Add0~55\ = CARRY((\A|ul1|count\(26) & !\A|ul1|Add0~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|count\(26),
	datad => VCC,
	cin => \A|ul1|Add0~53\,
	combout => \A|ul1|Add0~54_combout\,
	cout => \A|ul1|Add0~55\);

-- Location: LCCOMB_X98_Y40_N30
\A|ul1|Add0~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~69_combout\ = (\A|ul1|LessThan0~9_combout\ & ((\A|ul1|Add0~54_combout\))) # (!\A|ul1|LessThan0~9_combout\ & (\A|ul1|count\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|LessThan0~9_combout\,
	datab => \A|ul1|count\(26),
	datad => \A|ul1|Add0~54_combout\,
	combout => \A|ul1|Add0~69_combout\);

-- Location: FF_X98_Y40_N5
\A|ul1|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[21]~clkctrl_outclk\,
	asdata => \A|ul1|Add0~69_combout\,
	clrn => \psw[0]~input_o\,
	sload => VCC,
	ena => \A|ul1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(26));

-- Location: LCCOMB_X98_Y40_N2
\A|ul1|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|LessThan0~1_combout\ = (!\A|ul1|count\(24) & (!\A|ul1|count\(26) & (!\A|ul1|count\(23) & !\A|ul1|count\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(24),
	datab => \A|ul1|count\(26),
	datac => \A|ul1|count\(23),
	datad => \A|ul1|count\(25),
	combout => \A|ul1|LessThan0~1_combout\);

-- Location: LCCOMB_X98_Y40_N26
\A|ul1|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|LessThan0~3_combout\ = (!\A|ul1|count\(15) & (!\A|ul1|count\(17) & (!\A|ul1|count\(16) & !\A|ul1|count\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(15),
	datab => \A|ul1|count\(17),
	datac => \A|ul1|count\(16),
	datad => \A|ul1|count\(18),
	combout => \A|ul1|LessThan0~3_combout\);

-- Location: LCCOMB_X101_Y40_N28
\A|ul1|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|LessThan0~6_combout\ = (!\A|ul1|count\(10) & (!\A|ul1|count\(8) & (!\A|ul1|count\(7) & !\A|ul1|count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(10),
	datab => \A|ul1|count\(8),
	datac => \A|ul1|count\(7),
	datad => \A|ul1|count\(9),
	combout => \A|ul1|LessThan0~6_combout\);

-- Location: LCCOMB_X100_Y40_N18
\A|ul1|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|LessThan0~5_combout\ = (!\A|ul1|count\(12) & (!\A|ul1|count\(13) & (!\A|ul1|count\(14) & !\A|ul1|count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(12),
	datab => \A|ul1|count\(13),
	datac => \A|ul1|count\(14),
	datad => \A|ul1|count\(11),
	combout => \A|ul1|LessThan0~5_combout\);

-- Location: LCCOMB_X100_Y40_N26
\A|ul1|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|LessThan0~7_combout\ = (!\A|ul1|count\(3) & (!\A|ul1|count\(6) & (!\A|ul1|count\(5) & !\A|ul1|count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(3),
	datab => \A|ul1|count\(6),
	datac => \A|ul1|count\(5),
	datad => \A|ul1|count\(4),
	combout => \A|ul1|LessThan0~7_combout\);

-- Location: LCCOMB_X101_Y40_N22
\A|ul1|LessThan0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|LessThan0~10_combout\ = (\A|ul1|LessThan0~6_combout\ & (\A|ul1|LessThan0~5_combout\ & (\A|ul1|LessThan0~7_combout\ & \A|ul1|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|LessThan0~6_combout\,
	datab => \A|ul1|LessThan0~5_combout\,
	datac => \A|ul1|LessThan0~7_combout\,
	datad => \A|ul1|LessThan0~4_combout\,
	combout => \A|ul1|LessThan0~10_combout\);

-- Location: LCCOMB_X99_Y40_N22
\A|ul1|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~56_combout\ = (\A|ul1|count\(27) & (!\A|ul1|Add0~55\)) # (!\A|ul1|count\(27) & ((\A|ul1|Add0~55\) # (GND)))
-- \A|ul1|Add0~57\ = CARRY((!\A|ul1|Add0~55\) # (!\A|ul1|count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|count\(27),
	datad => VCC,
	cin => \A|ul1|Add0~55\,
	combout => \A|ul1|Add0~56_combout\,
	cout => \A|ul1|Add0~57\);

-- Location: LCCOMB_X97_Y40_N8
\A|ul1|Add0~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~68_combout\ = (\A|ul1|LessThan0~10_combout\ & (((\A|ul1|Add0~56_combout\)))) # (!\A|ul1|LessThan0~10_combout\ & ((\A|ul1|count\(31) & ((\A|ul1|Add0~56_combout\))) # (!\A|ul1|count\(31) & (\A|ul1|count\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(27),
	datab => \A|ul1|LessThan0~10_combout\,
	datac => \A|ul1|count\(31),
	datad => \A|ul1|Add0~56_combout\,
	combout => \A|ul1|Add0~68_combout\);

-- Location: FF_X100_Y40_N29
\A|ul1|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[21]~clkctrl_outclk\,
	asdata => \A|ul1|Add0~68_combout\,
	clrn => \psw[0]~input_o\,
	sload => VCC,
	ena => \A|ul1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(27));

-- Location: LCCOMB_X99_Y40_N24
\A|ul1|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~58_combout\ = (\A|ul1|count\(28) & (\A|ul1|Add0~57\ $ (GND))) # (!\A|ul1|count\(28) & (!\A|ul1|Add0~57\ & VCC))
-- \A|ul1|Add0~59\ = CARRY((\A|ul1|count\(28) & !\A|ul1|Add0~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|count\(28),
	datad => VCC,
	cin => \A|ul1|Add0~57\,
	combout => \A|ul1|Add0~58_combout\,
	cout => \A|ul1|Add0~59\);

-- Location: LCCOMB_X101_Y40_N12
\A|ul1|Add0~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~96_combout\ = (\A|ul1|count\(31) & (((\A|ul1|Add0~58_combout\)))) # (!\A|ul1|count\(31) & ((\A|ul1|LessThan0~10_combout\ & ((\A|ul1|Add0~58_combout\))) # (!\A|ul1|LessThan0~10_combout\ & (\A|ul1|count\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(28),
	datab => \A|ul1|count\(31),
	datac => \A|ul1|LessThan0~10_combout\,
	datad => \A|ul1|Add0~58_combout\,
	combout => \A|ul1|Add0~96_combout\);

-- Location: FF_X100_Y40_N15
\A|ul1|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[21]~clkctrl_outclk\,
	asdata => \A|ul1|Add0~96_combout\,
	clrn => \psw[0]~input_o\,
	sload => VCC,
	ena => \A|ul1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(28));

-- Location: LCCOMB_X99_Y40_N26
\A|ul1|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~60_combout\ = (\A|ul1|count\(29) & (!\A|ul1|Add0~59\)) # (!\A|ul1|count\(29) & ((\A|ul1|Add0~59\) # (GND)))
-- \A|ul1|Add0~61\ = CARRY((!\A|ul1|Add0~59\) # (!\A|ul1|count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|count\(29),
	datad => VCC,
	cin => \A|ul1|Add0~59\,
	combout => \A|ul1|Add0~60_combout\,
	cout => \A|ul1|Add0~61\);

-- Location: LCCOMB_X100_Y40_N24
\A|ul1|Add0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~66_combout\ = (\A|ul1|count\(31) & (((\A|ul1|Add0~60_combout\)))) # (!\A|ul1|count\(31) & ((\A|ul1|LessThan0~10_combout\ & ((\A|ul1|Add0~60_combout\))) # (!\A|ul1|LessThan0~10_combout\ & (\A|ul1|count\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(31),
	datab => \A|ul1|LessThan0~10_combout\,
	datac => \A|ul1|count\(29),
	datad => \A|ul1|Add0~60_combout\,
	combout => \A|ul1|Add0~66_combout\);

-- Location: FF_X100_Y40_N25
\A|ul1|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[21]~clkctrl_outclk\,
	d => \A|ul1|Add0~66_combout\,
	clrn => \psw[0]~input_o\,
	ena => \A|ul1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(29));

-- Location: LCCOMB_X99_Y40_N28
\A|ul1|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~62_combout\ = (\A|ul1|count\(30) & (\A|ul1|Add0~61\ $ (GND))) # (!\A|ul1|count\(30) & (!\A|ul1|Add0~61\ & VCC))
-- \A|ul1|Add0~63\ = CARRY((\A|ul1|count\(30) & !\A|ul1|Add0~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|count\(30),
	datad => VCC,
	cin => \A|ul1|Add0~61\,
	combout => \A|ul1|Add0~62_combout\,
	cout => \A|ul1|Add0~63\);

-- Location: LCCOMB_X98_Y40_N24
\A|ul1|Add0~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~67_combout\ = (\A|ul1|LessThan0~9_combout\ & ((\A|ul1|Add0~62_combout\))) # (!\A|ul1|LessThan0~9_combout\ & (\A|ul1|count\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(30),
	datac => \A|ul1|LessThan0~9_combout\,
	datad => \A|ul1|Add0~62_combout\,
	combout => \A|ul1|Add0~67_combout\);

-- Location: FF_X100_Y40_N7
\A|ul1|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[21]~clkctrl_outclk\,
	asdata => \A|ul1|Add0~67_combout\,
	clrn => \psw[0]~input_o\,
	sload => VCC,
	ena => \A|ul1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(30));

-- Location: LCCOMB_X100_Y40_N14
\A|ul1|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|LessThan0~0_combout\ = (!\A|ul1|count\(30) & (!\A|ul1|count\(27) & (!\A|ul1|count\(28) & !\A|ul1|count\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(30),
	datab => \A|ul1|count\(27),
	datac => \A|ul1|count\(28),
	datad => \A|ul1|count\(29),
	combout => \A|ul1|LessThan0~0_combout\);

-- Location: LCCOMB_X98_Y40_N6
\A|ul1|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|LessThan0~4_combout\ = (\A|ul1|LessThan0~2_combout\ & (\A|ul1|LessThan0~1_combout\ & (\A|ul1|LessThan0~3_combout\ & \A|ul1|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|LessThan0~2_combout\,
	datab => \A|ul1|LessThan0~1_combout\,
	datac => \A|ul1|LessThan0~3_combout\,
	datad => \A|ul1|LessThan0~0_combout\,
	combout => \A|ul1|LessThan0~4_combout\);

-- Location: LCCOMB_X100_Y40_N6
\A|ul1|LessThan0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|LessThan0~8_combout\ = (\A|ul1|LessThan0~7_combout\ & (\A|ul1|LessThan0~5_combout\ & \A|ul1|LessThan0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|LessThan0~7_combout\,
	datab => \A|ul1|LessThan0~5_combout\,
	datad => \A|ul1|LessThan0~6_combout\,
	combout => \A|ul1|LessThan0~8_combout\);

-- Location: LCCOMB_X99_Y40_N30
\A|ul1|Add0~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~64_combout\ = \A|ul1|count\(31) $ (\A|ul1|Add0~63\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|ul1|count\(31),
	cin => \A|ul1|Add0~63\,
	combout => \A|ul1|Add0~64_combout\);

-- Location: LCCOMB_X97_Y40_N30
\A|ul1|Add0~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~97_combout\ = (\A|ul1|Add0~64_combout\ & ((\A|ul1|count\(31)) # ((\A|ul1|LessThan0~4_combout\ & \A|ul1|LessThan0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|LessThan0~4_combout\,
	datab => \A|ul1|LessThan0~8_combout\,
	datac => \A|ul1|count\(31),
	datad => \A|ul1|Add0~64_combout\,
	combout => \A|ul1|Add0~97_combout\);

-- Location: FF_X100_Y40_N13
\A|ul1|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[21]~clkctrl_outclk\,
	asdata => \A|ul1|Add0~97_combout\,
	clrn => \psw[0]~input_o\,
	sload => VCC,
	ena => \A|ul1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|count\(31));

-- Location: LCCOMB_X100_Y40_N20
\A|ul1|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|LessThan0~9_combout\ = (\A|ul1|count\(31)) # ((\A|ul1|LessThan0~8_combout\ & \A|ul1|LessThan0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(31),
	datab => \A|ul1|LessThan0~8_combout\,
	datad => \A|ul1|LessThan0~4_combout\,
	combout => \A|ul1|LessThan0~9_combout\);

-- Location: LCCOMB_X95_Y40_N16
\A|ul1|Add0~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Add0~93_combout\ = (\A|ul1|LessThan0~9_combout\ & ((\A|ul1|Add0~6_combout\))) # (!\A|ul1|LessThan0~9_combout\ & (\A|ul1|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|LessThan0~9_combout\,
	datab => \A|ul1|count\(2),
	datad => \A|ul1|Add0~6_combout\,
	combout => \A|ul1|Add0~93_combout\);

-- Location: LCCOMB_X101_Y40_N14
\A|ul1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal0~0_combout\ = (!\A|ul1|Add0~70_combout\ & ((\A|ul1|LessThan0~9_combout\ & ((!\A|ul1|Add0~58_combout\))) # (!\A|ul1|LessThan0~9_combout\ & (!\A|ul1|count\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|count\(28),
	datab => \A|ul1|LessThan0~9_combout\,
	datac => \A|ul1|Add0~70_combout\,
	datad => \A|ul1|Add0~58_combout\,
	combout => \A|ul1|Equal0~0_combout\);

-- Location: LCCOMB_X98_Y40_N14
\A|ul1|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal0~6_combout\ = (!\A|ul1|Add0~88_combout\ & (!\A|ul1|Add0~87_combout\ & (!\A|ul1|Add0~89_combout\ & !\A|ul1|Add0~90_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~88_combout\,
	datab => \A|ul1|Add0~87_combout\,
	datac => \A|ul1|Add0~89_combout\,
	datad => \A|ul1|Add0~90_combout\,
	combout => \A|ul1|Equal0~6_combout\);

-- Location: LCCOMB_X97_Y40_N26
\A|ul1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal0~1_combout\ = (!\A|ul1|Add0~72_combout\ & (!\A|ul1|Add0~71_combout\ & (!\A|ul1|Add0~73_combout\ & !\A|ul1|Add0~74_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~72_combout\,
	datab => \A|ul1|Add0~71_combout\,
	datac => \A|ul1|Add0~73_combout\,
	datad => \A|ul1|Add0~74_combout\,
	combout => \A|ul1|Equal0~1_combout\);

-- Location: LCCOMB_X97_Y40_N14
\A|ul1|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal0~4_combout\ = (!\A|ul1|Add0~85_combout\ & (!\A|ul1|Add0~86_combout\ & (!\A|ul1|Add0~84_combout\ & !\A|ul1|Add0~83_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~85_combout\,
	datab => \A|ul1|Add0~86_combout\,
	datac => \A|ul1|Add0~84_combout\,
	datad => \A|ul1|Add0~83_combout\,
	combout => \A|ul1|Equal0~4_combout\);

-- Location: LCCOMB_X101_Y40_N26
\A|ul1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal0~2_combout\ = (!\A|ul1|Add0~76_combout\ & (!\A|ul1|Add0~75_combout\ & (!\A|ul1|Add0~77_combout\ & !\A|ul1|Add0~78_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~76_combout\,
	datab => \A|ul1|Add0~75_combout\,
	datac => \A|ul1|Add0~77_combout\,
	datad => \A|ul1|Add0~78_combout\,
	combout => \A|ul1|Equal0~2_combout\);

-- Location: LCCOMB_X97_Y40_N24
\A|ul1|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal0~3_combout\ = (!\A|ul1|Add0~81_combout\ & (!\A|ul1|Add0~82_combout\ & (!\A|ul1|Add0~79_combout\ & !\A|ul1|Add0~80_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~81_combout\,
	datab => \A|ul1|Add0~82_combout\,
	datac => \A|ul1|Add0~79_combout\,
	datad => \A|ul1|Add0~80_combout\,
	combout => \A|ul1|Equal0~3_combout\);

-- Location: LCCOMB_X97_Y40_N0
\A|ul1|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal0~5_combout\ = (\A|ul1|Equal0~1_combout\ & (\A|ul1|Equal0~4_combout\ & (\A|ul1|Equal0~2_combout\ & \A|ul1|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal0~1_combout\,
	datab => \A|ul1|Equal0~4_combout\,
	datac => \A|ul1|Equal0~2_combout\,
	datad => \A|ul1|Equal0~3_combout\,
	combout => \A|ul1|Equal0~5_combout\);

-- Location: LCCOMB_X97_Y40_N6
\A|ul1|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal0~7_combout\ = (!\A|ul1|Add0~92_combout\ & (!\A|ul1|Add0~91_combout\ & (\A|ul1|Equal0~6_combout\ & \A|ul1|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~92_combout\,
	datab => \A|ul1|Add0~91_combout\,
	datac => \A|ul1|Equal0~6_combout\,
	datad => \A|ul1|Equal0~5_combout\,
	combout => \A|ul1|Equal0~7_combout\);

-- Location: LCCOMB_X97_Y40_N16
\A|ul1|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal0~8_combout\ = (!\A|ul1|Add0~68_combout\ & (!\A|ul1|Add0~69_combout\ & (\A|ul1|Equal0~0_combout\ & \A|ul1|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~68_combout\,
	datab => \A|ul1|Add0~69_combout\,
	datac => \A|ul1|Equal0~0_combout\,
	datad => \A|ul1|Equal0~7_combout\,
	combout => \A|ul1|Equal0~8_combout\);

-- Location: LCCOMB_X97_Y40_N18
\A|ul1|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal0~9_combout\ = (!\A|ul1|Add0~97_combout\ & (!\A|ul1|Add0~67_combout\ & (!\A|ul1|Add0~66_combout\ & \A|ul1|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~97_combout\,
	datab => \A|ul1|Add0~67_combout\,
	datac => \A|ul1|Add0~66_combout\,
	datad => \A|ul1|Equal0~8_combout\,
	combout => \A|ul1|Equal0~9_combout\);

-- Location: LCCOMB_X97_Y40_N12
\A|ul1|WideNor0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|WideNor0~combout\ = (\A|ul1|Equal0~9_combout\ & ((\A|ul1|Add0~93_combout\) # ((\A|ul1|Add0~94_combout\) # (\A|ul1|Add0~95_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~93_combout\,
	datab => \A|ul1|Add0~94_combout\,
	datac => \A|ul1|Add0~95_combout\,
	datad => \A|ul1|Equal0~9_combout\,
	combout => \A|ul1|WideNor0~combout\);

-- Location: LCCOMB_X97_Y40_N2
\A|ul1|send_enable~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|send_enable~0_combout\ = (!\A|lc1|busy_reg~q\) # (!\psw[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \psw[0]~input_o\,
	datad => \A|lc1|busy_reg~q\,
	combout => \A|ul1|send_enable~0_combout\);

-- Location: FF_X97_Y40_N13
\A|ul1|send_enable\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[21]~clkctrl_outclk\,
	d => \A|ul1|WideNor0~combout\,
	clrn => \A|ul1|ALT_INV_send_enable~0_combout\,
	ena => \A|ul1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|send_enable~q\);

-- Location: LCCOMB_X95_Y40_N4
\A|lc1|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector0~0_combout\ = (\A|lc1|state.init9~q\) # ((\A|lc1|state.send4~q\) # ((\A|lc1|state.ready~q\ & !\A|ul1|send_enable~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|state.init9~q\,
	datab => \A|lc1|state.send4~q\,
	datac => \A|lc1|state.ready~q\,
	datad => \A|ul1|send_enable~q\,
	combout => \A|lc1|Selector0~0_combout\);

-- Location: FF_X95_Y40_N5
\A|lc1|state.ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[21]~clkctrl_outclk\,
	d => \A|lc1|Selector0~0_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|state.ready~q\);

-- Location: LCCOMB_X95_Y40_N0
\A|lc1|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector2~0_combout\ = (\A|lc1|state.ready~q\ & \A|ul1|send_enable~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|lc1|state.ready~q\,
	datad => \A|ul1|send_enable~q\,
	combout => \A|lc1|Selector2~0_combout\);

-- Location: FF_X94_Y40_N7
\A|lc1|state.send1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[21]~clkctrl_outclk\,
	asdata => \A|lc1|Selector2~0_combout\,
	clrn => \psw[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|state.send1~q\);

-- Location: FF_X95_Y40_N17
\A|lc1|state.send2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[21]~clkctrl_outclk\,
	asdata => \A|lc1|state.send1~q\,
	clrn => \psw[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|state.send2~q\);

-- Location: LCCOMB_X95_Y40_N8
\A|lc1|state.send3~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|state.send3~feeder_combout\ = \A|lc1|state.send2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A|lc1|state.send2~q\,
	combout => \A|lc1|state.send3~feeder_combout\);

-- Location: FF_X95_Y40_N9
\A|lc1|state.send3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[21]~clkctrl_outclk\,
	d => \A|lc1|state.send3~feeder_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|state.send3~q\);

-- Location: FF_X95_Y40_N11
\A|lc1|state.send4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[21]~clkctrl_outclk\,
	asdata => \A|lc1|state.send3~q\,
	clrn => \psw[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|state.send4~q\);

-- Location: LCCOMB_X95_Y40_N10
\A|lc1|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector10~0_combout\ = (!\A|lc1|state.init9~q\ & !\A|lc1|state.send4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|state.init9~q\,
	datac => \A|lc1|state.send4~q\,
	combout => \A|lc1|Selector10~0_combout\);

-- Location: LCCOMB_X95_Y40_N6
\A|lc1|WideOr1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|WideOr1~combout\ = ((\A|lc1|state.send3~q\) # ((\A|lc1|state.send1~q\) # (\A|lc1|state.send2~q\))) # (!\A|lc1|Selector10~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Selector10~0_combout\,
	datab => \A|lc1|state.send3~q\,
	datac => \A|lc1|state.send1~q\,
	datad => \A|lc1|state.send2~q\,
	combout => \A|lc1|WideOr1~combout\);

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

-- Location: LCCOMB_X96_Y40_N4
\A|ul1|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal0~10_combout\ = (!\A|ul1|Add0~94_combout\ & (\A|ul1|Add0~95_combout\ & (!\A|ul1|Add0~93_combout\ & \A|ul1|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~94_combout\,
	datab => \A|ul1|Add0~95_combout\,
	datac => \A|ul1|Add0~93_combout\,
	datad => \A|ul1|Equal0~9_combout\,
	combout => \A|ul1|Equal0~10_combout\);

-- Location: LCCOMB_X96_Y40_N30
\A|ul1|Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal5~0_combout\ = (\A|ul1|Add0~94_combout\ & (!\A|ul1|Add0~95_combout\ & (\A|ul1|Add0~93_combout\ & \A|ul1|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~94_combout\,
	datab => \A|ul1|Add0~95_combout\,
	datac => \A|ul1|Add0~93_combout\,
	datad => \A|ul1|Equal0~9_combout\,
	combout => \A|ul1|Equal5~0_combout\);

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

-- Location: LCCOMB_X96_Y40_N10
\A|ul1|Equal6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal6~0_combout\ = (\A|ul1|Add0~94_combout\ & (\A|ul1|Add0~95_combout\ & (\A|ul1|Add0~93_combout\ & \A|ul1|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~94_combout\,
	datab => \A|ul1|Add0~95_combout\,
	datac => \A|ul1|Add0~93_combout\,
	datad => \A|ul1|Equal0~9_combout\,
	combout => \A|ul1|Equal6~0_combout\);

-- Location: LCCOMB_X96_Y40_N0
\A|ul1|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector6~0_combout\ = (\tsw[0]~input_o\ & ((\A|ul1|Equal6~0_combout\) # ((\A|ul1|data_write\(0) & !\A|ul1|WideNor0~combout\)))) # (!\tsw[0]~input_o\ & (\A|ul1|data_write\(0) & (!\A|ul1|WideNor0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[0]~input_o\,
	datab => \A|ul1|data_write\(0),
	datac => \A|ul1|WideNor0~combout\,
	datad => \A|ul1|Equal6~0_combout\,
	combout => \A|ul1|Selector6~0_combout\);

-- Location: LCCOMB_X96_Y40_N6
\A|ul1|Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector6~1_combout\ = (\A|ul1|Equal0~10_combout\) # ((\A|ul1|Selector6~0_combout\) # ((\tsw[4]~input_o\ & \A|ul1|Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[4]~input_o\,
	datab => \A|ul1|Equal0~10_combout\,
	datac => \A|ul1|Equal5~0_combout\,
	datad => \A|ul1|Selector6~0_combout\,
	combout => \A|ul1|Selector6~1_combout\);

-- Location: FF_X96_Y40_N7
\A|ul1|data_write[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[21]~clkctrl_outclk\,
	d => \A|ul1|Selector6~1_combout\,
	clrn => \psw[0]~input_o\,
	ena => \A|ul1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|data_write\(0));

-- Location: LCCOMB_X94_Y40_N6
\A|lc1|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector8~0_combout\ = (\A|lc1|WideOr1~combout\ & ((\A|lc1|data_write_reg\(0)) # ((\A|ul1|data_write\(0) & \A|lc1|Selector2~0_combout\)))) # (!\A|lc1|WideOr1~combout\ & (\A|ul1|data_write\(0) & (\A|lc1|Selector2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|WideOr1~combout\,
	datab => \A|ul1|data_write\(0),
	datac => \A|lc1|Selector2~0_combout\,
	datad => \A|lc1|data_write_reg\(0),
	combout => \A|lc1|Selector8~0_combout\);

-- Location: LCCOMB_X94_Y40_N16
\A|lc1|Selector8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector8~1_combout\ = (\A|lc1|Selector8~0_combout\) # ((\A|lc1|state.init5~q\) # (\A|lc1|state.init3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Selector8~0_combout\,
	datab => \A|lc1|state.init5~q\,
	datad => \A|lc1|state.init3~q\,
	combout => \A|lc1|Selector8~1_combout\);

-- Location: FF_X94_Y40_N17
\A|lc1|data_write_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[21]~clkctrl_outclk\,
	d => \A|lc1|Selector8~1_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|data_write_reg\(0));

-- Location: LCCOMB_X96_Y40_N26
\A|ul1|Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector5~1_combout\ = (!\A|ul1|Add0~94_combout\ & (\A|ul1|Add0~93_combout\ & \A|ul1|Equal0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~94_combout\,
	datac => \A|ul1|Add0~93_combout\,
	datad => \A|ul1|Equal0~9_combout\,
	combout => \A|ul1|Selector5~1_combout\);

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

-- Location: LCCOMB_X96_Y40_N24
\A|ul1|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector5~0_combout\ = (\tsw[1]~input_o\ & ((\A|ul1|Equal6~0_combout\) # ((\A|ul1|data_write\(1) & !\A|ul1|WideNor0~combout\)))) # (!\tsw[1]~input_o\ & (\A|ul1|data_write\(1) & (!\A|ul1|WideNor0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[1]~input_o\,
	datab => \A|ul1|data_write\(1),
	datac => \A|ul1|WideNor0~combout\,
	datad => \A|ul1|Equal6~0_combout\,
	combout => \A|ul1|Selector5~0_combout\);

-- Location: LCCOMB_X96_Y40_N20
\A|ul1|Selector5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector5~2_combout\ = (\A|ul1|Selector5~1_combout\) # ((\A|ul1|Selector5~0_combout\) # ((\tsw[5]~input_o\ & \A|ul1|Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Selector5~1_combout\,
	datab => \tsw[5]~input_o\,
	datac => \A|ul1|Equal5~0_combout\,
	datad => \A|ul1|Selector5~0_combout\,
	combout => \A|ul1|Selector5~2_combout\);

-- Location: FF_X96_Y40_N21
\A|ul1|data_write[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[21]~clkctrl_outclk\,
	d => \A|ul1|Selector5~2_combout\,
	clrn => \psw[0]~input_o\,
	ena => \A|ul1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|data_write\(1));

-- Location: LCCOMB_X95_Y40_N2
\A|lc1|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector7~0_combout\ = (\A|lc1|state.init7~q\) # ((\A|ul1|data_write\(1) & (\A|lc1|state.ready~q\ & \A|ul1|send_enable~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|data_write\(1),
	datab => \A|lc1|state.ready~q\,
	datac => \A|lc1|state.init7~q\,
	datad => \A|ul1|send_enable~q\,
	combout => \A|lc1|Selector7~0_combout\);

-- Location: LCCOMB_X94_Y40_N28
\A|lc1|Selector7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector7~1_combout\ = (\A|lc1|Selector7~0_combout\) # ((\A|lc1|WideOr1~combout\ & \A|lc1|data_write_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|WideOr1~combout\,
	datac => \A|lc1|data_write_reg\(1),
	datad => \A|lc1|Selector7~0_combout\,
	combout => \A|lc1|Selector7~1_combout\);

-- Location: FF_X94_Y40_N29
\A|lc1|data_write_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[21]~clkctrl_outclk\,
	d => \A|lc1|Selector7~1_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|data_write_reg\(1));

-- Location: LCCOMB_X94_Y40_N20
\A|lc1|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector6~0_combout\ = (\A|lc1|state.init7~q\) # (\A|lc1|state.init3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|lc1|state.init7~q\,
	datad => \A|lc1|state.init3~q\,
	combout => \A|lc1|Selector6~0_combout\);

-- Location: LCCOMB_X96_Y40_N22
\A|ul1|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector4~1_combout\ = ((\A|ul1|Add0~93_combout\) # (!\A|ul1|Equal0~9_combout\)) # (!\A|ul1|Add0~94_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~94_combout\,
	datac => \A|ul1|Add0~93_combout\,
	datad => \A|ul1|Equal0~9_combout\,
	combout => \A|ul1|Selector4~1_combout\);

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

-- Location: LCCOMB_X96_Y40_N12
\A|ul1|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector4~0_combout\ = (\A|ul1|data_write\(2) & (((\tsw[2]~input_o\ & \A|ul1|Equal6~0_combout\)) # (!\A|ul1|WideNor0~combout\))) # (!\A|ul1|data_write\(2) & (\tsw[2]~input_o\ & ((\A|ul1|Equal6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|data_write\(2),
	datab => \tsw[2]~input_o\,
	datac => \A|ul1|WideNor0~combout\,
	datad => \A|ul1|Equal6~0_combout\,
	combout => \A|ul1|Selector4~0_combout\);

-- Location: LCCOMB_X96_Y40_N18
\A|ul1|Selector4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector4~2_combout\ = ((\A|ul1|Selector4~0_combout\) # ((\tsw[6]~input_o\ & \A|ul1|Equal5~0_combout\))) # (!\A|ul1|Selector4~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Selector4~1_combout\,
	datab => \tsw[6]~input_o\,
	datac => \A|ul1|Equal5~0_combout\,
	datad => \A|ul1|Selector4~0_combout\,
	combout => \A|ul1|Selector4~2_combout\);

-- Location: FF_X96_Y40_N19
\A|ul1|data_write[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[21]~clkctrl_outclk\,
	d => \A|ul1|Selector4~2_combout\,
	clrn => \psw[0]~input_o\,
	ena => \A|ul1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|data_write\(2));

-- Location: LCCOMB_X95_Y40_N22
\A|lc1|Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector6~1_combout\ = (\A|lc1|state.init1~q\) # ((\A|ul1|data_write\(2) & (\A|lc1|state.ready~q\ & \A|ul1|send_enable~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|data_write\(2),
	datab => \A|lc1|state.ready~q\,
	datac => \A|lc1|state.init1~q\,
	datad => \A|ul1|send_enable~q\,
	combout => \A|lc1|Selector6~1_combout\);

-- Location: LCCOMB_X94_Y40_N12
\A|lc1|Selector6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector6~2_combout\ = (\A|lc1|Selector6~0_combout\) # ((\A|lc1|Selector6~1_combout\) # ((\A|lc1|WideOr1~combout\ & \A|lc1|data_write_reg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|WideOr1~combout\,
	datab => \A|lc1|Selector6~0_combout\,
	datac => \A|lc1|data_write_reg\(2),
	datad => \A|lc1|Selector6~1_combout\,
	combout => \A|lc1|Selector6~2_combout\);

-- Location: FF_X94_Y40_N13
\A|lc1|data_write_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[21]~clkctrl_outclk\,
	d => \A|lc1|Selector6~2_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|data_write_reg\(2));

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

-- Location: LCCOMB_X96_Y40_N8
\A|ul1|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Equal4~0_combout\ = (!\A|ul1|Add0~94_combout\ & (\A|ul1|Add0~95_combout\ & (\A|ul1|Add0~93_combout\ & \A|ul1|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~94_combout\,
	datab => \A|ul1|Add0~95_combout\,
	datac => \A|ul1|Add0~93_combout\,
	datad => \A|ul1|Equal0~9_combout\,
	combout => \A|ul1|Equal4~0_combout\);

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

-- Location: LCCOMB_X96_Y40_N2
\A|ul1|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector3~0_combout\ = (\tsw[3]~input_o\ & ((\A|ul1|Equal6~0_combout\) # ((\A|ul1|data_write\(3) & !\A|ul1|WideNor0~combout\)))) # (!\tsw[3]~input_o\ & (\A|ul1|data_write\(3) & (!\A|ul1|WideNor0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[3]~input_o\,
	datab => \A|ul1|data_write\(3),
	datac => \A|ul1|WideNor0~combout\,
	datad => \A|ul1|Equal6~0_combout\,
	combout => \A|ul1|Selector3~0_combout\);

-- Location: LCCOMB_X96_Y40_N28
\A|ul1|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector3~1_combout\ = (\A|ul1|Equal4~0_combout\) # ((\A|ul1|Selector3~0_combout\) # ((\tsw[7]~input_o\ & \A|ul1|Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tsw[7]~input_o\,
	datab => \A|ul1|Equal4~0_combout\,
	datac => \A|ul1|Equal5~0_combout\,
	datad => \A|ul1|Selector3~0_combout\,
	combout => \A|ul1|Selector3~1_combout\);

-- Location: FF_X96_Y40_N29
\A|ul1|data_write[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[21]~clkctrl_outclk\,
	d => \A|ul1|Selector3~1_combout\,
	clrn => \psw[0]~input_o\,
	ena => \A|ul1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|data_write\(3));

-- Location: LCCOMB_X95_Y40_N26
\A|lc1|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector5~0_combout\ = (\A|lc1|state.init3~q\) # ((\A|ul1|data_write\(3) & (\A|lc1|state.ready~q\ & \A|ul1|send_enable~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|state.init3~q\,
	datab => \A|ul1|data_write\(3),
	datac => \A|lc1|state.ready~q\,
	datad => \A|ul1|send_enable~q\,
	combout => \A|lc1|Selector5~0_combout\);

-- Location: LCCOMB_X94_Y40_N0
\A|lc1|Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector5~1_combout\ = (\A|lc1|Selector5~0_combout\) # ((\A|lc1|WideOr1~combout\ & \A|lc1|data_write_reg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|WideOr1~combout\,
	datac => \A|lc1|data_write_reg\(3),
	datad => \A|lc1|Selector5~0_combout\,
	combout => \A|lc1|Selector5~1_combout\);

-- Location: FF_X94_Y40_N1
\A|lc1|data_write_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[21]~clkctrl_outclk\,
	d => \A|lc1|Selector5~1_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|data_write_reg\(3));

-- Location: LCCOMB_X94_Y40_N26
\A|lc1|Selector4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector4~2_combout\ = (!\A|lc1|state.ready~q\ & (!\A|lc1|state.init5~q\ & (!\A|lc1|state.init3~q\ & !\A|lc1|state.init8~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|state.ready~q\,
	datab => \A|lc1|state.init5~q\,
	datac => \A|lc1|state.init3~q\,
	datad => \A|lc1|state.init8~q\,
	combout => \A|lc1|Selector4~2_combout\);

-- Location: LCCOMB_X94_Y40_N4
\A|lc1|WideOr9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|WideOr9~0_combout\ = (!\A|lc1|state.init4~q\ & (!\A|lc1|state.init2~q\ & !\A|lc1|state.init6~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|state.init4~q\,
	datac => \A|lc1|state.init2~q\,
	datad => \A|lc1|state.init6~q\,
	combout => \A|lc1|WideOr9~0_combout\);

-- Location: LCCOMB_X94_Y40_N14
\A|lc1|Selector4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector4~3_combout\ = (\A|lc1|Selector4~2_combout\ & (\A|lc1|WideOr9~0_combout\ & !\A|lc1|state.init7~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Selector4~2_combout\,
	datab => \A|lc1|WideOr9~0_combout\,
	datac => \A|lc1|state.init7~q\,
	combout => \A|lc1|Selector4~3_combout\);

-- Location: LCCOMB_X97_Y40_N4
\A|ul1|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector2~0_combout\ = (\A|ul1|Add0~93_combout\ & ((\A|ul1|Equal0~9_combout\) # ((\A|ul1|data_write\(4) & !\A|ul1|WideNor0~combout\)))) # (!\A|ul1|Add0~93_combout\ & (((\A|ul1|data_write\(4) & !\A|ul1|WideNor0~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~93_combout\,
	datab => \A|ul1|Equal0~9_combout\,
	datac => \A|ul1|data_write\(4),
	datad => \A|ul1|WideNor0~combout\,
	combout => \A|ul1|Selector2~0_combout\);

-- Location: FF_X97_Y40_N5
\A|ul1|data_write[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[21]~clkctrl_outclk\,
	d => \A|ul1|Selector2~0_combout\,
	clrn => \psw[0]~input_o\,
	ena => \A|ul1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|data_write\(4));

-- Location: LCCOMB_X95_Y40_N14
\A|lc1|Selector4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector4~4_combout\ = (\A|lc1|Selector4~3_combout\) # ((\A|lc1|state.ready~q\ & (\A|ul1|data_write\(4) & \A|ul1|send_enable~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Selector4~3_combout\,
	datab => \A|lc1|state.ready~q\,
	datac => \A|ul1|data_write\(4),
	datad => \A|ul1|send_enable~q\,
	combout => \A|lc1|Selector4~4_combout\);

-- Location: LCCOMB_X94_Y40_N24
\A|lc1|Selector3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector3~2_combout\ = ((\A|lc1|state.init1~q\) # (!\A|lc1|state.power~q\)) # (!\A|lc1|Selector4~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Selector4~3_combout\,
	datab => \A|lc1|state.power~q\,
	datad => \A|lc1|state.init1~q\,
	combout => \A|lc1|Selector3~2_combout\);

-- Location: FF_X95_Y40_N15
\A|lc1|data_write_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[21]~clkctrl_outclk\,
	d => \A|lc1|Selector4~4_combout\,
	clrn => \psw[0]~input_o\,
	ena => \A|lc1|Selector3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|data_write_reg\(4));

-- Location: LCCOMB_X96_Y40_N14
\A|ul1|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector1~0_combout\ = (\A|ul1|Equal5~0_combout\) # ((\A|ul1|Equal6~0_combout\) # ((!\A|ul1|WideNor0~combout\ & \A|ul1|data_write\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Equal5~0_combout\,
	datab => \A|ul1|WideNor0~combout\,
	datac => \A|ul1|data_write\(5),
	datad => \A|ul1|Equal6~0_combout\,
	combout => \A|ul1|Selector1~0_combout\);

-- Location: FF_X96_Y40_N15
\A|ul1|data_write[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[21]~clkctrl_outclk\,
	d => \A|ul1|Selector1~0_combout\,
	clrn => \psw[0]~input_o\,
	ena => \A|ul1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|data_write\(5));

-- Location: LCCOMB_X95_Y40_N20
\A|lc1|Selector3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector3~3_combout\ = (\A|lc1|Selector4~3_combout\) # ((\A|lc1|state.ready~q\ & (\A|ul1|data_write\(5) & \A|ul1|send_enable~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Selector4~3_combout\,
	datab => \A|lc1|state.ready~q\,
	datac => \A|ul1|data_write\(5),
	datad => \A|ul1|send_enable~q\,
	combout => \A|lc1|Selector3~3_combout\);

-- Location: FF_X95_Y40_N21
\A|lc1|data_write_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[21]~clkctrl_outclk\,
	d => \A|lc1|Selector3~3_combout\,
	clrn => \psw[0]~input_o\,
	ena => \A|lc1|Selector3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|data_write_reg\(5));

-- Location: LCCOMB_X97_Y40_N28
\A|ul1|WideNor0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|WideNor0~0_combout\ = (\A|ul1|Add0~93_combout\ $ (((!\A|ul1|Add0~94_combout\ & !\A|ul1|Add0~95_combout\)))) # (!\A|ul1|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|Add0~93_combout\,
	datab => \A|ul1|Add0~94_combout\,
	datac => \A|ul1|Add0~95_combout\,
	datad => \A|ul1|Equal0~9_combout\,
	combout => \A|ul1|WideNor0~0_combout\);

-- Location: LCCOMB_X97_Y40_N10
\A|ul1|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|Selector0~0_combout\ = ((!\A|ul1|WideNor0~combout\ & \A|ul1|data_write\(6))) # (!\A|ul1|WideNor0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|ul1|WideNor0~combout\,
	datac => \A|ul1|data_write\(6),
	datad => \A|ul1|WideNor0~0_combout\,
	combout => \A|ul1|Selector0~0_combout\);

-- Location: FF_X97_Y40_N11
\A|ul1|data_write[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[21]~clkctrl_outclk\,
	d => \A|ul1|Selector0~0_combout\,
	clrn => \psw[0]~input_o\,
	ena => \A|ul1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|data_write\(6));

-- Location: LCCOMB_X94_Y40_N2
\A|lc1|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector2~1_combout\ = (\A|lc1|WideOr1~combout\ & ((\A|lc1|data_write_reg\(6)) # ((\A|lc1|Selector2~0_combout\ & \A|ul1|data_write\(6))))) # (!\A|lc1|WideOr1~combout\ & (\A|lc1|Selector2~0_combout\ & ((\A|ul1|data_write\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|WideOr1~combout\,
	datab => \A|lc1|Selector2~0_combout\,
	datac => \A|lc1|data_write_reg\(6),
	datad => \A|ul1|data_write\(6),
	combout => \A|lc1|Selector2~1_combout\);

-- Location: FF_X94_Y40_N3
\A|lc1|data_write_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[21]~clkctrl_outclk\,
	d => \A|lc1|Selector2~1_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|data_write_reg\(6));

-- Location: LCCOMB_X106_Y7_N4
\B|ctl|addr_reg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|ctl|addr_reg[0]~0_combout\ = (\psw[2]~input_o\ & !\B|ctl|state.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \psw[2]~input_o\,
	datad => \B|ctl|state.idle~q\,
	combout => \B|ctl|addr_reg[0]~0_combout\);

-- Location: FF_X106_Y7_N5
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

-- Location: FF_X106_Y7_N15
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

-- Location: FF_X106_Y7_N25
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

-- Location: FF_X106_Y7_N27
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

-- Location: LCCOMB_X106_Y7_N28
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

-- Location: FF_X106_Y7_N29
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

-- Location: LCCOMB_X106_Y7_N22
\B|ctl|addr_reg[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|ctl|addr_reg[5]~feeder_combout\ = \tsw[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tsw[5]~input_o\,
	combout => \B|ctl|addr_reg[5]~feeder_combout\);

-- Location: FF_X106_Y7_N23
\B|ctl|addr_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \B|ctl|addr_reg[5]~feeder_combout\,
	clrn => \psw[0]~input_o\,
	ena => \B|ctl|addr_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|ctl|addr_reg\(5));

-- Location: LCCOMB_X106_Y7_N16
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

-- Location: FF_X106_Y7_N17
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

-- Location: LCCOMB_X106_Y7_N30
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

-- Location: FF_X106_Y7_N31
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

-- Location: FF_X107_Y7_N9
\B|ctl|we_reg\ : dffeas
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
	q => \B|ctl|we_reg~q\);

-- Location: LCCOMB_X107_Y11_N20
\B|ctl|oe_buf~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|ctl|oe_buf~0_combout\ = (\B|ctl|state.r1~q\) # ((\psw[2]~input_o\ & (\psw[3]~input_o\ & !\B|ctl|state.idle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B|ctl|state.r1~q\,
	datab => \psw[2]~input_o\,
	datac => \psw[3]~input_o\,
	datad => \B|ctl|state.idle~q\,
	combout => \B|ctl|oe_buf~0_combout\);

-- Location: FF_X107_Y11_N21
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

-- Location: LCCOMB_X94_Y40_N18
\A|lc1|WideOr9\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|WideOr9~combout\ = ((\A|lc1|state.send1~q\) # (!\A|lc1|WideOr9~0_combout\)) # (!\A|lc1|state.power~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|lc1|state.power~q\,
	datac => \A|lc1|WideOr9~0_combout\,
	datad => \A|lc1|state.send1~q\,
	combout => \A|lc1|WideOr9~combout\);

-- Location: FF_X94_Y40_N19
\A|lc1|en_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[21]~clkctrl_outclk\,
	d => \A|lc1|WideOr9~combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|en_reg~q\);

-- Location: LCCOMB_X95_Y40_N18
\A|lc1|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector9~0_combout\ = (\A|lc1|Selector2~0_combout\) # ((\A|lc1|state.send2~q\) # ((\A|lc1|state.send1~q\) # (\A|lc1|state.send3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Selector2~0_combout\,
	datab => \A|lc1|state.send2~q\,
	datac => \A|lc1|state.send1~q\,
	datad => \A|lc1|state.send3~q\,
	combout => \A|lc1|Selector9~0_combout\);

-- Location: LCCOMB_X97_Y40_N22
\A|ul1|data_write[9]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|ul1|data_write[9]~0_combout\ = (\A|ul1|data_write\(9)) # ((\A|lc1|busy_reg~q\ & (!\A|ul1|send_enable~q\ & \A|ul1|WideNor0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|busy_reg~q\,
	datab => \A|ul1|send_enable~q\,
	datac => \A|ul1|data_write\(9),
	datad => \A|ul1|WideNor0~combout\,
	combout => \A|ul1|data_write[9]~0_combout\);

-- Location: FF_X97_Y40_N23
\A|ul1|data_write[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[21]~clkctrl_outclk\,
	d => \A|ul1|data_write[9]~0_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|ul1|data_write\(9));

-- Location: LCCOMB_X95_Y40_N12
\A|lc1|Selector9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|lc1|Selector9~1_combout\ = (\A|lc1|Selector9~0_combout\) # ((\A|lc1|Selector0~0_combout\ & ((\A|ul1|data_write\(9)) # (!\A|ul1|send_enable~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|lc1|Selector9~0_combout\,
	datab => \A|ul1|data_write\(9),
	datac => \A|lc1|Selector0~0_combout\,
	datad => \A|ul1|send_enable~q\,
	combout => \A|lc1|Selector9~1_combout\);

-- Location: FF_X95_Y40_N13
\A|lc1|rs_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A|ck1|q[21]~clkctrl_outclk\,
	d => \A|lc1|Selector9~1_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|lc1|rs_reg~q\);

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

-- Location: LCCOMB_X105_Y11_N2
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

-- Location: FF_X105_Y11_N3
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

-- Location: LCCOMB_X105_Y11_N12
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

-- Location: FF_X105_Y11_N13
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

-- Location: LCCOMB_X105_Y11_N22
\B|ctl|data_read_reg[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|ctl|data_read_reg[3]~feeder_combout\ = \dio_sram[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dio_sram[3]~input_o\,
	combout => \B|ctl|data_read_reg[3]~feeder_combout\);

-- Location: FF_X105_Y11_N23
\B|ctl|data_read_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \B|ctl|data_read_reg[3]~feeder_combout\,
	clrn => \psw[0]~input_o\,
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

-- Location: FF_X105_Y11_N1
\B|ctl|data_read_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dio_sram[0]~input_o\,
	clrn => \psw[0]~input_o\,
	sload => VCC,
	ena => \B|ctl|state.r2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|ctl|data_read_reg\(0));

-- Location: LCCOMB_X107_Y16_N4
\B|dp1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp1|Mux6~0_combout\ = (\B|ctl|data_read_reg\(2) & (!\B|ctl|data_read_reg\(1) & (\B|ctl|data_read_reg\(3) $ (!\B|ctl|data_read_reg\(0))))) # (!\B|ctl|data_read_reg\(2) & (\B|ctl|data_read_reg\(0) & (\B|ctl|data_read_reg\(1) $ 
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
	combout => \B|dp1|Mux6~0_combout\);

-- Location: LCCOMB_X107_Y16_N14
\B|dp1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp1|Mux5~0_combout\ = (\B|ctl|data_read_reg\(1) & ((\B|ctl|data_read_reg\(0) & ((\B|ctl|data_read_reg\(3)))) # (!\B|ctl|data_read_reg\(0) & (\B|ctl|data_read_reg\(2))))) # (!\B|ctl|data_read_reg\(1) & (\B|ctl|data_read_reg\(2) & 
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
	combout => \B|dp1|Mux5~0_combout\);

-- Location: LCCOMB_X107_Y16_N0
\B|dp1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp1|Mux4~0_combout\ = (\B|ctl|data_read_reg\(2) & (\B|ctl|data_read_reg\(3) & ((\B|ctl|data_read_reg\(1)) # (!\B|ctl|data_read_reg\(0))))) # (!\B|ctl|data_read_reg\(2) & (\B|ctl|data_read_reg\(1) & (!\B|ctl|data_read_reg\(3) & 
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
	combout => \B|dp1|Mux4~0_combout\);

-- Location: LCCOMB_X108_Y16_N12
\B|dp1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp1|Mux3~0_combout\ = (\B|ctl|data_read_reg\(0) & ((\B|ctl|data_read_reg\(2) $ (!\B|ctl|data_read_reg\(1))))) # (!\B|ctl|data_read_reg\(0) & ((\B|ctl|data_read_reg\(3) & (!\B|ctl|data_read_reg\(2) & \B|ctl|data_read_reg\(1))) # 
-- (!\B|ctl|data_read_reg\(3) & (\B|ctl|data_read_reg\(2) & !\B|ctl|data_read_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B|ctl|data_read_reg\(3),
	datab => \B|ctl|data_read_reg\(2),
	datac => \B|ctl|data_read_reg\(0),
	datad => \B|ctl|data_read_reg\(1),
	combout => \B|dp1|Mux3~0_combout\);

-- Location: LCCOMB_X108_Y16_N26
\B|dp1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp1|Mux2~0_combout\ = (\B|ctl|data_read_reg\(1) & (!\B|ctl|data_read_reg\(3) & ((\B|ctl|data_read_reg\(0))))) # (!\B|ctl|data_read_reg\(1) & ((\B|ctl|data_read_reg\(2) & (!\B|ctl|data_read_reg\(3))) # (!\B|ctl|data_read_reg\(2) & 
-- ((\B|ctl|data_read_reg\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B|ctl|data_read_reg\(3),
	datab => \B|ctl|data_read_reg\(2),
	datac => \B|ctl|data_read_reg\(0),
	datad => \B|ctl|data_read_reg\(1),
	combout => \B|dp1|Mux2~0_combout\);

-- Location: LCCOMB_X108_Y16_N20
\B|dp1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp1|Mux1~0_combout\ = (\B|ctl|data_read_reg\(2) & (\B|ctl|data_read_reg\(0) & (\B|ctl|data_read_reg\(3) $ (\B|ctl|data_read_reg\(1))))) # (!\B|ctl|data_read_reg\(2) & (!\B|ctl|data_read_reg\(3) & ((\B|ctl|data_read_reg\(0)) # 
-- (\B|ctl|data_read_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B|ctl|data_read_reg\(3),
	datab => \B|ctl|data_read_reg\(2),
	datac => \B|ctl|data_read_reg\(0),
	datad => \B|ctl|data_read_reg\(1),
	combout => \B|dp1|Mux1~0_combout\);

-- Location: LCCOMB_X108_Y16_N6
\B|dp1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp1|Mux0~0_combout\ = (\B|ctl|data_read_reg\(0) & ((\B|ctl|data_read_reg\(3)) # (\B|ctl|data_read_reg\(2) $ (\B|ctl|data_read_reg\(1))))) # (!\B|ctl|data_read_reg\(0) & ((\B|ctl|data_read_reg\(1)) # (\B|ctl|data_read_reg\(3) $ 
-- (\B|ctl|data_read_reg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B|ctl|data_read_reg\(3),
	datab => \B|ctl|data_read_reg\(2),
	datac => \B|ctl|data_read_reg\(0),
	datad => \B|ctl|data_read_reg\(1),
	combout => \B|dp1|Mux0~0_combout\);

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

-- Location: FF_X105_Y11_N21
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

-- Location: FF_X105_Y11_N19
\B|ctl|data_read_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dio_sram[7]~input_o\,
	clrn => \psw[0]~input_o\,
	sload => VCC,
	ena => \B|ctl|state.r2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|ctl|data_read_reg\(7));

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

-- Location: LCCOMB_X105_Y11_N8
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

-- Location: FF_X105_Y11_N9
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

-- Location: FF_X105_Y11_N11
\B|ctl|data_read_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dio_sram[5]~input_o\,
	clrn => \psw[0]~input_o\,
	sload => VCC,
	ena => \B|ctl|state.r2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|ctl|data_read_reg\(5));

-- Location: LCCOMB_X108_Y16_N24
\B|dp2|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp2|Mux6~0_combout\ = (\B|ctl|data_read_reg\(6) & (!\B|ctl|data_read_reg\(5) & (\B|ctl|data_read_reg\(7) $ (!\B|ctl|data_read_reg\(4))))) # (!\B|ctl|data_read_reg\(6) & (\B|ctl|data_read_reg\(4) & (\B|ctl|data_read_reg\(7) $ 
-- (!\B|ctl|data_read_reg\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B|ctl|data_read_reg\(6),
	datab => \B|ctl|data_read_reg\(7),
	datac => \B|ctl|data_read_reg\(4),
	datad => \B|ctl|data_read_reg\(5),
	combout => \B|dp2|Mux6~0_combout\);

-- Location: LCCOMB_X108_Y16_N10
\B|dp2|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp2|Mux5~0_combout\ = (\B|ctl|data_read_reg\(7) & ((\B|ctl|data_read_reg\(4) & ((\B|ctl|data_read_reg\(5)))) # (!\B|ctl|data_read_reg\(4) & (\B|ctl|data_read_reg\(6))))) # (!\B|ctl|data_read_reg\(7) & (\B|ctl|data_read_reg\(6) & 
-- (\B|ctl|data_read_reg\(4) $ (\B|ctl|data_read_reg\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B|ctl|data_read_reg\(6),
	datab => \B|ctl|data_read_reg\(7),
	datac => \B|ctl|data_read_reg\(4),
	datad => \B|ctl|data_read_reg\(5),
	combout => \B|dp2|Mux5~0_combout\);

-- Location: LCCOMB_X108_Y16_N0
\B|dp2|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp2|Mux4~0_combout\ = (\B|ctl|data_read_reg\(6) & (\B|ctl|data_read_reg\(7) & ((\B|ctl|data_read_reg\(5)) # (!\B|ctl|data_read_reg\(4))))) # (!\B|ctl|data_read_reg\(6) & (!\B|ctl|data_read_reg\(7) & (!\B|ctl|data_read_reg\(4) & 
-- \B|ctl|data_read_reg\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B|ctl|data_read_reg\(6),
	datab => \B|ctl|data_read_reg\(7),
	datac => \B|ctl|data_read_reg\(4),
	datad => \B|ctl|data_read_reg\(5),
	combout => \B|dp2|Mux4~0_combout\);

-- Location: LCCOMB_X108_Y16_N18
\B|dp2|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp2|Mux3~0_combout\ = (\B|ctl|data_read_reg\(4) & (\B|ctl|data_read_reg\(6) $ (((!\B|ctl|data_read_reg\(5)))))) # (!\B|ctl|data_read_reg\(4) & ((\B|ctl|data_read_reg\(6) & (!\B|ctl|data_read_reg\(7) & !\B|ctl|data_read_reg\(5))) # 
-- (!\B|ctl|data_read_reg\(6) & (\B|ctl|data_read_reg\(7) & \B|ctl|data_read_reg\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B|ctl|data_read_reg\(6),
	datab => \B|ctl|data_read_reg\(7),
	datac => \B|ctl|data_read_reg\(4),
	datad => \B|ctl|data_read_reg\(5),
	combout => \B|dp2|Mux3~0_combout\);

-- Location: LCCOMB_X108_Y16_N4
\B|dp2|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp2|Mux2~0_combout\ = (\B|ctl|data_read_reg\(5) & (((!\B|ctl|data_read_reg\(7) & \B|ctl|data_read_reg\(4))))) # (!\B|ctl|data_read_reg\(5) & ((\B|ctl|data_read_reg\(6) & (!\B|ctl|data_read_reg\(7))) # (!\B|ctl|data_read_reg\(6) & 
-- ((\B|ctl|data_read_reg\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B|ctl|data_read_reg\(6),
	datab => \B|ctl|data_read_reg\(7),
	datac => \B|ctl|data_read_reg\(4),
	datad => \B|ctl|data_read_reg\(5),
	combout => \B|dp2|Mux2~0_combout\);

-- Location: LCCOMB_X108_Y16_N22
\B|dp2|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp2|Mux1~0_combout\ = (\B|ctl|data_read_reg\(6) & (\B|ctl|data_read_reg\(4) & (\B|ctl|data_read_reg\(7) $ (\B|ctl|data_read_reg\(5))))) # (!\B|ctl|data_read_reg\(6) & (!\B|ctl|data_read_reg\(7) & ((\B|ctl|data_read_reg\(4)) # 
-- (\B|ctl|data_read_reg\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B|ctl|data_read_reg\(6),
	datab => \B|ctl|data_read_reg\(7),
	datac => \B|ctl|data_read_reg\(4),
	datad => \B|ctl|data_read_reg\(5),
	combout => \B|dp2|Mux1~0_combout\);

-- Location: LCCOMB_X108_Y16_N8
\B|dp2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B|dp2|Mux0~0_combout\ = (\B|ctl|data_read_reg\(4) & ((\B|ctl|data_read_reg\(7)) # (\B|ctl|data_read_reg\(6) $ (\B|ctl|data_read_reg\(5))))) # (!\B|ctl|data_read_reg\(4) & ((\B|ctl|data_read_reg\(5)) # (\B|ctl|data_read_reg\(6) $ 
-- (\B|ctl|data_read_reg\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B|ctl|data_read_reg\(6),
	datab => \B|ctl|data_read_reg\(7),
	datac => \B|ctl|data_read_reg\(4),
	datad => \B|ctl|data_read_reg\(5),
	combout => \B|dp2|Mux0~0_combout\);

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


