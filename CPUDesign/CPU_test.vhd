--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:18:45 07/28/2015
-- Design Name:   
-- Module Name:   F:/xinlinxfile/CPUDesign/CPU_test.vhd
-- Project Name:  CPUDesign
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MainCPU
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
 
ENTITY CPU_test IS
END CPU_test;
 
ARCHITECTURE behavior OF CPU_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MainCPU
    PORT(
         rst : IN  std_logic;
         clk : IN  std_logic;
         abus : OUT  std_logic_vector(15 downto 0);
         dbus : INOUT  std_logic_vector(15 downto 0);
         nmreq : OUT  std_logic;
         nrd : OUT  std_logic;
         nwr : OUT  std_logic;
         nble : OUT  std_logic;
         nbhe : OUT  std_logic;
			k : in std_logic;
         b : OUT  std_logic_vector(7 downto 0);
         a : OUT  std_logic_vector(7 downto 0);
         s0 : OUT  std_logic_vector(7 downto 0);
         s1 : OUT  std_logic_vector(7 downto 0);
         s2 : OUT  std_logic_vector(7 downto 0);
         s3 : OUT  std_logic_vector(7 downto 0);
         s4 : OUT  std_logic_vector(7 downto 0);
         s5 : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal rst : std_logic := '0';
   signal clk : std_logic := '0';
	signal k : std_logic := '0';
	--BiDirs
   signal dbus : std_logic_vector(15 downto 0);

 	--Outputs
   signal abus : std_logic_vector(15 downto 0);
   signal nmreq : std_logic;
   signal nrd : std_logic;
   signal nwr : std_logic;
   signal nble : std_logic;
   signal nbhe : std_logic;
   signal b : std_logic_vector(7 downto 0);
   signal a : std_logic_vector(7 downto 0);
   signal s0 : std_logic_vector(7 downto 0);
   signal s1 : std_logic_vector(7 downto 0);
   signal s2 : std_logic_vector(7 downto 0);
   signal s3 : std_logic_vector(7 downto 0);
   signal s4 : std_logic_vector(7 downto 0);
   signal s5 : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MainCPU PORT MAP (
          rst => rst,
          clk => clk,
          abus => abus,
          dbus => dbus,
          nmreq => nmreq,
          nrd => nrd,
          nwr => nwr,
          nble => nble,
          nbhe => nbhe,
			 k => k,
          b => b,
          a => a,
          s0 => s0,
          s1 => s1,
          s2 => s2,
          s3 => s3,
          s4 => s4,
          s5 => s5
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
		wait for 25 ns;
		
		rst <= '0';
		k <= '0';
		dbus <= "0100000100000011";--jmp
		wait for 40 ns;
		dbus <= "0010000100010001";--mvi
		wait for 40 ns;
		dbus <= "0011100100000111";--jz
		wait for 40 ns;
		dbus <= "0010000100000000";--mvi
		wait for 40 ns;
		dbus <= "0011100100000111";--jz
		wait for 40 ns;
		dbus <= "0011100111111110";--jz
		wait for 40 ns;
		dbus <= "0100000100010000";--jmp
		wait for 40 ns;
		dbus <= "0010000100100011";--mvi
		wait for 40 ns;
		dbus <= "0010001000110100";--mvi
		wait for 40 ns;
		dbus <= "0010100101010001";--sta
		wait for 20 ns;
		dbus <= "ZZZZZZZZZZZZZZZZ";
		wait for 20 ns;
		dbus <= "0011001101010010";--lda
		wait for 20 ns;
		dbus <= "0000000000000100";--lda
		wait for 20 ns;
		dbus <= "0001100100000011";--mov
		wait for 40 ns;
		dbus <= "0100100100000010";--set
		wait for 40 ns;
		dbus <= "0101000100000010";--clr
		wait for 40 ns;
		dbus <= "0000100100000010";--add
		wait for 40 ns;
		dbus <= "0100100100000010";--set
		wait for 40 ns;
		dbus <= "0000100100000010";--add
		wait for 40 ns;
		dbus <= "0010001011111110";--mvi
		wait for 40 ns;
		dbus <= "0010000100000111";--mvi
		wait for 40 ns;
		dbus <= "0000100100000010";--add
		wait for 40 ns;
		dbus <= "0100100100000010";--set
		wait for 40 ns;
		dbus <= "0000100100000010";--add
		wait for 40 ns;
		dbus <= "0001000100000010";--sub
		wait for 40 ns;
		dbus <= "0010001000000010";--mvi
		wait for 40 ns;
		dbus <= "0001000100000010";--sub
		wait for 40 ns;
		dbus <= "0010000100000110";--mvi
		wait for 40 ns;
		dbus <= "0001000100000010";--sub
		wait for 40 ns;
		dbus <= "0010001000001000";--mvi
		wait for 40 ns;
		dbus <= "0001000100000010";--mvi
		wait for 40 ns;
		
		
      -- insert stimulus here 


   end process;

END;
