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

    component pll is
        port
        (
            inclk0		: in std_logic  := '0';
            c0		: out std_logic ;
            locked		: out std_logic 
        );
    end component;

    component sub_module_lcd is
        port(clk, reset_n: in std_logic;
            -- IO
            addr_in, data_in : in std_logic_vector(7 downto 0);
            ext, rw, en_bist, test_start, fail_bist  : in std_logic;
				
            -- LCD
            dio : inout std_logic_vector(7 downto 0);
            en_l, rw_l, rs_l, pon_l, blon_l : out std_logic
        );
    end component;

    component sub_module_ram is
        port (clk, reset_n: in STD_LOGIC;
                -- SYSTEM
            addr, data_write: in STD_LOGIC_VECTOR(7 downto 0);
            data_read_r, data_read: out STD_LOGIC_VECTOR(7 downto 0);
            mem, rw: in STD_LOGIC;
            ready: out STD_LOGIC;
            ext : in STD_LOGIC;
            
            -- SRAM
            ad: out STD_LOGIC_VECTOR(19 downto 0);
            dio: inout STD_LOGIC_VECTOR(15 downto 0);
            we_n, oe_n, ce_n, lb_n, ub_n: out STD_LOGIC;
            data_display : out STD_LOGIC_VECTOR(7 downto 0)
        );
    end component;

    component sub_module_bist is
        port (
            clk, reset_n : in std_logic;
            -- SYSTEM
            en_bist : in std_logic;
            test_start : in std_logic;
            fail : out std_logic;
            -- SRAM
            data_read : in std_logic_vector(7 downto 0);
            addr: out std_logic_vector(7 downto 0);
            data_write : out std_logic_vector(7 downto 0);
            rw : out std_logic
        );
    end component;

    component seg7 is 
        port (I: in STD_LOGIC_VECTOR(3 downto 0);
            Seg: out STD_LOGIC_VECTOR(6 downto 0));
    end component;

    -- IO
    signal reset_n : std_logic;
    signal addr, data_write : std_logic_vector(7 downto 0);
    signal mem, rw, test_start : std_logic;

    -- PLL Clock
    signal clk_pll : std_logic;

    -- SUB MODULE RAM
    signal data_read_r, data_read, data_display : std_logic_vector(7 downto 0);
    signal ready: std_logic;

    -- SUB MODULE LCD
    signal ext : std_logic;
    signal en_bist, fail_bist : std_logic;

    -- SUB MODULE BIST
    signal addr_test, data_write_test : std_logic_vector(7 downto 0);
    signal rw_test : std_logic;
	 
begin
    reset_n <= psw(0);
    test_start <= psw(1);
    mem <= psw(2);
    rw <= psw(3) when en_bist = '0' else rw_test;
    addr <= tsw(7 downto 0) when en_bist = '0' else addr_test;
    data_write <= tsw(15 downto 8) when en_bist = '0' else data_write_test;
    ext <= tsw(17);
    en_bist <= tsw(16);

    pll1: pll port map(
        inclk0 => clk, 
        c0 => clk_pll
    );

    A: sub_module_lcd port map(
        clk => clk, 
        reset_n => reset_n, 
        addr_in => addr, 
        data_in => data_write, 
        ext => ext, 
        rw => rw, 
        en_bist => en_bist,
        test_start => test_start, 
        fail_bist => fail_bist, 
        dio => dio_lcd, 
        en_l => en_lcd, 
        rw_l => rw_lcd, 
        rs_l => rs_lcd, 
        pon_l => pon_lcd, 
        blon_l => blon_lcd
    );

    B: sub_module_ram port map(
        clk => clk_pll, 
        reset_n => reset_n, 
        addr => addr, 
        data_write => data_write, 
        data_read_r => data_read_r, 
        data_read => data_read, 
        mem => mem, 
        rw => rw, 
        ready => ready, 
        ext => ext, 
        ad => ad_sram, 
        dio => dio_sram, 
        we_n => we_n_sram, 
        oe_n => oe_n_sram, 
        ce_n => ce_n_sram, 
        lb_n => lb_n_sram, 
        ub_n => ub_n_sram,
        data_display => data_display
    );

    dp11:seg7 port map(addr(3 downto 0), segoutL(6 downto 0));
    dp12:seg7 port map(addr(7 downto 4), segoutL(13 downto 7));
    
    dp21:seg7 port map(data_write(3 downto 0), segoutM(6 downto 0));
    dp22:seg7 port map(data_write(7 downto 4), segoutM(13 downto 7));
        
    dp13:seg7 port map(data_display(3 downto 0), segoutR(6 downto 0));
    dp23:seg7 port map(data_display(7 downto 4), segoutR(13 downto 7));
    segoutR(27 downto 14) <= "10000001000000";

    C: sub_module_bist port map(
        clk => clk_pll, 
        reset_n => reset_n, 
        en_bist => en_bist,
        test_start => test_start, 
        fail => fail_bist,
        data_read => data_display,
        addr => addr_test,
        data_write => data_write_test,
        rw => rw_test
    );
end;