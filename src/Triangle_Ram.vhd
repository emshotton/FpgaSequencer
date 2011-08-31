----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:55:21 05/20/2011 
-- Design Name: 
-- Module Name:    Triangle_Ram - Behavioral 
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

use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Triangle_Ram is
	Port (CLOCK : in  STD_LOGIC;
         READ_ADDRESS : in  STD_LOGIC_VECTOR (7 downto 0);
         OUTPUT_DATA : out  STD_LOGIC_VECTOR (7 downto 0));
end Triangle_Ram;

architecture Behavioral of Triangle_Ram is

	constant ADDR_WIDTH : integer := 8;
	constant DATA_WIDTH : integer := 8; 
	type RAM_DATA is array (2**ADDR_WIDTH-1 downto 0) of std_logic_vector (DATA_WIDTH-1 downto 0);
	signal RAM: RAM_DATA := (x"02",x"04",x"06",x"08",x"0a",x"0c",x"0e",x"10",x"12",x"14",x"16",x"18",x"1a",x"1c",x"1e",x"20",x"22",x"24",x"26",x"28",x"2a",x"2c",x"2e",x"30",x"32",x"34",x"36",x"38",x"3a",x"3c",x"3e",x"40",x"42",x"44",x"46",x"48",x"4a",x"4c",x"4e",x"50",x"52",x"54",x"56",x"58",x"5a",x"5c",x"5e",x"60",x"62",x"64",x"66",x"68",x"6a",x"6c",x"6e",x"70",x"72",x"74",x"76",x"78",x"7a",x"7c",x"7e",x"80",x"82",x"84",x"86",x"88",x"8a",x"8c",x"8e",x"90",x"92",x"94",x"96",x"98",x"9a",x"9c",x"9e",x"a0",x"a2",x"a4",x"a6",x"a8",x"aa",x"ac",x"ae",x"b0",x"b2",x"b4",x"b6",x"b8",x"ba",x"bc",x"be",x"c0",x"c2",x"c4",x"c6",x"c8",x"ca",x"cc",x"ce",x"d0",x"d2",x"d4",x"d6",x"d8",x"da",x"dc",x"de",x"e0",x"e2",x"e4",x"e6",x"e8",x"ea",x"ec",x"ee",x"f0",x"f2",x"f4",x"f6",x"f8",x"fa",x"fc",x"fe",x"ff",x"fe",x"fc",x"fa",x"f8",x"f6",x"f4",x"f2",x"f0",x"ee",x"ec",x"ea",x"e8",x"e6",x"e4",x"e2",x"e0",x"de",x"dc",x"da",x"d8",x"d6",x"d4",x"d2",x"d0",x"ce",x"cc",x"ca",x"c8",x"c6",x"c4",x"c2",x"c0",x"be",x"bc",x"ba",x"b8",x"b6",x"b4",x"b2",x"b0",x"ae",x"ac",x"aa",x"a8",x"a6",x"a4",x"a2",x"a0",x"9e",x"9c",x"9a",x"98",x"96",x"94",x"92",x"90",x"8e",x"8c",x"8a",x"88",x"86",x"84",x"82",x"80",x"7e",x"7c",x"7a",x"78",x"76",x"74",x"72",x"70",x"6e",x"6c",x"6a",x"68",x"66",x"64",x"62",x"60",x"5e",x"5c",x"5a",x"58",x"56",x"54",x"52",x"50",x"4e",x"4c",x"4a",x"48",x"46",x"44",x"42",x"40",x"3e",x"3c",x"3a",x"38",x"36",x"34",x"32",x"30",x"2e",x"2c",x"2a",x"28",x"26",x"24",x"22",x"20",x"1e",x"1c",x"1a",x"18",x"16",x"14",x"12",x"10",x"0e",x"0c",x"0a",x"08",x"06",x"04",x"02",x"00");

begin


	process (CLOCK)
	begin
		if (CLOCK'event and CLOCK = '1') then
			OUTPUT_DATA <= RAM(conv_integer(READ_ADDRESS));
		end if;
	end process;

end Behavioral;

