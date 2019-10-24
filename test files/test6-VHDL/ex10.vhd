process(a,b,c,d,...)
begin 
if boolean_exp then
    x<=a+b;
    y<=(others=>'0');
    else 
    x<="00000001";
    y<=c+d;
    end process;