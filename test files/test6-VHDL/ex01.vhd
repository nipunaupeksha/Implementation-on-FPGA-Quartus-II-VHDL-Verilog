----------------------
-- PREP Benchmark Circuit #1: Data Path
--
-- Copyright 2019, Nipuna Upeksha
--
-- Copyright 2019, FLT Inc.

package typedef is
    subtype byte is bit_vector(7 downto 0);
end;

use work.typedef.all;

entity data_path is
    port(clk,rst,s_1:in boolean;
    s0,s1:in bit;
    d0,d1,d2,d3:in byte;
    q:out byte);
end data_path;

architecture behavior of data_path is
    signal reg,shft:byte;
    signal sel:bit_vector(1 downto 0);
begin
    process(clk,rst)
    begin
        if rst then --async reset
            reg<=x"00";
            shft<=x"00";
            elsif clk and clk'event then --define a clock
                sel<=s0 & s1;
                case sel is --mux function
                    when b"00"=>reg<=d0;
                    when b"10"=>reg<=d1;
                    when b"01"=>reg<=d2;
                    when b"11"=>reg<=d3;
                end case;
                if s_1 then
                        shft<=shft(d downto 0) & shft(7);
                else
                    shft<=reg;
                end if;
            end if;
        end process;
        q<=shft;
    end behavior;


