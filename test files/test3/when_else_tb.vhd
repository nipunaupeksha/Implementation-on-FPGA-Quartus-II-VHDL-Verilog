LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY When_else_tb IS
END When_else_tb;

ARCHITECTURE behavior OF When_else_tb IS
	COMPONENT When_else
	PORT( A: IN std_logic;
			B: IN std_logic;
			C: IN std_logic;
			assign_A: IN std_logic;
			assign_B: IN std_logic;
			Z: OUT std_logic);
	END COMPONENT;
	
	--Inputs 
	signal A: std_logic:='0';
	signal B: std_logic:='0';
	signal C: std_logic:='0';
	signal assign_A:std_logic:='0';
	signal assign_B:std_logic:='0';
	
	--outputs
	signal Z:std_logic;
	
	BEGIN
	
	--Initiate the unit under test uut
	uut:When_else PORT MAP(
		A=>A,
		B=>B,
		C=>C,
		assign_A=>assign_A,
		assign_B=>assign_B,
		Z=>Z
	);
	
	--stimulate process
	stim_proc:process
	begin
		wait for 100ns;
		A<='1';
		B<='0';
		C<='1';
		assign_A='0';
		assign_B<='1';
		wait for 10 ns;
		assign_A='1';
		assign_B<='0';
		wait for 10 ns
		assign_A='0';
		assign_B<='0';
		wait for 10 ns
		assign_A='1';
		assign_B<='1';
		wait for 10 ns
		wait;
	end process;
	
	END;