architecture beh2_arch of even_detector is
    begin
        process(a)
            variable sum,r:integer;
            begin
                sum:=0;
                for i in 2 downto 0 loop
                    if a(i)='1' then
                        sum:=sum+1;
                    end if;
                end loop;
                r:=sum mod 2;
                if (r=0) then
                    even<='1';
                    else 
                    even<='0';
                end if;
        end process;
    end beh2_arch;