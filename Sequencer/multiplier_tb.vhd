--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:45:52 05/23/2011
-- Design Name:   
-- Module Name:   /home/matt/Dropbox/Code/xilinx/sequencer/Sequencer/multiplier_tb.vhd
-- Project Name:  Sequencer
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: multiplier
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
 
ENTITY multiplier_tb IS
END multiplier_tb;
 
ARCHITECTURE behavior OF multiplier_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT multiplier
    PORT(
         CLOCK : IN  std_logic;
         A : IN  std_logic_vector(17 downto 0);
         B : IN  std_logic_vector(17 downto 0);
         CLOCK_ENABLE : IN  std_logic;
         RESET : IN  std_logic;
         OUTPUT : OUT  std_logic_vector(35 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLOCK : std_logic := '0';
   signal A : std_logic_vector(17 downto 0) := (others => '0');
   signal B : std_logic_vector(17 downto 0) := (others => '0');
   signal CLOCK_ENABLE : std_logic := '0';
   signal RESET : std_logic := '0';

 	--Outputs
   signal OUTPUT : std_logic_vector(35 downto 0);

   -- Clock period definitions
   constant CLOCK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: multiplier PORT MAP (
          CLOCK => CLOCK,
          A => A,
          B => B,
          CLOCK_ENABLE => CLOCK_ENABLE,
          RESET => RESET,
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
		RESET <='1';
      wait for 100 ns;	
		RESET <='0';

      wait for CLOCK_period*10;
		A<="000000000001000010";
		B<="000000000000101000";
		CLOCK_ENABLE <= '1';
      -- insert stimulus here 

      wait;
   end process;

END;
