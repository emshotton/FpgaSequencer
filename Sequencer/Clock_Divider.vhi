
-- VHDL Instantiation Created from source file Clock_Divider.vhd -- 15:46:15 05/25/2011
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Clock_Divider
	PORT(
		CLOCK : IN std_logic;
		DIVISOR : IN std_logic_vector(7 downto 0);          
		OUTPUT : OUT std_logic
		);
	END COMPONENT;

	Inst_Clock_Divider: Clock_Divider PORT MAP(
		CLOCK => ,
		DIVISOR => ,
		OUTPUT => 
	);


