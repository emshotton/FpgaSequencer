----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:10:28 05/20/2011 
-- Design Name: 
-- Module Name:    Triangle_Generator - Behavioral 
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

entity Triangle_Generator is
    Port ( HARMONIC : in  STD_LOGIC_VECTOR (3 downto 0);
			  PHASE : in STD_LOGIC_VECTOR (7 downto 0);
           CLOCK : in  STD_LOGIC;
           CLOCK_ENABLE : in  STD_LOGIC;
           RESET : in  STD_LOGIC;
           OUTPUT : out  STD_LOGIC_VECTOR (7 downto 0));
end Triangle_Generator;

architecture Behavioral of Triangle_Generator is

	COMPONENT Triangle_Ram
	PORT(
		CLOCK : IN std_logic;
		READ_ADDRESS : IN std_logic_vector(7 downto 0);          
		OUTPUT_DATA : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;
	
	signal POSITION_COUNTER : std_logic_vector(7 downto 0) := "00000000";
	signal PHASE_DIFF : std_logic_vector(7 downto 0):= "00000000";
	signal PHASE_VALUE: std_logic_vector(7 downto 0):= "00000000";
	
begin

	Inst_Triangle_Ram: Triangle_Ram PORT MAP(
		CLOCK => CLOCK,
		READ_ADDRESS => POSITION_COUNTER,
		OUTPUT_DATA => OUTPUT
	);
	
	
	process(CLOCK)
	begin
		if(CLOCK'event and CLOCK = '1' and CLOCK_ENABLE = '1') then
			PHASE_DIFF <= std_logic_vector(unsigned(PHASE) - unsigned(PHASE_VALUE));
			PHASE_VALUE <= PHASE;
		end if;
	end process;
	
	
	process(CLOCK,RESET)
	begin
		if (RESET = '1') then
			POSITION_COUNTER <= (others => '0');
		elsif(CLOCK'event and CLOCK ='1' and CLOCK_ENABLE = '1') then
			POSITION_COUNTER <= std_logic_vector(unsigned(POSITION_COUNTER) + unsigned(HARMONIC) + unsigned(PHASE_DIFF));
		end if;
	end process;

end Behavioral;

