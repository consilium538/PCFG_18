--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:01:26 11/17/2018
-- Design Name:   
-- Module Name:   D:/study/sogang/18y6s/adca/Project/PCFG_18/MemTransfer/vhdl/tb_memtp.vhd
-- Project Name:  MemTransfer
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MemTransfer
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;

ENTITY tb_memtp IS
    END tb_memtp;

ARCHITECTURE behavior OF tb_memtp IS 

    -- Component Declaration for the Unit Under Test (UUT)

    COMPONENT MemTransfer
        PORT(
                m_clk : IN  std_logic;
                m_enp0 : IN  std_logic;
                m_clr0 : IN  std_logic;
                m_sel0 : IN  std_logic_vector(1 downto 0);
                m_enp1 : IN  std_logic;
                m_clr1 : IN  std_logic;
                m_sel1 : IN  std_logic_vector(1 downto 0);
                m_Ain : IN  std_logic_vector(10 downto 0);
                m_ramen0 : IN  std_logic;
                m_ramwr0 : IN  std_logic;
                m_ramen1 : IN  std_logic;
                m_ramwr1 : IN  std_logic;
                m_Din : IN  std_logic_vector(7 downto 0);
                m_comp : OUT  std_logic;
                m_Cnt : OUT  std_logic_vector(10 downto 0);
                m_Aout : OUT  std_logic_vector(10 downto 0);
                m_Dout : OUT  std_logic_vector(7 downto 0);
                d_AData0 : OUT  std_logic_vector(10 downto 0);
                d_AData1 : OUT  std_logic_vector(10 downto 0);
                d_Comp0 : OUT  std_logic;
                d_Comp1 : OUT  std_logic
            );
    END COMPONENT;


   --Inputs
    signal m_clk : std_logic := '0';
    signal m_enp0 : std_logic := '0';
    signal m_clr0 : std_logic := '0';
    signal m_sel0 : std_logic_vector(1 downto 0) := (others => '0');
    signal m_enp1 : std_logic := '0';
    signal m_clr1 : std_logic := '0';
    signal m_sel1 : std_logic_vector(1 downto 0) := (others => '0');
    signal m_Ain : std_logic_vector(10 downto 0) := (others => '0');
    signal m_ramen0 : std_logic := '0';
    signal m_ramwr0 : std_logic := '0';
    signal m_ramen1 : std_logic := '0';
    signal m_ramwr1 : std_logic := '0';
    signal m_Din : std_logic_vector(7 downto 0) := (others => '0');

   --Outputs
    signal m_comp : std_logic;
    signal m_Cnt : std_logic_vector(10 downto 0);
    signal m_Aout : std_logic_vector(10 downto 0);
    signal m_Dout : std_logic_vector(7 downto 0);
    signal d_AData0 : std_logic_vector(10 downto 0);
    signal d_AData1 : std_logic_vector(10 downto 0);
    signal d_Comp0 : std_logic;
    signal d_Comp1 : std_logic;

   -- Clock period definitions
    constant m_clk_period : time := 10 ns;

BEGIN

   -- Instantiate the Unit Under Test (UUT)
    uut: MemTransfer PORT MAP (
                                  m_clk => m_clk,
                                  m_enp0 => m_enp0,
                                  m_clr0 => m_clr0,
                                  m_sel0 => m_sel0,
                                  m_enp1 => m_enp1,
                                  m_clr1 => m_clr1,
                                  m_sel1 => m_sel1,
                                  m_Ain => m_Ain,
                                  m_ramen0 => m_ramen0,
                                  m_ramwr0 => m_ramwr0,
                                  m_ramen1 => m_ramen1,
                                  m_ramwr1 => m_ramwr1,
                                  m_Din => m_Din,
                                  m_comp => m_comp,
                                  m_Cnt => m_Cnt,
                                  m_Aout => m_Aout,
                                  m_Dout => m_Dout,
                                  d_AData0 => d_AData0,
                                  d_AData1 => d_AData1,
                                  d_Comp0 => d_Comp0,
                                  d_Comp1 => d_Comp1
                              );

   -- Clock process definitions
    m_clk_process :process
    begin
        m_clk <= '0';
        wait for m_clk_period/2;
        m_clk <= '1';
        wait for m_clk_period/2;
    end process;


   -- Stimulus process
    stim_proc: process
    begin
        m_enp0 <= '0'; m_clr0 <= '1';
        m_sel0 <= "10"; -- clear reg
        m_enp1 <= '0'; m_clr1 <= '1';
        m_sel1 <= "10"; -- clear reg
        m_ramen0 <= '1'; m_ramen1 <= '1';
      -- hold reset state for 100 ns.
        wait for 100 ns;	
        m_enp0 <= '0'; m_clr0 <= '0';
        m_sel0 <= "00"; -- reg const
        m_enp1 <= '0'; m_clr1 <= '0';
        m_sel1 <= "00"; -- reg const

        wait for m_clk_period*3;

        --load data in ram0
        m_enp0 <= '1'; m_clr0 <= '0';
        m_sel0 <= "01"; -- reg inc
        m_ramwr0 <= '1';
        m_Din <= x"03";
        wait for m_clk_period;
        m_Din <= x"06";
        wait for m_clk_period;
        m_Din <= x"09";
        wait for m_clk_period;
        m_Din <= x"0C";
        wait for m_clk_period;

        m_enp0 <= '0';
        m_sel0 <= "00"; -- reg const
        m_ramwr0 <= '0';
        wait for m_clk_period*5;

        --init cnt & transfer reg;
        m_enp0 <= '0'; m_clr0 <= '1';
        m_sel1 <= "11"; -- reg load
        wait for m_clk_period;

        -- move data from ram0 to ram1
        m_enp0 <= '1'; m_clr0 <= '0';
        m_sel0 <= "00"; -- reg const
        wait for m_clk_period;
        m_enp1 <= '1'; m_clr1 <= '0';
        m_sel1 <= "00"; -- reg const
        m_ramwr1 <= '1';
        wait for m_clk_period*4;

        -- reset cnt
        m_enp0 <= '0'; m_clr0 <= '1';
        m_sel0 <= "00"; -- reg const
        m_enp1 <= '0'; m_clr1 <= '1';
        m_sel1 <= "00"; -- reg const
        m_ramwr1 <= '0';
        wait for m_clk_period*3;
        m_enp0 <= '0'; m_clr0 <= '0';
        m_sel0 <= "00"; -- reg const
        m_enp1 <= '0'; m_clr1 <= '0';
        m_sel1 <= "00"; -- reg const
        wait for m_clk_period*3;

        --view ram1 data
        m_enp1 <= '1'; m_clr1 <= '0';
        m_sel1 <= "00"; -- reg const
        wait for m_clk_period;
        m_enp1 <= '0';
        wait for m_clk_period;
        m_enp1 <= '1';
        wait for m_clk_period;
        m_enp1 <= '0';
        wait for m_clk_period;
        m_enp1 <= '1';
        wait for m_clk_period;
        m_enp1 <= '0';
        wait for m_clk_period;
        m_enp1 <= '1';
        wait for m_clk_period;
        m_enp1 <= '0';
        wait for m_clk_period;
        m_enp1 <= '1';
        wait for m_clk_period;
        m_enp1 <= '0';
        wait for m_clk_period;
        m_enp0 <= '0'; m_clr0 <= '0';
        m_sel0 <= "00"; -- reg const
        m_enp1 <= '0'; m_clr1 <= '0';
        m_sel1 <= "00"; -- reg const

      -- insert stimulus here 

        wait;
    end process;

END;
