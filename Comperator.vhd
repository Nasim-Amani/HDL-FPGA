 
library ieee;
use ieee.std_logic_1164.all;

entity comparator2 is
  -- size of each input
  port (
    A, B    : in std_logic_vector(1 downto 0);
    Greater, Equals, Lower : out std_logic
  );
end comparator2;

architecture behave of comparator2 is
begin
  com_proc: process (A, B)
  begin
    if (A > B) then
      Equals  <= '0';
      Greater <= '1';
      Lower   <= '0';
    elsif (A < B) then
      Equals  <= '0';
      Greater <= '0';
      Lower   <= '1';
    else
      Equals  <= '1';
      Greater <= '0';
      Lower   <= '0';
    end if;
  end process com_proc;
end behave;                         




    
