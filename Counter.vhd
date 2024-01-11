----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:49:50 12/13/2023 
-- Design Name: 
-- Module Name:    Counter - Countermp 
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

ENTITY Counter IS
	PORT (CLK : IN  STD_LOGIC;
			RST : IN  STD_LOGIC;
			EN  : IN  STD_LOGIC;
			CNT : OUT NATURAL RANGE 0 TO 10
		);
END Counter;

ARCHITECTURE CounterImp OF Counter IS
BEGIN
	CounterP : PROCESS (CLK, RST)
	VARIABLE CntInt : NATURAL RANGE 0 TO 10;
	BEGIN 
		IF(RST = '0') THEN
			CntInt := 0;
			CNT    <= 0;
			
		ELSIF (RISING_EDGE(CLK)) THEN
			IF (EN = '1' AND CntInt< 10) THEN
			   CntInt := CntInt + 1;
				CNT    <= CntInt;
			ELSIF (EN = '1' AND CntInt = 10) THEN
				CntInt := 0;
				CNT    <= CntInt;
			END IF;
		ELSE  
			CntInt := CntInt;
			CNT    <= CntInt;
		END IF;
		
	END PROCESS CounterP;
END CounterImp;


