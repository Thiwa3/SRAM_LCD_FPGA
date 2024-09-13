-- vhdl-linter-disable type-resolved
library IEEE; use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;

entity sub_module_bist is
    port (
        clk, reset_n : in std_logic;
        -- SYSTEM
        ext : in std_logic;
        en_bist : in std_logic;
        test_start : in std_logic;
        fail : out std_logic;
        fin : out std_logic;
        -- SRAM
        data_read : in std_logic_vector(15 downto 0);
        addr: out std_logic_vector(19 downto 0);
        data_write : out std_logic_vector(15 downto 0);
        rw : out std_logic
    );
end;

architecture synth of sub_module_bist is   
    component marchcontroller is
        port (clk, reset_n: in std_logic;
            ext: in std_logic;
            addr: out std_logic_vector(19 downto 0);
            data_write: out std_logic_vector(15 downto 0);
            rw : out std_logic;
            ready : out std_logic;
            fin : out std_logic
        ); 
    end component;

    component output_analyzer is
        port (
            clk        : in std_logic;
            reset_n    : in std_logic;
            ready      : in std_logic;
            rw         : in std_logic;
            data_read  : in std_logic_vector(15 downto 0);
            fail       : out std_logic
        );
    end component;

    signal rw_tmp, ready_tmp : std_logic;
begin
    rw <= rw_tmp;
    mc1: marchcontroller port map(clk, reset_n and en_bist and (not test_start), ext, addr, data_write, rw_tmp, ready_tmp, fin);
    oa1: output_analyzer port map(clk, reset_n and en_bist and (not test_start), ready_tmp, rw_tmp, data_read, fail);
end;