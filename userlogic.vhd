-- vhdl-linter-disable not-declared type-resolved
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
-- use ieee.std_logic_arith.all;

entity userlogic is
    port(clk, reset_n : in std_logic;                     
        -- SYSTEM
        addr_in, data_in : in std_logic_vector(7 downto 0);
        ext, rw, en_bist, fail, fin, busy : in std_logic;

        -- CONTROLLER
        data_write  : out std_logic_vector(9 downto 0); 
        send_enable : out std_logic
    );
end userlogic;

architecture behavioral of userlogic is
    -- 入力文字列をASCIIコードに変換したものを配列で定義
    -- 例: "HELLO"のASCIIコードに対応する数値を定義
    constant text_length  : integer := 4; 
    constant string_length : integer := 6;   
    constant strlarge_length : integer := 8;   
    type ascii_array is array (0 to text_length-1) of std_logic_vector(9 downto 0);
    type string_array is array (0 to string_length-1) of ascii_array;
    type strlarge_array is array (0 to strlarge_length-1) of ascii_array;

    constant ext_data : ascii_array := (
        "10" & x"45", -- 'E'
        "10" & x"58", -- 'X'
        "10" & x"54", -- 'T'
        "10" & x"20" -- SPACE
    );

    constant int_data : ascii_array := (
        "10" & x"49", -- 'I'
        "10" & x"4E", -- 'N'
        "10" & x"54", -- 'T'
        "10" & x"20"  -- SPACE
    );

    -- 12
    constant write_H_data : ascii_array := (
        "10" & x"20", -- SPACE
        "10" & x"57", -- 'W'
        "10" & x"52", -- 'R'
        "10" & x"49" -- 'I'
    );

    constant write_M_data : ascii_array := (
        "10" & x"54", -- 'T'
        "10" & x"45", -- 'E'
        "10" & x"20", -- SPACE
        "10" & x"44" -- 'D'
    );

    constant write_L_data : ascii_array := (
        "10" & x"41", -- 'A'
        "10" & x"54", -- 'T'
        "10" & x"41", -- 'A'
        "00" & x"40" -- DDSRAM x40
    );

    constant read_H_data : ascii_array := (
        "10" & x"20", -- SPACE
        "10" & x"20", -- SPACE
        "10" & x"52", -- 'R'
        "10" & x"45" -- 'E'
    );

    constant read_M_data : ascii_array := (
        "10" & x"41", -- 'A'
        "10" & x"44", -- 'D'
        "10" & x"20", -- SPACE
        "10" & x"44" -- 'D'
    );

    constant read_L_data : ascii_array := (
        "10" & x"41", -- 'A'
        "10" & x"54", -- 'T'
        "10" & x"41", -- 'A'
        "00" & x"40" -- DDSRAM x40
    );

    constant ext_int_branch : ascii_array := ( -- (4)
        "11" & "00010000", -- command: ext/int
        "11" & "00010000", -- command: ext/int
        "11" & "00010000", -- command: ext/int
        "11" & "00010000" -- command: ext/int
    );

    constant read_write_branch : ascii_array := ( -- (5)
        "11" & "00100000", -- command: read/write
        "11" & "00100000", -- command: read/write
        "11" & "00100000", -- command: read/write
        "11" & "00100000" -- command: read/write
    );

    constant addr_H_data : ascii_array := (
        "10" & x"41", -- 'A'
        "10" & x"64", -- 'D'
        "10" & x"64", -- 'D'
        "10" & x"72" -- 'R'
    );

    constant addr_L_data : ascii_array := ( -- (2)
        "10" & x"7E", -- '→'
        "11" & "00000101", -- command: addr
        "11" & "00000110", -- command: addr
        "10" & x"20" -- SPACE
    );

    constant data_H_data : ascii_array := (
        "10" & x"44", -- 'D'
        "10" & x"61", -- 'A'
        "10" & x"74", -- 'T'
        "10" & x"61"  -- 'A'
    );

    constant data_L_data : ascii_array := ( -- (3)
        "10" & x"7E", -- '→'
        "11" & "00001001", -- command: data
        "11" & "00001010", -- command: data
        "10" & x"20"  -- SPACE
    );

    constant fail_pass_branch : ascii_array := ( -- (6)
        "11" & "01000000", -- command: fail/pass
        "11" & "01000000", -- command: fail/pass
        "11" & "01000000", -- command: fail/pass
        "11" & "01000000" -- command: fail/pass
    );

    constant bist_H_data : ascii_array := (
        "10" & x"42", -- B
        "10" & x"49", -- I
        "10" & x"53", -- S
        "10" & x"54" -- T
    );

    constant bist_M_data : ascii_array := (
        "10" & x"20", -- SPACE
        "10" & x"31", -- 1
        "10" & x"30", -- 0
        "10" & x"30" -- 0
    );

    constant bist_L_data : ascii_array := (
        "10" & x"4D", -- M
        "10" & x"48", -- H
        "10" & x"5A", -- Z
        "00" & x"40" -- DDSRAM x40
    );

    constant start_data : ascii_array := (
        "10" & x"50", -- P
        "10" & x"75", -- u
        "10" & x"73", -- s
        "10" & x"68" -- h
    );

    constant fail_data : ascii_array := (
        "10" & x"46", -- F
        "10" & x"61", -- a
        "10" & x"69", -- i
        "10" & x"66" -- l
    );

    constant pass_data : ascii_array := (
        "10" & x"50", -- P
        "10" & x"61", -- a
        "10" & x"73", -- s
        "10" & x"73" -- s
    );

    constant blank_data : ascii_array := (
        "10" & x"20", -- SPACE
        "10" & x"20", -- SPACE
        "10" & x"20", -- SPACE
        "10" & x"20" -- SPACE
    );

    constant text_meminfo : strlarge_array := (
        ext_int_branch,
        read_write_branch,
        read_write_branch,
        read_write_branch,
        addr_H_data,
        addr_L_data,
        data_H_data,
        data_L_data    
    );

    constant text_bistinfo : string_array := (
        ext_int_branch,
        bist_H_data,
        bist_M_data,
        bist_L_data,
        fail_pass_branch,
        blank_data
    );

begin
    process(clk, reset_n) is
        variable index        : integer := 0;    
        variable str_index    : integer := 0;
        variable count        : integer := 0;
    begin
        if reset_n = '0' then                           -- リセット処理
            index := 0;
            str_index := 0;
            count := 0;
            data_write <= (others => '0');
            send_enable <= '0';
        
        elsif (busy = '1') then
            send_enable <= '0';

        elsif rising_edge(clk) then                    -- クロックの立ち上がりエッジで処理を行う
            if (en_bist = '0') then
                if str_index < strlarge_length then
                    if index < text_length then                -- 文字列の終端でない場合
                        if (text_meminfo(str_index)(index)(9 downto 8) = "11") then -- コマンド

                            --  ADDR
                            if (text_meminfo(str_index)(index)(2) = '1') then 
                                if (text_meminfo(str_index)(index)(1 downto 0) = "01") then
                                    if (to_integer(unsigned(addr_in(7 downto 4))) > 9) then
                                        data_write <= "100100" & std_logic_vector(to_unsigned(to_integer(unsigned(addr_in(7 downto 4))) - 9, 4));
                                    else
                                        data_write <= "100011" & addr_in(7 downto 4);
                                    end if;
                                else                -- text_meminfo(str_index)(index)(1 downto 0) = "10"
                                    if (to_integer(unsigned(addr_in(3 downto 0))) > 9) then
                                        data_write <= "100100" & std_logic_vector(to_unsigned(to_integer(unsigned(addr_in(3 downto 0))) - 9, 4));
                                    else
                                        data_write <= "100011" & addr_in(3 downto 0);
                                    end if;
                                end if;

                            -- DATA
                            elsif(text_meminfo(str_index)(index)(3) = '1') then     
                                if (text_meminfo(str_index)(index)(1 downto 0) = "01") then 
                                    if (to_integer(unsigned(data_in(7 downto 4))) > 9) then
                                        data_write <= "100100" & std_logic_vector(to_unsigned(to_integer(unsigned(data_in(7 downto 4))) - 9, 4));
                                    else
                                        data_write <= "100011" & data_in(7 downto 4);
                                    end if;
                                else                -- text_meminfo(str_index)(index)(1 downto 0) = "10"
                                    if (to_integer(unsigned(data_in(3 downto 0))) > 9) then
                                        data_write <= "100100" & std_logic_vector(to_unsigned(to_integer(unsigned(data_in(3 downto 0))) - 9, 4));
                                    else
                                        data_write <= "100011" & data_in(3 downto 0);
                                    end if;
                                end if;

                            -- EXT/INT
                            elsif (text_meminfo(str_index)(index)(4) = '1') then 
                                if (ext = '1') then
                                    data_write <= ext_data(index);
                                else
                                    data_write <= int_data(index);
                                end if;

                            -- READ/WRITE
                            elsif (text_meminfo(str_index)(index)(5) = '1') then 
                                case count is
                                    when 0 =>
													 if (rw = '1') then
														data_write <= read_H_data(index);
													 else
														data_write <= write_H_data(index);
													 end if;
                                    when 1 =>
                                        if (rw = '1') then
														data_write <= read_M_data(index);
													 else
														data_write <= write_M_data(index);
													 end if;
                                    when 2 =>
                                        if (rw = '1') then
														data_write <= read_L_data(index);
													 else
														data_write <= write_L_data(index);
													 end if;
                                    when others =>
                                end case;
                                if (index = (text_length - 1)) then
                                    count := count + 1;
                                end if;
                            
                            -- FAIL/PASS
                            elsif (text_meminfo(str_index)(index)(6) = '1') then 
                                if (fin = '0') then
                                    data_write <= start_data(index);
                                elsif (fin = '1' and fail = '1') then
                                    data_write <= fail_data(index);
                                else
                                    data_write <= pass_data(index);
                                end if;
                            end if;

                        -- ASCII
                        else
                            data_write <= text_meminfo(str_index)(index); 
                        end if;
                        send_enable <= '1';
                        index := index + 1;

                    -- チャンクの終端に到達した場合
                    else
                        str_index := str_index + 1; 
                        index := 0;
                        send_enable <= '0';         -- ２文字目の表示をやめる
                    end if;

                -- 文字列の終端に到達した場合
                else                                       
                    data_write <= (others => '0');
                    send_enable <= '0';                     
                end if;
            else
                if str_index < string_length then
                    if index < text_length then               
                        if (text_bistinfo(str_index)(index)(9 downto 8) = "11") then 

                            -- EXT/INT
                            if (text_bistinfo(str_index)(index)(4) = '1') then 
                                if (ext = '1') then
                                    data_write <= ext_data(index);
                                else
                                    data_write <= int_data(index);
                                end if;
                            
                            -- FAIL/PASS
                            elsif (text_bistinfo(str_index)(index)(6) = '1') then 
                                if (fail = '1') then
                                    data_write <= fail_data(index);
                                else
                                    data_write <= pass_data(index);
                                end if;
                            end if;
                        
                        -- ASCII
                        else
                            data_write <= text_bistinfo(str_index)(index);
                        end if;
                        send_enable <= '1';
                        index := index + 1;

                    -- チャンクの終端に到達した場合
                    else
                        str_index := str_index + 1; 
                        index := 0;
                        send_enable <= '0';        
                    end if;
                
                -- 文字列の終端に到達した場合
                else                                       
                    data_write <= (others => '0');
                    send_enable <= '0';                    
                end if;
            end if;
        end if;
    end process;
end behavioral;
