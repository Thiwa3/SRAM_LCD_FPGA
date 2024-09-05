-- vhdl-linter-disable type-resolved
library IEEE; use IEEE.STD_LOGIC_1164.all;

entity lcdcontrollerslow is
	port(clk, reset_n: in std_logic;
		-- SYSTEM
		data_write : in std_logic_vector(9 downto 0);
		data_read : out std_logic_vector(7 downto 0);
		send_enable : in std_logic;
		busy : out std_logic;
		
		-- LCD
		dio : inout std_logic_vector(7 downto 0);
		en_l, rw_l, rs_l, pon_l, blon_l : out std_logic
	);
end;

architecture synth of lcdcontrollerslow is    
    type statetype is (start, power, init1, init2, init3, init4, init5, init6, init7, init8, init9, ready, send1, send2, send3, send4);
    signal state, nextstate: statetype;
	signal data_write_reg, data_write_reg_next, data_read_reg, data_read_reg_next : std_logic_vector(7 downto 0);
    signal en_reg, rw_reg, rs_reg, busy_reg : std_logic;
    signal en_buf, rw_buf, rs_buf, busy_buf : std_logic;

    begin
		process(clk, reset_n) begin
			if (reset_n = '0') then
				state <= power;
				data_write_reg <= (others => '0');
				data_read_reg <= (others => '0');
                en_reg <= '0';
                rw_reg <= '0';
                rs_reg <= '0';
                busy_reg <= '1';
			elsif (rising_edge(clk)) then
				state <= nextstate;
				data_write_reg <= data_write_reg_next;
				data_read_reg <= data_read_reg_next;
                en_reg <= en_buf;
                rw_reg <= rw_buf;
                rs_reg <= rs_buf;
                busy_reg <= busy_buf;
			end if;
		end process;
		
		process(all) begin
			data_write_reg_next <= data_write_reg;
			data_read_reg_next <= data_read_reg;
			case state is
				when start =>
					nextstate <= power;
				when power =>
                    data_write_reg_next <= "00110000"; -- INIT_SEQ 
                    nextstate <= init1;
				when init1 =>
                    data_write_reg_next <= "00110100"; -- 8bit length, 1 line mode, display on
                    nextstate <= init2;
				when init2 =>
                    data_write_reg_next <= "00000000"; 
                    nextstate <= init3;
				when init3 =>
                    data_write_reg_next <= "00001101"; -- Display on/off control (d on/c off/b on)
                    nextstate <= init4;
				when init4 =>
                    data_write_reg_next <= "00000000";
                    nextstate <= init5;
				when init5 =>
                    data_write_reg_next <= "00000001"; -- Clear Display
                    nextstate <= init6;
				when init6 =>
                    data_write_reg_next <= "00000000";
                    nextstate <= init7;
				when init7 =>
                    data_write_reg_next <= "00000110"; -- Entry Mode Set (inc on/sht off)
                    nextstate <= init8;
				when init8 =>
                    data_write_reg_next <= "00000000";
                    nextstate <= init9;
                when init9 => 
                    nextstate <= ready;
				when ready =>
					if (send_enable = '1') then
						data_write_reg_next <= data_write(7 downto 0); -- DATA / INST
						nextstate <= send1;
                        if (data_write(8) = '1') then
                            data_read_reg_next <= dio;
                        else
                            data_read_reg_next <= (others => 'Z');
                        end if;
					else
						data_write_reg_next <= "00000000";
						nextstate <= ready;
					end if;
				when send1 => 
                    nextstate <= send2;
				when send2 => 
                    nextstate <= send3;
				when send3 => 
                    nextstate <= send4;
				when send4 =>
                    nextstate <= ready;
			end case;
		end process;

        process (nextstate, send_enable) begin
            en_buf <= '0';
            rw_buf <= '0';
            rs_buf <= '0';
            busy_buf <= '1';
            -- type statetype is (start, power, init1, init2, init3, init4, init5, init6, init7, init8, init9, ready, send1, send2, send3, send4);
            case nextstate is
                when start =>
                when power =>
                when init1 =>
                    en_buf <= '1';
                when init2 =>
                when init3 =>
                    en_buf <= '1';
                when init4 =>
                when init5 =>
                    en_buf <= '1';
                when init6 =>
                when init7 =>
                    en_buf <= '1';
                when init8 =>
                when init9 => 
                when ready =>
                    rs_buf <= '1';
                    if (send_enable = '1') then
                        rs_buf <= data_write(9);
                        rw_buf <= data_write(8);
                    else
                        busy_buf <= '0';
                    end if;
                when send1 =>
                    rs_buf <= '1';
                when send2 =>
                    en_buf <= '1';
                    rs_buf <= '1';
                when send3 =>
                    rs_buf <= '1';
                when send4 =>
                    busy_buf <= '0';
                    rs_buf <= '1';
            end case;
        end process;

		pon_l <= '1';
		blon_l <= '1';
        en_l <= en_reg;
        rw_l <= rw_reg;
        rs_l <= rs_reg;
        busy <= busy_reg;
		dio <= data_write_reg when (rw_l = '0') else (others => 'Z');
		data_read <= data_read_reg;
    end;

