--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:09:18 05/25/2011
-- Design Name:   
-- Module Name:   /home/matt/Programming/VHDL/FpgaSequencer/Sequencer/Clock_Divider_tb.vhd
-- Project Name:  Sequencer
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Clock_Divider
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
 
ENTITY Clock_Divider_tb IS
END Clock_Divider_tb;
 
ARCHITECTURE behavior OF Clock_Divider_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Clock_Divider
    PORT(
         CLOCK : IN  std_logic;
         DIVISOR : IN  std_logic_vector(7 downto 0);
         OUTPUT : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal CLOCK : std_logic := '0';
   signal DIVISOR : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal OUTPUT : std_logic;

   -- Clock period definitions
   constant CLOCK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Clock_Divider PORT MAP (
          CLOCK => CLOCK,
          DIVISOR => DIVISOR,
          OUTPUT => OUTPUT
        );

   -- Clock process definitions
   CLOCK_process :process
   begin
		CLOCK <= '0';
		wait for CLOCK_period/2;
		CLOCK <= '1';
		wait for CLOCK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for CLOCK_period*10;

      -- insert stimulus here 
		DIVISOR <=x"02";
      wait;
   end process;

END;
