LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
LIBRARY UNISIM;
USE UNISIM.VCOMPONENTS.ALL;

entity Averager is
port(	m_din 			: in std_logic_vector(7 downto 0);
		m_average_en 	: in std_logic;
		m_average_clr	: in std_logic;
		m_counter_in	: in std_logic_vector(10 downto 0);
		m_dout 			: out std_logic_vector(7 downto 0)
	);
end Averager;

architecture Behavioral of Averager is
signal data : std_logic_vector(13 downto 0);

begin


end Behavioral;

