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
			LEVEL_A : IN std_logic_vector(7 downto 0);
			LEVEL_B : IN std_logic_vector(7 downto 0);
			LEVEL_C : IN std_logic_vector(7 downto 0);
			LEVEL_D : IN std_logic_vector(7 downto 0);
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
	signal LEVEL_A : std_logic_vector(7 downto 0) := (others => '0');
	signal LEVEL_B : std_logic_vector(7 downto 0) := (others => '0');
	signal LEVEL_C : std_logic_vector(7 downto 0) := (others => '0');
	signal LEVEL_D : std_logic_vector(7 downto 0) := (others => '0');
   signal ENABLED_INPUTS : std_logic_vector(3 downto 0) := (others => '0');
   signal CLOCK : std_logic := '0';
 	--Outputs
   signal OUTPUT : std_logic_vector(7 downto 0);
   -- Clock period definitions
   constant CLOCK_period : time := 40 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Tone_Mixer PORT MAP (
          IN_A => IN_A,
          IN_B => IN_B,
          IN_C => IN_C,
          IN_D => IN_D,
			 LEVEL_A => LEVEL_A,
			 LEVEL_B => LEVEL_B,
			 LEVEL_C => LEVEL_C,
			 LEVEL_D => LEVEL_D,
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
		IN_A<=x"FF";
		IN_B<=x"FF";
		IN_C<=x"FF";
		IN_D<=x"FF";
		LEVEL_A <= x"00";
		LEVEL_B <= x"FF";
		LEVEL_C <= x"80";
		LEVEL_D <= x"FF";
		ENABLED_INPUTS<="1110";
      -- insert stimulus here 
		
      wait;
   end process;

END;
