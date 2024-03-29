library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

--use IEEE.NUMERIC_STD.ALL;
--use UNISIM.VComponents.all;

entity RemController is
    Port ( --input
           m_clk, m_enp, m_clr : in  STD_LOGIC;
           m_sel : in  STD_LOGIC_VECTOR(1 downto 0);
           m_Din : in  STD_LOGIC_VECTOR(10 downto 0);
           -- output
           m_comp : out STD_LOGIC;
           m_Cnt : out  STD_LOGIC_VECTOR(10 downto 0);
           m_Dout : out  STD_LOGIC_VECTOR(10 downto 0));
end RemController;

architecture Behavioral of RemController is
    signal s_Reg : STD_LOGIC_VECTOR(10 downto 0);
    signal s_Cnt : STD_LOGIC_VECTOR(10 downto 0);
begin
    m_Cnt <= s_Cnt;
    m_Dout <= s_Reg;
    m_comp <= '1' when s_Reg <= s_Cnt else '0';
    process(m_clk) -- counter process
    begin
        if rising_edge(m_clk) then
            if    m_clr = '1' then s_Cnt <= (others => '0');
            elsif m_enp = '1' then s_Cnt <= s_Cnt + 1;
            end if;
        end if;
    end process;
    
    process(m_clk) -- register process
    begin
        if rising_edge(m_clk) then
            if    m_sel = "00" then s_Reg <= s_Reg;
            elsif m_sel = "01" then s_Reg <= s_Reg+1;
            elsif m_sel = "10" then s_Reg <= (others => '0');
            elsif m_sel = "11" then s_Reg <= m_Din;
            end if;
        end if;
    end process;
end Behavioral;
