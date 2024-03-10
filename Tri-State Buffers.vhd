library ieee;                                	
use ieee.std_logic_1164.all;           	
use ieee.numeric_std.all;


entity y_tri is port(
OE:in std_logic;
Dout: in std_logic_vector(3 downto 0);
Pinout: out std_logic_vector(3 downto 0) );
end entity y_tri;

architecture tri_buf of y_tri is
begin
Pinout <= Dout when (OE = '1') else "ZZZZ";
end architecture tri_buf;