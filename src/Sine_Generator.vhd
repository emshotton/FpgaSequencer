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

begin


end Behavioral;

