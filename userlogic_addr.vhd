-- vhdl-linter-disable type-resolved
library IEEE; use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;

entity userlogic_ad_wr is
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
end;

architecture synth of userlogic_ad_wr is   
    begin
        process (clk, reset_n, busy) is
            variable count : integer := 0;
        begin
            if (reset_n = '0') then
                data_write <= (others => '0');
                send_enable <= '0';
                count := 0;
            elsif (busy = '1') then
                send_enable <= '0';
            elsif rising_edge(clk) then
                if (busy = '0' and send_enable = '0') then
                    if (count < 37) then
                        count := count + 1;
                        end if;
                    if (en_bist = '1') then
                        case count is
                            when 1 => 
                                data_write <= "0010000000"; -- clear display
                                send_enable <= '1';
                            when 2 => 
                                if (ext = '1') then
                                    data_write <= "1001000101"; -- E
                                else
                                    data_write <= "1001001001"; -- I
                                end if;
                                send_enable <= '1';
                            when 3 =>
                                if (ext = '1') then
                                    data_write <= "1001011000"; -- X
                                else
                                    data_write <= "1001001110"; -- N
                                end if;
                                send_enable <= '1';
                            when 4 =>
                                data_write <= "1001010100"; -- T
                                send_enable <= '1';
                            when 5 =>
                                data_write <= "10" & x"20"; -- SPACE
                                send_enable <= '1';
									 when 6 =>
                                data_write <= "10" & x"20"; -- SPACE
                                send_enable <= '1';
									 when 7 =>
                                data_write <= "10" & x"20"; -- SPACE
                                send_enable <= '1';
									 when 8 =>
                                data_write <= "10" & x"20"; -- SPACE
                                send_enable <= '1';
									 when 9 =>
                                data_write <= "10" & x"20"; -- SPACE
                                send_enable <= '1';
									 when 10 =>
                                data_write <= "10" & x"20"; -- SPACE
                                send_enable <= '1';
									 when 11 =>
                                data_write <= "10" & x"20"; -- SPACE
                                send_enable <= '1';
									 when 12 =>
                                data_write <= "10" & x"20"; -- SPACE
                                send_enable <= '1';
									 when 13 =>
                                data_write <= "10" & x"20"; -- SPACE
                                send_enable <= '1';
                            when 14 =>
                                data_write <= "10" & x"42"; -- B
                                send_enable <= '1';
                            when 15 =>
                                data_write <= "10" & x"49"; -- I
                                send_enable <= '1';
                            when 16 =>
                                data_write <= "10" & x"53"; -- S
                                send_enable <= '1';
                            when 17 =>
                                data_write <= "10" & x"54"; -- T
                                send_enable <= '1';
                            when 18 =>
                                data_write <= "10" & x"20"; -- SPACE
                                send_enable <= '1';
                            when 19 =>
                                data_write <= "0011000000"; -- CR
                                send_enable <= '1';
                            when 20 =>
                                if (fin_bist = '0') then
                                    data_write <= "10" & x"53"; -- S
                                elsif (fin_bist = '1' and fail_bist = '0') then
                                    data_write <= "10" & x"53"; -- S
                                else -- fail_bist = '1' 
                                    data_write <= "10" & x"46"; -- F
                                end if;
                                    send_enable <= '1';
                            when 21 =>
                                if (fin_bist = '0') then
                                    data_write <= "10" & x"74"; -- (s)t(art)
                                elsif (fin_bist = '1' and fail_bist = '0') then
                                    data_write <= "10" & x"75"; -- (s)u(ccess)
                                else
                                    data_write <= "10" & x"61"; -- (f)a(il)
                                end if;
                                send_enable <= '1';
                            when 22 =>
                                if (fin_bist = '0') then
                                    data_write <= "10" & x"61"; -- a
                                elsif (fin_bist = '1' and fail_bist = '0') then
                                    data_write <= "10" & x"63"; -- c
                                else
                                    data_write <= "10" & x"69"; -- i
                                end if;
                                send_enable <= '1';
                            when 23 =>
                                if (fin_bist = '0') then
                                    data_write <= "10" & x"72"; -- r
                                elsif (fin_bist = '1' and fail_bist = '0') then
                                    data_write <= "10" & x"63"; -- c
                                else
                                    data_write <= "10" & x"7C"; -- l
                                end if;
                                send_enable <= '1';
                            when 24 =>
                                if (fin_bist = '0') then
                                    data_write <= "10" & x"74"; -- t
                                elsif (fin_bist = '1' and fail_bist = '0') then
                                    data_write <= "10" & x"65"; -- e
                                else
                                    data_write <= "10" & x"20"; -- SPACE
                                end if;
                                send_enable <= '1';
                            when 25 =>
                                if (fin_bist = '0') then
                                    data_write <= "10" & x"20"; -- SPACE
                                elsif (fin_bist = '1' and fail_bist = '0') then
                                    data_write <= "10" & x"73"; -- s
                                else
                                    data_write <= "10" & x"20"; -- SPACE
                                end if;
                                send_enable <= '1';
                            when 26 =>
                                if (fin_bist = '0') then
                                    data_write <= "10" & x"20"; -- SPACE
                                elsif (fin_bist = '1' and fail_bist = '0') then
                                    data_write <= "10" & x"73"; -- s
                                else
                                    data_write <= "10" & x"20"; -- SPACE
                                end if;
                                send_enable <= '1';
                            when 27 =>
                                if (fin_bist = '0') then
                                    data_write <= "10" & x"20"; -- SPACE
                                elsif (fin_bist = '1' and fail_bist = '0') then
                                    data_write <= "10" & x"21"; -- !
                                else
                                    data_write <= "10" & x"20"; -- SPACE
                                end if;
                                send_enable <= '1';
                            when 28 =>
                                data_write <= "10" & x"20"; -- SPACE
                                send_enable <= '1';
                            when 29 =>
                                data_write <= "10" & x"20"; -- SPACE
                                send_enable <= '1';
                            when 30 =>
                                data_write <= "10" & x"20"; -- SPACE
                                send_enable <= '1';
                            when 31 =>
                                data_write <= "10" & x"20"; -- SPACE
                                send_enable <= '1';
                            when 32 =>
                                data_write <= "10" & x"20"; -- SPACE
                                send_enable <= '1';
                            when 33 =>
                                data_write <= "10" & x"20"; -- SPACE
                                send_enable <= '1';
                            when 34 =>
                                data_write <= "10" & x"20"; -- SPACE
                                send_enable <= '1';
                            when 35 =>
                                data_write <= "10" & x"20"; -- SPACE
                                send_enable <= '1';
                            when 36 =>
                                data_write <= "10" & x"20"; -- SPACE
                                send_enable <= '1';
                            when others =>
                                send_enable <= '0';
                        end case;
                    else
                        case count is
                            -- LINE ONE
                            when 1 =>
                                data_write <= "0010000000"; -- clear display
                                send_enable <= '1';

                            when 2 => 
                                if (ext = '1') then
                                    data_write <= "1001000101"; -- E
                                else
                                    data_write <= "1001001001"; -- I
                                end if;
                                send_enable <= '1';
                            when 3 =>
                                if (ext = '1') then
                                    data_write <= "1001011000"; -- X
                                else
                                    data_write <= "1001001110"; -- N
                                end if;
                                send_enable <= '1';
                            when 4 =>
                                data_write <= "1001010100"; -- T
                                send_enable <= '1';
                            when 5 =>
                                data_write <= "10" & x"20"; -- SPACE
                                send_enable <= '1';
                            when 6 =>
                                data_write <= "10" & x"20"; -- SPACE
                                send_enable <= '1';                  
                            when 7 =>
                                data_write <= "10" & x"20"; -- SPACE
                                send_enable <= '1';                  
                            when 8 =>
                                if (rw = '1') then
                                    data_write <= "10" & x"20"; -- SPACE
                                else
                                    data_write <= "1001010111"; -- W
                                end if;
                                send_enable <= '1';
                            when 9 =>
                                data_write <= "1001010010"; -- R
                                send_enable <= '1';
                            when 10 =>
                                if (rw = '1') then
                                    data_write <= "1001000101"; -- E
                                else
                                    data_write <= "1001001001"; -- I
                                end if;
                                send_enable <= '1';
                            when 11 =>
                                if (rw = '1') then
                                    data_write <= "1001000001"; -- A
                                else
                                    data_write <= "1001010100"; -- T
                                end if;
                                send_enable <= '1';
                            when 12 =>
                                if (rw = '1') then
                                    data_write <= "1001000100"; -- D
                                else
                                    data_write <= "1001000101"; -- E
                                end if;
                                send_enable <= '1';

                            when 13 =>
                                data_write <= "10" & x"20"; -- SPACE
                                send_enable <= '1';

                            when 14 =>
                                data_write <= "1001000100"; -- D
                                send_enable <= '1';
                            when 15 =>
                                data_write <= "1001000001"; -- A
                                send_enable <= '1';
                            when 16 =>
                                data_write <= "1001010100"; -- T
                                send_enable <= '1';
                            when 17 =>
                                data_write <= "1001000001"; -- A
                                send_enable <= '1';
                            when 18 =>
                                data_write <= "0011000000"; -- CR
                                send_enable <= '1';
                        
                            
                            when 19 => 
                                data_write <= "1001000001"; -- A
                                send_enable <= '1';
                            when 20 => 
                                data_write <= "1001100100"; -- d
                                send_enable <= '1';
                            when 21 => 
                                data_write <= "1001100100"; -- d
                                send_enable <= '1';
                            when 22 => 
                                data_write <= "1001110010"; -- r
                                send_enable <= '1';
                            when 23 => 
                                data_write <= "1001111110"; -- →
                                send_enable <= '1';
                            when 24 => 
                                if (to_integer(unsigned(addr(7 downto 4))) > 9) then
                                    data_write <= "100100" & std_logic_vector(to_unsigned(to_integer(unsigned(addr(7 downto 4))) - 9, 4));
                                else
                                    data_write <= "100011" & addr(7 downto 4);
                                end if;
                                send_enable <= '1';
                            when 25 => 
                                if (to_integer(unsigned(addr(3 downto 0))) > 9) then
                                    data_write <= "100100" & std_logic_vector(to_unsigned(to_integer(unsigned(addr(3 downto 0))) - 9, 4));
                                else
                                    data_write <= "100011" & addr(3 downto 0);
                                end if;
                                send_enable <= '1';
                            when 26 =>
                                data_write <= "10" & x"20"; -- SPACE
                                send_enable <= '1';
                            
                            when 27 =>
                                data_write <= "1001000100"; -- D
                                send_enable <= '1';
                            when 28 =>
                                data_write <= "1001100001"; -- a
                                send_enable <= '1';
                            when 29 =>
                                data_write <= "1001110100"; -- t
                                send_enable <= '1';
                            when 30 =>
                                data_write <= "1001100001"; -- a
                                send_enable <= '1';
                            when 31 =>
                                data_write <= "1001111110"; -- →
                                send_enable <= '1';
                            when 32 => 
                                if (to_integer(unsigned(data(7 downto 4))) > 9) then
                                    data_write <= "100100" & std_logic_vector(to_unsigned(to_integer(unsigned(data(7 downto 4))) - 9, 4)); -- A ~ F
                                else
                                    data_write <= "100011" & data(7 downto 4); -- 0 ~ 9
                                end if;
                                send_enable <= '1';
                            when 33 => 
                                if (to_integer(unsigned(data(3 downto 0))) > 9) then
                                    data_write <= "100100" & std_logic_vector(to_unsigned(to_integer(unsigned(data(3 downto 0))) - 9, 4)); -- A ~ F
                                else
                                    data_write <= "100011" & data(3 downto 0); -- 0 ~ 9
                                end if;
                                send_enable <= '1';   
                            when 34 =>
                                data_write <= "10" & x"20"; -- SPACE
                                send_enable <= '1';						
                        
                            when others => 
                                send_enable <= '0';
                        end case;
                    end if;
                end if;
            end if;
        end process;
    end;
