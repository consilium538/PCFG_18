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

    signal s_state_pc_write0 : std_logic;              
    signal s_state_pc_write1 : std_logic;              
    signal s_state_pc_read0  : std_logic;	              
    signal s_state_pc_read1  : std_logic;	              
    signal s_state_dt 	  : std_logic;             
    signal s_state_dac	  : std_logic;             
    signal s_state_adc	  : std_logic;             
    signal s_state_avg	  : std_logic;           
    signal s_state_clr    : std_logic;

    ---=========== END OF SIGNAL ===================


    ---=========== FSM DESIGN ===================
    type d_testpcmode is (
    idle,decode,
    wready0,wact0,wterm0,
    rready0,ract0,rterm0,
    wready1,wact1,wterm1,
    rready1,ract1,rterm1,
    dt_cntclr, dt_cntpreset, dt_transfer,
    dac_cntclr, dac_cntpreset, dac_transfer, dac_start,
    dac_stop,
    adc_cntclr, adc_cntpreset, adc_transfer,
    average0,average1,average2,average3,average4,
    average5,average6,average7,average8,
    softreset
);

signal t_ps  : d_testpcmode := idle;
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

    process(m_clk)
    begin
        if rising_edge(m_clk) then
            case t_ps is

                when idle =>
                    if m_cmd_data='1' then
                        t_ps<=decode;
                    else
                        t_ps<=idle;
                    end if;

                when decode =>
                    if m_mode_addr="001" then
                        if(m_OE_b = '1') then
                            t_ps<=wready0;
                        else 
                            t_ps<=rready0;
                        end if;
                    elsif m_mode_addr="010" then
                        if(m_OE_b = '1') then
                            t_ps<=wready1;
                        else 
                            t_ps<=rready1;
                        end if;
                    elsif(m_mode_addr = "011") then -- data transfer
                        t_ps <= dt_cntclr;
                    elsif(m_mode_addr = "100") then -- da start
                        t_ps <= dac_cntclr;
                    elsif(m_mode_addr = "101") then -- da stop
                        t_ps <= dac_stop;
                    elsif(m_mode_addr = "110") then -- ad
                        t_ps <= adc_cntclr;
                    elsif(m_mode_addr = "000" and m_mode_valid = '1') then --softreset
                        t_ps <= softreset;
                    else 
                        t_ps<=idle;
                        t_prevmode<="100";
                    end if;

                when wready0=>
                    t_prevmode<="001";
                    if m_wen='1' then
                        t_ps<=wact0;
                    else 
                        t_ps<=wready0;
                    end if;
                when wact0=>
                    t_ps<=wterm0;
                when wterm0=>
                    if m_cmd_data='0' then
                        t_ps<=idle;
                    else 
                        t_ps<=wterm0;
                    end if;

                when wready1=>
                    t_prevmode<="011";
                    if m_wen='1' then
                        t_ps<=wact1;
                    else 
                        t_ps<=wready1;
                    end if;
                when wact1=>
                    t_ps<=wterm1;
                when wterm1=>
                    if m_cmd_data='0' then
                        t_ps<=idle;
                    else 
                        t_ps<=wterm1;
                    end if;

                when rready0=>
                    t_prevmode<="000";
                    if m_ren='1' then
                        t_ps<=ract0;
                    else 
                        t_ps<=rready0;
                    end if;
                when ract0=>
                    if m_cmd_data='0' then
                        t_ps<=rterm0;
                    else 
                        t_ps<=ract0;
                    end if;
                when rterm0=>
                    t_ps<=idle;

                when rready1=>
                    t_prevmode<="010";
                    if m_ren='1' then
                        t_ps<=ract1;
                    else 
                        t_ps<=rready1;
                    end if;
                when ract1=>
                    if m_cmd_data='0' then
                        t_ps<=rterm1;
                    else 
                        t_ps<=ract1;
                    end if;
                when rterm1=>
                    t_ps<=idle;

                when dt_cntclr =>
                    t_ps <= dt_cntpreset;
                when dt_cntpreset =>
                    t_ps <= dt_transfer;
                when dt_transfer =>
                    if(s_comp1 = '1') then
                        t_ps <= idle;
                    else
                        t_ps <= dt_transfer;
                    end if;

                when dac_cntclr =>
                    t_prevmode <= "100";
                    t_ps <= dac_cntpreset;
                when dac_cntpreset =>
                    t_ps <= dac_transfer;
                when dac_transfer =>
                    if(s_comp2 = '1') then
                        t_ps <= dac_start;
                    else
                        t_ps <= dac_transfer;
                    end if;
                when dac_start =>
                    t_ps <= idle;

                when dac_stop =>
                    t_prevmode <= "100";
                    if(m_OE_b = '1') then
                        t_ps <= idle;
                    else
                        t_ps <= dac_stop;
                    end if;

                when adc_cntclr =>
                    t_prevmode <= "100";
                    t_ps <= adc_cntpreset;
                when adc_cntpreset =>
                    t_ps <= adc_transfer;
                when adc_transfer =>
                    if(s_comp0 = '1') then
                        t_ps <= idle;
                    else
                        t_ps <= adc_transfer;
                    end if;

                when average0 =>
                    t_prevmode <= "100";
                    t_ps <= average1;
                when average1 =>
                    t_ps <= average2;
                when average2 =>
                    if s_comp0='1' then
                        t_ps <= average3;
                    else
                        t_ps <= average1;
                    end if;
                when average3 =>
                    t_ps <= average4;
                when average4 =>
                    t_ps <= average5;
                when average5 =>
                    t_ps <= average6;
                when average6 =>
                    t_ps <= average7;
                when average7 =>
                    t_ps <= idle;

                when softreset =>
                    if(m_cmd_data = '0') then
                        t_ps <= idle;
                    else
                        t_ps <= softreset;
                    end if;

                when others=>
                    t_ps <= idle;
            end case;

        end if;
    end process;

    --signal;


    s_ena0 <= s_state_pc_write0 or s_state_adc;
    s_wea0 <= "1" when ( t_ps=wact0 or t_ps = adc_transfer) else "0";
    s_enb0 <= s_state_pc_read0 or s_state_dt or s_state_avg;

    s_enp0 <= '1' when ( ( t_ps = wact0 and t_prevmode = "001" ) or ( t_ps = rterm0 and t_prevmode = "000" ) or t_ps = dt_cntpreset or t_ps = dt_transfer or t_ps = adc_cntpreset or t_ps = adc_transfer or t_ps = average1 ) else
              '0';
    s_clr0 <= '1' when ( ( t_ps = decode and ( ( m_mode_addr = "001" and m_OE_b = '1' and not ( t_prevmode = "001" ) ) or ( m_mode_addr = "001" and m_OE_b = '0' and not (  t_prevmode = "000" ) ) ) ) or s_state_clr = '1' ) else --not done
              '0';
    s_sel0 <= "01" when ( t_ps = wact0 ) else -- add
              "10" when ( t_ps = softreset ) else -- clear
              "11" when ( t_ps = adc_cntpreset ) else -- setup
              "00"; -- preserv

    s_ena1 <= s_state_pc_write1 or s_state_dt or s_state_avg;
    s_wea1 <= "1" when ( t_ps = wact1 or t_ps = dt_transfer or t_ps = average6 ) else "0";
    s_enb1 <= s_state_pc_read1 or s_state_dac;

    s_enp1 <= '1' when ( ( t_ps = wact1  and t_prevmode = "011") or ( t_ps = rterm1 and t_prevmode = "010" ) or t_ps = dt_transfer or t_ps = adc_cntpreset or t_ps = adc_transfer or t_ps = average1 ) else
              '0';
    s_clr1 <= '1' when ( ( t_ps = decode and ( ( m_mode_addr = "010" and m_OE_b = '1' and not ( t_prevmode = "011" ) ) or ( m_mode_addr = "010" and m_OE_b = '0' and not (  t_prevmode = "010" ) ) ) ) or s_state_clr = '1' ) else --not done
              '0';
    s_sel1 <= "01" when ( t_ps = wact1 ) else -- add
              "10" when ( t_ps = softreset ) else -- clear
              "11" when ( t_ps = dt_cntpreset ) else -- setup
              "00"; -- preserv

    s_ram0_mux_sel <= "0" when s_state_pc_write0='1' else "1";
    s_ram1_mux_sel <= "10" when s_state_pc_write1='1' else
                      "01" when s_state_dt = '1' else
                      "00" when s_state_avg = '1' else
                      "11";

    s_dout_en <= '1' when ( t_ps = ract1 or t_ps = ract0 ) else
                 '0';


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

    s_state_pc_write0 <= '1' when ( t_ps = wready0 or t_ps = wact0 or t_ps = wterm0 ) else
                      '0';
    s_state_pc_write1 <= '1' when ( t_ps = wready1 or t_ps = wact1 or t_ps = wterm1 ) else
                      '0';
    s_state_pc_read0 <= '1' when ( t_ps = rready0 or t_ps = ract0 or t_ps = rterm0 ) else
                     '0';
    s_state_pc_read1 <= '1' when ( t_ps = rready1 or t_ps = ract1 or t_ps = rterm1 ) else
                     '0';
    s_state_dt <= '1' when ( t_ps = dt_cntclr or t_ps = dt_cntpreset or t_ps = dt_transfer ) else
                  '0';
    s_state_dac <= '1' when ( t_ps = dac_cntclr or t_ps = dac_cntpreset or t_ps = dac_transfer ) else
                   '0';
    s_state_adc <= '1' when ( t_ps = adc_cntclr or t_ps = adc_cntpreset or t_ps = adc_transfer ) else
                   '0';
    s_state_avg <= '1' when ( t_ps = average0 or t_ps = average1 or t_ps = average2 or t_ps = average3 or t_ps = average4 or t_ps = average5 or t_ps = average6 or t_ps = average7 ) else
                   '0';
    s_state_clr <= '1' when ( t_ps = dt_cntclr or t_ps = dac_cntclr or t_ps = adc_cntclr ) else
                   '0';

end Behavioral;

