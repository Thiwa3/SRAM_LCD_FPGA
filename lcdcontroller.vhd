-- vhdl-linter-disable type-resolved not-declared
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity lcdcontrollerfast is
	port(
        clk: in std_logic;
        reset_n: in std_logic;
		lcd_enable : in std_logic;
        lcd_bus: in std_logic_vector(9 downto 0);
		busy : out std_logic;
		lcd_en, lcd_rw, lcd_rs : out std_logic;
		lcd_data : out std_logic_vector(7 downto 0);
        lcd_pon : out std_logic;
        lcd_blon : out std_logic
	);
end;

architecture controller of lcdcontrollerfast is
    type control is (power, init, ready, send);
    signal state : control;
    constant freq : integer := 50;
begin
    lcd_pon <= '1';
    lcd_blon <= '1';

    process(clk)
        variable count : integer := 0;
    begin
        if (rising_edge(clk)) then
            case state is
                when power =>
                    busy <= '1';
                    if(count < (50000 * freq)) then
                        count := count + 1;
                        state <= power;
                    else
                        count := 0;
                        lcd_rs <= '0';
                        lcd_rw <= '0';
                        lcd_data <= "00111000";
                        state <= init;
                    end if;
                when init =>
                    busy <= '1';
                    count := count + 1;
                    if(count < (10 * freq)) then
                        lcd_data <= "00111100";
                        lcd_en <= '1';
                        state <= init;
                    elsif (count < (60 * freq)) then
                        lcd_data <= "00000000";
                        lcd_en <= '0';
                        state <= init;
                    elsif (count < (70 * freq)) then
                        lcd_data <= "00001101";
                        lcd_en <= '1';
                        state <= init;
                    elsif (count < (120 * freq)) then
                        lcd_data <= "00000000";
                        lcd_en <= '0';
                        state <= init;
                    elsif (count < (130 * freq)) then
                        lcd_data <= "00000001";
                        lcd_en <= '1';
                        state <= init;
                    elsif (count < (2130 * freq)) then
                        lcd_data <= "00000000";
                        lcd_en <= '0';
                        state <= init;
                    elsif (count < (2140 * freq)) then
                        lcd_data <= "00000110";
                        lcd_en <= '1';
                        state <= init;
                    elsif (count < (2200 * freq)) then
                        lcd_data <= "00000000";
                        lcd_en <= '0';
                        state <= init;
                    else
                        count := 0;
                        busy <= '0';
                        state <= ready;
                    end if;
                when ready =>
                    if (lcd_enable = '1') then
                        busy <= '1';
                        lcd_rs <= lcd_bus(9);
                        lcd_rw <= lcd_bus(8);
                        lcd_data <= lcd_bus(7 downto 0);
                        count := 0;
                        state <= send;
                    else
                        busy <= '0';
                        lcd_rs <= '0';
                        lcd_rw <= '0';
                        lcd_data <= "00000000";
                        count := 0;
                        state <= ready;
                    end if;
                when send =>
                    busy <= '1';
                    if (count < (50 * freq)) then
                        busy <= '1';
                        if (count < freq) then
                            lcd_en <= '0';
                        elsif (count < (14 * freq)) then
                            lcd_en <= '1';
                        elsif (count < (27 * freq)) then
                            lcd_en <= '0';
                        end if;
                        count := count + 1;
                        state <= send;
                    else
                        count := 0;
                        state <= ready;
                    end if;
            end case;
            
            if (reset_n = '0') then
                state <= power;
            end if;
        end if;
    end process;
end;