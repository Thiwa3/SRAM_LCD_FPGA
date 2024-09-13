-- vhdl-linter-disable not-declared type-resolved
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity output_analyzer is
    port (
        clk        : in std_logic;
        reset_n    : in std_logic;
        ready      : in std_logic;
        rw         : in std_logic;
        data_read  : in std_logic_vector(15 downto 0);
        fail       : out std_logic
    );
end entity output_analyzer;

architecture Behavioral of output_analyzer is
    type state_type is (zero, one);
    signal current_state, next_state : state_type;
    signal fail_reg, fail_buf : std_logic;
begin
    process(clk, reset_n)
    begin
        if reset_n = '0' then
            current_state <= zero;
            fail_reg <= '0';
        elsif rising_edge(clk) then
            current_state <= next_state;
            fail_reg <= fail_buf;
        end if;
    end process;

    process(all)
    begin
        fail_buf <= fail_reg; 

        case current_state is
            when zero =>
                if rw = '1' then
                    if data_read /= "0000000000000000" then
                        fail_buf <= '1';
                    end if;
                end if;

                if ready = '1' then
                    next_state <= one;
                else
                    next_state <= zero;
                end if;

            when one =>
                if rw = '1' then
                    if data_read /= "1111111111111111" then
                        fail_buf <= '1';
                    end if;
                end if;
                
                if ready = '1' then
                    next_state <= zero;
                else
                    next_state <= one;
                end if;
            when others =>
                next_state <= zero;
        end case;
    end process;
    fail <= fail_reg;
end architecture Behavioral;