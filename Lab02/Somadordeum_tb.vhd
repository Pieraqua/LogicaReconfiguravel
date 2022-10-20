Library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.all;

Entity Somadordeum_tb is

end entity;

architecture teste of Somadordeum_tb is
--component cont_4 is
--	PORT(RST: in std_logic;
--	     CLK: in std_logic;
--		  Q: out unsigned(3 downto 0);
--		  EN: in std_logic;
--		  CLR: in std_logic;
--		  LD:  in std_logic;
--		  LOAD: in unsigned (3 downto 0));
--end component;  
	constant PERIODO : time := 8 ns;

	signal clk : std_logic := '0';
	signal QFor : std_logic_vector(2 downto 0);
	signal QSign : std_logic_vector(2 downto 0);
	signal QWhil : std_logic_vector(2 downto 0);
	signal inp : std_logic_vector(3 downto 0);
begin
	clk <= not clk after 2 ns;
   DUTFor: entity work.Somadordeum(X)
	port map
	     (CLK => clk,
                    Q   => QFor,
						  INPUT => inp);
	DUTSign: entity work.Somadordeum(Sign)
	port map
	     (CLK => clk,
                    Q   => QSign,
						  INPUT => inp);
   DUTWhil: entity work.Somadordeum(Whil)
	port map
	     (CLK => clk,
                    Q   => QWhil,
						  INPUT => inp);

process
	begin
		inp <= "0000";
		wait for PERIODO;
		inp <= "0001";
		wait for PERIODO;
		inp <= "0010";
		wait for PERIODO;
		inp <= "0100";
		wait for PERIODO;
		inp <= "1000";
		wait for PERIODO;
		inp <= "0011";
		wait for PERIODO;
		inp <= "0110";
		wait for PERIODO;
		inp <= "1100";
		wait for PERIODO;
		inp <= "0111";
		wait for PERIODO;
		inp <= "1110";
		wait for PERIODO;
		inp <= "1111";
		wait for PERIODO;
		inp <= "0000";
		wait;
	end process;	
end architecture;
