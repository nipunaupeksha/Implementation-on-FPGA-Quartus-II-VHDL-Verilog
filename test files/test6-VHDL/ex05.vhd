library ieee;
use ieee.std_logic_1164.all;

entity counter0 is
    port(clock: in Boolean;
    count:out integer range 0 to 7);
end counter0;

architecture register_feedback of counter0 is
    begin
    process(clock)
    variable count1:integer range 0 to 7;
    begin
        if clock and clock'event then
            count1:=0;
        else 
            count1:=count1+1;
        end if;
        count<=count1;
        end process;
end register_feedback;