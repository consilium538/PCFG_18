--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: PCFG_TOP_synthesis.vhd
-- /___/   /\     Timestamp: Tue Nov 20 13:57:58 2018
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm PCFG_TOP -w -dir netgen/synthesis -ofmt vhdl -sim PCFG_TOP.ngc PCFG_TOP_synthesis.vhd 
-- Device	: xc3s5000-4-fg900
-- Input file	: PCFG_TOP.ngc
-- Output file	: C:\KDH\Doc\18y6s\adca\PCFG\PCFG_18\mainProject\netgen\synthesis\PCFG_TOP_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: PCFG_TOP
-- Xilinx	: C:\Xilinx\14.7\ISE_DS\ISE\
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

entity PCFG_TOP is
  port (
    m_cmd_data : in STD_LOGIC := 'X'; 
    m_OE_b : in STD_LOGIC := 'X'; 
    m_wen : in STD_LOGIC := 'X'; 
    m_reset_b : in STD_LOGIC := 'X'; 
    m_AD9283_clk : out STD_LOGIC; 
    m_DAC_clk : out STD_LOGIC; 
    m_ren : in STD_LOGIC := 'X'; 
    m_clk : in STD_LOGIC := 'X'; 
    m_data : inout STD_LOGIC_VECTOR ( 7 downto 0 ); 
    m_DAC_data : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    m_TP : out STD_LOGIC_VECTOR ( 1 downto 0 ); 
    m_led : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    m_address : in STD_LOGIC_VECTOR ( 8 downto 0 ); 
    m_ADC_data : in STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end PCFG_TOP;

architecture Structure of PCFG_TOP is
  component sram2k
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
  signal N1 : STD_LOGIC; 
  signal N101 : STD_LOGIC; 
  signal N102 : STD_LOGIC; 
  signal N103 : STD_LOGIC; 
  signal N104 : STD_LOGIC; 
  signal N105 : STD_LOGIC; 
  signal N106 : STD_LOGIC; 
  signal N107 : STD_LOGIC; 
  signal N108 : STD_LOGIC; 
  signal N117 : STD_LOGIC; 
  signal N119 : STD_LOGIC; 
  signal N121 : STD_LOGIC; 
  signal N123 : STD_LOGIC; 
  signal N125 : STD_LOGIC; 
  signal N127 : STD_LOGIC; 
  signal N129 : STD_LOGIC; 
  signal N137 : STD_LOGIC; 
  signal N139 : STD_LOGIC; 
  signal N141 : STD_LOGIC; 
  signal N143 : STD_LOGIC; 
  signal N145 : STD_LOGIC; 
  signal N159 : STD_LOGIC; 
  signal N161 : STD_LOGIC; 
  signal N163 : STD_LOGIC; 
  signal N165 : STD_LOGIC; 
  signal N167 : STD_LOGIC; 
  signal N171 : STD_LOGIC; 
  signal N179 : STD_LOGIC; 
  signal N18 : STD_LOGIC; 
  signal N181 : STD_LOGIC; 
  signal N183 : STD_LOGIC; 
  signal N185 : STD_LOGIC; 
  signal N187 : STD_LOGIC; 
  signal N188 : STD_LOGIC; 
  signal N189 : STD_LOGIC; 
  signal N190 : STD_LOGIC; 
  signal N191 : STD_LOGIC; 
  signal N192 : STD_LOGIC; 
  signal N193 : STD_LOGIC; 
  signal N194 : STD_LOGIC; 
  signal N195 : STD_LOGIC; 
  signal N196 : STD_LOGIC; 
  signal N197 : STD_LOGIC; 
  signal N198 : STD_LOGIC; 
  signal N199 : STD_LOGIC; 
  signal N20 : STD_LOGIC; 
  signal N200 : STD_LOGIC; 
  signal N201 : STD_LOGIC; 
  signal N202 : STD_LOGIC; 
  signal N203 : STD_LOGIC; 
  signal N204 : STD_LOGIC; 
  signal N205 : STD_LOGIC; 
  signal N206 : STD_LOGIC; 
  signal N207 : STD_LOGIC; 
  signal N208 : STD_LOGIC; 
  signal N209 : STD_LOGIC; 
  signal N210 : STD_LOGIC; 
  signal N211 : STD_LOGIC; 
  signal N212 : STD_LOGIC; 
  signal N213 : STD_LOGIC; 
  signal N214 : STD_LOGIC; 
  signal N215 : STD_LOGIC; 
  signal N216 : STD_LOGIC; 
  signal N217 : STD_LOGIC; 
  signal N218 : STD_LOGIC; 
  signal N219 : STD_LOGIC; 
  signal N22 : STD_LOGIC; 
  signal N220 : STD_LOGIC; 
  signal N221 : STD_LOGIC; 
  signal N222 : STD_LOGIC; 
  signal N24 : STD_LOGIC; 
  signal N28 : STD_LOGIC; 
  signal N40 : STD_LOGIC; 
  signal N44 : STD_LOGIC; 
  signal N46 : STD_LOGIC; 
  signal N48 : STD_LOGIC; 
  signal N49 : STD_LOGIC; 
  signal N66 : STD_LOGIC; 
  signal N74 : STD_LOGIC; 
  signal N78 : STD_LOGIC; 
  signal N95 : STD_LOGIC; 
  signal N96 : STD_LOGIC; 
  signal N98 : STD_LOGIC; 
  signal N99 : STD_LOGIC; 
  signal addr_decode_m_mode_addr_0_52 : STD_LOGIC; 
  signal addr_decode_m_mode_addr_0_521_101 : STD_LOGIC; 
  signal addr_decode_m_mode_addr_0_6 : STD_LOGIC; 
  signal addr_decode_m_mode_addr_0_61_103 : STD_LOGIC; 
  signal addr_decode_m_mode_addr_0_81_104 : STD_LOGIC; 
  signal addr_decode_m_mode_addr_1_11_105 : STD_LOGIC; 
  signal addr_decode_m_mode_addr_1_12_106 : STD_LOGIC; 
  signal addr_decode_m_mode_addr_1_57_107 : STD_LOGIC; 
  signal addr_decode_m_mode_addr_2_18_108 : STD_LOGIC; 
  signal addr_decode_m_mode_addr_2_26_109 : STD_LOGIC; 
  signal addr_decode_m_mode_valid_or000029 : STD_LOGIC; 
  signal addr_decode_m_mode_valid_or0000291_111 : STD_LOGIC; 
  signal addr_decode_m_mode_valid_or000046 : STD_LOGIC; 
  signal addr_decode_m_mode_valid_or0000461_113 : STD_LOGIC; 
  signal avg_module_cns1_Mcompar_m_remainder_cmp_ge0000_lut_6_1_1 : STD_LOGIC; 
  signal b_pcs_addr : STD_LOGIC; 
  signal b_pcs_addr1_425 : STD_LOGIC; 
  signal b_reset_b : STD_LOGIC; 
  signal clk_gen_CNT0_Madd_s_CNT3_1_cy_10_rt_429 : STD_LOGIC; 
  signal clk_gen_CNT0_Madd_s_CNT3_1_cy_11_rt_431 : STD_LOGIC; 
  signal clk_gen_CNT0_Madd_s_CNT3_1_cy_12_rt_433 : STD_LOGIC; 
  signal clk_gen_CNT0_Madd_s_CNT3_1_cy_13_rt_435 : STD_LOGIC; 
  signal clk_gen_CNT0_Madd_s_CNT3_1_cy_14_rt_437 : STD_LOGIC; 
  signal clk_gen_CNT0_Madd_s_CNT3_1_cy_1_rt_439 : STD_LOGIC; 
  signal clk_gen_CNT0_Madd_s_CNT3_1_cy_2_rt_441 : STD_LOGIC; 
  signal clk_gen_CNT0_Madd_s_CNT3_1_cy_3_rt_443 : STD_LOGIC; 
  signal clk_gen_CNT0_Madd_s_CNT3_1_cy_4_rt_445 : STD_LOGIC; 
  signal clk_gen_CNT0_Madd_s_CNT3_1_cy_5_rt_447 : STD_LOGIC; 
  signal clk_gen_CNT0_Madd_s_CNT3_1_cy_6_rt_449 : STD_LOGIC; 
  signal clk_gen_CNT0_Madd_s_CNT3_1_cy_7_rt_451 : STD_LOGIC; 
  signal clk_gen_CNT0_Madd_s_CNT3_1_cy_8_rt_453 : STD_LOGIC; 
  signal clk_gen_CNT0_Madd_s_CNT3_1_cy_9_rt_455 : STD_LOGIC; 
  signal clk_gen_CNT0_Madd_s_CNT3_1_xor_15_rt_457 : STD_LOGIC; 
  signal clk_gen_CNT0_Mcount_s_CNT2_cy_0_rt_459 : STD_LOGIC; 
  signal clk_gen_CNT0_Mcount_s_CNT2_eqn_0 : STD_LOGIC; 
  signal clk_gen_CNT0_Mcount_s_CNT2_eqn_1 : STD_LOGIC; 
  signal clk_gen_CNT0_Mcount_s_CNT2_eqn_10 : STD_LOGIC; 
  signal clk_gen_CNT0_Mcount_s_CNT2_eqn_11 : STD_LOGIC; 
  signal clk_gen_CNT0_Mcount_s_CNT2_eqn_12 : STD_LOGIC; 
  signal clk_gen_CNT0_Mcount_s_CNT2_eqn_13 : STD_LOGIC; 
  signal clk_gen_CNT0_Mcount_s_CNT2_eqn_14 : STD_LOGIC; 
  signal clk_gen_CNT0_Mcount_s_CNT2_eqn_15 : STD_LOGIC; 
  signal clk_gen_CNT0_Mcount_s_CNT2_eqn_2 : STD_LOGIC; 
  signal clk_gen_CNT0_Mcount_s_CNT2_eqn_3 : STD_LOGIC; 
  signal clk_gen_CNT0_Mcount_s_CNT2_eqn_4 : STD_LOGIC; 
  signal clk_gen_CNT0_Mcount_s_CNT2_eqn_5 : STD_LOGIC; 
  signal clk_gen_CNT0_Mcount_s_CNT2_eqn_6 : STD_LOGIC; 
  signal clk_gen_CNT0_Mcount_s_CNT2_eqn_7 : STD_LOGIC; 
  signal clk_gen_CNT0_Mcount_s_CNT2_eqn_8 : STD_LOGIC; 
  signal clk_gen_CNT0_Mcount_s_CNT2_eqn_9 : STD_LOGIC; 
  signal clk_gen_CNT0_Msub_s_CNT3_2_cy_0_rt_506 : STD_LOGIC; 
  signal clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_cy_0_rt_537 : STD_LOGIC; 
  signal clk_gen_CNT0_Msub_s_CNT3_U_share0000_cy_0_rt_566 : STD_LOGIC; 
  signal clk_gen_CNT0_N01 : STD_LOGIC; 
  signal clk_gen_CNT0_N15 : STD_LOGIC; 
  signal clk_gen_CNT0_N16 : STD_LOGIC; 
  signal clk_gen_CNT0_N18 : STD_LOGIC; 
  signal clk_gen_CNT0_N2 : STD_LOGIC; 
  signal clk_gen_CNT0_N3 : STD_LOGIC; 
  signal clk_gen_CNT0_N4 : STD_LOGIC; 
  signal clk_gen_CNT0_N5 : STD_LOGIC; 
  signal clk_gen_CNT0_N6 : STD_LOGIC; 
  signal clk_gen_CNT0_N7 : STD_LOGIC; 
  signal clk_gen_CNT0_N8 : STD_LOGIC; 
  signal clk_gen_CNT0_N9 : STD_LOGIC; 
  signal clk_gen_CNT0_m_clk_inv : STD_LOGIC; 
  signal clk_gen_CNT0_m_cw_inv : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT2_and0000 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT2_cmp_eq0000 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT2_cmp_eq000011_642 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT2_cmp_eq000024_643 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT2_cmp_eq000048_644 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT2_cmp_eq000061_645 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_cmp_eq0000 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_cmp_eq000020_707 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_cmp_eq000043_708 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_cmp_eq000056_709 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_cmp_eq00007_710 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_0_4_711 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_0_9_712 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_10_4_713 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_10_9_714 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_11_4_715 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_11_9_716 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_12_4_717 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_12_9_718 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_13_11_719 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_13_111 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_13_1111_721 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_13_20_722 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_14_12_723 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_14_40 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_14_401_725 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_14_59_726 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_14_68_727 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_1_4_728 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_1_9_729 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_2_4_730 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_2_9_731 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_3_4_732 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_3_9_733 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_4_4_734 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_4_9_735 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_5_4_736 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_5_9_737 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_6_4_738 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_6_9_739 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_7_17_740 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_7_9_741 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_8_4_742 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_8_9_743 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_9_4_744 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_9_9_745 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_UD_746 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_UD_cmp_eq0000 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_UD_cmp_eq000012_748 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_UD_cmp_eq000025_749 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_UD_cmp_eq000049_750 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_UD_cmp_eq000058_751 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_UD_mux0003 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_U_mux0000_10_114 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_U_mux0000_10_14_769 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_U_mux0000_11_114 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_U_mux0000_11_14_771 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_U_mux0000_12_114 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_U_mux0000_12_14_773 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_U_mux0000_13_114 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_U_mux0000_13_14_775 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_U_mux0000_14_114 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_U_mux0000_14_14_777 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_U_mux0000_15_114 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_U_mux0000_15_14_779 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_U_mux0000_1_114 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_U_mux0000_1_14_781 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_U_mux0000_2_120 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_U_mux0000_2_14_783 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_U_mux0000_3_114 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_U_mux0000_3_14_785 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_U_mux0000_4_114 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_U_mux0000_4_14_787 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_U_mux0000_5_114 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_U_mux0000_5_14_789 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_U_mux0000_6_114 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_U_mux0000_6_14_791 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_U_mux0000_7_114 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_U_mux0000_7_14_793 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_U_mux0000_8_11_794 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_U_mux0000_9_114 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_U_mux0000_9_14_796 : STD_LOGIC; 
  signal clk_gen_CNT0_s_REG_0_not0001 : STD_LOGIC; 
  signal clk_gen_CNT0_s_REG_10_not0001 : STD_LOGIC; 
  signal clk_gen_CNT0_s_mode_830 : STD_LOGIC; 
  signal clk_gen_CNT0_s_out2_or0000 : STD_LOGIC; 
  signal clk_gen_CNT0_s_out2_or000012_832 : STD_LOGIC; 
  signal clk_gen_CNT0_s_out2_or000025_833 : STD_LOGIC; 
  signal clk_gen_CNT0_s_out2_or000049_834 : STD_LOGIC; 
  signal clk_gen_CNT0_s_out2_or000058_835 : STD_LOGIC; 
  signal clk_gen_CNT0_s_wr : STD_LOGIC; 
  signal clk_gen_CNT0_s_wr1_837 : STD_LOGIC; 
  signal clk_gen_CNT0_s_wr2 : STD_LOGIC; 
  signal clk_gen_CNT0_s_wr_L_839 : STD_LOGIC; 
  signal clk_gen_CNT0_s_wr_M_840 : STD_LOGIC; 
  signal clk_gen_CNT0_s_wr_wait_841 : STD_LOGIC; 
  signal clk_gen_CNT0_s_wr_wait_mux0003 : STD_LOGIC; 
  signal clk_gen_s_addr_not0001 : STD_LOGIC; 
  signal clk_gen_s_cw0 : STD_LOGIC; 
  signal clk_gen_s_cw0_and000012_847 : STD_LOGIC; 
  signal clk_gen_s_cw0_and00009_848 : STD_LOGIC; 
  signal clk_gen_s_wr_b_857 : STD_LOGIC; 
  signal clk_gen_s_wr_b_mux0000 : STD_LOGIC; 
  signal clk_gen_s_wr_b_mux00006 : STD_LOGIC; 
  signal clk_gen_s_wr_b_mux000061_860 : STD_LOGIC; 
  signal clk_gen_s_wr_b_mux000062_861 : STD_LOGIC; 
  signal clk_gen_state_FSM_FFd1_862 : STD_LOGIC; 
  signal clk_gen_state_FSM_FFd1_In : STD_LOGIC; 
  signal clk_gen_state_FSM_FFd2_864 : STD_LOGIC; 
  signal clk_gen_state_FSM_FFd2_In1 : STD_LOGIC; 
  signal clk_gen_state_FSM_FFd3_866 : STD_LOGIC; 
  signal clk_gen_state_FSM_FFd4_867 : STD_LOGIC; 
  signal clk_gen_state_FSM_FFd5_868 : STD_LOGIC; 
  signal clk_gen_state_FSM_FFd6_869 : STD_LOGIC; 
  signal clk_gen_state_FSM_FFd6_In : STD_LOGIC; 
  signal m_ADC_data_0_IBUF_896 : STD_LOGIC; 
  signal m_ADC_data_1_IBUF_897 : STD_LOGIC; 
  signal m_ADC_data_2_IBUF_898 : STD_LOGIC; 
  signal m_ADC_data_3_IBUF_899 : STD_LOGIC; 
  signal m_ADC_data_4_IBUF_900 : STD_LOGIC; 
  signal m_ADC_data_5_IBUF_901 : STD_LOGIC; 
  signal m_ADC_data_6_IBUF_902 : STD_LOGIC; 
  signal m_ADC_data_7_IBUF_903 : STD_LOGIC; 
  signal m_OE_b_IBUF_914 : STD_LOGIC; 
  signal m_TP_0_OBUF_917 : STD_LOGIC; 
  signal m_TP_0_OBUF1 : STD_LOGIC; 
  signal m_TP_1_OBUF_919 : STD_LOGIC; 
  signal m_TP_1_OBUF1 : STD_LOGIC; 
  signal m_address_0_IBUF_930 : STD_LOGIC; 
  signal m_address_1_IBUF_931 : STD_LOGIC; 
  signal m_address_2_IBUF_932 : STD_LOGIC; 
  signal m_address_3_IBUF_933 : STD_LOGIC; 
  signal m_address_4_IBUF_934 : STD_LOGIC; 
  signal m_address_5_IBUF_935 : STD_LOGIC; 
  signal m_address_6_IBUF_936 : STD_LOGIC; 
  signal m_address_7_IBUF_937 : STD_LOGIC; 
  signal m_address_8_IBUF_938 : STD_LOGIC; 
  signal m_cmd_data_IBUF_941 : STD_LOGIC; 
  signal m_ren_IBUF_959 : STD_LOGIC; 
  signal m_reset_b_IBUF_961 : STD_LOGIC; 
  signal m_wen_IBUF_963 : STD_LOGIC; 
  signal ram1_mux_dout_2_LogicTrst : STD_LOGIC; 
  signal ram1_mux_dout_2_LogicTrst1_984 : STD_LOGIC; 
  signal ram1_mux_dout_3_LogicTrst : STD_LOGIC; 
  signal ram1_mux_dout_3_LogicTrst1_987 : STD_LOGIC; 
  signal ram1_mux_dout_4_LogicTrst : STD_LOGIC; 
  signal ram1_mux_dout_4_LogicTrst1_990 : STD_LOGIC; 
  signal ram1_mux_dout_5_LogicTrst : STD_LOGIC; 
  signal ram1_mux_dout_5_LogicTrst1_993 : STD_LOGIC; 
  signal ram1_mux_dout_6_LogicTrst : STD_LOGIC; 
  signal ram1_mux_dout_6_LogicTrst1_996 : STD_LOGIC; 
  signal ram1_mux_dout_7_LogicTrst : STD_LOGIC; 
  signal ram1_mux_dout_7_LogicTrst1_999 : STD_LOGIC; 
  signal s_OE_b_1000 : STD_LOGIC; 
  signal s_cmd_data_1010 : STD_LOGIC; 
  signal s_dout_en_inv : STD_LOGIC; 
  signal s_mode_valid : STD_LOGIC; 
  signal s_out_mux_sel : STD_LOGIC; 
  signal s_outlatch_en : STD_LOGIC; 
  signal s_ren_1042 : STD_LOGIC; 
  signal s_wen_1043 : STD_LOGIC; 
  signal sig_controller_N0 : STD_LOGIC; 
  signal sig_controller_N1 : STD_LOGIC; 
  signal sig_controller_N13 : STD_LOGIC; 
  signal sig_controller_N14 : STD_LOGIC; 
  signal sig_controller_N28 : STD_LOGIC; 
  signal sig_controller_N33 : STD_LOGIC; 
  signal sig_controller_N35 : STD_LOGIC; 
  signal sig_controller_N4 : STD_LOGIC; 
  signal sig_controller_N5 : STD_LOGIC; 
  signal sig_controller_N6 : STD_LOGIC; 
  signal sig_controller_adc_ctr_Mcount_s_cnt_cy_1_rt_1067 : STD_LOGIC; 
  signal sig_controller_adc_ctr_Mcount_s_cnt_cy_2_rt_1069 : STD_LOGIC; 
  signal sig_controller_adc_ctr_Mcount_s_cnt_cy_3_rt_1071 : STD_LOGIC; 
  signal sig_controller_adc_ctr_Mcount_s_cnt_cy_4_rt_1073 : STD_LOGIC; 
  signal sig_controller_adc_ctr_Mcount_s_cnt_cy_5_rt_1075 : STD_LOGIC; 
  signal sig_controller_adc_ctr_Mcount_s_cnt_cy_6_rt_1077 : STD_LOGIC; 
  signal sig_controller_adc_ctr_Mcount_s_cnt_cy_7_rt_1079 : STD_LOGIC; 
  signal sig_controller_adc_ctr_Mcount_s_cnt_cy_8_rt_1081 : STD_LOGIC; 
  signal sig_controller_adc_ctr_Mcount_s_cnt_cy_9_rt_1083 : STD_LOGIC; 
  signal sig_controller_adc_ctr_Mcount_s_cnt_xor_10_rt_1085 : STD_LOGIC; 
  signal sig_controller_adc_ctr_s_cnt_not0001 : STD_LOGIC; 
  signal sig_controller_adc_ctr_s_ns : STD_LOGIC; 
  signal sig_controller_adremctr_Mcount_s_Cnt_cy_1_rt_1102 : STD_LOGIC; 
  signal sig_controller_adremctr_Mcount_s_Cnt_cy_2_rt_1104 : STD_LOGIC; 
  signal sig_controller_adremctr_Mcount_s_Cnt_cy_3_rt_1106 : STD_LOGIC; 
  signal sig_controller_adremctr_Mcount_s_Cnt_cy_4_rt_1108 : STD_LOGIC; 
  signal sig_controller_adremctr_Mcount_s_Cnt_cy_5_rt_1110 : STD_LOGIC; 
  signal sig_controller_adremctr_Mcount_s_Cnt_cy_6_rt_1112 : STD_LOGIC; 
  signal sig_controller_adremctr_Mcount_s_Cnt_cy_7_rt_1114 : STD_LOGIC; 
  signal sig_controller_adremctr_Mcount_s_Cnt_cy_8_rt_1116 : STD_LOGIC; 
  signal sig_controller_adremctr_Mcount_s_Cnt_cy_9_rt_1118 : STD_LOGIC; 
  signal sig_controller_adremctr_N10 : STD_LOGIC; 
  signal sig_controller_adremctr_N111 : STD_LOGIC; 
  signal sig_controller_adremctr_N12 : STD_LOGIC; 
  signal sig_controller_adremctr_N2 : STD_LOGIC; 
  signal sig_controller_adremctr_N5 : STD_LOGIC; 
  signal sig_controller_adremctr_N8 : STD_LOGIC; 
  signal sig_controller_adremctr_s_Reg_mux0000_1_1_1162 : STD_LOGIC; 
  signal sig_controller_adremctr_s_Reg_mux0000_1_2_1163 : STD_LOGIC; 
  signal sig_controller_adremctr_s_Reg_mux0000_2_22 : STD_LOGIC; 
  signal sig_controller_adremctr_s_Reg_mux0000_2_221_1166 : STD_LOGIC; 
  signal sig_controller_adremctr_s_Reg_mux0000_3_11_1168 : STD_LOGIC; 
  signal sig_controller_adremctr_s_Reg_mux0000_5_22_SW0 : STD_LOGIC; 
  signal sig_controller_adremctr_s_Reg_mux0000_5_22_SW01_1172 : STD_LOGIC; 
  signal sig_controller_adremctr_s_Reg_mux0000_6_11_1174 : STD_LOGIC; 
  signal sig_controller_adremctr_s_Reg_mux0000_7_16 : STD_LOGIC; 
  signal sig_controller_adremctr_s_Reg_mux0000_7_161_1177 : STD_LOGIC; 
  signal sig_controller_adremctr_s_Reg_mux0000_7_2_1178 : STD_LOGIC; 
  signal sig_controller_adremctr_s_Reg_mux0000_8_1_1180 : STD_LOGIC; 
  signal sig_controller_adremctr_s_Reg_mux0000_8_2_1181 : STD_LOGIC; 
  signal sig_controller_adremctr_s_Reg_not0001 : STD_LOGIC; 
  signal sig_controller_dac_ctr_Mcount_s_cnt_cy_1_rt_1208 : STD_LOGIC; 
  signal sig_controller_dac_ctr_Mcount_s_cnt_cy_2_rt_1210 : STD_LOGIC; 
  signal sig_controller_dac_ctr_Mcount_s_cnt_cy_3_rt_1212 : STD_LOGIC; 
  signal sig_controller_dac_ctr_Mcount_s_cnt_cy_4_rt_1214 : STD_LOGIC; 
  signal sig_controller_dac_ctr_Mcount_s_cnt_cy_5_rt_1216 : STD_LOGIC; 
  signal sig_controller_dac_ctr_Mcount_s_cnt_cy_6_rt_1218 : STD_LOGIC; 
  signal sig_controller_dac_ctr_Mcount_s_cnt_cy_7_rt_1220 : STD_LOGIC; 
  signal sig_controller_dac_ctr_Mcount_s_cnt_cy_8_rt_1222 : STD_LOGIC; 
  signal sig_controller_dac_ctr_Mcount_s_cnt_cy_9_rt_1224 : STD_LOGIC; 
  signal sig_controller_dac_ctr_Mcount_s_cnt_xor_10_rt_1226 : STD_LOGIC; 
  signal sig_controller_dac_ctr_Msub_s_reg_sub0000_cy_7_14 : STD_LOGIC; 
  signal sig_controller_dac_ctr_Msub_s_reg_sub0000_cy_7_19_1228 : STD_LOGIC; 
  signal sig_controller_dac_ctr_Msub_s_reg_sub0000_xor_10_11 : STD_LOGIC; 
  signal sig_controller_dac_ctr_Msub_s_reg_sub0000_xor_7_1 : STD_LOGIC; 
  signal sig_controller_dac_ctr_Msub_s_reg_sub0000_xor_7_11_1231 : STD_LOGIC; 
  signal sig_controller_dac_ctr_s_cnt_not0001 : STD_LOGIC; 
  signal sig_controller_dac_ctr_s_enb2_1255 : STD_LOGIC; 
  signal sig_controller_dac_ctr_s_ps_FSM_FFd1_1256 : STD_LOGIC; 
  signal sig_controller_dac_ctr_s_ps_FSM_FFd2_1257 : STD_LOGIC; 
  signal sig_controller_dac_ctr_s_ps_FSM_FFd2_In : STD_LOGIC; 
  signal sig_controller_dac_ctr_s_ps_cmp_eq0001 : STD_LOGIC; 
  signal sig_controller_daremctr_Mcount_s_Cnt_cy_1_rt_1305 : STD_LOGIC; 
  signal sig_controller_daremctr_Mcount_s_Cnt_cy_2_rt_1307 : STD_LOGIC; 
  signal sig_controller_daremctr_Mcount_s_Cnt_cy_3_rt_1309 : STD_LOGIC; 
  signal sig_controller_daremctr_Mcount_s_Cnt_cy_4_rt_1311 : STD_LOGIC; 
  signal sig_controller_daremctr_Mcount_s_Cnt_cy_5_rt_1313 : STD_LOGIC; 
  signal sig_controller_daremctr_Mcount_s_Cnt_cy_6_rt_1315 : STD_LOGIC; 
  signal sig_controller_daremctr_Mcount_s_Cnt_cy_7_rt_1317 : STD_LOGIC; 
  signal sig_controller_daremctr_Mcount_s_Cnt_cy_8_rt_1319 : STD_LOGIC; 
  signal sig_controller_daremctr_Mcount_s_Cnt_cy_9_rt_1321 : STD_LOGIC; 
  signal sig_controller_daremctr_Mcount_s_Cnt_xor_10_rt_1323 : STD_LOGIC; 
  signal sig_controller_daremctr_N10 : STD_LOGIC; 
  signal sig_controller_daremctr_N111 : STD_LOGIC; 
  signal sig_controller_daremctr_N12 : STD_LOGIC; 
  signal sig_controller_daremctr_N17 : STD_LOGIC; 
  signal sig_controller_daremctr_N2 : STD_LOGIC; 
  signal sig_controller_daremctr_N5 : STD_LOGIC; 
  signal sig_controller_daremctr_N8 : STD_LOGIC; 
  signal sig_controller_daremctr_s_Reg_mux0000_10_16 : STD_LOGIC; 
  signal sig_controller_daremctr_s_Reg_mux0000_10_161_1367 : STD_LOGIC; 
  signal sig_controller_daremctr_s_Reg_mux0000_1_1_1369 : STD_LOGIC; 
  signal sig_controller_daremctr_s_Reg_mux0000_1_2_1370 : STD_LOGIC; 
  signal sig_controller_daremctr_s_Reg_mux0000_2_22_SW0 : STD_LOGIC; 
  signal sig_controller_daremctr_s_Reg_mux0000_2_22_SW01_1373 : STD_LOGIC; 
  signal sig_controller_daremctr_s_Reg_mux0000_3_11_1375 : STD_LOGIC; 
  signal sig_controller_daremctr_s_Reg_mux0000_5_22_SW0 : STD_LOGIC; 
  signal sig_controller_daremctr_s_Reg_mux0000_5_22_SW01_1379 : STD_LOGIC; 
  signal sig_controller_daremctr_s_Reg_mux0000_6_11_1381 : STD_LOGIC; 
  signal sig_controller_daremctr_s_Reg_mux0000_7_16 : STD_LOGIC; 
  signal sig_controller_daremctr_s_Reg_mux0000_7_161_1384 : STD_LOGIC; 
  signal sig_controller_daremctr_s_Reg_mux0000_7_2_1385 : STD_LOGIC; 
  signal sig_controller_daremctr_s_Reg_mux0000_8_22_SW0 : STD_LOGIC; 
  signal sig_controller_daremctr_s_Reg_mux0000_8_22_SW01_1388 : STD_LOGIC; 
  signal sig_controller_daremctr_s_Reg_not0001 : STD_LOGIC; 
  signal sig_controller_m_da_latch_en_1391 : STD_LOGIC; 
  signal sig_controller_m_da_latch_en_or0000 : STD_LOGIC; 
  signal sig_controller_m_dout_en_1393 : STD_LOGIC; 
  signal sig_controller_m_dout_en_or0000 : STD_LOGIC; 
  signal sig_controller_m_ena0_1395 : STD_LOGIC; 
  signal sig_controller_m_ena0_mux0000 : STD_LOGIC; 
  signal sig_controller_m_ena0_or0000_1397 : STD_LOGIC; 
  signal sig_controller_m_ena1_1398 : STD_LOGIC; 
  signal sig_controller_m_ena1_or0000 : STD_LOGIC; 
  signal sig_controller_m_ena2_1400 : STD_LOGIC; 
  signal sig_controller_m_ena2_or0000 : STD_LOGIC; 
  signal sig_controller_m_enb0_1402 : STD_LOGIC; 
  signal sig_controller_m_enb0_mux0000 : STD_LOGIC; 
  signal sig_controller_m_enb0_or0000 : STD_LOGIC; 
  signal sig_controller_m_enb1_1405 : STD_LOGIC; 
  signal sig_controller_m_enb1_mux0000_1406 : STD_LOGIC; 
  signal sig_controller_m_enb1_or0000_1407 : STD_LOGIC; 
  signal sig_controller_m_enb3_1408 : STD_LOGIC; 
  signal sig_controller_m_ram1_mux_sel_and0003 : STD_LOGIC; 
  signal sig_controller_m_ram1_mux_sel_not0001_1414 : STD_LOGIC; 
  signal sig_controller_m_wea0_0_mux0000 : STD_LOGIC; 
  signal sig_controller_m_wea0_0_not0001 : STD_LOGIC; 
  signal sig_controller_m_wea1_0_mux0000 : STD_LOGIC; 
  signal sig_controller_m_wea1_0_not0001 : STD_LOGIC; 
  signal sig_controller_m_wea2_0_or0000 : STD_LOGIC; 
  signal sig_controller_rem0ctr_Mcount_s_Cnt_cy_1_rt_1446 : STD_LOGIC; 
  signal sig_controller_rem0ctr_Mcount_s_Cnt_cy_2_rt_1448 : STD_LOGIC; 
  signal sig_controller_rem0ctr_Mcount_s_Cnt_cy_3_rt_1450 : STD_LOGIC; 
  signal sig_controller_rem0ctr_Mcount_s_Cnt_cy_4_rt_1452 : STD_LOGIC; 
  signal sig_controller_rem0ctr_Mcount_s_Cnt_cy_5_rt_1454 : STD_LOGIC; 
  signal sig_controller_rem0ctr_Mcount_s_Cnt_cy_6_rt_1456 : STD_LOGIC; 
  signal sig_controller_rem0ctr_Mcount_s_Cnt_cy_7_rt_1458 : STD_LOGIC; 
  signal sig_controller_rem0ctr_Mcount_s_Cnt_cy_8_rt_1460 : STD_LOGIC; 
  signal sig_controller_rem0ctr_Mcount_s_Cnt_cy_9_rt_1462 : STD_LOGIC; 
  signal sig_controller_rem0ctr_Mcount_s_Cnt_xor_10_rt_1464 : STD_LOGIC; 
  signal sig_controller_rem0ctr_N10 : STD_LOGIC; 
  signal sig_controller_rem0ctr_N111 : STD_LOGIC; 
  signal sig_controller_rem0ctr_N12 : STD_LOGIC; 
  signal sig_controller_rem0ctr_N17 : STD_LOGIC; 
  signal sig_controller_rem0ctr_N2 : STD_LOGIC; 
  signal sig_controller_rem0ctr_N5 : STD_LOGIC; 
  signal sig_controller_rem0ctr_N8 : STD_LOGIC; 
  signal sig_controller_rem0ctr_s_Reg_0_1_1495 : STD_LOGIC; 
  signal sig_controller_rem0ctr_s_Reg_1_1_1498 : STD_LOGIC; 
  signal sig_controller_rem0ctr_s_Reg_2_1_1500 : STD_LOGIC; 
  signal sig_controller_rem0ctr_s_Reg_3_1_1502 : STD_LOGIC; 
  signal sig_controller_rem0ctr_s_Reg_4_1_1504 : STD_LOGIC; 
  signal sig_controller_rem0ctr_s_Reg_5_1_1506 : STD_LOGIC; 
  signal sig_controller_rem0ctr_s_Reg_6_1_1508 : STD_LOGIC; 
  signal sig_controller_rem0ctr_s_Reg_6_2_1509 : STD_LOGIC; 
  signal sig_controller_rem0ctr_s_Reg_mux0000_10_16 : STD_LOGIC; 
  signal sig_controller_rem0ctr_s_Reg_mux0000_10_161_1516 : STD_LOGIC; 
  signal sig_controller_rem0ctr_s_Reg_mux0000_1_1_1518 : STD_LOGIC; 
  signal sig_controller_rem0ctr_s_Reg_mux0000_1_2_1519 : STD_LOGIC; 
  signal sig_controller_rem0ctr_s_Reg_mux0000_2_22 : STD_LOGIC; 
  signal sig_controller_rem0ctr_s_Reg_mux0000_2_221_1522 : STD_LOGIC; 
  signal sig_controller_rem0ctr_s_Reg_mux0000_3_11_1524 : STD_LOGIC; 
  signal sig_controller_rem0ctr_s_Reg_mux0000_5_22_SW0 : STD_LOGIC; 
  signal sig_controller_rem0ctr_s_Reg_mux0000_5_22_SW01_1528 : STD_LOGIC; 
  signal sig_controller_rem0ctr_s_Reg_mux0000_6_11_1530 : STD_LOGIC; 
  signal sig_controller_rem0ctr_s_Reg_mux0000_7_16 : STD_LOGIC; 
  signal sig_controller_rem0ctr_s_Reg_mux0000_7_161_1533 : STD_LOGIC; 
  signal sig_controller_rem0ctr_s_Reg_mux0000_7_2_1534 : STD_LOGIC; 
  signal sig_controller_rem0ctr_s_Reg_mux0000_8_22_SW0 : STD_LOGIC; 
  signal sig_controller_rem0ctr_s_Reg_mux0000_8_22_SW01_1537 : STD_LOGIC; 
  signal sig_controller_rem0ctr_s_Reg_not0001 : STD_LOGIC; 
  signal sig_controller_rem1ctr_Mcount_s_Cnt_cy_1_rt_1563 : STD_LOGIC; 
  signal sig_controller_rem1ctr_Mcount_s_Cnt_cy_2_rt_1565 : STD_LOGIC; 
  signal sig_controller_rem1ctr_Mcount_s_Cnt_cy_3_rt_1567 : STD_LOGIC; 
  signal sig_controller_rem1ctr_Mcount_s_Cnt_cy_4_rt_1569 : STD_LOGIC; 
  signal sig_controller_rem1ctr_Mcount_s_Cnt_cy_5_rt_1571 : STD_LOGIC; 
  signal sig_controller_rem1ctr_Mcount_s_Cnt_cy_6_rt_1573 : STD_LOGIC; 
  signal sig_controller_rem1ctr_Mcount_s_Cnt_cy_7_rt_1575 : STD_LOGIC; 
  signal sig_controller_rem1ctr_Mcount_s_Cnt_cy_8_rt_1577 : STD_LOGIC; 
  signal sig_controller_rem1ctr_Mcount_s_Cnt_cy_9_rt_1579 : STD_LOGIC; 
  signal sig_controller_rem1ctr_Mcount_s_Cnt_xor_10_rt_1581 : STD_LOGIC; 
  signal sig_controller_rem1ctr_N10 : STD_LOGIC; 
  signal sig_controller_rem1ctr_N111 : STD_LOGIC; 
  signal sig_controller_rem1ctr_N12 : STD_LOGIC; 
  signal sig_controller_rem1ctr_N17 : STD_LOGIC; 
  signal sig_controller_rem1ctr_N2 : STD_LOGIC; 
  signal sig_controller_rem1ctr_N5 : STD_LOGIC; 
  signal sig_controller_rem1ctr_N8 : STD_LOGIC; 
  signal sig_controller_rem1ctr_s_Reg_mux0000_10_16 : STD_LOGIC; 
  signal sig_controller_rem1ctr_s_Reg_mux0000_10_161_1625 : STD_LOGIC; 
  signal sig_controller_rem1ctr_s_Reg_mux0000_1_1_1627 : STD_LOGIC; 
  signal sig_controller_rem1ctr_s_Reg_mux0000_1_2_1628 : STD_LOGIC; 
  signal sig_controller_rem1ctr_s_Reg_mux0000_2_22 : STD_LOGIC; 
  signal sig_controller_rem1ctr_s_Reg_mux0000_2_221_1631 : STD_LOGIC; 
  signal sig_controller_rem1ctr_s_Reg_mux0000_3_11_1633 : STD_LOGIC; 
  signal sig_controller_rem1ctr_s_Reg_mux0000_5_22_SW0 : STD_LOGIC; 
  signal sig_controller_rem1ctr_s_Reg_mux0000_5_22_SW01_1637 : STD_LOGIC; 
  signal sig_controller_rem1ctr_s_Reg_mux0000_6_11_1639 : STD_LOGIC; 
  signal sig_controller_rem1ctr_s_Reg_mux0000_7_16 : STD_LOGIC; 
  signal sig_controller_rem1ctr_s_Reg_mux0000_7_161_1642 : STD_LOGIC; 
  signal sig_controller_rem1ctr_s_Reg_mux0000_7_2_1643 : STD_LOGIC; 
  signal sig_controller_rem1ctr_s_Reg_mux0000_8_22_SW0 : STD_LOGIC; 
  signal sig_controller_rem1ctr_s_Reg_mux0000_8_22_SW01_1646 : STD_LOGIC; 
  signal sig_controller_rem1ctr_s_Reg_not0001 : STD_LOGIC; 
  signal sig_controller_s_adc_start_1649 : STD_LOGIC; 
  signal sig_controller_s_adc_start_or0000 : STD_LOGIC; 
  signal sig_controller_s_adc_stop_1651 : STD_LOGIC; 
  signal sig_controller_s_adc_stop_or0000 : STD_LOGIC; 
  signal sig_controller_s_clr0_1653 : STD_LOGIC; 
  signal sig_controller_s_clr0_mux0009 : STD_LOGIC; 
  signal sig_controller_s_clr0_mux00091_1655 : STD_LOGIC; 
  signal sig_controller_s_clr0_mux00092_1656 : STD_LOGIC; 
  signal sig_controller_s_clr0_not0001 : STD_LOGIC; 
  signal sig_controller_s_clr1_1658 : STD_LOGIC; 
  signal sig_controller_s_clr1_mux0009_1659 : STD_LOGIC; 
  signal sig_controller_s_clr1_not0001_1660 : STD_LOGIC; 
  signal sig_controller_s_clrad_1661 : STD_LOGIC; 
  signal sig_controller_s_clrad_mux0000 : STD_LOGIC; 
  signal sig_controller_s_clrad_or0000 : STD_LOGIC; 
  signal sig_controller_s_clrda_1664 : STD_LOGIC; 
  signal sig_controller_s_clrda_mux0000 : STD_LOGIC; 
  signal sig_controller_s_clrda_or0000 : STD_LOGIC; 
  signal sig_controller_s_comp0 : STD_LOGIC; 
  signal sig_controller_s_comp1 : STD_LOGIC; 
  signal sig_controller_s_comp2 : STD_LOGIC; 
  signal sig_controller_s_dac_start_1670 : STD_LOGIC; 
  signal sig_controller_s_dac_start_or0000 : STD_LOGIC; 
  signal sig_controller_s_dac_stop_1672 : STD_LOGIC; 
  signal sig_controller_s_dac_stop_mux0000 : STD_LOGIC; 
  signal sig_controller_s_dac_stop_or0000_1674 : STD_LOGIC; 
  signal sig_controller_s_enp0_1675 : STD_LOGIC; 
  signal sig_controller_s_enp0_and0000 : STD_LOGIC; 
  signal sig_controller_s_enp0_mux0000_1677 : STD_LOGIC; 
  signal sig_controller_s_enp0_not0001 : STD_LOGIC; 
  signal sig_controller_s_enp0_not000110_1679 : STD_LOGIC; 
  signal sig_controller_s_enp0_not000119_1680 : STD_LOGIC; 
  signal sig_controller_s_enp0_not000122 : STD_LOGIC; 
  signal sig_controller_s_enp1_1682 : STD_LOGIC; 
  signal sig_controller_s_enp1_mux0000_1683 : STD_LOGIC; 
  signal sig_controller_s_enp1_not0001 : STD_LOGIC; 
  signal sig_controller_s_enp1_not000137 : STD_LOGIC; 
  signal sig_controller_s_enp1_not0001371_1686 : STD_LOGIC; 
  signal sig_controller_s_enpad_1687 : STD_LOGIC; 
  signal sig_controller_s_enpad_or0000 : STD_LOGIC; 
  signal sig_controller_s_sel0_not0001 : STD_LOGIC; 
  signal sig_controller_s_sel0_not000110_1693 : STD_LOGIC; 
  signal sig_controller_s_sel0_not000125_1694 : STD_LOGIC; 
  signal sig_controller_s_sel0_not000163_1695 : STD_LOGIC; 
  signal sig_controller_s_sel1_not0001 : STD_LOGIC; 
  signal sig_controller_s_sel1_not000118_1701 : STD_LOGIC; 
  signal sig_controller_s_sel1_not000160_1702 : STD_LOGIC; 
  signal sig_controller_s_sel1_not000172 : STD_LOGIC; 
  signal sig_controller_s_sel1_not0001721_1704 : STD_LOGIC; 
  signal sig_controller_s_selad_or0000 : STD_LOGIC; 
  signal sig_controller_s_selda_or0000 : STD_LOGIC; 
  signal sig_controller_t_prevmode_not0001_1716 : STD_LOGIC; 
  signal sig_controller_t_ps_FSM_FFd1_1717 : STD_LOGIC; 
  signal sig_controller_t_ps_FSM_FFd10_1718 : STD_LOGIC; 
  signal sig_controller_t_ps_FSM_FFd10_In1 : STD_LOGIC; 
  signal sig_controller_t_ps_FSM_FFd11_1720 : STD_LOGIC; 
  signal sig_controller_t_ps_FSM_FFd11_In : STD_LOGIC; 
  signal sig_controller_t_ps_FSM_FFd12_1722 : STD_LOGIC; 
  signal sig_controller_t_ps_FSM_FFd12_In1_1723 : STD_LOGIC; 
  signal sig_controller_t_ps_FSM_FFd13_1724 : STD_LOGIC; 
  signal sig_controller_t_ps_FSM_FFd13_In1 : STD_LOGIC; 
  signal sig_controller_t_ps_FSM_FFd14_1726 : STD_LOGIC; 
  signal sig_controller_t_ps_FSM_FFd14_In_1727 : STD_LOGIC; 
  signal sig_controller_t_ps_FSM_FFd15_1728 : STD_LOGIC; 
  signal sig_controller_t_ps_FSM_FFd15_In1 : STD_LOGIC; 
  signal sig_controller_t_ps_FSM_FFd16_1730 : STD_LOGIC; 
  signal sig_controller_t_ps_FSM_FFd16_In1 : STD_LOGIC; 
  signal sig_controller_t_ps_FSM_FFd17_1732 : STD_LOGIC; 
  signal sig_controller_t_ps_FSM_FFd17_In : STD_LOGIC; 
  signal sig_controller_t_ps_FSM_FFd18_1734 : STD_LOGIC; 
  signal sig_controller_t_ps_FSM_FFd18_In : STD_LOGIC; 
  signal sig_controller_t_ps_FSM_FFd19_1736 : STD_LOGIC; 
  signal sig_controller_t_ps_FSM_FFd19_In : STD_LOGIC; 
  signal sig_controller_t_ps_FSM_FFd2_1738 : STD_LOGIC; 
  signal sig_controller_t_ps_FSM_FFd20_1739 : STD_LOGIC; 
  signal sig_controller_t_ps_FSM_FFd20_In18_1740 : STD_LOGIC; 
  signal sig_controller_t_ps_FSM_FFd20_In32_1741 : STD_LOGIC; 
  signal sig_controller_t_ps_FSM_FFd20_In58 : STD_LOGIC; 
  signal sig_controller_t_ps_FSM_FFd20_In6 : STD_LOGIC; 
  signal sig_controller_t_ps_FSM_FFd20_In61_1744 : STD_LOGIC; 
  signal sig_controller_t_ps_FSM_FFd20_In62_1745 : STD_LOGIC; 
  signal sig_controller_t_ps_FSM_FFd3_1746 : STD_LOGIC; 
  signal sig_controller_t_ps_FSM_FFd3_In : STD_LOGIC; 
  signal sig_controller_t_ps_FSM_FFd4_1748 : STD_LOGIC; 
  signal sig_controller_t_ps_FSM_FFd5_1749 : STD_LOGIC; 
  signal sig_controller_t_ps_FSM_FFd6_1750 : STD_LOGIC; 
  signal sig_controller_t_ps_FSM_FFd7_1751 : STD_LOGIC; 
  signal sig_controller_t_ps_FSM_FFd8_1752 : STD_LOGIC; 
  signal sig_controller_t_ps_FSM_FFd9_1753 : STD_LOGIC; 
  signal sig_controller_t_ps_FSM_FFd9_In : STD_LOGIC; 
  signal NLW_sram_AD_doutb_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_sram_AD_doutb_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_sram_AD_doutb_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_sram_AD_doutb_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_sram_AD_doutb_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_sram_AD_doutb_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_sram_AD_doutb_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_sram_AD_doutb_0_UNCONNECTED : STD_LOGIC; 
  signal Averager_out : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal ad_latch_dout : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal avg_module_Maccum_s_data_cy : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal avg_module_cns1_Mcompar_m_remainder_cmp_ge0000_cy : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal avg_module_cns1_Mcompar_m_remainder_cmp_ge0000_lut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal avg_module_cns1_Msub_m_remainder_addsub0000_cy : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal avg_module_cns1_Msub_m_remainder_addsub0000_lut : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal avg_module_cns1_m_remainder_addsub0000 : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal avg_module_cns2_Mcompar_m_remainder_cmp_ge0000_cy : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal avg_module_cns2_Mcompar_m_remainder_cmp_ge0000_lut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal avg_module_cns2_Msub_m_remainder_addsub0000_cy : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal avg_module_cns2_Msub_m_remainder_addsub0000_lut : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal avg_module_cns2_m_remainder_addsub0000 : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal avg_module_cns3_Mcompar_m_remainder_cmp_ge0000_cy : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal avg_module_cns3_Mcompar_m_remainder_cmp_ge0000_lut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal avg_module_cns3_Msub_m_remainder_addsub0000_cy : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal avg_module_cns3_Msub_m_remainder_addsub0000_lut : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal avg_module_cns3_m_remainder_addsub0000 : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal avg_module_cns4_Mcompar_m_remainder_cmp_ge0000_cy : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal avg_module_cns4_Mcompar_m_remainder_cmp_ge0000_lut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal avg_module_cns4_Msub_m_remainder_addsub0000_cy : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal avg_module_cns4_Msub_m_remainder_addsub0000_lut : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal avg_module_cns4_m_remainder_addsub0000 : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal avg_module_cns5_Mcompar_m_remainder_cmp_ge0000_cy : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal avg_module_cns5_Mcompar_m_remainder_cmp_ge0000_lut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal avg_module_cns5_Msub_m_remainder_addsub0000_cy : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal avg_module_cns5_Msub_m_remainder_addsub0000_lut : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal avg_module_cns5_m_remainder_addsub0000 : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal avg_module_cns6_Mcompar_m_remainder_cmp_ge0000_cy : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal avg_module_cns6_Mcompar_m_remainder_cmp_ge0000_lut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal avg_module_cns6_Msub_m_remainder_addsub0000_cy : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal avg_module_cns6_Msub_m_remainder_addsub0000_lut : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal avg_module_cns6_m_remainder_addsub0000 : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal avg_module_cns7_Mcompar_m_remainder_cmp_ge0000_cy : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal avg_module_cns7_Mcompar_m_remainder_cmp_ge0000_lut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal avg_module_cns7_Msub_m_remainder_addsub0000_cy : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal avg_module_cns7_Msub_m_remainder_addsub0000_lut : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal avg_module_cns7_m_remainder_addsub0000 : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal avg_module_cns8_Mcompar_m_remainder_cmp_ge0000_cy : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal avg_module_cns8_Mcompar_m_remainder_cmp_ge0000_lut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal avg_module_s_reminder1 : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal avg_module_s_reminder2 : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal avg_module_s_reminder3 : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal avg_module_s_reminder4 : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal avg_module_s_reminder5 : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal avg_module_s_reminder6 : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal avg_module_s_reminder7 : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal clk_gen_CNT0_Madd_s_CNT3_1_cy : STD_LOGIC_VECTOR ( 14 downto 0 ); 
  signal clk_gen_CNT0_Madd_s_CNT3_1_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal clk_gen_CNT0_Mcount_s_CNT2_cy : STD_LOGIC_VECTOR ( 14 downto 0 ); 
  signal clk_gen_CNT0_Mcount_s_CNT2_lut : STD_LOGIC_VECTOR ( 15 downto 1 ); 
  signal clk_gen_CNT0_Msub_s_CNT3_2_cy : STD_LOGIC_VECTOR ( 14 downto 0 ); 
  signal clk_gen_CNT0_Msub_s_CNT3_2_lut : STD_LOGIC_VECTOR ( 15 downto 1 ); 
  signal clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_cy : STD_LOGIC_VECTOR ( 13 downto 0 ); 
  signal clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_lut : STD_LOGIC_VECTOR ( 14 downto 1 ); 
  signal clk_gen_CNT0_Msub_s_CNT3_U_share0000_cy : STD_LOGIC_VECTOR ( 13 downto 0 ); 
  signal clk_gen_CNT0_Msub_s_CNT3_U_share0000_lut : STD_LOGIC_VECTOR ( 14 downto 1 ); 
  signal clk_gen_CNT0_Result : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal clk_gen_CNT0_s_CNT2 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal clk_gen_CNT0_s_CNT3_1 : STD_LOGIC_VECTOR ( 15 downto 1 ); 
  signal clk_gen_CNT0_s_CNT3_2 : STD_LOGIC_VECTOR ( 15 downto 1 ); 
  signal clk_gen_CNT0_s_CNT3_D : STD_LOGIC_VECTOR ( 14 downto 0 ); 
  signal clk_gen_CNT0_s_CNT3_D_addsub0000 : STD_LOGIC_VECTOR ( 14 downto 0 ); 
  signal clk_gen_CNT0_s_CNT3_U : STD_LOGIC_VECTOR ( 14 downto 0 ); 
  signal clk_gen_CNT0_s_CNT3_U_share0000 : STD_LOGIC_VECTOR ( 14 downto 0 ); 
  signal clk_gen_CNT0_s_REG : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal clk_gen_s_addr : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal clk_gen_s_data : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal da_latch_dout : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal inlatch_dout : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal out_mux_dout : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal outlatch_dout : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal ram1_mux_dout : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal s_address : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal s_doutb0 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal s_doutb1 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal s_doutb2 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal s_mode_addr : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal sig_controller_Result : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal sig_controller_adc_ctr_Mcount_s_cnt_cy : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal sig_controller_adc_ctr_Mcount_s_cnt_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal sig_controller_adc_ctr_s_cnt : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal sig_controller_adc_ctr_s_ps : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal sig_controller_adremctr_Mcount_s_Cnt_cy : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal sig_controller_adremctr_Mcount_s_Cnt_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal sig_controller_adremctr_Result : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal sig_controller_adremctr_s_Cnt : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal sig_controller_adremctr_s_Reg : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal sig_controller_adremctr_s_Reg_mux0000 : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal sig_controller_dac_ctr_Mcompar_s_cnt_cmp_lt0000_cy : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal sig_controller_dac_ctr_Mcompar_s_cnt_cmp_lt0000_lut : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal sig_controller_dac_ctr_Mcount_s_cnt_cy : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal sig_controller_dac_ctr_Mcount_s_cnt_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal sig_controller_dac_ctr_Result : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal sig_controller_dac_ctr_s_cnt : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal sig_controller_dac_ctr_s_reg : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal sig_controller_dac_ctr_s_reg_sub0000 : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal sig_controller_daremctr_Mcompar_m_comp_cmp_le0000_cy : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal sig_controller_daremctr_Mcompar_m_comp_cmp_le0000_lut : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal sig_controller_daremctr_Mcount_s_Cnt_cy : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal sig_controller_daremctr_Mcount_s_Cnt_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal sig_controller_daremctr_Result : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal sig_controller_daremctr_s_Cnt : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal sig_controller_daremctr_s_Reg : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal sig_controller_daremctr_s_Reg_mux0000 : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal sig_controller_m_ram1_mux_sel : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal sig_controller_m_ram1_mux_sel_mux0002 : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal sig_controller_m_wea0 : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal sig_controller_m_wea1 : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal sig_controller_m_wea2 : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal sig_controller_rem0ctr_Mcompar_m_comp_cmp_le0000_cy : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal sig_controller_rem0ctr_Mcompar_m_comp_cmp_le0000_lut : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal sig_controller_rem0ctr_Mcount_s_Cnt_cy : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal sig_controller_rem0ctr_Mcount_s_Cnt_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal sig_controller_rem0ctr_Result : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal sig_controller_rem0ctr_s_Cnt : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal sig_controller_rem0ctr_s_Reg : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal sig_controller_rem0ctr_s_Reg_mux0000 : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal sig_controller_rem1ctr_Mcompar_m_comp_cmp_le0000_cy : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal sig_controller_rem1ctr_Mcompar_m_comp_cmp_le0000_lut : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal sig_controller_rem1ctr_Mcount_s_Cnt_cy : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal sig_controller_rem1ctr_Mcount_s_Cnt_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal sig_controller_rem1ctr_Result : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal sig_controller_rem1ctr_s_Cnt : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal sig_controller_rem1ctr_s_Reg : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal sig_controller_rem1ctr_s_Reg_mux0000 : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal sig_controller_s_sel0 : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal sig_controller_s_sel0_mux0002 : STD_LOGIC_VECTOR ( 1 downto 1 ); 
  signal sig_controller_s_sel1 : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal sig_controller_s_sel1_mux0003 : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal sig_controller_s_selad : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal sig_controller_s_selda : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal sig_controller_t_prevmode : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal sig_controller_t_prevmode_mux0006 : STD_LOGIC_VECTOR ( 2 downto 2 ); 
begin
  XST_GND : GND
    port map (
      G => avg_module_Maccum_s_data_cy(0)
    );
  XST_VCC : VCC
    port map (
      P => N1
    );
  s_cmd_data : FDE
    port map (
      C => m_TP_0_OBUF_917,
      CE => N1,
      D => m_cmd_data_IBUF_941,
      Q => s_cmd_data_1010
    );
  s_wen : FDE
    port map (
      C => m_TP_0_OBUF_917,
      CE => N1,
      D => m_wen_IBUF_963,
      Q => s_wen_1043
    );
  s_address_0 : FDE
    port map (
      C => m_TP_0_OBUF_917,
      CE => N1,
      D => m_address_0_IBUF_930,
      Q => s_address(0)
    );
  s_address_1 : FDE
    port map (
      C => m_TP_0_OBUF_917,
      CE => N1,
      D => m_address_1_IBUF_931,
      Q => s_address(1)
    );
  s_address_2 : FDE
    port map (
      C => m_TP_0_OBUF_917,
      CE => N1,
      D => m_address_2_IBUF_932,
      Q => s_address(2)
    );
  s_address_3 : FDE
    port map (
      C => m_TP_0_OBUF_917,
      CE => N1,
      D => m_address_3_IBUF_933,
      Q => s_address(3)
    );
  s_address_4 : FDE
    port map (
      C => m_TP_0_OBUF_917,
      CE => N1,
      D => m_address_4_IBUF_934,
      Q => s_address(4)
    );
  s_address_5 : FDE
    port map (
      C => m_TP_0_OBUF_917,
      CE => N1,
      D => m_address_5_IBUF_935,
      Q => s_address(5)
    );
  s_address_6 : FDE
    port map (
      C => m_TP_0_OBUF_917,
      CE => N1,
      D => m_address_6_IBUF_936,
      Q => s_address(6)
    );
  s_address_7 : FDE
    port map (
      C => m_TP_0_OBUF_917,
      CE => N1,
      D => m_address_7_IBUF_937,
      Q => s_address(7)
    );
  s_address_8 : FDE
    port map (
      C => m_TP_0_OBUF_917,
      CE => N1,
      D => m_address_8_IBUF_938,
      Q => s_address(8)
    );
  s_OE_b : FDE
    port map (
      C => m_TP_0_OBUF_917,
      CE => N1,
      D => m_OE_b_IBUF_914,
      Q => s_OE_b_1000
    );
  inlatch_dout_0 : FDE
    port map (
      C => m_TP_0_OBUF_917,
      CE => s_OE_b_1000,
      D => N108,
      Q => inlatch_dout(0)
    );
  inlatch_dout_1 : FDE
    port map (
      C => m_TP_0_OBUF_917,
      CE => s_OE_b_1000,
      D => N107,
      Q => inlatch_dout(1)
    );
  inlatch_dout_2 : FDE
    port map (
      C => m_TP_0_OBUF_917,
      CE => s_OE_b_1000,
      D => N106,
      Q => inlatch_dout(2)
    );
  inlatch_dout_3 : FDE
    port map (
      C => m_TP_0_OBUF_917,
      CE => s_OE_b_1000,
      D => N105,
      Q => inlatch_dout(3)
    );
  inlatch_dout_4 : FDE
    port map (
      C => m_TP_0_OBUF_917,
      CE => s_OE_b_1000,
      D => N104,
      Q => inlatch_dout(4)
    );
  inlatch_dout_5 : FDE
    port map (
      C => m_TP_0_OBUF_917,
      CE => s_OE_b_1000,
      D => N103,
      Q => inlatch_dout(5)
    );
  inlatch_dout_6 : FDE
    port map (
      C => m_TP_0_OBUF_917,
      CE => s_OE_b_1000,
      D => N102,
      Q => inlatch_dout(6)
    );
  inlatch_dout_7 : FDE
    port map (
      C => m_TP_0_OBUF_917,
      CE => s_OE_b_1000,
      D => N101,
      Q => inlatch_dout(7)
    );
  s_ren : FDE
    port map (
      C => m_TP_0_OBUF_917,
      CE => N1,
      D => m_ren_IBUF_959,
      Q => s_ren_1042
    );
  outlatch_dout_0 : FDE
    port map (
      C => m_TP_0_OBUF_917,
      CE => s_outlatch_en,
      D => out_mux_dout(0),
      Q => outlatch_dout(0)
    );
  outlatch_dout_1 : FDE
    port map (
      C => m_TP_0_OBUF_917,
      CE => s_outlatch_en,
      D => out_mux_dout(1),
      Q => outlatch_dout(1)
    );
  outlatch_dout_2 : FDE
    port map (
      C => m_TP_0_OBUF_917,
      CE => s_outlatch_en,
      D => out_mux_dout(2),
      Q => outlatch_dout(2)
    );
  outlatch_dout_3 : FDE
    port map (
      C => m_TP_0_OBUF_917,
      CE => s_outlatch_en,
      D => out_mux_dout(3),
      Q => outlatch_dout(3)
    );
  outlatch_dout_4 : FDE
    port map (
      C => m_TP_0_OBUF_917,
      CE => s_outlatch_en,
      D => out_mux_dout(4),
      Q => outlatch_dout(4)
    );
  outlatch_dout_5 : FDE
    port map (
      C => m_TP_0_OBUF_917,
      CE => s_outlatch_en,
      D => out_mux_dout(5),
      Q => outlatch_dout(5)
    );
  outlatch_dout_6 : FDE
    port map (
      C => m_TP_0_OBUF_917,
      CE => s_outlatch_en,
      D => out_mux_dout(6),
      Q => outlatch_dout(6)
    );
  outlatch_dout_7 : FDE
    port map (
      C => m_TP_0_OBUF_917,
      CE => s_outlatch_en,
      D => out_mux_dout(7),
      Q => outlatch_dout(7)
    );
  ad_latch_dout_0 : FDE
    port map (
      C => m_TP_1_OBUF_919,
      CE => N1,
      D => m_ADC_data_0_IBUF_896,
      Q => ad_latch_dout(0)
    );
  ad_latch_dout_1 : FDE
    port map (
      C => m_TP_1_OBUF_919,
      CE => N1,
      D => m_ADC_data_1_IBUF_897,
      Q => ad_latch_dout(1)
    );
  ad_latch_dout_2 : FDE
    port map (
      C => m_TP_1_OBUF_919,
      CE => N1,
      D => m_ADC_data_2_IBUF_898,
      Q => ad_latch_dout(2)
    );
  ad_latch_dout_3 : FDE
    port map (
      C => m_TP_1_OBUF_919,
      CE => N1,
      D => m_ADC_data_3_IBUF_899,
      Q => ad_latch_dout(3)
    );
  ad_latch_dout_4 : FDE
    port map (
      C => m_TP_1_OBUF_919,
      CE => N1,
      D => m_ADC_data_4_IBUF_900,
      Q => ad_latch_dout(4)
    );
  ad_latch_dout_5 : FDE
    port map (
      C => m_TP_1_OBUF_919,
      CE => N1,
      D => m_ADC_data_5_IBUF_901,
      Q => ad_latch_dout(5)
    );
  ad_latch_dout_6 : FDE
    port map (
      C => m_TP_1_OBUF_919,
      CE => N1,
      D => m_ADC_data_6_IBUF_902,
      Q => ad_latch_dout(6)
    );
  ad_latch_dout_7 : FDE
    port map (
      C => m_TP_1_OBUF_919,
      CE => N1,
      D => m_ADC_data_7_IBUF_903,
      Q => ad_latch_dout(7)
    );
  da_latch_dout_0 : FDE
    port map (
      C => m_TP_1_OBUF_919,
      CE => sig_controller_m_da_latch_en_1391,
      D => s_doutb2(0),
      Q => da_latch_dout(0)
    );
  da_latch_dout_1 : FDE
    port map (
      C => m_TP_1_OBUF_919,
      CE => sig_controller_m_da_latch_en_1391,
      D => s_doutb2(1),
      Q => da_latch_dout(1)
    );
  da_latch_dout_2 : FDE
    port map (
      C => m_TP_1_OBUF_919,
      CE => sig_controller_m_da_latch_en_1391,
      D => s_doutb2(2),
      Q => da_latch_dout(2)
    );
  da_latch_dout_3 : FDE
    port map (
      C => m_TP_1_OBUF_919,
      CE => sig_controller_m_da_latch_en_1391,
      D => s_doutb2(3),
      Q => da_latch_dout(3)
    );
  da_latch_dout_4 : FDE
    port map (
      C => m_TP_1_OBUF_919,
      CE => sig_controller_m_da_latch_en_1391,
      D => s_doutb2(4),
      Q => da_latch_dout(4)
    );
  da_latch_dout_5 : FDE
    port map (
      C => m_TP_1_OBUF_919,
      CE => sig_controller_m_da_latch_en_1391,
      D => s_doutb2(5),
      Q => da_latch_dout(5)
    );
  da_latch_dout_6 : FDE
    port map (
      C => m_TP_1_OBUF_919,
      CE => sig_controller_m_da_latch_en_1391,
      D => s_doutb2(6),
      Q => da_latch_dout(6)
    );
  da_latch_dout_7 : FDE
    port map (
      C => m_TP_1_OBUF_919,
      CE => sig_controller_m_da_latch_en_1391,
      D => s_doutb2(7),
      Q => da_latch_dout(7)
    );
  s_clk_g : IBUFG
    generic map(
      CAPACITANCE => "DONT_CARE",
      IBUF_DELAY_VALUE => "0",
      IBUF_LOW_PWR => TRUE,
      IOSTANDARD => "DEFAULT"
    )
    port map (
      I => m_clk,
      O => m_TP_0_OBUF1
    );
  clk_gen_CNT0_s_CNT3_UD : FDS_1
    port map (
      C => m_TP_0_OBUF_917,
      D => clk_gen_CNT0_s_CNT3_UD_mux0003,
      S => b_reset_b,
      Q => clk_gen_CNT0_s_CNT3_UD_746
    );
  clk_gen_CNT0_s_wr_L : FDCE
    port map (
      C => clk_gen_CNT0_s_wr,
      CE => clk_gen_s_cw0,
      CLR => b_reset_b,
      D => clk_gen_s_data(4),
      Q => clk_gen_CNT0_s_wr_L_839
    );
  clk_gen_CNT0_s_wr_M : FDCE
    port map (
      C => clk_gen_CNT0_s_wr,
      CE => clk_gen_s_cw0,
      CLR => b_reset_b,
      D => clk_gen_s_data(5),
      Q => clk_gen_CNT0_s_wr_M_840
    );
  clk_gen_CNT0_s_REG_10 : FDCE
    port map (
      C => clk_gen_CNT0_s_wr,
      CE => clk_gen_CNT0_s_REG_10_not0001,
      CLR => b_reset_b,
      D => clk_gen_s_data(2),
      Q => clk_gen_CNT0_s_REG(10)
    );
  clk_gen_CNT0_s_wr_wait : FDCE
    port map (
      C => clk_gen_CNT0_s_wr,
      CE => clk_gen_CNT0_m_cw_inv,
      CLR => b_reset_b,
      D => clk_gen_CNT0_s_wr_wait_mux0003,
      Q => clk_gen_CNT0_s_wr_wait_841
    );
  clk_gen_CNT0_s_REG_11 : FDCE
    port map (
      C => clk_gen_CNT0_s_wr,
      CE => clk_gen_CNT0_s_REG_10_not0001,
      CLR => b_reset_b,
      D => clk_gen_s_data(3),
      Q => clk_gen_CNT0_s_REG(11)
    );
  clk_gen_CNT0_s_REG_12 : FDCE
    port map (
      C => clk_gen_CNT0_s_wr,
      CE => clk_gen_CNT0_s_REG_10_not0001,
      CLR => b_reset_b,
      D => clk_gen_s_data(4),
      Q => clk_gen_CNT0_s_REG(12)
    );
  clk_gen_CNT0_s_REG_0 : FDCE
    port map (
      C => clk_gen_CNT0_s_wr,
      CE => clk_gen_CNT0_s_REG_0_not0001,
      CLR => b_reset_b,
      D => clk_gen_s_data(0),
      Q => clk_gen_CNT0_s_REG(0)
    );
  clk_gen_CNT0_s_REG_14 : FDCE
    port map (
      C => clk_gen_CNT0_s_wr,
      CE => clk_gen_CNT0_s_REG_10_not0001,
      CLR => b_reset_b,
      D => clk_gen_s_data(6),
      Q => clk_gen_CNT0_s_REG(14)
    );
  clk_gen_CNT0_s_REG_13 : FDCE
    port map (
      C => clk_gen_CNT0_s_wr,
      CE => clk_gen_CNT0_s_REG_10_not0001,
      CLR => b_reset_b,
      D => clk_gen_s_data(5),
      Q => clk_gen_CNT0_s_REG(13)
    );
  clk_gen_CNT0_s_REG_1 : FDCE
    port map (
      C => clk_gen_CNT0_s_wr,
      CE => clk_gen_CNT0_s_REG_0_not0001,
      CLR => b_reset_b,
      D => clk_gen_s_data(1),
      Q => clk_gen_CNT0_s_REG(1)
    );
  clk_gen_CNT0_s_REG_2 : FDPE
    port map (
      C => clk_gen_CNT0_s_wr,
      CE => clk_gen_CNT0_s_REG_0_not0001,
      D => clk_gen_s_data(2),
      PRE => b_reset_b,
      Q => clk_gen_CNT0_s_REG(2)
    );
  clk_gen_CNT0_s_mode : FDCE
    port map (
      C => clk_gen_CNT0_s_wr,
      CE => clk_gen_s_cw0,
      CLR => b_reset_b,
      D => clk_gen_s_data(1),
      Q => clk_gen_CNT0_s_mode_830
    );
  clk_gen_CNT0_s_REG_15 : FDCE
    port map (
      C => clk_gen_CNT0_s_wr,
      CE => clk_gen_CNT0_s_REG_10_not0001,
      CLR => b_reset_b,
      D => clk_gen_s_data(7),
      Q => clk_gen_CNT0_s_REG(15)
    );
  clk_gen_CNT0_s_REG_3 : FDCE
    port map (
      C => clk_gen_CNT0_s_wr,
      CE => clk_gen_CNT0_s_REG_0_not0001,
      CLR => b_reset_b,
      D => clk_gen_s_data(3),
      Q => clk_gen_CNT0_s_REG(3)
    );
  clk_gen_CNT0_s_REG_6 : FDCE
    port map (
      C => clk_gen_CNT0_s_wr,
      CE => clk_gen_CNT0_s_REG_0_not0001,
      CLR => b_reset_b,
      D => clk_gen_s_data(6),
      Q => clk_gen_CNT0_s_REG(6)
    );
  clk_gen_CNT0_s_REG_4 : FDCE
    port map (
      C => clk_gen_CNT0_s_wr,
      CE => clk_gen_CNT0_s_REG_0_not0001,
      CLR => b_reset_b,
      D => clk_gen_s_data(4),
      Q => clk_gen_CNT0_s_REG(4)
    );
  clk_gen_CNT0_s_REG_5 : FDCE
    port map (
      C => clk_gen_CNT0_s_wr,
      CE => clk_gen_CNT0_s_REG_0_not0001,
      CLR => b_reset_b,
      D => clk_gen_s_data(5),
      Q => clk_gen_CNT0_s_REG(5)
    );
  clk_gen_CNT0_s_REG_7 : FDCE
    port map (
      C => clk_gen_CNT0_s_wr,
      CE => clk_gen_CNT0_s_REG_0_not0001,
      CLR => b_reset_b,
      D => clk_gen_s_data(7),
      Q => clk_gen_CNT0_s_REG(7)
    );
  clk_gen_CNT0_s_REG_8 : FDPE
    port map (
      C => clk_gen_CNT0_s_wr,
      CE => clk_gen_CNT0_s_REG_10_not0001,
      D => clk_gen_s_data(0),
      PRE => b_reset_b,
      Q => clk_gen_CNT0_s_REG(8)
    );
  clk_gen_CNT0_s_REG_9 : FDCE
    port map (
      C => clk_gen_CNT0_s_wr,
      CE => clk_gen_CNT0_s_REG_10_not0001,
      CLR => b_reset_b,
      D => clk_gen_s_data(1),
      Q => clk_gen_CNT0_s_REG(9)
    );
  clk_gen_CNT0_s_CNT2_0 : FDCE
    port map (
      C => clk_gen_CNT0_m_clk_inv,
      CE => clk_gen_CNT0_s_CNT2_and0000,
      CLR => b_reset_b,
      D => clk_gen_CNT0_Mcount_s_CNT2_eqn_0,
      Q => clk_gen_CNT0_s_CNT2(0)
    );
  clk_gen_CNT0_s_CNT2_3 : FDCE
    port map (
      C => clk_gen_CNT0_m_clk_inv,
      CE => clk_gen_CNT0_s_CNT2_and0000,
      CLR => b_reset_b,
      D => clk_gen_CNT0_Mcount_s_CNT2_eqn_3,
      Q => clk_gen_CNT0_s_CNT2(3)
    );
  clk_gen_CNT0_s_CNT2_1 : FDCE
    port map (
      C => clk_gen_CNT0_m_clk_inv,
      CE => clk_gen_CNT0_s_CNT2_and0000,
      CLR => b_reset_b,
      D => clk_gen_CNT0_Mcount_s_CNT2_eqn_1,
      Q => clk_gen_CNT0_s_CNT2(1)
    );
  clk_gen_CNT0_s_CNT2_2 : FDPE
    port map (
      C => clk_gen_CNT0_m_clk_inv,
      CE => clk_gen_CNT0_s_CNT2_and0000,
      D => clk_gen_CNT0_Mcount_s_CNT2_eqn_2,
      PRE => b_reset_b,
      Q => clk_gen_CNT0_s_CNT2(2)
    );
  clk_gen_CNT0_s_CNT2_4 : FDCE
    port map (
      C => clk_gen_CNT0_m_clk_inv,
      CE => clk_gen_CNT0_s_CNT2_and0000,
      CLR => b_reset_b,
      D => clk_gen_CNT0_Mcount_s_CNT2_eqn_4,
      Q => clk_gen_CNT0_s_CNT2(4)
    );
  clk_gen_CNT0_s_CNT2_5 : FDCE
    port map (
      C => clk_gen_CNT0_m_clk_inv,
      CE => clk_gen_CNT0_s_CNT2_and0000,
      CLR => b_reset_b,
      D => clk_gen_CNT0_Mcount_s_CNT2_eqn_5,
      Q => clk_gen_CNT0_s_CNT2(5)
    );
  clk_gen_CNT0_s_CNT2_8 : FDPE
    port map (
      C => clk_gen_CNT0_m_clk_inv,
      CE => clk_gen_CNT0_s_CNT2_and0000,
      D => clk_gen_CNT0_Mcount_s_CNT2_eqn_8,
      PRE => b_reset_b,
      Q => clk_gen_CNT0_s_CNT2(8)
    );
  clk_gen_CNT0_s_CNT2_6 : FDCE
    port map (
      C => clk_gen_CNT0_m_clk_inv,
      CE => clk_gen_CNT0_s_CNT2_and0000,
      CLR => b_reset_b,
      D => clk_gen_CNT0_Mcount_s_CNT2_eqn_6,
      Q => clk_gen_CNT0_s_CNT2(6)
    );
  clk_gen_CNT0_s_CNT2_7 : FDCE
    port map (
      C => clk_gen_CNT0_m_clk_inv,
      CE => clk_gen_CNT0_s_CNT2_and0000,
      CLR => b_reset_b,
      D => clk_gen_CNT0_Mcount_s_CNT2_eqn_7,
      Q => clk_gen_CNT0_s_CNT2(7)
    );
  clk_gen_CNT0_s_CNT2_9 : FDCE
    port map (
      C => clk_gen_CNT0_m_clk_inv,
      CE => clk_gen_CNT0_s_CNT2_and0000,
      CLR => b_reset_b,
      D => clk_gen_CNT0_Mcount_s_CNT2_eqn_9,
      Q => clk_gen_CNT0_s_CNT2(9)
    );
  clk_gen_CNT0_s_CNT2_10 : FDCE
    port map (
      C => clk_gen_CNT0_m_clk_inv,
      CE => clk_gen_CNT0_s_CNT2_and0000,
      CLR => b_reset_b,
      D => clk_gen_CNT0_Mcount_s_CNT2_eqn_10,
      Q => clk_gen_CNT0_s_CNT2(10)
    );
  clk_gen_CNT0_s_CNT2_13 : FDCE
    port map (
      C => clk_gen_CNT0_m_clk_inv,
      CE => clk_gen_CNT0_s_CNT2_and0000,
      CLR => b_reset_b,
      D => clk_gen_CNT0_Mcount_s_CNT2_eqn_13,
      Q => clk_gen_CNT0_s_CNT2(13)
    );
  clk_gen_CNT0_s_CNT2_11 : FDCE
    port map (
      C => clk_gen_CNT0_m_clk_inv,
      CE => clk_gen_CNT0_s_CNT2_and0000,
      CLR => b_reset_b,
      D => clk_gen_CNT0_Mcount_s_CNT2_eqn_11,
      Q => clk_gen_CNT0_s_CNT2(11)
    );
  clk_gen_CNT0_s_CNT2_12 : FDCE
    port map (
      C => clk_gen_CNT0_m_clk_inv,
      CE => clk_gen_CNT0_s_CNT2_and0000,
      CLR => b_reset_b,
      D => clk_gen_CNT0_Mcount_s_CNT2_eqn_12,
      Q => clk_gen_CNT0_s_CNT2(12)
    );
  clk_gen_CNT0_s_CNT2_14 : FDCE
    port map (
      C => clk_gen_CNT0_m_clk_inv,
      CE => clk_gen_CNT0_s_CNT2_and0000,
      CLR => b_reset_b,
      D => clk_gen_CNT0_Mcount_s_CNT2_eqn_14,
      Q => clk_gen_CNT0_s_CNT2(14)
    );
  clk_gen_CNT0_s_CNT2_15 : FDCE
    port map (
      C => clk_gen_CNT0_m_clk_inv,
      CE => clk_gen_CNT0_s_CNT2_and0000,
      CLR => b_reset_b,
      D => clk_gen_CNT0_Mcount_s_CNT2_eqn_15,
      Q => clk_gen_CNT0_s_CNT2(15)
    );
  clk_gen_CNT0_Msub_s_CNT3_U_share0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => avg_module_Maccum_s_data_cy(0),
      S => clk_gen_CNT0_Msub_s_CNT3_U_share0000_cy_0_rt_566,
      O => clk_gen_CNT0_Msub_s_CNT3_U_share0000_cy(0)
    );
  clk_gen_CNT0_Msub_s_CNT3_U_share0000_xor_0_Q : XORCY
    port map (
      CI => N1,
      LI => clk_gen_CNT0_Msub_s_CNT3_U_share0000_cy_0_rt_566,
      O => clk_gen_CNT0_s_CNT3_U_share0000(0)
    );
  clk_gen_CNT0_Msub_s_CNT3_U_share0000_cy_1_Q : MUXCY
    port map (
      CI => clk_gen_CNT0_Msub_s_CNT3_U_share0000_cy(0),
      DI => N1,
      S => clk_gen_CNT0_Msub_s_CNT3_U_share0000_lut(1),
      O => clk_gen_CNT0_Msub_s_CNT3_U_share0000_cy(1)
    );
  clk_gen_CNT0_Msub_s_CNT3_U_share0000_xor_1_Q : XORCY
    port map (
      CI => clk_gen_CNT0_Msub_s_CNT3_U_share0000_cy(0),
      LI => clk_gen_CNT0_Msub_s_CNT3_U_share0000_lut(1),
      O => clk_gen_CNT0_s_CNT3_U_share0000(1)
    );
  clk_gen_CNT0_Msub_s_CNT3_U_share0000_cy_2_Q : MUXCY
    port map (
      CI => clk_gen_CNT0_Msub_s_CNT3_U_share0000_cy(1),
      DI => N1,
      S => clk_gen_CNT0_Msub_s_CNT3_U_share0000_lut(2),
      O => clk_gen_CNT0_Msub_s_CNT3_U_share0000_cy(2)
    );
  clk_gen_CNT0_Msub_s_CNT3_U_share0000_xor_2_Q : XORCY
    port map (
      CI => clk_gen_CNT0_Msub_s_CNT3_U_share0000_cy(1),
      LI => clk_gen_CNT0_Msub_s_CNT3_U_share0000_lut(2),
      O => clk_gen_CNT0_s_CNT3_U_share0000(2)
    );
  clk_gen_CNT0_Msub_s_CNT3_U_share0000_cy_3_Q : MUXCY
    port map (
      CI => clk_gen_CNT0_Msub_s_CNT3_U_share0000_cy(2),
      DI => N1,
      S => clk_gen_CNT0_Msub_s_CNT3_U_share0000_lut(3),
      O => clk_gen_CNT0_Msub_s_CNT3_U_share0000_cy(3)
    );
  clk_gen_CNT0_Msub_s_CNT3_U_share0000_xor_3_Q : XORCY
    port map (
      CI => clk_gen_CNT0_Msub_s_CNT3_U_share0000_cy(2),
      LI => clk_gen_CNT0_Msub_s_CNT3_U_share0000_lut(3),
      O => clk_gen_CNT0_s_CNT3_U_share0000(3)
    );
  clk_gen_CNT0_Msub_s_CNT3_U_share0000_cy_4_Q : MUXCY
    port map (
      CI => clk_gen_CNT0_Msub_s_CNT3_U_share0000_cy(3),
      DI => N1,
      S => clk_gen_CNT0_Msub_s_CNT3_U_share0000_lut(4),
      O => clk_gen_CNT0_Msub_s_CNT3_U_share0000_cy(4)
    );
  clk_gen_CNT0_Msub_s_CNT3_U_share0000_xor_4_Q : XORCY
    port map (
      CI => clk_gen_CNT0_Msub_s_CNT3_U_share0000_cy(3),
      LI => clk_gen_CNT0_Msub_s_CNT3_U_share0000_lut(4),
      O => clk_gen_CNT0_s_CNT3_U_share0000(4)
    );
  clk_gen_CNT0_Msub_s_CNT3_U_share0000_cy_5_Q : MUXCY
    port map (
      CI => clk_gen_CNT0_Msub_s_CNT3_U_share0000_cy(4),
      DI => N1,
      S => clk_gen_CNT0_Msub_s_CNT3_U_share0000_lut(5),
      O => clk_gen_CNT0_Msub_s_CNT3_U_share0000_cy(5)
    );
  clk_gen_CNT0_Msub_s_CNT3_U_share0000_xor_5_Q : XORCY
    port map (
      CI => clk_gen_CNT0_Msub_s_CNT3_U_share0000_cy(4),
      LI => clk_gen_CNT0_Msub_s_CNT3_U_share0000_lut(5),
      O => clk_gen_CNT0_s_CNT3_U_share0000(5)
    );
  clk_gen_CNT0_Msub_s_CNT3_U_share0000_cy_6_Q : MUXCY
    port map (
      CI => clk_gen_CNT0_Msub_s_CNT3_U_share0000_cy(5),
      DI => N1,
      S => clk_gen_CNT0_Msub_s_CNT3_U_share0000_lut(6),
      O => clk_gen_CNT0_Msub_s_CNT3_U_share0000_cy(6)
    );
  clk_gen_CNT0_Msub_s_CNT3_U_share0000_xor_6_Q : XORCY
    port map (
      CI => clk_gen_CNT0_Msub_s_CNT3_U_share0000_cy(5),
      LI => clk_gen_CNT0_Msub_s_CNT3_U_share0000_lut(6),
      O => clk_gen_CNT0_s_CNT3_U_share0000(6)
    );
  clk_gen_CNT0_Msub_s_CNT3_U_share0000_cy_7_Q : MUXCY
    port map (
      CI => clk_gen_CNT0_Msub_s_CNT3_U_share0000_cy(6),
      DI => N1,
      S => clk_gen_CNT0_Msub_s_CNT3_U_share0000_lut(7),
      O => clk_gen_CNT0_Msub_s_CNT3_U_share0000_cy(7)
    );
  clk_gen_CNT0_Msub_s_CNT3_U_share0000_xor_7_Q : XORCY
    port map (
      CI => clk_gen_CNT0_Msub_s_CNT3_U_share0000_cy(6),
      LI => clk_gen_CNT0_Msub_s_CNT3_U_share0000_lut(7),
      O => clk_gen_CNT0_s_CNT3_U_share0000(7)
    );
  clk_gen_CNT0_Msub_s_CNT3_U_share0000_cy_8_Q : MUXCY
    port map (
      CI => clk_gen_CNT0_Msub_s_CNT3_U_share0000_cy(7),
      DI => N1,
      S => clk_gen_CNT0_Msub_s_CNT3_U_share0000_lut(8),
      O => clk_gen_CNT0_Msub_s_CNT3_U_share0000_cy(8)
    );
  clk_gen_CNT0_Msub_s_CNT3_U_share0000_xor_8_Q : XORCY
    port map (
      CI => clk_gen_CNT0_Msub_s_CNT3_U_share0000_cy(7),
      LI => clk_gen_CNT0_Msub_s_CNT3_U_share0000_lut(8),
      O => clk_gen_CNT0_s_CNT3_U_share0000(8)
    );
  clk_gen_CNT0_Msub_s_CNT3_U_share0000_cy_9_Q : MUXCY
    port map (
      CI => clk_gen_CNT0_Msub_s_CNT3_U_share0000_cy(8),
      DI => N1,
      S => clk_gen_CNT0_Msub_s_CNT3_U_share0000_lut(9),
      O => clk_gen_CNT0_Msub_s_CNT3_U_share0000_cy(9)
    );
  clk_gen_CNT0_Msub_s_CNT3_U_share0000_xor_9_Q : XORCY
    port map (
      CI => clk_gen_CNT0_Msub_s_CNT3_U_share0000_cy(8),
      LI => clk_gen_CNT0_Msub_s_CNT3_U_share0000_lut(9),
      O => clk_gen_CNT0_s_CNT3_U_share0000(9)
    );
  clk_gen_CNT0_Msub_s_CNT3_U_share0000_cy_10_Q : MUXCY
    port map (
      CI => clk_gen_CNT0_Msub_s_CNT3_U_share0000_cy(9),
      DI => N1,
      S => clk_gen_CNT0_Msub_s_CNT3_U_share0000_lut(10),
      O => clk_gen_CNT0_Msub_s_CNT3_U_share0000_cy(10)
    );
  clk_gen_CNT0_Msub_s_CNT3_U_share0000_xor_10_Q : XORCY
    port map (
      CI => clk_gen_CNT0_Msub_s_CNT3_U_share0000_cy(9),
      LI => clk_gen_CNT0_Msub_s_CNT3_U_share0000_lut(10),
      O => clk_gen_CNT0_s_CNT3_U_share0000(10)
    );
  clk_gen_CNT0_Msub_s_CNT3_U_share0000_cy_11_Q : MUXCY
    port map (
      CI => clk_gen_CNT0_Msub_s_CNT3_U_share0000_cy(10),
      DI => N1,
      S => clk_gen_CNT0_Msub_s_CNT3_U_share0000_lut(11),
      O => clk_gen_CNT0_Msub_s_CNT3_U_share0000_cy(11)
    );
  clk_gen_CNT0_Msub_s_CNT3_U_share0000_xor_11_Q : XORCY
    port map (
      CI => clk_gen_CNT0_Msub_s_CNT3_U_share0000_cy(10),
      LI => clk_gen_CNT0_Msub_s_CNT3_U_share0000_lut(11),
      O => clk_gen_CNT0_s_CNT3_U_share0000(11)
    );
  clk_gen_CNT0_Msub_s_CNT3_U_share0000_cy_12_Q : MUXCY
    port map (
      CI => clk_gen_CNT0_Msub_s_CNT3_U_share0000_cy(11),
      DI => N1,
      S => clk_gen_CNT0_Msub_s_CNT3_U_share0000_lut(12),
      O => clk_gen_CNT0_Msub_s_CNT3_U_share0000_cy(12)
    );
  clk_gen_CNT0_Msub_s_CNT3_U_share0000_xor_12_Q : XORCY
    port map (
      CI => clk_gen_CNT0_Msub_s_CNT3_U_share0000_cy(11),
      LI => clk_gen_CNT0_Msub_s_CNT3_U_share0000_lut(12),
      O => clk_gen_CNT0_s_CNT3_U_share0000(12)
    );
  clk_gen_CNT0_Msub_s_CNT3_U_share0000_cy_13_Q : MUXCY
    port map (
      CI => clk_gen_CNT0_Msub_s_CNT3_U_share0000_cy(12),
      DI => N1,
      S => clk_gen_CNT0_Msub_s_CNT3_U_share0000_lut(13),
      O => clk_gen_CNT0_Msub_s_CNT3_U_share0000_cy(13)
    );
  clk_gen_CNT0_Msub_s_CNT3_U_share0000_xor_13_Q : XORCY
    port map (
      CI => clk_gen_CNT0_Msub_s_CNT3_U_share0000_cy(12),
      LI => clk_gen_CNT0_Msub_s_CNT3_U_share0000_lut(13),
      O => clk_gen_CNT0_s_CNT3_U_share0000(13)
    );
  clk_gen_CNT0_Msub_s_CNT3_U_share0000_xor_14_Q : XORCY
    port map (
      CI => clk_gen_CNT0_Msub_s_CNT3_U_share0000_cy(13),
      LI => clk_gen_CNT0_Msub_s_CNT3_U_share0000_lut(14),
      O => clk_gen_CNT0_s_CNT3_U_share0000(14)
    );
  clk_gen_CNT0_Madd_s_CNT3_1_cy_0_Q : MUXCY
    port map (
      CI => avg_module_Maccum_s_data_cy(0),
      DI => N1,
      S => clk_gen_CNT0_Madd_s_CNT3_1_lut(0),
      O => clk_gen_CNT0_Madd_s_CNT3_1_cy(0)
    );
  clk_gen_CNT0_Madd_s_CNT3_1_cy_1_Q : MUXCY
    port map (
      CI => clk_gen_CNT0_Madd_s_CNT3_1_cy(0),
      DI => avg_module_Maccum_s_data_cy(0),
      S => clk_gen_CNT0_Madd_s_CNT3_1_cy_1_rt_439,
      O => clk_gen_CNT0_Madd_s_CNT3_1_cy(1)
    );
  clk_gen_CNT0_Madd_s_CNT3_1_xor_1_Q : XORCY
    port map (
      CI => clk_gen_CNT0_Madd_s_CNT3_1_cy(0),
      LI => clk_gen_CNT0_Madd_s_CNT3_1_cy_1_rt_439,
      O => clk_gen_CNT0_s_CNT3_1(1)
    );
  clk_gen_CNT0_Madd_s_CNT3_1_cy_2_Q : MUXCY
    port map (
      CI => clk_gen_CNT0_Madd_s_CNT3_1_cy(1),
      DI => avg_module_Maccum_s_data_cy(0),
      S => clk_gen_CNT0_Madd_s_CNT3_1_cy_2_rt_441,
      O => clk_gen_CNT0_Madd_s_CNT3_1_cy(2)
    );
  clk_gen_CNT0_Madd_s_CNT3_1_xor_2_Q : XORCY
    port map (
      CI => clk_gen_CNT0_Madd_s_CNT3_1_cy(1),
      LI => clk_gen_CNT0_Madd_s_CNT3_1_cy_2_rt_441,
      O => clk_gen_CNT0_s_CNT3_1(2)
    );
  clk_gen_CNT0_Madd_s_CNT3_1_cy_3_Q : MUXCY
    port map (
      CI => clk_gen_CNT0_Madd_s_CNT3_1_cy(2),
      DI => avg_module_Maccum_s_data_cy(0),
      S => clk_gen_CNT0_Madd_s_CNT3_1_cy_3_rt_443,
      O => clk_gen_CNT0_Madd_s_CNT3_1_cy(3)
    );
  clk_gen_CNT0_Madd_s_CNT3_1_xor_3_Q : XORCY
    port map (
      CI => clk_gen_CNT0_Madd_s_CNT3_1_cy(2),
      LI => clk_gen_CNT0_Madd_s_CNT3_1_cy_3_rt_443,
      O => clk_gen_CNT0_s_CNT3_1(3)
    );
  clk_gen_CNT0_Madd_s_CNT3_1_cy_4_Q : MUXCY
    port map (
      CI => clk_gen_CNT0_Madd_s_CNT3_1_cy(3),
      DI => avg_module_Maccum_s_data_cy(0),
      S => clk_gen_CNT0_Madd_s_CNT3_1_cy_4_rt_445,
      O => clk_gen_CNT0_Madd_s_CNT3_1_cy(4)
    );
  clk_gen_CNT0_Madd_s_CNT3_1_xor_4_Q : XORCY
    port map (
      CI => clk_gen_CNT0_Madd_s_CNT3_1_cy(3),
      LI => clk_gen_CNT0_Madd_s_CNT3_1_cy_4_rt_445,
      O => clk_gen_CNT0_s_CNT3_1(4)
    );
  clk_gen_CNT0_Madd_s_CNT3_1_cy_5_Q : MUXCY
    port map (
      CI => clk_gen_CNT0_Madd_s_CNT3_1_cy(4),
      DI => avg_module_Maccum_s_data_cy(0),
      S => clk_gen_CNT0_Madd_s_CNT3_1_cy_5_rt_447,
      O => clk_gen_CNT0_Madd_s_CNT3_1_cy(5)
    );
  clk_gen_CNT0_Madd_s_CNT3_1_xor_5_Q : XORCY
    port map (
      CI => clk_gen_CNT0_Madd_s_CNT3_1_cy(4),
      LI => clk_gen_CNT0_Madd_s_CNT3_1_cy_5_rt_447,
      O => clk_gen_CNT0_s_CNT3_1(5)
    );
  clk_gen_CNT0_Madd_s_CNT3_1_cy_6_Q : MUXCY
    port map (
      CI => clk_gen_CNT0_Madd_s_CNT3_1_cy(5),
      DI => avg_module_Maccum_s_data_cy(0),
      S => clk_gen_CNT0_Madd_s_CNT3_1_cy_6_rt_449,
      O => clk_gen_CNT0_Madd_s_CNT3_1_cy(6)
    );
  clk_gen_CNT0_Madd_s_CNT3_1_xor_6_Q : XORCY
    port map (
      CI => clk_gen_CNT0_Madd_s_CNT3_1_cy(5),
      LI => clk_gen_CNT0_Madd_s_CNT3_1_cy_6_rt_449,
      O => clk_gen_CNT0_s_CNT3_1(6)
    );
  clk_gen_CNT0_Madd_s_CNT3_1_cy_7_Q : MUXCY
    port map (
      CI => clk_gen_CNT0_Madd_s_CNT3_1_cy(6),
      DI => avg_module_Maccum_s_data_cy(0),
      S => clk_gen_CNT0_Madd_s_CNT3_1_cy_7_rt_451,
      O => clk_gen_CNT0_Madd_s_CNT3_1_cy(7)
    );
  clk_gen_CNT0_Madd_s_CNT3_1_xor_7_Q : XORCY
    port map (
      CI => clk_gen_CNT0_Madd_s_CNT3_1_cy(6),
      LI => clk_gen_CNT0_Madd_s_CNT3_1_cy_7_rt_451,
      O => clk_gen_CNT0_s_CNT3_1(7)
    );
  clk_gen_CNT0_Madd_s_CNT3_1_cy_8_Q : MUXCY
    port map (
      CI => clk_gen_CNT0_Madd_s_CNT3_1_cy(7),
      DI => avg_module_Maccum_s_data_cy(0),
      S => clk_gen_CNT0_Madd_s_CNT3_1_cy_8_rt_453,
      O => clk_gen_CNT0_Madd_s_CNT3_1_cy(8)
    );
  clk_gen_CNT0_Madd_s_CNT3_1_xor_8_Q : XORCY
    port map (
      CI => clk_gen_CNT0_Madd_s_CNT3_1_cy(7),
      LI => clk_gen_CNT0_Madd_s_CNT3_1_cy_8_rt_453,
      O => clk_gen_CNT0_s_CNT3_1(8)
    );
  clk_gen_CNT0_Madd_s_CNT3_1_cy_9_Q : MUXCY
    port map (
      CI => clk_gen_CNT0_Madd_s_CNT3_1_cy(8),
      DI => avg_module_Maccum_s_data_cy(0),
      S => clk_gen_CNT0_Madd_s_CNT3_1_cy_9_rt_455,
      O => clk_gen_CNT0_Madd_s_CNT3_1_cy(9)
    );
  clk_gen_CNT0_Madd_s_CNT3_1_xor_9_Q : XORCY
    port map (
      CI => clk_gen_CNT0_Madd_s_CNT3_1_cy(8),
      LI => clk_gen_CNT0_Madd_s_CNT3_1_cy_9_rt_455,
      O => clk_gen_CNT0_s_CNT3_1(9)
    );
  clk_gen_CNT0_Madd_s_CNT3_1_cy_10_Q : MUXCY
    port map (
      CI => clk_gen_CNT0_Madd_s_CNT3_1_cy(9),
      DI => avg_module_Maccum_s_data_cy(0),
      S => clk_gen_CNT0_Madd_s_CNT3_1_cy_10_rt_429,
      O => clk_gen_CNT0_Madd_s_CNT3_1_cy(10)
    );
  clk_gen_CNT0_Madd_s_CNT3_1_xor_10_Q : XORCY
    port map (
      CI => clk_gen_CNT0_Madd_s_CNT3_1_cy(9),
      LI => clk_gen_CNT0_Madd_s_CNT3_1_cy_10_rt_429,
      O => clk_gen_CNT0_s_CNT3_1(10)
    );
  clk_gen_CNT0_Madd_s_CNT3_1_cy_11_Q : MUXCY
    port map (
      CI => clk_gen_CNT0_Madd_s_CNT3_1_cy(10),
      DI => avg_module_Maccum_s_data_cy(0),
      S => clk_gen_CNT0_Madd_s_CNT3_1_cy_11_rt_431,
      O => clk_gen_CNT0_Madd_s_CNT3_1_cy(11)
    );
  clk_gen_CNT0_Madd_s_CNT3_1_xor_11_Q : XORCY
    port map (
      CI => clk_gen_CNT0_Madd_s_CNT3_1_cy(10),
      LI => clk_gen_CNT0_Madd_s_CNT3_1_cy_11_rt_431,
      O => clk_gen_CNT0_s_CNT3_1(11)
    );
  clk_gen_CNT0_Madd_s_CNT3_1_cy_12_Q : MUXCY
    port map (
      CI => clk_gen_CNT0_Madd_s_CNT3_1_cy(11),
      DI => avg_module_Maccum_s_data_cy(0),
      S => clk_gen_CNT0_Madd_s_CNT3_1_cy_12_rt_433,
      O => clk_gen_CNT0_Madd_s_CNT3_1_cy(12)
    );
  clk_gen_CNT0_Madd_s_CNT3_1_xor_12_Q : XORCY
    port map (
      CI => clk_gen_CNT0_Madd_s_CNT3_1_cy(11),
      LI => clk_gen_CNT0_Madd_s_CNT3_1_cy_12_rt_433,
      O => clk_gen_CNT0_s_CNT3_1(12)
    );
  clk_gen_CNT0_Madd_s_CNT3_1_cy_13_Q : MUXCY
    port map (
      CI => clk_gen_CNT0_Madd_s_CNT3_1_cy(12),
      DI => avg_module_Maccum_s_data_cy(0),
      S => clk_gen_CNT0_Madd_s_CNT3_1_cy_13_rt_435,
      O => clk_gen_CNT0_Madd_s_CNT3_1_cy(13)
    );
  clk_gen_CNT0_Madd_s_CNT3_1_xor_13_Q : XORCY
    port map (
      CI => clk_gen_CNT0_Madd_s_CNT3_1_cy(12),
      LI => clk_gen_CNT0_Madd_s_CNT3_1_cy_13_rt_435,
      O => clk_gen_CNT0_s_CNT3_1(13)
    );
  clk_gen_CNT0_Madd_s_CNT3_1_cy_14_Q : MUXCY
    port map (
      CI => clk_gen_CNT0_Madd_s_CNT3_1_cy(13),
      DI => avg_module_Maccum_s_data_cy(0),
      S => clk_gen_CNT0_Madd_s_CNT3_1_cy_14_rt_437,
      O => clk_gen_CNT0_Madd_s_CNT3_1_cy(14)
    );
  clk_gen_CNT0_Madd_s_CNT3_1_xor_14_Q : XORCY
    port map (
      CI => clk_gen_CNT0_Madd_s_CNT3_1_cy(13),
      LI => clk_gen_CNT0_Madd_s_CNT3_1_cy_14_rt_437,
      O => clk_gen_CNT0_s_CNT3_1(14)
    );
  clk_gen_CNT0_Madd_s_CNT3_1_xor_15_Q : XORCY
    port map (
      CI => clk_gen_CNT0_Madd_s_CNT3_1_cy(14),
      LI => clk_gen_CNT0_Madd_s_CNT3_1_xor_15_rt_457,
      O => clk_gen_CNT0_s_CNT3_1(15)
    );
  clk_gen_CNT0_Msub_s_CNT3_2_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => avg_module_Maccum_s_data_cy(0),
      S => clk_gen_CNT0_Msub_s_CNT3_2_cy_0_rt_506,
      O => clk_gen_CNT0_Msub_s_CNT3_2_cy(0)
    );
  clk_gen_CNT0_Msub_s_CNT3_2_cy_1_Q : MUXCY
    port map (
      CI => clk_gen_CNT0_Msub_s_CNT3_2_cy(0),
      DI => N1,
      S => clk_gen_CNT0_Msub_s_CNT3_2_lut(1),
      O => clk_gen_CNT0_Msub_s_CNT3_2_cy(1)
    );
  clk_gen_CNT0_Msub_s_CNT3_2_xor_1_Q : XORCY
    port map (
      CI => clk_gen_CNT0_Msub_s_CNT3_2_cy(0),
      LI => clk_gen_CNT0_Msub_s_CNT3_2_lut(1),
      O => clk_gen_CNT0_s_CNT3_2(1)
    );
  clk_gen_CNT0_Msub_s_CNT3_2_cy_2_Q : MUXCY
    port map (
      CI => clk_gen_CNT0_Msub_s_CNT3_2_cy(1),
      DI => N1,
      S => clk_gen_CNT0_Msub_s_CNT3_2_lut(2),
      O => clk_gen_CNT0_Msub_s_CNT3_2_cy(2)
    );
  clk_gen_CNT0_Msub_s_CNT3_2_xor_2_Q : XORCY
    port map (
      CI => clk_gen_CNT0_Msub_s_CNT3_2_cy(1),
      LI => clk_gen_CNT0_Msub_s_CNT3_2_lut(2),
      O => clk_gen_CNT0_s_CNT3_2(2)
    );
  clk_gen_CNT0_Msub_s_CNT3_2_cy_3_Q : MUXCY
    port map (
      CI => clk_gen_CNT0_Msub_s_CNT3_2_cy(2),
      DI => N1,
      S => clk_gen_CNT0_Msub_s_CNT3_2_lut(3),
      O => clk_gen_CNT0_Msub_s_CNT3_2_cy(3)
    );
  clk_gen_CNT0_Msub_s_CNT3_2_xor_3_Q : XORCY
    port map (
      CI => clk_gen_CNT0_Msub_s_CNT3_2_cy(2),
      LI => clk_gen_CNT0_Msub_s_CNT3_2_lut(3),
      O => clk_gen_CNT0_s_CNT3_2(3)
    );
  clk_gen_CNT0_Msub_s_CNT3_2_cy_4_Q : MUXCY
    port map (
      CI => clk_gen_CNT0_Msub_s_CNT3_2_cy(3),
      DI => N1,
      S => clk_gen_CNT0_Msub_s_CNT3_2_lut(4),
      O => clk_gen_CNT0_Msub_s_CNT3_2_cy(4)
    );
  clk_gen_CNT0_Msub_s_CNT3_2_xor_4_Q : XORCY
    port map (
      CI => clk_gen_CNT0_Msub_s_CNT3_2_cy(3),
      LI => clk_gen_CNT0_Msub_s_CNT3_2_lut(4),
      O => clk_gen_CNT0_s_CNT3_2(4)
    );
  clk_gen_CNT0_Msub_s_CNT3_2_cy_5_Q : MUXCY
    port map (
      CI => clk_gen_CNT0_Msub_s_CNT3_2_cy(4),
      DI => N1,
      S => clk_gen_CNT0_Msub_s_CNT3_2_lut(5),
      O => clk_gen_CNT0_Msub_s_CNT3_2_cy(5)
    );
  clk_gen_CNT0_Msub_s_CNT3_2_xor_5_Q : XORCY
    port map (
      CI => clk_gen_CNT0_Msub_s_CNT3_2_cy(4),
      LI => clk_gen_CNT0_Msub_s_CNT3_2_lut(5),
      O => clk_gen_CNT0_s_CNT3_2(5)
    );
  clk_gen_CNT0_Msub_s_CNT3_2_cy_6_Q : MUXCY
    port map (
      CI => clk_gen_CNT0_Msub_s_CNT3_2_cy(5),
      DI => N1,
      S => clk_gen_CNT0_Msub_s_CNT3_2_lut(6),
      O => clk_gen_CNT0_Msub_s_CNT3_2_cy(6)
    );
  clk_gen_CNT0_Msub_s_CNT3_2_xor_6_Q : XORCY
    port map (
      CI => clk_gen_CNT0_Msub_s_CNT3_2_cy(5),
      LI => clk_gen_CNT0_Msub_s_CNT3_2_lut(6),
      O => clk_gen_CNT0_s_CNT3_2(6)
    );
  clk_gen_CNT0_Msub_s_CNT3_2_cy_7_Q : MUXCY
    port map (
      CI => clk_gen_CNT0_Msub_s_CNT3_2_cy(6),
      DI => N1,
      S => clk_gen_CNT0_Msub_s_CNT3_2_lut(7),
      O => clk_gen_CNT0_Msub_s_CNT3_2_cy(7)
    );
  clk_gen_CNT0_Msub_s_CNT3_2_xor_7_Q : XORCY
    port map (
      CI => clk_gen_CNT0_Msub_s_CNT3_2_cy(6),
      LI => clk_gen_CNT0_Msub_s_CNT3_2_lut(7),
      O => clk_gen_CNT0_s_CNT3_2(7)
    );
  clk_gen_CNT0_Msub_s_CNT3_2_cy_8_Q : MUXCY
    port map (
      CI => clk_gen_CNT0_Msub_s_CNT3_2_cy(7),
      DI => N1,
      S => clk_gen_CNT0_Msub_s_CNT3_2_lut(8),
      O => clk_gen_CNT0_Msub_s_CNT3_2_cy(8)
    );
  clk_gen_CNT0_Msub_s_CNT3_2_xor_8_Q : XORCY
    port map (
      CI => clk_gen_CNT0_Msub_s_CNT3_2_cy(7),
      LI => clk_gen_CNT0_Msub_s_CNT3_2_lut(8),
      O => clk_gen_CNT0_s_CNT3_2(8)
    );
  clk_gen_CNT0_Msub_s_CNT3_2_cy_9_Q : MUXCY
    port map (
      CI => clk_gen_CNT0_Msub_s_CNT3_2_cy(8),
      DI => N1,
      S => clk_gen_CNT0_Msub_s_CNT3_2_lut(9),
      O => clk_gen_CNT0_Msub_s_CNT3_2_cy(9)
    );
  clk_gen_CNT0_Msub_s_CNT3_2_xor_9_Q : XORCY
    port map (
      CI => clk_gen_CNT0_Msub_s_CNT3_2_cy(8),
      LI => clk_gen_CNT0_Msub_s_CNT3_2_lut(9),
      O => clk_gen_CNT0_s_CNT3_2(9)
    );
  clk_gen_CNT0_Msub_s_CNT3_2_cy_10_Q : MUXCY
    port map (
      CI => clk_gen_CNT0_Msub_s_CNT3_2_cy(9),
      DI => N1,
      S => clk_gen_CNT0_Msub_s_CNT3_2_lut(10),
      O => clk_gen_CNT0_Msub_s_CNT3_2_cy(10)
    );
  clk_gen_CNT0_Msub_s_CNT3_2_xor_10_Q : XORCY
    port map (
      CI => clk_gen_CNT0_Msub_s_CNT3_2_cy(9),
      LI => clk_gen_CNT0_Msub_s_CNT3_2_lut(10),
      O => clk_gen_CNT0_s_CNT3_2(10)
    );
  clk_gen_CNT0_Msub_s_CNT3_2_cy_11_Q : MUXCY
    port map (
      CI => clk_gen_CNT0_Msub_s_CNT3_2_cy(10),
      DI => N1,
      S => clk_gen_CNT0_Msub_s_CNT3_2_lut(11),
      O => clk_gen_CNT0_Msub_s_CNT3_2_cy(11)
    );
  clk_gen_CNT0_Msub_s_CNT3_2_xor_11_Q : XORCY
    port map (
      CI => clk_gen_CNT0_Msub_s_CNT3_2_cy(10),
      LI => clk_gen_CNT0_Msub_s_CNT3_2_lut(11),
      O => clk_gen_CNT0_s_CNT3_2(11)
    );
  clk_gen_CNT0_Msub_s_CNT3_2_cy_12_Q : MUXCY
    port map (
      CI => clk_gen_CNT0_Msub_s_CNT3_2_cy(11),
      DI => N1,
      S => clk_gen_CNT0_Msub_s_CNT3_2_lut(12),
      O => clk_gen_CNT0_Msub_s_CNT3_2_cy(12)
    );
  clk_gen_CNT0_Msub_s_CNT3_2_xor_12_Q : XORCY
    port map (
      CI => clk_gen_CNT0_Msub_s_CNT3_2_cy(11),
      LI => clk_gen_CNT0_Msub_s_CNT3_2_lut(12),
      O => clk_gen_CNT0_s_CNT3_2(12)
    );
  clk_gen_CNT0_Msub_s_CNT3_2_cy_13_Q : MUXCY
    port map (
      CI => clk_gen_CNT0_Msub_s_CNT3_2_cy(12),
      DI => N1,
      S => clk_gen_CNT0_Msub_s_CNT3_2_lut(13),
      O => clk_gen_CNT0_Msub_s_CNT3_2_cy(13)
    );
  clk_gen_CNT0_Msub_s_CNT3_2_xor_13_Q : XORCY
    port map (
      CI => clk_gen_CNT0_Msub_s_CNT3_2_cy(12),
      LI => clk_gen_CNT0_Msub_s_CNT3_2_lut(13),
      O => clk_gen_CNT0_s_CNT3_2(13)
    );
  clk_gen_CNT0_Msub_s_CNT3_2_cy_14_Q : MUXCY
    port map (
      CI => clk_gen_CNT0_Msub_s_CNT3_2_cy(13),
      DI => N1,
      S => clk_gen_CNT0_Msub_s_CNT3_2_lut(14),
      O => clk_gen_CNT0_Msub_s_CNT3_2_cy(14)
    );
  clk_gen_CNT0_Msub_s_CNT3_2_xor_14_Q : XORCY
    port map (
      CI => clk_gen_CNT0_Msub_s_CNT3_2_cy(13),
      LI => clk_gen_CNT0_Msub_s_CNT3_2_lut(14),
      O => clk_gen_CNT0_s_CNT3_2(14)
    );
  clk_gen_CNT0_Msub_s_CNT3_2_xor_15_Q : XORCY
    port map (
      CI => clk_gen_CNT0_Msub_s_CNT3_2_cy(14),
      LI => clk_gen_CNT0_Msub_s_CNT3_2_lut(15),
      O => clk_gen_CNT0_s_CNT3_2(15)
    );
  clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => avg_module_Maccum_s_data_cy(0),
      S => clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_cy_0_rt_537,
      O => clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_cy(0)
    );
  clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_xor_0_Q : XORCY
    port map (
      CI => N1,
      LI => clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_cy_0_rt_537,
      O => clk_gen_CNT0_s_CNT3_D_addsub0000(0)
    );
  clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_cy_1_Q : MUXCY
    port map (
      CI => clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_cy(0),
      DI => N1,
      S => clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_lut(1),
      O => clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_cy(1)
    );
  clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_xor_1_Q : XORCY
    port map (
      CI => clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_cy(0),
      LI => clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_lut(1),
      O => clk_gen_CNT0_s_CNT3_D_addsub0000(1)
    );
  clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_cy_2_Q : MUXCY
    port map (
      CI => clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_cy(1),
      DI => N1,
      S => clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_lut(2),
      O => clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_cy(2)
    );
  clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_xor_2_Q : XORCY
    port map (
      CI => clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_cy(1),
      LI => clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_lut(2),
      O => clk_gen_CNT0_s_CNT3_D_addsub0000(2)
    );
  clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_cy_3_Q : MUXCY
    port map (
      CI => clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_cy(2),
      DI => N1,
      S => clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_lut(3),
      O => clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_cy(3)
    );
  clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_xor_3_Q : XORCY
    port map (
      CI => clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_cy(2),
      LI => clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_lut(3),
      O => clk_gen_CNT0_s_CNT3_D_addsub0000(3)
    );
  clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_cy_4_Q : MUXCY
    port map (
      CI => clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_cy(3),
      DI => N1,
      S => clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_lut(4),
      O => clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_cy(4)
    );
  clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_xor_4_Q : XORCY
    port map (
      CI => clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_cy(3),
      LI => clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_lut(4),
      O => clk_gen_CNT0_s_CNT3_D_addsub0000(4)
    );
  clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_cy_5_Q : MUXCY
    port map (
      CI => clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_cy(4),
      DI => N1,
      S => clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_lut(5),
      O => clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_cy(5)
    );
  clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_xor_5_Q : XORCY
    port map (
      CI => clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_cy(4),
      LI => clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_lut(5),
      O => clk_gen_CNT0_s_CNT3_D_addsub0000(5)
    );
  clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_cy_6_Q : MUXCY
    port map (
      CI => clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_cy(5),
      DI => N1,
      S => clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_lut(6),
      O => clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_cy(6)
    );
  clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_xor_6_Q : XORCY
    port map (
      CI => clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_cy(5),
      LI => clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_lut(6),
      O => clk_gen_CNT0_s_CNT3_D_addsub0000(6)
    );
  clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_cy_7_Q : MUXCY
    port map (
      CI => clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_cy(6),
      DI => N1,
      S => clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_lut(7),
      O => clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_cy(7)
    );
  clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_xor_7_Q : XORCY
    port map (
      CI => clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_cy(6),
      LI => clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_lut(7),
      O => clk_gen_CNT0_s_CNT3_D_addsub0000(7)
    );
  clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_cy_8_Q : MUXCY
    port map (
      CI => clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_cy(7),
      DI => N1,
      S => clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_lut(8),
      O => clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_cy(8)
    );
  clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_xor_8_Q : XORCY
    port map (
      CI => clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_cy(7),
      LI => clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_lut(8),
      O => clk_gen_CNT0_s_CNT3_D_addsub0000(8)
    );
  clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_cy_9_Q : MUXCY
    port map (
      CI => clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_cy(8),
      DI => N1,
      S => clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_lut(9),
      O => clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_cy(9)
    );
  clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_xor_9_Q : XORCY
    port map (
      CI => clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_cy(8),
      LI => clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_lut(9),
      O => clk_gen_CNT0_s_CNT3_D_addsub0000(9)
    );
  clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_cy_10_Q : MUXCY
    port map (
      CI => clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_cy(9),
      DI => N1,
      S => clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_lut(10),
      O => clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_cy(10)
    );
  clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_xor_10_Q : XORCY
    port map (
      CI => clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_cy(9),
      LI => clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_lut(10),
      O => clk_gen_CNT0_s_CNT3_D_addsub0000(10)
    );
  clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_cy_11_Q : MUXCY
    port map (
      CI => clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_cy(10),
      DI => N1,
      S => clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_lut(11),
      O => clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_cy(11)
    );
  clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_xor_11_Q : XORCY
    port map (
      CI => clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_cy(10),
      LI => clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_lut(11),
      O => clk_gen_CNT0_s_CNT3_D_addsub0000(11)
    );
  clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_cy_12_Q : MUXCY
    port map (
      CI => clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_cy(11),
      DI => N1,
      S => clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_lut(12),
      O => clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_cy(12)
    );
  clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_xor_12_Q : XORCY
    port map (
      CI => clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_cy(11),
      LI => clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_lut(12),
      O => clk_gen_CNT0_s_CNT3_D_addsub0000(12)
    );
  clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_cy_13_Q : MUXCY
    port map (
      CI => clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_cy(12),
      DI => N1,
      S => clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_lut(13),
      O => clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_cy(13)
    );
  clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_xor_13_Q : XORCY
    port map (
      CI => clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_cy(12),
      LI => clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_lut(13),
      O => clk_gen_CNT0_s_CNT3_D_addsub0000(13)
    );
  clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_xor_14_Q : XORCY
    port map (
      CI => clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_cy(13),
      LI => clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_lut(14),
      O => clk_gen_CNT0_s_CNT3_D_addsub0000(14)
    );
  clk_gen_CNT0_Mcount_s_CNT2_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => avg_module_Maccum_s_data_cy(0),
      S => clk_gen_CNT0_Mcount_s_CNT2_cy_0_rt_459,
      O => clk_gen_CNT0_Mcount_s_CNT2_cy(0)
    );
  clk_gen_CNT0_Mcount_s_CNT2_xor_0_Q : XORCY
    port map (
      CI => N1,
      LI => clk_gen_CNT0_Mcount_s_CNT2_cy_0_rt_459,
      O => clk_gen_CNT0_Result(0)
    );
  clk_gen_CNT0_Mcount_s_CNT2_cy_1_Q : MUXCY
    port map (
      CI => clk_gen_CNT0_Mcount_s_CNT2_cy(0),
      DI => N1,
      S => clk_gen_CNT0_Mcount_s_CNT2_lut(1),
      O => clk_gen_CNT0_Mcount_s_CNT2_cy(1)
    );
  clk_gen_CNT0_Mcount_s_CNT2_xor_1_Q : XORCY
    port map (
      CI => clk_gen_CNT0_Mcount_s_CNT2_cy(0),
      LI => clk_gen_CNT0_Mcount_s_CNT2_lut(1),
      O => clk_gen_CNT0_Result(1)
    );
  clk_gen_CNT0_Mcount_s_CNT2_cy_2_Q : MUXCY
    port map (
      CI => clk_gen_CNT0_Mcount_s_CNT2_cy(1),
      DI => N1,
      S => clk_gen_CNT0_Mcount_s_CNT2_lut(2),
      O => clk_gen_CNT0_Mcount_s_CNT2_cy(2)
    );
  clk_gen_CNT0_Mcount_s_CNT2_xor_2_Q : XORCY
    port map (
      CI => clk_gen_CNT0_Mcount_s_CNT2_cy(1),
      LI => clk_gen_CNT0_Mcount_s_CNT2_lut(2),
      O => clk_gen_CNT0_Result(2)
    );
  clk_gen_CNT0_Mcount_s_CNT2_cy_3_Q : MUXCY
    port map (
      CI => clk_gen_CNT0_Mcount_s_CNT2_cy(2),
      DI => N1,
      S => clk_gen_CNT0_Mcount_s_CNT2_lut(3),
      O => clk_gen_CNT0_Mcount_s_CNT2_cy(3)
    );
  clk_gen_CNT0_Mcount_s_CNT2_xor_3_Q : XORCY
    port map (
      CI => clk_gen_CNT0_Mcount_s_CNT2_cy(2),
      LI => clk_gen_CNT0_Mcount_s_CNT2_lut(3),
      O => clk_gen_CNT0_Result(3)
    );
  clk_gen_CNT0_Mcount_s_CNT2_cy_4_Q : MUXCY
    port map (
      CI => clk_gen_CNT0_Mcount_s_CNT2_cy(3),
      DI => N1,
      S => clk_gen_CNT0_Mcount_s_CNT2_lut(4),
      O => clk_gen_CNT0_Mcount_s_CNT2_cy(4)
    );
  clk_gen_CNT0_Mcount_s_CNT2_xor_4_Q : XORCY
    port map (
      CI => clk_gen_CNT0_Mcount_s_CNT2_cy(3),
      LI => clk_gen_CNT0_Mcount_s_CNT2_lut(4),
      O => clk_gen_CNT0_Result(4)
    );
  clk_gen_CNT0_Mcount_s_CNT2_cy_5_Q : MUXCY
    port map (
      CI => clk_gen_CNT0_Mcount_s_CNT2_cy(4),
      DI => N1,
      S => clk_gen_CNT0_Mcount_s_CNT2_lut(5),
      O => clk_gen_CNT0_Mcount_s_CNT2_cy(5)
    );
  clk_gen_CNT0_Mcount_s_CNT2_xor_5_Q : XORCY
    port map (
      CI => clk_gen_CNT0_Mcount_s_CNT2_cy(4),
      LI => clk_gen_CNT0_Mcount_s_CNT2_lut(5),
      O => clk_gen_CNT0_Result(5)
    );
  clk_gen_CNT0_Mcount_s_CNT2_cy_6_Q : MUXCY
    port map (
      CI => clk_gen_CNT0_Mcount_s_CNT2_cy(5),
      DI => N1,
      S => clk_gen_CNT0_Mcount_s_CNT2_lut(6),
      O => clk_gen_CNT0_Mcount_s_CNT2_cy(6)
    );
  clk_gen_CNT0_Mcount_s_CNT2_xor_6_Q : XORCY
    port map (
      CI => clk_gen_CNT0_Mcount_s_CNT2_cy(5),
      LI => clk_gen_CNT0_Mcount_s_CNT2_lut(6),
      O => clk_gen_CNT0_Result(6)
    );
  clk_gen_CNT0_Mcount_s_CNT2_cy_7_Q : MUXCY
    port map (
      CI => clk_gen_CNT0_Mcount_s_CNT2_cy(6),
      DI => N1,
      S => clk_gen_CNT0_Mcount_s_CNT2_lut(7),
      O => clk_gen_CNT0_Mcount_s_CNT2_cy(7)
    );
  clk_gen_CNT0_Mcount_s_CNT2_xor_7_Q : XORCY
    port map (
      CI => clk_gen_CNT0_Mcount_s_CNT2_cy(6),
      LI => clk_gen_CNT0_Mcount_s_CNT2_lut(7),
      O => clk_gen_CNT0_Result(7)
    );
  clk_gen_CNT0_Mcount_s_CNT2_cy_8_Q : MUXCY
    port map (
      CI => clk_gen_CNT0_Mcount_s_CNT2_cy(7),
      DI => N1,
      S => clk_gen_CNT0_Mcount_s_CNT2_lut(8),
      O => clk_gen_CNT0_Mcount_s_CNT2_cy(8)
    );
  clk_gen_CNT0_Mcount_s_CNT2_xor_8_Q : XORCY
    port map (
      CI => clk_gen_CNT0_Mcount_s_CNT2_cy(7),
      LI => clk_gen_CNT0_Mcount_s_CNT2_lut(8),
      O => clk_gen_CNT0_Result(8)
    );
  clk_gen_CNT0_Mcount_s_CNT2_cy_9_Q : MUXCY
    port map (
      CI => clk_gen_CNT0_Mcount_s_CNT2_cy(8),
      DI => N1,
      S => clk_gen_CNT0_Mcount_s_CNT2_lut(9),
      O => clk_gen_CNT0_Mcount_s_CNT2_cy(9)
    );
  clk_gen_CNT0_Mcount_s_CNT2_xor_9_Q : XORCY
    port map (
      CI => clk_gen_CNT0_Mcount_s_CNT2_cy(8),
      LI => clk_gen_CNT0_Mcount_s_CNT2_lut(9),
      O => clk_gen_CNT0_Result(9)
    );
  clk_gen_CNT0_Mcount_s_CNT2_cy_10_Q : MUXCY
    port map (
      CI => clk_gen_CNT0_Mcount_s_CNT2_cy(9),
      DI => N1,
      S => clk_gen_CNT0_Mcount_s_CNT2_lut(10),
      O => clk_gen_CNT0_Mcount_s_CNT2_cy(10)
    );
  clk_gen_CNT0_Mcount_s_CNT2_xor_10_Q : XORCY
    port map (
      CI => clk_gen_CNT0_Mcount_s_CNT2_cy(9),
      LI => clk_gen_CNT0_Mcount_s_CNT2_lut(10),
      O => clk_gen_CNT0_Result(10)
    );
  clk_gen_CNT0_Mcount_s_CNT2_cy_11_Q : MUXCY
    port map (
      CI => clk_gen_CNT0_Mcount_s_CNT2_cy(10),
      DI => N1,
      S => clk_gen_CNT0_Mcount_s_CNT2_lut(11),
      O => clk_gen_CNT0_Mcount_s_CNT2_cy(11)
    );
  clk_gen_CNT0_Mcount_s_CNT2_xor_11_Q : XORCY
    port map (
      CI => clk_gen_CNT0_Mcount_s_CNT2_cy(10),
      LI => clk_gen_CNT0_Mcount_s_CNT2_lut(11),
      O => clk_gen_CNT0_Result(11)
    );
  clk_gen_CNT0_Mcount_s_CNT2_cy_12_Q : MUXCY
    port map (
      CI => clk_gen_CNT0_Mcount_s_CNT2_cy(11),
      DI => N1,
      S => clk_gen_CNT0_Mcount_s_CNT2_lut(12),
      O => clk_gen_CNT0_Mcount_s_CNT2_cy(12)
    );
  clk_gen_CNT0_Mcount_s_CNT2_xor_12_Q : XORCY
    port map (
      CI => clk_gen_CNT0_Mcount_s_CNT2_cy(11),
      LI => clk_gen_CNT0_Mcount_s_CNT2_lut(12),
      O => clk_gen_CNT0_Result(12)
    );
  clk_gen_CNT0_Mcount_s_CNT2_cy_13_Q : MUXCY
    port map (
      CI => clk_gen_CNT0_Mcount_s_CNT2_cy(12),
      DI => N1,
      S => clk_gen_CNT0_Mcount_s_CNT2_lut(13),
      O => clk_gen_CNT0_Mcount_s_CNT2_cy(13)
    );
  clk_gen_CNT0_Mcount_s_CNT2_xor_13_Q : XORCY
    port map (
      CI => clk_gen_CNT0_Mcount_s_CNT2_cy(12),
      LI => clk_gen_CNT0_Mcount_s_CNT2_lut(13),
      O => clk_gen_CNT0_Result(13)
    );
  clk_gen_CNT0_Mcount_s_CNT2_cy_14_Q : MUXCY
    port map (
      CI => clk_gen_CNT0_Mcount_s_CNT2_cy(13),
      DI => N1,
      S => clk_gen_CNT0_Mcount_s_CNT2_lut(14),
      O => clk_gen_CNT0_Mcount_s_CNT2_cy(14)
    );
  clk_gen_CNT0_Mcount_s_CNT2_xor_14_Q : XORCY
    port map (
      CI => clk_gen_CNT0_Mcount_s_CNT2_cy(13),
      LI => clk_gen_CNT0_Mcount_s_CNT2_lut(14),
      O => clk_gen_CNT0_Result(14)
    );
  clk_gen_CNT0_Mcount_s_CNT2_xor_15_Q : XORCY
    port map (
      CI => clk_gen_CNT0_Mcount_s_CNT2_cy(14),
      LI => clk_gen_CNT0_Mcount_s_CNT2_lut(15),
      O => clk_gen_CNT0_Result(15)
    );
  clk_gen_state_FSM_FFd3 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_0_OBUF_917,
      D => clk_gen_state_FSM_FFd4_867,
      R => b_reset_b,
      Q => clk_gen_state_FSM_FFd3_866
    );
  clk_gen_state_FSM_FFd4 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_0_OBUF_917,
      D => clk_gen_state_FSM_FFd5_868,
      R => b_reset_b,
      Q => clk_gen_state_FSM_FFd4_867
    );
  clk_gen_state_FSM_FFd5 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_0_OBUF_917,
      D => clk_gen_s_addr_not0001,
      R => b_reset_b,
      Q => clk_gen_state_FSM_FFd5_868
    );
  clk_gen_state_FSM_FFd6 : FDS
    generic map(
      INIT => '1'
    )
    port map (
      C => m_TP_0_OBUF_917,
      D => clk_gen_state_FSM_FFd6_In,
      S => b_reset_b,
      Q => clk_gen_state_FSM_FFd6_869
    );
  clk_gen_state_FSM_FFd1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_0_OBUF_917,
      D => clk_gen_state_FSM_FFd1_In,
      R => b_reset_b,
      Q => clk_gen_state_FSM_FFd1_862
    );
  clk_gen_s_data_7 : FDRE
    port map (
      C => m_TP_0_OBUF_917,
      CE => clk_gen_state_FSM_FFd5_868,
      D => N101,
      R => b_reset_b,
      Q => clk_gen_s_data(7)
    );
  clk_gen_s_data_6 : FDRE
    port map (
      C => m_TP_0_OBUF_917,
      CE => clk_gen_state_FSM_FFd5_868,
      D => N102,
      R => b_reset_b,
      Q => clk_gen_s_data(6)
    );
  clk_gen_s_data_5 : FDRE
    port map (
      C => m_TP_0_OBUF_917,
      CE => clk_gen_state_FSM_FFd5_868,
      D => N103,
      R => b_reset_b,
      Q => clk_gen_s_data(5)
    );
  clk_gen_s_data_4 : FDRE
    port map (
      C => m_TP_0_OBUF_917,
      CE => clk_gen_state_FSM_FFd5_868,
      D => N104,
      R => b_reset_b,
      Q => clk_gen_s_data(4)
    );
  clk_gen_s_data_3 : FDRE
    port map (
      C => m_TP_0_OBUF_917,
      CE => clk_gen_state_FSM_FFd5_868,
      D => N105,
      R => b_reset_b,
      Q => clk_gen_s_data(3)
    );
  clk_gen_s_data_2 : FDRE
    port map (
      C => m_TP_0_OBUF_917,
      CE => clk_gen_state_FSM_FFd5_868,
      D => N106,
      R => b_reset_b,
      Q => clk_gen_s_data(2)
    );
  clk_gen_s_data_1 : FDRE
    port map (
      C => m_TP_0_OBUF_917,
      CE => clk_gen_state_FSM_FFd5_868,
      D => N107,
      R => b_reset_b,
      Q => clk_gen_s_data(1)
    );
  clk_gen_s_data_0 : FDRE
    port map (
      C => m_TP_0_OBUF_917,
      CE => clk_gen_state_FSM_FFd5_868,
      D => N108,
      R => b_reset_b,
      Q => clk_gen_s_data(0)
    );
  clk_gen_s_wr_b : FDS
    port map (
      C => m_TP_0_OBUF_917,
      D => clk_gen_s_wr_b_mux0000,
      S => b_reset_b,
      Q => clk_gen_s_wr_b_857
    );
  clk_gen_s_addr_1 : FDSE
    port map (
      C => m_TP_0_OBUF_917,
      CE => clk_gen_s_addr_not0001,
      D => m_address_1_IBUF_931,
      S => b_reset_b,
      Q => clk_gen_s_addr(1)
    );
  clk_gen_s_addr_0 : FDRE
    port map (
      C => m_TP_0_OBUF_917,
      CE => clk_gen_s_addr_not0001,
      D => m_address_0_IBUF_930,
      R => b_reset_b,
      Q => clk_gen_s_addr(0)
    );
  sig_controller_dac_ctr_s_reg_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_dac_ctr_s_ps_cmp_eq0001,
      D => sig_controller_dac_ctr_s_reg_sub0000(0),
      Q => sig_controller_dac_ctr_s_reg(0)
    );
  sig_controller_dac_ctr_s_reg_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_dac_ctr_s_ps_cmp_eq0001,
      D => sig_controller_dac_ctr_s_reg_sub0000(1),
      Q => sig_controller_dac_ctr_s_reg(1)
    );
  sig_controller_dac_ctr_s_reg_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_dac_ctr_s_ps_cmp_eq0001,
      D => sig_controller_dac_ctr_s_reg_sub0000(2),
      Q => sig_controller_dac_ctr_s_reg(2)
    );
  sig_controller_dac_ctr_s_reg_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_dac_ctr_s_ps_cmp_eq0001,
      D => sig_controller_dac_ctr_s_reg_sub0000(3),
      Q => sig_controller_dac_ctr_s_reg(3)
    );
  sig_controller_dac_ctr_s_reg_4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_dac_ctr_s_ps_cmp_eq0001,
      D => sig_controller_dac_ctr_s_reg_sub0000(4),
      Q => sig_controller_dac_ctr_s_reg(4)
    );
  sig_controller_dac_ctr_s_reg_5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_dac_ctr_s_ps_cmp_eq0001,
      D => sig_controller_dac_ctr_s_reg_sub0000(5),
      Q => sig_controller_dac_ctr_s_reg(5)
    );
  sig_controller_dac_ctr_s_reg_6 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_dac_ctr_s_ps_cmp_eq0001,
      D => sig_controller_dac_ctr_s_reg_sub0000(6),
      Q => sig_controller_dac_ctr_s_reg(6)
    );
  sig_controller_dac_ctr_s_reg_7 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_dac_ctr_s_ps_cmp_eq0001,
      D => sig_controller_dac_ctr_s_reg_sub0000(7),
      Q => sig_controller_dac_ctr_s_reg(7)
    );
  sig_controller_dac_ctr_s_reg_8 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_dac_ctr_s_ps_cmp_eq0001,
      D => sig_controller_dac_ctr_s_reg_sub0000(8),
      Q => sig_controller_dac_ctr_s_reg(8)
    );
  sig_controller_dac_ctr_s_reg_9 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_dac_ctr_s_ps_cmp_eq0001,
      D => sig_controller_dac_ctr_s_reg_sub0000(9),
      Q => sig_controller_dac_ctr_s_reg(9)
    );
  sig_controller_dac_ctr_s_reg_10 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_dac_ctr_s_ps_cmp_eq0001,
      D => sig_controller_dac_ctr_s_reg_sub0000(10),
      Q => sig_controller_dac_ctr_s_reg(10)
    );
  sig_controller_dac_ctr_s_enb2 : LD_1
    generic map(
      INIT => '0'
    )
    port map (
      D => sig_controller_dac_ctr_s_ps_FSM_FFd1_1256,
      G => sig_controller_dac_ctr_s_ps_cmp_eq0001,
      Q => sig_controller_dac_ctr_s_enb2_1255
    );
  sig_controller_dac_ctr_s_ps_FSM_FFd2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_0_OBUF_917,
      D => sig_controller_dac_ctr_s_ps_FSM_FFd2_In,
      Q => sig_controller_dac_ctr_s_ps_FSM_FFd2_1257
    );
  sig_controller_dac_ctr_s_cnt_0 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_1_OBUF_919,
      D => sig_controller_dac_ctr_Result(0),
      R => sig_controller_dac_ctr_s_cnt_not0001,
      Q => sig_controller_dac_ctr_s_cnt(0)
    );
  sig_controller_dac_ctr_s_cnt_1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_1_OBUF_919,
      D => sig_controller_dac_ctr_Result(1),
      R => sig_controller_dac_ctr_s_cnt_not0001,
      Q => sig_controller_dac_ctr_s_cnt(1)
    );
  sig_controller_dac_ctr_s_cnt_2 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_1_OBUF_919,
      D => sig_controller_dac_ctr_Result(2),
      R => sig_controller_dac_ctr_s_cnt_not0001,
      Q => sig_controller_dac_ctr_s_cnt(2)
    );
  sig_controller_dac_ctr_s_cnt_3 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_1_OBUF_919,
      D => sig_controller_dac_ctr_Result(3),
      R => sig_controller_dac_ctr_s_cnt_not0001,
      Q => sig_controller_dac_ctr_s_cnt(3)
    );
  sig_controller_dac_ctr_s_cnt_4 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_1_OBUF_919,
      D => sig_controller_dac_ctr_Result(4),
      R => sig_controller_dac_ctr_s_cnt_not0001,
      Q => sig_controller_dac_ctr_s_cnt(4)
    );
  sig_controller_dac_ctr_s_cnt_5 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_1_OBUF_919,
      D => sig_controller_dac_ctr_Result(5),
      R => sig_controller_dac_ctr_s_cnt_not0001,
      Q => sig_controller_dac_ctr_s_cnt(5)
    );
  sig_controller_dac_ctr_s_cnt_6 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_1_OBUF_919,
      D => sig_controller_dac_ctr_Result(6),
      R => sig_controller_dac_ctr_s_cnt_not0001,
      Q => sig_controller_dac_ctr_s_cnt(6)
    );
  sig_controller_dac_ctr_s_cnt_7 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_1_OBUF_919,
      D => sig_controller_dac_ctr_Result(7),
      R => sig_controller_dac_ctr_s_cnt_not0001,
      Q => sig_controller_dac_ctr_s_cnt(7)
    );
  sig_controller_dac_ctr_s_cnt_8 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_1_OBUF_919,
      D => sig_controller_dac_ctr_Result(8),
      R => sig_controller_dac_ctr_s_cnt_not0001,
      Q => sig_controller_dac_ctr_s_cnt(8)
    );
  sig_controller_dac_ctr_s_cnt_9 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_1_OBUF_919,
      D => sig_controller_dac_ctr_Result(9),
      R => sig_controller_dac_ctr_s_cnt_not0001,
      Q => sig_controller_dac_ctr_s_cnt(9)
    );
  sig_controller_dac_ctr_s_cnt_10 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_1_OBUF_919,
      D => sig_controller_dac_ctr_Result(10),
      R => sig_controller_dac_ctr_s_cnt_not0001,
      Q => sig_controller_dac_ctr_s_cnt(10)
    );
  sig_controller_dac_ctr_Mcount_s_cnt_cy_0_Q : MUXCY
    port map (
      CI => avg_module_Maccum_s_data_cy(0),
      DI => N1,
      S => sig_controller_dac_ctr_Mcount_s_cnt_lut(0),
      O => sig_controller_dac_ctr_Mcount_s_cnt_cy(0)
    );
  sig_controller_dac_ctr_Mcount_s_cnt_xor_0_Q : XORCY
    port map (
      CI => avg_module_Maccum_s_data_cy(0),
      LI => sig_controller_dac_ctr_Mcount_s_cnt_lut(0),
      O => sig_controller_dac_ctr_Result(0)
    );
  sig_controller_dac_ctr_Mcount_s_cnt_cy_1_Q : MUXCY
    port map (
      CI => sig_controller_dac_ctr_Mcount_s_cnt_cy(0),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_dac_ctr_Mcount_s_cnt_cy_1_rt_1208,
      O => sig_controller_dac_ctr_Mcount_s_cnt_cy(1)
    );
  sig_controller_dac_ctr_Mcount_s_cnt_xor_1_Q : XORCY
    port map (
      CI => sig_controller_dac_ctr_Mcount_s_cnt_cy(0),
      LI => sig_controller_dac_ctr_Mcount_s_cnt_cy_1_rt_1208,
      O => sig_controller_dac_ctr_Result(1)
    );
  sig_controller_dac_ctr_Mcount_s_cnt_cy_2_Q : MUXCY
    port map (
      CI => sig_controller_dac_ctr_Mcount_s_cnt_cy(1),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_dac_ctr_Mcount_s_cnt_cy_2_rt_1210,
      O => sig_controller_dac_ctr_Mcount_s_cnt_cy(2)
    );
  sig_controller_dac_ctr_Mcount_s_cnt_xor_2_Q : XORCY
    port map (
      CI => sig_controller_dac_ctr_Mcount_s_cnt_cy(1),
      LI => sig_controller_dac_ctr_Mcount_s_cnt_cy_2_rt_1210,
      O => sig_controller_dac_ctr_Result(2)
    );
  sig_controller_dac_ctr_Mcount_s_cnt_cy_3_Q : MUXCY
    port map (
      CI => sig_controller_dac_ctr_Mcount_s_cnt_cy(2),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_dac_ctr_Mcount_s_cnt_cy_3_rt_1212,
      O => sig_controller_dac_ctr_Mcount_s_cnt_cy(3)
    );
  sig_controller_dac_ctr_Mcount_s_cnt_xor_3_Q : XORCY
    port map (
      CI => sig_controller_dac_ctr_Mcount_s_cnt_cy(2),
      LI => sig_controller_dac_ctr_Mcount_s_cnt_cy_3_rt_1212,
      O => sig_controller_dac_ctr_Result(3)
    );
  sig_controller_dac_ctr_Mcount_s_cnt_cy_4_Q : MUXCY
    port map (
      CI => sig_controller_dac_ctr_Mcount_s_cnt_cy(3),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_dac_ctr_Mcount_s_cnt_cy_4_rt_1214,
      O => sig_controller_dac_ctr_Mcount_s_cnt_cy(4)
    );
  sig_controller_dac_ctr_Mcount_s_cnt_xor_4_Q : XORCY
    port map (
      CI => sig_controller_dac_ctr_Mcount_s_cnt_cy(3),
      LI => sig_controller_dac_ctr_Mcount_s_cnt_cy_4_rt_1214,
      O => sig_controller_dac_ctr_Result(4)
    );
  sig_controller_dac_ctr_Mcount_s_cnt_cy_5_Q : MUXCY
    port map (
      CI => sig_controller_dac_ctr_Mcount_s_cnt_cy(4),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_dac_ctr_Mcount_s_cnt_cy_5_rt_1216,
      O => sig_controller_dac_ctr_Mcount_s_cnt_cy(5)
    );
  sig_controller_dac_ctr_Mcount_s_cnt_xor_5_Q : XORCY
    port map (
      CI => sig_controller_dac_ctr_Mcount_s_cnt_cy(4),
      LI => sig_controller_dac_ctr_Mcount_s_cnt_cy_5_rt_1216,
      O => sig_controller_dac_ctr_Result(5)
    );
  sig_controller_dac_ctr_Mcount_s_cnt_cy_6_Q : MUXCY
    port map (
      CI => sig_controller_dac_ctr_Mcount_s_cnt_cy(5),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_dac_ctr_Mcount_s_cnt_cy_6_rt_1218,
      O => sig_controller_dac_ctr_Mcount_s_cnt_cy(6)
    );
  sig_controller_dac_ctr_Mcount_s_cnt_xor_6_Q : XORCY
    port map (
      CI => sig_controller_dac_ctr_Mcount_s_cnt_cy(5),
      LI => sig_controller_dac_ctr_Mcount_s_cnt_cy_6_rt_1218,
      O => sig_controller_dac_ctr_Result(6)
    );
  sig_controller_dac_ctr_Mcount_s_cnt_cy_7_Q : MUXCY
    port map (
      CI => sig_controller_dac_ctr_Mcount_s_cnt_cy(6),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_dac_ctr_Mcount_s_cnt_cy_7_rt_1220,
      O => sig_controller_dac_ctr_Mcount_s_cnt_cy(7)
    );
  sig_controller_dac_ctr_Mcount_s_cnt_xor_7_Q : XORCY
    port map (
      CI => sig_controller_dac_ctr_Mcount_s_cnt_cy(6),
      LI => sig_controller_dac_ctr_Mcount_s_cnt_cy_7_rt_1220,
      O => sig_controller_dac_ctr_Result(7)
    );
  sig_controller_dac_ctr_Mcount_s_cnt_cy_8_Q : MUXCY
    port map (
      CI => sig_controller_dac_ctr_Mcount_s_cnt_cy(7),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_dac_ctr_Mcount_s_cnt_cy_8_rt_1222,
      O => sig_controller_dac_ctr_Mcount_s_cnt_cy(8)
    );
  sig_controller_dac_ctr_Mcount_s_cnt_xor_8_Q : XORCY
    port map (
      CI => sig_controller_dac_ctr_Mcount_s_cnt_cy(7),
      LI => sig_controller_dac_ctr_Mcount_s_cnt_cy_8_rt_1222,
      O => sig_controller_dac_ctr_Result(8)
    );
  sig_controller_dac_ctr_Mcount_s_cnt_cy_9_Q : MUXCY
    port map (
      CI => sig_controller_dac_ctr_Mcount_s_cnt_cy(8),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_dac_ctr_Mcount_s_cnt_cy_9_rt_1224,
      O => sig_controller_dac_ctr_Mcount_s_cnt_cy(9)
    );
  sig_controller_dac_ctr_Mcount_s_cnt_xor_9_Q : XORCY
    port map (
      CI => sig_controller_dac_ctr_Mcount_s_cnt_cy(8),
      LI => sig_controller_dac_ctr_Mcount_s_cnt_cy_9_rt_1224,
      O => sig_controller_dac_ctr_Result(9)
    );
  sig_controller_dac_ctr_Mcount_s_cnt_xor_10_Q : XORCY
    port map (
      CI => sig_controller_dac_ctr_Mcount_s_cnt_cy(9),
      LI => sig_controller_dac_ctr_Mcount_s_cnt_xor_10_rt_1226,
      O => sig_controller_dac_ctr_Result(10)
    );
  sig_controller_dac_ctr_Mcompar_s_cnt_cmp_lt0000_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => sig_controller_dac_ctr_s_cnt(0),
      I1 => sig_controller_dac_ctr_s_reg(0),
      O => sig_controller_dac_ctr_Mcompar_s_cnt_cmp_lt0000_lut(0)
    );
  sig_controller_dac_ctr_Mcompar_s_cnt_cmp_lt0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => sig_controller_dac_ctr_s_cnt(0),
      S => sig_controller_dac_ctr_Mcompar_s_cnt_cmp_lt0000_lut(0),
      O => sig_controller_dac_ctr_Mcompar_s_cnt_cmp_lt0000_cy(0)
    );
  sig_controller_dac_ctr_Mcompar_s_cnt_cmp_lt0000_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => sig_controller_dac_ctr_s_cnt(1),
      I1 => sig_controller_dac_ctr_s_reg(1),
      O => sig_controller_dac_ctr_Mcompar_s_cnt_cmp_lt0000_lut(1)
    );
  sig_controller_dac_ctr_Mcompar_s_cnt_cmp_lt0000_cy_1_Q : MUXCY
    port map (
      CI => sig_controller_dac_ctr_Mcompar_s_cnt_cmp_lt0000_cy(0),
      DI => sig_controller_dac_ctr_s_cnt(1),
      S => sig_controller_dac_ctr_Mcompar_s_cnt_cmp_lt0000_lut(1),
      O => sig_controller_dac_ctr_Mcompar_s_cnt_cmp_lt0000_cy(1)
    );
  sig_controller_dac_ctr_Mcompar_s_cnt_cmp_lt0000_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => sig_controller_dac_ctr_s_cnt(2),
      I1 => sig_controller_dac_ctr_s_reg(2),
      O => sig_controller_dac_ctr_Mcompar_s_cnt_cmp_lt0000_lut(2)
    );
  sig_controller_dac_ctr_Mcompar_s_cnt_cmp_lt0000_cy_2_Q : MUXCY
    port map (
      CI => sig_controller_dac_ctr_Mcompar_s_cnt_cmp_lt0000_cy(1),
      DI => sig_controller_dac_ctr_s_cnt(2),
      S => sig_controller_dac_ctr_Mcompar_s_cnt_cmp_lt0000_lut(2),
      O => sig_controller_dac_ctr_Mcompar_s_cnt_cmp_lt0000_cy(2)
    );
  sig_controller_dac_ctr_Mcompar_s_cnt_cmp_lt0000_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => sig_controller_dac_ctr_s_cnt(3),
      I1 => sig_controller_dac_ctr_s_reg(3),
      O => sig_controller_dac_ctr_Mcompar_s_cnt_cmp_lt0000_lut(3)
    );
  sig_controller_dac_ctr_Mcompar_s_cnt_cmp_lt0000_cy_3_Q : MUXCY
    port map (
      CI => sig_controller_dac_ctr_Mcompar_s_cnt_cmp_lt0000_cy(2),
      DI => sig_controller_dac_ctr_s_cnt(3),
      S => sig_controller_dac_ctr_Mcompar_s_cnt_cmp_lt0000_lut(3),
      O => sig_controller_dac_ctr_Mcompar_s_cnt_cmp_lt0000_cy(3)
    );
  sig_controller_dac_ctr_Mcompar_s_cnt_cmp_lt0000_lut_4_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => sig_controller_dac_ctr_s_cnt(4),
      I1 => sig_controller_dac_ctr_s_reg(4),
      O => sig_controller_dac_ctr_Mcompar_s_cnt_cmp_lt0000_lut(4)
    );
  sig_controller_dac_ctr_Mcompar_s_cnt_cmp_lt0000_cy_4_Q : MUXCY
    port map (
      CI => sig_controller_dac_ctr_Mcompar_s_cnt_cmp_lt0000_cy(3),
      DI => sig_controller_dac_ctr_s_cnt(4),
      S => sig_controller_dac_ctr_Mcompar_s_cnt_cmp_lt0000_lut(4),
      O => sig_controller_dac_ctr_Mcompar_s_cnt_cmp_lt0000_cy(4)
    );
  sig_controller_dac_ctr_Mcompar_s_cnt_cmp_lt0000_lut_5_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => sig_controller_dac_ctr_s_cnt(5),
      I1 => sig_controller_dac_ctr_s_reg(5),
      O => sig_controller_dac_ctr_Mcompar_s_cnt_cmp_lt0000_lut(5)
    );
  sig_controller_dac_ctr_Mcompar_s_cnt_cmp_lt0000_cy_5_Q : MUXCY
    port map (
      CI => sig_controller_dac_ctr_Mcompar_s_cnt_cmp_lt0000_cy(4),
      DI => sig_controller_dac_ctr_s_cnt(5),
      S => sig_controller_dac_ctr_Mcompar_s_cnt_cmp_lt0000_lut(5),
      O => sig_controller_dac_ctr_Mcompar_s_cnt_cmp_lt0000_cy(5)
    );
  sig_controller_dac_ctr_Mcompar_s_cnt_cmp_lt0000_lut_6_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => sig_controller_dac_ctr_s_cnt(6),
      I1 => sig_controller_dac_ctr_s_reg(6),
      O => sig_controller_dac_ctr_Mcompar_s_cnt_cmp_lt0000_lut(6)
    );
  sig_controller_dac_ctr_Mcompar_s_cnt_cmp_lt0000_cy_6_Q : MUXCY
    port map (
      CI => sig_controller_dac_ctr_Mcompar_s_cnt_cmp_lt0000_cy(5),
      DI => sig_controller_dac_ctr_s_cnt(6),
      S => sig_controller_dac_ctr_Mcompar_s_cnt_cmp_lt0000_lut(6),
      O => sig_controller_dac_ctr_Mcompar_s_cnt_cmp_lt0000_cy(6)
    );
  sig_controller_dac_ctr_Mcompar_s_cnt_cmp_lt0000_lut_7_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => sig_controller_dac_ctr_s_cnt(7),
      I1 => sig_controller_dac_ctr_s_reg(7),
      O => sig_controller_dac_ctr_Mcompar_s_cnt_cmp_lt0000_lut(7)
    );
  sig_controller_dac_ctr_Mcompar_s_cnt_cmp_lt0000_cy_7_Q : MUXCY
    port map (
      CI => sig_controller_dac_ctr_Mcompar_s_cnt_cmp_lt0000_cy(6),
      DI => sig_controller_dac_ctr_s_cnt(7),
      S => sig_controller_dac_ctr_Mcompar_s_cnt_cmp_lt0000_lut(7),
      O => sig_controller_dac_ctr_Mcompar_s_cnt_cmp_lt0000_cy(7)
    );
  sig_controller_dac_ctr_Mcompar_s_cnt_cmp_lt0000_lut_8_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => sig_controller_dac_ctr_s_cnt(8),
      I1 => sig_controller_dac_ctr_s_reg(8),
      O => sig_controller_dac_ctr_Mcompar_s_cnt_cmp_lt0000_lut(8)
    );
  sig_controller_dac_ctr_Mcompar_s_cnt_cmp_lt0000_cy_8_Q : MUXCY
    port map (
      CI => sig_controller_dac_ctr_Mcompar_s_cnt_cmp_lt0000_cy(7),
      DI => sig_controller_dac_ctr_s_cnt(8),
      S => sig_controller_dac_ctr_Mcompar_s_cnt_cmp_lt0000_lut(8),
      O => sig_controller_dac_ctr_Mcompar_s_cnt_cmp_lt0000_cy(8)
    );
  sig_controller_dac_ctr_Mcompar_s_cnt_cmp_lt0000_lut_9_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => sig_controller_dac_ctr_s_cnt(9),
      I1 => sig_controller_dac_ctr_s_reg(9),
      O => sig_controller_dac_ctr_Mcompar_s_cnt_cmp_lt0000_lut(9)
    );
  sig_controller_dac_ctr_Mcompar_s_cnt_cmp_lt0000_cy_9_Q : MUXCY
    port map (
      CI => sig_controller_dac_ctr_Mcompar_s_cnt_cmp_lt0000_cy(8),
      DI => sig_controller_dac_ctr_s_cnt(9),
      S => sig_controller_dac_ctr_Mcompar_s_cnt_cmp_lt0000_lut(9),
      O => sig_controller_dac_ctr_Mcompar_s_cnt_cmp_lt0000_cy(9)
    );
  sig_controller_dac_ctr_Mcompar_s_cnt_cmp_lt0000_lut_10_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => sig_controller_dac_ctr_s_cnt(10),
      I1 => sig_controller_dac_ctr_s_reg(10),
      O => sig_controller_dac_ctr_Mcompar_s_cnt_cmp_lt0000_lut(10)
    );
  sig_controller_dac_ctr_Mcompar_s_cnt_cmp_lt0000_cy_10_Q : MUXCY
    port map (
      CI => sig_controller_dac_ctr_Mcompar_s_cnt_cmp_lt0000_cy(9),
      DI => sig_controller_dac_ctr_s_cnt(10),
      S => sig_controller_dac_ctr_Mcompar_s_cnt_cmp_lt0000_lut(10),
      O => sig_controller_dac_ctr_Mcompar_s_cnt_cmp_lt0000_cy(10)
    );
  sig_controller_rem0ctr_s_Reg_0 : FDE
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_rem0ctr_s_Reg_not0001,
      D => sig_controller_rem0ctr_s_Reg_mux0000(0),
      Q => sig_controller_rem0ctr_s_Reg(0)
    );
  sig_controller_rem0ctr_s_Reg_1 : FDE
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_rem0ctr_s_Reg_not0001,
      D => sig_controller_rem0ctr_s_Reg_mux0000(1),
      Q => sig_controller_rem0ctr_s_Reg(1)
    );
  sig_controller_rem0ctr_s_Reg_2 : FDE
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_rem0ctr_s_Reg_not0001,
      D => sig_controller_rem0ctr_s_Reg_mux0000(2),
      Q => sig_controller_rem0ctr_s_Reg(2)
    );
  sig_controller_rem0ctr_s_Reg_3 : FDE
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_rem0ctr_s_Reg_not0001,
      D => sig_controller_rem0ctr_s_Reg_mux0000(3),
      Q => sig_controller_rem0ctr_s_Reg(3)
    );
  sig_controller_rem0ctr_s_Reg_4 : FDE
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_rem0ctr_s_Reg_not0001,
      D => sig_controller_rem0ctr_s_Reg_mux0000(4),
      Q => sig_controller_rem0ctr_s_Reg(4)
    );
  sig_controller_rem0ctr_s_Reg_5 : FDE
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_rem0ctr_s_Reg_not0001,
      D => sig_controller_rem0ctr_s_Reg_mux0000(5),
      Q => sig_controller_rem0ctr_s_Reg(5)
    );
  sig_controller_rem0ctr_s_Reg_6 : FDE
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_rem0ctr_s_Reg_not0001,
      D => sig_controller_rem0ctr_s_Reg_mux0000(6),
      Q => sig_controller_rem0ctr_s_Reg(6)
    );
  sig_controller_rem0ctr_s_Reg_7 : FDE
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_rem0ctr_s_Reg_not0001,
      D => sig_controller_rem0ctr_s_Reg_mux0000(7),
      Q => sig_controller_rem0ctr_s_Reg(7)
    );
  sig_controller_rem0ctr_s_Reg_8 : FDE
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_rem0ctr_s_Reg_not0001,
      D => sig_controller_rem0ctr_s_Reg_mux0000(8),
      Q => sig_controller_rem0ctr_s_Reg(8)
    );
  sig_controller_rem0ctr_s_Reg_9 : FDE
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_rem0ctr_s_Reg_not0001,
      D => sig_controller_rem0ctr_s_Reg_mux0000(9),
      Q => sig_controller_rem0ctr_s_Reg(9)
    );
  sig_controller_rem0ctr_s_Reg_10 : FDE
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_rem0ctr_s_Reg_not0001,
      D => sig_controller_rem0ctr_s_Reg_mux0000(10),
      Q => sig_controller_rem0ctr_s_Reg(10)
    );
  sig_controller_rem0ctr_s_Cnt_0 : FDRE
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_s_enp0_1675,
      D => sig_controller_rem0ctr_Result(0),
      R => sig_controller_s_clr0_1653,
      Q => sig_controller_rem0ctr_s_Cnt(0)
    );
  sig_controller_rem0ctr_s_Cnt_1 : FDRE
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_s_enp0_1675,
      D => sig_controller_rem0ctr_Result(1),
      R => sig_controller_s_clr0_1653,
      Q => sig_controller_rem0ctr_s_Cnt(1)
    );
  sig_controller_rem0ctr_s_Cnt_2 : FDRE
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_s_enp0_1675,
      D => sig_controller_rem0ctr_Result(2),
      R => sig_controller_s_clr0_1653,
      Q => sig_controller_rem0ctr_s_Cnt(2)
    );
  sig_controller_rem0ctr_s_Cnt_3 : FDRE
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_s_enp0_1675,
      D => sig_controller_rem0ctr_Result(3),
      R => sig_controller_s_clr0_1653,
      Q => sig_controller_rem0ctr_s_Cnt(3)
    );
  sig_controller_rem0ctr_s_Cnt_4 : FDRE
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_s_enp0_1675,
      D => sig_controller_rem0ctr_Result(4),
      R => sig_controller_s_clr0_1653,
      Q => sig_controller_rem0ctr_s_Cnt(4)
    );
  sig_controller_rem0ctr_s_Cnt_5 : FDRE
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_s_enp0_1675,
      D => sig_controller_rem0ctr_Result(5),
      R => sig_controller_s_clr0_1653,
      Q => sig_controller_rem0ctr_s_Cnt(5)
    );
  sig_controller_rem0ctr_s_Cnt_6 : FDRE
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_s_enp0_1675,
      D => sig_controller_rem0ctr_Result(6),
      R => sig_controller_s_clr0_1653,
      Q => sig_controller_rem0ctr_s_Cnt(6)
    );
  sig_controller_rem0ctr_s_Cnt_7 : FDRE
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_s_enp0_1675,
      D => sig_controller_rem0ctr_Result(7),
      R => sig_controller_s_clr0_1653,
      Q => sig_controller_rem0ctr_s_Cnt(7)
    );
  sig_controller_rem0ctr_s_Cnt_8 : FDRE
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_s_enp0_1675,
      D => sig_controller_rem0ctr_Result(8),
      R => sig_controller_s_clr0_1653,
      Q => sig_controller_rem0ctr_s_Cnt(8)
    );
  sig_controller_rem0ctr_s_Cnt_9 : FDRE
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_s_enp0_1675,
      D => sig_controller_rem0ctr_Result(9),
      R => sig_controller_s_clr0_1653,
      Q => sig_controller_rem0ctr_s_Cnt(9)
    );
  sig_controller_rem0ctr_s_Cnt_10 : FDRE
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_s_enp0_1675,
      D => sig_controller_rem0ctr_Result(10),
      R => sig_controller_s_clr0_1653,
      Q => sig_controller_rem0ctr_s_Cnt(10)
    );
  sig_controller_rem0ctr_Mcount_s_Cnt_cy_0_Q : MUXCY
    port map (
      CI => avg_module_Maccum_s_data_cy(0),
      DI => N1,
      S => sig_controller_rem0ctr_Mcount_s_Cnt_lut(0),
      O => sig_controller_rem0ctr_Mcount_s_Cnt_cy(0)
    );
  sig_controller_rem0ctr_Mcount_s_Cnt_xor_0_Q : XORCY
    port map (
      CI => avg_module_Maccum_s_data_cy(0),
      LI => sig_controller_rem0ctr_Mcount_s_Cnt_lut(0),
      O => sig_controller_rem0ctr_Result(0)
    );
  sig_controller_rem0ctr_Mcount_s_Cnt_cy_1_Q : MUXCY
    port map (
      CI => sig_controller_rem0ctr_Mcount_s_Cnt_cy(0),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_rem0ctr_Mcount_s_Cnt_cy_1_rt_1446,
      O => sig_controller_rem0ctr_Mcount_s_Cnt_cy(1)
    );
  sig_controller_rem0ctr_Mcount_s_Cnt_xor_1_Q : XORCY
    port map (
      CI => sig_controller_rem0ctr_Mcount_s_Cnt_cy(0),
      LI => sig_controller_rem0ctr_Mcount_s_Cnt_cy_1_rt_1446,
      O => sig_controller_rem0ctr_Result(1)
    );
  sig_controller_rem0ctr_Mcount_s_Cnt_cy_2_Q : MUXCY
    port map (
      CI => sig_controller_rem0ctr_Mcount_s_Cnt_cy(1),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_rem0ctr_Mcount_s_Cnt_cy_2_rt_1448,
      O => sig_controller_rem0ctr_Mcount_s_Cnt_cy(2)
    );
  sig_controller_rem0ctr_Mcount_s_Cnt_xor_2_Q : XORCY
    port map (
      CI => sig_controller_rem0ctr_Mcount_s_Cnt_cy(1),
      LI => sig_controller_rem0ctr_Mcount_s_Cnt_cy_2_rt_1448,
      O => sig_controller_rem0ctr_Result(2)
    );
  sig_controller_rem0ctr_Mcount_s_Cnt_cy_3_Q : MUXCY
    port map (
      CI => sig_controller_rem0ctr_Mcount_s_Cnt_cy(2),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_rem0ctr_Mcount_s_Cnt_cy_3_rt_1450,
      O => sig_controller_rem0ctr_Mcount_s_Cnt_cy(3)
    );
  sig_controller_rem0ctr_Mcount_s_Cnt_xor_3_Q : XORCY
    port map (
      CI => sig_controller_rem0ctr_Mcount_s_Cnt_cy(2),
      LI => sig_controller_rem0ctr_Mcount_s_Cnt_cy_3_rt_1450,
      O => sig_controller_rem0ctr_Result(3)
    );
  sig_controller_rem0ctr_Mcount_s_Cnt_cy_4_Q : MUXCY
    port map (
      CI => sig_controller_rem0ctr_Mcount_s_Cnt_cy(3),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_rem0ctr_Mcount_s_Cnt_cy_4_rt_1452,
      O => sig_controller_rem0ctr_Mcount_s_Cnt_cy(4)
    );
  sig_controller_rem0ctr_Mcount_s_Cnt_xor_4_Q : XORCY
    port map (
      CI => sig_controller_rem0ctr_Mcount_s_Cnt_cy(3),
      LI => sig_controller_rem0ctr_Mcount_s_Cnt_cy_4_rt_1452,
      O => sig_controller_rem0ctr_Result(4)
    );
  sig_controller_rem0ctr_Mcount_s_Cnt_cy_5_Q : MUXCY
    port map (
      CI => sig_controller_rem0ctr_Mcount_s_Cnt_cy(4),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_rem0ctr_Mcount_s_Cnt_cy_5_rt_1454,
      O => sig_controller_rem0ctr_Mcount_s_Cnt_cy(5)
    );
  sig_controller_rem0ctr_Mcount_s_Cnt_xor_5_Q : XORCY
    port map (
      CI => sig_controller_rem0ctr_Mcount_s_Cnt_cy(4),
      LI => sig_controller_rem0ctr_Mcount_s_Cnt_cy_5_rt_1454,
      O => sig_controller_rem0ctr_Result(5)
    );
  sig_controller_rem0ctr_Mcount_s_Cnt_cy_6_Q : MUXCY
    port map (
      CI => sig_controller_rem0ctr_Mcount_s_Cnt_cy(5),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_rem0ctr_Mcount_s_Cnt_cy_6_rt_1456,
      O => sig_controller_rem0ctr_Mcount_s_Cnt_cy(6)
    );
  sig_controller_rem0ctr_Mcount_s_Cnt_xor_6_Q : XORCY
    port map (
      CI => sig_controller_rem0ctr_Mcount_s_Cnt_cy(5),
      LI => sig_controller_rem0ctr_Mcount_s_Cnt_cy_6_rt_1456,
      O => sig_controller_rem0ctr_Result(6)
    );
  sig_controller_rem0ctr_Mcount_s_Cnt_cy_7_Q : MUXCY
    port map (
      CI => sig_controller_rem0ctr_Mcount_s_Cnt_cy(6),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_rem0ctr_Mcount_s_Cnt_cy_7_rt_1458,
      O => sig_controller_rem0ctr_Mcount_s_Cnt_cy(7)
    );
  sig_controller_rem0ctr_Mcount_s_Cnt_xor_7_Q : XORCY
    port map (
      CI => sig_controller_rem0ctr_Mcount_s_Cnt_cy(6),
      LI => sig_controller_rem0ctr_Mcount_s_Cnt_cy_7_rt_1458,
      O => sig_controller_rem0ctr_Result(7)
    );
  sig_controller_rem0ctr_Mcount_s_Cnt_cy_8_Q : MUXCY
    port map (
      CI => sig_controller_rem0ctr_Mcount_s_Cnt_cy(7),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_rem0ctr_Mcount_s_Cnt_cy_8_rt_1460,
      O => sig_controller_rem0ctr_Mcount_s_Cnt_cy(8)
    );
  sig_controller_rem0ctr_Mcount_s_Cnt_xor_8_Q : XORCY
    port map (
      CI => sig_controller_rem0ctr_Mcount_s_Cnt_cy(7),
      LI => sig_controller_rem0ctr_Mcount_s_Cnt_cy_8_rt_1460,
      O => sig_controller_rem0ctr_Result(8)
    );
  sig_controller_rem0ctr_Mcount_s_Cnt_cy_9_Q : MUXCY
    port map (
      CI => sig_controller_rem0ctr_Mcount_s_Cnt_cy(8),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_rem0ctr_Mcount_s_Cnt_cy_9_rt_1462,
      O => sig_controller_rem0ctr_Mcount_s_Cnt_cy(9)
    );
  sig_controller_rem0ctr_Mcount_s_Cnt_xor_9_Q : XORCY
    port map (
      CI => sig_controller_rem0ctr_Mcount_s_Cnt_cy(8),
      LI => sig_controller_rem0ctr_Mcount_s_Cnt_cy_9_rt_1462,
      O => sig_controller_rem0ctr_Result(9)
    );
  sig_controller_rem0ctr_Mcount_s_Cnt_xor_10_Q : XORCY
    port map (
      CI => sig_controller_rem0ctr_Mcount_s_Cnt_cy(9),
      LI => sig_controller_rem0ctr_Mcount_s_Cnt_xor_10_rt_1464,
      O => sig_controller_rem0ctr_Result(10)
    );
  sig_controller_rem0ctr_Mcompar_m_comp_cmp_le0000_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Cnt(0),
      I1 => sig_controller_rem0ctr_s_Reg(0),
      O => sig_controller_rem0ctr_Mcompar_m_comp_cmp_le0000_lut(0)
    );
  sig_controller_rem0ctr_Mcompar_m_comp_cmp_le0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => sig_controller_rem0ctr_s_Cnt(0),
      S => sig_controller_rem0ctr_Mcompar_m_comp_cmp_le0000_lut(0),
      O => sig_controller_rem0ctr_Mcompar_m_comp_cmp_le0000_cy(0)
    );
  sig_controller_rem0ctr_Mcompar_m_comp_cmp_le0000_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Cnt(1),
      I1 => sig_controller_rem0ctr_s_Reg(1),
      O => sig_controller_rem0ctr_Mcompar_m_comp_cmp_le0000_lut(1)
    );
  sig_controller_rem0ctr_Mcompar_m_comp_cmp_le0000_cy_1_Q : MUXCY
    port map (
      CI => sig_controller_rem0ctr_Mcompar_m_comp_cmp_le0000_cy(0),
      DI => sig_controller_rem0ctr_s_Cnt(1),
      S => sig_controller_rem0ctr_Mcompar_m_comp_cmp_le0000_lut(1),
      O => sig_controller_rem0ctr_Mcompar_m_comp_cmp_le0000_cy(1)
    );
  sig_controller_rem0ctr_Mcompar_m_comp_cmp_le0000_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Cnt(2),
      I1 => sig_controller_rem0ctr_s_Reg(2),
      O => sig_controller_rem0ctr_Mcompar_m_comp_cmp_le0000_lut(2)
    );
  sig_controller_rem0ctr_Mcompar_m_comp_cmp_le0000_cy_2_Q : MUXCY
    port map (
      CI => sig_controller_rem0ctr_Mcompar_m_comp_cmp_le0000_cy(1),
      DI => sig_controller_rem0ctr_s_Cnt(2),
      S => sig_controller_rem0ctr_Mcompar_m_comp_cmp_le0000_lut(2),
      O => sig_controller_rem0ctr_Mcompar_m_comp_cmp_le0000_cy(2)
    );
  sig_controller_rem0ctr_Mcompar_m_comp_cmp_le0000_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Cnt(3),
      I1 => sig_controller_rem0ctr_s_Reg(3),
      O => sig_controller_rem0ctr_Mcompar_m_comp_cmp_le0000_lut(3)
    );
  sig_controller_rem0ctr_Mcompar_m_comp_cmp_le0000_cy_3_Q : MUXCY
    port map (
      CI => sig_controller_rem0ctr_Mcompar_m_comp_cmp_le0000_cy(2),
      DI => sig_controller_rem0ctr_s_Cnt(3),
      S => sig_controller_rem0ctr_Mcompar_m_comp_cmp_le0000_lut(3),
      O => sig_controller_rem0ctr_Mcompar_m_comp_cmp_le0000_cy(3)
    );
  sig_controller_rem0ctr_Mcompar_m_comp_cmp_le0000_lut_4_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Cnt(4),
      I1 => sig_controller_rem0ctr_s_Reg(4),
      O => sig_controller_rem0ctr_Mcompar_m_comp_cmp_le0000_lut(4)
    );
  sig_controller_rem0ctr_Mcompar_m_comp_cmp_le0000_cy_4_Q : MUXCY
    port map (
      CI => sig_controller_rem0ctr_Mcompar_m_comp_cmp_le0000_cy(3),
      DI => sig_controller_rem0ctr_s_Cnt(4),
      S => sig_controller_rem0ctr_Mcompar_m_comp_cmp_le0000_lut(4),
      O => sig_controller_rem0ctr_Mcompar_m_comp_cmp_le0000_cy(4)
    );
  sig_controller_rem0ctr_Mcompar_m_comp_cmp_le0000_lut_5_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Cnt(5),
      I1 => sig_controller_rem0ctr_s_Reg(5),
      O => sig_controller_rem0ctr_Mcompar_m_comp_cmp_le0000_lut(5)
    );
  sig_controller_rem0ctr_Mcompar_m_comp_cmp_le0000_cy_5_Q : MUXCY
    port map (
      CI => sig_controller_rem0ctr_Mcompar_m_comp_cmp_le0000_cy(4),
      DI => sig_controller_rem0ctr_s_Cnt(5),
      S => sig_controller_rem0ctr_Mcompar_m_comp_cmp_le0000_lut(5),
      O => sig_controller_rem0ctr_Mcompar_m_comp_cmp_le0000_cy(5)
    );
  sig_controller_rem0ctr_Mcompar_m_comp_cmp_le0000_lut_6_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Cnt(6),
      I1 => sig_controller_rem0ctr_s_Reg(6),
      O => sig_controller_rem0ctr_Mcompar_m_comp_cmp_le0000_lut(6)
    );
  sig_controller_rem0ctr_Mcompar_m_comp_cmp_le0000_cy_6_Q : MUXCY
    port map (
      CI => sig_controller_rem0ctr_Mcompar_m_comp_cmp_le0000_cy(5),
      DI => sig_controller_rem0ctr_s_Cnt(6),
      S => sig_controller_rem0ctr_Mcompar_m_comp_cmp_le0000_lut(6),
      O => sig_controller_rem0ctr_Mcompar_m_comp_cmp_le0000_cy(6)
    );
  sig_controller_rem0ctr_Mcompar_m_comp_cmp_le0000_lut_7_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Cnt(7),
      I1 => sig_controller_rem0ctr_s_Reg(7),
      O => sig_controller_rem0ctr_Mcompar_m_comp_cmp_le0000_lut(7)
    );
  sig_controller_rem0ctr_Mcompar_m_comp_cmp_le0000_cy_7_Q : MUXCY
    port map (
      CI => sig_controller_rem0ctr_Mcompar_m_comp_cmp_le0000_cy(6),
      DI => sig_controller_rem0ctr_s_Cnt(7),
      S => sig_controller_rem0ctr_Mcompar_m_comp_cmp_le0000_lut(7),
      O => sig_controller_rem0ctr_Mcompar_m_comp_cmp_le0000_cy(7)
    );
  sig_controller_rem0ctr_Mcompar_m_comp_cmp_le0000_lut_8_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Cnt(8),
      I1 => sig_controller_rem0ctr_s_Reg(8),
      O => sig_controller_rem0ctr_Mcompar_m_comp_cmp_le0000_lut(8)
    );
  sig_controller_rem0ctr_Mcompar_m_comp_cmp_le0000_cy_8_Q : MUXCY
    port map (
      CI => sig_controller_rem0ctr_Mcompar_m_comp_cmp_le0000_cy(7),
      DI => sig_controller_rem0ctr_s_Cnt(8),
      S => sig_controller_rem0ctr_Mcompar_m_comp_cmp_le0000_lut(8),
      O => sig_controller_rem0ctr_Mcompar_m_comp_cmp_le0000_cy(8)
    );
  sig_controller_rem0ctr_Mcompar_m_comp_cmp_le0000_lut_9_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Cnt(9),
      I1 => sig_controller_rem0ctr_s_Reg(9),
      O => sig_controller_rem0ctr_Mcompar_m_comp_cmp_le0000_lut(9)
    );
  sig_controller_rem0ctr_Mcompar_m_comp_cmp_le0000_cy_9_Q : MUXCY
    port map (
      CI => sig_controller_rem0ctr_Mcompar_m_comp_cmp_le0000_cy(8),
      DI => sig_controller_rem0ctr_s_Cnt(9),
      S => sig_controller_rem0ctr_Mcompar_m_comp_cmp_le0000_lut(9),
      O => sig_controller_rem0ctr_Mcompar_m_comp_cmp_le0000_cy(9)
    );
  sig_controller_rem0ctr_Mcompar_m_comp_cmp_le0000_lut_10_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Cnt(10),
      I1 => sig_controller_rem0ctr_s_Reg(10),
      O => sig_controller_rem0ctr_Mcompar_m_comp_cmp_le0000_lut(10)
    );
  sig_controller_rem0ctr_Mcompar_m_comp_cmp_le0000_cy_10_Q : MUXCY
    port map (
      CI => sig_controller_rem0ctr_Mcompar_m_comp_cmp_le0000_cy(9),
      DI => sig_controller_rem0ctr_s_Cnt(10),
      S => sig_controller_rem0ctr_Mcompar_m_comp_cmp_le0000_lut(10),
      O => sig_controller_s_comp0
    );
  sig_controller_rem1ctr_s_Reg_0 : FDE
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_rem1ctr_s_Reg_not0001,
      D => sig_controller_rem1ctr_s_Reg_mux0000(0),
      Q => sig_controller_rem1ctr_s_Reg(0)
    );
  sig_controller_rem1ctr_s_Reg_1 : FDE
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_rem1ctr_s_Reg_not0001,
      D => sig_controller_rem1ctr_s_Reg_mux0000(1),
      Q => sig_controller_rem1ctr_s_Reg(1)
    );
  sig_controller_rem1ctr_s_Reg_2 : FDE
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_rem1ctr_s_Reg_not0001,
      D => sig_controller_rem1ctr_s_Reg_mux0000(2),
      Q => sig_controller_rem1ctr_s_Reg(2)
    );
  sig_controller_rem1ctr_s_Reg_3 : FDE
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_rem1ctr_s_Reg_not0001,
      D => sig_controller_rem1ctr_s_Reg_mux0000(3),
      Q => sig_controller_rem1ctr_s_Reg(3)
    );
  sig_controller_rem1ctr_s_Reg_4 : FDE
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_rem1ctr_s_Reg_not0001,
      D => sig_controller_rem1ctr_s_Reg_mux0000(4),
      Q => sig_controller_rem1ctr_s_Reg(4)
    );
  sig_controller_rem1ctr_s_Reg_5 : FDE
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_rem1ctr_s_Reg_not0001,
      D => sig_controller_rem1ctr_s_Reg_mux0000(5),
      Q => sig_controller_rem1ctr_s_Reg(5)
    );
  sig_controller_rem1ctr_s_Reg_6 : FDE
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_rem1ctr_s_Reg_not0001,
      D => sig_controller_rem1ctr_s_Reg_mux0000(6),
      Q => sig_controller_rem1ctr_s_Reg(6)
    );
  sig_controller_rem1ctr_s_Reg_7 : FDE
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_rem1ctr_s_Reg_not0001,
      D => sig_controller_rem1ctr_s_Reg_mux0000(7),
      Q => sig_controller_rem1ctr_s_Reg(7)
    );
  sig_controller_rem1ctr_s_Reg_8 : FDE
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_rem1ctr_s_Reg_not0001,
      D => sig_controller_rem1ctr_s_Reg_mux0000(8),
      Q => sig_controller_rem1ctr_s_Reg(8)
    );
  sig_controller_rem1ctr_s_Reg_9 : FDE
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_rem1ctr_s_Reg_not0001,
      D => sig_controller_rem1ctr_s_Reg_mux0000(9),
      Q => sig_controller_rem1ctr_s_Reg(9)
    );
  sig_controller_rem1ctr_s_Reg_10 : FDE
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_rem1ctr_s_Reg_not0001,
      D => sig_controller_rem1ctr_s_Reg_mux0000(10),
      Q => sig_controller_rem1ctr_s_Reg(10)
    );
  sig_controller_rem1ctr_s_Cnt_0 : FDRE
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_s_enp1_1682,
      D => sig_controller_rem1ctr_Result(0),
      R => sig_controller_s_clr1_1658,
      Q => sig_controller_rem1ctr_s_Cnt(0)
    );
  sig_controller_rem1ctr_s_Cnt_1 : FDRE
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_s_enp1_1682,
      D => sig_controller_rem1ctr_Result(1),
      R => sig_controller_s_clr1_1658,
      Q => sig_controller_rem1ctr_s_Cnt(1)
    );
  sig_controller_rem1ctr_s_Cnt_2 : FDRE
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_s_enp1_1682,
      D => sig_controller_rem1ctr_Result(2),
      R => sig_controller_s_clr1_1658,
      Q => sig_controller_rem1ctr_s_Cnt(2)
    );
  sig_controller_rem1ctr_s_Cnt_3 : FDRE
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_s_enp1_1682,
      D => sig_controller_rem1ctr_Result(3),
      R => sig_controller_s_clr1_1658,
      Q => sig_controller_rem1ctr_s_Cnt(3)
    );
  sig_controller_rem1ctr_s_Cnt_4 : FDRE
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_s_enp1_1682,
      D => sig_controller_rem1ctr_Result(4),
      R => sig_controller_s_clr1_1658,
      Q => sig_controller_rem1ctr_s_Cnt(4)
    );
  sig_controller_rem1ctr_s_Cnt_5 : FDRE
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_s_enp1_1682,
      D => sig_controller_rem1ctr_Result(5),
      R => sig_controller_s_clr1_1658,
      Q => sig_controller_rem1ctr_s_Cnt(5)
    );
  sig_controller_rem1ctr_s_Cnt_6 : FDRE
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_s_enp1_1682,
      D => sig_controller_rem1ctr_Result(6),
      R => sig_controller_s_clr1_1658,
      Q => sig_controller_rem1ctr_s_Cnt(6)
    );
  sig_controller_rem1ctr_s_Cnt_7 : FDRE
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_s_enp1_1682,
      D => sig_controller_rem1ctr_Result(7),
      R => sig_controller_s_clr1_1658,
      Q => sig_controller_rem1ctr_s_Cnt(7)
    );
  sig_controller_rem1ctr_s_Cnt_8 : FDRE
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_s_enp1_1682,
      D => sig_controller_rem1ctr_Result(8),
      R => sig_controller_s_clr1_1658,
      Q => sig_controller_rem1ctr_s_Cnt(8)
    );
  sig_controller_rem1ctr_s_Cnt_9 : FDRE
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_s_enp1_1682,
      D => sig_controller_rem1ctr_Result(9),
      R => sig_controller_s_clr1_1658,
      Q => sig_controller_rem1ctr_s_Cnt(9)
    );
  sig_controller_rem1ctr_s_Cnt_10 : FDRE
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_s_enp1_1682,
      D => sig_controller_rem1ctr_Result(10),
      R => sig_controller_s_clr1_1658,
      Q => sig_controller_rem1ctr_s_Cnt(10)
    );
  sig_controller_rem1ctr_Mcount_s_Cnt_cy_0_Q : MUXCY
    port map (
      CI => avg_module_Maccum_s_data_cy(0),
      DI => N1,
      S => sig_controller_rem1ctr_Mcount_s_Cnt_lut(0),
      O => sig_controller_rem1ctr_Mcount_s_Cnt_cy(0)
    );
  sig_controller_rem1ctr_Mcount_s_Cnt_xor_0_Q : XORCY
    port map (
      CI => avg_module_Maccum_s_data_cy(0),
      LI => sig_controller_rem1ctr_Mcount_s_Cnt_lut(0),
      O => sig_controller_rem1ctr_Result(0)
    );
  sig_controller_rem1ctr_Mcount_s_Cnt_cy_1_Q : MUXCY
    port map (
      CI => sig_controller_rem1ctr_Mcount_s_Cnt_cy(0),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_rem1ctr_Mcount_s_Cnt_cy_1_rt_1563,
      O => sig_controller_rem1ctr_Mcount_s_Cnt_cy(1)
    );
  sig_controller_rem1ctr_Mcount_s_Cnt_xor_1_Q : XORCY
    port map (
      CI => sig_controller_rem1ctr_Mcount_s_Cnt_cy(0),
      LI => sig_controller_rem1ctr_Mcount_s_Cnt_cy_1_rt_1563,
      O => sig_controller_rem1ctr_Result(1)
    );
  sig_controller_rem1ctr_Mcount_s_Cnt_cy_2_Q : MUXCY
    port map (
      CI => sig_controller_rem1ctr_Mcount_s_Cnt_cy(1),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_rem1ctr_Mcount_s_Cnt_cy_2_rt_1565,
      O => sig_controller_rem1ctr_Mcount_s_Cnt_cy(2)
    );
  sig_controller_rem1ctr_Mcount_s_Cnt_xor_2_Q : XORCY
    port map (
      CI => sig_controller_rem1ctr_Mcount_s_Cnt_cy(1),
      LI => sig_controller_rem1ctr_Mcount_s_Cnt_cy_2_rt_1565,
      O => sig_controller_rem1ctr_Result(2)
    );
  sig_controller_rem1ctr_Mcount_s_Cnt_cy_3_Q : MUXCY
    port map (
      CI => sig_controller_rem1ctr_Mcount_s_Cnt_cy(2),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_rem1ctr_Mcount_s_Cnt_cy_3_rt_1567,
      O => sig_controller_rem1ctr_Mcount_s_Cnt_cy(3)
    );
  sig_controller_rem1ctr_Mcount_s_Cnt_xor_3_Q : XORCY
    port map (
      CI => sig_controller_rem1ctr_Mcount_s_Cnt_cy(2),
      LI => sig_controller_rem1ctr_Mcount_s_Cnt_cy_3_rt_1567,
      O => sig_controller_rem1ctr_Result(3)
    );
  sig_controller_rem1ctr_Mcount_s_Cnt_cy_4_Q : MUXCY
    port map (
      CI => sig_controller_rem1ctr_Mcount_s_Cnt_cy(3),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_rem1ctr_Mcount_s_Cnt_cy_4_rt_1569,
      O => sig_controller_rem1ctr_Mcount_s_Cnt_cy(4)
    );
  sig_controller_rem1ctr_Mcount_s_Cnt_xor_4_Q : XORCY
    port map (
      CI => sig_controller_rem1ctr_Mcount_s_Cnt_cy(3),
      LI => sig_controller_rem1ctr_Mcount_s_Cnt_cy_4_rt_1569,
      O => sig_controller_rem1ctr_Result(4)
    );
  sig_controller_rem1ctr_Mcount_s_Cnt_cy_5_Q : MUXCY
    port map (
      CI => sig_controller_rem1ctr_Mcount_s_Cnt_cy(4),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_rem1ctr_Mcount_s_Cnt_cy_5_rt_1571,
      O => sig_controller_rem1ctr_Mcount_s_Cnt_cy(5)
    );
  sig_controller_rem1ctr_Mcount_s_Cnt_xor_5_Q : XORCY
    port map (
      CI => sig_controller_rem1ctr_Mcount_s_Cnt_cy(4),
      LI => sig_controller_rem1ctr_Mcount_s_Cnt_cy_5_rt_1571,
      O => sig_controller_rem1ctr_Result(5)
    );
  sig_controller_rem1ctr_Mcount_s_Cnt_cy_6_Q : MUXCY
    port map (
      CI => sig_controller_rem1ctr_Mcount_s_Cnt_cy(5),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_rem1ctr_Mcount_s_Cnt_cy_6_rt_1573,
      O => sig_controller_rem1ctr_Mcount_s_Cnt_cy(6)
    );
  sig_controller_rem1ctr_Mcount_s_Cnt_xor_6_Q : XORCY
    port map (
      CI => sig_controller_rem1ctr_Mcount_s_Cnt_cy(5),
      LI => sig_controller_rem1ctr_Mcount_s_Cnt_cy_6_rt_1573,
      O => sig_controller_rem1ctr_Result(6)
    );
  sig_controller_rem1ctr_Mcount_s_Cnt_cy_7_Q : MUXCY
    port map (
      CI => sig_controller_rem1ctr_Mcount_s_Cnt_cy(6),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_rem1ctr_Mcount_s_Cnt_cy_7_rt_1575,
      O => sig_controller_rem1ctr_Mcount_s_Cnt_cy(7)
    );
  sig_controller_rem1ctr_Mcount_s_Cnt_xor_7_Q : XORCY
    port map (
      CI => sig_controller_rem1ctr_Mcount_s_Cnt_cy(6),
      LI => sig_controller_rem1ctr_Mcount_s_Cnt_cy_7_rt_1575,
      O => sig_controller_rem1ctr_Result(7)
    );
  sig_controller_rem1ctr_Mcount_s_Cnt_cy_8_Q : MUXCY
    port map (
      CI => sig_controller_rem1ctr_Mcount_s_Cnt_cy(7),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_rem1ctr_Mcount_s_Cnt_cy_8_rt_1577,
      O => sig_controller_rem1ctr_Mcount_s_Cnt_cy(8)
    );
  sig_controller_rem1ctr_Mcount_s_Cnt_xor_8_Q : XORCY
    port map (
      CI => sig_controller_rem1ctr_Mcount_s_Cnt_cy(7),
      LI => sig_controller_rem1ctr_Mcount_s_Cnt_cy_8_rt_1577,
      O => sig_controller_rem1ctr_Result(8)
    );
  sig_controller_rem1ctr_Mcount_s_Cnt_cy_9_Q : MUXCY
    port map (
      CI => sig_controller_rem1ctr_Mcount_s_Cnt_cy(8),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_rem1ctr_Mcount_s_Cnt_cy_9_rt_1579,
      O => sig_controller_rem1ctr_Mcount_s_Cnt_cy(9)
    );
  sig_controller_rem1ctr_Mcount_s_Cnt_xor_9_Q : XORCY
    port map (
      CI => sig_controller_rem1ctr_Mcount_s_Cnt_cy(8),
      LI => sig_controller_rem1ctr_Mcount_s_Cnt_cy_9_rt_1579,
      O => sig_controller_rem1ctr_Result(9)
    );
  sig_controller_rem1ctr_Mcount_s_Cnt_xor_10_Q : XORCY
    port map (
      CI => sig_controller_rem1ctr_Mcount_s_Cnt_cy(9),
      LI => sig_controller_rem1ctr_Mcount_s_Cnt_xor_10_rt_1581,
      O => sig_controller_rem1ctr_Result(10)
    );
  sig_controller_rem1ctr_Mcompar_m_comp_cmp_le0000_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => sig_controller_rem1ctr_s_Cnt(0),
      I1 => sig_controller_rem1ctr_s_Reg(0),
      O => sig_controller_rem1ctr_Mcompar_m_comp_cmp_le0000_lut(0)
    );
  sig_controller_rem1ctr_Mcompar_m_comp_cmp_le0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => sig_controller_rem1ctr_s_Cnt(0),
      S => sig_controller_rem1ctr_Mcompar_m_comp_cmp_le0000_lut(0),
      O => sig_controller_rem1ctr_Mcompar_m_comp_cmp_le0000_cy(0)
    );
  sig_controller_rem1ctr_Mcompar_m_comp_cmp_le0000_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => sig_controller_rem1ctr_s_Cnt(1),
      I1 => sig_controller_rem1ctr_s_Reg(1),
      O => sig_controller_rem1ctr_Mcompar_m_comp_cmp_le0000_lut(1)
    );
  sig_controller_rem1ctr_Mcompar_m_comp_cmp_le0000_cy_1_Q : MUXCY
    port map (
      CI => sig_controller_rem1ctr_Mcompar_m_comp_cmp_le0000_cy(0),
      DI => sig_controller_rem1ctr_s_Cnt(1),
      S => sig_controller_rem1ctr_Mcompar_m_comp_cmp_le0000_lut(1),
      O => sig_controller_rem1ctr_Mcompar_m_comp_cmp_le0000_cy(1)
    );
  sig_controller_rem1ctr_Mcompar_m_comp_cmp_le0000_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => sig_controller_rem1ctr_s_Cnt(2),
      I1 => sig_controller_rem1ctr_s_Reg(2),
      O => sig_controller_rem1ctr_Mcompar_m_comp_cmp_le0000_lut(2)
    );
  sig_controller_rem1ctr_Mcompar_m_comp_cmp_le0000_cy_2_Q : MUXCY
    port map (
      CI => sig_controller_rem1ctr_Mcompar_m_comp_cmp_le0000_cy(1),
      DI => sig_controller_rem1ctr_s_Cnt(2),
      S => sig_controller_rem1ctr_Mcompar_m_comp_cmp_le0000_lut(2),
      O => sig_controller_rem1ctr_Mcompar_m_comp_cmp_le0000_cy(2)
    );
  sig_controller_rem1ctr_Mcompar_m_comp_cmp_le0000_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => sig_controller_rem1ctr_s_Cnt(3),
      I1 => sig_controller_rem1ctr_s_Reg(3),
      O => sig_controller_rem1ctr_Mcompar_m_comp_cmp_le0000_lut(3)
    );
  sig_controller_rem1ctr_Mcompar_m_comp_cmp_le0000_cy_3_Q : MUXCY
    port map (
      CI => sig_controller_rem1ctr_Mcompar_m_comp_cmp_le0000_cy(2),
      DI => sig_controller_rem1ctr_s_Cnt(3),
      S => sig_controller_rem1ctr_Mcompar_m_comp_cmp_le0000_lut(3),
      O => sig_controller_rem1ctr_Mcompar_m_comp_cmp_le0000_cy(3)
    );
  sig_controller_rem1ctr_Mcompar_m_comp_cmp_le0000_lut_4_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => sig_controller_rem1ctr_s_Cnt(4),
      I1 => sig_controller_rem1ctr_s_Reg(4),
      O => sig_controller_rem1ctr_Mcompar_m_comp_cmp_le0000_lut(4)
    );
  sig_controller_rem1ctr_Mcompar_m_comp_cmp_le0000_cy_4_Q : MUXCY
    port map (
      CI => sig_controller_rem1ctr_Mcompar_m_comp_cmp_le0000_cy(3),
      DI => sig_controller_rem1ctr_s_Cnt(4),
      S => sig_controller_rem1ctr_Mcompar_m_comp_cmp_le0000_lut(4),
      O => sig_controller_rem1ctr_Mcompar_m_comp_cmp_le0000_cy(4)
    );
  sig_controller_rem1ctr_Mcompar_m_comp_cmp_le0000_lut_5_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => sig_controller_rem1ctr_s_Cnt(5),
      I1 => sig_controller_rem1ctr_s_Reg(5),
      O => sig_controller_rem1ctr_Mcompar_m_comp_cmp_le0000_lut(5)
    );
  sig_controller_rem1ctr_Mcompar_m_comp_cmp_le0000_cy_5_Q : MUXCY
    port map (
      CI => sig_controller_rem1ctr_Mcompar_m_comp_cmp_le0000_cy(4),
      DI => sig_controller_rem1ctr_s_Cnt(5),
      S => sig_controller_rem1ctr_Mcompar_m_comp_cmp_le0000_lut(5),
      O => sig_controller_rem1ctr_Mcompar_m_comp_cmp_le0000_cy(5)
    );
  sig_controller_rem1ctr_Mcompar_m_comp_cmp_le0000_lut_6_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => sig_controller_rem1ctr_s_Cnt(6),
      I1 => sig_controller_rem1ctr_s_Reg(6),
      O => sig_controller_rem1ctr_Mcompar_m_comp_cmp_le0000_lut(6)
    );
  sig_controller_rem1ctr_Mcompar_m_comp_cmp_le0000_cy_6_Q : MUXCY
    port map (
      CI => sig_controller_rem1ctr_Mcompar_m_comp_cmp_le0000_cy(5),
      DI => sig_controller_rem1ctr_s_Cnt(6),
      S => sig_controller_rem1ctr_Mcompar_m_comp_cmp_le0000_lut(6),
      O => sig_controller_rem1ctr_Mcompar_m_comp_cmp_le0000_cy(6)
    );
  sig_controller_rem1ctr_Mcompar_m_comp_cmp_le0000_lut_7_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => sig_controller_rem1ctr_s_Cnt(7),
      I1 => sig_controller_rem1ctr_s_Reg(7),
      O => sig_controller_rem1ctr_Mcompar_m_comp_cmp_le0000_lut(7)
    );
  sig_controller_rem1ctr_Mcompar_m_comp_cmp_le0000_cy_7_Q : MUXCY
    port map (
      CI => sig_controller_rem1ctr_Mcompar_m_comp_cmp_le0000_cy(6),
      DI => sig_controller_rem1ctr_s_Cnt(7),
      S => sig_controller_rem1ctr_Mcompar_m_comp_cmp_le0000_lut(7),
      O => sig_controller_rem1ctr_Mcompar_m_comp_cmp_le0000_cy(7)
    );
  sig_controller_rem1ctr_Mcompar_m_comp_cmp_le0000_lut_8_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => sig_controller_rem1ctr_s_Cnt(8),
      I1 => sig_controller_rem1ctr_s_Reg(8),
      O => sig_controller_rem1ctr_Mcompar_m_comp_cmp_le0000_lut(8)
    );
  sig_controller_rem1ctr_Mcompar_m_comp_cmp_le0000_cy_8_Q : MUXCY
    port map (
      CI => sig_controller_rem1ctr_Mcompar_m_comp_cmp_le0000_cy(7),
      DI => sig_controller_rem1ctr_s_Cnt(8),
      S => sig_controller_rem1ctr_Mcompar_m_comp_cmp_le0000_lut(8),
      O => sig_controller_rem1ctr_Mcompar_m_comp_cmp_le0000_cy(8)
    );
  sig_controller_rem1ctr_Mcompar_m_comp_cmp_le0000_lut_9_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => sig_controller_rem1ctr_s_Cnt(9),
      I1 => sig_controller_rem1ctr_s_Reg(9),
      O => sig_controller_rem1ctr_Mcompar_m_comp_cmp_le0000_lut(9)
    );
  sig_controller_rem1ctr_Mcompar_m_comp_cmp_le0000_cy_9_Q : MUXCY
    port map (
      CI => sig_controller_rem1ctr_Mcompar_m_comp_cmp_le0000_cy(8),
      DI => sig_controller_rem1ctr_s_Cnt(9),
      S => sig_controller_rem1ctr_Mcompar_m_comp_cmp_le0000_lut(9),
      O => sig_controller_rem1ctr_Mcompar_m_comp_cmp_le0000_cy(9)
    );
  sig_controller_rem1ctr_Mcompar_m_comp_cmp_le0000_lut_10_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => sig_controller_rem1ctr_s_Cnt(10),
      I1 => sig_controller_rem1ctr_s_Reg(10),
      O => sig_controller_rem1ctr_Mcompar_m_comp_cmp_le0000_lut(10)
    );
  sig_controller_rem1ctr_Mcompar_m_comp_cmp_le0000_cy_10_Q : MUXCY
    port map (
      CI => sig_controller_rem1ctr_Mcompar_m_comp_cmp_le0000_cy(9),
      DI => sig_controller_rem1ctr_s_Cnt(10),
      S => sig_controller_rem1ctr_Mcompar_m_comp_cmp_le0000_lut(10),
      O => sig_controller_s_comp1
    );
  sig_controller_daremctr_s_Reg_0 : FDE
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_daremctr_s_Reg_not0001,
      D => sig_controller_daremctr_s_Reg_mux0000(0),
      Q => sig_controller_daremctr_s_Reg(0)
    );
  sig_controller_daremctr_s_Reg_1 : FDE
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_daremctr_s_Reg_not0001,
      D => sig_controller_daremctr_s_Reg_mux0000(1),
      Q => sig_controller_daremctr_s_Reg(1)
    );
  sig_controller_daremctr_s_Reg_2 : FDE
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_daremctr_s_Reg_not0001,
      D => sig_controller_daremctr_s_Reg_mux0000(2),
      Q => sig_controller_daremctr_s_Reg(2)
    );
  sig_controller_daremctr_s_Reg_3 : FDE
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_daremctr_s_Reg_not0001,
      D => sig_controller_daremctr_s_Reg_mux0000(3),
      Q => sig_controller_daremctr_s_Reg(3)
    );
  sig_controller_daremctr_s_Reg_4 : FDE
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_daremctr_s_Reg_not0001,
      D => sig_controller_daremctr_s_Reg_mux0000(4),
      Q => sig_controller_daremctr_s_Reg(4)
    );
  sig_controller_daremctr_s_Reg_5 : FDE
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_daremctr_s_Reg_not0001,
      D => sig_controller_daremctr_s_Reg_mux0000(5),
      Q => sig_controller_daremctr_s_Reg(5)
    );
  sig_controller_daremctr_s_Reg_6 : FDE
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_daremctr_s_Reg_not0001,
      D => sig_controller_daremctr_s_Reg_mux0000(6),
      Q => sig_controller_daremctr_s_Reg(6)
    );
  sig_controller_daremctr_s_Reg_7 : FDE
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_daremctr_s_Reg_not0001,
      D => sig_controller_daremctr_s_Reg_mux0000(7),
      Q => sig_controller_daremctr_s_Reg(7)
    );
  sig_controller_daremctr_s_Reg_8 : FDE
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_daremctr_s_Reg_not0001,
      D => sig_controller_daremctr_s_Reg_mux0000(8),
      Q => sig_controller_daremctr_s_Reg(8)
    );
  sig_controller_daremctr_s_Reg_9 : FDE
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_daremctr_s_Reg_not0001,
      D => sig_controller_daremctr_s_Reg_mux0000(9),
      Q => sig_controller_daremctr_s_Reg(9)
    );
  sig_controller_daremctr_s_Reg_10 : FDE
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_daremctr_s_Reg_not0001,
      D => sig_controller_daremctr_s_Reg_mux0000(10),
      Q => sig_controller_daremctr_s_Reg(10)
    );
  sig_controller_daremctr_s_Cnt_0 : FDRE
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_m_wea2(0),
      D => sig_controller_daremctr_Result(0),
      R => sig_controller_s_clrda_1664,
      Q => sig_controller_daremctr_s_Cnt(0)
    );
  sig_controller_daremctr_s_Cnt_1 : FDRE
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_m_wea2(0),
      D => sig_controller_daremctr_Result(1),
      R => sig_controller_s_clrda_1664,
      Q => sig_controller_daremctr_s_Cnt(1)
    );
  sig_controller_daremctr_s_Cnt_2 : FDRE
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_m_wea2(0),
      D => sig_controller_daremctr_Result(2),
      R => sig_controller_s_clrda_1664,
      Q => sig_controller_daremctr_s_Cnt(2)
    );
  sig_controller_daremctr_s_Cnt_3 : FDRE
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_m_wea2(0),
      D => sig_controller_daremctr_Result(3),
      R => sig_controller_s_clrda_1664,
      Q => sig_controller_daremctr_s_Cnt(3)
    );
  sig_controller_daremctr_s_Cnt_4 : FDRE
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_m_wea2(0),
      D => sig_controller_daremctr_Result(4),
      R => sig_controller_s_clrda_1664,
      Q => sig_controller_daremctr_s_Cnt(4)
    );
  sig_controller_daremctr_s_Cnt_5 : FDRE
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_m_wea2(0),
      D => sig_controller_daremctr_Result(5),
      R => sig_controller_s_clrda_1664,
      Q => sig_controller_daremctr_s_Cnt(5)
    );
  sig_controller_daremctr_s_Cnt_6 : FDRE
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_m_wea2(0),
      D => sig_controller_daremctr_Result(6),
      R => sig_controller_s_clrda_1664,
      Q => sig_controller_daremctr_s_Cnt(6)
    );
  sig_controller_daremctr_s_Cnt_7 : FDRE
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_m_wea2(0),
      D => sig_controller_daremctr_Result(7),
      R => sig_controller_s_clrda_1664,
      Q => sig_controller_daremctr_s_Cnt(7)
    );
  sig_controller_daremctr_s_Cnt_8 : FDRE
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_m_wea2(0),
      D => sig_controller_daremctr_Result(8),
      R => sig_controller_s_clrda_1664,
      Q => sig_controller_daremctr_s_Cnt(8)
    );
  sig_controller_daremctr_s_Cnt_9 : FDRE
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_m_wea2(0),
      D => sig_controller_daremctr_Result(9),
      R => sig_controller_s_clrda_1664,
      Q => sig_controller_daremctr_s_Cnt(9)
    );
  sig_controller_daremctr_s_Cnt_10 : FDRE
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_m_wea2(0),
      D => sig_controller_daremctr_Result(10),
      R => sig_controller_s_clrda_1664,
      Q => sig_controller_daremctr_s_Cnt(10)
    );
  sig_controller_daremctr_Mcount_s_Cnt_cy_0_Q : MUXCY
    port map (
      CI => avg_module_Maccum_s_data_cy(0),
      DI => N1,
      S => sig_controller_daremctr_Mcount_s_Cnt_lut(0),
      O => sig_controller_daremctr_Mcount_s_Cnt_cy(0)
    );
  sig_controller_daremctr_Mcount_s_Cnt_xor_0_Q : XORCY
    port map (
      CI => avg_module_Maccum_s_data_cy(0),
      LI => sig_controller_daremctr_Mcount_s_Cnt_lut(0),
      O => sig_controller_daremctr_Result(0)
    );
  sig_controller_daremctr_Mcount_s_Cnt_cy_1_Q : MUXCY
    port map (
      CI => sig_controller_daremctr_Mcount_s_Cnt_cy(0),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_daremctr_Mcount_s_Cnt_cy_1_rt_1305,
      O => sig_controller_daremctr_Mcount_s_Cnt_cy(1)
    );
  sig_controller_daremctr_Mcount_s_Cnt_xor_1_Q : XORCY
    port map (
      CI => sig_controller_daremctr_Mcount_s_Cnt_cy(0),
      LI => sig_controller_daremctr_Mcount_s_Cnt_cy_1_rt_1305,
      O => sig_controller_daremctr_Result(1)
    );
  sig_controller_daremctr_Mcount_s_Cnt_cy_2_Q : MUXCY
    port map (
      CI => sig_controller_daremctr_Mcount_s_Cnt_cy(1),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_daremctr_Mcount_s_Cnt_cy_2_rt_1307,
      O => sig_controller_daremctr_Mcount_s_Cnt_cy(2)
    );
  sig_controller_daremctr_Mcount_s_Cnt_xor_2_Q : XORCY
    port map (
      CI => sig_controller_daremctr_Mcount_s_Cnt_cy(1),
      LI => sig_controller_daremctr_Mcount_s_Cnt_cy_2_rt_1307,
      O => sig_controller_daremctr_Result(2)
    );
  sig_controller_daremctr_Mcount_s_Cnt_cy_3_Q : MUXCY
    port map (
      CI => sig_controller_daremctr_Mcount_s_Cnt_cy(2),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_daremctr_Mcount_s_Cnt_cy_3_rt_1309,
      O => sig_controller_daremctr_Mcount_s_Cnt_cy(3)
    );
  sig_controller_daremctr_Mcount_s_Cnt_xor_3_Q : XORCY
    port map (
      CI => sig_controller_daremctr_Mcount_s_Cnt_cy(2),
      LI => sig_controller_daremctr_Mcount_s_Cnt_cy_3_rt_1309,
      O => sig_controller_daremctr_Result(3)
    );
  sig_controller_daremctr_Mcount_s_Cnt_cy_4_Q : MUXCY
    port map (
      CI => sig_controller_daremctr_Mcount_s_Cnt_cy(3),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_daremctr_Mcount_s_Cnt_cy_4_rt_1311,
      O => sig_controller_daremctr_Mcount_s_Cnt_cy(4)
    );
  sig_controller_daremctr_Mcount_s_Cnt_xor_4_Q : XORCY
    port map (
      CI => sig_controller_daremctr_Mcount_s_Cnt_cy(3),
      LI => sig_controller_daremctr_Mcount_s_Cnt_cy_4_rt_1311,
      O => sig_controller_daremctr_Result(4)
    );
  sig_controller_daremctr_Mcount_s_Cnt_cy_5_Q : MUXCY
    port map (
      CI => sig_controller_daremctr_Mcount_s_Cnt_cy(4),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_daremctr_Mcount_s_Cnt_cy_5_rt_1313,
      O => sig_controller_daremctr_Mcount_s_Cnt_cy(5)
    );
  sig_controller_daremctr_Mcount_s_Cnt_xor_5_Q : XORCY
    port map (
      CI => sig_controller_daremctr_Mcount_s_Cnt_cy(4),
      LI => sig_controller_daremctr_Mcount_s_Cnt_cy_5_rt_1313,
      O => sig_controller_daremctr_Result(5)
    );
  sig_controller_daremctr_Mcount_s_Cnt_cy_6_Q : MUXCY
    port map (
      CI => sig_controller_daremctr_Mcount_s_Cnt_cy(5),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_daremctr_Mcount_s_Cnt_cy_6_rt_1315,
      O => sig_controller_daremctr_Mcount_s_Cnt_cy(6)
    );
  sig_controller_daremctr_Mcount_s_Cnt_xor_6_Q : XORCY
    port map (
      CI => sig_controller_daremctr_Mcount_s_Cnt_cy(5),
      LI => sig_controller_daremctr_Mcount_s_Cnt_cy_6_rt_1315,
      O => sig_controller_daremctr_Result(6)
    );
  sig_controller_daremctr_Mcount_s_Cnt_cy_7_Q : MUXCY
    port map (
      CI => sig_controller_daremctr_Mcount_s_Cnt_cy(6),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_daremctr_Mcount_s_Cnt_cy_7_rt_1317,
      O => sig_controller_daremctr_Mcount_s_Cnt_cy(7)
    );
  sig_controller_daremctr_Mcount_s_Cnt_xor_7_Q : XORCY
    port map (
      CI => sig_controller_daremctr_Mcount_s_Cnt_cy(6),
      LI => sig_controller_daremctr_Mcount_s_Cnt_cy_7_rt_1317,
      O => sig_controller_daremctr_Result(7)
    );
  sig_controller_daremctr_Mcount_s_Cnt_cy_8_Q : MUXCY
    port map (
      CI => sig_controller_daremctr_Mcount_s_Cnt_cy(7),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_daremctr_Mcount_s_Cnt_cy_8_rt_1319,
      O => sig_controller_daremctr_Mcount_s_Cnt_cy(8)
    );
  sig_controller_daremctr_Mcount_s_Cnt_xor_8_Q : XORCY
    port map (
      CI => sig_controller_daremctr_Mcount_s_Cnt_cy(7),
      LI => sig_controller_daremctr_Mcount_s_Cnt_cy_8_rt_1319,
      O => sig_controller_daremctr_Result(8)
    );
  sig_controller_daremctr_Mcount_s_Cnt_cy_9_Q : MUXCY
    port map (
      CI => sig_controller_daremctr_Mcount_s_Cnt_cy(8),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_daremctr_Mcount_s_Cnt_cy_9_rt_1321,
      O => sig_controller_daremctr_Mcount_s_Cnt_cy(9)
    );
  sig_controller_daremctr_Mcount_s_Cnt_xor_9_Q : XORCY
    port map (
      CI => sig_controller_daremctr_Mcount_s_Cnt_cy(8),
      LI => sig_controller_daremctr_Mcount_s_Cnt_cy_9_rt_1321,
      O => sig_controller_daremctr_Result(9)
    );
  sig_controller_daremctr_Mcount_s_Cnt_xor_10_Q : XORCY
    port map (
      CI => sig_controller_daremctr_Mcount_s_Cnt_cy(9),
      LI => sig_controller_daremctr_Mcount_s_Cnt_xor_10_rt_1323,
      O => sig_controller_daremctr_Result(10)
    );
  sig_controller_daremctr_Mcompar_m_comp_cmp_le0000_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => sig_controller_daremctr_s_Cnt(0),
      I1 => sig_controller_daremctr_s_Reg(0),
      O => sig_controller_daremctr_Mcompar_m_comp_cmp_le0000_lut(0)
    );
  sig_controller_daremctr_Mcompar_m_comp_cmp_le0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => sig_controller_daremctr_s_Cnt(0),
      S => sig_controller_daremctr_Mcompar_m_comp_cmp_le0000_lut(0),
      O => sig_controller_daremctr_Mcompar_m_comp_cmp_le0000_cy(0)
    );
  sig_controller_daremctr_Mcompar_m_comp_cmp_le0000_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => sig_controller_daremctr_s_Cnt(1),
      I1 => sig_controller_daremctr_s_Reg(1),
      O => sig_controller_daremctr_Mcompar_m_comp_cmp_le0000_lut(1)
    );
  sig_controller_daremctr_Mcompar_m_comp_cmp_le0000_cy_1_Q : MUXCY
    port map (
      CI => sig_controller_daremctr_Mcompar_m_comp_cmp_le0000_cy(0),
      DI => sig_controller_daremctr_s_Cnt(1),
      S => sig_controller_daremctr_Mcompar_m_comp_cmp_le0000_lut(1),
      O => sig_controller_daremctr_Mcompar_m_comp_cmp_le0000_cy(1)
    );
  sig_controller_daremctr_Mcompar_m_comp_cmp_le0000_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => sig_controller_daremctr_s_Cnt(2),
      I1 => sig_controller_daremctr_s_Reg(2),
      O => sig_controller_daremctr_Mcompar_m_comp_cmp_le0000_lut(2)
    );
  sig_controller_daremctr_Mcompar_m_comp_cmp_le0000_cy_2_Q : MUXCY
    port map (
      CI => sig_controller_daremctr_Mcompar_m_comp_cmp_le0000_cy(1),
      DI => sig_controller_daremctr_s_Cnt(2),
      S => sig_controller_daremctr_Mcompar_m_comp_cmp_le0000_lut(2),
      O => sig_controller_daremctr_Mcompar_m_comp_cmp_le0000_cy(2)
    );
  sig_controller_daremctr_Mcompar_m_comp_cmp_le0000_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => sig_controller_daremctr_s_Cnt(3),
      I1 => sig_controller_daremctr_s_Reg(3),
      O => sig_controller_daremctr_Mcompar_m_comp_cmp_le0000_lut(3)
    );
  sig_controller_daremctr_Mcompar_m_comp_cmp_le0000_cy_3_Q : MUXCY
    port map (
      CI => sig_controller_daremctr_Mcompar_m_comp_cmp_le0000_cy(2),
      DI => sig_controller_daremctr_s_Cnt(3),
      S => sig_controller_daremctr_Mcompar_m_comp_cmp_le0000_lut(3),
      O => sig_controller_daremctr_Mcompar_m_comp_cmp_le0000_cy(3)
    );
  sig_controller_daremctr_Mcompar_m_comp_cmp_le0000_lut_4_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => sig_controller_daremctr_s_Cnt(4),
      I1 => sig_controller_daremctr_s_Reg(4),
      O => sig_controller_daremctr_Mcompar_m_comp_cmp_le0000_lut(4)
    );
  sig_controller_daremctr_Mcompar_m_comp_cmp_le0000_cy_4_Q : MUXCY
    port map (
      CI => sig_controller_daremctr_Mcompar_m_comp_cmp_le0000_cy(3),
      DI => sig_controller_daremctr_s_Cnt(4),
      S => sig_controller_daremctr_Mcompar_m_comp_cmp_le0000_lut(4),
      O => sig_controller_daremctr_Mcompar_m_comp_cmp_le0000_cy(4)
    );
  sig_controller_daremctr_Mcompar_m_comp_cmp_le0000_lut_5_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => sig_controller_daremctr_s_Cnt(5),
      I1 => sig_controller_daremctr_s_Reg(5),
      O => sig_controller_daremctr_Mcompar_m_comp_cmp_le0000_lut(5)
    );
  sig_controller_daremctr_Mcompar_m_comp_cmp_le0000_cy_5_Q : MUXCY
    port map (
      CI => sig_controller_daremctr_Mcompar_m_comp_cmp_le0000_cy(4),
      DI => sig_controller_daremctr_s_Cnt(5),
      S => sig_controller_daremctr_Mcompar_m_comp_cmp_le0000_lut(5),
      O => sig_controller_daremctr_Mcompar_m_comp_cmp_le0000_cy(5)
    );
  sig_controller_daremctr_Mcompar_m_comp_cmp_le0000_lut_6_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => sig_controller_daremctr_s_Cnt(6),
      I1 => sig_controller_daremctr_s_Reg(6),
      O => sig_controller_daremctr_Mcompar_m_comp_cmp_le0000_lut(6)
    );
  sig_controller_daremctr_Mcompar_m_comp_cmp_le0000_cy_6_Q : MUXCY
    port map (
      CI => sig_controller_daremctr_Mcompar_m_comp_cmp_le0000_cy(5),
      DI => sig_controller_daremctr_s_Cnt(6),
      S => sig_controller_daremctr_Mcompar_m_comp_cmp_le0000_lut(6),
      O => sig_controller_daremctr_Mcompar_m_comp_cmp_le0000_cy(6)
    );
  sig_controller_daremctr_Mcompar_m_comp_cmp_le0000_lut_7_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => sig_controller_daremctr_s_Cnt(7),
      I1 => sig_controller_daremctr_s_Reg(7),
      O => sig_controller_daremctr_Mcompar_m_comp_cmp_le0000_lut(7)
    );
  sig_controller_daremctr_Mcompar_m_comp_cmp_le0000_cy_7_Q : MUXCY
    port map (
      CI => sig_controller_daremctr_Mcompar_m_comp_cmp_le0000_cy(6),
      DI => sig_controller_daremctr_s_Cnt(7),
      S => sig_controller_daremctr_Mcompar_m_comp_cmp_le0000_lut(7),
      O => sig_controller_daremctr_Mcompar_m_comp_cmp_le0000_cy(7)
    );
  sig_controller_daremctr_Mcompar_m_comp_cmp_le0000_lut_8_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => sig_controller_daremctr_s_Cnt(8),
      I1 => sig_controller_daremctr_s_Reg(8),
      O => sig_controller_daremctr_Mcompar_m_comp_cmp_le0000_lut(8)
    );
  sig_controller_daremctr_Mcompar_m_comp_cmp_le0000_cy_8_Q : MUXCY
    port map (
      CI => sig_controller_daremctr_Mcompar_m_comp_cmp_le0000_cy(7),
      DI => sig_controller_daremctr_s_Cnt(8),
      S => sig_controller_daremctr_Mcompar_m_comp_cmp_le0000_lut(8),
      O => sig_controller_daremctr_Mcompar_m_comp_cmp_le0000_cy(8)
    );
  sig_controller_daremctr_Mcompar_m_comp_cmp_le0000_lut_9_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => sig_controller_daremctr_s_Cnt(9),
      I1 => sig_controller_daremctr_s_Reg(9),
      O => sig_controller_daremctr_Mcompar_m_comp_cmp_le0000_lut(9)
    );
  sig_controller_daremctr_Mcompar_m_comp_cmp_le0000_cy_9_Q : MUXCY
    port map (
      CI => sig_controller_daremctr_Mcompar_m_comp_cmp_le0000_cy(8),
      DI => sig_controller_daremctr_s_Cnt(9),
      S => sig_controller_daremctr_Mcompar_m_comp_cmp_le0000_lut(9),
      O => sig_controller_daremctr_Mcompar_m_comp_cmp_le0000_cy(9)
    );
  sig_controller_daremctr_Mcompar_m_comp_cmp_le0000_lut_10_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => sig_controller_daremctr_s_Cnt(10),
      I1 => sig_controller_daremctr_s_Reg(10),
      O => sig_controller_daremctr_Mcompar_m_comp_cmp_le0000_lut(10)
    );
  sig_controller_daremctr_Mcompar_m_comp_cmp_le0000_cy_10_Q : MUXCY
    port map (
      CI => sig_controller_daremctr_Mcompar_m_comp_cmp_le0000_cy(9),
      DI => sig_controller_daremctr_s_Cnt(10),
      S => sig_controller_daremctr_Mcompar_m_comp_cmp_le0000_lut(10),
      O => sig_controller_s_comp2
    );
  sig_controller_adremctr_s_Reg_0 : FDE
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_adremctr_s_Reg_not0001,
      D => sig_controller_adremctr_s_Reg_mux0000(0),
      Q => sig_controller_adremctr_s_Reg(0)
    );
  sig_controller_adremctr_s_Reg_1 : FDE
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_adremctr_s_Reg_not0001,
      D => sig_controller_adremctr_s_Reg_mux0000(1),
      Q => sig_controller_adremctr_s_Reg(1)
    );
  sig_controller_adremctr_s_Reg_2 : FDE
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_adremctr_s_Reg_not0001,
      D => sig_controller_adremctr_s_Reg_mux0000(2),
      Q => sig_controller_adremctr_s_Reg(2)
    );
  sig_controller_adremctr_s_Reg_3 : FDE
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_adremctr_s_Reg_not0001,
      D => sig_controller_adremctr_s_Reg_mux0000(3),
      Q => sig_controller_adremctr_s_Reg(3)
    );
  sig_controller_adremctr_s_Reg_4 : FDE
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_adremctr_s_Reg_not0001,
      D => sig_controller_adremctr_s_Reg_mux0000(4),
      Q => sig_controller_adremctr_s_Reg(4)
    );
  sig_controller_adremctr_s_Reg_5 : FDE
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_adremctr_s_Reg_not0001,
      D => sig_controller_adremctr_s_Reg_mux0000(5),
      Q => sig_controller_adremctr_s_Reg(5)
    );
  sig_controller_adremctr_s_Reg_6 : FDE
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_adremctr_s_Reg_not0001,
      D => sig_controller_adremctr_s_Reg_mux0000(6),
      Q => sig_controller_adremctr_s_Reg(6)
    );
  sig_controller_adremctr_s_Reg_7 : FDE
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_adremctr_s_Reg_not0001,
      D => sig_controller_adremctr_s_Reg_mux0000(7),
      Q => sig_controller_adremctr_s_Reg(7)
    );
  sig_controller_adremctr_s_Reg_8 : FDE
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_adremctr_s_Reg_not0001,
      D => sig_controller_adremctr_s_Reg_mux0000(8),
      Q => sig_controller_adremctr_s_Reg(8)
    );
  sig_controller_adremctr_s_Reg_9 : FDE
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_adremctr_s_Reg_not0001,
      D => sig_controller_adremctr_s_Reg_mux0000(9),
      Q => sig_controller_adremctr_s_Reg(9)
    );
  sig_controller_adremctr_s_Reg_10 : FDE
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_adremctr_s_Reg_not0001,
      D => sig_controller_adremctr_s_Reg_mux0000(10),
      Q => sig_controller_adremctr_s_Reg(10)
    );
  sig_controller_adremctr_s_Cnt_0 : FDRE
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_s_enpad_1687,
      D => sig_controller_adremctr_Result(0),
      R => sig_controller_s_clrad_1661,
      Q => sig_controller_adremctr_s_Cnt(0)
    );
  sig_controller_adremctr_s_Cnt_1 : FDRE
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_s_enpad_1687,
      D => sig_controller_adremctr_Result(1),
      R => sig_controller_s_clrad_1661,
      Q => sig_controller_adremctr_s_Cnt(1)
    );
  sig_controller_adremctr_s_Cnt_2 : FDRE
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_s_enpad_1687,
      D => sig_controller_adremctr_Result(2),
      R => sig_controller_s_clrad_1661,
      Q => sig_controller_adremctr_s_Cnt(2)
    );
  sig_controller_adremctr_s_Cnt_3 : FDRE
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_s_enpad_1687,
      D => sig_controller_adremctr_Result(3),
      R => sig_controller_s_clrad_1661,
      Q => sig_controller_adremctr_s_Cnt(3)
    );
  sig_controller_adremctr_s_Cnt_4 : FDRE
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_s_enpad_1687,
      D => sig_controller_adremctr_Result(4),
      R => sig_controller_s_clrad_1661,
      Q => sig_controller_adremctr_s_Cnt(4)
    );
  sig_controller_adremctr_s_Cnt_5 : FDRE
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_s_enpad_1687,
      D => sig_controller_adremctr_Result(5),
      R => sig_controller_s_clrad_1661,
      Q => sig_controller_adremctr_s_Cnt(5)
    );
  sig_controller_adremctr_s_Cnt_6 : FDRE
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_s_enpad_1687,
      D => sig_controller_adremctr_Result(6),
      R => sig_controller_s_clrad_1661,
      Q => sig_controller_adremctr_s_Cnt(6)
    );
  sig_controller_adremctr_s_Cnt_7 : FDRE
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_s_enpad_1687,
      D => sig_controller_adremctr_Result(7),
      R => sig_controller_s_clrad_1661,
      Q => sig_controller_adremctr_s_Cnt(7)
    );
  sig_controller_adremctr_s_Cnt_8 : FDRE
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_s_enpad_1687,
      D => sig_controller_adremctr_Result(8),
      R => sig_controller_s_clrad_1661,
      Q => sig_controller_adremctr_s_Cnt(8)
    );
  sig_controller_adremctr_s_Cnt_9 : FDRE
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_s_enpad_1687,
      D => sig_controller_adremctr_Result(9),
      R => sig_controller_s_clrad_1661,
      Q => sig_controller_adremctr_s_Cnt(9)
    );
  sig_controller_adremctr_s_Cnt_10 : FDRE
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_s_enpad_1687,
      D => sig_controller_adremctr_Result(10),
      R => sig_controller_s_clrad_1661,
      Q => sig_controller_adremctr_s_Cnt(10)
    );
  sig_controller_adremctr_Mcount_s_Cnt_cy_0_Q : MUXCY
    port map (
      CI => avg_module_Maccum_s_data_cy(0),
      DI => N1,
      S => sig_controller_adremctr_Mcount_s_Cnt_lut(0),
      O => sig_controller_adremctr_Mcount_s_Cnt_cy(0)
    );
  sig_controller_adremctr_Mcount_s_Cnt_xor_0_Q : XORCY
    port map (
      CI => avg_module_Maccum_s_data_cy(0),
      LI => sig_controller_adremctr_Mcount_s_Cnt_lut(0),
      O => sig_controller_adremctr_Result(0)
    );
  sig_controller_adremctr_Mcount_s_Cnt_cy_1_Q : MUXCY
    port map (
      CI => sig_controller_adremctr_Mcount_s_Cnt_cy(0),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_adremctr_Mcount_s_Cnt_cy_1_rt_1102,
      O => sig_controller_adremctr_Mcount_s_Cnt_cy(1)
    );
  sig_controller_adremctr_Mcount_s_Cnt_xor_1_Q : XORCY
    port map (
      CI => sig_controller_adremctr_Mcount_s_Cnt_cy(0),
      LI => sig_controller_adremctr_Mcount_s_Cnt_cy_1_rt_1102,
      O => sig_controller_adremctr_Result(1)
    );
  sig_controller_adremctr_Mcount_s_Cnt_cy_2_Q : MUXCY
    port map (
      CI => sig_controller_adremctr_Mcount_s_Cnt_cy(1),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_adremctr_Mcount_s_Cnt_cy_2_rt_1104,
      O => sig_controller_adremctr_Mcount_s_Cnt_cy(2)
    );
  sig_controller_adremctr_Mcount_s_Cnt_xor_2_Q : XORCY
    port map (
      CI => sig_controller_adremctr_Mcount_s_Cnt_cy(1),
      LI => sig_controller_adremctr_Mcount_s_Cnt_cy_2_rt_1104,
      O => sig_controller_adremctr_Result(2)
    );
  sig_controller_adremctr_Mcount_s_Cnt_cy_3_Q : MUXCY
    port map (
      CI => sig_controller_adremctr_Mcount_s_Cnt_cy(2),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_adremctr_Mcount_s_Cnt_cy_3_rt_1106,
      O => sig_controller_adremctr_Mcount_s_Cnt_cy(3)
    );
  sig_controller_adremctr_Mcount_s_Cnt_xor_3_Q : XORCY
    port map (
      CI => sig_controller_adremctr_Mcount_s_Cnt_cy(2),
      LI => sig_controller_adremctr_Mcount_s_Cnt_cy_3_rt_1106,
      O => sig_controller_adremctr_Result(3)
    );
  sig_controller_adremctr_Mcount_s_Cnt_cy_4_Q : MUXCY
    port map (
      CI => sig_controller_adremctr_Mcount_s_Cnt_cy(3),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_adremctr_Mcount_s_Cnt_cy_4_rt_1108,
      O => sig_controller_adremctr_Mcount_s_Cnt_cy(4)
    );
  sig_controller_adremctr_Mcount_s_Cnt_xor_4_Q : XORCY
    port map (
      CI => sig_controller_adremctr_Mcount_s_Cnt_cy(3),
      LI => sig_controller_adremctr_Mcount_s_Cnt_cy_4_rt_1108,
      O => sig_controller_adremctr_Result(4)
    );
  sig_controller_adremctr_Mcount_s_Cnt_cy_5_Q : MUXCY
    port map (
      CI => sig_controller_adremctr_Mcount_s_Cnt_cy(4),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_adremctr_Mcount_s_Cnt_cy_5_rt_1110,
      O => sig_controller_adremctr_Mcount_s_Cnt_cy(5)
    );
  sig_controller_adremctr_Mcount_s_Cnt_xor_5_Q : XORCY
    port map (
      CI => sig_controller_adremctr_Mcount_s_Cnt_cy(4),
      LI => sig_controller_adremctr_Mcount_s_Cnt_cy_5_rt_1110,
      O => sig_controller_adremctr_Result(5)
    );
  sig_controller_adremctr_Mcount_s_Cnt_cy_6_Q : MUXCY
    port map (
      CI => sig_controller_adremctr_Mcount_s_Cnt_cy(5),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_adremctr_Mcount_s_Cnt_cy_6_rt_1112,
      O => sig_controller_adremctr_Mcount_s_Cnt_cy(6)
    );
  sig_controller_adremctr_Mcount_s_Cnt_xor_6_Q : XORCY
    port map (
      CI => sig_controller_adremctr_Mcount_s_Cnt_cy(5),
      LI => sig_controller_adremctr_Mcount_s_Cnt_cy_6_rt_1112,
      O => sig_controller_adremctr_Result(6)
    );
  sig_controller_adremctr_Mcount_s_Cnt_cy_7_Q : MUXCY
    port map (
      CI => sig_controller_adremctr_Mcount_s_Cnt_cy(6),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_adremctr_Mcount_s_Cnt_cy_7_rt_1114,
      O => sig_controller_adremctr_Mcount_s_Cnt_cy(7)
    );
  sig_controller_adremctr_Mcount_s_Cnt_xor_7_Q : XORCY
    port map (
      CI => sig_controller_adremctr_Mcount_s_Cnt_cy(6),
      LI => sig_controller_adremctr_Mcount_s_Cnt_cy_7_rt_1114,
      O => sig_controller_adremctr_Result(7)
    );
  sig_controller_adremctr_Mcount_s_Cnt_cy_8_Q : MUXCY
    port map (
      CI => sig_controller_adremctr_Mcount_s_Cnt_cy(7),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_adremctr_Mcount_s_Cnt_cy_8_rt_1116,
      O => sig_controller_adremctr_Mcount_s_Cnt_cy(8)
    );
  sig_controller_adremctr_Mcount_s_Cnt_xor_8_Q : XORCY
    port map (
      CI => sig_controller_adremctr_Mcount_s_Cnt_cy(7),
      LI => sig_controller_adremctr_Mcount_s_Cnt_cy_8_rt_1116,
      O => sig_controller_adremctr_Result(8)
    );
  sig_controller_adremctr_Mcount_s_Cnt_cy_9_Q : MUXCY
    port map (
      CI => sig_controller_adremctr_Mcount_s_Cnt_cy(8),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_adremctr_Mcount_s_Cnt_cy_9_rt_1118,
      O => sig_controller_adremctr_Mcount_s_Cnt_cy(9)
    );
  sig_controller_adremctr_Mcount_s_Cnt_xor_9_Q : XORCY
    port map (
      CI => sig_controller_adremctr_Mcount_s_Cnt_cy(8),
      LI => sig_controller_adremctr_Mcount_s_Cnt_cy_9_rt_1118,
      O => sig_controller_adremctr_Result(9)
    );
  sig_controller_adremctr_Mcount_s_Cnt_xor_10_Q : XORCY
    port map (
      CI => sig_controller_adremctr_Mcount_s_Cnt_cy(9),
      LI => sig_controller_adremctr_s_Cnt(10),
      O => sig_controller_adremctr_Result(10)
    );
  sig_controller_t_ps_FSM_FFd7 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_0_OBUF_917,
      D => sig_controller_t_ps_FSM_FFd16_1730,
      Q => sig_controller_t_ps_FSM_FFd7_1751
    );
  sig_controller_t_ps_FSM_FFd5 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_0_OBUF_917,
      D => sig_controller_t_ps_FSM_FFd15_1728,
      Q => sig_controller_t_ps_FSM_FFd5_1749
    );
  sig_controller_t_ps_FSM_FFd2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_0_OBUF_917,
      D => sig_controller_t_ps_FSM_FFd13_1724,
      Q => sig_controller_t_ps_FSM_FFd2_1738
    );
  sig_controller_t_ps_FSM_FFd19 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_0_OBUF_917,
      D => sig_controller_t_ps_FSM_FFd19_In,
      Q => sig_controller_t_ps_FSM_FFd19_1736
    );
  sig_controller_t_ps_FSM_FFd17 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_0_OBUF_917,
      D => sig_controller_t_ps_FSM_FFd17_In,
      Q => sig_controller_t_ps_FSM_FFd17_1732
    );
  sig_controller_t_ps_FSM_FFd18 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_0_OBUF_917,
      D => sig_controller_t_ps_FSM_FFd18_In,
      Q => sig_controller_t_ps_FSM_FFd18_1734
    );
  sig_controller_t_ps_FSM_FFd14 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_0_OBUF_917,
      D => sig_controller_t_ps_FSM_FFd14_In_1727,
      Q => sig_controller_t_ps_FSM_FFd14_1726
    );
  sig_controller_t_ps_FSM_FFd11 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_0_OBUF_917,
      D => sig_controller_t_ps_FSM_FFd11_In,
      Q => sig_controller_t_ps_FSM_FFd11_1720
    );
  sig_controller_t_ps_FSM_FFd9 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_0_OBUF_917,
      D => sig_controller_t_ps_FSM_FFd9_In,
      Q => sig_controller_t_ps_FSM_FFd9_1753
    );
  sig_controller_t_ps_FSM_FFd3 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_0_OBUF_917,
      D => sig_controller_t_ps_FSM_FFd3_In,
      Q => sig_controller_t_ps_FSM_FFd3_1746
    );
  sig_controller_adc_ctr_Mcount_s_cnt_xor_10_Q : XORCY
    port map (
      CI => sig_controller_adc_ctr_Mcount_s_cnt_cy(9),
      LI => sig_controller_adc_ctr_Mcount_s_cnt_xor_10_rt_1085,
      O => sig_controller_Result(10)
    );
  sig_controller_adc_ctr_Mcount_s_cnt_xor_9_Q : XORCY
    port map (
      CI => sig_controller_adc_ctr_Mcount_s_cnt_cy(8),
      LI => sig_controller_adc_ctr_Mcount_s_cnt_cy_9_rt_1083,
      O => sig_controller_Result(9)
    );
  sig_controller_adc_ctr_Mcount_s_cnt_cy_9_Q : MUXCY
    port map (
      CI => sig_controller_adc_ctr_Mcount_s_cnt_cy(8),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_adc_ctr_Mcount_s_cnt_cy_9_rt_1083,
      O => sig_controller_adc_ctr_Mcount_s_cnt_cy(9)
    );
  sig_controller_adc_ctr_Mcount_s_cnt_xor_8_Q : XORCY
    port map (
      CI => sig_controller_adc_ctr_Mcount_s_cnt_cy(7),
      LI => sig_controller_adc_ctr_Mcount_s_cnt_cy_8_rt_1081,
      O => sig_controller_Result(8)
    );
  sig_controller_adc_ctr_Mcount_s_cnt_cy_8_Q : MUXCY
    port map (
      CI => sig_controller_adc_ctr_Mcount_s_cnt_cy(7),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_adc_ctr_Mcount_s_cnt_cy_8_rt_1081,
      O => sig_controller_adc_ctr_Mcount_s_cnt_cy(8)
    );
  sig_controller_adc_ctr_Mcount_s_cnt_xor_7_Q : XORCY
    port map (
      CI => sig_controller_adc_ctr_Mcount_s_cnt_cy(6),
      LI => sig_controller_adc_ctr_Mcount_s_cnt_cy_7_rt_1079,
      O => sig_controller_Result(7)
    );
  sig_controller_adc_ctr_Mcount_s_cnt_cy_7_Q : MUXCY
    port map (
      CI => sig_controller_adc_ctr_Mcount_s_cnt_cy(6),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_adc_ctr_Mcount_s_cnt_cy_7_rt_1079,
      O => sig_controller_adc_ctr_Mcount_s_cnt_cy(7)
    );
  sig_controller_adc_ctr_Mcount_s_cnt_xor_6_Q : XORCY
    port map (
      CI => sig_controller_adc_ctr_Mcount_s_cnt_cy(5),
      LI => sig_controller_adc_ctr_Mcount_s_cnt_cy_6_rt_1077,
      O => sig_controller_Result(6)
    );
  sig_controller_adc_ctr_Mcount_s_cnt_cy_6_Q : MUXCY
    port map (
      CI => sig_controller_adc_ctr_Mcount_s_cnt_cy(5),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_adc_ctr_Mcount_s_cnt_cy_6_rt_1077,
      O => sig_controller_adc_ctr_Mcount_s_cnt_cy(6)
    );
  sig_controller_adc_ctr_Mcount_s_cnt_xor_5_Q : XORCY
    port map (
      CI => sig_controller_adc_ctr_Mcount_s_cnt_cy(4),
      LI => sig_controller_adc_ctr_Mcount_s_cnt_cy_5_rt_1075,
      O => sig_controller_Result(5)
    );
  sig_controller_adc_ctr_Mcount_s_cnt_cy_5_Q : MUXCY
    port map (
      CI => sig_controller_adc_ctr_Mcount_s_cnt_cy(4),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_adc_ctr_Mcount_s_cnt_cy_5_rt_1075,
      O => sig_controller_adc_ctr_Mcount_s_cnt_cy(5)
    );
  sig_controller_adc_ctr_Mcount_s_cnt_xor_4_Q : XORCY
    port map (
      CI => sig_controller_adc_ctr_Mcount_s_cnt_cy(3),
      LI => sig_controller_adc_ctr_Mcount_s_cnt_cy_4_rt_1073,
      O => sig_controller_Result(4)
    );
  sig_controller_adc_ctr_Mcount_s_cnt_cy_4_Q : MUXCY
    port map (
      CI => sig_controller_adc_ctr_Mcount_s_cnt_cy(3),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_adc_ctr_Mcount_s_cnt_cy_4_rt_1073,
      O => sig_controller_adc_ctr_Mcount_s_cnt_cy(4)
    );
  sig_controller_adc_ctr_Mcount_s_cnt_xor_3_Q : XORCY
    port map (
      CI => sig_controller_adc_ctr_Mcount_s_cnt_cy(2),
      LI => sig_controller_adc_ctr_Mcount_s_cnt_cy_3_rt_1071,
      O => sig_controller_Result(3)
    );
  sig_controller_adc_ctr_Mcount_s_cnt_cy_3_Q : MUXCY
    port map (
      CI => sig_controller_adc_ctr_Mcount_s_cnt_cy(2),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_adc_ctr_Mcount_s_cnt_cy_3_rt_1071,
      O => sig_controller_adc_ctr_Mcount_s_cnt_cy(3)
    );
  sig_controller_adc_ctr_Mcount_s_cnt_xor_2_Q : XORCY
    port map (
      CI => sig_controller_adc_ctr_Mcount_s_cnt_cy(1),
      LI => sig_controller_adc_ctr_Mcount_s_cnt_cy_2_rt_1069,
      O => sig_controller_Result(2)
    );
  sig_controller_adc_ctr_Mcount_s_cnt_cy_2_Q : MUXCY
    port map (
      CI => sig_controller_adc_ctr_Mcount_s_cnt_cy(1),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_adc_ctr_Mcount_s_cnt_cy_2_rt_1069,
      O => sig_controller_adc_ctr_Mcount_s_cnt_cy(2)
    );
  sig_controller_adc_ctr_Mcount_s_cnt_xor_1_Q : XORCY
    port map (
      CI => sig_controller_adc_ctr_Mcount_s_cnt_cy(0),
      LI => sig_controller_adc_ctr_Mcount_s_cnt_cy_1_rt_1067,
      O => sig_controller_Result(1)
    );
  sig_controller_adc_ctr_Mcount_s_cnt_cy_1_Q : MUXCY
    port map (
      CI => sig_controller_adc_ctr_Mcount_s_cnt_cy(0),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_adc_ctr_Mcount_s_cnt_cy_1_rt_1067,
      O => sig_controller_adc_ctr_Mcount_s_cnt_cy(1)
    );
  sig_controller_adc_ctr_Mcount_s_cnt_xor_0_Q : XORCY
    port map (
      CI => avg_module_Maccum_s_data_cy(0),
      LI => sig_controller_adc_ctr_Mcount_s_cnt_lut(0),
      O => sig_controller_Result(0)
    );
  sig_controller_adc_ctr_Mcount_s_cnt_cy_0_Q : MUXCY
    port map (
      CI => avg_module_Maccum_s_data_cy(0),
      DI => N1,
      S => sig_controller_adc_ctr_Mcount_s_cnt_lut(0),
      O => sig_controller_adc_ctr_Mcount_s_cnt_cy(0)
    );
  sig_controller_adc_ctr_s_cnt_10 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_1_OBUF_919,
      D => sig_controller_Result(10),
      R => sig_controller_adc_ctr_s_cnt_not0001,
      Q => sig_controller_adc_ctr_s_cnt(10)
    );
  sig_controller_adc_ctr_s_cnt_9 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_1_OBUF_919,
      D => sig_controller_Result(9),
      R => sig_controller_adc_ctr_s_cnt_not0001,
      Q => sig_controller_adc_ctr_s_cnt(9)
    );
  sig_controller_adc_ctr_s_cnt_8 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_1_OBUF_919,
      D => sig_controller_Result(8),
      R => sig_controller_adc_ctr_s_cnt_not0001,
      Q => sig_controller_adc_ctr_s_cnt(8)
    );
  sig_controller_adc_ctr_s_cnt_7 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_1_OBUF_919,
      D => sig_controller_Result(7),
      R => sig_controller_adc_ctr_s_cnt_not0001,
      Q => sig_controller_adc_ctr_s_cnt(7)
    );
  sig_controller_adc_ctr_s_cnt_6 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_1_OBUF_919,
      D => sig_controller_Result(6),
      R => sig_controller_adc_ctr_s_cnt_not0001,
      Q => sig_controller_adc_ctr_s_cnt(6)
    );
  sig_controller_adc_ctr_s_cnt_5 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_1_OBUF_919,
      D => sig_controller_Result(5),
      R => sig_controller_adc_ctr_s_cnt_not0001,
      Q => sig_controller_adc_ctr_s_cnt(5)
    );
  sig_controller_adc_ctr_s_cnt_4 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_1_OBUF_919,
      D => sig_controller_Result(4),
      R => sig_controller_adc_ctr_s_cnt_not0001,
      Q => sig_controller_adc_ctr_s_cnt(4)
    );
  sig_controller_adc_ctr_s_cnt_3 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_1_OBUF_919,
      D => sig_controller_Result(3),
      R => sig_controller_adc_ctr_s_cnt_not0001,
      Q => sig_controller_adc_ctr_s_cnt(3)
    );
  sig_controller_adc_ctr_s_cnt_2 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_1_OBUF_919,
      D => sig_controller_Result(2),
      R => sig_controller_adc_ctr_s_cnt_not0001,
      Q => sig_controller_adc_ctr_s_cnt(2)
    );
  sig_controller_adc_ctr_s_cnt_1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_1_OBUF_919,
      D => sig_controller_Result(1),
      R => sig_controller_adc_ctr_s_cnt_not0001,
      Q => sig_controller_adc_ctr_s_cnt(1)
    );
  sig_controller_adc_ctr_s_cnt_0 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_1_OBUF_919,
      D => sig_controller_Result(0),
      R => sig_controller_adc_ctr_s_cnt_not0001,
      Q => sig_controller_adc_ctr_s_cnt(0)
    );
  sig_controller_adc_ctr_s_ps_0 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_0_OBUF_917,
      D => sig_controller_adc_ctr_s_ns,
      Q => sig_controller_adc_ctr_s_ps(0)
    );
  sig_controller_m_ram1_mux_sel_1 : LD
    port map (
      D => sig_controller_m_ram1_mux_sel_mux0002(1),
      G => sig_controller_m_ram1_mux_sel_not0001_1414,
      Q => sig_controller_m_ram1_mux_sel(1)
    );
  sig_controller_m_ram1_mux_sel_0 : LD
    port map (
      D => sig_controller_m_ram1_mux_sel_mux0002(0),
      G => sig_controller_m_ram1_mux_sel_not0001_1414,
      Q => sig_controller_m_ram1_mux_sel(0)
    );
  sig_controller_s_selda_1 : LD
    port map (
      D => sig_controller_s_clrda_mux0000,
      G => sig_controller_s_selda_or0000,
      Q => sig_controller_s_selda(1)
    );
  sig_controller_s_selda_0 : LD
    port map (
      D => sig_controller_t_ps_FSM_FFd15_1728,
      G => sig_controller_s_selda_or0000,
      Q => sig_controller_s_selda(0)
    );
  sig_controller_s_sel1_1 : LD
    port map (
      D => sig_controller_s_sel1_mux0003(1),
      G => sig_controller_s_sel1_not0001,
      Q => sig_controller_s_sel1(1)
    );
  sig_controller_s_sel1_0 : LD
    port map (
      D => sig_controller_s_sel1_mux0003(0),
      G => sig_controller_s_sel1_not0001,
      Q => sig_controller_s_sel1(0)
    );
  sig_controller_s_sel0_1 : LD
    port map (
      D => sig_controller_s_sel0_mux0002(1),
      G => sig_controller_s_sel0_not0001,
      Q => sig_controller_s_sel0(1)
    );
  sig_controller_s_sel0_0 : LD
    port map (
      D => sig_controller_s_enp0_not000122,
      G => sig_controller_s_sel0_not0001,
      Q => sig_controller_s_sel0(0)
    );
  sig_controller_s_selad_1 : LD
    port map (
      D => sig_controller_s_clrad_mux0000,
      G => sig_controller_s_selad_or0000,
      Q => sig_controller_s_selad(1)
    );
  sig_controller_s_selad_0 : LD
    port map (
      D => sig_controller_t_ps_FSM_FFd13_1724,
      G => sig_controller_s_selad_or0000,
      Q => sig_controller_s_selad(0)
    );
  sig_controller_t_prevmode_3 : LD
    port map (
      D => sig_controller_s_enp0_and0000,
      G => sig_controller_t_prevmode_not0001_1716,
      Q => sig_controller_t_prevmode(3)
    );
  sig_controller_t_prevmode_2 : LD
    port map (
      D => sig_controller_t_prevmode_mux0006(2),
      G => sig_controller_t_prevmode_not0001_1716,
      Q => sig_controller_t_prevmode(2)
    );
  sig_controller_t_prevmode_1 : LD
    port map (
      D => sig_controller_s_enp0_not000122,
      G => sig_controller_t_prevmode_not0001_1716,
      Q => sig_controller_t_prevmode(1)
    );
  sig_controller_t_prevmode_0 : LD
    port map (
      D => sig_controller_m_ram1_mux_sel_and0003,
      G => sig_controller_t_prevmode_not0001_1716,
      Q => sig_controller_t_prevmode(0)
    );
  sig_controller_m_enb1 : LD
    port map (
      D => sig_controller_m_enb1_mux0000_1406,
      G => sig_controller_m_enb1_or0000_1407,
      Q => sig_controller_m_enb1_1405
    );
  sig_controller_m_enb0 : LD
    port map (
      D => sig_controller_m_enb0_mux0000,
      G => sig_controller_m_enb0_or0000,
      Q => sig_controller_m_enb0_1402
    );
  sig_controller_m_ena2 : LD
    port map (
      D => sig_controller_t_ps_FSM_FFd15_1728,
      G => sig_controller_m_ena2_or0000,
      Q => sig_controller_m_ena2_1400
    );
  sig_controller_m_ena1 : LD
    port map (
      D => sig_controller_t_ps_FSM_FFd18_1734,
      G => sig_controller_m_ena1_or0000,
      Q => sig_controller_m_ena1_1398
    );
  sig_controller_m_ena0 : LD
    port map (
      D => sig_controller_m_ena0_mux0000,
      G => sig_controller_m_ena0_or0000_1397,
      Q => sig_controller_m_ena0_1395
    );
  sig_controller_s_clrda : LD
    port map (
      D => sig_controller_s_clrda_mux0000,
      G => sig_controller_s_clrda_or0000,
      Q => sig_controller_s_clrda_1664
    );
  sig_controller_s_clrad : LD
    port map (
      D => sig_controller_s_clrad_mux0000,
      G => sig_controller_s_clrad_or0000,
      Q => sig_controller_s_clrad_1661
    );
  sig_controller_s_dac_stop : LD
    port map (
      D => sig_controller_s_dac_stop_mux0000,
      G => sig_controller_s_dac_stop_or0000_1674,
      Q => sig_controller_s_dac_stop_1672
    );
  sig_controller_s_dac_start : LD
    port map (
      D => sig_controller_t_ps_FSM_FFd3_1746,
      G => sig_controller_s_dac_start_or0000,
      Q => sig_controller_s_dac_start_1670
    );
  sig_controller_s_enp1 : LD
    port map (
      D => sig_controller_s_enp1_mux0000_1683,
      G => sig_controller_s_enp1_not0001,
      Q => sig_controller_s_enp1_1682
    );
  sig_controller_s_enp0 : LD
    port map (
      D => sig_controller_s_enp0_mux0000_1677,
      G => sig_controller_s_enp0_not0001,
      Q => sig_controller_s_enp0_1675
    );
  sig_controller_m_wea2_0 : LD
    port map (
      D => sig_controller_t_ps_FSM_FFd4_1748,
      G => sig_controller_m_wea2_0_or0000,
      Q => sig_controller_m_wea2(0)
    );
  sig_controller_m_wea1_0 : LD
    port map (
      D => sig_controller_m_wea1_0_mux0000,
      G => sig_controller_m_wea1_0_not0001,
      Q => sig_controller_m_wea1(0)
    );
  sig_controller_m_wea0_0 : LD
    port map (
      D => sig_controller_m_wea0_0_mux0000,
      G => sig_controller_m_wea0_0_not0001,
      Q => sig_controller_m_wea0(0)
    );
  sig_controller_s_enpad : LD
    port map (
      D => sig_controller_t_ps_FSM_FFd1_1717,
      G => sig_controller_s_enpad_or0000,
      Q => sig_controller_s_enpad_1687
    );
  sig_controller_m_da_latch_en : LD
    port map (
      D => sig_controller_t_ps_FSM_FFd3_1746,
      G => sig_controller_m_da_latch_en_or0000,
      Q => sig_controller_m_da_latch_en_1391
    );
  sig_controller_s_adc_stop : LD
    port map (
      D => sig_controller_t_ps_FSM_FFd13_1724,
      G => sig_controller_s_adc_stop_or0000,
      Q => sig_controller_s_adc_stop_1651
    );
  sig_controller_s_adc_start : LD
    port map (
      D => sig_controller_t_ps_FSM_FFd20_1739,
      G => sig_controller_s_adc_start_or0000,
      Q => sig_controller_s_adc_start_1649
    );
  sig_controller_m_enb3 : LD
    port map (
      D => sig_controller_t_ps_FSM_FFd13_1724,
      G => sig_controller_s_adc_start_or0000,
      Q => sig_controller_m_enb3_1408
    );
  sig_controller_s_clr1 : LD
    port map (
      D => sig_controller_s_clr1_mux0009_1659,
      G => sig_controller_s_clr1_not0001_1660,
      Q => sig_controller_s_clr1_1658
    );
  sig_controller_s_clr0 : LD
    port map (
      D => sig_controller_s_clr0_mux0009,
      G => sig_controller_s_clr0_not0001,
      Q => sig_controller_s_clr0_1653
    );
  sig_controller_m_dout_en : LD
    port map (
      D => sig_controller_t_ps_FSM_FFd9_1753,
      G => sig_controller_m_dout_en_or0000,
      Q => sig_controller_m_dout_en_1393
    );
  avg_module_cns1_Msub_m_remainder_addsub0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => avg_module_Maccum_s_data_cy(0),
      S => avg_module_cns1_Msub_m_remainder_addsub0000_lut(0),
      O => avg_module_cns1_Msub_m_remainder_addsub0000_cy(0)
    );
  avg_module_cns1_Msub_m_remainder_addsub0000_xor_0_Q : XORCY
    port map (
      CI => N1,
      LI => avg_module_cns1_Msub_m_remainder_addsub0000_lut(0),
      O => avg_module_cns1_m_remainder_addsub0000(0)
    );
  avg_module_cns1_Msub_m_remainder_addsub0000_cy_1_Q : MUXCY
    port map (
      CI => avg_module_cns1_Msub_m_remainder_addsub0000_cy(0),
      DI => avg_module_Maccum_s_data_cy(0),
      S => avg_module_cns1_Msub_m_remainder_addsub0000_lut(1),
      O => avg_module_cns1_Msub_m_remainder_addsub0000_cy(1)
    );
  avg_module_cns1_Msub_m_remainder_addsub0000_xor_1_Q : XORCY
    port map (
      CI => avg_module_cns1_Msub_m_remainder_addsub0000_cy(0),
      LI => avg_module_cns1_Msub_m_remainder_addsub0000_lut(1),
      O => avg_module_cns1_m_remainder_addsub0000(1)
    );
  avg_module_cns1_Msub_m_remainder_addsub0000_cy_2_Q : MUXCY
    port map (
      CI => avg_module_cns1_Msub_m_remainder_addsub0000_cy(1),
      DI => avg_module_Maccum_s_data_cy(0),
      S => avg_module_cns1_Msub_m_remainder_addsub0000_lut(2),
      O => avg_module_cns1_Msub_m_remainder_addsub0000_cy(2)
    );
  avg_module_cns1_Msub_m_remainder_addsub0000_xor_2_Q : XORCY
    port map (
      CI => avg_module_cns1_Msub_m_remainder_addsub0000_cy(1),
      LI => avg_module_cns1_Msub_m_remainder_addsub0000_lut(2),
      O => avg_module_cns1_m_remainder_addsub0000(2)
    );
  avg_module_cns1_Msub_m_remainder_addsub0000_cy_3_Q : MUXCY
    port map (
      CI => avg_module_cns1_Msub_m_remainder_addsub0000_cy(2),
      DI => avg_module_Maccum_s_data_cy(0),
      S => avg_module_cns1_Msub_m_remainder_addsub0000_lut(3),
      O => avg_module_cns1_Msub_m_remainder_addsub0000_cy(3)
    );
  avg_module_cns1_Msub_m_remainder_addsub0000_xor_3_Q : XORCY
    port map (
      CI => avg_module_cns1_Msub_m_remainder_addsub0000_cy(2),
      LI => avg_module_cns1_Msub_m_remainder_addsub0000_lut(3),
      O => avg_module_cns1_m_remainder_addsub0000(3)
    );
  avg_module_cns1_Msub_m_remainder_addsub0000_cy_4_Q : MUXCY
    port map (
      CI => avg_module_cns1_Msub_m_remainder_addsub0000_cy(3),
      DI => avg_module_Maccum_s_data_cy(0),
      S => avg_module_cns1_Msub_m_remainder_addsub0000_lut(4),
      O => avg_module_cns1_Msub_m_remainder_addsub0000_cy(4)
    );
  avg_module_cns1_Msub_m_remainder_addsub0000_xor_4_Q : XORCY
    port map (
      CI => avg_module_cns1_Msub_m_remainder_addsub0000_cy(3),
      LI => avg_module_cns1_Msub_m_remainder_addsub0000_lut(4),
      O => avg_module_cns1_m_remainder_addsub0000(4)
    );
  avg_module_cns1_Msub_m_remainder_addsub0000_cy_5_Q : MUXCY
    port map (
      CI => avg_module_cns1_Msub_m_remainder_addsub0000_cy(4),
      DI => avg_module_Maccum_s_data_cy(0),
      S => avg_module_cns1_Msub_m_remainder_addsub0000_lut(5),
      O => avg_module_cns1_Msub_m_remainder_addsub0000_cy(5)
    );
  avg_module_cns1_Msub_m_remainder_addsub0000_xor_5_Q : XORCY
    port map (
      CI => avg_module_cns1_Msub_m_remainder_addsub0000_cy(4),
      LI => avg_module_cns1_Msub_m_remainder_addsub0000_lut(5),
      O => avg_module_cns1_m_remainder_addsub0000(5)
    );
  avg_module_cns1_Msub_m_remainder_addsub0000_xor_6_Q : XORCY
    port map (
      CI => avg_module_cns1_Msub_m_remainder_addsub0000_cy(5),
      LI => avg_module_cns1_Mcompar_m_remainder_cmp_ge0000_lut_6_1_1,
      O => avg_module_cns1_m_remainder_addsub0000(6)
    );
  avg_module_cns1_Mcompar_m_remainder_cmp_ge0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => avg_module_Maccum_s_data_cy(0),
      S => avg_module_cns1_Mcompar_m_remainder_cmp_ge0000_lut(0),
      O => avg_module_cns1_Mcompar_m_remainder_cmp_ge0000_cy(0)
    );
  avg_module_cns1_Mcompar_m_remainder_cmp_ge0000_cy_1_Q : MUXCY
    port map (
      CI => avg_module_cns1_Mcompar_m_remainder_cmp_ge0000_cy(0),
      DI => avg_module_Maccum_s_data_cy(0),
      S => avg_module_cns1_Mcompar_m_remainder_cmp_ge0000_lut(1),
      O => avg_module_cns1_Mcompar_m_remainder_cmp_ge0000_cy(1)
    );
  avg_module_cns1_Mcompar_m_remainder_cmp_ge0000_cy_2_Q : MUXCY
    port map (
      CI => avg_module_cns1_Mcompar_m_remainder_cmp_ge0000_cy(1),
      DI => avg_module_Maccum_s_data_cy(0),
      S => avg_module_cns1_Mcompar_m_remainder_cmp_ge0000_lut(2),
      O => avg_module_cns1_Mcompar_m_remainder_cmp_ge0000_cy(2)
    );
  avg_module_cns1_Mcompar_m_remainder_cmp_ge0000_cy_3_Q : MUXCY
    port map (
      CI => avg_module_cns1_Mcompar_m_remainder_cmp_ge0000_cy(2),
      DI => avg_module_Maccum_s_data_cy(0),
      S => avg_module_cns1_Mcompar_m_remainder_cmp_ge0000_lut(3),
      O => avg_module_cns1_Mcompar_m_remainder_cmp_ge0000_cy(3)
    );
  avg_module_cns1_Mcompar_m_remainder_cmp_ge0000_cy_4_Q : MUXCY
    port map (
      CI => avg_module_cns1_Mcompar_m_remainder_cmp_ge0000_cy(3),
      DI => avg_module_Maccum_s_data_cy(0),
      S => avg_module_cns1_Mcompar_m_remainder_cmp_ge0000_lut(4),
      O => avg_module_cns1_Mcompar_m_remainder_cmp_ge0000_cy(4)
    );
  avg_module_cns1_Mcompar_m_remainder_cmp_ge0000_cy_5_Q : MUXCY
    port map (
      CI => avg_module_cns1_Mcompar_m_remainder_cmp_ge0000_cy(4),
      DI => avg_module_Maccum_s_data_cy(0),
      S => avg_module_cns1_Mcompar_m_remainder_cmp_ge0000_lut(5),
      O => avg_module_cns1_Mcompar_m_remainder_cmp_ge0000_cy(5)
    );
  avg_module_cns1_Mcompar_m_remainder_cmp_ge0000_cy_6_Q : MUXCY
    port map (
      CI => avg_module_cns1_Mcompar_m_remainder_cmp_ge0000_cy(5),
      DI => avg_module_Maccum_s_data_cy(0),
      S => avg_module_cns1_Mcompar_m_remainder_cmp_ge0000_lut(6),
      O => avg_module_cns1_Mcompar_m_remainder_cmp_ge0000_cy(6)
    );
  avg_module_cns1_Mcompar_m_remainder_cmp_ge0000_cy_7_Q : MUXCY
    port map (
      CI => avg_module_cns1_Mcompar_m_remainder_cmp_ge0000_cy(6),
      DI => avg_module_Maccum_s_data_cy(0),
      S => avg_module_cns1_Mcompar_m_remainder_cmp_ge0000_lut(7),
      O => Averager_out(7)
    );
  avg_module_cns2_Msub_m_remainder_addsub0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => avg_module_Maccum_s_data_cy(0),
      S => avg_module_cns2_Msub_m_remainder_addsub0000_lut(0),
      O => avg_module_cns2_Msub_m_remainder_addsub0000_cy(0)
    );
  avg_module_cns2_Msub_m_remainder_addsub0000_xor_0_Q : XORCY
    port map (
      CI => N1,
      LI => avg_module_cns2_Msub_m_remainder_addsub0000_lut(0),
      O => avg_module_cns2_m_remainder_addsub0000(0)
    );
  avg_module_cns2_Msub_m_remainder_addsub0000_cy_1_Q : MUXCY
    port map (
      CI => avg_module_cns2_Msub_m_remainder_addsub0000_cy(0),
      DI => avg_module_s_reminder1(0),
      S => avg_module_cns2_Msub_m_remainder_addsub0000_lut(1),
      O => avg_module_cns2_Msub_m_remainder_addsub0000_cy(1)
    );
  avg_module_cns2_Msub_m_remainder_addsub0000_xor_1_Q : XORCY
    port map (
      CI => avg_module_cns2_Msub_m_remainder_addsub0000_cy(0),
      LI => avg_module_cns2_Msub_m_remainder_addsub0000_lut(1),
      O => avg_module_cns2_m_remainder_addsub0000(1)
    );
  avg_module_cns2_Msub_m_remainder_addsub0000_cy_2_Q : MUXCY
    port map (
      CI => avg_module_cns2_Msub_m_remainder_addsub0000_cy(1),
      DI => avg_module_s_reminder1(1),
      S => avg_module_cns2_Msub_m_remainder_addsub0000_lut(2),
      O => avg_module_cns2_Msub_m_remainder_addsub0000_cy(2)
    );
  avg_module_cns2_Msub_m_remainder_addsub0000_xor_2_Q : XORCY
    port map (
      CI => avg_module_cns2_Msub_m_remainder_addsub0000_cy(1),
      LI => avg_module_cns2_Msub_m_remainder_addsub0000_lut(2),
      O => avg_module_cns2_m_remainder_addsub0000(2)
    );
  avg_module_cns2_Msub_m_remainder_addsub0000_cy_3_Q : MUXCY
    port map (
      CI => avg_module_cns2_Msub_m_remainder_addsub0000_cy(2),
      DI => avg_module_s_reminder1(2),
      S => avg_module_cns2_Msub_m_remainder_addsub0000_lut(3),
      O => avg_module_cns2_Msub_m_remainder_addsub0000_cy(3)
    );
  avg_module_cns2_Msub_m_remainder_addsub0000_xor_3_Q : XORCY
    port map (
      CI => avg_module_cns2_Msub_m_remainder_addsub0000_cy(2),
      LI => avg_module_cns2_Msub_m_remainder_addsub0000_lut(3),
      O => avg_module_cns2_m_remainder_addsub0000(3)
    );
  avg_module_cns2_Msub_m_remainder_addsub0000_cy_4_Q : MUXCY
    port map (
      CI => avg_module_cns2_Msub_m_remainder_addsub0000_cy(3),
      DI => avg_module_s_reminder1(3),
      S => avg_module_cns2_Msub_m_remainder_addsub0000_lut(4),
      O => avg_module_cns2_Msub_m_remainder_addsub0000_cy(4)
    );
  avg_module_cns2_Msub_m_remainder_addsub0000_xor_4_Q : XORCY
    port map (
      CI => avg_module_cns2_Msub_m_remainder_addsub0000_cy(3),
      LI => avg_module_cns2_Msub_m_remainder_addsub0000_lut(4),
      O => avg_module_cns2_m_remainder_addsub0000(4)
    );
  avg_module_cns2_Msub_m_remainder_addsub0000_cy_5_Q : MUXCY
    port map (
      CI => avg_module_cns2_Msub_m_remainder_addsub0000_cy(4),
      DI => avg_module_s_reminder1(4),
      S => avg_module_cns2_Msub_m_remainder_addsub0000_lut(5),
      O => avg_module_cns2_Msub_m_remainder_addsub0000_cy(5)
    );
  avg_module_cns2_Msub_m_remainder_addsub0000_xor_5_Q : XORCY
    port map (
      CI => avg_module_cns2_Msub_m_remainder_addsub0000_cy(4),
      LI => avg_module_cns2_Msub_m_remainder_addsub0000_lut(5),
      O => avg_module_cns2_m_remainder_addsub0000(5)
    );
  avg_module_cns2_Msub_m_remainder_addsub0000_xor_6_Q : XORCY
    port map (
      CI => avg_module_cns2_Msub_m_remainder_addsub0000_cy(5),
      LI => avg_module_cns2_Msub_m_remainder_addsub0000_lut(6),
      O => avg_module_cns2_m_remainder_addsub0000(6)
    );
  avg_module_cns2_Mcompar_m_remainder_cmp_ge0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => avg_module_Maccum_s_data_cy(0),
      S => avg_module_cns2_Mcompar_m_remainder_cmp_ge0000_lut(0),
      O => avg_module_cns2_Mcompar_m_remainder_cmp_ge0000_cy(0)
    );
  avg_module_cns2_Mcompar_m_remainder_cmp_ge0000_cy_1_Q : MUXCY
    port map (
      CI => avg_module_cns2_Mcompar_m_remainder_cmp_ge0000_cy(0),
      DI => avg_module_s_reminder1(0),
      S => avg_module_cns2_Mcompar_m_remainder_cmp_ge0000_lut(1),
      O => avg_module_cns2_Mcompar_m_remainder_cmp_ge0000_cy(1)
    );
  avg_module_cns2_Mcompar_m_remainder_cmp_ge0000_cy_2_Q : MUXCY
    port map (
      CI => avg_module_cns2_Mcompar_m_remainder_cmp_ge0000_cy(1),
      DI => avg_module_s_reminder1(1),
      S => avg_module_cns2_Mcompar_m_remainder_cmp_ge0000_lut(2),
      O => avg_module_cns2_Mcompar_m_remainder_cmp_ge0000_cy(2)
    );
  avg_module_cns2_Mcompar_m_remainder_cmp_ge0000_cy_3_Q : MUXCY
    port map (
      CI => avg_module_cns2_Mcompar_m_remainder_cmp_ge0000_cy(2),
      DI => avg_module_s_reminder1(2),
      S => avg_module_cns2_Mcompar_m_remainder_cmp_ge0000_lut(3),
      O => avg_module_cns2_Mcompar_m_remainder_cmp_ge0000_cy(3)
    );
  avg_module_cns2_Mcompar_m_remainder_cmp_ge0000_cy_4_Q : MUXCY
    port map (
      CI => avg_module_cns2_Mcompar_m_remainder_cmp_ge0000_cy(3),
      DI => avg_module_s_reminder1(3),
      S => avg_module_cns2_Mcompar_m_remainder_cmp_ge0000_lut(4),
      O => avg_module_cns2_Mcompar_m_remainder_cmp_ge0000_cy(4)
    );
  avg_module_cns2_Mcompar_m_remainder_cmp_ge0000_cy_5_Q : MUXCY
    port map (
      CI => avg_module_cns2_Mcompar_m_remainder_cmp_ge0000_cy(4),
      DI => avg_module_s_reminder1(4),
      S => avg_module_cns2_Mcompar_m_remainder_cmp_ge0000_lut(5),
      O => avg_module_cns2_Mcompar_m_remainder_cmp_ge0000_cy(5)
    );
  avg_module_cns2_Mcompar_m_remainder_cmp_ge0000_cy_6_Q : MUXCY
    port map (
      CI => avg_module_cns2_Mcompar_m_remainder_cmp_ge0000_cy(5),
      DI => avg_module_s_reminder1(5),
      S => avg_module_cns2_Mcompar_m_remainder_cmp_ge0000_lut(6),
      O => avg_module_cns2_Mcompar_m_remainder_cmp_ge0000_cy(6)
    );
  avg_module_cns2_Mcompar_m_remainder_cmp_ge0000_cy_7_Q : MUXCY
    port map (
      CI => avg_module_cns2_Mcompar_m_remainder_cmp_ge0000_cy(6),
      DI => avg_module_s_reminder1(6),
      S => avg_module_cns2_Mcompar_m_remainder_cmp_ge0000_lut(7),
      O => Averager_out(6)
    );
  avg_module_cns3_Msub_m_remainder_addsub0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => avg_module_Maccum_s_data_cy(0),
      S => avg_module_cns3_Msub_m_remainder_addsub0000_lut(0),
      O => avg_module_cns3_Msub_m_remainder_addsub0000_cy(0)
    );
  avg_module_cns3_Msub_m_remainder_addsub0000_xor_0_Q : XORCY
    port map (
      CI => N1,
      LI => avg_module_cns3_Msub_m_remainder_addsub0000_lut(0),
      O => avg_module_cns3_m_remainder_addsub0000(0)
    );
  avg_module_cns3_Msub_m_remainder_addsub0000_cy_1_Q : MUXCY
    port map (
      CI => avg_module_cns3_Msub_m_remainder_addsub0000_cy(0),
      DI => avg_module_s_reminder2(0),
      S => avg_module_cns3_Msub_m_remainder_addsub0000_lut(1),
      O => avg_module_cns3_Msub_m_remainder_addsub0000_cy(1)
    );
  avg_module_cns3_Msub_m_remainder_addsub0000_xor_1_Q : XORCY
    port map (
      CI => avg_module_cns3_Msub_m_remainder_addsub0000_cy(0),
      LI => avg_module_cns3_Msub_m_remainder_addsub0000_lut(1),
      O => avg_module_cns3_m_remainder_addsub0000(1)
    );
  avg_module_cns3_Msub_m_remainder_addsub0000_cy_2_Q : MUXCY
    port map (
      CI => avg_module_cns3_Msub_m_remainder_addsub0000_cy(1),
      DI => avg_module_s_reminder2(1),
      S => avg_module_cns3_Msub_m_remainder_addsub0000_lut(2),
      O => avg_module_cns3_Msub_m_remainder_addsub0000_cy(2)
    );
  avg_module_cns3_Msub_m_remainder_addsub0000_xor_2_Q : XORCY
    port map (
      CI => avg_module_cns3_Msub_m_remainder_addsub0000_cy(1),
      LI => avg_module_cns3_Msub_m_remainder_addsub0000_lut(2),
      O => avg_module_cns3_m_remainder_addsub0000(2)
    );
  avg_module_cns3_Msub_m_remainder_addsub0000_cy_3_Q : MUXCY
    port map (
      CI => avg_module_cns3_Msub_m_remainder_addsub0000_cy(2),
      DI => avg_module_s_reminder2(2),
      S => avg_module_cns3_Msub_m_remainder_addsub0000_lut(3),
      O => avg_module_cns3_Msub_m_remainder_addsub0000_cy(3)
    );
  avg_module_cns3_Msub_m_remainder_addsub0000_xor_3_Q : XORCY
    port map (
      CI => avg_module_cns3_Msub_m_remainder_addsub0000_cy(2),
      LI => avg_module_cns3_Msub_m_remainder_addsub0000_lut(3),
      O => avg_module_cns3_m_remainder_addsub0000(3)
    );
  avg_module_cns3_Msub_m_remainder_addsub0000_cy_4_Q : MUXCY
    port map (
      CI => avg_module_cns3_Msub_m_remainder_addsub0000_cy(3),
      DI => avg_module_s_reminder2(3),
      S => avg_module_cns3_Msub_m_remainder_addsub0000_lut(4),
      O => avg_module_cns3_Msub_m_remainder_addsub0000_cy(4)
    );
  avg_module_cns3_Msub_m_remainder_addsub0000_xor_4_Q : XORCY
    port map (
      CI => avg_module_cns3_Msub_m_remainder_addsub0000_cy(3),
      LI => avg_module_cns3_Msub_m_remainder_addsub0000_lut(4),
      O => avg_module_cns3_m_remainder_addsub0000(4)
    );
  avg_module_cns3_Msub_m_remainder_addsub0000_cy_5_Q : MUXCY
    port map (
      CI => avg_module_cns3_Msub_m_remainder_addsub0000_cy(4),
      DI => avg_module_s_reminder2(4),
      S => avg_module_cns3_Msub_m_remainder_addsub0000_lut(5),
      O => avg_module_cns3_Msub_m_remainder_addsub0000_cy(5)
    );
  avg_module_cns3_Msub_m_remainder_addsub0000_xor_5_Q : XORCY
    port map (
      CI => avg_module_cns3_Msub_m_remainder_addsub0000_cy(4),
      LI => avg_module_cns3_Msub_m_remainder_addsub0000_lut(5),
      O => avg_module_cns3_m_remainder_addsub0000(5)
    );
  avg_module_cns3_Msub_m_remainder_addsub0000_xor_6_Q : XORCY
    port map (
      CI => avg_module_cns3_Msub_m_remainder_addsub0000_cy(5),
      LI => avg_module_cns3_Msub_m_remainder_addsub0000_lut(6),
      O => avg_module_cns3_m_remainder_addsub0000(6)
    );
  avg_module_cns3_Mcompar_m_remainder_cmp_ge0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => avg_module_Maccum_s_data_cy(0),
      S => avg_module_cns3_Mcompar_m_remainder_cmp_ge0000_lut(0),
      O => avg_module_cns3_Mcompar_m_remainder_cmp_ge0000_cy(0)
    );
  avg_module_cns3_Mcompar_m_remainder_cmp_ge0000_cy_1_Q : MUXCY
    port map (
      CI => avg_module_cns3_Mcompar_m_remainder_cmp_ge0000_cy(0),
      DI => avg_module_s_reminder2(0),
      S => avg_module_cns3_Mcompar_m_remainder_cmp_ge0000_lut(1),
      O => avg_module_cns3_Mcompar_m_remainder_cmp_ge0000_cy(1)
    );
  avg_module_cns3_Mcompar_m_remainder_cmp_ge0000_cy_2_Q : MUXCY
    port map (
      CI => avg_module_cns3_Mcompar_m_remainder_cmp_ge0000_cy(1),
      DI => avg_module_s_reminder2(1),
      S => avg_module_cns3_Mcompar_m_remainder_cmp_ge0000_lut(2),
      O => avg_module_cns3_Mcompar_m_remainder_cmp_ge0000_cy(2)
    );
  avg_module_cns3_Mcompar_m_remainder_cmp_ge0000_cy_3_Q : MUXCY
    port map (
      CI => avg_module_cns3_Mcompar_m_remainder_cmp_ge0000_cy(2),
      DI => avg_module_s_reminder2(2),
      S => avg_module_cns3_Mcompar_m_remainder_cmp_ge0000_lut(3),
      O => avg_module_cns3_Mcompar_m_remainder_cmp_ge0000_cy(3)
    );
  avg_module_cns3_Mcompar_m_remainder_cmp_ge0000_cy_4_Q : MUXCY
    port map (
      CI => avg_module_cns3_Mcompar_m_remainder_cmp_ge0000_cy(3),
      DI => avg_module_s_reminder2(3),
      S => avg_module_cns3_Mcompar_m_remainder_cmp_ge0000_lut(4),
      O => avg_module_cns3_Mcompar_m_remainder_cmp_ge0000_cy(4)
    );
  avg_module_cns3_Mcompar_m_remainder_cmp_ge0000_cy_5_Q : MUXCY
    port map (
      CI => avg_module_cns3_Mcompar_m_remainder_cmp_ge0000_cy(4),
      DI => avg_module_s_reminder2(4),
      S => avg_module_cns3_Mcompar_m_remainder_cmp_ge0000_lut(5),
      O => avg_module_cns3_Mcompar_m_remainder_cmp_ge0000_cy(5)
    );
  avg_module_cns3_Mcompar_m_remainder_cmp_ge0000_cy_6_Q : MUXCY
    port map (
      CI => avg_module_cns3_Mcompar_m_remainder_cmp_ge0000_cy(5),
      DI => avg_module_s_reminder2(5),
      S => avg_module_cns3_Mcompar_m_remainder_cmp_ge0000_lut(6),
      O => avg_module_cns3_Mcompar_m_remainder_cmp_ge0000_cy(6)
    );
  avg_module_cns3_Mcompar_m_remainder_cmp_ge0000_cy_7_Q : MUXCY
    port map (
      CI => avg_module_cns3_Mcompar_m_remainder_cmp_ge0000_cy(6),
      DI => avg_module_s_reminder2(6),
      S => avg_module_cns3_Mcompar_m_remainder_cmp_ge0000_lut(7),
      O => Averager_out(5)
    );
  avg_module_cns4_Msub_m_remainder_addsub0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => avg_module_Maccum_s_data_cy(0),
      S => avg_module_cns4_Msub_m_remainder_addsub0000_lut(0),
      O => avg_module_cns4_Msub_m_remainder_addsub0000_cy(0)
    );
  avg_module_cns4_Msub_m_remainder_addsub0000_xor_0_Q : XORCY
    port map (
      CI => N1,
      LI => avg_module_cns4_Msub_m_remainder_addsub0000_lut(0),
      O => avg_module_cns4_m_remainder_addsub0000(0)
    );
  avg_module_cns4_Msub_m_remainder_addsub0000_cy_1_Q : MUXCY
    port map (
      CI => avg_module_cns4_Msub_m_remainder_addsub0000_cy(0),
      DI => avg_module_s_reminder3(0),
      S => avg_module_cns4_Msub_m_remainder_addsub0000_lut(1),
      O => avg_module_cns4_Msub_m_remainder_addsub0000_cy(1)
    );
  avg_module_cns4_Msub_m_remainder_addsub0000_xor_1_Q : XORCY
    port map (
      CI => avg_module_cns4_Msub_m_remainder_addsub0000_cy(0),
      LI => avg_module_cns4_Msub_m_remainder_addsub0000_lut(1),
      O => avg_module_cns4_m_remainder_addsub0000(1)
    );
  avg_module_cns4_Msub_m_remainder_addsub0000_cy_2_Q : MUXCY
    port map (
      CI => avg_module_cns4_Msub_m_remainder_addsub0000_cy(1),
      DI => avg_module_s_reminder3(1),
      S => avg_module_cns4_Msub_m_remainder_addsub0000_lut(2),
      O => avg_module_cns4_Msub_m_remainder_addsub0000_cy(2)
    );
  avg_module_cns4_Msub_m_remainder_addsub0000_xor_2_Q : XORCY
    port map (
      CI => avg_module_cns4_Msub_m_remainder_addsub0000_cy(1),
      LI => avg_module_cns4_Msub_m_remainder_addsub0000_lut(2),
      O => avg_module_cns4_m_remainder_addsub0000(2)
    );
  avg_module_cns4_Msub_m_remainder_addsub0000_cy_3_Q : MUXCY
    port map (
      CI => avg_module_cns4_Msub_m_remainder_addsub0000_cy(2),
      DI => avg_module_s_reminder3(2),
      S => avg_module_cns4_Msub_m_remainder_addsub0000_lut(3),
      O => avg_module_cns4_Msub_m_remainder_addsub0000_cy(3)
    );
  avg_module_cns4_Msub_m_remainder_addsub0000_xor_3_Q : XORCY
    port map (
      CI => avg_module_cns4_Msub_m_remainder_addsub0000_cy(2),
      LI => avg_module_cns4_Msub_m_remainder_addsub0000_lut(3),
      O => avg_module_cns4_m_remainder_addsub0000(3)
    );
  avg_module_cns4_Msub_m_remainder_addsub0000_cy_4_Q : MUXCY
    port map (
      CI => avg_module_cns4_Msub_m_remainder_addsub0000_cy(3),
      DI => avg_module_s_reminder3(3),
      S => avg_module_cns4_Msub_m_remainder_addsub0000_lut(4),
      O => avg_module_cns4_Msub_m_remainder_addsub0000_cy(4)
    );
  avg_module_cns4_Msub_m_remainder_addsub0000_xor_4_Q : XORCY
    port map (
      CI => avg_module_cns4_Msub_m_remainder_addsub0000_cy(3),
      LI => avg_module_cns4_Msub_m_remainder_addsub0000_lut(4),
      O => avg_module_cns4_m_remainder_addsub0000(4)
    );
  avg_module_cns4_Msub_m_remainder_addsub0000_cy_5_Q : MUXCY
    port map (
      CI => avg_module_cns4_Msub_m_remainder_addsub0000_cy(4),
      DI => avg_module_s_reminder3(4),
      S => avg_module_cns4_Msub_m_remainder_addsub0000_lut(5),
      O => avg_module_cns4_Msub_m_remainder_addsub0000_cy(5)
    );
  avg_module_cns4_Msub_m_remainder_addsub0000_xor_5_Q : XORCY
    port map (
      CI => avg_module_cns4_Msub_m_remainder_addsub0000_cy(4),
      LI => avg_module_cns4_Msub_m_remainder_addsub0000_lut(5),
      O => avg_module_cns4_m_remainder_addsub0000(5)
    );
  avg_module_cns4_Msub_m_remainder_addsub0000_xor_6_Q : XORCY
    port map (
      CI => avg_module_cns4_Msub_m_remainder_addsub0000_cy(5),
      LI => avg_module_cns4_Msub_m_remainder_addsub0000_lut(6),
      O => avg_module_cns4_m_remainder_addsub0000(6)
    );
  avg_module_cns4_Mcompar_m_remainder_cmp_ge0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => avg_module_Maccum_s_data_cy(0),
      S => avg_module_cns4_Mcompar_m_remainder_cmp_ge0000_lut(0),
      O => avg_module_cns4_Mcompar_m_remainder_cmp_ge0000_cy(0)
    );
  avg_module_cns4_Mcompar_m_remainder_cmp_ge0000_cy_1_Q : MUXCY
    port map (
      CI => avg_module_cns4_Mcompar_m_remainder_cmp_ge0000_cy(0),
      DI => avg_module_s_reminder3(0),
      S => avg_module_cns4_Mcompar_m_remainder_cmp_ge0000_lut(1),
      O => avg_module_cns4_Mcompar_m_remainder_cmp_ge0000_cy(1)
    );
  avg_module_cns4_Mcompar_m_remainder_cmp_ge0000_cy_2_Q : MUXCY
    port map (
      CI => avg_module_cns4_Mcompar_m_remainder_cmp_ge0000_cy(1),
      DI => avg_module_s_reminder3(1),
      S => avg_module_cns4_Mcompar_m_remainder_cmp_ge0000_lut(2),
      O => avg_module_cns4_Mcompar_m_remainder_cmp_ge0000_cy(2)
    );
  avg_module_cns4_Mcompar_m_remainder_cmp_ge0000_cy_3_Q : MUXCY
    port map (
      CI => avg_module_cns4_Mcompar_m_remainder_cmp_ge0000_cy(2),
      DI => avg_module_s_reminder3(2),
      S => avg_module_cns4_Mcompar_m_remainder_cmp_ge0000_lut(3),
      O => avg_module_cns4_Mcompar_m_remainder_cmp_ge0000_cy(3)
    );
  avg_module_cns4_Mcompar_m_remainder_cmp_ge0000_cy_4_Q : MUXCY
    port map (
      CI => avg_module_cns4_Mcompar_m_remainder_cmp_ge0000_cy(3),
      DI => avg_module_s_reminder3(3),
      S => avg_module_cns4_Mcompar_m_remainder_cmp_ge0000_lut(4),
      O => avg_module_cns4_Mcompar_m_remainder_cmp_ge0000_cy(4)
    );
  avg_module_cns4_Mcompar_m_remainder_cmp_ge0000_cy_5_Q : MUXCY
    port map (
      CI => avg_module_cns4_Mcompar_m_remainder_cmp_ge0000_cy(4),
      DI => avg_module_s_reminder3(4),
      S => avg_module_cns4_Mcompar_m_remainder_cmp_ge0000_lut(5),
      O => avg_module_cns4_Mcompar_m_remainder_cmp_ge0000_cy(5)
    );
  avg_module_cns4_Mcompar_m_remainder_cmp_ge0000_cy_6_Q : MUXCY
    port map (
      CI => avg_module_cns4_Mcompar_m_remainder_cmp_ge0000_cy(5),
      DI => avg_module_s_reminder3(5),
      S => avg_module_cns4_Mcompar_m_remainder_cmp_ge0000_lut(6),
      O => avg_module_cns4_Mcompar_m_remainder_cmp_ge0000_cy(6)
    );
  avg_module_cns4_Mcompar_m_remainder_cmp_ge0000_cy_7_Q : MUXCY
    port map (
      CI => avg_module_cns4_Mcompar_m_remainder_cmp_ge0000_cy(6),
      DI => avg_module_s_reminder3(6),
      S => avg_module_cns4_Mcompar_m_remainder_cmp_ge0000_lut(7),
      O => Averager_out(4)
    );
  avg_module_cns5_Msub_m_remainder_addsub0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => avg_module_Maccum_s_data_cy(0),
      S => avg_module_cns5_Msub_m_remainder_addsub0000_lut(0),
      O => avg_module_cns5_Msub_m_remainder_addsub0000_cy(0)
    );
  avg_module_cns5_Msub_m_remainder_addsub0000_xor_0_Q : XORCY
    port map (
      CI => N1,
      LI => avg_module_cns5_Msub_m_remainder_addsub0000_lut(0),
      O => avg_module_cns5_m_remainder_addsub0000(0)
    );
  avg_module_cns5_Msub_m_remainder_addsub0000_cy_1_Q : MUXCY
    port map (
      CI => avg_module_cns5_Msub_m_remainder_addsub0000_cy(0),
      DI => avg_module_s_reminder4(0),
      S => avg_module_cns5_Msub_m_remainder_addsub0000_lut(1),
      O => avg_module_cns5_Msub_m_remainder_addsub0000_cy(1)
    );
  avg_module_cns5_Msub_m_remainder_addsub0000_xor_1_Q : XORCY
    port map (
      CI => avg_module_cns5_Msub_m_remainder_addsub0000_cy(0),
      LI => avg_module_cns5_Msub_m_remainder_addsub0000_lut(1),
      O => avg_module_cns5_m_remainder_addsub0000(1)
    );
  avg_module_cns5_Msub_m_remainder_addsub0000_cy_2_Q : MUXCY
    port map (
      CI => avg_module_cns5_Msub_m_remainder_addsub0000_cy(1),
      DI => avg_module_s_reminder4(1),
      S => avg_module_cns5_Msub_m_remainder_addsub0000_lut(2),
      O => avg_module_cns5_Msub_m_remainder_addsub0000_cy(2)
    );
  avg_module_cns5_Msub_m_remainder_addsub0000_xor_2_Q : XORCY
    port map (
      CI => avg_module_cns5_Msub_m_remainder_addsub0000_cy(1),
      LI => avg_module_cns5_Msub_m_remainder_addsub0000_lut(2),
      O => avg_module_cns5_m_remainder_addsub0000(2)
    );
  avg_module_cns5_Msub_m_remainder_addsub0000_cy_3_Q : MUXCY
    port map (
      CI => avg_module_cns5_Msub_m_remainder_addsub0000_cy(2),
      DI => avg_module_s_reminder4(2),
      S => avg_module_cns5_Msub_m_remainder_addsub0000_lut(3),
      O => avg_module_cns5_Msub_m_remainder_addsub0000_cy(3)
    );
  avg_module_cns5_Msub_m_remainder_addsub0000_xor_3_Q : XORCY
    port map (
      CI => avg_module_cns5_Msub_m_remainder_addsub0000_cy(2),
      LI => avg_module_cns5_Msub_m_remainder_addsub0000_lut(3),
      O => avg_module_cns5_m_remainder_addsub0000(3)
    );
  avg_module_cns5_Msub_m_remainder_addsub0000_cy_4_Q : MUXCY
    port map (
      CI => avg_module_cns5_Msub_m_remainder_addsub0000_cy(3),
      DI => avg_module_s_reminder4(3),
      S => avg_module_cns5_Msub_m_remainder_addsub0000_lut(4),
      O => avg_module_cns5_Msub_m_remainder_addsub0000_cy(4)
    );
  avg_module_cns5_Msub_m_remainder_addsub0000_xor_4_Q : XORCY
    port map (
      CI => avg_module_cns5_Msub_m_remainder_addsub0000_cy(3),
      LI => avg_module_cns5_Msub_m_remainder_addsub0000_lut(4),
      O => avg_module_cns5_m_remainder_addsub0000(4)
    );
  avg_module_cns5_Msub_m_remainder_addsub0000_cy_5_Q : MUXCY
    port map (
      CI => avg_module_cns5_Msub_m_remainder_addsub0000_cy(4),
      DI => avg_module_s_reminder4(4),
      S => avg_module_cns5_Msub_m_remainder_addsub0000_lut(5),
      O => avg_module_cns5_Msub_m_remainder_addsub0000_cy(5)
    );
  avg_module_cns5_Msub_m_remainder_addsub0000_xor_5_Q : XORCY
    port map (
      CI => avg_module_cns5_Msub_m_remainder_addsub0000_cy(4),
      LI => avg_module_cns5_Msub_m_remainder_addsub0000_lut(5),
      O => avg_module_cns5_m_remainder_addsub0000(5)
    );
  avg_module_cns5_Msub_m_remainder_addsub0000_xor_6_Q : XORCY
    port map (
      CI => avg_module_cns5_Msub_m_remainder_addsub0000_cy(5),
      LI => avg_module_cns5_Msub_m_remainder_addsub0000_lut(6),
      O => avg_module_cns5_m_remainder_addsub0000(6)
    );
  avg_module_cns5_Mcompar_m_remainder_cmp_ge0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => avg_module_Maccum_s_data_cy(0),
      S => avg_module_cns5_Mcompar_m_remainder_cmp_ge0000_lut(0),
      O => avg_module_cns5_Mcompar_m_remainder_cmp_ge0000_cy(0)
    );
  avg_module_cns5_Mcompar_m_remainder_cmp_ge0000_cy_1_Q : MUXCY
    port map (
      CI => avg_module_cns5_Mcompar_m_remainder_cmp_ge0000_cy(0),
      DI => avg_module_s_reminder4(0),
      S => avg_module_cns5_Mcompar_m_remainder_cmp_ge0000_lut(1),
      O => avg_module_cns5_Mcompar_m_remainder_cmp_ge0000_cy(1)
    );
  avg_module_cns5_Mcompar_m_remainder_cmp_ge0000_cy_2_Q : MUXCY
    port map (
      CI => avg_module_cns5_Mcompar_m_remainder_cmp_ge0000_cy(1),
      DI => avg_module_s_reminder4(1),
      S => avg_module_cns5_Mcompar_m_remainder_cmp_ge0000_lut(2),
      O => avg_module_cns5_Mcompar_m_remainder_cmp_ge0000_cy(2)
    );
  avg_module_cns5_Mcompar_m_remainder_cmp_ge0000_cy_3_Q : MUXCY
    port map (
      CI => avg_module_cns5_Mcompar_m_remainder_cmp_ge0000_cy(2),
      DI => avg_module_s_reminder4(2),
      S => avg_module_cns5_Mcompar_m_remainder_cmp_ge0000_lut(3),
      O => avg_module_cns5_Mcompar_m_remainder_cmp_ge0000_cy(3)
    );
  avg_module_cns5_Mcompar_m_remainder_cmp_ge0000_cy_4_Q : MUXCY
    port map (
      CI => avg_module_cns5_Mcompar_m_remainder_cmp_ge0000_cy(3),
      DI => avg_module_s_reminder4(3),
      S => avg_module_cns5_Mcompar_m_remainder_cmp_ge0000_lut(4),
      O => avg_module_cns5_Mcompar_m_remainder_cmp_ge0000_cy(4)
    );
  avg_module_cns5_Mcompar_m_remainder_cmp_ge0000_cy_5_Q : MUXCY
    port map (
      CI => avg_module_cns5_Mcompar_m_remainder_cmp_ge0000_cy(4),
      DI => avg_module_s_reminder4(4),
      S => avg_module_cns5_Mcompar_m_remainder_cmp_ge0000_lut(5),
      O => avg_module_cns5_Mcompar_m_remainder_cmp_ge0000_cy(5)
    );
  avg_module_cns5_Mcompar_m_remainder_cmp_ge0000_cy_6_Q : MUXCY
    port map (
      CI => avg_module_cns5_Mcompar_m_remainder_cmp_ge0000_cy(5),
      DI => avg_module_s_reminder4(5),
      S => avg_module_cns5_Mcompar_m_remainder_cmp_ge0000_lut(6),
      O => avg_module_cns5_Mcompar_m_remainder_cmp_ge0000_cy(6)
    );
  avg_module_cns5_Mcompar_m_remainder_cmp_ge0000_cy_7_Q : MUXCY
    port map (
      CI => avg_module_cns5_Mcompar_m_remainder_cmp_ge0000_cy(6),
      DI => avg_module_s_reminder4(6),
      S => avg_module_cns5_Mcompar_m_remainder_cmp_ge0000_lut(7),
      O => Averager_out(3)
    );
  avg_module_cns6_Msub_m_remainder_addsub0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => avg_module_Maccum_s_data_cy(0),
      S => avg_module_cns6_Msub_m_remainder_addsub0000_lut(0),
      O => avg_module_cns6_Msub_m_remainder_addsub0000_cy(0)
    );
  avg_module_cns6_Msub_m_remainder_addsub0000_xor_0_Q : XORCY
    port map (
      CI => N1,
      LI => avg_module_cns6_Msub_m_remainder_addsub0000_lut(0),
      O => avg_module_cns6_m_remainder_addsub0000(0)
    );
  avg_module_cns6_Msub_m_remainder_addsub0000_cy_1_Q : MUXCY
    port map (
      CI => avg_module_cns6_Msub_m_remainder_addsub0000_cy(0),
      DI => avg_module_s_reminder5(0),
      S => avg_module_cns6_Msub_m_remainder_addsub0000_lut(1),
      O => avg_module_cns6_Msub_m_remainder_addsub0000_cy(1)
    );
  avg_module_cns6_Msub_m_remainder_addsub0000_xor_1_Q : XORCY
    port map (
      CI => avg_module_cns6_Msub_m_remainder_addsub0000_cy(0),
      LI => avg_module_cns6_Msub_m_remainder_addsub0000_lut(1),
      O => avg_module_cns6_m_remainder_addsub0000(1)
    );
  avg_module_cns6_Msub_m_remainder_addsub0000_cy_2_Q : MUXCY
    port map (
      CI => avg_module_cns6_Msub_m_remainder_addsub0000_cy(1),
      DI => avg_module_s_reminder5(1),
      S => avg_module_cns6_Msub_m_remainder_addsub0000_lut(2),
      O => avg_module_cns6_Msub_m_remainder_addsub0000_cy(2)
    );
  avg_module_cns6_Msub_m_remainder_addsub0000_xor_2_Q : XORCY
    port map (
      CI => avg_module_cns6_Msub_m_remainder_addsub0000_cy(1),
      LI => avg_module_cns6_Msub_m_remainder_addsub0000_lut(2),
      O => avg_module_cns6_m_remainder_addsub0000(2)
    );
  avg_module_cns6_Msub_m_remainder_addsub0000_cy_3_Q : MUXCY
    port map (
      CI => avg_module_cns6_Msub_m_remainder_addsub0000_cy(2),
      DI => avg_module_s_reminder5(2),
      S => avg_module_cns6_Msub_m_remainder_addsub0000_lut(3),
      O => avg_module_cns6_Msub_m_remainder_addsub0000_cy(3)
    );
  avg_module_cns6_Msub_m_remainder_addsub0000_xor_3_Q : XORCY
    port map (
      CI => avg_module_cns6_Msub_m_remainder_addsub0000_cy(2),
      LI => avg_module_cns6_Msub_m_remainder_addsub0000_lut(3),
      O => avg_module_cns6_m_remainder_addsub0000(3)
    );
  avg_module_cns6_Msub_m_remainder_addsub0000_cy_4_Q : MUXCY
    port map (
      CI => avg_module_cns6_Msub_m_remainder_addsub0000_cy(3),
      DI => avg_module_s_reminder5(3),
      S => avg_module_cns6_Msub_m_remainder_addsub0000_lut(4),
      O => avg_module_cns6_Msub_m_remainder_addsub0000_cy(4)
    );
  avg_module_cns6_Msub_m_remainder_addsub0000_xor_4_Q : XORCY
    port map (
      CI => avg_module_cns6_Msub_m_remainder_addsub0000_cy(3),
      LI => avg_module_cns6_Msub_m_remainder_addsub0000_lut(4),
      O => avg_module_cns6_m_remainder_addsub0000(4)
    );
  avg_module_cns6_Msub_m_remainder_addsub0000_cy_5_Q : MUXCY
    port map (
      CI => avg_module_cns6_Msub_m_remainder_addsub0000_cy(4),
      DI => avg_module_s_reminder5(4),
      S => avg_module_cns6_Msub_m_remainder_addsub0000_lut(5),
      O => avg_module_cns6_Msub_m_remainder_addsub0000_cy(5)
    );
  avg_module_cns6_Msub_m_remainder_addsub0000_xor_5_Q : XORCY
    port map (
      CI => avg_module_cns6_Msub_m_remainder_addsub0000_cy(4),
      LI => avg_module_cns6_Msub_m_remainder_addsub0000_lut(5),
      O => avg_module_cns6_m_remainder_addsub0000(5)
    );
  avg_module_cns6_Msub_m_remainder_addsub0000_xor_6_Q : XORCY
    port map (
      CI => avg_module_cns6_Msub_m_remainder_addsub0000_cy(5),
      LI => avg_module_cns6_Msub_m_remainder_addsub0000_lut(6),
      O => avg_module_cns6_m_remainder_addsub0000(6)
    );
  avg_module_cns6_Mcompar_m_remainder_cmp_ge0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => avg_module_Maccum_s_data_cy(0),
      S => avg_module_cns6_Mcompar_m_remainder_cmp_ge0000_lut(0),
      O => avg_module_cns6_Mcompar_m_remainder_cmp_ge0000_cy(0)
    );
  avg_module_cns6_Mcompar_m_remainder_cmp_ge0000_cy_1_Q : MUXCY
    port map (
      CI => avg_module_cns6_Mcompar_m_remainder_cmp_ge0000_cy(0),
      DI => avg_module_s_reminder5(0),
      S => avg_module_cns6_Mcompar_m_remainder_cmp_ge0000_lut(1),
      O => avg_module_cns6_Mcompar_m_remainder_cmp_ge0000_cy(1)
    );
  avg_module_cns6_Mcompar_m_remainder_cmp_ge0000_cy_2_Q : MUXCY
    port map (
      CI => avg_module_cns6_Mcompar_m_remainder_cmp_ge0000_cy(1),
      DI => avg_module_s_reminder5(1),
      S => avg_module_cns6_Mcompar_m_remainder_cmp_ge0000_lut(2),
      O => avg_module_cns6_Mcompar_m_remainder_cmp_ge0000_cy(2)
    );
  avg_module_cns6_Mcompar_m_remainder_cmp_ge0000_cy_3_Q : MUXCY
    port map (
      CI => avg_module_cns6_Mcompar_m_remainder_cmp_ge0000_cy(2),
      DI => avg_module_s_reminder5(2),
      S => avg_module_cns6_Mcompar_m_remainder_cmp_ge0000_lut(3),
      O => avg_module_cns6_Mcompar_m_remainder_cmp_ge0000_cy(3)
    );
  avg_module_cns6_Mcompar_m_remainder_cmp_ge0000_cy_4_Q : MUXCY
    port map (
      CI => avg_module_cns6_Mcompar_m_remainder_cmp_ge0000_cy(3),
      DI => avg_module_s_reminder5(3),
      S => avg_module_cns6_Mcompar_m_remainder_cmp_ge0000_lut(4),
      O => avg_module_cns6_Mcompar_m_remainder_cmp_ge0000_cy(4)
    );
  avg_module_cns6_Mcompar_m_remainder_cmp_ge0000_cy_5_Q : MUXCY
    port map (
      CI => avg_module_cns6_Mcompar_m_remainder_cmp_ge0000_cy(4),
      DI => avg_module_s_reminder5(4),
      S => avg_module_cns6_Mcompar_m_remainder_cmp_ge0000_lut(5),
      O => avg_module_cns6_Mcompar_m_remainder_cmp_ge0000_cy(5)
    );
  avg_module_cns6_Mcompar_m_remainder_cmp_ge0000_cy_6_Q : MUXCY
    port map (
      CI => avg_module_cns6_Mcompar_m_remainder_cmp_ge0000_cy(5),
      DI => avg_module_s_reminder5(5),
      S => avg_module_cns6_Mcompar_m_remainder_cmp_ge0000_lut(6),
      O => avg_module_cns6_Mcompar_m_remainder_cmp_ge0000_cy(6)
    );
  avg_module_cns6_Mcompar_m_remainder_cmp_ge0000_cy_7_Q : MUXCY
    port map (
      CI => avg_module_cns6_Mcompar_m_remainder_cmp_ge0000_cy(6),
      DI => avg_module_s_reminder5(6),
      S => avg_module_cns6_Mcompar_m_remainder_cmp_ge0000_lut(7),
      O => Averager_out(2)
    );
  avg_module_cns7_Msub_m_remainder_addsub0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => avg_module_Maccum_s_data_cy(0),
      S => avg_module_cns7_Msub_m_remainder_addsub0000_lut(0),
      O => avg_module_cns7_Msub_m_remainder_addsub0000_cy(0)
    );
  avg_module_cns7_Msub_m_remainder_addsub0000_xor_0_Q : XORCY
    port map (
      CI => N1,
      LI => avg_module_cns7_Msub_m_remainder_addsub0000_lut(0),
      O => avg_module_cns7_m_remainder_addsub0000(0)
    );
  avg_module_cns7_Msub_m_remainder_addsub0000_cy_1_Q : MUXCY
    port map (
      CI => avg_module_cns7_Msub_m_remainder_addsub0000_cy(0),
      DI => avg_module_s_reminder6(0),
      S => avg_module_cns7_Msub_m_remainder_addsub0000_lut(1),
      O => avg_module_cns7_Msub_m_remainder_addsub0000_cy(1)
    );
  avg_module_cns7_Msub_m_remainder_addsub0000_xor_1_Q : XORCY
    port map (
      CI => avg_module_cns7_Msub_m_remainder_addsub0000_cy(0),
      LI => avg_module_cns7_Msub_m_remainder_addsub0000_lut(1),
      O => avg_module_cns7_m_remainder_addsub0000(1)
    );
  avg_module_cns7_Msub_m_remainder_addsub0000_cy_2_Q : MUXCY
    port map (
      CI => avg_module_cns7_Msub_m_remainder_addsub0000_cy(1),
      DI => avg_module_s_reminder6(1),
      S => avg_module_cns7_Msub_m_remainder_addsub0000_lut(2),
      O => avg_module_cns7_Msub_m_remainder_addsub0000_cy(2)
    );
  avg_module_cns7_Msub_m_remainder_addsub0000_xor_2_Q : XORCY
    port map (
      CI => avg_module_cns7_Msub_m_remainder_addsub0000_cy(1),
      LI => avg_module_cns7_Msub_m_remainder_addsub0000_lut(2),
      O => avg_module_cns7_m_remainder_addsub0000(2)
    );
  avg_module_cns7_Msub_m_remainder_addsub0000_cy_3_Q : MUXCY
    port map (
      CI => avg_module_cns7_Msub_m_remainder_addsub0000_cy(2),
      DI => avg_module_s_reminder6(2),
      S => avg_module_cns7_Msub_m_remainder_addsub0000_lut(3),
      O => avg_module_cns7_Msub_m_remainder_addsub0000_cy(3)
    );
  avg_module_cns7_Msub_m_remainder_addsub0000_xor_3_Q : XORCY
    port map (
      CI => avg_module_cns7_Msub_m_remainder_addsub0000_cy(2),
      LI => avg_module_cns7_Msub_m_remainder_addsub0000_lut(3),
      O => avg_module_cns7_m_remainder_addsub0000(3)
    );
  avg_module_cns7_Msub_m_remainder_addsub0000_cy_4_Q : MUXCY
    port map (
      CI => avg_module_cns7_Msub_m_remainder_addsub0000_cy(3),
      DI => avg_module_s_reminder6(3),
      S => avg_module_cns7_Msub_m_remainder_addsub0000_lut(4),
      O => avg_module_cns7_Msub_m_remainder_addsub0000_cy(4)
    );
  avg_module_cns7_Msub_m_remainder_addsub0000_xor_4_Q : XORCY
    port map (
      CI => avg_module_cns7_Msub_m_remainder_addsub0000_cy(3),
      LI => avg_module_cns7_Msub_m_remainder_addsub0000_lut(4),
      O => avg_module_cns7_m_remainder_addsub0000(4)
    );
  avg_module_cns7_Msub_m_remainder_addsub0000_cy_5_Q : MUXCY
    port map (
      CI => avg_module_cns7_Msub_m_remainder_addsub0000_cy(4),
      DI => avg_module_s_reminder6(4),
      S => avg_module_cns7_Msub_m_remainder_addsub0000_lut(5),
      O => avg_module_cns7_Msub_m_remainder_addsub0000_cy(5)
    );
  avg_module_cns7_Msub_m_remainder_addsub0000_xor_5_Q : XORCY
    port map (
      CI => avg_module_cns7_Msub_m_remainder_addsub0000_cy(4),
      LI => avg_module_cns7_Msub_m_remainder_addsub0000_lut(5),
      O => avg_module_cns7_m_remainder_addsub0000(5)
    );
  avg_module_cns7_Msub_m_remainder_addsub0000_xor_6_Q : XORCY
    port map (
      CI => avg_module_cns7_Msub_m_remainder_addsub0000_cy(5),
      LI => avg_module_cns7_Msub_m_remainder_addsub0000_lut(6),
      O => avg_module_cns7_m_remainder_addsub0000(6)
    );
  avg_module_cns7_Mcompar_m_remainder_cmp_ge0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => avg_module_Maccum_s_data_cy(0),
      S => avg_module_cns7_Mcompar_m_remainder_cmp_ge0000_lut(0),
      O => avg_module_cns7_Mcompar_m_remainder_cmp_ge0000_cy(0)
    );
  avg_module_cns7_Mcompar_m_remainder_cmp_ge0000_cy_1_Q : MUXCY
    port map (
      CI => avg_module_cns7_Mcompar_m_remainder_cmp_ge0000_cy(0),
      DI => avg_module_s_reminder6(0),
      S => avg_module_cns7_Mcompar_m_remainder_cmp_ge0000_lut(1),
      O => avg_module_cns7_Mcompar_m_remainder_cmp_ge0000_cy(1)
    );
  avg_module_cns7_Mcompar_m_remainder_cmp_ge0000_cy_2_Q : MUXCY
    port map (
      CI => avg_module_cns7_Mcompar_m_remainder_cmp_ge0000_cy(1),
      DI => avg_module_s_reminder6(1),
      S => avg_module_cns7_Mcompar_m_remainder_cmp_ge0000_lut(2),
      O => avg_module_cns7_Mcompar_m_remainder_cmp_ge0000_cy(2)
    );
  avg_module_cns7_Mcompar_m_remainder_cmp_ge0000_cy_3_Q : MUXCY
    port map (
      CI => avg_module_cns7_Mcompar_m_remainder_cmp_ge0000_cy(2),
      DI => avg_module_s_reminder6(2),
      S => avg_module_cns7_Mcompar_m_remainder_cmp_ge0000_lut(3),
      O => avg_module_cns7_Mcompar_m_remainder_cmp_ge0000_cy(3)
    );
  avg_module_cns7_Mcompar_m_remainder_cmp_ge0000_cy_4_Q : MUXCY
    port map (
      CI => avg_module_cns7_Mcompar_m_remainder_cmp_ge0000_cy(3),
      DI => avg_module_s_reminder6(3),
      S => avg_module_cns7_Mcompar_m_remainder_cmp_ge0000_lut(4),
      O => avg_module_cns7_Mcompar_m_remainder_cmp_ge0000_cy(4)
    );
  avg_module_cns7_Mcompar_m_remainder_cmp_ge0000_cy_5_Q : MUXCY
    port map (
      CI => avg_module_cns7_Mcompar_m_remainder_cmp_ge0000_cy(4),
      DI => avg_module_s_reminder6(4),
      S => avg_module_cns7_Mcompar_m_remainder_cmp_ge0000_lut(5),
      O => avg_module_cns7_Mcompar_m_remainder_cmp_ge0000_cy(5)
    );
  avg_module_cns7_Mcompar_m_remainder_cmp_ge0000_cy_6_Q : MUXCY
    port map (
      CI => avg_module_cns7_Mcompar_m_remainder_cmp_ge0000_cy(5),
      DI => avg_module_s_reminder6(5),
      S => avg_module_cns7_Mcompar_m_remainder_cmp_ge0000_lut(6),
      O => avg_module_cns7_Mcompar_m_remainder_cmp_ge0000_cy(6)
    );
  avg_module_cns7_Mcompar_m_remainder_cmp_ge0000_cy_7_Q : MUXCY
    port map (
      CI => avg_module_cns7_Mcompar_m_remainder_cmp_ge0000_cy(6),
      DI => avg_module_s_reminder6(6),
      S => avg_module_cns7_Mcompar_m_remainder_cmp_ge0000_lut(7),
      O => Averager_out(1)
    );
  avg_module_cns8_Mcompar_m_remainder_cmp_ge0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => avg_module_Maccum_s_data_cy(0),
      S => avg_module_cns8_Mcompar_m_remainder_cmp_ge0000_lut(0),
      O => avg_module_cns8_Mcompar_m_remainder_cmp_ge0000_cy(0)
    );
  avg_module_cns8_Mcompar_m_remainder_cmp_ge0000_cy_1_Q : MUXCY
    port map (
      CI => avg_module_cns8_Mcompar_m_remainder_cmp_ge0000_cy(0),
      DI => avg_module_s_reminder7(0),
      S => avg_module_cns8_Mcompar_m_remainder_cmp_ge0000_lut(1),
      O => avg_module_cns8_Mcompar_m_remainder_cmp_ge0000_cy(1)
    );
  avg_module_cns8_Mcompar_m_remainder_cmp_ge0000_cy_2_Q : MUXCY
    port map (
      CI => avg_module_cns8_Mcompar_m_remainder_cmp_ge0000_cy(1),
      DI => avg_module_s_reminder7(1),
      S => avg_module_cns8_Mcompar_m_remainder_cmp_ge0000_lut(2),
      O => avg_module_cns8_Mcompar_m_remainder_cmp_ge0000_cy(2)
    );
  avg_module_cns8_Mcompar_m_remainder_cmp_ge0000_cy_3_Q : MUXCY
    port map (
      CI => avg_module_cns8_Mcompar_m_remainder_cmp_ge0000_cy(2),
      DI => avg_module_s_reminder7(2),
      S => avg_module_cns8_Mcompar_m_remainder_cmp_ge0000_lut(3),
      O => avg_module_cns8_Mcompar_m_remainder_cmp_ge0000_cy(3)
    );
  avg_module_cns8_Mcompar_m_remainder_cmp_ge0000_cy_4_Q : MUXCY
    port map (
      CI => avg_module_cns8_Mcompar_m_remainder_cmp_ge0000_cy(3),
      DI => avg_module_s_reminder7(3),
      S => avg_module_cns8_Mcompar_m_remainder_cmp_ge0000_lut(4),
      O => avg_module_cns8_Mcompar_m_remainder_cmp_ge0000_cy(4)
    );
  avg_module_cns8_Mcompar_m_remainder_cmp_ge0000_cy_5_Q : MUXCY
    port map (
      CI => avg_module_cns8_Mcompar_m_remainder_cmp_ge0000_cy(4),
      DI => avg_module_s_reminder7(4),
      S => avg_module_cns8_Mcompar_m_remainder_cmp_ge0000_lut(5),
      O => avg_module_cns8_Mcompar_m_remainder_cmp_ge0000_cy(5)
    );
  avg_module_cns8_Mcompar_m_remainder_cmp_ge0000_cy_6_Q : MUXCY
    port map (
      CI => avg_module_cns8_Mcompar_m_remainder_cmp_ge0000_cy(5),
      DI => avg_module_s_reminder7(5),
      S => avg_module_cns8_Mcompar_m_remainder_cmp_ge0000_lut(6),
      O => avg_module_cns8_Mcompar_m_remainder_cmp_ge0000_cy(6)
    );
  avg_module_cns8_Mcompar_m_remainder_cmp_ge0000_cy_7_Q : MUXCY
    port map (
      CI => avg_module_cns8_Mcompar_m_remainder_cmp_ge0000_cy(6),
      DI => avg_module_s_reminder7(6),
      S => avg_module_cns8_Mcompar_m_remainder_cmp_ge0000_lut(7),
      O => Averager_out(0)
    );
  sig_controller_s_enpad_or00001 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd20_1739,
      I1 => sig_controller_t_ps_FSM_FFd1_1717,
      O => sig_controller_s_enpad_or0000
    );
  sig_controller_s_enp1_not0001111 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd20_1739,
      I1 => sig_controller_t_ps_FSM_FFd10_1718,
      O => sig_controller_N28
    );
  sig_controller_s_dac_start_or00001 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd20_1739,
      I1 => sig_controller_t_ps_FSM_FFd3_1746,
      O => sig_controller_s_dac_start_or0000
    );
  sig_controller_s_clrda_mux00001 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd15_1728,
      I1 => sig_controller_t_ps_FSM_FFd12_1722,
      O => sig_controller_s_clrda_mux0000
    );
  sig_controller_s_clrad_mux00001 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd13_1724,
      I1 => sig_controller_t_ps_FSM_FFd12_1722,
      O => sig_controller_s_clrad_mux0000
    );
  sig_controller_s_adc_stop_or00001 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd13_1724,
      I1 => sig_controller_t_ps_FSM_FFd2_1738,
      O => sig_controller_s_adc_stop_or0000
    );
  sig_controller_s_adc_start_or00001 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd20_1739,
      I1 => sig_controller_t_ps_FSM_FFd13_1724,
      O => sig_controller_s_adc_start_or0000
    );
  sig_controller_rem1ctr_s_Reg_not00011 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => sig_controller_s_sel1(0),
      I1 => sig_controller_s_sel1(1),
      O => sig_controller_rem1ctr_s_Reg_not0001
    );
  sig_controller_rem0ctr_s_Reg_not00011 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => sig_controller_s_sel0(0),
      I1 => sig_controller_s_sel0(1),
      O => sig_controller_rem0ctr_s_Reg_not0001
    );
  sig_controller_m_ram1_mux_sel_mux0002_0_1 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd20_1739,
      I1 => sig_controller_t_ps_FSM_FFd16_1730,
      O => sig_controller_m_ram1_mux_sel_mux0002(0)
    );
  sig_controller_m_ena2_or00001 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd20_1739,
      I1 => sig_controller_t_ps_FSM_FFd15_1728,
      O => sig_controller_m_ena2_or0000
    );
  sig_controller_m_dout_en_or00001 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd9_1753,
      I1 => sig_controller_t_ps_FSM_FFd8_1752,
      O => sig_controller_m_dout_en_or0000
    );
  sig_controller_m_da_latch_en_or00001 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd3_1746,
      I1 => sig_controller_t_ps_FSM_FFd14_1726,
      O => sig_controller_m_da_latch_en_or0000
    );
  sig_controller_daremctr_s_Reg_not00011 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => sig_controller_s_selda(0),
      I1 => sig_controller_s_selda(1),
      O => sig_controller_daremctr_s_Reg_not0001
    );
  sig_controller_adremctr_s_Reg_not00011 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => sig_controller_s_selad(0),
      I1 => sig_controller_s_selad(1),
      O => sig_controller_adremctr_s_Reg_not0001
    );
  sig_controller_s_sel0_not0001511 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd19_1736,
      I1 => s_OE_b_1000,
      I2 => sig_controller_t_prevmode(1),
      O => sig_controller_N33
    );
  sig_controller_s_sel0_mux0002_1_1 : LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      I0 => sig_controller_N33,
      I1 => s_out_mux_sel,
      I2 => sig_controller_t_ps_FSM_FFd12_1722,
      O => sig_controller_s_sel0_mux0002(1)
    );
  sig_controller_s_dac_stop_mux00001 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd14_1726,
      I1 => sig_controller_t_ps_FSM_FFd15_1728,
      I2 => sig_controller_t_ps_FSM_FFd12_1722,
      O => sig_controller_s_dac_stop_mux0000
    );
  sig_controller_s_clrda_or00001 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd5_1749,
      I1 => sig_controller_t_ps_FSM_FFd15_1728,
      I2 => sig_controller_t_ps_FSM_FFd12_1722,
      O => sig_controller_s_clrda_or0000
    );
  sig_controller_s_clrad_or00001 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd2_1738,
      I1 => sig_controller_t_ps_FSM_FFd13_1724,
      I2 => sig_controller_t_ps_FSM_FFd12_1722,
      O => sig_controller_s_clrad_or0000
    );
  sig_controller_m_wea2_0_or00001 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd4_1748,
      I1 => sig_controller_t_ps_FSM_FFd20_1739,
      I2 => sig_controller_t_ps_FSM_FFd3_1746,
      O => sig_controller_m_wea2_0_or0000
    );
  sig_controller_m_wea0_0_mux00001 : LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd11_1720,
      I1 => s_out_mux_sel,
      I2 => sig_controller_t_ps_FSM_FFd1_1717,
      O => sig_controller_m_wea0_0_mux0000
    );
  sig_controller_m_ram1_mux_sel_not000121 : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => s_mode_addr(0),
      I1 => s_mode_addr(1),
      I2 => s_mode_addr(2),
      O => sig_controller_N14
    );
  sig_controller_m_ram1_mux_sel_not000111 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => sig_controller_N14,
      I1 => sig_controller_t_ps_FSM_FFd19_1736,
      I2 => s_OE_b_1000,
      O => sig_controller_N13
    );
  sig_controller_m_enb0_or00001 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd17_1732,
      I1 => sig_controller_t_ps_FSM_FFd20_1739,
      I2 => sig_controller_t_ps_FSM_FFd9_1753,
      O => sig_controller_m_enb0_or0000
    );
  sig_controller_m_enb0_mux00001 : LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd9_1753,
      I1 => s_OE_b_1000,
      I2 => sig_controller_t_ps_FSM_FFd17_1732,
      O => sig_controller_m_enb0_mux0000
    );
  sig_controller_m_ena0_mux00001 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd16_1730,
      I1 => sig_controller_t_ps_FSM_FFd18_1734,
      I2 => sig_controller_t_ps_FSM_FFd13_1724,
      O => sig_controller_m_ena0_mux0000
    );
  sig_controller_s_selda_or00001 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd12_1722,
      I1 => sig_controller_t_ps_FSM_FFd5_1749,
      I2 => sig_controller_t_ps_FSM_FFd15_1728,
      I3 => sig_controller_t_ps_FSM_FFd20_1739,
      O => sig_controller_s_selda_or0000
    );
  sig_controller_s_selad_or00001 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd12_1722,
      I1 => sig_controller_t_ps_FSM_FFd2_1738,
      I2 => sig_controller_t_ps_FSM_FFd13_1724,
      I3 => sig_controller_t_ps_FSM_FFd20_1739,
      O => sig_controller_s_selad_or0000
    );
  sig_controller_s_sel1_not000111 : LUT4
    generic map(
      INIT => X"FFBF"
    )
    port map (
      I0 => s_mode_addr(2),
      I1 => sig_controller_t_ps_FSM_FFd11_1720,
      I2 => s_mode_addr(0),
      I3 => s_mode_addr(1),
      O => sig_controller_N5
    );
  sig_controller_s_sel1_mux0003_1_1 : LUT4
    generic map(
      INIT => X"FFAE"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd12_1722,
      I1 => sig_controller_N13,
      I2 => sig_controller_t_prevmode(3),
      I3 => sig_controller_t_ps_FSM_FFd16_1730,
      O => sig_controller_s_sel1_mux0003(1)
    );
  sig_controller_m_ena1_or00001 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd8_1752,
      I1 => sig_controller_t_ps_FSM_FFd10_1718,
      I2 => sig_controller_t_ps_FSM_FFd18_1734,
      I3 => sig_controller_t_ps_FSM_FFd20_1739,
      O => sig_controller_m_ena1_or0000
    );
  sig_controller_s_clr0_not00013 : LUT4
    generic map(
      INIT => X"FDF8"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd19_1736,
      I1 => sig_controller_N1,
      I2 => sig_controller_N6,
      I3 => sig_controller_s_adc_stop_or0000,
      O => sig_controller_s_clr0_not0001
    );
  sig_controller_s_enp1_mux0000 : LUT4
    generic map(
      INIT => X"FFAE"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd6_1750,
      I1 => sig_controller_t_ps_FSM_FFd8_1752,
      I2 => sig_controller_t_prevmode(0),
      I3 => N18,
      O => sig_controller_s_enp1_mux0000_1683
    );
  sig_controller_s_enp0_mux0000 : LUT4
    generic map(
      INIT => X"FFF8"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd8_1752,
      I1 => sig_controller_t_prevmode(0),
      I2 => sig_controller_t_ps_FSM_FFd2_1738,
      I3 => N20,
      O => sig_controller_s_enp0_mux0000_1677
    );
  sig_controller_s_dac_stop_or0000_SW0 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd5_1749,
      I1 => sig_controller_t_ps_FSM_FFd15_1728,
      O => N22
    );
  sig_controller_s_dac_stop_or0000 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd14_1726,
      I1 => sig_controller_t_ps_FSM_FFd20_1739,
      I2 => sig_controller_t_ps_FSM_FFd12_1722,
      I3 => N22,
      O => sig_controller_s_dac_stop_or0000_1674
    );
  sig_controller_s_clr1_mux0009_SW0 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd15_1728,
      I1 => sig_controller_t_ps_FSM_FFd16_1730,
      O => N24
    );
  sig_controller_s_clr1_mux0009 : LUT4
    generic map(
      INIT => X"FFF8"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd19_1736,
      I1 => sig_controller_N0,
      I2 => sig_controller_t_ps_FSM_FFd12_1722,
      I3 => N24,
      O => sig_controller_s_clr1_mux0009_1659
    );
  sig_controller_m_ram1_mux_sel_mux0002_1_Q : LUT4
    generic map(
      INIT => X"FFF8"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd18_1734,
      I1 => sig_controller_N14,
      I2 => sig_controller_t_ps_FSM_FFd20_1739,
      I3 => N28,
      O => sig_controller_m_ram1_mux_sel_mux0002(1)
    );
  sig_controller_m_enb1_or0000 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd20_1739,
      I1 => sig_controller_t_ps_FSM_FFd17_1732,
      I2 => sig_controller_t_ps_FSM_FFd9_1753,
      I3 => N24,
      O => sig_controller_m_enb1_or0000_1407
    );
  sig_controller_m_enb1_mux0000 : LUT4
    generic map(
      INIT => X"FFAE"
    )
    port map (
      I0 => N24,
      I1 => sig_controller_t_ps_FSM_FFd9_1753,
      I2 => s_OE_b_1000,
      I3 => sig_controller_t_ps_FSM_FFd17_1732,
      O => sig_controller_m_enb1_mux0000_1406
    );
  sig_controller_s_clr1_not0001 : LUT4
    generic map(
      INIT => X"FDF8"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd19_1736,
      I1 => sig_controller_N0,
      I2 => sig_controller_N6,
      I3 => N22,
      O => sig_controller_s_clr1_not0001_1660
    );
  sig_controller_s_clr0_not00012_SW0 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd17_1732,
      I1 => sig_controller_t_ps_FSM_FFd18_1734,
      I2 => sig_controller_t_ps_FSM_FFd16_1730,
      O => N40
    );
  sig_controller_s_clr0_not00012 : LUT4
    generic map(
      INIT => X"5554"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd19_1736,
      I1 => sig_controller_t_ps_FSM_FFd12_1722,
      I2 => sig_controller_t_ps_FSM_FFd7_1751,
      I3 => N40,
      O => sig_controller_N6
    );
  sig_controller_m_ena0_or0000 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd10_1718,
      I1 => sig_controller_t_ps_FSM_FFd20_1739,
      I2 => sig_controller_t_ps_FSM_FFd8_1752,
      I3 => sig_controller_m_ena0_mux0000,
      O => sig_controller_m_ena0_or0000_1397
    );
  sig_controller_t_prevmode_not0001_SW0 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd17_1732,
      I1 => sig_controller_t_ps_FSM_FFd15_1728,
      I2 => sig_controller_t_ps_FSM_FFd13_1724,
      I3 => sig_controller_t_ps_FSM_FFd16_1730,
      O => N44
    );
  sig_controller_t_prevmode_not0001 : LUT4
    generic map(
      INIT => X"FE54"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd19_1736,
      I1 => sig_controller_t_ps_FSM_FFd11_1720,
      I2 => N44,
      I3 => sig_controller_N4,
      O => sig_controller_t_prevmode_not0001_1716
    );
  sig_controller_s_clr0_not00011_SW0 : LUT4
    generic map(
      INIT => X"FDF8"
    )
    port map (
      I0 => s_OE_b_1000,
      I1 => sig_controller_t_prevmode(1),
      I2 => s_mode_addr(2),
      I3 => sig_controller_t_prevmode(0),
      O => N46
    );
  sig_controller_s_clr0_not00011 : LUT4
    generic map(
      INIT => X"FF02"
    )
    port map (
      I0 => s_mode_addr(0),
      I1 => s_mode_addr(1),
      I2 => N46,
      I3 => sig_controller_N4,
      O => sig_controller_N1
    );
  sig_controller_m_ram1_mux_sel_not0001 : LUT4
    generic map(
      INIT => X"FDF8"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd18_1734,
      I1 => N49,
      I2 => sig_controller_N13,
      I3 => N48,
      O => sig_controller_m_ram1_mux_sel_not0001_1414
    );
  sig_controller_s_enp0_not000110 : LUT4
    generic map(
      INIT => X"0888"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd8_1752,
      I1 => sig_controller_t_prevmode(0),
      I2 => s_out_mux_sel,
      I3 => sig_controller_t_ps_FSM_FFd11_1720,
      O => sig_controller_s_enp0_not000110_1679
    );
  sig_controller_s_enp0_not000119 : LUT4
    generic map(
      INIT => X"5554"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd11_1720,
      I1 => sig_controller_t_ps_FSM_FFd7_1751,
      I2 => sig_controller_N28,
      I3 => sig_controller_t_ps_FSM_FFd2_1738,
      O => sig_controller_s_enp0_not000119_1680
    );
  clk_gen_s_cw0_and00009 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => clk_gen_state_FSM_FFd3_866,
      I1 => clk_gen_state_FSM_FFd4_867,
      I2 => clk_gen_state_FSM_FFd1_862,
      I3 => clk_gen_state_FSM_FFd2_864,
      O => clk_gen_s_cw0_and00009_848
    );
  clk_gen_s_cw0_and000012 : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => clk_gen_s_data(7),
      I1 => clk_gen_s_cw0_and00009_848,
      I2 => clk_gen_s_data(6),
      O => clk_gen_s_cw0_and000012_847
    );
  clk_gen_s_cw0_and000017 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => clk_gen_s_addr(0),
      I1 => clk_gen_s_addr(1),
      I2 => clk_gen_s_cw0_and000012_847,
      O => clk_gen_s_cw0
    );
  sig_controller_s_sel0_not000110 : LUT4
    generic map(
      INIT => X"0C04"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd8_1752,
      I1 => sig_controller_N33,
      I2 => s_out_mux_sel,
      I3 => sig_controller_t_prevmode(0),
      O => sig_controller_s_sel0_not000110_1693
    );
  sig_controller_s_sel0_not000125 : LUT4
    generic map(
      INIT => X"54FE"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd11_1720,
      I1 => sig_controller_t_ps_FSM_FFd12_1722,
      I2 => sig_controller_N28,
      I3 => s_out_mux_sel,
      O => sig_controller_s_sel0_not000125_1694
    );
  sig_controller_s_sel0_not000163 : LUT4
    generic map(
      INIT => X"2232"
    )
    port map (
      I0 => sig_controller_s_enp0_not000110_1679,
      I1 => sig_controller_t_ps_FSM_FFd19_1736,
      I2 => sig_controller_s_sel0_not000125_1694,
      I3 => sig_controller_t_ps_FSM_FFd8_1752,
      O => sig_controller_s_sel0_not000163_1695
    );
  sig_controller_s_sel0_not000174 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => sig_controller_s_sel0_not000110_1693,
      I1 => sig_controller_s_sel0_not000163_1695,
      O => sig_controller_s_sel0_not0001
    );
  sig_controller_s_sel1_not000118 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd16_1730,
      I1 => sig_controller_N28,
      I2 => sig_controller_t_ps_FSM_FFd12_1722,
      I3 => sig_controller_t_ps_FSM_FFd7_1751,
      O => sig_controller_s_sel1_not000118_1701
    );
  sig_controller_t_ps_FSM_FFd19_In1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => s_cmd_data_1010,
      I1 => sig_controller_t_ps_FSM_FFd20_1739,
      O => sig_controller_t_ps_FSM_FFd19_In
    );
  sig_controller_t_ps_FSM_FFd11_In1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => s_wen_1043,
      I1 => sig_controller_t_ps_FSM_FFd18_1734,
      O => sig_controller_t_ps_FSM_FFd11_In
    );
  sig_controller_dac_ctr_Msub_s_reg_sub0000_xor_1_11 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => sig_controller_daremctr_s_Reg(1),
      I1 => sig_controller_daremctr_s_Reg(0),
      O => sig_controller_dac_ctr_s_reg_sub0000(1)
    );
  sig_controller_t_ps_FSM_FFd9_In1 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => s_ren_1042,
      I1 => sig_controller_t_ps_FSM_FFd9_1753,
      I2 => sig_controller_t_ps_FSM_FFd17_1732,
      O => sig_controller_t_ps_FSM_FFd9_In
    );
  clk_gen_CNT0_s_wr_wait_mux00031 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => clk_gen_CNT0_s_wr_L_839,
      I1 => clk_gen_CNT0_s_wr_M_840,
      I2 => clk_gen_CNT0_s_wr_wait_841,
      O => clk_gen_CNT0_s_wr_wait_mux0003
    );
  sig_controller_dac_ctr_s_ps_FSM_FFd2_In1 : LUT3
    generic map(
      INIT => X"4E"
    )
    port map (
      I0 => sig_controller_dac_ctr_s_ps_FSM_FFd2_1257,
      I1 => sig_controller_s_dac_start_1670,
      I2 => sig_controller_s_dac_stop_1672,
      O => sig_controller_dac_ctr_s_ps_FSM_FFd2_In
    );
  sig_controller_adc_ctr_s_ns_0_mux00001 : LUT3
    generic map(
      INIT => X"4E"
    )
    port map (
      I0 => sig_controller_adc_ctr_s_ps(0),
      I1 => sig_controller_s_adc_start_1649,
      I2 => sig_controller_s_adc_stop_1651,
      O => sig_controller_adc_ctr_s_ns
    );
  sig_controller_dac_ctr_Msub_s_reg_sub0000_xor_2_11 : LUT3
    generic map(
      INIT => X"A9"
    )
    port map (
      I0 => sig_controller_daremctr_s_Reg(2),
      I1 => sig_controller_daremctr_s_Reg(0),
      I2 => sig_controller_daremctr_s_Reg(1),
      O => sig_controller_dac_ctr_s_reg_sub0000(2)
    );
  sig_controller_rem1ctr_s_Reg_mux0000_0_1 : LUT4
    generic map(
      INIT => X"91C4"
    )
    port map (
      I0 => sig_controller_s_sel1(1),
      I1 => sig_controller_s_sel1(0),
      I2 => sig_controller_rem0ctr_s_Reg(0),
      I3 => sig_controller_rem1ctr_s_Reg(0),
      O => sig_controller_rem1ctr_s_Reg_mux0000(0)
    );
  sig_controller_rem0ctr_s_Reg_mux0000_0_1 : LUT4
    generic map(
      INIT => X"91C4"
    )
    port map (
      I0 => sig_controller_s_sel0(1),
      I1 => sig_controller_s_sel0(0),
      I2 => sig_controller_adremctr_s_Reg(0),
      I3 => sig_controller_rem0ctr_s_Reg(0),
      O => sig_controller_rem0ctr_s_Reg_mux0000(0)
    );
  sig_controller_daremctr_s_Reg_mux0000_0_1 : LUT4
    generic map(
      INIT => X"91C4"
    )
    port map (
      I0 => sig_controller_s_selda(1),
      I1 => sig_controller_s_selda(0),
      I2 => sig_controller_rem1ctr_s_Reg(0),
      I3 => sig_controller_daremctr_s_Reg(0),
      O => sig_controller_daremctr_s_Reg_mux0000(0)
    );
  sig_controller_dac_ctr_Msub_s_reg_sub0000_xor_3_12 : LUT4
    generic map(
      INIT => X"CCC9"
    )
    port map (
      I0 => sig_controller_daremctr_s_Reg(2),
      I1 => sig_controller_daremctr_s_Reg(3),
      I2 => sig_controller_daremctr_s_Reg(1),
      I3 => sig_controller_daremctr_s_Reg(0),
      O => sig_controller_dac_ctr_s_reg_sub0000(3)
    );
  sig_controller_adremctr_s_Reg_mux0000_0_1 : LUT4
    generic map(
      INIT => X"91C4"
    )
    port map (
      I0 => sig_controller_s_selad(1),
      I1 => sig_controller_s_selad(0),
      I2 => inlatch_dout(0),
      I3 => sig_controller_adremctr_s_Reg(0),
      O => sig_controller_adremctr_s_Reg_mux0000(0)
    );
  sig_controller_dac_ctr_s_ps_FSM_Out11 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_dac_ctr_s_ps_FSM_FFd2_1257,
      I1 => sig_controller_dac_ctr_s_ps_FSM_FFd1_1256,
      O => sig_controller_dac_ctr_s_ps_cmp_eq0001
    );
  clk_gen_CNT0_s_REG_10_not00011 : LUT4
    generic map(
      INIT => X"0C04"
    )
    port map (
      I0 => clk_gen_CNT0_s_wr_L_839,
      I1 => clk_gen_CNT0_s_wr_M_840,
      I2 => clk_gen_s_cw0,
      I3 => clk_gen_CNT0_s_wr_wait_841,
      O => clk_gen_CNT0_s_REG_10_not0001
    );
  clk_gen_CNT0_s_REG_0_not00011 : LUT4
    generic map(
      INIT => X"1050"
    )
    port map (
      I0 => clk_gen_s_cw0,
      I1 => clk_gen_CNT0_s_wr_wait_841,
      I2 => clk_gen_CNT0_s_wr_L_839,
      I3 => clk_gen_CNT0_s_wr_M_840,
      O => clk_gen_CNT0_s_REG_0_not0001
    );
  sig_controller_adc_ctr_s_cnt_not00011 : LUT4
    generic map(
      INIT => X"FFEF"
    )
    port map (
      I0 => sig_controller_adc_ctr_s_cnt(9),
      I1 => sig_controller_adc_ctr_s_cnt(10),
      I2 => sig_controller_adc_ctr_s_ps(0),
      I3 => sig_controller_adc_ctr_s_cnt(8),
      O => sig_controller_adc_ctr_s_cnt_not0001
    );
  sig_controller_dac_ctr_Msub_s_reg_sub0000_xor_4_11 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => sig_controller_daremctr_s_Reg(4),
      I1 => sig_controller_dac_ctr_Msub_s_reg_sub0000_cy_7_14,
      O => sig_controller_dac_ctr_s_reg_sub0000(4)
    );
  sig_controller_dac_ctr_Msub_s_reg_sub0000_xor_5_11 : LUT3
    generic map(
      INIT => X"A9"
    )
    port map (
      I0 => sig_controller_daremctr_s_Reg(5),
      I1 => sig_controller_dac_ctr_Msub_s_reg_sub0000_cy_7_14,
      I2 => sig_controller_daremctr_s_Reg(4),
      O => sig_controller_dac_ctr_s_reg_sub0000(5)
    );
  sig_controller_dac_ctr_Msub_s_reg_sub0000_xor_6_11 : LUT4
    generic map(
      INIT => X"CCC9"
    )
    port map (
      I0 => sig_controller_daremctr_s_Reg(5),
      I1 => sig_controller_daremctr_s_Reg(6),
      I2 => sig_controller_daremctr_s_Reg(4),
      I3 => sig_controller_dac_ctr_Msub_s_reg_sub0000_cy_7_14,
      O => sig_controller_dac_ctr_s_reg_sub0000(6)
    );
  clk_gen_CNT0_s_CNT3_D_mux0004_14_21 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => m_reset_b_IBUF_961,
      I1 => clk_gen_CNT0_s_mode_830,
      O => clk_gen_CNT0_N8
    );
  clk_gen_state_FSM_FFd1_In1 : LUT3
    generic map(
      INIT => X"C4"
    )
    port map (
      I0 => m_wen_IBUF_963,
      I1 => clk_gen_state_FSM_FFd2_864,
      I2 => b_pcs_addr,
      O => clk_gen_state_FSM_FFd1_In
    );
  sig_controller_dac_ctr_Msub_s_reg_sub0000_xor_3_111 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => sig_controller_daremctr_s_Reg(1),
      I1 => sig_controller_daremctr_s_Reg(3),
      I2 => sig_controller_daremctr_s_Reg(2),
      I3 => sig_controller_daremctr_s_Reg(0),
      O => sig_controller_dac_ctr_Msub_s_reg_sub0000_cy_7_14
    );
  clk_gen_state_FSM_FFd6_In1 : LUT4
    generic map(
      INIT => X"FF8C"
    )
    port map (
      I0 => b_pcs_addr,
      I1 => clk_gen_state_FSM_FFd6_869,
      I2 => m_wen_IBUF_963,
      I3 => clk_gen_state_FSM_FFd1_862,
      O => clk_gen_state_FSM_FFd6_In
    );
  sig_controller_dac_ctr_Msub_s_reg_sub0000_cy_7_19 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => sig_controller_daremctr_s_Reg(7),
      I1 => sig_controller_daremctr_s_Reg(6),
      I2 => sig_controller_daremctr_s_Reg(5),
      I3 => sig_controller_daremctr_s_Reg(4),
      O => sig_controller_dac_ctr_Msub_s_reg_sub0000_cy_7_19_1228
    );
  sig_controller_rem1ctr_s_Reg_mux0000_3_11 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => sig_controller_rem1ctr_N111,
      I1 => sig_controller_rem1ctr_s_Reg(2),
      I2 => sig_controller_rem1ctr_s_Reg(1),
      I3 => sig_controller_rem1ctr_s_Reg(3),
      O => sig_controller_rem1ctr_s_Reg_mux0000_3_11_1633
    );
  sig_controller_rem0ctr_s_Reg_mux0000_3_11 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => sig_controller_rem0ctr_N111,
      I1 => sig_controller_rem0ctr_s_Reg(2),
      I2 => sig_controller_rem0ctr_s_Reg(1),
      I3 => sig_controller_rem0ctr_s_Reg(3),
      O => sig_controller_rem0ctr_s_Reg_mux0000_3_11_1524
    );
  sig_controller_daremctr_s_Reg_mux0000_3_11 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => sig_controller_daremctr_N111,
      I1 => sig_controller_daremctr_s_Reg(2),
      I2 => sig_controller_daremctr_s_Reg(1),
      I3 => sig_controller_daremctr_s_Reg(3),
      O => sig_controller_daremctr_s_Reg_mux0000_3_11_1375
    );
  sig_controller_adremctr_s_Reg_mux0000_3_11 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => sig_controller_adremctr_N111,
      I1 => sig_controller_adremctr_s_Reg(2),
      I2 => sig_controller_adremctr_s_Reg(1),
      I3 => sig_controller_adremctr_s_Reg(3),
      O => sig_controller_adremctr_s_Reg_mux0000_3_11_1168
    );
  clk_gen_s_addr_not00011 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => clk_gen_state_FSM_FFd6_869,
      I1 => m_wen_IBUF_963,
      I2 => b_pcs_addr,
      O => clk_gen_s_addr_not0001
    );
  clk_gen_CNT0_Mcount_s_CNT2_eqn_16 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => clk_gen_CNT0_s_CNT2_cmp_eq0000,
      I1 => clk_gen_CNT0_s_REG(1),
      I2 => clk_gen_CNT0_Result(1),
      O => clk_gen_CNT0_Mcount_s_CNT2_eqn_1
    );
  clk_gen_CNT0_Mcount_s_CNT2_eqn_01 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => clk_gen_CNT0_s_CNT2_cmp_eq0000,
      I1 => clk_gen_CNT0_s_REG(0),
      I2 => clk_gen_CNT0_Result(0),
      O => clk_gen_CNT0_Mcount_s_CNT2_eqn_0
    );
  clk_gen_s_wr_b_mux000017 : LUT4
    generic map(
      INIT => X"FF8C"
    )
    port map (
      I0 => b_pcs_addr,
      I1 => clk_gen_state_FSM_FFd2_864,
      I2 => m_wen_IBUF_963,
      I3 => clk_gen_s_wr_b_mux00006,
      O => clk_gen_s_wr_b_mux0000
    );
  clk_gen_CNT0_s_CNT2_cmp_eq000011 : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => clk_gen_CNT0_s_CNT2(0),
      I1 => clk_gen_CNT0_s_CNT2(1),
      I2 => clk_gen_CNT0_s_CNT2(3),
      I3 => clk_gen_CNT0_s_CNT2(2),
      O => clk_gen_CNT0_s_CNT2_cmp_eq000011_642
    );
  clk_gen_CNT0_s_CNT2_cmp_eq000024 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => clk_gen_CNT0_s_CNT2(7),
      I1 => clk_gen_CNT0_s_CNT2(6),
      I2 => clk_gen_CNT0_s_CNT2(5),
      I3 => clk_gen_CNT0_s_CNT2(4),
      O => clk_gen_CNT0_s_CNT2_cmp_eq000024_643
    );
  clk_gen_CNT0_s_CNT2_cmp_eq000048 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => clk_gen_CNT0_s_CNT2(15),
      I1 => clk_gen_CNT0_s_CNT2(14),
      I2 => clk_gen_CNT0_s_CNT2(13),
      I3 => clk_gen_CNT0_s_CNT2(12),
      O => clk_gen_CNT0_s_CNT2_cmp_eq000048_644
    );
  clk_gen_CNT0_s_CNT2_cmp_eq000061 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => clk_gen_CNT0_s_CNT2(11),
      I1 => clk_gen_CNT0_s_CNT2(10),
      I2 => clk_gen_CNT0_s_CNT2(9),
      I3 => clk_gen_CNT0_s_CNT2(8),
      O => clk_gen_CNT0_s_CNT2_cmp_eq000061_645
    );
  clk_gen_CNT0_s_CNT2_cmp_eq000075 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => clk_gen_CNT0_s_CNT2_cmp_eq000011_642,
      I1 => clk_gen_CNT0_s_CNT2_cmp_eq000024_643,
      I2 => clk_gen_CNT0_s_CNT2_cmp_eq000048_644,
      I3 => clk_gen_CNT0_s_CNT2_cmp_eq000061_645,
      O => clk_gen_CNT0_s_CNT2_cmp_eq0000
    );
  sig_controller_t_ps_FSM_FFd3_In1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => sig_controller_s_comp2,
      I1 => sig_controller_t_ps_FSM_FFd4_1748,
      O => sig_controller_t_ps_FSM_FFd3_In
    );
  sig_controller_rem1ctr_s_Reg_mux0000_6_11 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => sig_controller_rem1ctr_N8,
      I1 => sig_controller_rem1ctr_s_Reg(5),
      I2 => sig_controller_rem1ctr_s_Reg(4),
      I3 => sig_controller_rem1ctr_s_Reg(6),
      O => sig_controller_rem1ctr_s_Reg_mux0000_6_11_1639
    );
  sig_controller_rem0ctr_s_Reg_mux0000_6_11 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => sig_controller_rem0ctr_N8,
      I1 => sig_controller_rem0ctr_s_Reg(5),
      I2 => sig_controller_rem0ctr_s_Reg(4),
      I3 => sig_controller_rem0ctr_s_Reg(6),
      O => sig_controller_rem0ctr_s_Reg_mux0000_6_11_1530
    );
  sig_controller_daremctr_s_Reg_mux0000_6_11 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => sig_controller_daremctr_N8,
      I1 => sig_controller_daremctr_s_Reg(5),
      I2 => sig_controller_daremctr_s_Reg(4),
      I3 => sig_controller_daremctr_s_Reg(6),
      O => sig_controller_daremctr_s_Reg_mux0000_6_11_1381
    );
  sig_controller_adremctr_s_Reg_mux0000_6_11 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => sig_controller_adremctr_N8,
      I1 => sig_controller_adremctr_s_Reg(5),
      I2 => sig_controller_adremctr_s_Reg(4),
      I3 => sig_controller_adremctr_s_Reg(6),
      O => sig_controller_adremctr_s_Reg_mux0000_6_11_1174
    );
  clk_gen_CNT0_Mcount_s_CNT2_eqn_21 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => clk_gen_CNT0_s_CNT2_cmp_eq0000,
      I1 => clk_gen_CNT0_s_REG(2),
      I2 => clk_gen_CNT0_Result(2),
      O => clk_gen_CNT0_Mcount_s_CNT2_eqn_2
    );
  clk_gen_CNT0_Mcount_s_CNT2_eqn_31 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => clk_gen_CNT0_s_CNT2_cmp_eq0000,
      I1 => clk_gen_CNT0_s_REG(3),
      I2 => clk_gen_CNT0_Result(3),
      O => clk_gen_CNT0_Mcount_s_CNT2_eqn_3
    );
  clk_gen_CNT0_Mcount_s_CNT2_eqn_41 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => clk_gen_CNT0_s_CNT2_cmp_eq0000,
      I1 => clk_gen_CNT0_s_REG(4),
      I2 => clk_gen_CNT0_Result(4),
      O => clk_gen_CNT0_Mcount_s_CNT2_eqn_4
    );
  clk_gen_CNT0_m_out_SW0 : LUT3
    generic map(
      INIT => X"D1"
    )
    port map (
      I0 => clk_gen_CNT0_s_CNT2_cmp_eq0000,
      I1 => clk_gen_CNT0_s_mode_830,
      I2 => clk_gen_CNT0_s_CNT3_UD_746,
      O => N66
    );
  clk_gen_CNT0_m_out : LUT4
    generic map(
      INIT => X"D580"
    )
    port map (
      I0 => clk_gen_CNT0_s_out2_or0000,
      I1 => m_TP_0_OBUF1,
      I2 => clk_gen_CNT0_s_mode_830,
      I3 => N66,
      O => m_TP_1_OBUF1
    );
  clk_gen_CNT0_s_out2_or000012 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => clk_gen_CNT0_s_REG(14),
      I1 => clk_gen_CNT0_s_REG(13),
      I2 => clk_gen_CNT0_s_REG(12),
      I3 => clk_gen_CNT0_s_REG(11),
      O => clk_gen_CNT0_s_out2_or000012_832
    );
  clk_gen_CNT0_s_out2_or000025 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => clk_gen_CNT0_s_REG(10),
      I1 => clk_gen_CNT0_s_REG(9),
      I2 => clk_gen_CNT0_s_REG(8),
      I3 => clk_gen_CNT0_s_REG(7),
      O => clk_gen_CNT0_s_out2_or000025_833
    );
  clk_gen_CNT0_s_out2_or000049 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => clk_gen_CNT0_s_REG(6),
      I1 => clk_gen_CNT0_s_REG(5),
      I2 => clk_gen_CNT0_s_REG(4),
      I3 => clk_gen_CNT0_s_REG(3),
      O => clk_gen_CNT0_s_out2_or000049_834
    );
  clk_gen_CNT0_s_out2_or000058 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => clk_gen_CNT0_s_REG(2),
      I1 => clk_gen_CNT0_s_REG(1),
      I2 => clk_gen_CNT0_s_REG(15),
      O => clk_gen_CNT0_s_out2_or000058_835
    );
  clk_gen_CNT0_s_out2_or000071 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => clk_gen_CNT0_s_out2_or000012_832,
      I1 => clk_gen_CNT0_s_out2_or000025_833,
      I2 => clk_gen_CNT0_s_out2_or000049_834,
      I3 => clk_gen_CNT0_s_out2_or000058_835,
      O => clk_gen_CNT0_s_out2_or0000
    );
  clk_gen_CNT0_Mcount_s_CNT2_eqn_51 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => clk_gen_CNT0_s_CNT2_cmp_eq0000,
      I1 => clk_gen_CNT0_s_REG(5),
      I2 => clk_gen_CNT0_Result(5),
      O => clk_gen_CNT0_Mcount_s_CNT2_eqn_5
    );
  clk_gen_CNT0_Mcount_s_CNT2_eqn_61 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => clk_gen_CNT0_s_CNT2_cmp_eq0000,
      I1 => clk_gen_CNT0_s_REG(6),
      I2 => clk_gen_CNT0_Result(6),
      O => clk_gen_CNT0_Mcount_s_CNT2_eqn_6
    );
  clk_gen_CNT0_Mcount_s_CNT2_eqn_71 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => clk_gen_CNT0_s_CNT2_cmp_eq0000,
      I1 => clk_gen_CNT0_s_REG(7),
      I2 => clk_gen_CNT0_Result(7),
      O => clk_gen_CNT0_Mcount_s_CNT2_eqn_7
    );
  sig_controller_rem1ctr_s_Reg_mux0000_7_2 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(7),
      I1 => sig_controller_s_sel1(1),
      I2 => sig_controller_s_sel1(0),
      O => sig_controller_rem1ctr_s_Reg_mux0000_7_2_1643
    );
  sig_controller_rem1ctr_s_Reg_mux0000_7_34 : LUT4
    generic map(
      INIT => X"FFAE"
    )
    port map (
      I0 => sig_controller_rem1ctr_s_Reg_mux0000_7_2_1643,
      I1 => sig_controller_rem1ctr_N10,
      I2 => sig_controller_rem1ctr_s_Reg(7),
      I3 => sig_controller_rem1ctr_s_Reg_mux0000_7_16,
      O => sig_controller_rem1ctr_s_Reg_mux0000(7)
    );
  sig_controller_rem0ctr_s_Reg_mux0000_7_2 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => sig_controller_adremctr_s_Reg(7),
      I1 => sig_controller_s_sel0(1),
      I2 => sig_controller_s_sel0(0),
      O => sig_controller_rem0ctr_s_Reg_mux0000_7_2_1534
    );
  sig_controller_rem0ctr_s_Reg_mux0000_7_34 : LUT4
    generic map(
      INIT => X"FFAE"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg_mux0000_7_2_1534,
      I1 => sig_controller_rem0ctr_N10,
      I2 => sig_controller_rem0ctr_s_Reg(7),
      I3 => sig_controller_rem0ctr_s_Reg_mux0000_7_16,
      O => sig_controller_rem0ctr_s_Reg_mux0000(7)
    );
  sig_controller_daremctr_s_Reg_mux0000_7_2 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => sig_controller_rem1ctr_s_Reg(7),
      I1 => sig_controller_s_selda(1),
      I2 => sig_controller_s_selda(0),
      O => sig_controller_daremctr_s_Reg_mux0000_7_2_1385
    );
  sig_controller_daremctr_s_Reg_mux0000_7_34 : LUT4
    generic map(
      INIT => X"FFAE"
    )
    port map (
      I0 => sig_controller_daremctr_s_Reg_mux0000_7_2_1385,
      I1 => sig_controller_daremctr_N10,
      I2 => sig_controller_daremctr_s_Reg(7),
      I3 => sig_controller_daremctr_s_Reg_mux0000_7_16,
      O => sig_controller_daremctr_s_Reg_mux0000(7)
    );
  sig_controller_adremctr_s_Reg_mux0000_7_2 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => inlatch_dout(7),
      I1 => sig_controller_s_selad(1),
      I2 => sig_controller_s_selad(0),
      O => sig_controller_adremctr_s_Reg_mux0000_7_2_1178
    );
  sig_controller_adremctr_s_Reg_mux0000_7_34 : LUT4
    generic map(
      INIT => X"FFAE"
    )
    port map (
      I0 => sig_controller_adremctr_s_Reg_mux0000_7_2_1178,
      I1 => sig_controller_adremctr_N10,
      I2 => sig_controller_adremctr_s_Reg(7),
      I3 => sig_controller_adremctr_s_Reg_mux0000_7_16,
      O => sig_controller_adremctr_s_Reg_mux0000(7)
    );
  clk_gen_CNT0_Mcount_s_CNT2_eqn_81 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => clk_gen_CNT0_s_CNT2_cmp_eq0000,
      I1 => clk_gen_CNT0_s_REG(8),
      I2 => clk_gen_CNT0_Result(8),
      O => clk_gen_CNT0_Mcount_s_CNT2_eqn_8
    );
  clk_gen_CNT0_Mcount_s_CNT2_eqn_91 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => clk_gen_CNT0_s_CNT2_cmp_eq0000,
      I1 => clk_gen_CNT0_s_REG(9),
      I2 => clk_gen_CNT0_Result(9),
      O => clk_gen_CNT0_Mcount_s_CNT2_eqn_9
    );
  clk_gen_CNT0_Mcount_s_CNT2_eqn_101 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => clk_gen_CNT0_s_CNT2_cmp_eq0000,
      I1 => clk_gen_CNT0_s_REG(10),
      I2 => clk_gen_CNT0_Result(10),
      O => clk_gen_CNT0_Mcount_s_CNT2_eqn_10
    );
  clk_gen_CNT0_Mcount_s_CNT2_eqn_111 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => clk_gen_CNT0_s_CNT2_cmp_eq0000,
      I1 => clk_gen_CNT0_s_REG(11),
      I2 => clk_gen_CNT0_Result(11),
      O => clk_gen_CNT0_Mcount_s_CNT2_eqn_11
    );
  clk_gen_CNT0_Mcount_s_CNT2_eqn_121 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => clk_gen_CNT0_s_CNT2_cmp_eq0000,
      I1 => clk_gen_CNT0_s_REG(12),
      I2 => clk_gen_CNT0_Result(12),
      O => clk_gen_CNT0_Mcount_s_CNT2_eqn_12
    );
  clk_gen_CNT0_Mcount_s_CNT2_eqn_131 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => clk_gen_CNT0_s_CNT2_cmp_eq0000,
      I1 => clk_gen_CNT0_s_REG(13),
      I2 => clk_gen_CNT0_Result(13),
      O => clk_gen_CNT0_Mcount_s_CNT2_eqn_13
    );
  clk_gen_CNT0_Mcount_s_CNT2_eqn_141 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => clk_gen_CNT0_s_CNT2_cmp_eq0000,
      I1 => clk_gen_CNT0_s_REG(14),
      I2 => clk_gen_CNT0_Result(14),
      O => clk_gen_CNT0_Mcount_s_CNT2_eqn_14
    );
  sig_controller_adremctr_s_Reg_mux0000_2_32 : LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      I0 => sig_controller_adremctr_s_Reg(1),
      I1 => sig_controller_adremctr_s_Reg(0),
      I2 => sig_controller_s_selad(0),
      O => sig_controller_adremctr_N12
    );
  addr_decode_m_mode_addr_2_18 : LUT3
    generic map(
      INIT => X"A9"
    )
    port map (
      I0 => s_address(5),
      I1 => s_address(1),
      I2 => s_address(2),
      O => addr_decode_m_mode_addr_2_18_108
    );
  addr_decode_m_mode_addr_2_26 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => s_address(4),
      I1 => s_address(6),
      I2 => s_address(8),
      I3 => s_address(7),
      O => addr_decode_m_mode_addr_2_26_109
    );
  clk_gen_CNT0_Mcount_s_CNT2_eqn_151 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => clk_gen_CNT0_s_CNT2_cmp_eq0000,
      I1 => clk_gen_CNT0_s_REG(15),
      I2 => clk_gen_CNT0_Result(15),
      O => clk_gen_CNT0_Mcount_s_CNT2_eqn_15
    );
  sig_controller_adremctr_s_Reg_mux0000_8_11 : LUT4
    generic map(
      INIT => X"FF7F"
    )
    port map (
      I0 => sig_controller_adremctr_s_Reg(5),
      I1 => sig_controller_adremctr_s_Reg(6),
      I2 => sig_controller_adremctr_s_Reg(7),
      I3 => sig_controller_adremctr_N5,
      O => sig_controller_adremctr_N2
    );
  sig_controller_adremctr_s_Reg_mux0000_5_11 : LUT4
    generic map(
      INIT => X"FF7F"
    )
    port map (
      I0 => sig_controller_adremctr_s_Reg(2),
      I1 => sig_controller_adremctr_s_Reg(3),
      I2 => sig_controller_adremctr_s_Reg(4),
      I3 => sig_controller_adremctr_N12,
      O => sig_controller_adremctr_N5
    );
  sig_controller_rem1ctr_s_Reg_mux0000_2_31 : LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      I0 => sig_controller_s_sel1(0),
      I1 => sig_controller_rem1ctr_s_Reg(0),
      I2 => sig_controller_rem1ctr_s_Reg(1),
      O => sig_controller_rem1ctr_N12
    );
  sig_controller_rem1ctr_s_Reg_mux0000_2_23 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => sig_controller_s_sel1(0),
      I1 => sig_controller_rem1ctr_s_Reg(0),
      I2 => sig_controller_s_sel1(1),
      O => sig_controller_rem1ctr_N111
    );
  sig_controller_rem1ctr_s_Reg_mux0000_10_41 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => sig_controller_rem1ctr_s_Reg(8),
      I1 => sig_controller_rem1ctr_s_Reg(7),
      I2 => sig_controller_rem1ctr_N10,
      O => sig_controller_rem1ctr_N17
    );
  sig_controller_rem0ctr_s_Reg_mux0000_2_31 : LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      I0 => sig_controller_s_sel0(0),
      I1 => sig_controller_rem0ctr_s_Reg(0),
      I2 => sig_controller_rem0ctr_s_Reg(1),
      O => sig_controller_rem0ctr_N12
    );
  sig_controller_rem0ctr_s_Reg_mux0000_2_23 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => sig_controller_s_sel0(0),
      I1 => sig_controller_rem0ctr_s_Reg(0),
      I2 => sig_controller_s_sel0(1),
      O => sig_controller_rem0ctr_N111
    );
  sig_controller_rem0ctr_s_Reg_mux0000_10_41 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(8),
      I1 => sig_controller_rem0ctr_s_Reg(7),
      I2 => sig_controller_rem0ctr_N10,
      O => sig_controller_rem0ctr_N17
    );
  sig_controller_daremctr_s_Reg_mux0000_2_31 : LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      I0 => sig_controller_s_selda(0),
      I1 => sig_controller_daremctr_s_Reg(0),
      I2 => sig_controller_daremctr_s_Reg(1),
      O => sig_controller_daremctr_N12
    );
  sig_controller_daremctr_s_Reg_mux0000_2_23 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => sig_controller_s_selda(0),
      I1 => sig_controller_daremctr_s_Reg(0),
      I2 => sig_controller_s_selda(1),
      O => sig_controller_daremctr_N111
    );
  sig_controller_daremctr_s_Reg_mux0000_10_41 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => sig_controller_daremctr_s_Reg(8),
      I1 => sig_controller_daremctr_s_Reg(7),
      I2 => sig_controller_daremctr_N10,
      O => sig_controller_daremctr_N17
    );
  sig_controller_adremctr_s_Reg_mux0000_2_23 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => sig_controller_s_selad(0),
      I1 => sig_controller_adremctr_s_Reg(0),
      I2 => sig_controller_s_selad(1),
      O => sig_controller_adremctr_N111
    );
  clk_gen_CNT0_s_CNT3_D_mux0004_7_21 : LUT3
    generic map(
      INIT => X"8F"
    )
    port map (
      I0 => clk_gen_CNT0_s_REG(8),
      I1 => clk_gen_CNT0_N16,
      I2 => m_reset_b_IBUF_961,
      O => clk_gen_CNT0_N18
    );
  sig_controller_rem1ctr_s_Reg_mux0000_8_12 : LUT4
    generic map(
      INIT => X"FF7F"
    )
    port map (
      I0 => sig_controller_rem1ctr_s_Reg(5),
      I1 => sig_controller_rem1ctr_s_Reg(6),
      I2 => sig_controller_rem1ctr_s_Reg(7),
      I3 => sig_controller_rem1ctr_N5,
      O => sig_controller_rem1ctr_N2
    );
  sig_controller_rem1ctr_s_Reg_mux0000_5_11 : LUT4
    generic map(
      INIT => X"FF7F"
    )
    port map (
      I0 => sig_controller_rem1ctr_s_Reg(2),
      I1 => sig_controller_rem1ctr_s_Reg(3),
      I2 => sig_controller_rem1ctr_s_Reg(4),
      I3 => sig_controller_rem1ctr_N12,
      O => sig_controller_rem1ctr_N5
    );
  sig_controller_rem1ctr_s_Reg_mux0000_10_31 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => sig_controller_rem1ctr_s_Reg(6),
      I1 => sig_controller_rem1ctr_s_Reg(5),
      I2 => sig_controller_rem1ctr_s_Reg(4),
      I3 => sig_controller_rem1ctr_N8,
      O => sig_controller_rem1ctr_N10
    );
  sig_controller_rem1ctr_s_Reg_mux0000_10_21 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => sig_controller_rem1ctr_s_Reg(3),
      I1 => sig_controller_rem1ctr_s_Reg(1),
      I2 => sig_controller_rem1ctr_s_Reg(2),
      I3 => sig_controller_rem1ctr_N111,
      O => sig_controller_rem1ctr_N8
    );
  sig_controller_rem0ctr_s_Reg_mux0000_8_12 : LUT4
    generic map(
      INIT => X"FF7F"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(5),
      I1 => sig_controller_rem0ctr_s_Reg(6),
      I2 => sig_controller_rem0ctr_s_Reg(7),
      I3 => sig_controller_rem0ctr_N5,
      O => sig_controller_rem0ctr_N2
    );
  sig_controller_rem0ctr_s_Reg_mux0000_5_11 : LUT4
    generic map(
      INIT => X"FF7F"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(2),
      I1 => sig_controller_rem0ctr_s_Reg(3),
      I2 => sig_controller_rem0ctr_s_Reg(4),
      I3 => sig_controller_rem0ctr_N12,
      O => sig_controller_rem0ctr_N5
    );
  sig_controller_rem0ctr_s_Reg_mux0000_10_31 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(6),
      I1 => sig_controller_rem0ctr_s_Reg(5),
      I2 => sig_controller_rem0ctr_s_Reg(4),
      I3 => sig_controller_rem0ctr_N8,
      O => sig_controller_rem0ctr_N10
    );
  sig_controller_rem0ctr_s_Reg_mux0000_10_21 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(3),
      I1 => sig_controller_rem0ctr_s_Reg(1),
      I2 => sig_controller_rem0ctr_s_Reg(2),
      I3 => sig_controller_rem0ctr_N111,
      O => sig_controller_rem0ctr_N8
    );
  sig_controller_daremctr_s_Reg_mux0000_8_12 : LUT4
    generic map(
      INIT => X"FF7F"
    )
    port map (
      I0 => sig_controller_daremctr_s_Reg(5),
      I1 => sig_controller_daremctr_s_Reg(6),
      I2 => sig_controller_daremctr_s_Reg(7),
      I3 => sig_controller_daremctr_N5,
      O => sig_controller_daremctr_N2
    );
  sig_controller_daremctr_s_Reg_mux0000_5_11 : LUT4
    generic map(
      INIT => X"FF7F"
    )
    port map (
      I0 => sig_controller_daremctr_s_Reg(2),
      I1 => sig_controller_daremctr_s_Reg(3),
      I2 => sig_controller_daremctr_s_Reg(4),
      I3 => sig_controller_daremctr_N12,
      O => sig_controller_daremctr_N5
    );
  sig_controller_daremctr_s_Reg_mux0000_10_31 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => sig_controller_daremctr_s_Reg(6),
      I1 => sig_controller_daremctr_s_Reg(5),
      I2 => sig_controller_daremctr_s_Reg(4),
      I3 => sig_controller_daremctr_N8,
      O => sig_controller_daremctr_N10
    );
  sig_controller_daremctr_s_Reg_mux0000_10_21 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => sig_controller_daremctr_s_Reg(3),
      I1 => sig_controller_daremctr_s_Reg(1),
      I2 => sig_controller_daremctr_s_Reg(2),
      I3 => sig_controller_daremctr_N111,
      O => sig_controller_daremctr_N8
    );
  sig_controller_adremctr_s_Reg_mux0000_10_31 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => sig_controller_adremctr_s_Reg(6),
      I1 => sig_controller_adremctr_s_Reg(5),
      I2 => sig_controller_adremctr_s_Reg(4),
      I3 => sig_controller_adremctr_N8,
      O => sig_controller_adremctr_N10
    );
  sig_controller_adremctr_s_Reg_mux0000_10_21 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => sig_controller_adremctr_s_Reg(3),
      I1 => sig_controller_adremctr_s_Reg(1),
      I2 => sig_controller_adremctr_s_Reg(2),
      I3 => sig_controller_adremctr_N111,
      O => sig_controller_adremctr_N8
    );
  sig_controller_t_ps_FSM_FFd14_In_SW0 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => s_mode_addr(0),
      I1 => s_mode_addr(2),
      I2 => sig_controller_t_ps_FSM_FFd19_1736,
      O => N74
    );
  sig_controller_t_ps_FSM_FFd14_In : LUT4
    generic map(
      INIT => X"22F2"
    )
    port map (
      I0 => N74,
      I1 => s_mode_addr(1),
      I2 => sig_controller_t_ps_FSM_FFd14_1726,
      I3 => s_OE_b_1000,
      O => sig_controller_t_ps_FSM_FFd14_In_1727
    );
  clk_gen_CNT0_s_CNT3_U_mux0000_8_1_SW0 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => clk_gen_CNT0_N15,
      I1 => clk_gen_CNT0_s_CNT3_U_share0000(7),
      I2 => clk_gen_CNT0_N5,
      I3 => clk_gen_CNT0_s_CNT3_1(8),
      O => N78
    );
  clk_gen_CNT0_s_CNT3_D_mux0004_7_9 : LUT4
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => clk_gen_CNT0_N01,
      I1 => clk_gen_CNT0_s_CNT3_D_addsub0000(7),
      I2 => clk_gen_CNT0_s_CNT3_D_cmp_eq0000,
      I3 => clk_gen_CNT0_N18,
      O => clk_gen_CNT0_s_CNT3_D_mux0004_7_9_741
    );
  clk_gen_CNT0_s_CNT3_D_mux0004_7_17 : LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      I0 => clk_gen_CNT0_s_CNT3_D(7),
      I1 => clk_gen_CNT0_s_mode_830,
      I2 => clk_gen_CNT0_s_CNT3_2(8),
      I3 => clk_gen_CNT0_N5,
      O => clk_gen_CNT0_s_CNT3_D_mux0004_7_17_740
    );
  clk_gen_CNT0_s_CNT3_U_mux0000_2_14 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => clk_gen_CNT0_N15,
      I1 => clk_gen_CNT0_s_CNT3_U_share0000(1),
      I2 => clk_gen_CNT0_N5,
      I3 => clk_gen_CNT0_s_CNT3_1(2),
      O => clk_gen_CNT0_s_CNT3_U_mux0000_2_14_783
    );
  clk_gen_CNT0_s_CNT3_D_mux0004_13_11 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => m_reset_b_IBUF_961,
      I1 => clk_gen_CNT0_N5,
      O => clk_gen_CNT0_N3
    );
  sig_controller_m_out_mux_sel_0_mux00001 : LUT3
    generic map(
      INIT => X"FB"
    )
    port map (
      I0 => s_mode_addr(2),
      I1 => s_mode_addr(0),
      I2 => s_mode_addr(1),
      O => s_out_mux_sel
    );
  clk_gen_CNT0_s_CNT3_D_mux0004_13_21 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => m_reset_b_IBUF_961,
      I1 => clk_gen_CNT0_N01,
      I2 => clk_gen_CNT0_s_CNT3_D_cmp_eq0000,
      O => clk_gen_CNT0_N7
    );
  out_mux_dout_7_1 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => s_out_mux_sel,
      I1 => s_doutb1(7),
      I2 => s_doutb0(7),
      O => out_mux_dout(7)
    );
  out_mux_dout_6_1 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => s_out_mux_sel,
      I1 => s_doutb1(6),
      I2 => s_doutb0(6),
      O => out_mux_dout(6)
    );
  out_mux_dout_5_1 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => s_out_mux_sel,
      I1 => s_doutb1(5),
      I2 => s_doutb0(5),
      O => out_mux_dout(5)
    );
  out_mux_dout_4_1 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => s_out_mux_sel,
      I1 => s_doutb1(4),
      I2 => s_doutb0(4),
      O => out_mux_dout(4)
    );
  out_mux_dout_3_1 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => s_out_mux_sel,
      I1 => s_doutb1(3),
      I2 => s_doutb0(3),
      O => out_mux_dout(3)
    );
  out_mux_dout_2_1 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => s_out_mux_sel,
      I1 => s_doutb1(2),
      I2 => s_doutb0(2),
      O => out_mux_dout(2)
    );
  out_mux_dout_1_1 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => s_out_mux_sel,
      I1 => s_doutb1(1),
      I2 => s_doutb0(1),
      O => out_mux_dout(1)
    );
  out_mux_dout_0_1 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => s_out_mux_sel,
      I1 => s_doutb1(0),
      I2 => s_doutb0(0),
      O => out_mux_dout(0)
    );
  sig_controller_t_ps_FSM_FFd18_In1 : LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd18_1734,
      I1 => s_wen_1043,
      I2 => s_OE_b_1000,
      I3 => sig_controller_N35,
      O => sig_controller_t_ps_FSM_FFd18_In
    );
  sig_controller_t_ps_FSM_FFd17_In1 : LUT4
    generic map(
      INIT => X"22F2"
    )
    port map (
      I0 => sig_controller_N35,
      I1 => s_OE_b_1000,
      I2 => sig_controller_t_ps_FSM_FFd17_1732,
      I3 => s_ren_1042,
      O => sig_controller_t_ps_FSM_FFd17_In
    );
  clk_gen_CNT0_s_CNT3_U_mux0000_2_114 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => clk_gen_CNT0_s_CNT3_UD_cmp_eq0000,
      I1 => clk_gen_CNT0_s_CNT3_D_cmp_eq0000,
      I2 => clk_gen_CNT0_s_REG(0),
      I3 => clk_gen_CNT0_s_mode_830,
      O => clk_gen_CNT0_N5
    );
  sig_controller_t_ps_FSM_FFd17_In21 : LUT4
    generic map(
      INIT => X"0440"
    )
    port map (
      I0 => s_mode_addr(2),
      I1 => sig_controller_t_ps_FSM_FFd19_1736,
      I2 => s_mode_addr(0),
      I3 => s_mode_addr(1),
      O => sig_controller_N35
    );
  sig_controller_t_ps_FSM_FFd20_In11 : LUT4
    generic map(
      INIT => X"8081"
    )
    port map (
      I0 => s_mode_addr(0),
      I1 => s_mode_addr(1),
      I2 => s_mode_addr(2),
      I3 => s_mode_valid,
      O => sig_controller_N4
    );
  clk_gen_CNT0_s_CNT3_D_mux0004_9_4 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => clk_gen_CNT0_N3,
      I1 => clk_gen_CNT0_s_CNT3_2(6),
      I2 => clk_gen_CNT0_s_CNT3_D(5),
      I3 => clk_gen_CNT0_N8,
      O => clk_gen_CNT0_s_CNT3_D_mux0004_9_4_744
    );
  clk_gen_CNT0_s_CNT3_D_mux0004_9_9 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => clk_gen_CNT0_N4,
      I1 => clk_gen_CNT0_s_REG(6),
      I2 => clk_gen_CNT0_N7,
      I3 => clk_gen_CNT0_s_CNT3_D_addsub0000(5),
      O => clk_gen_CNT0_s_CNT3_D_mux0004_9_9_745
    );
  clk_gen_CNT0_s_CNT3_D_mux0004_8_4 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => clk_gen_CNT0_N3,
      I1 => clk_gen_CNT0_s_CNT3_2(7),
      I2 => clk_gen_CNT0_s_CNT3_D(6),
      I3 => clk_gen_CNT0_N8,
      O => clk_gen_CNT0_s_CNT3_D_mux0004_8_4_742
    );
  clk_gen_CNT0_s_CNT3_D_mux0004_8_9 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => clk_gen_CNT0_N4,
      I1 => clk_gen_CNT0_s_REG(7),
      I2 => clk_gen_CNT0_N7,
      I3 => clk_gen_CNT0_s_CNT3_D_addsub0000(6),
      O => clk_gen_CNT0_s_CNT3_D_mux0004_8_9_743
    );
  clk_gen_CNT0_s_CNT3_D_mux0004_6_4 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => clk_gen_CNT0_N3,
      I1 => clk_gen_CNT0_s_CNT3_2(9),
      I2 => clk_gen_CNT0_s_CNT3_D(8),
      I3 => clk_gen_CNT0_N8,
      O => clk_gen_CNT0_s_CNT3_D_mux0004_6_4_738
    );
  clk_gen_CNT0_s_CNT3_D_mux0004_6_9 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => clk_gen_CNT0_N4,
      I1 => clk_gen_CNT0_s_REG(9),
      I2 => clk_gen_CNT0_N7,
      I3 => clk_gen_CNT0_s_CNT3_D_addsub0000(8),
      O => clk_gen_CNT0_s_CNT3_D_mux0004_6_9_739
    );
  clk_gen_CNT0_s_CNT3_D_mux0004_5_4 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => clk_gen_CNT0_N3,
      I1 => clk_gen_CNT0_s_CNT3_2(10),
      I2 => clk_gen_CNT0_s_CNT3_D(9),
      I3 => clk_gen_CNT0_N8,
      O => clk_gen_CNT0_s_CNT3_D_mux0004_5_4_736
    );
  clk_gen_CNT0_s_CNT3_D_mux0004_5_9 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => clk_gen_CNT0_N4,
      I1 => clk_gen_CNT0_s_REG(10),
      I2 => clk_gen_CNT0_N7,
      I3 => clk_gen_CNT0_s_CNT3_D_addsub0000(9),
      O => clk_gen_CNT0_s_CNT3_D_mux0004_5_9_737
    );
  clk_gen_CNT0_s_CNT3_D_mux0004_4_4 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => clk_gen_CNT0_N3,
      I1 => clk_gen_CNT0_s_CNT3_2(11),
      I2 => clk_gen_CNT0_s_CNT3_D(10),
      I3 => clk_gen_CNT0_N8,
      O => clk_gen_CNT0_s_CNT3_D_mux0004_4_4_734
    );
  clk_gen_CNT0_s_CNT3_D_mux0004_4_9 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => clk_gen_CNT0_N4,
      I1 => clk_gen_CNT0_s_REG(11),
      I2 => clk_gen_CNT0_N7,
      I3 => clk_gen_CNT0_s_CNT3_D_addsub0000(10),
      O => clk_gen_CNT0_s_CNT3_D_mux0004_4_9_735
    );
  clk_gen_CNT0_s_CNT3_D_mux0004_3_4 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => clk_gen_CNT0_N3,
      I1 => clk_gen_CNT0_s_CNT3_2(12),
      I2 => clk_gen_CNT0_s_CNT3_D(11),
      I3 => clk_gen_CNT0_N8,
      O => clk_gen_CNT0_s_CNT3_D_mux0004_3_4_732
    );
  clk_gen_CNT0_s_CNT3_D_mux0004_3_9 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => clk_gen_CNT0_N4,
      I1 => clk_gen_CNT0_s_REG(12),
      I2 => clk_gen_CNT0_N7,
      I3 => clk_gen_CNT0_s_CNT3_D_addsub0000(11),
      O => clk_gen_CNT0_s_CNT3_D_mux0004_3_9_733
    );
  clk_gen_CNT0_s_CNT3_D_mux0004_2_4 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => clk_gen_CNT0_N3,
      I1 => clk_gen_CNT0_s_CNT3_2(13),
      I2 => clk_gen_CNT0_s_CNT3_D(12),
      I3 => clk_gen_CNT0_N8,
      O => clk_gen_CNT0_s_CNT3_D_mux0004_2_4_730
    );
  clk_gen_CNT0_s_CNT3_D_mux0004_2_9 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => clk_gen_CNT0_N4,
      I1 => clk_gen_CNT0_s_REG(13),
      I2 => clk_gen_CNT0_N7,
      I3 => clk_gen_CNT0_s_CNT3_D_addsub0000(12),
      O => clk_gen_CNT0_s_CNT3_D_mux0004_2_9_731
    );
  clk_gen_CNT0_s_CNT3_D_mux0004_1_4 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => clk_gen_CNT0_N3,
      I1 => clk_gen_CNT0_s_CNT3_2(14),
      I2 => clk_gen_CNT0_s_CNT3_D(13),
      I3 => clk_gen_CNT0_N8,
      O => clk_gen_CNT0_s_CNT3_D_mux0004_1_4_728
    );
  clk_gen_CNT0_s_CNT3_D_mux0004_1_9 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => clk_gen_CNT0_N4,
      I1 => clk_gen_CNT0_s_REG(14),
      I2 => clk_gen_CNT0_N7,
      I3 => clk_gen_CNT0_s_CNT3_D_addsub0000(13),
      O => clk_gen_CNT0_s_CNT3_D_mux0004_1_9_729
    );
  clk_gen_CNT0_s_CNT3_D_mux0004_12_4 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => clk_gen_CNT0_N3,
      I1 => clk_gen_CNT0_s_CNT3_2(3),
      I2 => clk_gen_CNT0_s_CNT3_D(2),
      I3 => clk_gen_CNT0_N8,
      O => clk_gen_CNT0_s_CNT3_D_mux0004_12_4_717
    );
  clk_gen_CNT0_s_CNT3_D_mux0004_12_9 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => clk_gen_CNT0_N4,
      I1 => clk_gen_CNT0_s_REG(3),
      I2 => clk_gen_CNT0_N7,
      I3 => clk_gen_CNT0_s_CNT3_D_addsub0000(2),
      O => clk_gen_CNT0_s_CNT3_D_mux0004_12_9_718
    );
  clk_gen_CNT0_s_CNT3_D_mux0004_11_4 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => clk_gen_CNT0_N3,
      I1 => clk_gen_CNT0_s_CNT3_2(4),
      I2 => clk_gen_CNT0_s_CNT3_D(3),
      I3 => clk_gen_CNT0_N8,
      O => clk_gen_CNT0_s_CNT3_D_mux0004_11_4_715
    );
  clk_gen_CNT0_s_CNT3_D_mux0004_11_9 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => clk_gen_CNT0_N4,
      I1 => clk_gen_CNT0_s_REG(4),
      I2 => clk_gen_CNT0_N7,
      I3 => clk_gen_CNT0_s_CNT3_D_addsub0000(3),
      O => clk_gen_CNT0_s_CNT3_D_mux0004_11_9_716
    );
  clk_gen_CNT0_s_CNT3_D_mux0004_10_4 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => clk_gen_CNT0_N3,
      I1 => clk_gen_CNT0_s_CNT3_2(5),
      I2 => clk_gen_CNT0_s_CNT3_D(4),
      I3 => clk_gen_CNT0_N8,
      O => clk_gen_CNT0_s_CNT3_D_mux0004_10_4_713
    );
  clk_gen_CNT0_s_CNT3_D_mux0004_10_9 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => clk_gen_CNT0_N4,
      I1 => clk_gen_CNT0_s_REG(5),
      I2 => clk_gen_CNT0_N7,
      I3 => clk_gen_CNT0_s_CNT3_D_addsub0000(4),
      O => clk_gen_CNT0_s_CNT3_D_mux0004_10_9_714
    );
  clk_gen_CNT0_s_CNT3_D_mux0004_0_4 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => clk_gen_CNT0_N3,
      I1 => clk_gen_CNT0_s_CNT3_2(15),
      I2 => clk_gen_CNT0_s_CNT3_D(14),
      I3 => clk_gen_CNT0_N8,
      O => clk_gen_CNT0_s_CNT3_D_mux0004_0_4_711
    );
  clk_gen_CNT0_s_CNT3_D_mux0004_0_9 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => clk_gen_CNT0_N4,
      I1 => clk_gen_CNT0_s_REG(15),
      I2 => clk_gen_CNT0_N7,
      I3 => clk_gen_CNT0_s_CNT3_D_addsub0000(14),
      O => clk_gen_CNT0_s_CNT3_D_mux0004_0_9_712
    );
  clk_gen_CNT0_s_CNT3_D_mux0004_13_20 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => clk_gen_CNT0_N4,
      I1 => clk_gen_CNT0_s_REG(2),
      I2 => clk_gen_CNT0_N7,
      I3 => clk_gen_CNT0_s_CNT3_D_addsub0000(1),
      O => clk_gen_CNT0_s_CNT3_D_mux0004_13_20_722
    );
  clk_gen_CNT0_s_CNT3_D_mux0004_14_12 : LUT4
    generic map(
      INIT => X"E040"
    )
    port map (
      I0 => clk_gen_CNT0_s_CNT3_D_cmp_eq0000,
      I1 => clk_gen_CNT0_s_CNT3_D_addsub0000(0),
      I2 => clk_gen_CNT0_s_mode_830,
      I3 => clk_gen_CNT0_s_CNT3_2(1),
      O => clk_gen_CNT0_s_CNT3_D_mux0004_14_12_723
    );
  clk_gen_CNT0_s_CNT3_D_mux0004_14_59 : LUT4
    generic map(
      INIT => X"EAE2"
    )
    port map (
      I0 => clk_gen_CNT0_s_REG(0),
      I1 => m_reset_b_IBUF_961,
      I2 => clk_gen_CNT0_s_CNT3_D_mux0004_14_40,
      I3 => clk_gen_CNT0_s_CNT3_D_mux0004_14_12_723,
      O => clk_gen_CNT0_s_CNT3_D_mux0004_14_59_726
    );
  clk_gen_CNT0_s_CNT3_D_mux0004_14_68 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => clk_gen_CNT0_N4,
      I1 => clk_gen_CNT0_s_REG(1),
      O => clk_gen_CNT0_s_CNT3_D_mux0004_14_68_727
    );
  addr_decode_m_mode_addr_0_81 : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => s_address(8),
      I1 => s_address(3),
      I2 => s_address(0),
      I3 => s_address(1),
      O => addr_decode_m_mode_addr_0_81_104
    );
  addr_decode_m_mode_addr_0_83 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => addr_decode_m_mode_addr_0_81_104,
      I1 => addr_decode_m_mode_addr_0_6,
      I2 => addr_decode_m_mode_addr_0_52,
      O => s_mode_addr(0)
    );
  addr_decode_m_mode_addr_1_11 : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => s_address(0),
      I1 => s_address(1),
      I2 => s_address(2),
      I3 => s_address(4),
      O => addr_decode_m_mode_addr_1_11_105
    );
  addr_decode_m_mode_addr_1_57 : LUT4
    generic map(
      INIT => X"8006"
    )
    port map (
      I0 => s_address(4),
      I1 => s_address(5),
      I2 => s_address(1),
      I3 => s_address(2),
      O => addr_decode_m_mode_addr_1_57_107
    );
  sig_controller_t_ps_FSM_FFd20_In18 : LUT4
    generic map(
      INIT => X"22F2"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd20_1739,
      I1 => s_cmd_data_1010,
      I2 => sig_controller_t_ps_FSM_FFd10_1718,
      I3 => s_wen_1043,
      O => sig_controller_t_ps_FSM_FFd20_In18_1740
    );
  sig_controller_t_ps_FSM_FFd20_In32 : LUT4
    generic map(
      INIT => X"FFF8"
    )
    port map (
      I0 => sig_controller_s_comp1,
      I1 => sig_controller_t_ps_FSM_FFd6_1750,
      I2 => sig_controller_t_ps_FSM_FFd20_In6,
      I3 => sig_controller_t_ps_FSM_FFd20_In18_1740,
      O => sig_controller_t_ps_FSM_FFd20_In32_1741
    );
  clk_gen_CNT0_s_CNT3_U_mux0000_2_122 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => clk_gen_CNT0_s_mode_830,
      I1 => clk_gen_CNT0_s_CNT3_D_cmp_eq0000,
      I2 => clk_gen_CNT0_s_CNT3_UD_cmp_eq0000,
      O => clk_gen_CNT0_N15
    );
  clk_gen_CNT0_s_CNT3_U_mux0000_10_111 : LUT3
    generic map(
      INIT => X"C4"
    )
    port map (
      I0 => clk_gen_CNT0_s_CNT3_UD_cmp_eq0000,
      I1 => clk_gen_CNT0_s_mode_830,
      I2 => clk_gen_CNT0_s_REG(0),
      O => clk_gen_CNT0_N01
    );
  clk_gen_CNT0_s_CNT3_D_mux0004_7_110 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => clk_gen_CNT0_s_mode_830,
      I1 => clk_gen_CNT0_s_CNT3_UD_cmp_eq0000,
      I2 => clk_gen_CNT0_s_REG(0),
      O => clk_gen_CNT0_N16
    );
  clk_gen_CNT0_s_CNT3_U_mux0000_9_14 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => clk_gen_CNT0_N4,
      I1 => clk_gen_CNT0_s_REG(9),
      I2 => clk_gen_CNT0_N6,
      I3 => clk_gen_CNT0_s_CNT3_U_share0000(8),
      O => clk_gen_CNT0_s_CNT3_U_mux0000_9_14_796
    );
  clk_gen_CNT0_s_CNT3_U_mux0000_7_14 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => clk_gen_CNT0_N4,
      I1 => clk_gen_CNT0_s_REG(7),
      I2 => clk_gen_CNT0_N6,
      I3 => clk_gen_CNT0_s_CNT3_U_share0000(6),
      O => clk_gen_CNT0_s_CNT3_U_mux0000_7_14_793
    );
  clk_gen_CNT0_s_CNT3_U_mux0000_6_14 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => clk_gen_CNT0_N4,
      I1 => clk_gen_CNT0_s_REG(6),
      I2 => clk_gen_CNT0_N6,
      I3 => clk_gen_CNT0_s_CNT3_U_share0000(5),
      O => clk_gen_CNT0_s_CNT3_U_mux0000_6_14_791
    );
  clk_gen_CNT0_s_CNT3_U_mux0000_5_14 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => clk_gen_CNT0_N4,
      I1 => clk_gen_CNT0_s_REG(5),
      I2 => clk_gen_CNT0_N6,
      I3 => clk_gen_CNT0_s_CNT3_U_share0000(4),
      O => clk_gen_CNT0_s_CNT3_U_mux0000_5_14_789
    );
  clk_gen_CNT0_s_CNT3_U_mux0000_4_14 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => clk_gen_CNT0_N4,
      I1 => clk_gen_CNT0_s_REG(4),
      I2 => clk_gen_CNT0_N6,
      I3 => clk_gen_CNT0_s_CNT3_U_share0000(3),
      O => clk_gen_CNT0_s_CNT3_U_mux0000_4_14_787
    );
  clk_gen_CNT0_s_CNT3_U_mux0000_3_14 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => clk_gen_CNT0_N4,
      I1 => clk_gen_CNT0_s_REG(3),
      I2 => clk_gen_CNT0_N6,
      I3 => clk_gen_CNT0_s_CNT3_U_share0000(2),
      O => clk_gen_CNT0_s_CNT3_U_mux0000_3_14_785
    );
  clk_gen_CNT0_s_CNT3_U_mux0000_1_14 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => clk_gen_CNT0_N4,
      I1 => clk_gen_CNT0_s_REG(1),
      I2 => clk_gen_CNT0_N6,
      I3 => clk_gen_CNT0_s_CNT3_U_share0000(0),
      O => clk_gen_CNT0_s_CNT3_U_mux0000_1_14_781
    );
  clk_gen_CNT0_s_CNT3_U_mux0000_15_14 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => clk_gen_CNT0_N4,
      I1 => clk_gen_CNT0_s_REG(15),
      I2 => clk_gen_CNT0_N6,
      I3 => clk_gen_CNT0_s_CNT3_U_share0000(14),
      O => clk_gen_CNT0_s_CNT3_U_mux0000_15_14_779
    );
  clk_gen_CNT0_s_CNT3_U_mux0000_14_14 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => clk_gen_CNT0_N4,
      I1 => clk_gen_CNT0_s_REG(14),
      I2 => clk_gen_CNT0_N6,
      I3 => clk_gen_CNT0_s_CNT3_U_share0000(13),
      O => clk_gen_CNT0_s_CNT3_U_mux0000_14_14_777
    );
  clk_gen_CNT0_s_CNT3_U_mux0000_13_14 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => clk_gen_CNT0_N4,
      I1 => clk_gen_CNT0_s_REG(13),
      I2 => clk_gen_CNT0_N6,
      I3 => clk_gen_CNT0_s_CNT3_U_share0000(12),
      O => clk_gen_CNT0_s_CNT3_U_mux0000_13_14_775
    );
  clk_gen_CNT0_s_CNT3_U_mux0000_12_14 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => clk_gen_CNT0_N4,
      I1 => clk_gen_CNT0_s_REG(12),
      I2 => clk_gen_CNT0_N6,
      I3 => clk_gen_CNT0_s_CNT3_U_share0000(11),
      O => clk_gen_CNT0_s_CNT3_U_mux0000_12_14_773
    );
  clk_gen_CNT0_s_CNT3_U_mux0000_11_14 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => clk_gen_CNT0_N4,
      I1 => clk_gen_CNT0_s_REG(11),
      I2 => clk_gen_CNT0_N6,
      I3 => clk_gen_CNT0_s_CNT3_U_share0000(10),
      O => clk_gen_CNT0_s_CNT3_U_mux0000_11_14_771
    );
  clk_gen_CNT0_s_CNT3_U_mux0000_10_14 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => clk_gen_CNT0_N4,
      I1 => clk_gen_CNT0_s_REG(10),
      I2 => clk_gen_CNT0_N6,
      I3 => clk_gen_CNT0_s_CNT3_U_share0000(9),
      O => clk_gen_CNT0_s_CNT3_U_mux0000_10_14_769
    );
  clk_gen_CNT0_s_CNT3_UD_cmp_eq000012 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => clk_gen_CNT0_s_CNT3_U(1),
      I1 => clk_gen_CNT0_s_CNT3_U(14),
      I2 => clk_gen_CNT0_s_CNT3_U(2),
      I3 => clk_gen_CNT0_s_CNT3_U(3),
      O => clk_gen_CNT0_s_CNT3_UD_cmp_eq000012_748
    );
  clk_gen_CNT0_s_CNT3_UD_cmp_eq000025 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => clk_gen_CNT0_s_CNT3_U(4),
      I1 => clk_gen_CNT0_s_CNT3_U(5),
      I2 => clk_gen_CNT0_s_CNT3_U(6),
      I3 => clk_gen_CNT0_s_CNT3_U(7),
      O => clk_gen_CNT0_s_CNT3_UD_cmp_eq000025_749
    );
  clk_gen_CNT0_s_CNT3_UD_cmp_eq000049 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => clk_gen_CNT0_s_CNT3_U(8),
      I1 => clk_gen_CNT0_s_CNT3_U(9),
      I2 => clk_gen_CNT0_s_CNT3_U(10),
      I3 => clk_gen_CNT0_s_CNT3_U(11),
      O => clk_gen_CNT0_s_CNT3_UD_cmp_eq000049_750
    );
  clk_gen_CNT0_s_CNT3_UD_cmp_eq000058 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => clk_gen_CNT0_s_CNT3_U(12),
      I1 => clk_gen_CNT0_s_CNT3_U(13),
      I2 => clk_gen_CNT0_s_CNT3_U(0),
      O => clk_gen_CNT0_s_CNT3_UD_cmp_eq000058_751
    );
  clk_gen_CNT0_s_CNT3_UD_cmp_eq000071 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => clk_gen_CNT0_s_CNT3_UD_cmp_eq000012_748,
      I1 => clk_gen_CNT0_s_CNT3_UD_cmp_eq000025_749,
      I2 => clk_gen_CNT0_s_CNT3_UD_cmp_eq000049_750,
      I3 => clk_gen_CNT0_s_CNT3_UD_cmp_eq000058_751,
      O => clk_gen_CNT0_s_CNT3_UD_cmp_eq0000
    );
  clk_gen_CNT0_s_CNT3_D_cmp_eq00007 : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => clk_gen_CNT0_s_CNT3_D(14),
      I1 => clk_gen_CNT0_s_CNT3_D(0),
      I2 => clk_gen_CNT0_s_CNT3_D(6),
      O => clk_gen_CNT0_s_CNT3_D_cmp_eq00007_710
    );
  clk_gen_CNT0_s_CNT3_D_cmp_eq000020 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => clk_gen_CNT0_s_CNT3_D(3),
      I1 => clk_gen_CNT0_s_CNT3_D(4),
      I2 => clk_gen_CNT0_s_CNT3_D(5),
      I3 => clk_gen_CNT0_s_CNT3_D(1),
      O => clk_gen_CNT0_s_CNT3_D_cmp_eq000020_707
    );
  clk_gen_CNT0_s_CNT3_D_cmp_eq000043 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => clk_gen_CNT0_s_CNT3_D(7),
      I1 => clk_gen_CNT0_s_CNT3_D(8),
      I2 => clk_gen_CNT0_s_CNT3_D(9),
      I3 => clk_gen_CNT0_s_CNT3_D(10),
      O => clk_gen_CNT0_s_CNT3_D_cmp_eq000043_708
    );
  clk_gen_CNT0_s_CNT3_D_cmp_eq000056 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => clk_gen_CNT0_s_CNT3_D(11),
      I1 => clk_gen_CNT0_s_CNT3_D(12),
      I2 => clk_gen_CNT0_s_CNT3_D(13),
      I3 => clk_gen_CNT0_s_CNT3_D(2),
      O => clk_gen_CNT0_s_CNT3_D_cmp_eq000056_709
    );
  clk_gen_CNT0_s_CNT3_D_cmp_eq000070 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => clk_gen_CNT0_s_CNT3_D_cmp_eq00007_710,
      I1 => clk_gen_CNT0_s_CNT3_D_cmp_eq000020_707,
      I2 => clk_gen_CNT0_s_CNT3_D_cmp_eq000043_708,
      I3 => clk_gen_CNT0_s_CNT3_D_cmp_eq000056_709,
      O => clk_gen_CNT0_s_CNT3_D_cmp_eq0000
    );
  ram1_mux_dout_1_LogicTrst_SW0 : LUT4
    generic map(
      INIT => X"F8A8"
    )
    port map (
      I0 => sig_controller_m_ram1_mux_sel(1),
      I1 => inlatch_dout(1),
      I2 => sig_controller_m_ram1_mux_sel(0),
      I3 => s_doutb0(1),
      O => N95
    );
  ram1_mux_dout_1_LogicTrst_SW1 : LUT4
    generic map(
      INIT => X"FBD9"
    )
    port map (
      I0 => sig_controller_m_ram1_mux_sel(0),
      I1 => sig_controller_m_ram1_mux_sel(1),
      I2 => inlatch_dout(1),
      I3 => s_doutb0(1),
      O => N96
    );
  ram1_mux_dout_1_LogicTrst : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => N96,
      I1 => N95,
      I2 => Averager_out(1),
      O => ram1_mux_dout(1)
    );
  avg_module_cns7_m_remainder_1_1 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => avg_module_s_reminder6(0),
      I1 => avg_module_cns7_m_remainder_addsub0000(1),
      I2 => Averager_out(1),
      O => avg_module_s_reminder7(1)
    );
  avg_module_cns6_m_remainder_1_1 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => avg_module_s_reminder5(0),
      I1 => avg_module_cns6_m_remainder_addsub0000(1),
      I2 => Averager_out(2),
      O => avg_module_s_reminder6(1)
    );
  avg_module_cns5_m_remainder_1_1 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => avg_module_s_reminder4(0),
      I1 => avg_module_cns5_m_remainder_addsub0000(1),
      I2 => Averager_out(3),
      O => avg_module_s_reminder5(1)
    );
  avg_module_cns4_m_remainder_1_1 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => avg_module_s_reminder3(0),
      I1 => avg_module_cns4_m_remainder_addsub0000(1),
      I2 => Averager_out(4),
      O => avg_module_s_reminder4(1)
    );
  avg_module_cns3_m_remainder_1_1 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => avg_module_s_reminder2(0),
      I1 => avg_module_cns3_m_remainder_addsub0000(1),
      I2 => Averager_out(5),
      O => avg_module_s_reminder3(1)
    );
  avg_module_cns2_m_remainder_1_1 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => avg_module_s_reminder1(0),
      I1 => avg_module_cns2_m_remainder_addsub0000(1),
      I2 => Averager_out(6),
      O => avg_module_s_reminder2(1)
    );
  avg_module_cns7_m_remainder_0_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => avg_module_cns7_m_remainder_addsub0000(0),
      I1 => Averager_out(1),
      O => avg_module_s_reminder7(0)
    );
  avg_module_cns6_m_remainder_0_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => avg_module_cns6_m_remainder_addsub0000(0),
      I1 => Averager_out(2),
      O => avg_module_s_reminder6(0)
    );
  avg_module_cns5_m_remainder_0_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => avg_module_cns5_m_remainder_addsub0000(0),
      I1 => Averager_out(3),
      O => avg_module_s_reminder5(0)
    );
  avg_module_cns3_m_remainder_0_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => avg_module_cns3_m_remainder_addsub0000(0),
      I1 => Averager_out(5),
      O => avg_module_s_reminder3(0)
    );
  avg_module_cns2_m_remainder_0_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => avg_module_cns2_m_remainder_addsub0000(0),
      I1 => Averager_out(6),
      O => avg_module_s_reminder2(0)
    );
  avg_module_cns1_m_remainder_6_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => Averager_out(7),
      I1 => avg_module_cns1_m_remainder_addsub0000(6),
      O => avg_module_s_reminder1(6)
    );
  avg_module_cns1_m_remainder_5_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => Averager_out(7),
      I1 => avg_module_cns1_m_remainder_addsub0000(5),
      O => avg_module_s_reminder1(5)
    );
  avg_module_cns1_m_remainder_4_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => Averager_out(7),
      I1 => avg_module_cns1_m_remainder_addsub0000(4),
      O => avg_module_s_reminder1(4)
    );
  avg_module_cns1_m_remainder_3_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => avg_module_cns1_m_remainder_addsub0000(3),
      I1 => Averager_out(7),
      O => avg_module_s_reminder1(3)
    );
  avg_module_cns1_m_remainder_0_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => avg_module_cns1_m_remainder_addsub0000(0),
      I1 => Averager_out(7),
      O => avg_module_s_reminder1(0)
    );
  avg_module_cns7_m_remainder_5_1 : LUT3
    generic map(
      INIT => X"E2"
    )
    port map (
      I0 => avg_module_s_reminder6(4),
      I1 => Averager_out(1),
      I2 => avg_module_cns7_m_remainder_addsub0000(5),
      O => avg_module_s_reminder7(5)
    );
  avg_module_cns7_m_remainder_4_1 : LUT3
    generic map(
      INIT => X"E2"
    )
    port map (
      I0 => avg_module_s_reminder6(3),
      I1 => Averager_out(1),
      I2 => avg_module_cns7_m_remainder_addsub0000(4),
      O => avg_module_s_reminder7(4)
    );
  avg_module_cns7_m_remainder_3_1 : LUT3
    generic map(
      INIT => X"E2"
    )
    port map (
      I0 => avg_module_s_reminder6(2),
      I1 => Averager_out(1),
      I2 => avg_module_cns7_m_remainder_addsub0000(3),
      O => avg_module_s_reminder7(3)
    );
  avg_module_cns7_m_remainder_2_1 : LUT3
    generic map(
      INIT => X"E2"
    )
    port map (
      I0 => avg_module_s_reminder6(1),
      I1 => Averager_out(1),
      I2 => avg_module_cns7_m_remainder_addsub0000(2),
      O => avg_module_s_reminder7(2)
    );
  avg_module_cns6_m_remainder_6_1 : LUT3
    generic map(
      INIT => X"E2"
    )
    port map (
      I0 => avg_module_s_reminder5(5),
      I1 => Averager_out(2),
      I2 => avg_module_cns6_m_remainder_addsub0000(6),
      O => avg_module_s_reminder6(6)
    );
  avg_module_cns6_m_remainder_5_1 : LUT3
    generic map(
      INIT => X"E2"
    )
    port map (
      I0 => avg_module_s_reminder5(4),
      I1 => Averager_out(2),
      I2 => avg_module_cns6_m_remainder_addsub0000(5),
      O => avg_module_s_reminder6(5)
    );
  avg_module_cns6_m_remainder_3_1 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => avg_module_s_reminder5(2),
      I1 => avg_module_cns6_m_remainder_addsub0000(3),
      I2 => Averager_out(2),
      O => avg_module_s_reminder6(3)
    );
  avg_module_cns6_m_remainder_2_1 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => avg_module_s_reminder5(1),
      I1 => avg_module_cns6_m_remainder_addsub0000(2),
      I2 => Averager_out(2),
      O => avg_module_s_reminder6(2)
    );
  avg_module_cns5_m_remainder_6_1 : LUT3
    generic map(
      INIT => X"E2"
    )
    port map (
      I0 => avg_module_s_reminder4(5),
      I1 => Averager_out(3),
      I2 => avg_module_cns5_m_remainder_addsub0000(6),
      O => avg_module_s_reminder5(6)
    );
  avg_module_cns5_m_remainder_5_1 : LUT3
    generic map(
      INIT => X"E2"
    )
    port map (
      I0 => avg_module_s_reminder4(4),
      I1 => Averager_out(3),
      I2 => avg_module_cns5_m_remainder_addsub0000(5),
      O => avg_module_s_reminder5(5)
    );
  avg_module_cns5_m_remainder_4_1 : LUT3
    generic map(
      INIT => X"E2"
    )
    port map (
      I0 => avg_module_s_reminder4(3),
      I1 => Averager_out(3),
      I2 => avg_module_cns5_m_remainder_addsub0000(4),
      O => avg_module_s_reminder5(4)
    );
  avg_module_cns5_m_remainder_3_1 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => avg_module_s_reminder4(2),
      I1 => avg_module_cns5_m_remainder_addsub0000(3),
      I2 => Averager_out(3),
      O => avg_module_s_reminder5(3)
    );
  avg_module_cns4_m_remainder_6_1 : LUT3
    generic map(
      INIT => X"E2"
    )
    port map (
      I0 => avg_module_s_reminder3(5),
      I1 => Averager_out(4),
      I2 => avg_module_cns4_m_remainder_addsub0000(6),
      O => avg_module_s_reminder4(6)
    );
  avg_module_cns4_m_remainder_5_1 : LUT3
    generic map(
      INIT => X"E2"
    )
    port map (
      I0 => avg_module_s_reminder3(4),
      I1 => Averager_out(4),
      I2 => avg_module_cns4_m_remainder_addsub0000(5),
      O => avg_module_s_reminder4(5)
    );
  avg_module_cns4_m_remainder_4_1 : LUT3
    generic map(
      INIT => X"E2"
    )
    port map (
      I0 => avg_module_s_reminder3(3),
      I1 => Averager_out(4),
      I2 => avg_module_cns4_m_remainder_addsub0000(4),
      O => avg_module_s_reminder4(4)
    );
  avg_module_cns4_m_remainder_3_1 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => avg_module_s_reminder3(2),
      I1 => avg_module_cns4_m_remainder_addsub0000(3),
      I2 => Averager_out(4),
      O => avg_module_s_reminder4(3)
    );
  avg_module_cns4_m_remainder_2_1 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => avg_module_s_reminder3(1),
      I1 => avg_module_cns4_m_remainder_addsub0000(2),
      I2 => Averager_out(4),
      O => avg_module_s_reminder4(2)
    );
  avg_module_cns3_m_remainder_4_1 : LUT3
    generic map(
      INIT => X"E2"
    )
    port map (
      I0 => avg_module_s_reminder2(3),
      I1 => Averager_out(5),
      I2 => avg_module_cns3_m_remainder_addsub0000(4),
      O => avg_module_s_reminder3(4)
    );
  avg_module_cns3_m_remainder_3_1 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => avg_module_s_reminder2(2),
      I1 => avg_module_cns3_m_remainder_addsub0000(3),
      I2 => Averager_out(5),
      O => avg_module_s_reminder3(3)
    );
  avg_module_cns3_m_remainder_2_1 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => avg_module_s_reminder2(1),
      I1 => avg_module_cns3_m_remainder_addsub0000(2),
      I2 => Averager_out(5),
      O => avg_module_s_reminder3(2)
    );
  avg_module_cns2_m_remainder_6_1 : LUT3
    generic map(
      INIT => X"E2"
    )
    port map (
      I0 => avg_module_s_reminder1(5),
      I1 => Averager_out(6),
      I2 => avg_module_cns2_m_remainder_addsub0000(6),
      O => avg_module_s_reminder2(6)
    );
  avg_module_cns2_m_remainder_5_1 : LUT3
    generic map(
      INIT => X"E2"
    )
    port map (
      I0 => avg_module_s_reminder1(4),
      I1 => Averager_out(6),
      I2 => avg_module_cns2_m_remainder_addsub0000(5),
      O => avg_module_s_reminder2(5)
    );
  avg_module_cns2_m_remainder_2_1 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => avg_module_s_reminder1(1),
      I1 => avg_module_cns2_m_remainder_addsub0000(2),
      I2 => Averager_out(6),
      O => avg_module_s_reminder2(2)
    );
  avg_module_cns4_m_remainder_0_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => avg_module_cns4_m_remainder_addsub0000(0),
      I1 => Averager_out(4),
      O => avg_module_s_reminder4(0)
    );
  avg_module_cns1_m_remainder_2_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => avg_module_cns1_m_remainder_addsub0000(2),
      I1 => Averager_out(7),
      O => avg_module_s_reminder1(2)
    );
  avg_module_cns1_m_remainder_1_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => avg_module_cns1_m_remainder_addsub0000(1),
      I1 => Averager_out(7),
      O => avg_module_s_reminder1(1)
    );
  avg_module_cns7_m_remainder_6_1 : LUT3
    generic map(
      INIT => X"E2"
    )
    port map (
      I0 => avg_module_s_reminder6(5),
      I1 => Averager_out(1),
      I2 => avg_module_cns7_m_remainder_addsub0000(6),
      O => avg_module_s_reminder7(6)
    );
  avg_module_cns6_m_remainder_4_1 : LUT3
    generic map(
      INIT => X"E2"
    )
    port map (
      I0 => avg_module_s_reminder5(3),
      I1 => Averager_out(2),
      I2 => avg_module_cns6_m_remainder_addsub0000(4),
      O => avg_module_s_reminder6(4)
    );
  avg_module_cns5_m_remainder_2_1 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => avg_module_s_reminder4(1),
      I1 => avg_module_cns5_m_remainder_addsub0000(2),
      I2 => Averager_out(3),
      O => avg_module_s_reminder5(2)
    );
  avg_module_cns3_m_remainder_6_1 : LUT3
    generic map(
      INIT => X"E2"
    )
    port map (
      I0 => avg_module_s_reminder2(5),
      I1 => Averager_out(5),
      I2 => avg_module_cns3_m_remainder_addsub0000(6),
      O => avg_module_s_reminder3(6)
    );
  avg_module_cns3_m_remainder_5_1 : LUT3
    generic map(
      INIT => X"E2"
    )
    port map (
      I0 => avg_module_s_reminder2(4),
      I1 => Averager_out(5),
      I2 => avg_module_cns3_m_remainder_addsub0000(5),
      O => avg_module_s_reminder3(5)
    );
  avg_module_cns2_m_remainder_4_1 : LUT3
    generic map(
      INIT => X"E2"
    )
    port map (
      I0 => avg_module_s_reminder1(3),
      I1 => Averager_out(6),
      I2 => avg_module_cns2_m_remainder_addsub0000(4),
      O => avg_module_s_reminder2(4)
    );
  avg_module_cns2_m_remainder_3_1 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => avg_module_s_reminder1(2),
      I1 => avg_module_cns2_m_remainder_addsub0000(3),
      I2 => Averager_out(6),
      O => avg_module_s_reminder2(3)
    );
  ram1_mux_dout_0_LogicTrst_SW0 : LUT4
    generic map(
      INIT => X"F8A8"
    )
    port map (
      I0 => sig_controller_m_ram1_mux_sel(1),
      I1 => inlatch_dout(0),
      I2 => sig_controller_m_ram1_mux_sel(0),
      I3 => s_doutb0(0),
      O => N98
    );
  ram1_mux_dout_0_LogicTrst_SW1 : LUT4
    generic map(
      INIT => X"FBD9"
    )
    port map (
      I0 => sig_controller_m_ram1_mux_sel(0),
      I1 => sig_controller_m_ram1_mux_sel(1),
      I2 => inlatch_dout(0),
      I3 => s_doutb0(0),
      O => N99
    );
  ram1_mux_dout_0_LogicTrst : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => N99,
      I1 => N98,
      I2 => Averager_out(0),
      O => ram1_mux_dout(0)
    );
  m_cmd_data_IBUF : IBUF
    port map (
      I => m_cmd_data,
      O => m_cmd_data_IBUF_941
    );
  m_OE_b_IBUF : IBUF
    port map (
      I => m_OE_b,
      O => m_OE_b_IBUF_914
    );
  m_wen_IBUF : IBUF
    port map (
      I => m_wen,
      O => m_wen_IBUF_963
    );
  m_reset_b_IBUF : IBUF
    port map (
      I => m_reset_b,
      O => m_reset_b_IBUF_961
    );
  m_ren_IBUF : IBUF
    port map (
      I => m_ren,
      O => m_ren_IBUF_959
    );
  m_address_8_IBUF : IBUF
    port map (
      I => m_address(8),
      O => m_address_8_IBUF_938
    );
  m_address_7_IBUF : IBUF
    port map (
      I => m_address(7),
      O => m_address_7_IBUF_937
    );
  m_address_6_IBUF : IBUF
    port map (
      I => m_address(6),
      O => m_address_6_IBUF_936
    );
  m_address_5_IBUF : IBUF
    port map (
      I => m_address(5),
      O => m_address_5_IBUF_935
    );
  m_address_4_IBUF : IBUF
    port map (
      I => m_address(4),
      O => m_address_4_IBUF_934
    );
  m_address_3_IBUF : IBUF
    port map (
      I => m_address(3),
      O => m_address_3_IBUF_933
    );
  m_address_2_IBUF : IBUF
    port map (
      I => m_address(2),
      O => m_address_2_IBUF_932
    );
  m_address_1_IBUF : IBUF
    port map (
      I => m_address(1),
      O => m_address_1_IBUF_931
    );
  m_address_0_IBUF : IBUF
    port map (
      I => m_address(0),
      O => m_address_0_IBUF_930
    );
  m_ADC_data_7_IBUF : IBUF
    port map (
      I => m_ADC_data(7),
      O => m_ADC_data_7_IBUF_903
    );
  m_ADC_data_6_IBUF : IBUF
    port map (
      I => m_ADC_data(6),
      O => m_ADC_data_6_IBUF_902
    );
  m_ADC_data_5_IBUF : IBUF
    port map (
      I => m_ADC_data(5),
      O => m_ADC_data_5_IBUF_901
    );
  m_ADC_data_4_IBUF : IBUF
    port map (
      I => m_ADC_data(4),
      O => m_ADC_data_4_IBUF_900
    );
  m_ADC_data_3_IBUF : IBUF
    port map (
      I => m_ADC_data(3),
      O => m_ADC_data_3_IBUF_899
    );
  m_ADC_data_2_IBUF : IBUF
    port map (
      I => m_ADC_data(2),
      O => m_ADC_data_2_IBUF_898
    );
  m_ADC_data_1_IBUF : IBUF
    port map (
      I => m_ADC_data(1),
      O => m_ADC_data_1_IBUF_897
    );
  m_ADC_data_0_IBUF : IBUF
    port map (
      I => m_ADC_data(0),
      O => m_ADC_data_0_IBUF_896
    );
  m_data_7_IOBUF : IOBUF
    port map (
      I => outlatch_dout(7),
      T => s_dout_en_inv,
      O => N101,
      IO => m_data(7)
    );
  m_data_6_IOBUF : IOBUF
    port map (
      I => outlatch_dout(6),
      T => s_dout_en_inv,
      O => N102,
      IO => m_data(6)
    );
  m_data_5_IOBUF : IOBUF
    port map (
      I => outlatch_dout(5),
      T => s_dout_en_inv,
      O => N103,
      IO => m_data(5)
    );
  m_data_4_IOBUF : IOBUF
    port map (
      I => outlatch_dout(4),
      T => s_dout_en_inv,
      O => N104,
      IO => m_data(4)
    );
  m_data_3_IOBUF : IOBUF
    port map (
      I => outlatch_dout(3),
      T => s_dout_en_inv,
      O => N105,
      IO => m_data(3)
    );
  m_data_2_IOBUF : IOBUF
    port map (
      I => outlatch_dout(2),
      T => s_dout_en_inv,
      O => N106,
      IO => m_data(2)
    );
  m_data_1_IOBUF : IOBUF
    port map (
      I => outlatch_dout(1),
      T => s_dout_en_inv,
      O => N107,
      IO => m_data(1)
    );
  m_data_0_IOBUF : IOBUF
    port map (
      I => outlatch_dout(0),
      T => s_dout_en_inv,
      O => N108,
      IO => m_data(0)
    );
  m_AD9283_clk_OBUF : OBUF
    port map (
      I => m_TP_1_OBUF1,
      O => m_AD9283_clk
    );
  m_DAC_clk_OBUF : OBUF
    port map (
      I => m_TP_1_OBUF1,
      O => m_DAC_clk
    );
  m_DAC_data_7_OBUF : OBUF
    port map (
      I => da_latch_dout(7),
      O => m_DAC_data(7)
    );
  m_DAC_data_6_OBUF : OBUF
    port map (
      I => da_latch_dout(6),
      O => m_DAC_data(6)
    );
  m_DAC_data_5_OBUF : OBUF
    port map (
      I => da_latch_dout(5),
      O => m_DAC_data(5)
    );
  m_DAC_data_4_OBUF : OBUF
    port map (
      I => da_latch_dout(4),
      O => m_DAC_data(4)
    );
  m_DAC_data_3_OBUF : OBUF
    port map (
      I => da_latch_dout(3),
      O => m_DAC_data(3)
    );
  m_DAC_data_2_OBUF : OBUF
    port map (
      I => da_latch_dout(2),
      O => m_DAC_data(2)
    );
  m_DAC_data_1_OBUF : OBUF
    port map (
      I => da_latch_dout(1),
      O => m_DAC_data(1)
    );
  m_DAC_data_0_OBUF : OBUF
    port map (
      I => da_latch_dout(0),
      O => m_DAC_data(0)
    );
  m_TP_1_OBUF : OBUF
    port map (
      I => m_TP_1_OBUF1,
      O => m_TP(1)
    );
  m_TP_0_OBUF : OBUF
    port map (
      I => m_TP_0_OBUF1,
      O => m_TP(0)
    );
  m_led_7_OBUF : OBUF
    port map (
      I => avg_module_Maccum_s_data_cy(0),
      O => m_led(7)
    );
  m_led_6_OBUF : OBUF
    port map (
      I => avg_module_Maccum_s_data_cy(0),
      O => m_led(6)
    );
  m_led_5_OBUF : OBUF
    port map (
      I => avg_module_Maccum_s_data_cy(0),
      O => m_led(5)
    );
  m_led_4_OBUF : OBUF
    port map (
      I => avg_module_Maccum_s_data_cy(0),
      O => m_led(4)
    );
  m_led_3_OBUF : OBUF
    port map (
      I => avg_module_Maccum_s_data_cy(0),
      O => m_led(3)
    );
  m_led_2_OBUF : OBUF
    port map (
      I => avg_module_Maccum_s_data_cy(0),
      O => m_led(2)
    );
  m_led_1_OBUF : OBUF
    port map (
      I => avg_module_Maccum_s_data_cy(0),
      O => m_led(1)
    );
  m_led_0_OBUF : OBUF
    port map (
      I => avg_module_Maccum_s_data_cy(0),
      O => m_led(0)
    );
  clk_gen_CNT0_s_CNT3_D_0 : FDS_1
    port map (
      C => m_TP_0_OBUF_917,
      D => clk_gen_CNT0_s_CNT3_D_mux0004_14_68_727,
      S => clk_gen_CNT0_s_CNT3_D_mux0004_14_59_726,
      Q => clk_gen_CNT0_s_CNT3_D(0)
    );
  clk_gen_CNT0_s_CNT3_D_1 : FDS_1
    port map (
      C => m_TP_0_OBUF_917,
      D => clk_gen_CNT0_s_CNT3_D_mux0004_13_20_722,
      S => clk_gen_CNT0_s_CNT3_D_mux0004_13_11_719,
      Q => clk_gen_CNT0_s_CNT3_D(1)
    );
  clk_gen_CNT0_s_CNT3_D_2 : FDS_1
    port map (
      C => m_TP_0_OBUF_917,
      D => clk_gen_CNT0_s_CNT3_D_mux0004_12_9_718,
      S => clk_gen_CNT0_s_CNT3_D_mux0004_12_4_717,
      Q => clk_gen_CNT0_s_CNT3_D(2)
    );
  clk_gen_CNT0_s_CNT3_D_3 : FDS_1
    port map (
      C => m_TP_0_OBUF_917,
      D => clk_gen_CNT0_s_CNT3_D_mux0004_11_9_716,
      S => clk_gen_CNT0_s_CNT3_D_mux0004_11_4_715,
      Q => clk_gen_CNT0_s_CNT3_D(3)
    );
  clk_gen_CNT0_s_CNT3_D_4 : FDS_1
    port map (
      C => m_TP_0_OBUF_917,
      D => clk_gen_CNT0_s_CNT3_D_mux0004_10_9_714,
      S => clk_gen_CNT0_s_CNT3_D_mux0004_10_4_713,
      Q => clk_gen_CNT0_s_CNT3_D(4)
    );
  clk_gen_CNT0_s_CNT3_D_5 : FDS_1
    port map (
      C => m_TP_0_OBUF_917,
      D => clk_gen_CNT0_s_CNT3_D_mux0004_9_9_745,
      S => clk_gen_CNT0_s_CNT3_D_mux0004_9_4_744,
      Q => clk_gen_CNT0_s_CNT3_D(5)
    );
  clk_gen_CNT0_s_CNT3_D_6 : FDS_1
    port map (
      C => m_TP_0_OBUF_917,
      D => clk_gen_CNT0_s_CNT3_D_mux0004_8_9_743,
      S => clk_gen_CNT0_s_CNT3_D_mux0004_8_4_742,
      Q => clk_gen_CNT0_s_CNT3_D(6)
    );
  clk_gen_CNT0_s_CNT3_D_7 : FDS_1
    port map (
      C => m_TP_0_OBUF_917,
      D => clk_gen_CNT0_s_CNT3_D_mux0004_7_17_740,
      S => clk_gen_CNT0_s_CNT3_D_mux0004_7_9_741,
      Q => clk_gen_CNT0_s_CNT3_D(7)
    );
  clk_gen_CNT0_s_CNT3_D_8 : FDS_1
    port map (
      C => m_TP_0_OBUF_917,
      D => clk_gen_CNT0_s_CNT3_D_mux0004_6_9_739,
      S => clk_gen_CNT0_s_CNT3_D_mux0004_6_4_738,
      Q => clk_gen_CNT0_s_CNT3_D(8)
    );
  clk_gen_CNT0_s_CNT3_D_9 : FDS_1
    port map (
      C => m_TP_0_OBUF_917,
      D => clk_gen_CNT0_s_CNT3_D_mux0004_5_9_737,
      S => clk_gen_CNT0_s_CNT3_D_mux0004_5_4_736,
      Q => clk_gen_CNT0_s_CNT3_D(9)
    );
  clk_gen_CNT0_s_CNT3_D_10 : FDS_1
    port map (
      C => m_TP_0_OBUF_917,
      D => clk_gen_CNT0_s_CNT3_D_mux0004_4_9_735,
      S => clk_gen_CNT0_s_CNT3_D_mux0004_4_4_734,
      Q => clk_gen_CNT0_s_CNT3_D(10)
    );
  clk_gen_CNT0_s_CNT3_D_11 : FDS_1
    port map (
      C => m_TP_0_OBUF_917,
      D => clk_gen_CNT0_s_CNT3_D_mux0004_3_9_733,
      S => clk_gen_CNT0_s_CNT3_D_mux0004_3_4_732,
      Q => clk_gen_CNT0_s_CNT3_D(11)
    );
  clk_gen_CNT0_s_CNT3_D_12 : FDS_1
    port map (
      C => m_TP_0_OBUF_917,
      D => clk_gen_CNT0_s_CNT3_D_mux0004_2_9_731,
      S => clk_gen_CNT0_s_CNT3_D_mux0004_2_4_730,
      Q => clk_gen_CNT0_s_CNT3_D(12)
    );
  clk_gen_CNT0_s_CNT3_D_13 : FDS_1
    port map (
      C => m_TP_0_OBUF_917,
      D => clk_gen_CNT0_s_CNT3_D_mux0004_1_9_729,
      S => clk_gen_CNT0_s_CNT3_D_mux0004_1_4_728,
      Q => clk_gen_CNT0_s_CNT3_D(13)
    );
  clk_gen_CNT0_s_CNT3_D_14 : FDS_1
    port map (
      C => m_TP_0_OBUF_917,
      D => clk_gen_CNT0_s_CNT3_D_mux0004_0_9_712,
      S => clk_gen_CNT0_s_CNT3_D_mux0004_0_4_711,
      Q => clk_gen_CNT0_s_CNT3_D(14)
    );
  clk_gen_CNT0_s_CNT3_U_0 : FDS_1
    port map (
      C => m_TP_0_OBUF_917,
      D => clk_gen_CNT0_s_CNT3_U_mux0000_1_114,
      S => clk_gen_CNT0_s_CNT3_U_mux0000_1_14_781,
      Q => clk_gen_CNT0_s_CNT3_U(0)
    );
  clk_gen_CNT0_s_CNT3_U_1 : FDS_1
    port map (
      C => m_TP_0_OBUF_917,
      D => clk_gen_CNT0_s_CNT3_U_mux0000_2_120,
      S => clk_gen_CNT0_s_CNT3_U_mux0000_2_14_783,
      Q => clk_gen_CNT0_s_CNT3_U(1)
    );
  clk_gen_CNT0_s_CNT3_U_2 : FDS_1
    port map (
      C => m_TP_0_OBUF_917,
      D => clk_gen_CNT0_s_CNT3_U_mux0000_3_114,
      S => clk_gen_CNT0_s_CNT3_U_mux0000_3_14_785,
      Q => clk_gen_CNT0_s_CNT3_U(2)
    );
  clk_gen_CNT0_s_CNT3_U_3 : FDS_1
    port map (
      C => m_TP_0_OBUF_917,
      D => clk_gen_CNT0_s_CNT3_U_mux0000_4_114,
      S => clk_gen_CNT0_s_CNT3_U_mux0000_4_14_787,
      Q => clk_gen_CNT0_s_CNT3_U(3)
    );
  clk_gen_CNT0_s_CNT3_U_4 : FDS_1
    port map (
      C => m_TP_0_OBUF_917,
      D => clk_gen_CNT0_s_CNT3_U_mux0000_5_114,
      S => clk_gen_CNT0_s_CNT3_U_mux0000_5_14_789,
      Q => clk_gen_CNT0_s_CNT3_U(4)
    );
  clk_gen_CNT0_s_CNT3_U_5 : FDS_1
    port map (
      C => m_TP_0_OBUF_917,
      D => clk_gen_CNT0_s_CNT3_U_mux0000_6_114,
      S => clk_gen_CNT0_s_CNT3_U_mux0000_6_14_791,
      Q => clk_gen_CNT0_s_CNT3_U(5)
    );
  clk_gen_CNT0_s_CNT3_U_6 : FDS_1
    port map (
      C => m_TP_0_OBUF_917,
      D => clk_gen_CNT0_s_CNT3_U_mux0000_7_114,
      S => clk_gen_CNT0_s_CNT3_U_mux0000_7_14_793,
      Q => clk_gen_CNT0_s_CNT3_U(6)
    );
  clk_gen_CNT0_s_CNT3_U_7 : FDS_1
    port map (
      C => m_TP_0_OBUF_917,
      D => clk_gen_CNT0_s_CNT3_U_mux0000_8_11_794,
      S => clk_gen_CNT0_N18,
      Q => clk_gen_CNT0_s_CNT3_U(7)
    );
  clk_gen_CNT0_s_CNT3_U_mux0000_8_11 : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => N78,
      I1 => clk_gen_CNT0_N2,
      I2 => clk_gen_CNT0_s_CNT3_U(7),
      O => clk_gen_CNT0_s_CNT3_U_mux0000_8_11_794
    );
  clk_gen_CNT0_s_CNT3_U_8 : FDS_1
    port map (
      C => m_TP_0_OBUF_917,
      D => clk_gen_CNT0_s_CNT3_U_mux0000_9_114,
      S => clk_gen_CNT0_s_CNT3_U_mux0000_9_14_796,
      Q => clk_gen_CNT0_s_CNT3_U(8)
    );
  clk_gen_CNT0_s_CNT3_U_9 : FDS_1
    port map (
      C => m_TP_0_OBUF_917,
      D => clk_gen_CNT0_s_CNT3_U_mux0000_10_114,
      S => clk_gen_CNT0_s_CNT3_U_mux0000_10_14_769,
      Q => clk_gen_CNT0_s_CNT3_U(9)
    );
  clk_gen_CNT0_s_CNT3_U_10 : FDS_1
    port map (
      C => m_TP_0_OBUF_917,
      D => clk_gen_CNT0_s_CNT3_U_mux0000_11_114,
      S => clk_gen_CNT0_s_CNT3_U_mux0000_11_14_771,
      Q => clk_gen_CNT0_s_CNT3_U(10)
    );
  clk_gen_CNT0_s_CNT3_U_11 : FDS_1
    port map (
      C => m_TP_0_OBUF_917,
      D => clk_gen_CNT0_s_CNT3_U_mux0000_12_114,
      S => clk_gen_CNT0_s_CNT3_U_mux0000_12_14_773,
      Q => clk_gen_CNT0_s_CNT3_U(11)
    );
  clk_gen_CNT0_s_CNT3_U_12 : FDS_1
    port map (
      C => m_TP_0_OBUF_917,
      D => clk_gen_CNT0_s_CNT3_U_mux0000_13_114,
      S => clk_gen_CNT0_s_CNT3_U_mux0000_13_14_775,
      Q => clk_gen_CNT0_s_CNT3_U(12)
    );
  clk_gen_CNT0_s_CNT3_U_13 : FDS_1
    port map (
      C => m_TP_0_OBUF_917,
      D => clk_gen_CNT0_s_CNT3_U_mux0000_14_114,
      S => clk_gen_CNT0_s_CNT3_U_mux0000_14_14_777,
      Q => clk_gen_CNT0_s_CNT3_U(13)
    );
  clk_gen_CNT0_s_CNT3_U_14 : FDS_1
    port map (
      C => m_TP_0_OBUF_917,
      D => clk_gen_CNT0_s_CNT3_U_mux0000_15_114,
      S => clk_gen_CNT0_s_CNT3_U_mux0000_15_14_779,
      Q => clk_gen_CNT0_s_CNT3_U(14)
    );
  sig_controller_dac_ctr_s_ps_FSM_FFd1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_0_OBUF_917,
      D => sig_controller_dac_ctr_s_ps_FSM_FFd2_1257,
      R => sig_controller_s_dac_stop_1672,
      Q => sig_controller_dac_ctr_s_ps_FSM_FFd1_1256
    );
  sig_controller_t_ps_FSM_FFd20 : FDS
    generic map(
      INIT => '1'
    )
    port map (
      C => m_TP_0_OBUF_917,
      D => sig_controller_t_ps_FSM_FFd20_In58,
      S => sig_controller_t_ps_FSM_FFd20_In32_1741,
      Q => sig_controller_t_ps_FSM_FFd20_1739
    );
  sig_controller_t_ps_FSM_FFd16 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_0_OBUF_917,
      D => sig_controller_t_ps_FSM_FFd16_In1,
      R => s_mode_addr(2),
      Q => sig_controller_t_ps_FSM_FFd16_1730
    );
  sig_controller_t_ps_FSM_FFd16_In11 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => s_mode_addr(1),
      I1 => sig_controller_t_ps_FSM_FFd19_1736,
      I2 => s_mode_addr(0),
      O => sig_controller_t_ps_FSM_FFd16_In1
    );
  sig_controller_t_ps_FSM_FFd15 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_0_OBUF_917,
      D => sig_controller_t_ps_FSM_FFd15_In1,
      R => s_mode_addr(0),
      Q => sig_controller_t_ps_FSM_FFd15_1728
    );
  sig_controller_t_ps_FSM_FFd15_In11 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd19_1736,
      I1 => s_mode_addr(2),
      I2 => s_mode_addr(1),
      O => sig_controller_t_ps_FSM_FFd15_In1
    );
  sig_controller_t_ps_FSM_FFd12 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_0_OBUF_917,
      D => sig_controller_t_ps_FSM_FFd12_In1_1723,
      R => s_mode_addr(1),
      Q => sig_controller_t_ps_FSM_FFd12_1722
    );
  sig_controller_t_ps_FSM_FFd13 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_0_OBUF_917,
      D => sig_controller_t_ps_FSM_FFd13_In1,
      R => s_mode_addr(0),
      Q => sig_controller_t_ps_FSM_FFd13_1724
    );
  sig_controller_t_ps_FSM_FFd13_In11 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => s_mode_addr(1),
      I1 => sig_controller_t_ps_FSM_FFd19_1736,
      I2 => s_mode_addr(2),
      O => sig_controller_t_ps_FSM_FFd13_In1
    );
  sig_controller_t_ps_FSM_FFd10 : FDS
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_0_OBUF_917,
      D => sig_controller_t_ps_FSM_FFd10_In1,
      S => sig_controller_t_ps_FSM_FFd11_1720,
      Q => sig_controller_t_ps_FSM_FFd10_1718
    );
  sig_controller_t_ps_FSM_FFd10_In11 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => s_wen_1043,
      I1 => sig_controller_t_ps_FSM_FFd10_1718,
      O => sig_controller_t_ps_FSM_FFd10_In1
    );
  sig_controller_t_ps_FSM_FFd8 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_0_OBUF_917,
      D => sig_controller_t_ps_FSM_FFd9_1753,
      R => s_ren_1042,
      Q => sig_controller_t_ps_FSM_FFd8_1752
    );
  clk_gen_state_FSM_FFd2 : FDRS
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_0_OBUF_917,
      D => clk_gen_state_FSM_FFd2_In1,
      R => b_reset_b,
      S => clk_gen_state_FSM_FFd3_866,
      Q => clk_gen_state_FSM_FFd2_864
    );
  clk_gen_state_FSM_FFd2_In11 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => clk_gen_state_FSM_FFd2_864,
      I1 => m_wen_IBUF_963,
      I2 => b_pcs_addr,
      O => clk_gen_state_FSM_FFd2_In1
    );
  sig_controller_t_ps_FSM_FFd6 : FDSE
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_s_comp1,
      D => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_t_ps_FSM_FFd7_1751,
      Q => sig_controller_t_ps_FSM_FFd6_1750
    );
  sig_controller_t_ps_FSM_FFd4 : FDSE
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_s_comp2,
      D => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_t_ps_FSM_FFd5_1749,
      Q => sig_controller_t_ps_FSM_FFd4_1748
    );
  sig_controller_t_ps_FSM_FFd1 : FDSE
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_s_comp0,
      D => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_t_ps_FSM_FFd2_1738,
      Q => sig_controller_t_ps_FSM_FFd1_1717
    );
  clk_gen_CNT0_Msub_s_CNT3_U_share0000_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_gen_CNT0_s_CNT3_U(0),
      O => clk_gen_CNT0_Msub_s_CNT3_U_share0000_cy_0_rt_566
    );
  clk_gen_CNT0_Madd_s_CNT3_1_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_gen_CNT0_s_REG(1),
      O => clk_gen_CNT0_Madd_s_CNT3_1_cy_1_rt_439
    );
  clk_gen_CNT0_Madd_s_CNT3_1_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_gen_CNT0_s_REG(2),
      O => clk_gen_CNT0_Madd_s_CNT3_1_cy_2_rt_441
    );
  clk_gen_CNT0_Madd_s_CNT3_1_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_gen_CNT0_s_REG(3),
      O => clk_gen_CNT0_Madd_s_CNT3_1_cy_3_rt_443
    );
  clk_gen_CNT0_Madd_s_CNT3_1_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_gen_CNT0_s_REG(4),
      O => clk_gen_CNT0_Madd_s_CNT3_1_cy_4_rt_445
    );
  clk_gen_CNT0_Madd_s_CNT3_1_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_gen_CNT0_s_REG(5),
      O => clk_gen_CNT0_Madd_s_CNT3_1_cy_5_rt_447
    );
  clk_gen_CNT0_Madd_s_CNT3_1_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_gen_CNT0_s_REG(6),
      O => clk_gen_CNT0_Madd_s_CNT3_1_cy_6_rt_449
    );
  clk_gen_CNT0_Madd_s_CNT3_1_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_gen_CNT0_s_REG(7),
      O => clk_gen_CNT0_Madd_s_CNT3_1_cy_7_rt_451
    );
  clk_gen_CNT0_Madd_s_CNT3_1_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_gen_CNT0_s_REG(8),
      O => clk_gen_CNT0_Madd_s_CNT3_1_cy_8_rt_453
    );
  clk_gen_CNT0_Madd_s_CNT3_1_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_gen_CNT0_s_REG(9),
      O => clk_gen_CNT0_Madd_s_CNT3_1_cy_9_rt_455
    );
  clk_gen_CNT0_Madd_s_CNT3_1_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_gen_CNT0_s_REG(10),
      O => clk_gen_CNT0_Madd_s_CNT3_1_cy_10_rt_429
    );
  clk_gen_CNT0_Madd_s_CNT3_1_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_gen_CNT0_s_REG(11),
      O => clk_gen_CNT0_Madd_s_CNT3_1_cy_11_rt_431
    );
  clk_gen_CNT0_Madd_s_CNT3_1_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_gen_CNT0_s_REG(12),
      O => clk_gen_CNT0_Madd_s_CNT3_1_cy_12_rt_433
    );
  clk_gen_CNT0_Madd_s_CNT3_1_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_gen_CNT0_s_REG(13),
      O => clk_gen_CNT0_Madd_s_CNT3_1_cy_13_rt_435
    );
  clk_gen_CNT0_Madd_s_CNT3_1_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_gen_CNT0_s_REG(14),
      O => clk_gen_CNT0_Madd_s_CNT3_1_cy_14_rt_437
    );
  clk_gen_CNT0_Msub_s_CNT3_2_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_gen_CNT0_s_REG(0),
      O => clk_gen_CNT0_Msub_s_CNT3_2_cy_0_rt_506
    );
  clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_gen_CNT0_s_CNT3_D(0),
      O => clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_cy_0_rt_537
    );
  clk_gen_CNT0_Mcount_s_CNT2_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_gen_CNT0_s_CNT2(0),
      O => clk_gen_CNT0_Mcount_s_CNT2_cy_0_rt_459
    );
  sig_controller_dac_ctr_Mcount_s_cnt_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_dac_ctr_s_cnt(1),
      O => sig_controller_dac_ctr_Mcount_s_cnt_cy_1_rt_1208
    );
  sig_controller_dac_ctr_Mcount_s_cnt_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_dac_ctr_s_cnt(2),
      O => sig_controller_dac_ctr_Mcount_s_cnt_cy_2_rt_1210
    );
  sig_controller_dac_ctr_Mcount_s_cnt_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_dac_ctr_s_cnt(3),
      O => sig_controller_dac_ctr_Mcount_s_cnt_cy_3_rt_1212
    );
  sig_controller_dac_ctr_Mcount_s_cnt_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_dac_ctr_s_cnt(4),
      O => sig_controller_dac_ctr_Mcount_s_cnt_cy_4_rt_1214
    );
  sig_controller_dac_ctr_Mcount_s_cnt_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_dac_ctr_s_cnt(5),
      O => sig_controller_dac_ctr_Mcount_s_cnt_cy_5_rt_1216
    );
  sig_controller_dac_ctr_Mcount_s_cnt_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_dac_ctr_s_cnt(6),
      O => sig_controller_dac_ctr_Mcount_s_cnt_cy_6_rt_1218
    );
  sig_controller_dac_ctr_Mcount_s_cnt_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_dac_ctr_s_cnt(7),
      O => sig_controller_dac_ctr_Mcount_s_cnt_cy_7_rt_1220
    );
  sig_controller_dac_ctr_Mcount_s_cnt_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_dac_ctr_s_cnt(8),
      O => sig_controller_dac_ctr_Mcount_s_cnt_cy_8_rt_1222
    );
  sig_controller_dac_ctr_Mcount_s_cnt_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_dac_ctr_s_cnt(9),
      O => sig_controller_dac_ctr_Mcount_s_cnt_cy_9_rt_1224
    );
  sig_controller_rem0ctr_Mcount_s_Cnt_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Cnt(1),
      O => sig_controller_rem0ctr_Mcount_s_Cnt_cy_1_rt_1446
    );
  sig_controller_rem0ctr_Mcount_s_Cnt_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Cnt(2),
      O => sig_controller_rem0ctr_Mcount_s_Cnt_cy_2_rt_1448
    );
  sig_controller_rem0ctr_Mcount_s_Cnt_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Cnt(3),
      O => sig_controller_rem0ctr_Mcount_s_Cnt_cy_3_rt_1450
    );
  sig_controller_rem0ctr_Mcount_s_Cnt_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Cnt(4),
      O => sig_controller_rem0ctr_Mcount_s_Cnt_cy_4_rt_1452
    );
  sig_controller_rem0ctr_Mcount_s_Cnt_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Cnt(5),
      O => sig_controller_rem0ctr_Mcount_s_Cnt_cy_5_rt_1454
    );
  sig_controller_rem0ctr_Mcount_s_Cnt_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Cnt(6),
      O => sig_controller_rem0ctr_Mcount_s_Cnt_cy_6_rt_1456
    );
  sig_controller_rem0ctr_Mcount_s_Cnt_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Cnt(7),
      O => sig_controller_rem0ctr_Mcount_s_Cnt_cy_7_rt_1458
    );
  sig_controller_rem0ctr_Mcount_s_Cnt_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Cnt(8),
      O => sig_controller_rem0ctr_Mcount_s_Cnt_cy_8_rt_1460
    );
  sig_controller_rem0ctr_Mcount_s_Cnt_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Cnt(9),
      O => sig_controller_rem0ctr_Mcount_s_Cnt_cy_9_rt_1462
    );
  sig_controller_rem1ctr_Mcount_s_Cnt_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_rem1ctr_s_Cnt(1),
      O => sig_controller_rem1ctr_Mcount_s_Cnt_cy_1_rt_1563
    );
  sig_controller_rem1ctr_Mcount_s_Cnt_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_rem1ctr_s_Cnt(2),
      O => sig_controller_rem1ctr_Mcount_s_Cnt_cy_2_rt_1565
    );
  sig_controller_rem1ctr_Mcount_s_Cnt_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_rem1ctr_s_Cnt(3),
      O => sig_controller_rem1ctr_Mcount_s_Cnt_cy_3_rt_1567
    );
  sig_controller_rem1ctr_Mcount_s_Cnt_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_rem1ctr_s_Cnt(4),
      O => sig_controller_rem1ctr_Mcount_s_Cnt_cy_4_rt_1569
    );
  sig_controller_rem1ctr_Mcount_s_Cnt_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_rem1ctr_s_Cnt(5),
      O => sig_controller_rem1ctr_Mcount_s_Cnt_cy_5_rt_1571
    );
  sig_controller_rem1ctr_Mcount_s_Cnt_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_rem1ctr_s_Cnt(6),
      O => sig_controller_rem1ctr_Mcount_s_Cnt_cy_6_rt_1573
    );
  sig_controller_rem1ctr_Mcount_s_Cnt_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_rem1ctr_s_Cnt(7),
      O => sig_controller_rem1ctr_Mcount_s_Cnt_cy_7_rt_1575
    );
  sig_controller_rem1ctr_Mcount_s_Cnt_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_rem1ctr_s_Cnt(8),
      O => sig_controller_rem1ctr_Mcount_s_Cnt_cy_8_rt_1577
    );
  sig_controller_rem1ctr_Mcount_s_Cnt_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_rem1ctr_s_Cnt(9),
      O => sig_controller_rem1ctr_Mcount_s_Cnt_cy_9_rt_1579
    );
  sig_controller_daremctr_Mcount_s_Cnt_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_daremctr_s_Cnt(1),
      O => sig_controller_daremctr_Mcount_s_Cnt_cy_1_rt_1305
    );
  sig_controller_daremctr_Mcount_s_Cnt_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_daremctr_s_Cnt(2),
      O => sig_controller_daremctr_Mcount_s_Cnt_cy_2_rt_1307
    );
  sig_controller_daremctr_Mcount_s_Cnt_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_daremctr_s_Cnt(3),
      O => sig_controller_daremctr_Mcount_s_Cnt_cy_3_rt_1309
    );
  sig_controller_daremctr_Mcount_s_Cnt_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_daremctr_s_Cnt(4),
      O => sig_controller_daremctr_Mcount_s_Cnt_cy_4_rt_1311
    );
  sig_controller_daremctr_Mcount_s_Cnt_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_daremctr_s_Cnt(5),
      O => sig_controller_daremctr_Mcount_s_Cnt_cy_5_rt_1313
    );
  sig_controller_daremctr_Mcount_s_Cnt_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_daremctr_s_Cnt(6),
      O => sig_controller_daremctr_Mcount_s_Cnt_cy_6_rt_1315
    );
  sig_controller_daremctr_Mcount_s_Cnt_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_daremctr_s_Cnt(7),
      O => sig_controller_daremctr_Mcount_s_Cnt_cy_7_rt_1317
    );
  sig_controller_daremctr_Mcount_s_Cnt_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_daremctr_s_Cnt(8),
      O => sig_controller_daremctr_Mcount_s_Cnt_cy_8_rt_1319
    );
  sig_controller_daremctr_Mcount_s_Cnt_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_daremctr_s_Cnt(9),
      O => sig_controller_daremctr_Mcount_s_Cnt_cy_9_rt_1321
    );
  sig_controller_adremctr_Mcount_s_Cnt_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_adremctr_s_Cnt(1),
      O => sig_controller_adremctr_Mcount_s_Cnt_cy_1_rt_1102
    );
  sig_controller_adremctr_Mcount_s_Cnt_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_adremctr_s_Cnt(2),
      O => sig_controller_adremctr_Mcount_s_Cnt_cy_2_rt_1104
    );
  sig_controller_adremctr_Mcount_s_Cnt_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_adremctr_s_Cnt(3),
      O => sig_controller_adremctr_Mcount_s_Cnt_cy_3_rt_1106
    );
  sig_controller_adremctr_Mcount_s_Cnt_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_adremctr_s_Cnt(4),
      O => sig_controller_adremctr_Mcount_s_Cnt_cy_4_rt_1108
    );
  sig_controller_adremctr_Mcount_s_Cnt_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_adremctr_s_Cnt(5),
      O => sig_controller_adremctr_Mcount_s_Cnt_cy_5_rt_1110
    );
  sig_controller_adremctr_Mcount_s_Cnt_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_adremctr_s_Cnt(6),
      O => sig_controller_adremctr_Mcount_s_Cnt_cy_6_rt_1112
    );
  sig_controller_adremctr_Mcount_s_Cnt_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_adremctr_s_Cnt(7),
      O => sig_controller_adremctr_Mcount_s_Cnt_cy_7_rt_1114
    );
  sig_controller_adremctr_Mcount_s_Cnt_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_adremctr_s_Cnt(8),
      O => sig_controller_adremctr_Mcount_s_Cnt_cy_8_rt_1116
    );
  sig_controller_adremctr_Mcount_s_Cnt_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_adremctr_s_Cnt(9),
      O => sig_controller_adremctr_Mcount_s_Cnt_cy_9_rt_1118
    );
  sig_controller_adc_ctr_Mcount_s_cnt_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_adc_ctr_s_cnt(9),
      O => sig_controller_adc_ctr_Mcount_s_cnt_cy_9_rt_1083
    );
  sig_controller_adc_ctr_Mcount_s_cnt_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_adc_ctr_s_cnt(8),
      O => sig_controller_adc_ctr_Mcount_s_cnt_cy_8_rt_1081
    );
  sig_controller_adc_ctr_Mcount_s_cnt_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_adc_ctr_s_cnt(7),
      O => sig_controller_adc_ctr_Mcount_s_cnt_cy_7_rt_1079
    );
  sig_controller_adc_ctr_Mcount_s_cnt_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_adc_ctr_s_cnt(6),
      O => sig_controller_adc_ctr_Mcount_s_cnt_cy_6_rt_1077
    );
  sig_controller_adc_ctr_Mcount_s_cnt_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_adc_ctr_s_cnt(5),
      O => sig_controller_adc_ctr_Mcount_s_cnt_cy_5_rt_1075
    );
  sig_controller_adc_ctr_Mcount_s_cnt_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_adc_ctr_s_cnt(4),
      O => sig_controller_adc_ctr_Mcount_s_cnt_cy_4_rt_1073
    );
  sig_controller_adc_ctr_Mcount_s_cnt_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_adc_ctr_s_cnt(3),
      O => sig_controller_adc_ctr_Mcount_s_cnt_cy_3_rt_1071
    );
  sig_controller_adc_ctr_Mcount_s_cnt_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_adc_ctr_s_cnt(2),
      O => sig_controller_adc_ctr_Mcount_s_cnt_cy_2_rt_1069
    );
  sig_controller_adc_ctr_Mcount_s_cnt_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_adc_ctr_s_cnt(1),
      O => sig_controller_adc_ctr_Mcount_s_cnt_cy_1_rt_1067
    );
  clk_gen_CNT0_Madd_s_CNT3_1_xor_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_gen_CNT0_s_REG(15),
      O => clk_gen_CNT0_Madd_s_CNT3_1_xor_15_rt_457
    );
  sig_controller_dac_ctr_Mcount_s_cnt_xor_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_dac_ctr_s_cnt(10),
      O => sig_controller_dac_ctr_Mcount_s_cnt_xor_10_rt_1226
    );
  sig_controller_rem0ctr_Mcount_s_Cnt_xor_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Cnt(10),
      O => sig_controller_rem0ctr_Mcount_s_Cnt_xor_10_rt_1464
    );
  sig_controller_rem1ctr_Mcount_s_Cnt_xor_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_rem1ctr_s_Cnt(10),
      O => sig_controller_rem1ctr_Mcount_s_Cnt_xor_10_rt_1581
    );
  sig_controller_daremctr_Mcount_s_Cnt_xor_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_daremctr_s_Cnt(10),
      O => sig_controller_daremctr_Mcount_s_Cnt_xor_10_rt_1323
    );
  sig_controller_adc_ctr_Mcount_s_cnt_xor_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_adc_ctr_s_cnt(10),
      O => sig_controller_adc_ctr_Mcount_s_cnt_xor_10_rt_1085
    );
  avg_module_cns2_Mcompar_m_remainder_cmp_ge0000_lut_2_Q : LUT3
    generic map(
      INIT => X"95"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(2),
      I1 => avg_module_cns1_m_remainder_addsub0000(1),
      I2 => Averager_out(7),
      O => avg_module_cns2_Mcompar_m_remainder_cmp_ge0000_lut(2)
    );
  avg_module_cns2_Mcompar_m_remainder_cmp_ge0000_lut_3_Q : LUT3
    generic map(
      INIT => X"95"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(3),
      I1 => avg_module_cns1_m_remainder_addsub0000(2),
      I2 => Averager_out(7),
      O => avg_module_cns2_Mcompar_m_remainder_cmp_ge0000_lut(3)
    );
  avg_module_cns2_Mcompar_m_remainder_cmp_ge0000_lut_4_Q : LUT3
    generic map(
      INIT => X"95"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(4),
      I1 => avg_module_cns1_m_remainder_addsub0000(3),
      I2 => Averager_out(7),
      O => avg_module_cns2_Mcompar_m_remainder_cmp_ge0000_lut(4)
    );
  avg_module_cns2_Mcompar_m_remainder_cmp_ge0000_lut_5_Q : LUT3
    generic map(
      INIT => X"95"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(5),
      I1 => Averager_out(7),
      I2 => avg_module_cns1_m_remainder_addsub0000(4),
      O => avg_module_cns2_Mcompar_m_remainder_cmp_ge0000_lut(5)
    );
  avg_module_cns2_Mcompar_m_remainder_cmp_ge0000_lut_1_Q : LUT3
    generic map(
      INIT => X"95"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(1),
      I1 => avg_module_cns1_m_remainder_addsub0000(0),
      I2 => Averager_out(7),
      O => avg_module_cns2_Mcompar_m_remainder_cmp_ge0000_lut(1)
    );
  avg_module_cns2_Msub_m_remainder_addsub0000_lut_2_Q : LUT3
    generic map(
      INIT => X"95"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(2),
      I1 => avg_module_cns1_m_remainder_addsub0000(1),
      I2 => Averager_out(7),
      O => avg_module_cns2_Msub_m_remainder_addsub0000_lut(2)
    );
  avg_module_cns2_Msub_m_remainder_addsub0000_lut_3_Q : LUT3
    generic map(
      INIT => X"95"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(3),
      I1 => avg_module_cns1_m_remainder_addsub0000(2),
      I2 => Averager_out(7),
      O => avg_module_cns2_Msub_m_remainder_addsub0000_lut(3)
    );
  avg_module_cns2_Msub_m_remainder_addsub0000_lut_4_Q : LUT3
    generic map(
      INIT => X"95"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(4),
      I1 => avg_module_cns1_m_remainder_addsub0000(3),
      I2 => Averager_out(7),
      O => avg_module_cns2_Msub_m_remainder_addsub0000_lut(4)
    );
  avg_module_cns2_Msub_m_remainder_addsub0000_lut_5_Q : LUT3
    generic map(
      INIT => X"95"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(5),
      I1 => Averager_out(7),
      I2 => avg_module_cns1_m_remainder_addsub0000(4),
      O => avg_module_cns2_Msub_m_remainder_addsub0000_lut(5)
    );
  avg_module_cns2_Msub_m_remainder_addsub0000_lut_1_Q : LUT3
    generic map(
      INIT => X"95"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(1),
      I1 => avg_module_cns1_m_remainder_addsub0000(0),
      I2 => Averager_out(7),
      O => avg_module_cns2_Msub_m_remainder_addsub0000_lut(1)
    );
  avg_module_cns3_Mcompar_m_remainder_cmp_ge0000_lut_1_Q : LUT3
    generic map(
      INIT => X"95"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(1),
      I1 => avg_module_cns2_m_remainder_addsub0000(0),
      I2 => Averager_out(6),
      O => avg_module_cns3_Mcompar_m_remainder_cmp_ge0000_lut(1)
    );
  avg_module_cns3_Msub_m_remainder_addsub0000_lut_1_Q : LUT3
    generic map(
      INIT => X"95"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(1),
      I1 => avg_module_cns2_m_remainder_addsub0000(0),
      I2 => Averager_out(6),
      O => avg_module_cns3_Msub_m_remainder_addsub0000_lut(1)
    );
  avg_module_cns4_Mcompar_m_remainder_cmp_ge0000_lut_1_Q : LUT3
    generic map(
      INIT => X"95"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(1),
      I1 => avg_module_cns3_m_remainder_addsub0000(0),
      I2 => Averager_out(5),
      O => avg_module_cns4_Mcompar_m_remainder_cmp_ge0000_lut(1)
    );
  avg_module_cns4_Msub_m_remainder_addsub0000_lut_1_Q : LUT3
    generic map(
      INIT => X"95"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(1),
      I1 => avg_module_cns3_m_remainder_addsub0000(0),
      I2 => Averager_out(5),
      O => avg_module_cns4_Msub_m_remainder_addsub0000_lut(1)
    );
  avg_module_cns5_Mcompar_m_remainder_cmp_ge0000_lut_1_Q : LUT3
    generic map(
      INIT => X"95"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(1),
      I1 => avg_module_cns4_m_remainder_addsub0000(0),
      I2 => Averager_out(4),
      O => avg_module_cns5_Mcompar_m_remainder_cmp_ge0000_lut(1)
    );
  avg_module_cns5_Msub_m_remainder_addsub0000_lut_1_Q : LUT3
    generic map(
      INIT => X"95"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(1),
      I1 => avg_module_cns4_m_remainder_addsub0000(0),
      I2 => Averager_out(4),
      O => avg_module_cns5_Msub_m_remainder_addsub0000_lut(1)
    );
  avg_module_cns6_Mcompar_m_remainder_cmp_ge0000_lut_1_Q : LUT3
    generic map(
      INIT => X"95"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(1),
      I1 => avg_module_cns5_m_remainder_addsub0000(0),
      I2 => Averager_out(3),
      O => avg_module_cns6_Mcompar_m_remainder_cmp_ge0000_lut(1)
    );
  avg_module_cns6_Msub_m_remainder_addsub0000_lut_1_Q : LUT3
    generic map(
      INIT => X"95"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(1),
      I1 => avg_module_cns5_m_remainder_addsub0000(0),
      I2 => Averager_out(3),
      O => avg_module_cns6_Msub_m_remainder_addsub0000_lut(1)
    );
  avg_module_cns7_Mcompar_m_remainder_cmp_ge0000_lut_1_Q : LUT3
    generic map(
      INIT => X"95"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(1),
      I1 => avg_module_cns6_m_remainder_addsub0000(0),
      I2 => Averager_out(2),
      O => avg_module_cns7_Mcompar_m_remainder_cmp_ge0000_lut(1)
    );
  avg_module_cns7_Msub_m_remainder_addsub0000_lut_1_Q : LUT3
    generic map(
      INIT => X"95"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(1),
      I1 => avg_module_cns6_m_remainder_addsub0000(0),
      I2 => Averager_out(2),
      O => avg_module_cns7_Msub_m_remainder_addsub0000_lut(1)
    );
  avg_module_cns8_Mcompar_m_remainder_cmp_ge0000_lut_1_Q : LUT3
    generic map(
      INIT => X"95"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(1),
      I1 => avg_module_cns7_m_remainder_addsub0000(0),
      I2 => Averager_out(1),
      O => avg_module_cns8_Mcompar_m_remainder_cmp_ge0000_lut(1)
    );
  avg_module_cns2_Mcompar_m_remainder_cmp_ge0000_lut_6_Q : LUT3
    generic map(
      INIT => X"95"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(6),
      I1 => Averager_out(7),
      I2 => avg_module_cns1_m_remainder_addsub0000(5),
      O => avg_module_cns2_Mcompar_m_remainder_cmp_ge0000_lut(6)
    );
  avg_module_cns2_Msub_m_remainder_addsub0000_lut_6_Q : LUT3
    generic map(
      INIT => X"95"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(6),
      I1 => Averager_out(7),
      I2 => avg_module_cns1_m_remainder_addsub0000(5),
      O => avg_module_cns2_Msub_m_remainder_addsub0000_lut(6)
    );
  avg_module_cns2_Mcompar_m_remainder_cmp_ge0000_lut_7_Q : LUT3
    generic map(
      INIT => X"95"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(7),
      I1 => Averager_out(7),
      I2 => avg_module_cns1_m_remainder_addsub0000(6),
      O => avg_module_cns2_Mcompar_m_remainder_cmp_ge0000_lut(7)
    );
  avg_module_cns3_Mcompar_m_remainder_cmp_ge0000_lut_3_Q : LUT4
    generic map(
      INIT => X"A599"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(3),
      I1 => avg_module_s_reminder1(1),
      I2 => avg_module_cns2_m_remainder_addsub0000(2),
      I3 => Averager_out(6),
      O => avg_module_cns3_Mcompar_m_remainder_cmp_ge0000_lut(3)
    );
  avg_module_cns3_Mcompar_m_remainder_cmp_ge0000_lut_4_Q : LUT4
    generic map(
      INIT => X"A599"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(4),
      I1 => avg_module_s_reminder1(2),
      I2 => avg_module_cns2_m_remainder_addsub0000(3),
      I3 => Averager_out(6),
      O => avg_module_cns3_Mcompar_m_remainder_cmp_ge0000_lut(4)
    );
  avg_module_cns3_Mcompar_m_remainder_cmp_ge0000_lut_5_Q : LUT4
    generic map(
      INIT => X"A959"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(5),
      I1 => avg_module_s_reminder1(3),
      I2 => Averager_out(6),
      I3 => avg_module_cns2_m_remainder_addsub0000(4),
      O => avg_module_cns3_Mcompar_m_remainder_cmp_ge0000_lut(5)
    );
  avg_module_cns3_Mcompar_m_remainder_cmp_ge0000_lut_6_Q : LUT4
    generic map(
      INIT => X"A959"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(6),
      I1 => avg_module_s_reminder1(4),
      I2 => Averager_out(6),
      I3 => avg_module_cns2_m_remainder_addsub0000(5),
      O => avg_module_cns3_Mcompar_m_remainder_cmp_ge0000_lut(6)
    );
  avg_module_cns3_Mcompar_m_remainder_cmp_ge0000_lut_7_Q : LUT4
    generic map(
      INIT => X"A959"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(7),
      I1 => avg_module_s_reminder1(5),
      I2 => Averager_out(6),
      I3 => avg_module_cns2_m_remainder_addsub0000(6),
      O => avg_module_cns3_Mcompar_m_remainder_cmp_ge0000_lut(7)
    );
  avg_module_cns3_Mcompar_m_remainder_cmp_ge0000_lut_2_Q : LUT4
    generic map(
      INIT => X"A599"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(2),
      I1 => avg_module_s_reminder1(0),
      I2 => avg_module_cns2_m_remainder_addsub0000(1),
      I3 => Averager_out(6),
      O => avg_module_cns3_Mcompar_m_remainder_cmp_ge0000_lut(2)
    );
  avg_module_cns4_Mcompar_m_remainder_cmp_ge0000_lut_3_Q : LUT4
    generic map(
      INIT => X"A599"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(3),
      I1 => avg_module_s_reminder2(1),
      I2 => avg_module_cns3_m_remainder_addsub0000(2),
      I3 => Averager_out(5),
      O => avg_module_cns4_Mcompar_m_remainder_cmp_ge0000_lut(3)
    );
  avg_module_cns4_Mcompar_m_remainder_cmp_ge0000_lut_4_Q : LUT4
    generic map(
      INIT => X"A599"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(4),
      I1 => avg_module_s_reminder2(2),
      I2 => avg_module_cns3_m_remainder_addsub0000(3),
      I3 => Averager_out(5),
      O => avg_module_cns4_Mcompar_m_remainder_cmp_ge0000_lut(4)
    );
  avg_module_cns4_Mcompar_m_remainder_cmp_ge0000_lut_5_Q : LUT4
    generic map(
      INIT => X"A959"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(5),
      I1 => avg_module_s_reminder2(3),
      I2 => Averager_out(5),
      I3 => avg_module_cns3_m_remainder_addsub0000(4),
      O => avg_module_cns4_Mcompar_m_remainder_cmp_ge0000_lut(5)
    );
  avg_module_cns4_Mcompar_m_remainder_cmp_ge0000_lut_6_Q : LUT4
    generic map(
      INIT => X"A959"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(6),
      I1 => avg_module_s_reminder2(4),
      I2 => Averager_out(5),
      I3 => avg_module_cns3_m_remainder_addsub0000(5),
      O => avg_module_cns4_Mcompar_m_remainder_cmp_ge0000_lut(6)
    );
  avg_module_cns3_Msub_m_remainder_addsub0000_lut_3_Q : LUT4
    generic map(
      INIT => X"A599"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(3),
      I1 => avg_module_s_reminder1(1),
      I2 => avg_module_cns2_m_remainder_addsub0000(2),
      I3 => Averager_out(6),
      O => avg_module_cns3_Msub_m_remainder_addsub0000_lut(3)
    );
  avg_module_cns4_Mcompar_m_remainder_cmp_ge0000_lut_7_Q : LUT4
    generic map(
      INIT => X"A959"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(7),
      I1 => avg_module_s_reminder2(5),
      I2 => Averager_out(5),
      I3 => avg_module_cns3_m_remainder_addsub0000(6),
      O => avg_module_cns4_Mcompar_m_remainder_cmp_ge0000_lut(7)
    );
  avg_module_cns3_Msub_m_remainder_addsub0000_lut_4_Q : LUT4
    generic map(
      INIT => X"A599"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(4),
      I1 => avg_module_s_reminder1(2),
      I2 => avg_module_cns2_m_remainder_addsub0000(3),
      I3 => Averager_out(6),
      O => avg_module_cns3_Msub_m_remainder_addsub0000_lut(4)
    );
  avg_module_cns4_Mcompar_m_remainder_cmp_ge0000_lut_2_Q : LUT4
    generic map(
      INIT => X"A599"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(2),
      I1 => avg_module_s_reminder2(0),
      I2 => avg_module_cns3_m_remainder_addsub0000(1),
      I3 => Averager_out(5),
      O => avg_module_cns4_Mcompar_m_remainder_cmp_ge0000_lut(2)
    );
  avg_module_cns3_Msub_m_remainder_addsub0000_lut_5_Q : LUT4
    generic map(
      INIT => X"A959"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(5),
      I1 => avg_module_s_reminder1(3),
      I2 => Averager_out(6),
      I3 => avg_module_cns2_m_remainder_addsub0000(4),
      O => avg_module_cns3_Msub_m_remainder_addsub0000_lut(5)
    );
  avg_module_cns5_Mcompar_m_remainder_cmp_ge0000_lut_3_Q : LUT4
    generic map(
      INIT => X"A599"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(3),
      I1 => avg_module_s_reminder3(1),
      I2 => avg_module_cns4_m_remainder_addsub0000(2),
      I3 => Averager_out(4),
      O => avg_module_cns5_Mcompar_m_remainder_cmp_ge0000_lut(3)
    );
  avg_module_cns5_Mcompar_m_remainder_cmp_ge0000_lut_4_Q : LUT4
    generic map(
      INIT => X"A599"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(4),
      I1 => avg_module_s_reminder3(2),
      I2 => avg_module_cns4_m_remainder_addsub0000(3),
      I3 => Averager_out(4),
      O => avg_module_cns5_Mcompar_m_remainder_cmp_ge0000_lut(4)
    );
  avg_module_cns5_Mcompar_m_remainder_cmp_ge0000_lut_5_Q : LUT4
    generic map(
      INIT => X"A959"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(5),
      I1 => avg_module_s_reminder3(3),
      I2 => Averager_out(4),
      I3 => avg_module_cns4_m_remainder_addsub0000(4),
      O => avg_module_cns5_Mcompar_m_remainder_cmp_ge0000_lut(5)
    );
  avg_module_cns3_Msub_m_remainder_addsub0000_lut_2_Q : LUT4
    generic map(
      INIT => X"A599"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(2),
      I1 => avg_module_s_reminder1(0),
      I2 => avg_module_cns2_m_remainder_addsub0000(1),
      I3 => Averager_out(6),
      O => avg_module_cns3_Msub_m_remainder_addsub0000_lut(2)
    );
  avg_module_cns5_Mcompar_m_remainder_cmp_ge0000_lut_6_Q : LUT4
    generic map(
      INIT => X"A959"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(6),
      I1 => avg_module_s_reminder3(4),
      I2 => Averager_out(4),
      I3 => avg_module_cns4_m_remainder_addsub0000(5),
      O => avg_module_cns5_Mcompar_m_remainder_cmp_ge0000_lut(6)
    );
  avg_module_cns4_Msub_m_remainder_addsub0000_lut_3_Q : LUT4
    generic map(
      INIT => X"A599"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(3),
      I1 => avg_module_s_reminder2(1),
      I2 => avg_module_cns3_m_remainder_addsub0000(2),
      I3 => Averager_out(5),
      O => avg_module_cns4_Msub_m_remainder_addsub0000_lut(3)
    );
  avg_module_cns5_Mcompar_m_remainder_cmp_ge0000_lut_7_Q : LUT4
    generic map(
      INIT => X"A959"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(7),
      I1 => avg_module_s_reminder3(5),
      I2 => Averager_out(4),
      I3 => avg_module_cns4_m_remainder_addsub0000(6),
      O => avg_module_cns5_Mcompar_m_remainder_cmp_ge0000_lut(7)
    );
  avg_module_cns4_Msub_m_remainder_addsub0000_lut_4_Q : LUT4
    generic map(
      INIT => X"A599"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(4),
      I1 => avg_module_s_reminder2(2),
      I2 => avg_module_cns3_m_remainder_addsub0000(3),
      I3 => Averager_out(5),
      O => avg_module_cns4_Msub_m_remainder_addsub0000_lut(4)
    );
  avg_module_cns5_Mcompar_m_remainder_cmp_ge0000_lut_2_Q : LUT4
    generic map(
      INIT => X"A599"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(2),
      I1 => avg_module_s_reminder3(0),
      I2 => avg_module_cns4_m_remainder_addsub0000(1),
      I3 => Averager_out(4),
      O => avg_module_cns5_Mcompar_m_remainder_cmp_ge0000_lut(2)
    );
  avg_module_cns4_Msub_m_remainder_addsub0000_lut_5_Q : LUT4
    generic map(
      INIT => X"A959"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(5),
      I1 => avg_module_s_reminder2(3),
      I2 => Averager_out(5),
      I3 => avg_module_cns3_m_remainder_addsub0000(4),
      O => avg_module_cns4_Msub_m_remainder_addsub0000_lut(5)
    );
  avg_module_cns6_Mcompar_m_remainder_cmp_ge0000_lut_3_Q : LUT4
    generic map(
      INIT => X"A599"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(3),
      I1 => avg_module_s_reminder4(1),
      I2 => avg_module_cns5_m_remainder_addsub0000(2),
      I3 => Averager_out(3),
      O => avg_module_cns6_Mcompar_m_remainder_cmp_ge0000_lut(3)
    );
  avg_module_cns6_Mcompar_m_remainder_cmp_ge0000_lut_4_Q : LUT4
    generic map(
      INIT => X"A599"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(4),
      I1 => avg_module_s_reminder4(2),
      I2 => avg_module_cns5_m_remainder_addsub0000(3),
      I3 => Averager_out(3),
      O => avg_module_cns6_Mcompar_m_remainder_cmp_ge0000_lut(4)
    );
  avg_module_cns6_Mcompar_m_remainder_cmp_ge0000_lut_5_Q : LUT4
    generic map(
      INIT => X"A959"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(5),
      I1 => avg_module_s_reminder4(3),
      I2 => Averager_out(3),
      I3 => avg_module_cns5_m_remainder_addsub0000(4),
      O => avg_module_cns6_Mcompar_m_remainder_cmp_ge0000_lut(5)
    );
  avg_module_cns4_Msub_m_remainder_addsub0000_lut_2_Q : LUT4
    generic map(
      INIT => X"A599"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(2),
      I1 => avg_module_s_reminder2(0),
      I2 => avg_module_cns3_m_remainder_addsub0000(1),
      I3 => Averager_out(5),
      O => avg_module_cns4_Msub_m_remainder_addsub0000_lut(2)
    );
  avg_module_cns6_Mcompar_m_remainder_cmp_ge0000_lut_6_Q : LUT4
    generic map(
      INIT => X"A959"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(6),
      I1 => avg_module_s_reminder4(4),
      I2 => Averager_out(3),
      I3 => avg_module_cns5_m_remainder_addsub0000(5),
      O => avg_module_cns6_Mcompar_m_remainder_cmp_ge0000_lut(6)
    );
  avg_module_cns5_Msub_m_remainder_addsub0000_lut_3_Q : LUT4
    generic map(
      INIT => X"A599"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(3),
      I1 => avg_module_s_reminder3(1),
      I2 => avg_module_cns4_m_remainder_addsub0000(2),
      I3 => Averager_out(4),
      O => avg_module_cns5_Msub_m_remainder_addsub0000_lut(3)
    );
  avg_module_cns6_Mcompar_m_remainder_cmp_ge0000_lut_7_Q : LUT4
    generic map(
      INIT => X"A959"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(7),
      I1 => avg_module_s_reminder4(5),
      I2 => Averager_out(3),
      I3 => avg_module_cns5_m_remainder_addsub0000(6),
      O => avg_module_cns6_Mcompar_m_remainder_cmp_ge0000_lut(7)
    );
  avg_module_cns5_Msub_m_remainder_addsub0000_lut_4_Q : LUT4
    generic map(
      INIT => X"A599"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(4),
      I1 => avg_module_s_reminder3(2),
      I2 => avg_module_cns4_m_remainder_addsub0000(3),
      I3 => Averager_out(4),
      O => avg_module_cns5_Msub_m_remainder_addsub0000_lut(4)
    );
  avg_module_cns6_Mcompar_m_remainder_cmp_ge0000_lut_2_Q : LUT4
    generic map(
      INIT => X"A599"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(2),
      I1 => avg_module_s_reminder4(0),
      I2 => avg_module_cns5_m_remainder_addsub0000(1),
      I3 => Averager_out(3),
      O => avg_module_cns6_Mcompar_m_remainder_cmp_ge0000_lut(2)
    );
  avg_module_cns5_Msub_m_remainder_addsub0000_lut_5_Q : LUT4
    generic map(
      INIT => X"A959"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(5),
      I1 => avg_module_s_reminder3(3),
      I2 => Averager_out(4),
      I3 => avg_module_cns4_m_remainder_addsub0000(4),
      O => avg_module_cns5_Msub_m_remainder_addsub0000_lut(5)
    );
  avg_module_cns7_Mcompar_m_remainder_cmp_ge0000_lut_3_Q : LUT4
    generic map(
      INIT => X"A599"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(3),
      I1 => avg_module_s_reminder5(1),
      I2 => avg_module_cns6_m_remainder_addsub0000(2),
      I3 => Averager_out(2),
      O => avg_module_cns7_Mcompar_m_remainder_cmp_ge0000_lut(3)
    );
  avg_module_cns7_Mcompar_m_remainder_cmp_ge0000_lut_4_Q : LUT4
    generic map(
      INIT => X"A599"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(4),
      I1 => avg_module_s_reminder5(2),
      I2 => avg_module_cns6_m_remainder_addsub0000(3),
      I3 => Averager_out(2),
      O => avg_module_cns7_Mcompar_m_remainder_cmp_ge0000_lut(4)
    );
  avg_module_cns7_Mcompar_m_remainder_cmp_ge0000_lut_5_Q : LUT4
    generic map(
      INIT => X"A959"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(5),
      I1 => avg_module_s_reminder5(3),
      I2 => Averager_out(2),
      I3 => avg_module_cns6_m_remainder_addsub0000(4),
      O => avg_module_cns7_Mcompar_m_remainder_cmp_ge0000_lut(5)
    );
  avg_module_cns5_Msub_m_remainder_addsub0000_lut_2_Q : LUT4
    generic map(
      INIT => X"A599"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(2),
      I1 => avg_module_s_reminder3(0),
      I2 => avg_module_cns4_m_remainder_addsub0000(1),
      I3 => Averager_out(4),
      O => avg_module_cns5_Msub_m_remainder_addsub0000_lut(2)
    );
  avg_module_cns7_Mcompar_m_remainder_cmp_ge0000_lut_6_Q : LUT4
    generic map(
      INIT => X"A959"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(6),
      I1 => avg_module_s_reminder5(4),
      I2 => Averager_out(2),
      I3 => avg_module_cns6_m_remainder_addsub0000(5),
      O => avg_module_cns7_Mcompar_m_remainder_cmp_ge0000_lut(6)
    );
  avg_module_cns6_Msub_m_remainder_addsub0000_lut_3_Q : LUT4
    generic map(
      INIT => X"A599"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(3),
      I1 => avg_module_s_reminder4(1),
      I2 => avg_module_cns5_m_remainder_addsub0000(2),
      I3 => Averager_out(3),
      O => avg_module_cns6_Msub_m_remainder_addsub0000_lut(3)
    );
  avg_module_cns3_Msub_m_remainder_addsub0000_lut_6_Q : LUT4
    generic map(
      INIT => X"A959"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(6),
      I1 => avg_module_s_reminder1(4),
      I2 => Averager_out(6),
      I3 => avg_module_cns2_m_remainder_addsub0000(5),
      O => avg_module_cns3_Msub_m_remainder_addsub0000_lut(6)
    );
  avg_module_cns7_Mcompar_m_remainder_cmp_ge0000_lut_7_Q : LUT4
    generic map(
      INIT => X"A959"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(7),
      I1 => avg_module_s_reminder5(5),
      I2 => Averager_out(2),
      I3 => avg_module_cns6_m_remainder_addsub0000(6),
      O => avg_module_cns7_Mcompar_m_remainder_cmp_ge0000_lut(7)
    );
  avg_module_cns6_Msub_m_remainder_addsub0000_lut_4_Q : LUT4
    generic map(
      INIT => X"A599"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(4),
      I1 => avg_module_s_reminder4(2),
      I2 => avg_module_cns5_m_remainder_addsub0000(3),
      I3 => Averager_out(3),
      O => avg_module_cns6_Msub_m_remainder_addsub0000_lut(4)
    );
  avg_module_cns7_Mcompar_m_remainder_cmp_ge0000_lut_2_Q : LUT4
    generic map(
      INIT => X"A599"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(2),
      I1 => avg_module_s_reminder5(0),
      I2 => avg_module_cns6_m_remainder_addsub0000(1),
      I3 => Averager_out(2),
      O => avg_module_cns7_Mcompar_m_remainder_cmp_ge0000_lut(2)
    );
  avg_module_cns6_Msub_m_remainder_addsub0000_lut_5_Q : LUT4
    generic map(
      INIT => X"A959"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(5),
      I1 => avg_module_s_reminder4(3),
      I2 => Averager_out(3),
      I3 => avg_module_cns5_m_remainder_addsub0000(4),
      O => avg_module_cns6_Msub_m_remainder_addsub0000_lut(5)
    );
  avg_module_cns8_Mcompar_m_remainder_cmp_ge0000_lut_3_Q : LUT4
    generic map(
      INIT => X"A959"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(3),
      I1 => avg_module_s_reminder6(1),
      I2 => Averager_out(1),
      I3 => avg_module_cns7_m_remainder_addsub0000(2),
      O => avg_module_cns8_Mcompar_m_remainder_cmp_ge0000_lut(3)
    );
  avg_module_cns8_Mcompar_m_remainder_cmp_ge0000_lut_4_Q : LUT4
    generic map(
      INIT => X"A959"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(4),
      I1 => avg_module_s_reminder6(2),
      I2 => Averager_out(1),
      I3 => avg_module_cns7_m_remainder_addsub0000(3),
      O => avg_module_cns8_Mcompar_m_remainder_cmp_ge0000_lut(4)
    );
  avg_module_cns8_Mcompar_m_remainder_cmp_ge0000_lut_5_Q : LUT4
    generic map(
      INIT => X"E14B"
    )
    port map (
      I0 => Averager_out(1),
      I1 => avg_module_s_reminder6(3),
      I2 => sig_controller_rem0ctr_s_Reg(5),
      I3 => avg_module_cns7_m_remainder_addsub0000(4),
      O => avg_module_cns8_Mcompar_m_remainder_cmp_ge0000_lut(5)
    );
  avg_module_cns6_Msub_m_remainder_addsub0000_lut_2_Q : LUT4
    generic map(
      INIT => X"A599"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(2),
      I1 => avg_module_s_reminder4(0),
      I2 => avg_module_cns5_m_remainder_addsub0000(1),
      I3 => Averager_out(3),
      O => avg_module_cns6_Msub_m_remainder_addsub0000_lut(2)
    );
  avg_module_cns8_Mcompar_m_remainder_cmp_ge0000_lut_6_Q : LUT4
    generic map(
      INIT => X"E14B"
    )
    port map (
      I0 => Averager_out(1),
      I1 => avg_module_s_reminder6(4),
      I2 => sig_controller_rem0ctr_s_Reg(6),
      I3 => avg_module_cns7_m_remainder_addsub0000(5),
      O => avg_module_cns8_Mcompar_m_remainder_cmp_ge0000_lut(6)
    );
  avg_module_cns7_Msub_m_remainder_addsub0000_lut_3_Q : LUT4
    generic map(
      INIT => X"A599"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(3),
      I1 => avg_module_s_reminder5(1),
      I2 => avg_module_cns6_m_remainder_addsub0000(2),
      I3 => Averager_out(2),
      O => avg_module_cns7_Msub_m_remainder_addsub0000_lut(3)
    );
  avg_module_cns4_Msub_m_remainder_addsub0000_lut_6_Q : LUT4
    generic map(
      INIT => X"A959"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(6),
      I1 => avg_module_s_reminder2(4),
      I2 => Averager_out(5),
      I3 => avg_module_cns3_m_remainder_addsub0000(5),
      O => avg_module_cns4_Msub_m_remainder_addsub0000_lut(6)
    );
  avg_module_cns8_Mcompar_m_remainder_cmp_ge0000_lut_7_Q : LUT4
    generic map(
      INIT => X"E14B"
    )
    port map (
      I0 => Averager_out(1),
      I1 => avg_module_s_reminder6(5),
      I2 => sig_controller_rem0ctr_s_Reg(7),
      I3 => avg_module_cns7_m_remainder_addsub0000(6),
      O => avg_module_cns8_Mcompar_m_remainder_cmp_ge0000_lut(7)
    );
  avg_module_cns7_Msub_m_remainder_addsub0000_lut_4_Q : LUT4
    generic map(
      INIT => X"A599"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(4),
      I1 => avg_module_s_reminder5(2),
      I2 => avg_module_cns6_m_remainder_addsub0000(3),
      I3 => Averager_out(2),
      O => avg_module_cns7_Msub_m_remainder_addsub0000_lut(4)
    );
  avg_module_cns8_Mcompar_m_remainder_cmp_ge0000_lut_2_Q : LUT4
    generic map(
      INIT => X"A599"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(2),
      I1 => avg_module_s_reminder6(0),
      I2 => avg_module_cns7_m_remainder_addsub0000(1),
      I3 => Averager_out(1),
      O => avg_module_cns8_Mcompar_m_remainder_cmp_ge0000_lut(2)
    );
  avg_module_cns7_Msub_m_remainder_addsub0000_lut_5_Q : LUT4
    generic map(
      INIT => X"A959"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(5),
      I1 => avg_module_s_reminder5(3),
      I2 => Averager_out(2),
      I3 => avg_module_cns6_m_remainder_addsub0000(4),
      O => avg_module_cns7_Msub_m_remainder_addsub0000_lut(5)
    );
  avg_module_cns7_Msub_m_remainder_addsub0000_lut_2_Q : LUT4
    generic map(
      INIT => X"A599"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(2),
      I1 => avg_module_s_reminder5(0),
      I2 => avg_module_cns6_m_remainder_addsub0000(1),
      I3 => Averager_out(2),
      O => avg_module_cns7_Msub_m_remainder_addsub0000_lut(2)
    );
  avg_module_cns5_Msub_m_remainder_addsub0000_lut_6_Q : LUT4
    generic map(
      INIT => X"A959"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(6),
      I1 => avg_module_s_reminder3(4),
      I2 => Averager_out(4),
      I3 => avg_module_cns4_m_remainder_addsub0000(5),
      O => avg_module_cns5_Msub_m_remainder_addsub0000_lut(6)
    );
  avg_module_cns6_Msub_m_remainder_addsub0000_lut_6_Q : LUT4
    generic map(
      INIT => X"A959"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(6),
      I1 => avg_module_s_reminder4(4),
      I2 => Averager_out(3),
      I3 => avg_module_cns5_m_remainder_addsub0000(5),
      O => avg_module_cns6_Msub_m_remainder_addsub0000_lut(6)
    );
  avg_module_cns7_Msub_m_remainder_addsub0000_lut_6_Q : LUT4
    generic map(
      INIT => X"A959"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(6),
      I1 => avg_module_s_reminder5(4),
      I2 => Averager_out(2),
      I3 => avg_module_cns6_m_remainder_addsub0000(5),
      O => avg_module_cns7_Msub_m_remainder_addsub0000_lut(6)
    );
  sig_controller_dac_ctr_s_cnt_not00011 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => sig_controller_dac_ctr_s_ps_FSM_FFd1_1256,
      I1 => sig_controller_dac_ctr_Mcompar_s_cnt_cmp_lt0000_cy(10),
      O => sig_controller_dac_ctr_s_cnt_not0001
    );
  clk_gen_CNT0_s_CNT3_U_mux0000_1_1141 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => clk_gen_CNT0_N3,
      I1 => clk_gen_CNT0_s_CNT3_1(1),
      I2 => clk_gen_CNT0_s_CNT3_U(0),
      I3 => clk_gen_CNT0_N9,
      O => clk_gen_CNT0_s_CNT3_U_mux0000_1_114
    );
  clk_gen_CNT0_s_CNT3_U_mux0000_3_1141 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => clk_gen_CNT0_N3,
      I1 => clk_gen_CNT0_s_CNT3_1(3),
      I2 => clk_gen_CNT0_s_CNT3_U(2),
      I3 => clk_gen_CNT0_N9,
      O => clk_gen_CNT0_s_CNT3_U_mux0000_3_114
    );
  clk_gen_CNT0_s_CNT3_U_mux0000_4_1141 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => clk_gen_CNT0_N3,
      I1 => clk_gen_CNT0_s_CNT3_1(4),
      I2 => clk_gen_CNT0_s_CNT3_U(3),
      I3 => clk_gen_CNT0_N9,
      O => clk_gen_CNT0_s_CNT3_U_mux0000_4_114
    );
  clk_gen_CNT0_s_CNT3_U_mux0000_5_1141 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => clk_gen_CNT0_N3,
      I1 => clk_gen_CNT0_s_CNT3_1(5),
      I2 => clk_gen_CNT0_s_CNT3_U(4),
      I3 => clk_gen_CNT0_N9,
      O => clk_gen_CNT0_s_CNT3_U_mux0000_5_114
    );
  clk_gen_CNT0_s_CNT3_U_mux0000_6_1141 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => clk_gen_CNT0_N3,
      I1 => clk_gen_CNT0_s_CNT3_1(6),
      I2 => clk_gen_CNT0_s_CNT3_U(5),
      I3 => clk_gen_CNT0_N9,
      O => clk_gen_CNT0_s_CNT3_U_mux0000_6_114
    );
  clk_gen_CNT0_s_CNT3_U_mux0000_7_1141 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => clk_gen_CNT0_N3,
      I1 => clk_gen_CNT0_s_CNT3_1(7),
      I2 => clk_gen_CNT0_s_CNT3_U(6),
      I3 => clk_gen_CNT0_N9,
      O => clk_gen_CNT0_s_CNT3_U_mux0000_7_114
    );
  clk_gen_CNT0_s_CNT3_U_mux0000_9_1141 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => clk_gen_CNT0_N3,
      I1 => clk_gen_CNT0_s_CNT3_1(9),
      I2 => clk_gen_CNT0_s_CNT3_U(8),
      I3 => clk_gen_CNT0_N9,
      O => clk_gen_CNT0_s_CNT3_U_mux0000_9_114
    );
  clk_gen_CNT0_s_CNT3_U_mux0000_10_1141 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => clk_gen_CNT0_N3,
      I1 => clk_gen_CNT0_s_CNT3_1(10),
      I2 => clk_gen_CNT0_s_CNT3_U(9),
      I3 => clk_gen_CNT0_N9,
      O => clk_gen_CNT0_s_CNT3_U_mux0000_10_114
    );
  clk_gen_CNT0_s_CNT3_U_mux0000_11_1141 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => clk_gen_CNT0_N3,
      I1 => clk_gen_CNT0_s_CNT3_1(11),
      I2 => clk_gen_CNT0_s_CNT3_U(10),
      I3 => clk_gen_CNT0_N9,
      O => clk_gen_CNT0_s_CNT3_U_mux0000_11_114
    );
  clk_gen_CNT0_s_CNT3_U_mux0000_12_1141 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => clk_gen_CNT0_N3,
      I1 => clk_gen_CNT0_s_CNT3_1(12),
      I2 => clk_gen_CNT0_s_CNT3_U(11),
      I3 => clk_gen_CNT0_N9,
      O => clk_gen_CNT0_s_CNT3_U_mux0000_12_114
    );
  clk_gen_CNT0_s_CNT3_U_mux0000_13_1141 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => clk_gen_CNT0_N3,
      I1 => clk_gen_CNT0_s_CNT3_1(13),
      I2 => clk_gen_CNT0_s_CNT3_U(12),
      I3 => clk_gen_CNT0_N9,
      O => clk_gen_CNT0_s_CNT3_U_mux0000_13_114
    );
  clk_gen_CNT0_s_CNT3_U_mux0000_14_1141 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => clk_gen_CNT0_N3,
      I1 => clk_gen_CNT0_s_CNT3_1(14),
      I2 => clk_gen_CNT0_s_CNT3_U(13),
      I3 => clk_gen_CNT0_N9,
      O => clk_gen_CNT0_s_CNT3_U_mux0000_14_114
    );
  clk_gen_CNT0_s_CNT3_U_mux0000_15_1141 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => clk_gen_CNT0_N3,
      I1 => clk_gen_CNT0_s_CNT3_1(15),
      I2 => clk_gen_CNT0_s_CNT3_U(14),
      I3 => clk_gen_CNT0_N9,
      O => clk_gen_CNT0_s_CNT3_U_mux0000_15_114
    );
  sig_controller_t_ps_FSM_FFd20_In581 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => sig_controller_s_comp0,
      I1 => sig_controller_t_ps_FSM_FFd1_1717,
      I2 => sig_controller_t_ps_FSM_FFd19_1736,
      I3 => sig_controller_N4,
      O => sig_controller_t_ps_FSM_FFd20_In58
    );
  sig_controller_t_ps_FSM_FFd12_In1 : LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd19_1736,
      I1 => s_mode_addr(0),
      I2 => s_mode_addr(2),
      I3 => s_mode_valid,
      O => sig_controller_t_ps_FSM_FFd12_In1_1723
    );
  sig_controller_daremctr_s_Reg_mux0000_10_35_SW0 : LUT4
    generic map(
      INIT => X"FF80"
    )
    port map (
      I0 => sig_controller_rem1ctr_s_Reg(10),
      I1 => sig_controller_s_selda(0),
      I2 => sig_controller_s_selda(1),
      I3 => sig_controller_daremctr_s_Reg_mux0000_10_16,
      O => N117
    );
  sig_controller_daremctr_s_Reg_mux0000_10_35 : LUT4
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => sig_controller_daremctr_s_Reg(9),
      I1 => sig_controller_daremctr_N17,
      I2 => sig_controller_daremctr_s_Reg(10),
      I3 => N117,
      O => sig_controller_daremctr_s_Reg_mux0000(10)
    );
  addr_decode_m_mode_addr_1_100_SW0 : LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => s_address(6),
      I1 => s_address(0),
      I2 => s_address(7),
      I3 => addr_decode_m_mode_addr_1_57_107,
      O => N119
    );
  addr_decode_m_mode_addr_1_100 : LUT4
    generic map(
      INIT => X"5040"
    )
    port map (
      I0 => s_address(3),
      I1 => addr_decode_m_mode_addr_1_12_106,
      I2 => s_address(8),
      I3 => N119,
      O => s_mode_addr(1)
    );
  sig_controller_s_enp0_not000139 : LUT4
    generic map(
      INIT => X"FF54"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd8_1752,
      I1 => sig_controller_s_enp0_not000119_1680,
      I2 => sig_controller_s_enp0_not000122,
      I3 => sig_controller_s_enp0_not000110_1679,
      O => sig_controller_s_enp0_not0001
    );
  sig_controller_rem1ctr_s_Reg_mux0000_10_35_SW0 : LUT4
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => sig_controller_rem1ctr_s_Reg(9),
      I1 => sig_controller_rem1ctr_N17,
      I2 => sig_controller_rem1ctr_s_Reg(10),
      I3 => sig_controller_rem1ctr_s_Reg_mux0000_10_16,
      O => N121
    );
  sig_controller_rem1ctr_s_Reg_mux0000_10_35 : LUT4
    generic map(
      INIT => X"FF80"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(10),
      I1 => sig_controller_s_sel1(0),
      I2 => sig_controller_s_sel1(1),
      I3 => N121,
      O => sig_controller_rem1ctr_s_Reg_mux0000(10)
    );
  sig_controller_rem0ctr_s_Reg_mux0000_10_35_SW0 : LUT4
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(9),
      I1 => sig_controller_rem0ctr_N17,
      I2 => sig_controller_rem0ctr_s_Reg(10),
      I3 => sig_controller_rem0ctr_s_Reg_mux0000_10_16,
      O => N123
    );
  sig_controller_rem0ctr_s_Reg_mux0000_10_35 : LUT4
    generic map(
      INIT => X"FF80"
    )
    port map (
      I0 => sig_controller_adremctr_s_Reg(10),
      I1 => sig_controller_s_sel0(0),
      I2 => sig_controller_s_sel0(1),
      I3 => N123,
      O => sig_controller_rem0ctr_s_Reg_mux0000(10)
    );
  sig_controller_daremctr_s_Reg_mux0000_8_22 : LUT4
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => sig_controller_daremctr_N10,
      I1 => sig_controller_daremctr_s_Reg(7),
      I2 => sig_controller_daremctr_s_Reg(8),
      I3 => N125,
      O => sig_controller_daremctr_s_Reg_mux0000(8)
    );
  sig_controller_daremctr_s_Reg_mux0000_5_22 : LUT4
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => sig_controller_daremctr_N8,
      I1 => sig_controller_daremctr_s_Reg(4),
      I2 => sig_controller_daremctr_s_Reg(5),
      I3 => N127,
      O => sig_controller_daremctr_s_Reg_mux0000(5)
    );
  sig_controller_daremctr_s_Reg_mux0000_2_22 : LUT4
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => sig_controller_daremctr_N111,
      I1 => sig_controller_daremctr_s_Reg(1),
      I2 => sig_controller_daremctr_s_Reg(2),
      I3 => N129,
      O => sig_controller_daremctr_s_Reg_mux0000(2)
    );
  sig_controller_rem1ctr_s_Reg_mux0000_5_22 : LUT4
    generic map(
      INIT => X"FF80"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(5),
      I1 => sig_controller_s_sel1(0),
      I2 => sig_controller_s_sel1(1),
      I3 => N137,
      O => sig_controller_rem1ctr_s_Reg_mux0000(5)
    );
  sig_controller_rem0ctr_s_Reg_mux0000_5_22 : LUT4
    generic map(
      INIT => X"FF80"
    )
    port map (
      I0 => sig_controller_adremctr_s_Reg(5),
      I1 => sig_controller_s_sel0(0),
      I2 => sig_controller_s_sel0(1),
      I3 => N139,
      O => sig_controller_rem0ctr_s_Reg_mux0000(5)
    );
  sig_controller_adremctr_s_Reg_mux0000_5_22 : LUT4
    generic map(
      INIT => X"FF80"
    )
    port map (
      I0 => inlatch_dout(5),
      I1 => sig_controller_s_selad(0),
      I2 => sig_controller_s_selad(1),
      I3 => N141,
      O => sig_controller_adremctr_s_Reg_mux0000(5)
    );
  sig_controller_rem1ctr_s_Reg_mux0000_8_22 : LUT4
    generic map(
      INIT => X"FF80"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(8),
      I1 => sig_controller_s_sel1(0),
      I2 => sig_controller_s_sel1(1),
      I3 => N143,
      O => sig_controller_rem1ctr_s_Reg_mux0000(8)
    );
  sig_controller_rem0ctr_s_Reg_mux0000_8_22 : LUT4
    generic map(
      INIT => X"FF80"
    )
    port map (
      I0 => sig_controller_adremctr_s_Reg(8),
      I1 => sig_controller_s_sel0(0),
      I2 => sig_controller_s_sel0(1),
      I3 => N145,
      O => sig_controller_rem0ctr_s_Reg_mux0000(8)
    );
  clk_gen_CNT0_s_CNT3_U_mux0000_10_151 : LUT4
    generic map(
      INIT => X"22A2"
    )
    port map (
      I0 => m_reset_b_IBUF_961,
      I1 => clk_gen_CNT0_s_mode_830,
      I2 => clk_gen_CNT0_N01,
      I3 => clk_gen_CNT0_s_CNT3_D_cmp_eq0000,
      O => clk_gen_CNT0_N9
    );
  clk_gen_CNT0_s_CNT3_U_mux0000_10_141 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => m_reset_b_IBUF_961,
      I1 => clk_gen_CNT0_s_mode_830,
      I2 => clk_gen_CNT0_s_CNT3_D_cmp_eq0000,
      I3 => clk_gen_CNT0_s_CNT3_UD_cmp_eq0000,
      O => clk_gen_CNT0_N6
    );
  clk_gen_CNT0_s_CNT3_D_mux0004_14_18 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => m_reset_b_IBUF_961,
      I1 => clk_gen_CNT0_s_mode_830,
      I2 => clk_gen_CNT0_s_CNT3_UD_cmp_eq0000,
      I3 => clk_gen_CNT0_s_REG(0),
      O => clk_gen_CNT0_N4
    );
  clk_gen_CNT0_s_CNT3_UD_mux00031 : LUT4
    generic map(
      INIT => X"4E44"
    )
    port map (
      I0 => clk_gen_CNT0_s_mode_830,
      I1 => clk_gen_CNT0_s_CNT3_UD_746,
      I2 => clk_gen_CNT0_s_CNT3_UD_cmp_eq0000,
      I3 => clk_gen_CNT0_s_CNT3_D_cmp_eq0000,
      O => clk_gen_CNT0_s_CNT3_UD_mux0003
    );
  sig_controller_dac_ctr_Msub_s_reg_sub0000_xor_8_11 : LUT3
    generic map(
      INIT => X"A9"
    )
    port map (
      I0 => sig_controller_daremctr_s_Reg(8),
      I1 => sig_controller_dac_ctr_Msub_s_reg_sub0000_cy_7_14,
      I2 => sig_controller_dac_ctr_Msub_s_reg_sub0000_cy_7_19_1228,
      O => sig_controller_dac_ctr_s_reg_sub0000(8)
    );
  sig_controller_dac_ctr_Msub_s_reg_sub0000_xor_9_11 : LUT4
    generic map(
      INIT => X"CCC9"
    )
    port map (
      I0 => sig_controller_dac_ctr_Msub_s_reg_sub0000_cy_7_14,
      I1 => sig_controller_daremctr_s_Reg(9),
      I2 => sig_controller_dac_ctr_Msub_s_reg_sub0000_cy_7_19_1228,
      I3 => sig_controller_daremctr_s_Reg(8),
      O => sig_controller_dac_ctr_s_reg_sub0000(9)
    );
  addr_decode_m_mode_addr_1_12 : LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => s_address(7),
      I1 => s_address(5),
      I2 => s_address(6),
      I3 => addr_decode_m_mode_addr_1_11_105,
      O => addr_decode_m_mode_addr_1_12_106
    );
  clk_gen_CNT0_s_CNT3_U_mux0000_2_1201_SW0 : LUT4
    generic map(
      INIT => X"8CFF"
    )
    port map (
      I0 => clk_gen_CNT0_s_CNT3_D_cmp_eq0000,
      I1 => clk_gen_CNT0_s_mode_830,
      I2 => clk_gen_CNT0_N01,
      I3 => clk_gen_CNT0_s_CNT3_U(1),
      O => N159
    );
  clk_gen_CNT0_s_CNT3_U_mux0000_2_1201 : LUT4
    generic map(
      INIT => X"F777"
    )
    port map (
      I0 => m_reset_b_IBUF_961,
      I1 => N159,
      I2 => clk_gen_CNT0_N16,
      I3 => clk_gen_CNT0_s_REG(2),
      O => clk_gen_CNT0_s_CNT3_U_mux0000_2_120
    );
  sig_controller_rem1ctr_s_Reg_mux0000_4_16_SW0 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => sig_controller_rem1ctr_s_Reg(1),
      I1 => sig_controller_rem1ctr_s_Reg(2),
      I2 => sig_controller_rem1ctr_s_Reg(3),
      I3 => sig_controller_s_sel1(0),
      O => N161
    );
  sig_controller_rem0ctr_s_Reg_mux0000_4_16_SW0 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(1),
      I1 => sig_controller_rem0ctr_s_Reg(2),
      I2 => sig_controller_rem0ctr_s_Reg(3),
      I3 => sig_controller_s_sel0(0),
      O => N163
    );
  sig_controller_daremctr_s_Reg_mux0000_4_16_SW0 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => sig_controller_daremctr_s_Reg(1),
      I1 => sig_controller_daremctr_s_Reg(2),
      I2 => sig_controller_daremctr_s_Reg(3),
      I3 => sig_controller_s_selda(0),
      O => N165
    );
  sig_controller_adremctr_s_Reg_mux0000_4_16_SW0 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => sig_controller_adremctr_s_Reg(1),
      I1 => sig_controller_adremctr_s_Reg(2),
      I2 => sig_controller_adremctr_s_Reg(3),
      I3 => sig_controller_s_selad(0),
      O => N167
    );
  sig_controller_m_wea1_0_not00011 : LUT4
    generic map(
      INIT => X"FE54"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd11_1720,
      I1 => sig_controller_N28,
      I2 => sig_controller_t_ps_FSM_FFd6_1750,
      I3 => s_out_mux_sel,
      O => sig_controller_m_wea1_0_not0001
    );
  sig_controller_m_wea0_0_not00011 : LUT4
    generic map(
      INIT => X"54FE"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd11_1720,
      I1 => sig_controller_t_ps_FSM_FFd1_1717,
      I2 => sig_controller_N28,
      I3 => s_out_mux_sel,
      O => sig_controller_m_wea0_0_not0001
    );
  sig_controller_m_ram1_mux_sel_not0001_SW0 : LUT4
    generic map(
      INIT => X"0D08"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd17_1732,
      I1 => s_out_mux_sel,
      I2 => sig_controller_t_ps_FSM_FFd19_1736,
      I3 => sig_controller_m_ram1_mux_sel_mux0002(0),
      O => N48
    );
  clk_gen_CNT0_m_cw_inv1 : LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      I0 => clk_gen_s_addr(0),
      I1 => clk_gen_s_addr(1),
      I2 => clk_gen_s_cw0_and000012_847,
      O => clk_gen_CNT0_m_cw_inv
    );
  sig_controller_s_sel1_mux0003_0_1 : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd16_1730,
      I1 => sig_controller_t_ps_FSM_FFd11_1720,
      I2 => s_out_mux_sel,
      O => sig_controller_s_sel1_mux0003(0)
    );
  sig_controller_m_wea1_0_mux00001 : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd6_1750,
      I1 => sig_controller_t_ps_FSM_FFd11_1720,
      I2 => s_out_mux_sel,
      O => sig_controller_m_wea1_0_mux0000
    );
  sig_controller_m_ram1_mux_sel_and00031 : LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => s_mode_addr(0),
      I1 => s_mode_addr(2),
      I2 => s_mode_addr(1),
      I3 => sig_controller_t_ps_FSM_FFd17_1732,
      O => sig_controller_m_ram1_mux_sel_and0003
    );
  sig_controller_s_enp1_mux0000_SW0 : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd5_1749,
      I1 => sig_controller_t_ps_FSM_FFd11_1720,
      I2 => s_out_mux_sel,
      O => N18
    );
  sig_controller_s_enp0_mux0000_SW0 : LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd11_1720,
      I1 => s_out_mux_sel,
      I2 => sig_controller_t_ps_FSM_FFd7_1751,
      O => N20
    );
  sig_controller_m_ram1_mux_sel_mux0002_1_SW0 : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => sig_controller_N13,
      I1 => sig_controller_t_ps_FSM_FFd17_1732,
      I2 => s_out_mux_sel,
      O => N28
    );
  sig_controller_s_clr1_not00011_SW1 : LUT4
    generic map(
      INIT => X"0213"
    )
    port map (
      I0 => s_OE_b_1000,
      I1 => s_mode_addr(2),
      I2 => sig_controller_t_prevmode(3),
      I3 => sig_controller_t_prevmode(2),
      O => N171
    );
  sig_controller_s_clr1_not00011 : LUT4
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => N171,
      I1 => s_mode_addr(1),
      I2 => s_mode_addr(0),
      I3 => sig_controller_N4,
      O => sig_controller_N0
    );
  sig_controller_m_ram1_mux_sel_not0001_SW1 : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => s_mode_addr(1),
      I1 => s_mode_addr(0),
      I2 => s_mode_addr(2),
      I3 => sig_controller_t_ps_FSM_FFd19_1736,
      O => N49
    );
  addr_decode_m_mode_addr_2_38 : LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => addr_decode_m_mode_addr_2_18_108,
      I1 => s_address(0),
      I2 => s_address(3),
      I3 => addr_decode_m_mode_addr_2_26_109,
      O => s_mode_addr(2)
    );
  clk_gen_CNT0_s_CNT3_U_mux0000_10_131 : LUT4
    generic map(
      INIT => X"2F3F"
    )
    port map (
      I0 => clk_gen_CNT0_s_REG(0),
      I1 => clk_gen_CNT0_s_CNT3_D_cmp_eq0000,
      I2 => clk_gen_CNT0_s_mode_830,
      I3 => clk_gen_CNT0_s_CNT3_UD_cmp_eq0000,
      O => clk_gen_CNT0_N2
    );
  sig_controller_t_prevmode_mux0006_2_1 : LUT4
    generic map(
      INIT => X"AAA2"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd17_1732,
      I1 => s_mode_addr(0),
      I2 => s_mode_addr(2),
      I3 => s_mode_addr(1),
      O => sig_controller_t_prevmode_mux0006(2)
    );
  sig_controller_s_enp1_and00001 : LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => s_mode_addr(0),
      I1 => s_mode_addr(2),
      I2 => s_mode_addr(1),
      I3 => sig_controller_t_ps_FSM_FFd11_1720,
      O => sig_controller_s_enp0_not000122
    );
  sig_controller_s_enp0_and00001 : LUT4
    generic map(
      INIT => X"AAA2"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd11_1720,
      I1 => s_mode_addr(0),
      I2 => s_mode_addr(2),
      I3 => s_mode_addr(1),
      O => sig_controller_s_enp0_and0000
    );
  sig_controller_s_enp1_not000120_SW1 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd20_1739,
      I1 => sig_controller_t_ps_FSM_FFd3_1746,
      I2 => sig_controller_t_ps_FSM_FFd5_1749,
      I3 => sig_controller_t_ps_FSM_FFd6_1750,
      O => N179
    );
  sig_controller_rem1ctr_s_Reg_mux0000_2_22_SW0_SW1 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => sig_controller_rem1ctr_s_Reg(1),
      I1 => sig_controller_s_sel1(0),
      O => N181
    );
  sig_controller_rem0ctr_s_Reg_mux0000_2_22_SW0_SW1 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(1),
      I1 => sig_controller_s_sel0(0),
      O => N183
    );
  sig_controller_adremctr_s_Reg_mux0000_2_22_SW0_SW1 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => sig_controller_adremctr_s_Reg(1),
      I1 => sig_controller_s_selad(0),
      O => N185
    );
  sig_controller_rem0ctr_s_Reg_0_1 : FDE
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_rem0ctr_s_Reg_not0001,
      D => sig_controller_rem0ctr_s_Reg_mux0000(0),
      Q => sig_controller_rem0ctr_s_Reg_0_1_1495
    );
  sig_controller_rem0ctr_s_Reg_1_1 : FDE
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_rem0ctr_s_Reg_not0001,
      D => sig_controller_rem0ctr_s_Reg_mux0000(1),
      Q => sig_controller_rem0ctr_s_Reg_1_1_1498
    );
  sig_controller_rem0ctr_s_Reg_5_1 : FDE
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_rem0ctr_s_Reg_not0001,
      D => sig_controller_rem0ctr_s_Reg_mux0000(5),
      Q => sig_controller_rem0ctr_s_Reg_5_1_1506
    );
  sig_controller_rem0ctr_s_Reg_2_1 : FDE
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_rem0ctr_s_Reg_not0001,
      D => sig_controller_rem0ctr_s_Reg_mux0000(2),
      Q => sig_controller_rem0ctr_s_Reg_2_1_1500
    );
  sig_controller_rem0ctr_s_Reg_4_1 : FDE
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_rem0ctr_s_Reg_not0001,
      D => sig_controller_rem0ctr_s_Reg_mux0000(4),
      Q => sig_controller_rem0ctr_s_Reg_4_1_1504
    );
  sig_controller_rem0ctr_s_Reg_3_1 : FDE
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_rem0ctr_s_Reg_not0001,
      D => sig_controller_rem0ctr_s_Reg_mux0000(3),
      Q => sig_controller_rem0ctr_s_Reg_3_1_1502
    );
  sig_controller_rem0ctr_s_Reg_6_1 : FDE
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_rem0ctr_s_Reg_not0001,
      D => sig_controller_rem0ctr_s_Reg_mux0000(6),
      Q => sig_controller_rem0ctr_s_Reg_6_1_1508
    );
  sig_controller_rem0ctr_s_Reg_6_2 : FDE
    port map (
      C => m_TP_0_OBUF_917,
      CE => sig_controller_rem0ctr_s_Reg_not0001,
      D => sig_controller_rem0ctr_s_Reg_mux0000(6),
      Q => sig_controller_rem0ctr_s_Reg_6_2_1509
    );
  sig_controller_s_sel1_not000160 : MUXF5
    port map (
      I0 => N187,
      I1 => N188,
      S => sig_controller_t_ps_FSM_FFd8_1752,
      O => sig_controller_s_sel1_not000160_1702
    );
  sig_controller_s_sel1_not000160_F : LUT4
    generic map(
      INIT => X"2232"
    )
    port map (
      I0 => sig_controller_s_enp0_and0000,
      I1 => sig_controller_t_ps_FSM_FFd19_1736,
      I2 => sig_controller_s_sel1_not000118_1701,
      I3 => sig_controller_t_ps_FSM_FFd11_1720,
      O => N187
    );
  sig_controller_s_sel1_not000160_G : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => sig_controller_t_prevmode(0),
      I1 => sig_controller_N5,
      I2 => sig_controller_t_ps_FSM_FFd19_1736,
      O => N188
    );
  sig_controller_rem1ctr_s_Reg_mux0000_9_28 : MUXF5
    port map (
      I0 => N189,
      I1 => N190,
      S => sig_controller_s_sel1(1),
      O => sig_controller_rem1ctr_s_Reg_mux0000(9)
    );
  sig_controller_rem1ctr_s_Reg_mux0000_9_28_F : LUT4
    generic map(
      INIT => X"F7A2"
    )
    port map (
      I0 => sig_controller_rem1ctr_s_Reg(9),
      I1 => sig_controller_rem1ctr_s_Reg(8),
      I2 => sig_controller_rem1ctr_N2,
      I3 => sig_controller_rem1ctr_N17,
      O => N189
    );
  sig_controller_rem1ctr_s_Reg_mux0000_9_28_G : LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      I0 => sig_controller_rem1ctr_N17,
      I1 => sig_controller_rem1ctr_s_Reg(9),
      I2 => sig_controller_s_sel1(0),
      I3 => sig_controller_rem0ctr_s_Reg(9),
      O => N190
    );
  sig_controller_rem0ctr_s_Reg_mux0000_9_28 : MUXF5
    port map (
      I0 => N191,
      I1 => N192,
      S => sig_controller_s_sel0(1),
      O => sig_controller_rem0ctr_s_Reg_mux0000(9)
    );
  sig_controller_rem0ctr_s_Reg_mux0000_9_28_F : LUT4
    generic map(
      INIT => X"F7A2"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(9),
      I1 => sig_controller_rem0ctr_s_Reg(8),
      I2 => sig_controller_rem0ctr_N2,
      I3 => sig_controller_rem0ctr_N17,
      O => N191
    );
  sig_controller_rem0ctr_s_Reg_mux0000_9_28_G : LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      I0 => sig_controller_rem0ctr_N17,
      I1 => sig_controller_rem0ctr_s_Reg(9),
      I2 => sig_controller_s_sel0(0),
      I3 => sig_controller_adremctr_s_Reg(9),
      O => N192
    );
  sig_controller_daremctr_s_Reg_mux0000_9_28 : MUXF5
    port map (
      I0 => N193,
      I1 => N194,
      S => sig_controller_s_selda(1),
      O => sig_controller_daremctr_s_Reg_mux0000(9)
    );
  sig_controller_daremctr_s_Reg_mux0000_9_28_F : LUT4
    generic map(
      INIT => X"F7A2"
    )
    port map (
      I0 => sig_controller_daremctr_s_Reg(9),
      I1 => sig_controller_daremctr_s_Reg(8),
      I2 => sig_controller_daremctr_N2,
      I3 => sig_controller_daremctr_N17,
      O => N193
    );
  sig_controller_daremctr_s_Reg_mux0000_9_28_G : LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      I0 => sig_controller_daremctr_N17,
      I1 => sig_controller_daremctr_s_Reg(9),
      I2 => sig_controller_s_selda(0),
      I3 => sig_controller_rem1ctr_s_Reg(9),
      O => N194
    );
  sig_controller_rem1ctr_s_Reg_mux0000_6_31 : MUXF5
    port map (
      I0 => N195,
      I1 => N196,
      S => sig_controller_s_sel1(1),
      O => sig_controller_rem1ctr_s_Reg_mux0000(6)
    );
  sig_controller_rem1ctr_s_Reg_mux0000_6_31_F : LUT4
    generic map(
      INIT => X"FF8C"
    )
    port map (
      I0 => sig_controller_rem1ctr_N5,
      I1 => sig_controller_rem1ctr_s_Reg(6),
      I2 => sig_controller_rem1ctr_s_Reg(5),
      I3 => sig_controller_rem1ctr_s_Reg_mux0000_6_11_1639,
      O => N195
    );
  sig_controller_rem1ctr_s_Reg_mux0000_6_31_G : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => sig_controller_rem1ctr_s_Reg_mux0000_6_11_1639,
      I1 => sig_controller_rem0ctr_s_Reg(6),
      I2 => sig_controller_s_sel1(0),
      O => N196
    );
  sig_controller_rem0ctr_s_Reg_mux0000_6_31 : MUXF5
    port map (
      I0 => N197,
      I1 => N198,
      S => sig_controller_s_sel0(1),
      O => sig_controller_rem0ctr_s_Reg_mux0000(6)
    );
  sig_controller_rem0ctr_s_Reg_mux0000_6_31_F : LUT4
    generic map(
      INIT => X"FF8C"
    )
    port map (
      I0 => sig_controller_rem0ctr_N5,
      I1 => sig_controller_rem0ctr_s_Reg(6),
      I2 => sig_controller_rem0ctr_s_Reg(5),
      I3 => sig_controller_rem0ctr_s_Reg_mux0000_6_11_1530,
      O => N197
    );
  sig_controller_rem0ctr_s_Reg_mux0000_6_31_G : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg_mux0000_6_11_1530,
      I1 => sig_controller_adremctr_s_Reg(6),
      I2 => sig_controller_s_sel0(0),
      O => N198
    );
  sig_controller_daremctr_s_Reg_mux0000_6_31 : MUXF5
    port map (
      I0 => N199,
      I1 => N200,
      S => sig_controller_s_selda(1),
      O => sig_controller_daremctr_s_Reg_mux0000(6)
    );
  sig_controller_daremctr_s_Reg_mux0000_6_31_F : LUT4
    generic map(
      INIT => X"FF8C"
    )
    port map (
      I0 => sig_controller_daremctr_N5,
      I1 => sig_controller_daremctr_s_Reg(6),
      I2 => sig_controller_daremctr_s_Reg(5),
      I3 => sig_controller_daremctr_s_Reg_mux0000_6_11_1381,
      O => N199
    );
  sig_controller_daremctr_s_Reg_mux0000_6_31_G : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => sig_controller_daremctr_s_Reg_mux0000_6_11_1381,
      I1 => sig_controller_rem1ctr_s_Reg(6),
      I2 => sig_controller_s_selda(0),
      O => N200
    );
  sig_controller_adremctr_s_Reg_mux0000_6_31 : MUXF5
    port map (
      I0 => N201,
      I1 => N202,
      S => sig_controller_s_selad(1),
      O => sig_controller_adremctr_s_Reg_mux0000(6)
    );
  sig_controller_adremctr_s_Reg_mux0000_6_31_F : LUT4
    generic map(
      INIT => X"FF8C"
    )
    port map (
      I0 => sig_controller_adremctr_N5,
      I1 => sig_controller_adremctr_s_Reg(6),
      I2 => sig_controller_adremctr_s_Reg(5),
      I3 => sig_controller_adremctr_s_Reg_mux0000_6_11_1174,
      O => N201
    );
  sig_controller_adremctr_s_Reg_mux0000_6_31_G : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => sig_controller_adremctr_s_Reg_mux0000_6_11_1174,
      I1 => inlatch_dout(6),
      I2 => sig_controller_s_selad(0),
      O => N202
    );
  sig_controller_rem1ctr_s_Reg_mux0000_3_31 : MUXF5
    port map (
      I0 => N203,
      I1 => N204,
      S => sig_controller_s_sel1(1),
      O => sig_controller_rem1ctr_s_Reg_mux0000(3)
    );
  sig_controller_rem1ctr_s_Reg_mux0000_3_31_F : LUT4
    generic map(
      INIT => X"FF8C"
    )
    port map (
      I0 => sig_controller_rem1ctr_N12,
      I1 => sig_controller_rem1ctr_s_Reg(3),
      I2 => sig_controller_rem1ctr_s_Reg(2),
      I3 => sig_controller_rem1ctr_s_Reg_mux0000_3_11_1633,
      O => N203
    );
  sig_controller_rem1ctr_s_Reg_mux0000_3_31_G : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => sig_controller_rem1ctr_s_Reg_mux0000_3_11_1633,
      I1 => sig_controller_rem0ctr_s_Reg(3),
      I2 => sig_controller_s_sel1(0),
      O => N204
    );
  sig_controller_rem0ctr_s_Reg_mux0000_3_31 : MUXF5
    port map (
      I0 => N205,
      I1 => N206,
      S => sig_controller_s_sel0(1),
      O => sig_controller_rem0ctr_s_Reg_mux0000(3)
    );
  sig_controller_rem0ctr_s_Reg_mux0000_3_31_F : LUT4
    generic map(
      INIT => X"FF8C"
    )
    port map (
      I0 => sig_controller_rem0ctr_N12,
      I1 => sig_controller_rem0ctr_s_Reg(3),
      I2 => sig_controller_rem0ctr_s_Reg(2),
      I3 => sig_controller_rem0ctr_s_Reg_mux0000_3_11_1524,
      O => N205
    );
  sig_controller_rem0ctr_s_Reg_mux0000_3_31_G : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg_mux0000_3_11_1524,
      I1 => sig_controller_adremctr_s_Reg(3),
      I2 => sig_controller_s_sel0(0),
      O => N206
    );
  sig_controller_daremctr_s_Reg_mux0000_3_31 : MUXF5
    port map (
      I0 => N207,
      I1 => N208,
      S => sig_controller_s_selda(1),
      O => sig_controller_daremctr_s_Reg_mux0000(3)
    );
  sig_controller_daremctr_s_Reg_mux0000_3_31_F : LUT4
    generic map(
      INIT => X"FF8C"
    )
    port map (
      I0 => sig_controller_daremctr_N12,
      I1 => sig_controller_daremctr_s_Reg(3),
      I2 => sig_controller_daremctr_s_Reg(2),
      I3 => sig_controller_daremctr_s_Reg_mux0000_3_11_1375,
      O => N207
    );
  sig_controller_daremctr_s_Reg_mux0000_3_31_G : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => sig_controller_daremctr_s_Reg_mux0000_3_11_1375,
      I1 => sig_controller_rem1ctr_s_Reg(3),
      I2 => sig_controller_s_selda(0),
      O => N208
    );
  sig_controller_adremctr_s_Reg_mux0000_3_31 : MUXF5
    port map (
      I0 => N209,
      I1 => N210,
      S => sig_controller_s_selad(1),
      O => sig_controller_adremctr_s_Reg_mux0000(3)
    );
  sig_controller_adremctr_s_Reg_mux0000_3_31_F : LUT4
    generic map(
      INIT => X"FF8C"
    )
    port map (
      I0 => sig_controller_adremctr_N12,
      I1 => sig_controller_adremctr_s_Reg(3),
      I2 => sig_controller_adremctr_s_Reg(2),
      I3 => sig_controller_adremctr_s_Reg_mux0000_3_11_1168,
      O => N209
    );
  sig_controller_adremctr_s_Reg_mux0000_3_31_G : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => sig_controller_adremctr_s_Reg_mux0000_3_11_1168,
      I1 => inlatch_dout(3),
      I2 => sig_controller_s_selad(0),
      O => N210
    );
  sig_controller_adremctr_s_Reg_mux0000_10_Q : MUXF5
    port map (
      I0 => N211,
      I1 => N212,
      S => sig_controller_adremctr_s_Reg(10),
      O => sig_controller_adremctr_s_Reg_mux0000(10)
    );
  sig_controller_adremctr_s_Reg_mux0000_10_F : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => sig_controller_adremctr_s_Reg(9),
      I1 => sig_controller_adremctr_s_Reg(8),
      I2 => sig_controller_adremctr_s_Reg(7),
      I3 => sig_controller_adremctr_N10,
      O => N211
    );
  sig_controller_adremctr_s_Reg_mux0000_10_G : LUT4
    generic map(
      INIT => X"3133"
    )
    port map (
      I0 => sig_controller_adremctr_s_Reg(8),
      I1 => sig_controller_s_selad(1),
      I2 => sig_controller_adremctr_N2,
      I3 => sig_controller_adremctr_s_Reg(9),
      O => N212
    );
  sig_controller_adremctr_s_Reg_mux0000_9_Q : MUXF5
    port map (
      I0 => N213,
      I1 => N214,
      S => sig_controller_adremctr_s_Reg(9),
      O => sig_controller_adremctr_s_Reg_mux0000(9)
    );
  sig_controller_adremctr_s_Reg_mux0000_9_F : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => sig_controller_adremctr_s_Reg(8),
      I1 => sig_controller_adremctr_s_Reg(7),
      I2 => sig_controller_adremctr_N10,
      O => N213
    );
  sig_controller_adremctr_s_Reg_mux0000_9_G : LUT3
    generic map(
      INIT => X"31"
    )
    port map (
      I0 => sig_controller_adremctr_s_Reg(8),
      I1 => sig_controller_s_selad(1),
      I2 => sig_controller_adremctr_N2,
      O => N214
    );
  sig_controller_rem1ctr_s_Reg_mux0000_4_34 : MUXF5
    port map (
      I0 => N215,
      I1 => N216,
      S => sig_controller_s_sel1(1),
      O => sig_controller_rem1ctr_s_Reg_mux0000(4)
    );
  sig_controller_rem1ctr_s_Reg_mux0000_4_34_F : LUT4
    generic map(
      INIT => X"7F2A"
    )
    port map (
      I0 => sig_controller_rem1ctr_s_Reg(4),
      I1 => sig_controller_rem1ctr_s_Reg(0),
      I2 => N161,
      I3 => sig_controller_rem1ctr_N8,
      O => N215
    );
  sig_controller_rem1ctr_s_Reg_mux0000_4_34_G : LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      I0 => sig_controller_rem1ctr_N8,
      I1 => sig_controller_rem1ctr_s_Reg(4),
      I2 => sig_controller_s_sel1(0),
      I3 => sig_controller_rem0ctr_s_Reg(4),
      O => N216
    );
  sig_controller_rem0ctr_s_Reg_mux0000_4_34 : MUXF5
    port map (
      I0 => N217,
      I1 => N218,
      S => sig_controller_s_sel0(1),
      O => sig_controller_rem0ctr_s_Reg_mux0000(4)
    );
  sig_controller_rem0ctr_s_Reg_mux0000_4_34_F : LUT4
    generic map(
      INIT => X"7F2A"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(4),
      I1 => sig_controller_rem0ctr_s_Reg(0),
      I2 => N163,
      I3 => sig_controller_rem0ctr_N8,
      O => N217
    );
  sig_controller_rem0ctr_s_Reg_mux0000_4_34_G : LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      I0 => sig_controller_rem0ctr_N8,
      I1 => sig_controller_rem0ctr_s_Reg(4),
      I2 => sig_controller_s_sel0(0),
      I3 => sig_controller_adremctr_s_Reg(4),
      O => N218
    );
  sig_controller_daremctr_s_Reg_mux0000_4_34 : MUXF5
    port map (
      I0 => N219,
      I1 => N220,
      S => sig_controller_s_selda(1),
      O => sig_controller_daremctr_s_Reg_mux0000(4)
    );
  sig_controller_daremctr_s_Reg_mux0000_4_34_F : LUT4
    generic map(
      INIT => X"7F2A"
    )
    port map (
      I0 => sig_controller_daremctr_s_Reg(4),
      I1 => sig_controller_daremctr_s_Reg(0),
      I2 => N165,
      I3 => sig_controller_daremctr_N8,
      O => N219
    );
  sig_controller_daremctr_s_Reg_mux0000_4_34_G : LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      I0 => sig_controller_daremctr_N8,
      I1 => sig_controller_daremctr_s_Reg(4),
      I2 => sig_controller_s_selda(0),
      I3 => sig_controller_rem1ctr_s_Reg(4),
      O => N220
    );
  sig_controller_adremctr_s_Reg_mux0000_4_34 : MUXF5
    port map (
      I0 => N221,
      I1 => N222,
      S => sig_controller_s_selad(1),
      O => sig_controller_adremctr_s_Reg_mux0000(4)
    );
  sig_controller_adremctr_s_Reg_mux0000_4_34_F : LUT4
    generic map(
      INIT => X"7F2A"
    )
    port map (
      I0 => sig_controller_adremctr_s_Reg(4),
      I1 => sig_controller_adremctr_s_Reg(0),
      I2 => N167,
      I3 => sig_controller_adremctr_N8,
      O => N221
    );
  sig_controller_adremctr_s_Reg_mux0000_4_34_G : LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      I0 => sig_controller_adremctr_N8,
      I1 => sig_controller_adremctr_s_Reg(4),
      I2 => sig_controller_s_selad(0),
      I3 => inlatch_dout(4),
      O => N222
    );
  m_TP_0_OBUF_BUFG : BUFG
    port map (
      I => m_TP_0_OBUF1,
      O => m_TP_0_OBUF_917
    );
  m_TP_1_OBUF_BUFG : BUFG
    port map (
      I => m_TP_1_OBUF1,
      O => m_TP_1_OBUF_919
    );
  clk_gen_CNT0_s_wr_BUFG : BUFG
    port map (
      I => clk_gen_CNT0_s_wr1_837,
      O => clk_gen_CNT0_s_wr
    );
  clk_gen_CNT0_Msub_s_CNT3_U_share0000_lut_1_INV_0 : INV
    port map (
      I => clk_gen_CNT0_s_CNT3_U(1),
      O => clk_gen_CNT0_Msub_s_CNT3_U_share0000_lut(1)
    );
  clk_gen_CNT0_Msub_s_CNT3_U_share0000_lut_2_INV_0 : INV
    port map (
      I => clk_gen_CNT0_s_CNT3_U(2),
      O => clk_gen_CNT0_Msub_s_CNT3_U_share0000_lut(2)
    );
  clk_gen_CNT0_Msub_s_CNT3_U_share0000_lut_3_INV_0 : INV
    port map (
      I => clk_gen_CNT0_s_CNT3_U(3),
      O => clk_gen_CNT0_Msub_s_CNT3_U_share0000_lut(3)
    );
  clk_gen_CNT0_Msub_s_CNT3_U_share0000_lut_4_INV_0 : INV
    port map (
      I => clk_gen_CNT0_s_CNT3_U(4),
      O => clk_gen_CNT0_Msub_s_CNT3_U_share0000_lut(4)
    );
  clk_gen_CNT0_Msub_s_CNT3_U_share0000_lut_5_INV_0 : INV
    port map (
      I => clk_gen_CNT0_s_CNT3_U(5),
      O => clk_gen_CNT0_Msub_s_CNT3_U_share0000_lut(5)
    );
  clk_gen_CNT0_Msub_s_CNT3_U_share0000_lut_6_INV_0 : INV
    port map (
      I => clk_gen_CNT0_s_CNT3_U(6),
      O => clk_gen_CNT0_Msub_s_CNT3_U_share0000_lut(6)
    );
  clk_gen_CNT0_Msub_s_CNT3_U_share0000_lut_7_INV_0 : INV
    port map (
      I => clk_gen_CNT0_s_CNT3_U(7),
      O => clk_gen_CNT0_Msub_s_CNT3_U_share0000_lut(7)
    );
  clk_gen_CNT0_Msub_s_CNT3_U_share0000_lut_8_INV_0 : INV
    port map (
      I => clk_gen_CNT0_s_CNT3_U(8),
      O => clk_gen_CNT0_Msub_s_CNT3_U_share0000_lut(8)
    );
  clk_gen_CNT0_Msub_s_CNT3_U_share0000_lut_9_INV_0 : INV
    port map (
      I => clk_gen_CNT0_s_CNT3_U(9),
      O => clk_gen_CNT0_Msub_s_CNT3_U_share0000_lut(9)
    );
  clk_gen_CNT0_Msub_s_CNT3_U_share0000_lut_10_INV_0 : INV
    port map (
      I => clk_gen_CNT0_s_CNT3_U(10),
      O => clk_gen_CNT0_Msub_s_CNT3_U_share0000_lut(10)
    );
  clk_gen_CNT0_Msub_s_CNT3_U_share0000_lut_11_INV_0 : INV
    port map (
      I => clk_gen_CNT0_s_CNT3_U(11),
      O => clk_gen_CNT0_Msub_s_CNT3_U_share0000_lut(11)
    );
  clk_gen_CNT0_Msub_s_CNT3_U_share0000_lut_12_INV_0 : INV
    port map (
      I => clk_gen_CNT0_s_CNT3_U(12),
      O => clk_gen_CNT0_Msub_s_CNT3_U_share0000_lut(12)
    );
  clk_gen_CNT0_Msub_s_CNT3_U_share0000_lut_13_INV_0 : INV
    port map (
      I => clk_gen_CNT0_s_CNT3_U(13),
      O => clk_gen_CNT0_Msub_s_CNT3_U_share0000_lut(13)
    );
  clk_gen_CNT0_Msub_s_CNT3_U_share0000_lut_14_INV_0 : INV
    port map (
      I => clk_gen_CNT0_s_CNT3_U(14),
      O => clk_gen_CNT0_Msub_s_CNT3_U_share0000_lut(14)
    );
  clk_gen_CNT0_Madd_s_CNT3_1_lut_0_INV_0 : INV
    port map (
      I => clk_gen_CNT0_s_REG(0),
      O => clk_gen_CNT0_Madd_s_CNT3_1_lut(0)
    );
  clk_gen_CNT0_Msub_s_CNT3_2_lut_1_INV_0 : INV
    port map (
      I => clk_gen_CNT0_s_REG(1),
      O => clk_gen_CNT0_Msub_s_CNT3_2_lut(1)
    );
  clk_gen_CNT0_Msub_s_CNT3_2_lut_2_INV_0 : INV
    port map (
      I => clk_gen_CNT0_s_REG(2),
      O => clk_gen_CNT0_Msub_s_CNT3_2_lut(2)
    );
  clk_gen_CNT0_Msub_s_CNT3_2_lut_3_INV_0 : INV
    port map (
      I => clk_gen_CNT0_s_REG(3),
      O => clk_gen_CNT0_Msub_s_CNT3_2_lut(3)
    );
  clk_gen_CNT0_Msub_s_CNT3_2_lut_4_INV_0 : INV
    port map (
      I => clk_gen_CNT0_s_REG(4),
      O => clk_gen_CNT0_Msub_s_CNT3_2_lut(4)
    );
  clk_gen_CNT0_Msub_s_CNT3_2_lut_5_INV_0 : INV
    port map (
      I => clk_gen_CNT0_s_REG(5),
      O => clk_gen_CNT0_Msub_s_CNT3_2_lut(5)
    );
  clk_gen_CNT0_Msub_s_CNT3_2_lut_6_INV_0 : INV
    port map (
      I => clk_gen_CNT0_s_REG(6),
      O => clk_gen_CNT0_Msub_s_CNT3_2_lut(6)
    );
  clk_gen_CNT0_Msub_s_CNT3_2_lut_7_INV_0 : INV
    port map (
      I => clk_gen_CNT0_s_REG(7),
      O => clk_gen_CNT0_Msub_s_CNT3_2_lut(7)
    );
  clk_gen_CNT0_Msub_s_CNT3_2_lut_8_INV_0 : INV
    port map (
      I => clk_gen_CNT0_s_REG(8),
      O => clk_gen_CNT0_Msub_s_CNT3_2_lut(8)
    );
  clk_gen_CNT0_Msub_s_CNT3_2_lut_9_INV_0 : INV
    port map (
      I => clk_gen_CNT0_s_REG(9),
      O => clk_gen_CNT0_Msub_s_CNT3_2_lut(9)
    );
  clk_gen_CNT0_Msub_s_CNT3_2_lut_10_INV_0 : INV
    port map (
      I => clk_gen_CNT0_s_REG(10),
      O => clk_gen_CNT0_Msub_s_CNT3_2_lut(10)
    );
  clk_gen_CNT0_Msub_s_CNT3_2_lut_11_INV_0 : INV
    port map (
      I => clk_gen_CNT0_s_REG(11),
      O => clk_gen_CNT0_Msub_s_CNT3_2_lut(11)
    );
  clk_gen_CNT0_Msub_s_CNT3_2_lut_12_INV_0 : INV
    port map (
      I => clk_gen_CNT0_s_REG(12),
      O => clk_gen_CNT0_Msub_s_CNT3_2_lut(12)
    );
  clk_gen_CNT0_Msub_s_CNT3_2_lut_13_INV_0 : INV
    port map (
      I => clk_gen_CNT0_s_REG(13),
      O => clk_gen_CNT0_Msub_s_CNT3_2_lut(13)
    );
  clk_gen_CNT0_Msub_s_CNT3_2_lut_14_INV_0 : INV
    port map (
      I => clk_gen_CNT0_s_REG(14),
      O => clk_gen_CNT0_Msub_s_CNT3_2_lut(14)
    );
  clk_gen_CNT0_Msub_s_CNT3_2_lut_15_INV_0 : INV
    port map (
      I => clk_gen_CNT0_s_REG(15),
      O => clk_gen_CNT0_Msub_s_CNT3_2_lut(15)
    );
  clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_lut_1_INV_0 : INV
    port map (
      I => clk_gen_CNT0_s_CNT3_D(1),
      O => clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_lut(1)
    );
  clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_lut_2_INV_0 : INV
    port map (
      I => clk_gen_CNT0_s_CNT3_D(2),
      O => clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_lut(2)
    );
  clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_lut_3_INV_0 : INV
    port map (
      I => clk_gen_CNT0_s_CNT3_D(3),
      O => clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_lut(3)
    );
  clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_lut_4_INV_0 : INV
    port map (
      I => clk_gen_CNT0_s_CNT3_D(4),
      O => clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_lut(4)
    );
  clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_lut_5_INV_0 : INV
    port map (
      I => clk_gen_CNT0_s_CNT3_D(5),
      O => clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_lut(5)
    );
  clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_lut_6_INV_0 : INV
    port map (
      I => clk_gen_CNT0_s_CNT3_D(6),
      O => clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_lut(6)
    );
  clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_lut_7_INV_0 : INV
    port map (
      I => clk_gen_CNT0_s_CNT3_D(7),
      O => clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_lut(7)
    );
  clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_lut_8_INV_0 : INV
    port map (
      I => clk_gen_CNT0_s_CNT3_D(8),
      O => clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_lut(8)
    );
  clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_lut_9_INV_0 : INV
    port map (
      I => clk_gen_CNT0_s_CNT3_D(9),
      O => clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_lut(9)
    );
  clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_lut_10_INV_0 : INV
    port map (
      I => clk_gen_CNT0_s_CNT3_D(10),
      O => clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_lut(10)
    );
  clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_lut_11_INV_0 : INV
    port map (
      I => clk_gen_CNT0_s_CNT3_D(11),
      O => clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_lut(11)
    );
  clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_lut_12_INV_0 : INV
    port map (
      I => clk_gen_CNT0_s_CNT3_D(12),
      O => clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_lut(12)
    );
  clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_lut_13_INV_0 : INV
    port map (
      I => clk_gen_CNT0_s_CNT3_D(13),
      O => clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_lut(13)
    );
  clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_lut_14_INV_0 : INV
    port map (
      I => clk_gen_CNT0_s_CNT3_D(14),
      O => clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_lut(14)
    );
  clk_gen_CNT0_Mcount_s_CNT2_lut_1_INV_0 : INV
    port map (
      I => clk_gen_CNT0_s_CNT2(1),
      O => clk_gen_CNT0_Mcount_s_CNT2_lut(1)
    );
  clk_gen_CNT0_Mcount_s_CNT2_lut_2_INV_0 : INV
    port map (
      I => clk_gen_CNT0_s_CNT2(2),
      O => clk_gen_CNT0_Mcount_s_CNT2_lut(2)
    );
  clk_gen_CNT0_Mcount_s_CNT2_lut_3_INV_0 : INV
    port map (
      I => clk_gen_CNT0_s_CNT2(3),
      O => clk_gen_CNT0_Mcount_s_CNT2_lut(3)
    );
  clk_gen_CNT0_Mcount_s_CNT2_lut_4_INV_0 : INV
    port map (
      I => clk_gen_CNT0_s_CNT2(4),
      O => clk_gen_CNT0_Mcount_s_CNT2_lut(4)
    );
  clk_gen_CNT0_Mcount_s_CNT2_lut_5_INV_0 : INV
    port map (
      I => clk_gen_CNT0_s_CNT2(5),
      O => clk_gen_CNT0_Mcount_s_CNT2_lut(5)
    );
  clk_gen_CNT0_Mcount_s_CNT2_lut_6_INV_0 : INV
    port map (
      I => clk_gen_CNT0_s_CNT2(6),
      O => clk_gen_CNT0_Mcount_s_CNT2_lut(6)
    );
  clk_gen_CNT0_Mcount_s_CNT2_lut_7_INV_0 : INV
    port map (
      I => clk_gen_CNT0_s_CNT2(7),
      O => clk_gen_CNT0_Mcount_s_CNT2_lut(7)
    );
  clk_gen_CNT0_Mcount_s_CNT2_lut_8_INV_0 : INV
    port map (
      I => clk_gen_CNT0_s_CNT2(8),
      O => clk_gen_CNT0_Mcount_s_CNT2_lut(8)
    );
  clk_gen_CNT0_Mcount_s_CNT2_lut_9_INV_0 : INV
    port map (
      I => clk_gen_CNT0_s_CNT2(9),
      O => clk_gen_CNT0_Mcount_s_CNT2_lut(9)
    );
  clk_gen_CNT0_Mcount_s_CNT2_lut_10_INV_0 : INV
    port map (
      I => clk_gen_CNT0_s_CNT2(10),
      O => clk_gen_CNT0_Mcount_s_CNT2_lut(10)
    );
  clk_gen_CNT0_Mcount_s_CNT2_lut_11_INV_0 : INV
    port map (
      I => clk_gen_CNT0_s_CNT2(11),
      O => clk_gen_CNT0_Mcount_s_CNT2_lut(11)
    );
  clk_gen_CNT0_Mcount_s_CNT2_lut_12_INV_0 : INV
    port map (
      I => clk_gen_CNT0_s_CNT2(12),
      O => clk_gen_CNT0_Mcount_s_CNT2_lut(12)
    );
  clk_gen_CNT0_Mcount_s_CNT2_lut_13_INV_0 : INV
    port map (
      I => clk_gen_CNT0_s_CNT2(13),
      O => clk_gen_CNT0_Mcount_s_CNT2_lut(13)
    );
  clk_gen_CNT0_Mcount_s_CNT2_lut_14_INV_0 : INV
    port map (
      I => clk_gen_CNT0_s_CNT2(14),
      O => clk_gen_CNT0_Mcount_s_CNT2_lut(14)
    );
  clk_gen_CNT0_Mcount_s_CNT2_lut_15_INV_0 : INV
    port map (
      I => clk_gen_CNT0_s_CNT2(15),
      O => clk_gen_CNT0_Mcount_s_CNT2_lut(15)
    );
  sig_controller_dac_ctr_Mcount_s_cnt_lut_0_INV_0 : INV
    port map (
      I => sig_controller_dac_ctr_s_cnt(0),
      O => sig_controller_dac_ctr_Mcount_s_cnt_lut(0)
    );
  sig_controller_rem0ctr_Mcount_s_Cnt_lut_0_INV_0 : INV
    port map (
      I => sig_controller_rem0ctr_s_Cnt(0),
      O => sig_controller_rem0ctr_Mcount_s_Cnt_lut(0)
    );
  sig_controller_rem1ctr_Mcount_s_Cnt_lut_0_INV_0 : INV
    port map (
      I => sig_controller_rem1ctr_s_Cnt(0),
      O => sig_controller_rem1ctr_Mcount_s_Cnt_lut(0)
    );
  sig_controller_daremctr_Mcount_s_Cnt_lut_0_INV_0 : INV
    port map (
      I => sig_controller_daremctr_s_Cnt(0),
      O => sig_controller_daremctr_Mcount_s_Cnt_lut(0)
    );
  sig_controller_adremctr_Mcount_s_Cnt_lut_0_INV_0 : INV
    port map (
      I => sig_controller_adremctr_s_Cnt(0),
      O => sig_controller_adremctr_Mcount_s_Cnt_lut(0)
    );
  sig_controller_adc_ctr_Mcount_s_cnt_lut_0_INV_0 : INV
    port map (
      I => sig_controller_adc_ctr_s_cnt(0),
      O => sig_controller_adc_ctr_Mcount_s_cnt_lut(0)
    );
  clk_gen_CNT0_s_CNT2_and00001_INV_0 : INV
    port map (
      I => clk_gen_CNT0_s_mode_830,
      O => clk_gen_CNT0_s_CNT2_and0000
    );
  clk_gen_CNT0_m_clk_inv1_INV_0 : INV
    port map (
      I => m_TP_0_OBUF_917,
      O => clk_gen_CNT0_m_clk_inv
    );
  s_dout_en_inv1_INV_0 : INV
    port map (
      I => sig_controller_m_dout_en_1393,
      O => s_dout_en_inv
    );
  sig_controller_dac_ctr_Msub_s_reg_sub0000_xor_0_11_INV_0 : INV
    port map (
      I => sig_controller_daremctr_s_Reg(0),
      O => sig_controller_dac_ctr_s_reg_sub0000(0)
    );
  b_reset_b1_INV_0 : INV
    port map (
      I => m_reset_b_IBUF_961,
      O => b_reset_b
    );
  sig_controller_m_outlatch_en1_INV_0 : INV
    port map (
      I => s_OE_b_1000,
      O => s_outlatch_en
    );
  avg_module_cns1_Mcompar_m_remainder_cmp_ge0000_lut_0_1_INV_0 : INV
    port map (
      I => sig_controller_rem0ctr_s_Reg_0_1_1495,
      O => avg_module_cns1_Mcompar_m_remainder_cmp_ge0000_lut(0)
    );
  avg_module_cns1_Mcompar_m_remainder_cmp_ge0000_lut_1_1_INV_0 : INV
    port map (
      I => sig_controller_rem0ctr_s_Reg_1_1_1498,
      O => avg_module_cns1_Mcompar_m_remainder_cmp_ge0000_lut(1)
    );
  avg_module_cns1_Mcompar_m_remainder_cmp_ge0000_lut_2_1_INV_0 : INV
    port map (
      I => sig_controller_rem0ctr_s_Reg_2_1_1500,
      O => avg_module_cns1_Mcompar_m_remainder_cmp_ge0000_lut(2)
    );
  avg_module_cns1_Mcompar_m_remainder_cmp_ge0000_lut_3_1_INV_0 : INV
    port map (
      I => sig_controller_rem0ctr_s_Reg_3_1_1502,
      O => avg_module_cns1_Mcompar_m_remainder_cmp_ge0000_lut(3)
    );
  avg_module_cns1_Mcompar_m_remainder_cmp_ge0000_lut_4_1_INV_0 : INV
    port map (
      I => sig_controller_rem0ctr_s_Reg_4_1_1504,
      O => avg_module_cns1_Mcompar_m_remainder_cmp_ge0000_lut(4)
    );
  avg_module_cns1_Mcompar_m_remainder_cmp_ge0000_lut_5_1_INV_0 : INV
    port map (
      I => sig_controller_rem0ctr_s_Reg_5_1_1506,
      O => avg_module_cns1_Mcompar_m_remainder_cmp_ge0000_lut(5)
    );
  avg_module_cns1_Mcompar_m_remainder_cmp_ge0000_lut_6_1_INV_0 : INV
    port map (
      I => sig_controller_rem0ctr_s_Reg_6_1_1508,
      O => avg_module_cns1_Mcompar_m_remainder_cmp_ge0000_lut(6)
    );
  avg_module_cns1_Mcompar_m_remainder_cmp_ge0000_lut_7_1_INV_0 : INV
    port map (
      I => sig_controller_rem0ctr_s_Reg(7),
      O => avg_module_cns1_Mcompar_m_remainder_cmp_ge0000_lut(7)
    );
  avg_module_cns1_Msub_m_remainder_addsub0000_lut_0_1_INV_0 : INV
    port map (
      I => sig_controller_rem0ctr_s_Reg_0_1_1495,
      O => avg_module_cns1_Msub_m_remainder_addsub0000_lut(0)
    );
  avg_module_cns1_Msub_m_remainder_addsub0000_lut_1_1_INV_0 : INV
    port map (
      I => sig_controller_rem0ctr_s_Reg_1_1_1498,
      O => avg_module_cns1_Msub_m_remainder_addsub0000_lut(1)
    );
  avg_module_cns1_Msub_m_remainder_addsub0000_lut_2_1_INV_0 : INV
    port map (
      I => sig_controller_rem0ctr_s_Reg_2_1_1500,
      O => avg_module_cns1_Msub_m_remainder_addsub0000_lut(2)
    );
  avg_module_cns1_Msub_m_remainder_addsub0000_lut_3_1_INV_0 : INV
    port map (
      I => sig_controller_rem0ctr_s_Reg_3_1_1502,
      O => avg_module_cns1_Msub_m_remainder_addsub0000_lut(3)
    );
  avg_module_cns1_Msub_m_remainder_addsub0000_lut_4_1_INV_0 : INV
    port map (
      I => sig_controller_rem0ctr_s_Reg_4_1_1504,
      O => avg_module_cns1_Msub_m_remainder_addsub0000_lut(4)
    );
  avg_module_cns1_Msub_m_remainder_addsub0000_lut_5_1_INV_0 : INV
    port map (
      I => sig_controller_rem0ctr_s_Reg_5_1_1506,
      O => avg_module_cns1_Msub_m_remainder_addsub0000_lut(5)
    );
  avg_module_cns2_Mcompar_m_remainder_cmp_ge0000_lut_0_1_INV_0 : INV
    port map (
      I => sig_controller_rem0ctr_s_Reg(0),
      O => avg_module_cns2_Mcompar_m_remainder_cmp_ge0000_lut(0)
    );
  avg_module_cns2_Msub_m_remainder_addsub0000_lut_0_1_INV_0 : INV
    port map (
      I => sig_controller_rem0ctr_s_Reg(0),
      O => avg_module_cns2_Msub_m_remainder_addsub0000_lut(0)
    );
  avg_module_cns3_Mcompar_m_remainder_cmp_ge0000_lut_0_1_INV_0 : INV
    port map (
      I => sig_controller_rem0ctr_s_Reg(0),
      O => avg_module_cns3_Mcompar_m_remainder_cmp_ge0000_lut(0)
    );
  avg_module_cns3_Msub_m_remainder_addsub0000_lut_0_1_INV_0 : INV
    port map (
      I => sig_controller_rem0ctr_s_Reg(0),
      O => avg_module_cns3_Msub_m_remainder_addsub0000_lut(0)
    );
  avg_module_cns4_Mcompar_m_remainder_cmp_ge0000_lut_0_1_INV_0 : INV
    port map (
      I => sig_controller_rem0ctr_s_Reg(0),
      O => avg_module_cns4_Mcompar_m_remainder_cmp_ge0000_lut(0)
    );
  avg_module_cns4_Msub_m_remainder_addsub0000_lut_0_1_INV_0 : INV
    port map (
      I => sig_controller_rem0ctr_s_Reg(0),
      O => avg_module_cns4_Msub_m_remainder_addsub0000_lut(0)
    );
  avg_module_cns5_Mcompar_m_remainder_cmp_ge0000_lut_0_1_INV_0 : INV
    port map (
      I => sig_controller_rem0ctr_s_Reg(0),
      O => avg_module_cns5_Mcompar_m_remainder_cmp_ge0000_lut(0)
    );
  avg_module_cns5_Msub_m_remainder_addsub0000_lut_0_1_INV_0 : INV
    port map (
      I => sig_controller_rem0ctr_s_Reg(0),
      O => avg_module_cns5_Msub_m_remainder_addsub0000_lut(0)
    );
  avg_module_cns6_Mcompar_m_remainder_cmp_ge0000_lut_0_1_INV_0 : INV
    port map (
      I => sig_controller_rem0ctr_s_Reg(0),
      O => avg_module_cns6_Mcompar_m_remainder_cmp_ge0000_lut(0)
    );
  avg_module_cns6_Msub_m_remainder_addsub0000_lut_0_1_INV_0 : INV
    port map (
      I => sig_controller_rem0ctr_s_Reg(0),
      O => avg_module_cns6_Msub_m_remainder_addsub0000_lut(0)
    );
  avg_module_cns7_Mcompar_m_remainder_cmp_ge0000_lut_0_1_INV_0 : INV
    port map (
      I => sig_controller_rem0ctr_s_Reg(0),
      O => avg_module_cns7_Mcompar_m_remainder_cmp_ge0000_lut(0)
    );
  avg_module_cns7_Msub_m_remainder_addsub0000_lut_0_1_INV_0 : INV
    port map (
      I => sig_controller_rem0ctr_s_Reg(0),
      O => avg_module_cns7_Msub_m_remainder_addsub0000_lut(0)
    );
  avg_module_cns8_Mcompar_m_remainder_cmp_ge0000_lut_0_1_INV_0 : INV
    port map (
      I => sig_controller_rem0ctr_s_Reg(0),
      O => avg_module_cns8_Mcompar_m_remainder_cmp_ge0000_lut(0)
    );
  avg_module_cns1_Mcompar_m_remainder_cmp_ge0000_lut_6_1_1_INV_0 : INV
    port map (
      I => sig_controller_rem0ctr_s_Reg_6_2_1509,
      O => avg_module_cns1_Mcompar_m_remainder_cmp_ge0000_lut_6_1_1
    );
  sig_controller_s_clr0_mux00091 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => sig_controller_N1,
      I1 => sig_controller_t_ps_FSM_FFd12_1722,
      I2 => sig_controller_t_ps_FSM_FFd13_1724,
      I3 => sig_controller_t_ps_FSM_FFd16_1730,
      O => sig_controller_s_clr0_mux00091_1655
    );
  sig_controller_s_clr0_mux00092 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd12_1722,
      I1 => sig_controller_t_ps_FSM_FFd13_1724,
      I2 => sig_controller_t_ps_FSM_FFd16_1730,
      O => sig_controller_s_clr0_mux00092_1656
    );
  sig_controller_s_clr0_mux0009_f5 : MUXF5
    port map (
      I0 => sig_controller_s_clr0_mux00092_1656,
      I1 => sig_controller_s_clr0_mux00091_1655,
      S => sig_controller_t_ps_FSM_FFd19_1736,
      O => sig_controller_s_clr0_mux0009
    );
  clk_gen_CNT0_s_wr1 : LUT4
    generic map(
      INIT => X"1119"
    )
    port map (
      I0 => clk_gen_s_addr(1),
      I1 => clk_gen_s_addr(0),
      I2 => clk_gen_s_data(7),
      I3 => clk_gen_s_data(6),
      O => clk_gen_CNT0_s_wr2
    );
  clk_gen_CNT0_s_wr_f5 : MUXF5
    port map (
      I0 => clk_gen_CNT0_s_wr2,
      I1 => avg_module_Maccum_s_data_cy(0),
      S => clk_gen_s_wr_b_857,
      O => clk_gen_CNT0_s_wr1_837
    );
  sig_controller_s_enp1_not0001371 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_N5,
      I1 => sig_controller_t_prevmode(0),
      O => sig_controller_s_enp1_not000137
    );
  sig_controller_s_enp1_not0001372 : LUT4
    generic map(
      INIT => X"FE54"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd11_1720,
      I1 => sig_controller_t_ps_FSM_FFd10_1718,
      I2 => N179,
      I3 => s_out_mux_sel,
      O => sig_controller_s_enp1_not0001371_1686
    );
  sig_controller_s_enp1_not000137_f5 : MUXF5
    port map (
      I0 => sig_controller_s_enp1_not0001371_1686,
      I1 => sig_controller_s_enp1_not000137,
      S => sig_controller_t_ps_FSM_FFd8_1752,
      O => sig_controller_s_enp1_not0001
    );
  sig_controller_s_sel1_not0001721 : LUT4
    generic map(
      INIT => X"FF02"
    )
    port map (
      I0 => sig_controller_N13,
      I1 => sig_controller_t_prevmode(3),
      I2 => sig_controller_t_prevmode(0),
      I3 => sig_controller_s_sel1_not000160_1702,
      O => sig_controller_s_sel1_not000172
    );
  sig_controller_s_sel1_not0001722 : LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      I0 => sig_controller_N13,
      I1 => sig_controller_t_prevmode(3),
      I2 => sig_controller_s_sel1_not000160_1702,
      O => sig_controller_s_sel1_not0001721_1704
    );
  sig_controller_s_sel1_not000172_f5 : MUXF5
    port map (
      I0 => sig_controller_s_sel1_not0001721_1704,
      I1 => sig_controller_s_sel1_not000172,
      S => sig_controller_t_ps_FSM_FFd8_1752,
      O => sig_controller_s_sel1_not0001
    );
  sig_controller_dac_ctr_Msub_s_reg_sub0000_xor_10_111 : LUT4
    generic map(
      INIT => X"CCC9"
    )
    port map (
      I0 => sig_controller_daremctr_s_Reg(8),
      I1 => sig_controller_daremctr_s_Reg(10),
      I2 => sig_controller_dac_ctr_Msub_s_reg_sub0000_cy_7_14,
      I3 => sig_controller_dac_ctr_Msub_s_reg_sub0000_cy_7_19_1228,
      O => sig_controller_dac_ctr_Msub_s_reg_sub0000_xor_10_11
    );
  sig_controller_dac_ctr_Msub_s_reg_sub0000_xor_10_11_f5 : MUXF5
    port map (
      I0 => sig_controller_dac_ctr_Msub_s_reg_sub0000_xor_10_11,
      I1 => sig_controller_daremctr_s_Reg(10),
      S => sig_controller_daremctr_s_Reg(9),
      O => sig_controller_dac_ctr_s_reg_sub0000(10)
    );
  sig_controller_rem1ctr_s_Reg_mux0000_1_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => sig_controller_s_sel1(0),
      I1 => sig_controller_rem0ctr_s_Reg(1),
      O => sig_controller_rem1ctr_s_Reg_mux0000_1_1_1627
    );
  sig_controller_rem1ctr_s_Reg_mux0000_1_2 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => sig_controller_rem1ctr_s_Reg(1),
      I1 => sig_controller_rem1ctr_s_Reg(0),
      I2 => sig_controller_s_sel1(0),
      O => sig_controller_rem1ctr_s_Reg_mux0000_1_2_1628
    );
  sig_controller_rem1ctr_s_Reg_mux0000_1_f5 : MUXF5
    port map (
      I0 => sig_controller_rem1ctr_s_Reg_mux0000_1_2_1628,
      I1 => sig_controller_rem1ctr_s_Reg_mux0000_1_1_1627,
      S => sig_controller_s_sel1(1),
      O => sig_controller_rem1ctr_s_Reg_mux0000(1)
    );
  sig_controller_rem0ctr_s_Reg_mux0000_1_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => sig_controller_s_sel0(0),
      I1 => sig_controller_adremctr_s_Reg(1),
      O => sig_controller_rem0ctr_s_Reg_mux0000_1_1_1518
    );
  sig_controller_rem0ctr_s_Reg_mux0000_1_2 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(1),
      I1 => sig_controller_rem0ctr_s_Reg(0),
      I2 => sig_controller_s_sel0(0),
      O => sig_controller_rem0ctr_s_Reg_mux0000_1_2_1519
    );
  sig_controller_rem0ctr_s_Reg_mux0000_1_f5 : MUXF5
    port map (
      I0 => sig_controller_rem0ctr_s_Reg_mux0000_1_2_1519,
      I1 => sig_controller_rem0ctr_s_Reg_mux0000_1_1_1518,
      S => sig_controller_s_sel0(1),
      O => sig_controller_rem0ctr_s_Reg_mux0000(1)
    );
  sig_controller_daremctr_s_Reg_mux0000_1_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => sig_controller_s_selda(0),
      I1 => sig_controller_rem1ctr_s_Reg(1),
      O => sig_controller_daremctr_s_Reg_mux0000_1_1_1369
    );
  sig_controller_daremctr_s_Reg_mux0000_1_2 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => sig_controller_daremctr_s_Reg(1),
      I1 => sig_controller_daremctr_s_Reg(0),
      I2 => sig_controller_s_selda(0),
      O => sig_controller_daremctr_s_Reg_mux0000_1_2_1370
    );
  sig_controller_daremctr_s_Reg_mux0000_1_f5 : MUXF5
    port map (
      I0 => sig_controller_daremctr_s_Reg_mux0000_1_2_1370,
      I1 => sig_controller_daremctr_s_Reg_mux0000_1_1_1369,
      S => sig_controller_s_selda(1),
      O => sig_controller_daremctr_s_Reg_mux0000(1)
    );
  sig_controller_dac_ctr_Msub_s_reg_sub0000_xor_7_11 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => sig_controller_daremctr_s_Reg(4),
      I1 => sig_controller_daremctr_s_Reg(6),
      I2 => sig_controller_daremctr_s_Reg(5),
      I3 => sig_controller_dac_ctr_Msub_s_reg_sub0000_cy_7_14,
      O => sig_controller_dac_ctr_Msub_s_reg_sub0000_xor_7_1
    );
  sig_controller_dac_ctr_Msub_s_reg_sub0000_xor_7_12 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => sig_controller_daremctr_s_Reg(6),
      I1 => sig_controller_daremctr_s_Reg(5),
      I2 => sig_controller_dac_ctr_Msub_s_reg_sub0000_cy_7_14,
      I3 => sig_controller_daremctr_s_Reg(4),
      O => sig_controller_dac_ctr_Msub_s_reg_sub0000_xor_7_11_1231
    );
  sig_controller_dac_ctr_Msub_s_reg_sub0000_xor_7_1_f5 : MUXF5
    port map (
      I0 => sig_controller_dac_ctr_Msub_s_reg_sub0000_xor_7_11_1231,
      I1 => sig_controller_dac_ctr_Msub_s_reg_sub0000_xor_7_1,
      S => sig_controller_daremctr_s_Reg(7),
      O => sig_controller_dac_ctr_s_reg_sub0000(7)
    );
  sig_controller_adremctr_s_Reg_mux0000_1_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => sig_controller_s_selad(0),
      I1 => inlatch_dout(1),
      O => sig_controller_adremctr_s_Reg_mux0000_1_1_1162
    );
  sig_controller_adremctr_s_Reg_mux0000_1_2 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => sig_controller_adremctr_s_Reg(1),
      I1 => sig_controller_adremctr_s_Reg(0),
      I2 => sig_controller_s_selad(0),
      O => sig_controller_adremctr_s_Reg_mux0000_1_2_1163
    );
  sig_controller_adremctr_s_Reg_mux0000_1_f5 : MUXF5
    port map (
      I0 => sig_controller_adremctr_s_Reg_mux0000_1_2_1163,
      I1 => sig_controller_adremctr_s_Reg_mux0000_1_1_1162,
      S => sig_controller_s_selad(1),
      O => sig_controller_adremctr_s_Reg_mux0000(1)
    );
  b_pcs_addr1 : LUT4
    generic map(
      INIT => X"FFEF"
    )
    port map (
      I0 => s_address(7),
      I1 => s_address(4),
      I2 => s_address(6),
      I3 => s_address(5),
      O => b_pcs_addr1_425
    );
  b_pcs_addr_f5 : MUXF5
    port map (
      I0 => N1,
      I1 => b_pcs_addr1_425,
      S => s_address(8),
      O => b_pcs_addr
    );
  clk_gen_s_wr_b_mux000061 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => clk_gen_state_FSM_FFd5_868,
      I1 => clk_gen_state_FSM_FFd6_869,
      I2 => clk_gen_state_FSM_FFd1_862,
      I3 => clk_gen_state_FSM_FFd4_867,
      O => clk_gen_s_wr_b_mux000061_860
    );
  clk_gen_s_wr_b_mux000062 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => clk_gen_state_FSM_FFd5_868,
      I1 => clk_gen_state_FSM_FFd6_869,
      I2 => clk_gen_state_FSM_FFd1_862,
      O => clk_gen_s_wr_b_mux000062_861
    );
  clk_gen_s_wr_b_mux00006_f5 : MUXF5
    port map (
      I0 => clk_gen_s_wr_b_mux000062_861,
      I1 => clk_gen_s_wr_b_mux000061_860,
      S => clk_gen_s_wr_b_857,
      O => clk_gen_s_wr_b_mux00006
    );
  sig_controller_adremctr_s_Reg_mux0000_8_1 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => sig_controller_adremctr_N10,
      I1 => sig_controller_adremctr_s_Reg(7),
      I2 => sig_controller_adremctr_s_Reg(8),
      O => sig_controller_adremctr_s_Reg_mux0000_8_1_1180
    );
  sig_controller_adremctr_s_Reg_mux0000_8_2 : LUT4
    generic map(
      INIT => X"D888"
    )
    port map (
      I0 => sig_controller_adremctr_s_Reg(8),
      I1 => sig_controller_adremctr_N2,
      I2 => sig_controller_adremctr_s_Reg(7),
      I3 => sig_controller_adremctr_N10,
      O => sig_controller_adremctr_s_Reg_mux0000_8_2_1181
    );
  sig_controller_adremctr_s_Reg_mux0000_8_f5 : MUXF5
    port map (
      I0 => sig_controller_adremctr_s_Reg_mux0000_8_2_1181,
      I1 => sig_controller_adremctr_s_Reg_mux0000_8_1_1180,
      S => sig_controller_s_selad(1),
      O => sig_controller_adremctr_s_Reg_mux0000(8)
    );
  sig_controller_rem1ctr_s_Reg_mux0000_7_161 : LUT4
    generic map(
      INIT => X"CC4C"
    )
    port map (
      I0 => sig_controller_rem1ctr_s_Reg(6),
      I1 => sig_controller_rem1ctr_s_Reg(7),
      I2 => sig_controller_rem1ctr_s_Reg(5),
      I3 => sig_controller_rem1ctr_N5,
      O => sig_controller_rem1ctr_s_Reg_mux0000_7_161_1642
    );
  sig_controller_rem1ctr_s_Reg_mux0000_7_16_f5 : MUXF5
    port map (
      I0 => sig_controller_rem1ctr_s_Reg_mux0000_7_161_1642,
      I1 => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_s_sel1(1),
      O => sig_controller_rem1ctr_s_Reg_mux0000_7_16
    );
  sig_controller_rem0ctr_s_Reg_mux0000_7_161 : LUT4
    generic map(
      INIT => X"CC4C"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(6),
      I1 => sig_controller_rem0ctr_s_Reg(7),
      I2 => sig_controller_rem0ctr_s_Reg(5),
      I3 => sig_controller_rem0ctr_N5,
      O => sig_controller_rem0ctr_s_Reg_mux0000_7_161_1533
    );
  sig_controller_rem0ctr_s_Reg_mux0000_7_16_f5 : MUXF5
    port map (
      I0 => sig_controller_rem0ctr_s_Reg_mux0000_7_161_1533,
      I1 => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_s_sel0(1),
      O => sig_controller_rem0ctr_s_Reg_mux0000_7_16
    );
  sig_controller_daremctr_s_Reg_mux0000_7_161 : LUT4
    generic map(
      INIT => X"CC4C"
    )
    port map (
      I0 => sig_controller_daremctr_s_Reg(6),
      I1 => sig_controller_daremctr_s_Reg(7),
      I2 => sig_controller_daremctr_s_Reg(5),
      I3 => sig_controller_daremctr_N5,
      O => sig_controller_daremctr_s_Reg_mux0000_7_161_1384
    );
  sig_controller_daremctr_s_Reg_mux0000_7_16_f5 : MUXF5
    port map (
      I0 => sig_controller_daremctr_s_Reg_mux0000_7_161_1384,
      I1 => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_s_selda(1),
      O => sig_controller_daremctr_s_Reg_mux0000_7_16
    );
  sig_controller_adremctr_s_Reg_mux0000_7_161 : LUT4
    generic map(
      INIT => X"CC4C"
    )
    port map (
      I0 => sig_controller_adremctr_s_Reg(6),
      I1 => sig_controller_adremctr_s_Reg(7),
      I2 => sig_controller_adremctr_s_Reg(5),
      I3 => sig_controller_adremctr_N5,
      O => sig_controller_adremctr_s_Reg_mux0000_7_161_1177
    );
  sig_controller_adremctr_s_Reg_mux0000_7_16_f5 : MUXF5
    port map (
      I0 => sig_controller_adremctr_s_Reg_mux0000_7_161_1177,
      I1 => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_s_selad(1),
      O => sig_controller_adremctr_s_Reg_mux0000_7_16
    );
  addr_decode_m_mode_valid_or0000291 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => s_address(2),
      I1 => s_address(3),
      I2 => s_address(4),
      I3 => s_address(1),
      O => addr_decode_m_mode_valid_or0000291_111
    );
  addr_decode_m_mode_valid_or000029_f5 : MUXF5
    port map (
      I0 => avg_module_Maccum_s_data_cy(0),
      I1 => addr_decode_m_mode_valid_or0000291_111,
      S => s_address(8),
      O => addr_decode_m_mode_valid_or000029
    );
  addr_decode_m_mode_valid_or0000461 : LUT4
    generic map(
      INIT => X"FF02"
    )
    port map (
      I0 => addr_decode_m_mode_valid_or000029,
      I1 => s_address(5),
      I2 => s_address(6),
      I3 => s_mode_addr(2),
      O => addr_decode_m_mode_valid_or000046
    );
  addr_decode_m_mode_valid_or0000462 : LUT4
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => addr_decode_m_mode_valid_or000029,
      I1 => s_address(5),
      I2 => s_address(0),
      I3 => s_mode_addr(2),
      O => addr_decode_m_mode_valid_or0000461_113
    );
  addr_decode_m_mode_valid_or000046_f5 : MUXF5
    port map (
      I0 => addr_decode_m_mode_valid_or0000461_113,
      I1 => addr_decode_m_mode_valid_or000046,
      S => s_address(7),
      O => s_mode_valid
    );
  sig_controller_rem1ctr_s_Reg_mux0000_10_161 : LUT4
    generic map(
      INIT => X"CC4C"
    )
    port map (
      I0 => sig_controller_rem1ctr_s_Reg(8),
      I1 => sig_controller_rem1ctr_s_Reg(10),
      I2 => sig_controller_rem1ctr_s_Reg(9),
      I3 => sig_controller_rem1ctr_N2,
      O => sig_controller_rem1ctr_s_Reg_mux0000_10_161_1625
    );
  sig_controller_rem1ctr_s_Reg_mux0000_10_16_f5 : MUXF5
    port map (
      I0 => sig_controller_rem1ctr_s_Reg_mux0000_10_161_1625,
      I1 => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_s_sel1(1),
      O => sig_controller_rem1ctr_s_Reg_mux0000_10_16
    );
  sig_controller_rem0ctr_s_Reg_mux0000_10_161 : LUT4
    generic map(
      INIT => X"CC4C"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(8),
      I1 => sig_controller_rem0ctr_s_Reg(10),
      I2 => sig_controller_rem0ctr_s_Reg(9),
      I3 => sig_controller_rem0ctr_N2,
      O => sig_controller_rem0ctr_s_Reg_mux0000_10_161_1516
    );
  sig_controller_rem0ctr_s_Reg_mux0000_10_16_f5 : MUXF5
    port map (
      I0 => sig_controller_rem0ctr_s_Reg_mux0000_10_161_1516,
      I1 => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_s_sel0(1),
      O => sig_controller_rem0ctr_s_Reg_mux0000_10_16
    );
  sig_controller_daremctr_s_Reg_mux0000_10_161 : LUT4
    generic map(
      INIT => X"CC4C"
    )
    port map (
      I0 => sig_controller_daremctr_s_Reg(8),
      I1 => sig_controller_daremctr_s_Reg(10),
      I2 => sig_controller_daremctr_s_Reg(9),
      I3 => sig_controller_daremctr_N2,
      O => sig_controller_daremctr_s_Reg_mux0000_10_161_1367
    );
  sig_controller_daremctr_s_Reg_mux0000_10_16_f5 : MUXF5
    port map (
      I0 => sig_controller_daremctr_s_Reg_mux0000_10_161_1367,
      I1 => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_s_selda(1),
      O => sig_controller_daremctr_s_Reg_mux0000_10_16
    );
  addr_decode_m_mode_addr_0_61 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => s_address(2),
      I1 => s_address(5),
      I2 => s_address(6),
      I3 => s_address(4),
      O => addr_decode_m_mode_addr_0_61_103
    );
  addr_decode_m_mode_addr_0_6_f5 : MUXF5
    port map (
      I0 => avg_module_Maccum_s_data_cy(0),
      I1 => addr_decode_m_mode_addr_0_61_103,
      S => s_address(7),
      O => addr_decode_m_mode_addr_0_6
    );
  addr_decode_m_mode_addr_0_521 : LUT4
    generic map(
      INIT => X"9400"
    )
    port map (
      I0 => s_address(2),
      I1 => s_address(4),
      I2 => s_address(5),
      I3 => s_address(6),
      O => addr_decode_m_mode_addr_0_521_101
    );
  addr_decode_m_mode_addr_0_52_f5 : MUXF5
    port map (
      I0 => addr_decode_m_mode_addr_0_521_101,
      I1 => avg_module_Maccum_s_data_cy(0),
      S => s_address(7),
      O => addr_decode_m_mode_addr_0_52
    );
  sig_controller_t_ps_FSM_FFd20_In61 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd8_1752,
      I1 => sig_controller_t_ps_FSM_FFd12_1722,
      I2 => sig_controller_t_ps_FSM_FFd3_1746,
      I3 => sig_controller_t_ps_FSM_FFd14_1726,
      O => sig_controller_t_ps_FSM_FFd20_In61_1744
    );
  sig_controller_t_ps_FSM_FFd20_In62 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd8_1752,
      I1 => sig_controller_t_ps_FSM_FFd12_1722,
      I2 => sig_controller_t_ps_FSM_FFd3_1746,
      O => sig_controller_t_ps_FSM_FFd20_In62_1745
    );
  sig_controller_t_ps_FSM_FFd20_In6_f5 : MUXF5
    port map (
      I0 => sig_controller_t_ps_FSM_FFd20_In62_1745,
      I1 => sig_controller_t_ps_FSM_FFd20_In61_1744,
      S => s_OE_b_1000,
      O => sig_controller_t_ps_FSM_FFd20_In6
    );
  clk_gen_CNT0_s_CNT3_D_mux0004_14_401 : LUT3
    generic map(
      INIT => X"32"
    )
    port map (
      I0 => clk_gen_CNT0_s_CNT3_D_cmp_eq0000,
      I1 => clk_gen_CNT0_s_CNT3_UD_cmp_eq0000,
      I2 => clk_gen_CNT0_s_CNT3_D_addsub0000(0),
      O => clk_gen_CNT0_s_CNT3_D_mux0004_14_401_725
    );
  clk_gen_CNT0_s_CNT3_D_mux0004_14_40_f5 : MUXF5
    port map (
      I0 => clk_gen_CNT0_s_CNT3_D(0),
      I1 => clk_gen_CNT0_s_CNT3_D_mux0004_14_401_725,
      S => clk_gen_CNT0_s_mode_830,
      O => clk_gen_CNT0_s_CNT3_D_mux0004_14_40
    );
  sig_controller_daremctr_s_Reg_mux0000_8_22_SW01 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => sig_controller_rem1ctr_s_Reg(8),
      I1 => sig_controller_s_selda(0),
      O => sig_controller_daremctr_s_Reg_mux0000_8_22_SW0
    );
  sig_controller_daremctr_s_Reg_mux0000_8_22_SW02 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => sig_controller_daremctr_N2,
      I1 => sig_controller_daremctr_s_Reg(8),
      O => sig_controller_daremctr_s_Reg_mux0000_8_22_SW01_1388
    );
  sig_controller_daremctr_s_Reg_mux0000_8_22_SW0_f5 : MUXF5
    port map (
      I0 => sig_controller_daremctr_s_Reg_mux0000_8_22_SW01_1388,
      I1 => sig_controller_daremctr_s_Reg_mux0000_8_22_SW0,
      S => sig_controller_s_selda(1),
      O => N125
    );
  sig_controller_daremctr_s_Reg_mux0000_5_22_SW01 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => sig_controller_rem1ctr_s_Reg(5),
      I1 => sig_controller_s_selda(0),
      O => sig_controller_daremctr_s_Reg_mux0000_5_22_SW0
    );
  sig_controller_daremctr_s_Reg_mux0000_5_22_SW02 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => sig_controller_daremctr_N5,
      I1 => sig_controller_daremctr_s_Reg(5),
      O => sig_controller_daremctr_s_Reg_mux0000_5_22_SW01_1379
    );
  sig_controller_daremctr_s_Reg_mux0000_5_22_SW0_f5 : MUXF5
    port map (
      I0 => sig_controller_daremctr_s_Reg_mux0000_5_22_SW01_1379,
      I1 => sig_controller_daremctr_s_Reg_mux0000_5_22_SW0,
      S => sig_controller_s_selda(1),
      O => N127
    );
  sig_controller_daremctr_s_Reg_mux0000_2_22_SW01 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => sig_controller_rem1ctr_s_Reg(2),
      I1 => sig_controller_s_selda(0),
      O => sig_controller_daremctr_s_Reg_mux0000_2_22_SW0
    );
  sig_controller_daremctr_s_Reg_mux0000_2_22_SW02 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => sig_controller_daremctr_N12,
      I1 => sig_controller_daremctr_s_Reg(2),
      O => sig_controller_daremctr_s_Reg_mux0000_2_22_SW01_1373
    );
  sig_controller_daremctr_s_Reg_mux0000_2_22_SW0_f5 : MUXF5
    port map (
      I0 => sig_controller_daremctr_s_Reg_mux0000_2_22_SW01_1373,
      I1 => sig_controller_daremctr_s_Reg_mux0000_2_22_SW0,
      S => sig_controller_s_selda(1),
      O => N129
    );
  sig_controller_rem1ctr_s_Reg_mux0000_2_221 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(2),
      I1 => sig_controller_s_sel1(0),
      O => sig_controller_rem1ctr_s_Reg_mux0000_2_22
    );
  sig_controller_rem1ctr_s_Reg_mux0000_2_222 : LUT3
    generic map(
      INIT => X"9C"
    )
    port map (
      I0 => N181,
      I1 => sig_controller_rem1ctr_s_Reg(2),
      I2 => sig_controller_rem1ctr_s_Reg(0),
      O => sig_controller_rem1ctr_s_Reg_mux0000_2_221_1631
    );
  sig_controller_rem1ctr_s_Reg_mux0000_2_22_f5 : MUXF5
    port map (
      I0 => sig_controller_rem1ctr_s_Reg_mux0000_2_221_1631,
      I1 => sig_controller_rem1ctr_s_Reg_mux0000_2_22,
      S => sig_controller_s_sel1(1),
      O => sig_controller_rem1ctr_s_Reg_mux0000(2)
    );
  sig_controller_rem0ctr_s_Reg_mux0000_2_221 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => sig_controller_adremctr_s_Reg(2),
      I1 => sig_controller_s_sel0(0),
      O => sig_controller_rem0ctr_s_Reg_mux0000_2_22
    );
  sig_controller_rem0ctr_s_Reg_mux0000_2_222 : LUT3
    generic map(
      INIT => X"9C"
    )
    port map (
      I0 => N183,
      I1 => sig_controller_rem0ctr_s_Reg(2),
      I2 => sig_controller_rem0ctr_s_Reg(0),
      O => sig_controller_rem0ctr_s_Reg_mux0000_2_221_1522
    );
  sig_controller_rem0ctr_s_Reg_mux0000_2_22_f5 : MUXF5
    port map (
      I0 => sig_controller_rem0ctr_s_Reg_mux0000_2_221_1522,
      I1 => sig_controller_rem0ctr_s_Reg_mux0000_2_22,
      S => sig_controller_s_sel0(1),
      O => sig_controller_rem0ctr_s_Reg_mux0000(2)
    );
  sig_controller_adremctr_s_Reg_mux0000_2_221 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => inlatch_dout(2),
      I1 => sig_controller_s_selad(0),
      O => sig_controller_adremctr_s_Reg_mux0000_2_22
    );
  sig_controller_adremctr_s_Reg_mux0000_2_222 : LUT3
    generic map(
      INIT => X"9C"
    )
    port map (
      I0 => N185,
      I1 => sig_controller_adremctr_s_Reg(2),
      I2 => sig_controller_adremctr_s_Reg(0),
      O => sig_controller_adremctr_s_Reg_mux0000_2_221_1166
    );
  sig_controller_adremctr_s_Reg_mux0000_2_22_f5 : MUXF5
    port map (
      I0 => sig_controller_adremctr_s_Reg_mux0000_2_221_1166,
      I1 => sig_controller_adremctr_s_Reg_mux0000_2_22,
      S => sig_controller_s_selad(1),
      O => sig_controller_adremctr_s_Reg_mux0000(2)
    );
  sig_controller_rem1ctr_s_Reg_mux0000_5_22_SW01 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => sig_controller_rem1ctr_N8,
      I1 => sig_controller_rem1ctr_s_Reg(4),
      I2 => sig_controller_rem1ctr_s_Reg(5),
      O => sig_controller_rem1ctr_s_Reg_mux0000_5_22_SW0
    );
  sig_controller_rem1ctr_s_Reg_mux0000_5_22_SW02 : LUT4
    generic map(
      INIT => X"D888"
    )
    port map (
      I0 => sig_controller_rem1ctr_s_Reg(5),
      I1 => sig_controller_rem1ctr_N5,
      I2 => sig_controller_rem1ctr_s_Reg(4),
      I3 => sig_controller_rem1ctr_N8,
      O => sig_controller_rem1ctr_s_Reg_mux0000_5_22_SW01_1637
    );
  sig_controller_rem1ctr_s_Reg_mux0000_5_22_SW0_f5 : MUXF5
    port map (
      I0 => sig_controller_rem1ctr_s_Reg_mux0000_5_22_SW01_1637,
      I1 => sig_controller_rem1ctr_s_Reg_mux0000_5_22_SW0,
      S => sig_controller_s_sel1(1),
      O => N137
    );
  sig_controller_rem0ctr_s_Reg_mux0000_5_22_SW01 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => sig_controller_rem0ctr_N8,
      I1 => sig_controller_rem0ctr_s_Reg(4),
      I2 => sig_controller_rem0ctr_s_Reg(5),
      O => sig_controller_rem0ctr_s_Reg_mux0000_5_22_SW0
    );
  sig_controller_rem0ctr_s_Reg_mux0000_5_22_SW02 : LUT4
    generic map(
      INIT => X"D888"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(5),
      I1 => sig_controller_rem0ctr_N5,
      I2 => sig_controller_rem0ctr_s_Reg(4),
      I3 => sig_controller_rem0ctr_N8,
      O => sig_controller_rem0ctr_s_Reg_mux0000_5_22_SW01_1528
    );
  sig_controller_rem0ctr_s_Reg_mux0000_5_22_SW0_f5 : MUXF5
    port map (
      I0 => sig_controller_rem0ctr_s_Reg_mux0000_5_22_SW01_1528,
      I1 => sig_controller_rem0ctr_s_Reg_mux0000_5_22_SW0,
      S => sig_controller_s_sel0(1),
      O => N139
    );
  sig_controller_adremctr_s_Reg_mux0000_5_22_SW01 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => sig_controller_adremctr_N8,
      I1 => sig_controller_adremctr_s_Reg(4),
      I2 => sig_controller_adremctr_s_Reg(5),
      O => sig_controller_adremctr_s_Reg_mux0000_5_22_SW0
    );
  sig_controller_adremctr_s_Reg_mux0000_5_22_SW02 : LUT4
    generic map(
      INIT => X"D888"
    )
    port map (
      I0 => sig_controller_adremctr_s_Reg(5),
      I1 => sig_controller_adremctr_N5,
      I2 => sig_controller_adremctr_s_Reg(4),
      I3 => sig_controller_adremctr_N8,
      O => sig_controller_adremctr_s_Reg_mux0000_5_22_SW01_1172
    );
  sig_controller_adremctr_s_Reg_mux0000_5_22_SW0_f5 : MUXF5
    port map (
      I0 => sig_controller_adremctr_s_Reg_mux0000_5_22_SW01_1172,
      I1 => sig_controller_adremctr_s_Reg_mux0000_5_22_SW0,
      S => sig_controller_s_selad(1),
      O => N141
    );
  sig_controller_rem1ctr_s_Reg_mux0000_8_22_SW01 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => sig_controller_rem1ctr_N10,
      I1 => sig_controller_rem1ctr_s_Reg(7),
      I2 => sig_controller_rem1ctr_s_Reg(8),
      O => sig_controller_rem1ctr_s_Reg_mux0000_8_22_SW0
    );
  sig_controller_rem1ctr_s_Reg_mux0000_8_22_SW02 : LUT4
    generic map(
      INIT => X"D888"
    )
    port map (
      I0 => sig_controller_rem1ctr_s_Reg(8),
      I1 => sig_controller_rem1ctr_N2,
      I2 => sig_controller_rem1ctr_s_Reg(7),
      I3 => sig_controller_rem1ctr_N10,
      O => sig_controller_rem1ctr_s_Reg_mux0000_8_22_SW01_1646
    );
  sig_controller_rem1ctr_s_Reg_mux0000_8_22_SW0_f5 : MUXF5
    port map (
      I0 => sig_controller_rem1ctr_s_Reg_mux0000_8_22_SW01_1646,
      I1 => sig_controller_rem1ctr_s_Reg_mux0000_8_22_SW0,
      S => sig_controller_s_sel1(1),
      O => N143
    );
  sig_controller_rem0ctr_s_Reg_mux0000_8_22_SW01 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => sig_controller_rem0ctr_N10,
      I1 => sig_controller_rem0ctr_s_Reg(7),
      I2 => sig_controller_rem0ctr_s_Reg(8),
      O => sig_controller_rem0ctr_s_Reg_mux0000_8_22_SW0
    );
  sig_controller_rem0ctr_s_Reg_mux0000_8_22_SW02 : LUT4
    generic map(
      INIT => X"D888"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(8),
      I1 => sig_controller_rem0ctr_N2,
      I2 => sig_controller_rem0ctr_s_Reg(7),
      I3 => sig_controller_rem0ctr_N10,
      O => sig_controller_rem0ctr_s_Reg_mux0000_8_22_SW01_1537
    );
  sig_controller_rem0ctr_s_Reg_mux0000_8_22_SW0_f5 : MUXF5
    port map (
      I0 => sig_controller_rem0ctr_s_Reg_mux0000_8_22_SW01_1537,
      I1 => sig_controller_rem0ctr_s_Reg_mux0000_8_22_SW0,
      S => sig_controller_s_sel0(1),
      O => N145
    );
  ram1_mux_dout_7_LogicTrst1 : LUT4
    generic map(
      INIT => X"FDF8"
    )
    port map (
      I0 => sig_controller_m_ram1_mux_sel(1),
      I1 => inlatch_dout(7),
      I2 => sig_controller_m_ram1_mux_sel(0),
      I3 => Averager_out(7),
      O => ram1_mux_dout_7_LogicTrst
    );
  ram1_mux_dout_7_LogicTrst2 : LUT4
    generic map(
      INIT => X"DC98"
    )
    port map (
      I0 => sig_controller_m_ram1_mux_sel(0),
      I1 => sig_controller_m_ram1_mux_sel(1),
      I2 => Averager_out(7),
      I3 => inlatch_dout(7),
      O => ram1_mux_dout_7_LogicTrst1_999
    );
  ram1_mux_dout_7_LogicTrst_f5 : MUXF5
    port map (
      I0 => ram1_mux_dout_7_LogicTrst1_999,
      I1 => ram1_mux_dout_7_LogicTrst,
      S => s_doutb0(7),
      O => ram1_mux_dout(7)
    );
  ram1_mux_dout_6_LogicTrst1 : LUT4
    generic map(
      INIT => X"FDF8"
    )
    port map (
      I0 => sig_controller_m_ram1_mux_sel(1),
      I1 => inlatch_dout(6),
      I2 => sig_controller_m_ram1_mux_sel(0),
      I3 => Averager_out(6),
      O => ram1_mux_dout_6_LogicTrst
    );
  ram1_mux_dout_6_LogicTrst2 : LUT4
    generic map(
      INIT => X"DC98"
    )
    port map (
      I0 => sig_controller_m_ram1_mux_sel(0),
      I1 => sig_controller_m_ram1_mux_sel(1),
      I2 => Averager_out(6),
      I3 => inlatch_dout(6),
      O => ram1_mux_dout_6_LogicTrst1_996
    );
  ram1_mux_dout_6_LogicTrst_f5 : MUXF5
    port map (
      I0 => ram1_mux_dout_6_LogicTrst1_996,
      I1 => ram1_mux_dout_6_LogicTrst,
      S => s_doutb0(6),
      O => ram1_mux_dout(6)
    );
  ram1_mux_dout_5_LogicTrst1 : LUT4
    generic map(
      INIT => X"FDF8"
    )
    port map (
      I0 => sig_controller_m_ram1_mux_sel(1),
      I1 => inlatch_dout(5),
      I2 => sig_controller_m_ram1_mux_sel(0),
      I3 => Averager_out(5),
      O => ram1_mux_dout_5_LogicTrst
    );
  ram1_mux_dout_5_LogicTrst2 : LUT4
    generic map(
      INIT => X"DC98"
    )
    port map (
      I0 => sig_controller_m_ram1_mux_sel(0),
      I1 => sig_controller_m_ram1_mux_sel(1),
      I2 => Averager_out(5),
      I3 => inlatch_dout(5),
      O => ram1_mux_dout_5_LogicTrst1_993
    );
  ram1_mux_dout_5_LogicTrst_f5 : MUXF5
    port map (
      I0 => ram1_mux_dout_5_LogicTrst1_993,
      I1 => ram1_mux_dout_5_LogicTrst,
      S => s_doutb0(5),
      O => ram1_mux_dout(5)
    );
  ram1_mux_dout_4_LogicTrst1 : LUT4
    generic map(
      INIT => X"FDF8"
    )
    port map (
      I0 => sig_controller_m_ram1_mux_sel(1),
      I1 => inlatch_dout(4),
      I2 => sig_controller_m_ram1_mux_sel(0),
      I3 => Averager_out(4),
      O => ram1_mux_dout_4_LogicTrst
    );
  ram1_mux_dout_4_LogicTrst2 : LUT4
    generic map(
      INIT => X"DC98"
    )
    port map (
      I0 => sig_controller_m_ram1_mux_sel(0),
      I1 => sig_controller_m_ram1_mux_sel(1),
      I2 => Averager_out(4),
      I3 => inlatch_dout(4),
      O => ram1_mux_dout_4_LogicTrst1_990
    );
  ram1_mux_dout_4_LogicTrst_f5 : MUXF5
    port map (
      I0 => ram1_mux_dout_4_LogicTrst1_990,
      I1 => ram1_mux_dout_4_LogicTrst,
      S => s_doutb0(4),
      O => ram1_mux_dout(4)
    );
  ram1_mux_dout_3_LogicTrst1 : LUT4
    generic map(
      INIT => X"FDF8"
    )
    port map (
      I0 => sig_controller_m_ram1_mux_sel(1),
      I1 => inlatch_dout(3),
      I2 => sig_controller_m_ram1_mux_sel(0),
      I3 => Averager_out(3),
      O => ram1_mux_dout_3_LogicTrst
    );
  ram1_mux_dout_3_LogicTrst2 : LUT4
    generic map(
      INIT => X"DC98"
    )
    port map (
      I0 => sig_controller_m_ram1_mux_sel(0),
      I1 => sig_controller_m_ram1_mux_sel(1),
      I2 => Averager_out(3),
      I3 => inlatch_dout(3),
      O => ram1_mux_dout_3_LogicTrst1_987
    );
  ram1_mux_dout_3_LogicTrst_f5 : MUXF5
    port map (
      I0 => ram1_mux_dout_3_LogicTrst1_987,
      I1 => ram1_mux_dout_3_LogicTrst,
      S => s_doutb0(3),
      O => ram1_mux_dout(3)
    );
  ram1_mux_dout_2_LogicTrst1 : LUT4
    generic map(
      INIT => X"FDF8"
    )
    port map (
      I0 => sig_controller_m_ram1_mux_sel(1),
      I1 => inlatch_dout(2),
      I2 => sig_controller_m_ram1_mux_sel(0),
      I3 => Averager_out(2),
      O => ram1_mux_dout_2_LogicTrst
    );
  ram1_mux_dout_2_LogicTrst2 : LUT4
    generic map(
      INIT => X"DC98"
    )
    port map (
      I0 => sig_controller_m_ram1_mux_sel(0),
      I1 => sig_controller_m_ram1_mux_sel(1),
      I2 => Averager_out(2),
      I3 => inlatch_dout(2),
      O => ram1_mux_dout_2_LogicTrst1_984
    );
  ram1_mux_dout_2_LogicTrst_f5 : MUXF5
    port map (
      I0 => ram1_mux_dout_2_LogicTrst1_984,
      I1 => ram1_mux_dout_2_LogicTrst,
      S => s_doutb0(2),
      O => ram1_mux_dout(2)
    );
  clk_gen_CNT0_s_CNT3_D_mux0004_13_1111 : LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      I0 => clk_gen_CNT0_s_CNT3_D(1),
      I1 => clk_gen_CNT0_s_mode_830,
      I2 => clk_gen_CNT0_s_CNT3_2(2),
      I3 => clk_gen_CNT0_N5,
      O => clk_gen_CNT0_s_CNT3_D_mux0004_13_111
    );
  clk_gen_CNT0_s_CNT3_D_mux0004_13_111_f5 : MUXF5
    port map (
      I0 => clk_gen_CNT0_s_CNT3_D_mux0004_13_1111_721,
      I1 => clk_gen_CNT0_s_CNT3_D_mux0004_13_111,
      S => m_reset_b_IBUF_961,
      O => clk_gen_CNT0_s_CNT3_D_mux0004_13_11_719
    );
  clk_gen_CNT0_s_CNT3_D_mux0004_13_1112_INV_0 : INV
    port map (
      I => clk_gen_CNT0_s_REG(0),
      O => clk_gen_CNT0_s_CNT3_D_mux0004_13_1111_721
    );
  sram_0 : sram2k
    port map (
      clka => m_TP_0_OBUF_917,
      ena => sig_controller_m_ena0_1395,
      clkb => m_TP_0_OBUF_917,
      enb => sig_controller_m_enb0_1402,
      wea(0) => sig_controller_m_wea0(0),
      addra(10) => sig_controller_rem0ctr_s_Cnt(10),
      addra(9) => sig_controller_rem0ctr_s_Cnt(9),
      addra(8) => sig_controller_rem0ctr_s_Cnt(8),
      addra(7) => sig_controller_rem0ctr_s_Cnt(7),
      addra(6) => sig_controller_rem0ctr_s_Cnt(6),
      addra(5) => sig_controller_rem0ctr_s_Cnt(5),
      addra(4) => sig_controller_rem0ctr_s_Cnt(4),
      addra(3) => sig_controller_rem0ctr_s_Cnt(3),
      addra(2) => sig_controller_rem0ctr_s_Cnt(2),
      addra(1) => sig_controller_rem0ctr_s_Cnt(1),
      addra(0) => sig_controller_rem0ctr_s_Cnt(0),
      dina(7) => inlatch_dout(7),
      dina(6) => inlatch_dout(6),
      dina(5) => inlatch_dout(5),
      dina(4) => inlatch_dout(4),
      dina(3) => inlatch_dout(3),
      dina(2) => inlatch_dout(2),
      dina(1) => inlatch_dout(1),
      dina(0) => inlatch_dout(0),
      addrb(10) => sig_controller_rem0ctr_s_Cnt(10),
      addrb(9) => sig_controller_rem0ctr_s_Cnt(9),
      addrb(8) => sig_controller_rem0ctr_s_Cnt(8),
      addrb(7) => sig_controller_rem0ctr_s_Cnt(7),
      addrb(6) => sig_controller_rem0ctr_s_Cnt(6),
      addrb(5) => sig_controller_rem0ctr_s_Cnt(5),
      addrb(4) => sig_controller_rem0ctr_s_Cnt(4),
      addrb(3) => sig_controller_rem0ctr_s_Cnt(3),
      addrb(2) => sig_controller_rem0ctr_s_Cnt(2),
      addrb(1) => sig_controller_rem0ctr_s_Cnt(1),
      addrb(0) => sig_controller_rem0ctr_s_Cnt(0),
      doutb(7) => s_doutb0(7),
      doutb(6) => s_doutb0(6),
      doutb(5) => s_doutb0(5),
      doutb(4) => s_doutb0(4),
      doutb(3) => s_doutb0(3),
      doutb(2) => s_doutb0(2),
      doutb(1) => s_doutb0(1),
      doutb(0) => s_doutb0(0)
    );
  sram_1 : sram2k
    port map (
      clka => m_TP_0_OBUF_917,
      ena => sig_controller_m_ena1_1398,
      clkb => m_TP_0_OBUF_917,
      enb => sig_controller_m_enb1_1405,
      wea(0) => sig_controller_m_wea1(0),
      addra(10) => sig_controller_rem1ctr_s_Cnt(10),
      addra(9) => sig_controller_rem1ctr_s_Cnt(9),
      addra(8) => sig_controller_rem1ctr_s_Cnt(8),
      addra(7) => sig_controller_rem1ctr_s_Cnt(7),
      addra(6) => sig_controller_rem1ctr_s_Cnt(6),
      addra(5) => sig_controller_rem1ctr_s_Cnt(5),
      addra(4) => sig_controller_rem1ctr_s_Cnt(4),
      addra(3) => sig_controller_rem1ctr_s_Cnt(3),
      addra(2) => sig_controller_rem1ctr_s_Cnt(2),
      addra(1) => sig_controller_rem1ctr_s_Cnt(1),
      addra(0) => sig_controller_rem1ctr_s_Cnt(0),
      dina(7) => ram1_mux_dout(7),
      dina(6) => ram1_mux_dout(6),
      dina(5) => ram1_mux_dout(5),
      dina(4) => ram1_mux_dout(4),
      dina(3) => ram1_mux_dout(3),
      dina(2) => ram1_mux_dout(2),
      dina(1) => ram1_mux_dout(1),
      dina(0) => ram1_mux_dout(0),
      addrb(10) => sig_controller_rem1ctr_s_Cnt(10),
      addrb(9) => sig_controller_rem1ctr_s_Cnt(9),
      addrb(8) => sig_controller_rem1ctr_s_Cnt(8),
      addrb(7) => sig_controller_rem1ctr_s_Cnt(7),
      addrb(6) => sig_controller_rem1ctr_s_Cnt(6),
      addrb(5) => sig_controller_rem1ctr_s_Cnt(5),
      addrb(4) => sig_controller_rem1ctr_s_Cnt(4),
      addrb(3) => sig_controller_rem1ctr_s_Cnt(3),
      addrb(2) => sig_controller_rem1ctr_s_Cnt(2),
      addrb(1) => sig_controller_rem1ctr_s_Cnt(1),
      addrb(0) => sig_controller_rem1ctr_s_Cnt(0),
      doutb(7) => s_doutb1(7),
      doutb(6) => s_doutb1(6),
      doutb(5) => s_doutb1(5),
      doutb(4) => s_doutb1(4),
      doutb(3) => s_doutb1(3),
      doutb(2) => s_doutb1(2),
      doutb(1) => s_doutb1(1),
      doutb(0) => s_doutb1(0)
    );
  sram_DA : sram2k
    port map (
      clka => m_TP_0_OBUF_917,
      ena => sig_controller_m_ena2_1400,
      clkb => m_TP_0_OBUF_917,
      enb => sig_controller_dac_ctr_s_enb2_1255,
      wea(0) => sig_controller_m_wea2(0),
      addra(10) => sig_controller_daremctr_s_Cnt(10),
      addra(9) => sig_controller_daremctr_s_Cnt(9),
      addra(8) => sig_controller_daremctr_s_Cnt(8),
      addra(7) => sig_controller_daremctr_s_Cnt(7),
      addra(6) => sig_controller_daremctr_s_Cnt(6),
      addra(5) => sig_controller_daremctr_s_Cnt(5),
      addra(4) => sig_controller_daremctr_s_Cnt(4),
      addra(3) => sig_controller_daremctr_s_Cnt(3),
      addra(2) => sig_controller_daremctr_s_Cnt(2),
      addra(1) => sig_controller_daremctr_s_Cnt(1),
      addra(0) => sig_controller_daremctr_s_Cnt(0),
      dina(7) => s_doutb1(7),
      dina(6) => s_doutb1(6),
      dina(5) => s_doutb1(5),
      dina(4) => s_doutb1(4),
      dina(3) => s_doutb1(3),
      dina(2) => s_doutb1(2),
      dina(1) => s_doutb1(1),
      dina(0) => s_doutb1(0),
      addrb(10) => sig_controller_dac_ctr_s_cnt(10),
      addrb(9) => sig_controller_dac_ctr_s_cnt(9),
      addrb(8) => sig_controller_dac_ctr_s_cnt(8),
      addrb(7) => sig_controller_dac_ctr_s_cnt(7),
      addrb(6) => sig_controller_dac_ctr_s_cnt(6),
      addrb(5) => sig_controller_dac_ctr_s_cnt(5),
      addrb(4) => sig_controller_dac_ctr_s_cnt(4),
      addrb(3) => sig_controller_dac_ctr_s_cnt(3),
      addrb(2) => sig_controller_dac_ctr_s_cnt(2),
      addrb(1) => sig_controller_dac_ctr_s_cnt(1),
      addrb(0) => sig_controller_dac_ctr_s_cnt(0),
      doutb(7) => s_doutb2(7),
      doutb(6) => s_doutb2(6),
      doutb(5) => s_doutb2(5),
      doutb(4) => s_doutb2(4),
      doutb(3) => s_doutb2(3),
      doutb(2) => s_doutb2(2),
      doutb(1) => s_doutb2(1),
      doutb(0) => s_doutb2(0)
    );
  sram_AD : sram2k
    port map (
      clka => m_TP_0_OBUF_917,
      ena => sig_controller_adc_ctr_s_ps(0),
      clkb => m_TP_1_OBUF_919,
      enb => sig_controller_m_enb3_1408,
      wea(0) => N1,
      addra(10) => sig_controller_adc_ctr_s_cnt(10),
      addra(9) => sig_controller_adc_ctr_s_cnt(9),
      addra(8) => sig_controller_adc_ctr_s_cnt(8),
      addra(7) => sig_controller_adc_ctr_s_cnt(7),
      addra(6) => sig_controller_adc_ctr_s_cnt(6),
      addra(5) => sig_controller_adc_ctr_s_cnt(5),
      addra(4) => sig_controller_adc_ctr_s_cnt(4),
      addra(3) => sig_controller_adc_ctr_s_cnt(3),
      addra(2) => sig_controller_adc_ctr_s_cnt(2),
      addra(1) => sig_controller_adc_ctr_s_cnt(1),
      addra(0) => sig_controller_adc_ctr_s_cnt(0),
      dina(7) => ad_latch_dout(7),
      dina(6) => ad_latch_dout(6),
      dina(5) => ad_latch_dout(5),
      dina(4) => ad_latch_dout(4),
      dina(3) => ad_latch_dout(3),
      dina(2) => ad_latch_dout(2),
      dina(1) => ad_latch_dout(1),
      dina(0) => ad_latch_dout(0),
      addrb(10) => sig_controller_adremctr_s_Cnt(10),
      addrb(9) => sig_controller_adremctr_s_Cnt(9),
      addrb(8) => sig_controller_adremctr_s_Cnt(8),
      addrb(7) => sig_controller_adremctr_s_Cnt(7),
      addrb(6) => sig_controller_adremctr_s_Cnt(6),
      addrb(5) => sig_controller_adremctr_s_Cnt(5),
      addrb(4) => sig_controller_adremctr_s_Cnt(4),
      addrb(3) => sig_controller_adremctr_s_Cnt(3),
      addrb(2) => sig_controller_adremctr_s_Cnt(2),
      addrb(1) => sig_controller_adremctr_s_Cnt(1),
      addrb(0) => sig_controller_adremctr_s_Cnt(0),
      doutb(7) => NLW_sram_AD_doutb_7_UNCONNECTED,
      doutb(6) => NLW_sram_AD_doutb_6_UNCONNECTED,
      doutb(5) => NLW_sram_AD_doutb_5_UNCONNECTED,
      doutb(4) => NLW_sram_AD_doutb_4_UNCONNECTED,
      doutb(3) => NLW_sram_AD_doutb_3_UNCONNECTED,
      doutb(2) => NLW_sram_AD_doutb_2_UNCONNECTED,
      doutb(1) => NLW_sram_AD_doutb_1_UNCONNECTED,
      doutb(0) => NLW_sram_AD_doutb_0_UNCONNECTED
    );

end Structure;

-- synthesis translate_on
