----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:08:13 05/23/2011 
-- Design Name: 
-- Module Name:    Tone_Mixer - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Tone_Mixer is
    Port ( IN_A : in  STD_LOGIC_VECTOR (7 downto 0);
           IN_B : in  STD_LOGIC_VECTOR (7 downto 0);
           IN_C : in  STD_LOGIC_VECTOR (7 downto 0);
           IN_D : in  STD_LOGIC_VECTOR (7 downto 0);
			  LEVEL_A : in std_logic_vector(7 downto 0);
			  LEVEL_B : in std_logic_vector(7 downto 0);
			  LEVEL_C : in std_logic_vector(7 downto 0);
			  LEVEL_D : in std_logic_vector(7 downto 0);
			  MODULATOR_A : in std_logic_vector(7 downto 0);
			  MODULATOR_A_LEVEL : in std_logic_vector(7 downto 0);
			  MODULATOR_B : in std_logic_vector(7 downto 0);
			  MODULATOR_B_LEVEL : in std_logic_vector(7 downto 0);
           OUTPUT : out  STD_LOGIC_VECTOR (7 downto 0);
           ENABLED_INPUTS : in  STD_LOGIC_VECTOR (3 downto 0);
           CLOCK : in  STD_LOGIC
			  );
end Tone_Mixer;

architecture Behavioral of Tone_Mixer is


signal SELECT_SIGNAL : STD_LOGIC_VECTOR(2 downto 0) := "000";
signal NUM_SIGNALS : STD_LOGIC_VECTOR(2 downto 0);
--Multiplier In/Outs
signal MULT_A   : STD_LOGIC_VECTOR (15 downto 0);
signal MULT_B   : STD_LOGIC_VECTOR (7 downto 0);
signal MULT_OUT : STD_LOGIC_VECTOR (15 downto 0);

signal MULT_A_MIX : STD_LOGIC_VECTOR (15 downto 0);
signal MULT_B_MIX : STD_LOGIC_VECTOR (7 downto 0);
signal MULT_OUT_MIX : STD_LOGIC_VECTOR (7 downto 0);

signal MULT_SELECT : STD_LOGIC_VECTOR (4 downto 0);


--Internal version of input signals
signal POST_A	 : STD_LOGIC_VECTOR (15 downto 0);
signal POST_B	 : STD_LOGIC_VECTOR (15 downto 0);
signal POST_C	 : STD_LOGIC_VECTOR (15 downto 0);
signal POST_D	 : STD_LOGIC_VECTOR (15 downto 0);

signal PRE_A : STD_LOGIC_VECTOR (7 downto 0);
signal PRE_B : STD_LOGIC_VECTOR (7 downto 0);
signal PRE_C : STD_LOGIC_VECTOR (7 downto 0);
signal PRE_D : STD_LOGIC_VECTOR (7 downto 0);


signal PRE_OUT	 : STD_LOGIC_VECTOR (7 downto 0);
--Modulator A signals
signal MOD_A_A : STD_LOGIC_VECTOR (7 downto 0);
signal MOD_A_B : STD_LOGIC_VECTOR (7 downto 0);
signal MOD_A_OUT : STD_LOGIC_VECTOR (7 downto 0);
signal MOD_A_LEVEL : STD_LOGIC_VECTOR (7 downto 0);
--Modulator B signals
signal MOD_B_A : STD_LOGIC_VECTOR (7 downto 0);
signal MOD_B_B : STD_LOGIC_VECTOR (7 downto 0);
signal MOD_B_OUT : STD_LOGIC_VECTOR (7 downto 0);
signal MOD_B_LEVEL : STD_LOGIC_VECTOR (7 downto 0);

COMPONENT multiplier
  PORT (
    clk : IN STD_LOGIC;
    a : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    p : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
  );
END COMPONENT;

begin

your_instance_name : multiplier
  PORT MAP (
    clk => CLOCK,
    a => MULT_A,
    b => MULT_B,
    p => MULT_OUT
  );
  
  
--	OUT_A <= POST_A;--MULT_B_MIX;
	--OUT_B(7 downto 0) <= POST_B;--MULT_A_MIX;
--	OUT_C <= POST_C;
--	OUT_D <= POST_D;

	
	--The mixer pipeline
	process(CLOCK)
	begin
	if(CLOCK'event and CLOCK ='1') then
			MULT_SELECT <= std_logic_vector(unsigned(MULT_SELECT)+1);
			case MULT_SELECT is
				when "00000" =>	--Grab and latch all the inputs
					if (ENABLED_INPUTS(0) = '1') then 
						PRE_A <=IN_A;
					else
						PRE_A<="00000000";
					end if;
					if (ENABLED_INPUTS(1) = '1') then 
						PRE_B <=IN_B;
					else
						PRE_B<="00000000";
					end if;
					if (ENABLED_INPUTS(2) = '1') then 
						PRE_C <=IN_C;
					else
						PRE_C<="00000000";
					end if;
					if (ENABLED_INPUTS(3) = '1') then 
						PRE_D <=IN_D;
					else
						PRE_D<="00000000";
					end if;
					--the modulator value
					MOD_A_A <= MODULATOR_A;
					MOD_A_LEVEL <= MODULATOR_A_LEVEL;
					MOD_B_A <= MODULATOR_B;
					MOD_B_LEVEL <= MODULATOR_B_LEVEL;
				when "00001" =>	--Begin signal A multiplication
					MULT_A(7 downto 0) <= PRE_A;
					MULT_A(15 downto 8) <= x"00";
					MULT_B <= LEVEL_A;
				when "00010" => --Begin signal B multiplication
					MULT_A(7 downto 0) <= PRE_B;
					MULT_A(15 downto 8) <= x"00";
					MULT_B <= LEVEL_B;
				when "00011" => --Begin signal C multiplication and finish signal A multiplication 
					MULT_A(7 downto 0) <= PRE_C;
					MULT_A(15 downto 8) <= x"00";
					MULT_B<= LEVEL_C;
				when "00100" => --Begin signal C multiplication and finish signal B multiplication
					MULT_A(7 downto 0) <= PRE_D;
					MULT_A(15 downto 8) <= x"00";
					MULT_B <= LEVEL_D;
				when "00101" => 
					POST_A(7 downto 0) <= MULT_OUT(15 downto 8);
					POST_A(15 downto 8) <= x"00";
					MULT_A(7 downto 0)<=MODULATOR_A;--MOD LEVEL A in
					MULT_A(15 downto 8)<= x"00";
					MULT_B<=MOD_A_LEVEL;
				when "00110"=> --Finish signal C multiplication
					POST_B(7 downto 0) <= MULT_OUT(15 downto 8);
					POST_B(15 downto 8) <= x"00";
					MULT_A(7 downto 0)<=MODULATOR_B; --MOD LEVEL B in
					MULT_A(15 downto 8)<= x"00";
					MULT_B<=MOD_B_LEVEL;
				when "00111"=> --Finish signal D multiplication
					POST_C(7 downto 0) <= MULT_OUT(15 downto 8);
					POST_C(15 downto 8) <= x"00";
				when "01000"=>
					POST_D(7 downto 0) <= MULT_OUT(15 downto 8);
					POST_D(15 downto 8) <= x"00";
				when "01001"=>
					MULT_A_MIX <= std_logic_vector(unsigned(POST_A)+unsigned(POST_B)+unsigned(POST_C)+unsigned(POST_D));
					MOD_A_A <= std_logic_vector(255 - unsigned(MULT_OUT(15 downto 8))); --MOD LEVEL A out
				when "01010"=>
					MOD_B_A <= std_logic_vector(255 - unsigned(MULT_OUT(15 downto 8)));--MOD LEVEL B out
					MULT_A <= MULT_A_MIX;
					MULT_B <= MULT_B_MIX;
				when "01011"=>
				when "01100"=>
				when "01101"=>
				when "01110"=>
					MOD_A_B <= MULT_OUT(15 downto 8);
				when "01111"=>
					MULT_A(7 downto 0) <= MOD_A_A;
					MULT_A(15 downto 8) <= x"00";
					MULT_B <= MOD_A_B;
				when "10000"=>
				when "10001"=>
				when "10010"=>
				when "10011"=>
				MOD_B_B<=MULT_OUT(15 downto 8);
				when "10100"=>
				MULT_A(7 downto 0) <= MOD_B_A;
				MULT_A(15 downto 8) <= x"00";
				MULT_B <= MOD_B_B;
				when "10101"=>
				when "10110"=>
				when "10111"=>
				when "11000"=>
				OUTPUT<=MULT_OUT(15 downto 8);
					
				when others =>
					MULT_SELECT <= "00000";
			end case;
		end if;
	end process;
	

	--Count the nuber of enabled inputs
	process(CLOCK)
	begin
		if(CLOCK'event and CLOCK ='1') then
			case ENABLED_INPUTS is
				when "0000" =>
					MULT_B_MIX <= "00000000";
				when "0001" =>
					MULT_B_MIX <= "11111111";
				when "0010" =>
					MULT_B_MIX <= "11111111";
				when "0011" =>
					MULT_B_MIX <= "10000000";
				when "0100" =>
					MULT_B_MIX <= "11111111";
				when "0101" =>
					MULT_B_MIX <= "10000000";
				when "0110" =>
					MULT_B_MIX <= "10000000";
				when "0111" =>
					MULT_B_MIX <= "01010101";
				when "1000" =>
					MULT_B_MIX <= "11111111";
				when "1001" =>
					MULT_B_MIX <= "10000000";
				when "1010" =>
					MULT_B_MIX <= "10000000";
				when "1011" =>
					MULT_B_MIX <= "01010101";
				when "1100" =>
					MULT_B_MIX <= "11111111";
				when "1101" =>
					MULT_B_MIX <= "01010101";
				when "1110" =>
					MULT_B_MIX <= "01010101";
				when "1111" =>
					MULT_B_MIX <= "01000000";
				when others=>
					MULT_B_MIX <= "00000000";
			end case;
		end if;
	end process;
end Behavioral;

