LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
LIBRARY UNISIM;
USE UNISIM.VCOMPONENTS.ALL;

entity address_decoder is
port(	m_addr_in 		: in std_logic_vector(8 downto 0);
		m_pcs_addr 		: out std_logic;
		m_mode_addr 	: out std_logic_vector(2 downto 0);
		m_mode_valid 	: out std_logic
	);
end address_decoder;

architecture Behavioral of address_decoder is

signal s_addr_in : std_logic_vector(8 downto 0);


begin
s_addr_in <= m_addr_in;

m_pcs_addr <= '1' when m_addr_in(8 downto 4)=x"14" else '0';
m_mode_addr <= 	"000" when m_addr_in=x"120" else
				"001" when m_addr_in=x"180" else
				"010" when m_addr_in=x"181" else
				"011" when m_addr_in=x"160" else
				"100" when m_addr_in=x"172" else
				"101" when m_addr_in=x"174" else
				"110" when m_addr_in=x"176" else
				"111" when m_addr_in=x"150" else "000";
				
m_mode_valid <= '1' when m_addr_in=x"120" or
                         m_addr_in=x"180" or
                         m_addr_in=x"181" or
                         m_addr_in=x"160" or
                         m_addr_in=x"172" or
                         m_addr_in=x"174" or
                         m_addr_in=x"176" or
                         m_addr_in=x"150" else '0';

end Behavioral;

