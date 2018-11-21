LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
LIBRARY UNISIM;
USE UNISIM.VCOMPONENTS.ALL;

entity signal_controller is
    port( m_clk		: in std_logic;
          m_sys_clk	: in std_logic;

          m_mode_addr   : in std_logic_vector(2 downto 0);
          m_mode_valid  : in std_logic;
          m_wen         : in std_logic;
          m_ren         : in std_logic;
          m_OE_b        : in std_logic;
          m_cmd_data    : in std_logic;
          m_data        : in std_logic_vector(7 downto 0);

          m_ram1_mux_sel	: out std_logic_vector(1 downto 0); -- 00:Avg, 01:ram0, 10:dbus
          m_ram0_mux_sel	: out std_logic_vector(0 downto 0); -- 0:dbus, 1:adcram
          m_out_mux_sel	    : out std_logic_vector(0 downto 0); -- 0:ram0, 1:ram1

          m_dout_en : out std_logic;

          m_inlatch_en	: out std_logic;
          m_outlatch_en	: out std_logic;
          m_ad_latch_en	: out std_logic;
          m_da_latch_en	: out std_logic;

          m_average_en 	: out std_logic;
          m_average_clr   : out std_logic;
          m_average_addr	: out std_logic_vector(10 downto 0);

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

    ---=========== SIGNAL DEFINE ===================
    signal s_ram1_mux_sel   : std_logic_vector(1 downto 0); -- 00:Avg, 01:ram0, 10:dbus
    signal s_ram0_mux_sel   : std_logic_vector(0 downto 0); -- 0:dbus, 1:adcram

    signal s_dout_en : std_logic;

    signal s_inlatch_en	: std_logic;
    signal s_outlatch_en	: std_logic;
    signal s_ad_latch_en	: std_logic;
    signal s_da_latch_en	: std_logic;

    signal s_average_en 	: std_logic;
    signal s_average_clr   : std_logic;
    signal s_average_addr	: std_logic_vector(10 downto 0);

      --RAM
    signal s_ram0_addr		: std_logic_vector(10 downto 0);
    signal s_ram1_addr		: std_logic_vector(10 downto 0);
    signal s_ad_ram_addra	: std_logic_vector(10 downto 0):=(others=>'0');
    signal s_ad_ram_addrb	: std_logic_vector(10 downto 0):=(others=>'0');
    signal s_da_ram_addra	: std_logic_vector(10 downto 0):=(others=>'0');
    signal s_da_ram_addrb  	: std_logic_vector(10 downto 0):=(others=>'0');

    signal s_ena0	: std_logic;
    signal s_wea0	: std_logic_vector(0 downto 0);
    signal s_enb0	: std_logic;
    signal s_ena1	: std_logic;
    signal s_wea1	: std_logic_vector(0 downto 0);
    signal s_enb1	: std_logic:='0';
    signal s_ena2	: std_logic;
    signal s_wea2	: std_logic_vector(0 downto 0);
    signal s_enb2	: std_logic;
    signal s_ena3	: std_logic;
    signal s_wea3	: std_logic_vector(0 downto 0);
    signal s_enb3	: std_logic;

    ---=========== tmpdiv ===================

    signal s_enp0, s_clr0 : std_logic;
    signal s_sel0 : std_logic_vector(1 downto 0);

    signal s_enp1, s_clr1 : std_logic;
    signal s_sel1 : std_logic_vector(1 downto 0);

    signal s_enpda, s_clrda : std_logic;
    signal s_selda : std_logic_vector(1 downto 0);

    signal s_enpad, s_clrad : std_logic;
    signal s_selad : std_logic_vector(1 downto 0);

    signal s_Aa0, s_A01, s_A1d : std_logic_vector(10 downto 0);
    signal s_Adac, s_Aadc : std_logic_vector(10 downto 0);

    signal s_comp0, s_comp1, s_comp2, s_comp3 : std_logic;
    signal s_dtoa : std_logic_vector(10 downto 0) := (others => '0');
    signal s_dac_start, s_dac_stop : std_logic;
    signal s_adc_start, s_adc_stop : std_logic;
    ---=========== END OF SIGNAL ===================


    ---=========== FSM DESIGN ===================
    type d_testpcmode is (idle,decode,
    wready,wact,writeram,rready,rstandby,rterm,
    dt_cntclr, dt_cntpreset, dt_transfer,
    dac_cntclr, dac_cntpreset, dac_transfer, dac_start,
    dac_stop,
    adc_cntclr, adc_cntpreset, adc_transfer,
    average0,average1,average2,average3,average4,
    average5,average6,average7,average8,
    softreset);

    signal t_ps, t_ns : d_testpcmode := idle;
    signal t_prevmode : std_logic_vector(2 downto 0);
    ---=========== END OF FSM ===================

    ---=========== COMPONENT DEFINITION ===================
    component RemController is
        Port ( --input
        m_clk, m_enp, m_clr : in  STD_LOGIC;
        m_sel : in  STD_LOGIC_VECTOR(1 downto 0);
        m_Din : in  STD_LOGIC_VECTOR(10 downto 0);
        -- output
        m_comp : out STD_LOGIC;
        m_Cnt : out  STD_LOGIC_VECTOR(10 downto 0);
        m_Dout : out  STD_LOGIC_VECTOR(10 downto 0));
    end component;

    component DACcnt is
        Port (
        m_clk, m_sys_clk, m_start, m_end : in std_logic;
        m_enb2 : out std_logic;
        m_Ain : in std_logic_vector(10 downto 0);
        m_Aout : out std_logic_vector(10 downto 0);
        d_reg : out std_logic_vector(10 downto 0)
    );
    end component;

    component ADCcnt is
        Port (
        m_clk, m_sys_clk, m_start, m_end : in std_logic;
        m_ena3 : out std_logic;
        m_Aout : out std_logic_vector(10 downto 0);
        d_reg : out std_logic_vector(10 downto 0)
    );
    end component;
    ---=========== END OF COMPONENT ===================

-------------------------------------------

begin

    ---=========== COMPONENT DESCRIPTION ===================
    rem0ctr : RemController
    port map(
                -- input
                m_clk => m_clk,
                m_enp => s_enp0,
                m_clr => s_clr0,
                m_sel => s_sel0,
                m_Din => s_Aa0,
                -- output
                m_comp => s_comp0,
                m_Cnt => s_ram0_addr,
                m_Dout => s_A01
            );

    rem1ctr : RemController
    port map(
                -- input
                m_clk => m_clk,
                m_enp => s_enp1,
                m_clr => s_clr1,
                m_sel => s_sel1,
                m_Din => s_A01,
                -- output
                m_comp => s_comp1,
                m_Cnt => s_ram1_addr,
                m_Dout => s_A1d
            );

    daremctr : RemController
    port map(
                -- input
                m_clk => m_clk,
                m_enp => s_enpda,
                m_clr => s_clrda,
                m_sel => s_selda,
                m_Din => s_A1d,
                -- output
                m_comp => s_comp2,
                m_Cnt => s_da_ram_addra,
                m_Dout => s_Adac
            );

    adremctr : RemController
    port map(
                -- input
                m_clk => m_clk,
                m_enp => s_enpad,
                m_clr => s_clrad,
                m_sel => s_selad,
                m_Din => s_dtoa,
                -- output
                m_comp => s_comp3,
                m_Cnt => s_ad_ram_addrb,
                m_Dout => s_Aa0
            );

    dac_ctr : DACcnt
    port map(
                m_clk => m_clk,
                m_sys_clk => m_sys_clk,
                m_start => s_dac_start,
                m_end => s_dac_stop,
                m_enb2 => s_enb2,
                m_Ain => s_Adac,
                m_Aout => s_da_ram_addrb
            --d_reg => d_AData
            );

    adc_ctr : ADCcnt
    port map(
                m_clk => m_clk,
                m_sys_clk => m_sys_clk,
                m_start => s_adc_start,
                m_end => s_adc_stop,
                m_ena3 => s_ena3,
                m_Aout => s_ad_ram_addra
            --d_reg => d_AData
            );
    ---=========== END OF COMPONENT DESCRIPTION ===================

    test_sync_proc : process(m_clk)
    begin
        if rising_edge(m_clk) then
            t_ps <= t_ns;
        end if;
    end process;

    test_comb_proc : process(m_clk, m_cmd_data, m_mode_addr, m_OE_b)
    begin
        case t_ps is

            when idle =>
                s_dac_start <= '0'; s_dac_stop <= '0';
                s_ena0 <= '0'; s_enb0 <= '0';
                s_ena1 <= '0'; s_enb1 <= '0';
                s_ena2 <= '0';
                s_enb3 <= '0';
                s_enp0 <= '0'; s_sel0 <= "00";
                s_average_clr <= '1';
                s_adc_start <= '1';
                s_wea0 <= "0";
                s_enp1 <= '0'; s_sel1 <= "00";
                s_wea1 <= "0";
                s_enpda <= '0'; s_selda <= "00";
                s_wea2 <= "0";
                s_enpad <= '0'; s_selad <= "00";
                s_ram0_mux_sel <= "0";
                s_ram1_mux_sel <= "11";
                if(m_cmd_data = '1') then t_ns <= decode;
                else t_ns <= idle;
                end if;

            when decode =>
                if(m_mode_addr = "001") then --ram0
                    if(m_OE_b = '1') then
                        t_ns <= wready;
                        s_ram0_mux_sel <= "0";
                        if(t_prevmode /= "001") then
                            s_clr0 <= '1'; s_sel0 <= "10";
                        end if;
                    else t_ns <= rready;
                        if(t_prevmode /= "000") then s_clr0 <= '1';
                        end if;
                    end if;
                elsif(m_mode_addr = "010") then --ram1
                    if(m_OE_b = '1') then
                        t_ns <= wready;
                        s_ram1_mux_sel <= "10";
                        if(t_prevmode /= "011") then
                            s_clr1 <= '1'; s_sel1 <= "10";
                        end if;
                    else t_ns <= rready;
                        if(t_prevmode /= "010") then s_clr1 <= '1';
                        end if;
                    end if;
                --elsif(m_mode_addr = "100") then --da start
                elsif(m_mode_addr = "011") then -- data transfer
                    t_ns <= dt_cntclr;
                elsif(m_mode_addr = "100") then -- da start
                    t_ns <= dac_cntclr;
                elsif(m_mode_addr = "101") then -- da stop
                    t_ns <= dac_stop;
                elsif(m_mode_addr = "110") then -- ad
                    t_ns <= adc_cntclr;
                elsif(m_mode_addr = "000" and m_mode_valid = '1') then --softreset
                    t_ns <= softreset;
                else
                    t_ns <= idle;
                    t_prevmode <= "100";
                    s_clr0 <= '1';
                    s_clr1 <= '1';
                end if;

            when wready =>
                if(m_mode_addr = "010") then --ram1
                    s_ram1_mux_sel <= "10";
                else
                    s_ram0_mux_sel <= "0";
                end if;
                s_ena0 <= '1'; s_ena1 <= '1';
                s_clr0 <= '0'; s_clr1 <= '0';
                if(m_wen = '1') then t_ns <= wact;
                else t_ns <= wready;
                end if;
            when wact =>
                if(m_mode_addr = "001") then -- ram0
                    s_enp0 <= '1'; s_sel0 <= "01";
                    s_wea0 <= "1";
                    t_prevmode <= "001";
                else -- ram1
                    s_enp1 <= '1'; s_sel1 <= "01";
                    s_wea1 <= "1";
                    t_prevmode <= "011";
                end if;
                t_ns <= writeram;
            when writeram =>
                s_wea0 <= "0"; s_wea1 <= "0";
                s_ena0 <= '0'; s_ena1 <= '0';
                s_enp0 <= '0'; s_sel0 <= "00";
                s_enp1 <= '0'; s_sel1 <= "00";
                if(m_wen = '1') then t_ns <= writeram;
                else t_ns <= idle;
                end if;

            when rready =>
                s_clr0 <= '0'; s_clr1 <= '0';
                s_enb0 <= '1'; s_enb1 <= '1';
                if(m_mode_addr = "001") then -- ram0
                    s_ram0_mux_sel <= "0";
                    t_prevmode <= "000";
                else -- ram1
                    s_ram1_mux_sel <= "10";
                    t_prevmode <= "010";
                end if;
                if(m_ren = '1') then t_ns <= rstandby;
                else t_ns <= rready;
                end if;
            when rstandby =>
                s_enb0 <= not m_OE_b; s_enb1 <= not m_OE_b;
                s_dout_en <= '1';
                if(m_ren = '0') then t_ns <= rterm;
                else t_ns <= rstandby;
                end if;
            when rterm =>
                s_ena0 <= '0'; s_ena1 <= '0';
                s_dout_en <= '0';
                if(t_prevmode = "000") then -- ram0
                    s_enp0 <= '1'; s_sel0 <= "00";
                else -- ram1
                    s_enp1 <= '1'; s_sel1 <= "00";
                end if;
                t_ns <= idle;

            when dt_cntclr =>
                s_ram1_mux_sel <= "01";
                s_ena0 <= '1'; s_enb1 <= '1';
                t_prevmode <= "100";
                s_clr0 <= '1'; s_clr1 <= '1';
                s_sel1 <= "11";
                t_ns <= dt_cntpreset;
            when dt_cntpreset =>
                s_clr0 <= '0'; s_clr1 <= '0';
                s_enp0 <= '1';
                s_sel1 <= "00";
                t_ns <= dt_transfer;
            when dt_transfer =>
                s_enp1 <= '1';
                s_wea1 <= "1";
                if(s_comp1 = '1') then t_ns <= idle;
                else t_ns <= dt_transfer;
                end if;

            when dac_cntclr =>
                s_enb1 <= '1'; s_ena2 <= '1';
                t_prevmode <= "100";
                s_clr1 <= '1'; s_clrda <= '1';
                s_selda <= "11";
                s_dac_stop <= '1';
                t_ns <= dac_cntpreset;
            when dac_cntpreset =>
                s_clr1 <= '0'; s_clrda <= '0';
                s_enp1 <= '1';
                s_selda <= "00";
                s_dac_stop <= '0';
                t_ns <= dac_transfer;
            when dac_transfer =>
                s_enpda <= '1';
                s_wea2 <= "1";
                if(s_comp2 = '1') then t_ns <= dac_start;
                else t_ns <= dac_transfer;
                end if;
            when dac_start =>
                s_da_latch_en <= '1';
                s_dac_start <= '1';
                s_enp1 <= '0'; s_enpda <= '0';
                s_wea2 <= "0";
                t_ns <= idle;

            when dac_stop =>
                s_da_latch_en <= '0';
                s_dac_stop <= '1';
                if(m_OE_b = '1') then t_ns <= idle;
                else t_ns <= dac_stop;
                end if;

            when adc_cntclr =>
                s_enb3 <= '1'; s_ena0 <= '1';
                t_prevmode <= "100";
                s_clr0 <= '1'; s_clrad <= '1';
                s_selad <= "11";
                s_adc_start <= '0';
                s_adc_stop <= '1';
                t_ns <= adc_cntpreset;
            when adc_cntpreset =>
                s_clr0 <= '0'; s_clrad <= '0';
                s_enp0 <= '1';
                s_selad <= "00";
                s_adc_stop <= '0';
                t_ns <= adc_transfer;
            when adc_transfer =>
                s_enpad <= '1';
                s_wea0 <= "1";
                if(s_comp0 = '1') then t_ns <= idle;
                else t_ns <= adc_transfer;
                end if;

            when average0 =>
                s_average_clr <= '0';
                s_enb0 <= '1';
                s_clr0 <= '1';
                t_ns <= average1;
            when average1 =>
                s_average_clr <= '0';
                s_clr0 <= '0';
                s_enp0 <= '1';
                s_average_en<= '1';
                t_ns <= average2;
            when average2 =>
                s_average_en<= '0';
                s_enp0 <= '0';
                if s_comp0='1' then
                    t_ns <= average3;
                else t_ns <= average1;
                end if;
            when average3 =>
                s_ram1_mux_sel<="00";
                t_ns <= average4;
            when average4 =>
                t_ns <= average5;
            when average5 =>
                t_ns <= average6;
            when average6 =>
                s_ena1 <='1';
                s_wea1 <= "1";
                t_ns <= average7;
            when average7 =>
                s_ena1 <='0';
                s_wea1 <= "0";
                t_ns <= idle;

            when softreset =>
                s_dac_stop <= '1';
                s_clr0<='1'; s_clr1<='1';
                s_clrad<='1'; s_clrda<='1';
                s_sel0 <= "10"; s_sel1 <= "10";
                s_selda <= "10"; s_selad <= "10";
                t_ns <= idle;

            when others =>
                t_ns <= idle;
        end case;
    end process;

    
	--signal;
	
	s_ram1_mux_sel <=
	s_ram0_mux_sel <=
	
	s_ena0 <= 
	s_wea0 <= 
	s_enb0 <= 
	s_ena1 <= 
	s_wea1 <= 
	s_enb1 <= 
	
	
	
	
	
	
	
	s_average_en	<= '1' when t_ps 
	s_average_clr 	<= '1' when t_ps=idle else '0';
	

	s_ena2 <=
	s_wea2 <=
	s_enb2 <=
	s_enpda <=
	s_clrda <=
	s_selda <=
	s_da_latch_en <=
	
	s_ena3 <=
	s_wea3 <=
	s_enb3 <=
	s_enpad <=
	s_clrad <=
	s_selad <=
	m_ad_latch_en <=

	
	
	
	--m_port
	m_ram1_mux_sel <= s_ram1_mux_sel;
    m_ram0_mux_sel <= s_ram0_mux_sel;
    m_out_mux_sel <= "0" when m_mode_addr = "001" else -- pc ram0 -> 0
                     "1"; -- pc ram 1 -> 1

    m_dout_en <= s_dout_en;

    m_inlatch_en <= m_OE_b;
    m_outlatch_en <= not m_OE_b;
    m_ad_latch_en <= '1';
    m_da_latch_en <= s_da_latch_en;

    m_average_en <= s_average_en;
    m_average_clr <= s_average_clr;
    m_average_addr <= s_A01;

    m_ram0_addr <= s_ram0_addr;
    m_ram1_addr <= s_ram1_addr;

    m_ad_ram_addra <= s_ad_ram_addra;
    m_ad_ram_addrb <= s_ad_ram_addrb;
    m_da_ram_addra <= s_da_ram_addra;
    m_da_ram_addrb <= s_da_ram_addrb;

    m_ena0 <= s_ena0;
    m_wea0 <= s_wea0;
    m_enb0 <= s_enb0;
    m_ena1 <= s_ena1;
    m_wea1 <= s_wea1;
    m_enb1 <= s_enb1;
    m_ena2 <= s_ena2;
    m_wea2 <= s_wea2;
    m_enb2 <= s_enb2;
    m_ena3 <= s_ena3;
    m_wea3 <= "1";
    m_enb3 <= s_enb3;

    s_dtoa(7 downto 0) <= m_data;
    s_dtoa(10 downto 8) <= "000";

end Behavioral;

