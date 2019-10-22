library ieee;
use ieee.std_logic_1164.all;
entity xor2 is 
port(i1,i2:in std_logic;
o1:out std_logic);
end xor2;

architecture beh_arch of xor2 is
    begin
        o1<=i1 xor i2;
    end beh_arch;

library ieee;
use ieee.std_logic_1164.all;
entity not1 is
    port(i1:in std_logic;
    o1:out std_logic);
end not1;

architecture beh_arch of not1 is
    begin 
    o1<=not i1;
    end beh_arch;