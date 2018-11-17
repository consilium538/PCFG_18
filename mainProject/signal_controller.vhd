LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
LIBRARY UNISIM;
USE UNISIM.VCOMPONENTS.ALL;

entity signal_controller is
port(	m_clk		: in std_logic;
		m_sys_clk	: in std_logic;
		
		m_mode_addr	: in std_logic_vector(2 downto 0);
		m_mode_valid: in std_logic;
		m_wen		: in std_logic;
		m_ren		: in std_logic;
		
		m_ram1_mux_sel	: out std_logic_vector(1 downto 0); -- 00:Avg, 01:ram0, 10:dbus
		m_ram0_mux_sel	: out std_logic_vector(0 downto 0); -- 0:dbus, 1:adcram
		m_out_mux_sel	: out std_logic_vector(0 downto 0); -- 0:ram0, 1:ram1
		
		m_inlatch_en	: out std_logic;
		m_outlatch_en	: out std_logic;
		m_ad_latch_en	: out std_logic;
		m_da_latch_en	: out std_logic;
		
		m_average_en 	: out std_logic;
		m_average_clr   : out std_logic;
		
		--RAM
		m_ram0_addr		: out std_logic_vector(10 downto 0);
		m_ram1_addr		: out std_logic_vector(10 downto 0);
		m_ad_ram_addra	: out std_logic_vector(10 downto 0);
		m_ad_ram_addrb	: out std_logic_vector(10 downto 0);
		m_da_ram_addra	: out std_logic_vector(10 downto 0);
		m_da_ram_addrb  : out std_logic_vector(10 downto 0);
		
		m_ena0	: out std_logic;
		m_wea0	: out std_logic_vector(0 downto 0);
		m_enb0	: out std_logic;
		m_ena1	: out std_logic;
		m_wea1	: out std_logic_vector(0 downto 0);
		m_enb1	: out std_logic;
		m_ena2	: out std_logic;
		m_wea2	: out std_logic_vector(0 downto 0);
		m_enb2	: out std_logic;
		m_ena3	: out std_logic;
		m_wea3	: out std_logic_vector(0 downto 0);
		m_enb3	: out std_logic
		
		);
		
end signal_controller;

architecture Behavioral of signal_controller is

	
begin
    m_ram0_mux_sel <= "0" when m_mode_addr = "001" else "1"; -- pc ram0 -> 0
    m_ram1_mux_sel <= "10" when m_mode_addr = "010" else -- pc ram1 -> dbus
                      "01" when m_mode_addr = "011" else -- data tf. -> ram0
                      "00" when m_mode_addr = "111" else -- avg -> avg
                      "11";
    m_inlatch_en <= '1';

end Behavioral;

