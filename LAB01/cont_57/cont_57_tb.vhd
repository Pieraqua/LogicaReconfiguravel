Library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

Entity cont_57_tb is

end entity;

architecture teste of cont_57_tb is
--component cont_4 is
--	PORT(RST: in std_logic;
--	     CLK: in std_logic;
--		  Q: out unsigned(3 downto 0);
--		  EN: in std_logic;
--		  CLR: in std_logic;
--		  LD:  in std_logic;
--		  LOAD: in unsigned (3 downto 0));
--end component;  

	signal clk : std_logic := '0';
	signal ld : std_logic := '1';
	signal Q : unsigned(7 downto 0);
	signal EN : std_logic := '1';
	signal clr : std_logic := '0';
	signal LOAD : unsigned(3 downto 0) := "0000";
	signal RST : std_logic := '1';
	
	
begin
	clk <= not clk after 1 ns;
	RST <= '1', '0' after 5 ns;
	ld <= '0';


   DUT: entity work.cont_57(X)
	port map
	     (CLK => clk,
						  RST => RST,
                    Q   => Q,
                    EN => EN,
                    CLR=> clr);
                    --LD  => ld,
                    --LOAD => load);

process 
	begin
		wait;
	end process;	
end architecture;
