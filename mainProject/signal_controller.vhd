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
		
		m_ram1_mux_sel	: out std_logic_vector(1 downto 0);
		m_ram0_mux_sel	: out std_logic_vector(0 downto 0);
		m_out_mux_sel	: out std_logic_vector(0 downto 0);
		
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


end Behavioral;

