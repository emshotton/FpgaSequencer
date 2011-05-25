
-- VHDL Instantiation Created from source file Top_Level.vhd -- 15:26:36 05/25/2011
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Top_Level
	PORT(
		clk : IN std_logic;          
		SOUND_OUT : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	Inst_Top_Level: Top_Level PORT MAP(
		clk => ,
		SOUND_OUT => 
	);


