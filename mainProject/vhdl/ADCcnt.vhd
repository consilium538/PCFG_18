----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:13:27 11/18/2018 
-- Design Name: 
-- Module Name:    DACcnt - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ADCcnt is
    Port (
    m_clk, m_sys_clk, m_start, m_end : in std_logic;
    m_ena3 : out std_logic;
    m_Aout : out std_logic_vector(10 downto 0);
    d_reg : out std_logic_vector(10 downto 0)
);
end ADCcnt;

architecture Behavioral of ADCcnt is
    type s_adc_state is (adcidle, adcplay);

    signal s_ps, s_ns : s_adc_state := adcidle;
    signal s_reg : std_logic_vector(10 downto 0) := (others => '0');
    signal s_cnt : std_logic_vector(10 downto 0) := (others => '0');
begin
    m_Aout <= s_cnt;
    d_reg <= s_reg;

    adc_sync_proc : process(m_clk)
    begin
        if rising_edge(m_clk) then
            s_ps <= s_ns;
        end if;
    end process;

    adc_slow_proc : process(m_sys_clk, s_reg, s_ps)
    begin
        if rising_edge(m_sys_clk) then
            if(s_cnt < 256 and s_ps = adcplay) then s_cnt <= s_cnt+1;
            else s_cnt <= (others => '0');
            end if;
        end if;
    end process;

    adc_comb_proc : process(m_clk, m_start, m_end,s_ps)
    begin
        case s_ps is
            when adcidle =>
                if(m_start = '1') then s_ns <= adcplay;
                else s_ns <= adcidle;
                end if;
                m_ena3 <= '0';
            when adcplay =>
                m_ena3 <= '1';
                if(m_end = '1') then s_ns <= adcidle;
                else s_ns <= adcplay;
                end if;
        end case;
    end process;
end Behavioral;

