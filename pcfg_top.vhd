----------------------------------------------------------------------------------
-- Company: SPS
-- Engineer: Jang Jintae
-- 
-- Create Date:    20:59:42 08/18/2018
-- Design Name: 	
-- Module Name:    PCFG_top - Behavioral 
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
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
LIBRARY UNISIM;
USE UNISIM.VCOMPONENTS.ALL;

--=========== don't change this=======================----------------------
--==========================================================================


entity PCFG_TOP is
PORT( ---------------------------------------------INPUT
	 	m_reset_b : IN std_logic;								
		m_clk : IN std_logic;		
		m_address : IN std_logic_vector(8 downto 0);		
		m_cmd_data : IN std_logic;
		m_OE_b : IN std_logic;
		m_wen : IN std_logic;
		m_ren : IN std_logic;
		
		m_ADC_data : IN std_logic_vector(7 downto 0);	--adc input
		
		---------------------------------------------OUTPUT	
		
		m_DAC_data : OUT std_logic_vector(7 downto 0);	--dac output
		m_DAC_clk : OUT std_logic;
		
		m_AD9283_clk : OUT std_logic;	
		
		-------------------------------------------------INOUT
		
		m_data : INOUT std_logic_vector(7 downto 0);
		
		-------------------------------------------------simulation위한 port
		
		m_led : OUT std_logic_vector(7 downto 0);
		m_TP	: out std_logic_vector(1 downto 0)
		
		);
end PCFG_TOP;


--==========================================================================
--==========================================================================

architecture Behavioral of PCFG_TOP is


---=========== COMPONENT ===================

component TOP_8254 is
    Port ( m_clk0    : in  STD_LOGIC;
           m_clk1    : in  STD_LOGIC;
           m_clk2    : in  STD_LOGIC;
           m_clk_ctr : in  STD_LOGIC;
           m_reset   : in STD_LOGIC;
           m_data    : in  STD_LOGIC_VECTOR (7 downto 0);
           m_gate0   : in  STD_LOGIC;
           m_gate1   : in  STD_LOGIC;
           m_gate2   : in  STD_LOGIC;
           m_addr    : in  STD_LOGIC_VECTOR (1 downto 0);
           m_cs_b    : in  STD_LOGIC;
           m_wr_b    : in  STD_LOGIC;
          
		   m_out0    : out  STD_LOGIC;
           m_out1    : out  STD_LOGIC;
           m_out2    : out  STD_LOGIC);
end component;


component address_decoder is
	port(	m_addr_in : in std_logic_vector(8 downto 0);
			m_pcs_addr : out std_logic;
			m_mode_addr : out std_logic_vector(2 downto 0));
end component;


component signal_controller is
	port(	m_clk		: in std_logic;
			m_sys_clk	: in std_logic;
			m_mode_addr	: in std_logic_vector(2 downto 0);
			m_wen		: in std_logic;
			m_ren		: in std_logic;
			m_ad_ram_addr	: out std_logic_vector(10 downto 0);
			m_da_rma_addr	: out std_logic_vector(10 downto 0);
			m_ram1_mux_sel	: out std_logic;
			m_ram0_mux_sel	: out std_logic;
			m_out_mux_sel	: out std_logic;
			m_ram0_en		: out std_logic);
end component;

--RAM

component Ram0 is
	port(	ADDRA	: in std_logic_vector(10 downto 0);
			DINA	: in std_logic_vector(7 downto 0);
			WEA		: in std_logic_vector(0 downto 0);
			CLKA	: in std_logic;
			ADDRB	: in std_logic_vector(10 downto 0);
			ENB		: in std_logic;
			CLKB	: in std_logic;
			DOUTB	: out std_logic_vector(7 downto 0));
end component;

component Ram1 is
	port(	ADDRA	: in std_logic_vector(10 downto 0);
			DINA	: in std_logic_vector(7 downto 0);
			WEA		: in std_logic_vector(0 downto 0);
			CLKA	: in std_logic;
			ADDRB	: in std_logic_vector(10 downto 0);
			ENB		: in std_logic;
			CLKB	: in std_logic;
			DOUTB	: out std_logic_vector(7 downto 0));
end component;

component DA_RAM is
	port(	ADDRA	: in std_logic_vector(10 downto 0);
			DINA	: in std_logic_vector(7 downto 0);
			WEA		: in std_logic_vector(0 downto 0);
			CLKA	: in std_logic;
			ADDRB	: in std_logic_vector(10 downto 0);
			ENB		: in std_logic;
			CLKB	: in std_logic;
			DOUTB	: out std_logic_vector(7 downto 0));
end component;

component AD_RAM is
	port(	ADDRA	: in std_logic_vector(10 downto 0);
			DINA	: in std_logic_vector(7 downto 0);
			WEA		: in std_logic_vector(0 downto 0);
			CLKA	: in std_logic;
			ADDRB	: in std_logic_vector(10 downto 0);
			ENB		: in std_logic;
			CLKB	: in std_logic;
			DOUTB	: out std_logic_vector(7 downto 0));
end component;

--Averager
component Averager is
port(	m_din : in std_logic_vector(7 downto 0);
		m_dout : out std_logic_vector(7 downto 0)
	);
end component;





signal s_clk : std_logic;
--=== signals

---8254
signal s_m_8254_gate0				: std_logic; 
signal s_m_8254_gate1				: std_logic; 
signal s_m_8254_gate2				: std_logic; 

signal s_dout_en : std_logic;
signal s_pcs_addr  : std_logic;

signal sys_clk : std_logic;

signal s_reset_b : std_logic;

signal s_din : std_logic_vector(7 downto 0);

signal s_led : std_logic_vector(6 downto 0);

---latch
signal s_address 	: std_logic_vector(8 downto 0);
signal s_cmd_data	: std_logic;
signal s_OE_b		: std_logic;
signal s_wen		: std_logic;
signal s_ren		: std_logic;

--in_latch
signal inlatch_din : std_logic_vector(7 downto 0);
signal inlatch_dout : std_logic_vector(7 downto 0);

--out_latch
signal outlatch_dout : std_logic_vector(7 downto 0);

--signal controller
signal s_mode_addr		: std_logic_vector(2 downto 0);
signal s_ad_ram_addr	: std_logic_vector(10 downto 0);
signal s_da_rma_addr	: std_logic_vector(10 downto 0);
signal s_ram1_mux_sel	: std_logic;
signal s_ram0_mux_sel	: std_logic;
signal s_out_mux_sel	: std_logic;
signal s_ram0_en		: std_logic;

--ram0
signal s_addra0	: std_logic_vector(10 downto 0);
signal s_dina0	: std_logic_vector(7 downto 0);
signal s_wea0	: std_logic_vector(0 downto 0);
signal s_addrb0	: std_logic_vector(10 downto 0);
signal s_enb0	: std_logic;
signal s_doutb0	: std_logic_vector(7 downto 0);

--ram1
signal s_addra1	: std_logic_vector(10 downto 0);
signal s_dina1	: std_logic_vector(7 downto 0);
signal s_wea1	: std_logic_vector(0 downto 0);
signal s_addrb1	: std_logic_vector(10 downto 0);
signal s_enb1	: std_logic;
signal s_doutb1	: std_logic_vector(7 downto 0);

--ram2
signal s_addra2	: std_logic_vector(10 downto 0);
signal s_wea2	: std_logic_vector(0 downto 0);
signal s_addrb2	: std_logic_vector(10 downto 0);
signal s_enb2	: std_logic;
signal s_doutb2	: std_logic_vector(7 downto 0);

--ram3
signal s_addra3	: std_logic_vector(10 downto 0);
signal s_dina3	: std_logic_vector(7 downto 0);
signal s_wea3	: std_logic_vector(0 downto 0);
signal s_addrb3	: std_logic_vector(10 downto 0);
signal s_enb3	: std_logic;
signal s_doutb3	: std_logic_vector(7 downto 0);

--Averager
signal Averager_out : std_logic_vector(7 downto 0);

--MUX
signal ram0_mux_con : std_logic_vector(0 downto 0);
signal ram0_mux_din0: std_logic_vector(7 downto 0);
signal ram0_mux_din1: std_logic_vector(7 downto 0);
signal ram0_mux_dout: std_logic_vector(7 downto 0);

signal ram1_mux_con : std_logic_vector(1 downto 0);
signal ram1_mux_din0: std_logic_vector(7 downto 0);
signal ram1_mux_din1: std_logic_vector(7 downto 0);
signal ram1_mux_din2: std_logic_vector(7 downto 0);
signal ram1_mux_dout: std_logic_vector(7 downto 0);

signal out_mux_con	: std_logic_vector(0 downto 0);
signal out_mux_dout	: std_logic_vector(7 downto 0);




begin


--clks
m_DAC_clk<=			;--- 필요한 clock 연결하세요
m_AD9283_clk<=		;--- 필요한 clock 연결하세요


-----------================  don't change this ==================-------------------


--global iobuf
s_clk_g : IBUFG generic map (IOSTANDARD => "DEFAULT")
port map(I=>m_clk,O=>s_clk);

--tri state
inlatch_din<=m_data;
m_data<=outlatch_dout when s_dout_en='1' else (others=>'Z');

--MUX
--ram0_mux
ram0_mux_dout 	<= inlatch_dout when ram0_mux_con="0" else
				s_doutb3 when ram0_mux_con-"1" else (others=>'Z');
--ram1_mux
ram1_mux_dout	<= Averager_out when std_logic_vector=x"00" else
				s_doutb0 when std_logic_vector=x"01" else
				inlatch_dout when std_logic_vector=x"10" else (others=>'Z');
--out_mux
out_mux_dout <= s_doutb0 when out_mux_con="0" else
				s_doutb1 when out_mux_con="1" else (others=>'Z');




clk_gen : TOP_8254 port map( 
			m_clk0		=> s_clk,
			m_clk1    	=> s_clk,
			m_clk2    	=> s_clk,
			m_clk_ctr 	=> s_clk,
			m_reset   	=> not m_reset_b,
			m_data   	=> inlatch_din,
			m_gate0   	=> s_m_8254_gate0,
			m_gate1   	=> s_m_8254_gate1,
			m_gate2   	=> s_m_8254_gate2,
			m_addr    	=> m_address(1 downto 0),
			m_cs_b    	=> not s_pcs_addr,		-- 여기에 들어갈 시그널 잘 정의해보세요.
			m_wr_b    	=> not m_wen,
			m_out0    	=> sys_clk,
			m_out1    	=> open,
			m_out2    	=> open
			);
		   
addr_decode : address_decoder port map(
			m_addr_in 	=> s_address,
			m_pcs_addr 	=> s_pcs_addr,
			m_mode_addr => s_mode_addr
			);
			
controller : signal_controller port map(
			m_clk			=> s_clk,
			m_sys_clk		=> sys_clk,
			m_mode_addr		=> s_mode_addr,
			m_wen			=> s_wen,
			m_ren			=> s_ren,
			m_ad_ram_addr	=> s_ad_ram_addr,
			m_da_rma_addr	=> s_da_rma_addr,
			m_ram1_mux_sel	=> s_ram1_mux_sel,
			m_ram0_mux_sel	=> s_ram0_mux_sel,
			m_out_mux_sel	=> s_out_mux_sel,
			m_ram0_en		=> s_ram0_en
			);
			
internal_RAM0 : Ram0 port map(
			ADDRA	=> s_addra0,
			DINA	=> s_dina0,
			WEA		=> s_wea0,
			CLKA	=> s_clk,
			ADDRB	=> s_addrb0,
			ENB		=> s_enb0,
			CLKB	=> s_clk,
			DOUTB	=> s_doutb0
			);
			
internal_RAM1 : Ram1 port map(
			ADDRA	=> s_addra1,
			DINA	=> s_dina1,
			WEA		=> s_wea1,
			CLKA	=> s_clk,
			ADDRB	=> s_addrb1,
			ENB		=> s_enb1,
			CLKB	=> s_clk,
			DOUTB	=> s_doutb1
			);
			
internal_RAM2 : DA_RAM port map(
			ADDRA	=> s_addra2,
			DINA	=> s_doutb1,
			WEA		=> s_wea2,
			CLKA	=> s_clk,
			ADDRB	=> s_addrb2,
			ENB		=> s_enb2,
			CLKB	=> sys_clk,
			DOUTB	=> s_doutb2
			);
			
internal_RAM3 : AD_RAM port map(
			ADDRA	=> s_addra3,
			DINA	=> s_dina3,
			WEA		=> s_wea3,
			CLKA	=> s_clk,
			ADDRB	=> s_addrb3,
			ENB		=> s_enb3,
			CLKB	=> sys_clk,
			DOUTB	=> s_doutb3
			);

Average : Averager port map(
			m_din 	=> s_doutb0,
			m_dout	=> Averager_out
			);
			
			
s_m_8254_gate0	<= '1';
s_m_8254_gate1	<= '1';
s_m_8254_gate2	<= '1';


--for debug
m_TP(0)	<= s_clk; --test point. for s_clk     이걸로 채점하니깐 바꾸면 절대 안됨
m_TP(1)	<= sys_clk;--test for 8254 output.   이걸로 채점하니깐 바꾸면 절대 안됨
m_led(7) <=s_reset_b;
-----------======================================================--------------------


m_led(6 downto 0)<=s_led(6 downto 0);
		
--address decoder




		

end Behavioral;


