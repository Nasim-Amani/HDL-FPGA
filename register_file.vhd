-- Entity --  
library ieee;                                	
use ieee.std_logic_1164.all;           	
use ieee.numeric_std.all;


entity regFile is
  generic (
    Dwidth : integer := 8;   -- Data Width
    Awidth : integer := 2 ); -- Address Width

  port (
    clk, wren    : in  std_logic;  -- Clock and Write enable
    wdata        : in  std_logic_vector(Dwidth-1 downto 0);   -- Write data
    waddr, raddr : in  std_logic_vector(Awidth-1 downto 0);   -- Write address, Read address
    rdata        : out std_logic_vector(Dwidth-1 downto 0) ); -- Read data
end entity regFile;

-- Architecture
architecture RFile_Arch of regFile is

    -- Declaration of a new data type.
    type array_type is array (0 to 2**Awidth-1) of std_logic_vector (Dwidth-1 downto 0);

    -- Making an object under the type declared.
    signal array_reg : array_type;

  begin rf_proc : process (clk, wren, wdata, waddr, raddr)
    begin
      if    (rising_edge(clk))      then
         if (wren='1')              then  
               array_reg(to_integer(unsigned(waddr)))  <= wdata; -- Type conversion
         end if;
         rdata <= array_reg(to_integer(unsigned(raddr)));
     end if;
  end process rf_proc;
end architecture RFile_Arch;
