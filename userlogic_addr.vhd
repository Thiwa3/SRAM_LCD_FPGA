-- vhdl-linter-disable type-resolved
library IEEE; use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;

entity userlogic_ad_wr is
    port(clk, reset_n: in std_logic;
        -- SYSTEM
        addr, data : in std_logic_vector(7 downto 0);
        ext : in std_logic;

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
                    if (count < 22) then
                        count := count + 1;
                        end if;
                    case count is
                        -- SECTION ONE
								when 1 =>
									data_write <= "0010000000"; -- clear display
									send_enable <= '1';
                        when 2 => 
                            data_write <= "1001000001"; -- A
                            send_enable <= '1';
                        when 3 => 
                            data_write <= "1001000100"; -- D
                            send_enable <= '1';
                        when 4 => 
                            data_write <= "1001000100"; -- D
                            send_enable <= '1';
                        when 5 => 
                            data_write <= "1001010010"; -- R
                            send_enable <= '1';
                        when 6 => 
                            data_write <= "1001111110"; -- →
                            send_enable <= '1';
                        when 7 => 
                            if (to_integer(unsigned(addr(7 downto 4))) > 9) then
                                data_write <= "100100" & std_logic_vector(to_unsigned(to_integer(unsigned(addr(7 downto 4))) - 9, 4));
                            else
                                data_write <= "100011" & addr(7 downto 4);
                            end if;
                            send_enable <= '1';
                        when 8 => 
                            if (to_integer(unsigned(addr(3 downto 0))) > 9) then
                                data_write <= "100100" & std_logic_vector(to_unsigned(to_integer(unsigned(addr(3 downto 0))) - 9, 4));
                            else
                                data_write <= "100011" & addr(3 downto 0);
                            end if;
                            send_enable <= '1';
								when 9 =>
									data_write <= "1000100000"; -- SPACE
									send_enable <= '1';
                        
                        -- SECTION TWO
                        when 10 =>
                            data_write <= "1001000100"; -- D
                            send_enable <= '1';
                        when 11 =>
                            data_write <= "1001000001"; -- A
                            send_enable <= '1';
                        when 12 =>
                            data_write <= "1001010100"; -- T
                            send_enable <= '1';
                        when 13 =>
                            data_write <= "1001000001"; -- A
                            send_enable <= '1';
                        when 14 =>
                            data_write <= "1001111110"; -- →
                            send_enable <= '1';
                        when 15 => 
                            if (to_integer(unsigned(data(7 downto 4))) > 9) then
                                data_write <= "100100" & std_logic_vector(to_unsigned(to_integer(unsigned(data(7 downto 4))) - 9, 4)); -- A ~ F
                            else
                                data_write <= "100011" & data(7 downto 4); -- 0 ~ 9
                            end if;
                            send_enable <= '1';
                        when 16 => 
                            if (to_integer(unsigned(data(3 downto 0))) > 9) then
                                data_write <= "100100" & std_logic_vector(to_unsigned(to_integer(unsigned(data(3 downto 0))) - 9, 4)); -- A ~ F
                            else
                                data_write <= "100011" & data(3 downto 0); -- 0 ~ 9
                            end if;
                            send_enable <= '1';   
								when 17 =>
									data_write <= "1000100000"; -- SPACE
									send_enable <= '1';						
								when 18 =>
                            data_write <= "0011000000"; -- CR
                            send_enable <= '1';
                        
                        -- SECTION THREE (INT / EXT)
                        when 19 => 
                            if (ext = '1') then
                                data_write <= "1001000101"; -- E
                            else
                                data_write <= "1001001001"; -- I
                            end if;
                            send_enable <= '1';
                        when 20 =>
                            if (ext = '1') then
                                data_write <= "1001011000"; -- X
                            else
                                data_write <= "1001001110"; -- N
                            end if;
                            send_enable <= '1';
                        when 21 =>
                            data_write <= "1001010100"; -- T
                            send_enable <= '1';
               
                        when others => 
                            send_enable <= '0';
                    end case;
                end if;
            end if;
        end process;
    end;
