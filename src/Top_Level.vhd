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
    Port ( CLOCK : in  STD_LOGIC;
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

	signal clk_42Mhz : std_logic;
	
begin
	
	Inst_dcm_42Mhz: dcm_42Mhz PORT MAP(
		CLKIN_IN => CLOCK,
		RST_IN => '0',
		CLKFX_OUT => clk_42Mhz
	);
	SOUND_OUT<= "00000000";
	
end Behavioral;

