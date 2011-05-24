--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:51:20 05/23/2011
-- Design Name:   
-- Module Name:   /home/matt/Dropbox/Code/xilinx/sequencer/Sequencer/Tone_Mixer_tb.vhd
-- Project Name:  Sequencer
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Tone_Mixer
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
 
ENTITY Tone_Mixer_tb IS
END Tone_Mixer_tb;
 
ARCHITECTURE behavior OF Tone_Mixer_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Tone_Mixer
    PORT(
         IN_A : IN  std_logic_vector(7 downto 0);
         IN_B : IN  std_logic_vector(7 downto 0);
         IN_C : IN  std_logic_vector(7 downto 0);
         IN_D : IN  std_logic_vector(7 downto 0);
         OUTPUT : OUT  std_logic_vector(7 downto 0);
         ENABLED_INPUTS : IN  std_logic_vector(3 downto 0);
         CLOCK : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal IN_A : std_logic_vector(7 downto 0) := (others => '0');
   signal IN_B : std_logic_vector(7 downto 0) := (others => '0');
   signal IN_C : std_logic_vector(7 downto 0) := (others => '0');
   signal IN_D : std_logic_vector(7 downto 0) := (others => '0');
   signal ENABLED_INPUTS : std_logic_vector(3 downto 0) := (others => '0');
   signal CLOCK : std_logic := '0';
 	--Outputs
   signal OUTPUT : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant CLOCK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Tone_Mixer PORT MAP (
          IN_A => IN_A,
          IN_B => IN_B,
          IN_C => IN_C,
          IN_D => IN_D,
          OUTPUT => OUTPUT,
          ENABLED_INPUTS => ENABLED_INPUTS,
          CLOCK => CLOCK
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
		IN_A<=x"0F";
		IN_B<=x"0F";
		IN_C<=x"0F";
		IN_D<=x"0F";
		ENABLED_INPUTS<="1111";
      -- insert stimulus here 

      wait;
   end process;

END;
