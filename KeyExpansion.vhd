----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:45:59 12/13/2023 
-- Design Name: 
-- Module Name:    KeyExpansion - KeyExpansionImp 
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

-- Uncomment the following liKrary declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following liKrary declaration if instantiating
-- any Xilinx primitives in this code.
--liKrary UNISIM;
--use UNISIM.VComponents.all;

ENTITY KeyExpansion IS
	PORT (Rcon    : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
	    ENK     : IN  STD_LOGIC;
	    CLK     : IN  STD_LOGIC;
	    RST     : IN  STD_LOGIC;
			K0      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			K1      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			K2      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			K3      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			K4      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			K5      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			K6      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			K7      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			K8      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			K9      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			K10     : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			K11     : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			K12     : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			K13     : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			K14     : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			K15     : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewK0   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewK1   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewK2   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewK3   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewK4   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewK5   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewK6   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewK7   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewK8   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewK9   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewK10  : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewK11  : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewK12  : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewK13  : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewK14  : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewK15  : OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
		);
END KeyExpansion;

ARCHITECTURE KeyExpansionImp OF KeyExpansion IS
	SIGNAL SBoxOut0 : STD_LOGIC_VECTOR (7 DOWNTO 0);
	SIGNAL SBoxOut1 : STD_LOGIC_VECTOR (7 DOWNTO 0);
	SIGNAL SBoxOut2 : STD_LOGIC_VECTOR (7 DOWNTO 0);
	SIGNAL SBoxOut3 : STD_LOGIC_VECTOR (7 DOWNTO 0);
	SIGNAL NewK0V   : STD_LOGIC_VECTOR (7 DOWNTO 0);
	SIGNAL NewK1V   : STD_LOGIC_VECTOR (7 DOWNTO 0);
	SIGNAL NewK2V   : STD_LOGIC_VECTOR (7 DOWNTO 0);
	SIGNAL NewK3V   : STD_LOGIC_VECTOR (7 DOWNTO 0);
	SIGNAL NewK4V   : STD_LOGIC_VECTOR (7 DOWNTO 0);
	SIGNAL NewK5V   : STD_LOGIC_VECTOR (7 DOWNTO 0);
	SIGNAL NewK6V   : STD_LOGIC_VECTOR (7 DOWNTO 0);
	SIGNAL NewK7V   : STD_LOGIC_VECTOR (7 DOWNTO 0);
	SIGNAL NewK8V   : STD_LOGIC_VECTOR (7 DOWNTO 0);
	SIGNAL NewK9V   : STD_LOGIC_VECTOR (7 DOWNTO 0);
	SIGNAL NewK10V  : STD_LOGIC_VECTOR (7 DOWNTO 0);
	SIGNAL NewK11V  : STD_LOGIC_VECTOR (7 DOWNTO 0);
	SIGNAL NewK12V  : STD_LOGIC_VECTOR (7 DOWNTO 0);
	SIGNAL NewK13V  : STD_LOGIC_VECTOR (7 DOWNTO 0);
	SIGNAL NewK14V  : STD_LOGIC_VECTOR (7 DOWNTO 0);
	SIGNAL NewK15V  : STD_LOGIC_VECTOR (7 DOWNTO 0);
	
	
	COMPONENT SBox IS
    PORT (OldB : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
          NewB : OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
    );
    END COMPONENT SBox;
	 FOR ALL : SBox USE ENTITY WORK.SBox(SBoxImp);	
BEGIN
	SBoxK0 : SBox
		PORT MAP (K13, SBoxOut0);
		
	SBoxK1 : SBox
		PORT MAP(K14, SBoxOut1);
		
	SBoxK2 : SBox
		PORT MAP (K15, SBoxOut2);
		
	SBoxK3 : SBox
		PORT MAP (K12, SBoxOut3);
		
		---------- FOR W0 ----------
		NewK0V <= SBoxOut0 XOR K0 XOR Rcon;
		NewK1V <= SBoxOut1 XOR K1 XOR x"00";
		NewK2V <= SBoxOut2 XOR K2 XOR x"00";
		NewK3V <= SBoxOut3 XOR K3 XOR x"00";
	
		---------- FOR W1 ----------
		NewK4V <= K4  XOR NewK0V;
		NewK5V <= K5  XOR NewK1V;
		NewK6V <= K6  XOR NewK2V;
		NewK7V <= K7  XOR NewK3V;
		
		---------- FOR W2 ----------
		NewK8V  <= K8  XOR NewK4V;
		NewK9V  <= K9  XOR NewK5V;
		NewK10V <= K10 XOR NewK6V;
		NewK11V <= K11 XOR NewK7V;
		
		---------- FOR W3 ----------
		NewK12V <= K12 XOR NewK8V;
		NewK13V <= K13 XOR NewK9V;
		NewK14V <= K14 XOR NewK10V;
		NewK15V <= K15 XOR NewK11V;
		
P1:PROCESS (CLK, RST)
	BEGIN
	IF(RST = '0') THEN
	    NewK0  <= x"00";
			NewK1  <= x"00";
			NewK2  <= x"00";
			NewK3  <= x"00";
			NewK4  <= x"00" ;
			NewK5  <= x"00";
			NewK6  <= x"00";
			NewK7  <= x"00";
			NewK8  <= x"00";
			NewK9  <= x"00";
			NewK10 <= x"00";
			NewK11 <= x"00";
			NewK12 <= x"00";
			NewK13 <= x"00";
			NewK14 <= x"00";
			NewK15 <= x"00";
		ELSIF(ENK = '1' AND RISING_EDGE(CLK)) THEN
		  NewK0  <= NewK0V;
		  NewK1  <= NewK1V;
		  NewK2  <= NewK2V;
		  NewK3  <= NewK3V;
		  NewK4  <= NewK4V;
		  NewK5  <= NewK5V;
		  NewK6  <= NewK6V;
		  NewK7  <= NewK7V;
		  NewK8   <= NewK8V;
		  NewK9   <= NewK9V;
		  NewK10  <= NewK10V;
		  NewK11  <= NewK11V;
		  NewK12  <= NewK12V;
		  NewK13  <= NewK13V;
		  NewK14  <= NewK14V;
		  NewK15  <= NewK15V;
		END IF;
	END PROCESS;		
END KeyExpansionImp;


