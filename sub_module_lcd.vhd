-- vhdl-linter-disable type-resolved
library IEEE; use IEEE.STD_LOGIC_1164.all;

entity sub_module_lcd is
    port(clk, reset_n: in std_logic;
        -- IO
        addr_in : in std_logic_vector(7 downto 0);

        -- LCD
        dio : inout std_logic_vector(7 downto 0);
        en_l, rw_l, rs_l, pon_l, blon_l : out std_logic
    );
end;

architecture synth of sub_module_lcd is   
    component mod5 is
        generic(N: integer := 25);
        port (clk, Nreset: in STD_LOGIC;
                Output_clk: out STD_LOGIC);
    end component;
    
    component userlogic_addr is
        port(clk, reset_n: in std_logic;
            -- SYSTEM
            addr : in std_logic_vector(7 downto 0);

            -- CONTROLLER
            data_write : out std_logic_vector(9 downto 0); -- 1/0 inst/data, read/write
            send_enable : out std_logic;
            busy : in std_logic;
            data_read : in std_logic_vector(7 downto 0)
        );
    end component;
 
	component lcdcontrollerslow is
        port(clk, reset_n: in std_logic;
            -- SYSTEM
            data_write : in std_logic_vector(9 downto 0); -- inst/data, read/write
            data_read : out std_logic_vector(7 downto 0);
            send_enable : in std_logic;
            busy : out std_logic;
            
            -- LCD
            dio : inout std_logic_vector(7 downto 0);
            en_l, rw_l, rs_l, pon_l, blon_l : out std_logic
        );
	end component;

    signal clk_slow : std_logic;
    signal data_write : std_logic_vector(9 downto 0);
    signal data_read : std_logic_vector(7 downto 0);
    signal busy_tmp, enable_tmp : std_logic;

begin
        ck1: mod5 generic map (22) port map (clk, reset_n, clk_slow);
        ul1: userlogic_addr port map (
            clk => clk_slow, 
            reset_n => reset_n,
            addr => addr_in, 
            data_write => data_write,
            send_enable => enable_tmp, 
            busy => busy_tmp, 
            data_read => data_read
        );
        lc1: lcdcontrollerslow port map (clk_slow, reset_n, data_write, data_read, enable_tmp, busy_tmp, dio, en_l, rw_l, rs_l, pon_l, blon_l);
    end;
