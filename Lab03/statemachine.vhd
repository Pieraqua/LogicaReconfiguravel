library ieee; use ieee.std_logic_1164.all; use ieee.numeric_std.all; 

entity statemachine is
	port(
		empty, cont_75, cont_50, wr_en, clk : in std_logic;
		reset : in std_logic;
		q_out : out std_logic_vector(2 downto 0)
	);
end statemachine;
	
architecture wr of statemachine is

	signal q : std_logic_vector(2 downto 0);
begin
	q_out <= q;
	process(clk)
	begin
		if(clk'event and clk='1') then
			if(reset='1') then
				q <= "000";
			elsif(wr_en='1') then
				case q is
					--reset
					when "000" =>
						q <= "001";
					--wr_fifo
					when "001" =>
						if(cont_75 = '1') then
							q <= "010";
						end if;
					--wr_wait
					when "010" =>
						if(cont_50='1') then
							q <= "001";
						end if;
					when others =>
						q <= "XXX";
					end case;
			end if;
		end if;
	end process;
end wr;

architecture rd of statemachine is
	signal q : std_logic_vector(2 downto 0);
begin
	q_out <= q;
process(clk)
	begin
		if(clk'event and clk='1') then
			if (reset='1') then
				q <= "000";
			elsif(wr_en='1') then
				case q is
					--rd_reset
					when "000" =>
						if(empty='1') then
							q <= "010";
						else
							q <= "001";
						end if;
					--read_fifo
					when "001" =>
						if(empty='1') then
							q <= "010";
						end if;
					--read_wait
					when "010" =>
						if(empty='0') then
							q <= "001";
						end if;
					when others =>
						q <= "XXX";
				end case;
			end if;
		end if;
	end process;

end rd;