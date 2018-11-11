LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
LIBRARY UNISIM;
USE UNISIM.VCOMPONENTS.ALL;

entity Averager is
port(	m_din : in std_logic_vector(7 downto 0);
		m_dout : out std_logic_vector(7 downto 0)
	);
end Averager;

architecture Behavioral of Averager is

begin


end Behavioral;

