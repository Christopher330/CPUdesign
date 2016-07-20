--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:03:02 07/25/2015
-- Design Name:   
-- Module Name:   F:/xinlinxfile/CPUDesign/TkOrder_test.vhd
-- Project Name:  CPUDesign
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: TkOrder
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
 
ENTITY TkOrder_test IS
END TkOrder_test;
 
ARCHITECTURE behavior OF TkOrder_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT TkOrder
    PORT(
         rst : IN  std_logic;
         PcUpdate : IN  std_logic;
         t0 : IN  std_logic;
         t2 : IN  std_logic;
         IR_value : IN  std_logic_vector(15 downto 0);
         PcNew : IN  std_logic_vector(15 downto 0);
         PC : OUT  std_logic_vector(15 downto 0);
         IR_out : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal rst : std_logic := '0';
   signal PcUpdate : std_logic := '0';
   signal t0 : std_logic := '0';
   signal t2 : std_logic := '0';
   signal IR_value : std_logic_vector(15 downto 0) := (others => '0');
   signal PcNew : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal PC : std_logic_vector(15 downto 0);
   signal IR_out : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: TkOrder PORT MAP (
          rst => rst,
          PcUpdate => PcUpdate,
          t0 => t0,
          t2 => t2,
          IR_value => IR_value,
          PcNew => PcNew,
          PC => PC,
          IR_out => IR_out
        );

   -- Clock process definitions

 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      rst <= '1';
		wait for 30 ns;
		rst <= '0';
		t0 <= '1';
		IR_value <= "0000111100001111";
		wait for 30 ns;
		t0 <= '0';
		t2 <= '1';
		wait for 30 ns;
		t0 <= '0';
		t2 <= '0';
		PcUpdate <= '1';
		PcNew <= "1111000011110000";
		wait for 30 ns;

      -- insert stimulus here 

      wait;
   end process;

END;
