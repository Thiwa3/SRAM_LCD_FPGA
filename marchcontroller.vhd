-- vhdl-linter-disable type-resolved
library IEEE; use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity marchcontroller is
    port (clk, reset_n: in std_logic;
        addr: out std_logic_vector(7 downto 0);
        data_write: out std_logic_vector(7 downto 0);
        rw : out std_logic;
        ready : out std_logic
    ); 
end;

architecture synth of marchcontroller is
    type statetype is (idle, wr, re);
    constant ADDR_MAX : integer := 2 ** 8 - 1;
    signal state, nextstate: statetype;
    signal data_b_reg, data_b_next: std_logic;
    signal addr_reg, addr_next : std_logic_vector(7 downto 0);
    signal rw_buf, ready_buf: std_logic;
    signal rw_reg, ready_reg: std_logic;

    begin
        process (clk, reset_n) begin
            if (reset_n = '0') then
                state <= idle;
                data_b_reg <= '0';
                rw_reg <= '1';
                addr_reg <= (others => '0');
                ready_reg <= '0';
            elsif (clk'event and clk = '1') then
                state <= nextstate;
                data_b_reg <= data_b_next;
                rw_reg <= rw_buf;
                addr_reg <= addr_next;
                ready_reg <= ready_buf;
            end if;
        end process;

        -- state logic
        process (all) is
            variable repeat_count : integer := 0;
            variable count_up : boolean := true;
        begin
            nextstate <= state;
            data_b_next <= data_b_reg;
            addr_next <= addr_reg;
            rw_buf <= rw_reg;
            ready_buf <= '0';

            case state is 
                when idle => 
                   nextstate <= wr;
                when wr =>
                    rw_buf <= '0';
                    if (count_up) then
                        if (to_integer(unsigned(addr_reg)) < ADDR_MAX) then
                            addr_next <= std_logic_vector(to_unsigned(to_integer(unsigned(addr_reg)) + 1, addr_reg'length));
                            nextstate <= wr;
                        else
                            -- write + read : total 
                            if (repeat_count < 5) then
                                repeat_count := repeat_count + 1;
                                count_up := true;
                                -- next: count up
                                addr_next <= (others => '0');
                            else
                                repeat_count := 0;
                                count_up := false;
                                -- next: count down
                                addr_next <= std_logic_vector(to_unsigned(ADDR_MAX, addr_reg'length));
                            end if;

                            -- next: read
                            nextstate <= re;
                            rw_buf <= '1';
                        end if;
                    else -- count downs
                        if (to_integer(unsigned(addr_reg)) > 0) then
                            addr_next <= std_logic_vector(to_unsigned(to_integer(unsigned(addr_reg)) - 1, addr_reg'length));
                            nextstate <= wr;
                        else -- write end
                            -- write + read : total 
                            if (repeat_count < 5) then
                                repeat_count := repeat_count + 1;
                                count_up := false;
                                -- next: count down
                                addr_next <= std_logic_vector(to_unsigned(ADDR_MAX, addr_reg'length));
                            else
                                repeat_count := 0;
                                count_up := true;
                                -- next: count up
                                addr_next <= (others => '0');
                            end if;

                            -- next: read
                            nextstate <= re;
                            rw_buf <= '1';
                        end if;
                    end if;
                when re => 
                    rw_buf <= '1';
                    if (count_up) then
                        if (to_integer(unsigned(addr_reg)) < ADDR_MAX) then -- reading
                            addr_next <= std_logic_vector(to_unsigned(to_integer(unsigned(addr_reg)) + 1, addr_reg'length));
                            nextstate <= re;
                        else -- read end
                            -- write + read : total 
                            if (repeat_count < 5) then
                                repeat_count := repeat_count + 1;
                                count_up := true;
                                -- next: count up
                                addr_next <= (others => '0');
                            else
                                repeat_count := 0;
                                count_up := false;
                                -- next: count down
                                addr_next <= std_logic_vector(to_unsigned(ADDR_MAX, addr_reg'length));
                            end if;
                            
                            nextstate <= wr;
                            rw_buf <= '0';

                            -- read end
                            data_b_next <= not data_b_reg;
                            ready_buf <= '1';
                        end if;
                    else -- count downs
                        if (to_integer(unsigned(addr_reg)) > 0) then -- reading
                            addr_next <= std_logic_vector(to_unsigned(to_integer(unsigned(addr_reg)) - 1, addr_reg'length));
                            nextstate <= re;
                        else -- read end
                            -- write + read : total 
                            if (repeat_count < 5) then
                                repeat_count := repeat_count + 1;
                                count_up := false;
                                -- next: count down
                                addr_next <= std_logic_vector(to_unsigned(ADDR_MAX, addr_reg'length));
                            else
                                repeat_count := 0;
                                count_up := true;
                                -- next: count up
                                addr_next <= (others => '0');
                            end if;

                            nextstate <= wr;
                            rw_buf <= '0';

                            -- read end
                            data_b_next <= not data_b_reg;
                            ready_buf <= '1';
                        end if;
                    end if;
                when others =>
                    nextstate <= idle;
            end case;
        end process;

        rw <= rw_reg;
        ready <= ready_reg;
        data_write <= (others => data_b_reg);
        addr <= addr_reg;
    end;