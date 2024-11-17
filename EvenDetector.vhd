library ieee;
use ieee.std_logic_1164.all;

-- entity declaration
entity even_detector is
	port(
		a: in std_logic_vector(2 downto 0);
		even: out std_logic
	);
end even_detector
-- ARCHITECTURE body
ARCHITECTURE sop_arch of even_detector is
	signal p1, p2, p3, p4 : std_logic;
begin
	even <= (p1 or p2)or(p3 or p4) after 20 ns;
	p1 <= (not a(2)) and (not a(1)) and (not a(0)) after 15ns;
	p2 <= (not a(2)) and (not a(1)) and a(0) after 12ns;
	p3 <= a(2) and (not a(1)) and a(0) after 12ns;
	p4 <= a(2) and a(1) and (not a(0)) after 12ns;
end sop_arch;
-- Another way is with xor
ARCHITECTURE xor_arch of even_detector is
	signal odd: std_logic;
begin
	even <= not odd;
	odd <= a(2) xor a(1) xor a(0);
end xor_arch;
-- The description is essentially a schematic, representing a block diagram or circuit diagram	
-- Formal VHDL structural description is done by using the concept of component. A component can
-- be either an existing or a hypothetical part. It first has to be declared (make known) and 
-- then can be instantiated (actually used) in the ARCHITECTURE body as needed.	
	
ARCHITECTURE str_arch OF even_detector IS 
-- declaration FOR XOR GATE
	component XOR2
		PORT(
			I1,I2: IN std_logic;
			O1: OUT std_logic;
		);
	END component;
	-- DECLARATION FOR INVERSOR
	component NOT1
		PORT (
			I1: IN std_logic;
			O1: OUT std_logic;
		);
	eND component;
	SIGNAL SIG1, SIG2 :std_logic;
	
	begin
		-- INSTANTISTION OF THE 1ST XOR INSTANCE
		UNIT1: XOR2
			PORT MAP (I1 => A(0),I2 => A(1), O1 => SIG1);
		-- INSTANTISTION OF THE 2ND XOR INSTANCE
		UNIT2: XOR2
			PORT MAP (I1 => A(2), I2 => SIG1, O1=> SIG2);
		-- INSTANTISTION OF THE INVERTOR
		UNIT3: NOT1
			PORT MAP (I1=>SIG2,O1 => EVEN);
	END str_arch;
	
	-- BASIC SKELETON OF A process
	PROCESS (SENSITIVITY_LIST)
		VARIABLE DECLARATION;
	begin
		SEQUENTIAL STATEMENTS;
	END PROCESS;
	