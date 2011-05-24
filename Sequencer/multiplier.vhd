----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:45:34 05/23/2011 
-- Design Name: 
-- Module Name:    multiplier - Behavioral 
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
library UNISIM;
use UNISIM.VComponents.all;

entity multiplier is
    Port ( CLOCK : in  STD_LOGIC;
           A : in  STD_LOGIC_VECTOR (17 downto 0);
           B : in  STD_LOGIC_VECTOR (17 downto 0);
           CLOCK_ENABLE : in  STD_LOGIC;
           RESET : in  STD_LOGIC;
           OUTPUT : out  STD_LOGIC_VECTOR (35 downto 0));
end multiplier;

architecture Behavioral of multiplier is

signal MIX : STD_LOGIC_VECTOR(35 downto 0);

begin

	OUTPUT(7 downto 0)<= MIX(15 downto 8);
	OUTPUT(35 downto 8)<="0000000000000000000000000000";

   MULT18X18S_inst : MULT18X18S
   port map (
      P => MIX,    -- 36-bit multiplier output
      A => A,    -- 18-bit multiplier input
      B => B,    -- 18-bit multiplier input
      C => CLOCK,    -- Clock input
      CE => CLOCK_ENABLE,  -- Clock enable input
      R => RESET     -- Synchronous reset input
   );
	
	
end Behavioral;

