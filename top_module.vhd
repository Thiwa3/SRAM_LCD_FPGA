-- vhdl-linter-disable type-resolved
library IEEE; use IEEE.STD_LOGIC_1164.all;

entity top_module is
    port(clk: in std_logic;
        -- IO
        tsw : in std_logic_vector(17 downto 0);
        psw : in std_logic_vector(3 downto 0);

        -- SRAM
        ad_sram : out std_logic_vector(19 downto 0);
        dio_sram : inout std_logic_vector(15 downto 0);
        we_n_sram, oe_n_sram, ce_n_sram, lb_n_sram, ub_n_sram: out std_logic;

        -- LCD
        dio_lcd : inout std_logic_vector(7 downto 0);
        en_lcd, rw_lcd, rs_lcd, pon_lcd, blon_lcd : out std_logic;

		  -- SEGMENTS
        segoutL, segoutM: out STD_LOGIC_VECTOR(7*2-1 downto 0);
		  segoutR: out STD_LOGIC_VECTOR(7*4-1 downto 0)
    );
end;

architecture synth of top_module is  

    component sub_module_lcd is
        port(clk, reset_n: in std_logic;
            -- IO
            addr_in, data_in : in std_logic_vector(7 downto 0);
				ext : in std_logic;

            -- LCD
            dio : inout std_logic_vector(7 downto 0);
            en_l, rw_l, rs_l, pon_l, blon_l : out std_logic
        );
    end component;

    component sub_module_ram is
        port (clk, reset: in STD_LOGIC;
                -- SYSTEM
            addr, data_write: in STD_LOGIC_VECTOR(7 downto 0);
            data_read_r, data_read: out STD_LOGIC_VECTOR(7 downto 0);
            mem, rw: in STD_LOGIC;
            ready: out STD_LOGIC;
            
            -- SRAM
            ad: out STD_LOGIC_VECTOR(19 downto 0);
            dio: inout STD_LOGIC_VECTOR(15 downto 0);
            we_n, oe_n, ce_n, lb_n, ub_n: out STD_LOGIC;

            -- SEGMENT
            segoutL, segoutM: out STD_LOGIC_VECTOR(7*2-1 downto 0);
            segoutR: out STD_LOGIC_VECTOR(7*4-1 downto 0)
        );
    end component;

    -- IO
    signal reset_n : std_logic;
    signal addr, data_write : std_logic_vector(7 downto 0);
    signal mem, rw : std_logic;

    -- SUB MODULE RAM
    signal data_read_r, data_read : std_logic_vector(7 downto 0);
    signal ready, lb_n, ub_n : std_logic;

    -- SUB MODULE LCD
    signal ext : std_logic;


begin
    reset_n <= psw(0);
    mem <= psw(2);
    rw <= psw(3);
    addr <= tsw(7 downto 0);
    data_write <= tsw(15 downto 8);
    ext <= tsw(17);

    A: sub_module_lcd port map(clk, rw, addr, data_write, ext, dio_lcd, en_lcd, rw_lcd, rs_lcd, pon_lcd, blon_lcd);
    B: sub_module_ram port map(clk, reset_n, addr, data_write, data_read_r, data_read, mem, rw, ready, ad_sram, dio_sram, we_n_sram, oe_n_sram, ce_n_sram, lb_n_sram, ub_n_sram, segoutL, segoutM, segoutR);
end;