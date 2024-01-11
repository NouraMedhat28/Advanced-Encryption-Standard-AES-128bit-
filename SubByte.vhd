----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:07:51 12/10/2023 
-- Design Name: 
-- Module Name:    SubByte - SubByteImp 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

ENTITY SubByte IS
	PORT (ENR     : IN  STD_LOGIC;
	    CLK     : IN  STD_LOGIC;
	    RST     : IN  STD_LOGIC;
			B0      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B1      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B2      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B3      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B4      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B5      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B6      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B7      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B8      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B9      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B10     : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B11     : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B12     : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B13     : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B14     : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B15     : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewB0   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewB1   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewB2   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewB3   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewB4   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewB5   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewB6   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewB7   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewB8   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewB9   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewB10  : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewB11  : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewB12  : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewB13  : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewB14  : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewB15  : OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
	);
END SubByte;

ARCHITECTURE SubByteImp OF SubByte IS
		SIGNAL   NewB0S   : STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL	NewB1S   : STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL	NewB2S   : STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL	NewB3S   : STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL	NewB4S   : STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL	NewB5S   : STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL	NewB6S   : STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL	NewB7S   : STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL	NewB8S   : STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL	NewB9S   : STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL	NewB10S  : STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL	NewB11S  : STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL	NewB12S  : STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL	NewB13S  : STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL	NewB14S  : STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL	NewB15S  : STD_LOGIC_VECTOR (7 DOWNTO 0);
	COMPONENT SBox IS
		PORT (OldB : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
				NewB : OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
		);
    END COMPONENT SBox;
	 FOR ALL : SBox USE ENTITY WORK.SBox(SBoxImp);
BEGIN
	SBox0  : SBox 
	PORT MAP (B0, NewB0S);
	
	SBox1  : SBox
	PORT MAP (B1, NewB1S);
	
	SBox2  : SBox
	PORT MAP (B2, NewB2S);
	
	SBox3  : SBox 
	PORT MAP (B3, NewB3S);
	
	SBox4  : SBox
	PORT MAP (B4, NewB4S);
	
	SBox5  : SBox
	PORT MAP (B5, NewB5S);
	
	SBox6  : SBox 
	PORT MAP (B6, NewB6S);
	
	SBox7  : SBox
	PORT MAP (B7, NewB7S);
	
	SBox8  : SBox
	PORT MAP (B8, NewB8S);
	
	SBox9  : SBox 
	PORT MAP (B9, NewB9S);
	
	SBox10 : SBox
	PORT MAP (B10, NewB10S);
	
	SBox11 : SBox
	PORT MAP (B11, NewB11S);
	
	SBox12 : SBox 
	PORT MAP (B12, NewB12S);
	
	SBox13 : SBox
	PORT MAP (B13, NewB13S);
	
	SBox14 : SBox
	PORT MAP (B14, NewB14S);
	
	SBox15 : SBox 
	PORT MAP (B15, NewB15S);
	
P1 : PROCESS (CLK, RST) 
BEGIN 
  IF(RST = '0') THEN
      NewB0  <= x"00";
			NewB1  <= x"00";
			NewB2  <= x"00";
			NewB3  <= x"00";
			NewB4  <= x"00" ;
			NewB5  <= x"00";
			NewB6  <= x"00";
			NewB7  <= x"00";
			NewB8  <= x"00";
			NewB9  <= x"00";
			NewB10 <= x"00";
			NewB11 <= x"00";
			NewB12 <= x"00";
			NewB13 <= x"00";
			NewB14 <= x"00";
			NewB15 <= x"00";
  ELSIF (ENR = '1' AND RISING_EDGE(CLK)) THEN
	NewB0  <= NewB0S;
	NewB4  <= NewB4S;
	NewB8  <= NewB8S;
	NewB12 <= NewB12S;
	NewB13 <= NewB13S;
	NewB1  <= NewB1S;
	NewB5  <= NewB5S;
	NewB9  <= NewB9S;
	NewB14 <= NewB14S;
	NewB10 <= NewB10S;
	NewB6  <= NewB6S;
	NewB2  <= NewB2S;
	NewB3  <= NewB3S;
	NewB7  <= NewB7S;
	NewB11 <= NewB11S;
	NewB15 <= NewB15S;
END IF;
END PROCESS;
END SubByteImp;


