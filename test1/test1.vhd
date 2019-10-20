library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity test1 is
port(switch1:in std_logic;
switch2:in std_logic;
led1:out std_logic;
led2:out std_logic);
end test1;

architecture Behavioral of test1 is

begin
led1<=switch1;
led2<=switch2;

end Behavioral;