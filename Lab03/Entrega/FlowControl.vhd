-- FlowControl.vhd

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


entity FlowControl is
port(
	clk, rst, writing, readclk : in std_logic;
	bram1_din : in std_logic_vector(7 downto 0);
	bram1_addr_writing : in std_logic_vector(9 downto 0);
	--sinais de teste
	test_fifo_write, test_fifo_read : out std_logic; 
	test_smRead, test_smWrite: out std_logic_vector(2 downto 0);
	test_fifoOut, test_bram1Out, test_bram2Out : out std_logic_vector(7 downto 0);
	test_bram1Addr, test_bram2Addr : out std_logic_vector(9 downto 0)
);
end FlowControl;


architecture primeira_estrategia of FlowControl is
	signal fifo_wr_en : std_logic := '0';
	signal fifo_wr_data : std_logic_vector(7 downto 0) := "00000000";
	signal fifo_af : std_logic := '0';
	signal fifo_full : std_logic := '0';
	signal fifo_rd_en : std_logic := '0';
	signal fifo_output : std_logic_vector(7 downto 0) := "00000000";
	signal fifo_ae : std_logic := '0';
	signal fifo_empty : std_logic := '0';
	signal sm_rd : std_logic_vector(2 downto 0) := "000";
	signal sm_wr : std_logic_vector(2 downto 0) := "000";
	
   signal bram1_addr : std_logic_vector(9 downto 0) := "0000000000";
	signal bram1_addr_cont : std_logic_vector(9 downto 0) := "0000000000";
	signal bram2_we : std_logic := '0';
   signal bram2_addr : std_logic_vector(9 downto 0) := "0000000000";
	
	signal not_writing : std_logic;

begin
	--sinais de teste
	test_fifo_write <= fifo_wr_en;
	test_fifo_read <= fifo_rd_en;
	test_smRead <= sm_rd;
	test_smWrite <= sm_wr;
	test_fifoOut <= fifo_output;
	test_bram1Out <= fifo_wr_data;
	test_bram1Addr <= bram1_addr;
	test_bram2Addr <= bram2_addr;
	not_writing <= not writing;

	fifo		: 	entity work.module_fifo_regs_with_flags(rtl)
	generic map(
	g_WIDTH => 8, 
	g_DEPTH => 512,
	g_AE_LEVEL => 256,
	g_AF_LEVEL => 384)
	port map( 
	i_rst_sync => rst,--in std_logic; 
	i_clk => clk,--in std_logic; 
	-- FIFO Write Interface 
	i_wr_en => fifo_wr_en,--in std_logic; 
	i_wr_data => fifo_wr_data,--in std_logic_vector(g_WIDTH-1 downto 0); 
	o_af => fifo_af,--out std_logic; 
	o_full => fifo_full,--out std_logic; 
	-- FIFO Read Interface 
	i_rd_en => fifo_rd_en,--in std_logic; 
	o_rd_data => fifo_output,--out std_logic_vector(g_WIDTH-1 downto 0); 
	o_ae => fifo_ae,--out std_logic; 
	o_empty => fifo_empty,--out std_logic,
	i_clk_read => readclk
	);
	
	bram1 : entity work.single_port_RAM
	generic map(
		addr_width => 10,
		data_width => 8
	)
	port map(
    clk => clk,
    we => writing,
    addr => bram1_addr,
    din => bram1_din,
    dout => fifo_wr_data
    );
	 
	bram2 : entity work.single_port_RAM
	generic map(
		addr_width => 10,
		data_width => 8
	)
	port map(
    clk => readclk,
    we => fifo_rd_en,
    addr => bram2_addr,
    din => fifo_output,
    dout => test_bram2Out
    );
	
	sm_read : entity work.statemachine(rd)
	port map(
		empty => fifo_empty,
		cont_75 => fifo_af,
		cont_50 => fifo_ae, 
		wr_en => not_writing, 
		clk => clk,
		reset => rst,
		q_out => sm_rd
	);
	
	sm_write : entity work.statemachine(wr)
	port map(
		empty => fifo_empty,
		cont_75 => fifo_af,
		cont_50 => fifo_ae, 
		wr_en => not_writing, 
		clk => clk,
		reset => rst,
		q_out => sm_wr
	);
	
	wr_addr_cont : entity work.cont_generic
	generic map(
		CONT_WIDTH => 10,
		CONT_MAX => 1024
	)
	port map(
		  RST => rst,
		  CLK => clk,
		  Q => bram1_addr_cont,
		  EN => fifo_wr_en,
		  CLR => rst,
		  LD => '0',
		  LOAD => (others => '0')
	);
	
	rd_addr_cont : entity work.cont_generic
	generic map(
		CONT_WIDTH => 10,
		CONT_MAX => 1024
	)
	port map(
		  RST => rst,
		  CLK => readclk,
		  Q => bram2_addr,
		  EN => fifo_rd_en,
		  CLR => rst,
		  LD => '0',
		  LOAD => (others => '0')
	);
	
		bram1_addr <= bram1_addr_cont or bram1_addr_writing;
	process(clk)
	begin 
		if (clk'event and clk='1') then
			if(writing='0') then
				if (sm_wr="001") then 
					fifo_wr_en<='1';
				else
					fifo_wr_en<='0';
				end if;
				if(sm_rd="001") then
					fifo_rd_en<='1';
				else
					fifo_rd_en<='0';
				end if;
			else
				fifo_rd_en <= '0';
				fifo_wr_en <= '0';
			end if;
		end if;
	end process;

end primeira_estrategia;