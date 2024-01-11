----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:28:03 12/16/2023 
-- Design Name: 
-- Module Name:    Reg - RegImmp 
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

ENTITY Reg IS
	PORT (CLK     : IN  STD_LOGIC;
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
END Reg;

ARCHITECTURE RegImp OF Reg IS
BEGIN

	RegP : PROCESS (CLK, RST)
	BEGIN
		IF (RST = '0') THEN
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
		ELSIF (RISING_EDGE(CLK)) THEN
			NewB0  <= B0;
			NewB1  <= B1;
			NewB2  <= B2;
			NewB3  <= B3;
			NewB4  <= B4;
			NewB5  <= B5;
			NewB6  <= B6;
			NewB7  <= B7;
			NewB8  <= B8;
			NewB9  <= B9;
			NewB10 <= B10;
			NewB11 <= B11;
			NewB12 <= B12;
			NewB13 <= B13;
			NewB14 <= B14;
			NewB15 <= B15;
		END IF;
	END PROCESS;

END RegImp;

