----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:48:20 12/14/2023 
-- Design Name: 
-- Module Name:    MultiplicationBy3 - MultiplicationBy3Imp 
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

ENTITY MultiplicationBy3 IS
	PORT (B  : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			BO : OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
		);
END MultiplicationBy3;

ARCHITECTURE MultiplicationBy3Imp OF MultiplicationBy3 IS
	SIGNAL Mul2 : STD_LOGIC_VECTOR (7 DOWNTO 0);
	COMPONENT MultiplicationBy2 IS
		PORT (B  : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
				BO : OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
			);
	END COMPONENT MultiplicationBy2;
	FOR ALL : MultiplicationBy2 USE ENTITY WORK.MultiplicationBy2(MultiplicationBy2Imp);
BEGIN
	
	MulBy2 : MultiplicationBy2
		PORT MAP (B, Mul2);
		
	BO <= Mul2 XOR B;

END MultiplicationBy3Imp;

