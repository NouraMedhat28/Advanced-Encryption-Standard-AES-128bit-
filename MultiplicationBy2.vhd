----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:35:55 12/14/2023 
-- Design Name: 
-- Module Name:    MultiplicationBy2 - MultiplicationBy2Imp 
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

ENTITY MultiplicationBy2 IS
	PORT (B  : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			BO : OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
		);
END MultiplicationBy2;

ARCHITECTURE MultiplicationBy2Imp OF MultiplicationBy2 IS
BEGIN
	MulP : PROCESS
	BEGIN
		BO  <= x"00";
		IF(B(7) = '0') THEN
			BO <= B(6 DOWNTO 0) & '0';
		ELSE 
			BO <= B(6 DOWNTO 0) & '0' XOR x"1B";
		END IF;
		WAIT ON B;
	END PROCESS MulP;
END MultiplicationBy2Imp;

