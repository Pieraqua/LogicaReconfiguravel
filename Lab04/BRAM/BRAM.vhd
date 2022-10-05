Library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

Entity BRAM is
   PORT(RST       : in  std_logic;                    -- RST global
        CLK       : in  std_logic;                    -- CLK do NIOS
        READDATA  : out std_logic_vector(7 downto 0);-- Saida da BRAM
        WRITEDATA : in  std_logic_vector(7 downto 0);-- Dado a ser escrito no registrador escolhido
        WRITE_EN     : in std_logic;                  -- WRITE_EN do NIOS
        READ_EN     : in std_logic;                   -- READ_EN do NIOS
        CS        : in std_logic;                     -- CS do NIOS
        ADD       : in std_logic_vector (1 downto 0)  -- Endereco do registrador interno
		  );
end entity;


Architecture X of BRAM is
signal VDD, GND : std_logic;     
signal Q_BRAM : std_logic_vector(7 downto 0);  -- Saida da BRAM
signal WE_BRAM, RE_BRAM, WE_REG0, WE_REG1, WE_REG2 : std_logic; -- WE da BRAM e regs e RE da BRAM
signal Q_REG0, Q_REG1, Q_REG2 : std_logic_vector(31 downto 0); -- Saida dos registradores

COMPONENT reg32
PORT(    RST       : in  std_logic;        
         CLK       : in  std_logic;        
         READDATA  : out std_logic_vector(31 downto 0);
         WRITEDATA : in  std_logic_vector(31 downto 0);
         WRITE_EN  : in std_logic;
		   );
END COMPONENT;

Begin
VDD <= '1';
GND <= '0';

REG32_0 : REG_32BIT
	port map (
		RST 	   => RST,
		CLK 	   => CLK,
		READDATA => Q_REG0,
		WRITEDATA=> WRITEDATA,
		WRITE_EN => WE_REG0
);

REG32_1 : REG_32BIT
	port map (
		RST 	   => RST,
		CLK 	   => CLK,
		READDATA => Q_REG1,
		WRITEDATA=> WRITEDATA,
		WRITE_EN => WE_REG1
);

REG32_2 : REG_32BIT
	port map (
		RST 	   => RST,
		CLK 	   => CLK,
		READDATA => Q_REG2,
		WRITEDATA=> WRITEDATA,
		WRITE_EN => WE_REG2
);

-- SAIDA USER HARDWARE
READDATA <= Q_BRAM when CS='1' and READ_EN = '1' else (others => 'Z');
-- WE REGISTRADORES
WE_REG0 <= WRITE_EN and CS and (not ADD(0)) and (not ADD(1));
WE_REG1 <= WRITE_EN and CS and (not ADD(0)) and (ADD(1));
WE_REG2 <= WRITE_EN and CS and (ADD(0)) and (not ADD(1));
-- WE e RE BRAM
WE_BRAM <= Q_REG2(0);
RE_BRAM <= Q_REG2(1);

-- TODO: mapear Q_REG0 para ADD BRAM
-- TODO: mapear Q_REG1 para DATAIN BRAM
-- TODO: mapear Q_REG2(0) para WE BRAM
-- TODO: mapear Q_REG2(1) para RE BRAM 

End architecture;
