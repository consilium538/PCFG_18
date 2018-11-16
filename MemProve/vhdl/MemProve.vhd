----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:33:45 11/15/2018 
-- Design Name: 
-- Module Name:    MemProve - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MemProve is
    port ( m_clk, m_enp, m_clr : in  STD_LOGIC;
    m_ramen, m_ramwr : in STD_LOGIC;
    m_sel : in  STD_LOGIC_VECTOR(1 downto 0);
    m_Ain : in  STD_LOGIC_VECTOR(10 downto 0);
    m_Din : in  STD_LOGIC_VECTOR(7 downto 0);
    -- output
    m_comp : out STD_LOGIC;
    m_Cnt : out  STD_LOGIC_VECTOR(10 downto 0);
    m_Aout : out  STD_LOGIC_VECTOR(10 downto 0);
    m_Dout : out  STD_LOGIC_VECTOR(7 downto 0);

    d_AData: out  STD_LOGIC_VECTOR(10 downto 0);
    d_Comp : out STD_LOGIC);
end MemProve;

architecture Behavioral of MemProve is

    component dual_port_ram is
        port( ADDRA	: in std_logic_vector(10 downto 0);
              ENA		: in std_logic;
              DINA	: in std_logic_vector(7 downto 0);
              WEA		: in std_logic_vector(0 downto 0);
              CLKA	: in std_logic;
              ADDRB	: in std_logic_vector(10 downto 0);
              ENB		: in std_logic;
              CLKB	: in std_logic;
              DOUTB	: out std_logic_vector(7 downto 0));
    end component;

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

    signal s_addr : STD_LOGIC_VECTOR(10 downto 0) := (others => '0');
--signal s_addr : STD_LOGIC_VECTOR(10 downto 0) := (others <='0');

begin
    d_AData <= s_addr;
    ram0 : dual_port_ram port map(
                                     ADDRA => s_addr, --in
                                     ENA => m_ramen, --in
                                     DINA => m_Din, --in
                                     WEA(0) => m_ramwr, --in
                                     CLKA => m_clk, -- in
                                     ADDRB => s_addr, -- in
                                     ENB => m_ramen, -- in
                                     CLKB => m_clk, -- in
                                     DOUTB => m_Dout -- out
                                 );

    remctr : RemController port map(

                                       m_clk => m_clk,
                                       m_enp => m_enp,
                                       m_clr => m_clr,
                                       m_sel => m_sel,
                                       m_Din => m_Ain,
        -- output
                                       m_comp => d_Comp,
                                       m_Cnt => s_addr,
                                       m_Dout => m_Aout
                                   );
end Behavioral;

