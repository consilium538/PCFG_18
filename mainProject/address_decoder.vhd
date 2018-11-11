LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
LIBRARY UNISIM;
USE UNISIM.VCOMPONENTS.ALL;

entity address_decoder is
port(	m_addr_in : in std_logic_vector(8 downto 0);
		m_pcs_addr : out std_logic;
		m_mode_addr : out std_logic(2 downto 0)
	);
end address_decoder;

architecture Behavioral of address_decoder is



begin




end Behavioral;

