----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:50:47 05/26/2011 
-- Design Name: 
-- Module Name:    Envelope_Generator - Behavioral 
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

entity Envelope_Generator is
    Port ( CLOCK : in  STD_LOGIC;
           ATTACK : in  STD_LOGIC_VECTOR (7 downto 0);
           DECAY : in  STD_LOGIC_VECTOR (7 downto 0);
           SUSTAIN : in  STD_LOGIC_VECTOR (7 downto 0);
           RELEASE : in  STD_LOGIC_VECTOR (7 downto 0);
           CLOCK_ENABLE : in  STD_LOGIC;
           OUTPUT : out  STD_LOGIC_VECTOR (7 downto 0));
end Envelope_Generator;

architecture Behavioral of Envelope_Generator is

	COMPONENT Clock_Divider
	PORT(
		CLOCK : IN std_logic;
		CLOCK_ENABLE : IN std_logic;
		DIVISOR : IN std_logic_vector(7 downto 0);          
		OUTPUT : OUT std_logic
		);
	END COMPONENT;
	
	signal ENVELOPE_POSITION	: std_logic_vector(3 downto 0) := x"0";
	--latches for the inputs
	signal A : std_logic_vector(7 downto 0);
	signal D : std_logic_vector(7 downto 0);
	signal S : std_logic_vector(7 downto 0);
	signal S_END : unsigned(17 downto 0); --The point at which the sustain ends and release kicks in
	signal S_END_SET : std_logic := '0';
	signal R : std_logic_vector(7 downto 0);
	
	signal A_COUNTER : unsigned(7 downto 0);
	signal D_COUNTER : unsigned(7 downto 0);
	signal R_COUNTER : unsigned(7 downto 0);
	
	signal A_CLOCK : std_logic;
	signal D_CLOCK : std_logic;
	signal R_CLOCK : std_logic;
	
	signal COUNTER : unsigned(17 downto 0);
	
begin




	--NOTE: ADSR done subtly differnet to normal
	--		  ADR defines rate of change of level 
	--		  !NOT! length of time over which the 
	--		  level's transition to a specific value
	
	
	Attack_Divider: Clock_Divider PORT MAP(
		CLOCK => CLOCK,
		CLOCK_ENABLE => CLOCK_ENABLE,
		DIVISOR => A,
		OUTPUT => A_CLOCK
	);
	Decay_Divider: Clock_Divider PORT MAP(
		CLOCK => CLOCK,
		CLOCK_ENABLE => CLOCK_ENABLE,
		DIVISOR => D,
		OUTPUT => D_CLOCK
	);
	Release_Divider: Clock_Divider PORT MAP(
		CLOCK => CLOCK,
		CLOCK_ENABLE => CLOCK_ENABLE,
		DIVISOR => R,
		OUTPUT => R_CLOCK
	);




process(CLOCK)
begin

	if (CLOCK'event and CLOCK ='1' and CLOCK_ENABLE = '1') then
	
		COUNTER <= COUNTER +1;
		
		if ((ENVELOPE_POSITION = x"1") or (ENVELOPE_POSITION = x"1") or (ENVELOPE_POSITION = x"2")) then
			if ( (R_CLOCK = '1') and (R_COUNTER < unsigned(S)) ) then
				R_COUNTER <= R_COUNTER +1;
			elsif ((R_COUNTER = unsigned(S)) and (S_END_SET = '0')) then
				S_END <= 196608 - COUNTER;
				S_END_SET <= '1';
			end if;
		end if;
		--	if (A_CLOCK => '1') then
		
		--TO calculate the release time count how long it takes 
		--for the release counter to count up to its starting 
		--level(the sustain level) during the Attack/decay/
		--sustain cycles.
		
		
		case ENVELOPE_POSITION is
			when x"0" =>
				--Latch the inputs and do some calculations
				ENVELOPE_POSITION <= std_logic_vector(unsigned(ENVELOPE_POSITION) + 1);
				A<=ATTACK;
				D<=DECAY;
				S<=SUSTAIN;
				R<=RELEASE;
				
				A_COUNTER <= x"00";
				D_COUNTER <= x"FF";
				R_COUNTER <= x"00";
				
				S_END <= "000000000000000000";
				S_END_SET<='0';
				
				COUNTER <= "000000000000000000";
				
				ENVELOPE_POSITION <= x"1";
			when x"1" =>
				OUTPUT <= std_logic_vector(A_COUNTER);
				if (A_CLOCK = '1') then
					A_COUNTER<= A_COUNTER +1;
					if (A_COUNTER = x"FF") then
						ENVELOPE_POSITION <= x"2";
						A_COUNTER <= x"00";
					end if;
				end if;
			when x"2" =>
				OUTPUT <= std_logic_vector(D_COUNTER);
				if (D_CLOCK = '1') then
					D_COUNTER<= D_COUNTER -1;
					if (D_COUNTER < unsigned(S)) then
						ENVELOPE_POSITION <= x"3";
						D_COUNTER <= x"FF";
					end if;
				end if;
			when x"3"=>
				if (COUNTER < S_END)then
					OUTPUT <= S;
				else
					ENVELOPE_POSITION <= x"4";
				end if;
			when x"4"=>
				OUTPUT <= std_logic_vector(R_COUNTER);
				if (R_CLOCK = '1') then
					R_COUNTER<= R_COUNTER -1;
					if (R_COUNTER = 0) then
						ENVELOPE_POSITION <= x"0";
					end if;
				end if;
			when others=>
			--OH GOD, if things get to this point you're pretty much screwed
		end case;
	end if;
end process;


end Behavioral;

