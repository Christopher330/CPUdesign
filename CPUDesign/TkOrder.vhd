----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:41:23 07/23/2015 
-- Design Name: 
-- Module Name:    TkOrder - Behavioral 
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

entity TkOrder is
port(
	rst : in std_logic;
	PcUpdate : in std_logic;
	t0,t2 : in std_logic;
	IR_value : in std_logic_vector(15 downto 0);
	irreq: out std_logic;
	PcNew : in std_logic_vector(15 downto 0);
	PC : out std_logic_vector(15 downto 0);
	IR_out : out std_logic_vector(15 downto 0)
);
end TkOrder;

architecture Behavioral of TkOrder is
 ---signal PC : std_logic_vector(15 downto 0):="0000000100000010";  
    signal IR : std_logic_vector(15 downto 0);  
    signal PC_temp : std_logic_vector(15 downto 0) := "0000000000000000";  
begin  
    process(rst,t0,t2,PcUpdate,IR_value,PcNew,IR,PC_temp)  
    begin   
        ---≥ı ºªØ–≈∫≈---  
        ---PcUpdate <= '0';  
        -------------  
         if(rst = '0') then
				irreq <= t0;	
				end if;
        if(rst = '1') then  
            PC_temp <= "0000000000000000";  
        elsif(t0 = '1') then  
            IR <= IR_value; 
		
        elsif(PcUpdate = '1') then  
            PC_temp <= PcNew; 
        elsif(t2 = '1' and t2'event) then  
            PC_temp <= PC_temp+1;  
        end if;  
    end process;  
    PC <= PC_temp;
    IR_out <= IR;	
	 
end Behavioral;

