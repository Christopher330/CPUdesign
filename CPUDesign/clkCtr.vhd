----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:46:20 07/23/2015 
-- Design Name: 
-- Module Name:    clkCtr - Behavioral 
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
--use UNISIM.VComponents.all;

entity clkCtr is
port(
	clk : in std_logic;
	rst : in std_logic;
	t : out std_logic_vector(3 downto 0)
);
end clkCtr;

architecture Behavioral of clkCtr is
	signal temp : std_logic_vector(3 downto 0):="0000";
begin
	process(clk,rst,temp)
	begin
		if(rst = '1') then 
			temp <= "0000";
		elsif (clk = '1' and clk'event) then
			case temp is
				when "0000" => temp <= "0001";
				when "0001" => temp <= "0010";
				when "0010" => temp <= "0100";
				when "0100" => temp <= "1000";
				when "1000" => temp <= "0001";
				when others => null;
			end case;
		end if;
	end process;
	t <= temp;
end Behavioral;

