----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:17:50 08/15/2024 
-- Design Name: 
-- Module Name:    Display7Seg - Behavioral 
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

entity Display7Seg is
end Display7Seg;

architecture Behavioral of Display7Seg is

begin
DISPLAY <=  "1000000" WHEN NumPress=1 ELSE    --'0'
			   "1111001" WHEN NumPress=2 ELSE    --'1'
			   "0100100" WHEN NumPress=3 ELSE    --'2'
			   "0110000" WHEN NumPress=4 ELSE    --'3'
			   "0011001" WHEN NumPress=5 ELSE    --'4'
				"0010010" WHEN NumPress=6 ELSE    --'5'
				"0000010" WHEN NumPress=7 ELSE    --'6'
				"1111000" WHEN NumPress=8 ELSE    --'7'
				"0000000" WHEN NumPress=9 ELSE    --'8'
				"0010000" WHEN NumPress=10 ELSE    --'9'
				"0001000" WHEN NumPress=11 ELSE    --'A'
				"0000011" WHEN NumPress=12 ELSE    --'b'
				"1000110" WHEN NumPress=13 ELSE    --'C'
				"0100001" WHEN NumPress=14 ELSE    --'d'
				"0000110" WHEN NumPress=15 ELSE    --'E'
				"0001110" WHEN NumPress=16 ELSE    --'F'
				"XXXXXXX";

end Behavioral;

