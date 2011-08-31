----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:54:18 05/20/2011 
-- Design Name: 
-- Module Name:    Sawtooth_Generator - Behavioral 
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

entity Sawtooth_Generator is
    Port ( HARMONIC : in  STD_LOGIC_VECTOR (3 downto 0);
			  PHASE : in STD_LOGIC_VECTOR (7 downto 0);
           CLOCK : in  STD_LOGIC;
           CLOCK_ENABLE : in  STD_LOGIC;
           RESET : in  STD_LOGIC;
           OUTPUT : out  STD_LOGIC_VECTOR (7 downto 0));
end Sawtooth_Generator;

architecture Behavioral of Sawtooth_Generator is

signal COUNTER : STD_LOGIC_VECTOR(7 downto 0):= "00000000";
signal PHASE_DIFF : std_logic_vector(7 downto 0):= "00000000";
signal PHASE_VALUE: std_logic_vector(7 downto 0):= "00000000";
	
begin


	process(CLOCK)
	begin
		if(CLOCK'event and CLOCK = '1' and CLOCK_ENABLE = '1') then
			PHASE_DIFF <= std_logic_vector(unsigned(PHASE) - unsigned(PHASE_VALUE));
			PHASE_VALUE <= PHASE;
		end if;
	end process;
	
	OUTPUT <= COUNTER;

	process(CLOCK,RESET)
	begin
		if (RESET ='1') then
			COUNTER <= x"00";
		elsif (CLOCK'event and CLOCK ='1' and CLOCK_ENABLE = '1') then
			COUNTER <= STD_LOGIC_VECTOR(unsigned(COUNTER) + unsigned(HARMONIC) + unsigned(PHASE_DIFF));
		end if;
	end process;
end Behavioral;

