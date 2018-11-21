LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
LIBRARY UNISIM;
USE UNISIM.VCOMPONENTS.ALL;

entity CompSub is
    port( -- in
			m_clk		: in std_logic;
            m_divisor   : in std_logic_vector(7 downto 0);
            m_dividend  : in std_logic_vector(7 downto 0);
        --out
			m_remainder : out std_logic_vector(7 downto 0);
            m_quotient 	: out std_logic
        );
end CompSub;

architecture Behavioral of CompSub is
    signal s_div_comp : std_logic := '0';
	
	signal s_dividend	: std_logic_vector(7 downto 0);
	signal s_divisor 	: std_logic_vector(7 downto 0);
	
begin
	process(m_clk)
	begin
		if rising_edge(m_clk) then
			s_dividend <= m_dividend;
			s_divisor  <= m_divisor ;
		end if;
	end process;
	
    s_div_comp  <= '1' when s_dividend >= s_divisor else
                   '0';
    m_quotient  <= s_div_comp;
    m_remainder <= s_dividend - s_divisor when s_div_comp = '1' else
                   s_dividend;

	---------------------------	
	
end Behavioral;

