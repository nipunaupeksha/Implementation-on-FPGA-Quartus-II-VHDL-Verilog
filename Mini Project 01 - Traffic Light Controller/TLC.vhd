library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity TLC is
port(
	clk:in STD_LOGIC;
	clr:in STD_LOGIC;
	ledlights:out STD_LOGIC_VECTOR(5 downto 0)
);
end TLC;

architecture trafficlight of TLC is
type stateTC_type is(s0,s1,s2,s3,s4,s5);
signal stateTC:state_type;
signal count1:STD_LOGIC_VECTOR(3 downto 0);
constant SECfive:STD_LOGIC_VECTOR(3 downto 0):="1111";
constant SECone: STD_LOGIC_VECTOR(3 downto 0):="0011";
begin
process(clr,clk)
begin
if clr = '1' then
stateTC<=s2;
count1<=X"0";
elseif (clock'event and clock='1') then
case stateTC is
when s0=>
if count1<SECfive then
state<=s0;
count1<=count+1;
else
state<=s1;
count1<=X"0";
end if;

when s1=>
if count1<SECone then
state<=s1;
count1<=count1+1;
else
state<=s2;
count1<=X"0";
end if;

when s2=>
if count1<SECone then
state<=s2;
count1<=count1+1;
else
state<=s3;
count1<=X"0";
end if;

when s3=>
if count1<SECone then
state<=s3;
count1<=count1+1;
else
state<=s4;
count1<=X"0";
end if;

when s4=>
if count1<SECone then
state<=s4;
count1<=count1+1;
else
state<=s5;
count1<=X"0";
end if;

when s5=>
if count1<SECone then
state<=s5;
count1<=count1+1;
else
state<=s0;
count1<=X"0";
end if;

when otherd=>
state<=s0;
end case;
end if;
end process;
C2:process(stateTC)
begin
case stateTC is
when s0=>ledlights<="1000001";
when s1=>ledlights<="1000010";
when s2=>ledlights<="1000100";
when s3=>ledlights<="0001100";
when s4=>ledlights<="0000100";
when s5=>ledlights<="1000100";
when others=>ledlights<="1000001";
end case;
end process;

end trafficlight;