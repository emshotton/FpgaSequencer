
-- VHDL Instantiation Created from source file Sine_Generator.vhd -- 20:21:45 05/23/2011
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Sine_Generator
	PORT(
		HARMONIC : IN std_logic_vector(3 downto 0);
		CLOCK : IN std_logic;
		CLOCK_ENABLE : IN std_logic;
		RESET : IN std_logic;          
		OUTPUT : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	Inst_Sine_Generator: Sine_Generator PORT MAP(
		HARMONIC => ,
		CLOCK => ,
		CLOCK_ENABLE => ,
		RESET => ,
		OUTPUT => 
	);

