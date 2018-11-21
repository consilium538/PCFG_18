library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity reg8bit is
    Port ( m_clk, m_en : in  STD_LOGIC;
           m_Din : in  STD_LOGIC_VECTOR(7 downto 0);
           m_Dout : out  STD_LOGIC_VECTOR(7 downto 0));
end reg8bit;

architecture Behavioral of reg11bit is

    signal s_reg : STD_LOGIC_VECTOR(7 downto 0);

begin

    process(m_clk)
    begin
        if rising_edge(m_clk) then
            if m_en = '1' then s_reg <= m_Din;
            end if;
        end if;
    end process;

    m_Dout <= s_reg;
end Behavioral;
