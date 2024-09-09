library IEEE; use IEEE.STD_LOGIC_1164.all;

entity sub_module_ram is
    port (clk, reset: in STD_LOGIC;
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

          -- SEGMENT
          segoutL, segoutM: out STD_LOGIC_VECTOR(7*2-1 downto 0);
            segoutR: out STD_LOGIC_VECTOR(7*4-1 downto 0)
    );
end;

architecture synth of sub_module_ram is   

    component ram1 is
        PORT
        (
            address	: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
            clock		: IN STD_LOGIC  := '1';
            data		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
            wren		: IN STD_LOGIC ;
            q		: OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
        );
    end component;
	
	component memorycontroller is
        port (clk, reset: in STD_LOGIC;
            -- SYSTEM
            addr, data_write: in STD_LOGIC_VECTOR(7 downto 0);
            data_read_r, data_read: out STD_LOGIC_VECTOR(7 downto 0);
            mem, rw: in STD_LOGIC;
            ready: out STD_LOGIC;
            
            -- SRAM
            ad: out STD_LOGIC_VECTOR(19 downto 0);
            dio: inout STD_LOGIC_VECTOR(15 downto 0);
            we_n, oe_n, ce_n: out STD_LOGIC
        );
	end component;
 
    component seg7 is 
        port (I: in STD_LOGIC_VECTOR(3 downto 0);
            Seg: out STD_LOGIC_VECTOR(6 downto 0));
    end component;
	
	signal data_display : std_logic_vector(7 downto 0);
    signal lb_n_r, ub_n_r, ce_n_r, oe_n_r, we_n_r : std_logic;
	signal dio_r : std_logic_vector(15 downto 0);
	signal ad_r : std_logic_vector(19 downto 0);
	
	signal mem_ext : std_logic;
	signal data_read_EA : std_logic_vector(7 downto 0) := "11101010";
	signal data_read_itnram : std_logic_vector(7 downto 0)  := (others => '0');
    
    begin
        data_display <= data_read_r when ext = '1' else data_read_itnram;
		  lb_n <= '0';
		  ub_n <= '0';
		  
		  
		  itnram: ram1 port map(addr, (not ext) and clk, data_write, not rw, data_read_itnram);
		  
		  mem_ext <= ext;
        ctl: memorycontroller port map(clk, reset, addr, data_write, data_read_r, data_read, mem_ext, rw, ready, ad, dio, we_n, oe_n, ce_n);
		  dp11:seg7 port map(addr(3 downto 0), segoutL(6 downto 0));
		  dp12:seg7 port map(addr(7 downto 4), segoutL(13 downto 7));
		  
		  dp21:seg7 port map(data_write(3 downto 0), segoutM(6 downto 0));
		  dp22:seg7 port map(data_write(7 downto 4), segoutM(13 downto 7));
		  
        dp13:seg7 port map(data_display(3 downto 0), segoutR(6 downto 0));
        dp23:seg7 port map(data_display(7 downto 4), segoutR(13 downto 7));
		  segoutR(27 downto 14) <= "10000001000000";
    end;