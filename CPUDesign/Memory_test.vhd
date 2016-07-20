--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:06:48 07/27/2015
-- Design Name:   
-- Module Name:   F:/xinlinxfile/CPUDesign/Memory_test.vhd
-- Project Name:  CPUDesign
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Memory
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
 
ENTITY Memory_test IS
END Memory_test;
 
ARCHITECTURE behavior OF Memory_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Memory
    PORT(
         WR : OUT  std_logic;
         RD : OUT  std_logic;
         t2 : IN  std_logic;
         rst : IN  std_logic;
         mDBUS : IN  std_logic_vector(7 downto 0);
         IR_out : IN  std_logic_vector(15 downto 0);
         Rtemp : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal t2 : std_logic := '0';
   signal rst : std_logic := '0';
   signal mDBUS : std_logic_vector(7 downto 0) := (others => '0');
   signal IR_out : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal WR : std_logic;
   signal RD : std_logic;
   signal Rtemp : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Memory PORT MAP (
          WR => WR,
          RD => RD,
          t2 => t2,
          rst => rst,
          mDBUS => mDBUS,
          IR_out => IR_out,
          Rtemp => Rtemp
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      rst <= '1';
		wait for 30 ns;
		rst <= '0';
		t2 <= '1';
		IR_out <= "0010100100000010";
		wait for 30 ns;
		IR_out <= "0011001100000010";
		mDBUS <= "11110000";
      -- insert stimulus here 

      wait;
   end process;

END;
