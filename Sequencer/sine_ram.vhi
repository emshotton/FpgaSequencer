
-- VHDL Instantiation Created from source file sine_ram.vhd -- 15:11:34 05/20/2011
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT sine_ram
	PORT(
		CLOCK : IN std_logic;
		READ_ADDRESS : IN std_logic_vector(7 downto 0);          
		OUTPUT_DATA : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	Inst_sine_ram: sine_ram PORT MAP(
		CLOCK => ,
		READ_ADDRESS => ,
		OUTPUT_DATA => 
	);


