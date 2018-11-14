LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
LIBRARY UNISIM;
USE UNISIM.VCOMPONENTS.ALL;

entity CompSub is
port( -- in
    m_clk	      : in std_logic;
		m_dividend  : in std_logic_vector(7 downto 0);
		m_divisor   : in std_logic_vector(7 downto 0);
    --out
		m_remainder : out std_logic_vector(7 downto 0);
		m_quotient 	: out std_logic
	);
end CompSub;

architecture Behavioral of CompSub is
begin
process(m_clk) -- accumulation
  begin
    if m_dividend > m_divisor then
      m_quotient <= '1';
      m_remainder <= m_dividend - m_divisor;
    else
      m_quotient <= '0';
      m_remainder <= m_dividend;
    end if;
  end process;
end Behavioral;

