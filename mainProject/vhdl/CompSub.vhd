LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
LIBRARY UNISIM;
USE UNISIM.VCOMPONENTS.ALL;

entity CompSub is
    port( -- in
            m_dividend  : in std_logic_vector(7 downto 0);
            m_divisor   : in std_logic_vector(7 downto 0);
        --out
            m_remainder : out std_logic_vector(7 downto 0);
            m_quotient 	: out std_logic
        );
end CompSub;

architecture Behavioral of CompSub is
    signal s_div_comp : std_logic := '0';
begin
    s_div_comp  <= '1' when m_dividend >= m_divisor else
                   '0';
    m_quotient  <= s_div_comp;
    m_remainder <= m_dividend - m_divisor when s_div_comp = '1' else
                   m_dividend;
end Behavioral;

