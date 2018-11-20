--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:09:38 11/16/2018
-- Design Name:   
-- Module Name:   D:/study/sogang/18y6s/adca/Project/PCFG_18/MemProve/tb_mem.vhd
-- Project Name:  MemProve
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MemProve
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
 
ENTITY tb_mem IS
END tb_mem;
 
ARCHITECTURE behavior OF tb_mem IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MemProve
    PORT(
         m_clk : IN  std_logic;
         m_enp : IN  std_logic;
         m_clr : IN  std_logic;
         m_ramen : IN  std_logic;
         m_ramwr : IN  std_logic;
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
   signal m_ramen : std_logic := '0';
   signal m_ramwr : std_logic := '0';
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
   constant m_clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MemProve PORT MAP (
          m_clk => m_clk,
          m_enp => m_enp,
          m_clr => m_clr,
          m_ramen => m_ramen,
          m_ramwr => m_ramwr,
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
      m_ramen <= '1';
      wait for 100 ns;	
      m_clr <= '0';
      m_sel <= "00"; -- reset
      
      wait for m_clk_period*10;

      m_enp <= '1';
      m_sel <= "01";
      m_ramwr <= '1';
      m_Din <= x"0F";
      wait for m_clk_period; -- cnt & inc
      m_Din <= x"F0";
      wait for m_clk_period; -- cnt & inc
      m_Din <= x"FF";
      wait for m_clk_period; -- cnt & inc
      m_sel <= "00";
      m_enp <= '0';
      m_ramwr <= '0';
      m_Din <= x"00";
      wait for m_clk_period*5; -- idle

      m_clr <= '1';
      m_sel <= "00";
      wait for m_clk_period; -- clrcnt
      m_clr <= '0';
      m_sel <= "00";
      m_Ain <= "000" & x"00";
      m_enp <= '1';
      wait for m_clk_period; -- cnt
      m_enp <= '0';
      wait for m_clk_period; -- cnt
      m_enp <= '1';
      wait for m_clk_period; -- cnt
      m_enp <= '0';
      wait for m_clk_period; -- cnt
      m_enp <= '1';
      wait for m_clk_period; -- cnt
      m_enp <= '0';
      wait for m_clk_period; -- cnt
      m_sel <= "00";
      m_enp <= '0';
      
      -- insert stimulus here 
      wait;
   end process;

END;
