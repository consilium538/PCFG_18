--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:17:25 11/15/2018
-- Design Name:   
-- Module Name:   D:/study/sogang/18y6s/adca/Project/PCFG_18/MemProve/vhdl/tb_remctr.vhd
-- Project Name:  MemProve
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: RemController
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
 
ENTITY tb_remctr IS
END tb_remctr;
 
ARCHITECTURE behavior OF tb_remctr IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT RemController
    PORT(
         m_clk : IN  std_logic;
         m_enp : IN  std_logic;
         m_clr : IN  std_logic;
         m_sel : IN  std_logic_vector(1 downto 0);
         m_Din : IN  std_logic_vector(10 downto 0);
         m_comp : OUT  std_logic;
         m_Cnt : OUT  std_logic_vector(10 downto 0);
         m_Dout : OUT  std_logic_vector(10 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal m_clk : std_logic := '0';
   signal m_enp : std_logic := '0';
   signal m_clr : std_logic := '0';
   signal m_sel : std_logic_vector(1 downto 0) := (others => '0');
   signal m_Din : std_logic_vector(10 downto 0) := (others => '0');

 	--Outputs
   signal m_comp : std_logic;
   signal m_Cnt : std_logic_vector(10 downto 0);
   signal m_Dout : std_logic_vector(10 downto 0);

   -- Clock period definitions
   constant m_clk_period : time := 25 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: RemController PORT MAP (
          m_clk => m_clk,
          m_enp => m_enp,
          m_clr => m_clr,
          m_sel => m_sel,
          m_Din => m_Din,
          m_comp => m_comp,
          m_Cnt => m_Cnt,
          m_Dout => m_Dout
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
      -- hold reset state for 100 ns.
      m_clr <= '1';
      m_sel <= "10";
      wait for 100 ns;	
      m_clr <= '0';
      m_sel <= "00"; -- reset
      
      wait for m_clk_period*10;

      m_enp <= '1';
      m_sel <= "01";
      wait for m_clk_period*10; -- cnt & inc
      m_sel <= "00";
      m_enp <= '0';
      wait for m_clk_period*5; -- idle

      m_clr <= '1';
      m_sel <= "11";
      m_Din <= "000" & x"08";
      wait for m_clk_period; -- clrcnt & load addr
      m_clr <= '0';
      m_sel <= "00";
      m_Din <= "000" & x"00";
      m_enp <= '1';
      wait for m_clk_period*10; -- cnt
      m_sel <= "00";
      m_enp <= '0';
      
      -- insert stimulus here 

      wait;
   end process;

END;
