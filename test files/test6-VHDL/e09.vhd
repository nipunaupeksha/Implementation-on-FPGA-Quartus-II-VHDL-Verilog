--e01
architecture sel_arch of mux4 is
    begin
        with a select
        x<=a when "00",
        b when "01",
        c when "10",
        d when others;
    end sel_arch;

--e02
architecture sel_arch of decoder4 is
    begin
        with a select
        x<="0001" when "00",
        "0010" when "01",
        "0100" when "10",
        "1000" when others;
    end sel_arch;

--e03
wait on signals;
wait until boolean_expressions;
wait for time_expressions;

--e04
for index in loop_range loop
    sequential statements;
end loop;