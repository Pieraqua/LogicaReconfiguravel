-- FlowControl_tb.vhd

-- created by   :   Paulo Sergio Avila Junior
-- date         :   21-September-2022

-- Functionality:
  -- Explora o controle de fluxo em hardware entre BRAMs e FIFOs

-- ports:
    -- we   : write enable
    -- addr : input port for getting address
    -- din : input data to be stored in RAM
    -- data : output data read from RAM
    -- addr_width : total number of elements to store (put exact number)
    -- addr_bits  : bits requires to store elements specified by addr_width
    -- data_width : number of bits in each elements
	 
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity FlowControl_tb is
begin
end FlowControl_tb;

architecture x of FlowControl_tb is
	signal clk : std_logic := '0';
	signal rst : std_logic := '1';
	signal readclk : std_logic := '0';
	
	signal bram1_din : std_logic_vector(7 downto 0);
	signal bram1_addr : std_logic_vector(9 downto 0);
	
	signal test_fifo_write, test_fifo_read : std_logic;
	signal test_smRead, test_smWrite : std_logic_vector(2 downto 0);
	signal test_fifoOut, test_bram1Out, test_bram2Out : std_logic_vector(7 downto 0);
	signal test_bram1Addr, test_bram2Addr : std_logic_vector(9 downto 0);
	
	signal rst_cont_write, en_cont_write: std_logic;
	
begin
	uut : entity work.FlowControl(primeira_estrategia)
	port map(
		writing => en_cont_write,
		clk => clk,
		readclk => readclk,
		rst => rst,
		bram1_din => bram1_din,
		bram1_addr_writing => bram1_addr,
		--sinais de teste
		test_fifo_write => test_fifo_write,
		test_fifo_read => test_fifo_read, -- out std_logic; 
		test_smRead => test_smRead,
		test_smWrite => test_smWrite, -- out std_logic_vector(2 downto 0);
		test_fifoOut => test_fifoOut,
		test_bram1Out => test_bram1Out,
		test_bram2Out => test_bram2Out, -- out std_logic_vector(7 downto 0);
		test_bram1Addr => test_bram1Addr,
		test_bram2Addr => test_bram2Addr -- out std_logic_vector(9 downto 0)
	);
	
	cont : entity work.cont_generic
	generic map(
			CONT_WIDTH => 8,
			CONT_MAX => 256
	)
	port map(
		  RST => rst_cont_write,
	     CLK => clk,
		  Q => bram1_din,
		  EN => en_cont_write,
		  CLR => '0',
		  LD => '0',
		  LOAD => (others => '0')
	);
	
	contaddr : entity work.cont_generic
	generic map(
			CONT_WIDTH => 10,
			CONT_MAX => 1024
	)
	port map(
		  RST => rst_cont_write,
	     CLK => clk,
		  Q => bram1_addr,
		  EN => en_cont_write,
		  CLR => '0',
		  LD => '0',
		  LOAD => (others => '0')
	);

	clk <= not clk after 0.5ns;
	readclk <= not readclk after 2.5ns;
	process
	begin
		rst <= '1';
		rst_cont_write <= '1';
		en_cont_write <= '1';
		wait for 5ns;
		rst <= '0';
		rst_cont_write <= '0';
		wait for 2048ns;
		en_cont_write <= '0';
		wait;
	end process;
end architecture;