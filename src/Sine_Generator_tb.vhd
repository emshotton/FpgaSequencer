--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:41:46 09/07/2011
-- Design Name:   
-- Module Name:   /home/matt/Programming/FpgaSequencer/src/Sine_Generator_tb.vhd
-- Project Name:  project
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
         CLOCK : IN  std_logic;
         RESET : IN  std_logic;
         OUTPUT : OUT  std_logic_vector(15 downto 0);
         ADDRESS_JUMP_A : IN  std_logic_vector(3 downto 0);
         ADDRESS_JUMP_B : IN  std_logic_vector(3 downto 0);
         CLOCK_DIVIDE : IN  std_logic_vector(10 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLOCK : std_logic := '0';
   signal RESET : std_logic := '0';
   signal ADDRESS_JUMP_A : std_logic_vector(3 downto 0) := (others => '0');
   signal ADDRESS_JUMP_B : std_logic_vector(3 downto 0) := (others => '0');
   signal CLOCK_DIVIDE : std_logic_vector(10 downto 0) := (others => '0');

 	--Outputs
   signal OUTPUT : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant CLOCK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Sine_Generator PORT MAP (
          CLOCK => CLOCK,
          RESET => RESET,
          OUTPUT => OUTPUT,
          ADDRESS_JUMP_A => ADDRESS_JUMP_A,
          ADDRESS_JUMP_B => ADDRESS_JUMP_B,
          CLOCK_DIVIDE => CLOCK_DIVIDE
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
		ADDRESS_JUMP_A<="0001";
		ADDRESS_JUMP_B<="0000";
		CLOCK_DIVIDE <= "00000000011";
		
      -- insert stimulus here 

      wait;
   end process;

END;
