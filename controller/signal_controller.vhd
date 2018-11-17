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

type hall_state_machine 			is (idle,clk_set,rst,PC_wr_mode,PC_re_mode,
							data_trans,DA_start_mode,DA_stop_mode,AD_mode,average_mode);
type clk_set_state_machine 			is (idle);
type rst_state_machine 				is (idle);
type PC_wr_mode_state_machine 		is (idle);
type PC_re_mode_state_machine 		is (idle);
type data_trans_state_machine 		is (idle);
type DA_start_mode_state_machine 	is (idle);
type DA_stop_mode_state_machine 	is (idle);
type AD_mode_state_machine 			is (idle);
type average_mode_state_machine 	is (idle);

signal hall_state 		: hall_state_machine			:=idle;
signal clk_state 		: clk_set_state_machine			:=idle;
signal rst_state 		: rst_state_machine				:=idle;
signal PC_wr_state 		: PC_wr_mode_state_machine		:=idle;
signal PC_re_state 		: PC_re_mode_state_machine		:=idle;
signal data_trans_state : data_trans_state_machine		:=idle;
signal DA_start_state 	: DA_start_mode_state_machine	:=idle;
signal DA_stop_state 	: DA_stop_mode_state_machine	:=idle;
signal AD_state 		: AD_mode_state_machine			:=idle;
signal average_state 	: average_mode_state_machine	:=idle;
	
begin

process(m_clk)
begin

if rising_edge(m_clk) then
	case hall_state is
		when idle=>
			if m_mode_valid='0' then
				hall_state<=idle;
			elsif m_mode_addr="000" then
				hall_state<=idle;
			elsif m_mode_addr="001" then
				hall_state<=PC_wr_mode;
			elsif m_mode_addr="010" then
				hall_state<=PC_re_mode;
			elsif m_mode_addr="011" then
				hall_state<=data_trans;
			elsif m_mode_addr="100" then
				hall_state<=DA_start_mode;
			elsif m_mode_addr="101" then
				hall_state<=DA_stop_mode;
			elsif m_mode_addr="110" then
				hall_state<=AD_mode;
			elsif m_mode_addr="111" then
				hall_state<=average_mode;
			end if;
		when clk_set=>
		when rst=>
		when PC_wr_mode=>
		
		when PC_re_mode=>
		when data_trans=>
		when DA_start_mode=>
		when DA_stop_mode=>
		when AD_mode=>
		when average_mode=>
		
		when others=>NULL;
	end case;
		
			
			
			
			
end if;

end process;
	

	
		
		
		
end Behavioral;

