

library ieee;
use ieee.std_logic_1164.all;

entity FullAdd is port ( 
A, B, Cin: in std_logic; 
Sum, Cout: out std_logic 
); 
end FullAdd;

architecture behavioral of FullAdd is
begin
my_labels: process (A, B , Cin)
begin
Sum <= ((A XOR B) XOR Cin );
Cout <= ((A XOR B) AND Cin ) or (A and B);

end process;
end behavioral;
