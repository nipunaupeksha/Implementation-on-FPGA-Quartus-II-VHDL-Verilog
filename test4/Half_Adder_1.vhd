library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity of Half_Adder_1 is
port(A:in std_logic;
B:in std_logic;
SUM:out std_logic;
CARRY:out std_logic);
end Half_Adder_1;
architecture Dataflow_HA of Half_Adder_1 is
begin
SUM<=A xor B;
CARRY<=A and B;

end Dataflow_HA;