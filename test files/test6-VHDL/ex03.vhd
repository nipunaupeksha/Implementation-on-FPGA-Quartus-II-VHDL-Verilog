package type_defs is
    subtype very_short is integer range 0 to 3;
end type_defs;

use work.type_defs.all;
entity counter is
    port(clk:in Boolean;p:inout very_short);
    end counter;
architecture behavior of counter is
    begin
        process(clk)
        begin
            if clk and clk'event then
                p<=p+1;
            end if;
        end process;
    end behavior;