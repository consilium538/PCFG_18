--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:09:41 11/15/2018
-- Design Name:   
-- Module Name:   D:/study/sogang/18y6s/adca/Project/PCFG_18/avrager/tb_avg.vhd
-- Project Name:  avrager
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Averager
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
 
ENTITY tb_avg IS
END tb_avg;
 
ARCHITECTURE behavior OF tb_avg IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Averager
    PORT(
         m_clk : IN  std_logic;
         m_din : IN  std_logic_vector(7 downto 0);
         m_average_en : IN  std_logic;
         m_average_clr : IN  std_logic;
         m_counter_in : IN  std_logic_vector(10 downto 0);
         m_dout : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal m_clk : std_logic := '0';
   signal m_din : std_logic_vector(7 downto 0) := (others => '0');
   signal m_average_en : std_logic := '0';
   signal m_average_clr : std_logic := '0';
   signal m_counter_in : std_logic_vector(10 downto 0) := (others => '0');

 	--Outputs
   signal m_dout : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant m_clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Averager PORT MAP (
          m_clk => m_clk,
          m_din => m_din,
          m_average_en => m_average_en,
          m_average_clr => m_average_clr,
          m_counter_in => m_counter_in,
          m_dout => m_dout
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
      m_average_clr <= '1';
      -- hold reset state for 100 ns.
      wait for 100 ns;	
      m_average_clr <= '0';
      wait for m_clk_period*10;

      -- insert stimulus here 

      m_average_en  <= '1';
      m_counter_in <= "000" & x"05";
      m_din <= x"00";
      wait for m_clk_period;
      m_din <= x"01";
      wait for m_clk_period;
      m_din <= x"02";
      wait for m_clk_period;
      m_din <= x"03";
      wait for m_clk_period;
      m_din <= x"04";
      wait for m_clk_period;
      m_average_en <= '0';

      

      wait;
   end process;

END;
