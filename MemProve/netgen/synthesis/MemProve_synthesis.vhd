--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: MemProve_synthesis.vhd
-- /___/   /\     Timestamp: Tue Nov 20 23:07:57 2018
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm MemProve -w -dir netgen/synthesis -ofmt vhdl -sim MemProve.ngc MemProve_synthesis.vhd 
-- Device	: xc3s5000-4-fg900
-- Input file	: MemProve.ngc
-- Output file	: D:\study\sogang\18y6s\adca\Project\PCFG_18\MemProve\netgen\synthesis\MemProve_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: MemProve
-- Xilinx	: D:\Xilinx\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------


-- synthesis translate_off
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity MemProve is
  port (
    m_enp : in STD_LOGIC := 'X'; 
    m_ramwr : in STD_LOGIC := 'X'; 
    m_comp : out STD_LOGIC; 
    d_Comp : out STD_LOGIC; 
    m_ramen : in STD_LOGIC := 'X'; 
    m_clk : in STD_LOGIC := 'X'; 
    m_clr : in STD_LOGIC := 'X'; 
    m_Cnt : out STD_LOGIC_VECTOR ( 10 downto 0 ); 
    m_Dout : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    m_Aout : out STD_LOGIC_VECTOR ( 10 downto 0 ); 
    d_AData : out STD_LOGIC_VECTOR ( 10 downto 0 ); 
    m_Ain : in STD_LOGIC_VECTOR ( 10 downto 0 ); 
    m_sel : in STD_LOGIC_VECTOR ( 1 downto 0 ); 
    m_Din : in STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end MemProve;

architecture Structure of MemProve is
  component dual_port_ram
    port (
      clka : in STD_LOGIC := 'X'; 
      ena : in STD_LOGIC := 'X'; 
      clkb : in STD_LOGIC := 'X'; 
      enb : in STD_LOGIC := 'X'; 
      wea : in STD_LOGIC_VECTOR ( 0 downto 0 ); 
      addra : in STD_LOGIC_VECTOR ( 10 downto 0 ); 
      dina : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
      addrb : in STD_LOGIC_VECTOR ( 10 downto 0 ); 
      doutb : out STD_LOGIC_VECTOR ( 7 downto 0 ) 
    );
  end component;
  signal N0 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal N14 : STD_LOGIC; 
  signal N15 : STD_LOGIC; 
  signal N17 : STD_LOGIC; 
  signal N18 : STD_LOGIC; 
  signal N20 : STD_LOGIC; 
  signal N21 : STD_LOGIC; 
  signal N23 : STD_LOGIC; 
  signal N24 : STD_LOGIC; 
  signal N29 : STD_LOGIC; 
  signal N30 : STD_LOGIC; 
  signal N34 : STD_LOGIC; 
  signal N36 : STD_LOGIC; 
  signal N37 : STD_LOGIC; 
  signal N39 : STD_LOGIC; 
  signal N41 : STD_LOGIC; 
  signal N42 : STD_LOGIC; 
  signal N47 : STD_LOGIC; 
  signal N48 : STD_LOGIC; 
  signal N49 : STD_LOGIC; 
  signal N50 : STD_LOGIC; 
  signal N51 : STD_LOGIC; 
  signal N52 : STD_LOGIC; 
  signal d_Comp_OBUF_36 : STD_LOGIC; 
  signal m_Ain_0_IBUF_48 : STD_LOGIC; 
  signal m_Ain_10_IBUF_49 : STD_LOGIC; 
  signal m_Ain_1_IBUF_50 : STD_LOGIC; 
  signal m_Ain_2_IBUF_51 : STD_LOGIC; 
  signal m_Ain_3_IBUF_52 : STD_LOGIC; 
  signal m_Ain_4_IBUF_53 : STD_LOGIC; 
  signal m_Ain_5_IBUF_54 : STD_LOGIC; 
  signal m_Ain_6_IBUF_55 : STD_LOGIC; 
  signal m_Ain_7_IBUF_56 : STD_LOGIC; 
  signal m_Ain_8_IBUF_57 : STD_LOGIC; 
  signal m_Ain_9_IBUF_58 : STD_LOGIC; 
  signal m_Din_0_IBUF_78 : STD_LOGIC; 
  signal m_Din_1_IBUF_79 : STD_LOGIC; 
  signal m_Din_2_IBUF_80 : STD_LOGIC; 
  signal m_Din_3_IBUF_81 : STD_LOGIC; 
  signal m_Din_4_IBUF_82 : STD_LOGIC; 
  signal m_Din_5_IBUF_83 : STD_LOGIC; 
  signal m_Din_6_IBUF_84 : STD_LOGIC; 
  signal m_Din_7_IBUF_85 : STD_LOGIC; 
  signal m_Dout_0_OBUF_94 : STD_LOGIC; 
  signal m_Dout_1_OBUF_95 : STD_LOGIC; 
  signal m_Dout_2_OBUF_96 : STD_LOGIC; 
  signal m_Dout_3_OBUF_97 : STD_LOGIC; 
  signal m_Dout_4_OBUF_98 : STD_LOGIC; 
  signal m_Dout_5_OBUF_99 : STD_LOGIC; 
  signal m_Dout_6_OBUF_100 : STD_LOGIC; 
  signal m_Dout_7_OBUF_101 : STD_LOGIC; 
  signal m_clk_BUFGP_103 : STD_LOGIC; 
  signal m_clr_IBUF_105 : STD_LOGIC; 
  signal m_enp_IBUF_107 : STD_LOGIC; 
  signal m_ramen_IBUF_109 : STD_LOGIC; 
  signal m_ramwr_IBUF_111 : STD_LOGIC; 
  signal m_sel_0_IBUF_114 : STD_LOGIC; 
  signal m_sel_1_IBUF_115 : STD_LOGIC; 
  signal remctr_Madd_s_Reg_addsub0000_cy_2_Q : STD_LOGIC; 
  signal remctr_Madd_s_Reg_addsub0000_cy_4_Q : STD_LOGIC; 
  signal remctr_Madd_s_Reg_addsub0000_cy_6_Q : STD_LOGIC; 
  signal remctr_Mcount_s_Cnt_cy_1_rt_142 : STD_LOGIC; 
  signal remctr_Mcount_s_Cnt_cy_2_rt_144 : STD_LOGIC; 
  signal remctr_Mcount_s_Cnt_cy_3_rt_146 : STD_LOGIC; 
  signal remctr_Mcount_s_Cnt_cy_4_rt_148 : STD_LOGIC; 
  signal remctr_Mcount_s_Cnt_cy_5_rt_150 : STD_LOGIC; 
  signal remctr_Mcount_s_Cnt_cy_6_rt_152 : STD_LOGIC; 
  signal remctr_Mcount_s_Cnt_cy_7_rt_154 : STD_LOGIC; 
  signal remctr_Mcount_s_Cnt_cy_8_rt_156 : STD_LOGIC; 
  signal remctr_Mcount_s_Cnt_cy_9_rt_158 : STD_LOGIC; 
  signal remctr_Mcount_s_Cnt_xor_10_rt_160 : STD_LOGIC; 
  signal remctr_s_Reg_mux0000_1_1_197 : STD_LOGIC; 
  signal remctr_s_Reg_mux0000_1_2_198 : STD_LOGIC; 
  signal remctr_s_Reg_mux0000_2_1_200 : STD_LOGIC; 
  signal remctr_s_Reg_mux0000_2_2_201 : STD_LOGIC; 
  signal remctr_s_Reg_not0001 : STD_LOGIC; 
  signal remctr_Mcompar_m_comp_cmp_le0000_cy : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal remctr_Mcompar_m_comp_cmp_le0000_lut : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal remctr_Mcount_s_Cnt_cy : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal remctr_Mcount_s_Cnt_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal remctr_Result : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal remctr_s_Cnt : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal remctr_s_Reg : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal remctr_s_Reg_mux0000 : STD_LOGIC_VECTOR ( 10 downto 0 ); 
begin
  XST_GND : GND
    port map (
      G => N0
    );
  XST_VCC : VCC
    port map (
      P => N1
    );
  remctr_Mcompar_m_comp_cmp_le0000_cy_10_Q : MUXCY
    port map (
      CI => remctr_Mcompar_m_comp_cmp_le0000_cy(9),
      DI => remctr_s_Cnt(10),
      S => remctr_Mcompar_m_comp_cmp_le0000_lut(10),
      O => d_Comp_OBUF_36
    );
  remctr_Mcompar_m_comp_cmp_le0000_lut_10_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => remctr_s_Cnt(10),
      I1 => remctr_s_Reg(10),
      O => remctr_Mcompar_m_comp_cmp_le0000_lut(10)
    );
  remctr_Mcompar_m_comp_cmp_le0000_cy_9_Q : MUXCY
    port map (
      CI => remctr_Mcompar_m_comp_cmp_le0000_cy(8),
      DI => remctr_s_Cnt(9),
      S => remctr_Mcompar_m_comp_cmp_le0000_lut(9),
      O => remctr_Mcompar_m_comp_cmp_le0000_cy(9)
    );
  remctr_Mcompar_m_comp_cmp_le0000_lut_9_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => remctr_s_Cnt(9),
      I1 => remctr_s_Reg(9),
      O => remctr_Mcompar_m_comp_cmp_le0000_lut(9)
    );
  remctr_Mcompar_m_comp_cmp_le0000_cy_8_Q : MUXCY
    port map (
      CI => remctr_Mcompar_m_comp_cmp_le0000_cy(7),
      DI => remctr_s_Cnt(8),
      S => remctr_Mcompar_m_comp_cmp_le0000_lut(8),
      O => remctr_Mcompar_m_comp_cmp_le0000_cy(8)
    );
  remctr_Mcompar_m_comp_cmp_le0000_lut_8_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => remctr_s_Cnt(8),
      I1 => remctr_s_Reg(8),
      O => remctr_Mcompar_m_comp_cmp_le0000_lut(8)
    );
  remctr_Mcompar_m_comp_cmp_le0000_cy_7_Q : MUXCY
    port map (
      CI => remctr_Mcompar_m_comp_cmp_le0000_cy(6),
      DI => remctr_s_Cnt(7),
      S => remctr_Mcompar_m_comp_cmp_le0000_lut(7),
      O => remctr_Mcompar_m_comp_cmp_le0000_cy(7)
    );
  remctr_Mcompar_m_comp_cmp_le0000_lut_7_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => remctr_s_Cnt(7),
      I1 => remctr_s_Reg(7),
      O => remctr_Mcompar_m_comp_cmp_le0000_lut(7)
    );
  remctr_Mcompar_m_comp_cmp_le0000_cy_6_Q : MUXCY
    port map (
      CI => remctr_Mcompar_m_comp_cmp_le0000_cy(5),
      DI => remctr_s_Cnt(6),
      S => remctr_Mcompar_m_comp_cmp_le0000_lut(6),
      O => remctr_Mcompar_m_comp_cmp_le0000_cy(6)
    );
  remctr_Mcompar_m_comp_cmp_le0000_lut_6_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => remctr_s_Cnt(6),
      I1 => remctr_s_Reg(6),
      O => remctr_Mcompar_m_comp_cmp_le0000_lut(6)
    );
  remctr_Mcompar_m_comp_cmp_le0000_cy_5_Q : MUXCY
    port map (
      CI => remctr_Mcompar_m_comp_cmp_le0000_cy(4),
      DI => remctr_s_Cnt(5),
      S => remctr_Mcompar_m_comp_cmp_le0000_lut(5),
      O => remctr_Mcompar_m_comp_cmp_le0000_cy(5)
    );
  remctr_Mcompar_m_comp_cmp_le0000_lut_5_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => remctr_s_Cnt(5),
      I1 => remctr_s_Reg(5),
      O => remctr_Mcompar_m_comp_cmp_le0000_lut(5)
    );
  remctr_Mcompar_m_comp_cmp_le0000_cy_4_Q : MUXCY
    port map (
      CI => remctr_Mcompar_m_comp_cmp_le0000_cy(3),
      DI => remctr_s_Cnt(4),
      S => remctr_Mcompar_m_comp_cmp_le0000_lut(4),
      O => remctr_Mcompar_m_comp_cmp_le0000_cy(4)
    );
  remctr_Mcompar_m_comp_cmp_le0000_lut_4_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => remctr_s_Cnt(4),
      I1 => remctr_s_Reg(4),
      O => remctr_Mcompar_m_comp_cmp_le0000_lut(4)
    );
  remctr_Mcompar_m_comp_cmp_le0000_cy_3_Q : MUXCY
    port map (
      CI => remctr_Mcompar_m_comp_cmp_le0000_cy(2),
      DI => remctr_s_Cnt(3),
      S => remctr_Mcompar_m_comp_cmp_le0000_lut(3),
      O => remctr_Mcompar_m_comp_cmp_le0000_cy(3)
    );
  remctr_Mcompar_m_comp_cmp_le0000_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => remctr_s_Cnt(3),
      I1 => remctr_s_Reg(3),
      O => remctr_Mcompar_m_comp_cmp_le0000_lut(3)
    );
  remctr_Mcompar_m_comp_cmp_le0000_cy_2_Q : MUXCY
    port map (
      CI => remctr_Mcompar_m_comp_cmp_le0000_cy(1),
      DI => remctr_s_Cnt(2),
      S => remctr_Mcompar_m_comp_cmp_le0000_lut(2),
      O => remctr_Mcompar_m_comp_cmp_le0000_cy(2)
    );
  remctr_Mcompar_m_comp_cmp_le0000_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => remctr_s_Cnt(2),
      I1 => remctr_s_Reg(2),
      O => remctr_Mcompar_m_comp_cmp_le0000_lut(2)
    );
  remctr_Mcompar_m_comp_cmp_le0000_cy_1_Q : MUXCY
    port map (
      CI => remctr_Mcompar_m_comp_cmp_le0000_cy(0),
      DI => remctr_s_Cnt(1),
      S => remctr_Mcompar_m_comp_cmp_le0000_lut(1),
      O => remctr_Mcompar_m_comp_cmp_le0000_cy(1)
    );
  remctr_Mcompar_m_comp_cmp_le0000_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => remctr_s_Cnt(1),
      I1 => remctr_s_Reg(1),
      O => remctr_Mcompar_m_comp_cmp_le0000_lut(1)
    );
  remctr_Mcompar_m_comp_cmp_le0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => remctr_s_Cnt(0),
      S => remctr_Mcompar_m_comp_cmp_le0000_lut(0),
      O => remctr_Mcompar_m_comp_cmp_le0000_cy(0)
    );
  remctr_Mcompar_m_comp_cmp_le0000_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => remctr_s_Cnt(0),
      I1 => remctr_s_Reg(0),
      O => remctr_Mcompar_m_comp_cmp_le0000_lut(0)
    );
  remctr_Mcount_s_Cnt_xor_10_Q : XORCY
    port map (
      CI => remctr_Mcount_s_Cnt_cy(9),
      LI => remctr_Mcount_s_Cnt_xor_10_rt_160,
      O => remctr_Result(10)
    );
  remctr_Mcount_s_Cnt_xor_9_Q : XORCY
    port map (
      CI => remctr_Mcount_s_Cnt_cy(8),
      LI => remctr_Mcount_s_Cnt_cy_9_rt_158,
      O => remctr_Result(9)
    );
  remctr_Mcount_s_Cnt_cy_9_Q : MUXCY
    port map (
      CI => remctr_Mcount_s_Cnt_cy(8),
      DI => N0,
      S => remctr_Mcount_s_Cnt_cy_9_rt_158,
      O => remctr_Mcount_s_Cnt_cy(9)
    );
  remctr_Mcount_s_Cnt_xor_8_Q : XORCY
    port map (
      CI => remctr_Mcount_s_Cnt_cy(7),
      LI => remctr_Mcount_s_Cnt_cy_8_rt_156,
      O => remctr_Result(8)
    );
  remctr_Mcount_s_Cnt_cy_8_Q : MUXCY
    port map (
      CI => remctr_Mcount_s_Cnt_cy(7),
      DI => N0,
      S => remctr_Mcount_s_Cnt_cy_8_rt_156,
      O => remctr_Mcount_s_Cnt_cy(8)
    );
  remctr_Mcount_s_Cnt_xor_7_Q : XORCY
    port map (
      CI => remctr_Mcount_s_Cnt_cy(6),
      LI => remctr_Mcount_s_Cnt_cy_7_rt_154,
      O => remctr_Result(7)
    );
  remctr_Mcount_s_Cnt_cy_7_Q : MUXCY
    port map (
      CI => remctr_Mcount_s_Cnt_cy(6),
      DI => N0,
      S => remctr_Mcount_s_Cnt_cy_7_rt_154,
      O => remctr_Mcount_s_Cnt_cy(7)
    );
  remctr_Mcount_s_Cnt_xor_6_Q : XORCY
    port map (
      CI => remctr_Mcount_s_Cnt_cy(5),
      LI => remctr_Mcount_s_Cnt_cy_6_rt_152,
      O => remctr_Result(6)
    );
  remctr_Mcount_s_Cnt_cy_6_Q : MUXCY
    port map (
      CI => remctr_Mcount_s_Cnt_cy(5),
      DI => N0,
      S => remctr_Mcount_s_Cnt_cy_6_rt_152,
      O => remctr_Mcount_s_Cnt_cy(6)
    );
  remctr_Mcount_s_Cnt_xor_5_Q : XORCY
    port map (
      CI => remctr_Mcount_s_Cnt_cy(4),
      LI => remctr_Mcount_s_Cnt_cy_5_rt_150,
      O => remctr_Result(5)
    );
  remctr_Mcount_s_Cnt_cy_5_Q : MUXCY
    port map (
      CI => remctr_Mcount_s_Cnt_cy(4),
      DI => N0,
      S => remctr_Mcount_s_Cnt_cy_5_rt_150,
      O => remctr_Mcount_s_Cnt_cy(5)
    );
  remctr_Mcount_s_Cnt_xor_4_Q : XORCY
    port map (
      CI => remctr_Mcount_s_Cnt_cy(3),
      LI => remctr_Mcount_s_Cnt_cy_4_rt_148,
      O => remctr_Result(4)
    );
  remctr_Mcount_s_Cnt_cy_4_Q : MUXCY
    port map (
      CI => remctr_Mcount_s_Cnt_cy(3),
      DI => N0,
      S => remctr_Mcount_s_Cnt_cy_4_rt_148,
      O => remctr_Mcount_s_Cnt_cy(4)
    );
  remctr_Mcount_s_Cnt_xor_3_Q : XORCY
    port map (
      CI => remctr_Mcount_s_Cnt_cy(2),
      LI => remctr_Mcount_s_Cnt_cy_3_rt_146,
      O => remctr_Result(3)
    );
  remctr_Mcount_s_Cnt_cy_3_Q : MUXCY
    port map (
      CI => remctr_Mcount_s_Cnt_cy(2),
      DI => N0,
      S => remctr_Mcount_s_Cnt_cy_3_rt_146,
      O => remctr_Mcount_s_Cnt_cy(3)
    );
  remctr_Mcount_s_Cnt_xor_2_Q : XORCY
    port map (
      CI => remctr_Mcount_s_Cnt_cy(1),
      LI => remctr_Mcount_s_Cnt_cy_2_rt_144,
      O => remctr_Result(2)
    );
  remctr_Mcount_s_Cnt_cy_2_Q : MUXCY
    port map (
      CI => remctr_Mcount_s_Cnt_cy(1),
      DI => N0,
      S => remctr_Mcount_s_Cnt_cy_2_rt_144,
      O => remctr_Mcount_s_Cnt_cy(2)
    );
  remctr_Mcount_s_Cnt_xor_1_Q : XORCY
    port map (
      CI => remctr_Mcount_s_Cnt_cy(0),
      LI => remctr_Mcount_s_Cnt_cy_1_rt_142,
      O => remctr_Result(1)
    );
  remctr_Mcount_s_Cnt_cy_1_Q : MUXCY
    port map (
      CI => remctr_Mcount_s_Cnt_cy(0),
      DI => N0,
      S => remctr_Mcount_s_Cnt_cy_1_rt_142,
      O => remctr_Mcount_s_Cnt_cy(1)
    );
  remctr_Mcount_s_Cnt_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => remctr_Mcount_s_Cnt_lut(0),
      O => remctr_Result(0)
    );
  remctr_Mcount_s_Cnt_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => remctr_Mcount_s_Cnt_lut(0),
      O => remctr_Mcount_s_Cnt_cy(0)
    );
  remctr_s_Cnt_10 : FDRE
    port map (
      C => m_clk_BUFGP_103,
      CE => m_enp_IBUF_107,
      D => remctr_Result(10),
      R => m_clr_IBUF_105,
      Q => remctr_s_Cnt(10)
    );
  remctr_s_Cnt_9 : FDRE
    port map (
      C => m_clk_BUFGP_103,
      CE => m_enp_IBUF_107,
      D => remctr_Result(9),
      R => m_clr_IBUF_105,
      Q => remctr_s_Cnt(9)
    );
  remctr_s_Cnt_8 : FDRE
    port map (
      C => m_clk_BUFGP_103,
      CE => m_enp_IBUF_107,
      D => remctr_Result(8),
      R => m_clr_IBUF_105,
      Q => remctr_s_Cnt(8)
    );
  remctr_s_Cnt_7 : FDRE
    port map (
      C => m_clk_BUFGP_103,
      CE => m_enp_IBUF_107,
      D => remctr_Result(7),
      R => m_clr_IBUF_105,
      Q => remctr_s_Cnt(7)
    );
  remctr_s_Cnt_6 : FDRE
    port map (
      C => m_clk_BUFGP_103,
      CE => m_enp_IBUF_107,
      D => remctr_Result(6),
      R => m_clr_IBUF_105,
      Q => remctr_s_Cnt(6)
    );
  remctr_s_Cnt_5 : FDRE
    port map (
      C => m_clk_BUFGP_103,
      CE => m_enp_IBUF_107,
      D => remctr_Result(5),
      R => m_clr_IBUF_105,
      Q => remctr_s_Cnt(5)
    );
  remctr_s_Cnt_4 : FDRE
    port map (
      C => m_clk_BUFGP_103,
      CE => m_enp_IBUF_107,
      D => remctr_Result(4),
      R => m_clr_IBUF_105,
      Q => remctr_s_Cnt(4)
    );
  remctr_s_Cnt_3 : FDRE
    port map (
      C => m_clk_BUFGP_103,
      CE => m_enp_IBUF_107,
      D => remctr_Result(3),
      R => m_clr_IBUF_105,
      Q => remctr_s_Cnt(3)
    );
  remctr_s_Cnt_2 : FDRE
    port map (
      C => m_clk_BUFGP_103,
      CE => m_enp_IBUF_107,
      D => remctr_Result(2),
      R => m_clr_IBUF_105,
      Q => remctr_s_Cnt(2)
    );
  remctr_s_Cnt_1 : FDRE
    port map (
      C => m_clk_BUFGP_103,
      CE => m_enp_IBUF_107,
      D => remctr_Result(1),
      R => m_clr_IBUF_105,
      Q => remctr_s_Cnt(1)
    );
  remctr_s_Cnt_0 : FDRE
    port map (
      C => m_clk_BUFGP_103,
      CE => m_enp_IBUF_107,
      D => remctr_Result(0),
      R => m_clr_IBUF_105,
      Q => remctr_s_Cnt(0)
    );
  remctr_s_Reg_10 : FDE
    port map (
      C => m_clk_BUFGP_103,
      CE => remctr_s_Reg_not0001,
      D => remctr_s_Reg_mux0000(10),
      Q => remctr_s_Reg(10)
    );
  remctr_s_Reg_9 : FDE
    port map (
      C => m_clk_BUFGP_103,
      CE => remctr_s_Reg_not0001,
      D => remctr_s_Reg_mux0000(9),
      Q => remctr_s_Reg(9)
    );
  remctr_s_Reg_8 : FDE
    port map (
      C => m_clk_BUFGP_103,
      CE => remctr_s_Reg_not0001,
      D => remctr_s_Reg_mux0000(8),
      Q => remctr_s_Reg(8)
    );
  remctr_s_Reg_7 : FDE
    port map (
      C => m_clk_BUFGP_103,
      CE => remctr_s_Reg_not0001,
      D => remctr_s_Reg_mux0000(7),
      Q => remctr_s_Reg(7)
    );
  remctr_s_Reg_6 : FDE
    port map (
      C => m_clk_BUFGP_103,
      CE => remctr_s_Reg_not0001,
      D => remctr_s_Reg_mux0000(6),
      Q => remctr_s_Reg(6)
    );
  remctr_s_Reg_5 : FDE
    port map (
      C => m_clk_BUFGP_103,
      CE => remctr_s_Reg_not0001,
      D => remctr_s_Reg_mux0000(5),
      Q => remctr_s_Reg(5)
    );
  remctr_s_Reg_4 : FDE
    port map (
      C => m_clk_BUFGP_103,
      CE => remctr_s_Reg_not0001,
      D => remctr_s_Reg_mux0000(4),
      Q => remctr_s_Reg(4)
    );
  remctr_s_Reg_3 : FDE
    port map (
      C => m_clk_BUFGP_103,
      CE => remctr_s_Reg_not0001,
      D => remctr_s_Reg_mux0000(3),
      Q => remctr_s_Reg(3)
    );
  remctr_s_Reg_2 : FDE
    port map (
      C => m_clk_BUFGP_103,
      CE => remctr_s_Reg_not0001,
      D => remctr_s_Reg_mux0000(2),
      Q => remctr_s_Reg(2)
    );
  remctr_s_Reg_1 : FDE
    port map (
      C => m_clk_BUFGP_103,
      CE => remctr_s_Reg_not0001,
      D => remctr_s_Reg_mux0000(1),
      Q => remctr_s_Reg(1)
    );
  remctr_s_Reg_0 : FDE
    port map (
      C => m_clk_BUFGP_103,
      CE => remctr_s_Reg_not0001,
      D => remctr_s_Reg_mux0000(0),
      Q => remctr_s_Reg(0)
    );
  remctr_s_Reg_not00011 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => m_sel_0_IBUF_114,
      I1 => m_sel_1_IBUF_115,
      O => remctr_s_Reg_not0001
    );
  remctr_s_Reg_mux0000_0_1 : LUT4
    generic map(
      INIT => X"91C4"
    )
    port map (
      I0 => m_sel_1_IBUF_115,
      I1 => m_sel_0_IBUF_114,
      I2 => m_Ain_0_IBUF_48,
      I3 => remctr_s_Reg(0),
      O => remctr_s_Reg_mux0000(0)
    );
  remctr_s_Reg_mux0000_5_SW0 : LUT4
    generic map(
      INIT => X"D580"
    )
    port map (
      I0 => m_sel_1_IBUF_115,
      I1 => m_sel_0_IBUF_114,
      I2 => m_Ain_5_IBUF_54,
      I3 => remctr_s_Reg(5),
      O => N14
    );
  remctr_s_Reg_mux0000_5_SW1 : LUT4
    generic map(
      INIT => X"91C4"
    )
    port map (
      I0 => m_sel_1_IBUF_115,
      I1 => m_sel_0_IBUF_114,
      I2 => m_Ain_5_IBUF_54,
      I3 => remctr_s_Reg(5),
      O => N15
    );
  remctr_s_Reg_mux0000_5_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => N15,
      I1 => N14,
      I2 => N51,
      O => remctr_s_Reg_mux0000(5)
    );
  remctr_s_Reg_mux0000_6_SW0 : LUT4
    generic map(
      INIT => X"D580"
    )
    port map (
      I0 => m_sel_1_IBUF_115,
      I1 => m_sel_0_IBUF_114,
      I2 => m_Ain_6_IBUF_55,
      I3 => remctr_s_Reg(6),
      O => N17
    );
  remctr_s_Reg_mux0000_6_Q : LUT4
    generic map(
      INIT => X"D8F0"
    )
    port map (
      I0 => remctr_s_Reg(5),
      I1 => N18,
      I2 => N17,
      I3 => remctr_Madd_s_Reg_addsub0000_cy_4_Q,
      O => remctr_s_Reg_mux0000(6)
    );
  remctr_s_Reg_mux0000_7_SW0 : LUT4
    generic map(
      INIT => X"D580"
    )
    port map (
      I0 => m_sel_1_IBUF_115,
      I1 => m_sel_0_IBUF_114,
      I2 => m_Ain_7_IBUF_56,
      I3 => remctr_s_Reg(7),
      O => N20
    );
  remctr_s_Reg_mux0000_7_SW1 : LUT4
    generic map(
      INIT => X"91C4"
    )
    port map (
      I0 => m_sel_1_IBUF_115,
      I1 => m_sel_0_IBUF_114,
      I2 => m_Ain_7_IBUF_56,
      I3 => remctr_s_Reg(7),
      O => N21
    );
  remctr_s_Reg_mux0000_7_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => N21,
      I1 => N20,
      I2 => N52,
      O => remctr_s_Reg_mux0000(7)
    );
  remctr_s_Reg_mux0000_8_SW0 : LUT4
    generic map(
      INIT => X"D580"
    )
    port map (
      I0 => m_sel_1_IBUF_115,
      I1 => m_sel_0_IBUF_114,
      I2 => m_Ain_8_IBUF_57,
      I3 => remctr_s_Reg(8),
      O => N23
    );
  remctr_s_Reg_mux0000_8_Q : LUT4
    generic map(
      INIT => X"D8F0"
    )
    port map (
      I0 => remctr_s_Reg(7),
      I1 => N24,
      I2 => N23,
      I3 => remctr_Madd_s_Reg_addsub0000_cy_6_Q,
      O => remctr_s_Reg_mux0000(8)
    );
  remctr_Madd_s_Reg_addsub0000_cy_2_11 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => remctr_s_Reg(2),
      I1 => remctr_s_Reg(1),
      I2 => remctr_s_Reg(0),
      O => remctr_Madd_s_Reg_addsub0000_cy_2_Q
    );
  remctr_s_Reg_mux0000_10_SW0 : LUT4
    generic map(
      INIT => X"D580"
    )
    port map (
      I0 => m_sel_1_IBUF_115,
      I1 => m_sel_0_IBUF_114,
      I2 => m_Ain_10_IBUF_49,
      I3 => remctr_s_Reg(10),
      O => N29
    );
  remctr_s_Reg_mux0000_10_SW1 : LUT4
    generic map(
      INIT => X"91C4"
    )
    port map (
      I0 => m_sel_1_IBUF_115,
      I1 => m_sel_0_IBUF_114,
      I2 => m_Ain_10_IBUF_49,
      I3 => remctr_s_Reg(10),
      O => N30
    );
  m_enp_IBUF : IBUF
    port map (
      I => m_enp,
      O => m_enp_IBUF_107
    );
  m_ramwr_IBUF : IBUF
    port map (
      I => m_ramwr,
      O => m_ramwr_IBUF_111
    );
  m_ramen_IBUF : IBUF
    port map (
      I => m_ramen,
      O => m_ramen_IBUF_109
    );
  m_clr_IBUF : IBUF
    port map (
      I => m_clr,
      O => m_clr_IBUF_105
    );
  m_Ain_10_IBUF : IBUF
    port map (
      I => m_Ain(10),
      O => m_Ain_10_IBUF_49
    );
  m_Ain_9_IBUF : IBUF
    port map (
      I => m_Ain(9),
      O => m_Ain_9_IBUF_58
    );
  m_Ain_8_IBUF : IBUF
    port map (
      I => m_Ain(8),
      O => m_Ain_8_IBUF_57
    );
  m_Ain_7_IBUF : IBUF
    port map (
      I => m_Ain(7),
      O => m_Ain_7_IBUF_56
    );
  m_Ain_6_IBUF : IBUF
    port map (
      I => m_Ain(6),
      O => m_Ain_6_IBUF_55
    );
  m_Ain_5_IBUF : IBUF
    port map (
      I => m_Ain(5),
      O => m_Ain_5_IBUF_54
    );
  m_Ain_4_IBUF : IBUF
    port map (
      I => m_Ain(4),
      O => m_Ain_4_IBUF_53
    );
  m_Ain_3_IBUF : IBUF
    port map (
      I => m_Ain(3),
      O => m_Ain_3_IBUF_52
    );
  m_Ain_2_IBUF : IBUF
    port map (
      I => m_Ain(2),
      O => m_Ain_2_IBUF_51
    );
  m_Ain_1_IBUF : IBUF
    port map (
      I => m_Ain(1),
      O => m_Ain_1_IBUF_50
    );
  m_Ain_0_IBUF : IBUF
    port map (
      I => m_Ain(0),
      O => m_Ain_0_IBUF_48
    );
  m_sel_1_IBUF : IBUF
    port map (
      I => m_sel(1),
      O => m_sel_1_IBUF_115
    );
  m_sel_0_IBUF : IBUF
    port map (
      I => m_sel(0),
      O => m_sel_0_IBUF_114
    );
  m_Din_7_IBUF : IBUF
    port map (
      I => m_Din(7),
      O => m_Din_7_IBUF_85
    );
  m_Din_6_IBUF : IBUF
    port map (
      I => m_Din(6),
      O => m_Din_6_IBUF_84
    );
  m_Din_5_IBUF : IBUF
    port map (
      I => m_Din(5),
      O => m_Din_5_IBUF_83
    );
  m_Din_4_IBUF : IBUF
    port map (
      I => m_Din(4),
      O => m_Din_4_IBUF_82
    );
  m_Din_3_IBUF : IBUF
    port map (
      I => m_Din(3),
      O => m_Din_3_IBUF_81
    );
  m_Din_2_IBUF : IBUF
    port map (
      I => m_Din(2),
      O => m_Din_2_IBUF_80
    );
  m_Din_1_IBUF : IBUF
    port map (
      I => m_Din(1),
      O => m_Din_1_IBUF_79
    );
  m_Din_0_IBUF : IBUF
    port map (
      I => m_Din(0),
      O => m_Din_0_IBUF_78
    );
  d_Comp_OBUF : OBUF
    port map (
      I => d_Comp_OBUF_36,
      O => d_Comp
    );
  m_Dout_7_OBUF : OBUF
    port map (
      I => m_Dout_7_OBUF_101,
      O => m_Dout(7)
    );
  m_Dout_6_OBUF : OBUF
    port map (
      I => m_Dout_6_OBUF_100,
      O => m_Dout(6)
    );
  m_Dout_5_OBUF : OBUF
    port map (
      I => m_Dout_5_OBUF_99,
      O => m_Dout(5)
    );
  m_Dout_4_OBUF : OBUF
    port map (
      I => m_Dout_4_OBUF_98,
      O => m_Dout(4)
    );
  m_Dout_3_OBUF : OBUF
    port map (
      I => m_Dout_3_OBUF_97,
      O => m_Dout(3)
    );
  m_Dout_2_OBUF : OBUF
    port map (
      I => m_Dout_2_OBUF_96,
      O => m_Dout(2)
    );
  m_Dout_1_OBUF : OBUF
    port map (
      I => m_Dout_1_OBUF_95,
      O => m_Dout(1)
    );
  m_Dout_0_OBUF : OBUF
    port map (
      I => m_Dout_0_OBUF_94,
      O => m_Dout(0)
    );
  m_Aout_10_OBUF : OBUF
    port map (
      I => remctr_s_Reg(10),
      O => m_Aout(10)
    );
  m_Aout_9_OBUF : OBUF
    port map (
      I => remctr_s_Reg(9),
      O => m_Aout(9)
    );
  m_Aout_8_OBUF : OBUF
    port map (
      I => remctr_s_Reg(8),
      O => m_Aout(8)
    );
  m_Aout_7_OBUF : OBUF
    port map (
      I => remctr_s_Reg(7),
      O => m_Aout(7)
    );
  m_Aout_6_OBUF : OBUF
    port map (
      I => remctr_s_Reg(6),
      O => m_Aout(6)
    );
  m_Aout_5_OBUF : OBUF
    port map (
      I => remctr_s_Reg(5),
      O => m_Aout(5)
    );
  m_Aout_4_OBUF : OBUF
    port map (
      I => remctr_s_Reg(4),
      O => m_Aout(4)
    );
  m_Aout_3_OBUF : OBUF
    port map (
      I => remctr_s_Reg(3),
      O => m_Aout(3)
    );
  m_Aout_2_OBUF : OBUF
    port map (
      I => remctr_s_Reg(2),
      O => m_Aout(2)
    );
  m_Aout_1_OBUF : OBUF
    port map (
      I => remctr_s_Reg(1),
      O => m_Aout(1)
    );
  m_Aout_0_OBUF : OBUF
    port map (
      I => remctr_s_Reg(0),
      O => m_Aout(0)
    );
  d_AData_10_OBUF : OBUF
    port map (
      I => remctr_s_Cnt(10),
      O => d_AData(10)
    );
  d_AData_9_OBUF : OBUF
    port map (
      I => remctr_s_Cnt(9),
      O => d_AData(9)
    );
  d_AData_8_OBUF : OBUF
    port map (
      I => remctr_s_Cnt(8),
      O => d_AData(8)
    );
  d_AData_7_OBUF : OBUF
    port map (
      I => remctr_s_Cnt(7),
      O => d_AData(7)
    );
  d_AData_6_OBUF : OBUF
    port map (
      I => remctr_s_Cnt(6),
      O => d_AData(6)
    );
  d_AData_5_OBUF : OBUF
    port map (
      I => remctr_s_Cnt(5),
      O => d_AData(5)
    );
  d_AData_4_OBUF : OBUF
    port map (
      I => remctr_s_Cnt(4),
      O => d_AData(4)
    );
  d_AData_3_OBUF : OBUF
    port map (
      I => remctr_s_Cnt(3),
      O => d_AData(3)
    );
  d_AData_2_OBUF : OBUF
    port map (
      I => remctr_s_Cnt(2),
      O => d_AData(2)
    );
  d_AData_1_OBUF : OBUF
    port map (
      I => remctr_s_Cnt(1),
      O => d_AData(1)
    );
  d_AData_0_OBUF : OBUF
    port map (
      I => remctr_s_Cnt(0),
      O => d_AData(0)
    );
  remctr_Mcount_s_Cnt_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => remctr_s_Cnt(9),
      O => remctr_Mcount_s_Cnt_cy_9_rt_158
    );
  remctr_Mcount_s_Cnt_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => remctr_s_Cnt(8),
      O => remctr_Mcount_s_Cnt_cy_8_rt_156
    );
  remctr_Mcount_s_Cnt_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => remctr_s_Cnt(7),
      O => remctr_Mcount_s_Cnt_cy_7_rt_154
    );
  remctr_Mcount_s_Cnt_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => remctr_s_Cnt(6),
      O => remctr_Mcount_s_Cnt_cy_6_rt_152
    );
  remctr_Mcount_s_Cnt_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => remctr_s_Cnt(5),
      O => remctr_Mcount_s_Cnt_cy_5_rt_150
    );
  remctr_Mcount_s_Cnt_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => remctr_s_Cnt(4),
      O => remctr_Mcount_s_Cnt_cy_4_rt_148
    );
  remctr_Mcount_s_Cnt_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => remctr_s_Cnt(3),
      O => remctr_Mcount_s_Cnt_cy_3_rt_146
    );
  remctr_Mcount_s_Cnt_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => remctr_s_Cnt(2),
      O => remctr_Mcount_s_Cnt_cy_2_rt_144
    );
  remctr_Mcount_s_Cnt_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => remctr_s_Cnt(1),
      O => remctr_Mcount_s_Cnt_cy_1_rt_142
    );
  remctr_Mcount_s_Cnt_xor_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => remctr_s_Cnt(10),
      O => remctr_Mcount_s_Cnt_xor_10_rt_160
    );
  remctr_s_Reg_mux0000_10_Q : LUT4
    generic map(
      INIT => X"ACCC"
    )
    port map (
      I0 => N30,
      I1 => N29,
      I2 => N34,
      I3 => remctr_Madd_s_Reg_addsub0000_cy_6_Q,
      O => remctr_s_Reg_mux0000(10)
    );
  remctr_s_Reg_mux0000_9_Q : LUT4
    generic map(
      INIT => X"E4CC"
    )
    port map (
      I0 => remctr_s_Reg(8),
      I1 => N36,
      I2 => N37,
      I3 => remctr_Madd_s_Reg_addsub0000_cy_6_Q,
      O => remctr_s_Reg_mux0000(9)
    );
  remctr_Madd_s_Reg_addsub0000_cy_6_11_SW0 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => remctr_s_Reg(4),
      I1 => remctr_s_Reg(1),
      I2 => remctr_s_Reg(3),
      I3 => remctr_s_Reg(0),
      O => N39
    );
  remctr_s_Reg_mux0000_9_SW0_SW1 : MUXF5
    port map (
      I0 => N41,
      I1 => N42,
      S => remctr_s_Reg(7),
      O => N37
    );
  remctr_s_Reg_mux0000_9_SW0_SW1_G : LUT4
    generic map(
      INIT => X"91C4"
    )
    port map (
      I0 => m_sel_1_IBUF_115,
      I1 => m_sel_0_IBUF_114,
      I2 => m_Ain_9_IBUF_58,
      I3 => remctr_s_Reg(9),
      O => N42
    );
  remctr_s_Reg_mux0000_9_SW0_SW1_F : LUT4
    generic map(
      INIT => X"D580"
    )
    port map (
      I0 => m_sel_1_IBUF_115,
      I1 => m_sel_0_IBUF_114,
      I2 => m_Ain_9_IBUF_58,
      I3 => remctr_s_Reg(9),
      O => N41
    );
  remctr_s_Reg_mux0000_3_Q : MUXF5
    port map (
      I0 => N47,
      I1 => N48,
      S => remctr_Madd_s_Reg_addsub0000_cy_2_Q,
      O => remctr_s_Reg_mux0000(3)
    );
  remctr_s_Reg_mux0000_3_F : LUT4
    generic map(
      INIT => X"D580"
    )
    port map (
      I0 => m_sel_1_IBUF_115,
      I1 => m_sel_0_IBUF_114,
      I2 => m_Ain_3_IBUF_52,
      I3 => remctr_s_Reg(3),
      O => N47
    );
  remctr_s_Reg_mux0000_3_G : LUT4
    generic map(
      INIT => X"91C4"
    )
    port map (
      I0 => m_sel_1_IBUF_115,
      I1 => m_sel_0_IBUF_114,
      I2 => m_Ain_3_IBUF_52,
      I3 => remctr_s_Reg(3),
      O => N48
    );
  remctr_s_Reg_mux0000_4_Q : MUXF5
    port map (
      I0 => N49,
      I1 => N50,
      S => m_sel_1_IBUF_115,
      O => remctr_s_Reg_mux0000(4)
    );
  remctr_s_Reg_mux0000_4_F : LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => remctr_s_Reg(4),
      I1 => remctr_Madd_s_Reg_addsub0000_cy_2_Q,
      I2 => remctr_s_Reg(3),
      I3 => m_sel_0_IBUF_114,
      O => N49
    );
  remctr_s_Reg_mux0000_4_G : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => m_sel_0_IBUF_114,
      I1 => m_Ain_4_IBUF_53,
      O => N50
    );
  m_clk_BUFGP : BUFGP
    port map (
      I => m_clk,
      O => m_clk_BUFGP_103
    );
  remctr_Mcount_s_Cnt_lut_0_INV_0 : INV
    port map (
      I => remctr_s_Cnt(0),
      O => remctr_Mcount_s_Cnt_lut(0)
    );
  remctr_s_Reg_mux0000_1_1 : LUT4
    generic map(
      INIT => X"B515"
    )
    port map (
      I0 => m_sel_1_IBUF_115,
      I1 => remctr_s_Reg(0),
      I2 => m_sel_0_IBUF_114,
      I3 => m_Ain_1_IBUF_50,
      O => remctr_s_Reg_mux0000_1_1_197
    );
  remctr_s_Reg_mux0000_1_2 : LUT4
    generic map(
      INIT => X"C840"
    )
    port map (
      I0 => m_sel_1_IBUF_115,
      I1 => m_sel_0_IBUF_114,
      I2 => remctr_s_Reg(0),
      I3 => m_Ain_1_IBUF_50,
      O => remctr_s_Reg_mux0000_1_2_198
    );
  remctr_s_Reg_mux0000_1_f5 : MUXF5
    port map (
      I0 => remctr_s_Reg_mux0000_1_2_198,
      I1 => remctr_s_Reg_mux0000_1_1_197,
      S => remctr_s_Reg(1),
      O => remctr_s_Reg_mux0000(1)
    );
  remctr_s_Reg_mux0000_2_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => m_Ain_2_IBUF_51,
      I1 => m_sel_0_IBUF_114,
      O => remctr_s_Reg_mux0000_2_1_200
    );
  remctr_s_Reg_mux0000_2_2 : LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => remctr_s_Reg(2),
      I1 => m_sel_0_IBUF_114,
      I2 => remctr_s_Reg(0),
      I3 => remctr_s_Reg(1),
      O => remctr_s_Reg_mux0000_2_2_201
    );
  remctr_s_Reg_mux0000_2_f5 : MUXF5
    port map (
      I0 => remctr_s_Reg_mux0000_2_2_201,
      I1 => remctr_s_Reg_mux0000_2_1_200,
      S => m_sel_1_IBUF_115,
      O => remctr_s_Reg_mux0000(2)
    );
  remctr_s_Reg_mux0000_6_SW1 : LUT4_L
    generic map(
      INIT => X"91C4"
    )
    port map (
      I0 => m_sel_1_IBUF_115,
      I1 => m_sel_0_IBUF_114,
      I2 => m_Ain_6_IBUF_55,
      I3 => remctr_s_Reg(6),
      LO => N18
    );
  remctr_s_Reg_mux0000_8_SW1 : LUT4_L
    generic map(
      INIT => X"91C4"
    )
    port map (
      I0 => m_sel_1_IBUF_115,
      I1 => m_sel_0_IBUF_114,
      I2 => m_Ain_8_IBUF_57,
      I3 => remctr_s_Reg(8),
      LO => N24
    );
  remctr_Madd_s_Reg_addsub0000_cy_4_11 : LUT3_D
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => remctr_s_Reg(4),
      I1 => remctr_s_Reg(3),
      I2 => remctr_Madd_s_Reg_addsub0000_cy_2_Q,
      LO => N51,
      O => remctr_Madd_s_Reg_addsub0000_cy_4_Q
    );
  remctr_Madd_s_Reg_addsub0000_cy_8_11_SW0 : LUT3_L
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => remctr_s_Reg(8),
      I1 => remctr_s_Reg(7),
      I2 => remctr_s_Reg(9),
      LO => N34
    );
  remctr_Madd_s_Reg_addsub0000_cy_6_11 : LUT4_D
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => remctr_s_Reg(6),
      I1 => remctr_s_Reg(5),
      I2 => remctr_s_Reg(2),
      I3 => N39,
      LO => N52,
      O => remctr_Madd_s_Reg_addsub0000_cy_6_Q
    );
  remctr_s_Reg_mux0000_9_SW0_SW0 : LUT4_L
    generic map(
      INIT => X"D580"
    )
    port map (
      I0 => m_sel_1_IBUF_115,
      I1 => m_sel_0_IBUF_114,
      I2 => m_Ain_9_IBUF_58,
      I3 => remctr_s_Reg(9),
      LO => N36
    );
  ram0 : dual_port_ram
    port map (
      clka => m_clk_BUFGP_103,
      ena => m_ramen_IBUF_109,
      clkb => m_clk_BUFGP_103,
      enb => m_ramen_IBUF_109,
      wea(0) => m_ramwr_IBUF_111,
      addra(10) => remctr_s_Cnt(10),
      addra(9) => remctr_s_Cnt(9),
      addra(8) => remctr_s_Cnt(8),
      addra(7) => remctr_s_Cnt(7),
      addra(6) => remctr_s_Cnt(6),
      addra(5) => remctr_s_Cnt(5),
      addra(4) => remctr_s_Cnt(4),
      addra(3) => remctr_s_Cnt(3),
      addra(2) => remctr_s_Cnt(2),
      addra(1) => remctr_s_Cnt(1),
      addra(0) => remctr_s_Cnt(0),
      dina(7) => m_Din_7_IBUF_85,
      dina(6) => m_Din_6_IBUF_84,
      dina(5) => m_Din_5_IBUF_83,
      dina(4) => m_Din_4_IBUF_82,
      dina(3) => m_Din_3_IBUF_81,
      dina(2) => m_Din_2_IBUF_80,
      dina(1) => m_Din_1_IBUF_79,
      dina(0) => m_Din_0_IBUF_78,
      addrb(10) => remctr_s_Cnt(10),
      addrb(9) => remctr_s_Cnt(9),
      addrb(8) => remctr_s_Cnt(8),
      addrb(7) => remctr_s_Cnt(7),
      addrb(6) => remctr_s_Cnt(6),
      addrb(5) => remctr_s_Cnt(5),
      addrb(4) => remctr_s_Cnt(4),
      addrb(3) => remctr_s_Cnt(3),
      addrb(2) => remctr_s_Cnt(2),
      addrb(1) => remctr_s_Cnt(1),
      addrb(0) => remctr_s_Cnt(0),
      doutb(7) => m_Dout_7_OBUF_101,
      doutb(6) => m_Dout_6_OBUF_100,
      doutb(5) => m_Dout_5_OBUF_99,
      doutb(4) => m_Dout_4_OBUF_98,
      doutb(3) => m_Dout_3_OBUF_97,
      doutb(2) => m_Dout_2_OBUF_96,
      doutb(1) => m_Dout_1_OBUF_95,
      doutb(0) => m_Dout_0_OBUF_94
    );

end Structure;

-- synthesis translate_on
