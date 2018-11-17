----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:08:31 11/17/2018 
-- Design Name: 
-- Module Name:    MemTransfer - Behavioral 
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

entity MemTransfer is
    port ( m_clk : in STD_LOGIC;
    --cnt input
    m_enp0, m_clr0 : in  STD_LOGIC;
    m_sel0 : in  STD_LOGIC_VECTOR(1 downto 0);
    m_enp1, m_clr1 : in  STD_LOGIC;
    m_sel1 : in  STD_LOGIC_VECTOR(1 downto 0);
    m_Ain : in  STD_LOGIC_VECTOR(10 downto 0);
    --ram input
    m_ramen0, m_ramwr0 : in STD_LOGIC;
    m_ramen1, m_ramwr1 : in STD_LOGIC;
    m_Din : in  STD_LOGIC_VECTOR(7 downto 0);
    -- output
    m_comp : out STD_LOGIC;
    m_Cnt : out  STD_LOGIC_VECTOR(10 downto 0); -- not need
    m_Aout : out  STD_LOGIC_VECTOR(10 downto 0);
    m_Dout : out  STD_LOGIC_VECTOR(7 downto 0);

    d_AData0: out  STD_LOGIC_VECTOR(10 downto 0);
    d_AData1: out  STD_LOGIC_VECTOR(10 downto 0);
    d_Comp0 : out STD_LOGIC;
    d_Comp1 : out STD_LOGIC);
end MemTransfer;

architecture Behavioral of MemTransfer is

    component sram0 is
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

    signal s_addr0 : STD_LOGIC_VECTOR(10 downto 0) := (others => '0');
    signal s_addr1 : STD_LOGIC_VECTOR(10 downto 0) := (others => '0');
    signal s_Abus : STD_LOGIC_VECTOR(10 downto 0) := (others => '0');
    signal s_Dbus : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
begin
    d_AData0 <= s_addr0;
    d_AData1 <= s_addr1;
    ram0 : sram0
    port map(
         ADDRA => s_addr0, --in
         ENA => m_ramen0, --in
         DINA => m_Din, --in
         WEA(0) => m_ramwr0, --in
         CLKA => m_clk, -- in
         ADDRB => s_addr0, -- in
         ENB => m_ramen0, -- in
         CLKB => m_clk, -- in
         DOUTB => s_Dbus -- out
             );

    remctr0 : RemController
    port map(
        m_clk => m_clk,
        m_enp => m_enp0,
        m_clr => m_clr0,
        m_sel => m_sel0,
        m_Din => m_Ain,
       -- output
        m_comp => d_Comp0,
        m_Cnt => s_addr0,
        m_Dout => s_Abus
            );

    ram1 : sram0
    port map(
         ADDRA => s_addr1, --in
         ENA => m_ramen1, --in
         DINA => s_Dbus, --in
         WEA(0) => m_ramwr1, --in
         CLKA => m_clk, -- in
         ADDRB => s_addr1, -- in
         ENB => m_ramen1, -- in
         CLKB => m_clk, -- in
         DOUTB => m_Dout -- out
     );

    remctr1 : RemController
    port map(
        m_clk => m_clk,
        m_enp => m_enp1,
        m_clr => m_clr1,
        m_sel => m_sel1,
        m_Din => s_Abus,
       -- output
        m_comp => d_Comp1,
        m_Cnt => s_addr1,
        m_Dout => m_Aout
    );


end Behavioral;

