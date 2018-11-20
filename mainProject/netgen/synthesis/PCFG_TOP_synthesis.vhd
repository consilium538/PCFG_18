--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: PCFG_TOP_synthesis.vhd
-- /___/   /\     Timestamp: Tue Nov 20 18:38:35 2018
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
  signal N100 : STD_LOGIC; 
  signal N101 : STD_LOGIC; 
  signal N102 : STD_LOGIC; 
  signal N103 : STD_LOGIC; 
  signal N104 : STD_LOGIC; 
  signal N105 : STD_LOGIC; 
  signal N106 : STD_LOGIC; 
  signal N115 : STD_LOGIC; 
  signal N117 : STD_LOGIC; 
  signal N119 : STD_LOGIC; 
  signal N123 : STD_LOGIC; 
  signal N125 : STD_LOGIC; 
  signal N127 : STD_LOGIC; 
  signal N129 : STD_LOGIC; 
  signal N131 : STD_LOGIC; 
  signal N139 : STD_LOGIC; 
  signal N141 : STD_LOGIC; 
  signal N143 : STD_LOGIC; 
  signal N145 : STD_LOGIC; 
  signal N147 : STD_LOGIC; 
  signal N161 : STD_LOGIC; 
  signal N163 : STD_LOGIC; 
  signal N165 : STD_LOGIC; 
  signal N167 : STD_LOGIC; 
  signal N169 : STD_LOGIC; 
  signal N175 : STD_LOGIC; 
  signal N177 : STD_LOGIC; 
  signal N179 : STD_LOGIC; 
  signal N187 : STD_LOGIC; 
  signal N189 : STD_LOGIC; 
  signal N191 : STD_LOGIC; 
  signal N193 : STD_LOGIC; 
  signal N195 : STD_LOGIC; 
  signal N196 : STD_LOGIC; 
  signal N197 : STD_LOGIC; 
  signal N198 : STD_LOGIC; 
  signal N199 : STD_LOGIC; 
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
  signal N223 : STD_LOGIC; 
  signal N224 : STD_LOGIC; 
  signal N225 : STD_LOGIC; 
  signal N226 : STD_LOGIC; 
  signal N227 : STD_LOGIC; 
  signal N228 : STD_LOGIC; 
  signal N229 : STD_LOGIC; 
  signal N230 : STD_LOGIC; 
  signal N231 : STD_LOGIC; 
  signal N232 : STD_LOGIC; 
  signal N233 : STD_LOGIC; 
  signal N234 : STD_LOGIC; 
  signal N235 : STD_LOGIC; 
  signal N236 : STD_LOGIC; 
  signal N24 : STD_LOGIC; 
  signal N26 : STD_LOGIC; 
  signal N34 : STD_LOGIC; 
  signal N40 : STD_LOGIC; 
  signal N42 : STD_LOGIC; 
  signal N43 : STD_LOGIC; 
  signal N45 : STD_LOGIC; 
  signal N47 : STD_LOGIC; 
  signal N64 : STD_LOGIC; 
  signal N72 : STD_LOGIC; 
  signal N76 : STD_LOGIC; 
  signal N93 : STD_LOGIC; 
  signal N94 : STD_LOGIC; 
  signal N96 : STD_LOGIC; 
  signal N97 : STD_LOGIC; 
  signal N99 : STD_LOGIC; 
  signal addr_decode_m_mode_addr_0_52 : STD_LOGIC; 
  signal addr_decode_m_mode_addr_0_521_109 : STD_LOGIC; 
  signal addr_decode_m_mode_addr_0_6 : STD_LOGIC; 
  signal addr_decode_m_mode_addr_0_61_111 : STD_LOGIC; 
  signal addr_decode_m_mode_addr_0_81_112 : STD_LOGIC; 
  signal addr_decode_m_mode_addr_1_11_113 : STD_LOGIC; 
  signal addr_decode_m_mode_addr_1_12_114 : STD_LOGIC; 
  signal addr_decode_m_mode_addr_1_57_115 : STD_LOGIC; 
  signal addr_decode_m_mode_addr_2_18_116 : STD_LOGIC; 
  signal addr_decode_m_mode_addr_2_26_117 : STD_LOGIC; 
  signal addr_decode_m_mode_valid_or000029 : STD_LOGIC; 
  signal addr_decode_m_mode_valid_or0000291_119 : STD_LOGIC; 
  signal addr_decode_m_mode_valid_or000046 : STD_LOGIC; 
  signal addr_decode_m_mode_valid_or0000461_121 : STD_LOGIC; 
  signal avg_module_cns1_Mcompar_m_remainder_cmp_ge0000_lut_6_1_1 : STD_LOGIC; 
  signal b_pcs_addr : STD_LOGIC; 
  signal b_pcs_addr1_433 : STD_LOGIC; 
  signal b_reset_b : STD_LOGIC; 
  signal clk_gen_CNT0_Madd_s_CNT3_1_cy_10_rt_437 : STD_LOGIC; 
  signal clk_gen_CNT0_Madd_s_CNT3_1_cy_11_rt_439 : STD_LOGIC; 
  signal clk_gen_CNT0_Madd_s_CNT3_1_cy_12_rt_441 : STD_LOGIC; 
  signal clk_gen_CNT0_Madd_s_CNT3_1_cy_13_rt_443 : STD_LOGIC; 
  signal clk_gen_CNT0_Madd_s_CNT3_1_cy_14_rt_445 : STD_LOGIC; 
  signal clk_gen_CNT0_Madd_s_CNT3_1_cy_1_rt_447 : STD_LOGIC; 
  signal clk_gen_CNT0_Madd_s_CNT3_1_cy_2_rt_449 : STD_LOGIC; 
  signal clk_gen_CNT0_Madd_s_CNT3_1_cy_3_rt_451 : STD_LOGIC; 
  signal clk_gen_CNT0_Madd_s_CNT3_1_cy_4_rt_453 : STD_LOGIC; 
  signal clk_gen_CNT0_Madd_s_CNT3_1_cy_5_rt_455 : STD_LOGIC; 
  signal clk_gen_CNT0_Madd_s_CNT3_1_cy_6_rt_457 : STD_LOGIC; 
  signal clk_gen_CNT0_Madd_s_CNT3_1_cy_7_rt_459 : STD_LOGIC; 
  signal clk_gen_CNT0_Madd_s_CNT3_1_cy_8_rt_461 : STD_LOGIC; 
  signal clk_gen_CNT0_Madd_s_CNT3_1_cy_9_rt_463 : STD_LOGIC; 
  signal clk_gen_CNT0_Madd_s_CNT3_1_xor_15_rt_465 : STD_LOGIC; 
  signal clk_gen_CNT0_Mcount_s_CNT2_cy_0_rt_467 : STD_LOGIC; 
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
  signal clk_gen_CNT0_Msub_s_CNT3_2_cy_0_rt_514 : STD_LOGIC; 
  signal clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_cy_0_rt_545 : STD_LOGIC; 
  signal clk_gen_CNT0_Msub_s_CNT3_U_share0000_cy_0_rt_574 : STD_LOGIC; 
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
  signal clk_gen_CNT0_s_CNT2_cmp_eq000011_650 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT2_cmp_eq000024_651 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT2_cmp_eq000048_652 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT2_cmp_eq000061_653 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_cmp_eq0000 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_cmp_eq000020_715 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_cmp_eq000043_716 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_cmp_eq000056_717 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_cmp_eq00007_718 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_0_4_719 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_0_9_720 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_10_4_721 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_10_9_722 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_11_4_723 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_11_9_724 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_12_4_725 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_12_9_726 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_13_11_727 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_13_111 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_13_1111_729 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_13_20_730 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_14_12_731 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_14_40 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_14_401_733 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_14_59_734 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_14_68_735 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_1_4_736 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_1_9_737 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_2_4_738 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_2_9_739 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_3_4_740 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_3_9_741 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_4_4_742 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_4_9_743 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_5_4_744 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_5_9_745 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_6_4_746 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_6_9_747 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_7_17_748 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_7_9_749 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_8_4_750 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_8_9_751 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_9_4_752 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_9_9_753 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_UD_754 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_UD_cmp_eq0000 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_UD_cmp_eq000012_756 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_UD_cmp_eq000025_757 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_UD_cmp_eq000049_758 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_UD_cmp_eq000058_759 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_UD_mux0003 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_U_mux0000_10_114 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_U_mux0000_10_14_777 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_U_mux0000_11_114 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_U_mux0000_11_14_779 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_U_mux0000_12_114 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_U_mux0000_12_14_781 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_U_mux0000_13_114 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_U_mux0000_13_14_783 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_U_mux0000_14_114 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_U_mux0000_14_14_785 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_U_mux0000_15_114 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_U_mux0000_15_14_787 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_U_mux0000_1_114 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_U_mux0000_1_14_789 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_U_mux0000_2_120 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_U_mux0000_2_14_791 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_U_mux0000_3_114 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_U_mux0000_3_14_793 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_U_mux0000_4_114 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_U_mux0000_4_14_795 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_U_mux0000_5_114 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_U_mux0000_5_14_797 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_U_mux0000_6_114 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_U_mux0000_6_14_799 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_U_mux0000_7_114 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_U_mux0000_7_14_801 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_U_mux0000_8_11_802 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_U_mux0000_9_114 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_U_mux0000_9_14_804 : STD_LOGIC; 
  signal clk_gen_CNT0_s_REG_0_not0001 : STD_LOGIC; 
  signal clk_gen_CNT0_s_REG_10_not0001 : STD_LOGIC; 
  signal clk_gen_CNT0_s_mode_838 : STD_LOGIC; 
  signal clk_gen_CNT0_s_out2_or0000 : STD_LOGIC; 
  signal clk_gen_CNT0_s_out2_or000012_840 : STD_LOGIC; 
  signal clk_gen_CNT0_s_out2_or000025_841 : STD_LOGIC; 
  signal clk_gen_CNT0_s_out2_or000049_842 : STD_LOGIC; 
  signal clk_gen_CNT0_s_out2_or000058_843 : STD_LOGIC; 
  signal clk_gen_CNT0_s_wr : STD_LOGIC; 
  signal clk_gen_CNT0_s_wr1_845 : STD_LOGIC; 
  signal clk_gen_CNT0_s_wr2 : STD_LOGIC; 
  signal clk_gen_CNT0_s_wr_L_847 : STD_LOGIC; 
  signal clk_gen_CNT0_s_wr_M_848 : STD_LOGIC; 
  signal clk_gen_CNT0_s_wr_wait_849 : STD_LOGIC; 
  signal clk_gen_CNT0_s_wr_wait_mux0003 : STD_LOGIC; 
  signal clk_gen_s_addr_not0001 : STD_LOGIC; 
  signal clk_gen_s_cw0 : STD_LOGIC; 
  signal clk_gen_s_cw0_and000012_855 : STD_LOGIC; 
  signal clk_gen_s_cw0_and00009_856 : STD_LOGIC; 
  signal clk_gen_s_wr_b_865 : STD_LOGIC; 
  signal clk_gen_s_wr_b_mux0000 : STD_LOGIC; 
  signal clk_gen_s_wr_b_mux00006 : STD_LOGIC; 
  signal clk_gen_s_wr_b_mux000061_868 : STD_LOGIC; 
  signal clk_gen_s_wr_b_mux000062_869 : STD_LOGIC; 
  signal clk_gen_state_FSM_FFd1_870 : STD_LOGIC; 
  signal clk_gen_state_FSM_FFd1_In : STD_LOGIC; 
  signal clk_gen_state_FSM_FFd2_872 : STD_LOGIC; 
  signal clk_gen_state_FSM_FFd2_In1 : STD_LOGIC; 
  signal clk_gen_state_FSM_FFd3_874 : STD_LOGIC; 
  signal clk_gen_state_FSM_FFd4_875 : STD_LOGIC; 
  signal clk_gen_state_FSM_FFd5_876 : STD_LOGIC; 
  signal clk_gen_state_FSM_FFd6_877 : STD_LOGIC; 
  signal clk_gen_state_FSM_FFd6_In : STD_LOGIC; 
  signal m_ADC_data_0_IBUF_904 : STD_LOGIC; 
  signal m_ADC_data_1_IBUF_905 : STD_LOGIC; 
  signal m_ADC_data_2_IBUF_906 : STD_LOGIC; 
  signal m_ADC_data_3_IBUF_907 : STD_LOGIC; 
  signal m_ADC_data_4_IBUF_908 : STD_LOGIC; 
  signal m_ADC_data_5_IBUF_909 : STD_LOGIC; 
  signal m_ADC_data_6_IBUF_910 : STD_LOGIC; 
  signal m_ADC_data_7_IBUF_911 : STD_LOGIC; 
  signal m_OE_b_IBUF_922 : STD_LOGIC; 
  signal m_TP_0_OBUF_925 : STD_LOGIC; 
  signal m_TP_0_OBUF1 : STD_LOGIC; 
  signal m_TP_1_OBUF_927 : STD_LOGIC; 
  signal m_TP_1_OBUF1 : STD_LOGIC; 
  signal m_address_0_IBUF_938 : STD_LOGIC; 
  signal m_address_1_IBUF_939 : STD_LOGIC; 
  signal m_address_2_IBUF_940 : STD_LOGIC; 
  signal m_address_3_IBUF_941 : STD_LOGIC; 
  signal m_address_4_IBUF_942 : STD_LOGIC; 
  signal m_address_5_IBUF_943 : STD_LOGIC; 
  signal m_address_6_IBUF_944 : STD_LOGIC; 
  signal m_address_7_IBUF_945 : STD_LOGIC; 
  signal m_address_8_IBUF_946 : STD_LOGIC; 
  signal m_cmd_data_IBUF_949 : STD_LOGIC; 
  signal m_ren_IBUF_967 : STD_LOGIC; 
  signal m_reset_b_IBUF_969 : STD_LOGIC; 
  signal m_wen_IBUF_971 : STD_LOGIC; 
  signal ram1_mux_dout_2_LogicTrst : STD_LOGIC; 
  signal ram1_mux_dout_2_LogicTrst1_992 : STD_LOGIC; 
  signal ram1_mux_dout_3_LogicTrst : STD_LOGIC; 
  signal ram1_mux_dout_3_LogicTrst1_995 : STD_LOGIC; 
  signal ram1_mux_dout_4_LogicTrst : STD_LOGIC; 
  signal ram1_mux_dout_4_LogicTrst1_998 : STD_LOGIC; 
  signal ram1_mux_dout_5_LogicTrst : STD_LOGIC; 
  signal ram1_mux_dout_5_LogicTrst1_1001 : STD_LOGIC; 
  signal ram1_mux_dout_6_LogicTrst : STD_LOGIC; 
  signal ram1_mux_dout_6_LogicTrst1_1004 : STD_LOGIC; 
  signal ram1_mux_dout_7_LogicTrst : STD_LOGIC; 
  signal ram1_mux_dout_7_LogicTrst1_1007 : STD_LOGIC; 
  signal s_OE_b_1008 : STD_LOGIC; 
  signal s_cmd_data_1018 : STD_LOGIC; 
  signal s_dout_en_inv : STD_LOGIC; 
  signal s_mode_valid : STD_LOGIC; 
  signal s_out_mux_sel : STD_LOGIC; 
  signal s_outlatch_en : STD_LOGIC; 
  signal s_ren_1050 : STD_LOGIC; 
  signal s_wen_1051 : STD_LOGIC; 
  signal sig_controller_N1 : STD_LOGIC; 
  signal sig_controller_N13 : STD_LOGIC; 
  signal sig_controller_N131 : STD_LOGIC; 
  signal sig_controller_N14 : STD_LOGIC; 
  signal sig_controller_N211 : STD_LOGIC; 
  signal sig_controller_N4 : STD_LOGIC; 
  signal sig_controller_N5 : STD_LOGIC; 
  signal sig_controller_adc_ctr_Mcount_s_cnt_cy_1_rt_1072 : STD_LOGIC; 
  signal sig_controller_adc_ctr_Mcount_s_cnt_cy_2_rt_1074 : STD_LOGIC; 
  signal sig_controller_adc_ctr_Mcount_s_cnt_cy_3_rt_1076 : STD_LOGIC; 
  signal sig_controller_adc_ctr_Mcount_s_cnt_cy_4_rt_1078 : STD_LOGIC; 
  signal sig_controller_adc_ctr_Mcount_s_cnt_cy_5_rt_1080 : STD_LOGIC; 
  signal sig_controller_adc_ctr_Mcount_s_cnt_cy_6_rt_1082 : STD_LOGIC; 
  signal sig_controller_adc_ctr_Mcount_s_cnt_cy_7_rt_1084 : STD_LOGIC; 
  signal sig_controller_adc_ctr_Mcount_s_cnt_cy_8_rt_1086 : STD_LOGIC; 
  signal sig_controller_adc_ctr_Mcount_s_cnt_cy_9_rt_1088 : STD_LOGIC; 
  signal sig_controller_adc_ctr_Mcount_s_cnt_xor_10_rt_1090 : STD_LOGIC; 
  signal sig_controller_adc_ctr_s_cnt_not0001 : STD_LOGIC; 
  signal sig_controller_adc_ctr_s_ns : STD_LOGIC; 
  signal sig_controller_adremctr_Mcount_s_Cnt_cy_1_rt_1107 : STD_LOGIC; 
  signal sig_controller_adremctr_Mcount_s_Cnt_cy_2_rt_1109 : STD_LOGIC; 
  signal sig_controller_adremctr_Mcount_s_Cnt_cy_3_rt_1111 : STD_LOGIC; 
  signal sig_controller_adremctr_Mcount_s_Cnt_cy_4_rt_1113 : STD_LOGIC; 
  signal sig_controller_adremctr_Mcount_s_Cnt_cy_5_rt_1115 : STD_LOGIC; 
  signal sig_controller_adremctr_Mcount_s_Cnt_cy_6_rt_1117 : STD_LOGIC; 
  signal sig_controller_adremctr_Mcount_s_Cnt_cy_7_rt_1119 : STD_LOGIC; 
  signal sig_controller_adremctr_Mcount_s_Cnt_cy_8_rt_1121 : STD_LOGIC; 
  signal sig_controller_adremctr_Mcount_s_Cnt_cy_9_rt_1123 : STD_LOGIC; 
  signal sig_controller_adremctr_N10 : STD_LOGIC; 
  signal sig_controller_adremctr_N111 : STD_LOGIC; 
  signal sig_controller_adremctr_N12 : STD_LOGIC; 
  signal sig_controller_adremctr_N2 : STD_LOGIC; 
  signal sig_controller_adremctr_N5 : STD_LOGIC; 
  signal sig_controller_adremctr_N8 : STD_LOGIC; 
  signal sig_controller_adremctr_s_Reg_mux0000_1_1_1167 : STD_LOGIC; 
  signal sig_controller_adremctr_s_Reg_mux0000_1_2_1168 : STD_LOGIC; 
  signal sig_controller_adremctr_s_Reg_mux0000_2_22 : STD_LOGIC; 
  signal sig_controller_adremctr_s_Reg_mux0000_2_221_1171 : STD_LOGIC; 
  signal sig_controller_adremctr_s_Reg_mux0000_3_11_1173 : STD_LOGIC; 
  signal sig_controller_adremctr_s_Reg_mux0000_5_22_SW0 : STD_LOGIC; 
  signal sig_controller_adremctr_s_Reg_mux0000_5_22_SW01_1177 : STD_LOGIC; 
  signal sig_controller_adremctr_s_Reg_mux0000_6_11_1179 : STD_LOGIC; 
  signal sig_controller_adremctr_s_Reg_mux0000_7_16 : STD_LOGIC; 
  signal sig_controller_adremctr_s_Reg_mux0000_7_161_1182 : STD_LOGIC; 
  signal sig_controller_adremctr_s_Reg_mux0000_7_2_1183 : STD_LOGIC; 
  signal sig_controller_adremctr_s_Reg_mux0000_8_1_1185 : STD_LOGIC; 
  signal sig_controller_adremctr_s_Reg_mux0000_8_2_1186 : STD_LOGIC; 
  signal sig_controller_adremctr_s_Reg_not0001 : STD_LOGIC; 
  signal sig_controller_dac_ctr_Mcount_s_cnt_cy_1_rt_1213 : STD_LOGIC; 
  signal sig_controller_dac_ctr_Mcount_s_cnt_cy_2_rt_1215 : STD_LOGIC; 
  signal sig_controller_dac_ctr_Mcount_s_cnt_cy_3_rt_1217 : STD_LOGIC; 
  signal sig_controller_dac_ctr_Mcount_s_cnt_cy_4_rt_1219 : STD_LOGIC; 
  signal sig_controller_dac_ctr_Mcount_s_cnt_cy_5_rt_1221 : STD_LOGIC; 
  signal sig_controller_dac_ctr_Mcount_s_cnt_cy_6_rt_1223 : STD_LOGIC; 
  signal sig_controller_dac_ctr_Mcount_s_cnt_cy_7_rt_1225 : STD_LOGIC; 
  signal sig_controller_dac_ctr_Mcount_s_cnt_cy_8_rt_1227 : STD_LOGIC; 
  signal sig_controller_dac_ctr_Mcount_s_cnt_cy_9_rt_1229 : STD_LOGIC; 
  signal sig_controller_dac_ctr_Mcount_s_cnt_xor_10_rt_1231 : STD_LOGIC; 
  signal sig_controller_dac_ctr_Msub_s_reg_sub0000_cy_7_14 : STD_LOGIC; 
  signal sig_controller_dac_ctr_Msub_s_reg_sub0000_cy_7_19_1233 : STD_LOGIC; 
  signal sig_controller_dac_ctr_Msub_s_reg_sub0000_xor_10_11 : STD_LOGIC; 
  signal sig_controller_dac_ctr_Msub_s_reg_sub0000_xor_7_1 : STD_LOGIC; 
  signal sig_controller_dac_ctr_Msub_s_reg_sub0000_xor_7_11_1236 : STD_LOGIC; 
  signal sig_controller_dac_ctr_s_cnt_not0001 : STD_LOGIC; 
  signal sig_controller_dac_ctr_s_enb2_1260 : STD_LOGIC; 
  signal sig_controller_dac_ctr_s_ps_FSM_FFd1_1261 : STD_LOGIC; 
  signal sig_controller_dac_ctr_s_ps_FSM_FFd2_1262 : STD_LOGIC; 
  signal sig_controller_dac_ctr_s_ps_FSM_FFd2_In : STD_LOGIC; 
  signal sig_controller_dac_ctr_s_ps_cmp_eq0001 : STD_LOGIC; 
  signal sig_controller_daremctr_Mcount_s_Cnt_cy_1_rt_1310 : STD_LOGIC; 
  signal sig_controller_daremctr_Mcount_s_Cnt_cy_2_rt_1312 : STD_LOGIC; 
  signal sig_controller_daremctr_Mcount_s_Cnt_cy_3_rt_1314 : STD_LOGIC; 
  signal sig_controller_daremctr_Mcount_s_Cnt_cy_4_rt_1316 : STD_LOGIC; 
  signal sig_controller_daremctr_Mcount_s_Cnt_cy_5_rt_1318 : STD_LOGIC; 
  signal sig_controller_daremctr_Mcount_s_Cnt_cy_6_rt_1320 : STD_LOGIC; 
  signal sig_controller_daremctr_Mcount_s_Cnt_cy_7_rt_1322 : STD_LOGIC; 
  signal sig_controller_daremctr_Mcount_s_Cnt_cy_8_rt_1324 : STD_LOGIC; 
  signal sig_controller_daremctr_Mcount_s_Cnt_cy_9_rt_1326 : STD_LOGIC; 
  signal sig_controller_daremctr_Mcount_s_Cnt_xor_10_rt_1328 : STD_LOGIC; 
  signal sig_controller_daremctr_N10 : STD_LOGIC; 
  signal sig_controller_daremctr_N111 : STD_LOGIC; 
  signal sig_controller_daremctr_N12 : STD_LOGIC; 
  signal sig_controller_daremctr_N17 : STD_LOGIC; 
  signal sig_controller_daremctr_N2 : STD_LOGIC; 
  signal sig_controller_daremctr_N5 : STD_LOGIC; 
  signal sig_controller_daremctr_N8 : STD_LOGIC; 
  signal sig_controller_daremctr_s_Reg_mux0000_10_16 : STD_LOGIC; 
  signal sig_controller_daremctr_s_Reg_mux0000_10_161_1372 : STD_LOGIC; 
  signal sig_controller_daremctr_s_Reg_mux0000_1_1_1374 : STD_LOGIC; 
  signal sig_controller_daremctr_s_Reg_mux0000_1_2_1375 : STD_LOGIC; 
  signal sig_controller_daremctr_s_Reg_mux0000_2_22_SW0 : STD_LOGIC; 
  signal sig_controller_daremctr_s_Reg_mux0000_2_22_SW01_1378 : STD_LOGIC; 
  signal sig_controller_daremctr_s_Reg_mux0000_3_11_1380 : STD_LOGIC; 
  signal sig_controller_daremctr_s_Reg_mux0000_5_22_SW0 : STD_LOGIC; 
  signal sig_controller_daremctr_s_Reg_mux0000_5_22_SW01_1384 : STD_LOGIC; 
  signal sig_controller_daremctr_s_Reg_mux0000_6_11_1386 : STD_LOGIC; 
  signal sig_controller_daremctr_s_Reg_mux0000_7_16 : STD_LOGIC; 
  signal sig_controller_daremctr_s_Reg_mux0000_7_161_1389 : STD_LOGIC; 
  signal sig_controller_daremctr_s_Reg_mux0000_7_2_1390 : STD_LOGIC; 
  signal sig_controller_daremctr_s_Reg_mux0000_8_22_SW0 : STD_LOGIC; 
  signal sig_controller_daremctr_s_Reg_mux0000_8_22_SW01_1393 : STD_LOGIC; 
  signal sig_controller_daremctr_s_Reg_not0001 : STD_LOGIC; 
  signal sig_controller_rem0ctr_Mcount_s_Cnt_cy_1_rt_1419 : STD_LOGIC; 
  signal sig_controller_rem0ctr_Mcount_s_Cnt_cy_2_rt_1421 : STD_LOGIC; 
  signal sig_controller_rem0ctr_Mcount_s_Cnt_cy_3_rt_1423 : STD_LOGIC; 
  signal sig_controller_rem0ctr_Mcount_s_Cnt_cy_4_rt_1425 : STD_LOGIC; 
  signal sig_controller_rem0ctr_Mcount_s_Cnt_cy_5_rt_1427 : STD_LOGIC; 
  signal sig_controller_rem0ctr_Mcount_s_Cnt_cy_6_rt_1429 : STD_LOGIC; 
  signal sig_controller_rem0ctr_Mcount_s_Cnt_cy_7_rt_1431 : STD_LOGIC; 
  signal sig_controller_rem0ctr_Mcount_s_Cnt_cy_8_rt_1433 : STD_LOGIC; 
  signal sig_controller_rem0ctr_Mcount_s_Cnt_cy_9_rt_1435 : STD_LOGIC; 
  signal sig_controller_rem0ctr_Mcount_s_Cnt_xor_10_rt_1437 : STD_LOGIC; 
  signal sig_controller_rem0ctr_N10 : STD_LOGIC; 
  signal sig_controller_rem0ctr_N111 : STD_LOGIC; 
  signal sig_controller_rem0ctr_N12 : STD_LOGIC; 
  signal sig_controller_rem0ctr_N17 : STD_LOGIC; 
  signal sig_controller_rem0ctr_N2 : STD_LOGIC; 
  signal sig_controller_rem0ctr_N5 : STD_LOGIC; 
  signal sig_controller_rem0ctr_N8 : STD_LOGIC; 
  signal sig_controller_rem0ctr_s_Reg_0_1_1468 : STD_LOGIC; 
  signal sig_controller_rem0ctr_s_Reg_1_1_1471 : STD_LOGIC; 
  signal sig_controller_rem0ctr_s_Reg_2_1_1473 : STD_LOGIC; 
  signal sig_controller_rem0ctr_s_Reg_3_1_1475 : STD_LOGIC; 
  signal sig_controller_rem0ctr_s_Reg_4_1_1477 : STD_LOGIC; 
  signal sig_controller_rem0ctr_s_Reg_5_1_1479 : STD_LOGIC; 
  signal sig_controller_rem0ctr_s_Reg_6_1_1481 : STD_LOGIC; 
  signal sig_controller_rem0ctr_s_Reg_6_2_1482 : STD_LOGIC; 
  signal sig_controller_rem0ctr_s_Reg_mux0000_10_16 : STD_LOGIC; 
  signal sig_controller_rem0ctr_s_Reg_mux0000_10_161_1489 : STD_LOGIC; 
  signal sig_controller_rem0ctr_s_Reg_mux0000_1_1_1491 : STD_LOGIC; 
  signal sig_controller_rem0ctr_s_Reg_mux0000_1_2_1492 : STD_LOGIC; 
  signal sig_controller_rem0ctr_s_Reg_mux0000_2_22 : STD_LOGIC; 
  signal sig_controller_rem0ctr_s_Reg_mux0000_2_221_1495 : STD_LOGIC; 
  signal sig_controller_rem0ctr_s_Reg_mux0000_3_11_1497 : STD_LOGIC; 
  signal sig_controller_rem0ctr_s_Reg_mux0000_5_22_SW0 : STD_LOGIC; 
  signal sig_controller_rem0ctr_s_Reg_mux0000_5_22_SW01_1501 : STD_LOGIC; 
  signal sig_controller_rem0ctr_s_Reg_mux0000_6_11_1503 : STD_LOGIC; 
  signal sig_controller_rem0ctr_s_Reg_mux0000_7_16 : STD_LOGIC; 
  signal sig_controller_rem0ctr_s_Reg_mux0000_7_161_1506 : STD_LOGIC; 
  signal sig_controller_rem0ctr_s_Reg_mux0000_7_2_1507 : STD_LOGIC; 
  signal sig_controller_rem0ctr_s_Reg_mux0000_8_22_SW0 : STD_LOGIC; 
  signal sig_controller_rem0ctr_s_Reg_mux0000_8_22_SW01_1510 : STD_LOGIC; 
  signal sig_controller_rem0ctr_s_Reg_not0001 : STD_LOGIC; 
  signal sig_controller_rem1ctr_Mcount_s_Cnt_cy_1_rt_1536 : STD_LOGIC; 
  signal sig_controller_rem1ctr_Mcount_s_Cnt_cy_2_rt_1538 : STD_LOGIC; 
  signal sig_controller_rem1ctr_Mcount_s_Cnt_cy_3_rt_1540 : STD_LOGIC; 
  signal sig_controller_rem1ctr_Mcount_s_Cnt_cy_4_rt_1542 : STD_LOGIC; 
  signal sig_controller_rem1ctr_Mcount_s_Cnt_cy_5_rt_1544 : STD_LOGIC; 
  signal sig_controller_rem1ctr_Mcount_s_Cnt_cy_6_rt_1546 : STD_LOGIC; 
  signal sig_controller_rem1ctr_Mcount_s_Cnt_cy_7_rt_1548 : STD_LOGIC; 
  signal sig_controller_rem1ctr_Mcount_s_Cnt_cy_8_rt_1550 : STD_LOGIC; 
  signal sig_controller_rem1ctr_Mcount_s_Cnt_cy_9_rt_1552 : STD_LOGIC; 
  signal sig_controller_rem1ctr_Mcount_s_Cnt_xor_10_rt_1554 : STD_LOGIC; 
  signal sig_controller_rem1ctr_N10 : STD_LOGIC; 
  signal sig_controller_rem1ctr_N111 : STD_LOGIC; 
  signal sig_controller_rem1ctr_N12 : STD_LOGIC; 
  signal sig_controller_rem1ctr_N17 : STD_LOGIC; 
  signal sig_controller_rem1ctr_N2 : STD_LOGIC; 
  signal sig_controller_rem1ctr_N5 : STD_LOGIC; 
  signal sig_controller_rem1ctr_N8 : STD_LOGIC; 
  signal sig_controller_rem1ctr_s_Reg_mux0000_10_16 : STD_LOGIC; 
  signal sig_controller_rem1ctr_s_Reg_mux0000_10_161_1598 : STD_LOGIC; 
  signal sig_controller_rem1ctr_s_Reg_mux0000_1_1_1600 : STD_LOGIC; 
  signal sig_controller_rem1ctr_s_Reg_mux0000_1_2_1601 : STD_LOGIC; 
  signal sig_controller_rem1ctr_s_Reg_mux0000_2_22 : STD_LOGIC; 
  signal sig_controller_rem1ctr_s_Reg_mux0000_2_221_1604 : STD_LOGIC; 
  signal sig_controller_rem1ctr_s_Reg_mux0000_3_11_1606 : STD_LOGIC; 
  signal sig_controller_rem1ctr_s_Reg_mux0000_5_22_SW0 : STD_LOGIC; 
  signal sig_controller_rem1ctr_s_Reg_mux0000_5_22_SW01_1610 : STD_LOGIC; 
  signal sig_controller_rem1ctr_s_Reg_mux0000_6_11_1612 : STD_LOGIC; 
  signal sig_controller_rem1ctr_s_Reg_mux0000_7_16 : STD_LOGIC; 
  signal sig_controller_rem1ctr_s_Reg_mux0000_7_161_1615 : STD_LOGIC; 
  signal sig_controller_rem1ctr_s_Reg_mux0000_7_2_1616 : STD_LOGIC; 
  signal sig_controller_rem1ctr_s_Reg_mux0000_8_22_SW0 : STD_LOGIC; 
  signal sig_controller_rem1ctr_s_Reg_mux0000_8_22_SW01_1619 : STD_LOGIC; 
  signal sig_controller_rem1ctr_s_Reg_not0001 : STD_LOGIC; 
  signal sig_controller_s_adc_start_1622 : STD_LOGIC; 
  signal sig_controller_s_adc_stop_1623 : STD_LOGIC; 
  signal sig_controller_s_adc_stop_or0000 : STD_LOGIC; 
  signal sig_controller_s_clr0_1625 : STD_LOGIC; 
  signal sig_controller_s_clr0_mux0009 : STD_LOGIC; 
  signal sig_controller_s_clr0_mux00091_1627 : STD_LOGIC; 
  signal sig_controller_s_clr0_mux00092_1628 : STD_LOGIC; 
  signal sig_controller_s_clr0_not0001_1629 : STD_LOGIC; 
  signal sig_controller_s_clr1_1630 : STD_LOGIC; 
  signal sig_controller_s_clr1_mux0009_1631 : STD_LOGIC; 
  signal sig_controller_s_clr1_not0001 : STD_LOGIC; 
  signal sig_controller_s_clr1_not00017_1633 : STD_LOGIC; 
  signal sig_controller_s_clrad_1634 : STD_LOGIC; 
  signal sig_controller_s_clrad_mux0000 : STD_LOGIC; 
  signal sig_controller_s_clrad_or0000 : STD_LOGIC; 
  signal sig_controller_s_clrda_1637 : STD_LOGIC; 
  signal sig_controller_s_clrda_mux0000 : STD_LOGIC; 
  signal sig_controller_s_clrda_or0000 : STD_LOGIC; 
  signal sig_controller_s_comp0 : STD_LOGIC; 
  signal sig_controller_s_comp1 : STD_LOGIC; 
  signal sig_controller_s_comp2 : STD_LOGIC; 
  signal sig_controller_s_da_latch_en_1643 : STD_LOGIC; 
  signal sig_controller_s_da_latch_en_or0000 : STD_LOGIC; 
  signal sig_controller_s_dac_start_1645 : STD_LOGIC; 
  signal sig_controller_s_dac_start_or0000 : STD_LOGIC; 
  signal sig_controller_s_dac_stop_1647 : STD_LOGIC; 
  signal sig_controller_s_dac_stop_mux0000 : STD_LOGIC; 
  signal sig_controller_s_dac_stop_or0000 : STD_LOGIC; 
  signal sig_controller_s_dac_stop_or00001_1650 : STD_LOGIC; 
  signal sig_controller_s_dout_en_1651 : STD_LOGIC; 
  signal sig_controller_s_dout_en_or0000 : STD_LOGIC; 
  signal sig_controller_s_ena0_1653 : STD_LOGIC; 
  signal sig_controller_s_ena0_mux0000 : STD_LOGIC; 
  signal sig_controller_s_ena0_or0000_1655 : STD_LOGIC; 
  signal sig_controller_s_ena1_1656 : STD_LOGIC; 
  signal sig_controller_s_ena1_or0000 : STD_LOGIC; 
  signal sig_controller_s_ena2_1658 : STD_LOGIC; 
  signal sig_controller_s_ena2_or0000 : STD_LOGIC; 
  signal sig_controller_s_enb0_1660 : STD_LOGIC; 
  signal sig_controller_s_enb0_mux0000 : STD_LOGIC; 
  signal sig_controller_s_enb0_or0000 : STD_LOGIC; 
  signal sig_controller_s_enb1_1663 : STD_LOGIC; 
  signal sig_controller_s_enb1_mux0000 : STD_LOGIC; 
  signal sig_controller_s_enb1_or0000 : STD_LOGIC; 
  signal sig_controller_s_enb3_1666 : STD_LOGIC; 
  signal sig_controller_s_enb3_or0000 : STD_LOGIC; 
  signal sig_controller_s_enp0_1668 : STD_LOGIC; 
  signal sig_controller_s_enp0_mux0000_1669 : STD_LOGIC; 
  signal sig_controller_s_enp0_not0001 : STD_LOGIC; 
  signal sig_controller_s_enp0_not000116_1671 : STD_LOGIC; 
  signal sig_controller_s_enp0_not000125 : STD_LOGIC; 
  signal sig_controller_s_enp1_1673 : STD_LOGIC; 
  signal sig_controller_s_enp1_mux0000_1674 : STD_LOGIC; 
  signal sig_controller_s_enp1_not0001 : STD_LOGIC; 
  signal sig_controller_s_enp1_not000143 : STD_LOGIC; 
  signal sig_controller_s_enp1_not0001431_1677 : STD_LOGIC; 
  signal sig_controller_s_enpad_1678 : STD_LOGIC; 
  signal sig_controller_s_enpad_or0000 : STD_LOGIC; 
  signal sig_controller_s_enpda_1680 : STD_LOGIC; 
  signal sig_controller_s_enpda_or0000 : STD_LOGIC; 
  signal sig_controller_s_ram1_mux_sel_and0003 : STD_LOGIC; 
  signal sig_controller_s_ram1_mux_sel_not0001_1687 : STD_LOGIC; 
  signal sig_controller_s_sel0_mux0002_1_1 : STD_LOGIC; 
  signal sig_controller_s_sel0_not0001 : STD_LOGIC; 
  signal sig_controller_s_sel0_not000125_1693 : STD_LOGIC; 
  signal sig_controller_s_sel0_not000152_1694 : STD_LOGIC; 
  signal sig_controller_s_sel0_not000164_1695 : STD_LOGIC; 
  signal sig_controller_s_sel1_not0001 : STD_LOGIC; 
  signal sig_controller_s_sel1_not000117_1701 : STD_LOGIC; 
  signal sig_controller_s_sel1_not000155_1702 : STD_LOGIC; 
  signal sig_controller_s_sel1_not000155_SW0 : STD_LOGIC; 
  signal sig_controller_s_sel1_not000155_SW01_1704 : STD_LOGIC; 
  signal sig_controller_s_selad_or0000 : STD_LOGIC; 
  signal sig_controller_s_selda_or0000 : STD_LOGIC; 
  signal sig_controller_s_wea0_0_and0000 : STD_LOGIC; 
  signal sig_controller_s_wea0_0_mux0000 : STD_LOGIC; 
  signal sig_controller_s_wea0_0_not0001_1714 : STD_LOGIC; 
  signal sig_controller_s_wea1_0_mux0000 : STD_LOGIC; 
  signal sig_controller_s_wea1_0_not0001_1717 : STD_LOGIC; 
  signal sig_controller_t_prevmode_not0001_1723 : STD_LOGIC; 
  signal sig_controller_t_ps_FSM_FFd1_1724 : STD_LOGIC; 
  signal sig_controller_t_ps_FSM_FFd10_1725 : STD_LOGIC; 
  signal sig_controller_t_ps_FSM_FFd10_In1 : STD_LOGIC; 
  signal sig_controller_t_ps_FSM_FFd11_1727 : STD_LOGIC; 
  signal sig_controller_t_ps_FSM_FFd11_In : STD_LOGIC; 
  signal sig_controller_t_ps_FSM_FFd12_1729 : STD_LOGIC; 
  signal sig_controller_t_ps_FSM_FFd12_In1_1730 : STD_LOGIC; 
  signal sig_controller_t_ps_FSM_FFd13_1731 : STD_LOGIC; 
  signal sig_controller_t_ps_FSM_FFd13_In1 : STD_LOGIC; 
  signal sig_controller_t_ps_FSM_FFd14_1733 : STD_LOGIC; 
  signal sig_controller_t_ps_FSM_FFd14_In_1734 : STD_LOGIC; 
  signal sig_controller_t_ps_FSM_FFd15_1735 : STD_LOGIC; 
  signal sig_controller_t_ps_FSM_FFd15_In1 : STD_LOGIC; 
  signal sig_controller_t_ps_FSM_FFd16_1737 : STD_LOGIC; 
  signal sig_controller_t_ps_FSM_FFd16_In1 : STD_LOGIC; 
  signal sig_controller_t_ps_FSM_FFd17_1739 : STD_LOGIC; 
  signal sig_controller_t_ps_FSM_FFd17_In : STD_LOGIC; 
  signal sig_controller_t_ps_FSM_FFd18_1741 : STD_LOGIC; 
  signal sig_controller_t_ps_FSM_FFd18_In : STD_LOGIC; 
  signal sig_controller_t_ps_FSM_FFd19_1743 : STD_LOGIC; 
  signal sig_controller_t_ps_FSM_FFd19_In : STD_LOGIC; 
  signal sig_controller_t_ps_FSM_FFd2_1745 : STD_LOGIC; 
  signal sig_controller_t_ps_FSM_FFd20_1746 : STD_LOGIC; 
  signal sig_controller_t_ps_FSM_FFd20_In18_1747 : STD_LOGIC; 
  signal sig_controller_t_ps_FSM_FFd20_In32_1748 : STD_LOGIC; 
  signal sig_controller_t_ps_FSM_FFd20_In58 : STD_LOGIC; 
  signal sig_controller_t_ps_FSM_FFd20_In6 : STD_LOGIC; 
  signal sig_controller_t_ps_FSM_FFd20_In61_1751 : STD_LOGIC; 
  signal sig_controller_t_ps_FSM_FFd20_In62_1752 : STD_LOGIC; 
  signal sig_controller_t_ps_FSM_FFd3_1753 : STD_LOGIC; 
  signal sig_controller_t_ps_FSM_FFd3_In : STD_LOGIC; 
  signal sig_controller_t_ps_FSM_FFd4_1755 : STD_LOGIC; 
  signal sig_controller_t_ps_FSM_FFd5_1756 : STD_LOGIC; 
  signal sig_controller_t_ps_FSM_FFd6_1757 : STD_LOGIC; 
  signal sig_controller_t_ps_FSM_FFd7_1758 : STD_LOGIC; 
  signal sig_controller_t_ps_FSM_FFd8_1759 : STD_LOGIC; 
  signal sig_controller_t_ps_FSM_FFd9_1760 : STD_LOGIC; 
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
  signal sig_controller_s_ram1_mux_sel : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal sig_controller_s_ram1_mux_sel_mux0002 : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal sig_controller_s_sel0 : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal sig_controller_s_sel0_mux0002 : STD_LOGIC_VECTOR ( 1 downto 1 ); 
  signal sig_controller_s_sel1 : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal sig_controller_s_sel1_mux0003 : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal sig_controller_s_selad : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal sig_controller_s_selda : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal sig_controller_s_wea0 : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal sig_controller_s_wea1 : STD_LOGIC_VECTOR ( 0 downto 0 ); 
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
      C => m_TP_0_OBUF_925,
      CE => N1,
      D => m_cmd_data_IBUF_949,
      Q => s_cmd_data_1018
    );
  s_wen : FDE
    port map (
      C => m_TP_0_OBUF_925,
      CE => N1,
      D => m_wen_IBUF_971,
      Q => s_wen_1051
    );
  s_address_0 : FDE
    port map (
      C => m_TP_0_OBUF_925,
      CE => N1,
      D => m_address_0_IBUF_938,
      Q => s_address(0)
    );
  s_address_1 : FDE
    port map (
      C => m_TP_0_OBUF_925,
      CE => N1,
      D => m_address_1_IBUF_939,
      Q => s_address(1)
    );
  s_address_2 : FDE
    port map (
      C => m_TP_0_OBUF_925,
      CE => N1,
      D => m_address_2_IBUF_940,
      Q => s_address(2)
    );
  s_address_3 : FDE
    port map (
      C => m_TP_0_OBUF_925,
      CE => N1,
      D => m_address_3_IBUF_941,
      Q => s_address(3)
    );
  s_address_4 : FDE
    port map (
      C => m_TP_0_OBUF_925,
      CE => N1,
      D => m_address_4_IBUF_942,
      Q => s_address(4)
    );
  s_address_5 : FDE
    port map (
      C => m_TP_0_OBUF_925,
      CE => N1,
      D => m_address_5_IBUF_943,
      Q => s_address(5)
    );
  s_address_6 : FDE
    port map (
      C => m_TP_0_OBUF_925,
      CE => N1,
      D => m_address_6_IBUF_944,
      Q => s_address(6)
    );
  s_address_7 : FDE
    port map (
      C => m_TP_0_OBUF_925,
      CE => N1,
      D => m_address_7_IBUF_945,
      Q => s_address(7)
    );
  s_address_8 : FDE
    port map (
      C => m_TP_0_OBUF_925,
      CE => N1,
      D => m_address_8_IBUF_946,
      Q => s_address(8)
    );
  s_OE_b : FDE
    port map (
      C => m_TP_0_OBUF_925,
      CE => N1,
      D => m_OE_b_IBUF_922,
      Q => s_OE_b_1008
    );
  inlatch_dout_0 : FDE
    port map (
      C => m_TP_0_OBUF_925,
      CE => s_OE_b_1008,
      D => N106,
      Q => inlatch_dout(0)
    );
  inlatch_dout_1 : FDE
    port map (
      C => m_TP_0_OBUF_925,
      CE => s_OE_b_1008,
      D => N105,
      Q => inlatch_dout(1)
    );
  inlatch_dout_2 : FDE
    port map (
      C => m_TP_0_OBUF_925,
      CE => s_OE_b_1008,
      D => N104,
      Q => inlatch_dout(2)
    );
  inlatch_dout_3 : FDE
    port map (
      C => m_TP_0_OBUF_925,
      CE => s_OE_b_1008,
      D => N103,
      Q => inlatch_dout(3)
    );
  inlatch_dout_4 : FDE
    port map (
      C => m_TP_0_OBUF_925,
      CE => s_OE_b_1008,
      D => N102,
      Q => inlatch_dout(4)
    );
  inlatch_dout_5 : FDE
    port map (
      C => m_TP_0_OBUF_925,
      CE => s_OE_b_1008,
      D => N101,
      Q => inlatch_dout(5)
    );
  inlatch_dout_6 : FDE
    port map (
      C => m_TP_0_OBUF_925,
      CE => s_OE_b_1008,
      D => N100,
      Q => inlatch_dout(6)
    );
  inlatch_dout_7 : FDE
    port map (
      C => m_TP_0_OBUF_925,
      CE => s_OE_b_1008,
      D => N99,
      Q => inlatch_dout(7)
    );
  s_ren : FDE
    port map (
      C => m_TP_0_OBUF_925,
      CE => N1,
      D => m_ren_IBUF_967,
      Q => s_ren_1050
    );
  outlatch_dout_0 : FDE
    port map (
      C => m_TP_0_OBUF_925,
      CE => s_outlatch_en,
      D => out_mux_dout(0),
      Q => outlatch_dout(0)
    );
  outlatch_dout_1 : FDE
    port map (
      C => m_TP_0_OBUF_925,
      CE => s_outlatch_en,
      D => out_mux_dout(1),
      Q => outlatch_dout(1)
    );
  outlatch_dout_2 : FDE
    port map (
      C => m_TP_0_OBUF_925,
      CE => s_outlatch_en,
      D => out_mux_dout(2),
      Q => outlatch_dout(2)
    );
  outlatch_dout_3 : FDE
    port map (
      C => m_TP_0_OBUF_925,
      CE => s_outlatch_en,
      D => out_mux_dout(3),
      Q => outlatch_dout(3)
    );
  outlatch_dout_4 : FDE
    port map (
      C => m_TP_0_OBUF_925,
      CE => s_outlatch_en,
      D => out_mux_dout(4),
      Q => outlatch_dout(4)
    );
  outlatch_dout_5 : FDE
    port map (
      C => m_TP_0_OBUF_925,
      CE => s_outlatch_en,
      D => out_mux_dout(5),
      Q => outlatch_dout(5)
    );
  outlatch_dout_6 : FDE
    port map (
      C => m_TP_0_OBUF_925,
      CE => s_outlatch_en,
      D => out_mux_dout(6),
      Q => outlatch_dout(6)
    );
  outlatch_dout_7 : FDE
    port map (
      C => m_TP_0_OBUF_925,
      CE => s_outlatch_en,
      D => out_mux_dout(7),
      Q => outlatch_dout(7)
    );
  ad_latch_dout_0 : FDE
    port map (
      C => m_TP_1_OBUF_927,
      CE => N1,
      D => m_ADC_data_0_IBUF_904,
      Q => ad_latch_dout(0)
    );
  ad_latch_dout_1 : FDE
    port map (
      C => m_TP_1_OBUF_927,
      CE => N1,
      D => m_ADC_data_1_IBUF_905,
      Q => ad_latch_dout(1)
    );
  ad_latch_dout_2 : FDE
    port map (
      C => m_TP_1_OBUF_927,
      CE => N1,
      D => m_ADC_data_2_IBUF_906,
      Q => ad_latch_dout(2)
    );
  ad_latch_dout_3 : FDE
    port map (
      C => m_TP_1_OBUF_927,
      CE => N1,
      D => m_ADC_data_3_IBUF_907,
      Q => ad_latch_dout(3)
    );
  ad_latch_dout_4 : FDE
    port map (
      C => m_TP_1_OBUF_927,
      CE => N1,
      D => m_ADC_data_4_IBUF_908,
      Q => ad_latch_dout(4)
    );
  ad_latch_dout_5 : FDE
    port map (
      C => m_TP_1_OBUF_927,
      CE => N1,
      D => m_ADC_data_5_IBUF_909,
      Q => ad_latch_dout(5)
    );
  ad_latch_dout_6 : FDE
    port map (
      C => m_TP_1_OBUF_927,
      CE => N1,
      D => m_ADC_data_6_IBUF_910,
      Q => ad_latch_dout(6)
    );
  ad_latch_dout_7 : FDE
    port map (
      C => m_TP_1_OBUF_927,
      CE => N1,
      D => m_ADC_data_7_IBUF_911,
      Q => ad_latch_dout(7)
    );
  da_latch_dout_0 : FDE
    port map (
      C => m_TP_1_OBUF_927,
      CE => sig_controller_s_da_latch_en_1643,
      D => s_doutb2(0),
      Q => da_latch_dout(0)
    );
  da_latch_dout_1 : FDE
    port map (
      C => m_TP_1_OBUF_927,
      CE => sig_controller_s_da_latch_en_1643,
      D => s_doutb2(1),
      Q => da_latch_dout(1)
    );
  da_latch_dout_2 : FDE
    port map (
      C => m_TP_1_OBUF_927,
      CE => sig_controller_s_da_latch_en_1643,
      D => s_doutb2(2),
      Q => da_latch_dout(2)
    );
  da_latch_dout_3 : FDE
    port map (
      C => m_TP_1_OBUF_927,
      CE => sig_controller_s_da_latch_en_1643,
      D => s_doutb2(3),
      Q => da_latch_dout(3)
    );
  da_latch_dout_4 : FDE
    port map (
      C => m_TP_1_OBUF_927,
      CE => sig_controller_s_da_latch_en_1643,
      D => s_doutb2(4),
      Q => da_latch_dout(4)
    );
  da_latch_dout_5 : FDE
    port map (
      C => m_TP_1_OBUF_927,
      CE => sig_controller_s_da_latch_en_1643,
      D => s_doutb2(5),
      Q => da_latch_dout(5)
    );
  da_latch_dout_6 : FDE
    port map (
      C => m_TP_1_OBUF_927,
      CE => sig_controller_s_da_latch_en_1643,
      D => s_doutb2(6),
      Q => da_latch_dout(6)
    );
  da_latch_dout_7 : FDE
    port map (
      C => m_TP_1_OBUF_927,
      CE => sig_controller_s_da_latch_en_1643,
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
      C => m_TP_0_OBUF_925,
      D => clk_gen_CNT0_s_CNT3_UD_mux0003,
      S => b_reset_b,
      Q => clk_gen_CNT0_s_CNT3_UD_754
    );
  clk_gen_CNT0_s_wr_L : FDCE
    port map (
      C => clk_gen_CNT0_s_wr,
      CE => clk_gen_s_cw0,
      CLR => b_reset_b,
      D => clk_gen_s_data(4),
      Q => clk_gen_CNT0_s_wr_L_847
    );
  clk_gen_CNT0_s_wr_M : FDCE
    port map (
      C => clk_gen_CNT0_s_wr,
      CE => clk_gen_s_cw0,
      CLR => b_reset_b,
      D => clk_gen_s_data(5),
      Q => clk_gen_CNT0_s_wr_M_848
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
      Q => clk_gen_CNT0_s_wr_wait_849
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
      Q => clk_gen_CNT0_s_mode_838
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
      S => clk_gen_CNT0_Msub_s_CNT3_U_share0000_cy_0_rt_574,
      O => clk_gen_CNT0_Msub_s_CNT3_U_share0000_cy(0)
    );
  clk_gen_CNT0_Msub_s_CNT3_U_share0000_xor_0_Q : XORCY
    port map (
      CI => N1,
      LI => clk_gen_CNT0_Msub_s_CNT3_U_share0000_cy_0_rt_574,
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
      S => clk_gen_CNT0_Madd_s_CNT3_1_cy_1_rt_447,
      O => clk_gen_CNT0_Madd_s_CNT3_1_cy(1)
    );
  clk_gen_CNT0_Madd_s_CNT3_1_xor_1_Q : XORCY
    port map (
      CI => clk_gen_CNT0_Madd_s_CNT3_1_cy(0),
      LI => clk_gen_CNT0_Madd_s_CNT3_1_cy_1_rt_447,
      O => clk_gen_CNT0_s_CNT3_1(1)
    );
  clk_gen_CNT0_Madd_s_CNT3_1_cy_2_Q : MUXCY
    port map (
      CI => clk_gen_CNT0_Madd_s_CNT3_1_cy(1),
      DI => avg_module_Maccum_s_data_cy(0),
      S => clk_gen_CNT0_Madd_s_CNT3_1_cy_2_rt_449,
      O => clk_gen_CNT0_Madd_s_CNT3_1_cy(2)
    );
  clk_gen_CNT0_Madd_s_CNT3_1_xor_2_Q : XORCY
    port map (
      CI => clk_gen_CNT0_Madd_s_CNT3_1_cy(1),
      LI => clk_gen_CNT0_Madd_s_CNT3_1_cy_2_rt_449,
      O => clk_gen_CNT0_s_CNT3_1(2)
    );
  clk_gen_CNT0_Madd_s_CNT3_1_cy_3_Q : MUXCY
    port map (
      CI => clk_gen_CNT0_Madd_s_CNT3_1_cy(2),
      DI => avg_module_Maccum_s_data_cy(0),
      S => clk_gen_CNT0_Madd_s_CNT3_1_cy_3_rt_451,
      O => clk_gen_CNT0_Madd_s_CNT3_1_cy(3)
    );
  clk_gen_CNT0_Madd_s_CNT3_1_xor_3_Q : XORCY
    port map (
      CI => clk_gen_CNT0_Madd_s_CNT3_1_cy(2),
      LI => clk_gen_CNT0_Madd_s_CNT3_1_cy_3_rt_451,
      O => clk_gen_CNT0_s_CNT3_1(3)
    );
  clk_gen_CNT0_Madd_s_CNT3_1_cy_4_Q : MUXCY
    port map (
      CI => clk_gen_CNT0_Madd_s_CNT3_1_cy(3),
      DI => avg_module_Maccum_s_data_cy(0),
      S => clk_gen_CNT0_Madd_s_CNT3_1_cy_4_rt_453,
      O => clk_gen_CNT0_Madd_s_CNT3_1_cy(4)
    );
  clk_gen_CNT0_Madd_s_CNT3_1_xor_4_Q : XORCY
    port map (
      CI => clk_gen_CNT0_Madd_s_CNT3_1_cy(3),
      LI => clk_gen_CNT0_Madd_s_CNT3_1_cy_4_rt_453,
      O => clk_gen_CNT0_s_CNT3_1(4)
    );
  clk_gen_CNT0_Madd_s_CNT3_1_cy_5_Q : MUXCY
    port map (
      CI => clk_gen_CNT0_Madd_s_CNT3_1_cy(4),
      DI => avg_module_Maccum_s_data_cy(0),
      S => clk_gen_CNT0_Madd_s_CNT3_1_cy_5_rt_455,
      O => clk_gen_CNT0_Madd_s_CNT3_1_cy(5)
    );
  clk_gen_CNT0_Madd_s_CNT3_1_xor_5_Q : XORCY
    port map (
      CI => clk_gen_CNT0_Madd_s_CNT3_1_cy(4),
      LI => clk_gen_CNT0_Madd_s_CNT3_1_cy_5_rt_455,
      O => clk_gen_CNT0_s_CNT3_1(5)
    );
  clk_gen_CNT0_Madd_s_CNT3_1_cy_6_Q : MUXCY
    port map (
      CI => clk_gen_CNT0_Madd_s_CNT3_1_cy(5),
      DI => avg_module_Maccum_s_data_cy(0),
      S => clk_gen_CNT0_Madd_s_CNT3_1_cy_6_rt_457,
      O => clk_gen_CNT0_Madd_s_CNT3_1_cy(6)
    );
  clk_gen_CNT0_Madd_s_CNT3_1_xor_6_Q : XORCY
    port map (
      CI => clk_gen_CNT0_Madd_s_CNT3_1_cy(5),
      LI => clk_gen_CNT0_Madd_s_CNT3_1_cy_6_rt_457,
      O => clk_gen_CNT0_s_CNT3_1(6)
    );
  clk_gen_CNT0_Madd_s_CNT3_1_cy_7_Q : MUXCY
    port map (
      CI => clk_gen_CNT0_Madd_s_CNT3_1_cy(6),
      DI => avg_module_Maccum_s_data_cy(0),
      S => clk_gen_CNT0_Madd_s_CNT3_1_cy_7_rt_459,
      O => clk_gen_CNT0_Madd_s_CNT3_1_cy(7)
    );
  clk_gen_CNT0_Madd_s_CNT3_1_xor_7_Q : XORCY
    port map (
      CI => clk_gen_CNT0_Madd_s_CNT3_1_cy(6),
      LI => clk_gen_CNT0_Madd_s_CNT3_1_cy_7_rt_459,
      O => clk_gen_CNT0_s_CNT3_1(7)
    );
  clk_gen_CNT0_Madd_s_CNT3_1_cy_8_Q : MUXCY
    port map (
      CI => clk_gen_CNT0_Madd_s_CNT3_1_cy(7),
      DI => avg_module_Maccum_s_data_cy(0),
      S => clk_gen_CNT0_Madd_s_CNT3_1_cy_8_rt_461,
      O => clk_gen_CNT0_Madd_s_CNT3_1_cy(8)
    );
  clk_gen_CNT0_Madd_s_CNT3_1_xor_8_Q : XORCY
    port map (
      CI => clk_gen_CNT0_Madd_s_CNT3_1_cy(7),
      LI => clk_gen_CNT0_Madd_s_CNT3_1_cy_8_rt_461,
      O => clk_gen_CNT0_s_CNT3_1(8)
    );
  clk_gen_CNT0_Madd_s_CNT3_1_cy_9_Q : MUXCY
    port map (
      CI => clk_gen_CNT0_Madd_s_CNT3_1_cy(8),
      DI => avg_module_Maccum_s_data_cy(0),
      S => clk_gen_CNT0_Madd_s_CNT3_1_cy_9_rt_463,
      O => clk_gen_CNT0_Madd_s_CNT3_1_cy(9)
    );
  clk_gen_CNT0_Madd_s_CNT3_1_xor_9_Q : XORCY
    port map (
      CI => clk_gen_CNT0_Madd_s_CNT3_1_cy(8),
      LI => clk_gen_CNT0_Madd_s_CNT3_1_cy_9_rt_463,
      O => clk_gen_CNT0_s_CNT3_1(9)
    );
  clk_gen_CNT0_Madd_s_CNT3_1_cy_10_Q : MUXCY
    port map (
      CI => clk_gen_CNT0_Madd_s_CNT3_1_cy(9),
      DI => avg_module_Maccum_s_data_cy(0),
      S => clk_gen_CNT0_Madd_s_CNT3_1_cy_10_rt_437,
      O => clk_gen_CNT0_Madd_s_CNT3_1_cy(10)
    );
  clk_gen_CNT0_Madd_s_CNT3_1_xor_10_Q : XORCY
    port map (
      CI => clk_gen_CNT0_Madd_s_CNT3_1_cy(9),
      LI => clk_gen_CNT0_Madd_s_CNT3_1_cy_10_rt_437,
      O => clk_gen_CNT0_s_CNT3_1(10)
    );
  clk_gen_CNT0_Madd_s_CNT3_1_cy_11_Q : MUXCY
    port map (
      CI => clk_gen_CNT0_Madd_s_CNT3_1_cy(10),
      DI => avg_module_Maccum_s_data_cy(0),
      S => clk_gen_CNT0_Madd_s_CNT3_1_cy_11_rt_439,
      O => clk_gen_CNT0_Madd_s_CNT3_1_cy(11)
    );
  clk_gen_CNT0_Madd_s_CNT3_1_xor_11_Q : XORCY
    port map (
      CI => clk_gen_CNT0_Madd_s_CNT3_1_cy(10),
      LI => clk_gen_CNT0_Madd_s_CNT3_1_cy_11_rt_439,
      O => clk_gen_CNT0_s_CNT3_1(11)
    );
  clk_gen_CNT0_Madd_s_CNT3_1_cy_12_Q : MUXCY
    port map (
      CI => clk_gen_CNT0_Madd_s_CNT3_1_cy(11),
      DI => avg_module_Maccum_s_data_cy(0),
      S => clk_gen_CNT0_Madd_s_CNT3_1_cy_12_rt_441,
      O => clk_gen_CNT0_Madd_s_CNT3_1_cy(12)
    );
  clk_gen_CNT0_Madd_s_CNT3_1_xor_12_Q : XORCY
    port map (
      CI => clk_gen_CNT0_Madd_s_CNT3_1_cy(11),
      LI => clk_gen_CNT0_Madd_s_CNT3_1_cy_12_rt_441,
      O => clk_gen_CNT0_s_CNT3_1(12)
    );
  clk_gen_CNT0_Madd_s_CNT3_1_cy_13_Q : MUXCY
    port map (
      CI => clk_gen_CNT0_Madd_s_CNT3_1_cy(12),
      DI => avg_module_Maccum_s_data_cy(0),
      S => clk_gen_CNT0_Madd_s_CNT3_1_cy_13_rt_443,
      O => clk_gen_CNT0_Madd_s_CNT3_1_cy(13)
    );
  clk_gen_CNT0_Madd_s_CNT3_1_xor_13_Q : XORCY
    port map (
      CI => clk_gen_CNT0_Madd_s_CNT3_1_cy(12),
      LI => clk_gen_CNT0_Madd_s_CNT3_1_cy_13_rt_443,
      O => clk_gen_CNT0_s_CNT3_1(13)
    );
  clk_gen_CNT0_Madd_s_CNT3_1_cy_14_Q : MUXCY
    port map (
      CI => clk_gen_CNT0_Madd_s_CNT3_1_cy(13),
      DI => avg_module_Maccum_s_data_cy(0),
      S => clk_gen_CNT0_Madd_s_CNT3_1_cy_14_rt_445,
      O => clk_gen_CNT0_Madd_s_CNT3_1_cy(14)
    );
  clk_gen_CNT0_Madd_s_CNT3_1_xor_14_Q : XORCY
    port map (
      CI => clk_gen_CNT0_Madd_s_CNT3_1_cy(13),
      LI => clk_gen_CNT0_Madd_s_CNT3_1_cy_14_rt_445,
      O => clk_gen_CNT0_s_CNT3_1(14)
    );
  clk_gen_CNT0_Madd_s_CNT3_1_xor_15_Q : XORCY
    port map (
      CI => clk_gen_CNT0_Madd_s_CNT3_1_cy(14),
      LI => clk_gen_CNT0_Madd_s_CNT3_1_xor_15_rt_465,
      O => clk_gen_CNT0_s_CNT3_1(15)
    );
  clk_gen_CNT0_Msub_s_CNT3_2_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => avg_module_Maccum_s_data_cy(0),
      S => clk_gen_CNT0_Msub_s_CNT3_2_cy_0_rt_514,
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
      S => clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_cy_0_rt_545,
      O => clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_cy(0)
    );
  clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_xor_0_Q : XORCY
    port map (
      CI => N1,
      LI => clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_cy_0_rt_545,
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
      S => clk_gen_CNT0_Mcount_s_CNT2_cy_0_rt_467,
      O => clk_gen_CNT0_Mcount_s_CNT2_cy(0)
    );
  clk_gen_CNT0_Mcount_s_CNT2_xor_0_Q : XORCY
    port map (
      CI => N1,
      LI => clk_gen_CNT0_Mcount_s_CNT2_cy_0_rt_467,
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
      C => m_TP_0_OBUF_925,
      D => clk_gen_state_FSM_FFd4_875,
      R => b_reset_b,
      Q => clk_gen_state_FSM_FFd3_874
    );
  clk_gen_state_FSM_FFd4 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_0_OBUF_925,
      D => clk_gen_state_FSM_FFd5_876,
      R => b_reset_b,
      Q => clk_gen_state_FSM_FFd4_875
    );
  clk_gen_state_FSM_FFd5 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_0_OBUF_925,
      D => clk_gen_s_addr_not0001,
      R => b_reset_b,
      Q => clk_gen_state_FSM_FFd5_876
    );
  clk_gen_state_FSM_FFd6 : FDS
    generic map(
      INIT => '1'
    )
    port map (
      C => m_TP_0_OBUF_925,
      D => clk_gen_state_FSM_FFd6_In,
      S => b_reset_b,
      Q => clk_gen_state_FSM_FFd6_877
    );
  clk_gen_state_FSM_FFd1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_0_OBUF_925,
      D => clk_gen_state_FSM_FFd1_In,
      R => b_reset_b,
      Q => clk_gen_state_FSM_FFd1_870
    );
  clk_gen_s_data_7 : FDRE
    port map (
      C => m_TP_0_OBUF_925,
      CE => clk_gen_state_FSM_FFd5_876,
      D => N99,
      R => b_reset_b,
      Q => clk_gen_s_data(7)
    );
  clk_gen_s_data_6 : FDRE
    port map (
      C => m_TP_0_OBUF_925,
      CE => clk_gen_state_FSM_FFd5_876,
      D => N100,
      R => b_reset_b,
      Q => clk_gen_s_data(6)
    );
  clk_gen_s_data_5 : FDRE
    port map (
      C => m_TP_0_OBUF_925,
      CE => clk_gen_state_FSM_FFd5_876,
      D => N101,
      R => b_reset_b,
      Q => clk_gen_s_data(5)
    );
  clk_gen_s_data_4 : FDRE
    port map (
      C => m_TP_0_OBUF_925,
      CE => clk_gen_state_FSM_FFd5_876,
      D => N102,
      R => b_reset_b,
      Q => clk_gen_s_data(4)
    );
  clk_gen_s_data_3 : FDRE
    port map (
      C => m_TP_0_OBUF_925,
      CE => clk_gen_state_FSM_FFd5_876,
      D => N103,
      R => b_reset_b,
      Q => clk_gen_s_data(3)
    );
  clk_gen_s_data_2 : FDRE
    port map (
      C => m_TP_0_OBUF_925,
      CE => clk_gen_state_FSM_FFd5_876,
      D => N104,
      R => b_reset_b,
      Q => clk_gen_s_data(2)
    );
  clk_gen_s_data_1 : FDRE
    port map (
      C => m_TP_0_OBUF_925,
      CE => clk_gen_state_FSM_FFd5_876,
      D => N105,
      R => b_reset_b,
      Q => clk_gen_s_data(1)
    );
  clk_gen_s_data_0 : FDRE
    port map (
      C => m_TP_0_OBUF_925,
      CE => clk_gen_state_FSM_FFd5_876,
      D => N106,
      R => b_reset_b,
      Q => clk_gen_s_data(0)
    );
  clk_gen_s_wr_b : FDS
    port map (
      C => m_TP_0_OBUF_925,
      D => clk_gen_s_wr_b_mux0000,
      S => b_reset_b,
      Q => clk_gen_s_wr_b_865
    );
  clk_gen_s_addr_1 : FDSE
    port map (
      C => m_TP_0_OBUF_925,
      CE => clk_gen_s_addr_not0001,
      D => m_address_1_IBUF_939,
      S => b_reset_b,
      Q => clk_gen_s_addr(1)
    );
  clk_gen_s_addr_0 : FDRE
    port map (
      C => m_TP_0_OBUF_925,
      CE => clk_gen_s_addr_not0001,
      D => m_address_0_IBUF_938,
      R => b_reset_b,
      Q => clk_gen_s_addr(0)
    );
  sig_controller_dac_ctr_s_reg_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_dac_ctr_s_ps_cmp_eq0001,
      D => sig_controller_dac_ctr_s_reg_sub0000(0),
      Q => sig_controller_dac_ctr_s_reg(0)
    );
  sig_controller_dac_ctr_s_reg_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_dac_ctr_s_ps_cmp_eq0001,
      D => sig_controller_dac_ctr_s_reg_sub0000(1),
      Q => sig_controller_dac_ctr_s_reg(1)
    );
  sig_controller_dac_ctr_s_reg_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_dac_ctr_s_ps_cmp_eq0001,
      D => sig_controller_dac_ctr_s_reg_sub0000(2),
      Q => sig_controller_dac_ctr_s_reg(2)
    );
  sig_controller_dac_ctr_s_reg_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_dac_ctr_s_ps_cmp_eq0001,
      D => sig_controller_dac_ctr_s_reg_sub0000(3),
      Q => sig_controller_dac_ctr_s_reg(3)
    );
  sig_controller_dac_ctr_s_reg_4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_dac_ctr_s_ps_cmp_eq0001,
      D => sig_controller_dac_ctr_s_reg_sub0000(4),
      Q => sig_controller_dac_ctr_s_reg(4)
    );
  sig_controller_dac_ctr_s_reg_5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_dac_ctr_s_ps_cmp_eq0001,
      D => sig_controller_dac_ctr_s_reg_sub0000(5),
      Q => sig_controller_dac_ctr_s_reg(5)
    );
  sig_controller_dac_ctr_s_reg_6 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_dac_ctr_s_ps_cmp_eq0001,
      D => sig_controller_dac_ctr_s_reg_sub0000(6),
      Q => sig_controller_dac_ctr_s_reg(6)
    );
  sig_controller_dac_ctr_s_reg_7 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_dac_ctr_s_ps_cmp_eq0001,
      D => sig_controller_dac_ctr_s_reg_sub0000(7),
      Q => sig_controller_dac_ctr_s_reg(7)
    );
  sig_controller_dac_ctr_s_reg_8 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_dac_ctr_s_ps_cmp_eq0001,
      D => sig_controller_dac_ctr_s_reg_sub0000(8),
      Q => sig_controller_dac_ctr_s_reg(8)
    );
  sig_controller_dac_ctr_s_reg_9 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_dac_ctr_s_ps_cmp_eq0001,
      D => sig_controller_dac_ctr_s_reg_sub0000(9),
      Q => sig_controller_dac_ctr_s_reg(9)
    );
  sig_controller_dac_ctr_s_reg_10 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_dac_ctr_s_ps_cmp_eq0001,
      D => sig_controller_dac_ctr_s_reg_sub0000(10),
      Q => sig_controller_dac_ctr_s_reg(10)
    );
  sig_controller_dac_ctr_s_enb2 : LD_1
    generic map(
      INIT => '0'
    )
    port map (
      D => sig_controller_dac_ctr_s_ps_FSM_FFd1_1261,
      G => sig_controller_dac_ctr_s_ps_cmp_eq0001,
      Q => sig_controller_dac_ctr_s_enb2_1260
    );
  sig_controller_dac_ctr_s_ps_FSM_FFd2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_0_OBUF_925,
      D => sig_controller_dac_ctr_s_ps_FSM_FFd2_In,
      Q => sig_controller_dac_ctr_s_ps_FSM_FFd2_1262
    );
  sig_controller_dac_ctr_s_cnt_0 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_1_OBUF_927,
      D => sig_controller_dac_ctr_Result(0),
      R => sig_controller_dac_ctr_s_cnt_not0001,
      Q => sig_controller_dac_ctr_s_cnt(0)
    );
  sig_controller_dac_ctr_s_cnt_1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_1_OBUF_927,
      D => sig_controller_dac_ctr_Result(1),
      R => sig_controller_dac_ctr_s_cnt_not0001,
      Q => sig_controller_dac_ctr_s_cnt(1)
    );
  sig_controller_dac_ctr_s_cnt_2 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_1_OBUF_927,
      D => sig_controller_dac_ctr_Result(2),
      R => sig_controller_dac_ctr_s_cnt_not0001,
      Q => sig_controller_dac_ctr_s_cnt(2)
    );
  sig_controller_dac_ctr_s_cnt_3 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_1_OBUF_927,
      D => sig_controller_dac_ctr_Result(3),
      R => sig_controller_dac_ctr_s_cnt_not0001,
      Q => sig_controller_dac_ctr_s_cnt(3)
    );
  sig_controller_dac_ctr_s_cnt_4 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_1_OBUF_927,
      D => sig_controller_dac_ctr_Result(4),
      R => sig_controller_dac_ctr_s_cnt_not0001,
      Q => sig_controller_dac_ctr_s_cnt(4)
    );
  sig_controller_dac_ctr_s_cnt_5 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_1_OBUF_927,
      D => sig_controller_dac_ctr_Result(5),
      R => sig_controller_dac_ctr_s_cnt_not0001,
      Q => sig_controller_dac_ctr_s_cnt(5)
    );
  sig_controller_dac_ctr_s_cnt_6 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_1_OBUF_927,
      D => sig_controller_dac_ctr_Result(6),
      R => sig_controller_dac_ctr_s_cnt_not0001,
      Q => sig_controller_dac_ctr_s_cnt(6)
    );
  sig_controller_dac_ctr_s_cnt_7 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_1_OBUF_927,
      D => sig_controller_dac_ctr_Result(7),
      R => sig_controller_dac_ctr_s_cnt_not0001,
      Q => sig_controller_dac_ctr_s_cnt(7)
    );
  sig_controller_dac_ctr_s_cnt_8 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_1_OBUF_927,
      D => sig_controller_dac_ctr_Result(8),
      R => sig_controller_dac_ctr_s_cnt_not0001,
      Q => sig_controller_dac_ctr_s_cnt(8)
    );
  sig_controller_dac_ctr_s_cnt_9 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_1_OBUF_927,
      D => sig_controller_dac_ctr_Result(9),
      R => sig_controller_dac_ctr_s_cnt_not0001,
      Q => sig_controller_dac_ctr_s_cnt(9)
    );
  sig_controller_dac_ctr_s_cnt_10 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_1_OBUF_927,
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
      S => sig_controller_dac_ctr_Mcount_s_cnt_cy_1_rt_1213,
      O => sig_controller_dac_ctr_Mcount_s_cnt_cy(1)
    );
  sig_controller_dac_ctr_Mcount_s_cnt_xor_1_Q : XORCY
    port map (
      CI => sig_controller_dac_ctr_Mcount_s_cnt_cy(0),
      LI => sig_controller_dac_ctr_Mcount_s_cnt_cy_1_rt_1213,
      O => sig_controller_dac_ctr_Result(1)
    );
  sig_controller_dac_ctr_Mcount_s_cnt_cy_2_Q : MUXCY
    port map (
      CI => sig_controller_dac_ctr_Mcount_s_cnt_cy(1),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_dac_ctr_Mcount_s_cnt_cy_2_rt_1215,
      O => sig_controller_dac_ctr_Mcount_s_cnt_cy(2)
    );
  sig_controller_dac_ctr_Mcount_s_cnt_xor_2_Q : XORCY
    port map (
      CI => sig_controller_dac_ctr_Mcount_s_cnt_cy(1),
      LI => sig_controller_dac_ctr_Mcount_s_cnt_cy_2_rt_1215,
      O => sig_controller_dac_ctr_Result(2)
    );
  sig_controller_dac_ctr_Mcount_s_cnt_cy_3_Q : MUXCY
    port map (
      CI => sig_controller_dac_ctr_Mcount_s_cnt_cy(2),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_dac_ctr_Mcount_s_cnt_cy_3_rt_1217,
      O => sig_controller_dac_ctr_Mcount_s_cnt_cy(3)
    );
  sig_controller_dac_ctr_Mcount_s_cnt_xor_3_Q : XORCY
    port map (
      CI => sig_controller_dac_ctr_Mcount_s_cnt_cy(2),
      LI => sig_controller_dac_ctr_Mcount_s_cnt_cy_3_rt_1217,
      O => sig_controller_dac_ctr_Result(3)
    );
  sig_controller_dac_ctr_Mcount_s_cnt_cy_4_Q : MUXCY
    port map (
      CI => sig_controller_dac_ctr_Mcount_s_cnt_cy(3),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_dac_ctr_Mcount_s_cnt_cy_4_rt_1219,
      O => sig_controller_dac_ctr_Mcount_s_cnt_cy(4)
    );
  sig_controller_dac_ctr_Mcount_s_cnt_xor_4_Q : XORCY
    port map (
      CI => sig_controller_dac_ctr_Mcount_s_cnt_cy(3),
      LI => sig_controller_dac_ctr_Mcount_s_cnt_cy_4_rt_1219,
      O => sig_controller_dac_ctr_Result(4)
    );
  sig_controller_dac_ctr_Mcount_s_cnt_cy_5_Q : MUXCY
    port map (
      CI => sig_controller_dac_ctr_Mcount_s_cnt_cy(4),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_dac_ctr_Mcount_s_cnt_cy_5_rt_1221,
      O => sig_controller_dac_ctr_Mcount_s_cnt_cy(5)
    );
  sig_controller_dac_ctr_Mcount_s_cnt_xor_5_Q : XORCY
    port map (
      CI => sig_controller_dac_ctr_Mcount_s_cnt_cy(4),
      LI => sig_controller_dac_ctr_Mcount_s_cnt_cy_5_rt_1221,
      O => sig_controller_dac_ctr_Result(5)
    );
  sig_controller_dac_ctr_Mcount_s_cnt_cy_6_Q : MUXCY
    port map (
      CI => sig_controller_dac_ctr_Mcount_s_cnt_cy(5),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_dac_ctr_Mcount_s_cnt_cy_6_rt_1223,
      O => sig_controller_dac_ctr_Mcount_s_cnt_cy(6)
    );
  sig_controller_dac_ctr_Mcount_s_cnt_xor_6_Q : XORCY
    port map (
      CI => sig_controller_dac_ctr_Mcount_s_cnt_cy(5),
      LI => sig_controller_dac_ctr_Mcount_s_cnt_cy_6_rt_1223,
      O => sig_controller_dac_ctr_Result(6)
    );
  sig_controller_dac_ctr_Mcount_s_cnt_cy_7_Q : MUXCY
    port map (
      CI => sig_controller_dac_ctr_Mcount_s_cnt_cy(6),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_dac_ctr_Mcount_s_cnt_cy_7_rt_1225,
      O => sig_controller_dac_ctr_Mcount_s_cnt_cy(7)
    );
  sig_controller_dac_ctr_Mcount_s_cnt_xor_7_Q : XORCY
    port map (
      CI => sig_controller_dac_ctr_Mcount_s_cnt_cy(6),
      LI => sig_controller_dac_ctr_Mcount_s_cnt_cy_7_rt_1225,
      O => sig_controller_dac_ctr_Result(7)
    );
  sig_controller_dac_ctr_Mcount_s_cnt_cy_8_Q : MUXCY
    port map (
      CI => sig_controller_dac_ctr_Mcount_s_cnt_cy(7),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_dac_ctr_Mcount_s_cnt_cy_8_rt_1227,
      O => sig_controller_dac_ctr_Mcount_s_cnt_cy(8)
    );
  sig_controller_dac_ctr_Mcount_s_cnt_xor_8_Q : XORCY
    port map (
      CI => sig_controller_dac_ctr_Mcount_s_cnt_cy(7),
      LI => sig_controller_dac_ctr_Mcount_s_cnt_cy_8_rt_1227,
      O => sig_controller_dac_ctr_Result(8)
    );
  sig_controller_dac_ctr_Mcount_s_cnt_cy_9_Q : MUXCY
    port map (
      CI => sig_controller_dac_ctr_Mcount_s_cnt_cy(8),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_dac_ctr_Mcount_s_cnt_cy_9_rt_1229,
      O => sig_controller_dac_ctr_Mcount_s_cnt_cy(9)
    );
  sig_controller_dac_ctr_Mcount_s_cnt_xor_9_Q : XORCY
    port map (
      CI => sig_controller_dac_ctr_Mcount_s_cnt_cy(8),
      LI => sig_controller_dac_ctr_Mcount_s_cnt_cy_9_rt_1229,
      O => sig_controller_dac_ctr_Result(9)
    );
  sig_controller_dac_ctr_Mcount_s_cnt_xor_10_Q : XORCY
    port map (
      CI => sig_controller_dac_ctr_Mcount_s_cnt_cy(9),
      LI => sig_controller_dac_ctr_Mcount_s_cnt_xor_10_rt_1231,
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
      C => m_TP_0_OBUF_925,
      CE => sig_controller_rem0ctr_s_Reg_not0001,
      D => sig_controller_rem0ctr_s_Reg_mux0000(0),
      Q => sig_controller_rem0ctr_s_Reg(0)
    );
  sig_controller_rem0ctr_s_Reg_1 : FDE
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_rem0ctr_s_Reg_not0001,
      D => sig_controller_rem0ctr_s_Reg_mux0000(1),
      Q => sig_controller_rem0ctr_s_Reg(1)
    );
  sig_controller_rem0ctr_s_Reg_2 : FDE
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_rem0ctr_s_Reg_not0001,
      D => sig_controller_rem0ctr_s_Reg_mux0000(2),
      Q => sig_controller_rem0ctr_s_Reg(2)
    );
  sig_controller_rem0ctr_s_Reg_3 : FDE
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_rem0ctr_s_Reg_not0001,
      D => sig_controller_rem0ctr_s_Reg_mux0000(3),
      Q => sig_controller_rem0ctr_s_Reg(3)
    );
  sig_controller_rem0ctr_s_Reg_4 : FDE
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_rem0ctr_s_Reg_not0001,
      D => sig_controller_rem0ctr_s_Reg_mux0000(4),
      Q => sig_controller_rem0ctr_s_Reg(4)
    );
  sig_controller_rem0ctr_s_Reg_5 : FDE
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_rem0ctr_s_Reg_not0001,
      D => sig_controller_rem0ctr_s_Reg_mux0000(5),
      Q => sig_controller_rem0ctr_s_Reg(5)
    );
  sig_controller_rem0ctr_s_Reg_6 : FDE
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_rem0ctr_s_Reg_not0001,
      D => sig_controller_rem0ctr_s_Reg_mux0000(6),
      Q => sig_controller_rem0ctr_s_Reg(6)
    );
  sig_controller_rem0ctr_s_Reg_7 : FDE
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_rem0ctr_s_Reg_not0001,
      D => sig_controller_rem0ctr_s_Reg_mux0000(7),
      Q => sig_controller_rem0ctr_s_Reg(7)
    );
  sig_controller_rem0ctr_s_Reg_8 : FDE
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_rem0ctr_s_Reg_not0001,
      D => sig_controller_rem0ctr_s_Reg_mux0000(8),
      Q => sig_controller_rem0ctr_s_Reg(8)
    );
  sig_controller_rem0ctr_s_Reg_9 : FDE
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_rem0ctr_s_Reg_not0001,
      D => sig_controller_rem0ctr_s_Reg_mux0000(9),
      Q => sig_controller_rem0ctr_s_Reg(9)
    );
  sig_controller_rem0ctr_s_Reg_10 : FDE
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_rem0ctr_s_Reg_not0001,
      D => sig_controller_rem0ctr_s_Reg_mux0000(10),
      Q => sig_controller_rem0ctr_s_Reg(10)
    );
  sig_controller_rem0ctr_s_Cnt_0 : FDRE
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_s_enp0_1668,
      D => sig_controller_rem0ctr_Result(0),
      R => sig_controller_s_clr0_1625,
      Q => sig_controller_rem0ctr_s_Cnt(0)
    );
  sig_controller_rem0ctr_s_Cnt_1 : FDRE
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_s_enp0_1668,
      D => sig_controller_rem0ctr_Result(1),
      R => sig_controller_s_clr0_1625,
      Q => sig_controller_rem0ctr_s_Cnt(1)
    );
  sig_controller_rem0ctr_s_Cnt_2 : FDRE
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_s_enp0_1668,
      D => sig_controller_rem0ctr_Result(2),
      R => sig_controller_s_clr0_1625,
      Q => sig_controller_rem0ctr_s_Cnt(2)
    );
  sig_controller_rem0ctr_s_Cnt_3 : FDRE
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_s_enp0_1668,
      D => sig_controller_rem0ctr_Result(3),
      R => sig_controller_s_clr0_1625,
      Q => sig_controller_rem0ctr_s_Cnt(3)
    );
  sig_controller_rem0ctr_s_Cnt_4 : FDRE
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_s_enp0_1668,
      D => sig_controller_rem0ctr_Result(4),
      R => sig_controller_s_clr0_1625,
      Q => sig_controller_rem0ctr_s_Cnt(4)
    );
  sig_controller_rem0ctr_s_Cnt_5 : FDRE
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_s_enp0_1668,
      D => sig_controller_rem0ctr_Result(5),
      R => sig_controller_s_clr0_1625,
      Q => sig_controller_rem0ctr_s_Cnt(5)
    );
  sig_controller_rem0ctr_s_Cnt_6 : FDRE
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_s_enp0_1668,
      D => sig_controller_rem0ctr_Result(6),
      R => sig_controller_s_clr0_1625,
      Q => sig_controller_rem0ctr_s_Cnt(6)
    );
  sig_controller_rem0ctr_s_Cnt_7 : FDRE
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_s_enp0_1668,
      D => sig_controller_rem0ctr_Result(7),
      R => sig_controller_s_clr0_1625,
      Q => sig_controller_rem0ctr_s_Cnt(7)
    );
  sig_controller_rem0ctr_s_Cnt_8 : FDRE
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_s_enp0_1668,
      D => sig_controller_rem0ctr_Result(8),
      R => sig_controller_s_clr0_1625,
      Q => sig_controller_rem0ctr_s_Cnt(8)
    );
  sig_controller_rem0ctr_s_Cnt_9 : FDRE
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_s_enp0_1668,
      D => sig_controller_rem0ctr_Result(9),
      R => sig_controller_s_clr0_1625,
      Q => sig_controller_rem0ctr_s_Cnt(9)
    );
  sig_controller_rem0ctr_s_Cnt_10 : FDRE
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_s_enp0_1668,
      D => sig_controller_rem0ctr_Result(10),
      R => sig_controller_s_clr0_1625,
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
      S => sig_controller_rem0ctr_Mcount_s_Cnt_cy_1_rt_1419,
      O => sig_controller_rem0ctr_Mcount_s_Cnt_cy(1)
    );
  sig_controller_rem0ctr_Mcount_s_Cnt_xor_1_Q : XORCY
    port map (
      CI => sig_controller_rem0ctr_Mcount_s_Cnt_cy(0),
      LI => sig_controller_rem0ctr_Mcount_s_Cnt_cy_1_rt_1419,
      O => sig_controller_rem0ctr_Result(1)
    );
  sig_controller_rem0ctr_Mcount_s_Cnt_cy_2_Q : MUXCY
    port map (
      CI => sig_controller_rem0ctr_Mcount_s_Cnt_cy(1),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_rem0ctr_Mcount_s_Cnt_cy_2_rt_1421,
      O => sig_controller_rem0ctr_Mcount_s_Cnt_cy(2)
    );
  sig_controller_rem0ctr_Mcount_s_Cnt_xor_2_Q : XORCY
    port map (
      CI => sig_controller_rem0ctr_Mcount_s_Cnt_cy(1),
      LI => sig_controller_rem0ctr_Mcount_s_Cnt_cy_2_rt_1421,
      O => sig_controller_rem0ctr_Result(2)
    );
  sig_controller_rem0ctr_Mcount_s_Cnt_cy_3_Q : MUXCY
    port map (
      CI => sig_controller_rem0ctr_Mcount_s_Cnt_cy(2),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_rem0ctr_Mcount_s_Cnt_cy_3_rt_1423,
      O => sig_controller_rem0ctr_Mcount_s_Cnt_cy(3)
    );
  sig_controller_rem0ctr_Mcount_s_Cnt_xor_3_Q : XORCY
    port map (
      CI => sig_controller_rem0ctr_Mcount_s_Cnt_cy(2),
      LI => sig_controller_rem0ctr_Mcount_s_Cnt_cy_3_rt_1423,
      O => sig_controller_rem0ctr_Result(3)
    );
  sig_controller_rem0ctr_Mcount_s_Cnt_cy_4_Q : MUXCY
    port map (
      CI => sig_controller_rem0ctr_Mcount_s_Cnt_cy(3),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_rem0ctr_Mcount_s_Cnt_cy_4_rt_1425,
      O => sig_controller_rem0ctr_Mcount_s_Cnt_cy(4)
    );
  sig_controller_rem0ctr_Mcount_s_Cnt_xor_4_Q : XORCY
    port map (
      CI => sig_controller_rem0ctr_Mcount_s_Cnt_cy(3),
      LI => sig_controller_rem0ctr_Mcount_s_Cnt_cy_4_rt_1425,
      O => sig_controller_rem0ctr_Result(4)
    );
  sig_controller_rem0ctr_Mcount_s_Cnt_cy_5_Q : MUXCY
    port map (
      CI => sig_controller_rem0ctr_Mcount_s_Cnt_cy(4),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_rem0ctr_Mcount_s_Cnt_cy_5_rt_1427,
      O => sig_controller_rem0ctr_Mcount_s_Cnt_cy(5)
    );
  sig_controller_rem0ctr_Mcount_s_Cnt_xor_5_Q : XORCY
    port map (
      CI => sig_controller_rem0ctr_Mcount_s_Cnt_cy(4),
      LI => sig_controller_rem0ctr_Mcount_s_Cnt_cy_5_rt_1427,
      O => sig_controller_rem0ctr_Result(5)
    );
  sig_controller_rem0ctr_Mcount_s_Cnt_cy_6_Q : MUXCY
    port map (
      CI => sig_controller_rem0ctr_Mcount_s_Cnt_cy(5),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_rem0ctr_Mcount_s_Cnt_cy_6_rt_1429,
      O => sig_controller_rem0ctr_Mcount_s_Cnt_cy(6)
    );
  sig_controller_rem0ctr_Mcount_s_Cnt_xor_6_Q : XORCY
    port map (
      CI => sig_controller_rem0ctr_Mcount_s_Cnt_cy(5),
      LI => sig_controller_rem0ctr_Mcount_s_Cnt_cy_6_rt_1429,
      O => sig_controller_rem0ctr_Result(6)
    );
  sig_controller_rem0ctr_Mcount_s_Cnt_cy_7_Q : MUXCY
    port map (
      CI => sig_controller_rem0ctr_Mcount_s_Cnt_cy(6),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_rem0ctr_Mcount_s_Cnt_cy_7_rt_1431,
      O => sig_controller_rem0ctr_Mcount_s_Cnt_cy(7)
    );
  sig_controller_rem0ctr_Mcount_s_Cnt_xor_7_Q : XORCY
    port map (
      CI => sig_controller_rem0ctr_Mcount_s_Cnt_cy(6),
      LI => sig_controller_rem0ctr_Mcount_s_Cnt_cy_7_rt_1431,
      O => sig_controller_rem0ctr_Result(7)
    );
  sig_controller_rem0ctr_Mcount_s_Cnt_cy_8_Q : MUXCY
    port map (
      CI => sig_controller_rem0ctr_Mcount_s_Cnt_cy(7),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_rem0ctr_Mcount_s_Cnt_cy_8_rt_1433,
      O => sig_controller_rem0ctr_Mcount_s_Cnt_cy(8)
    );
  sig_controller_rem0ctr_Mcount_s_Cnt_xor_8_Q : XORCY
    port map (
      CI => sig_controller_rem0ctr_Mcount_s_Cnt_cy(7),
      LI => sig_controller_rem0ctr_Mcount_s_Cnt_cy_8_rt_1433,
      O => sig_controller_rem0ctr_Result(8)
    );
  sig_controller_rem0ctr_Mcount_s_Cnt_cy_9_Q : MUXCY
    port map (
      CI => sig_controller_rem0ctr_Mcount_s_Cnt_cy(8),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_rem0ctr_Mcount_s_Cnt_cy_9_rt_1435,
      O => sig_controller_rem0ctr_Mcount_s_Cnt_cy(9)
    );
  sig_controller_rem0ctr_Mcount_s_Cnt_xor_9_Q : XORCY
    port map (
      CI => sig_controller_rem0ctr_Mcount_s_Cnt_cy(8),
      LI => sig_controller_rem0ctr_Mcount_s_Cnt_cy_9_rt_1435,
      O => sig_controller_rem0ctr_Result(9)
    );
  sig_controller_rem0ctr_Mcount_s_Cnt_xor_10_Q : XORCY
    port map (
      CI => sig_controller_rem0ctr_Mcount_s_Cnt_cy(9),
      LI => sig_controller_rem0ctr_Mcount_s_Cnt_xor_10_rt_1437,
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
      C => m_TP_0_OBUF_925,
      CE => sig_controller_rem1ctr_s_Reg_not0001,
      D => sig_controller_rem1ctr_s_Reg_mux0000(0),
      Q => sig_controller_rem1ctr_s_Reg(0)
    );
  sig_controller_rem1ctr_s_Reg_1 : FDE
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_rem1ctr_s_Reg_not0001,
      D => sig_controller_rem1ctr_s_Reg_mux0000(1),
      Q => sig_controller_rem1ctr_s_Reg(1)
    );
  sig_controller_rem1ctr_s_Reg_2 : FDE
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_rem1ctr_s_Reg_not0001,
      D => sig_controller_rem1ctr_s_Reg_mux0000(2),
      Q => sig_controller_rem1ctr_s_Reg(2)
    );
  sig_controller_rem1ctr_s_Reg_3 : FDE
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_rem1ctr_s_Reg_not0001,
      D => sig_controller_rem1ctr_s_Reg_mux0000(3),
      Q => sig_controller_rem1ctr_s_Reg(3)
    );
  sig_controller_rem1ctr_s_Reg_4 : FDE
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_rem1ctr_s_Reg_not0001,
      D => sig_controller_rem1ctr_s_Reg_mux0000(4),
      Q => sig_controller_rem1ctr_s_Reg(4)
    );
  sig_controller_rem1ctr_s_Reg_5 : FDE
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_rem1ctr_s_Reg_not0001,
      D => sig_controller_rem1ctr_s_Reg_mux0000(5),
      Q => sig_controller_rem1ctr_s_Reg(5)
    );
  sig_controller_rem1ctr_s_Reg_6 : FDE
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_rem1ctr_s_Reg_not0001,
      D => sig_controller_rem1ctr_s_Reg_mux0000(6),
      Q => sig_controller_rem1ctr_s_Reg(6)
    );
  sig_controller_rem1ctr_s_Reg_7 : FDE
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_rem1ctr_s_Reg_not0001,
      D => sig_controller_rem1ctr_s_Reg_mux0000(7),
      Q => sig_controller_rem1ctr_s_Reg(7)
    );
  sig_controller_rem1ctr_s_Reg_8 : FDE
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_rem1ctr_s_Reg_not0001,
      D => sig_controller_rem1ctr_s_Reg_mux0000(8),
      Q => sig_controller_rem1ctr_s_Reg(8)
    );
  sig_controller_rem1ctr_s_Reg_9 : FDE
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_rem1ctr_s_Reg_not0001,
      D => sig_controller_rem1ctr_s_Reg_mux0000(9),
      Q => sig_controller_rem1ctr_s_Reg(9)
    );
  sig_controller_rem1ctr_s_Reg_10 : FDE
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_rem1ctr_s_Reg_not0001,
      D => sig_controller_rem1ctr_s_Reg_mux0000(10),
      Q => sig_controller_rem1ctr_s_Reg(10)
    );
  sig_controller_rem1ctr_s_Cnt_0 : FDRE
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_s_enp1_1673,
      D => sig_controller_rem1ctr_Result(0),
      R => sig_controller_s_clr1_1630,
      Q => sig_controller_rem1ctr_s_Cnt(0)
    );
  sig_controller_rem1ctr_s_Cnt_1 : FDRE
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_s_enp1_1673,
      D => sig_controller_rem1ctr_Result(1),
      R => sig_controller_s_clr1_1630,
      Q => sig_controller_rem1ctr_s_Cnt(1)
    );
  sig_controller_rem1ctr_s_Cnt_2 : FDRE
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_s_enp1_1673,
      D => sig_controller_rem1ctr_Result(2),
      R => sig_controller_s_clr1_1630,
      Q => sig_controller_rem1ctr_s_Cnt(2)
    );
  sig_controller_rem1ctr_s_Cnt_3 : FDRE
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_s_enp1_1673,
      D => sig_controller_rem1ctr_Result(3),
      R => sig_controller_s_clr1_1630,
      Q => sig_controller_rem1ctr_s_Cnt(3)
    );
  sig_controller_rem1ctr_s_Cnt_4 : FDRE
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_s_enp1_1673,
      D => sig_controller_rem1ctr_Result(4),
      R => sig_controller_s_clr1_1630,
      Q => sig_controller_rem1ctr_s_Cnt(4)
    );
  sig_controller_rem1ctr_s_Cnt_5 : FDRE
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_s_enp1_1673,
      D => sig_controller_rem1ctr_Result(5),
      R => sig_controller_s_clr1_1630,
      Q => sig_controller_rem1ctr_s_Cnt(5)
    );
  sig_controller_rem1ctr_s_Cnt_6 : FDRE
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_s_enp1_1673,
      D => sig_controller_rem1ctr_Result(6),
      R => sig_controller_s_clr1_1630,
      Q => sig_controller_rem1ctr_s_Cnt(6)
    );
  sig_controller_rem1ctr_s_Cnt_7 : FDRE
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_s_enp1_1673,
      D => sig_controller_rem1ctr_Result(7),
      R => sig_controller_s_clr1_1630,
      Q => sig_controller_rem1ctr_s_Cnt(7)
    );
  sig_controller_rem1ctr_s_Cnt_8 : FDRE
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_s_enp1_1673,
      D => sig_controller_rem1ctr_Result(8),
      R => sig_controller_s_clr1_1630,
      Q => sig_controller_rem1ctr_s_Cnt(8)
    );
  sig_controller_rem1ctr_s_Cnt_9 : FDRE
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_s_enp1_1673,
      D => sig_controller_rem1ctr_Result(9),
      R => sig_controller_s_clr1_1630,
      Q => sig_controller_rem1ctr_s_Cnt(9)
    );
  sig_controller_rem1ctr_s_Cnt_10 : FDRE
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_s_enp1_1673,
      D => sig_controller_rem1ctr_Result(10),
      R => sig_controller_s_clr1_1630,
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
      S => sig_controller_rem1ctr_Mcount_s_Cnt_cy_1_rt_1536,
      O => sig_controller_rem1ctr_Mcount_s_Cnt_cy(1)
    );
  sig_controller_rem1ctr_Mcount_s_Cnt_xor_1_Q : XORCY
    port map (
      CI => sig_controller_rem1ctr_Mcount_s_Cnt_cy(0),
      LI => sig_controller_rem1ctr_Mcount_s_Cnt_cy_1_rt_1536,
      O => sig_controller_rem1ctr_Result(1)
    );
  sig_controller_rem1ctr_Mcount_s_Cnt_cy_2_Q : MUXCY
    port map (
      CI => sig_controller_rem1ctr_Mcount_s_Cnt_cy(1),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_rem1ctr_Mcount_s_Cnt_cy_2_rt_1538,
      O => sig_controller_rem1ctr_Mcount_s_Cnt_cy(2)
    );
  sig_controller_rem1ctr_Mcount_s_Cnt_xor_2_Q : XORCY
    port map (
      CI => sig_controller_rem1ctr_Mcount_s_Cnt_cy(1),
      LI => sig_controller_rem1ctr_Mcount_s_Cnt_cy_2_rt_1538,
      O => sig_controller_rem1ctr_Result(2)
    );
  sig_controller_rem1ctr_Mcount_s_Cnt_cy_3_Q : MUXCY
    port map (
      CI => sig_controller_rem1ctr_Mcount_s_Cnt_cy(2),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_rem1ctr_Mcount_s_Cnt_cy_3_rt_1540,
      O => sig_controller_rem1ctr_Mcount_s_Cnt_cy(3)
    );
  sig_controller_rem1ctr_Mcount_s_Cnt_xor_3_Q : XORCY
    port map (
      CI => sig_controller_rem1ctr_Mcount_s_Cnt_cy(2),
      LI => sig_controller_rem1ctr_Mcount_s_Cnt_cy_3_rt_1540,
      O => sig_controller_rem1ctr_Result(3)
    );
  sig_controller_rem1ctr_Mcount_s_Cnt_cy_4_Q : MUXCY
    port map (
      CI => sig_controller_rem1ctr_Mcount_s_Cnt_cy(3),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_rem1ctr_Mcount_s_Cnt_cy_4_rt_1542,
      O => sig_controller_rem1ctr_Mcount_s_Cnt_cy(4)
    );
  sig_controller_rem1ctr_Mcount_s_Cnt_xor_4_Q : XORCY
    port map (
      CI => sig_controller_rem1ctr_Mcount_s_Cnt_cy(3),
      LI => sig_controller_rem1ctr_Mcount_s_Cnt_cy_4_rt_1542,
      O => sig_controller_rem1ctr_Result(4)
    );
  sig_controller_rem1ctr_Mcount_s_Cnt_cy_5_Q : MUXCY
    port map (
      CI => sig_controller_rem1ctr_Mcount_s_Cnt_cy(4),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_rem1ctr_Mcount_s_Cnt_cy_5_rt_1544,
      O => sig_controller_rem1ctr_Mcount_s_Cnt_cy(5)
    );
  sig_controller_rem1ctr_Mcount_s_Cnt_xor_5_Q : XORCY
    port map (
      CI => sig_controller_rem1ctr_Mcount_s_Cnt_cy(4),
      LI => sig_controller_rem1ctr_Mcount_s_Cnt_cy_5_rt_1544,
      O => sig_controller_rem1ctr_Result(5)
    );
  sig_controller_rem1ctr_Mcount_s_Cnt_cy_6_Q : MUXCY
    port map (
      CI => sig_controller_rem1ctr_Mcount_s_Cnt_cy(5),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_rem1ctr_Mcount_s_Cnt_cy_6_rt_1546,
      O => sig_controller_rem1ctr_Mcount_s_Cnt_cy(6)
    );
  sig_controller_rem1ctr_Mcount_s_Cnt_xor_6_Q : XORCY
    port map (
      CI => sig_controller_rem1ctr_Mcount_s_Cnt_cy(5),
      LI => sig_controller_rem1ctr_Mcount_s_Cnt_cy_6_rt_1546,
      O => sig_controller_rem1ctr_Result(6)
    );
  sig_controller_rem1ctr_Mcount_s_Cnt_cy_7_Q : MUXCY
    port map (
      CI => sig_controller_rem1ctr_Mcount_s_Cnt_cy(6),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_rem1ctr_Mcount_s_Cnt_cy_7_rt_1548,
      O => sig_controller_rem1ctr_Mcount_s_Cnt_cy(7)
    );
  sig_controller_rem1ctr_Mcount_s_Cnt_xor_7_Q : XORCY
    port map (
      CI => sig_controller_rem1ctr_Mcount_s_Cnt_cy(6),
      LI => sig_controller_rem1ctr_Mcount_s_Cnt_cy_7_rt_1548,
      O => sig_controller_rem1ctr_Result(7)
    );
  sig_controller_rem1ctr_Mcount_s_Cnt_cy_8_Q : MUXCY
    port map (
      CI => sig_controller_rem1ctr_Mcount_s_Cnt_cy(7),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_rem1ctr_Mcount_s_Cnt_cy_8_rt_1550,
      O => sig_controller_rem1ctr_Mcount_s_Cnt_cy(8)
    );
  sig_controller_rem1ctr_Mcount_s_Cnt_xor_8_Q : XORCY
    port map (
      CI => sig_controller_rem1ctr_Mcount_s_Cnt_cy(7),
      LI => sig_controller_rem1ctr_Mcount_s_Cnt_cy_8_rt_1550,
      O => sig_controller_rem1ctr_Result(8)
    );
  sig_controller_rem1ctr_Mcount_s_Cnt_cy_9_Q : MUXCY
    port map (
      CI => sig_controller_rem1ctr_Mcount_s_Cnt_cy(8),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_rem1ctr_Mcount_s_Cnt_cy_9_rt_1552,
      O => sig_controller_rem1ctr_Mcount_s_Cnt_cy(9)
    );
  sig_controller_rem1ctr_Mcount_s_Cnt_xor_9_Q : XORCY
    port map (
      CI => sig_controller_rem1ctr_Mcount_s_Cnt_cy(8),
      LI => sig_controller_rem1ctr_Mcount_s_Cnt_cy_9_rt_1552,
      O => sig_controller_rem1ctr_Result(9)
    );
  sig_controller_rem1ctr_Mcount_s_Cnt_xor_10_Q : XORCY
    port map (
      CI => sig_controller_rem1ctr_Mcount_s_Cnt_cy(9),
      LI => sig_controller_rem1ctr_Mcount_s_Cnt_xor_10_rt_1554,
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
      C => m_TP_0_OBUF_925,
      CE => sig_controller_daremctr_s_Reg_not0001,
      D => sig_controller_daremctr_s_Reg_mux0000(0),
      Q => sig_controller_daremctr_s_Reg(0)
    );
  sig_controller_daremctr_s_Reg_1 : FDE
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_daremctr_s_Reg_not0001,
      D => sig_controller_daremctr_s_Reg_mux0000(1),
      Q => sig_controller_daremctr_s_Reg(1)
    );
  sig_controller_daremctr_s_Reg_2 : FDE
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_daremctr_s_Reg_not0001,
      D => sig_controller_daremctr_s_Reg_mux0000(2),
      Q => sig_controller_daremctr_s_Reg(2)
    );
  sig_controller_daremctr_s_Reg_3 : FDE
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_daremctr_s_Reg_not0001,
      D => sig_controller_daremctr_s_Reg_mux0000(3),
      Q => sig_controller_daremctr_s_Reg(3)
    );
  sig_controller_daremctr_s_Reg_4 : FDE
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_daremctr_s_Reg_not0001,
      D => sig_controller_daremctr_s_Reg_mux0000(4),
      Q => sig_controller_daremctr_s_Reg(4)
    );
  sig_controller_daremctr_s_Reg_5 : FDE
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_daremctr_s_Reg_not0001,
      D => sig_controller_daremctr_s_Reg_mux0000(5),
      Q => sig_controller_daremctr_s_Reg(5)
    );
  sig_controller_daremctr_s_Reg_6 : FDE
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_daremctr_s_Reg_not0001,
      D => sig_controller_daremctr_s_Reg_mux0000(6),
      Q => sig_controller_daremctr_s_Reg(6)
    );
  sig_controller_daremctr_s_Reg_7 : FDE
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_daremctr_s_Reg_not0001,
      D => sig_controller_daremctr_s_Reg_mux0000(7),
      Q => sig_controller_daremctr_s_Reg(7)
    );
  sig_controller_daremctr_s_Reg_8 : FDE
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_daremctr_s_Reg_not0001,
      D => sig_controller_daremctr_s_Reg_mux0000(8),
      Q => sig_controller_daremctr_s_Reg(8)
    );
  sig_controller_daremctr_s_Reg_9 : FDE
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_daremctr_s_Reg_not0001,
      D => sig_controller_daremctr_s_Reg_mux0000(9),
      Q => sig_controller_daremctr_s_Reg(9)
    );
  sig_controller_daremctr_s_Reg_10 : FDE
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_daremctr_s_Reg_not0001,
      D => sig_controller_daremctr_s_Reg_mux0000(10),
      Q => sig_controller_daremctr_s_Reg(10)
    );
  sig_controller_daremctr_s_Cnt_0 : FDRE
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_s_enpda_1680,
      D => sig_controller_daremctr_Result(0),
      R => sig_controller_s_clrda_1637,
      Q => sig_controller_daremctr_s_Cnt(0)
    );
  sig_controller_daremctr_s_Cnt_1 : FDRE
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_s_enpda_1680,
      D => sig_controller_daremctr_Result(1),
      R => sig_controller_s_clrda_1637,
      Q => sig_controller_daremctr_s_Cnt(1)
    );
  sig_controller_daremctr_s_Cnt_2 : FDRE
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_s_enpda_1680,
      D => sig_controller_daremctr_Result(2),
      R => sig_controller_s_clrda_1637,
      Q => sig_controller_daremctr_s_Cnt(2)
    );
  sig_controller_daremctr_s_Cnt_3 : FDRE
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_s_enpda_1680,
      D => sig_controller_daremctr_Result(3),
      R => sig_controller_s_clrda_1637,
      Q => sig_controller_daremctr_s_Cnt(3)
    );
  sig_controller_daremctr_s_Cnt_4 : FDRE
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_s_enpda_1680,
      D => sig_controller_daremctr_Result(4),
      R => sig_controller_s_clrda_1637,
      Q => sig_controller_daremctr_s_Cnt(4)
    );
  sig_controller_daremctr_s_Cnt_5 : FDRE
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_s_enpda_1680,
      D => sig_controller_daremctr_Result(5),
      R => sig_controller_s_clrda_1637,
      Q => sig_controller_daremctr_s_Cnt(5)
    );
  sig_controller_daremctr_s_Cnt_6 : FDRE
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_s_enpda_1680,
      D => sig_controller_daremctr_Result(6),
      R => sig_controller_s_clrda_1637,
      Q => sig_controller_daremctr_s_Cnt(6)
    );
  sig_controller_daremctr_s_Cnt_7 : FDRE
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_s_enpda_1680,
      D => sig_controller_daremctr_Result(7),
      R => sig_controller_s_clrda_1637,
      Q => sig_controller_daremctr_s_Cnt(7)
    );
  sig_controller_daremctr_s_Cnt_8 : FDRE
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_s_enpda_1680,
      D => sig_controller_daremctr_Result(8),
      R => sig_controller_s_clrda_1637,
      Q => sig_controller_daremctr_s_Cnt(8)
    );
  sig_controller_daremctr_s_Cnt_9 : FDRE
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_s_enpda_1680,
      D => sig_controller_daremctr_Result(9),
      R => sig_controller_s_clrda_1637,
      Q => sig_controller_daremctr_s_Cnt(9)
    );
  sig_controller_daremctr_s_Cnt_10 : FDRE
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_s_enpda_1680,
      D => sig_controller_daremctr_Result(10),
      R => sig_controller_s_clrda_1637,
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
      S => sig_controller_daremctr_Mcount_s_Cnt_cy_1_rt_1310,
      O => sig_controller_daremctr_Mcount_s_Cnt_cy(1)
    );
  sig_controller_daremctr_Mcount_s_Cnt_xor_1_Q : XORCY
    port map (
      CI => sig_controller_daremctr_Mcount_s_Cnt_cy(0),
      LI => sig_controller_daremctr_Mcount_s_Cnt_cy_1_rt_1310,
      O => sig_controller_daremctr_Result(1)
    );
  sig_controller_daremctr_Mcount_s_Cnt_cy_2_Q : MUXCY
    port map (
      CI => sig_controller_daremctr_Mcount_s_Cnt_cy(1),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_daremctr_Mcount_s_Cnt_cy_2_rt_1312,
      O => sig_controller_daremctr_Mcount_s_Cnt_cy(2)
    );
  sig_controller_daremctr_Mcount_s_Cnt_xor_2_Q : XORCY
    port map (
      CI => sig_controller_daremctr_Mcount_s_Cnt_cy(1),
      LI => sig_controller_daremctr_Mcount_s_Cnt_cy_2_rt_1312,
      O => sig_controller_daremctr_Result(2)
    );
  sig_controller_daremctr_Mcount_s_Cnt_cy_3_Q : MUXCY
    port map (
      CI => sig_controller_daremctr_Mcount_s_Cnt_cy(2),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_daremctr_Mcount_s_Cnt_cy_3_rt_1314,
      O => sig_controller_daremctr_Mcount_s_Cnt_cy(3)
    );
  sig_controller_daremctr_Mcount_s_Cnt_xor_3_Q : XORCY
    port map (
      CI => sig_controller_daremctr_Mcount_s_Cnt_cy(2),
      LI => sig_controller_daremctr_Mcount_s_Cnt_cy_3_rt_1314,
      O => sig_controller_daremctr_Result(3)
    );
  sig_controller_daremctr_Mcount_s_Cnt_cy_4_Q : MUXCY
    port map (
      CI => sig_controller_daremctr_Mcount_s_Cnt_cy(3),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_daremctr_Mcount_s_Cnt_cy_4_rt_1316,
      O => sig_controller_daremctr_Mcount_s_Cnt_cy(4)
    );
  sig_controller_daremctr_Mcount_s_Cnt_xor_4_Q : XORCY
    port map (
      CI => sig_controller_daremctr_Mcount_s_Cnt_cy(3),
      LI => sig_controller_daremctr_Mcount_s_Cnt_cy_4_rt_1316,
      O => sig_controller_daremctr_Result(4)
    );
  sig_controller_daremctr_Mcount_s_Cnt_cy_5_Q : MUXCY
    port map (
      CI => sig_controller_daremctr_Mcount_s_Cnt_cy(4),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_daremctr_Mcount_s_Cnt_cy_5_rt_1318,
      O => sig_controller_daremctr_Mcount_s_Cnt_cy(5)
    );
  sig_controller_daremctr_Mcount_s_Cnt_xor_5_Q : XORCY
    port map (
      CI => sig_controller_daremctr_Mcount_s_Cnt_cy(4),
      LI => sig_controller_daremctr_Mcount_s_Cnt_cy_5_rt_1318,
      O => sig_controller_daremctr_Result(5)
    );
  sig_controller_daremctr_Mcount_s_Cnt_cy_6_Q : MUXCY
    port map (
      CI => sig_controller_daremctr_Mcount_s_Cnt_cy(5),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_daremctr_Mcount_s_Cnt_cy_6_rt_1320,
      O => sig_controller_daremctr_Mcount_s_Cnt_cy(6)
    );
  sig_controller_daremctr_Mcount_s_Cnt_xor_6_Q : XORCY
    port map (
      CI => sig_controller_daremctr_Mcount_s_Cnt_cy(5),
      LI => sig_controller_daremctr_Mcount_s_Cnt_cy_6_rt_1320,
      O => sig_controller_daremctr_Result(6)
    );
  sig_controller_daremctr_Mcount_s_Cnt_cy_7_Q : MUXCY
    port map (
      CI => sig_controller_daremctr_Mcount_s_Cnt_cy(6),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_daremctr_Mcount_s_Cnt_cy_7_rt_1322,
      O => sig_controller_daremctr_Mcount_s_Cnt_cy(7)
    );
  sig_controller_daremctr_Mcount_s_Cnt_xor_7_Q : XORCY
    port map (
      CI => sig_controller_daremctr_Mcount_s_Cnt_cy(6),
      LI => sig_controller_daremctr_Mcount_s_Cnt_cy_7_rt_1322,
      O => sig_controller_daremctr_Result(7)
    );
  sig_controller_daremctr_Mcount_s_Cnt_cy_8_Q : MUXCY
    port map (
      CI => sig_controller_daremctr_Mcount_s_Cnt_cy(7),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_daremctr_Mcount_s_Cnt_cy_8_rt_1324,
      O => sig_controller_daremctr_Mcount_s_Cnt_cy(8)
    );
  sig_controller_daremctr_Mcount_s_Cnt_xor_8_Q : XORCY
    port map (
      CI => sig_controller_daremctr_Mcount_s_Cnt_cy(7),
      LI => sig_controller_daremctr_Mcount_s_Cnt_cy_8_rt_1324,
      O => sig_controller_daremctr_Result(8)
    );
  sig_controller_daremctr_Mcount_s_Cnt_cy_9_Q : MUXCY
    port map (
      CI => sig_controller_daremctr_Mcount_s_Cnt_cy(8),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_daremctr_Mcount_s_Cnt_cy_9_rt_1326,
      O => sig_controller_daremctr_Mcount_s_Cnt_cy(9)
    );
  sig_controller_daremctr_Mcount_s_Cnt_xor_9_Q : XORCY
    port map (
      CI => sig_controller_daremctr_Mcount_s_Cnt_cy(8),
      LI => sig_controller_daremctr_Mcount_s_Cnt_cy_9_rt_1326,
      O => sig_controller_daremctr_Result(9)
    );
  sig_controller_daremctr_Mcount_s_Cnt_xor_10_Q : XORCY
    port map (
      CI => sig_controller_daremctr_Mcount_s_Cnt_cy(9),
      LI => sig_controller_daremctr_Mcount_s_Cnt_xor_10_rt_1328,
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
      C => m_TP_0_OBUF_925,
      CE => sig_controller_adremctr_s_Reg_not0001,
      D => sig_controller_adremctr_s_Reg_mux0000(0),
      Q => sig_controller_adremctr_s_Reg(0)
    );
  sig_controller_adremctr_s_Reg_1 : FDE
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_adremctr_s_Reg_not0001,
      D => sig_controller_adremctr_s_Reg_mux0000(1),
      Q => sig_controller_adremctr_s_Reg(1)
    );
  sig_controller_adremctr_s_Reg_2 : FDE
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_adremctr_s_Reg_not0001,
      D => sig_controller_adremctr_s_Reg_mux0000(2),
      Q => sig_controller_adremctr_s_Reg(2)
    );
  sig_controller_adremctr_s_Reg_3 : FDE
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_adremctr_s_Reg_not0001,
      D => sig_controller_adremctr_s_Reg_mux0000(3),
      Q => sig_controller_adremctr_s_Reg(3)
    );
  sig_controller_adremctr_s_Reg_4 : FDE
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_adremctr_s_Reg_not0001,
      D => sig_controller_adremctr_s_Reg_mux0000(4),
      Q => sig_controller_adremctr_s_Reg(4)
    );
  sig_controller_adremctr_s_Reg_5 : FDE
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_adremctr_s_Reg_not0001,
      D => sig_controller_adremctr_s_Reg_mux0000(5),
      Q => sig_controller_adremctr_s_Reg(5)
    );
  sig_controller_adremctr_s_Reg_6 : FDE
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_adremctr_s_Reg_not0001,
      D => sig_controller_adremctr_s_Reg_mux0000(6),
      Q => sig_controller_adremctr_s_Reg(6)
    );
  sig_controller_adremctr_s_Reg_7 : FDE
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_adremctr_s_Reg_not0001,
      D => sig_controller_adremctr_s_Reg_mux0000(7),
      Q => sig_controller_adremctr_s_Reg(7)
    );
  sig_controller_adremctr_s_Reg_8 : FDE
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_adremctr_s_Reg_not0001,
      D => sig_controller_adremctr_s_Reg_mux0000(8),
      Q => sig_controller_adremctr_s_Reg(8)
    );
  sig_controller_adremctr_s_Reg_9 : FDE
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_adremctr_s_Reg_not0001,
      D => sig_controller_adremctr_s_Reg_mux0000(9),
      Q => sig_controller_adremctr_s_Reg(9)
    );
  sig_controller_adremctr_s_Reg_10 : FDE
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_adremctr_s_Reg_not0001,
      D => sig_controller_adremctr_s_Reg_mux0000(10),
      Q => sig_controller_adremctr_s_Reg(10)
    );
  sig_controller_adremctr_s_Cnt_0 : FDRE
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_s_enpad_1678,
      D => sig_controller_adremctr_Result(0),
      R => sig_controller_s_clrad_1634,
      Q => sig_controller_adremctr_s_Cnt(0)
    );
  sig_controller_adremctr_s_Cnt_1 : FDRE
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_s_enpad_1678,
      D => sig_controller_adremctr_Result(1),
      R => sig_controller_s_clrad_1634,
      Q => sig_controller_adremctr_s_Cnt(1)
    );
  sig_controller_adremctr_s_Cnt_2 : FDRE
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_s_enpad_1678,
      D => sig_controller_adremctr_Result(2),
      R => sig_controller_s_clrad_1634,
      Q => sig_controller_adremctr_s_Cnt(2)
    );
  sig_controller_adremctr_s_Cnt_3 : FDRE
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_s_enpad_1678,
      D => sig_controller_adremctr_Result(3),
      R => sig_controller_s_clrad_1634,
      Q => sig_controller_adremctr_s_Cnt(3)
    );
  sig_controller_adremctr_s_Cnt_4 : FDRE
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_s_enpad_1678,
      D => sig_controller_adremctr_Result(4),
      R => sig_controller_s_clrad_1634,
      Q => sig_controller_adremctr_s_Cnt(4)
    );
  sig_controller_adremctr_s_Cnt_5 : FDRE
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_s_enpad_1678,
      D => sig_controller_adremctr_Result(5),
      R => sig_controller_s_clrad_1634,
      Q => sig_controller_adremctr_s_Cnt(5)
    );
  sig_controller_adremctr_s_Cnt_6 : FDRE
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_s_enpad_1678,
      D => sig_controller_adremctr_Result(6),
      R => sig_controller_s_clrad_1634,
      Q => sig_controller_adremctr_s_Cnt(6)
    );
  sig_controller_adremctr_s_Cnt_7 : FDRE
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_s_enpad_1678,
      D => sig_controller_adremctr_Result(7),
      R => sig_controller_s_clrad_1634,
      Q => sig_controller_adremctr_s_Cnt(7)
    );
  sig_controller_adremctr_s_Cnt_8 : FDRE
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_s_enpad_1678,
      D => sig_controller_adremctr_Result(8),
      R => sig_controller_s_clrad_1634,
      Q => sig_controller_adremctr_s_Cnt(8)
    );
  sig_controller_adremctr_s_Cnt_9 : FDRE
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_s_enpad_1678,
      D => sig_controller_adremctr_Result(9),
      R => sig_controller_s_clrad_1634,
      Q => sig_controller_adremctr_s_Cnt(9)
    );
  sig_controller_adremctr_s_Cnt_10 : FDRE
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_s_enpad_1678,
      D => sig_controller_adremctr_Result(10),
      R => sig_controller_s_clrad_1634,
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
      S => sig_controller_adremctr_Mcount_s_Cnt_cy_1_rt_1107,
      O => sig_controller_adremctr_Mcount_s_Cnt_cy(1)
    );
  sig_controller_adremctr_Mcount_s_Cnt_xor_1_Q : XORCY
    port map (
      CI => sig_controller_adremctr_Mcount_s_Cnt_cy(0),
      LI => sig_controller_adremctr_Mcount_s_Cnt_cy_1_rt_1107,
      O => sig_controller_adremctr_Result(1)
    );
  sig_controller_adremctr_Mcount_s_Cnt_cy_2_Q : MUXCY
    port map (
      CI => sig_controller_adremctr_Mcount_s_Cnt_cy(1),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_adremctr_Mcount_s_Cnt_cy_2_rt_1109,
      O => sig_controller_adremctr_Mcount_s_Cnt_cy(2)
    );
  sig_controller_adremctr_Mcount_s_Cnt_xor_2_Q : XORCY
    port map (
      CI => sig_controller_adremctr_Mcount_s_Cnt_cy(1),
      LI => sig_controller_adremctr_Mcount_s_Cnt_cy_2_rt_1109,
      O => sig_controller_adremctr_Result(2)
    );
  sig_controller_adremctr_Mcount_s_Cnt_cy_3_Q : MUXCY
    port map (
      CI => sig_controller_adremctr_Mcount_s_Cnt_cy(2),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_adremctr_Mcount_s_Cnt_cy_3_rt_1111,
      O => sig_controller_adremctr_Mcount_s_Cnt_cy(3)
    );
  sig_controller_adremctr_Mcount_s_Cnt_xor_3_Q : XORCY
    port map (
      CI => sig_controller_adremctr_Mcount_s_Cnt_cy(2),
      LI => sig_controller_adremctr_Mcount_s_Cnt_cy_3_rt_1111,
      O => sig_controller_adremctr_Result(3)
    );
  sig_controller_adremctr_Mcount_s_Cnt_cy_4_Q : MUXCY
    port map (
      CI => sig_controller_adremctr_Mcount_s_Cnt_cy(3),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_adremctr_Mcount_s_Cnt_cy_4_rt_1113,
      O => sig_controller_adremctr_Mcount_s_Cnt_cy(4)
    );
  sig_controller_adremctr_Mcount_s_Cnt_xor_4_Q : XORCY
    port map (
      CI => sig_controller_adremctr_Mcount_s_Cnt_cy(3),
      LI => sig_controller_adremctr_Mcount_s_Cnt_cy_4_rt_1113,
      O => sig_controller_adremctr_Result(4)
    );
  sig_controller_adremctr_Mcount_s_Cnt_cy_5_Q : MUXCY
    port map (
      CI => sig_controller_adremctr_Mcount_s_Cnt_cy(4),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_adremctr_Mcount_s_Cnt_cy_5_rt_1115,
      O => sig_controller_adremctr_Mcount_s_Cnt_cy(5)
    );
  sig_controller_adremctr_Mcount_s_Cnt_xor_5_Q : XORCY
    port map (
      CI => sig_controller_adremctr_Mcount_s_Cnt_cy(4),
      LI => sig_controller_adremctr_Mcount_s_Cnt_cy_5_rt_1115,
      O => sig_controller_adremctr_Result(5)
    );
  sig_controller_adremctr_Mcount_s_Cnt_cy_6_Q : MUXCY
    port map (
      CI => sig_controller_adremctr_Mcount_s_Cnt_cy(5),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_adremctr_Mcount_s_Cnt_cy_6_rt_1117,
      O => sig_controller_adremctr_Mcount_s_Cnt_cy(6)
    );
  sig_controller_adremctr_Mcount_s_Cnt_xor_6_Q : XORCY
    port map (
      CI => sig_controller_adremctr_Mcount_s_Cnt_cy(5),
      LI => sig_controller_adremctr_Mcount_s_Cnt_cy_6_rt_1117,
      O => sig_controller_adremctr_Result(6)
    );
  sig_controller_adremctr_Mcount_s_Cnt_cy_7_Q : MUXCY
    port map (
      CI => sig_controller_adremctr_Mcount_s_Cnt_cy(6),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_adremctr_Mcount_s_Cnt_cy_7_rt_1119,
      O => sig_controller_adremctr_Mcount_s_Cnt_cy(7)
    );
  sig_controller_adremctr_Mcount_s_Cnt_xor_7_Q : XORCY
    port map (
      CI => sig_controller_adremctr_Mcount_s_Cnt_cy(6),
      LI => sig_controller_adremctr_Mcount_s_Cnt_cy_7_rt_1119,
      O => sig_controller_adremctr_Result(7)
    );
  sig_controller_adremctr_Mcount_s_Cnt_cy_8_Q : MUXCY
    port map (
      CI => sig_controller_adremctr_Mcount_s_Cnt_cy(7),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_adremctr_Mcount_s_Cnt_cy_8_rt_1121,
      O => sig_controller_adremctr_Mcount_s_Cnt_cy(8)
    );
  sig_controller_adremctr_Mcount_s_Cnt_xor_8_Q : XORCY
    port map (
      CI => sig_controller_adremctr_Mcount_s_Cnt_cy(7),
      LI => sig_controller_adremctr_Mcount_s_Cnt_cy_8_rt_1121,
      O => sig_controller_adremctr_Result(8)
    );
  sig_controller_adremctr_Mcount_s_Cnt_cy_9_Q : MUXCY
    port map (
      CI => sig_controller_adremctr_Mcount_s_Cnt_cy(8),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_adremctr_Mcount_s_Cnt_cy_9_rt_1123,
      O => sig_controller_adremctr_Mcount_s_Cnt_cy(9)
    );
  sig_controller_adremctr_Mcount_s_Cnt_xor_9_Q : XORCY
    port map (
      CI => sig_controller_adremctr_Mcount_s_Cnt_cy(8),
      LI => sig_controller_adremctr_Mcount_s_Cnt_cy_9_rt_1123,
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
      C => m_TP_0_OBUF_925,
      D => sig_controller_t_ps_FSM_FFd16_1737,
      Q => sig_controller_t_ps_FSM_FFd7_1758
    );
  sig_controller_t_ps_FSM_FFd5 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_0_OBUF_925,
      D => sig_controller_t_ps_FSM_FFd15_1735,
      Q => sig_controller_t_ps_FSM_FFd5_1756
    );
  sig_controller_t_ps_FSM_FFd2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_0_OBUF_925,
      D => sig_controller_t_ps_FSM_FFd13_1731,
      Q => sig_controller_t_ps_FSM_FFd2_1745
    );
  sig_controller_t_ps_FSM_FFd19 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_0_OBUF_925,
      D => sig_controller_t_ps_FSM_FFd19_In,
      Q => sig_controller_t_ps_FSM_FFd19_1743
    );
  sig_controller_t_ps_FSM_FFd17 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_0_OBUF_925,
      D => sig_controller_t_ps_FSM_FFd17_In,
      Q => sig_controller_t_ps_FSM_FFd17_1739
    );
  sig_controller_t_ps_FSM_FFd18 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_0_OBUF_925,
      D => sig_controller_t_ps_FSM_FFd18_In,
      Q => sig_controller_t_ps_FSM_FFd18_1741
    );
  sig_controller_t_ps_FSM_FFd14 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_0_OBUF_925,
      D => sig_controller_t_ps_FSM_FFd14_In_1734,
      Q => sig_controller_t_ps_FSM_FFd14_1733
    );
  sig_controller_t_ps_FSM_FFd11 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_0_OBUF_925,
      D => sig_controller_t_ps_FSM_FFd11_In,
      Q => sig_controller_t_ps_FSM_FFd11_1727
    );
  sig_controller_t_ps_FSM_FFd9 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_0_OBUF_925,
      D => sig_controller_t_ps_FSM_FFd9_In,
      Q => sig_controller_t_ps_FSM_FFd9_1760
    );
  sig_controller_t_ps_FSM_FFd3 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_0_OBUF_925,
      D => sig_controller_t_ps_FSM_FFd3_In,
      Q => sig_controller_t_ps_FSM_FFd3_1753
    );
  sig_controller_adc_ctr_Mcount_s_cnt_xor_10_Q : XORCY
    port map (
      CI => sig_controller_adc_ctr_Mcount_s_cnt_cy(9),
      LI => sig_controller_adc_ctr_Mcount_s_cnt_xor_10_rt_1090,
      O => sig_controller_Result(10)
    );
  sig_controller_adc_ctr_Mcount_s_cnt_xor_9_Q : XORCY
    port map (
      CI => sig_controller_adc_ctr_Mcount_s_cnt_cy(8),
      LI => sig_controller_adc_ctr_Mcount_s_cnt_cy_9_rt_1088,
      O => sig_controller_Result(9)
    );
  sig_controller_adc_ctr_Mcount_s_cnt_cy_9_Q : MUXCY
    port map (
      CI => sig_controller_adc_ctr_Mcount_s_cnt_cy(8),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_adc_ctr_Mcount_s_cnt_cy_9_rt_1088,
      O => sig_controller_adc_ctr_Mcount_s_cnt_cy(9)
    );
  sig_controller_adc_ctr_Mcount_s_cnt_xor_8_Q : XORCY
    port map (
      CI => sig_controller_adc_ctr_Mcount_s_cnt_cy(7),
      LI => sig_controller_adc_ctr_Mcount_s_cnt_cy_8_rt_1086,
      O => sig_controller_Result(8)
    );
  sig_controller_adc_ctr_Mcount_s_cnt_cy_8_Q : MUXCY
    port map (
      CI => sig_controller_adc_ctr_Mcount_s_cnt_cy(7),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_adc_ctr_Mcount_s_cnt_cy_8_rt_1086,
      O => sig_controller_adc_ctr_Mcount_s_cnt_cy(8)
    );
  sig_controller_adc_ctr_Mcount_s_cnt_xor_7_Q : XORCY
    port map (
      CI => sig_controller_adc_ctr_Mcount_s_cnt_cy(6),
      LI => sig_controller_adc_ctr_Mcount_s_cnt_cy_7_rt_1084,
      O => sig_controller_Result(7)
    );
  sig_controller_adc_ctr_Mcount_s_cnt_cy_7_Q : MUXCY
    port map (
      CI => sig_controller_adc_ctr_Mcount_s_cnt_cy(6),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_adc_ctr_Mcount_s_cnt_cy_7_rt_1084,
      O => sig_controller_adc_ctr_Mcount_s_cnt_cy(7)
    );
  sig_controller_adc_ctr_Mcount_s_cnt_xor_6_Q : XORCY
    port map (
      CI => sig_controller_adc_ctr_Mcount_s_cnt_cy(5),
      LI => sig_controller_adc_ctr_Mcount_s_cnt_cy_6_rt_1082,
      O => sig_controller_Result(6)
    );
  sig_controller_adc_ctr_Mcount_s_cnt_cy_6_Q : MUXCY
    port map (
      CI => sig_controller_adc_ctr_Mcount_s_cnt_cy(5),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_adc_ctr_Mcount_s_cnt_cy_6_rt_1082,
      O => sig_controller_adc_ctr_Mcount_s_cnt_cy(6)
    );
  sig_controller_adc_ctr_Mcount_s_cnt_xor_5_Q : XORCY
    port map (
      CI => sig_controller_adc_ctr_Mcount_s_cnt_cy(4),
      LI => sig_controller_adc_ctr_Mcount_s_cnt_cy_5_rt_1080,
      O => sig_controller_Result(5)
    );
  sig_controller_adc_ctr_Mcount_s_cnt_cy_5_Q : MUXCY
    port map (
      CI => sig_controller_adc_ctr_Mcount_s_cnt_cy(4),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_adc_ctr_Mcount_s_cnt_cy_5_rt_1080,
      O => sig_controller_adc_ctr_Mcount_s_cnt_cy(5)
    );
  sig_controller_adc_ctr_Mcount_s_cnt_xor_4_Q : XORCY
    port map (
      CI => sig_controller_adc_ctr_Mcount_s_cnt_cy(3),
      LI => sig_controller_adc_ctr_Mcount_s_cnt_cy_4_rt_1078,
      O => sig_controller_Result(4)
    );
  sig_controller_adc_ctr_Mcount_s_cnt_cy_4_Q : MUXCY
    port map (
      CI => sig_controller_adc_ctr_Mcount_s_cnt_cy(3),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_adc_ctr_Mcount_s_cnt_cy_4_rt_1078,
      O => sig_controller_adc_ctr_Mcount_s_cnt_cy(4)
    );
  sig_controller_adc_ctr_Mcount_s_cnt_xor_3_Q : XORCY
    port map (
      CI => sig_controller_adc_ctr_Mcount_s_cnt_cy(2),
      LI => sig_controller_adc_ctr_Mcount_s_cnt_cy_3_rt_1076,
      O => sig_controller_Result(3)
    );
  sig_controller_adc_ctr_Mcount_s_cnt_cy_3_Q : MUXCY
    port map (
      CI => sig_controller_adc_ctr_Mcount_s_cnt_cy(2),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_adc_ctr_Mcount_s_cnt_cy_3_rt_1076,
      O => sig_controller_adc_ctr_Mcount_s_cnt_cy(3)
    );
  sig_controller_adc_ctr_Mcount_s_cnt_xor_2_Q : XORCY
    port map (
      CI => sig_controller_adc_ctr_Mcount_s_cnt_cy(1),
      LI => sig_controller_adc_ctr_Mcount_s_cnt_cy_2_rt_1074,
      O => sig_controller_Result(2)
    );
  sig_controller_adc_ctr_Mcount_s_cnt_cy_2_Q : MUXCY
    port map (
      CI => sig_controller_adc_ctr_Mcount_s_cnt_cy(1),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_adc_ctr_Mcount_s_cnt_cy_2_rt_1074,
      O => sig_controller_adc_ctr_Mcount_s_cnt_cy(2)
    );
  sig_controller_adc_ctr_Mcount_s_cnt_xor_1_Q : XORCY
    port map (
      CI => sig_controller_adc_ctr_Mcount_s_cnt_cy(0),
      LI => sig_controller_adc_ctr_Mcount_s_cnt_cy_1_rt_1072,
      O => sig_controller_Result(1)
    );
  sig_controller_adc_ctr_Mcount_s_cnt_cy_1_Q : MUXCY
    port map (
      CI => sig_controller_adc_ctr_Mcount_s_cnt_cy(0),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_adc_ctr_Mcount_s_cnt_cy_1_rt_1072,
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
      C => m_TP_1_OBUF_927,
      D => sig_controller_Result(10),
      R => sig_controller_adc_ctr_s_cnt_not0001,
      Q => sig_controller_adc_ctr_s_cnt(10)
    );
  sig_controller_adc_ctr_s_cnt_9 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_1_OBUF_927,
      D => sig_controller_Result(9),
      R => sig_controller_adc_ctr_s_cnt_not0001,
      Q => sig_controller_adc_ctr_s_cnt(9)
    );
  sig_controller_adc_ctr_s_cnt_8 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_1_OBUF_927,
      D => sig_controller_Result(8),
      R => sig_controller_adc_ctr_s_cnt_not0001,
      Q => sig_controller_adc_ctr_s_cnt(8)
    );
  sig_controller_adc_ctr_s_cnt_7 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_1_OBUF_927,
      D => sig_controller_Result(7),
      R => sig_controller_adc_ctr_s_cnt_not0001,
      Q => sig_controller_adc_ctr_s_cnt(7)
    );
  sig_controller_adc_ctr_s_cnt_6 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_1_OBUF_927,
      D => sig_controller_Result(6),
      R => sig_controller_adc_ctr_s_cnt_not0001,
      Q => sig_controller_adc_ctr_s_cnt(6)
    );
  sig_controller_adc_ctr_s_cnt_5 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_1_OBUF_927,
      D => sig_controller_Result(5),
      R => sig_controller_adc_ctr_s_cnt_not0001,
      Q => sig_controller_adc_ctr_s_cnt(5)
    );
  sig_controller_adc_ctr_s_cnt_4 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_1_OBUF_927,
      D => sig_controller_Result(4),
      R => sig_controller_adc_ctr_s_cnt_not0001,
      Q => sig_controller_adc_ctr_s_cnt(4)
    );
  sig_controller_adc_ctr_s_cnt_3 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_1_OBUF_927,
      D => sig_controller_Result(3),
      R => sig_controller_adc_ctr_s_cnt_not0001,
      Q => sig_controller_adc_ctr_s_cnt(3)
    );
  sig_controller_adc_ctr_s_cnt_2 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_1_OBUF_927,
      D => sig_controller_Result(2),
      R => sig_controller_adc_ctr_s_cnt_not0001,
      Q => sig_controller_adc_ctr_s_cnt(2)
    );
  sig_controller_adc_ctr_s_cnt_1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_1_OBUF_927,
      D => sig_controller_Result(1),
      R => sig_controller_adc_ctr_s_cnt_not0001,
      Q => sig_controller_adc_ctr_s_cnt(1)
    );
  sig_controller_adc_ctr_s_cnt_0 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_1_OBUF_927,
      D => sig_controller_Result(0),
      R => sig_controller_adc_ctr_s_cnt_not0001,
      Q => sig_controller_adc_ctr_s_cnt(0)
    );
  sig_controller_adc_ctr_s_ps_0 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_0_OBUF_925,
      D => sig_controller_adc_ctr_s_ns,
      Q => sig_controller_adc_ctr_s_ps(0)
    );
  sig_controller_s_ram1_mux_sel_1 : LD
    port map (
      D => sig_controller_s_ram1_mux_sel_mux0002(1),
      G => sig_controller_s_ram1_mux_sel_not0001_1687,
      Q => sig_controller_s_ram1_mux_sel(1)
    );
  sig_controller_s_ram1_mux_sel_0 : LD
    port map (
      D => sig_controller_s_ram1_mux_sel_mux0002(0),
      G => sig_controller_s_ram1_mux_sel_not0001_1687,
      Q => sig_controller_s_ram1_mux_sel(0)
    );
  sig_controller_s_selda_1 : LD
    port map (
      D => sig_controller_s_clrda_mux0000,
      G => sig_controller_s_selda_or0000,
      Q => sig_controller_s_selda(1)
    );
  sig_controller_s_selda_0 : LD
    port map (
      D => sig_controller_t_ps_FSM_FFd15_1735,
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
      D => sig_controller_s_enp0_not000125,
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
      D => sig_controller_t_ps_FSM_FFd13_1731,
      G => sig_controller_s_selad_or0000,
      Q => sig_controller_s_selad(0)
    );
  sig_controller_t_prevmode_3 : LD
    port map (
      D => sig_controller_s_wea0_0_and0000,
      G => sig_controller_t_prevmode_not0001_1723,
      Q => sig_controller_t_prevmode(3)
    );
  sig_controller_t_prevmode_2 : LD
    port map (
      D => sig_controller_t_prevmode_mux0006(2),
      G => sig_controller_t_prevmode_not0001_1723,
      Q => sig_controller_t_prevmode(2)
    );
  sig_controller_t_prevmode_1 : LD
    port map (
      D => sig_controller_s_enp0_not000125,
      G => sig_controller_t_prevmode_not0001_1723,
      Q => sig_controller_t_prevmode(1)
    );
  sig_controller_t_prevmode_0 : LD
    port map (
      D => sig_controller_s_ram1_mux_sel_and0003,
      G => sig_controller_t_prevmode_not0001_1723,
      Q => sig_controller_t_prevmode(0)
    );
  sig_controller_s_clrda : LD
    port map (
      D => sig_controller_s_clrda_mux0000,
      G => sig_controller_s_clrda_or0000,
      Q => sig_controller_s_clrda_1637
    );
  sig_controller_s_clrad : LD
    port map (
      D => sig_controller_s_clrad_mux0000,
      G => sig_controller_s_clrad_or0000,
      Q => sig_controller_s_clrad_1634
    );
  sig_controller_s_dout_en : LD
    port map (
      D => sig_controller_t_ps_FSM_FFd9_1760,
      G => sig_controller_s_dout_en_or0000,
      Q => sig_controller_s_dout_en_1651
    );
  sig_controller_s_wea1_0 : LD
    port map (
      D => sig_controller_s_wea1_0_mux0000,
      G => sig_controller_s_wea1_0_not0001_1717,
      Q => sig_controller_s_wea1(0)
    );
  sig_controller_s_wea0_0 : LD
    port map (
      D => sig_controller_s_wea0_0_mux0000,
      G => sig_controller_s_wea0_0_not0001_1714,
      Q => sig_controller_s_wea0(0)
    );
  sig_controller_s_dac_stop : LD
    port map (
      D => sig_controller_s_dac_stop_mux0000,
      G => sig_controller_s_dac_stop_or0000,
      Q => sig_controller_s_dac_stop_1647
    );
  sig_controller_s_dac_start : LD
    port map (
      D => sig_controller_t_ps_FSM_FFd3_1753,
      G => sig_controller_s_dac_start_or0000,
      Q => sig_controller_s_dac_start_1645
    );
  sig_controller_s_enp1 : LD
    port map (
      D => sig_controller_s_enp1_mux0000_1674,
      G => sig_controller_s_enp1_not0001,
      Q => sig_controller_s_enp1_1673
    );
  sig_controller_s_enp0 : LD
    port map (
      D => sig_controller_s_enp0_mux0000_1669,
      G => sig_controller_s_enp0_not0001,
      Q => sig_controller_s_enp0_1668
    );
  sig_controller_s_enpda : LD
    port map (
      D => sig_controller_t_ps_FSM_FFd4_1755,
      G => sig_controller_s_enpda_or0000,
      Q => sig_controller_s_enpda_1680
    );
  sig_controller_s_enpad : LD
    port map (
      D => sig_controller_t_ps_FSM_FFd1_1724,
      G => sig_controller_s_enpad_or0000,
      Q => sig_controller_s_enpad_1678
    );
  sig_controller_s_enb3 : LD
    port map (
      D => sig_controller_t_ps_FSM_FFd13_1731,
      G => sig_controller_s_enb3_or0000,
      Q => sig_controller_s_enb3_1666
    );
  sig_controller_s_enb0 : LD
    port map (
      D => sig_controller_s_enb0_mux0000,
      G => sig_controller_s_enb0_or0000,
      Q => sig_controller_s_enb0_1660
    );
  sig_controller_s_ena2 : LD
    port map (
      D => sig_controller_t_ps_FSM_FFd15_1735,
      G => sig_controller_s_ena2_or0000,
      Q => sig_controller_s_ena2_1658
    );
  sig_controller_s_ena1 : LD
    port map (
      D => sig_controller_t_ps_FSM_FFd18_1741,
      G => sig_controller_s_ena1_or0000,
      Q => sig_controller_s_ena1_1656
    );
  sig_controller_s_ena0 : LD
    port map (
      D => sig_controller_s_ena0_mux0000,
      G => sig_controller_s_ena0_or0000_1655,
      Q => sig_controller_s_ena0_1653
    );
  sig_controller_s_da_latch_en : LD
    port map (
      D => sig_controller_t_ps_FSM_FFd3_1753,
      G => sig_controller_s_da_latch_en_or0000,
      Q => sig_controller_s_da_latch_en_1643
    );
  sig_controller_s_adc_stop : LD
    port map (
      D => sig_controller_t_ps_FSM_FFd13_1731,
      G => sig_controller_s_adc_stop_or0000,
      Q => sig_controller_s_adc_stop_1623
    );
  sig_controller_s_adc_start : LD
    port map (
      D => sig_controller_t_ps_FSM_FFd20_1746,
      G => sig_controller_s_enb3_or0000,
      Q => sig_controller_s_adc_start_1622
    );
  sig_controller_s_clr1 : LD
    port map (
      D => sig_controller_s_clr1_mux0009_1631,
      G => sig_controller_s_clr1_not0001,
      Q => sig_controller_s_clr1_1630
    );
  sig_controller_s_clr0 : LD
    port map (
      D => sig_controller_s_clr0_mux0009,
      G => sig_controller_s_clr0_not0001_1629,
      Q => sig_controller_s_clr0_1625
    );
  sig_controller_s_enb1 : LD
    generic map(
      INIT => '0'
    )
    port map (
      D => sig_controller_s_enb1_mux0000,
      G => sig_controller_s_enb1_or0000,
      Q => sig_controller_s_enb1_1663
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
  sig_controller_s_ram1_mux_sel_mux0002_0_1 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd20_1746,
      I1 => sig_controller_t_ps_FSM_FFd16_1737,
      O => sig_controller_s_ram1_mux_sel_mux0002(0)
    );
  sig_controller_s_enpad_or00001 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd20_1746,
      I1 => sig_controller_t_ps_FSM_FFd1_1724,
      O => sig_controller_s_enpad_or0000
    );
  sig_controller_s_enb3_or00001 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd20_1746,
      I1 => sig_controller_t_ps_FSM_FFd13_1731,
      O => sig_controller_s_enb3_or0000
    );
  sig_controller_s_ena2_or00001 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd20_1746,
      I1 => sig_controller_t_ps_FSM_FFd15_1735,
      O => sig_controller_s_ena2_or0000
    );
  sig_controller_s_dout_en_or00001 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd9_1760,
      I1 => sig_controller_t_ps_FSM_FFd8_1759,
      O => sig_controller_s_dout_en_or0000
    );
  sig_controller_s_dac_start_or00001 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd20_1746,
      I1 => sig_controller_t_ps_FSM_FFd3_1753,
      O => sig_controller_s_dac_start_or0000
    );
  sig_controller_s_da_latch_en_or00001 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd3_1753,
      I1 => sig_controller_t_ps_FSM_FFd14_1733,
      O => sig_controller_s_da_latch_en_or0000
    );
  sig_controller_s_clrda_mux00001 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd15_1735,
      I1 => sig_controller_t_ps_FSM_FFd12_1729,
      O => sig_controller_s_clrda_mux0000
    );
  sig_controller_s_clrad_mux00001 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd13_1731,
      I1 => sig_controller_t_ps_FSM_FFd12_1729,
      O => sig_controller_s_clrad_mux0000
    );
  sig_controller_s_clr0_not00012111 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd17_1739,
      I1 => sig_controller_t_ps_FSM_FFd16_1737,
      O => sig_controller_N131
    );
  sig_controller_s_adc_stop_or00001 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd13_1731,
      I1 => sig_controller_t_ps_FSM_FFd2_1745,
      O => sig_controller_s_adc_stop_or0000
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
  sig_controller_s_ram1_mux_sel_not000121 : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => s_mode_addr(0),
      I1 => s_mode_addr(1),
      I2 => s_mode_addr(2),
      O => sig_controller_N14
    );
  sig_controller_s_ram1_mux_sel_not000111 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => sig_controller_N14,
      I1 => sig_controller_t_ps_FSM_FFd19_1743,
      I2 => s_OE_b_1008,
      O => sig_controller_N13
    );
  sig_controller_s_enpda_or00001 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd20_1746,
      I1 => sig_controller_t_ps_FSM_FFd3_1753,
      I2 => sig_controller_t_ps_FSM_FFd4_1755,
      O => sig_controller_s_enpda_or0000
    );
  sig_controller_s_enb0_or00001 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd20_1746,
      I1 => sig_controller_t_ps_FSM_FFd9_1760,
      I2 => sig_controller_t_ps_FSM_FFd17_1739,
      O => sig_controller_s_enb0_or0000
    );
  sig_controller_s_enb0_mux00001 : LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd9_1760,
      I1 => s_OE_b_1008,
      I2 => sig_controller_t_ps_FSM_FFd17_1739,
      O => sig_controller_s_enb0_mux0000
    );
  sig_controller_s_ena0_mux00001 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd18_1741,
      I1 => sig_controller_t_ps_FSM_FFd13_1731,
      I2 => sig_controller_t_ps_FSM_FFd16_1737,
      O => sig_controller_s_ena0_mux0000
    );
  sig_controller_s_dac_stop_mux00001 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd15_1735,
      I1 => sig_controller_t_ps_FSM_FFd12_1729,
      I2 => sig_controller_t_ps_FSM_FFd14_1733,
      O => sig_controller_s_dac_stop_mux0000
    );
  sig_controller_s_clrda_or00001 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd15_1735,
      I1 => sig_controller_t_ps_FSM_FFd12_1729,
      I2 => sig_controller_t_ps_FSM_FFd5_1756,
      O => sig_controller_s_clrda_or0000
    );
  sig_controller_s_clrad_or00001 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd13_1731,
      I1 => sig_controller_t_ps_FSM_FFd12_1729,
      I2 => sig_controller_t_ps_FSM_FFd2_1745,
      O => sig_controller_s_clrad_or0000
    );
  sig_controller_s_selad_or00001 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd13_1731,
      I1 => sig_controller_t_ps_FSM_FFd20_1746,
      I2 => sig_controller_t_ps_FSM_FFd12_1729,
      I3 => sig_controller_t_ps_FSM_FFd2_1745,
      O => sig_controller_s_selad_or0000
    );
  sig_controller_s_sel1_not000111 : LUT4
    generic map(
      INIT => X"FDFF"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd11_1727,
      I1 => s_mode_addr(1),
      I2 => s_mode_addr(2),
      I3 => s_mode_addr(0),
      O => sig_controller_N5
    );
  sig_controller_s_sel1_mux0003_1_1 : LUT4
    generic map(
      INIT => X"FFAE"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd12_1729,
      I1 => sig_controller_N13,
      I2 => sig_controller_t_prevmode(3),
      I3 => sig_controller_t_ps_FSM_FFd16_1737,
      O => sig_controller_s_sel1_mux0003(1)
    );
  sig_controller_s_enb1_mux00001 : LUT4
    generic map(
      INIT => X"FFAE"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd15_1735,
      I1 => sig_controller_t_ps_FSM_FFd9_1760,
      I2 => s_OE_b_1008,
      I3 => sig_controller_N131,
      O => sig_controller_s_enb1_mux0000
    );
  sig_controller_s_ena1_or00001 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd18_1741,
      I1 => sig_controller_t_ps_FSM_FFd20_1746,
      I2 => sig_controller_t_ps_FSM_FFd8_1759,
      I3 => sig_controller_t_ps_FSM_FFd10_1725,
      O => sig_controller_s_ena1_or0000
    );
  sig_controller_s_ram1_mux_sel_mux0002_1_Q : LUT4
    generic map(
      INIT => X"FFF8"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd18_1741,
      I1 => sig_controller_N14,
      I2 => sig_controller_t_ps_FSM_FFd20_1746,
      I3 => N22,
      O => sig_controller_s_ram1_mux_sel_mux0002(1)
    );
  sig_controller_s_enp1_mux0000 : LUT4
    generic map(
      INIT => X"FFAE"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd6_1757,
      I1 => sig_controller_t_ps_FSM_FFd8_1759,
      I2 => sig_controller_t_prevmode(0),
      I3 => N24,
      O => sig_controller_s_enp1_mux0000_1674
    );
  sig_controller_s_enp0_mux0000 : LUT4
    generic map(
      INIT => X"FFF8"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd8_1759,
      I1 => sig_controller_t_prevmode(0),
      I2 => sig_controller_t_ps_FSM_FFd2_1745,
      I3 => N26,
      O => sig_controller_s_enp0_mux0000_1669
    );
  sig_controller_s_clr1_not00011_SW0 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => s_OE_b_1008,
      I1 => sig_controller_t_prevmode(3),
      I2 => sig_controller_t_prevmode(2),
      O => N34
    );
  sig_controller_s_ena0_or0000 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd8_1759,
      I1 => sig_controller_t_ps_FSM_FFd10_1725,
      I2 => sig_controller_t_ps_FSM_FFd20_1746,
      I3 => sig_controller_s_ena0_mux0000,
      O => sig_controller_s_ena0_or0000_1655
    );
  sig_controller_t_prevmode_not0001 : LUT4
    generic map(
      INIT => X"FE54"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd19_1743,
      I1 => sig_controller_t_ps_FSM_FFd11_1727,
      I2 => N40,
      I3 => sig_controller_N4,
      O => sig_controller_t_prevmode_not0001_1723
    );
  sig_controller_s_ram1_mux_sel_not0001 : LUT4
    generic map(
      INIT => X"FFD8"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd18_1741,
      I1 => N43,
      I2 => N42,
      I3 => sig_controller_N13,
      O => sig_controller_s_ram1_mux_sel_not0001_1687
    );
  sig_controller_s_clr0_not00011_SW0 : LUT4
    generic map(
      INIT => X"FFD8"
    )
    port map (
      I0 => s_OE_b_1008,
      I1 => sig_controller_t_prevmode(1),
      I2 => sig_controller_t_prevmode(0),
      I3 => s_mode_addr(2),
      O => N45
    );
  sig_controller_s_clr0_not00011 : LUT4
    generic map(
      INIT => X"FF02"
    )
    port map (
      I0 => s_mode_addr(0),
      I1 => s_mode_addr(1),
      I2 => N45,
      I3 => sig_controller_N4,
      O => sig_controller_N1
    );
  sig_controller_s_clr0_not0001_SW0 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd7_1758,
      I1 => sig_controller_t_ps_FSM_FFd18_1741,
      I2 => sig_controller_s_adc_stop_or0000,
      I3 => sig_controller_N131,
      O => N47
    );
  sig_controller_s_clr0_not0001 : LUT4
    generic map(
      INIT => X"FE54"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd19_1743,
      I1 => sig_controller_t_ps_FSM_FFd12_1729,
      I2 => N47,
      I3 => sig_controller_N1,
      O => sig_controller_s_clr0_not0001_1629
    );
  clk_gen_s_cw0_and00009 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => clk_gen_state_FSM_FFd3_874,
      I1 => clk_gen_state_FSM_FFd4_875,
      I2 => clk_gen_state_FSM_FFd1_870,
      I3 => clk_gen_state_FSM_FFd2_872,
      O => clk_gen_s_cw0_and00009_856
    );
  clk_gen_s_cw0_and000012 : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => clk_gen_s_data(7),
      I1 => clk_gen_s_cw0_and00009_856,
      I2 => clk_gen_s_data(6),
      O => clk_gen_s_cw0_and000012_855
    );
  clk_gen_s_cw0_and000017 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => clk_gen_s_addr(0),
      I1 => clk_gen_s_addr(1),
      I2 => clk_gen_s_cw0_and000012_855,
      O => clk_gen_s_cw0
    );
  sig_controller_s_clr1_not00017 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd12_1729,
      I1 => sig_controller_t_ps_FSM_FFd7_1758,
      I2 => sig_controller_t_ps_FSM_FFd18_1741,
      I3 => sig_controller_N131,
      O => sig_controller_s_clr1_not00017_1633
    );
  sig_controller_s_enp0_not000116 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd2_1745,
      I1 => sig_controller_t_ps_FSM_FFd7_1758,
      I2 => sig_controller_t_ps_FSM_FFd10_1725,
      I3 => sig_controller_t_ps_FSM_FFd20_1746,
      O => sig_controller_s_enp0_not000116_1671
    );
  sig_controller_s_sel0_not000152 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => sig_controller_t_prevmode(0),
      I1 => sig_controller_t_ps_FSM_FFd8_1759,
      O => sig_controller_s_sel0_not000152_1694
    );
  sig_controller_s_sel0_not000174 : LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      I0 => sig_controller_s_sel0_not000125_1693,
      I1 => s_out_mux_sel,
      I2 => sig_controller_s_sel0_not000164_1695,
      O => sig_controller_s_sel0_not0001
    );
  sig_controller_s_sel1_not000117 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd7_1758,
      I1 => sig_controller_t_ps_FSM_FFd16_1737,
      I2 => sig_controller_t_ps_FSM_FFd10_1725,
      O => sig_controller_s_sel1_not000117_1701
    );
  sig_controller_t_ps_FSM_FFd19_In1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => s_cmd_data_1018,
      I1 => sig_controller_t_ps_FSM_FFd20_1746,
      O => sig_controller_t_ps_FSM_FFd19_In
    );
  sig_controller_t_ps_FSM_FFd11_In1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => s_wen_1051,
      I1 => sig_controller_t_ps_FSM_FFd18_1741,
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
      I0 => s_ren_1050,
      I1 => sig_controller_t_ps_FSM_FFd17_1739,
      I2 => sig_controller_t_ps_FSM_FFd9_1760,
      O => sig_controller_t_ps_FSM_FFd9_In
    );
  clk_gen_CNT0_s_wr_wait_mux00031 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => clk_gen_CNT0_s_wr_L_847,
      I1 => clk_gen_CNT0_s_wr_M_848,
      I2 => clk_gen_CNT0_s_wr_wait_849,
      O => clk_gen_CNT0_s_wr_wait_mux0003
    );
  sig_controller_dac_ctr_s_ps_FSM_FFd2_In1 : LUT3
    generic map(
      INIT => X"4E"
    )
    port map (
      I0 => sig_controller_dac_ctr_s_ps_FSM_FFd2_1262,
      I1 => sig_controller_s_dac_start_1645,
      I2 => sig_controller_s_dac_stop_1647,
      O => sig_controller_dac_ctr_s_ps_FSM_FFd2_In
    );
  sig_controller_adc_ctr_s_ns_0_mux00001 : LUT3
    generic map(
      INIT => X"4E"
    )
    port map (
      I0 => sig_controller_adc_ctr_s_ps(0),
      I1 => sig_controller_s_adc_start_1622,
      I2 => sig_controller_s_adc_stop_1623,
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
      I0 => sig_controller_dac_ctr_s_ps_FSM_FFd2_1262,
      I1 => sig_controller_dac_ctr_s_ps_FSM_FFd1_1261,
      O => sig_controller_dac_ctr_s_ps_cmp_eq0001
    );
  clk_gen_CNT0_s_REG_10_not00011 : LUT4
    generic map(
      INIT => X"0C04"
    )
    port map (
      I0 => clk_gen_CNT0_s_wr_L_847,
      I1 => clk_gen_CNT0_s_wr_M_848,
      I2 => clk_gen_s_cw0,
      I3 => clk_gen_CNT0_s_wr_wait_849,
      O => clk_gen_CNT0_s_REG_10_not0001
    );
  clk_gen_CNT0_s_REG_0_not00011 : LUT4
    generic map(
      INIT => X"1050"
    )
    port map (
      I0 => clk_gen_s_cw0,
      I1 => clk_gen_CNT0_s_wr_wait_849,
      I2 => clk_gen_CNT0_s_wr_L_847,
      I3 => clk_gen_CNT0_s_wr_M_848,
      O => clk_gen_CNT0_s_REG_0_not0001
    );
  sig_controller_adc_ctr_s_cnt_not00011 : LUT4
    generic map(
      INIT => X"FFFD"
    )
    port map (
      I0 => sig_controller_adc_ctr_s_ps(0),
      I1 => sig_controller_adc_ctr_s_cnt(8),
      I2 => sig_controller_adc_ctr_s_cnt(9),
      I3 => sig_controller_adc_ctr_s_cnt(10),
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
      I0 => m_reset_b_IBUF_969,
      I1 => clk_gen_CNT0_s_mode_838,
      O => clk_gen_CNT0_N8
    );
  clk_gen_state_FSM_FFd1_In1 : LUT3
    generic map(
      INIT => X"C4"
    )
    port map (
      I0 => m_wen_IBUF_971,
      I1 => clk_gen_state_FSM_FFd2_872,
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
      I1 => clk_gen_state_FSM_FFd6_877,
      I2 => m_wen_IBUF_971,
      I3 => clk_gen_state_FSM_FFd1_870,
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
      O => sig_controller_dac_ctr_Msub_s_reg_sub0000_cy_7_19_1233
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
      O => sig_controller_rem1ctr_s_Reg_mux0000_3_11_1606
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
      O => sig_controller_rem0ctr_s_Reg_mux0000_3_11_1497
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
      O => sig_controller_daremctr_s_Reg_mux0000_3_11_1380
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
      O => sig_controller_adremctr_s_Reg_mux0000_3_11_1173
    );
  clk_gen_s_addr_not00011 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => clk_gen_state_FSM_FFd6_877,
      I1 => m_wen_IBUF_971,
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
      I1 => clk_gen_state_FSM_FFd2_872,
      I2 => m_wen_IBUF_971,
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
      O => clk_gen_CNT0_s_CNT2_cmp_eq000011_650
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
      O => clk_gen_CNT0_s_CNT2_cmp_eq000024_651
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
      O => clk_gen_CNT0_s_CNT2_cmp_eq000048_652
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
      O => clk_gen_CNT0_s_CNT2_cmp_eq000061_653
    );
  clk_gen_CNT0_s_CNT2_cmp_eq000075 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => clk_gen_CNT0_s_CNT2_cmp_eq000011_650,
      I1 => clk_gen_CNT0_s_CNT2_cmp_eq000024_651,
      I2 => clk_gen_CNT0_s_CNT2_cmp_eq000048_652,
      I3 => clk_gen_CNT0_s_CNT2_cmp_eq000061_653,
      O => clk_gen_CNT0_s_CNT2_cmp_eq0000
    );
  sig_controller_t_ps_FSM_FFd3_In1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => sig_controller_s_comp2,
      I1 => sig_controller_t_ps_FSM_FFd4_1755,
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
      O => sig_controller_rem1ctr_s_Reg_mux0000_6_11_1612
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
      O => sig_controller_rem0ctr_s_Reg_mux0000_6_11_1503
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
      O => sig_controller_daremctr_s_Reg_mux0000_6_11_1386
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
      O => sig_controller_adremctr_s_Reg_mux0000_6_11_1179
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
      I1 => clk_gen_CNT0_s_mode_838,
      I2 => clk_gen_CNT0_s_CNT3_UD_754,
      O => N64
    );
  clk_gen_CNT0_m_out : LUT4
    generic map(
      INIT => X"D580"
    )
    port map (
      I0 => clk_gen_CNT0_s_out2_or0000,
      I1 => m_TP_0_OBUF1,
      I2 => clk_gen_CNT0_s_mode_838,
      I3 => N64,
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
      O => clk_gen_CNT0_s_out2_or000012_840
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
      O => clk_gen_CNT0_s_out2_or000025_841
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
      O => clk_gen_CNT0_s_out2_or000049_842
    );
  clk_gen_CNT0_s_out2_or000058 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => clk_gen_CNT0_s_REG(2),
      I1 => clk_gen_CNT0_s_REG(1),
      I2 => clk_gen_CNT0_s_REG(15),
      O => clk_gen_CNT0_s_out2_or000058_843
    );
  clk_gen_CNT0_s_out2_or000071 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => clk_gen_CNT0_s_out2_or000012_840,
      I1 => clk_gen_CNT0_s_out2_or000025_841,
      I2 => clk_gen_CNT0_s_out2_or000049_842,
      I3 => clk_gen_CNT0_s_out2_or000058_843,
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
      O => sig_controller_rem1ctr_s_Reg_mux0000_7_2_1616
    );
  sig_controller_rem1ctr_s_Reg_mux0000_7_34 : LUT4
    generic map(
      INIT => X"FFAE"
    )
    port map (
      I0 => sig_controller_rem1ctr_s_Reg_mux0000_7_2_1616,
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
      O => sig_controller_rem0ctr_s_Reg_mux0000_7_2_1507
    );
  sig_controller_rem0ctr_s_Reg_mux0000_7_34 : LUT4
    generic map(
      INIT => X"FFAE"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg_mux0000_7_2_1507,
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
      O => sig_controller_daremctr_s_Reg_mux0000_7_2_1390
    );
  sig_controller_daremctr_s_Reg_mux0000_7_34 : LUT4
    generic map(
      INIT => X"FFAE"
    )
    port map (
      I0 => sig_controller_daremctr_s_Reg_mux0000_7_2_1390,
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
      O => sig_controller_adremctr_s_Reg_mux0000_7_2_1183
    );
  sig_controller_adremctr_s_Reg_mux0000_7_34 : LUT4
    generic map(
      INIT => X"FFAE"
    )
    port map (
      I0 => sig_controller_adremctr_s_Reg_mux0000_7_2_1183,
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
      O => addr_decode_m_mode_addr_2_18_116
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
      O => addr_decode_m_mode_addr_2_26_117
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
      I2 => m_reset_b_IBUF_969,
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
      I2 => sig_controller_t_ps_FSM_FFd19_1743,
      O => N72
    );
  sig_controller_t_ps_FSM_FFd14_In : LUT4
    generic map(
      INIT => X"22F2"
    )
    port map (
      I0 => N72,
      I1 => s_mode_addr(1),
      I2 => sig_controller_t_ps_FSM_FFd14_1733,
      I3 => s_OE_b_1008,
      O => sig_controller_t_ps_FSM_FFd14_In_1734
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
      O => N76
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
      O => clk_gen_CNT0_s_CNT3_D_mux0004_7_9_749
    );
  clk_gen_CNT0_s_CNT3_D_mux0004_7_17 : LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      I0 => clk_gen_CNT0_s_CNT3_D(7),
      I1 => clk_gen_CNT0_s_mode_838,
      I2 => clk_gen_CNT0_s_CNT3_2(8),
      I3 => clk_gen_CNT0_N5,
      O => clk_gen_CNT0_s_CNT3_D_mux0004_7_17_748
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
      O => clk_gen_CNT0_s_CNT3_U_mux0000_2_14_791
    );
  clk_gen_CNT0_s_CNT3_D_mux0004_13_11 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => m_reset_b_IBUF_969,
      I1 => clk_gen_CNT0_N5,
      O => clk_gen_CNT0_N3
    );
  sig_controller_m_out_mux_sel_0_mux00001 : LUT3
    generic map(
      INIT => X"EF"
    )
    port map (
      I0 => s_mode_addr(2),
      I1 => s_mode_addr(1),
      I2 => s_mode_addr(0),
      O => s_out_mux_sel
    );
  clk_gen_CNT0_s_CNT3_D_mux0004_13_21 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => m_reset_b_IBUF_969,
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
      I0 => sig_controller_t_ps_FSM_FFd18_1741,
      I1 => s_wen_1051,
      I2 => s_OE_b_1008,
      I3 => sig_controller_N211,
      O => sig_controller_t_ps_FSM_FFd18_In
    );
  sig_controller_t_ps_FSM_FFd17_In1 : LUT4
    generic map(
      INIT => X"22F2"
    )
    port map (
      I0 => sig_controller_N211,
      I1 => s_OE_b_1008,
      I2 => sig_controller_t_ps_FSM_FFd17_1739,
      I3 => s_ren_1050,
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
      I3 => clk_gen_CNT0_s_mode_838,
      O => clk_gen_CNT0_N5
    );
  sig_controller_t_ps_FSM_FFd17_In21 : LUT4
    generic map(
      INIT => X"0440"
    )
    port map (
      I0 => s_mode_addr(2),
      I1 => sig_controller_t_ps_FSM_FFd19_1743,
      I2 => s_mode_addr(0),
      I3 => s_mode_addr(1),
      O => sig_controller_N211
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
      O => clk_gen_CNT0_s_CNT3_D_mux0004_9_4_752
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
      O => clk_gen_CNT0_s_CNT3_D_mux0004_9_9_753
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
      O => clk_gen_CNT0_s_CNT3_D_mux0004_8_4_750
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
      O => clk_gen_CNT0_s_CNT3_D_mux0004_8_9_751
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
      O => clk_gen_CNT0_s_CNT3_D_mux0004_6_4_746
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
      O => clk_gen_CNT0_s_CNT3_D_mux0004_6_9_747
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
      O => clk_gen_CNT0_s_CNT3_D_mux0004_5_4_744
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
      O => clk_gen_CNT0_s_CNT3_D_mux0004_5_9_745
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
      O => clk_gen_CNT0_s_CNT3_D_mux0004_4_4_742
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
      O => clk_gen_CNT0_s_CNT3_D_mux0004_4_9_743
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
      O => clk_gen_CNT0_s_CNT3_D_mux0004_3_4_740
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
      O => clk_gen_CNT0_s_CNT3_D_mux0004_3_9_741
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
      O => clk_gen_CNT0_s_CNT3_D_mux0004_2_4_738
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
      O => clk_gen_CNT0_s_CNT3_D_mux0004_2_9_739
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
      O => clk_gen_CNT0_s_CNT3_D_mux0004_1_4_736
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
      O => clk_gen_CNT0_s_CNT3_D_mux0004_1_9_737
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
      O => clk_gen_CNT0_s_CNT3_D_mux0004_12_4_725
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
      O => clk_gen_CNT0_s_CNT3_D_mux0004_12_9_726
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
      O => clk_gen_CNT0_s_CNT3_D_mux0004_11_4_723
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
      O => clk_gen_CNT0_s_CNT3_D_mux0004_11_9_724
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
      O => clk_gen_CNT0_s_CNT3_D_mux0004_10_4_721
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
      O => clk_gen_CNT0_s_CNT3_D_mux0004_10_9_722
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
      O => clk_gen_CNT0_s_CNT3_D_mux0004_0_4_719
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
      O => clk_gen_CNT0_s_CNT3_D_mux0004_0_9_720
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
      O => clk_gen_CNT0_s_CNT3_D_mux0004_13_20_730
    );
  clk_gen_CNT0_s_CNT3_D_mux0004_14_12 : LUT4
    generic map(
      INIT => X"E040"
    )
    port map (
      I0 => clk_gen_CNT0_s_CNT3_D_cmp_eq0000,
      I1 => clk_gen_CNT0_s_CNT3_D_addsub0000(0),
      I2 => clk_gen_CNT0_s_mode_838,
      I3 => clk_gen_CNT0_s_CNT3_2(1),
      O => clk_gen_CNT0_s_CNT3_D_mux0004_14_12_731
    );
  clk_gen_CNT0_s_CNT3_D_mux0004_14_59 : LUT4
    generic map(
      INIT => X"EAE2"
    )
    port map (
      I0 => clk_gen_CNT0_s_REG(0),
      I1 => m_reset_b_IBUF_969,
      I2 => clk_gen_CNT0_s_CNT3_D_mux0004_14_40,
      I3 => clk_gen_CNT0_s_CNT3_D_mux0004_14_12_731,
      O => clk_gen_CNT0_s_CNT3_D_mux0004_14_59_734
    );
  clk_gen_CNT0_s_CNT3_D_mux0004_14_68 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => clk_gen_CNT0_N4,
      I1 => clk_gen_CNT0_s_REG(1),
      O => clk_gen_CNT0_s_CNT3_D_mux0004_14_68_735
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
      O => addr_decode_m_mode_addr_0_81_112
    );
  addr_decode_m_mode_addr_0_83 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => addr_decode_m_mode_addr_0_81_112,
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
      O => addr_decode_m_mode_addr_1_11_113
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
      O => addr_decode_m_mode_addr_1_57_115
    );
  sig_controller_t_ps_FSM_FFd20_In18 : LUT4
    generic map(
      INIT => X"22F2"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd20_1746,
      I1 => s_cmd_data_1018,
      I2 => sig_controller_t_ps_FSM_FFd10_1725,
      I3 => s_wen_1051,
      O => sig_controller_t_ps_FSM_FFd20_In18_1747
    );
  sig_controller_t_ps_FSM_FFd20_In32 : LUT4
    generic map(
      INIT => X"FFF8"
    )
    port map (
      I0 => sig_controller_s_comp1,
      I1 => sig_controller_t_ps_FSM_FFd6_1757,
      I2 => sig_controller_t_ps_FSM_FFd20_In6,
      I3 => sig_controller_t_ps_FSM_FFd20_In18_1747,
      O => sig_controller_t_ps_FSM_FFd20_In32_1748
    );
  clk_gen_CNT0_s_CNT3_U_mux0000_2_122 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => clk_gen_CNT0_s_mode_838,
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
      I1 => clk_gen_CNT0_s_mode_838,
      I2 => clk_gen_CNT0_s_REG(0),
      O => clk_gen_CNT0_N01
    );
  clk_gen_CNT0_s_CNT3_D_mux0004_7_110 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => clk_gen_CNT0_s_mode_838,
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
      O => clk_gen_CNT0_s_CNT3_U_mux0000_9_14_804
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
      O => clk_gen_CNT0_s_CNT3_U_mux0000_7_14_801
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
      O => clk_gen_CNT0_s_CNT3_U_mux0000_6_14_799
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
      O => clk_gen_CNT0_s_CNT3_U_mux0000_5_14_797
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
      O => clk_gen_CNT0_s_CNT3_U_mux0000_4_14_795
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
      O => clk_gen_CNT0_s_CNT3_U_mux0000_3_14_793
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
      O => clk_gen_CNT0_s_CNT3_U_mux0000_1_14_789
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
      O => clk_gen_CNT0_s_CNT3_U_mux0000_15_14_787
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
      O => clk_gen_CNT0_s_CNT3_U_mux0000_14_14_785
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
      O => clk_gen_CNT0_s_CNT3_U_mux0000_13_14_783
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
      O => clk_gen_CNT0_s_CNT3_U_mux0000_12_14_781
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
      O => clk_gen_CNT0_s_CNT3_U_mux0000_11_14_779
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
      O => clk_gen_CNT0_s_CNT3_U_mux0000_10_14_777
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
      O => clk_gen_CNT0_s_CNT3_UD_cmp_eq000012_756
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
      O => clk_gen_CNT0_s_CNT3_UD_cmp_eq000025_757
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
      O => clk_gen_CNT0_s_CNT3_UD_cmp_eq000049_758
    );
  clk_gen_CNT0_s_CNT3_UD_cmp_eq000058 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => clk_gen_CNT0_s_CNT3_U(12),
      I1 => clk_gen_CNT0_s_CNT3_U(13),
      I2 => clk_gen_CNT0_s_CNT3_U(0),
      O => clk_gen_CNT0_s_CNT3_UD_cmp_eq000058_759
    );
  clk_gen_CNT0_s_CNT3_UD_cmp_eq000071 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => clk_gen_CNT0_s_CNT3_UD_cmp_eq000012_756,
      I1 => clk_gen_CNT0_s_CNT3_UD_cmp_eq000025_757,
      I2 => clk_gen_CNT0_s_CNT3_UD_cmp_eq000049_758,
      I3 => clk_gen_CNT0_s_CNT3_UD_cmp_eq000058_759,
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
      O => clk_gen_CNT0_s_CNT3_D_cmp_eq00007_718
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
      O => clk_gen_CNT0_s_CNT3_D_cmp_eq000020_715
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
      O => clk_gen_CNT0_s_CNT3_D_cmp_eq000043_716
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
      O => clk_gen_CNT0_s_CNT3_D_cmp_eq000056_717
    );
  clk_gen_CNT0_s_CNT3_D_cmp_eq000070 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => clk_gen_CNT0_s_CNT3_D_cmp_eq00007_718,
      I1 => clk_gen_CNT0_s_CNT3_D_cmp_eq000020_715,
      I2 => clk_gen_CNT0_s_CNT3_D_cmp_eq000043_716,
      I3 => clk_gen_CNT0_s_CNT3_D_cmp_eq000056_717,
      O => clk_gen_CNT0_s_CNT3_D_cmp_eq0000
    );
  ram1_mux_dout_1_LogicTrst_SW0 : LUT4
    generic map(
      INIT => X"F8A8"
    )
    port map (
      I0 => sig_controller_s_ram1_mux_sel(1),
      I1 => inlatch_dout(1),
      I2 => sig_controller_s_ram1_mux_sel(0),
      I3 => s_doutb0(1),
      O => N93
    );
  ram1_mux_dout_1_LogicTrst_SW1 : LUT4
    generic map(
      INIT => X"FBD9"
    )
    port map (
      I0 => sig_controller_s_ram1_mux_sel(0),
      I1 => sig_controller_s_ram1_mux_sel(1),
      I2 => inlatch_dout(1),
      I3 => s_doutb0(1),
      O => N94
    );
  ram1_mux_dout_1_LogicTrst : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => N94,
      I1 => N93,
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
      I0 => sig_controller_s_ram1_mux_sel(1),
      I1 => inlatch_dout(0),
      I2 => sig_controller_s_ram1_mux_sel(0),
      I3 => s_doutb0(0),
      O => N96
    );
  ram1_mux_dout_0_LogicTrst_SW1 : LUT4
    generic map(
      INIT => X"FBD9"
    )
    port map (
      I0 => sig_controller_s_ram1_mux_sel(0),
      I1 => sig_controller_s_ram1_mux_sel(1),
      I2 => inlatch_dout(0),
      I3 => s_doutb0(0),
      O => N97
    );
  ram1_mux_dout_0_LogicTrst : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => N97,
      I1 => N96,
      I2 => Averager_out(0),
      O => ram1_mux_dout(0)
    );
  m_cmd_data_IBUF : IBUF
    port map (
      I => m_cmd_data,
      O => m_cmd_data_IBUF_949
    );
  m_OE_b_IBUF : IBUF
    port map (
      I => m_OE_b,
      O => m_OE_b_IBUF_922
    );
  m_wen_IBUF : IBUF
    port map (
      I => m_wen,
      O => m_wen_IBUF_971
    );
  m_reset_b_IBUF : IBUF
    port map (
      I => m_reset_b,
      O => m_reset_b_IBUF_969
    );
  m_ren_IBUF : IBUF
    port map (
      I => m_ren,
      O => m_ren_IBUF_967
    );
  m_address_8_IBUF : IBUF
    port map (
      I => m_address(8),
      O => m_address_8_IBUF_946
    );
  m_address_7_IBUF : IBUF
    port map (
      I => m_address(7),
      O => m_address_7_IBUF_945
    );
  m_address_6_IBUF : IBUF
    port map (
      I => m_address(6),
      O => m_address_6_IBUF_944
    );
  m_address_5_IBUF : IBUF
    port map (
      I => m_address(5),
      O => m_address_5_IBUF_943
    );
  m_address_4_IBUF : IBUF
    port map (
      I => m_address(4),
      O => m_address_4_IBUF_942
    );
  m_address_3_IBUF : IBUF
    port map (
      I => m_address(3),
      O => m_address_3_IBUF_941
    );
  m_address_2_IBUF : IBUF
    port map (
      I => m_address(2),
      O => m_address_2_IBUF_940
    );
  m_address_1_IBUF : IBUF
    port map (
      I => m_address(1),
      O => m_address_1_IBUF_939
    );
  m_address_0_IBUF : IBUF
    port map (
      I => m_address(0),
      O => m_address_0_IBUF_938
    );
  m_ADC_data_7_IBUF : IBUF
    port map (
      I => m_ADC_data(7),
      O => m_ADC_data_7_IBUF_911
    );
  m_ADC_data_6_IBUF : IBUF
    port map (
      I => m_ADC_data(6),
      O => m_ADC_data_6_IBUF_910
    );
  m_ADC_data_5_IBUF : IBUF
    port map (
      I => m_ADC_data(5),
      O => m_ADC_data_5_IBUF_909
    );
  m_ADC_data_4_IBUF : IBUF
    port map (
      I => m_ADC_data(4),
      O => m_ADC_data_4_IBUF_908
    );
  m_ADC_data_3_IBUF : IBUF
    port map (
      I => m_ADC_data(3),
      O => m_ADC_data_3_IBUF_907
    );
  m_ADC_data_2_IBUF : IBUF
    port map (
      I => m_ADC_data(2),
      O => m_ADC_data_2_IBUF_906
    );
  m_ADC_data_1_IBUF : IBUF
    port map (
      I => m_ADC_data(1),
      O => m_ADC_data_1_IBUF_905
    );
  m_ADC_data_0_IBUF : IBUF
    port map (
      I => m_ADC_data(0),
      O => m_ADC_data_0_IBUF_904
    );
  m_data_7_IOBUF : IOBUF
    port map (
      I => outlatch_dout(7),
      T => s_dout_en_inv,
      O => N99,
      IO => m_data(7)
    );
  m_data_6_IOBUF : IOBUF
    port map (
      I => outlatch_dout(6),
      T => s_dout_en_inv,
      O => N100,
      IO => m_data(6)
    );
  m_data_5_IOBUF : IOBUF
    port map (
      I => outlatch_dout(5),
      T => s_dout_en_inv,
      O => N101,
      IO => m_data(5)
    );
  m_data_4_IOBUF : IOBUF
    port map (
      I => outlatch_dout(4),
      T => s_dout_en_inv,
      O => N102,
      IO => m_data(4)
    );
  m_data_3_IOBUF : IOBUF
    port map (
      I => outlatch_dout(3),
      T => s_dout_en_inv,
      O => N103,
      IO => m_data(3)
    );
  m_data_2_IOBUF : IOBUF
    port map (
      I => outlatch_dout(2),
      T => s_dout_en_inv,
      O => N104,
      IO => m_data(2)
    );
  m_data_1_IOBUF : IOBUF
    port map (
      I => outlatch_dout(1),
      T => s_dout_en_inv,
      O => N105,
      IO => m_data(1)
    );
  m_data_0_IOBUF : IOBUF
    port map (
      I => outlatch_dout(0),
      T => s_dout_en_inv,
      O => N106,
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
      C => m_TP_0_OBUF_925,
      D => clk_gen_CNT0_s_CNT3_D_mux0004_14_68_735,
      S => clk_gen_CNT0_s_CNT3_D_mux0004_14_59_734,
      Q => clk_gen_CNT0_s_CNT3_D(0)
    );
  clk_gen_CNT0_s_CNT3_D_1 : FDS_1
    port map (
      C => m_TP_0_OBUF_925,
      D => clk_gen_CNT0_s_CNT3_D_mux0004_13_20_730,
      S => clk_gen_CNT0_s_CNT3_D_mux0004_13_11_727,
      Q => clk_gen_CNT0_s_CNT3_D(1)
    );
  clk_gen_CNT0_s_CNT3_D_2 : FDS_1
    port map (
      C => m_TP_0_OBUF_925,
      D => clk_gen_CNT0_s_CNT3_D_mux0004_12_9_726,
      S => clk_gen_CNT0_s_CNT3_D_mux0004_12_4_725,
      Q => clk_gen_CNT0_s_CNT3_D(2)
    );
  clk_gen_CNT0_s_CNT3_D_3 : FDS_1
    port map (
      C => m_TP_0_OBUF_925,
      D => clk_gen_CNT0_s_CNT3_D_mux0004_11_9_724,
      S => clk_gen_CNT0_s_CNT3_D_mux0004_11_4_723,
      Q => clk_gen_CNT0_s_CNT3_D(3)
    );
  clk_gen_CNT0_s_CNT3_D_4 : FDS_1
    port map (
      C => m_TP_0_OBUF_925,
      D => clk_gen_CNT0_s_CNT3_D_mux0004_10_9_722,
      S => clk_gen_CNT0_s_CNT3_D_mux0004_10_4_721,
      Q => clk_gen_CNT0_s_CNT3_D(4)
    );
  clk_gen_CNT0_s_CNT3_D_5 : FDS_1
    port map (
      C => m_TP_0_OBUF_925,
      D => clk_gen_CNT0_s_CNT3_D_mux0004_9_9_753,
      S => clk_gen_CNT0_s_CNT3_D_mux0004_9_4_752,
      Q => clk_gen_CNT0_s_CNT3_D(5)
    );
  clk_gen_CNT0_s_CNT3_D_6 : FDS_1
    port map (
      C => m_TP_0_OBUF_925,
      D => clk_gen_CNT0_s_CNT3_D_mux0004_8_9_751,
      S => clk_gen_CNT0_s_CNT3_D_mux0004_8_4_750,
      Q => clk_gen_CNT0_s_CNT3_D(6)
    );
  clk_gen_CNT0_s_CNT3_D_7 : FDS_1
    port map (
      C => m_TP_0_OBUF_925,
      D => clk_gen_CNT0_s_CNT3_D_mux0004_7_17_748,
      S => clk_gen_CNT0_s_CNT3_D_mux0004_7_9_749,
      Q => clk_gen_CNT0_s_CNT3_D(7)
    );
  clk_gen_CNT0_s_CNT3_D_8 : FDS_1
    port map (
      C => m_TP_0_OBUF_925,
      D => clk_gen_CNT0_s_CNT3_D_mux0004_6_9_747,
      S => clk_gen_CNT0_s_CNT3_D_mux0004_6_4_746,
      Q => clk_gen_CNT0_s_CNT3_D(8)
    );
  clk_gen_CNT0_s_CNT3_D_9 : FDS_1
    port map (
      C => m_TP_0_OBUF_925,
      D => clk_gen_CNT0_s_CNT3_D_mux0004_5_9_745,
      S => clk_gen_CNT0_s_CNT3_D_mux0004_5_4_744,
      Q => clk_gen_CNT0_s_CNT3_D(9)
    );
  clk_gen_CNT0_s_CNT3_D_10 : FDS_1
    port map (
      C => m_TP_0_OBUF_925,
      D => clk_gen_CNT0_s_CNT3_D_mux0004_4_9_743,
      S => clk_gen_CNT0_s_CNT3_D_mux0004_4_4_742,
      Q => clk_gen_CNT0_s_CNT3_D(10)
    );
  clk_gen_CNT0_s_CNT3_D_11 : FDS_1
    port map (
      C => m_TP_0_OBUF_925,
      D => clk_gen_CNT0_s_CNT3_D_mux0004_3_9_741,
      S => clk_gen_CNT0_s_CNT3_D_mux0004_3_4_740,
      Q => clk_gen_CNT0_s_CNT3_D(11)
    );
  clk_gen_CNT0_s_CNT3_D_12 : FDS_1
    port map (
      C => m_TP_0_OBUF_925,
      D => clk_gen_CNT0_s_CNT3_D_mux0004_2_9_739,
      S => clk_gen_CNT0_s_CNT3_D_mux0004_2_4_738,
      Q => clk_gen_CNT0_s_CNT3_D(12)
    );
  clk_gen_CNT0_s_CNT3_D_13 : FDS_1
    port map (
      C => m_TP_0_OBUF_925,
      D => clk_gen_CNT0_s_CNT3_D_mux0004_1_9_737,
      S => clk_gen_CNT0_s_CNT3_D_mux0004_1_4_736,
      Q => clk_gen_CNT0_s_CNT3_D(13)
    );
  clk_gen_CNT0_s_CNT3_D_14 : FDS_1
    port map (
      C => m_TP_0_OBUF_925,
      D => clk_gen_CNT0_s_CNT3_D_mux0004_0_9_720,
      S => clk_gen_CNT0_s_CNT3_D_mux0004_0_4_719,
      Q => clk_gen_CNT0_s_CNT3_D(14)
    );
  clk_gen_CNT0_s_CNT3_U_0 : FDS_1
    port map (
      C => m_TP_0_OBUF_925,
      D => clk_gen_CNT0_s_CNT3_U_mux0000_1_114,
      S => clk_gen_CNT0_s_CNT3_U_mux0000_1_14_789,
      Q => clk_gen_CNT0_s_CNT3_U(0)
    );
  clk_gen_CNT0_s_CNT3_U_1 : FDS_1
    port map (
      C => m_TP_0_OBUF_925,
      D => clk_gen_CNT0_s_CNT3_U_mux0000_2_120,
      S => clk_gen_CNT0_s_CNT3_U_mux0000_2_14_791,
      Q => clk_gen_CNT0_s_CNT3_U(1)
    );
  clk_gen_CNT0_s_CNT3_U_2 : FDS_1
    port map (
      C => m_TP_0_OBUF_925,
      D => clk_gen_CNT0_s_CNT3_U_mux0000_3_114,
      S => clk_gen_CNT0_s_CNT3_U_mux0000_3_14_793,
      Q => clk_gen_CNT0_s_CNT3_U(2)
    );
  clk_gen_CNT0_s_CNT3_U_3 : FDS_1
    port map (
      C => m_TP_0_OBUF_925,
      D => clk_gen_CNT0_s_CNT3_U_mux0000_4_114,
      S => clk_gen_CNT0_s_CNT3_U_mux0000_4_14_795,
      Q => clk_gen_CNT0_s_CNT3_U(3)
    );
  clk_gen_CNT0_s_CNT3_U_4 : FDS_1
    port map (
      C => m_TP_0_OBUF_925,
      D => clk_gen_CNT0_s_CNT3_U_mux0000_5_114,
      S => clk_gen_CNT0_s_CNT3_U_mux0000_5_14_797,
      Q => clk_gen_CNT0_s_CNT3_U(4)
    );
  clk_gen_CNT0_s_CNT3_U_5 : FDS_1
    port map (
      C => m_TP_0_OBUF_925,
      D => clk_gen_CNT0_s_CNT3_U_mux0000_6_114,
      S => clk_gen_CNT0_s_CNT3_U_mux0000_6_14_799,
      Q => clk_gen_CNT0_s_CNT3_U(5)
    );
  clk_gen_CNT0_s_CNT3_U_6 : FDS_1
    port map (
      C => m_TP_0_OBUF_925,
      D => clk_gen_CNT0_s_CNT3_U_mux0000_7_114,
      S => clk_gen_CNT0_s_CNT3_U_mux0000_7_14_801,
      Q => clk_gen_CNT0_s_CNT3_U(6)
    );
  clk_gen_CNT0_s_CNT3_U_7 : FDS_1
    port map (
      C => m_TP_0_OBUF_925,
      D => clk_gen_CNT0_s_CNT3_U_mux0000_8_11_802,
      S => clk_gen_CNT0_N18,
      Q => clk_gen_CNT0_s_CNT3_U(7)
    );
  clk_gen_CNT0_s_CNT3_U_mux0000_8_11 : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => N76,
      I1 => clk_gen_CNT0_N2,
      I2 => clk_gen_CNT0_s_CNT3_U(7),
      O => clk_gen_CNT0_s_CNT3_U_mux0000_8_11_802
    );
  clk_gen_CNT0_s_CNT3_U_8 : FDS_1
    port map (
      C => m_TP_0_OBUF_925,
      D => clk_gen_CNT0_s_CNT3_U_mux0000_9_114,
      S => clk_gen_CNT0_s_CNT3_U_mux0000_9_14_804,
      Q => clk_gen_CNT0_s_CNT3_U(8)
    );
  clk_gen_CNT0_s_CNT3_U_9 : FDS_1
    port map (
      C => m_TP_0_OBUF_925,
      D => clk_gen_CNT0_s_CNT3_U_mux0000_10_114,
      S => clk_gen_CNT0_s_CNT3_U_mux0000_10_14_777,
      Q => clk_gen_CNT0_s_CNT3_U(9)
    );
  clk_gen_CNT0_s_CNT3_U_10 : FDS_1
    port map (
      C => m_TP_0_OBUF_925,
      D => clk_gen_CNT0_s_CNT3_U_mux0000_11_114,
      S => clk_gen_CNT0_s_CNT3_U_mux0000_11_14_779,
      Q => clk_gen_CNT0_s_CNT3_U(10)
    );
  clk_gen_CNT0_s_CNT3_U_11 : FDS_1
    port map (
      C => m_TP_0_OBUF_925,
      D => clk_gen_CNT0_s_CNT3_U_mux0000_12_114,
      S => clk_gen_CNT0_s_CNT3_U_mux0000_12_14_781,
      Q => clk_gen_CNT0_s_CNT3_U(11)
    );
  clk_gen_CNT0_s_CNT3_U_12 : FDS_1
    port map (
      C => m_TP_0_OBUF_925,
      D => clk_gen_CNT0_s_CNT3_U_mux0000_13_114,
      S => clk_gen_CNT0_s_CNT3_U_mux0000_13_14_783,
      Q => clk_gen_CNT0_s_CNT3_U(12)
    );
  clk_gen_CNT0_s_CNT3_U_13 : FDS_1
    port map (
      C => m_TP_0_OBUF_925,
      D => clk_gen_CNT0_s_CNT3_U_mux0000_14_114,
      S => clk_gen_CNT0_s_CNT3_U_mux0000_14_14_785,
      Q => clk_gen_CNT0_s_CNT3_U(13)
    );
  clk_gen_CNT0_s_CNT3_U_14 : FDS_1
    port map (
      C => m_TP_0_OBUF_925,
      D => clk_gen_CNT0_s_CNT3_U_mux0000_15_114,
      S => clk_gen_CNT0_s_CNT3_U_mux0000_15_14_787,
      Q => clk_gen_CNT0_s_CNT3_U(14)
    );
  sig_controller_dac_ctr_s_ps_FSM_FFd1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_0_OBUF_925,
      D => sig_controller_dac_ctr_s_ps_FSM_FFd2_1262,
      R => sig_controller_s_dac_stop_1647,
      Q => sig_controller_dac_ctr_s_ps_FSM_FFd1_1261
    );
  sig_controller_t_ps_FSM_FFd20 : FDS
    generic map(
      INIT => '1'
    )
    port map (
      C => m_TP_0_OBUF_925,
      D => sig_controller_t_ps_FSM_FFd20_In58,
      S => sig_controller_t_ps_FSM_FFd20_In32_1748,
      Q => sig_controller_t_ps_FSM_FFd20_1746
    );
  sig_controller_t_ps_FSM_FFd16 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_0_OBUF_925,
      D => sig_controller_t_ps_FSM_FFd16_In1,
      R => s_mode_addr(2),
      Q => sig_controller_t_ps_FSM_FFd16_1737
    );
  sig_controller_t_ps_FSM_FFd16_In11 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => s_mode_addr(1),
      I1 => sig_controller_t_ps_FSM_FFd19_1743,
      I2 => s_mode_addr(0),
      O => sig_controller_t_ps_FSM_FFd16_In1
    );
  sig_controller_t_ps_FSM_FFd15 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_0_OBUF_925,
      D => sig_controller_t_ps_FSM_FFd15_In1,
      R => s_mode_addr(0),
      Q => sig_controller_t_ps_FSM_FFd15_1735
    );
  sig_controller_t_ps_FSM_FFd15_In11 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd19_1743,
      I1 => s_mode_addr(2),
      I2 => s_mode_addr(1),
      O => sig_controller_t_ps_FSM_FFd15_In1
    );
  sig_controller_t_ps_FSM_FFd12 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_0_OBUF_925,
      D => sig_controller_t_ps_FSM_FFd12_In1_1730,
      R => s_mode_addr(1),
      Q => sig_controller_t_ps_FSM_FFd12_1729
    );
  sig_controller_t_ps_FSM_FFd13 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_0_OBUF_925,
      D => sig_controller_t_ps_FSM_FFd13_In1,
      R => s_mode_addr(0),
      Q => sig_controller_t_ps_FSM_FFd13_1731
    );
  sig_controller_t_ps_FSM_FFd13_In11 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => s_mode_addr(1),
      I1 => sig_controller_t_ps_FSM_FFd19_1743,
      I2 => s_mode_addr(2),
      O => sig_controller_t_ps_FSM_FFd13_In1
    );
  sig_controller_t_ps_FSM_FFd10 : FDS
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_0_OBUF_925,
      D => sig_controller_t_ps_FSM_FFd10_In1,
      S => sig_controller_t_ps_FSM_FFd11_1727,
      Q => sig_controller_t_ps_FSM_FFd10_1725
    );
  sig_controller_t_ps_FSM_FFd10_In11 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => s_wen_1051,
      I1 => sig_controller_t_ps_FSM_FFd10_1725,
      O => sig_controller_t_ps_FSM_FFd10_In1
    );
  sig_controller_t_ps_FSM_FFd8 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_0_OBUF_925,
      D => sig_controller_t_ps_FSM_FFd9_1760,
      R => s_ren_1050,
      Q => sig_controller_t_ps_FSM_FFd8_1759
    );
  clk_gen_state_FSM_FFd2 : FDRS
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_0_OBUF_925,
      D => clk_gen_state_FSM_FFd2_In1,
      R => b_reset_b,
      S => clk_gen_state_FSM_FFd3_874,
      Q => clk_gen_state_FSM_FFd2_872
    );
  clk_gen_state_FSM_FFd2_In11 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => clk_gen_state_FSM_FFd2_872,
      I1 => m_wen_IBUF_971,
      I2 => b_pcs_addr,
      O => clk_gen_state_FSM_FFd2_In1
    );
  sig_controller_t_ps_FSM_FFd6 : FDSE
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_s_comp1,
      D => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_t_ps_FSM_FFd7_1758,
      Q => sig_controller_t_ps_FSM_FFd6_1757
    );
  sig_controller_t_ps_FSM_FFd4 : FDSE
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_s_comp2,
      D => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_t_ps_FSM_FFd5_1756,
      Q => sig_controller_t_ps_FSM_FFd4_1755
    );
  sig_controller_t_ps_FSM_FFd1 : FDSE
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_s_comp0,
      D => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_t_ps_FSM_FFd2_1745,
      Q => sig_controller_t_ps_FSM_FFd1_1724
    );
  clk_gen_CNT0_Msub_s_CNT3_U_share0000_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_gen_CNT0_s_CNT3_U(0),
      O => clk_gen_CNT0_Msub_s_CNT3_U_share0000_cy_0_rt_574
    );
  clk_gen_CNT0_Madd_s_CNT3_1_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_gen_CNT0_s_REG(1),
      O => clk_gen_CNT0_Madd_s_CNT3_1_cy_1_rt_447
    );
  clk_gen_CNT0_Madd_s_CNT3_1_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_gen_CNT0_s_REG(2),
      O => clk_gen_CNT0_Madd_s_CNT3_1_cy_2_rt_449
    );
  clk_gen_CNT0_Madd_s_CNT3_1_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_gen_CNT0_s_REG(3),
      O => clk_gen_CNT0_Madd_s_CNT3_1_cy_3_rt_451
    );
  clk_gen_CNT0_Madd_s_CNT3_1_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_gen_CNT0_s_REG(4),
      O => clk_gen_CNT0_Madd_s_CNT3_1_cy_4_rt_453
    );
  clk_gen_CNT0_Madd_s_CNT3_1_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_gen_CNT0_s_REG(5),
      O => clk_gen_CNT0_Madd_s_CNT3_1_cy_5_rt_455
    );
  clk_gen_CNT0_Madd_s_CNT3_1_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_gen_CNT0_s_REG(6),
      O => clk_gen_CNT0_Madd_s_CNT3_1_cy_6_rt_457
    );
  clk_gen_CNT0_Madd_s_CNT3_1_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_gen_CNT0_s_REG(7),
      O => clk_gen_CNT0_Madd_s_CNT3_1_cy_7_rt_459
    );
  clk_gen_CNT0_Madd_s_CNT3_1_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_gen_CNT0_s_REG(8),
      O => clk_gen_CNT0_Madd_s_CNT3_1_cy_8_rt_461
    );
  clk_gen_CNT0_Madd_s_CNT3_1_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_gen_CNT0_s_REG(9),
      O => clk_gen_CNT0_Madd_s_CNT3_1_cy_9_rt_463
    );
  clk_gen_CNT0_Madd_s_CNT3_1_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_gen_CNT0_s_REG(10),
      O => clk_gen_CNT0_Madd_s_CNT3_1_cy_10_rt_437
    );
  clk_gen_CNT0_Madd_s_CNT3_1_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_gen_CNT0_s_REG(11),
      O => clk_gen_CNT0_Madd_s_CNT3_1_cy_11_rt_439
    );
  clk_gen_CNT0_Madd_s_CNT3_1_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_gen_CNT0_s_REG(12),
      O => clk_gen_CNT0_Madd_s_CNT3_1_cy_12_rt_441
    );
  clk_gen_CNT0_Madd_s_CNT3_1_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_gen_CNT0_s_REG(13),
      O => clk_gen_CNT0_Madd_s_CNT3_1_cy_13_rt_443
    );
  clk_gen_CNT0_Madd_s_CNT3_1_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_gen_CNT0_s_REG(14),
      O => clk_gen_CNT0_Madd_s_CNT3_1_cy_14_rt_445
    );
  clk_gen_CNT0_Msub_s_CNT3_2_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_gen_CNT0_s_REG(0),
      O => clk_gen_CNT0_Msub_s_CNT3_2_cy_0_rt_514
    );
  clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_gen_CNT0_s_CNT3_D(0),
      O => clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_cy_0_rt_545
    );
  clk_gen_CNT0_Mcount_s_CNT2_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_gen_CNT0_s_CNT2(0),
      O => clk_gen_CNT0_Mcount_s_CNT2_cy_0_rt_467
    );
  sig_controller_dac_ctr_Mcount_s_cnt_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_dac_ctr_s_cnt(1),
      O => sig_controller_dac_ctr_Mcount_s_cnt_cy_1_rt_1213
    );
  sig_controller_dac_ctr_Mcount_s_cnt_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_dac_ctr_s_cnt(2),
      O => sig_controller_dac_ctr_Mcount_s_cnt_cy_2_rt_1215
    );
  sig_controller_dac_ctr_Mcount_s_cnt_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_dac_ctr_s_cnt(3),
      O => sig_controller_dac_ctr_Mcount_s_cnt_cy_3_rt_1217
    );
  sig_controller_dac_ctr_Mcount_s_cnt_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_dac_ctr_s_cnt(4),
      O => sig_controller_dac_ctr_Mcount_s_cnt_cy_4_rt_1219
    );
  sig_controller_dac_ctr_Mcount_s_cnt_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_dac_ctr_s_cnt(5),
      O => sig_controller_dac_ctr_Mcount_s_cnt_cy_5_rt_1221
    );
  sig_controller_dac_ctr_Mcount_s_cnt_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_dac_ctr_s_cnt(6),
      O => sig_controller_dac_ctr_Mcount_s_cnt_cy_6_rt_1223
    );
  sig_controller_dac_ctr_Mcount_s_cnt_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_dac_ctr_s_cnt(7),
      O => sig_controller_dac_ctr_Mcount_s_cnt_cy_7_rt_1225
    );
  sig_controller_dac_ctr_Mcount_s_cnt_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_dac_ctr_s_cnt(8),
      O => sig_controller_dac_ctr_Mcount_s_cnt_cy_8_rt_1227
    );
  sig_controller_dac_ctr_Mcount_s_cnt_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_dac_ctr_s_cnt(9),
      O => sig_controller_dac_ctr_Mcount_s_cnt_cy_9_rt_1229
    );
  sig_controller_rem0ctr_Mcount_s_Cnt_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Cnt(1),
      O => sig_controller_rem0ctr_Mcount_s_Cnt_cy_1_rt_1419
    );
  sig_controller_rem0ctr_Mcount_s_Cnt_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Cnt(2),
      O => sig_controller_rem0ctr_Mcount_s_Cnt_cy_2_rt_1421
    );
  sig_controller_rem0ctr_Mcount_s_Cnt_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Cnt(3),
      O => sig_controller_rem0ctr_Mcount_s_Cnt_cy_3_rt_1423
    );
  sig_controller_rem0ctr_Mcount_s_Cnt_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Cnt(4),
      O => sig_controller_rem0ctr_Mcount_s_Cnt_cy_4_rt_1425
    );
  sig_controller_rem0ctr_Mcount_s_Cnt_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Cnt(5),
      O => sig_controller_rem0ctr_Mcount_s_Cnt_cy_5_rt_1427
    );
  sig_controller_rem0ctr_Mcount_s_Cnt_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Cnt(6),
      O => sig_controller_rem0ctr_Mcount_s_Cnt_cy_6_rt_1429
    );
  sig_controller_rem0ctr_Mcount_s_Cnt_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Cnt(7),
      O => sig_controller_rem0ctr_Mcount_s_Cnt_cy_7_rt_1431
    );
  sig_controller_rem0ctr_Mcount_s_Cnt_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Cnt(8),
      O => sig_controller_rem0ctr_Mcount_s_Cnt_cy_8_rt_1433
    );
  sig_controller_rem0ctr_Mcount_s_Cnt_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Cnt(9),
      O => sig_controller_rem0ctr_Mcount_s_Cnt_cy_9_rt_1435
    );
  sig_controller_rem1ctr_Mcount_s_Cnt_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_rem1ctr_s_Cnt(1),
      O => sig_controller_rem1ctr_Mcount_s_Cnt_cy_1_rt_1536
    );
  sig_controller_rem1ctr_Mcount_s_Cnt_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_rem1ctr_s_Cnt(2),
      O => sig_controller_rem1ctr_Mcount_s_Cnt_cy_2_rt_1538
    );
  sig_controller_rem1ctr_Mcount_s_Cnt_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_rem1ctr_s_Cnt(3),
      O => sig_controller_rem1ctr_Mcount_s_Cnt_cy_3_rt_1540
    );
  sig_controller_rem1ctr_Mcount_s_Cnt_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_rem1ctr_s_Cnt(4),
      O => sig_controller_rem1ctr_Mcount_s_Cnt_cy_4_rt_1542
    );
  sig_controller_rem1ctr_Mcount_s_Cnt_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_rem1ctr_s_Cnt(5),
      O => sig_controller_rem1ctr_Mcount_s_Cnt_cy_5_rt_1544
    );
  sig_controller_rem1ctr_Mcount_s_Cnt_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_rem1ctr_s_Cnt(6),
      O => sig_controller_rem1ctr_Mcount_s_Cnt_cy_6_rt_1546
    );
  sig_controller_rem1ctr_Mcount_s_Cnt_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_rem1ctr_s_Cnt(7),
      O => sig_controller_rem1ctr_Mcount_s_Cnt_cy_7_rt_1548
    );
  sig_controller_rem1ctr_Mcount_s_Cnt_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_rem1ctr_s_Cnt(8),
      O => sig_controller_rem1ctr_Mcount_s_Cnt_cy_8_rt_1550
    );
  sig_controller_rem1ctr_Mcount_s_Cnt_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_rem1ctr_s_Cnt(9),
      O => sig_controller_rem1ctr_Mcount_s_Cnt_cy_9_rt_1552
    );
  sig_controller_daremctr_Mcount_s_Cnt_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_daremctr_s_Cnt(1),
      O => sig_controller_daremctr_Mcount_s_Cnt_cy_1_rt_1310
    );
  sig_controller_daremctr_Mcount_s_Cnt_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_daremctr_s_Cnt(2),
      O => sig_controller_daremctr_Mcount_s_Cnt_cy_2_rt_1312
    );
  sig_controller_daremctr_Mcount_s_Cnt_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_daremctr_s_Cnt(3),
      O => sig_controller_daremctr_Mcount_s_Cnt_cy_3_rt_1314
    );
  sig_controller_daremctr_Mcount_s_Cnt_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_daremctr_s_Cnt(4),
      O => sig_controller_daremctr_Mcount_s_Cnt_cy_4_rt_1316
    );
  sig_controller_daremctr_Mcount_s_Cnt_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_daremctr_s_Cnt(5),
      O => sig_controller_daremctr_Mcount_s_Cnt_cy_5_rt_1318
    );
  sig_controller_daremctr_Mcount_s_Cnt_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_daremctr_s_Cnt(6),
      O => sig_controller_daremctr_Mcount_s_Cnt_cy_6_rt_1320
    );
  sig_controller_daremctr_Mcount_s_Cnt_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_daremctr_s_Cnt(7),
      O => sig_controller_daremctr_Mcount_s_Cnt_cy_7_rt_1322
    );
  sig_controller_daremctr_Mcount_s_Cnt_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_daremctr_s_Cnt(8),
      O => sig_controller_daremctr_Mcount_s_Cnt_cy_8_rt_1324
    );
  sig_controller_daremctr_Mcount_s_Cnt_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_daremctr_s_Cnt(9),
      O => sig_controller_daremctr_Mcount_s_Cnt_cy_9_rt_1326
    );
  sig_controller_adremctr_Mcount_s_Cnt_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_adremctr_s_Cnt(1),
      O => sig_controller_adremctr_Mcount_s_Cnt_cy_1_rt_1107
    );
  sig_controller_adremctr_Mcount_s_Cnt_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_adremctr_s_Cnt(2),
      O => sig_controller_adremctr_Mcount_s_Cnt_cy_2_rt_1109
    );
  sig_controller_adremctr_Mcount_s_Cnt_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_adremctr_s_Cnt(3),
      O => sig_controller_adremctr_Mcount_s_Cnt_cy_3_rt_1111
    );
  sig_controller_adremctr_Mcount_s_Cnt_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_adremctr_s_Cnt(4),
      O => sig_controller_adremctr_Mcount_s_Cnt_cy_4_rt_1113
    );
  sig_controller_adremctr_Mcount_s_Cnt_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_adremctr_s_Cnt(5),
      O => sig_controller_adremctr_Mcount_s_Cnt_cy_5_rt_1115
    );
  sig_controller_adremctr_Mcount_s_Cnt_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_adremctr_s_Cnt(6),
      O => sig_controller_adremctr_Mcount_s_Cnt_cy_6_rt_1117
    );
  sig_controller_adremctr_Mcount_s_Cnt_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_adremctr_s_Cnt(7),
      O => sig_controller_adremctr_Mcount_s_Cnt_cy_7_rt_1119
    );
  sig_controller_adremctr_Mcount_s_Cnt_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_adremctr_s_Cnt(8),
      O => sig_controller_adremctr_Mcount_s_Cnt_cy_8_rt_1121
    );
  sig_controller_adremctr_Mcount_s_Cnt_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_adremctr_s_Cnt(9),
      O => sig_controller_adremctr_Mcount_s_Cnt_cy_9_rt_1123
    );
  sig_controller_adc_ctr_Mcount_s_cnt_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_adc_ctr_s_cnt(9),
      O => sig_controller_adc_ctr_Mcount_s_cnt_cy_9_rt_1088
    );
  sig_controller_adc_ctr_Mcount_s_cnt_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_adc_ctr_s_cnt(8),
      O => sig_controller_adc_ctr_Mcount_s_cnt_cy_8_rt_1086
    );
  sig_controller_adc_ctr_Mcount_s_cnt_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_adc_ctr_s_cnt(7),
      O => sig_controller_adc_ctr_Mcount_s_cnt_cy_7_rt_1084
    );
  sig_controller_adc_ctr_Mcount_s_cnt_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_adc_ctr_s_cnt(6),
      O => sig_controller_adc_ctr_Mcount_s_cnt_cy_6_rt_1082
    );
  sig_controller_adc_ctr_Mcount_s_cnt_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_adc_ctr_s_cnt(5),
      O => sig_controller_adc_ctr_Mcount_s_cnt_cy_5_rt_1080
    );
  sig_controller_adc_ctr_Mcount_s_cnt_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_adc_ctr_s_cnt(4),
      O => sig_controller_adc_ctr_Mcount_s_cnt_cy_4_rt_1078
    );
  sig_controller_adc_ctr_Mcount_s_cnt_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_adc_ctr_s_cnt(3),
      O => sig_controller_adc_ctr_Mcount_s_cnt_cy_3_rt_1076
    );
  sig_controller_adc_ctr_Mcount_s_cnt_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_adc_ctr_s_cnt(2),
      O => sig_controller_adc_ctr_Mcount_s_cnt_cy_2_rt_1074
    );
  sig_controller_adc_ctr_Mcount_s_cnt_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_adc_ctr_s_cnt(1),
      O => sig_controller_adc_ctr_Mcount_s_cnt_cy_1_rt_1072
    );
  clk_gen_CNT0_Madd_s_CNT3_1_xor_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_gen_CNT0_s_REG(15),
      O => clk_gen_CNT0_Madd_s_CNT3_1_xor_15_rt_465
    );
  sig_controller_dac_ctr_Mcount_s_cnt_xor_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_dac_ctr_s_cnt(10),
      O => sig_controller_dac_ctr_Mcount_s_cnt_xor_10_rt_1231
    );
  sig_controller_rem0ctr_Mcount_s_Cnt_xor_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Cnt(10),
      O => sig_controller_rem0ctr_Mcount_s_Cnt_xor_10_rt_1437
    );
  sig_controller_rem1ctr_Mcount_s_Cnt_xor_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_rem1ctr_s_Cnt(10),
      O => sig_controller_rem1ctr_Mcount_s_Cnt_xor_10_rt_1554
    );
  sig_controller_daremctr_Mcount_s_Cnt_xor_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_daremctr_s_Cnt(10),
      O => sig_controller_daremctr_Mcount_s_Cnt_xor_10_rt_1328
    );
  sig_controller_adc_ctr_Mcount_s_cnt_xor_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_adc_ctr_s_cnt(10),
      O => sig_controller_adc_ctr_Mcount_s_cnt_xor_10_rt_1090
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
      I0 => sig_controller_dac_ctr_s_ps_FSM_FFd1_1261,
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
      I1 => sig_controller_t_ps_FSM_FFd1_1724,
      I2 => sig_controller_t_ps_FSM_FFd19_1743,
      I3 => sig_controller_N4,
      O => sig_controller_t_ps_FSM_FFd20_In58
    );
  sig_controller_t_ps_FSM_FFd12_In1 : LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd19_1743,
      I1 => s_mode_addr(0),
      I2 => s_mode_addr(2),
      I3 => s_mode_valid,
      O => sig_controller_t_ps_FSM_FFd12_In1_1730
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
      O => N115
    );
  sig_controller_daremctr_s_Reg_mux0000_10_35 : LUT4
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => sig_controller_daremctr_s_Reg(9),
      I1 => sig_controller_daremctr_N17,
      I2 => sig_controller_daremctr_s_Reg(10),
      I3 => N115,
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
      I3 => addr_decode_m_mode_addr_1_57_115,
      O => N117
    );
  addr_decode_m_mode_addr_1_100 : LUT4
    generic map(
      INIT => X"5040"
    )
    port map (
      I0 => s_address(3),
      I1 => addr_decode_m_mode_addr_1_12_114,
      I2 => s_address(8),
      I3 => N117,
      O => s_mode_addr(1)
    );
  sig_controller_s_sel0_not000164_SW0 : LUT4
    generic map(
      INIT => X"5554"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd8_1759,
      I1 => sig_controller_t_ps_FSM_FFd10_1725,
      I2 => sig_controller_t_ps_FSM_FFd12_1729,
      I3 => sig_controller_t_ps_FSM_FFd20_1746,
      O => N119
    );
  sig_controller_s_sel0_not000164 : LUT4
    generic map(
      INIT => X"1110"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd11_1727,
      I1 => sig_controller_t_ps_FSM_FFd19_1743,
      I2 => sig_controller_s_sel0_not000152_1694,
      I3 => N119,
      O => sig_controller_s_sel0_not000164_1695
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
      O => N123
    );
  sig_controller_rem1ctr_s_Reg_mux0000_10_35 : LUT4
    generic map(
      INIT => X"FF80"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(10),
      I1 => sig_controller_s_sel1(0),
      I2 => sig_controller_s_sel1(1),
      I3 => N123,
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
      O => N125
    );
  sig_controller_rem0ctr_s_Reg_mux0000_10_35 : LUT4
    generic map(
      INIT => X"FF80"
    )
    port map (
      I0 => sig_controller_adremctr_s_Reg(10),
      I1 => sig_controller_s_sel0(0),
      I2 => sig_controller_s_sel0(1),
      I3 => N125,
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
      I3 => N127,
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
      I3 => N129,
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
      I3 => N131,
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
      I3 => N139,
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
      I3 => N141,
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
      I3 => N143,
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
      I3 => N145,
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
      I3 => N147,
      O => sig_controller_rem0ctr_s_Reg_mux0000(8)
    );
  clk_gen_CNT0_s_CNT3_U_mux0000_10_151 : LUT4
    generic map(
      INIT => X"22A2"
    )
    port map (
      I0 => m_reset_b_IBUF_969,
      I1 => clk_gen_CNT0_s_mode_838,
      I2 => clk_gen_CNT0_N01,
      I3 => clk_gen_CNT0_s_CNT3_D_cmp_eq0000,
      O => clk_gen_CNT0_N9
    );
  clk_gen_CNT0_s_CNT3_U_mux0000_10_141 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => m_reset_b_IBUF_969,
      I1 => clk_gen_CNT0_s_mode_838,
      I2 => clk_gen_CNT0_s_CNT3_D_cmp_eq0000,
      I3 => clk_gen_CNT0_s_CNT3_UD_cmp_eq0000,
      O => clk_gen_CNT0_N6
    );
  clk_gen_CNT0_s_CNT3_D_mux0004_14_18 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => m_reset_b_IBUF_969,
      I1 => clk_gen_CNT0_s_mode_838,
      I2 => clk_gen_CNT0_s_CNT3_UD_cmp_eq0000,
      I3 => clk_gen_CNT0_s_REG(0),
      O => clk_gen_CNT0_N4
    );
  clk_gen_CNT0_s_CNT3_UD_mux00031 : LUT4
    generic map(
      INIT => X"4E44"
    )
    port map (
      I0 => clk_gen_CNT0_s_mode_838,
      I1 => clk_gen_CNT0_s_CNT3_UD_754,
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
      I2 => sig_controller_dac_ctr_Msub_s_reg_sub0000_cy_7_19_1233,
      O => sig_controller_dac_ctr_s_reg_sub0000(8)
    );
  sig_controller_dac_ctr_Msub_s_reg_sub0000_xor_9_11 : LUT4
    generic map(
      INIT => X"CCC9"
    )
    port map (
      I0 => sig_controller_dac_ctr_Msub_s_reg_sub0000_cy_7_14,
      I1 => sig_controller_daremctr_s_Reg(9),
      I2 => sig_controller_dac_ctr_Msub_s_reg_sub0000_cy_7_19_1233,
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
      I3 => addr_decode_m_mode_addr_1_11_113,
      O => addr_decode_m_mode_addr_1_12_114
    );
  clk_gen_CNT0_s_CNT3_U_mux0000_2_1201_SW0 : LUT4
    generic map(
      INIT => X"8CFF"
    )
    port map (
      I0 => clk_gen_CNT0_s_CNT3_D_cmp_eq0000,
      I1 => clk_gen_CNT0_s_mode_838,
      I2 => clk_gen_CNT0_N01,
      I3 => clk_gen_CNT0_s_CNT3_U(1),
      O => N161
    );
  clk_gen_CNT0_s_CNT3_U_mux0000_2_1201 : LUT4
    generic map(
      INIT => X"F777"
    )
    port map (
      I0 => m_reset_b_IBUF_969,
      I1 => N161,
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
      O => N163
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
      O => N165
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
      O => N167
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
      O => N169
    );
  sig_controller_s_wea0_0_not0001 : LUT4
    generic map(
      INIT => X"7772"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd11_1727,
      I1 => s_out_mux_sel,
      I2 => sig_controller_t_ps_FSM_FFd10_1725,
      I3 => sig_controller_s_enpad_or0000,
      O => sig_controller_s_wea0_0_not0001_1714
    );
  sig_controller_s_ram1_mux_sel_not0001_SW0 : LUT4
    generic map(
      INIT => X"0D08"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd17_1739,
      I1 => s_out_mux_sel,
      I2 => sig_controller_t_ps_FSM_FFd19_1743,
      I3 => sig_controller_s_ram1_mux_sel_mux0002(0),
      O => N42
    );
  sig_controller_s_sel1_not000155 : LUT4
    generic map(
      INIT => X"085D"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd8_1759,
      I1 => sig_controller_N5,
      I2 => sig_controller_t_prevmode(0),
      I3 => N175,
      O => sig_controller_s_sel1_not000155_1702
    );
  clk_gen_CNT0_m_cw_inv1 : LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      I0 => clk_gen_s_addr(0),
      I1 => clk_gen_s_addr(1),
      I2 => clk_gen_s_cw0_and000012_855,
      O => clk_gen_CNT0_m_cw_inv
    );
  sig_controller_s_wea1_0_mux00001 : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd6_1757,
      I1 => sig_controller_t_ps_FSM_FFd11_1727,
      I2 => s_out_mux_sel,
      O => sig_controller_s_wea1_0_mux0000
    );
  sig_controller_s_wea0_0_mux00001 : LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd11_1727,
      I1 => s_out_mux_sel,
      I2 => sig_controller_t_ps_FSM_FFd1_1724,
      O => sig_controller_s_wea0_0_mux0000
    );
  sig_controller_s_sel1_mux0003_0_1 : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd16_1737,
      I1 => sig_controller_t_ps_FSM_FFd11_1727,
      I2 => s_out_mux_sel,
      O => sig_controller_s_sel1_mux0003(0)
    );
  sig_controller_s_ram1_mux_sel_and00031 : LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd17_1739,
      I1 => s_mode_addr(2),
      I2 => s_mode_addr(1),
      I3 => s_mode_addr(0),
      O => sig_controller_s_ram1_mux_sel_and0003
    );
  sig_controller_s_selda_or00001 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd5_1756,
      I1 => sig_controller_t_ps_FSM_FFd12_1729,
      I2 => sig_controller_t_ps_FSM_FFd20_1746,
      I3 => sig_controller_t_ps_FSM_FFd15_1735,
      O => sig_controller_s_selda_or0000
    );
  sig_controller_s_enb1_or00001 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd9_1760,
      I1 => sig_controller_t_ps_FSM_FFd20_1746,
      I2 => sig_controller_t_ps_FSM_FFd15_1735,
      I3 => sig_controller_N131,
      O => sig_controller_s_enb1_or0000
    );
  sig_controller_s_ram1_mux_sel_mux0002_1_SW0 : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => sig_controller_N13,
      I1 => sig_controller_t_ps_FSM_FFd17_1739,
      I2 => s_out_mux_sel,
      O => N22
    );
  sig_controller_s_enp1_mux0000_SW0 : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd5_1756,
      I1 => sig_controller_t_ps_FSM_FFd11_1727,
      I2 => s_out_mux_sel,
      O => N24
    );
  sig_controller_s_enp0_mux0000_SW0 : LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd11_1727,
      I1 => s_out_mux_sel,
      I2 => sig_controller_t_ps_FSM_FFd7_1758,
      O => N26
    );
  sig_controller_s_clr1_mux0009_SW1 : LUT4
    generic map(
      INIT => X"F020"
    )
    port map (
      I0 => sig_controller_N14,
      I1 => N34,
      I2 => sig_controller_t_ps_FSM_FFd19_1743,
      I3 => sig_controller_N4,
      O => N177
    );
  sig_controller_s_clr1_mux0009 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd12_1729,
      I1 => sig_controller_t_ps_FSM_FFd15_1735,
      I2 => sig_controller_t_ps_FSM_FFd16_1737,
      I3 => N177,
      O => sig_controller_s_clr1_mux0009_1631
    );
  sig_controller_t_prevmode_not0001_SW0 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd15_1735,
      I1 => sig_controller_t_ps_FSM_FFd13_1731,
      I2 => sig_controller_t_ps_FSM_FFd17_1739,
      I3 => sig_controller_t_ps_FSM_FFd16_1737,
      O => N40
    );
  sig_controller_s_ram1_mux_sel_not0001_SW1 : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => s_mode_addr(1),
      I1 => s_mode_addr(0),
      I2 => s_mode_addr(2),
      I3 => sig_controller_t_ps_FSM_FFd19_1743,
      O => N43
    );
  addr_decode_m_mode_addr_2_38 : LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => addr_decode_m_mode_addr_2_18_116,
      I1 => s_address(0),
      I2 => s_address(3),
      I3 => addr_decode_m_mode_addr_2_26_117,
      O => s_mode_addr(2)
    );
  sig_controller_s_enp1_not000122_SW1 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd20_1746,
      I1 => sig_controller_t_ps_FSM_FFd3_1753,
      I2 => sig_controller_t_ps_FSM_FFd5_1756,
      I3 => sig_controller_t_ps_FSM_FFd6_1757,
      O => N179
    );
  clk_gen_CNT0_s_CNT3_U_mux0000_10_131 : LUT4
    generic map(
      INIT => X"2F3F"
    )
    port map (
      I0 => clk_gen_CNT0_s_REG(0),
      I1 => clk_gen_CNT0_s_CNT3_D_cmp_eq0000,
      I2 => clk_gen_CNT0_s_mode_838,
      I3 => clk_gen_CNT0_s_CNT3_UD_cmp_eq0000,
      O => clk_gen_CNT0_N2
    );
  sig_controller_s_sel1_not000180_SW1 : LUT4
    generic map(
      INIT => X"FBBB"
    )
    port map (
      I0 => sig_controller_t_prevmode(3),
      I1 => sig_controller_N14,
      I2 => sig_controller_t_prevmode(0),
      I3 => sig_controller_t_ps_FSM_FFd8_1759,
      O => N187
    );
  sig_controller_s_sel1_not000180 : LUT4
    generic map(
      INIT => X"4E44"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd19_1743,
      I1 => sig_controller_s_sel1_not000155_1702,
      I2 => N187,
      I3 => s_OE_b_1008,
      O => sig_controller_s_sel1_not0001
    );
  sig_controller_t_prevmode_mux0006_2_1 : LUT4
    generic map(
      INIT => X"AA8A"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd17_1739,
      I1 => s_mode_addr(1),
      I2 => s_mode_addr(0),
      I3 => s_mode_addr(2),
      O => sig_controller_t_prevmode_mux0006(2)
    );
  sig_controller_s_wea0_0_and00001 : LUT4
    generic map(
      INIT => X"AA8A"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd11_1727,
      I1 => s_mode_addr(1),
      I2 => s_mode_addr(0),
      I3 => s_mode_addr(2),
      O => sig_controller_s_wea0_0_and0000
    );
  sig_controller_s_enp0_mux000011 : LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd11_1727,
      I1 => s_mode_addr(2),
      I2 => s_mode_addr(1),
      I3 => s_mode_addr(0),
      O => sig_controller_s_enp0_not000125
    );
  sig_controller_rem1ctr_s_Reg_mux0000_2_22_SW0_SW1 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => sig_controller_rem1ctr_s_Reg(1),
      I1 => sig_controller_s_sel1(0),
      O => N189
    );
  sig_controller_rem0ctr_s_Reg_mux0000_2_22_SW0_SW1 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(1),
      I1 => sig_controller_s_sel0(0),
      O => N191
    );
  sig_controller_adremctr_s_Reg_mux0000_2_22_SW0_SW1 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => sig_controller_adremctr_s_Reg(1),
      I1 => sig_controller_s_selad(0),
      O => N193
    );
  sig_controller_rem0ctr_s_Reg_0_1 : FDE
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_rem0ctr_s_Reg_not0001,
      D => sig_controller_rem0ctr_s_Reg_mux0000(0),
      Q => sig_controller_rem0ctr_s_Reg_0_1_1468
    );
  sig_controller_rem0ctr_s_Reg_1_1 : FDE
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_rem0ctr_s_Reg_not0001,
      D => sig_controller_rem0ctr_s_Reg_mux0000(1),
      Q => sig_controller_rem0ctr_s_Reg_1_1_1471
    );
  sig_controller_rem0ctr_s_Reg_5_1 : FDE
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_rem0ctr_s_Reg_not0001,
      D => sig_controller_rem0ctr_s_Reg_mux0000(5),
      Q => sig_controller_rem0ctr_s_Reg_5_1_1479
    );
  sig_controller_rem0ctr_s_Reg_2_1 : FDE
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_rem0ctr_s_Reg_not0001,
      D => sig_controller_rem0ctr_s_Reg_mux0000(2),
      Q => sig_controller_rem0ctr_s_Reg_2_1_1473
    );
  sig_controller_rem0ctr_s_Reg_4_1 : FDE
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_rem0ctr_s_Reg_not0001,
      D => sig_controller_rem0ctr_s_Reg_mux0000(4),
      Q => sig_controller_rem0ctr_s_Reg_4_1_1477
    );
  sig_controller_rem0ctr_s_Reg_3_1 : FDE
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_rem0ctr_s_Reg_not0001,
      D => sig_controller_rem0ctr_s_Reg_mux0000(3),
      Q => sig_controller_rem0ctr_s_Reg_3_1_1475
    );
  sig_controller_rem0ctr_s_Reg_6_1 : FDE
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_rem0ctr_s_Reg_not0001,
      D => sig_controller_rem0ctr_s_Reg_mux0000(6),
      Q => sig_controller_rem0ctr_s_Reg_6_1_1481
    );
  sig_controller_rem0ctr_s_Reg_6_2 : FDE
    port map (
      C => m_TP_0_OBUF_925,
      CE => sig_controller_rem0ctr_s_Reg_not0001,
      D => sig_controller_rem0ctr_s_Reg_mux0000(6),
      Q => sig_controller_rem0ctr_s_Reg_6_2_1482
    );
  sig_controller_s_enp0_not000144 : MUXF5
    port map (
      I0 => N195,
      I1 => N196,
      S => sig_controller_t_ps_FSM_FFd8_1759,
      O => sig_controller_s_enp0_not0001
    );
  sig_controller_s_enp0_not000144_F : LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      I0 => sig_controller_s_enp0_not000116_1671,
      I1 => sig_controller_t_ps_FSM_FFd11_1727,
      I2 => sig_controller_s_enp0_not000125,
      O => N195
    );
  sig_controller_s_enp0_not000144_G : LUT3
    generic map(
      INIT => X"2A"
    )
    port map (
      I0 => sig_controller_t_prevmode(0),
      I1 => s_out_mux_sel,
      I2 => sig_controller_t_ps_FSM_FFd11_1727,
      O => N196
    );
  sig_controller_rem1ctr_s_Reg_mux0000_9_28 : MUXF5
    port map (
      I0 => N197,
      I1 => N198,
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
      O => N197
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
      O => N198
    );
  sig_controller_rem0ctr_s_Reg_mux0000_9_28 : MUXF5
    port map (
      I0 => N199,
      I1 => N200,
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
      O => N199
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
      O => N200
    );
  sig_controller_daremctr_s_Reg_mux0000_9_28 : MUXF5
    port map (
      I0 => N201,
      I1 => N202,
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
      O => N201
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
      O => N202
    );
  sig_controller_rem1ctr_s_Reg_mux0000_6_31 : MUXF5
    port map (
      I0 => N203,
      I1 => N204,
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
      I3 => sig_controller_rem1ctr_s_Reg_mux0000_6_11_1612,
      O => N203
    );
  sig_controller_rem1ctr_s_Reg_mux0000_6_31_G : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => sig_controller_rem1ctr_s_Reg_mux0000_6_11_1612,
      I1 => sig_controller_rem0ctr_s_Reg(6),
      I2 => sig_controller_s_sel1(0),
      O => N204
    );
  sig_controller_rem0ctr_s_Reg_mux0000_6_31 : MUXF5
    port map (
      I0 => N205,
      I1 => N206,
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
      I3 => sig_controller_rem0ctr_s_Reg_mux0000_6_11_1503,
      O => N205
    );
  sig_controller_rem0ctr_s_Reg_mux0000_6_31_G : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg_mux0000_6_11_1503,
      I1 => sig_controller_adremctr_s_Reg(6),
      I2 => sig_controller_s_sel0(0),
      O => N206
    );
  sig_controller_daremctr_s_Reg_mux0000_6_31 : MUXF5
    port map (
      I0 => N207,
      I1 => N208,
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
      I3 => sig_controller_daremctr_s_Reg_mux0000_6_11_1386,
      O => N207
    );
  sig_controller_daremctr_s_Reg_mux0000_6_31_G : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => sig_controller_daremctr_s_Reg_mux0000_6_11_1386,
      I1 => sig_controller_rem1ctr_s_Reg(6),
      I2 => sig_controller_s_selda(0),
      O => N208
    );
  sig_controller_adremctr_s_Reg_mux0000_6_31 : MUXF5
    port map (
      I0 => N209,
      I1 => N210,
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
      I3 => sig_controller_adremctr_s_Reg_mux0000_6_11_1179,
      O => N209
    );
  sig_controller_adremctr_s_Reg_mux0000_6_31_G : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => sig_controller_adremctr_s_Reg_mux0000_6_11_1179,
      I1 => inlatch_dout(6),
      I2 => sig_controller_s_selad(0),
      O => N210
    );
  sig_controller_rem1ctr_s_Reg_mux0000_3_31 : MUXF5
    port map (
      I0 => N211,
      I1 => N212,
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
      I3 => sig_controller_rem1ctr_s_Reg_mux0000_3_11_1606,
      O => N211
    );
  sig_controller_rem1ctr_s_Reg_mux0000_3_31_G : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => sig_controller_rem1ctr_s_Reg_mux0000_3_11_1606,
      I1 => sig_controller_rem0ctr_s_Reg(3),
      I2 => sig_controller_s_sel1(0),
      O => N212
    );
  sig_controller_rem0ctr_s_Reg_mux0000_3_31 : MUXF5
    port map (
      I0 => N213,
      I1 => N214,
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
      I3 => sig_controller_rem0ctr_s_Reg_mux0000_3_11_1497,
      O => N213
    );
  sig_controller_rem0ctr_s_Reg_mux0000_3_31_G : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg_mux0000_3_11_1497,
      I1 => sig_controller_adremctr_s_Reg(3),
      I2 => sig_controller_s_sel0(0),
      O => N214
    );
  sig_controller_daremctr_s_Reg_mux0000_3_31 : MUXF5
    port map (
      I0 => N215,
      I1 => N216,
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
      I3 => sig_controller_daremctr_s_Reg_mux0000_3_11_1380,
      O => N215
    );
  sig_controller_daremctr_s_Reg_mux0000_3_31_G : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => sig_controller_daremctr_s_Reg_mux0000_3_11_1380,
      I1 => sig_controller_rem1ctr_s_Reg(3),
      I2 => sig_controller_s_selda(0),
      O => N216
    );
  sig_controller_adremctr_s_Reg_mux0000_3_31 : MUXF5
    port map (
      I0 => N217,
      I1 => N218,
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
      I3 => sig_controller_adremctr_s_Reg_mux0000_3_11_1173,
      O => N217
    );
  sig_controller_adremctr_s_Reg_mux0000_3_31_G : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => sig_controller_adremctr_s_Reg_mux0000_3_11_1173,
      I1 => inlatch_dout(3),
      I2 => sig_controller_s_selad(0),
      O => N218
    );
  sig_controller_adremctr_s_Reg_mux0000_10_Q : MUXF5
    port map (
      I0 => N219,
      I1 => N220,
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
      O => N219
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
      O => N220
    );
  sig_controller_adremctr_s_Reg_mux0000_9_Q : MUXF5
    port map (
      I0 => N221,
      I1 => N222,
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
      O => N221
    );
  sig_controller_adremctr_s_Reg_mux0000_9_G : LUT3
    generic map(
      INIT => X"45"
    )
    port map (
      I0 => sig_controller_s_selad(1),
      I1 => sig_controller_adremctr_N2,
      I2 => sig_controller_adremctr_s_Reg(8),
      O => N222
    );
  sig_controller_s_sel0_not000125 : MUXF5
    port map (
      I0 => N223,
      I1 => N224,
      S => sig_controller_t_ps_FSM_FFd19_1743,
      O => sig_controller_s_sel0_not000125_1693
    );
  sig_controller_s_sel0_not000125_F : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd8_1759,
      I1 => sig_controller_t_prevmode(0),
      I2 => sig_controller_t_ps_FSM_FFd11_1727,
      O => N223
    );
  sig_controller_s_sel0_not000125_G : LUT4
    generic map(
      INIT => X"0C04"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd8_1759,
      I1 => s_OE_b_1008,
      I2 => sig_controller_t_prevmode(1),
      I3 => sig_controller_t_prevmode(0),
      O => N224
    );
  sig_controller_s_clr1_not000123 : MUXF5
    port map (
      I0 => N225,
      I1 => N226,
      S => sig_controller_t_ps_FSM_FFd19_1743,
      O => sig_controller_s_clr1_not0001
    );
  sig_controller_s_clr1_not000123_F : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd5_1756,
      I1 => sig_controller_t_ps_FSM_FFd15_1735,
      I2 => sig_controller_s_clr1_not00017_1633,
      O => N225
    );
  sig_controller_s_clr1_not000123_G : LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      I0 => sig_controller_N14,
      I1 => N34,
      I2 => sig_controller_N4,
      O => N226
    );
  sig_controller_rem1ctr_s_Reg_mux0000_4_34 : MUXF5
    port map (
      I0 => N227,
      I1 => N228,
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
      I2 => N163,
      I3 => sig_controller_rem1ctr_N8,
      O => N227
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
      O => N228
    );
  sig_controller_rem0ctr_s_Reg_mux0000_4_34 : MUXF5
    port map (
      I0 => N229,
      I1 => N230,
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
      I2 => N165,
      I3 => sig_controller_rem0ctr_N8,
      O => N229
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
      O => N230
    );
  sig_controller_daremctr_s_Reg_mux0000_4_34 : MUXF5
    port map (
      I0 => N231,
      I1 => N232,
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
      I2 => N167,
      I3 => sig_controller_daremctr_N8,
      O => N231
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
      O => N232
    );
  sig_controller_adremctr_s_Reg_mux0000_4_34 : MUXF5
    port map (
      I0 => N233,
      I1 => N234,
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
      I2 => N169,
      I3 => sig_controller_adremctr_N8,
      O => N233
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
      O => N234
    );
  sig_controller_s_wea1_0_not0001 : MUXF5
    port map (
      I0 => N235,
      I1 => N236,
      S => sig_controller_t_ps_FSM_FFd11_1727,
      O => sig_controller_s_wea1_0_not0001_1717
    );
  sig_controller_s_wea1_0_not0001_F : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd10_1725,
      I1 => sig_controller_t_ps_FSM_FFd20_1746,
      I2 => sig_controller_t_ps_FSM_FFd6_1757,
      O => N235
    );
  sig_controller_s_wea1_0_not0001_G : LUT3
    generic map(
      INIT => X"EF"
    )
    port map (
      I0 => s_mode_addr(2),
      I1 => s_mode_addr(1),
      I2 => s_mode_addr(0),
      O => N236
    );
  m_TP_0_OBUF_BUFG : BUFG
    port map (
      I => m_TP_0_OBUF1,
      O => m_TP_0_OBUF_925
    );
  m_TP_1_OBUF_BUFG : BUFG
    port map (
      I => m_TP_1_OBUF1,
      O => m_TP_1_OBUF_927
    );
  clk_gen_CNT0_s_wr_BUFG : BUFG
    port map (
      I => clk_gen_CNT0_s_wr1_845,
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
      I => clk_gen_CNT0_s_mode_838,
      O => clk_gen_CNT0_s_CNT2_and0000
    );
  clk_gen_CNT0_m_clk_inv1_INV_0 : INV
    port map (
      I => m_TP_0_OBUF_925,
      O => clk_gen_CNT0_m_clk_inv
    );
  s_dout_en_inv1_INV_0 : INV
    port map (
      I => sig_controller_s_dout_en_1651,
      O => s_dout_en_inv
    );
  sig_controller_dac_ctr_Msub_s_reg_sub0000_xor_0_11_INV_0 : INV
    port map (
      I => sig_controller_daremctr_s_Reg(0),
      O => sig_controller_dac_ctr_s_reg_sub0000(0)
    );
  b_reset_b1_INV_0 : INV
    port map (
      I => m_reset_b_IBUF_969,
      O => b_reset_b
    );
  sig_controller_m_outlatch_en1_INV_0 : INV
    port map (
      I => s_OE_b_1008,
      O => s_outlatch_en
    );
  avg_module_cns1_Mcompar_m_remainder_cmp_ge0000_lut_0_1_INV_0 : INV
    port map (
      I => sig_controller_rem0ctr_s_Reg_0_1_1468,
      O => avg_module_cns1_Mcompar_m_remainder_cmp_ge0000_lut(0)
    );
  avg_module_cns1_Mcompar_m_remainder_cmp_ge0000_lut_1_1_INV_0 : INV
    port map (
      I => sig_controller_rem0ctr_s_Reg_1_1_1471,
      O => avg_module_cns1_Mcompar_m_remainder_cmp_ge0000_lut(1)
    );
  avg_module_cns1_Mcompar_m_remainder_cmp_ge0000_lut_2_1_INV_0 : INV
    port map (
      I => sig_controller_rem0ctr_s_Reg_2_1_1473,
      O => avg_module_cns1_Mcompar_m_remainder_cmp_ge0000_lut(2)
    );
  avg_module_cns1_Mcompar_m_remainder_cmp_ge0000_lut_3_1_INV_0 : INV
    port map (
      I => sig_controller_rem0ctr_s_Reg_3_1_1475,
      O => avg_module_cns1_Mcompar_m_remainder_cmp_ge0000_lut(3)
    );
  avg_module_cns1_Mcompar_m_remainder_cmp_ge0000_lut_4_1_INV_0 : INV
    port map (
      I => sig_controller_rem0ctr_s_Reg_4_1_1477,
      O => avg_module_cns1_Mcompar_m_remainder_cmp_ge0000_lut(4)
    );
  avg_module_cns1_Mcompar_m_remainder_cmp_ge0000_lut_5_1_INV_0 : INV
    port map (
      I => sig_controller_rem0ctr_s_Reg_5_1_1479,
      O => avg_module_cns1_Mcompar_m_remainder_cmp_ge0000_lut(5)
    );
  avg_module_cns1_Mcompar_m_remainder_cmp_ge0000_lut_6_1_INV_0 : INV
    port map (
      I => sig_controller_rem0ctr_s_Reg_6_1_1481,
      O => avg_module_cns1_Mcompar_m_remainder_cmp_ge0000_lut(6)
    );
  avg_module_cns1_Mcompar_m_remainder_cmp_ge0000_lut_7_1_INV_0 : INV
    port map (
      I => sig_controller_rem0ctr_s_Reg(7),
      O => avg_module_cns1_Mcompar_m_remainder_cmp_ge0000_lut(7)
    );
  avg_module_cns1_Msub_m_remainder_addsub0000_lut_0_1_INV_0 : INV
    port map (
      I => sig_controller_rem0ctr_s_Reg_0_1_1468,
      O => avg_module_cns1_Msub_m_remainder_addsub0000_lut(0)
    );
  avg_module_cns1_Msub_m_remainder_addsub0000_lut_1_1_INV_0 : INV
    port map (
      I => sig_controller_rem0ctr_s_Reg_1_1_1471,
      O => avg_module_cns1_Msub_m_remainder_addsub0000_lut(1)
    );
  avg_module_cns1_Msub_m_remainder_addsub0000_lut_2_1_INV_0 : INV
    port map (
      I => sig_controller_rem0ctr_s_Reg_2_1_1473,
      O => avg_module_cns1_Msub_m_remainder_addsub0000_lut(2)
    );
  avg_module_cns1_Msub_m_remainder_addsub0000_lut_3_1_INV_0 : INV
    port map (
      I => sig_controller_rem0ctr_s_Reg_3_1_1475,
      O => avg_module_cns1_Msub_m_remainder_addsub0000_lut(3)
    );
  avg_module_cns1_Msub_m_remainder_addsub0000_lut_4_1_INV_0 : INV
    port map (
      I => sig_controller_rem0ctr_s_Reg_4_1_1477,
      O => avg_module_cns1_Msub_m_remainder_addsub0000_lut(4)
    );
  avg_module_cns1_Msub_m_remainder_addsub0000_lut_5_1_INV_0 : INV
    port map (
      I => sig_controller_rem0ctr_s_Reg_5_1_1479,
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
      I => sig_controller_rem0ctr_s_Reg_6_2_1482,
      O => avg_module_cns1_Mcompar_m_remainder_cmp_ge0000_lut_6_1_1
    );
  sig_controller_s_sel0_mux0002_1_11 : LUT4
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd19_1743,
      I1 => s_OE_b_1008,
      I2 => sig_controller_t_prevmode(1),
      I3 => sig_controller_t_ps_FSM_FFd12_1729,
      O => sig_controller_s_sel0_mux0002_1_1
    );
  sig_controller_s_sel0_mux0002_1_1_f5 : MUXF5
    port map (
      I0 => sig_controller_s_sel0_mux0002_1_1,
      I1 => sig_controller_t_ps_FSM_FFd12_1729,
      S => s_out_mux_sel,
      O => sig_controller_s_sel0_mux0002(1)
    );
  sig_controller_s_dac_stop_or00001 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd14_1733,
      I1 => sig_controller_t_ps_FSM_FFd20_1746,
      I2 => sig_controller_t_ps_FSM_FFd12_1729,
      I3 => sig_controller_t_ps_FSM_FFd15_1735,
      O => sig_controller_s_dac_stop_or00001_1650
    );
  sig_controller_s_dac_stop_or0000_f5 : MUXF5
    port map (
      I0 => sig_controller_s_dac_stop_or00001_1650,
      I1 => N1,
      S => sig_controller_t_ps_FSM_FFd5_1756,
      O => sig_controller_s_dac_stop_or0000
    );
  sig_controller_s_clr0_mux00091 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => sig_controller_N1,
      I1 => sig_controller_t_ps_FSM_FFd12_1729,
      I2 => sig_controller_t_ps_FSM_FFd13_1731,
      I3 => sig_controller_t_ps_FSM_FFd16_1737,
      O => sig_controller_s_clr0_mux00091_1627
    );
  sig_controller_s_clr0_mux00092 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd12_1729,
      I1 => sig_controller_t_ps_FSM_FFd13_1731,
      I2 => sig_controller_t_ps_FSM_FFd16_1737,
      O => sig_controller_s_clr0_mux00092_1628
    );
  sig_controller_s_clr0_mux0009_f5 : MUXF5
    port map (
      I0 => sig_controller_s_clr0_mux00092_1628,
      I1 => sig_controller_s_clr0_mux00091_1627,
      S => sig_controller_t_ps_FSM_FFd19_1743,
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
      S => clk_gen_s_wr_b_865,
      O => clk_gen_CNT0_s_wr1_845
    );
  sig_controller_s_enp1_not0001431 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_N5,
      I1 => sig_controller_t_prevmode(0),
      O => sig_controller_s_enp1_not000143
    );
  sig_controller_s_enp1_not0001432 : LUT4
    generic map(
      INIT => X"FE54"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd11_1727,
      I1 => sig_controller_t_ps_FSM_FFd10_1725,
      I2 => N179,
      I3 => s_out_mux_sel,
      O => sig_controller_s_enp1_not0001431_1677
    );
  sig_controller_s_enp1_not000143_f5 : MUXF5
    port map (
      I0 => sig_controller_s_enp1_not0001431_1677,
      I1 => sig_controller_s_enp1_not000143,
      S => sig_controller_t_ps_FSM_FFd8_1759,
      O => sig_controller_s_enp1_not0001
    );
  sig_controller_dac_ctr_Msub_s_reg_sub0000_xor_10_111 : LUT4
    generic map(
      INIT => X"CCC9"
    )
    port map (
      I0 => sig_controller_daremctr_s_Reg(8),
      I1 => sig_controller_daremctr_s_Reg(10),
      I2 => sig_controller_dac_ctr_Msub_s_reg_sub0000_cy_7_14,
      I3 => sig_controller_dac_ctr_Msub_s_reg_sub0000_cy_7_19_1233,
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
      O => sig_controller_rem1ctr_s_Reg_mux0000_1_1_1600
    );
  sig_controller_rem1ctr_s_Reg_mux0000_1_2 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => sig_controller_rem1ctr_s_Reg(1),
      I1 => sig_controller_rem1ctr_s_Reg(0),
      I2 => sig_controller_s_sel1(0),
      O => sig_controller_rem1ctr_s_Reg_mux0000_1_2_1601
    );
  sig_controller_rem1ctr_s_Reg_mux0000_1_f5 : MUXF5
    port map (
      I0 => sig_controller_rem1ctr_s_Reg_mux0000_1_2_1601,
      I1 => sig_controller_rem1ctr_s_Reg_mux0000_1_1_1600,
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
      O => sig_controller_rem0ctr_s_Reg_mux0000_1_1_1491
    );
  sig_controller_rem0ctr_s_Reg_mux0000_1_2 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Reg(1),
      I1 => sig_controller_rem0ctr_s_Reg(0),
      I2 => sig_controller_s_sel0(0),
      O => sig_controller_rem0ctr_s_Reg_mux0000_1_2_1492
    );
  sig_controller_rem0ctr_s_Reg_mux0000_1_f5 : MUXF5
    port map (
      I0 => sig_controller_rem0ctr_s_Reg_mux0000_1_2_1492,
      I1 => sig_controller_rem0ctr_s_Reg_mux0000_1_1_1491,
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
      O => sig_controller_daremctr_s_Reg_mux0000_1_1_1374
    );
  sig_controller_daremctr_s_Reg_mux0000_1_2 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => sig_controller_daremctr_s_Reg(1),
      I1 => sig_controller_daremctr_s_Reg(0),
      I2 => sig_controller_s_selda(0),
      O => sig_controller_daremctr_s_Reg_mux0000_1_2_1375
    );
  sig_controller_daremctr_s_Reg_mux0000_1_f5 : MUXF5
    port map (
      I0 => sig_controller_daremctr_s_Reg_mux0000_1_2_1375,
      I1 => sig_controller_daremctr_s_Reg_mux0000_1_1_1374,
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
      O => sig_controller_dac_ctr_Msub_s_reg_sub0000_xor_7_11_1236
    );
  sig_controller_dac_ctr_Msub_s_reg_sub0000_xor_7_1_f5 : MUXF5
    port map (
      I0 => sig_controller_dac_ctr_Msub_s_reg_sub0000_xor_7_11_1236,
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
      O => sig_controller_adremctr_s_Reg_mux0000_1_1_1167
    );
  sig_controller_adremctr_s_Reg_mux0000_1_2 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => sig_controller_adremctr_s_Reg(1),
      I1 => sig_controller_adremctr_s_Reg(0),
      I2 => sig_controller_s_selad(0),
      O => sig_controller_adremctr_s_Reg_mux0000_1_2_1168
    );
  sig_controller_adremctr_s_Reg_mux0000_1_f5 : MUXF5
    port map (
      I0 => sig_controller_adremctr_s_Reg_mux0000_1_2_1168,
      I1 => sig_controller_adremctr_s_Reg_mux0000_1_1_1167,
      S => sig_controller_s_selad(1),
      O => sig_controller_adremctr_s_Reg_mux0000(1)
    );
  b_pcs_addr1 : LUT4
    generic map(
      INIT => X"FFFD"
    )
    port map (
      I0 => s_address(6),
      I1 => s_address(4),
      I2 => s_address(7),
      I3 => s_address(5),
      O => b_pcs_addr1_433
    );
  b_pcs_addr_f5 : MUXF5
    port map (
      I0 => N1,
      I1 => b_pcs_addr1_433,
      S => s_address(8),
      O => b_pcs_addr
    );
  clk_gen_s_wr_b_mux000061 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => clk_gen_state_FSM_FFd5_876,
      I1 => clk_gen_state_FSM_FFd6_877,
      I2 => clk_gen_state_FSM_FFd1_870,
      I3 => clk_gen_state_FSM_FFd4_875,
      O => clk_gen_s_wr_b_mux000061_868
    );
  clk_gen_s_wr_b_mux000062 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => clk_gen_state_FSM_FFd5_876,
      I1 => clk_gen_state_FSM_FFd6_877,
      I2 => clk_gen_state_FSM_FFd1_870,
      O => clk_gen_s_wr_b_mux000062_869
    );
  clk_gen_s_wr_b_mux00006_f5 : MUXF5
    port map (
      I0 => clk_gen_s_wr_b_mux000062_869,
      I1 => clk_gen_s_wr_b_mux000061_868,
      S => clk_gen_s_wr_b_865,
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
      O => sig_controller_adremctr_s_Reg_mux0000_8_1_1185
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
      O => sig_controller_adremctr_s_Reg_mux0000_8_2_1186
    );
  sig_controller_adremctr_s_Reg_mux0000_8_f5 : MUXF5
    port map (
      I0 => sig_controller_adremctr_s_Reg_mux0000_8_2_1186,
      I1 => sig_controller_adremctr_s_Reg_mux0000_8_1_1185,
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
      O => sig_controller_rem1ctr_s_Reg_mux0000_7_161_1615
    );
  sig_controller_rem1ctr_s_Reg_mux0000_7_16_f5 : MUXF5
    port map (
      I0 => sig_controller_rem1ctr_s_Reg_mux0000_7_161_1615,
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
      O => sig_controller_rem0ctr_s_Reg_mux0000_7_161_1506
    );
  sig_controller_rem0ctr_s_Reg_mux0000_7_16_f5 : MUXF5
    port map (
      I0 => sig_controller_rem0ctr_s_Reg_mux0000_7_161_1506,
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
      O => sig_controller_daremctr_s_Reg_mux0000_7_161_1389
    );
  sig_controller_daremctr_s_Reg_mux0000_7_16_f5 : MUXF5
    port map (
      I0 => sig_controller_daremctr_s_Reg_mux0000_7_161_1389,
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
      O => sig_controller_adremctr_s_Reg_mux0000_7_161_1182
    );
  sig_controller_adremctr_s_Reg_mux0000_7_16_f5 : MUXF5
    port map (
      I0 => sig_controller_adremctr_s_Reg_mux0000_7_161_1182,
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
      O => addr_decode_m_mode_valid_or0000291_119
    );
  addr_decode_m_mode_valid_or000029_f5 : MUXF5
    port map (
      I0 => avg_module_Maccum_s_data_cy(0),
      I1 => addr_decode_m_mode_valid_or0000291_119,
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
      O => addr_decode_m_mode_valid_or0000461_121
    );
  addr_decode_m_mode_valid_or000046_f5 : MUXF5
    port map (
      I0 => addr_decode_m_mode_valid_or0000461_121,
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
      O => sig_controller_rem1ctr_s_Reg_mux0000_10_161_1598
    );
  sig_controller_rem1ctr_s_Reg_mux0000_10_16_f5 : MUXF5
    port map (
      I0 => sig_controller_rem1ctr_s_Reg_mux0000_10_161_1598,
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
      O => sig_controller_rem0ctr_s_Reg_mux0000_10_161_1489
    );
  sig_controller_rem0ctr_s_Reg_mux0000_10_16_f5 : MUXF5
    port map (
      I0 => sig_controller_rem0ctr_s_Reg_mux0000_10_161_1489,
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
      O => sig_controller_daremctr_s_Reg_mux0000_10_161_1372
    );
  sig_controller_daremctr_s_Reg_mux0000_10_16_f5 : MUXF5
    port map (
      I0 => sig_controller_daremctr_s_Reg_mux0000_10_161_1372,
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
      O => addr_decode_m_mode_addr_0_61_111
    );
  addr_decode_m_mode_addr_0_6_f5 : MUXF5
    port map (
      I0 => avg_module_Maccum_s_data_cy(0),
      I1 => addr_decode_m_mode_addr_0_61_111,
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
      O => addr_decode_m_mode_addr_0_521_109
    );
  addr_decode_m_mode_addr_0_52_f5 : MUXF5
    port map (
      I0 => addr_decode_m_mode_addr_0_521_109,
      I1 => avg_module_Maccum_s_data_cy(0),
      S => s_address(7),
      O => addr_decode_m_mode_addr_0_52
    );
  sig_controller_t_ps_FSM_FFd20_In61 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd8_1759,
      I1 => sig_controller_t_ps_FSM_FFd12_1729,
      I2 => sig_controller_t_ps_FSM_FFd3_1753,
      I3 => sig_controller_t_ps_FSM_FFd14_1733,
      O => sig_controller_t_ps_FSM_FFd20_In61_1751
    );
  sig_controller_t_ps_FSM_FFd20_In62 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd8_1759,
      I1 => sig_controller_t_ps_FSM_FFd12_1729,
      I2 => sig_controller_t_ps_FSM_FFd3_1753,
      O => sig_controller_t_ps_FSM_FFd20_In62_1752
    );
  sig_controller_t_ps_FSM_FFd20_In6_f5 : MUXF5
    port map (
      I0 => sig_controller_t_ps_FSM_FFd20_In62_1752,
      I1 => sig_controller_t_ps_FSM_FFd20_In61_1751,
      S => s_OE_b_1008,
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
      O => clk_gen_CNT0_s_CNT3_D_mux0004_14_401_733
    );
  clk_gen_CNT0_s_CNT3_D_mux0004_14_40_f5 : MUXF5
    port map (
      I0 => clk_gen_CNT0_s_CNT3_D(0),
      I1 => clk_gen_CNT0_s_CNT3_D_mux0004_14_401_733,
      S => clk_gen_CNT0_s_mode_838,
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
      O => sig_controller_daremctr_s_Reg_mux0000_8_22_SW01_1393
    );
  sig_controller_daremctr_s_Reg_mux0000_8_22_SW0_f5 : MUXF5
    port map (
      I0 => sig_controller_daremctr_s_Reg_mux0000_8_22_SW01_1393,
      I1 => sig_controller_daremctr_s_Reg_mux0000_8_22_SW0,
      S => sig_controller_s_selda(1),
      O => N127
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
      O => sig_controller_daremctr_s_Reg_mux0000_5_22_SW01_1384
    );
  sig_controller_daremctr_s_Reg_mux0000_5_22_SW0_f5 : MUXF5
    port map (
      I0 => sig_controller_daremctr_s_Reg_mux0000_5_22_SW01_1384,
      I1 => sig_controller_daremctr_s_Reg_mux0000_5_22_SW0,
      S => sig_controller_s_selda(1),
      O => N129
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
      O => sig_controller_daremctr_s_Reg_mux0000_2_22_SW01_1378
    );
  sig_controller_daremctr_s_Reg_mux0000_2_22_SW0_f5 : MUXF5
    port map (
      I0 => sig_controller_daremctr_s_Reg_mux0000_2_22_SW01_1378,
      I1 => sig_controller_daremctr_s_Reg_mux0000_2_22_SW0,
      S => sig_controller_s_selda(1),
      O => N131
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
      I0 => N189,
      I1 => sig_controller_rem1ctr_s_Reg(2),
      I2 => sig_controller_rem1ctr_s_Reg(0),
      O => sig_controller_rem1ctr_s_Reg_mux0000_2_221_1604
    );
  sig_controller_rem1ctr_s_Reg_mux0000_2_22_f5 : MUXF5
    port map (
      I0 => sig_controller_rem1ctr_s_Reg_mux0000_2_221_1604,
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
      I0 => N191,
      I1 => sig_controller_rem0ctr_s_Reg(2),
      I2 => sig_controller_rem0ctr_s_Reg(0),
      O => sig_controller_rem0ctr_s_Reg_mux0000_2_221_1495
    );
  sig_controller_rem0ctr_s_Reg_mux0000_2_22_f5 : MUXF5
    port map (
      I0 => sig_controller_rem0ctr_s_Reg_mux0000_2_221_1495,
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
      I0 => N193,
      I1 => sig_controller_adremctr_s_Reg(2),
      I2 => sig_controller_adremctr_s_Reg(0),
      O => sig_controller_adremctr_s_Reg_mux0000_2_221_1171
    );
  sig_controller_adremctr_s_Reg_mux0000_2_22_f5 : MUXF5
    port map (
      I0 => sig_controller_adremctr_s_Reg_mux0000_2_221_1171,
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
      O => sig_controller_rem1ctr_s_Reg_mux0000_5_22_SW01_1610
    );
  sig_controller_rem1ctr_s_Reg_mux0000_5_22_SW0_f5 : MUXF5
    port map (
      I0 => sig_controller_rem1ctr_s_Reg_mux0000_5_22_SW01_1610,
      I1 => sig_controller_rem1ctr_s_Reg_mux0000_5_22_SW0,
      S => sig_controller_s_sel1(1),
      O => N139
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
      O => sig_controller_rem0ctr_s_Reg_mux0000_5_22_SW01_1501
    );
  sig_controller_rem0ctr_s_Reg_mux0000_5_22_SW0_f5 : MUXF5
    port map (
      I0 => sig_controller_rem0ctr_s_Reg_mux0000_5_22_SW01_1501,
      I1 => sig_controller_rem0ctr_s_Reg_mux0000_5_22_SW0,
      S => sig_controller_s_sel0(1),
      O => N141
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
      O => sig_controller_adremctr_s_Reg_mux0000_5_22_SW01_1177
    );
  sig_controller_adremctr_s_Reg_mux0000_5_22_SW0_f5 : MUXF5
    port map (
      I0 => sig_controller_adremctr_s_Reg_mux0000_5_22_SW01_1177,
      I1 => sig_controller_adremctr_s_Reg_mux0000_5_22_SW0,
      S => sig_controller_s_selad(1),
      O => N143
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
      O => sig_controller_rem1ctr_s_Reg_mux0000_8_22_SW01_1619
    );
  sig_controller_rem1ctr_s_Reg_mux0000_8_22_SW0_f5 : MUXF5
    port map (
      I0 => sig_controller_rem1ctr_s_Reg_mux0000_8_22_SW01_1619,
      I1 => sig_controller_rem1ctr_s_Reg_mux0000_8_22_SW0,
      S => sig_controller_s_sel1(1),
      O => N145
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
      O => sig_controller_rem0ctr_s_Reg_mux0000_8_22_SW01_1510
    );
  sig_controller_rem0ctr_s_Reg_mux0000_8_22_SW0_f5 : MUXF5
    port map (
      I0 => sig_controller_rem0ctr_s_Reg_mux0000_8_22_SW01_1510,
      I1 => sig_controller_rem0ctr_s_Reg_mux0000_8_22_SW0,
      S => sig_controller_s_sel0(1),
      O => N147
    );
  ram1_mux_dout_7_LogicTrst1 : LUT4
    generic map(
      INIT => X"FFD8"
    )
    port map (
      I0 => sig_controller_s_ram1_mux_sel(1),
      I1 => inlatch_dout(7),
      I2 => Averager_out(7),
      I3 => sig_controller_s_ram1_mux_sel(0),
      O => ram1_mux_dout_7_LogicTrst
    );
  ram1_mux_dout_7_LogicTrst2 : LUT4
    generic map(
      INIT => X"DC98"
    )
    port map (
      I0 => sig_controller_s_ram1_mux_sel(0),
      I1 => sig_controller_s_ram1_mux_sel(1),
      I2 => Averager_out(7),
      I3 => inlatch_dout(7),
      O => ram1_mux_dout_7_LogicTrst1_1007
    );
  ram1_mux_dout_7_LogicTrst_f5 : MUXF5
    port map (
      I0 => ram1_mux_dout_7_LogicTrst1_1007,
      I1 => ram1_mux_dout_7_LogicTrst,
      S => s_doutb0(7),
      O => ram1_mux_dout(7)
    );
  ram1_mux_dout_6_LogicTrst1 : LUT4
    generic map(
      INIT => X"FFD8"
    )
    port map (
      I0 => sig_controller_s_ram1_mux_sel(1),
      I1 => inlatch_dout(6),
      I2 => Averager_out(6),
      I3 => sig_controller_s_ram1_mux_sel(0),
      O => ram1_mux_dout_6_LogicTrst
    );
  ram1_mux_dout_6_LogicTrst2 : LUT4
    generic map(
      INIT => X"DC98"
    )
    port map (
      I0 => sig_controller_s_ram1_mux_sel(0),
      I1 => sig_controller_s_ram1_mux_sel(1),
      I2 => Averager_out(6),
      I3 => inlatch_dout(6),
      O => ram1_mux_dout_6_LogicTrst1_1004
    );
  ram1_mux_dout_6_LogicTrst_f5 : MUXF5
    port map (
      I0 => ram1_mux_dout_6_LogicTrst1_1004,
      I1 => ram1_mux_dout_6_LogicTrst,
      S => s_doutb0(6),
      O => ram1_mux_dout(6)
    );
  ram1_mux_dout_5_LogicTrst1 : LUT4
    generic map(
      INIT => X"FFD8"
    )
    port map (
      I0 => sig_controller_s_ram1_mux_sel(1),
      I1 => inlatch_dout(5),
      I2 => Averager_out(5),
      I3 => sig_controller_s_ram1_mux_sel(0),
      O => ram1_mux_dout_5_LogicTrst
    );
  ram1_mux_dout_5_LogicTrst2 : LUT4
    generic map(
      INIT => X"DC98"
    )
    port map (
      I0 => sig_controller_s_ram1_mux_sel(0),
      I1 => sig_controller_s_ram1_mux_sel(1),
      I2 => Averager_out(5),
      I3 => inlatch_dout(5),
      O => ram1_mux_dout_5_LogicTrst1_1001
    );
  ram1_mux_dout_5_LogicTrst_f5 : MUXF5
    port map (
      I0 => ram1_mux_dout_5_LogicTrst1_1001,
      I1 => ram1_mux_dout_5_LogicTrst,
      S => s_doutb0(5),
      O => ram1_mux_dout(5)
    );
  ram1_mux_dout_4_LogicTrst1 : LUT4
    generic map(
      INIT => X"FFD8"
    )
    port map (
      I0 => sig_controller_s_ram1_mux_sel(1),
      I1 => inlatch_dout(4),
      I2 => Averager_out(4),
      I3 => sig_controller_s_ram1_mux_sel(0),
      O => ram1_mux_dout_4_LogicTrst
    );
  ram1_mux_dout_4_LogicTrst2 : LUT4
    generic map(
      INIT => X"DC98"
    )
    port map (
      I0 => sig_controller_s_ram1_mux_sel(0),
      I1 => sig_controller_s_ram1_mux_sel(1),
      I2 => Averager_out(4),
      I3 => inlatch_dout(4),
      O => ram1_mux_dout_4_LogicTrst1_998
    );
  ram1_mux_dout_4_LogicTrst_f5 : MUXF5
    port map (
      I0 => ram1_mux_dout_4_LogicTrst1_998,
      I1 => ram1_mux_dout_4_LogicTrst,
      S => s_doutb0(4),
      O => ram1_mux_dout(4)
    );
  ram1_mux_dout_3_LogicTrst1 : LUT4
    generic map(
      INIT => X"FFD8"
    )
    port map (
      I0 => sig_controller_s_ram1_mux_sel(1),
      I1 => inlatch_dout(3),
      I2 => Averager_out(3),
      I3 => sig_controller_s_ram1_mux_sel(0),
      O => ram1_mux_dout_3_LogicTrst
    );
  ram1_mux_dout_3_LogicTrst2 : LUT4
    generic map(
      INIT => X"DC98"
    )
    port map (
      I0 => sig_controller_s_ram1_mux_sel(0),
      I1 => sig_controller_s_ram1_mux_sel(1),
      I2 => Averager_out(3),
      I3 => inlatch_dout(3),
      O => ram1_mux_dout_3_LogicTrst1_995
    );
  ram1_mux_dout_3_LogicTrst_f5 : MUXF5
    port map (
      I0 => ram1_mux_dout_3_LogicTrst1_995,
      I1 => ram1_mux_dout_3_LogicTrst,
      S => s_doutb0(3),
      O => ram1_mux_dout(3)
    );
  ram1_mux_dout_2_LogicTrst1 : LUT4
    generic map(
      INIT => X"FFD8"
    )
    port map (
      I0 => sig_controller_s_ram1_mux_sel(1),
      I1 => inlatch_dout(2),
      I2 => Averager_out(2),
      I3 => sig_controller_s_ram1_mux_sel(0),
      O => ram1_mux_dout_2_LogicTrst
    );
  ram1_mux_dout_2_LogicTrst2 : LUT4
    generic map(
      INIT => X"DC98"
    )
    port map (
      I0 => sig_controller_s_ram1_mux_sel(0),
      I1 => sig_controller_s_ram1_mux_sel(1),
      I2 => Averager_out(2),
      I3 => inlatch_dout(2),
      O => ram1_mux_dout_2_LogicTrst1_992
    );
  ram1_mux_dout_2_LogicTrst_f5 : MUXF5
    port map (
      I0 => ram1_mux_dout_2_LogicTrst1_992,
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
      I1 => clk_gen_CNT0_s_mode_838,
      I2 => clk_gen_CNT0_s_CNT3_2(2),
      I3 => clk_gen_CNT0_N5,
      O => clk_gen_CNT0_s_CNT3_D_mux0004_13_111
    );
  clk_gen_CNT0_s_CNT3_D_mux0004_13_111_f5 : MUXF5
    port map (
      I0 => clk_gen_CNT0_s_CNT3_D_mux0004_13_1111_729,
      I1 => clk_gen_CNT0_s_CNT3_D_mux0004_13_111,
      S => m_reset_b_IBUF_969,
      O => clk_gen_CNT0_s_CNT3_D_mux0004_13_11_727
    );
  sig_controller_s_sel1_not000155_SW01 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd11_1727,
      I1 => sig_controller_t_ps_FSM_FFd12_1729,
      I2 => sig_controller_s_sel1_not000117_1701,
      I3 => sig_controller_t_ps_FSM_FFd20_1746,
      O => sig_controller_s_sel1_not000155_SW0
    );
  sig_controller_s_sel1_not000155_SW02 : LUT4
    generic map(
      INIT => X"FF01"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd12_1729,
      I1 => sig_controller_s_sel1_not000117_1701,
      I2 => sig_controller_t_ps_FSM_FFd20_1746,
      I3 => sig_controller_t_ps_FSM_FFd11_1727,
      O => sig_controller_s_sel1_not000155_SW01_1704
    );
  sig_controller_s_sel1_not000155_SW0_f5 : MUXF5
    port map (
      I0 => sig_controller_s_sel1_not000155_SW01_1704,
      I1 => sig_controller_s_sel1_not000155_SW0,
      S => s_out_mux_sel,
      O => N175
    );
  clk_gen_CNT0_s_CNT3_D_mux0004_13_1112_INV_0 : INV
    port map (
      I => clk_gen_CNT0_s_REG(0),
      O => clk_gen_CNT0_s_CNT3_D_mux0004_13_1111_729
    );
  sram_0 : sram2k
    port map (
      clka => m_TP_0_OBUF_925,
      ena => sig_controller_s_ena0_1653,
      clkb => m_TP_0_OBUF_925,
      enb => sig_controller_s_enb0_1660,
      wea(0) => sig_controller_s_wea0(0),
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
      clka => m_TP_0_OBUF_925,
      ena => sig_controller_s_ena1_1656,
      clkb => m_TP_0_OBUF_925,
      enb => sig_controller_s_enb1_1663,
      wea(0) => sig_controller_s_wea1(0),
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
      clka => m_TP_0_OBUF_925,
      ena => sig_controller_s_ena2_1658,
      clkb => m_TP_0_OBUF_925,
      enb => sig_controller_dac_ctr_s_enb2_1260,
      wea(0) => sig_controller_s_enpda_1680,
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
      clka => m_TP_0_OBUF_925,
      ena => sig_controller_adc_ctr_s_ps(0),
      clkb => m_TP_1_OBUF_927,
      enb => sig_controller_s_enb3_1666,
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
