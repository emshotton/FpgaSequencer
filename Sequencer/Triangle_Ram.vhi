
-- VHDL Instantiation Created from source file Triangle_Ram.vhd -- 17:07:23 05/20/2011
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Triangle_Ram
	PORT(
		CLOCK : IN std_logic;
		READ_ADDRESS : IN std_logic_vector(7 downto 0);          
		OUTPUT_DATA : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	Inst_Triangle_Ram: Triangle_Ram PORT MAP(
		CLOCK => ,
		READ_ADDRESS => ,
		OUTPUT_DATA => 
	);


