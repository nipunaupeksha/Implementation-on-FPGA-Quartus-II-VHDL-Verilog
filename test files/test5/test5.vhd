library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity test5 is
port(A,B,C:in STD_LOGIC;
F:out STD_LOGIC);
end test5;

architecture BEHAVIORAL of test5 is
begin
F<=(A AND B AND C);
end BEHAVIORAL;