library my_lib;
use my_lib.example_arithmetic.all;
entity ent is
    generic(t_rise,t_fall:time:=5ns);
    port(a0,a1,b0,b1:in small_int;
    c0,c1:out small_int);
        end ent;

architecture behavioral of ent is
    signal c_internal:small_int;
    begin
        c_internal<=a0+b0;
        c0<=c_internal;
        c1<=c_internal+a1+b1;
    end behavioral;
