----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:19:55 07/28/2015 
-- Design Name: 
-- Module Name:    MemCtr - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_arith.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MemCtr is
Port ( rst : in std_logic;
		 t1,t2,t3 : in  STD_LOGIC;  
		 PC : in STD_LOGIC_VECTOR(15 downto 0);  
		 Addr : in  STD_LOGIC_VECTOR (15 downto 0);  
		 WR : in  STD_LOGIC;  
		 RD : in  STD_LOGIC;  
		 alu_out : in  STD_LOGIC_VECTOR (7 downto 0);  
		 IR_out : in  STD_LOGIC_VECTOR (15 downto 0);  
		 mDBUS : out  STD_LOGIC_VECTOR (7 downto 0);  
		 ABUS : out  STD_LOGIC_VECTOR (15 downto 0);  
		 DBUS : inout  STD_LOGIC_VECTOR (15 downto 0);  
		 nRD : out  STD_LOGIC;  
		 nWR : out  STD_LOGIC;  
		 nBHE : out  STD_LOGIC;  
		 nBLE : out  STD_LOGIC;  
		 IR_value : out STD_LOGIC_VECTOR(15 downto 0);  
		 nMREQ : out  STD_LOGIC;
		 irreq : in std_logic
); 
end MemCtr;

architecture Behavioral of MemCtr is

begin
process(PC,t1,t2,t3,WR,RD,DBUS,Addr,alu_out,IR_out,rst,irreq)  
begin  
        ---初始化内存读取控制信号---
		if (rst = '1') then
        nRD <= '1';  
        nWR <= '1';  
        nBHE <= '1';  
        nBLE <= '1';  
        nMREQ <= '1';      
        elsif(irreq = '1') then  
            nMREQ <= '0';  
            nBHE <= '0';  
            nBLE <= '0'; 
            nRD <= '0'; ----取数  
            ABUS <= PC;
				DBUS <= "ZZZZZZZZZZZZZZZZ";
            IR_value <= DBUS;  
            ---ABUS <= "ZZZZZZZZZZZZZZZZ";  
        elsif (t2 = '1' and WR = '1') then ---STA 
            ABUS <= Addr;  
            nMREQ <= '0';  
            nBLE <= '0';  
            nBHE <= '1';  
            nWR <= '0'; 
				nRD <= '1';
				DBUS <= "ZZZZZZZZZZZZZZZZ";
            DBUS(15 downto 8) <= "00000000";  
            DBUS(7 downto 0) <= alu_out;  
				
        elsif(t2 = '1' and RD = '1') then--LDA  
            ABUS <= Addr;  
            nMREQ <= '0';  
            nBLE <= '0'; 
				nBHE <= '1';				
            nRD <= '0'; 
				nWR <= '1';
				DBUS <= "ZZZZZZZZZZZZZZZZ";
            mDBUS <= DBUS(7 downto 0);  
            --DBUS(7 downto 0) <= "ZZZZZZZZ";  
        else  
           DBUS <= "ZZZZZZZZZZZZZZZZ";
				nMREQ <= '1';  
            nBLE <= '1'; 
				nBHE <= '1';				
            nRD <= '1'; 
				nWR <= '1';
        end if;  
    end process;   


end Behavioral;

