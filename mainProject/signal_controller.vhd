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

	--임시로 ram ad와 da 신호 오류 방지
	signal s_ad_ram_addra	: std_logic_vector(10 downto 0):=(others=>'0');
    signal s_ad_ram_addrb	: std_logic_vector(10 downto 0):=(others=>'0');
    signal s_da_ram_addra	: std_logic_vector(10 downto 0):=(others=>'0');
    signal s_da_ram_addrb  	: std_logic_vector(10 downto 0):=(others=>'0');
	--	
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

    signal s_enp0, s_clr0 : std_logic;
    signal s_sel0 : std_logic_vector(1 downto 0);

    signal s_enp1, s_clr1 : std_logic;
    signal s_sel1 : std_logic_vector(1 downto 0);

    signal s_enpda, s_clrda : std_logic;
    signal s_selda : std_logic_vector(1 downto 0);

    signal s_enpad, s_clrad : std_logic;
    signal s_selad : std_logic_vector(1 downto 0);

    signal s_Aa0, s_A01, s_A1d : std_logic_vector(10 downto 0);

    signal s_comp0, s_comp1, s_comp2, s_comp3 : std_logic;
    signal s_dtoa : std_logic_vector(10 downto 0) := (others => '0');

    -------------------------------------------
    type d_testpcmode is (idle,decode,
    wready,wact,writeram,rready,rstandby,rterm,
    dt_cntclr, dt_cntpreset, dt_transfer);

    signal t_ps, t_ns : d_testpcmode := idle;
    signal t_prevmode : std_logic_vector(2 downto 0);
-------------------------------------------

begin

    m_out_mux_sel <= "0" when m_mode_addr = "001" else -- pc ram0 -> 0
                     "1"; -- pc ram 1 -> 1
    m_inlatch_en <= m_OE_b;
    m_outlatch_en <= not m_OE_b;
    s_dtoa(7 downto 0) <= m_data;

    --m_ena0 <= '1'; m_enb0 <= '1';
    --m_ena1 <= '1'; m_enb1 <= '1';
    --m_ena2 <= '1'; m_enb2 <= '1';
    --m_ena3 <= '1'; m_enb3 <= '1';

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
                m_Cnt => m_ram0_addr,
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
                m_Cnt => m_ram1_addr,
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
                m_Cnt => s_da_ram_addrb
                --m_Dout => s_A1d
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
                m_Cnt => s_ad_ram_addra,
                m_Dout => s_Aa0
            );

    -------------------------------------------
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
                m_ena0 <= '0'; m_enb0 <= '0';
                m_ena1 <= '0'; m_enb1 <= '0';
                m_enb2 <= '0';
                m_ena3 <= '0';
                s_enp0 <= '0'; s_sel0 <= "00";
                m_wea0 <= "0";
                s_enp1 <= '0'; s_sel1 <= "00";
                m_wea1 <= "0";
                s_enpda <= '0'; s_selda <= "00";
				m_wea2 <= "0";
                s_enpad <= '0'; s_selad <= "00";
				m_wea3 <= "0";
                m_ram0_mux_sel <= "0";
                m_ram1_mux_sel <= "11";
                if(m_cmd_data = '1') then t_ns <= decode;
                else t_ns <= idle;
                end if;
            when decode =>
                if(m_mode_addr = "001") then --ram0
                    if(m_OE_b = '1') then
                        t_ns <= wready;
                        m_ram0_mux_sel <= "0";
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
                        m_ram1_mux_sel <= "10";
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
                else t_ns <= idle; t_prevmode <= "100";
                    s_clr0 <= '1';
                    s_clr1 <= '1';
                end if;
            when wready =>
                if(m_mode_addr = "010") then --ram1
                    m_ram1_mux_sel <= "10";
                else
                    m_ram0_mux_sel <= "0";
                end if;
                m_ena0 <= '1'; m_ena1 <= '1';
                s_clr0 <= '0'; s_clr1 <= '0';
                if(m_wen = '1') then t_ns <= wact;
                else t_ns <= wready;
                end if;
            when wact =>
                if(m_mode_addr = "001") then -- ram0
                    s_enp0 <= '1'; s_sel0 <= "01";
                    m_wea0 <= "1";
                    t_prevmode <= "001";
                else -- ram1
                    s_enp1 <= '1'; s_sel1 <= "01";
                    m_wea1 <= "1";
                    t_prevmode <= "011";
                end if;
                t_ns <= writeram;
            when writeram =>
                m_wea0 <= "0"; m_wea1 <= "0";
                m_ena0 <= '0'; m_ena1 <= '0';
                s_enp0 <= '0'; s_sel0 <= "00";
                s_enp1 <= '0'; s_sel1 <= "00";
                if(m_wen = '1') then t_ns <= writeram;
                else t_ns <= idle;
                end if;
            when rready =>
                s_clr0 <= '0'; s_clr1 <= '0';
                m_enb0 <= '1'; m_enb1 <= '1';
                if(m_mode_addr = "001") then -- ram0
                    m_ram0_mux_sel <= "0";
                    t_prevmode <= "000";
                else -- ram1
                    m_ram1_mux_sel <= "10";
                    t_prevmode <= "010";
                end if;
                if(m_ren = '1') then t_ns <= rstandby;
                else t_ns <= rready;
                end if;
            when rstandby =>
                m_enb0 <= not m_OE_b; m_enb1 <= not m_OE_b;
                m_dout_en <= '1';
                if(m_ren = '0') then t_ns <= rterm;
                else t_ns <= rstandby;
                end if;
            when rterm =>
                m_ena0 <= '0'; m_ena1 <= '0';
                m_dout_en <= '0';
                if(t_prevmode = "000") then -- ram0
                    s_enp0 <= '1'; s_sel0 <= "00";
                else -- ram1
                    s_enp1 <= '1'; s_sel1 <= "00";
                end if;
                t_ns <= idle;
            when dt_cntclr =>
                m_ram1_mux_sel <= "01";
                m_ena1 <= '1'; m_enb0 <= '1';
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
                m_wea1 <= "1";
                if(s_comp1 = '1') then t_ns <= idle;
                else t_ns <= dt_transfer;
                end if;

    --dt_cntclr, dt_cntpreset, dt_transfer);
        end case;
    end process;
-------------------------------------------
--임시로 ram ad와 da 신호 오류 방지
m_ad_ram_addra <= s_ad_ram_addra;
m_ad_ram_addrb <= s_ad_ram_addrb;
m_da_ram_addra <= s_da_ram_addra;
m_da_ram_addrb <= s_da_ram_addrb;


end Behavioral;

