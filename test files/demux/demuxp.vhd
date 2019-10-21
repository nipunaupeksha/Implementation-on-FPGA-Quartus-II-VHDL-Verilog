library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity demuxp is
port(dini:in STD_LOGIC;
sel:in STD_LOGIC;
dout:out STD_LOGIC);
end demuxp;

architecture behavioral of demuxp is
begin
dout<=(dini & "0000000")when(sel="000")else
('0' & dini & "000000")when(sel="001")else
("00" & dini & "00000")when(sel="010")else
("000" & dini  & "0000")when(sel="011")else
("0000" & dini & "000")when(sel="100")else
("00000" & dini & "00")when(sel="101")else
("000000" & dini & '0')when(sel="110")else
("0000000" & dini);
end behavioral;