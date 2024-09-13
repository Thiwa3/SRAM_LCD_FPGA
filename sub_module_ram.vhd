-- vhdl-linter-disable type-resolved
library IEEE; use IEEE.STD_LOGIC_1164.all;

entity sub_module_ram is
    port (clk, reset_n: in STD_LOGIC;
	          -- SYSTEM
          addr: in STD_LOGIC_VECTOR(19 downto 0);
          data_write: in STD_LOGIC_VECTOR(15 downto 0);
          data_read_r, data_read: out STD_LOGIC_VECTOR(15 downto 0);
          rw: in STD_LOGIC;
          ready: out STD_LOGIC;
          ext : in STD_LOGIC;
          
          -- SRAM
          ad: out STD_LOGIC_VECTOR(19 downto 0);
          dio: inout STD_LOGIC_VECTOR(15 downto 0);
          we_n, oe_n, ce_n, lb_n, ub_n: out STD_LOGIC;
          data_display : out STD_LOGIC_VECTOR(15 downto 0)
    );
end;

architecture synth of sub_module_ram is   

    component ram1 is
        PORT
        (
            address		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
            clock		: IN STD_LOGIC  := '1';
            data		: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
            wren		: IN STD_LOGIC ;
            q		: OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
        );
    end component;
	
	component memorycontroller is
        port (clk, reset_n: in STD_LOGIC;
            -- SYSTEM
            addr: in STD_LOGIC_VECTOR(19 downto 0);
            data_write: in STD_LOGIC_VECTOR(15 downto 0);
            data_read_r, data_read: out STD_LOGIC_VECTOR(15 downto 0);
            mem, rw: in STD_LOGIC;
            ready: out STD_LOGIC;
            
            -- SRAM
            ad: out STD_LOGIC_VECTOR(19 downto 0);
            dio: inout STD_LOGIC_VECTOR(15 downto 0);
            we_n, oe_n, ce_n: out STD_LOGIC
        );
	end component;
 
	signal data_read_itnram : std_logic_vector(15 downto 0) := (others => '0');
    
    begin
        data_display <= data_read when ext = '1' else data_read_itnram;
        lb_n <= '0';
        ub_n <= '0';
        
        itnram: ram1 port map(addr(7 downto 0), (not ext) and clk, data_write, not rw, data_read_itnram);
        
        ctl: memorycontroller port map(clk, reset_n, addr, data_write, data_read_r, data_read, ext, rw, ready, ad, dio, we_n, oe_n, ce_n);
    end;