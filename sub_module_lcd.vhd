-- vhdl-linter-disable type-resolved
library IEEE; use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;

entity sub_module_lcd is
    port(clk, reset_n: in std_logic;
        -- IO
        addr_in, data_in : in std_logic_vector(7 downto 0);
        ext, rw, en_bist, fail_bist, fin_bist : in std_logic;
		  
        -- LCD
        dio : inout std_logic_vector(7 downto 0);
        en_l, rw_l, rs_l, pon_l, blon_l : out std_logic
    );
end;

architecture synth of sub_module_lcd is   
    component userlogic_ad_wr is
        port(clk, reset_n: in std_logic;
            -- SYSTEM
            addr, data : in std_logic_vector(7 downto 0);
            ext, rw, en_bist, fail_bist, fin_bist : in std_logic;

            -- CONTROLLER
            data_write : out std_logic_vector(9 downto 0); -- 1/0 inst/data, read/write
            send_enable : out std_logic;
            busy : in std_logic;
            data_read : in std_logic_vector(7 downto 0)
        );
    end component;
 
	component lcdcontrollerfast is
        port(
            clk: in std_logic;
            reset_n: in std_logic;
            lcd_enable : in std_logic;
            lcd_bus: in std_logic_vector(9 downto 0);
            busy : out std_logic;
            lcd_en, lcd_rw, lcd_rs : out std_logic;
            lcd_data : out std_logic_vector(7 downto 0);
            lcd_pon : out std_logic;
            lcd_blon : out std_logic
        );
	end component;
	
	component mod5 is
		 generic(N: integer := 25);
		 port (clk, Nreset: in STD_LOGIC;
					Output_clk: out STD_LOGIC);
	end component;


    signal data_write : std_logic_vector(9 downto 0);
    signal data_read : std_logic_vector(7 downto 0);
    signal busy_tmp, enable_tmp : std_logic;
	 
    signal clk_slow : std_logic;

begin
        df1: mod5 generic map(22) port map(clk, reset_n, clk_slow);
        ul1: userlogic_ad_wr port map (
            clk => clk, 
            reset_n => clk_slow,
            addr => addr_in, 
            data => data_in,
            ext => ext,
            rw => rw,
            en_bist => en_bist, 
            fail_bist => fail_bist,
            fin_bist => fin_bist,
            data_write => data_write,
            send_enable => enable_tmp, 
            busy => busy_tmp, 
            data_read => data_read
        );
        data_read <= dio; -- read-only
        lc1: lcdcontrollerfast port map (clk, reset_n, enable_tmp, data_write, busy_tmp, en_l, rw_l, rs_l, dio, pon_l, blon_l);
    end;
