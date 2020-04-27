--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:50:57 12/05/2019
-- Design Name:   
-- Module Name:   F:/M.S 1st semester/computer design/Project_2/shiftleft2_tb.vhd
-- Project Name:  Project_2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: shiftleft2
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
use ieee.numeric_std.all; 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY shiftleft2_tb IS
END shiftleft2_tb;
 
ARCHITECTURE behavior OF shiftleft2_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT shiftleft2
    PORT(
         a : IN  std_logic_vector(25 downto 0);
         b : OUT  unsigned(28 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(25 downto 0) := (others => '0');

 	--Outputs
   signal b : unsigned(28 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 --  constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: shiftleft2 PORT MAP (
          a => a,
          b => b
        );

--   -- Clock process definitions
--   <clock>_process :process
--   begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
      a <= "00000011100010101100000000";
    --  wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
