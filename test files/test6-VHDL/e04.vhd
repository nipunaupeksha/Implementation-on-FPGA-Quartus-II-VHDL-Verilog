architecture beh1_arch of even_detector is
    signal odd:std_logic;
    begin
        even<=not odd;
        process(a)
            variable temp:std_logic;
            begin
                temp:= '0';
                for i in 2 downto 0 loop
                    temp:=temp xor a(1);
                end loop;
                odd<=temp;
        end process;
    end beh1_arch;