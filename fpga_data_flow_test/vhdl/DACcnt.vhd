library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

entity DACcnt is
    Port (
    m_clk, m_sys_clk, m_start, m_end : in std_logic;
    m_Ain : in std_logic_vector(10 downto 0);

    m_Aout : out std_logic_vector(10 downto 0);
    d_reg : out std_logic_vector(10 downto 0);
    m_enb2 : out std_logic
);
end DACcnt;

architecture Behavioral of DACcnt is

    type s_dac_state is (dacidle, dacload, dacplay);

    signal s_ps : s_dac_state := dacidle;
    signal s_reg : std_logic_vector(10 downto 0) := (others => '0');
    signal s_cnt : std_logic_vector(10 downto 0) := (others => '0');

    signal s_comp : std_logic := '0';

begin

    dac_sync_proc : process(m_clk)
    begin
        if rising_edge(m_clk) then
            case s_ps is
                when dacidle =>
                    if(m_start = '1') then s_ps <= dacload;
                    else s_ps <= dacidle;
                    end if;
                when dacload =>
                    if(m_end = '1') then s_ps <= dacidle;
                    else s_ps <= dacplay;
                    end if;
                    s_reg <= m_Ain;
                when dacplay =>
                    if(m_end = '1') then s_ps <= dacidle;
                    else s_ps <= dacplay;
                    end if;
            end case;
        end if;
    end process;

    dac_slow_proc : process(m_sys_clk)
    begin
        if rising_edge(m_sys_clk) then
            if(s_comp = '1' and s_ps = dacplay) then s_cnt <= s_cnt+1;
            else s_cnt <= (others => '0');
            end if;
        end if;
    end process;

    m_enb2 <= '1' when s_ps = dacplay else
              '0';
    m_Aout <= s_cnt;
    d_reg <= s_reg;
    s_comp <= '1' when ( s_cnt < s_reg - 1 ) else
              '0';

end Behavioral;
