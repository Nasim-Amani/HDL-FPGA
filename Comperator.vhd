--------------------------------------------------------------------------------
--                                                                            --
--               Application Assignment Problem 1 Module 1 Course 2           --
--                                                                            --
--------------------------------------------------------------------------------
--
-- 
-- @file AAC2M1P1.vhd
-- @brief Application Assignment 2-001 Example code with errors to be found
-- @version: 1.0 
-- Date of current revision:  @date 2018-08-08  
-- Target FPGA: [Intel Altera MAX10] 
-- Tools used: [Quartus Prime 16.1] for editing and synthesis 
--             [Modeltech ModelSIM 10.4a Student Edition] for simulation 
--             [Quartus Prime 16.1]  for place and route if applied
--             
--  Functional Description:  This file contains the entity VHDL code for a 
--              2-bit comparator.  The architecture is to be completed by the
--              student. 
--  Hierarchy:  Only 1 level for this simple device 
--  
--  Designed for: Coursera 
--                
--  Designed by:  @author Tim Scherr
--                University of Colorado
--
--      Copyright (c) 2018 by Tim Scherr
--
-- Redistribution, modification or use of this software in source or binary
-- forms is permitted as long as the files maintain this copyright. Users are
-- permitted to modify this and use it to learn about the field of HDl code.
-- Tim Scherr and the University of Colorado are not liable for any misuse
-- of this material.
------------------------------------------------------------------------------
-- 

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




    