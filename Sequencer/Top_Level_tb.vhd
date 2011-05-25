--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:13:54 05/23/2011
-- Design Name:   
-- Module Name:   /home/matt/Programming/VHDL/sequencer/Sequencer/Top_Level_tb.vhd
-- Project Name:  Sequencer
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Top_Level
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Top_Level_tb IS
END Top_Level_tb;
 
ARCHITECTURE behavior OF Top_Level_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Top_Level
    PORT(
         clk : IN  std_logic;
         SOUND_OUT : OUT  std_logic_vector(7 downto 0);
			TICK : OUT std_logic
			
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';

 	--Outputs
   signal SOUND_OUT : std_logic_vector(7 downto 0);
	signal TICK : std_logic;
   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Top_Level PORT MAP (
          clk => clk,
          SOUND_OUT => SOUND_OUT,
			 TICK => TICK
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
