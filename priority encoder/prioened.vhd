library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity prioened is
port(P:in bit_vector(7 downto 0);
M:out bit_vector(2 downto 0));
end prioened;

architecture priority of prioened is
begin
process(P)
begin
M<="000"
if P(7)='1' then
M<="111";
elseif P(6)='1' then
M<="110";
elseif P(5)='1' then
M<="101";
elseif P(4)='1' then
M<="100";
elseif P(3)='1' then
M<="011";
elseif P(2)='1' then
M<="010";
elseif P(1)='1' then
M<="001";
elseif P(0)='1' then
M<="000";
end if;
end process;
end priority;