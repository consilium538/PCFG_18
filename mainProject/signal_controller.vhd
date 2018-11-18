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

    type hall_state_machine 			is (idle,clk_set,rst,PC_wr_mode,PC_re_mode,
    data_trans,DA_start_mode,DA_stop_mode,AD_mode,average_mode);
    type clk_set_state_machine 			is (idle);
    type rst_state_machine 				is (idle);
    type PC_wr_mode_state_machine 		is (idle);
    type PC_re_mode_state_machine 		is (idle);
    type data_trans_state_machine 		is (idle,s0,s1,s2,s3,s4,s5);
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


    signal s_hall_state 	 	: std_logic;
    signal s_clk_state 		 	: std_logic;
    signal s_rst_state 		 	: std_logic;
    signal s_PC_wr_state 	 	: std_logic;
    signal s_PC_re_state 	 	: std_logic;
    signal s_data_trans_state	: std_logic;
    signal s_DA_start_state  	: std_logic;
    signal s_DA_stop_state 	 	: std_logic;
    signal s_AD_state 		 	: std_logic;
    signal s_average_state 	 	: std_logic;

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

    signal s_Aa0, s_A01, s_A1d : std_logic_vector(10 downto 0);


    -------------------------------------------
    type d_testpcmode is (idle,decode,wready,wact,writeram,rready,rstandby,rterm);

    signal t_ps, t_ns : d_testpcmode := idle;
    signal t_prevmode : std_logic_vector(2 downto 0);
    -------------------------------------------

begin

    m_ram0_mux_sel <= "0" when m_mode_addr = "001" else -- pc ram0 -> 0
                      "1"; -- basically adc mode
    m_ram1_mux_sel <= "10" when m_mode_addr = "010" else -- pc ram1 -> dbus
                      "01" when m_mode_addr = "011" else -- data tf. -> ram0
                      "00" when m_mode_addr = "111" else -- avg -> avg
                      "11";
    m_out_mux_sel <= "0" when m_mode_addr = "001" else -- pc ram0 -> 0
                     "1"; -- pc ram 1 -> 1
    m_inlatch_en <= m_OE_b;
    m_outlatch_en <= not m_OE_b;

    m_ena0 <= '1'; m_enb0 <= '1';
    m_ena1 <= '1'; m_enb1 <= '1';
    m_ena2 <= '1'; m_enb2 <= '1';
    m_ena3 <= '1'; m_enb3 <= '1';

    rem0ctr : RemController
    port map(
            -- input
            m_clk => m_clk,
            m_enp => s_enp0,
            m_clr => s_clr0,
            m_sel => s_sel0,
            m_Din => s_Aa0,
            -- output
            --m_comp => d_Comp,
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
            --m_comp => d_Comp,
            m_Cnt => m_ram1_addr,
            m_Dout => s_A1d
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
                s_enp0 <= '0'; s_sel0 <= "00";
                m_wea0 <= "0";
                s_enp1 <= '0'; s_sel1 <= "00";
                m_wea1 <= "0";
                if(m_cmd_data = '1') then t_ns <= decode;
                else t_ns <= idle;
                end if;
            when decode =>
                if(m_mode_addr = "001") then --ram0
                    if(m_OE_b = '1') then
                        t_ns <= wready;
                        if(t_prevmode /= "001") then s_clr0 <= '1';
                        end if;
                    else t_ns <= rready;
                        if(t_prevmode /= "000") then s_clr0 <= '1';
                        end if;
                    end if;
                elsif(m_mode_addr = "010") then --ram1
                    if(m_OE_b = '1') then
                        t_ns <= wready;
                        if(t_prevmode /= "011") then s_clr1 <= '1';
                        end if;
                    else t_ns <= rready;
                        if(t_prevmode /= "010") then s_clr1 <= '1';
                        end if;
                    end if;
                else t_ns <= idle; t_prevmode <= "100";
                end if;
            when wready =>
                s_clr0 <= '0'; s_clr1 <= '0';
                if(m_wen = '1') then t_ns <= wact;
                else t_ns <= wready;
                end if;
            when wact =>
                if(m_mode_addr = "001") then -- ram0
                    s_enp0 <= '1'; s_sel0 <= "01";
                    m_wea0 <= "0";
                    t_prevmode <= "001";
                else -- ram1
                    s_enp1 <= '1'; s_sel1 <= "01";
                    m_wea1 <= "1";
                    t_prevmode <= "011";
                end if;
                t_ns <= writeram;
            when writeram =>
                s_enp0 <= '0'; s_sel0 <= "00";
                s_enp1 <= '0'; s_sel1 <= "00";
                if(m_wen = '1') then t_ns <= writeram;
                else t_ns <= idle;
                end if;
            when rready =>
                s_clr0 <= '0'; s_clr1 <= '0';
                if(m_ren = '1') then t_ns <= rstandby;
                else t_ns <= rready;
                end if;
            when rstandby =>
                m_dout_en <= '1';
                if(m_ren = '0') then t_ns <= rterm;
                else t_ns <= rstandby;
                end if;
            when rterm =>
                m_dout_en <= '0';
                if(m_mode_addr = "001") then -- ram0
                    s_enp0 <= '1'; s_sel0 <= "00";
					t_prevmode <= "000";
                else -- ram1
                    s_enp1 <= '1'; s_sel1 <= "00";
					t_prevmode <= "010";
                end if;
                t_ns <= idle;
        end case;
    end process;
    -------------------------------------------
    
end Behavioral;

