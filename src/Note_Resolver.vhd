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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Note_Resolver is
    Port ( CLOCK : in  STD_LOGIC;
           RESET : in  STD_LOGIC;
           MIDI_NOTE_IN : in  STD_LOGIC_VECTOR (6 downto 0);
           ADDRESS_JUMP_OUT : out  STD_LOGIC_VECTOR (3 downto 0);
           CLOCK_DIVIDE_OUT : out  STD_LOGIC_VECTOR (11 downto 0));
end Note_Resolver;

architecture Behavioral of Note_Resolver is
--========COMPONENTS========
COMPONENT Note_Ram
  PORT (
    clka : IN STD_LOGIC;
    addra : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
  );
END COMPONENT;
--========/COMPONENTS========

--========SIGNALS========
signal memory_out : std_logic_vector(15 downto 0);
--========/SIGNALS========
begin


CLOCK_DIVIDE_OUT <= memory_out(15 downto 4);
ADDRESS_JUMP_OUT <= memory_out(3 downto 0);

note_ram_inst: Note_Ram
  PORT MAP (
    clka => CLOCK,
    addra => MIDI_NOTE_IN,
    douta => memory_out
  );

end Behavioral;