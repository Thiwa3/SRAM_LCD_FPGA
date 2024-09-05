-- vhdl-linter-disable type-resolved
library IEEE; use IEEE.STD_LOGIC_1164.all;

entity userlogic_addr is
    port(clk, reset_n: in std_logic;
        -- SYSTEM
        addr : in std_logic_vector(7 downto 0);

        -- CONTROLLER
        data_write : out std_logic_vector(9 downto 0); -- 1/0 inst/data, read/write
        send_enable : out std_logic;
        busy : in std_logic;
        data_read : in std_logic_vector(7 downto 0)
    );
end;

architecture synth of userlogic_addr is   
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
                    if (count < 8) then
                        count := count + 1;
                        end if;
                    case count is
                        when 1 => 
                            data_write <= "1001000001"; -- A
                            send_enable <= '1';
                        when 2 => 
                            data_write <= "1001000100"; -- D
                            send_enable <= '1';
                        when 3 => 
                            data_write <= "1001000100"; -- D
                            send_enable <= '1';
                        when 4 => 
                            data_write <= "1001010010"; -- R
                            send_enable <= '1';
                        when 5 => 
                            data_write <= "1000011010"; -- →
                            send_enable <= '1';
                        when 6 => 
                            data_write <= "100011" & addr(7 downto 4);
                            send_enable <= '1';
                        when 7 => 
                            data_write <= "100011" & addr(3 downto 0);
                            send_enable <= '1';
                        when others => 
                            send_enable <= '0';
                    end case;
                end if;
            end if;
        end process;
    end;
