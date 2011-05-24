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
library UNISIM;
use UNISIM.VComponents.all;

entity Tone_Mixer is
    Port ( IN_A : in  STD_LOGIC_VECTOR (7 downto 0);
           IN_B : in  STD_LOGIC_VECTOR (7 downto 0);
           IN_C : in  STD_LOGIC_VECTOR (7 downto 0);
           IN_D : in  STD_LOGIC_VECTOR (7 downto 0);
			  LEVEL_A : in std_logic_vector(7 downto 0);
			  LEVEL_B : in std_logic_vector(7 downto 0);
			  LEVEL_C : in std_logic_vector(7 downto 0);
			  LEVEL_D : in std_logic_vector(7 downto 0);
           OUTPUT : out  STD_LOGIC_VECTOR (7 downto 0);
           ENABLED_INPUTS : in  STD_LOGIC_VECTOR (3 downto 0);
           CLOCK : in  STD_LOGIC
			  );
end Tone_Mixer;

architecture Behavioral of Tone_Mixer is




signal SELECT_SIGNAL : STD_LOGIC_VECTOR(2 downto 0) := "000";
signal NUM_SIGNALS : STD_LOGIC_VECTOR(2 downto 0);
--Multiplier In/Outs
signal MULT_A   : STD_LOGIC_VECTOR (17 downto 0);
signal MULT_B   : STD_LOGIC_VECTOR (17 downto 0);
signal MULT_OUT : STD_LOGIC_VECTOR (35 downto 0);

signal MULT_A_MIX : STD_LOGIC_VECTOR (17 downto 0);
signal MULT_B_MIX : STD_LOGIC_VECTOR (17 downto 0);
signal MULT_OUT_MIX : STD_LOGIC_VECTOR (35 downto 0);

signal MULT_SELECT : STD_LOGIC_VECTOR (2 downto 0);


--Internal divided version of input signals
signal INT_1	 : STD_LOGIC_VECTOR (17 downto 0);
signal INT_2	 : STD_LOGIC_VECTOR (17 downto 0);
signal INT_3	 : STD_LOGIC_VECTOR (17 downto 0);
signal INT_4	 : STD_LOGIC_VECTOR (17 downto 0);

signal PRE_A : STD_LOGIC_VECTOR (7 downto 0);
signal PRE_B : STD_LOGIC_VECTOR (7 downto 0);
signal PRE_C : STD_LOGIC_VECTOR (7 downto 0);
signal PRE_D : STD_LOGIC_VECTOR (7 downto 0);

begin


process(CLOCK)
	begin
		if(CLOCK'event and CLOCK ='1' ) then
			if(ENABLED_INPUTS(0) = '1') then
				INT_1(7 downto 0) <= IN_A(7 downto 0);
				INT_1(17 downto 8) <="0000000000";
			else
				INT_1(17 downto 0) <="000000000000000000";
			end if;
			
			if(ENABLED_INPUTS(1) = '1') then
				INT_2(7 downto 0) <= IN_B(7 downto 0);
				INT_2(17 downto 8) <="0000000000";
			else
				INT_2(17 downto 0) <="000000000000000000";
			end if;
			
			if(ENABLED_INPUTS(2) = '1') then
				INT_3(7 downto 0) <= IN_C(7 downto 0);
				INT_3(17 downto 8) <="0000000000";
			else
				INT_3(17 downto 0) <="000000000000000000";
			end if;
			
			if(ENABLED_INPUTS(3) = '1') then
				INT_4(7 downto 0) <= IN_D(7 downto 0);
				INT_4(17 downto 8) <="0000000000";
			else
				INT_4(17 downto 0) <="000000000000000000";
			end if;
			
		end if;
	end process;


   MULT18X18S_inst : MULT18X18S
   port map (
      P => MULT_OUT,    -- 36-bit multiplier output
      A => MULT_A,    -- 18-bit multiplier input
      B => MULT_B,    -- 18-bit multiplier input
      C => CLOCK,    -- Clock input
      CE => '1',  -- Clock enable input
      R => '0'     -- Synchronous reset input
   );


	process(CLOCK)
	begin
		if(CLOCK'event and CLOCK ='1') then
			MULT_A_MIX <= std_logic_vector(unsigned(INT_1)+unsigned(INT_2)+unsigned(INT_3)+unsigned(INT_4));
			--MULT_A <= "000000000000000000";
			OUTPUT <= MULT_OUT_MIX(15 downto 8);
		end if;
	end process;


	MULT_A <= MULT_A_MIX;
	MULT_B <= MULT_B_MIX;
	MULT_OUT_MIX<= MULT_OUT;--(15 downto 8);
--	--Manage the input and output of the multiplexer
--	process(CLOCK)
--	begin
--		if(CLOCK'event and CLOCK ='1') then
--			MULT_SELECT <= std_logic_vector(unsigned(MULT_SELECT)+1);
--			case MULT_SELECT is
--				when "000" =>
--					MULT_A <= MULT_A_MIX;
--					MULT_B <= MULT_B_MIX;
--					PRE_D<= MULT_OUT(15 downto 8);
--				
--				when "001" =>
--					MULT_A <= INT_1;
--					MULT_B(7 downto 0) <= LEVEL_A;
--					MULT_B(17 downto 8)<= "0000000000";
--					MULT_OUT_MIX<= MULT_OUT;
--					
--				when "010" =>
--					MULT_A <= INT_2;
--					MULT_B(7 downto 0) <= LEVEL_B;
--					MULT_B(17 downto 8)<= "0000000000";
--					PRE_A <= MULT_OUT(15 downto 8);
--					
--				when "011" =>
--					MULT_A <= INT_3;
--					MULT_B(7 downto 0) <= LEVEL_C;
--					MULT_B(17 downto 8)<= "0000000000";
--					PRE_B <= MULT_OUT(15 downto 8);
--					
--				when "100" =>
--					MULT_A <= INT_4;
--					MULT_B(7 downto 0) <= LEVEL_D;
--					MULT_B(17 downto 8)<= "0000000000";
--					PRE_C <= MULT_OUT(15 downto 8);
--				
--				when "101"=>
--					MULT_SELECT <= "000" ;
--				
--				when "110" =>
--					MULT_SELECT <= "000";
--				
--				when "111" =>
--					MULT_SELECT <= "000";
--				
--				when others =>
--					MULT_SELECT <= "000";
--			end case;
--		end if;
--	end process;

	--MULT_A(17 downto 10)<="00000000";

	--Count the nuber of enabled inputs
	process(CLOCK)
	begin
		if(CLOCK'event and CLOCK ='1') then
			case ENABLED_INPUTS is
				when "0000" =>
					MULT_B_MIX <= "000000000000000000";
				when "0001" =>
					MULT_B_MIX <= "000000000100000000";
				when "0010" =>
					MULT_B_MIX <= "000000000100000000";
				when "0011" =>
					MULT_B_MIX <= "000000000000000000";
				when "0100" =>
					MULT_B_MIX <= "000000000100000000";
				when "0101" =>
					MULT_B_MIX <= "000000000010000000";
				when "0110" =>
					MULT_B_MIX <= "000000000010000000";
				when "0111" =>
					MULT_B_MIX <= "000000000001010101";
				when "1000" =>
					MULT_B_MIX <= "000000000100000000";
				when "1001" =>
					MULT_B_MIX <= "000000000010000000";
				when "1010" =>
					MULT_B_MIX <= "000000000010000000";
				when "1011" =>
					MULT_B_MIX <= "000000000001010101";
				when "1100" =>
					MULT_B_MIX <= "000000000010000000";
				when "1101" =>
					MULT_B_MIX <= "000000000001010101";
				when "1110" =>
					MULT_B_MIX <= "000000000001010101";
				when "1111" =>
					MULT_B_MIX <= "000000000001000000";
				when others=>
					MULT_B_MIX <= "000000000000000000";
			end case;
		end if;
	end process;
end Behavioral;

