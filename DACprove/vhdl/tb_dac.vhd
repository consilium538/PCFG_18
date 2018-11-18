LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY tb_dac IS
    END tb_dac;

ARCHITECTURE behavior OF tb_dac IS 

    COMPONENT DACprove
        PORT(
                m_clk : IN  std_logic;
                m_enp : IN  std_logic;
                m_clr : IN  std_logic;
                m_ramwr : IN  std_logic;
                m_start : IN  std_logic;
                m_end : IN  std_logic;
                m_sel : IN  std_logic_vector(1 downto 0);
                m_Ain : IN  std_logic_vector(10 downto 0);
                m_Din : IN  std_logic_vector(7 downto 0);
                m_comp : OUT  std_logic;
                m_Cnt : OUT  std_logic_vector(10 downto 0);
                m_Aout : OUT  std_logic_vector(10 downto 0);
                m_Dout : OUT  std_logic_vector(7 downto 0);
                d_AData : OUT  std_logic_vector(10 downto 0);
                d_Comp : OUT  std_logic
            );
    END COMPONENT;


   --Inputs
    signal m_clk : std_logic := '0';
    signal m_enp : std_logic := '0';
    signal m_clr : std_logic := '0';
    signal m_ramwr : std_logic := '0';
    signal m_start : std_logic := '0';
    signal m_end : std_logic := '0';
    signal m_sel : std_logic_vector(1 downto 0) := (others => '0');
    signal m_Ain : std_logic_vector(10 downto 0) := (others => '0');
    signal m_Din : std_logic_vector(7 downto 0) := (others => '0');

   --Outputs
    signal m_comp : std_logic;
    signal m_Cnt : std_logic_vector(10 downto 0);
    signal m_Aout : std_logic_vector(10 downto 0);
    signal m_Dout : std_logic_vector(7 downto 0);
    signal d_AData : std_logic_vector(10 downto 0);
    signal d_Comp : std_logic;

   -- Clock period definitions
    constant m_clk_period : time := 25 ns;

BEGIN

   -- Instantiate the Unit Under Test (UUT)
    uut: DACprove PORT MAP (
                               m_clk => m_clk,
                               m_enp => m_enp,
                               m_clr => m_clr,
                               m_ramwr => m_ramwr,
                               m_start => m_start,
                               m_end => m_end,
                               m_sel => m_sel,
                               m_Ain => m_Ain,
                               m_Din => m_Din,
                               m_comp => m_comp,
                               m_Cnt => m_Cnt,
                               m_Aout => m_Aout,
                               m_Dout => m_Dout,
                               d_AData => d_AData,
                               d_Comp => d_Comp
                           );

   -- Clock process definitions
    m_clk_process :process
    begin
        m_clk <= '1';
        wait for m_clk_period/2;
        m_clk <= '0';
        wait for m_clk_period/2;
    end process;


   -- Stimulus process
    stim_proc: process
    begin		
        m_enp <= '0'; m_clr <= '1';
        m_sel <= "10"; -- clear reg
        wait for 100 ns;
        m_enp <= '0'; m_clr <= '0';
        m_sel <= "00";

        wait for m_clk_period*10;

        m_Din <= x"02";
        m_ramwr <= '1';
        wait for m_clk_period;
        m_enp <= '1'; m_clr <= '0';
        m_sel <= "01"; -- reg inc
        m_Din <= x"03";
        wait for m_clk_period;
        m_Din <= x"04";
        wait for m_clk_period;
        m_Din <= x"05";
        wait for m_clk_period;
        m_Din <= x"06";
        wait for m_clk_period;
        m_Din <= x"00";

        m_enp <= '0'; m_clr <= '0';
        m_sel <= "00";
        m_ramwr <= '0';
        wait for m_clk_period*5;

        m_start <= '1';
        wait for m_clk_period*20;
        m_start <= '0';
        m_end <= '1';
      -- insert stimulus here 

        wait;
    end process;

END;
