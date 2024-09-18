-- vhdl-linter-disable type-resolved
library IEEE; use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;

entity seg8d_decoder is
    port (
        data_in : in std_logic_vector(4*8-1 downto 0);
        seg_out : out std_logic_vector(7*8-1 downto 0)
    );
end;

architecture synth of seg8d_decoder is 
    component seg7 is 
        port (I: in STD_LOGIC_VECTOR(3 downto 0);
            Seg: out STD_LOGIC_VECTOR(6 downto 0));
    end component;
begin
    dp11:seg7 port map(data_in(4*8-1 downto 4*7), seg_out(7*8-1 downto 7*7));
    dp12:seg7 port map(data_in(4*7-1 downto 4*6), seg_out(7*7-1 downto 7*6));
    
    dp21:seg7 port map(data_in(4*6-1 downto 4*5), seg_out(7*6-1 downto 7*5));
    dp22:seg7 port map(data_in(4*5-1 downto 4*4), seg_out(7*5-1 downto 7*4));
        
    dp13:seg7 port map(data_in(4*4-1 downto 4*3), seg_out(7*4-1 downto 7*3));
    dp23:seg7 port map(data_in(4*3-1 downto 4*2), seg_out(7*3-1 downto 7*2));
    dp33:seg7 port map(data_in(4*2-1 downto 4*1), seg_out(7*2-1 downto 7*1));
    dp43:seg7 port map(data_in(4*1-1 downto 4*0), seg_out(7*1-1 downto 7*0));
end;