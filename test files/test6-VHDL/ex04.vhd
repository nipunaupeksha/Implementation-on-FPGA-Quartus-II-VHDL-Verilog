library ieee;
use ieee.std_logic_1164.all;

package examples_bus is
    subtype bundle is std_logic_vector(0 to 4); 
end package;

use work.example_bus.all;

entity tbuf is
    port(enable:in std_logic; a :in bundle;
    m:out bundle);
end tbuf;

architecture example of tbuf is
    begin
        process(enable,a)
        begin
            if enable='1' then
                m<="a";
            else
                m<="ZZZZ";
            end if;
        end process;
    end example;