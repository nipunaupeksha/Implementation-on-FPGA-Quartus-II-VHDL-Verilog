library ieee;
use ieee.std_logic_1164.all;
entity mode_demo is
    port(a,b:in std_logic;
    x,y:out std_logic);
end mode_demo;

architecture wrong_arch of mode_demo is
    begin
        x<=a and b;
        y<=not x;
    end wrong_arch;