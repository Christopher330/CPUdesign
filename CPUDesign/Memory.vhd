----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:45:10 07/26/2015 
-- Design Name: 
-- Module Name:    Memory - Behavioral 
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

entity Memory is
Port (  
		  WR : out  STD_LOGIC;  
		  RD : out  STD_LOGIC;  
		  t2 : in  STD_LOGIC;  
		  rst : in  STD_LOGIC;  
		  mDBUS : in std_logic_vector(7 downto 0); ---内存中取得的数据  
		  IR_out : in  STD_LOGIC_VECTOR (15 downto 0);  
		  Rtemp : out  STD_LOGIC_VECTOR (7 downto 0)
);  
end Memory;

architecture Behavioral of Memory is
signal temp: std_logic_vector(7 downto 0);  
begin  
    process(rst,t2,IR_out,temp,mDBUS)  
    begin  
      
        ---初始化访存信号---  
        WR <= '0';  
        RD <= '0';  
        ----------------  
          
        if(rst = '1') then   
            temp <= "ZZZZZZZZ";  
        else  
        if(t2 = '1') then  
            case IR_out(15 downto 11) is  
                when "00110" =>  
                    RD <= '1'; 
						  WR <= '0'; 
                    temp <= mDBUS;  
                when "00101" =>   
                    WR <= '1'; 
						  RD <= '0'; 
                when others => null;  
            end case;  
        end if;  
        end if;  
    end process;  
    Rtemp <= temp;  
end Behavioral;

