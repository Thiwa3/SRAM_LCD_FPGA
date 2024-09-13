-- vhdl-linter-disable type-resolved
library IEEE; use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity marchcontroller is
    port (clk, reset_n: in std_logic;
        ext: in std_logic;
        addr: out std_logic_vector(19 downto 0);
        data_write: out std_logic_vector(15 downto 0);
        rw : out std_logic;
        ready : out std_logic;
        fin : out std_logic
    ); 
end;

architecture synth of marchcontroller is
    type statetype is (idle, w1, r1, w2, r2, w3, r3, w4, r4, w5, r5, finished);
    constant ADDR_INT_MAX : integer := 2 ** 8 - 1;
    constant ADDR_EXT_MAX : integer := 2 ** 20 - 1;
    signal state, nextstate: statetype;
    signal data_b_reg, data_b_next: std_logic;
    signal addr_reg, addr_next : std_logic_vector(19 downto 0);
    signal rw_buf, ready_buf, fin_buf: std_logic;
    signal rw_reg, ready_reg, fin_reg: std_logic;
    signal ADDR_MAX: integer;

    begin
        ADDR_MAX <= ADDR_EXT_MAX when ext = '1' else ADDR_INT_MAX;
        process (clk, reset_n) begin
            if (reset_n = '0') then
                state <= idle;
                data_b_reg <= '0';
                addr_reg <= (others => '0');
                rw_reg <= '0';
                ready_reg <= '0';
                fin_reg <= '0';
            elsif (clk'event and clk = '1') then
                state <= nextstate;
                data_b_reg <= data_b_next;
                addr_reg <= addr_next;
                rw_reg <= rw_buf;
                ready_reg <= ready_buf;
                fin_reg <= fin_buf;
            end if;
        end process;

        -- state logic
        process (all) is
        begin
            nextstate <= state;
            data_b_next <= data_b_reg;
            addr_next <= addr_reg;
            rw_buf <= rw_reg;
            ready_buf <= '0';
            fin_buf <= fin_reg;

            case state is 
                when idle => 
                   nextstate <= w1;
                when w1 =>
                    rw_buf <= '0';
                    fin_buf <= '0';
                    if (to_integer(unsigned(addr_reg)) < ADDR_MAX) then
                        addr_next <= std_logic_vector(to_unsigned(to_integer(unsigned(addr_reg)) + 1, addr_reg'length));
                        nextstate <= w1;
                    else
                        addr_next <= (others => '0');

                        -- next: read
                        nextstate <= r1;
                        rw_buf <= '1';
                    end if;
                when r1 => 
                    rw_buf <= '1';
                    fin_buf <= '0';
                    if (to_integer(unsigned(addr_reg)) < ADDR_MAX) then -- reading
                        addr_next <= std_logic_vector(to_unsigned(to_integer(unsigned(addr_reg)) + 1, addr_reg'length));
                        nextstate <= r1;
                    else -- read end
                        addr_next <= (others => '0');
                        
                        -- next: write2
                        nextstate <= w2;
                        rw_buf <= '0';

                        -- next: w 1 0~F
                        data_b_next <= '1';

                        -- for output_analyzer
                        ready_buf <= '1';
                    end if;
                when w2 =>
                    rw_buf <= '0';
                    fin_buf <= '0';
                    if (to_integer(unsigned(addr_reg)) < ADDR_MAX) then
                        addr_next <= std_logic_vector(to_unsigned(to_integer(unsigned(addr_reg)) + 1, addr_reg'length));
                        nextstate <= w2;
                    else
                        addr_next <= (others => '0');

                        -- next: read
                        nextstate <= r2;
                        rw_buf <= '1';
                    end if;
                when r2 => 
                    rw_buf <= '1';
                    fin_buf <= '0';
                    if (to_integer(unsigned(addr_reg)) < ADDR_MAX) then -- reading
                        addr_next <= std_logic_vector(to_unsigned(to_integer(unsigned(addr_reg)) + 1, addr_reg'length));
                        nextstate <= r2;
                    else -- read end
                        addr_next <= (others => '0');
                        
                        -- next: write3
                        nextstate <= w3;
                        rw_buf <= '0';

                        -- next: w 0 0~F
                        data_b_next <= '0';

                        -- for output_analyzer
                        ready_buf <= '1';
                    end if;
                when w3 =>
                    rw_buf <= '0';
                    fin_buf <= '0';
                    if (to_integer(unsigned(addr_reg)) < ADDR_MAX) then
                        addr_next <= std_logic_vector(to_unsigned(to_integer(unsigned(addr_reg)) + 1, addr_reg'length));
                        nextstate <= w3;
                    else
                        -- next: r 0 F~0
                        addr_next <= std_logic_vector(to_unsigned(ADDR_MAX, addr_reg'length));

                        -- next: read
                        nextstate <= r3;
                        rw_buf <= '1';
                    end if;
                when r3 => 
                    rw_buf <= '1';
                    fin_buf <= '0';
                    if (to_integer(unsigned(addr_reg)) > 0) then -- reading
                        addr_next <= std_logic_vector(to_unsigned(to_integer(unsigned(addr_reg)) - 1, addr_reg'length));
                        nextstate <= r3;
                    else  
                        addr_next <= std_logic_vector(to_unsigned(ADDR_MAX, addr_reg'length));
                        
                        -- next: write4
                        nextstate <= w4;
                        rw_buf <= '0';

                        -- next: w 1 F~0
                        data_b_next <= '1';

                        -- for output_analyzer
                        ready_buf <= '1';
                    end if;
                when w4 =>
                    rw_buf <= '0';
                    fin_buf <= '0';
                    if (to_integer(unsigned(addr_reg)) > 0) then
                        addr_next <= std_logic_vector(to_unsigned(to_integer(unsigned(addr_reg)) - 1, addr_reg'length));
                        nextstate <= w4;
                    else
                        -- next: r 1 F~0
                        addr_next <= std_logic_vector(to_unsigned(ADDR_MAX, addr_reg'length));

                        -- next: read
                        nextstate <= r4;
                        rw_buf <= '1';
                    end if;
                when r4 => 
                    rw_buf <= '1';
                    fin_buf <= '0';
                    if (to_integer(unsigned(addr_reg)) > 0) then -- reading
                        addr_next <= std_logic_vector(to_unsigned(to_integer(unsigned(addr_reg)) - 1, addr_reg'length));
                        nextstate <= r4;
                    else  
                        addr_next <= std_logic_vector(to_unsigned(ADDR_MAX, addr_reg'length));
                        
                        -- next: write5
                        nextstate <= w5;
                        rw_buf <= '0';

                        -- next: w 0 F~0
                        data_b_next <= '0';

                        -- for output_analyzer
                        ready_buf <= '1';
                    end if;
                when w5 =>
                    rw_buf <= '0';
                    fin_buf <= '0';
                    if (to_integer(unsigned(addr_reg)) > 0) then
                        addr_next <= std_logic_vector(to_unsigned(to_integer(unsigned(addr_reg)) - 1, addr_reg'length));
                        nextstate <= w5;
                    else
                        -- next: r 0 F~0
                        addr_next <= std_logic_vector(to_unsigned(ADDR_MAX, addr_reg'length));

                        -- next: read
                        nextstate <= r5;
                        rw_buf <= '1';
                    end if;
                when r5 => 
                    rw_buf <= '1';
                    fin_buf <= '0';
                    if (to_integer(unsigned(addr_reg)) > 0) then -- reading
                        addr_next <= std_logic_vector(to_unsigned(to_integer(unsigned(addr_reg)) - 1, addr_reg'length));
                        nextstate <= r5;
                    else  
                        addr_next <= (others => '0');
                        
                        -- next: write4
                        nextstate <= finished;
                    end if;
                when finished =>
                    nextstate <= finished;
                    rw_buf <= '1';
                    fin_buf <= '1';
                when others =>
                    nextstate <= idle;
            end case;
        end process;

        rw <= rw_reg;
        ready <= ready_reg;
        fin <= fin_reg;
        data_write <= (others => data_b_reg);
        addr <= addr_reg;
    end;