LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
LIBRARY UNISIM;
USE UNISIM.VCOMPONENTS.ALL;

entity Averager is
    port(
            -- input
            m_clk			: in std_logic;
            m_din 			: in std_logic_vector(7 downto 0);
            m_average_en 	: in std_logic;
            m_average_clr	: in std_logic;
            m_counter_in	: in std_logic_vector(10 downto 0);

            -- output
            m_dout 			: out std_logic_vector(7 downto 0)
        );
end Averager;

architecture Behavioral of Averager is

    component CompSub is
        port(
                -- in
                m_dividend  : in std_logic_vector(7 downto 0);
                m_divisor   : in std_logic_vector(7 downto 0);

                -- out
                m_remainder : out std_logic_vector(7 downto 0);
                m_quotient 	: out std_logic
            );
    end component;

    component reg8bit is
        port(
                -- in
        m_clk, m_en : in std_logic;
        m_divisor   : in std_logic_vector(7 downto 0);
                -- out
        m_remainder : out std_logic_vector(7 downto 0);
    );
    end component;

    signal s_data : std_logic_vector(14 downto 0) := (others=>'0');
    signal s_reminder1 : std_logic_vector(7 downto 0) := (others=>'0');
    signal s_reminder2 : std_logic_vector(7 downto 0) := (others=>'0');
    signal s_reminder3 : std_logic_vector(7 downto 0) := (others=>'0');
    signal s_reminder4 : std_logic_vector(7 downto 0) := (others=>'0');
    signal s_reminder5 : std_logic_vector(7 downto 0) := (others=>'0');
    signal s_reminder6 : std_logic_vector(7 downto 0) := (others=>'0');
    signal s_reminder7 : std_logic_vector(7 downto 0) := (others=>'0');
    signal s_reminder8 : std_logic_vector(7 downto 0) := (others=>'0');
begin

    process(m_clk) -- accumulation
    begin
        if rising_edge(m_clk) then
            if m_average_clr='1' then
                s_data <= (others=>'0');
            elsif m_average_en='1' then
                s_data <= s_data + m_din;
            end if;
        end if;
    end process;

    cns1: CompSub
    port map (
                 m_dividend => s_data(14 downto 7),
                 m_divisor => m_counter_in(7 downto 0),
                 m_remainder => s_reminder1,
                 m_quotient => m_dout(7)
             );

    cns2: CompSub
    port map (
                 m_dividend(7 downto 1) => s_reminder1(6 downto 0),
                 m_dividend(0) => s_data(6),
                 m_divisor => m_counter_in(7 downto 0),
                 m_remainder => s_reminder2,
                 m_quotient => m_dout(6)
             );

    cns3: CompSub
    port map (
                 m_dividend(7 downto 1) => s_reminder2(6 downto 0),
                 m_dividend(0) => s_data(5),
                 m_divisor => m_counter_in(7 downto 0),
                 m_remainder => s_reminder3,
                 m_quotient => m_dout(5)
             );

    cns4: CompSub
    port map (
                 m_dividend(7 downto 1) => s_reminder3(6 downto 0),
                 m_dividend(0) => s_data(4),
                 m_divisor => m_counter_in(7 downto 0),
                 m_remainder => s_reminder4,
                 m_quotient => m_dout(4)
             );

    cns5: CompSub
    port map (
                 m_dividend(7 downto 1) => s_reminder4(6 downto 0) ,
                 m_dividend(0) =>  s_data(3),
                 m_divisor => m_counter_in(7 downto 0),
                 m_remainder => s_reminder5,
                 m_quotient => m_dout(3)
             );

    cns6: CompSub
    port map (
                 m_dividend(7 downto 1) => s_reminder5(6 downto 0)  ,
                 m_dividend(0) => s_data(2),
                 m_divisor => m_counter_in(7 downto 0),
                 m_remainder => s_reminder6,
                 m_quotient => m_dout(2)
             );

    cns7: CompSub
    port map (
                 m_dividend(7 downto 1) => s_reminder6(6 downto 0) ,
                 m_dividend(0) =>  s_data(1),
                 m_divisor => m_counter_in(7 downto 0),
                 m_remainder => s_reminder7,
                 m_quotient => m_dout(1)
             );

    cns8: CompSub
    port map (
                 m_dividend(7 downto 1) => s_reminder7(6 downto 0)  ,
                 m_dividend(0) => s_data(0),
                 m_divisor => m_counter_in(7 downto 0),
                 m_remainder => s_reminder8,
                 m_quotient => m_dout(0)
             );

end Behavioral;

