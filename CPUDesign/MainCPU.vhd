----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:51:14 07/26/2015 
-- Design Name: 
-- Module Name:    MainCPU - Behavioral 
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

entity MainCPU is
Port (  rst : in  STD_LOGIC;  
		  clk : in  STD_LOGIC;  
		  abus : out  STD_LOGIC_VECTOR (15 downto 0);  
		  dbus : inout  STD_LOGIC_VECTOR (15 downto 0);  
		  nmreq : out  STD_LOGIC;  
		  nrd : out  STD_LOGIC;  
		  nwr : out  STD_LOGIC;  
		  nble : out  STD_LOGIC;  
		  nbhe : out  STD_LOGIC; 
			k : in  STD_LOGIC; 
		  b : out  STD_LOGIC_VECTOR (7 downto 0);  
		  a : out  STD_LOGIC_VECTOR (7 downto 0);  
		  s0 : out  STD_LOGIC_VECTOR (7 downto 0);  
		  s1 : out  STD_LOGIC_VECTOR (7 downto 0);  
		  s2 : out  STD_LOGIC_VECTOR (7 downto 0);  
		  s3 : out  STD_LOGIC_VECTOR (7 downto 0);  
		  s4 : out  STD_LOGIC_VECTOR (7 downto 0);  
		  s5 : out  STD_LOGIC_VECTOR (7 downto 0)
);  
end MainCPU;

architecture Behavioral of MainCPU is
---全局时钟---  
    --component bufgp is  
    --port(i : in std_logic;  
        --  o : out std_logic);  
    --end component;  
      
    ---时钟控制模块---  
    component clkCtr is  
    port (clk : in std_logic;  
          rst : in std_logic;  
          t : out std_logic_vector(3 downto 0));  
    end component;  
      
    ---取值模块---  
    component TkOrder is  
    port(
		rst : in std_logic;
		PcUpdate : in std_logic;
		t0,t2 : in std_logic;
		IR_value : in std_logic_vector(15 downto 0);
		irreq: out std_logic;
		PcNew : in std_logic_vector(15 downto 0);
		PC : out std_logic_vector(15 downto 0);
		IR_out : out std_logic_vector(15 downto 0));
    end component;  
      
    ---计算模块---  
    component ALU is  
    port (   
				cyupdate: in std_logic;
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
				Reg_BOUT : OUT STD_LOGIC_VECTOR (7 downto 0));  
    end component;  
      
    ---访存模块---  
    component Memory is  
    port (  WR : out  STD_LOGIC;  
			  RD : out  STD_LOGIC;  
			  t2 : in  STD_LOGIC;  
			  rst : in  STD_LOGIC;  
			  mDBUS : in std_logic_vector(7 downto 0); ---内存中取得的数据  
			  IR_out : in  STD_LOGIC_VECTOR (15 downto 0);  
			  Rtemp : out  STD_LOGIC_VECTOR (7 downto 0));  
    end component;  
      
    ---回写模块---  
    component Rewrite is  
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
		  cynew: out std_logic);       
    end component;  
      
    ---访存控制模块---  
    component MemCtr is  
    Port (  rst : in std_logic;
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
		  irreq : in std_logic);  
    end component;  
      
    ----信号  
    signal m_abus : std_logic_vector(15 downto 0);  
    signal m_nmreq : std_logic;  
    signal m_nrd : std_logic;  
    signal m_nwr : std_logic;  
    signal m_nble : std_logic;  
    signal m_nbhe : std_logic;  
    signal irreq : std_logic;  
	 signal RegAout :std_logic_vector(7 downto 0); 
	 signal RegBout :std_logic_vector(7 downto 0); 
    ---  
    --signal clkgp : std_logic;  
    signal beat : std_logic_vector(3 downto 0);  
    signal PcUpdate : std_logic;  
    signal PcNew : std_logic_vector(15 downto 0);   
    signal IR_value : std_logic_vector(15 downto 0);  
    signal PC : std_logic_vector(15 downto 0);  
    signal IR_out : std_logic_vector(15 downto 0);  
    signal alu_out : std_logic_vector(7 downto 0);  
    signal Addr : std_logic_vector(15 downto 0);  
    signal RegUpdate : std_logic;  
    signal Rdata : std_logic_vector(7 downto 0);  
    signal Rtemp : std_logic_vector(7 downto 0);  
    signal mDBUS : std_logic_vector(7 downto 0);  
    signal WR : std_logic;  
    signal RD : std_logic;  
    signal Zf_out : std_logic;  
    signal Cy_out : std_logic; 
	 signal cyupdate : std_logic;
	 signal cynew : std_logic;
      
begin  
    --U0 : bufgp port map (  
    --  i => clk,  
    --  o => clkgp  
    --);  
    U1 : clkCtr port map (clk,rst,beat);  
    U2 : TkOrder port map (rst,PcUpdate,beat(0),beat(2),IR_value,irreq,PcNew,PC,IR_out);  
    U3 : ALU port map (cyupdate,cynew,beat(1),beat(2),beat(3),rst,IR_out,RegUpdate,Rdata,Addr,alu_out,Zf_out,Cy_out,PC,RegAout,RegBout);  
    U4 : Memory port map (WR,RD,beat(2),rst,mDBUS,IR_out,Rtemp);  
    U5 : Rewrite port map (  beat(3),  rst,  Rtemp,  IR_out,  alu_out,  Addr,  RegUpdate,  Rdata,  PcNew,  PcUpdate,  Zf_out,  Cy_out  ,cyupdate,cynew);  
    U6 : MemCtr port map (rst,beat(1),beat(2),beat(3),PC,Addr,WR,RD,alu_out,IR_out,mDBUS,m_abus,DBUS,m_nrd,m_nwr,m_nbhe,m_nble,IR_value,m_nmreq,irreq);  
      
    ---IR数据s1,s0---  
    s0 <= IR_out(7 downto 0);  --IR低位  
    s1 <= IR_out(15 downto 8); --IR高位  
    --数据总线s3,s2-- 
	 process(k,DBUS,RegBout,RegAout)
	 BEGIN
	if (k = '0') then
		s2 <= DBUS(7 downto 0);    ---s2对应数据总线低位  
		s3 <= DBUS(15 downto 8);  
	 elsif (k = '1') then
		s2 <= RegBout;
		s3 <= RegAout; 
	 end if;
	 END PROCESS;
    --地址总线s5,s4---  
    ABUS <= m_abus;  
	 process(k,m_abus,alu_out)
	 BEGIN
	if (k = '0') then
		s4 <= m_abus(7 downto 0);  
		s5 <= m_abus(15 downto 8); 
	 elsif (k = '1') then
		s4 <= "00000000";
		s5 <= alu_out; 
	 end if;
	 END PROCESS;
     
    ---节拍显示信号---  
    b(7 downto 4) <= "0000";  
    b(3 downto 0) <= beat;  
    ---访存控制信号---  
    nBLE <= m_nble;  
    nBHE <= m_nbhe;  
    nWR <= m_nwr;  
    nRD <= m_nrd;  
    nMREQ <= m_nmreq;  
    a(0) <= Cy_out;  
    a(1) <= Zf_out;  
	 a(2) <= '0';
    a(3) <= not m_nble;  
    a(4) <= not m_nbhe;  
    a(6) <= not m_nwr;  
    a(5) <= not m_nrd;  
    a(7) <= not m_nmreq;  
    ---复位信号---  
      
end Behavioral;

