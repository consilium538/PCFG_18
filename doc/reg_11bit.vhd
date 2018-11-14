library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

--use IEEE.NUMERIC_STD.ALL;
--use UNISIM.VComponents.all;

entity reg11bit is
    Port ( m_clk, m_en : in  STD_LOGIC;
           m_Din : in  STD_LOGIC_VECTOR(10 downto 0);
           m_Dout : out  STD_LOGIC_VECTOR(10 downto 0));
end reg11bit;

architecture Behavioral of reg11bit is
    signal Q : STD_LOGIC_VECTOR(10 downto 0);
begin
    cout <= Q;
    process(clk)
    begin
        if rising_edge(clk) then
            if m_en = '1' then Q <= m_Din;
            end if;
        end if;
    end process;
end Behavioral;