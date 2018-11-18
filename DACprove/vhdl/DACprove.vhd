----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:07:21 11/18/2018 
-- Design Name: 
-- Module Name:    DACprove - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DACprove is
    port (
    m_clk, m_enp, m_clr : in  STD_LOGIC;
    m_ramwr : in STD_LOGIC;
    m_start, m_end : in STD_LOGIC;
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
end DACprove;

architecture Behavioral of DACprove is

    component sram is
        Port( ADDRA	: in std_logic_vector(10 downto 0);
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

    component DACcnt is
        Port (
        m_clk, m_start, m_end : in std_logic;
        m_Ain : in std_logic_vector(10 downto 0);
        m_Aout : out std_logic_vector(10 downto 0);
        d_reg : out std_logic_vector(10 downto 0)
    );
    end component;

    signal s_ah : std_logic := '1';
    signal s_abus : STD_LOGIC_VECTOR(10 downto 0) := (others => '0');
    signal s_addra : STD_LOGIC_VECTOR(10 downto 0) := (others => '0');
    signal s_addrb : STD_LOGIC_VECTOR(10 downto 0) := (others => '0');
begin

    m_Aout <= s_addrb;
    ram0 : sram
    port map(
                ADDRA => s_addra, --in
                ENA => s_ah, --in
                DINA => m_Din, --in
                WEA(0) => m_ramwr, --in
                CLKA => m_clk, -- in
                ADDRB => s_addrb, -- in
                ENB => s_ah, -- in
                CLKB => m_clk, -- in
                DOUTB => m_Dout -- out
            );

    remctr : RemController
    port map(

                m_clk => m_clk,
                m_enp => m_enp,
                m_clr => m_clr,
                m_sel => m_sel,
                m_Din => m_Ain,
                                       -- output
                m_comp => d_Comp,
                m_Cnt => s_addra,
                m_Dout => s_Abus
            );

    dac_ctr : DACcnt
    port map(
                m_clk => m_clk,
                m_start => m_start,
                m_end => m_end,
                m_Ain => s_Abus,
                m_Aout => s_addrb,
                d_reg => d_AData
            );
end Behavioral;

