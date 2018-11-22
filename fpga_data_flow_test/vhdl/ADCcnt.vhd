library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ADCcnt is
    Port (
    m_clk, m_sys_clk, m_start, m_end : in std_logic;

    m_Aout : out std_logic_vector(10 downto 0);
    d_reg : out std_logic_vector(10 downto 0)
);
end ADCcnt;

architecture Behavioral of ADCcnt is

    type s_adc_state is (adcidle, adcplay);
    signal s_ps : s_adc_state := adcidle;

    signal s_reg : std_logic_vector(10 downto 0) := (others => '0');
    signal s_cnt : std_logic_vector(10 downto 0) := (others => '0');
    signal s_adc_comp : std_logic := '0';

begin

    adc_sync_proc : process(m_clk)
    begin
        if rising_edge(m_clk) then
            case s_ps is
                when adcidle =>
                    if(m_start = '1') then s_ps <= adcplay;
                    else s_ps <= adcidle;
                    end if;
                when adcplay =>
                    if(m_end = '1') then s_ps <= adcidle;
                    else s_ps <= adcplay;
                    end if;
            end case;
        end if;
    end process;

    adc_slow_proc : process(m_sys_clk)
    begin
        if rising_edge(m_sys_clk) then
            if(s_adc_comp = '1' and s_ps = adcplay) then s_cnt <= s_cnt+1;
            else s_cnt <= (others => '0');
            end if;
        end if;
    end process;

    m_Aout <= s_cnt;
    d_reg <= s_reg;
    s_adc_comp <= '1' when s_cnt < 2048 else
                  '0';

end Behavioral;

