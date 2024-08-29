library IEEE; use IEEE.STD_LOGIC_1164.all;

entity sramdisplay is
    port (clk, reset: in STD_LOGIC;
			-- IO
			tsw: in STD_LOGIC_VECTOR(17 downto 0);
			psw: in STD_LOGIC_VECTOR(3 downto 0);
			
          -- SYSTEM
          addr, data_write: in STD_LOGIC_VECTOR(7 downto 0); -- this should go for external SRAM
          data_read_r, data_read: out STD_LOGIC_VECTOR(7 downto 0);
          mem, rw: in STD_LOGIC;
          ready: out STD_LOGIC;
          
          -- SRAM
          ad: out STD_LOGIC_VECTOR(19 downto 0);
          dio: inout STD_LOGIC_VECTOR(15 downto 0);
          we_n, oe_n, ce_n, lb_n, ub_n: out STD_LOGIC;

          -- SEGMENT
          segout: out STD_LOGIC_VECTOR(7*2-1 downto 0)
    );
end;

architecture synth of sramdisplay is   
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
    
    begin
        data_display <= data_read;
        lb_n <= '0';
        ub_n <= '0';
        ctl: memorycontroller port map(clk, reset, addr, data_write, data_read_r, data_read, mem, rw, ready, ad, dio, we_n, oe_n, ce_n);
        dp1:seg7 port map(data_display(3 downto 0), segout(6 downto 0));
        dp2:seg7 port map(data_display(7 downto 4), segout(13 downto 7));
    end;