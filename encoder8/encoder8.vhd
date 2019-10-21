library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity encoder8 is
port(Edin:in STD_LOGIC_VECTOR(7 downto 0);
Edout:out STD_LOGIC_VECTOR(2 downto 0));
end encoder8;

architecture encoder8 of encoder8 is
begin
Edout<="000" when (Edin = "10000000")else
"001" when (Edin = "01000000")else
"010" when (Edin = "00100000")else
"011" when (Edin = "00010000")else
"100" when (Edin = "00001000")else
"101" when (Edin = "00000100")else
"110" when (Edin = "00000010")else
"111";
end encoder8;