Library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

Entity Somadordeum is
	PORT(CLK: in std_logic;
		  Q: out std_logic_vector(2 downto 0);
		  INPUT: in std_logic_vector(3 downto 0)
		  );
end entity;  

Architecture X of Somadordeum is
  variable temp : unsigned(2 downto 0) := "000";
  

Begin
	Process (CLK)
		Begin
		if rising_edge(clk) then
			for i in INPUT'range loop
				 if INPUT(i) = '1' then temp := temp + 1; 
				 end if;
		  end loop;
		Q <= std_logic_vector(temp);
		end if;
	End process;
End architecture;

Architecture Whil of Somadordeum is
  variable temp : unsigned(2 downto 0) := "000";
  variable i : integer := 0;
  
Begin
	Process (CLK)
		Begin
		if rising_edge(clk) then
			while i <= 3 loop
				if INPUT(i) = '1' then temp := temp + 1; 
				end if;
				i := i + 1;
		  end loop;
  
		Q <= std_logic_vector(temp);
		end if;
	End process;
End architecture;


Architecture Sign of Somadordeum is
Begin
	Process (CLK, INPUT)
		Begin
		if rising_edge(clk) then
			CASE INPUT IS
				WHEN "0000" =>
					Q <= "000";
				WHEN "0001" =>
					Q <= "001";
				WHEN "0010" =>
					Q <= "001";
				WHEN "0100" =>
					Q <= "001";
				WHEN "1000" =>
					Q <= "001";
				WHEN "1001" =>
					Q <= "010";
				WHEN "1010" =>
					Q <= "010";
				WHEN "1100" =>
					Q <= "010";
				WHEN "0101" =>
					Q <= "010";
				WHEN "0110" =>
					Q <= "010";
				WHEN "0011" =>
					Q <= "010";
				WHEN "1110" =>
					Q <= "011";
				WHEN "0111" =>
					Q <= "011";
				WHEN "1101" =>
					Q <= "011";
				WHEN "1011" =>
					Q <= "011";
				WHEN "1111" =>
					Q <= "100";
				WHEN OTHERS =>
					Q <= "111";
				END CASE;
			END IF;
	End process;
End architecture;
