architecture sel_arch of simple_alu is
    signal sum,diff,inc:std_logic_vector(7 downto 0);
    begin
        inc<=std_logic_vector(signed(src0)+1);
        sum<=std_logic_vector(signed(src0)+signed(src1));
        diff<=std_logic_vector(signed(src0)-signed(src1));
        with ctrl select
        result<=inc when "000"|"001"|"010"|"011",
                sum when "100",
                diff when "101",
                src0 and src1 when "110",
                src0 or src1 when others;
        end sel_arch;