library ieee;
use ieee.std_logic_1164.all;

entity keyconcur is
	port(
		a,b,c,d: in std_logic_vector (7 downto0);
		s: in std_logic_vector (1 downto 0);
		x: out std_logic_vector ( 7 downto 0)
		);
end keyconcur;

=IF(PostingUpliftApplied(Request!$K$18,Request!$D$14),0,IF(Request!$D$14="Poľsko",0.4,0.2))