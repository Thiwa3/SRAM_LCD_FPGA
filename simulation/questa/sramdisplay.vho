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

-- DATE "08/29/2024 13:28:54"

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
	ad : BUFFER std_logic_vector(19 DOWNTO 0);
	dio : BUFFER std_logic_vector(15 DOWNTO 0);
	we_n : BUFFER std_logic;
	oe_n : BUFFER std_logic;
	ce_n : BUFFER std_logic;
	lb_n : BUFFER std_logic;
	ub_n : BUFFER std_logic;
	segout : BUFFER std_logic_vector(13 DOWNTO 0)
	);
END top_module;

-- Design Ports Information
-- tsw[16]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tsw[17]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- psw[1]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ad[0]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ad[1]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ad[2]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ad[3]	=>  Location: PIN_AC7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ad[4]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ad[5]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ad[6]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ad[7]	=>  Location: PIN_AC5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ad[8]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ad[9]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ad[10]	=>  Location: PIN_AF2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ad[11]	=>  Location: PIN_AD3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ad[12]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ad[13]	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ad[14]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ad[15]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ad[16]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ad[17]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ad[18]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ad[19]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- we_n	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oe_n	=>  Location: PIN_AD5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ce_n	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lb_n	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ub_n	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segout[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segout[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segout[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segout[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segout[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segout[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segout[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segout[7]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segout[8]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segout[9]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segout[10]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segout[11]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segout[12]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segout[13]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dio[0]	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dio[1]	=>  Location: PIN_AF3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dio[2]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dio[3]	=>  Location: PIN_AE3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dio[4]	=>  Location: PIN_AE1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dio[5]	=>  Location: PIN_AE2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dio[6]	=>  Location: PIN_AD2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dio[7]	=>  Location: PIN_AD1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dio[8]	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dio[9]	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dio[10]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dio[11]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dio[12]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dio[13]	=>  Location: PIN_AG4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dio[14]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dio[15]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_ad : std_logic_vector(19 DOWNTO 0);
SIGNAL ww_dio : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_we_n : std_logic;
SIGNAL ww_oe_n : std_logic;
SIGNAL ww_ce_n : std_logic;
SIGNAL ww_lb_n : std_logic;
SIGNAL ww_ub_n : std_logic;
SIGNAL ww_segout : std_logic_vector(13 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \tsw[16]~input_o\ : std_logic;
SIGNAL \tsw[17]~input_o\ : std_logic;
SIGNAL \psw[1]~input_o\ : std_logic;
SIGNAL \dio[8]~input_o\ : std_logic;
SIGNAL \dio[9]~input_o\ : std_logic;
SIGNAL \dio[10]~input_o\ : std_logic;
SIGNAL \dio[11]~input_o\ : std_logic;
SIGNAL \dio[12]~input_o\ : std_logic;
SIGNAL \dio[13]~input_o\ : std_logic;
SIGNAL \dio[14]~input_o\ : std_logic;
SIGNAL \dio[15]~input_o\ : std_logic;
SIGNAL \dio[0]~output_o\ : std_logic;
SIGNAL \dio[1]~output_o\ : std_logic;
SIGNAL \dio[2]~output_o\ : std_logic;
SIGNAL \dio[3]~output_o\ : std_logic;
SIGNAL \dio[4]~output_o\ : std_logic;
SIGNAL \dio[5]~output_o\ : std_logic;
SIGNAL \dio[6]~output_o\ : std_logic;
SIGNAL \dio[7]~output_o\ : std_logic;
SIGNAL \dio[8]~output_o\ : std_logic;
SIGNAL \dio[9]~output_o\ : std_logic;
SIGNAL \dio[10]~output_o\ : std_logic;
SIGNAL \dio[11]~output_o\ : std_logic;
SIGNAL \dio[12]~output_o\ : std_logic;
SIGNAL \dio[13]~output_o\ : std_logic;
SIGNAL \dio[14]~output_o\ : std_logic;
SIGNAL \dio[15]~output_o\ : std_logic;
SIGNAL \ad[0]~output_o\ : std_logic;
SIGNAL \ad[1]~output_o\ : std_logic;
SIGNAL \ad[2]~output_o\ : std_logic;
SIGNAL \ad[3]~output_o\ : std_logic;
SIGNAL \ad[4]~output_o\ : std_logic;
SIGNAL \ad[5]~output_o\ : std_logic;
SIGNAL \ad[6]~output_o\ : std_logic;
SIGNAL \ad[7]~output_o\ : std_logic;
SIGNAL \ad[8]~output_o\ : std_logic;
SIGNAL \ad[9]~output_o\ : std_logic;
SIGNAL \ad[10]~output_o\ : std_logic;
SIGNAL \ad[11]~output_o\ : std_logic;
SIGNAL \ad[12]~output_o\ : std_logic;
SIGNAL \ad[13]~output_o\ : std_logic;
SIGNAL \ad[14]~output_o\ : std_logic;
SIGNAL \ad[15]~output_o\ : std_logic;
SIGNAL \ad[16]~output_o\ : std_logic;
SIGNAL \ad[17]~output_o\ : std_logic;
SIGNAL \ad[18]~output_o\ : std_logic;
SIGNAL \ad[19]~output_o\ : std_logic;
SIGNAL \we_n~output_o\ : std_logic;
SIGNAL \oe_n~output_o\ : std_logic;
SIGNAL \ce_n~output_o\ : std_logic;
SIGNAL \lb_n~output_o\ : std_logic;
SIGNAL \ub_n~output_o\ : std_logic;
SIGNAL \segout[0]~output_o\ : std_logic;
SIGNAL \segout[1]~output_o\ : std_logic;
SIGNAL \segout[2]~output_o\ : std_logic;
SIGNAL \segout[3]~output_o\ : std_logic;
SIGNAL \segout[4]~output_o\ : std_logic;
SIGNAL \segout[5]~output_o\ : std_logic;
SIGNAL \segout[6]~output_o\ : std_logic;
SIGNAL \segout[7]~output_o\ : std_logic;
SIGNAL \segout[8]~output_o\ : std_logic;
SIGNAL \segout[9]~output_o\ : std_logic;
SIGNAL \segout[10]~output_o\ : std_logic;
SIGNAL \segout[11]~output_o\ : std_logic;
SIGNAL \segout[12]~output_o\ : std_logic;
SIGNAL \segout[13]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \tsw[8]~input_o\ : std_logic;
SIGNAL \ctl|data_write_reg[0]~feeder_combout\ : std_logic;
SIGNAL \psw[0]~input_o\ : std_logic;
SIGNAL \psw[3]~input_o\ : std_logic;
SIGNAL \psw[2]~input_o\ : std_logic;
SIGNAL \ctl|state.w1~feeder_combout\ : std_logic;
SIGNAL \ctl|state.w1~q\ : std_logic;
SIGNAL \ctl|state.w2~feeder_combout\ : std_logic;
SIGNAL \ctl|state.w2~q\ : std_logic;
SIGNAL \ctl|nextstate.r1~0_combout\ : std_logic;
SIGNAL \ctl|state.r1~q\ : std_logic;
SIGNAL \ctl|state.r2~feeder_combout\ : std_logic;
SIGNAL \ctl|state.r2~q\ : std_logic;
SIGNAL \ctl|Selector0~0_combout\ : std_logic;
SIGNAL \ctl|state.idle~q\ : std_logic;
SIGNAL \ctl|nextstate.w1~0_combout\ : std_logic;
SIGNAL \ctl|tri_buf~0_combout\ : std_logic;
SIGNAL \ctl|tri_reg~q\ : std_logic;
SIGNAL \tsw[9]~input_o\ : std_logic;
SIGNAL \ctl|data_write_reg[1]~feeder_combout\ : std_logic;
SIGNAL \tsw[10]~input_o\ : std_logic;
SIGNAL \tsw[11]~input_o\ : std_logic;
SIGNAL \ctl|data_write_reg[3]~feeder_combout\ : std_logic;
SIGNAL \tsw[12]~input_o\ : std_logic;
SIGNAL \tsw[13]~input_o\ : std_logic;
SIGNAL \ctl|data_write_reg[5]~feeder_combout\ : std_logic;
SIGNAL \tsw[14]~input_o\ : std_logic;
SIGNAL \ctl|data_write_reg[6]~feeder_combout\ : std_logic;
SIGNAL \tsw[15]~input_o\ : std_logic;
SIGNAL \tsw[0]~input_o\ : std_logic;
SIGNAL \ctl|addr_reg[0]~0_combout\ : std_logic;
SIGNAL \tsw[1]~input_o\ : std_logic;
SIGNAL \ctl|addr_reg[1]~feeder_combout\ : std_logic;
SIGNAL \tsw[2]~input_o\ : std_logic;
SIGNAL \ctl|addr_reg[2]~feeder_combout\ : std_logic;
SIGNAL \tsw[3]~input_o\ : std_logic;
SIGNAL \tsw[4]~input_o\ : std_logic;
SIGNAL \ctl|addr_reg[4]~feeder_combout\ : std_logic;
SIGNAL \tsw[5]~input_o\ : std_logic;
SIGNAL \ctl|addr_reg[5]~feeder_combout\ : std_logic;
SIGNAL \tsw[6]~input_o\ : std_logic;
SIGNAL \tsw[7]~input_o\ : std_logic;
SIGNAL \ctl|we_reg~q\ : std_logic;
SIGNAL \ctl|oe_buf~0_combout\ : std_logic;
SIGNAL \ctl|oe_reg~q\ : std_logic;
SIGNAL \dio[1]~input_o\ : std_logic;
SIGNAL \ctl|data_read_reg[1]~feeder_combout\ : std_logic;
SIGNAL \dio[0]~input_o\ : std_logic;
SIGNAL \dio[2]~input_o\ : std_logic;
SIGNAL \ctl|data_read_reg[2]~feeder_combout\ : std_logic;
SIGNAL \dio[3]~input_o\ : std_logic;
SIGNAL \ctl|data_read_reg[3]~feeder_combout\ : std_logic;
SIGNAL \dp1|Mux6~0_combout\ : std_logic;
SIGNAL \dp1|Mux5~0_combout\ : std_logic;
SIGNAL \dp1|Mux4~0_combout\ : std_logic;
SIGNAL \dp1|Mux3~0_combout\ : std_logic;
SIGNAL \dp1|Mux2~0_combout\ : std_logic;
SIGNAL \dp1|Mux1~0_combout\ : std_logic;
SIGNAL \dp1|Mux0~0_combout\ : std_logic;
SIGNAL \dio[5]~input_o\ : std_logic;
SIGNAL \dio[4]~input_o\ : std_logic;
SIGNAL \ctl|data_read_reg[4]~feeder_combout\ : std_logic;
SIGNAL \dio[7]~input_o\ : std_logic;
SIGNAL \dio[6]~input_o\ : std_logic;
SIGNAL \dp2|Mux6~0_combout\ : std_logic;
SIGNAL \dp2|Mux5~0_combout\ : std_logic;
SIGNAL \dp2|Mux4~0_combout\ : std_logic;
SIGNAL \dp2|Mux3~0_combout\ : std_logic;
SIGNAL \dp2|Mux2~0_combout\ : std_logic;
SIGNAL \dp2|Mux1~0_combout\ : std_logic;
SIGNAL \dp2|Mux0~0_combout\ : std_logic;
SIGNAL \ctl|addr_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ctl|data_read_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ctl|data_write_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \dp2|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \dp1|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ctl|ALT_INV_oe_reg~q\ : std_logic;
SIGNAL \ctl|ALT_INV_we_reg~q\ : std_logic;

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
ad <= ww_ad;
dio <= ww_dio;
we_n <= ww_we_n;
oe_n <= ww_oe_n;
ce_n <= ww_ce_n;
lb_n <= ww_lb_n;
ub_n <= ww_ub_n;
segout <= ww_segout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\dp2|ALT_INV_Mux0~0_combout\ <= NOT \dp2|Mux0~0_combout\;
\dp1|ALT_INV_Mux0~0_combout\ <= NOT \dp1|Mux0~0_combout\;
\ctl|ALT_INV_oe_reg~q\ <= NOT \ctl|oe_reg~q\;
\ctl|ALT_INV_we_reg~q\ <= NOT \ctl|we_reg~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X3_Y0_N16
\dio[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ctl|data_write_reg\(0),
	oe => \ctl|tri_reg~q\,
	devoe => ww_devoe,
	o => \dio[0]~output_o\);

-- Location: IOOBUF_X7_Y0_N23
\dio[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ctl|data_write_reg\(1),
	oe => \ctl|tri_reg~q\,
	devoe => ww_devoe,
	o => \dio[1]~output_o\);

-- Location: IOOBUF_X3_Y0_N23
\dio[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ctl|data_write_reg\(2),
	oe => \ctl|tri_reg~q\,
	devoe => ww_devoe,
	o => \dio[2]~output_o\);

-- Location: IOOBUF_X0_Y7_N9
\dio[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ctl|data_write_reg\(3),
	oe => \ctl|tri_reg~q\,
	devoe => ww_devoe,
	o => \dio[3]~output_o\);

-- Location: IOOBUF_X0_Y16_N16
\dio[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ctl|data_write_reg\(4),
	oe => \ctl|tri_reg~q\,
	devoe => ww_devoe,
	o => \dio[4]~output_o\);

-- Location: IOOBUF_X0_Y17_N16
\dio[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ctl|data_write_reg\(5),
	oe => \ctl|tri_reg~q\,
	devoe => ww_devoe,
	o => \dio[5]~output_o\);

-- Location: IOOBUF_X0_Y22_N23
\dio[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ctl|data_write_reg\(6),
	oe => \ctl|tri_reg~q\,
	devoe => ww_devoe,
	o => \dio[6]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\dio[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ctl|data_write_reg\(7),
	oe => \ctl|tri_reg~q\,
	devoe => ww_devoe,
	o => \dio[7]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\dio[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dio[8]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\dio[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dio[9]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\dio[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dio[10]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\dio[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dio[11]~output_o\);

-- Location: IOOBUF_X9_Y0_N16
\dio[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dio[12]~output_o\);

-- Location: IOOBUF_X9_Y0_N23
\dio[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dio[13]~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\dio[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dio[14]~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\dio[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dio[15]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\ad[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ctl|addr_reg\(0),
	devoe => ww_devoe,
	o => \ad[0]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\ad[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ctl|addr_reg\(1),
	devoe => ww_devoe,
	o => \ad[1]~output_o\);

-- Location: IOOBUF_X20_Y0_N16
\ad[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ctl|addr_reg\(2),
	devoe => ww_devoe,
	o => \ad[2]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\ad[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ctl|addr_reg\(3),
	devoe => ww_devoe,
	o => \ad[3]~output_o\);

-- Location: IOOBUF_X0_Y4_N9
\ad[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ctl|addr_reg\(4),
	devoe => ww_devoe,
	o => \ad[4]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\ad[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ctl|addr_reg\(5),
	devoe => ww_devoe,
	o => \ad[5]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\ad[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ctl|addr_reg\(6),
	devoe => ww_devoe,
	o => \ad[6]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\ad[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ctl|addr_reg\(7),
	devoe => ww_devoe,
	o => \ad[7]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\ad[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ad[8]~output_o\);

-- Location: IOOBUF_X0_Y31_N16
\ad[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ad[9]~output_o\);

-- Location: IOOBUF_X0_Y6_N2
\ad[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ad[10]~output_o\);

-- Location: IOOBUF_X0_Y22_N16
\ad[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ad[11]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\ad[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ad[12]~output_o\);

-- Location: IOOBUF_X0_Y23_N23
\ad[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ad[13]~output_o\);

-- Location: IOOBUF_X0_Y19_N2
\ad[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ad[14]~output_o\);

-- Location: IOOBUF_X27_Y0_N9
\ad[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ad[15]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\ad[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ad[16]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\ad[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ad[17]~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\ad[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ad[18]~output_o\);

-- Location: IOOBUF_X0_Y20_N16
\ad[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ad[19]~output_o\);

-- Location: IOOBUF_X23_Y0_N23
\we_n~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ctl|ALT_INV_we_reg~q\,
	devoe => ww_devoe,
	o => \we_n~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\oe_n~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ctl|ALT_INV_oe_reg~q\,
	devoe => ww_devoe,
	o => \oe_n~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\ce_n~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ce_n~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\lb_n~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \lb_n~output_o\);

-- Location: IOOBUF_X0_Y4_N2
\ub_n~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ub_n~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\segout[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp1|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \segout[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\segout[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \segout[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\segout[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp1|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \segout[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\segout[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp1|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \segout[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\segout[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp1|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \segout[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\segout[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp1|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \segout[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\segout[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp1|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \segout[6]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\segout[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp2|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \segout[7]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\segout[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp2|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \segout[8]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\segout[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp2|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \segout[9]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\segout[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp2|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \segout[10]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\segout[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp2|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \segout[11]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\segout[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp2|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \segout[12]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\segout[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp2|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \segout[13]~output_o\);

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

-- Location: LCCOMB_X108_Y11_N6
\ctl|data_write_reg[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctl|data_write_reg[0]~feeder_combout\ = \tsw[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tsw[8]~input_o\,
	combout => \ctl|data_write_reg[0]~feeder_combout\);

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

-- Location: LCCOMB_X108_Y11_N26
\ctl|state.w1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctl|state.w1~feeder_combout\ = \ctl|nextstate.w1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ctl|nextstate.w1~0_combout\,
	combout => \ctl|state.w1~feeder_combout\);

-- Location: FF_X108_Y11_N27
\ctl|state.w1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ctl|state.w1~feeder_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctl|state.w1~q\);

-- Location: LCCOMB_X107_Y11_N10
\ctl|state.w2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctl|state.w2~feeder_combout\ = \ctl|state.w1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ctl|state.w1~q\,
	combout => \ctl|state.w2~feeder_combout\);

-- Location: FF_X107_Y11_N11
\ctl|state.w2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ctl|state.w2~feeder_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctl|state.w2~q\);

-- Location: LCCOMB_X107_Y11_N4
\ctl|nextstate.r1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctl|nextstate.r1~0_combout\ = (\psw[3]~input_o\ & (\psw[2]~input_o\ & !\ctl|state.idle~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \psw[3]~input_o\,
	datac => \psw[2]~input_o\,
	datad => \ctl|state.idle~q\,
	combout => \ctl|nextstate.r1~0_combout\);

-- Location: FF_X107_Y11_N5
\ctl|state.r1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ctl|nextstate.r1~0_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctl|state.r1~q\);

-- Location: LCCOMB_X105_Y11_N4
\ctl|state.r2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctl|state.r2~feeder_combout\ = \ctl|state.r1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ctl|state.r1~q\,
	combout => \ctl|state.r2~feeder_combout\);

-- Location: FF_X105_Y11_N5
\ctl|state.r2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ctl|state.r2~feeder_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctl|state.r2~q\);

-- Location: LCCOMB_X107_Y11_N14
\ctl|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctl|Selector0~0_combout\ = (!\ctl|state.w2~q\ & (!\ctl|state.r2~q\ & ((\psw[2]~input_o\) # (\ctl|state.idle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \psw[2]~input_o\,
	datab => \ctl|state.w2~q\,
	datac => \ctl|state.idle~q\,
	datad => \ctl|state.r2~q\,
	combout => \ctl|Selector0~0_combout\);

-- Location: FF_X107_Y11_N15
\ctl|state.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ctl|Selector0~0_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctl|state.idle~q\);

-- Location: LCCOMB_X108_Y11_N8
\ctl|nextstate.w1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctl|nextstate.w1~0_combout\ = (!\psw[3]~input_o\ & (\psw[2]~input_o\ & !\ctl|state.idle~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \psw[3]~input_o\,
	datac => \psw[2]~input_o\,
	datad => \ctl|state.idle~q\,
	combout => \ctl|nextstate.w1~0_combout\);

-- Location: FF_X108_Y11_N7
\ctl|data_write_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ctl|data_write_reg[0]~feeder_combout\,
	clrn => \psw[0]~input_o\,
	ena => \ctl|nextstate.w1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctl|data_write_reg\(0));

-- Location: LCCOMB_X107_Y11_N24
\ctl|tri_buf~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctl|tri_buf~0_combout\ = (\ctl|state.w1~q\) # ((!\psw[3]~input_o\ & (!\ctl|state.idle~q\ & \psw[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \psw[3]~input_o\,
	datab => \ctl|state.idle~q\,
	datac => \psw[2]~input_o\,
	datad => \ctl|state.w1~q\,
	combout => \ctl|tri_buf~0_combout\);

-- Location: FF_X107_Y11_N25
\ctl|tri_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ctl|tri_buf~0_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctl|tri_reg~q\);

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

-- Location: LCCOMB_X108_Y11_N24
\ctl|data_write_reg[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctl|data_write_reg[1]~feeder_combout\ = \tsw[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tsw[9]~input_o\,
	combout => \ctl|data_write_reg[1]~feeder_combout\);

-- Location: FF_X108_Y11_N25
\ctl|data_write_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ctl|data_write_reg[1]~feeder_combout\,
	clrn => \psw[0]~input_o\,
	ena => \ctl|nextstate.w1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctl|data_write_reg\(1));

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

-- Location: FF_X108_Y11_N11
\ctl|data_write_reg[2]\ : dffeas
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
	ena => \ctl|nextstate.w1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctl|data_write_reg\(2));

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

-- Location: LCCOMB_X108_Y11_N20
\ctl|data_write_reg[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctl|data_write_reg[3]~feeder_combout\ = \tsw[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tsw[11]~input_o\,
	combout => \ctl|data_write_reg[3]~feeder_combout\);

-- Location: FF_X108_Y11_N21
\ctl|data_write_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ctl|data_write_reg[3]~feeder_combout\,
	clrn => \psw[0]~input_o\,
	ena => \ctl|nextstate.w1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctl|data_write_reg\(3));

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

-- Location: FF_X108_Y11_N19
\ctl|data_write_reg[4]\ : dffeas
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
	ena => \ctl|nextstate.w1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctl|data_write_reg\(4));

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

-- Location: LCCOMB_X108_Y11_N12
\ctl|data_write_reg[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctl|data_write_reg[5]~feeder_combout\ = \tsw[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tsw[13]~input_o\,
	combout => \ctl|data_write_reg[5]~feeder_combout\);

-- Location: FF_X108_Y11_N13
\ctl|data_write_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ctl|data_write_reg[5]~feeder_combout\,
	clrn => \psw[0]~input_o\,
	ena => \ctl|nextstate.w1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctl|data_write_reg\(5));

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

-- Location: LCCOMB_X108_Y11_N22
\ctl|data_write_reg[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctl|data_write_reg[6]~feeder_combout\ = \tsw[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tsw[14]~input_o\,
	combout => \ctl|data_write_reg[6]~feeder_combout\);

-- Location: FF_X108_Y11_N23
\ctl|data_write_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ctl|data_write_reg[6]~feeder_combout\,
	clrn => \psw[0]~input_o\,
	ena => \ctl|nextstate.w1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctl|data_write_reg\(6));

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

-- Location: FF_X108_Y11_N29
\ctl|data_write_reg[7]\ : dffeas
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
	ena => \ctl|nextstate.w1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctl|data_write_reg\(7));

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

-- Location: LCCOMB_X107_Y11_N8
\ctl|addr_reg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctl|addr_reg[0]~0_combout\ = (\psw[2]~input_o\ & !\ctl|state.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \psw[2]~input_o\,
	datad => \ctl|state.idle~q\,
	combout => \ctl|addr_reg[0]~0_combout\);

-- Location: FF_X107_Y11_N9
\ctl|addr_reg[0]\ : dffeas
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
	ena => \ctl|addr_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctl|addr_reg\(0));

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

-- Location: LCCOMB_X107_Y11_N30
\ctl|addr_reg[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctl|addr_reg[1]~feeder_combout\ = \tsw[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tsw[1]~input_o\,
	combout => \ctl|addr_reg[1]~feeder_combout\);

-- Location: FF_X107_Y11_N31
\ctl|addr_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ctl|addr_reg[1]~feeder_combout\,
	clrn => \psw[0]~input_o\,
	ena => \ctl|addr_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctl|addr_reg\(1));

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

-- Location: LCCOMB_X107_Y11_N12
\ctl|addr_reg[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctl|addr_reg[2]~feeder_combout\ = \tsw[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tsw[2]~input_o\,
	combout => \ctl|addr_reg[2]~feeder_combout\);

-- Location: FF_X107_Y11_N13
\ctl|addr_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ctl|addr_reg[2]~feeder_combout\,
	clrn => \psw[0]~input_o\,
	ena => \ctl|addr_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctl|addr_reg\(2));

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

-- Location: FF_X107_Y11_N27
\ctl|addr_reg[3]\ : dffeas
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
	ena => \ctl|addr_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctl|addr_reg\(3));

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

-- Location: LCCOMB_X107_Y11_N20
\ctl|addr_reg[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctl|addr_reg[4]~feeder_combout\ = \tsw[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tsw[4]~input_o\,
	combout => \ctl|addr_reg[4]~feeder_combout\);

-- Location: FF_X107_Y11_N21
\ctl|addr_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ctl|addr_reg[4]~feeder_combout\,
	clrn => \psw[0]~input_o\,
	ena => \ctl|addr_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctl|addr_reg\(4));

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

-- Location: LCCOMB_X107_Y11_N22
\ctl|addr_reg[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctl|addr_reg[5]~feeder_combout\ = \tsw[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tsw[5]~input_o\,
	combout => \ctl|addr_reg[5]~feeder_combout\);

-- Location: FF_X107_Y11_N23
\ctl|addr_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ctl|addr_reg[5]~feeder_combout\,
	clrn => \psw[0]~input_o\,
	ena => \ctl|addr_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctl|addr_reg\(5));

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

-- Location: FF_X107_Y11_N29
\ctl|addr_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \tsw[6]~input_o\,
	clrn => \psw[0]~input_o\,
	sload => VCC,
	ena => \ctl|addr_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctl|addr_reg\(6));

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

-- Location: FF_X107_Y11_N19
\ctl|addr_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \tsw[7]~input_o\,
	clrn => \psw[0]~input_o\,
	sload => VCC,
	ena => \ctl|addr_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctl|addr_reg\(7));

-- Location: FF_X108_Y11_N9
\ctl|we_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ctl|nextstate.w1~0_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctl|we_reg~q\);

-- Location: LCCOMB_X107_Y11_N16
\ctl|oe_buf~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctl|oe_buf~0_combout\ = (\ctl|state.r1~q\) # ((\psw[2]~input_o\ & (\psw[3]~input_o\ & !\ctl|state.idle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \psw[2]~input_o\,
	datab => \psw[3]~input_o\,
	datac => \ctl|state.idle~q\,
	datad => \ctl|state.r1~q\,
	combout => \ctl|oe_buf~0_combout\);

-- Location: FF_X107_Y11_N17
\ctl|oe_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ctl|oe_buf~0_combout\,
	clrn => \psw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctl|oe_reg~q\);

-- Location: IOIBUF_X7_Y0_N22
\dio[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => dio(1),
	o => \dio[1]~input_o\);

-- Location: LCCOMB_X105_Y11_N26
\ctl|data_read_reg[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctl|data_read_reg[1]~feeder_combout\ = \dio[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dio[1]~input_o\,
	combout => \ctl|data_read_reg[1]~feeder_combout\);

-- Location: FF_X105_Y11_N27
\ctl|data_read_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ctl|data_read_reg[1]~feeder_combout\,
	clrn => \psw[0]~input_o\,
	ena => \ctl|state.r2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctl|data_read_reg\(1));

-- Location: IOIBUF_X3_Y0_N15
\dio[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => dio(0),
	o => \dio[0]~input_o\);

-- Location: FF_X105_Y11_N21
\ctl|data_read_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dio[0]~input_o\,
	clrn => \psw[0]~input_o\,
	sload => VCC,
	ena => \ctl|state.r2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctl|data_read_reg\(0));

-- Location: IOIBUF_X3_Y0_N22
\dio[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => dio(2),
	o => \dio[2]~input_o\);

-- Location: LCCOMB_X105_Y11_N8
\ctl|data_read_reg[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctl|data_read_reg[2]~feeder_combout\ = \dio[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dio[2]~input_o\,
	combout => \ctl|data_read_reg[2]~feeder_combout\);

-- Location: FF_X105_Y11_N9
\ctl|data_read_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ctl|data_read_reg[2]~feeder_combout\,
	clrn => \psw[0]~input_o\,
	ena => \ctl|state.r2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctl|data_read_reg\(2));

-- Location: IOIBUF_X0_Y7_N8
\dio[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => dio(3),
	o => \dio[3]~input_o\);

-- Location: LCCOMB_X105_Y11_N10
\ctl|data_read_reg[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctl|data_read_reg[3]~feeder_combout\ = \dio[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dio[3]~input_o\,
	combout => \ctl|data_read_reg[3]~feeder_combout\);

-- Location: FF_X105_Y11_N11
\ctl|data_read_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ctl|data_read_reg[3]~feeder_combout\,
	clrn => \psw[0]~input_o\,
	ena => \ctl|state.r2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctl|data_read_reg\(3));

-- Location: LCCOMB_X105_Y11_N12
\dp1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp1|Mux6~0_combout\ = (\ctl|data_read_reg\(2) & (!\ctl|data_read_reg\(1) & (\ctl|data_read_reg\(0) $ (!\ctl|data_read_reg\(3))))) # (!\ctl|data_read_reg\(2) & (\ctl|data_read_reg\(0) & (\ctl|data_read_reg\(1) $ (!\ctl|data_read_reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctl|data_read_reg\(1),
	datab => \ctl|data_read_reg\(0),
	datac => \ctl|data_read_reg\(2),
	datad => \ctl|data_read_reg\(3),
	combout => \dp1|Mux6~0_combout\);

-- Location: LCCOMB_X106_Y11_N12
\dp1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp1|Mux5~0_combout\ = (\ctl|data_read_reg\(1) & ((\ctl|data_read_reg\(0) & ((\ctl|data_read_reg\(3)))) # (!\ctl|data_read_reg\(0) & (\ctl|data_read_reg\(2))))) # (!\ctl|data_read_reg\(1) & (\ctl|data_read_reg\(2) & (\ctl|data_read_reg\(0) $ 
-- (\ctl|data_read_reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctl|data_read_reg\(2),
	datab => \ctl|data_read_reg\(0),
	datac => \ctl|data_read_reg\(1),
	datad => \ctl|data_read_reg\(3),
	combout => \dp1|Mux5~0_combout\);

-- Location: LCCOMB_X105_Y11_N22
\dp1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp1|Mux4~0_combout\ = (\ctl|data_read_reg\(2) & (\ctl|data_read_reg\(3) & ((\ctl|data_read_reg\(1)) # (!\ctl|data_read_reg\(0))))) # (!\ctl|data_read_reg\(2) & (\ctl|data_read_reg\(1) & (!\ctl|data_read_reg\(0) & !\ctl|data_read_reg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctl|data_read_reg\(1),
	datab => \ctl|data_read_reg\(0),
	datac => \ctl|data_read_reg\(2),
	datad => \ctl|data_read_reg\(3),
	combout => \dp1|Mux4~0_combout\);

-- Location: LCCOMB_X106_Y11_N30
\dp1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp1|Mux3~0_combout\ = (\ctl|data_read_reg\(0) & (\ctl|data_read_reg\(2) $ ((!\ctl|data_read_reg\(1))))) # (!\ctl|data_read_reg\(0) & ((\ctl|data_read_reg\(2) & (!\ctl|data_read_reg\(1) & !\ctl|data_read_reg\(3))) # (!\ctl|data_read_reg\(2) & 
-- (\ctl|data_read_reg\(1) & \ctl|data_read_reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctl|data_read_reg\(2),
	datab => \ctl|data_read_reg\(0),
	datac => \ctl|data_read_reg\(1),
	datad => \ctl|data_read_reg\(3),
	combout => \dp1|Mux3~0_combout\);

-- Location: LCCOMB_X106_Y11_N16
\dp1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp1|Mux2~0_combout\ = (\ctl|data_read_reg\(1) & (((\ctl|data_read_reg\(0) & !\ctl|data_read_reg\(3))))) # (!\ctl|data_read_reg\(1) & ((\ctl|data_read_reg\(2) & ((!\ctl|data_read_reg\(3)))) # (!\ctl|data_read_reg\(2) & (\ctl|data_read_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctl|data_read_reg\(2),
	datab => \ctl|data_read_reg\(0),
	datac => \ctl|data_read_reg\(1),
	datad => \ctl|data_read_reg\(3),
	combout => \dp1|Mux2~0_combout\);

-- Location: LCCOMB_X106_Y11_N26
\dp1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp1|Mux1~0_combout\ = (\ctl|data_read_reg\(2) & (\ctl|data_read_reg\(0) & (\ctl|data_read_reg\(1) $ (\ctl|data_read_reg\(3))))) # (!\ctl|data_read_reg\(2) & (!\ctl|data_read_reg\(3) & ((\ctl|data_read_reg\(0)) # (\ctl|data_read_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctl|data_read_reg\(2),
	datab => \ctl|data_read_reg\(0),
	datac => \ctl|data_read_reg\(1),
	datad => \ctl|data_read_reg\(3),
	combout => \dp1|Mux1~0_combout\);

-- Location: LCCOMB_X106_Y11_N20
\dp1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp1|Mux0~0_combout\ = (\ctl|data_read_reg\(0) & ((\ctl|data_read_reg\(3)) # (\ctl|data_read_reg\(2) $ (\ctl|data_read_reg\(1))))) # (!\ctl|data_read_reg\(0) & ((\ctl|data_read_reg\(1)) # (\ctl|data_read_reg\(2) $ (\ctl|data_read_reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctl|data_read_reg\(2),
	datab => \ctl|data_read_reg\(0),
	datac => \ctl|data_read_reg\(1),
	datad => \ctl|data_read_reg\(3),
	combout => \dp1|Mux0~0_combout\);

-- Location: IOIBUF_X0_Y17_N15
\dio[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => dio(5),
	o => \dio[5]~input_o\);

-- Location: FF_X105_Y11_N15
\ctl|data_read_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dio[5]~input_o\,
	clrn => \psw[0]~input_o\,
	sload => VCC,
	ena => \ctl|state.r2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctl|data_read_reg\(5));

-- Location: IOIBUF_X0_Y16_N15
\dio[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => dio(4),
	o => \dio[4]~input_o\);

-- Location: LCCOMB_X105_Y11_N28
\ctl|data_read_reg[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctl|data_read_reg[4]~feeder_combout\ = \dio[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dio[4]~input_o\,
	combout => \ctl|data_read_reg[4]~feeder_combout\);

-- Location: FF_X105_Y11_N29
\ctl|data_read_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ctl|data_read_reg[4]~feeder_combout\,
	clrn => \psw[0]~input_o\,
	ena => \ctl|state.r2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctl|data_read_reg\(4));

-- Location: IOIBUF_X0_Y21_N15
\dio[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => dio(7),
	o => \dio[7]~input_o\);

-- Location: FF_X105_Y11_N7
\ctl|data_read_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dio[7]~input_o\,
	clrn => \psw[0]~input_o\,
	sload => VCC,
	ena => \ctl|state.r2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctl|data_read_reg\(7));

-- Location: IOIBUF_X0_Y22_N22
\dio[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => dio(6),
	o => \dio[6]~input_o\);

-- Location: FF_X105_Y11_N25
\ctl|data_read_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dio[6]~input_o\,
	clrn => \psw[0]~input_o\,
	sload => VCC,
	ena => \ctl|state.r2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctl|data_read_reg\(6));

-- Location: LCCOMB_X106_Y11_N10
\dp2|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp2|Mux6~0_combout\ = (\ctl|data_read_reg\(7) & (\ctl|data_read_reg\(4) & (\ctl|data_read_reg\(5) $ (\ctl|data_read_reg\(6))))) # (!\ctl|data_read_reg\(7) & (!\ctl|data_read_reg\(5) & (\ctl|data_read_reg\(4) $ (\ctl|data_read_reg\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctl|data_read_reg\(5),
	datab => \ctl|data_read_reg\(4),
	datac => \ctl|data_read_reg\(7),
	datad => \ctl|data_read_reg\(6),
	combout => \dp2|Mux6~0_combout\);

-- Location: LCCOMB_X106_Y11_N24
\dp2|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp2|Mux5~0_combout\ = (\ctl|data_read_reg\(5) & ((\ctl|data_read_reg\(4) & (\ctl|data_read_reg\(7))) # (!\ctl|data_read_reg\(4) & ((\ctl|data_read_reg\(6)))))) # (!\ctl|data_read_reg\(5) & (\ctl|data_read_reg\(6) & (\ctl|data_read_reg\(4) $ 
-- (\ctl|data_read_reg\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctl|data_read_reg\(5),
	datab => \ctl|data_read_reg\(4),
	datac => \ctl|data_read_reg\(7),
	datad => \ctl|data_read_reg\(6),
	combout => \dp2|Mux5~0_combout\);

-- Location: LCCOMB_X106_Y11_N14
\dp2|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp2|Mux4~0_combout\ = (\ctl|data_read_reg\(7) & (\ctl|data_read_reg\(6) & ((\ctl|data_read_reg\(5)) # (!\ctl|data_read_reg\(4))))) # (!\ctl|data_read_reg\(7) & (\ctl|data_read_reg\(5) & (!\ctl|data_read_reg\(4) & !\ctl|data_read_reg\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctl|data_read_reg\(5),
	datab => \ctl|data_read_reg\(4),
	datac => \ctl|data_read_reg\(7),
	datad => \ctl|data_read_reg\(6),
	combout => \dp2|Mux4~0_combout\);

-- Location: LCCOMB_X106_Y11_N4
\dp2|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp2|Mux3~0_combout\ = (\ctl|data_read_reg\(4) & (\ctl|data_read_reg\(5) $ (((!\ctl|data_read_reg\(6)))))) # (!\ctl|data_read_reg\(4) & ((\ctl|data_read_reg\(5) & (\ctl|data_read_reg\(7) & !\ctl|data_read_reg\(6))) # (!\ctl|data_read_reg\(5) & 
-- (!\ctl|data_read_reg\(7) & \ctl|data_read_reg\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctl|data_read_reg\(5),
	datab => \ctl|data_read_reg\(4),
	datac => \ctl|data_read_reg\(7),
	datad => \ctl|data_read_reg\(6),
	combout => \dp2|Mux3~0_combout\);

-- Location: LCCOMB_X106_Y11_N18
\dp2|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp2|Mux2~0_combout\ = (\ctl|data_read_reg\(5) & (\ctl|data_read_reg\(4) & (!\ctl|data_read_reg\(7)))) # (!\ctl|data_read_reg\(5) & ((\ctl|data_read_reg\(6) & ((!\ctl|data_read_reg\(7)))) # (!\ctl|data_read_reg\(6) & (\ctl|data_read_reg\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctl|data_read_reg\(5),
	datab => \ctl|data_read_reg\(4),
	datac => \ctl|data_read_reg\(7),
	datad => \ctl|data_read_reg\(6),
	combout => \dp2|Mux2~0_combout\);

-- Location: LCCOMB_X106_Y11_N8
\dp2|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp2|Mux1~0_combout\ = (\ctl|data_read_reg\(5) & (!\ctl|data_read_reg\(7) & ((\ctl|data_read_reg\(4)) # (!\ctl|data_read_reg\(6))))) # (!\ctl|data_read_reg\(5) & (\ctl|data_read_reg\(4) & (\ctl|data_read_reg\(7) $ (!\ctl|data_read_reg\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctl|data_read_reg\(5),
	datab => \ctl|data_read_reg\(4),
	datac => \ctl|data_read_reg\(7),
	datad => \ctl|data_read_reg\(6),
	combout => \dp2|Mux1~0_combout\);

-- Location: LCCOMB_X106_Y11_N22
\dp2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp2|Mux0~0_combout\ = (\ctl|data_read_reg\(4) & ((\ctl|data_read_reg\(7)) # (\ctl|data_read_reg\(5) $ (\ctl|data_read_reg\(6))))) # (!\ctl|data_read_reg\(4) & ((\ctl|data_read_reg\(5)) # (\ctl|data_read_reg\(7) $ (\ctl|data_read_reg\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctl|data_read_reg\(5),
	datab => \ctl|data_read_reg\(4),
	datac => \ctl|data_read_reg\(7),
	datad => \ctl|data_read_reg\(6),
	combout => \dp2|Mux0~0_combout\);

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
\dio[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => dio(8),
	o => \dio[8]~input_o\);

-- Location: IOIBUF_X11_Y0_N15
\dio[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => dio(9),
	o => \dio[9]~input_o\);

-- Location: IOIBUF_X11_Y0_N22
\dio[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => dio(10),
	o => \dio[10]~input_o\);

-- Location: IOIBUF_X7_Y0_N15
\dio[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => dio(11),
	o => \dio[11]~input_o\);

-- Location: IOIBUF_X9_Y0_N15
\dio[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => dio(12),
	o => \dio[12]~input_o\);

-- Location: IOIBUF_X9_Y0_N22
\dio[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => dio(13),
	o => \dio[13]~input_o\);

-- Location: IOIBUF_X1_Y0_N1
\dio[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => dio(14),
	o => \dio[14]~input_o\);

-- Location: IOIBUF_X5_Y0_N8
\dio[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => dio(15),
	o => \dio[15]~input_o\);

ww_ad(0) <= \ad[0]~output_o\;

ww_ad(1) <= \ad[1]~output_o\;

ww_ad(2) <= \ad[2]~output_o\;

ww_ad(3) <= \ad[3]~output_o\;

ww_ad(4) <= \ad[4]~output_o\;

ww_ad(5) <= \ad[5]~output_o\;

ww_ad(6) <= \ad[6]~output_o\;

ww_ad(7) <= \ad[7]~output_o\;

ww_ad(8) <= \ad[8]~output_o\;

ww_ad(9) <= \ad[9]~output_o\;

ww_ad(10) <= \ad[10]~output_o\;

ww_ad(11) <= \ad[11]~output_o\;

ww_ad(12) <= \ad[12]~output_o\;

ww_ad(13) <= \ad[13]~output_o\;

ww_ad(14) <= \ad[14]~output_o\;

ww_ad(15) <= \ad[15]~output_o\;

ww_ad(16) <= \ad[16]~output_o\;

ww_ad(17) <= \ad[17]~output_o\;

ww_ad(18) <= \ad[18]~output_o\;

ww_ad(19) <= \ad[19]~output_o\;

ww_we_n <= \we_n~output_o\;

ww_oe_n <= \oe_n~output_o\;

ww_ce_n <= \ce_n~output_o\;

ww_lb_n <= \lb_n~output_o\;

ww_ub_n <= \ub_n~output_o\;

ww_segout(0) <= \segout[0]~output_o\;

ww_segout(1) <= \segout[1]~output_o\;

ww_segout(2) <= \segout[2]~output_o\;

ww_segout(3) <= \segout[3]~output_o\;

ww_segout(4) <= \segout[4]~output_o\;

ww_segout(5) <= \segout[5]~output_o\;

ww_segout(6) <= \segout[6]~output_o\;

ww_segout(7) <= \segout[7]~output_o\;

ww_segout(8) <= \segout[8]~output_o\;

ww_segout(9) <= \segout[9]~output_o\;

ww_segout(10) <= \segout[10]~output_o\;

ww_segout(11) <= \segout[11]~output_o\;

ww_segout(12) <= \segout[12]~output_o\;

ww_segout(13) <= \segout[13]~output_o\;

dio(0) <= \dio[0]~output_o\;

dio(1) <= \dio[1]~output_o\;

dio(2) <= \dio[2]~output_o\;

dio(3) <= \dio[3]~output_o\;

dio(4) <= \dio[4]~output_o\;

dio(5) <= \dio[5]~output_o\;

dio(6) <= \dio[6]~output_o\;

dio(7) <= \dio[7]~output_o\;

dio(8) <= \dio[8]~output_o\;

dio(9) <= \dio[9]~output_o\;

dio(10) <= \dio[10]~output_o\;

dio(11) <= \dio[11]~output_o\;

dio(12) <= \dio[12]~output_o\;

dio(13) <= \dio[13]~output_o\;

dio(14) <= \dio[14]~output_o\;

dio(15) <= \dio[15]~output_o\;
END structure;


