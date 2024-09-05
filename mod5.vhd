library IEEE; use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity mod5 is
    generic(N: integer := 25);
    port (clk, Nreset: in STD_LOGIC;
            Output_clk: out STD_LOGIC);
end;

architecture synth of mod5 is
    signal q : std_logic_vector(N-1 downto 0) := (others => '0');

    begin
        Output_clk <= q(N-1);
        process(clk, Nreset) begin
	    if(Nreset = '0') then
            q <= (others => '0');
        elsif rising_edge(clk) then
            q <= std_logic_vector(unsigned(q) + 1);
	    end if;
	end process;
    end;