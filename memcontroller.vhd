-- vhdl-linter-disable type-resolved
library IEEE; use IEEE.STD_LOGIC_1164.all;

entity memorycontroller is
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
end;

architecture synth of memorycontroller is    
    type statetype is (idle, re, wt);
    signal state, nextstate: statetype;
    signal addr_reg : std_logic_vector(19 downto 0);
    signal addr_next : std_logic_vector(19 downto 0);
    signal data_read_reg, data_write_reg: std_logic_vector(15 downto 0);
    signal data_read_next, data_write_next: std_logic_vector(15 downto 0);
    signal we_buf, oe_buf, tri_buf: std_logic;
    signal we_reg, oe_reg, tri_reg: std_logic;

    begin
        process (clk, reset_n) begin
            if (reset_n = '0') then
                state <= idle;
                addr_reg <= (others => '0');
                data_write_reg <= (others => '0');
                data_read_reg <= (others => '0');
                we_reg <= '0';
                oe_reg <= '1';
                tri_reg <= '0';
            elsif (clk'event and clk = '1') then
                state <= nextstate;
                addr_reg <= addr_next;
                data_write_reg <= data_write_next;
                data_read_reg <= data_read_next;
                we_reg <= we_buf;
                oe_reg <= oe_buf;
                tri_reg <= tri_buf;
            end if;
        end process;

        -- state logic
        process (all) begin
            addr_next <= addr_reg;
            data_write_next <= data_write_reg;
            data_read_next <= data_read_reg;
            ready <= '0';
            case state is 
                when idle => 
                    if (mem = '0') then
                        nextstate <= idle;
                    else
                        addr_next <= addr;
                        if (rw = '0') then -- write
                            nextstate <= wt;
                            data_write_next <= data_write;
                        else
                            nextstate <= re;
                        end if;
                    end if;
                when re =>
                    data_read_next <= dio;
                    if (mem = '0') then
                        nextstate <= idle;
                    else
                        addr_next <= addr;
                        if (rw = '0') then -- write
                            nextstate <= wt;
                            data_write_next <= data_write;
                        else
                            nextstate <= re;
                        end if;
                    end if;
                when wt =>
                    if (mem = '0') then
                        nextstate <= idle;
                    else
                        addr_next <= addr;
                        if (rw = '0') then -- write
                            nextstate <= wt;
                            data_write_next <= data_write;
                        else
                            nextstate <= re;
                        end if;
                    end if;
                when others =>
                    nextstate <= idle;
            end case;
        end process;

        -- output logic
        process (nextstate) begin
            we_buf <= '1';
            oe_buf <= '1';
            tri_buf <= '1';
            case nextstate is
                when idle =>
                    tri_buf <= '0';
                    we_buf <= '0';
                when re =>
                    oe_buf <= '0';
                when wt =>
                    tri_buf <= '0';
                    we_buf <= '0';
            end case;
        end process;

        -- SYSTEM
        data_read <= dio;
        data_read_r <= data_read_reg;

        -- SRAM
        ad <= addr_reg;
        dio <= data_write_reg when tri_reg = '0' else (others => 'Z');
        we_n <= we_reg;
        oe_n <= oe_reg;
        ce_n <= '0';
    end;