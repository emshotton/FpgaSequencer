----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:51:59 09/07/2011 
-- Design Name: 
-- Module Name:    Note_Resolver - Behavioral 
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

entity Note_Resolver is
    Port ( CLOCK : in  STD_LOGIC;
           RESET : in  STD_LOGIC;
           MIDI_NOTE_IN : in  STD_LOGIC_VECTOR (6 downto 0);
           ADDRESS_JUMP_OUT : out  STD_LOGIC_VECTOR (3 downto 0);
           CLOCK_DIVIDE_OUT : out  STD_LOGIC_VECTOR (10 downto 0));
end Note_Resolver;

architecture Behavioral of Note_Resolver is

begin


end Behavioral;

