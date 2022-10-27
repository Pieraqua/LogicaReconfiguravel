Library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

Entity top_avalon_tb is
end entity;

Architecture X of top_avalon_tb is

component USERHW_NIOS is
   PORT(RST       : in  std_logic;                    -- RST global
        CLK       : in  std_logic;                    -- CLK do NIOS
        READDATA  : out std_logic_vector(31 downto 0);-- Saida da BRAM
        WRITEDATA : in  std_logic_vector(31 downto 0);-- Dado a ser escrito no registrador escolhido
        WRITE_EN     : in std_logic;                  -- WRITE_EN do NIOS
        READ_EN     : in std_logic;                   -- READ_EN do NIOS
        CS        : in std_logic;                     -- CS do NIOS
        ADD       : in std_logic_vector (1 downto 0)  -- Endereco do registrador interno
		  );
end component;
signal GND, VCC: std_logic; 
signal rst, clk, resetn: std_logic;
signal READDATA, WRITEDATA : std_logic_vector(31 downto 0);
signal ADD : std_logic_vector(1 downto 0);
TYPE state_type is (write_st0, write_st1, write_st2, read_st0, read_st1, increment_st, idle_st);
signal state : state_type; 
signal CS, WR_EN, RD_EN    : std_logic;

signal counter, endereco : integer;

begin  

GND <= '0';
VCC <= '1';

gera_rst:process 
begin 
	rst <= '1';
	wait for 15 ns;
	rst <= '0';
	wait;
end process;

gera_clk:process 
begin 
	clk <= '0';
	wait for 10 ns;
	clk <= '1';
	wait for 10 ns;
end process;

resetn <= not rst;

DUT:USERHW_NIOS
    port map
	   (CLK      	=> clk      ,
  	    RST    	 	=> rst   	,
        CS			=> CS		, 
        WRITEDATA  	=> WRITEDATA, 
        READDATA   	=> READDATA , 
        WRITE_EN   	=> WR_EN    , 
        READ_EN    	=> RD_EN    , 
        ADD        	=> ADD       
		  );
		  

		  
teste_1024escritas_1024leituras : process(RST, CLK)
begin
	If RST = '1' then
      counter    <= 1;		
	   state      <= idle_st;
	Elsif CLK' event and CLK = '1' then
		case state is
			when idle_st => 
				counter    <= 1;	
				endereco <= 0;
				state <= write_st0;
			when write_st0 =>
				state <= write_st1;
			when write_st1 =>
				state <= write_st2;
			when write_st2 =>
				if counter = 35 then 
					counter <= 1;
				else
					counter <= counter + 1;
				end if;
			
				if endereco = 1023 then
					state <= read_st0;
					endereco <= 0;
				else
					state <= write_st0;
					endereco <= endereco + 1;
				end if;
				
			when read_st0 =>
				state <= read_st1;
			when read_st1 =>
				if endereco = 1023 then
					state <= write_st0;
					endereco <= 0;
				else
					state <= read_st0;
					endereco <= endereco + 1;
				end if;
			when increment_st =>
	  end case;    	
	end if;
end process;


process(state)
	variable nome : string(1 to 35);
begin
		case state is
			when idle_st => 
				nome 			:= "+++--+++ PAULO SERGIO AVILA JUNIOR ";
				WR_EN 		<= '0';
				RD_EN 		<= '0';
				CS 			<= '1';
				ADD 			<= (OTHERS => '0');
				WRITEDATA 	<= (OTHERS => '0');
			when write_st0 =>
				WRITEDATA 	<= std_logic_vector(to_signed(endereco, 32));
				WR_EN 		<= '1';
				ADD 			<= "00";
			when write_st1 =>
				WRITEDATA 	<= std_logic_vector(to_signed(character'pos(nome(counter)), 32));
				WR_EN 		<= '1';
				ADD 			<= "01";
			when write_st2 =>
				WRITEDATA 	<= x"0000000" & "0001";
				WR_EN 		<= '1';
				ADD 			<= "10";
			when read_st1 =>
				WRITEDATA 	<= std_logic_vector(to_signed(endereco, 32));
				WR_EN 		<= '1';
				ADD 			<= "00";
			when read_st0 =>
				WRITEDATA 	<= x"0000000" & "0010";
				WR_EN 		<= '1';
				ADD 			<= "10";
				RD_EN 		<= '1';
			when increment_st =>
        end case;    	
end process;	

End architecture;

