-- vhdl-linter-disable type-resolved
library IEEE; use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;

entity sub_module_bist is
    port (
        clk, reset_n : in std_logic;
        en_bist_n, start_bist_n : in std_logic;
        success : out std_logic
    );
end;

architecture synth of sub_module_bist is  

begin
        process (clk, reset_n, en_bist_n ) is
            variable count : integer := 0;
        begin
            if (reset_n = '0') then
                success <= '0';
                count := 0;
            elsif rising_edge(clk) then
					 if (en_bist_n = '0' and start_bist_n = '0') then
						 if (count < 1000000 * 100) then
							count := count + 1;
							success <= '0';
						 else
							success <= '1';
							count := 0;
						 end if;
					 else
						success <= '0';
						count := 0;
					 end if;
				end if;
		 end process;
end;