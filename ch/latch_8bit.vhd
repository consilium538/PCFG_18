library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity latch_8bit is
    Port ( m_clk : in STD_LOGIC;
           m_en : in  STD_LOGIC;
           m_Din : in  STD_LOGIC_VECTOR(7 downto 0);
           m_Dout : out  STD_LOGIC_VECTOR(7 downto 0));
end latch_8bit;

architecture Behavioral of latch_8bit is

    signal s_reg : STD_LOGIC_VECTOR(7 downto 0);

begin

    process(m_clk)
    begin
        if rising_edge(m_clk) then
            if m_en = '1' then
                s_reg <= m_Din;
            end if;
        end if;
    end process;

    m_Dout <= s_reg;

end Behavioral;
