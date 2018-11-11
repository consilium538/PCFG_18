--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:44:47 11/11/2018
-- Design Name:   
-- Module Name:   D:/study/sogang/18y6s/adca/Project/PCFG_18/prj8254/vhdl/tb_8254.vhd
-- Project Name:  prj8254
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: TOP_8254
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
 
ENTITY tb_8254 IS
END tb_8254;
 
ARCHITECTURE behavior OF tb_8254 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT TOP_8254
    PORT(
         m_clk0 : IN  std_logic;
         m_clk1 : IN  std_logic;
         m_clk2 : IN  std_logic;
         m_clk_ctr : IN  std_logic;
         m_reset : IN  std_logic;
         m_data : IN  std_logic_vector(7 downto 0);
         m_gate0 : IN  std_logic;
         m_gate1 : IN  std_logic;
         m_gate2 : IN  std_logic;
         m_addr : IN  std_logic_vector(1 downto 0);
         m_cs_b : IN  std_logic;
         m_wr_b : IN  std_logic;
         m_out0 : OUT  std_logic;
         m_out1 : OUT  std_logic;
         m_out2 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal mtr : std_logic := '0';
   signal m_reset : std_logic := '1';
   signal m_data : std_logic_vector(7 downto 0) := (others => '0');
   signal m_gate0 : std_logic := '1';
   signal m_gate1 : std_logic := '1';
   signal m_gate2 : std_logic := '1';
   signal m_addr : std_logic_vector(1 downto 0) := (others => '0');
   signal m_cs_b : std_logic := '1';
   signal m_wr_b : std_logic := '1';

 	--Outputs
   signal m_out0 : std_logic;
   signal m_out1 : std_logic;
   signal m_out2 : std_logic;
   -- No clocks detected in port list. Replace mtr below with 
   -- appropriate port name 

 
   constant mtr_period : time := 25 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: TOP_8254 PORT MAP (
          m_clk0 => mtr,
          m_clk1 => mtr,
          m_clk2 => mtr,
          m_clk_ctr => mtr,
          m_reset => m_reset,
          m_data => m_data,
          m_gate0 => m_gate0,
          m_gate1 => m_gate1,
          m_gate2 => m_gate2,
          m_addr => m_addr,
          m_cs_b => m_cs_b,
          m_wr_b => m_wr_b,
          m_out0 => m_out0,
          m_out1 => m_out1,
          m_out2 => m_out2
        );

   -- Clock process definitions
   mtr_process :process
   begin
		mtr <= '0';
		wait for mtr_period/2;
		mtr <= '1';
		wait for mtr_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 50 ns;	
      m_reset <= '0';
      wait for mtr_period*5;

      m_data <= "00110110";
      m_addr <= "11";
      m_cs_b <= '0';
      m_wr_b <= '0';
      wait for mtr_period;

      --m_data <= "00000000";
      --m_addr <= "00";
      m_cs_b <= '1';
      m_wr_b <= '0';
      wait for mtr_period*8;

      m_data <= "00000100";
      m_addr <= "00";
      m_cs_b <= '0';
      m_wr_b <= '0';
      wait for mtr_period;

      --m_data <= "00000000";
      --m_addr <= "00";
      m_cs_b <= '1';
      m_wr_b <= '0';
      wait for mtr_period*8;

      m_data <= "00000000";
      m_addr <= "00";
      m_cs_b <= '0';
      m_wr_b <= '0';
      wait for mtr_period;

      m_data <= "00000000";
      m_addr <= "00";
      m_cs_b <= '1';
      m_wr_b <= '0';
      wait for mtr_period;

      -- insert stimulus here 

      wait;
   end process;

END;
