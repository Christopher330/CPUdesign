--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   07:52:11 07/28/2015
-- Design Name:   
-- Module Name:   F:/xinlinxfile/CPUDesign/Rewrite_test.vhd
-- Project Name:  CPUDesign
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Rewrite
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
 
ENTITY Rewrite_test IS
END Rewrite_test;
 
ARCHITECTURE behavior OF Rewrite_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Rewrite
    PORT(
         t3 : IN  std_logic;
         rst : IN  std_logic;
         Rtemp : IN  std_logic_vector(7 downto 0);
         IR_out : IN  std_logic_vector(15 downto 0);
         alu_out : IN  std_logic_vector(7 downto 0);
         Addr : IN  std_logic_vector(15 downto 0);
         RegUpdate : OUT  std_logic;
         Rdata : OUT  std_logic_vector(7 downto 0);
         PcNew : OUT  std_logic_vector(15 downto 0);
         PcUpdate : OUT  std_logic;
         Zf_out : IN  std_logic;
         Cy_out : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal t3 : std_logic := '0';
   signal rst : std_logic := '0';
   signal Rtemp : std_logic_vector(7 downto 0) := (others => '0');
   signal IR_out : std_logic_vector(15 downto 0) := (others => '0');
   signal alu_out : std_logic_vector(7 downto 0) := (others => '0');
   signal Addr : std_logic_vector(15 downto 0) := (others => '0');
   signal Zf_out : std_logic := '0';
   signal Cy_out : std_logic := '0';

 	--Outputs
   signal RegUpdate : std_logic;
   signal Rdata : std_logic_vector(7 downto 0);
   signal PcNew : std_logic_vector(15 downto 0);
   signal PcUpdate : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Rewrite PORT MAP (
          t3 => t3,
          rst => rst,
          Rtemp => Rtemp,
          IR_out => IR_out,
          alu_out => alu_out,
          Addr => Addr,
          RegUpdate => RegUpdate,
          Rdata => Rdata,
          PcNew => PcNew,
          PcUpdate => PcUpdate,
          Zf_out => Zf_out,
          Cy_out => Cy_out
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      rst <= '1';
		wait for 20 ns;
		rst <= '0';
		t3 <= '1';
		IR_out <= "0000100100000010";
		alu_out <= "00001111";
		wait for 20 ns;
		
		IR_out <= "0001000100000010";
		alu_out <= "11001111";
		wait for 20 ns;
		
		IR_out <= "0001100100000010";
		alu_out <= "00110011";
		wait for 20 ns;
		
		IR_out <= "0010000100000010";
		alu_out <= "11100010";
		wait for 20 ns;
		
		IR_out <= "0010100100000010";
		alu_out <= "01111100";
		wait for 20 ns;
		
		IR_out <= "0011000100000010";
		Rtemp <= "11110000";
		alu_out <= "00001111";
		wait for 20 ns;
		
		IR_out <= "0011100100000010";
		Zf_out <= '1';
		Addr <= "0000000000001111";
		alu_out <= "00001111";
		wait for 20 ns;
		
		IR_out <= "0011110100000010";
		Zf_out <= '0';
		Addr <= "0000000000001100";
		alu_out <= "10011001";
		wait for 20 ns;
		
		IR_out <= "0100000100000010";
		Zf_out <= '0';
		Addr <= "0000000011110000";
		alu_out <= "10000000";
		wait for 20 ns;
		
		IR_out <= "0100100100000010";
		Cy_out <= '0';
		wait for 20 ns;
		
		IR_out <= "0101000100000010";
		Cy_out <= '1';
		wait for 20 ns;
      -- insert stimulus here 
		
      wait;
   end process;

END;
