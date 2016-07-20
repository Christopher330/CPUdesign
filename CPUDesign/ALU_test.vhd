--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:42:34 07/26/2015
-- Design Name:   
-- Module Name:   F:/xinlinxfile/CPUDesign/ALU_test.vhd
-- Project Name:  CPUDesign
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ALU
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
 
ENTITY ALU_test IS
END ALU_test;
 
ARCHITECTURE behavior OF ALU_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU
    PORT(
         t1 : IN  std_logic;
         t2 : IN  std_logic;
         t3 : IN  std_logic;
         rst : IN  std_logic;
         IR_out : IN  std_logic_vector(15 downto 0);
         RegUpdate : IN  std_logic;
         Rdata : IN  std_logic_vector(7 downto 0);
         Addr : OUT  std_logic_vector(15 downto 0);
         alu_out : OUT  std_logic_vector(7 downto 0);
         Zf_out : OUT  std_logic;
         Cy_out : OUT  std_logic;
         PC : IN  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal t1 : std_logic := '0';
   signal t2 : std_logic := '0';
   signal t3 : std_logic := '0';
   signal rst : std_logic := '0';
   signal IR_out : std_logic_vector(15 downto 0) := (others => '0');
   signal RegUpdate : std_logic := '0';
   signal Rdata : std_logic_vector(7 downto 0) := (others => '0');
   signal PC : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal Addr : std_logic_vector(15 downto 0);
   signal alu_out : std_logic_vector(7 downto 0);
   signal Zf_out : std_logic;
   signal Cy_out : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU PORT MAP (
          t1 => t1,
          t2 => t2,
          t3 => t3,
          rst => rst,
          IR_out => IR_out,
          RegUpdate => RegUpdate,
          Rdata => Rdata,
          Addr => Addr,
          alu_out => alu_out,
          Zf_out => Zf_out,
          Cy_out => Cy_out,
          PC => PC
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.	
      rst <= '1';
		wait for 10 ns;
		rst <= '0';
		PC <= "0000000000000001";
		IR_out <= "0000100100000010";
		wait for 10 ns;
		t1 <= '1';
		t3 <= '0';
		wait for 30 ns;
		t1 <= '0';
		t3 <= '1';
		wait for 30 ns;
		RegUpdate <= '1';
		Rdata <= "00000010";
		wait for 30 ns;
		
		rst <= '1';
		RegUpdate <= '0';
		wait for 10 ns;
		rst <= '0';
		PC <= "0000000000000010";
		IR_out <= "0001000100000010";
		wait for 10 ns;
		t1 <= '1';
		t3 <= '0';
		wait for 30 ns;
		t1 <= '0';
		t3 <= '1';
		wait for 30 ns;
		RegUpdate <= '1';
		Rdata <= "00000011";
		wait for 30 ns;
		
		rst <= '1';
		RegUpdate <= '0';
		wait for 10 ns;
		rst <= '0';
		PC <= "0000000000000011";
		IR_out <= "0001100100000010";
		wait for 10 ns;
		t1 <= '1';
		t3 <= '0';
		wait for 10 ns;
		t1 <= '0';
		t3 <= '1';
		wait for 10 ns;
		RegUpdate <= '1';
		Rdata <= "00000100";
		wait for 10 ns;
		
		rst <= '1';
		RegUpdate <= '0';
		wait for 10 ns;
		rst <= '0';
		PC <= "0000000000000100";
		IR_out <= "0010000100000010";
		wait for 10 ns;
		t1 <= '1';
		t3 <= '0';
		wait for 10 ns;
		t1 <= '0';
		t3 <= '1';
		wait for 10 ns;
		RegUpdate <= '1';
		Rdata <= "00000101";
		wait for 10 ns;
		
		rst <= '1';
		RegUpdate <= '0';
		wait for 10 ns;
		rst <= '0';
		PC <= "0000000000000101";
		IR_out <= "0010100100000010";
		wait for 10 ns;
		t1 <= '1';
		t3 <= '0';
		wait for 10 ns;
		t1 <= '0';
		t3 <= '1';
		wait for 10 ns;
		RegUpdate <= '1';
		Rdata <= "00000110";
		wait for 10 ns;
		
		rst <= '1';
		RegUpdate <= '0';
		wait for 10 ns;
		rst <= '0';
		PC <= "0000000000000110";
		IR_out <= "0011000100000010";
		wait for 10 ns;
		t1 <= '1';
		t3 <= '0';
		wait for 10 ns;
		t1 <= '0';
		t3 <= '1';
		wait for 10 ns;
		RegUpdate <= '1';
		Rdata <= "00000111";
		wait for 10 ns;
		
		rst <= '1';
		RegUpdate <= '0';
		wait for 10 ns;
		rst <= '0';
		PC <= "0000000000000111";
		IR_out <= "0011100100000010";
		wait for 10 ns;
		t1 <= '1';
		t3 <= '0';
		wait for 10 ns;
		t1 <= '0';
		t3 <= '1';
		wait for 10 ns;
		RegUpdate <= '1';
		Rdata <= "00001000";
		wait for 10 ns;
		
		rst <= '1';
		RegUpdate <= '0';
		wait for 10 ns;
		rst <= '0';
		PC <= "0000000000001000";
		IR_out <= "0100000100000010";
		wait for 10 ns;
		t1 <= '1';
		t3 <= '0';
		wait for 10 ns;
		t1 <= '0';
		t3 <= '1';
		wait for 10 ns;
		RegUpdate <= '1';
		Rdata <= "00001001";
		wait for 10 ns;
		
		rst <= '1';
		RegUpdate <= '0';
		wait for 10 ns;
		rst <= '0';
		PC <= "0000000000001001";
		IR_out <= "0100100100000010";
		wait for 10 ns;
		t1 <= '1';
		t3 <= '0';
		wait for 10 ns;
		t1 <= '0';
		t3 <= '1';
		wait for 10 ns;
		RegUpdate <= '1';
		Rdata <= "00001010";
		wait for 10 ns;
		
		rst <= '1';
		RegUpdate <= '0';
		wait for 10 ns;
		rst <= '0';
		PC <= "0000000000001010";
		IR_out <= "0101000100000010";
		wait for 10 ns;
		t1 <= '1';
		t3 <= '0';
		wait for 10 ns;
		t1 <= '0';
		t3 <= '1';
		wait for 10 ns;
		RegUpdate <= '1';
		Rdata <= "00001011";
		wait for 10 ns;
      -- insert stimulus here 
      wait;
   end process;

END;
