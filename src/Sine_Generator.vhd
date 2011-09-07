----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:31:59 09/05/2011 
-- Design Name: 
-- Module Name:    Sine_Generator - Behavioral 
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

entity Sine_Generator is
    Port ( CLOCK : in  STD_LOGIC;
           RESET : in  STD_LOGIC;
           OUTPUT : out  STD_LOGIC_VECTOR (15 downto 0);
           ADDRESS_JUMP_A : in  STD_LOGIC_VECTOR (3 downto 0);
           ADDRESS_JUMP_B : in  STD_LOGIC_VECTOR (3 downto 0);
           CLOCK_DIVIDE : in  STD_LOGIC_VECTOR (10 downto 0));
end Sine_Generator;

architecture Behavioral of Sine_Generator is
--========MODULES========

--========/MODULES========

--========SIGNALS========
signal address_counter : std_logic_vector(7 downto 0);
signal divide_counter : std_logic_vector(10 downto 0);
--========/SIGNALS========
begin

process (CLOCK, RESET)
begin
	if (RESET = '1') then
		
	elsif(CLOCK'event and CLOCK ='1') then
		divide_couner <= divide_counter +1;
		if(divide_counter >= CLOCK_DIVIDE) then
			address_counter <= address_counter+ADDRESS_JUMP_A + ADDRESS_JUMP_B;
			divide_counter <= "00000000000";
		end if;
	end if;
end process;
end Behavioral;

