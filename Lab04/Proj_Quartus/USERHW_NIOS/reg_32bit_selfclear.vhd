Library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

Entity reg_32bit_selfclear is
   PORT(RST       : in  std_logic;        
        CLK       : in  std_logic;        
        READDATA  : out std_logic_vector(31 downto 0);
        WRITEDATA : in  std_logic_vector(31 downto 0);
        WRITE_EN  : in std_logic
		  );
end entity;

ARCHITECTURE selfclear OF reg_32bit_selfclear IS
BEGIN
   PROCESS(RST, CLK)
   BEGIN
      IF RST = '1' THEN
         READDATA <= x"00000000";
      elsif CLK'EVENT AND CLK = '1' then
         if WRITE_EN = '1' then
            READDATA <= WRITEDATA;
         else 
            READDATA <= x"00000000";
         end if;	
      end if;
   END PROCESS;
END selfclear;