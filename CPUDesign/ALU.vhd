----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:07:53 07/23/2015 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
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
library UNISIM;
use UNISIM.VComponents.all;

entity ALU is
port(cyupdate: in std_logic;
   cynew : in std_logic;
   t1,t2,t3 : in  STD_LOGIC;  
   rst : in  STD_LOGIC;  
   IR_out : in STD_LOGIC_VECTOR (15 downto 0);  
   RegUpdate : in  STD_LOGIC;  
   Rdata : in  STD_LOGIC_VECTOR (7 downto 0);  
   Addr : out  STD_LOGIC_VECTOR (15 downto 0);  
   alu_out : out  STD_LOGIC_VECTOR (7 downto 0);  
   Zf_out : out STD_LOGIC;  
   Cy_out : out STD_LOGIC;  
   PC : in STD_LOGIC_VECTOR(15 downto 0);
	Reg_AOUT : OUT STD_LOGIC_VECTOR (7 downto 0); 
	Reg_BOUT : OUT STD_LOGIC_VECTOR (7 downto 0)
);
end ALU;


architecture Behavioral of ALU is
	 signal  Reg_A,Reg_B,temp_aluout : std_logic_vector(7 downto 0);  
    signal addrTemp: std_logic_vector(15 downto 0);  
    signal Cy : std_logic ;  
    signal Zf : std_logic ;  
    ---signal isChange: std_logic;  
    signal cal : std_logic_vector(8 downto 0);  
    TYPE reg_arr is ARRAY(0 to 7) of std_logic_vector(7 downto 0);  
    signal Reg : reg_arr;  
begin     
    process(t1,t2,t3,rst,RegUpdate,IR_out,rst,cal,Rdata,PC,Reg,Cy,Zf,addrTemp,temp_aluout,Reg_A,Reg_B,cyupdate,cynew)  
    begin  
	 Reg_A <= Reg(conv_integer(IR_out(10 downto 8)));   
    Reg_B <= Reg(conv_integer(IR_out(2 downto 0)));
    if(rst = '1') then   
        Zf <= '0';  
        Cy <= '0'; 
        ---isChange <= '0';
		  Reg(0) <= "00011010";
        Reg(1) <= "00000011";  
        Reg(2) <= "00000100";  
        Reg(3) <= "00001000"; 
		  Reg(4) <= "00000011";
        Reg(5) <= "10100000";  
        Reg(6) <= "00000001";  
        Reg(7) <= "00000000";  
        cal <= "000000000"; 
        --temp_aluout <= "ZZZZZZZZ";  
        --addrTemp <= "ZZZZZZZZZZZZZZZZ";  
    elsif(t1 = '1') then  
        case IR_out(15 downto 11) is  
				when "00001" =>  
					 cal <= ( '0' & Reg_A) + ( '0' & Reg_B) + ("00000000"&Cy);  
					 temp_aluout <= cal(7 downto 0);  
					 if(cal = "000000000") then  
						  Zf <= '1';  
					 else  
						  Zf <= '0';  
					 end if;  
				when "00010" =>  
                cal <= ( '0' & Reg_A) - ( '0' & Reg_B) - ("00000000"&Cy);  
                temp_aluout <= cal(7 downto 0);  
                if(cal = "000000000") then  
                    Zf <= '1';  
                else  
                    Zf <= '0';  
                end if;  
				when "00011" =>  
                temp_aluout <= Reg_B(7 downto 0); 
				when "00100" =>  
                temp_aluout <= IR_out(7 downto 0);
				when "00101" =>
					 addrTemp <= Reg(7)&IR_out(7 downto 0);
					 temp_aluout <= Reg_A; 
				when "00110" =>
					 addrTemp <= Reg(7)&IR_out(7 downto 0);
				when "00111" =>
					if (IR_out(7) = '0' and Reg_A ="00000000")then
						Zf <= '1';
						addrTemp <=  PC + ("00000000" &IR_out(7 downto 0)) +1; 
					elsif (IR_out(7) = '1' and Reg_A ="00000000") then
						Zf <= '1';
						addrTemp <=  PC+ ("11111111" &IR_out(7 downto 0)) +1; 
					else
						Zf <='0';
				 end if;
				when "01000" =>  
                addrTemp <= Reg(7)&IR_out(7 downto 0);
				when "01001" => Cy <= '1';  
            when "01010" => Cy <= '0';  
				when others => temp_aluout <= Reg_A;
        end case; 
    elsif  (t3 = '1') then
				if(IR_out(15 downto 11) = "00001" or IR_out(15 downto 11)="00010") then  
					Cy <= cal(8);
					Reg(conv_integer(IR_out(10 downto 8))) <= Rdata; 
				end if;
				if (RegUpdate = '1') then    
					Reg(conv_integer(IR_out(10 downto 8))) <= Rdata; 
				end if;
				if (cyupdate = '1') then
					Cy <= cynew;
				end if;
    end if;  
    end process;  
    alu_out <= temp_aluout;  
    Addr <= addrTemp; 
	 Reg_AOUT <= Reg_A;
	 Reg_BOUT <= Reg_B;
	 --Reg(7)(0) <= Cy;
    Cy_out <= Cy;  
    Zf_out <= Zf;  
end Behavioral;

