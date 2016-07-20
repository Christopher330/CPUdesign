--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:25:09 07/28/2015
-- Design Name:   
-- Module Name:   F:/xinlinxfile/CPUDesign/MEmCtr_test.vhd
-- Project Name:  CPUDesign
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MemCtr
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
 
ENTITY MEmCtr_test IS
END MEmCtr_test;
 
ARCHITECTURE behavior OF MEmCtr_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MemCtr
    PORT(rst : in std_logic;
         t0 : IN  std_logic;
         t1 : IN  std_logic;
         t2 : IN  std_logic;
         t3 : IN  std_logic;
         PC : IN  std_logic_vector(15 downto 0);
         Addr : IN  std_logic_vector(15 downto 0);
         WR : IN  std_logic;
         RD : IN  std_logic;
         alu_out : IN  std_logic_vector(7 downto 0);
         IR_out : IN  std_logic_vector(15 downto 0);
         mDBUS : OUT  std_logic_vector(7 downto 0);
         ABUS : OUT  std_logic_vector(15 downto 0);
         DBUS : INOUT  std_logic_vector(15 downto 0);
         nRD : OUT  std_logic;
         nWR : OUT  std_logic;
         nBHE : OUT  std_logic;
         nBLE : OUT  std_logic;
         IR_value : OUT  std_logic_vector(15 downto 0);
         nMREQ : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
	signal rst : std_logic := '0';
   signal t0 : std_logic := '0';
   signal t1 : std_logic := '0';
   signal t2 : std_logic := '0';
   signal t3 : std_logic := '0';
   signal PC : std_logic_vector(15 downto 0) := (others => '0');
   signal Addr : std_logic_vector(15 downto 0) := (others => '0');
   signal WR : std_logic := '0';
   signal RD : std_logic := '0';
   signal alu_out : std_logic_vector(7 downto 0) := (others => '0');
   signal IR_out : std_logic_vector(15 downto 0) := (others => '0');

	--BiDirs
   signal DBUS : std_logic_vector(15 downto 0);

 	--Outputs
   signal mDBUS : std_logic_vector(7 downto 0);
   signal ABUS : std_logic_vector(15 downto 0);
   signal nRD : std_logic;
   signal nWR : std_logic;
   signal nBHE : std_logic;
   signal nBLE : std_logic;
   signal IR_value : std_logic_vector(15 downto 0);
   signal nMREQ : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MemCtr PORT MAP (
			rst => rst,
          t0 => t0,
          t1 => t1,
          t2 => t2,
          t3 => t3,
          PC => PC,
          Addr => Addr,
          WR => WR,
          RD => RD,
          alu_out => alu_out,
          IR_out => IR_out,
          mDBUS => mDBUS,
          ABUS => ABUS,
          DBUS => DBUS,
          nRD => nRD,
          nWR => nWR,
          nBHE => nBHE,
          nBLE => nBLE,
          IR_value => IR_value,
          nMREQ => nMREQ
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      
		rst <= '1';
		wait for 30 ns;
		rst <= '0';
		t0 <= '1';
		PC <= "0000000000001111";
		DBUS <= "0000100100000100";
		wait for 30 ns;
		t0 <= '0';
		WR <= '1';
		RD <= '0';
		DBUS <= "ZZZZZZZZZZZZZZZZ";
		Addr <= "0000000000101100";
		alu_out <= "10011001";
		wait for 30 ns;
		WR <= '0';
		RD <= '1';
		Addr <= "0000000000111111";
		DBUS <= "0000000011001100";

      -- insert stimulus here 

      wait;
   end process;

END;
