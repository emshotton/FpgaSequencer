
-- VHDL Instantiation Created from source file Envelope_Generator.vhd -- 19:26:44 05/26/2011
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Envelope_Generator
	PORT(
		CLOCK : IN std_logic;
		ATTACK : IN std_logic_vector(7 downto 0);
		DECAY : IN std_logic_vector(7 downto 0);
		SUSTAIN : IN std_logic_vector(7 downto 0);
		RELEASE : IN std_logic_vector(7 downto 0);
		CLOCK_ENABLE : IN std_logic;          
		OUTPUT : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	Inst_Envelope_Generator: Envelope_Generator PORT MAP(
		CLOCK => ,
		ATTACK => ,
		DECAY => ,
		SUSTAIN => ,
		RELEASE => ,
		CLOCK_ENABLE => ,
		OUTPUT => 
	);


