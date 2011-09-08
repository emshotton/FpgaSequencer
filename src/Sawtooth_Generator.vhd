----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:54:20 09/08/2011 
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
    Port ( CLOCK : in  STD_LOGIC;
           RESET : in  STD_LOGIC;
           OUTPUT : out  STD_LOGIC_VECTOR (15 downto 0);
           ADDRESS_JUMP_A : in  STD_LOGIC_VECTOR (3 downto 0);
           ADDRESS_JUMP_B : in  STD_LOGIC_VECTOR (3 downto 0);
           CLOCK_DIVIDE : in  STD_LOGIC_VECTOR (11 downto 0));
end Sawtooth_Generator;

architecture Behavioral of Sawtooth_Generator is

signal address_counter : std_logic_vector(9 downto 0);
signal divide_counter : std_logic_vector(11 downto 0);

begin


process (CLOCK, RESET)
begin
	if (RESET = '1') then
		address_counter <= "0000000000";
		divide_counter <=  "000000000000";
	elsif(CLOCK'event and CLOCK ='1') then
		divide_counter <= std_logic_vector(unsigned(divide_counter) +1);
		if(divide_counter >= CLOCK_DIVIDE) then
			address_counter <= std_logic_vector(unsigned(address_counter) + unsigned(ADDRESS_JUMP_A) + unsigned(ADDRESS_JUMP_B));
			divide_counter <= "000000000000";
			OUTPUT(15 downto 6) <= address_counter;
			OUTPUT(5 downto 0) <= "000000";
		end if;
	end if;
end process;

end Behavioral;

