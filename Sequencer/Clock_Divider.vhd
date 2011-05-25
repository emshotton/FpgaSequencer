----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:13:06 05/23/2011 
-- Design Name: 
-- Module Name:    Clock_Divider - Behavioral 
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

entity Clock_Divider is
    Port ( CLOCK : in  STD_LOGIC;
			  DIVISOR : in STD_LOGIC_VECTOR(7 downto 0);
           OUTPUT : out  STD_LOGIC);
end Clock_Divider;

architecture Behavioral of Clock_Divider is

	signal COUNTER : std_logic_vector(7 downto 0) := x"00";

begin


	process(CLOCK)
	begin
		if(CLOCK'event and CLOCK ='1') then
			COUNTER <= std_logic_vector(unsigned(COUNTER)+1);
			OUTPUT <= '0';
			if (unsigned(COUNTER) = unsigned(DIVISOR)) then
				COUNTER <= x"00";
				OUTPUT <= '1';
			end if;
		end if;
	end process;

end Behavioral;

