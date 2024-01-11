----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:09:13 12/14/2023 
-- Design Name: 
-- Module Name:    AdvancedStandardEncryption - AdvancedStandardEncryptionTop 
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

ENTITY AdvancedStandardEncryption IS
	PORT (CLK     : IN  STD_LOGIC;
	    Valid   : IN  STD_LOGIC;
			RST     : IN  STD_LOGIC;
			Data    : IN  STD_LOGIC_VECTOR (127 DOWNTO 0);
			Key     : IN  STD_LOGIC_VECTOR (127 DOWNTO 0);
			Done    : OUT STD_LOGIC;
			DataEnc : OUT STD_LOGIC_VECTOR (127 DOWNTO 0)
		);
END AdvancedStandardEncryption;

ARCHITECTURE AdvancedStandardEncryptionTop OF AdvancedStandardEncryption IS
	    SIGNAL B0   :  STD_LOGIC_VECTOR (7 DOWNTO 0);
			SIGNAL B1   :  STD_LOGIC_VECTOR (7 DOWNTO 0);
			SIGNAL B2   :  STD_LOGIC_VECTOR (7 DOWNTO 0);
			SIGNAL B3   :  STD_LOGIC_VECTOR (7 DOWNTO 0);
			SIGNAL B4   :  STD_LOGIC_VECTOR (7 DOWNTO 0);
			SIGNAL B5   :  STD_LOGIC_VECTOR (7 DOWNTO 0);
			SIGNAL B6   :  STD_LOGIC_VECTOR (7 DOWNTO 0);
			SIGNAL B7   :  STD_LOGIC_VECTOR (7 DOWNTO 0);
			SIGNAL B8   :  STD_LOGIC_VECTOR (7 DOWNTO 0);
			SIGNAL B9   :  STD_LOGIC_VECTOR (7 DOWNTO 0);
			SIGNAL B10  :  STD_LOGIC_VECTOR (7 DOWNTO 0);
			SIGNAL B11  :  STD_LOGIC_VECTOR (7 DOWNTO 0);
			SIGNAL B12  :  STD_LOGIC_VECTOR (7 DOWNTO 0);
			SIGNAL B13  :  STD_LOGIC_VECTOR (7 DOWNTO 0);
			SIGNAL B14  :  STD_LOGIC_VECTOR (7 DOWNTO 0);
			SIGNAL B15  :  STD_LOGIC_VECTOR (7 DOWNTO 0);
			SIGNAL K0   :  STD_LOGIC_VECTOR (7 DOWNTO 0);
	    SIGNAL K1   :  STD_LOGIC_VECTOR (7 DOWNTO 0);
			SIGNAL K2   :  STD_LOGIC_VECTOR (7 DOWNTO 0);
			SIGNAL K3   :  STD_LOGIC_VECTOR (7 DOWNTO 0);
			SIGNAL K4   :  STD_LOGIC_VECTOR (7 DOWNTO 0);
			SIGNAL K5   :  STD_LOGIC_VECTOR (7 DOWNTO 0);
			SIGNAL K6   :  STD_LOGIC_VECTOR (7 DOWNTO 0);
			SIGNAL K7   :  STD_LOGIC_VECTOR (7 DOWNTO 0);
			SIGNAL K8   :  STD_LOGIC_VECTOR (7 DOWNTO 0);
			SIGNAL K9   :  STD_LOGIC_VECTOR (7 DOWNTO 0);
			SIGNAL K10  :  STD_LOGIC_VECTOR (7 DOWNTO 0);
			SIGNAL K11  :  STD_LOGIC_VECTOR (7 DOWNTO 0);
			SIGNAL K12  :  STD_LOGIC_VECTOR (7 DOWNTO 0);
			SIGNAL K13  :  STD_LOGIC_VECTOR (7 DOWNTO 0);
			SIGNAL K14  :  STD_LOGIC_VECTOR (7 DOWNTO 0);
			SIGNAL K15  :  STD_LOGIC_VECTOR (7 DOWNTO 0);
			
			----------- CONTROL UNIT SIGNALS -----------
			SIGNAL CNT  : NATURAL RANGE 0 TO 10;
			SIGNAL ENA  : STD_LOGIC;
			SIGNAL ENS  : STD_LOGIC;
			SIGNAL ENM  : STD_LOGIC;
			SIGNAL ENC  : STD_LOGIC;
			SIGNAL ENI  : STD_LOGIC;
			SIGNAL ENK  : STD_LOGIC;
			SIGNAL ENSH : STD_LOGIC;

	COMPONENT BlockToState IS
	PORT (DATA : IN  STD_LOGIC_VECTOR (127 DOWNTO 0);
			B0   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			B1   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			B2   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			B3   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			B4   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			B5   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			B6   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			B7   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			B8   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			B9   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			B10  : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			B11  : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			B12  : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			B13  : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			B14  : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			B15  : OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
		);
END COMPONENT BlockToState;
FOR BlockToStateData : BlockToState USE ENTITY WORK.BlockToState(BlockToStateImp);
FOR BlockToStateKey  : BlockToState USE ENTITY WORK.BlockToState(BlockToStateImp);

COMPONENT ControlUnit IS
	PORT (Valid  : IN  STD_LOGIC;
	CLK    : IN  STD_LOGIC;
			RST    : IN  STD_LOGIC;
			CNT    : IN  NATURAL RANGE 0 TO 9;
			Done   : OUT STD_LOGIC;
			ENC    : OUT STD_LOGIC; ---- COUNTER ENABLE
			ENS    : OUT STD_LOGIC; ---- ENABLING SUBBYTE
			ENSH   : OUT STD_LOGIC; ---- ENABLING SHIFTROW
			ENA    : OUT STD_LOGIC; ---- ENABLING ADDROUND
			ENI    : OUT STD_LOGIC; ---- ENABLING INITIAL ADDROUND
			ENK    : OUT STD_LOGIC;
			ENM    : OUT STD_LOGIC  ---- ENABLING MIXCOLUMN
		);
END COMPONENT ControlUnit;
FOR ControlUnitTop : ControlUnit USE ENTITY WORK.ControlUnit(ControlUnitImp);

COMPONENT RoundFun IS
	PORT (ENK   : IN STD_LOGIC;
	    ENS     : IN  STD_LOGIC;
			ENM     : IN  STD_LOGIC;
			ENSH    : IN  STD_LOGIC;
			ENA     : IN  STD_LOGIC;
			ENI     : IN  STD_LOGIC;
			ENC     : IN  STD_LOGIC;
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
			CNT     : OUT NATURAL RANGE 0 TO 9;
			DataEnc : OUT STD_LOGIC_VECTOR (127 DOWNTO 0)
		);
END COMPONENT RoundFun;
FOR RoundFunTop : RoundFun USE ENTITY WORK.RoundFun(RoundFunImp);

BEGIN
	BlockToStateData : BlockToState
		PORT MAP (Data, B0, B1, B2, B3, B4, B5, B6, B7, B8, B9, B10, B11, B12, B13, B14, B15);
	
	BlockToStateKey  : BlockToState
		PORT MAP (Key, K0, K1, K2, K3, K4, K5, K6, K7, K8, K9, K10, K11, K12, K13, K14, K15);
		
	RoundFunTop      : RoundFun
		PORT MAP (ENK, ENS, ENM, ENSH, ENA, ENI, ENC, CLK, RST, B0, B1, B2, B3, B4, B5, B6, B7, B8, B9, B10, B11, B12, B13, B14, B15,
					 K0, K1, K2, K3, K4, K5, K6, K7, K8, K9, K10, K11, K12, K13, K14, K15, CNT,
					 DataEnc);
					 
	ControlUnitTop   : ControlUnit
		PORT MAP (Valid, CLK, RST, CNT, Done, ENC, ENS, ENSH, ENA, ENI, ENK, ENM);
		
END AdvancedStandardEncryptionTop;


