----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:11:20 05/23/2011 
-- Design Name: 
-- Module Name:    Top_Level - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Top_Level is
    Port ( clk : in  STD_LOGIC;
           SOUND_OUT : out  STD_LOGIC_VECTOR (7 downto 0)
			  );
end Top_Level;

architecture Behavioral of Top_Level is
	
	COMPONENT dcm_42Mhz
	PORT(
		CLKIN_IN : IN std_logic;
		RST_IN : IN std_logic;          
		CLKFX_OUT : OUT std_logic;
		CLKIN_IBUFG_OUT : OUT std_logic;
		CLK0_OUT : OUT std_logic;
		LOCKED_OUT : OUT std_logic
		);
	END COMPONENT;
	
	COMPONENT Tone_Mixer
	PORT(
		IN_A : IN std_logic_vector(7 downto 0);
		IN_B : IN std_logic_vector(7 downto 0);
		IN_C : IN std_logic_vector(7 downto 0);
		IN_D : IN std_logic_vector(7 downto 0);
		LEVEL_A : IN std_logic_vector(7 downto 0);
		LEVEL_B : IN std_logic_vector(7 downto 0);
		LEVEL_C : IN std_logic_vector(7 downto 0);
		LEVEL_D : IN std_logic_vector(7 downto 0);
		MODULATOR_A : IN std_logic_vector(7 downto 0);
		MODULATOR_A_LEVEL : IN std_logic_vector(7 downto 0);
		MODULATOR_B : IN std_logic_vector(7 downto 0);
		MODULATOR_B_LEVEL : IN std_logic_vector(7 downto 0);
		ENABLED_INPUTS : IN std_logic_vector(3 downto 0);
		CLOCK : IN std_logic;          
		OUTPUT : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;
	
	COMPONENT Clock_Divider
	PORT(
		CLOCK : IN std_logic;
		CLOCK_ENABLE : in STD_LOGIC;
		DIVISOR : IN std_logic_vector(7 downto 0);          
		OUTPUT : OUT std_logic
		);
	END COMPONENT;

	COMPONENT Sine_Generator
	PORT(
		HARMONIC : IN std_logic_vector(3 downto 0);
		PHASE : IN std_logic_vector(7 downto 0);
		CLOCK : IN std_logic;
		CLOCK_ENABLE : IN std_logic;
		RESET : IN std_logic;          
		OUTPUT : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	COMPONENT Square_Generator
	PORT(
		HARMONIC : IN std_logic_vector(3 downto 0);
		PHASE : IN std_logic_vector(7 downto 0);
		CLOCK : IN std_logic;
		CLOCK_ENABLE : IN std_logic;
		RESET : IN std_logic;          
		OUTPUT : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;
	
	COMPONENT Sawtooth_Generator
	PORT(
		HARMONIC : IN std_logic_vector(3 downto 0);
		PHASE : IN std_logic_vector(7 downto 0);
		CLOCK : IN std_logic;
		CLOCK_ENABLE : IN std_logic;
		RESET : IN std_logic;          
		OUTPUT : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;
	
	COMPONENT Triangle_Generator
	PORT(
		HARMONIC : IN std_logic_vector(3 downto 0);
		PHASE : IN std_logic_vector(7 downto 0);
		CLOCK : IN std_logic;
		CLOCK_ENABLE : IN std_logic;
		RESET : IN std_logic;          
		OUTPUT : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

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



	signal SOUND : std_logic_vector(7 downto 0);
	signal CLOCK_ENABLE : std_logic;
	signal MODULATOR_ENABLE1 : std_logic;
	signal MODULATOR_ENABLE2 : std_logic;
	
	signal SINE : std_logic_vector(7 downto 0);
	signal SQUARE : std_logic_vector(7 downto 0);
	signal SAW : std_logic_vector(7 downto 0);
	signal TRIANGLE : std_logic_vector(7 downto 0);
	signal MODULATOR : std_logic_vector(7 downto 0);
	signal ADSR : std_logic_vector(7 downto 0);
	signal clk_42Mhz : std_logic;
	
begin
	
	Inst_dcm_42Mhz: dcm_42Mhz PORT MAP(
		CLKIN_IN => clk,
		RST_IN => '0',
		CLKFX_OUT => clk_42Mhz
	);

	Inst_Clock_Divider: Clock_Divider PORT MAP(
		CLOCK => clk_42Mhz,
		CLOCK_ENABLE => '1',
		DIVISOR => x"42",
		OUTPUT => CLOCK_ENABLE
	);
	
	Inst_Tone_Mixer: Tone_Mixer PORT MAP(
		IN_A => SINE,
		IN_B => SAW,
		IN_C => TRIANGLE,
		IN_D => SQUARE,
		LEVEL_A => x"FF",
		LEVEL_B => x"FF",
		LEVEL_C => x"FF",
		LEVEL_D => x"FF",
		MODULATOR_A => MODULATOR,
		MODULATOR_A_LEVEL => x"FF",
		MODULATOR_B => ADSR,
		MODULATOR_B_LEVEL => x"FF",
		OUTPUT => SOUND_OUT,
		ENABLED_INPUTS => "0001",
		CLOCK => clk_42Mhz
	);


	
	Inst_Envelope_Generator: Envelope_Generator PORT MAP(
		CLOCK => clk_42Mhz,
		ATTACK => x"40",
		DECAY => x"FF",
		SUSTAIN => x"40",
		RELEASE => x"FF",
		CLOCK_ENABLE => CLOCK_ENABLE,
		OUTPUT => ADSR
	);
	Modulator_Sine_Generator: Sine_Generator PORT MAP(
		HARMONIC => x"1",
		PHASE => x"00",
		CLOCK => clk_42Mhz,
		CLOCK_ENABLE => MODULATOR_ENABLE2,
		RESET => '0',
		OUTPUT => MODULATOR
	);
	
	Modulator_Clock_Divider1: Clock_Divider PORT MAP(
		CLOCK => clk_42Mhz,
		CLOCK_ENABLE => MODULATOR_ENABLE1,
		DIVISOR => x"0F",
		OUTPUT => MODULATOR_ENABLE2
	);
	
	Modulator_Clock_Divider2: Clock_Divider PORT MAP(
		CLOCK => clk_42Mhz,
		CLOCK_ENABLE => CLOCK_ENABLE,
		DIVISOR => x"FF",
		OUTPUT => MODULATOR_ENABLE1
	);
	
	Inst_Sine_Generator: Sine_Generator PORT MAP(
		HARMONIC => x"1",
		PHASE => x"00",
		CLOCK => clk_42Mhz,
		CLOCK_ENABLE => CLOCK_ENABLE,
		RESET => '0',
		OUTPUT => SINE
	);
	
	Inst_Square_Generator: Square_Generator PORT MAP(
		HARMONIC => x"1",
		PHASE => x"00",
		CLOCK => clk_42Mhz,
		CLOCK_ENABLE => CLOCK_ENABLE,
		RESET => '0',
		OUTPUT => SQUARE
	);
	
	Inst_Sawtooth_Generator: Sawtooth_Generator PORT MAP(
		HARMONIC => x"3",
		PHASE => x"80",
		CLOCK => clk_42Mhz,
		CLOCK_ENABLE => CLOCK_ENABLE,
		RESET => '0',
		OUTPUT => SAW
	);
	
	Inst_Triangle_Generator: Triangle_Generator PORT MAP(
		HARMONIC => x"1",
		PHASE => X"00",
		CLOCK => clk_42Mhz,
		CLOCK_ENABLE => CLOCK_ENABLE,
		RESET => '0',
		OUTPUT => TRIANGLE
	);
	
end Behavioral;

