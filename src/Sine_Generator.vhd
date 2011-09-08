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
use IEEE.NUMERIC_STD.ALL;

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
           CLOCK_DIVIDE : in  STD_LOGIC_VECTOR (11 downto 0));
end Sine_Generator;

architecture Behavioral of Sine_Generator is
--========COMPONENTS========
COMPONENT Sine_Ram
  PORT (
    clka : IN STD_LOGIC;
    addra : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
  );
END COMPONENT;
--========/COMPONENTS========

--========SIGNALS========
signal address_counter : std_logic_vector(9 downto 0);
signal divide_counter : std_logic_vector(11 downto 0);
--========/SIGNALS========
begin

sine_gen_ram : Sine_Ram
  PORT MAP (
    clka => CLOCK,
    addra => address_counter,
    douta => OUTPUT
  );

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
		end if;
	end if;
end process;
end Behavioral;

