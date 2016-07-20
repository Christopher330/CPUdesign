----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:46:49 07/26/2015 
-- Design Name: 
-- Module Name:    Rewrite - Behavioral 
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

entity Rewrite is
Port (  t3 : in  STD_LOGIC;  
		  rst : in  STD_LOGIC;  
		  Rtemp : in  STD_LOGIC_VECTOR (7 downto 0);  
		  IR_out : in  STD_LOGIC_VECTOR (15 downto 0);  
		  alu_out : in  STD_LOGIC_VECTOR (7 downto 0);  
		  Addr : in  STD_LOGIC_VECTOR (15 downto 0);  
		  RegUpdate : out STD_LOGIC;  
		  Rdata : out  STD_LOGIC_VECTOR (7 downto 0);  
		  PcNew : out STD_LOGIC_VECTOR(15 downto 0);  
		  PcUpdate : out  STD_LOGIC; 
				  
		  Zf_out : in STD_LOGIC;  
		  Cy_out : in STD_LOGIC;
		  cyupdate : out std_logic;
		  cynew: out	std_logic
);  
end Rewrite;

architecture Behavioral of Rewrite is

begin
cynew<=  Cy_out; 
process(rst,t3,IR_out,Rtemp,Addr,alu_out,Zf_out,Cy_out)  
    begin  
          
--        ---初始化更新信号---  
--        Rdata <= "ZZZZZZZZ";  
--        RegUpdate <= '0';  
--        PcUpdate <= '0';  
--        PcNew <= "0000000000000000";  
--        ----------------  
          
        if(rst = '1') then  
            Rdata <= "ZZZZZZZZ";  
            RegUpdate <= '0';  
            PcNew <= "0000000000000000";  
            PcUpdate <= '0';  
        else  
        if(t3 = '1') then  
            case IR_out(15 downto 11) is   
                when "00001" =>  
                    RegUpdate <= '1';  
                    Rdata <= alu_out;  
                when "00010" =>  
                    RegUpdate <= '1';  
                    Rdata <= alu_out;  
                when "00011" =>  
                    RegUpdate <= '1';  
                    Rdata <= alu_out;  
                when "00100" =>  
                    RegUpdate <= '1';  
                    Rdata <= alu_out;  
                when "00101" => 
                    RegUpdate <= '0';  
					 when "00110" =>  
                    RegUpdate <= '1';  
                    Rdata <= Rtemp; 
                when "00111" =>   ---JZ X  
                    if(Zf_out = '1') then  
                        PcUpdate <= '1';  
                        PcNew <= Addr;  
                    else  
                        PcUpdate <= '0';  
                    end if;   
                when "01000" => ---JMP  
                    PcUpdate <= '1';  
                    PcNew <= Addr; 
					 when "01001" => 
						  cyupdate <= '1'; 
							PcUpdate <= '0'; 
							RegUpdate <= '0';
                    
					 when "01010" => 
						 cyupdate <= '1'; 
							PcUpdate <= '0';
							RegUpdate <= '0';							
                    --cynew<=  Cy_out;
                when others => null;  
            end case;  
			ELSE
				cyupdate <= '0';
				RegUpdate <= '0';	
				PcUpdate <= '0';				
        end if;  
        end if;  
    end process;  

end Behavioral;

