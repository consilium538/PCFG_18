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
		m_ad_ram_addr	: out std_logic_vector(10 downto 0);
		m_da_rma_addr	: out std_logic_vector(10 downto 0);
		m_ram1_mux_sel	: out std_logic;
		m_ram0_mux_sel	: out std_logic;
		m_out_mux_sel	: out std_logic;
		m_ram0_en		: out std_logic);
		
end signal_controller;

architecture Behavioral of signal_controller is

	
begin


end Behavioral;

