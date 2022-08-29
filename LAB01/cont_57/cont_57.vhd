Library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

Entity cont_57 is
	PORT(RST: in std_logic;
	     CLK: in std_logic;
		  Q: out unsigned(7 downto 0);
		  EN: in std_logic;
		  CLR: in std_logic
		  --LD:  in std_logic;
		  --LOAD: in unsigned (3 downto 0)
		  );
end entity;  
Architecture X of cont_57 is
signal q_LSB : unsigned (3 downto 0);
signal q_MSB : unsigned (3 downto 0);
signal q_Out : unsigned (7 downto 0);
signal maxed : std_logic;
signal clear : std_logic;
signal en_MSB : std_logic;
Begin
	clear <= CLR or maxed;
	q_Out <= (q_MSB) & (q_LSB + 12);
	maxed <= '1' when q_Out = 68 else '0';
	en_MSB <= '1' when (q_LSB + 12) = "1111" else '0';
	LSB: entity work.cont_4(x)
	port map(CLK => clk,
						  RST => RST,
                    Q   => q_LSB,
                    EN => EN,
                    CLR=> clear,
                    LD  => '0',
                    LOAD => "0000");
	MSB: entity work.cont_4(x)
	port map(CLK => clk,
						  RST => RST,
                    Q   => q_MSB,
                    EN => en_MSB,
                    CLR=> clear,
                    LD  => '0',
                    LOAD => "0000");

	Process (CLK, RST)
		Begin
		
	End process;
	Q <= q_Out;
End architecture;
