Library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

Entity cont_generic is
	GENERIC( CONT_WIDTH: integer := 8;
				CONT_MAX : integer := 10
	);
	PORT(RST: in std_logic;
	     CLK: in std_logic;
		  Q: out std_logic_vector(CONT_WIDTH-1 downto 0);
		  EN: in std_logic;
		  CLR: in std_logic;
		  LD:  in std_logic;
		  LOAD: in unsigned (CONT_WIDTH-1 downto 0));
end entity;  
Architecture X of cont_generic is
Signal CONT: unsigned (CONT_WIDTH-1 downto 0);
Begin
	Process (CLK, RST)
		Begin
		If RST = '1' then
		   CONT <= (others => '0');
		Elsif CLK' event and CLK = '1' then
		   If CLR = '1'then
				CONT <= (others => '0');
			Else
				If EN = '1' then
					If LD = '1' then
						CONT <= LOAD;
					Else
						CONT <= CONT+1;
					End IF;
				End If;
			End If;
		End If;
	End process;
	Q <= std_logic_vector(CONT);
End architecture;
