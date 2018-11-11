--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:40:30 11/11/2018
-- Design Name:   
-- Module Name:   D:/study/sogang/18y6s/adca/Project/PCFG_18/cnt/vhdl/cnt_testbench.vhd
-- Project Name:  cnt
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: sn74163
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
 
ENTITY cnt_testbench IS
END cnt_testbench;
 
ARCHITECTURE behavior OF cnt_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT sn74163
    PORT(
         clk : IN  std_logic;
         clrN : IN  std_logic;
         loadN : IN  std_logic;
         enp : IN  std_logic;
         ent : IN  std_logic;
         D : IN  std_logic_vector(10 downto 0);
         cout : OUT  std_logic_vector(10 downto 0);
         rco : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal clrN : std_logic := '1';
   signal loadN : std_logic := '1';
   signal enp : std_logic := '1';
   signal ent : std_logic := '1';
   signal D : std_logic_vector(10 downto 0) := (others => '0');

 	--Outputs
   signal cout : std_logic_vector(10 downto 0);
   signal rco : std_logic;

   -- Clock period definitions
   constant clk_period : time := 25 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: sn74163 PORT MAP (
          clk => clk,
          clrN => clrN,
          loadN => loadN,
          enp => enp,
          ent => ent,
          D => D,
          cout => cout,
          rco => rco
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

      clrN <= '0';
      wait for clk_period*1;
      
      clrN <= '1';
      wait for clk_period*10;

      enp <= '0';
      wait for clk_period*4;

      enp <= '1';
      wait for clk_period*10;

      enp <= '0';
      loadN <= '0';
      D <= "00000001010";
      wait for clk_period;

      loadN <= '1';
      wait for clk_period*4;

      enp <= '0';
      loadN <= '0';
      D <= "11111111111";
      wait for clk_period*2;
      ent <= '0';
      wait for clk_period;

      enp <= '1';
      ent <= '1';
      loadN <= '1';

      -- insert stimulus here 

      wait;
   end process;

END;
