
-- VHDL Instantiation Created from source file Tone_Mixer.vhd -- 20:27:35 05/23/2011
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Tone_Mixer
	PORT(
		IN_A : IN std_logic_vector(7 downto 0);
		IN_B : IN std_logic_vector(7 downto 0);
		IN_C : IN std_logic_vector(7 downto 0);
		IN_D : IN std_logic_vector(7 downto 0);
		ENABLED_INPUTS : IN std_logic_vector(3 downto 0);
		CLOCK : IN std_logic;          
		OUTPUT : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	Inst_Tone_Mixer: Tone_Mixer PORT MAP(
		IN_A => ,
		IN_B => ,
		IN_C => ,
		IN_D => ,
		OUTPUT => ,
		ENABLED_INPUTS => ,
		CLOCK => 
	);


