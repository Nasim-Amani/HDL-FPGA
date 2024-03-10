library ieee;                                	
use ieee.std_logic_1164.all;           	
use ieee.numeric_std.all;

entity joinandsplit is port(
A: in std_logic_vector(4 downto 0);
B: in std_logic_vector(2 downto 0);
Dout : out std_logic_vector(5 downto 0);
X: out std_logic;
Y: out std_logic ); 
end entity joinandsplit;

architecture joinandsplit_arch of joinandsplit is
begin js_proc: process(A,B) begin
Dout <= ( A(2) & A(1) & A(0) & 
          B(2) & B(1) & B(0)  );
X <= A(3);
Y <= A(4);
end process js_proc;
end architecture joinandsplit_arch;

