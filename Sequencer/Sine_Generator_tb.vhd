--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:13:27 05/20/2011
-- Design Name:   
-- Module Name:   /home/matt/Dropbox/Code/xilinx/sequencer/Sequencer/Sine_Generator_tb.vhd
-- Project Name:  Sequencer
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Sine_Generator
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
 
ENTITY Sine_Generator_tb IS
END Sine_Generator_tb;
 
ARCHITECTURE behavior OF Sine_Generator_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Sine_Generator
    PORT(
         HARMONIC : IN  std_logic_vector(3 downto 0);
			PHASE : IN std_logic_vector(7 downto 0);
         CLOCK : IN  std_logic;
         CLOCK_ENABLE : IN  std_logic;
         RESET : IN  std_logic;
         OUTPUT : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal HARMONIC : std_logic_vector(3 downto 0) := (others => '0');
   signal CLOCK : std_logic := '0';
   signal CLOCK_ENABLE : std_logic := '0';
   signal RESET : std_logic := '0';
	signal PHASE : std_logic_vector(7 downto 0) := (others => '0');
 	--Outputs
   signal OUTPUT : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant CLOCK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Sine_Generator PORT MAP (
          HARMONIC => HARMONIC,
			 PHASE => PHASE,
          CLOCK => CLOCK,
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
		HARMONIC <= "0001";
		CLOCK_ENABLE<='1';
		
      wait for CLOCK_period*10;

      -- insert stimulus here 

		wait for 100 ns;
		PHASE<=x"00";

      wait;
   end process;

END;
