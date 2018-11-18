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
	port(	m_addr_in 	: in std_logic_vector(8 downto 0);
			m_pcs_addr 	: out std_logic;
			m_mode_addr : out std_logic_vector(2 downto 0);
			m_mode_valid : out std_logic);
end component;


component signal_controller is
	port(	m_clk		: in std_logic;
			m_sys_clk	: in std_logic;
			
			m_mode_addr	: in std_logic_vector(2 downto 0);
			m_mode_valid: in std_logic;
			m_wen		: in std_logic;
			m_ren		: in std_logic;
            m_OE_b      : in std_logic;
            m_cmd_data  : in std_logic;
			
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
end component;

--RAM

component Ram0 is
	port(	ADDRA	: in std_logic_vector(10 downto 0);
			ENA		: in std_logic;
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
			ENA		: in std_logic;
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
			ENA		: in std_logic;
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
			ENA		: in std_logic;
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
port(	m_clk			: in std_logic;
		m_din 			: in std_logic_vector(7 downto 0);
		m_average_en 	: in std_logic;
		m_average_clr	: in std_logic;
		m_counter_in	: in std_logic_vector(10 downto 0);
		m_dout 			: out std_logic_vector(7 downto 0)
	);
end component;
---==============================


signal s_clk : std_logic;
--=== signals

---8254
signal s_m_8254_gate0	: std_logic; 
signal s_m_8254_gate1	: std_logic; 
signal s_m_8254_gate2	: std_logic; 

signal s_dout_en 	: std_logic;
signal s_pcs_addr  	: std_logic;

signal sys_clk : std_logic;

signal s_reset_b : std_logic;

signal s_din : std_logic_vector(7 downto 0);

signal s_led : std_logic_vector(6 downto 0);

--LATCH
--latch
signal s_address 	: std_logic_vector(8 downto 0);
signal s_cmd_data	: std_logic;
signal s_OE_b		: std_logic;
signal s_wen		: std_logic;
signal s_ren		: std_logic;
signal latch_en		: std_logic:='1';

--in_latch
signal inlatch_dout : std_logic_vector(7 downto 0);
signal s_inlatch_en	: std_logic;

--out_latch
signal outlatch_dout : std_logic_vector(7 downto 0);
signal s_outlatch_en : std_logic;

--da_latch
signal da_latch_dout : std_logic_vector(7 downto 0);
signal s_da_latch_en	: std_logic;

--ad latch
signal ad_latch_din	: std_logic_vector(7 downto 0);
signal ad_latch_dout : std_logic_vector(7 downto 0);
signal s_ad_latch_en	: std_logic;

--signal controller
signal s_mode_addr		: std_logic_vector(2 downto 0);
signal s_mode_valid		: std_logic;

signal s_ram0_addr		: std_logic_vector(10 downto 0);
signal s_ram1_addr		: std_logic_vector(10 downto 0);
signal s_ad_ram_addra	: std_logic_vector(10 downto 0);
signal s_ad_ram_addrb	: std_logic_vector(10 downto 0);
signal s_da_ram_addra	: std_logic_vector(10 downto 0);
signal s_da_ram_addrb   : std_logic_vector(10 downto 0);

signal s_ram1_mux_sel	: std_logic_vector(1 downto 0);
signal s_ram0_mux_sel	: std_logic_vector(0 downto 0);
signal s_out_mux_sel	: std_logic_vector(0 downto 0);

signal s_counter0		: std_logic_vector(10 downto 0);
signal s_counter1		: std_logic_vector(10 downto 0);

--ram0
signal s_addra0	: std_logic_vector(10 downto 0);
signal s_ena0	: std_logic;
signal s_wea0	: std_logic_vector(0 downto 0);
signal s_addrb0	: std_logic_vector(10 downto 0);
signal s_enb0	: std_logic;
signal s_doutb0	: std_logic_vector(7 downto 0);


--ram1
signal s_addra1	: std_logic_vector(10 downto 0);
signal s_ena1	: std_logic;
signal s_wea1	: std_logic_vector(0 downto 0);
signal s_addrb1	: std_logic_vector(10 downto 0);
signal s_enb1	: std_logic;
signal s_doutb1	: std_logic_vector(7 downto 0);

--ram2
signal s_addra2	: std_logic_vector(10 downto 0);
signal s_ena2	: std_logic;
signal s_wea2	: std_logic_vector(0 downto 0);
signal s_addrb2	: std_logic_vector(10 downto 0);
signal s_enb2	: std_logic;
signal s_doutb2	: std_logic_vector(7 downto 0);

--ram3
signal s_addra3	: std_logic_vector(10 downto 0);
signal s_ena3	: std_logic;
signal s_dina3	: std_logic_vector(7 downto 0);
signal s_wea3	: std_logic_vector(0 downto 0);
signal s_addrb3	: std_logic_vector(10 downto 0);
signal s_enb3	: std_logic;
signal s_doutb3	: std_logic_vector(7 downto 0);

--AVERAGER
signal Averager_out : std_logic_vector(7 downto 0);
signal s_average_en : std_logic;
signal s_average_clr : std_logic;

--MUX
signal ram0_mux_dout: std_logic_vector(7 downto 0);
signal ram1_mux_dout: std_logic_vector(7 downto 0);
signal out_mux_dout	: std_logic_vector(7 downto 0);


--port map 코드 수정
signal b_reset_b : std_logic;
signal b_pcs_addr : std_logic;
signal b_wen : std_logic;

begin


--clks
m_DAC_clk <= sys_clk		;--- 필요한 clock 연결하세요
m_AD9283_clk <= sys_clk		;--- 필요한 clock 연결하세요


-----------================  don't change this ==================-------------------


--global iobuf
s_clk_g : IBUFG generic map (IOSTANDARD => "DEFAULT")
port map(I=>m_clk,O=>s_clk);

--tri state
s_din<=m_data;
m_data<=outlatch_dout when s_dout_en='1' else (others=>'Z');


clk_gen : TOP_8254 port map( 
			m_clk0		=> s_clk,
			m_clk1    	=> s_clk,
			m_clk2    	=> s_clk,
			m_clk_ctr 	=> s_clk,
			m_reset   	=> b_reset_b,
			m_data   	=> s_din,
			m_gate0   	=> s_m_8254_gate0,
			m_gate1   	=> s_m_8254_gate1,
			m_gate2   	=> s_m_8254_gate2,
			m_addr    	=> m_address(1 downto 0),
			m_cs_b    	=> b_pcs_addr,		-- 여기에 들어갈 시그널 잘 정의해보세요.
			m_wr_b    	=> b_wen,
			m_out0    	=> sys_clk,
			m_out1    	=> open,
			m_out2    	=> open
			);
		   
s_m_8254_gate0	<= '1';
s_m_8254_gate1	<= '1';
s_m_8254_gate2	<= '1';


--for debug
m_TP(0)	<= s_clk; --test point. for s_clk     이걸로 채점하니깐 바꾸면 절대 안됨
m_TP(1)	<= sys_clk;--test for 8254 output.   이걸로 채점하니깐 바꾸면 절대 안됨
m_led(7) <=s_reset_b;
-----------======================================================--------------------

--MUX
--ram0_mux
ram0_mux_dout 	<= inlatch_dout when s_ram0_mux_sel="0" else
				s_doutb3 		when s_ram0_mux_sel="1" else (others=>'Z');
--ram1_mux
ram1_mux_dout	<= Averager_out when s_ram1_mux_sel="00" else
				s_doutb0 		when s_ram1_mux_sel="01" else
				inlatch_dout 	when s_ram1_mux_sel="10" else (others=>'Z');
--out_mux
out_mux_dout <= s_doutb0 when s_out_mux_sel="0" else
				s_doutb1 when s_out_mux_sel="1" else (others=>'Z');

--LATCH
process(s_clk)
begin
if rising_edge(s_clk) then
	if latch_en='1' then
		s_cmd_data	<= m_cmd_data;
		s_wen		<= m_wen;
		s_ren		<= m_ren;
		s_OE_b		<= m_OE_b;
		s_address	<= m_address;
	end if;
	if s_inlatch_en='1' then
		inlatch_dout <= s_din;
	end if;
	if s_outlatch_en='1' then
		outlatch_dout <= out_mux_dout;
	end if;
end if;
end process;

process(sys_clk)
begin	
if rising_edge(sys_clk) then
	if s_da_latch_en='1' then
		da_latch_dout <= s_doutb2;
	end if;
	if s_ad_latch_en='1' then
		ad_latch_dout <= ad_latch_din;
	end if;

end if;
end process;
m_DAC_data 	<= da_latch_dout;
ad_latch_din <= m_ADC_data;
s_dina3 <= ad_latch_dout;

b_reset_b <= not m_reset_b;
b_pcs_addr <= not s_pcs_addr;
b_wen <= not m_wen;


addr_decode : address_decoder port map(
			m_addr_in 	=> s_address,
			m_pcs_addr 	=> s_pcs_addr,
			m_mode_addr => s_mode_addr,
			m_mode_valid => s_mode_valid
			);
			
controller : signal_controller port map(
			m_clk			=> s_clk,
			m_sys_clk		=> sys_clk,
			
			m_mode_addr		=> s_mode_addr,
			m_mode_valid	=> s_mode_valid,
			m_wen			=> s_wen,
			m_ren			=> s_ren,
            m_OE_b          => s_OE_b,
            m_cmd_data      => s_cmd_data,
			
			m_ram1_mux_sel	=> s_ram1_mux_sel,
			m_ram0_mux_sel	=> s_ram0_mux_sel,
			m_out_mux_sel	=> s_out_mux_sel,
			
			m_inlatch_en	=> s_inlatch_en,
			m_outlatch_en	=> s_outlatch_en,
			m_ad_latch_en	=> s_ad_latch_en,
			m_da_latch_en	=> s_da_latch_en,
			
			m_average_en 	=> s_average_en,
			m_average_clr	=> s_average_clr,
			
			--RAM
			m_ram0_addr		=> s_ram0_addr,
			m_ram1_addr		=> s_ram1_addr,
			m_ad_ram_addra	=> s_ad_ram_addra,
			m_ad_ram_addrb	=> s_ad_ram_addrb,
			m_da_ram_addra	=> s_da_ram_addra,
			m_da_ram_addrb	=> s_da_ram_addrb,
			
			
			m_ena0 => s_ena0,
			m_wea0 => s_wea0,
			m_enb0 => s_enb0,
			m_ena1 => s_ena1,
			m_wea1 => s_wea1,
			m_enb1 => s_enb1,
			m_ena2 => s_ena2,
			m_wea2 => s_wea2,
			m_enb2 => s_enb2,
			m_ena3 => s_ena3,
			m_wea3 => s_wea3,
			m_enb3 => s_enb3
			
			);
			
internal_RAM0 : Ram0 port map(
			ADDRA	=> s_ram0_addr,
			ENA		=> s_ena0,
			DINA	=> ram0_mux_dout,
			WEA		=> s_wea0,
			CLKA	=> s_clk,
			ADDRB	=> s_ram0_addr,
			ENB		=> s_enb0,
			CLKB	=> s_clk,
			DOUTB	=> s_doutb0
			);
			
internal_RAM1 : Ram1 port map(
			ADDRA	=> s_ram1_addr,
			ENA		=> s_ena1,
			DINA	=> ram1_mux_dout,
			WEA		=> s_wea1,
			CLKA	=> s_clk,
			ADDRB	=> s_ram1_addr,
			ENB		=> s_enb1,
			CLKB	=> s_clk,
			DOUTB	=> s_doutb1
			);
			
internal_RAM2 : DA_RAM port map(
			ADDRA	=> s_da_ram_addra,
			ENA		=> s_ena2,
			DINA	=> s_doutb1,
			WEA		=> s_wea2,
			CLKA	=> s_clk,
			ADDRB	=> s_ad_ram_addrb,
			ENB		=> s_enb2,
			CLKB	=> sys_clk,
			DOUTB	=> s_doutb2
			);
			
internal_RAM3 : AD_RAM port map(
			ADDRA	=> s_ad_ram_addra,
			ENA		=> s_ena3,
			DINA	=> ad_latch_dout,
			WEA		=> s_wea3,
			CLKA	=> s_clk,
			ADDRB	=> s_ad_ram_addrb,
			ENB		=> s_enb3,
			CLKB	=> sys_clk,
			DOUTB	=> s_doutb3
			);

Average : Averager port map(
			m_clk		=> s_clk,
			m_din 		=> s_doutb0,
			m_average_en => s_average_en,
			m_average_clr => s_average_clr,
			m_counter_in => s_counter0,
			m_dout		=> Averager_out
			);
			
m_led(6 downto 0)<=s_led(6 downto 0);
		
--address decoder




		

end Behavioral;


