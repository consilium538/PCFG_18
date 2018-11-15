--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:34:13 11/15/2018
-- Design Name:   
-- Module Name:   D:/study/sogang/18y6s/adca/Project/PCFG_18/avrager/tb_combsub.vhd
-- Project Name:  avrager
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: CompSub
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

ENTITY tb_combsub IS
    END tb_combsub;

ARCHITECTURE behavior OF tb_combsub IS 

    -- Component Declaration for the Unit Under Test (UUT)

    COMPONENT CompSub
        PORT(
                m_clk : IN  std_logic;
                m_dividend : IN  std_logic_vector(7 downto 0);
                m_divisor : IN  std_logic_vector(7 downto 0);
                m_remainder : OUT  std_logic_vector(7 downto 0);
                m_quotient : OUT  std_logic
            );
    END COMPONENT;


   --Inputs
    signal m_clk : std_logic := '0';
    signal m_dividend : std_logic_vector(7 downto 0) := (others => '0');
    signal m_divisor : std_logic_vector(7 downto 0) := (others => '0');

   --Outputs
    signal m_remainder : std_logic_vector(7 downto 0);
    signal m_quotient : std_logic;

   -- Clock period definitions
    constant m_clk_period : time := 10 ns;

BEGIN

   -- Instantiate the Unit Under Test (UUT)
    uut: CompSub PORT MAP (
                              m_clk => m_clk,
                              m_dividend => m_dividend,
                              m_divisor => m_divisor,
                              m_remainder => m_remainder,
                              m_quotient => m_quotient
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
        m_dividend <= x"00";
        m_divisor <= x"03";
        wait for m_clk_period;
        m_dividend <= x"04";
        m_divisor <= x"02";
        wait for m_clk_period;
        m_dividend <= x"FF";
        m_divisor <= x"FF";
        wait for m_clk_period;
        m_dividend <= x"FF";
        m_divisor <= x"FB";
        wait for m_clk_period;

      -- insert stimulus here 

        wait;
    end process;

END;
