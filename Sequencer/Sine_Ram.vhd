----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:20:10 05/10/2011 
-- Design Name: 
-- Module Name:    sine_ram - Behavioral 
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

entity sine_ram is
    Port ( CLOCK : in  STD_LOGIC;
           READ_ADDRESS : in  STD_LOGIC_VECTOR (7 downto 0);
           OUTPUT_DATA : out  STD_LOGIC_VECTOR (7 downto 0));
end sine_ram;

architecture Behavioral of sine_ram is
	constant ADDR_WIDTH : integer := 8;
	constant DATA_WIDTH : integer := 8; 
	type RAM_DATA is array (2**ADDR_WIDTH-1 downto 0) of std_logic_vector (DATA_WIDTH-1 downto 0);
	signal RAM: RAM_DATA := (x"7f",x"82",x"85",x"88",x"8b",x"8f",x"92",x"95",x"98",x"9b",x"9e",x"a1",x"a4",x"a7",x"aa",x"ad",x"b0",x"b3",x"b6",x"b8",x"bb",x"be",x"c1",x"c3",x"c6",x"c8",x"cb",x"cd",x"d0",x"d2",x"d5",x"d7",x"d9",x"db",x"dd",x"e0",x"e2",x"e4",x"e5",x"e7",x"e9",x"eb",x"ec",x"ee",x"ef",x"f1",x"f2",x"f4",x"f5",x"f6",x"f7",x"f8",x"f9",x"fa",x"fb",x"fb",x"fc",x"fd",x"fd",x"fe",x"fe",x"fe",x"fe",x"fe",x"ff",x"fe",x"fe",x"fe",x"fe",x"fe",x"fd",x"fd",x"fc",x"fb",x"fb",x"fa",x"f9",x"f8",x"f7",x"f6",x"f5",x"f4",x"f2",x"f1",x"ef",x"ee",x"ec",x"eb",x"e9",x"e7",x"e5",x"e4",x"e2",x"e0",x"dd",x"db",x"d9",x"d7",x"d5",x"d2",x"d0",x"cd",x"cb",x"c8",x"c6",x"c3",x"c1",x"be",x"bb",x"b8",x"b6",x"b3",x"b0",x"ad",x"aa",x"a7",x"a4",x"a1",x"9e",x"9b",x"98",x"95",x"92",x"8f",x"8b",x"88",x"85",x"82",x"7f",x"7c",x"79",x"76",x"73",x"6f",x"6c",x"69",x"66",x"63",x"60",x"5d",x"5a",x"57",x"54",x"51",x"4e",x"4b",x"48",x"46",x"43",x"40",x"3d",x"3b",x"38",x"36",x"33",x"31",x"2e",x"2c",x"29",x"27",x"25",x"23",x"21",x"1e",x"1c",x"1a",x"19",x"17",x"15",x"13",x"12",x"10",x"0f",x"0d",x"0c",x"0a",x"09",x"08",x"07",x"06",x"05",x"04",x"03",x"03",x"02",x"01",x"01",x"00",x"00",x"00",x"00",x"00",x"00",x"00",x"00",x"00",x"00",x"00",x"01",x"01",x"02",x"03",x"03",x"04",x"05",x"06",x"07",x"08",x"09",x"0a",x"0c",x"0d",x"0f",x"10",x"12",x"13",x"15",x"17",x"19",x"1a",x"1c",x"1e",x"21",x"23",x"25",x"27",x"29",x"2c",x"2e",x"31",x"33",x"36",x"38",x"3b",x"3d",x"40",x"43",x"46",x"48",x"4b",x"4e",x"51",x"54",x"57",x"5a",x"5d",x"60",x"63",x"66",x"69",x"6c",x"6f",x"73",x"76",x"79",x"7c");

begin
	process (CLOCK)
	begin
		if (CLOCK'event and CLOCK = '1') then
			OUTPUT_DATA <= RAM(conv_integer(READ_ADDRESS));
		end if;
	end process;
end Behavioral;
