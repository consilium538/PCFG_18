library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

--use IEEE.NUMERIC_STD.ALL;
--use UNISIM.VComponents.all;

entity sn74163 is
    Port ( clk, clrN, loadN, enp, ent : in  STD_LOGIC;
           D : in  STD_LOGIC_VECTOR(10 downto 0);
           cout : out  STD_LOGIC_VECTOR(10 downto 0);
           rco : out  STD_LOGIC);
end sn74163;

architecture Behavioral of sn74163 is
    signal Q : STD_LOGIC_VECTOR(10 downto 0);
begin
    cout <= Q;
    rco <= '1' when (Q = "11111111111" and ent = '1') else '0';
    process(clk)
    begin
        if rising_edge(clk) then
            if clrN = '0' then Q <= "00000000000";
            elsif loadN = '0' then Q <= D;
            elsif (enp and ent) = '1' then Q <= Q+1;
				end if;
        end if;
    end process;
end Behavioral;

