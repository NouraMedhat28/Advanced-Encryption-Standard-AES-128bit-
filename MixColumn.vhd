----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:34:58 12/14/2023 
-- Design Name: 
-- Module Name:    MixColumn - MixColumnImp 
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

ENTITY MixColumn IS
	PORT (ENM     : IN  STD_LOGIC;
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
END MixColumn;

ARCHITECTURE MixColumnImp OF MixColumn IS
SIGNAL B0I1  : STD_LOGIC_VECTOR (7 DOWNTO 0);
SIGNAL B0I2  : STD_LOGIC_VECTOR (7 DOWNTO 0);
SIGNAL B1I1  : STD_LOGIC_VECTOR (7 DOWNTO 0);
SIGNAL B1I2  : STD_LOGIC_VECTOR (7 DOWNTO 0);
SIGNAL B2I1  : STD_LOGIC_VECTOR (7 DOWNTO 0);
SIGNAL B2I2  : STD_LOGIC_VECTOR (7 DOWNTO 0);
SIGNAL B3I1  : STD_LOGIC_VECTOR (7 DOWNTO 0);
SIGNAL B3I2  : STD_LOGIC_VECTOR (7 DOWNTO 0);
SIGNAL B4I1  : STD_LOGIC_VECTOR (7 DOWNTO 0);
SIGNAL B4I2  : STD_LOGIC_VECTOR (7 DOWNTO 0);
SIGNAL B5I1  : STD_LOGIC_VECTOR (7 DOWNTO 0);
SIGNAL B5I2  : STD_LOGIC_VECTOR (7 DOWNTO 0);
SIGNAL B6I1  : STD_LOGIC_VECTOR (7 DOWNTO 0);
SIGNAL B6I2  : STD_LOGIC_VECTOR (7 DOWNTO 0);
SIGNAL B7I1  : STD_LOGIC_VECTOR (7 DOWNTO 0);
SIGNAL B7I2  : STD_LOGIC_VECTOR (7 DOWNTO 0);
SIGNAL B8I1  : STD_LOGIC_VECTOR (7 DOWNTO 0);
SIGNAL B8I2  : STD_LOGIC_VECTOR (7 DOWNTO 0);
SIGNAL B9I1  : STD_LOGIC_VECTOR (7 DOWNTO 0);
SIGNAL B9I2  : STD_LOGIC_VECTOR (7 DOWNTO 0);
SIGNAL B10I1 : STD_LOGIC_VECTOR (7 DOWNTO 0);
SIGNAL B10I2 : STD_LOGIC_VECTOR (7 DOWNTO 0);
SIGNAL B11I1 : STD_LOGIC_VECTOR (7 DOWNTO 0);
SIGNAL B11I2 : STD_LOGIC_VECTOR (7 DOWNTO 0);
SIGNAL B12I1 : STD_LOGIC_VECTOR (7 DOWNTO 0);
SIGNAL B12I2 : STD_LOGIC_VECTOR (7 DOWNTO 0);
SIGNAL B13I1 : STD_LOGIC_VECTOR (7 DOWNTO 0);
SIGNAL B13I2 : STD_LOGIC_VECTOR (7 DOWNTO 0);
SIGNAL B14I1 : STD_LOGIC_VECTOR (7 DOWNTO 0);
SIGNAL B14I2 : STD_LOGIC_VECTOR (7 DOWNTO 0);
SIGNAL B15I1 : STD_LOGIC_VECTOR (7 DOWNTO 0);
SIGNAL B15I2 : STD_LOGIC_VECTOR (7 DOWNTO 0);

COMPONENT MultiplicationBy2 IS
	PORT (B  : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			BO : OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
		);
END COMPONENT MultiplicationBy2;
FOR Mul2B0  : MultiplicationBy2 USE ENTITY WORK.MultiplicationBy2(MultiplicationBy2Imp);
FOR Mul2B1  : MultiplicationBy2 USE ENTITY WORK.MultiplicationBy2(MultiplicationBy2Imp);
FOR Mul2B2  : MultiplicationBy2 USE ENTITY WORK.MultiplicationBy2(MultiplicationBy2Imp);
FOR Mul2B3  : MultiplicationBy2 USE ENTITY WORK.MultiplicationBy2(MultiplicationBy2Imp);
FOR Mul2B4  : MultiplicationBy2 USE ENTITY WORK.MultiplicationBy2(MultiplicationBy2Imp);
FOR Mul2B5  : MultiplicationBy2 USE ENTITY WORK.MultiplicationBy2(MultiplicationBy2Imp);
FOR Mul2B6  : MultiplicationBy2 USE ENTITY WORK.MultiplicationBy2(MultiplicationBy2Imp);
FOR Mul2B7  : MultiplicationBy2 USE ENTITY WORK.MultiplicationBy2(MultiplicationBy2Imp);
FOR Mul2B8  : MultiplicationBy2 USE ENTITY WORK.MultiplicationBy2(MultiplicationBy2Imp);
FOR Mul2B9  : MultiplicationBy2 USE ENTITY WORK.MultiplicationBy2(MultiplicationBy2Imp);
FOR Mul2B10 : MultiplicationBy2 USE ENTITY WORK.MultiplicationBy2(MultiplicationBy2Imp);
FOR Mul2B11 : MultiplicationBy2 USE ENTITY WORK.MultiplicationBy2(MultiplicationBy2Imp);
FOR Mul2B12 : MultiplicationBy2 USE ENTITY WORK.MultiplicationBy2(MultiplicationBy2Imp);
FOR Mul2B13 : MultiplicationBy2 USE ENTITY WORK.MultiplicationBy2(MultiplicationBy2Imp);
FOR Mul2B14 : MultiplicationBy2 USE ENTITY WORK.MultiplicationBy2(MultiplicationBy2Imp);
FOR Mul2B15 : MultiplicationBy2 USE ENTITY WORK.MultiplicationBy2(MultiplicationBy2Imp);

COMPONENT MultiplicationBy3 IS
	PORT (B  : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			BO : OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
		);
END COMPONENT MultiplicationBy3;
FOR Mul3B0  : MultiplicationBy3 USE ENTITY WORK.MultiplicationBy3(MultiplicationBy3Imp);
FOR Mul3B1  : MultiplicationBy3 USE ENTITY WORK.MultiplicationBy3(MultiplicationBy3Imp);
FOR Mul3B2  : MultiplicationBy3 USE ENTITY WORK.MultiplicationBy3(MultiplicationBy3Imp);
FOR Mul3B3  : MultiplicationBy3 USE ENTITY WORK.MultiplicationBy3(MultiplicationBy3Imp);
FOR Mul3B4  : MultiplicationBy3 USE ENTITY WORK.MultiplicationBy3(MultiplicationBy3Imp);
FOR Mul3B5  : MultiplicationBy3 USE ENTITY WORK.MultiplicationBy3(MultiplicationBy3Imp);
FOR Mul3B6  : MultiplicationBy3 USE ENTITY WORK.MultiplicationBy3(MultiplicationBy3Imp);
FOR Mul3B7  : MultiplicationBy3 USE ENTITY WORK.MultiplicationBy3(MultiplicationBy3Imp);
FOR Mul3B8  : MultiplicationBy3 USE ENTITY WORK.MultiplicationBy3(MultiplicationBy3Imp);
FOR Mul3B9  : MultiplicationBy3 USE ENTITY WORK.MultiplicationBy3(MultiplicationBy3Imp);
FOR Mul3B10 : MultiplicationBy3 USE ENTITY WORK.MultiplicationBy3(MultiplicationBy3Imp);
FOR Mul3B11 : MultiplicationBy3 USE ENTITY WORK.MultiplicationBy3(MultiplicationBy3Imp);
FOR Mul3B12 : MultiplicationBy3 USE ENTITY WORK.MultiplicationBy3(MultiplicationBy3Imp);
FOR Mul3B13 : MultiplicationBy3 USE ENTITY WORK.MultiplicationBy3(MultiplicationBy3Imp);
FOR Mul3B14 : MultiplicationBy3 USE ENTITY WORK.MultiplicationBy3(MultiplicationBy3Imp);
FOR Mul3B15 : MultiplicationBy3 USE ENTITY WORK.MultiplicationBy3(MultiplicationBy3Imp);


BEGIN

	------------ B0 ----------
	Mul2B0 : MultiplicationBy2
		PORT MAP (B0, B0I1);
		
	Mul3B0 : MultiplicationBy3
		PORT MAP (B1, B0I2);
	
	------------ B1 ----------
	Mul2B1 : MultiplicationBy2
		PORT MAP (B1, B1I1);
		
	Mul3B1 : MultiplicationBy3
		PORT MAP (B2, B1I2);
	
	------------ B2 ----------
	Mul2B2 : MultiplicationBy2
		PORT MAP (B2, B2I1);
		
	Mul3B2 : MultiplicationBy3
		PORT MAP (B3, B2I2);
	
	------------ B3 ----------
	Mul2B3 : MultiplicationBy2
		PORT MAP (B3, B3I1);
		
	Mul3B3 : MultiplicationBy3
		PORT MAP (B0, B3I2);
	
	------------ B4 ----------
	Mul2B4 : MultiplicationBy2
		PORT MAP (B4, B4I1);
		
	Mul3B4 : MultiplicationBy3
		PORT MAP (B5, B4I2);
	
	------------ B5 ----------
	Mul2B5 : MultiplicationBy2
		PORT MAP (B5, B5I1);
		
	Mul3B5 : MultiplicationBy3
		PORT MAP (B6, B5I2);
	
	------------ B6 ----------
	Mul2B6 : MultiplicationBy2
		PORT MAP (B6, B6I1);
		
	Mul3B6 : MultiplicationBy3
		PORT MAP (B7, B6I2);
	
	------------ B7 ----------
	Mul2B7 : MultiplicationBy2
		PORT MAP (B7, B7I1);
		
	Mul3B7 : MultiplicationBy3
		PORT MAP (B4, B7I2);
	
	------------ B8 ----------
	Mul2B8 : MultiplicationBy2
		PORT MAP (B8, B8I1);
		
	Mul3B8 : MultiplicationBy3
		PORT MAP (B9, B8I2);
	
	------------ B9 ----------
	Mul2B9 : MultiplicationBy2
		PORT MAP (B9, B9I1);
		
	Mul3B9 : MultiplicationBy3
		PORT MAP (B10, B9I2);
	
	------------ B10 ----------
	Mul2B10 : MultiplicationBy2
		PORT MAP (B10, B10I1);
		
	Mul3B10 : MultiplicationBy3
		PORT MAP (B11, B10I2);
	
	------------ B11 ----------
	Mul2B11 : MultiplicationBy2
		PORT MAP (B11, B11I1);
		
	Mul3B11 : MultiplicationBy3
		PORT MAP (B8, B11I2);
	
	------------ B12 ----------
	Mul2B12 : MultiplicationBy2
		PORT MAP (B12, B12I1);
		
	Mul3B12 : MultiplicationBy3
		PORT MAP (B13, B12I2);
	
	------------ B13 ----------
	Mul2B13 : MultiplicationBy2
		PORT MAP (B13, B13I1);
		
	Mul3B13 : MultiplicationBy3
		PORT MAP (B14, B13I2);
	
	------------ B14 ----------
	Mul2B14 : MultiplicationBy2
		PORT MAP (B14, B14I1);
		
	Mul3B14 : MultiplicationBy3
		PORT MAP (B15, B14I2);
	
	------------ B15 ----------
	Mul2B15 : MultiplicationBy2
		PORT MAP (B15, B15I1);
		
	Mul3B15 : MultiplicationBy3
		PORT MAP (B12, B15I2);
	
P1 : PROCESS (CLK, RST)
BEGIN
  IF(RST = '0') THEN
      NewB0  <= x"00";
			NewB1  <= x"00";
			NewB2  <= x"00";
			NewB3  <= x"00";
			NewB4  <= x"00";
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
	ELSIF(ENM = '1' AND RISING_EDGE(CLK)) THEN
			NewB0  <= B0I1 XOR B0I2 XOR B2 XOR B3;
			NewB1  <= B1I1 XOR B1I2 XOR B0 XOR B3;
			NewB2  <= B2I1 XOR B2I2 XOR B0 XOR B1;
			NewB3  <= B3I1 XOR B3I2 XOR B2 XOR B1;
			NewB4  <= B4I1 XOR B4I2 XOR B6 XOR B7;
			NewB5  <= B5I1 XOR B5I2 XOR B4 XOR B7;
			NewB6  <= B6I1 XOR B6I2 XOR B4 XOR B5;
			NewB7  <= B7I1 XOR B7I2 XOR B5 XOR B6;
			NewB8  <= B8I1 XOR B8I2 XOR B10 XOR B11;
			NewB9  <= B9I1 XOR B9I2 XOR B8 XOR B11;
			NewB10 <= B10I1 XOR B10I2 XOR B8 XOR B9;
			NewB11 <= B11I1 XOR B11I2 XOR B9 XOR B10;
			NewB12 <= B12I1 XOR B12I2 XOR B14 XOR B15;
			NewB13 <= B13I1 XOR B13I2 XOR B12 XOR B15;
			NewB14 <= B14I1 XOR B14I2 XOR B12 XOR B13;
			NewB15 <= B15I1 XOR B15I2 XOR B14 XOR B13;
	END IF;
	
END PROCESS;	
END MixColumnImp;


