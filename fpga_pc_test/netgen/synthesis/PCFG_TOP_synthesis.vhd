--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: PCFG_TOP_synthesis.vhd
-- /___/   /\     Timestamp: Wed Nov 21 20:18:50 2018
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm PCFG_TOP -w -dir netgen/synthesis -ofmt vhdl -sim PCFG_TOP.ngc PCFG_TOP_synthesis.vhd 
-- Device	: xc3s5000-4-fg900
-- Input file	: PCFG_TOP.ngc
-- Output file	: C:\KDH\Doc\18y6s\adca\PCFG\PCFG_18\fpga_pc_test\netgen\synthesis\PCFG_TOP_synthesis.vhd
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
  signal Mtrien_inlatch_dout_16 : STD_LOGIC; 
  signal Mtrien_inlatch_dout_mux0000 : STD_LOGIC; 
  signal Mtrien_outlatch_dout_18 : STD_LOGIC; 
  signal N13 : STD_LOGIC; 
  signal N15 : STD_LOGIC; 
  signal N19 : STD_LOGIC; 
  signal N21 : STD_LOGIC; 
  signal N23 : STD_LOGIC; 
  signal N25 : STD_LOGIC; 
  signal N27 : STD_LOGIC; 
  signal N28 : STD_LOGIC; 
  signal N29 : STD_LOGIC; 
  signal N30 : STD_LOGIC; 
  signal N31 : STD_LOGIC; 
  signal N32 : STD_LOGIC; 
  signal N33 : STD_LOGIC; 
  signal N34 : STD_LOGIC; 
  signal N45 : STD_LOGIC; 
  signal N47 : STD_LOGIC; 
  signal N49 : STD_LOGIC; 
  signal N5 : STD_LOGIC; 
  signal N51 : STD_LOGIC; 
  signal N53 : STD_LOGIC; 
  signal N54 : STD_LOGIC; 
  signal N56 : STD_LOGIC; 
  signal N58 : STD_LOGIC; 
  signal N60 : STD_LOGIC; 
  signal N61 : STD_LOGIC; 
  signal N63 : STD_LOGIC; 
  signal N65 : STD_LOGIC; 
  signal N66 : STD_LOGIC; 
  signal N67 : STD_LOGIC; 
  signal N68 : STD_LOGIC; 
  signal N69 : STD_LOGIC; 
  signal N70 : STD_LOGIC; 
  signal N71 : STD_LOGIC; 
  signal N72 : STD_LOGIC; 
  signal N73 : STD_LOGIC; 
  signal N74 : STD_LOGIC; 
  signal N75 : STD_LOGIC; 
  signal N76 : STD_LOGIC; 
  signal N77 : STD_LOGIC; 
  signal N78 : STD_LOGIC; 
  signal N79 : STD_LOGIC; 
  signal N80 : STD_LOGIC; 
  signal N81 : STD_LOGIC; 
  signal N82 : STD_LOGIC; 
  signal N83 : STD_LOGIC; 
  signal N84 : STD_LOGIC; 
  signal N85 : STD_LOGIC; 
  signal N86 : STD_LOGIC; 
  signal N87 : STD_LOGIC; 
  signal addr_decode_m_mode_addr_0_31_76 : STD_LOGIC; 
  signal addr_decode_m_mode_addr_0_34_77 : STD_LOGIC; 
  signal addr_decode_m_mode_addr_0_73_78 : STD_LOGIC; 
  signal addr_decode_m_mode_addr_1_45_79 : STD_LOGIC; 
  signal addr_decode_m_mode_addr_1_5_80 : STD_LOGIC; 
  signal addr_decode_m_mode_addr_1_53_81 : STD_LOGIC; 
  signal addr_decode_m_mode_addr_1_86_82 : STD_LOGIC; 
  signal addr_decode_m_mode_addr_2_26_83 : STD_LOGIC; 
  signal clk_gen_CNT0_Madd_s_CNT3_1_cy_10_rt_88 : STD_LOGIC; 
  signal clk_gen_CNT0_Madd_s_CNT3_1_cy_11_rt_90 : STD_LOGIC; 
  signal clk_gen_CNT0_Madd_s_CNT3_1_cy_12_rt_92 : STD_LOGIC; 
  signal clk_gen_CNT0_Madd_s_CNT3_1_cy_13_rt_94 : STD_LOGIC; 
  signal clk_gen_CNT0_Madd_s_CNT3_1_cy_14_rt_96 : STD_LOGIC; 
  signal clk_gen_CNT0_Madd_s_CNT3_1_cy_1_rt_98 : STD_LOGIC; 
  signal clk_gen_CNT0_Madd_s_CNT3_1_cy_2_rt_100 : STD_LOGIC; 
  signal clk_gen_CNT0_Madd_s_CNT3_1_cy_3_rt_102 : STD_LOGIC; 
  signal clk_gen_CNT0_Madd_s_CNT3_1_cy_4_rt_104 : STD_LOGIC; 
  signal clk_gen_CNT0_Madd_s_CNT3_1_cy_5_rt_106 : STD_LOGIC; 
  signal clk_gen_CNT0_Madd_s_CNT3_1_cy_6_rt_108 : STD_LOGIC; 
  signal clk_gen_CNT0_Madd_s_CNT3_1_cy_7_rt_110 : STD_LOGIC; 
  signal clk_gen_CNT0_Madd_s_CNT3_1_cy_8_rt_112 : STD_LOGIC; 
  signal clk_gen_CNT0_Madd_s_CNT3_1_cy_9_rt_114 : STD_LOGIC; 
  signal clk_gen_CNT0_Madd_s_CNT3_1_xor_15_rt_116 : STD_LOGIC; 
  signal clk_gen_CNT0_Mcount_s_CNT2_cy_0_rt_118 : STD_LOGIC; 
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
  signal clk_gen_CNT0_Msub_s_CNT3_2_cy_0_rt_165 : STD_LOGIC; 
  signal clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_cy_0_rt_196 : STD_LOGIC; 
  signal clk_gen_CNT0_Msub_s_CNT3_U_share0000_cy_0_rt_225 : STD_LOGIC; 
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
  signal clk_gen_CNT0_s_CNT2_cmp_eq000011_301 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT2_cmp_eq000024_302 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT2_cmp_eq000048_303 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT2_cmp_eq000061_304 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_cmp_eq0000 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_cmp_eq000020_366 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_cmp_eq000043_367 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_cmp_eq000056_368 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_cmp_eq00007_369 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_0_3_370 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_0_9_371 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_10_3_372 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_10_9_373 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_11_3_374 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_11_9_375 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_12_3_376 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_12_9_377 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_13_11_378 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_13_22 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_13_8_380 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_14_0_381 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_14_18_382 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_14_3_383 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_14_48 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_14_481_385 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_14_482_386 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_14_71 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_1_3_388 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_1_9_389 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_2_3_390 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_2_9_391 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_3_3_392 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_3_9_393 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_4_3_394 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_4_9_395 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_5_3_396 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_5_9_397 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_6_3_398 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_6_9_399 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_7_17_400 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_7_19 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_8_3_402 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_8_9_403 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_9_3_404 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_D_mux0004_9_9_405 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_UD_406 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_UD_cmp_eq0000 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_UD_cmp_eq000012_408 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_UD_cmp_eq000025_409 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_UD_cmp_eq000049_410 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_UD_cmp_eq000058_411 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_UD_mux0003 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_U_mux0000_10_114 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_U_mux0000_10_14_429 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_U_mux0000_11_114 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_U_mux0000_11_14_431 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_U_mux0000_12_114 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_U_mux0000_12_14_433 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_U_mux0000_13_114 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_U_mux0000_13_14_435 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_U_mux0000_14_114 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_U_mux0000_14_14_437 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_U_mux0000_15_114 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_U_mux0000_15_14_439 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_U_mux0000_1_114 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_U_mux0000_1_14_441 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_U_mux0000_2_120 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_U_mux0000_2_14_443 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_U_mux0000_2_19_444 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_U_mux0000_3_114 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_U_mux0000_3_14_446 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_U_mux0000_4_114 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_U_mux0000_4_14_448 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_U_mux0000_5_114 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_U_mux0000_5_14_450 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_U_mux0000_6_114 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_U_mux0000_6_14_452 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_U_mux0000_7_114 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_U_mux0000_7_14_454 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_U_mux0000_8_11_455 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_U_mux0000_9_114 : STD_LOGIC; 
  signal clk_gen_CNT0_s_CNT3_U_mux0000_9_14_457 : STD_LOGIC; 
  signal clk_gen_CNT0_s_REG_0_not0001 : STD_LOGIC; 
  signal clk_gen_CNT0_s_REG_10_not0001 : STD_LOGIC; 
  signal clk_gen_CNT0_s_mode_491 : STD_LOGIC; 
  signal clk_gen_CNT0_s_out2_or0000 : STD_LOGIC; 
  signal clk_gen_CNT0_s_out2_or000012_493 : STD_LOGIC; 
  signal clk_gen_CNT0_s_out2_or000025_494 : STD_LOGIC; 
  signal clk_gen_CNT0_s_out2_or000049_495 : STD_LOGIC; 
  signal clk_gen_CNT0_s_out2_or000058_496 : STD_LOGIC; 
  signal clk_gen_CNT0_s_wr : STD_LOGIC; 
  signal clk_gen_CNT0_s_wr1_498 : STD_LOGIC; 
  signal clk_gen_CNT0_s_wr2 : STD_LOGIC; 
  signal clk_gen_CNT0_s_wr_L_500 : STD_LOGIC; 
  signal clk_gen_CNT0_s_wr_M_501 : STD_LOGIC; 
  signal clk_gen_CNT0_s_wr_wait_502 : STD_LOGIC; 
  signal clk_gen_CNT0_s_wr_wait_mux0003 : STD_LOGIC; 
  signal clk_gen_s_addr_not0001 : STD_LOGIC; 
  signal clk_gen_s_cw0 : STD_LOGIC; 
  signal clk_gen_s_cw0_and000012_508 : STD_LOGIC; 
  signal clk_gen_s_cw0_and00009_509 : STD_LOGIC; 
  signal clk_gen_s_wr_b_518 : STD_LOGIC; 
  signal clk_gen_s_wr_b_mux0000 : STD_LOGIC; 
  signal clk_gen_s_wr_b_mux00001_520 : STD_LOGIC; 
  signal clk_gen_s_wr_b_mux00006_521 : STD_LOGIC; 
  signal clk_gen_state_FSM_FFd1_522 : STD_LOGIC; 
  signal clk_gen_state_FSM_FFd1_In : STD_LOGIC; 
  signal clk_gen_state_FSM_FFd2_524 : STD_LOGIC; 
  signal clk_gen_state_FSM_FFd2_In1 : STD_LOGIC; 
  signal clk_gen_state_FSM_FFd3_526 : STD_LOGIC; 
  signal clk_gen_state_FSM_FFd4_527 : STD_LOGIC; 
  signal clk_gen_state_FSM_FFd5_528 : STD_LOGIC; 
  signal clk_gen_state_FSM_FFd6_529 : STD_LOGIC; 
  signal clk_gen_state_FSM_FFd6_In : STD_LOGIC; 
  signal clk_gen_not0000 : STD_LOGIC; 
  signal clk_gen_not0001_532 : STD_LOGIC; 
  signal m_ADC_data_0_IBUF_542 : STD_LOGIC; 
  signal m_ADC_data_1_IBUF_543 : STD_LOGIC; 
  signal m_ADC_data_2_IBUF_544 : STD_LOGIC; 
  signal m_ADC_data_3_IBUF_545 : STD_LOGIC; 
  signal m_ADC_data_4_IBUF_546 : STD_LOGIC; 
  signal m_ADC_data_5_IBUF_547 : STD_LOGIC; 
  signal m_ADC_data_6_IBUF_548 : STD_LOGIC; 
  signal m_ADC_data_7_IBUF_549 : STD_LOGIC; 
  signal m_OE_b_IBUF_560 : STD_LOGIC; 
  signal m_TP_0_OBUF_563 : STD_LOGIC; 
  signal m_TP_0_OBUF1 : STD_LOGIC; 
  signal m_TP_1_OBUF_565 : STD_LOGIC; 
  signal m_TP_1_OBUF1 : STD_LOGIC; 
  signal m_address_0_IBUF_576 : STD_LOGIC; 
  signal m_address_1_IBUF_577 : STD_LOGIC; 
  signal m_address_2_IBUF_578 : STD_LOGIC; 
  signal m_address_3_IBUF_579 : STD_LOGIC; 
  signal m_address_4_IBUF_580 : STD_LOGIC; 
  signal m_address_5_IBUF_581 : STD_LOGIC; 
  signal m_address_6_IBUF_582 : STD_LOGIC; 
  signal m_address_7_IBUF_583 : STD_LOGIC; 
  signal m_address_8_IBUF_584 : STD_LOGIC; 
  signal m_cmd_data_IBUF_587 : STD_LOGIC; 
  signal m_ren_IBUF_605 : STD_LOGIC; 
  signal m_reset_b_IBUF_607 : STD_LOGIC; 
  signal m_wen_IBUF_609 : STD_LOGIC; 
  signal s_OE_b_642 : STD_LOGIC; 
  signal s_cmd_data_652 : STD_LOGIC; 
  signal s_ena0 : STD_LOGIC; 
  signal s_ena1 : STD_LOGIC; 
  signal s_enb0 : STD_LOGIC; 
  signal s_enb1 : STD_LOGIC; 
  signal s_ren_684 : STD_LOGIC; 
  signal s_wen_685 : STD_LOGIC; 
  signal sig_controller_N0 : STD_LOGIC; 
  signal sig_controller_N4 : STD_LOGIC; 
  signal sig_controller_adc_ctr_Mcount_s_cnt_cy_1_rt_701 : STD_LOGIC; 
  signal sig_controller_adc_ctr_Mcount_s_cnt_cy_2_rt_703 : STD_LOGIC; 
  signal sig_controller_adc_ctr_Mcount_s_cnt_cy_3_rt_705 : STD_LOGIC; 
  signal sig_controller_adc_ctr_Mcount_s_cnt_cy_4_rt_707 : STD_LOGIC; 
  signal sig_controller_adc_ctr_Mcount_s_cnt_cy_5_rt_709 : STD_LOGIC; 
  signal sig_controller_adc_ctr_Mcount_s_cnt_cy_6_rt_711 : STD_LOGIC; 
  signal sig_controller_adc_ctr_Mcount_s_cnt_cy_7_rt_713 : STD_LOGIC; 
  signal sig_controller_adc_ctr_Mcount_s_cnt_cy_8_rt_715 : STD_LOGIC; 
  signal sig_controller_adc_ctr_Mcount_s_cnt_cy_9_rt_717 : STD_LOGIC; 
  signal sig_controller_dac_ctr_Mcount_s_cnt_cy_1_rt_732 : STD_LOGIC; 
  signal sig_controller_dac_ctr_Mcount_s_cnt_cy_2_rt_734 : STD_LOGIC; 
  signal sig_controller_dac_ctr_Mcount_s_cnt_cy_3_rt_736 : STD_LOGIC; 
  signal sig_controller_dac_ctr_Mcount_s_cnt_cy_4_rt_738 : STD_LOGIC; 
  signal sig_controller_dac_ctr_Mcount_s_cnt_cy_5_rt_740 : STD_LOGIC; 
  signal sig_controller_dac_ctr_Mcount_s_cnt_cy_6_rt_742 : STD_LOGIC; 
  signal sig_controller_dac_ctr_Mcount_s_cnt_cy_7_rt_744 : STD_LOGIC; 
  signal sig_controller_dac_ctr_Mcount_s_cnt_cy_8_rt_746 : STD_LOGIC; 
  signal sig_controller_dac_ctr_Mcount_s_cnt_cy_9_rt_748 : STD_LOGIC; 
  signal sig_controller_rem0ctr_Mcount_s_Cnt_cy_1_rt_774 : STD_LOGIC; 
  signal sig_controller_rem0ctr_Mcount_s_Cnt_cy_2_rt_776 : STD_LOGIC; 
  signal sig_controller_rem0ctr_Mcount_s_Cnt_cy_3_rt_778 : STD_LOGIC; 
  signal sig_controller_rem0ctr_Mcount_s_Cnt_cy_4_rt_780 : STD_LOGIC; 
  signal sig_controller_rem0ctr_Mcount_s_Cnt_cy_5_rt_782 : STD_LOGIC; 
  signal sig_controller_rem0ctr_Mcount_s_Cnt_cy_6_rt_784 : STD_LOGIC; 
  signal sig_controller_rem0ctr_Mcount_s_Cnt_cy_7_rt_786 : STD_LOGIC; 
  signal sig_controller_rem0ctr_Mcount_s_Cnt_cy_8_rt_788 : STD_LOGIC; 
  signal sig_controller_rem0ctr_Mcount_s_Cnt_cy_9_rt_790 : STD_LOGIC; 
  signal sig_controller_s_clr0 : STD_LOGIC; 
  signal sig_controller_s_enp0 : STD_LOGIC; 
  signal sig_controller_t_prevmode_mux0000_3_2 : STD_LOGIC; 
  signal sig_controller_t_prevmode_mux0000_4_1 : STD_LOGIC; 
  signal sig_controller_t_ps_FSM_FFd1_820 : STD_LOGIC; 
  signal sig_controller_t_ps_FSM_FFd10_821 : STD_LOGIC; 
  signal sig_controller_t_ps_FSM_FFd10_In1_822 : STD_LOGIC; 
  signal sig_controller_t_ps_FSM_FFd11_823 : STD_LOGIC; 
  signal sig_controller_t_ps_FSM_FFd11_In : STD_LOGIC; 
  signal sig_controller_t_ps_FSM_FFd12_825 : STD_LOGIC; 
  signal sig_controller_t_ps_FSM_FFd12_In : STD_LOGIC; 
  signal sig_controller_t_ps_FSM_FFd13_827 : STD_LOGIC; 
  signal sig_controller_t_ps_FSM_FFd13_In : STD_LOGIC; 
  signal sig_controller_t_ps_FSM_FFd14_829 : STD_LOGIC; 
  signal sig_controller_t_ps_FSM_FFd14_In11_830 : STD_LOGIC; 
  signal sig_controller_t_ps_FSM_FFd14_In3_831 : STD_LOGIC; 
  signal sig_controller_t_ps_FSM_FFd14_In33_832 : STD_LOGIC; 
  signal sig_controller_t_ps_FSM_FFd2_833 : STD_LOGIC; 
  signal sig_controller_t_ps_FSM_FFd2_In : STD_LOGIC; 
  signal sig_controller_t_ps_FSM_FFd3_835 : STD_LOGIC; 
  signal sig_controller_t_ps_FSM_FFd4_836 : STD_LOGIC; 
  signal sig_controller_t_ps_FSM_FFd4_In : STD_LOGIC; 
  signal sig_controller_t_ps_FSM_FFd5_838 : STD_LOGIC; 
  signal sig_controller_t_ps_FSM_FFd5_In1 : STD_LOGIC; 
  signal sig_controller_t_ps_FSM_FFd6_840 : STD_LOGIC; 
  signal sig_controller_t_ps_FSM_FFd6_In : STD_LOGIC; 
  signal sig_controller_t_ps_FSM_FFd7_842 : STD_LOGIC; 
  signal sig_controller_t_ps_FSM_FFd7_In1 : STD_LOGIC; 
  signal sig_controller_t_ps_FSM_FFd8_844 : STD_LOGIC; 
  signal sig_controller_t_ps_FSM_FFd8_In : STD_LOGIC; 
  signal sig_controller_t_ps_FSM_FFd9_846 : STD_LOGIC; 
  signal sig_controller_t_ps_FSM_FFd9_In_847 : STD_LOGIC; 
  signal sig_controller_t_ps_cmp_eq0000 : STD_LOGIC; 
  signal sig_controller_t_ps_cmp_eq0001 : STD_LOGIC; 
  signal NLW_sram_DA_doutb_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_sram_DA_doutb_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_sram_DA_doutb_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_sram_DA_doutb_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_sram_DA_doutb_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_sram_DA_doutb_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_sram_DA_doutb_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_sram_DA_doutb_0_UNCONNECTED : STD_LOGIC; 
  signal Mtridata_inlatch_dout : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal Mtridata_outlatch_dout : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal ad_latch_dout : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal avg_module_Maccum_s_data_cy : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal avg_module_cns1_Mcompar_s_div_comp_cmp_ge0000_cy : STD_LOGIC_VECTOR ( 0 downto 0 ); 
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
  signal out_mux_dout : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal outlatch_dout : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal ram0_mux_dout : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal ram1_mux_dout : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal s_address : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal s_doutb0 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal s_doutb1 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal s_doutb3 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal s_mode_addr : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal sig_controller_Result : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal sig_controller_adc_ctr_Mcount_s_cnt_cy : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal sig_controller_adc_ctr_Mcount_s_cnt_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal sig_controller_adc_ctr_s_cnt : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal sig_controller_dac_ctr_Mcount_s_cnt_cy : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal sig_controller_dac_ctr_Mcount_s_cnt_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal sig_controller_dac_ctr_Result : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal sig_controller_dac_ctr_s_cnt : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal sig_controller_rem0ctr_Mcount_s_Cnt_cy : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal sig_controller_rem0ctr_Mcount_s_Cnt_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal sig_controller_rem0ctr_Result : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal sig_controller_rem0ctr_s_Cnt : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal sig_controller_t_prevmode : STD_LOGIC_VECTOR ( 1 downto 0 ); 
begin
  XST_GND : GND
    port map (
      G => avg_module_Maccum_s_data_cy(0)
    );
  XST_VCC : VCC
    port map (
      P => avg_module_cns1_Mcompar_s_div_comp_cmp_ge0000_cy(0)
    );
  s_cmd_data : FD
    port map (
      C => m_TP_0_OBUF_563,
      D => m_cmd_data_IBUF_587,
      Q => s_cmd_data_652
    );
  Mtridata_outlatch_dout_0 : FD
    port map (
      C => m_TP_0_OBUF_563,
      D => out_mux_dout(0),
      Q => Mtridata_outlatch_dout(0)
    );
  Mtridata_outlatch_dout_1 : FD
    port map (
      C => m_TP_0_OBUF_563,
      D => out_mux_dout(1),
      Q => Mtridata_outlatch_dout(1)
    );
  Mtridata_outlatch_dout_2 : FD
    port map (
      C => m_TP_0_OBUF_563,
      D => out_mux_dout(2),
      Q => Mtridata_outlatch_dout(2)
    );
  Mtridata_outlatch_dout_3 : FD
    port map (
      C => m_TP_0_OBUF_563,
      D => out_mux_dout(3),
      Q => Mtridata_outlatch_dout(3)
    );
  Mtridata_outlatch_dout_4 : FD
    port map (
      C => m_TP_0_OBUF_563,
      D => out_mux_dout(4),
      Q => Mtridata_outlatch_dout(4)
    );
  Mtridata_outlatch_dout_5 : FD
    port map (
      C => m_TP_0_OBUF_563,
      D => out_mux_dout(5),
      Q => Mtridata_outlatch_dout(5)
    );
  Mtridata_outlatch_dout_6 : FD
    port map (
      C => m_TP_0_OBUF_563,
      D => out_mux_dout(6),
      Q => Mtridata_outlatch_dout(6)
    );
  Mtridata_outlatch_dout_7 : FD
    port map (
      C => m_TP_0_OBUF_563,
      D => out_mux_dout(7),
      Q => Mtridata_outlatch_dout(7)
    );
  s_wen : FD
    port map (
      C => m_TP_0_OBUF_563,
      D => m_wen_IBUF_609,
      Q => s_wen_685
    );
  Mtridata_inlatch_dout_0 : FD
    port map (
      C => m_TP_0_OBUF_563,
      D => N34,
      Q => Mtridata_inlatch_dout(0)
    );
  Mtridata_inlatch_dout_1 : FD
    port map (
      C => m_TP_0_OBUF_563,
      D => N33,
      Q => Mtridata_inlatch_dout(1)
    );
  Mtridata_inlatch_dout_2 : FD
    port map (
      C => m_TP_0_OBUF_563,
      D => N32,
      Q => Mtridata_inlatch_dout(2)
    );
  Mtridata_inlatch_dout_3 : FD
    port map (
      C => m_TP_0_OBUF_563,
      D => N31,
      Q => Mtridata_inlatch_dout(3)
    );
  Mtridata_inlatch_dout_4 : FD
    port map (
      C => m_TP_0_OBUF_563,
      D => N30,
      Q => Mtridata_inlatch_dout(4)
    );
  Mtridata_inlatch_dout_5 : FD
    port map (
      C => m_TP_0_OBUF_563,
      D => N29,
      Q => Mtridata_inlatch_dout(5)
    );
  Mtridata_inlatch_dout_6 : FD
    port map (
      C => m_TP_0_OBUF_563,
      D => N28,
      Q => Mtridata_inlatch_dout(6)
    );
  Mtridata_inlatch_dout_7 : FD
    port map (
      C => m_TP_0_OBUF_563,
      D => N27,
      Q => Mtridata_inlatch_dout(7)
    );
  s_address_0 : FD
    port map (
      C => m_TP_0_OBUF_563,
      D => m_address_0_IBUF_576,
      Q => s_address(0)
    );
  s_address_1 : FD
    port map (
      C => m_TP_0_OBUF_563,
      D => m_address_1_IBUF_577,
      Q => s_address(1)
    );
  s_address_2 : FD
    port map (
      C => m_TP_0_OBUF_563,
      D => m_address_2_IBUF_578,
      Q => s_address(2)
    );
  s_address_3 : FD
    port map (
      C => m_TP_0_OBUF_563,
      D => m_address_3_IBUF_579,
      Q => s_address(3)
    );
  s_address_4 : FD
    port map (
      C => m_TP_0_OBUF_563,
      D => m_address_4_IBUF_580,
      Q => s_address(4)
    );
  s_address_5 : FD
    port map (
      C => m_TP_0_OBUF_563,
      D => m_address_5_IBUF_581,
      Q => s_address(5)
    );
  s_address_6 : FD
    port map (
      C => m_TP_0_OBUF_563,
      D => m_address_6_IBUF_582,
      Q => s_address(6)
    );
  s_address_7 : FD
    port map (
      C => m_TP_0_OBUF_563,
      D => m_address_7_IBUF_583,
      Q => s_address(7)
    );
  s_address_8 : FD
    port map (
      C => m_TP_0_OBUF_563,
      D => m_address_8_IBUF_584,
      Q => s_address(8)
    );
  s_OE_b : FD
    port map (
      C => m_TP_0_OBUF_563,
      D => m_OE_b_IBUF_560,
      Q => s_OE_b_642
    );
  s_ren : FD
    port map (
      C => m_TP_0_OBUF_563,
      D => m_ren_IBUF_605,
      Q => s_ren_684
    );
  Mtrien_outlatch_dout : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_0_OBUF_563,
      D => s_OE_b_642,
      Q => Mtrien_outlatch_dout_18
    );
  Mtrien_inlatch_dout : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_0_OBUF_563,
      D => Mtrien_inlatch_dout_mux0000,
      Q => Mtrien_inlatch_dout_16
    );
  ad_latch_dout_0 : FD
    port map (
      C => m_TP_1_OBUF_565,
      D => m_ADC_data_0_IBUF_542,
      Q => ad_latch_dout(0)
    );
  ad_latch_dout_1 : FD
    port map (
      C => m_TP_1_OBUF_565,
      D => m_ADC_data_1_IBUF_543,
      Q => ad_latch_dout(1)
    );
  ad_latch_dout_2 : FD
    port map (
      C => m_TP_1_OBUF_565,
      D => m_ADC_data_2_IBUF_544,
      Q => ad_latch_dout(2)
    );
  ad_latch_dout_3 : FD
    port map (
      C => m_TP_1_OBUF_565,
      D => m_ADC_data_3_IBUF_545,
      Q => ad_latch_dout(3)
    );
  ad_latch_dout_4 : FD
    port map (
      C => m_TP_1_OBUF_565,
      D => m_ADC_data_4_IBUF_546,
      Q => ad_latch_dout(4)
    );
  ad_latch_dout_5 : FD
    port map (
      C => m_TP_1_OBUF_565,
      D => m_ADC_data_5_IBUF_547,
      Q => ad_latch_dout(5)
    );
  ad_latch_dout_6 : FD
    port map (
      C => m_TP_1_OBUF_565,
      D => m_ADC_data_6_IBUF_548,
      Q => ad_latch_dout(6)
    );
  ad_latch_dout_7 : FD
    port map (
      C => m_TP_1_OBUF_565,
      D => m_ADC_data_7_IBUF_549,
      Q => ad_latch_dout(7)
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
      C => m_TP_0_OBUF_563,
      D => clk_gen_CNT0_s_CNT3_UD_mux0003,
      S => clk_gen_not0000,
      Q => clk_gen_CNT0_s_CNT3_UD_406
    );
  clk_gen_CNT0_s_wr_L : FDCE
    port map (
      C => clk_gen_CNT0_s_wr,
      CE => clk_gen_s_cw0,
      CLR => clk_gen_not0000,
      D => clk_gen_s_data(4),
      Q => clk_gen_CNT0_s_wr_L_500
    );
  clk_gen_CNT0_s_wr_M : FDCE
    port map (
      C => clk_gen_CNT0_s_wr,
      CE => clk_gen_s_cw0,
      CLR => clk_gen_not0000,
      D => clk_gen_s_data(5),
      Q => clk_gen_CNT0_s_wr_M_501
    );
  clk_gen_CNT0_s_REG_10 : FDCE
    port map (
      C => clk_gen_CNT0_s_wr,
      CE => clk_gen_CNT0_s_REG_10_not0001,
      CLR => clk_gen_not0000,
      D => clk_gen_s_data(2),
      Q => clk_gen_CNT0_s_REG(10)
    );
  clk_gen_CNT0_s_wr_wait : FDCE
    port map (
      C => clk_gen_CNT0_s_wr,
      CE => clk_gen_CNT0_m_cw_inv,
      CLR => clk_gen_not0000,
      D => clk_gen_CNT0_s_wr_wait_mux0003,
      Q => clk_gen_CNT0_s_wr_wait_502
    );
  clk_gen_CNT0_s_REG_11 : FDCE
    port map (
      C => clk_gen_CNT0_s_wr,
      CE => clk_gen_CNT0_s_REG_10_not0001,
      CLR => clk_gen_not0000,
      D => clk_gen_s_data(3),
      Q => clk_gen_CNT0_s_REG(11)
    );
  clk_gen_CNT0_s_REG_12 : FDCE
    port map (
      C => clk_gen_CNT0_s_wr,
      CE => clk_gen_CNT0_s_REG_10_not0001,
      CLR => clk_gen_not0000,
      D => clk_gen_s_data(4),
      Q => clk_gen_CNT0_s_REG(12)
    );
  clk_gen_CNT0_s_REG_0 : FDCE
    port map (
      C => clk_gen_CNT0_s_wr,
      CE => clk_gen_CNT0_s_REG_0_not0001,
      CLR => clk_gen_not0000,
      D => clk_gen_s_data(0),
      Q => clk_gen_CNT0_s_REG(0)
    );
  clk_gen_CNT0_s_REG_14 : FDCE
    port map (
      C => clk_gen_CNT0_s_wr,
      CE => clk_gen_CNT0_s_REG_10_not0001,
      CLR => clk_gen_not0000,
      D => clk_gen_s_data(6),
      Q => clk_gen_CNT0_s_REG(14)
    );
  clk_gen_CNT0_s_REG_13 : FDCE
    port map (
      C => clk_gen_CNT0_s_wr,
      CE => clk_gen_CNT0_s_REG_10_not0001,
      CLR => clk_gen_not0000,
      D => clk_gen_s_data(5),
      Q => clk_gen_CNT0_s_REG(13)
    );
  clk_gen_CNT0_s_REG_1 : FDCE
    port map (
      C => clk_gen_CNT0_s_wr,
      CE => clk_gen_CNT0_s_REG_0_not0001,
      CLR => clk_gen_not0000,
      D => clk_gen_s_data(1),
      Q => clk_gen_CNT0_s_REG(1)
    );
  clk_gen_CNT0_s_REG_2 : FDPE
    port map (
      C => clk_gen_CNT0_s_wr,
      CE => clk_gen_CNT0_s_REG_0_not0001,
      D => clk_gen_s_data(2),
      PRE => clk_gen_not0000,
      Q => clk_gen_CNT0_s_REG(2)
    );
  clk_gen_CNT0_s_mode : FDCE
    port map (
      C => clk_gen_CNT0_s_wr,
      CE => clk_gen_s_cw0,
      CLR => clk_gen_not0000,
      D => clk_gen_s_data(1),
      Q => clk_gen_CNT0_s_mode_491
    );
  clk_gen_CNT0_s_REG_15 : FDCE
    port map (
      C => clk_gen_CNT0_s_wr,
      CE => clk_gen_CNT0_s_REG_10_not0001,
      CLR => clk_gen_not0000,
      D => clk_gen_s_data(7),
      Q => clk_gen_CNT0_s_REG(15)
    );
  clk_gen_CNT0_s_REG_3 : FDCE
    port map (
      C => clk_gen_CNT0_s_wr,
      CE => clk_gen_CNT0_s_REG_0_not0001,
      CLR => clk_gen_not0000,
      D => clk_gen_s_data(3),
      Q => clk_gen_CNT0_s_REG(3)
    );
  clk_gen_CNT0_s_REG_6 : FDCE
    port map (
      C => clk_gen_CNT0_s_wr,
      CE => clk_gen_CNT0_s_REG_0_not0001,
      CLR => clk_gen_not0000,
      D => clk_gen_s_data(6),
      Q => clk_gen_CNT0_s_REG(6)
    );
  clk_gen_CNT0_s_REG_4 : FDCE
    port map (
      C => clk_gen_CNT0_s_wr,
      CE => clk_gen_CNT0_s_REG_0_not0001,
      CLR => clk_gen_not0000,
      D => clk_gen_s_data(4),
      Q => clk_gen_CNT0_s_REG(4)
    );
  clk_gen_CNT0_s_REG_5 : FDCE
    port map (
      C => clk_gen_CNT0_s_wr,
      CE => clk_gen_CNT0_s_REG_0_not0001,
      CLR => clk_gen_not0000,
      D => clk_gen_s_data(5),
      Q => clk_gen_CNT0_s_REG(5)
    );
  clk_gen_CNT0_s_REG_7 : FDCE
    port map (
      C => clk_gen_CNT0_s_wr,
      CE => clk_gen_CNT0_s_REG_0_not0001,
      CLR => clk_gen_not0000,
      D => clk_gen_s_data(7),
      Q => clk_gen_CNT0_s_REG(7)
    );
  clk_gen_CNT0_s_REG_8 : FDPE
    port map (
      C => clk_gen_CNT0_s_wr,
      CE => clk_gen_CNT0_s_REG_10_not0001,
      D => clk_gen_s_data(0),
      PRE => clk_gen_not0000,
      Q => clk_gen_CNT0_s_REG(8)
    );
  clk_gen_CNT0_s_REG_9 : FDCE
    port map (
      C => clk_gen_CNT0_s_wr,
      CE => clk_gen_CNT0_s_REG_10_not0001,
      CLR => clk_gen_not0000,
      D => clk_gen_s_data(1),
      Q => clk_gen_CNT0_s_REG(9)
    );
  clk_gen_CNT0_s_CNT2_0 : FDCE
    port map (
      C => clk_gen_CNT0_m_clk_inv,
      CE => clk_gen_CNT0_s_CNT2_and0000,
      CLR => clk_gen_not0000,
      D => clk_gen_CNT0_Mcount_s_CNT2_eqn_0,
      Q => clk_gen_CNT0_s_CNT2(0)
    );
  clk_gen_CNT0_s_CNT2_3 : FDCE
    port map (
      C => clk_gen_CNT0_m_clk_inv,
      CE => clk_gen_CNT0_s_CNT2_and0000,
      CLR => clk_gen_not0000,
      D => clk_gen_CNT0_Mcount_s_CNT2_eqn_3,
      Q => clk_gen_CNT0_s_CNT2(3)
    );
  clk_gen_CNT0_s_CNT2_1 : FDCE
    port map (
      C => clk_gen_CNT0_m_clk_inv,
      CE => clk_gen_CNT0_s_CNT2_and0000,
      CLR => clk_gen_not0000,
      D => clk_gen_CNT0_Mcount_s_CNT2_eqn_1,
      Q => clk_gen_CNT0_s_CNT2(1)
    );
  clk_gen_CNT0_s_CNT2_2 : FDPE
    port map (
      C => clk_gen_CNT0_m_clk_inv,
      CE => clk_gen_CNT0_s_CNT2_and0000,
      D => clk_gen_CNT0_Mcount_s_CNT2_eqn_2,
      PRE => clk_gen_not0000,
      Q => clk_gen_CNT0_s_CNT2(2)
    );
  clk_gen_CNT0_s_CNT2_4 : FDCE
    port map (
      C => clk_gen_CNT0_m_clk_inv,
      CE => clk_gen_CNT0_s_CNT2_and0000,
      CLR => clk_gen_not0000,
      D => clk_gen_CNT0_Mcount_s_CNT2_eqn_4,
      Q => clk_gen_CNT0_s_CNT2(4)
    );
  clk_gen_CNT0_s_CNT2_5 : FDCE
    port map (
      C => clk_gen_CNT0_m_clk_inv,
      CE => clk_gen_CNT0_s_CNT2_and0000,
      CLR => clk_gen_not0000,
      D => clk_gen_CNT0_Mcount_s_CNT2_eqn_5,
      Q => clk_gen_CNT0_s_CNT2(5)
    );
  clk_gen_CNT0_s_CNT2_8 : FDPE
    port map (
      C => clk_gen_CNT0_m_clk_inv,
      CE => clk_gen_CNT0_s_CNT2_and0000,
      D => clk_gen_CNT0_Mcount_s_CNT2_eqn_8,
      PRE => clk_gen_not0000,
      Q => clk_gen_CNT0_s_CNT2(8)
    );
  clk_gen_CNT0_s_CNT2_6 : FDCE
    port map (
      C => clk_gen_CNT0_m_clk_inv,
      CE => clk_gen_CNT0_s_CNT2_and0000,
      CLR => clk_gen_not0000,
      D => clk_gen_CNT0_Mcount_s_CNT2_eqn_6,
      Q => clk_gen_CNT0_s_CNT2(6)
    );
  clk_gen_CNT0_s_CNT2_7 : FDCE
    port map (
      C => clk_gen_CNT0_m_clk_inv,
      CE => clk_gen_CNT0_s_CNT2_and0000,
      CLR => clk_gen_not0000,
      D => clk_gen_CNT0_Mcount_s_CNT2_eqn_7,
      Q => clk_gen_CNT0_s_CNT2(7)
    );
  clk_gen_CNT0_s_CNT2_9 : FDCE
    port map (
      C => clk_gen_CNT0_m_clk_inv,
      CE => clk_gen_CNT0_s_CNT2_and0000,
      CLR => clk_gen_not0000,
      D => clk_gen_CNT0_Mcount_s_CNT2_eqn_9,
      Q => clk_gen_CNT0_s_CNT2(9)
    );
  clk_gen_CNT0_s_CNT2_10 : FDCE
    port map (
      C => clk_gen_CNT0_m_clk_inv,
      CE => clk_gen_CNT0_s_CNT2_and0000,
      CLR => clk_gen_not0000,
      D => clk_gen_CNT0_Mcount_s_CNT2_eqn_10,
      Q => clk_gen_CNT0_s_CNT2(10)
    );
  clk_gen_CNT0_s_CNT2_13 : FDCE
    port map (
      C => clk_gen_CNT0_m_clk_inv,
      CE => clk_gen_CNT0_s_CNT2_and0000,
      CLR => clk_gen_not0000,
      D => clk_gen_CNT0_Mcount_s_CNT2_eqn_13,
      Q => clk_gen_CNT0_s_CNT2(13)
    );
  clk_gen_CNT0_s_CNT2_11 : FDCE
    port map (
      C => clk_gen_CNT0_m_clk_inv,
      CE => clk_gen_CNT0_s_CNT2_and0000,
      CLR => clk_gen_not0000,
      D => clk_gen_CNT0_Mcount_s_CNT2_eqn_11,
      Q => clk_gen_CNT0_s_CNT2(11)
    );
  clk_gen_CNT0_s_CNT2_12 : FDCE
    port map (
      C => clk_gen_CNT0_m_clk_inv,
      CE => clk_gen_CNT0_s_CNT2_and0000,
      CLR => clk_gen_not0000,
      D => clk_gen_CNT0_Mcount_s_CNT2_eqn_12,
      Q => clk_gen_CNT0_s_CNT2(12)
    );
  clk_gen_CNT0_s_CNT2_14 : FDCE
    port map (
      C => clk_gen_CNT0_m_clk_inv,
      CE => clk_gen_CNT0_s_CNT2_and0000,
      CLR => clk_gen_not0000,
      D => clk_gen_CNT0_Mcount_s_CNT2_eqn_14,
      Q => clk_gen_CNT0_s_CNT2(14)
    );
  clk_gen_CNT0_s_CNT2_15 : FDCE
    port map (
      C => clk_gen_CNT0_m_clk_inv,
      CE => clk_gen_CNT0_s_CNT2_and0000,
      CLR => clk_gen_not0000,
      D => clk_gen_CNT0_Mcount_s_CNT2_eqn_15,
      Q => clk_gen_CNT0_s_CNT2(15)
    );
  clk_gen_CNT0_Msub_s_CNT3_U_share0000_cy_0_Q : MUXCY
    port map (
      CI => avg_module_cns1_Mcompar_s_div_comp_cmp_ge0000_cy(0),
      DI => avg_module_Maccum_s_data_cy(0),
      S => clk_gen_CNT0_Msub_s_CNT3_U_share0000_cy_0_rt_225,
      O => clk_gen_CNT0_Msub_s_CNT3_U_share0000_cy(0)
    );
  clk_gen_CNT0_Msub_s_CNT3_U_share0000_xor_0_Q : XORCY
    port map (
      CI => avg_module_cns1_Mcompar_s_div_comp_cmp_ge0000_cy(0),
      LI => clk_gen_CNT0_Msub_s_CNT3_U_share0000_cy_0_rt_225,
      O => clk_gen_CNT0_s_CNT3_U_share0000(0)
    );
  clk_gen_CNT0_Msub_s_CNT3_U_share0000_cy_1_Q : MUXCY
    port map (
      CI => clk_gen_CNT0_Msub_s_CNT3_U_share0000_cy(0),
      DI => avg_module_cns1_Mcompar_s_div_comp_cmp_ge0000_cy(0),
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
      DI => avg_module_cns1_Mcompar_s_div_comp_cmp_ge0000_cy(0),
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
      DI => avg_module_cns1_Mcompar_s_div_comp_cmp_ge0000_cy(0),
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
      DI => avg_module_cns1_Mcompar_s_div_comp_cmp_ge0000_cy(0),
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
      DI => avg_module_cns1_Mcompar_s_div_comp_cmp_ge0000_cy(0),
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
      DI => avg_module_cns1_Mcompar_s_div_comp_cmp_ge0000_cy(0),
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
      DI => avg_module_cns1_Mcompar_s_div_comp_cmp_ge0000_cy(0),
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
      DI => avg_module_cns1_Mcompar_s_div_comp_cmp_ge0000_cy(0),
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
      DI => avg_module_cns1_Mcompar_s_div_comp_cmp_ge0000_cy(0),
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
      DI => avg_module_cns1_Mcompar_s_div_comp_cmp_ge0000_cy(0),
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
      DI => avg_module_cns1_Mcompar_s_div_comp_cmp_ge0000_cy(0),
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
      DI => avg_module_cns1_Mcompar_s_div_comp_cmp_ge0000_cy(0),
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
      DI => avg_module_cns1_Mcompar_s_div_comp_cmp_ge0000_cy(0),
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
      DI => avg_module_cns1_Mcompar_s_div_comp_cmp_ge0000_cy(0),
      S => clk_gen_CNT0_Madd_s_CNT3_1_lut(0),
      O => clk_gen_CNT0_Madd_s_CNT3_1_cy(0)
    );
  clk_gen_CNT0_Madd_s_CNT3_1_cy_1_Q : MUXCY
    port map (
      CI => clk_gen_CNT0_Madd_s_CNT3_1_cy(0),
      DI => avg_module_Maccum_s_data_cy(0),
      S => clk_gen_CNT0_Madd_s_CNT3_1_cy_1_rt_98,
      O => clk_gen_CNT0_Madd_s_CNT3_1_cy(1)
    );
  clk_gen_CNT0_Madd_s_CNT3_1_xor_1_Q : XORCY
    port map (
      CI => clk_gen_CNT0_Madd_s_CNT3_1_cy(0),
      LI => clk_gen_CNT0_Madd_s_CNT3_1_cy_1_rt_98,
      O => clk_gen_CNT0_s_CNT3_1(1)
    );
  clk_gen_CNT0_Madd_s_CNT3_1_cy_2_Q : MUXCY
    port map (
      CI => clk_gen_CNT0_Madd_s_CNT3_1_cy(1),
      DI => avg_module_Maccum_s_data_cy(0),
      S => clk_gen_CNT0_Madd_s_CNT3_1_cy_2_rt_100,
      O => clk_gen_CNT0_Madd_s_CNT3_1_cy(2)
    );
  clk_gen_CNT0_Madd_s_CNT3_1_xor_2_Q : XORCY
    port map (
      CI => clk_gen_CNT0_Madd_s_CNT3_1_cy(1),
      LI => clk_gen_CNT0_Madd_s_CNT3_1_cy_2_rt_100,
      O => clk_gen_CNT0_s_CNT3_1(2)
    );
  clk_gen_CNT0_Madd_s_CNT3_1_cy_3_Q : MUXCY
    port map (
      CI => clk_gen_CNT0_Madd_s_CNT3_1_cy(2),
      DI => avg_module_Maccum_s_data_cy(0),
      S => clk_gen_CNT0_Madd_s_CNT3_1_cy_3_rt_102,
      O => clk_gen_CNT0_Madd_s_CNT3_1_cy(3)
    );
  clk_gen_CNT0_Madd_s_CNT3_1_xor_3_Q : XORCY
    port map (
      CI => clk_gen_CNT0_Madd_s_CNT3_1_cy(2),
      LI => clk_gen_CNT0_Madd_s_CNT3_1_cy_3_rt_102,
      O => clk_gen_CNT0_s_CNT3_1(3)
    );
  clk_gen_CNT0_Madd_s_CNT3_1_cy_4_Q : MUXCY
    port map (
      CI => clk_gen_CNT0_Madd_s_CNT3_1_cy(3),
      DI => avg_module_Maccum_s_data_cy(0),
      S => clk_gen_CNT0_Madd_s_CNT3_1_cy_4_rt_104,
      O => clk_gen_CNT0_Madd_s_CNT3_1_cy(4)
    );
  clk_gen_CNT0_Madd_s_CNT3_1_xor_4_Q : XORCY
    port map (
      CI => clk_gen_CNT0_Madd_s_CNT3_1_cy(3),
      LI => clk_gen_CNT0_Madd_s_CNT3_1_cy_4_rt_104,
      O => clk_gen_CNT0_s_CNT3_1(4)
    );
  clk_gen_CNT0_Madd_s_CNT3_1_cy_5_Q : MUXCY
    port map (
      CI => clk_gen_CNT0_Madd_s_CNT3_1_cy(4),
      DI => avg_module_Maccum_s_data_cy(0),
      S => clk_gen_CNT0_Madd_s_CNT3_1_cy_5_rt_106,
      O => clk_gen_CNT0_Madd_s_CNT3_1_cy(5)
    );
  clk_gen_CNT0_Madd_s_CNT3_1_xor_5_Q : XORCY
    port map (
      CI => clk_gen_CNT0_Madd_s_CNT3_1_cy(4),
      LI => clk_gen_CNT0_Madd_s_CNT3_1_cy_5_rt_106,
      O => clk_gen_CNT0_s_CNT3_1(5)
    );
  clk_gen_CNT0_Madd_s_CNT3_1_cy_6_Q : MUXCY
    port map (
      CI => clk_gen_CNT0_Madd_s_CNT3_1_cy(5),
      DI => avg_module_Maccum_s_data_cy(0),
      S => clk_gen_CNT0_Madd_s_CNT3_1_cy_6_rt_108,
      O => clk_gen_CNT0_Madd_s_CNT3_1_cy(6)
    );
  clk_gen_CNT0_Madd_s_CNT3_1_xor_6_Q : XORCY
    port map (
      CI => clk_gen_CNT0_Madd_s_CNT3_1_cy(5),
      LI => clk_gen_CNT0_Madd_s_CNT3_1_cy_6_rt_108,
      O => clk_gen_CNT0_s_CNT3_1(6)
    );
  clk_gen_CNT0_Madd_s_CNT3_1_cy_7_Q : MUXCY
    port map (
      CI => clk_gen_CNT0_Madd_s_CNT3_1_cy(6),
      DI => avg_module_Maccum_s_data_cy(0),
      S => clk_gen_CNT0_Madd_s_CNT3_1_cy_7_rt_110,
      O => clk_gen_CNT0_Madd_s_CNT3_1_cy(7)
    );
  clk_gen_CNT0_Madd_s_CNT3_1_xor_7_Q : XORCY
    port map (
      CI => clk_gen_CNT0_Madd_s_CNT3_1_cy(6),
      LI => clk_gen_CNT0_Madd_s_CNT3_1_cy_7_rt_110,
      O => clk_gen_CNT0_s_CNT3_1(7)
    );
  clk_gen_CNT0_Madd_s_CNT3_1_cy_8_Q : MUXCY
    port map (
      CI => clk_gen_CNT0_Madd_s_CNT3_1_cy(7),
      DI => avg_module_Maccum_s_data_cy(0),
      S => clk_gen_CNT0_Madd_s_CNT3_1_cy_8_rt_112,
      O => clk_gen_CNT0_Madd_s_CNT3_1_cy(8)
    );
  clk_gen_CNT0_Madd_s_CNT3_1_xor_8_Q : XORCY
    port map (
      CI => clk_gen_CNT0_Madd_s_CNT3_1_cy(7),
      LI => clk_gen_CNT0_Madd_s_CNT3_1_cy_8_rt_112,
      O => clk_gen_CNT0_s_CNT3_1(8)
    );
  clk_gen_CNT0_Madd_s_CNT3_1_cy_9_Q : MUXCY
    port map (
      CI => clk_gen_CNT0_Madd_s_CNT3_1_cy(8),
      DI => avg_module_Maccum_s_data_cy(0),
      S => clk_gen_CNT0_Madd_s_CNT3_1_cy_9_rt_114,
      O => clk_gen_CNT0_Madd_s_CNT3_1_cy(9)
    );
  clk_gen_CNT0_Madd_s_CNT3_1_xor_9_Q : XORCY
    port map (
      CI => clk_gen_CNT0_Madd_s_CNT3_1_cy(8),
      LI => clk_gen_CNT0_Madd_s_CNT3_1_cy_9_rt_114,
      O => clk_gen_CNT0_s_CNT3_1(9)
    );
  clk_gen_CNT0_Madd_s_CNT3_1_cy_10_Q : MUXCY
    port map (
      CI => clk_gen_CNT0_Madd_s_CNT3_1_cy(9),
      DI => avg_module_Maccum_s_data_cy(0),
      S => clk_gen_CNT0_Madd_s_CNT3_1_cy_10_rt_88,
      O => clk_gen_CNT0_Madd_s_CNT3_1_cy(10)
    );
  clk_gen_CNT0_Madd_s_CNT3_1_xor_10_Q : XORCY
    port map (
      CI => clk_gen_CNT0_Madd_s_CNT3_1_cy(9),
      LI => clk_gen_CNT0_Madd_s_CNT3_1_cy_10_rt_88,
      O => clk_gen_CNT0_s_CNT3_1(10)
    );
  clk_gen_CNT0_Madd_s_CNT3_1_cy_11_Q : MUXCY
    port map (
      CI => clk_gen_CNT0_Madd_s_CNT3_1_cy(10),
      DI => avg_module_Maccum_s_data_cy(0),
      S => clk_gen_CNT0_Madd_s_CNT3_1_cy_11_rt_90,
      O => clk_gen_CNT0_Madd_s_CNT3_1_cy(11)
    );
  clk_gen_CNT0_Madd_s_CNT3_1_xor_11_Q : XORCY
    port map (
      CI => clk_gen_CNT0_Madd_s_CNT3_1_cy(10),
      LI => clk_gen_CNT0_Madd_s_CNT3_1_cy_11_rt_90,
      O => clk_gen_CNT0_s_CNT3_1(11)
    );
  clk_gen_CNT0_Madd_s_CNT3_1_cy_12_Q : MUXCY
    port map (
      CI => clk_gen_CNT0_Madd_s_CNT3_1_cy(11),
      DI => avg_module_Maccum_s_data_cy(0),
      S => clk_gen_CNT0_Madd_s_CNT3_1_cy_12_rt_92,
      O => clk_gen_CNT0_Madd_s_CNT3_1_cy(12)
    );
  clk_gen_CNT0_Madd_s_CNT3_1_xor_12_Q : XORCY
    port map (
      CI => clk_gen_CNT0_Madd_s_CNT3_1_cy(11),
      LI => clk_gen_CNT0_Madd_s_CNT3_1_cy_12_rt_92,
      O => clk_gen_CNT0_s_CNT3_1(12)
    );
  clk_gen_CNT0_Madd_s_CNT3_1_cy_13_Q : MUXCY
    port map (
      CI => clk_gen_CNT0_Madd_s_CNT3_1_cy(12),
      DI => avg_module_Maccum_s_data_cy(0),
      S => clk_gen_CNT0_Madd_s_CNT3_1_cy_13_rt_94,
      O => clk_gen_CNT0_Madd_s_CNT3_1_cy(13)
    );
  clk_gen_CNT0_Madd_s_CNT3_1_xor_13_Q : XORCY
    port map (
      CI => clk_gen_CNT0_Madd_s_CNT3_1_cy(12),
      LI => clk_gen_CNT0_Madd_s_CNT3_1_cy_13_rt_94,
      O => clk_gen_CNT0_s_CNT3_1(13)
    );
  clk_gen_CNT0_Madd_s_CNT3_1_cy_14_Q : MUXCY
    port map (
      CI => clk_gen_CNT0_Madd_s_CNT3_1_cy(13),
      DI => avg_module_Maccum_s_data_cy(0),
      S => clk_gen_CNT0_Madd_s_CNT3_1_cy_14_rt_96,
      O => clk_gen_CNT0_Madd_s_CNT3_1_cy(14)
    );
  clk_gen_CNT0_Madd_s_CNT3_1_xor_14_Q : XORCY
    port map (
      CI => clk_gen_CNT0_Madd_s_CNT3_1_cy(13),
      LI => clk_gen_CNT0_Madd_s_CNT3_1_cy_14_rt_96,
      O => clk_gen_CNT0_s_CNT3_1(14)
    );
  clk_gen_CNT0_Madd_s_CNT3_1_xor_15_Q : XORCY
    port map (
      CI => clk_gen_CNT0_Madd_s_CNT3_1_cy(14),
      LI => clk_gen_CNT0_Madd_s_CNT3_1_xor_15_rt_116,
      O => clk_gen_CNT0_s_CNT3_1(15)
    );
  clk_gen_CNT0_Msub_s_CNT3_2_cy_0_Q : MUXCY
    port map (
      CI => avg_module_cns1_Mcompar_s_div_comp_cmp_ge0000_cy(0),
      DI => avg_module_Maccum_s_data_cy(0),
      S => clk_gen_CNT0_Msub_s_CNT3_2_cy_0_rt_165,
      O => clk_gen_CNT0_Msub_s_CNT3_2_cy(0)
    );
  clk_gen_CNT0_Msub_s_CNT3_2_cy_1_Q : MUXCY
    port map (
      CI => clk_gen_CNT0_Msub_s_CNT3_2_cy(0),
      DI => avg_module_cns1_Mcompar_s_div_comp_cmp_ge0000_cy(0),
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
      DI => avg_module_cns1_Mcompar_s_div_comp_cmp_ge0000_cy(0),
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
      DI => avg_module_cns1_Mcompar_s_div_comp_cmp_ge0000_cy(0),
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
      DI => avg_module_cns1_Mcompar_s_div_comp_cmp_ge0000_cy(0),
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
      DI => avg_module_cns1_Mcompar_s_div_comp_cmp_ge0000_cy(0),
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
      DI => avg_module_cns1_Mcompar_s_div_comp_cmp_ge0000_cy(0),
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
      DI => avg_module_cns1_Mcompar_s_div_comp_cmp_ge0000_cy(0),
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
      DI => avg_module_cns1_Mcompar_s_div_comp_cmp_ge0000_cy(0),
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
      DI => avg_module_cns1_Mcompar_s_div_comp_cmp_ge0000_cy(0),
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
      DI => avg_module_cns1_Mcompar_s_div_comp_cmp_ge0000_cy(0),
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
      DI => avg_module_cns1_Mcompar_s_div_comp_cmp_ge0000_cy(0),
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
      DI => avg_module_cns1_Mcompar_s_div_comp_cmp_ge0000_cy(0),
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
      DI => avg_module_cns1_Mcompar_s_div_comp_cmp_ge0000_cy(0),
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
      DI => avg_module_cns1_Mcompar_s_div_comp_cmp_ge0000_cy(0),
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
      CI => avg_module_cns1_Mcompar_s_div_comp_cmp_ge0000_cy(0),
      DI => avg_module_Maccum_s_data_cy(0),
      S => clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_cy_0_rt_196,
      O => clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_cy(0)
    );
  clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_xor_0_Q : XORCY
    port map (
      CI => avg_module_cns1_Mcompar_s_div_comp_cmp_ge0000_cy(0),
      LI => clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_cy_0_rt_196,
      O => clk_gen_CNT0_s_CNT3_D_addsub0000(0)
    );
  clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_cy_1_Q : MUXCY
    port map (
      CI => clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_cy(0),
      DI => avg_module_cns1_Mcompar_s_div_comp_cmp_ge0000_cy(0),
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
      DI => avg_module_cns1_Mcompar_s_div_comp_cmp_ge0000_cy(0),
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
      DI => avg_module_cns1_Mcompar_s_div_comp_cmp_ge0000_cy(0),
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
      DI => avg_module_cns1_Mcompar_s_div_comp_cmp_ge0000_cy(0),
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
      DI => avg_module_cns1_Mcompar_s_div_comp_cmp_ge0000_cy(0),
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
      DI => avg_module_cns1_Mcompar_s_div_comp_cmp_ge0000_cy(0),
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
      DI => avg_module_cns1_Mcompar_s_div_comp_cmp_ge0000_cy(0),
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
      DI => avg_module_cns1_Mcompar_s_div_comp_cmp_ge0000_cy(0),
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
      DI => avg_module_cns1_Mcompar_s_div_comp_cmp_ge0000_cy(0),
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
      DI => avg_module_cns1_Mcompar_s_div_comp_cmp_ge0000_cy(0),
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
      DI => avg_module_cns1_Mcompar_s_div_comp_cmp_ge0000_cy(0),
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
      DI => avg_module_cns1_Mcompar_s_div_comp_cmp_ge0000_cy(0),
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
      DI => avg_module_cns1_Mcompar_s_div_comp_cmp_ge0000_cy(0),
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
      CI => avg_module_cns1_Mcompar_s_div_comp_cmp_ge0000_cy(0),
      DI => avg_module_Maccum_s_data_cy(0),
      S => clk_gen_CNT0_Mcount_s_CNT2_cy_0_rt_118,
      O => clk_gen_CNT0_Mcount_s_CNT2_cy(0)
    );
  clk_gen_CNT0_Mcount_s_CNT2_xor_0_Q : XORCY
    port map (
      CI => avg_module_cns1_Mcompar_s_div_comp_cmp_ge0000_cy(0),
      LI => clk_gen_CNT0_Mcount_s_CNT2_cy_0_rt_118,
      O => clk_gen_CNT0_Result(0)
    );
  clk_gen_CNT0_Mcount_s_CNT2_cy_1_Q : MUXCY
    port map (
      CI => clk_gen_CNT0_Mcount_s_CNT2_cy(0),
      DI => avg_module_cns1_Mcompar_s_div_comp_cmp_ge0000_cy(0),
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
      DI => avg_module_cns1_Mcompar_s_div_comp_cmp_ge0000_cy(0),
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
      DI => avg_module_cns1_Mcompar_s_div_comp_cmp_ge0000_cy(0),
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
      DI => avg_module_cns1_Mcompar_s_div_comp_cmp_ge0000_cy(0),
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
      DI => avg_module_cns1_Mcompar_s_div_comp_cmp_ge0000_cy(0),
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
      DI => avg_module_cns1_Mcompar_s_div_comp_cmp_ge0000_cy(0),
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
      DI => avg_module_cns1_Mcompar_s_div_comp_cmp_ge0000_cy(0),
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
      DI => avg_module_cns1_Mcompar_s_div_comp_cmp_ge0000_cy(0),
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
      DI => avg_module_cns1_Mcompar_s_div_comp_cmp_ge0000_cy(0),
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
      DI => avg_module_cns1_Mcompar_s_div_comp_cmp_ge0000_cy(0),
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
      DI => avg_module_cns1_Mcompar_s_div_comp_cmp_ge0000_cy(0),
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
      DI => avg_module_cns1_Mcompar_s_div_comp_cmp_ge0000_cy(0),
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
      DI => avg_module_cns1_Mcompar_s_div_comp_cmp_ge0000_cy(0),
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
      DI => avg_module_cns1_Mcompar_s_div_comp_cmp_ge0000_cy(0),
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
      C => m_TP_0_OBUF_563,
      D => clk_gen_state_FSM_FFd4_527,
      R => clk_gen_not0000,
      Q => clk_gen_state_FSM_FFd3_526
    );
  clk_gen_state_FSM_FFd4 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_0_OBUF_563,
      D => clk_gen_state_FSM_FFd5_528,
      R => clk_gen_not0000,
      Q => clk_gen_state_FSM_FFd4_527
    );
  clk_gen_state_FSM_FFd5 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_0_OBUF_563,
      D => clk_gen_s_addr_not0001,
      R => clk_gen_not0000,
      Q => clk_gen_state_FSM_FFd5_528
    );
  clk_gen_state_FSM_FFd6 : FDS
    generic map(
      INIT => '1'
    )
    port map (
      C => m_TP_0_OBUF_563,
      D => clk_gen_state_FSM_FFd6_In,
      S => clk_gen_not0000,
      Q => clk_gen_state_FSM_FFd6_529
    );
  clk_gen_state_FSM_FFd1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_0_OBUF_563,
      D => clk_gen_state_FSM_FFd1_In,
      R => clk_gen_not0000,
      Q => clk_gen_state_FSM_FFd1_522
    );
  clk_gen_s_data_7 : FDRE
    port map (
      C => m_TP_0_OBUF_563,
      CE => clk_gen_state_FSM_FFd5_528,
      D => N27,
      R => clk_gen_not0000,
      Q => clk_gen_s_data(7)
    );
  clk_gen_s_data_6 : FDRE
    port map (
      C => m_TP_0_OBUF_563,
      CE => clk_gen_state_FSM_FFd5_528,
      D => N28,
      R => clk_gen_not0000,
      Q => clk_gen_s_data(6)
    );
  clk_gen_s_data_5 : FDRE
    port map (
      C => m_TP_0_OBUF_563,
      CE => clk_gen_state_FSM_FFd5_528,
      D => N29,
      R => clk_gen_not0000,
      Q => clk_gen_s_data(5)
    );
  clk_gen_s_data_4 : FDRE
    port map (
      C => m_TP_0_OBUF_563,
      CE => clk_gen_state_FSM_FFd5_528,
      D => N30,
      R => clk_gen_not0000,
      Q => clk_gen_s_data(4)
    );
  clk_gen_s_data_3 : FDRE
    port map (
      C => m_TP_0_OBUF_563,
      CE => clk_gen_state_FSM_FFd5_528,
      D => N31,
      R => clk_gen_not0000,
      Q => clk_gen_s_data(3)
    );
  clk_gen_s_data_2 : FDRE
    port map (
      C => m_TP_0_OBUF_563,
      CE => clk_gen_state_FSM_FFd5_528,
      D => N32,
      R => clk_gen_not0000,
      Q => clk_gen_s_data(2)
    );
  clk_gen_s_data_1 : FDRE
    port map (
      C => m_TP_0_OBUF_563,
      CE => clk_gen_state_FSM_FFd5_528,
      D => N33,
      R => clk_gen_not0000,
      Q => clk_gen_s_data(1)
    );
  clk_gen_s_data_0 : FDRE
    port map (
      C => m_TP_0_OBUF_563,
      CE => clk_gen_state_FSM_FFd5_528,
      D => N34,
      R => clk_gen_not0000,
      Q => clk_gen_s_data(0)
    );
  clk_gen_s_wr_b : FDS
    port map (
      C => m_TP_0_OBUF_563,
      D => clk_gen_s_wr_b_mux0000,
      S => clk_gen_not0000,
      Q => clk_gen_s_wr_b_518
    );
  clk_gen_s_addr_1 : FDSE
    port map (
      C => m_TP_0_OBUF_563,
      CE => clk_gen_s_addr_not0001,
      D => m_address_1_IBUF_577,
      S => clk_gen_not0000,
      Q => clk_gen_s_addr(1)
    );
  clk_gen_s_addr_0 : FDRE
    port map (
      C => m_TP_0_OBUF_563,
      CE => clk_gen_s_addr_not0001,
      D => m_address_0_IBUF_576,
      R => clk_gen_not0000,
      Q => clk_gen_s_addr(0)
    );
  sig_controller_dac_ctr_s_cnt_0 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_1_OBUF_565,
      D => sig_controller_dac_ctr_Result(0),
      R => avg_module_cns1_Mcompar_s_div_comp_cmp_ge0000_cy(0),
      Q => sig_controller_dac_ctr_s_cnt(0)
    );
  sig_controller_dac_ctr_s_cnt_1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_1_OBUF_565,
      D => sig_controller_dac_ctr_Result(1),
      R => avg_module_cns1_Mcompar_s_div_comp_cmp_ge0000_cy(0),
      Q => sig_controller_dac_ctr_s_cnt(1)
    );
  sig_controller_dac_ctr_s_cnt_2 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_1_OBUF_565,
      D => sig_controller_dac_ctr_Result(2),
      R => avg_module_cns1_Mcompar_s_div_comp_cmp_ge0000_cy(0),
      Q => sig_controller_dac_ctr_s_cnt(2)
    );
  sig_controller_dac_ctr_s_cnt_3 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_1_OBUF_565,
      D => sig_controller_dac_ctr_Result(3),
      R => avg_module_cns1_Mcompar_s_div_comp_cmp_ge0000_cy(0),
      Q => sig_controller_dac_ctr_s_cnt(3)
    );
  sig_controller_dac_ctr_s_cnt_4 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_1_OBUF_565,
      D => sig_controller_dac_ctr_Result(4),
      R => avg_module_cns1_Mcompar_s_div_comp_cmp_ge0000_cy(0),
      Q => sig_controller_dac_ctr_s_cnt(4)
    );
  sig_controller_dac_ctr_s_cnt_5 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_1_OBUF_565,
      D => sig_controller_dac_ctr_Result(5),
      R => avg_module_cns1_Mcompar_s_div_comp_cmp_ge0000_cy(0),
      Q => sig_controller_dac_ctr_s_cnt(5)
    );
  sig_controller_dac_ctr_s_cnt_6 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_1_OBUF_565,
      D => sig_controller_dac_ctr_Result(6),
      R => avg_module_cns1_Mcompar_s_div_comp_cmp_ge0000_cy(0),
      Q => sig_controller_dac_ctr_s_cnt(6)
    );
  sig_controller_dac_ctr_s_cnt_7 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_1_OBUF_565,
      D => sig_controller_dac_ctr_Result(7),
      R => avg_module_cns1_Mcompar_s_div_comp_cmp_ge0000_cy(0),
      Q => sig_controller_dac_ctr_s_cnt(7)
    );
  sig_controller_dac_ctr_s_cnt_8 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_1_OBUF_565,
      D => sig_controller_dac_ctr_Result(8),
      R => avg_module_cns1_Mcompar_s_div_comp_cmp_ge0000_cy(0),
      Q => sig_controller_dac_ctr_s_cnt(8)
    );
  sig_controller_dac_ctr_s_cnt_9 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_1_OBUF_565,
      D => sig_controller_dac_ctr_Result(9),
      R => avg_module_cns1_Mcompar_s_div_comp_cmp_ge0000_cy(0),
      Q => sig_controller_dac_ctr_s_cnt(9)
    );
  sig_controller_dac_ctr_s_cnt_10 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_1_OBUF_565,
      D => sig_controller_dac_ctr_Result(10),
      R => avg_module_cns1_Mcompar_s_div_comp_cmp_ge0000_cy(0),
      Q => sig_controller_dac_ctr_s_cnt(10)
    );
  sig_controller_dac_ctr_Mcount_s_cnt_cy_0_Q : MUXCY
    port map (
      CI => avg_module_Maccum_s_data_cy(0),
      DI => avg_module_cns1_Mcompar_s_div_comp_cmp_ge0000_cy(0),
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
      S => sig_controller_dac_ctr_Mcount_s_cnt_cy_1_rt_732,
      O => sig_controller_dac_ctr_Mcount_s_cnt_cy(1)
    );
  sig_controller_dac_ctr_Mcount_s_cnt_xor_1_Q : XORCY
    port map (
      CI => sig_controller_dac_ctr_Mcount_s_cnt_cy(0),
      LI => sig_controller_dac_ctr_Mcount_s_cnt_cy_1_rt_732,
      O => sig_controller_dac_ctr_Result(1)
    );
  sig_controller_dac_ctr_Mcount_s_cnt_cy_2_Q : MUXCY
    port map (
      CI => sig_controller_dac_ctr_Mcount_s_cnt_cy(1),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_dac_ctr_Mcount_s_cnt_cy_2_rt_734,
      O => sig_controller_dac_ctr_Mcount_s_cnt_cy(2)
    );
  sig_controller_dac_ctr_Mcount_s_cnt_xor_2_Q : XORCY
    port map (
      CI => sig_controller_dac_ctr_Mcount_s_cnt_cy(1),
      LI => sig_controller_dac_ctr_Mcount_s_cnt_cy_2_rt_734,
      O => sig_controller_dac_ctr_Result(2)
    );
  sig_controller_dac_ctr_Mcount_s_cnt_cy_3_Q : MUXCY
    port map (
      CI => sig_controller_dac_ctr_Mcount_s_cnt_cy(2),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_dac_ctr_Mcount_s_cnt_cy_3_rt_736,
      O => sig_controller_dac_ctr_Mcount_s_cnt_cy(3)
    );
  sig_controller_dac_ctr_Mcount_s_cnt_xor_3_Q : XORCY
    port map (
      CI => sig_controller_dac_ctr_Mcount_s_cnt_cy(2),
      LI => sig_controller_dac_ctr_Mcount_s_cnt_cy_3_rt_736,
      O => sig_controller_dac_ctr_Result(3)
    );
  sig_controller_dac_ctr_Mcount_s_cnt_cy_4_Q : MUXCY
    port map (
      CI => sig_controller_dac_ctr_Mcount_s_cnt_cy(3),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_dac_ctr_Mcount_s_cnt_cy_4_rt_738,
      O => sig_controller_dac_ctr_Mcount_s_cnt_cy(4)
    );
  sig_controller_dac_ctr_Mcount_s_cnt_xor_4_Q : XORCY
    port map (
      CI => sig_controller_dac_ctr_Mcount_s_cnt_cy(3),
      LI => sig_controller_dac_ctr_Mcount_s_cnt_cy_4_rt_738,
      O => sig_controller_dac_ctr_Result(4)
    );
  sig_controller_dac_ctr_Mcount_s_cnt_cy_5_Q : MUXCY
    port map (
      CI => sig_controller_dac_ctr_Mcount_s_cnt_cy(4),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_dac_ctr_Mcount_s_cnt_cy_5_rt_740,
      O => sig_controller_dac_ctr_Mcount_s_cnt_cy(5)
    );
  sig_controller_dac_ctr_Mcount_s_cnt_xor_5_Q : XORCY
    port map (
      CI => sig_controller_dac_ctr_Mcount_s_cnt_cy(4),
      LI => sig_controller_dac_ctr_Mcount_s_cnt_cy_5_rt_740,
      O => sig_controller_dac_ctr_Result(5)
    );
  sig_controller_dac_ctr_Mcount_s_cnt_cy_6_Q : MUXCY
    port map (
      CI => sig_controller_dac_ctr_Mcount_s_cnt_cy(5),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_dac_ctr_Mcount_s_cnt_cy_6_rt_742,
      O => sig_controller_dac_ctr_Mcount_s_cnt_cy(6)
    );
  sig_controller_dac_ctr_Mcount_s_cnt_xor_6_Q : XORCY
    port map (
      CI => sig_controller_dac_ctr_Mcount_s_cnt_cy(5),
      LI => sig_controller_dac_ctr_Mcount_s_cnt_cy_6_rt_742,
      O => sig_controller_dac_ctr_Result(6)
    );
  sig_controller_dac_ctr_Mcount_s_cnt_cy_7_Q : MUXCY
    port map (
      CI => sig_controller_dac_ctr_Mcount_s_cnt_cy(6),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_dac_ctr_Mcount_s_cnt_cy_7_rt_744,
      O => sig_controller_dac_ctr_Mcount_s_cnt_cy(7)
    );
  sig_controller_dac_ctr_Mcount_s_cnt_xor_7_Q : XORCY
    port map (
      CI => sig_controller_dac_ctr_Mcount_s_cnt_cy(6),
      LI => sig_controller_dac_ctr_Mcount_s_cnt_cy_7_rt_744,
      O => sig_controller_dac_ctr_Result(7)
    );
  sig_controller_dac_ctr_Mcount_s_cnt_cy_8_Q : MUXCY
    port map (
      CI => sig_controller_dac_ctr_Mcount_s_cnt_cy(7),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_dac_ctr_Mcount_s_cnt_cy_8_rt_746,
      O => sig_controller_dac_ctr_Mcount_s_cnt_cy(8)
    );
  sig_controller_dac_ctr_Mcount_s_cnt_xor_8_Q : XORCY
    port map (
      CI => sig_controller_dac_ctr_Mcount_s_cnt_cy(7),
      LI => sig_controller_dac_ctr_Mcount_s_cnt_cy_8_rt_746,
      O => sig_controller_dac_ctr_Result(8)
    );
  sig_controller_dac_ctr_Mcount_s_cnt_cy_9_Q : MUXCY
    port map (
      CI => sig_controller_dac_ctr_Mcount_s_cnt_cy(8),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_dac_ctr_Mcount_s_cnt_cy_9_rt_748,
      O => sig_controller_dac_ctr_Mcount_s_cnt_cy(9)
    );
  sig_controller_dac_ctr_Mcount_s_cnt_xor_9_Q : XORCY
    port map (
      CI => sig_controller_dac_ctr_Mcount_s_cnt_cy(8),
      LI => sig_controller_dac_ctr_Mcount_s_cnt_cy_9_rt_748,
      O => sig_controller_dac_ctr_Result(9)
    );
  sig_controller_dac_ctr_Mcount_s_cnt_xor_10_Q : XORCY
    port map (
      CI => sig_controller_dac_ctr_Mcount_s_cnt_cy(9),
      LI => sig_controller_dac_ctr_s_cnt(10),
      O => sig_controller_dac_ctr_Result(10)
    );
  sig_controller_rem0ctr_s_Cnt_0 : FDRE
    port map (
      C => m_TP_0_OBUF_563,
      CE => sig_controller_s_enp0,
      D => sig_controller_rem0ctr_Result(0),
      R => sig_controller_s_clr0,
      Q => sig_controller_rem0ctr_s_Cnt(0)
    );
  sig_controller_rem0ctr_s_Cnt_1 : FDRE
    port map (
      C => m_TP_0_OBUF_563,
      CE => sig_controller_s_enp0,
      D => sig_controller_rem0ctr_Result(1),
      R => sig_controller_s_clr0,
      Q => sig_controller_rem0ctr_s_Cnt(1)
    );
  sig_controller_rem0ctr_s_Cnt_2 : FDRE
    port map (
      C => m_TP_0_OBUF_563,
      CE => sig_controller_s_enp0,
      D => sig_controller_rem0ctr_Result(2),
      R => sig_controller_s_clr0,
      Q => sig_controller_rem0ctr_s_Cnt(2)
    );
  sig_controller_rem0ctr_s_Cnt_3 : FDRE
    port map (
      C => m_TP_0_OBUF_563,
      CE => sig_controller_s_enp0,
      D => sig_controller_rem0ctr_Result(3),
      R => sig_controller_s_clr0,
      Q => sig_controller_rem0ctr_s_Cnt(3)
    );
  sig_controller_rem0ctr_s_Cnt_4 : FDRE
    port map (
      C => m_TP_0_OBUF_563,
      CE => sig_controller_s_enp0,
      D => sig_controller_rem0ctr_Result(4),
      R => sig_controller_s_clr0,
      Q => sig_controller_rem0ctr_s_Cnt(4)
    );
  sig_controller_rem0ctr_s_Cnt_5 : FDRE
    port map (
      C => m_TP_0_OBUF_563,
      CE => sig_controller_s_enp0,
      D => sig_controller_rem0ctr_Result(5),
      R => sig_controller_s_clr0,
      Q => sig_controller_rem0ctr_s_Cnt(5)
    );
  sig_controller_rem0ctr_s_Cnt_6 : FDRE
    port map (
      C => m_TP_0_OBUF_563,
      CE => sig_controller_s_enp0,
      D => sig_controller_rem0ctr_Result(6),
      R => sig_controller_s_clr0,
      Q => sig_controller_rem0ctr_s_Cnt(6)
    );
  sig_controller_rem0ctr_s_Cnt_7 : FDRE
    port map (
      C => m_TP_0_OBUF_563,
      CE => sig_controller_s_enp0,
      D => sig_controller_rem0ctr_Result(7),
      R => sig_controller_s_clr0,
      Q => sig_controller_rem0ctr_s_Cnt(7)
    );
  sig_controller_rem0ctr_s_Cnt_8 : FDRE
    port map (
      C => m_TP_0_OBUF_563,
      CE => sig_controller_s_enp0,
      D => sig_controller_rem0ctr_Result(8),
      R => sig_controller_s_clr0,
      Q => sig_controller_rem0ctr_s_Cnt(8)
    );
  sig_controller_rem0ctr_s_Cnt_9 : FDRE
    port map (
      C => m_TP_0_OBUF_563,
      CE => sig_controller_s_enp0,
      D => sig_controller_rem0ctr_Result(9),
      R => sig_controller_s_clr0,
      Q => sig_controller_rem0ctr_s_Cnt(9)
    );
  sig_controller_rem0ctr_s_Cnt_10 : FDRE
    port map (
      C => m_TP_0_OBUF_563,
      CE => sig_controller_s_enp0,
      D => sig_controller_rem0ctr_Result(10),
      R => sig_controller_s_clr0,
      Q => sig_controller_rem0ctr_s_Cnt(10)
    );
  sig_controller_rem0ctr_Mcount_s_Cnt_cy_0_Q : MUXCY
    port map (
      CI => avg_module_Maccum_s_data_cy(0),
      DI => avg_module_cns1_Mcompar_s_div_comp_cmp_ge0000_cy(0),
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
      S => sig_controller_rem0ctr_Mcount_s_Cnt_cy_1_rt_774,
      O => sig_controller_rem0ctr_Mcount_s_Cnt_cy(1)
    );
  sig_controller_rem0ctr_Mcount_s_Cnt_xor_1_Q : XORCY
    port map (
      CI => sig_controller_rem0ctr_Mcount_s_Cnt_cy(0),
      LI => sig_controller_rem0ctr_Mcount_s_Cnt_cy_1_rt_774,
      O => sig_controller_rem0ctr_Result(1)
    );
  sig_controller_rem0ctr_Mcount_s_Cnt_cy_2_Q : MUXCY
    port map (
      CI => sig_controller_rem0ctr_Mcount_s_Cnt_cy(1),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_rem0ctr_Mcount_s_Cnt_cy_2_rt_776,
      O => sig_controller_rem0ctr_Mcount_s_Cnt_cy(2)
    );
  sig_controller_rem0ctr_Mcount_s_Cnt_xor_2_Q : XORCY
    port map (
      CI => sig_controller_rem0ctr_Mcount_s_Cnt_cy(1),
      LI => sig_controller_rem0ctr_Mcount_s_Cnt_cy_2_rt_776,
      O => sig_controller_rem0ctr_Result(2)
    );
  sig_controller_rem0ctr_Mcount_s_Cnt_cy_3_Q : MUXCY
    port map (
      CI => sig_controller_rem0ctr_Mcount_s_Cnt_cy(2),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_rem0ctr_Mcount_s_Cnt_cy_3_rt_778,
      O => sig_controller_rem0ctr_Mcount_s_Cnt_cy(3)
    );
  sig_controller_rem0ctr_Mcount_s_Cnt_xor_3_Q : XORCY
    port map (
      CI => sig_controller_rem0ctr_Mcount_s_Cnt_cy(2),
      LI => sig_controller_rem0ctr_Mcount_s_Cnt_cy_3_rt_778,
      O => sig_controller_rem0ctr_Result(3)
    );
  sig_controller_rem0ctr_Mcount_s_Cnt_cy_4_Q : MUXCY
    port map (
      CI => sig_controller_rem0ctr_Mcount_s_Cnt_cy(3),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_rem0ctr_Mcount_s_Cnt_cy_4_rt_780,
      O => sig_controller_rem0ctr_Mcount_s_Cnt_cy(4)
    );
  sig_controller_rem0ctr_Mcount_s_Cnt_xor_4_Q : XORCY
    port map (
      CI => sig_controller_rem0ctr_Mcount_s_Cnt_cy(3),
      LI => sig_controller_rem0ctr_Mcount_s_Cnt_cy_4_rt_780,
      O => sig_controller_rem0ctr_Result(4)
    );
  sig_controller_rem0ctr_Mcount_s_Cnt_cy_5_Q : MUXCY
    port map (
      CI => sig_controller_rem0ctr_Mcount_s_Cnt_cy(4),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_rem0ctr_Mcount_s_Cnt_cy_5_rt_782,
      O => sig_controller_rem0ctr_Mcount_s_Cnt_cy(5)
    );
  sig_controller_rem0ctr_Mcount_s_Cnt_xor_5_Q : XORCY
    port map (
      CI => sig_controller_rem0ctr_Mcount_s_Cnt_cy(4),
      LI => sig_controller_rem0ctr_Mcount_s_Cnt_cy_5_rt_782,
      O => sig_controller_rem0ctr_Result(5)
    );
  sig_controller_rem0ctr_Mcount_s_Cnt_cy_6_Q : MUXCY
    port map (
      CI => sig_controller_rem0ctr_Mcount_s_Cnt_cy(5),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_rem0ctr_Mcount_s_Cnt_cy_6_rt_784,
      O => sig_controller_rem0ctr_Mcount_s_Cnt_cy(6)
    );
  sig_controller_rem0ctr_Mcount_s_Cnt_xor_6_Q : XORCY
    port map (
      CI => sig_controller_rem0ctr_Mcount_s_Cnt_cy(5),
      LI => sig_controller_rem0ctr_Mcount_s_Cnt_cy_6_rt_784,
      O => sig_controller_rem0ctr_Result(6)
    );
  sig_controller_rem0ctr_Mcount_s_Cnt_cy_7_Q : MUXCY
    port map (
      CI => sig_controller_rem0ctr_Mcount_s_Cnt_cy(6),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_rem0ctr_Mcount_s_Cnt_cy_7_rt_786,
      O => sig_controller_rem0ctr_Mcount_s_Cnt_cy(7)
    );
  sig_controller_rem0ctr_Mcount_s_Cnt_xor_7_Q : XORCY
    port map (
      CI => sig_controller_rem0ctr_Mcount_s_Cnt_cy(6),
      LI => sig_controller_rem0ctr_Mcount_s_Cnt_cy_7_rt_786,
      O => sig_controller_rem0ctr_Result(7)
    );
  sig_controller_rem0ctr_Mcount_s_Cnt_cy_8_Q : MUXCY
    port map (
      CI => sig_controller_rem0ctr_Mcount_s_Cnt_cy(7),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_rem0ctr_Mcount_s_Cnt_cy_8_rt_788,
      O => sig_controller_rem0ctr_Mcount_s_Cnt_cy(8)
    );
  sig_controller_rem0ctr_Mcount_s_Cnt_xor_8_Q : XORCY
    port map (
      CI => sig_controller_rem0ctr_Mcount_s_Cnt_cy(7),
      LI => sig_controller_rem0ctr_Mcount_s_Cnt_cy_8_rt_788,
      O => sig_controller_rem0ctr_Result(8)
    );
  sig_controller_rem0ctr_Mcount_s_Cnt_cy_9_Q : MUXCY
    port map (
      CI => sig_controller_rem0ctr_Mcount_s_Cnt_cy(8),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_rem0ctr_Mcount_s_Cnt_cy_9_rt_790,
      O => sig_controller_rem0ctr_Mcount_s_Cnt_cy(9)
    );
  sig_controller_rem0ctr_Mcount_s_Cnt_xor_9_Q : XORCY
    port map (
      CI => sig_controller_rem0ctr_Mcount_s_Cnt_cy(8),
      LI => sig_controller_rem0ctr_Mcount_s_Cnt_cy_9_rt_790,
      O => sig_controller_rem0ctr_Result(9)
    );
  sig_controller_rem0ctr_Mcount_s_Cnt_xor_10_Q : XORCY
    port map (
      CI => sig_controller_rem0ctr_Mcount_s_Cnt_cy(9),
      LI => sig_controller_rem0ctr_s_Cnt(10),
      O => sig_controller_rem0ctr_Result(10)
    );
  sig_controller_t_ps_FSM_FFd13 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_0_OBUF_563,
      D => sig_controller_t_ps_FSM_FFd13_In,
      Q => sig_controller_t_ps_FSM_FFd13_827
    );
  sig_controller_t_ps_FSM_FFd12 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_0_OBUF_563,
      D => sig_controller_t_ps_FSM_FFd12_In,
      Q => sig_controller_t_ps_FSM_FFd12_825
    );
  sig_controller_t_ps_FSM_FFd11 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_0_OBUF_563,
      D => sig_controller_t_ps_FSM_FFd11_In,
      Q => sig_controller_t_ps_FSM_FFd11_823
    );
  sig_controller_t_ps_FSM_FFd9 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_0_OBUF_563,
      D => sig_controller_t_ps_FSM_FFd9_In_847,
      Q => sig_controller_t_ps_FSM_FFd9_846
    );
  sig_controller_t_ps_FSM_FFd8 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_0_OBUF_563,
      D => sig_controller_t_ps_FSM_FFd8_In,
      Q => sig_controller_t_ps_FSM_FFd8_844
    );
  sig_controller_t_ps_FSM_FFd6 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_0_OBUF_563,
      D => sig_controller_t_ps_FSM_FFd6_In,
      Q => sig_controller_t_ps_FSM_FFd6_840
    );
  sig_controller_t_ps_FSM_FFd4 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_0_OBUF_563,
      D => sig_controller_t_ps_FSM_FFd4_In,
      Q => sig_controller_t_ps_FSM_FFd4_836
    );
  sig_controller_t_ps_FSM_FFd2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_0_OBUF_563,
      D => sig_controller_t_ps_FSM_FFd2_In,
      Q => sig_controller_t_ps_FSM_FFd2_833
    );
  sig_controller_adc_ctr_Mcount_s_cnt_xor_10_Q : XORCY
    port map (
      CI => sig_controller_adc_ctr_Mcount_s_cnt_cy(9),
      LI => sig_controller_adc_ctr_s_cnt(10),
      O => sig_controller_Result(10)
    );
  sig_controller_adc_ctr_Mcount_s_cnt_xor_9_Q : XORCY
    port map (
      CI => sig_controller_adc_ctr_Mcount_s_cnt_cy(8),
      LI => sig_controller_adc_ctr_Mcount_s_cnt_cy_9_rt_717,
      O => sig_controller_Result(9)
    );
  sig_controller_adc_ctr_Mcount_s_cnt_cy_9_Q : MUXCY
    port map (
      CI => sig_controller_adc_ctr_Mcount_s_cnt_cy(8),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_adc_ctr_Mcount_s_cnt_cy_9_rt_717,
      O => sig_controller_adc_ctr_Mcount_s_cnt_cy(9)
    );
  sig_controller_adc_ctr_Mcount_s_cnt_xor_8_Q : XORCY
    port map (
      CI => sig_controller_adc_ctr_Mcount_s_cnt_cy(7),
      LI => sig_controller_adc_ctr_Mcount_s_cnt_cy_8_rt_715,
      O => sig_controller_Result(8)
    );
  sig_controller_adc_ctr_Mcount_s_cnt_cy_8_Q : MUXCY
    port map (
      CI => sig_controller_adc_ctr_Mcount_s_cnt_cy(7),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_adc_ctr_Mcount_s_cnt_cy_8_rt_715,
      O => sig_controller_adc_ctr_Mcount_s_cnt_cy(8)
    );
  sig_controller_adc_ctr_Mcount_s_cnt_xor_7_Q : XORCY
    port map (
      CI => sig_controller_adc_ctr_Mcount_s_cnt_cy(6),
      LI => sig_controller_adc_ctr_Mcount_s_cnt_cy_7_rt_713,
      O => sig_controller_Result(7)
    );
  sig_controller_adc_ctr_Mcount_s_cnt_cy_7_Q : MUXCY
    port map (
      CI => sig_controller_adc_ctr_Mcount_s_cnt_cy(6),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_adc_ctr_Mcount_s_cnt_cy_7_rt_713,
      O => sig_controller_adc_ctr_Mcount_s_cnt_cy(7)
    );
  sig_controller_adc_ctr_Mcount_s_cnt_xor_6_Q : XORCY
    port map (
      CI => sig_controller_adc_ctr_Mcount_s_cnt_cy(5),
      LI => sig_controller_adc_ctr_Mcount_s_cnt_cy_6_rt_711,
      O => sig_controller_Result(6)
    );
  sig_controller_adc_ctr_Mcount_s_cnt_cy_6_Q : MUXCY
    port map (
      CI => sig_controller_adc_ctr_Mcount_s_cnt_cy(5),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_adc_ctr_Mcount_s_cnt_cy_6_rt_711,
      O => sig_controller_adc_ctr_Mcount_s_cnt_cy(6)
    );
  sig_controller_adc_ctr_Mcount_s_cnt_xor_5_Q : XORCY
    port map (
      CI => sig_controller_adc_ctr_Mcount_s_cnt_cy(4),
      LI => sig_controller_adc_ctr_Mcount_s_cnt_cy_5_rt_709,
      O => sig_controller_Result(5)
    );
  sig_controller_adc_ctr_Mcount_s_cnt_cy_5_Q : MUXCY
    port map (
      CI => sig_controller_adc_ctr_Mcount_s_cnt_cy(4),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_adc_ctr_Mcount_s_cnt_cy_5_rt_709,
      O => sig_controller_adc_ctr_Mcount_s_cnt_cy(5)
    );
  sig_controller_adc_ctr_Mcount_s_cnt_xor_4_Q : XORCY
    port map (
      CI => sig_controller_adc_ctr_Mcount_s_cnt_cy(3),
      LI => sig_controller_adc_ctr_Mcount_s_cnt_cy_4_rt_707,
      O => sig_controller_Result(4)
    );
  sig_controller_adc_ctr_Mcount_s_cnt_cy_4_Q : MUXCY
    port map (
      CI => sig_controller_adc_ctr_Mcount_s_cnt_cy(3),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_adc_ctr_Mcount_s_cnt_cy_4_rt_707,
      O => sig_controller_adc_ctr_Mcount_s_cnt_cy(4)
    );
  sig_controller_adc_ctr_Mcount_s_cnt_xor_3_Q : XORCY
    port map (
      CI => sig_controller_adc_ctr_Mcount_s_cnt_cy(2),
      LI => sig_controller_adc_ctr_Mcount_s_cnt_cy_3_rt_705,
      O => sig_controller_Result(3)
    );
  sig_controller_adc_ctr_Mcount_s_cnt_cy_3_Q : MUXCY
    port map (
      CI => sig_controller_adc_ctr_Mcount_s_cnt_cy(2),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_adc_ctr_Mcount_s_cnt_cy_3_rt_705,
      O => sig_controller_adc_ctr_Mcount_s_cnt_cy(3)
    );
  sig_controller_adc_ctr_Mcount_s_cnt_xor_2_Q : XORCY
    port map (
      CI => sig_controller_adc_ctr_Mcount_s_cnt_cy(1),
      LI => sig_controller_adc_ctr_Mcount_s_cnt_cy_2_rt_703,
      O => sig_controller_Result(2)
    );
  sig_controller_adc_ctr_Mcount_s_cnt_cy_2_Q : MUXCY
    port map (
      CI => sig_controller_adc_ctr_Mcount_s_cnt_cy(1),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_adc_ctr_Mcount_s_cnt_cy_2_rt_703,
      O => sig_controller_adc_ctr_Mcount_s_cnt_cy(2)
    );
  sig_controller_adc_ctr_Mcount_s_cnt_xor_1_Q : XORCY
    port map (
      CI => sig_controller_adc_ctr_Mcount_s_cnt_cy(0),
      LI => sig_controller_adc_ctr_Mcount_s_cnt_cy_1_rt_701,
      O => sig_controller_Result(1)
    );
  sig_controller_adc_ctr_Mcount_s_cnt_cy_1_Q : MUXCY
    port map (
      CI => sig_controller_adc_ctr_Mcount_s_cnt_cy(0),
      DI => avg_module_Maccum_s_data_cy(0),
      S => sig_controller_adc_ctr_Mcount_s_cnt_cy_1_rt_701,
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
      DI => avg_module_cns1_Mcompar_s_div_comp_cmp_ge0000_cy(0),
      S => sig_controller_adc_ctr_Mcount_s_cnt_lut(0),
      O => sig_controller_adc_ctr_Mcount_s_cnt_cy(0)
    );
  sig_controller_adc_ctr_s_cnt_10 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_1_OBUF_565,
      D => sig_controller_Result(10),
      R => avg_module_cns1_Mcompar_s_div_comp_cmp_ge0000_cy(0),
      Q => sig_controller_adc_ctr_s_cnt(10)
    );
  sig_controller_adc_ctr_s_cnt_9 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_1_OBUF_565,
      D => sig_controller_Result(9),
      R => avg_module_cns1_Mcompar_s_div_comp_cmp_ge0000_cy(0),
      Q => sig_controller_adc_ctr_s_cnt(9)
    );
  sig_controller_adc_ctr_s_cnt_8 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_1_OBUF_565,
      D => sig_controller_Result(8),
      R => avg_module_cns1_Mcompar_s_div_comp_cmp_ge0000_cy(0),
      Q => sig_controller_adc_ctr_s_cnt(8)
    );
  sig_controller_adc_ctr_s_cnt_7 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_1_OBUF_565,
      D => sig_controller_Result(7),
      R => avg_module_cns1_Mcompar_s_div_comp_cmp_ge0000_cy(0),
      Q => sig_controller_adc_ctr_s_cnt(7)
    );
  sig_controller_adc_ctr_s_cnt_6 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_1_OBUF_565,
      D => sig_controller_Result(6),
      R => avg_module_cns1_Mcompar_s_div_comp_cmp_ge0000_cy(0),
      Q => sig_controller_adc_ctr_s_cnt(6)
    );
  sig_controller_adc_ctr_s_cnt_5 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_1_OBUF_565,
      D => sig_controller_Result(5),
      R => avg_module_cns1_Mcompar_s_div_comp_cmp_ge0000_cy(0),
      Q => sig_controller_adc_ctr_s_cnt(5)
    );
  sig_controller_adc_ctr_s_cnt_4 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_1_OBUF_565,
      D => sig_controller_Result(4),
      R => avg_module_cns1_Mcompar_s_div_comp_cmp_ge0000_cy(0),
      Q => sig_controller_adc_ctr_s_cnt(4)
    );
  sig_controller_adc_ctr_s_cnt_3 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_1_OBUF_565,
      D => sig_controller_Result(3),
      R => avg_module_cns1_Mcompar_s_div_comp_cmp_ge0000_cy(0),
      Q => sig_controller_adc_ctr_s_cnt(3)
    );
  sig_controller_adc_ctr_s_cnt_2 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_1_OBUF_565,
      D => sig_controller_Result(2),
      R => avg_module_cns1_Mcompar_s_div_comp_cmp_ge0000_cy(0),
      Q => sig_controller_adc_ctr_s_cnt(2)
    );
  sig_controller_adc_ctr_s_cnt_1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_1_OBUF_565,
      D => sig_controller_Result(1),
      R => avg_module_cns1_Mcompar_s_div_comp_cmp_ge0000_cy(0),
      Q => sig_controller_adc_ctr_s_cnt(1)
    );
  sig_controller_adc_ctr_s_cnt_0 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_1_OBUF_565,
      D => sig_controller_Result(0),
      R => avg_module_cns1_Mcompar_s_div_comp_cmp_ge0000_cy(0),
      Q => sig_controller_adc_ctr_s_cnt(0)
    );
  clk_gen_s_cw0_and00009 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => clk_gen_state_FSM_FFd3_526,
      I1 => clk_gen_state_FSM_FFd4_527,
      I2 => clk_gen_state_FSM_FFd1_522,
      I3 => clk_gen_state_FSM_FFd2_524,
      O => clk_gen_s_cw0_and00009_509
    );
  clk_gen_s_cw0_and000012 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => clk_gen_s_cw0_and00009_509,
      I1 => clk_gen_s_data(7),
      I2 => clk_gen_s_data(6),
      O => clk_gen_s_cw0_and000012_508
    );
  clk_gen_s_cw0_and000017 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => clk_gen_s_addr(0),
      I1 => clk_gen_s_addr(1),
      I2 => clk_gen_s_cw0_and000012_508,
      O => clk_gen_s_cw0
    );
  sig_controller_t_ps_FSM_FFd8_In1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => s_wen_685,
      I1 => sig_controller_t_ps_FSM_FFd12_825,
      O => sig_controller_t_ps_FSM_FFd8_In
    );
  sig_controller_t_ps_FSM_FFd6_In1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => s_wen_685,
      I1 => sig_controller_t_ps_FSM_FFd10_821,
      O => sig_controller_t_ps_FSM_FFd6_In
    );
  sig_controller_t_ps_FSM_FFd13_In1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => s_cmd_data_652,
      I1 => sig_controller_t_ps_FSM_FFd14_829,
      O => sig_controller_t_ps_FSM_FFd13_In
    );
  outlatch_dout_7_LogicTrst1 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => Mtridata_outlatch_dout(7),
      I1 => Mtrien_outlatch_dout_18,
      O => outlatch_dout(7)
    );
  outlatch_dout_6_LogicTrst1 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => Mtridata_outlatch_dout(6),
      I1 => Mtrien_outlatch_dout_18,
      O => outlatch_dout(6)
    );
  outlatch_dout_5_LogicTrst1 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => Mtridata_outlatch_dout(5),
      I1 => Mtrien_outlatch_dout_18,
      O => outlatch_dout(5)
    );
  outlatch_dout_4_LogicTrst1 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => Mtridata_outlatch_dout(4),
      I1 => Mtrien_outlatch_dout_18,
      O => outlatch_dout(4)
    );
  outlatch_dout_3_LogicTrst1 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => Mtridata_outlatch_dout(3),
      I1 => Mtrien_outlatch_dout_18,
      O => outlatch_dout(3)
    );
  outlatch_dout_2_LogicTrst1 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => Mtridata_outlatch_dout(2),
      I1 => Mtrien_outlatch_dout_18,
      O => outlatch_dout(2)
    );
  outlatch_dout_1_LogicTrst1 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => Mtridata_outlatch_dout(1),
      I1 => Mtrien_outlatch_dout_18,
      O => outlatch_dout(1)
    );
  outlatch_dout_0_LogicTrst1 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => Mtridata_outlatch_dout(0),
      I1 => Mtrien_outlatch_dout_18,
      O => outlatch_dout(0)
    );
  clk_gen_CNT0_s_wr_wait_mux00031 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => clk_gen_CNT0_s_wr_L_500,
      I1 => clk_gen_CNT0_s_wr_M_501,
      I2 => clk_gen_CNT0_s_wr_wait_502,
      O => clk_gen_CNT0_s_wr_wait_mux0003
    );
  sig_controller_t_ps_FSM_FFd4_In1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => s_cmd_data_652,
      I1 => sig_controller_t_ps_FSM_FFd4_836,
      I2 => s_ren_684,
      I3 => sig_controller_t_ps_FSM_FFd11_823,
      O => sig_controller_t_ps_FSM_FFd4_In
    );
  sig_controller_t_ps_FSM_FFd2_In1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => s_cmd_data_652,
      I1 => sig_controller_t_ps_FSM_FFd2_833,
      I2 => s_ren_684,
      I3 => sig_controller_t_ps_FSM_FFd9_846,
      O => sig_controller_t_ps_FSM_FFd2_In
    );
  sig_controller_t_ps_FSM_Out91 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd11_823,
      I1 => sig_controller_t_ps_FSM_FFd3_835,
      I2 => sig_controller_t_ps_FSM_FFd4_836,
      O => s_enb0
    );
  sig_controller_t_ps_FSM_Out81 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd9_846,
      I1 => sig_controller_t_ps_FSM_FFd1_820,
      I2 => sig_controller_t_ps_FSM_FFd2_833,
      O => s_enb1
    );
  clk_gen_CNT0_s_REG_10_not00011 : LUT4
    generic map(
      INIT => X"0C04"
    )
    port map (
      I0 => clk_gen_CNT0_s_wr_L_500,
      I1 => clk_gen_CNT0_s_wr_M_501,
      I2 => clk_gen_s_cw0,
      I3 => clk_gen_CNT0_s_wr_wait_502,
      O => clk_gen_CNT0_s_REG_10_not0001
    );
  clk_gen_CNT0_s_REG_0_not00011 : LUT4
    generic map(
      INIT => X"040C"
    )
    port map (
      I0 => clk_gen_CNT0_s_wr_wait_502,
      I1 => clk_gen_CNT0_s_wr_L_500,
      I2 => clk_gen_s_cw0,
      I3 => clk_gen_CNT0_s_wr_M_501,
      O => clk_gen_CNT0_s_REG_0_not0001
    );
  clk_gen_CNT0_s_CNT3_D_mux0004_14_21 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => m_reset_b_IBUF_607,
      I1 => clk_gen_CNT0_s_mode_491,
      O => clk_gen_CNT0_N8
    );
  sig_controller_t_ps_FSM_Out111 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd12_825,
      I1 => sig_controller_t_ps_FSM_FFd7_842,
      I2 => sig_controller_t_ps_FSM_FFd8_844,
      O => s_ena0
    );
  sig_controller_t_ps_FSM_Out101 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd10_821,
      I1 => sig_controller_t_ps_FSM_FFd5_838,
      I2 => sig_controller_t_ps_FSM_FFd6_840,
      O => s_ena1
    );
  ram1_mux_dout_7_LogicTrst1 : LUT3
    generic map(
      INIT => X"FD"
    )
    port map (
      I0 => s_ena1,
      I1 => Mtridata_inlatch_dout(7),
      I2 => Mtrien_inlatch_dout_16,
      O => ram1_mux_dout(7)
    );
  ram1_mux_dout_6_LogicTrst1 : LUT3
    generic map(
      INIT => X"FD"
    )
    port map (
      I0 => s_ena1,
      I1 => Mtridata_inlatch_dout(6),
      I2 => Mtrien_inlatch_dout_16,
      O => ram1_mux_dout(6)
    );
  ram1_mux_dout_5_LogicTrst1 : LUT3
    generic map(
      INIT => X"FD"
    )
    port map (
      I0 => s_ena1,
      I1 => Mtridata_inlatch_dout(5),
      I2 => Mtrien_inlatch_dout_16,
      O => ram1_mux_dout(5)
    );
  ram1_mux_dout_4_LogicTrst1 : LUT3
    generic map(
      INIT => X"FD"
    )
    port map (
      I0 => s_ena1,
      I1 => Mtridata_inlatch_dout(4),
      I2 => Mtrien_inlatch_dout_16,
      O => ram1_mux_dout(4)
    );
  ram1_mux_dout_3_LogicTrst1 : LUT3
    generic map(
      INIT => X"FD"
    )
    port map (
      I0 => s_ena1,
      I1 => Mtridata_inlatch_dout(3),
      I2 => Mtrien_inlatch_dout_16,
      O => ram1_mux_dout(3)
    );
  ram1_mux_dout_2_LogicTrst1 : LUT3
    generic map(
      INIT => X"FD"
    )
    port map (
      I0 => s_ena1,
      I1 => Mtridata_inlatch_dout(2),
      I2 => Mtrien_inlatch_dout_16,
      O => ram1_mux_dout(2)
    );
  ram1_mux_dout_1_LogicTrst1 : LUT3
    generic map(
      INIT => X"FD"
    )
    port map (
      I0 => s_ena1,
      I1 => Mtridata_inlatch_dout(1),
      I2 => Mtrien_inlatch_dout_16,
      O => ram1_mux_dout(1)
    );
  ram1_mux_dout_0_LogicTrst1 : LUT3
    generic map(
      INIT => X"FD"
    )
    port map (
      I0 => s_ena1,
      I1 => Mtridata_inlatch_dout(0),
      I2 => Mtrien_inlatch_dout_16,
      O => ram1_mux_dout(0)
    );
  ram0_mux_dout_7_1 : LUT4
    generic map(
      INIT => X"FAD8"
    )
    port map (
      I0 => s_ena0,
      I1 => Mtridata_inlatch_dout(7),
      I2 => s_doutb3(7),
      I3 => Mtrien_inlatch_dout_16,
      O => ram0_mux_dout(7)
    );
  ram0_mux_dout_6_1 : LUT4
    generic map(
      INIT => X"FAD8"
    )
    port map (
      I0 => s_ena0,
      I1 => Mtridata_inlatch_dout(6),
      I2 => s_doutb3(6),
      I3 => Mtrien_inlatch_dout_16,
      O => ram0_mux_dout(6)
    );
  ram0_mux_dout_5_1 : LUT4
    generic map(
      INIT => X"FAD8"
    )
    port map (
      I0 => s_ena0,
      I1 => Mtridata_inlatch_dout(5),
      I2 => s_doutb3(5),
      I3 => Mtrien_inlatch_dout_16,
      O => ram0_mux_dout(5)
    );
  ram0_mux_dout_4_1 : LUT4
    generic map(
      INIT => X"FAD8"
    )
    port map (
      I0 => s_ena0,
      I1 => Mtridata_inlatch_dout(4),
      I2 => s_doutb3(4),
      I3 => Mtrien_inlatch_dout_16,
      O => ram0_mux_dout(4)
    );
  ram0_mux_dout_3_1 : LUT4
    generic map(
      INIT => X"FAD8"
    )
    port map (
      I0 => s_ena0,
      I1 => Mtridata_inlatch_dout(3),
      I2 => s_doutb3(3),
      I3 => Mtrien_inlatch_dout_16,
      O => ram0_mux_dout(3)
    );
  ram0_mux_dout_2_1 : LUT4
    generic map(
      INIT => X"FAD8"
    )
    port map (
      I0 => s_ena0,
      I1 => Mtridata_inlatch_dout(2),
      I2 => s_doutb3(2),
      I3 => Mtrien_inlatch_dout_16,
      O => ram0_mux_dout(2)
    );
  ram0_mux_dout_1_1 : LUT4
    generic map(
      INIT => X"FAD8"
    )
    port map (
      I0 => s_ena0,
      I1 => Mtridata_inlatch_dout(1),
      I2 => s_doutb3(1),
      I3 => Mtrien_inlatch_dout_16,
      O => ram0_mux_dout(1)
    );
  ram0_mux_dout_0_1 : LUT4
    generic map(
      INIT => X"FAD8"
    )
    port map (
      I0 => s_ena0,
      I1 => Mtridata_inlatch_dout(0),
      I2 => s_doutb3(0),
      I3 => Mtrien_inlatch_dout_16,
      O => ram0_mux_dout(0)
    );
  clk_gen_state_FSM_FFd1_In1 : LUT3
    generic map(
      INIT => X"C4"
    )
    port map (
      I0 => m_wen_IBUF_609,
      I1 => clk_gen_state_FSM_FFd2_524,
      I2 => clk_gen_not0001_532,
      O => clk_gen_state_FSM_FFd1_In
    );
  clk_gen_state_FSM_FFd6_In1 : LUT4
    generic map(
      INIT => X"FF8C"
    )
    port map (
      I0 => clk_gen_not0001_532,
      I1 => clk_gen_state_FSM_FFd6_529,
      I2 => m_wen_IBUF_609,
      I3 => clk_gen_state_FSM_FFd1_522,
      O => clk_gen_state_FSM_FFd6_In
    );
  clk_gen_s_addr_not00011 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => clk_gen_state_FSM_FFd6_529,
      I1 => m_wen_IBUF_609,
      I2 => N69,
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
      I0 => N70,
      I1 => clk_gen_CNT0_s_REG(0),
      I2 => clk_gen_CNT0_Result(0),
      O => clk_gen_CNT0_Mcount_s_CNT2_eqn_0
    );
  clk_gen_not0001_SW0 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => s_address(6),
      I1 => s_address(8),
      O => N13
    );
  clk_gen_s_wr_b_mux00001 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => clk_gen_s_wr_b_518,
      I1 => clk_gen_state_FSM_FFd4_527,
      O => clk_gen_s_wr_b_mux00001_520
    );
  clk_gen_s_wr_b_mux00006 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => clk_gen_state_FSM_FFd5_528,
      I1 => clk_gen_state_FSM_FFd6_529,
      I2 => clk_gen_state_FSM_FFd1_522,
      I3 => clk_gen_s_wr_b_mux00001_520,
      O => clk_gen_s_wr_b_mux00006_521
    );
  clk_gen_s_wr_b_mux000017 : LUT4
    generic map(
      INIT => X"FF8C"
    )
    port map (
      I0 => clk_gen_not0001_532,
      I1 => clk_gen_state_FSM_FFd2_524,
      I2 => m_wen_IBUF_609,
      I3 => clk_gen_s_wr_b_mux00006_521,
      O => clk_gen_s_wr_b_mux0000
    );
  clk_gen_CNT0_s_CNT2_cmp_eq000011 : LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => clk_gen_CNT0_s_CNT2(1),
      I1 => clk_gen_CNT0_s_CNT2(3),
      I2 => clk_gen_CNT0_s_CNT2(0),
      I3 => clk_gen_CNT0_s_CNT2(2),
      O => clk_gen_CNT0_s_CNT2_cmp_eq000011_301
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
      O => clk_gen_CNT0_s_CNT2_cmp_eq000024_302
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
      O => clk_gen_CNT0_s_CNT2_cmp_eq000048_303
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
      O => clk_gen_CNT0_s_CNT2_cmp_eq000061_304
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
      I1 => clk_gen_CNT0_s_mode_491,
      I2 => clk_gen_CNT0_s_CNT3_UD_406,
      O => N15
    );
  clk_gen_CNT0_m_out : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => clk_gen_CNT0_s_out2_or0000,
      I1 => N15,
      I2 => m_TP_0_OBUF1,
      I3 => clk_gen_CNT0_s_mode_491,
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
      O => clk_gen_CNT0_s_out2_or000012_493
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
      O => clk_gen_CNT0_s_out2_or000025_494
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
      O => clk_gen_CNT0_s_out2_or000049_495
    );
  clk_gen_CNT0_s_out2_or000058 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => clk_gen_CNT0_s_REG(2),
      I1 => clk_gen_CNT0_s_REG(1),
      I2 => clk_gen_CNT0_s_REG(15),
      O => clk_gen_CNT0_s_out2_or000058_496
    );
  clk_gen_CNT0_s_out2_or000071 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => clk_gen_CNT0_s_out2_or000012_493,
      I1 => clk_gen_CNT0_s_out2_or000025_494,
      I2 => clk_gen_CNT0_s_out2_or000049_495,
      I3 => clk_gen_CNT0_s_out2_or000058_496,
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
  clk_gen_CNT0_s_CNT3_D_mux0004_7_21 : LUT3
    generic map(
      INIT => X"D5"
    )
    port map (
      I0 => m_reset_b_IBUF_607,
      I1 => clk_gen_CNT0_s_REG(8),
      I2 => N73,
      O => clk_gen_CNT0_N18
    );
  clk_gen_CNT0_s_CNT3_D_mux0004_7_17 : LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      I0 => clk_gen_CNT0_s_CNT3_D(7),
      I1 => clk_gen_CNT0_s_mode_491,
      I2 => clk_gen_CNT0_s_CNT3_2(8),
      I3 => N71,
      O => clk_gen_CNT0_s_CNT3_D_mux0004_7_17_400
    );
  out_mux_dout_7_1 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => s_doutb1(7),
      I1 => s_doutb0(7),
      I2 => sig_controller_t_ps_cmp_eq0000,
      O => out_mux_dout(7)
    );
  out_mux_dout_6_1 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => s_doutb1(6),
      I1 => s_doutb0(6),
      I2 => sig_controller_t_ps_cmp_eq0000,
      O => out_mux_dout(6)
    );
  out_mux_dout_5_1 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => s_doutb1(5),
      I1 => s_doutb0(5),
      I2 => sig_controller_t_ps_cmp_eq0000,
      O => out_mux_dout(5)
    );
  out_mux_dout_4_1 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => s_doutb1(4),
      I1 => s_doutb0(4),
      I2 => sig_controller_t_ps_cmp_eq0000,
      O => out_mux_dout(4)
    );
  out_mux_dout_3_1 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => s_doutb1(3),
      I1 => s_doutb0(3),
      I2 => sig_controller_t_ps_cmp_eq0000,
      O => out_mux_dout(3)
    );
  out_mux_dout_2_1 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => s_doutb1(2),
      I1 => s_doutb0(2),
      I2 => sig_controller_t_ps_cmp_eq0000,
      O => out_mux_dout(2)
    );
  out_mux_dout_1_1 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => s_doutb1(1),
      I1 => s_doutb0(1),
      I2 => sig_controller_t_ps_cmp_eq0000,
      O => out_mux_dout(1)
    );
  out_mux_dout_0_1 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => s_doutb1(0),
      I1 => s_doutb0(0),
      I2 => sig_controller_t_ps_cmp_eq0000,
      O => out_mux_dout(0)
    );
  sig_controller_t_ps_FSM_FFd9_In_SW0 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd9_846,
      I1 => s_ren_684,
      O => N19
    );
  sig_controller_t_ps_FSM_FFd9_In : LUT4
    generic map(
      INIT => X"4F0F"
    )
    port map (
      I0 => s_OE_b_642,
      I1 => sig_controller_t_ps_FSM_FFd13_827,
      I2 => N19,
      I3 => sig_controller_t_ps_cmp_eq0001,
      O => sig_controller_t_ps_FSM_FFd9_In_847
    );
  sig_controller_t_ps_FSM_FFd10_In_SW0 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd10_821,
      I1 => s_wen_685,
      O => N21
    );
  clk_gen_CNT0_s_CNT3_D_mux0004_9_9 : LUT4
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => clk_gen_CNT0_s_REG(6),
      I1 => clk_gen_CNT0_s_CNT3_D_addsub0000(5),
      I2 => clk_gen_CNT0_N4,
      I3 => N82,
      O => clk_gen_CNT0_s_CNT3_D_mux0004_9_9_405
    );
  clk_gen_CNT0_s_CNT3_D_mux0004_8_9 : LUT4
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => clk_gen_CNT0_s_REG(7),
      I1 => clk_gen_CNT0_s_CNT3_D_addsub0000(6),
      I2 => N80,
      I3 => clk_gen_CNT0_N7,
      O => clk_gen_CNT0_s_CNT3_D_mux0004_8_9_403
    );
  clk_gen_CNT0_s_CNT3_D_mux0004_6_9 : LUT4
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => clk_gen_CNT0_s_REG(9),
      I1 => clk_gen_CNT0_s_CNT3_D_addsub0000(8),
      I2 => clk_gen_CNT0_N4,
      I3 => clk_gen_CNT0_N7,
      O => clk_gen_CNT0_s_CNT3_D_mux0004_6_9_399
    );
  clk_gen_CNT0_s_CNT3_D_mux0004_5_9 : LUT4
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => clk_gen_CNT0_s_REG(10),
      I1 => clk_gen_CNT0_s_CNT3_D_addsub0000(9),
      I2 => clk_gen_CNT0_N4,
      I3 => clk_gen_CNT0_N7,
      O => clk_gen_CNT0_s_CNT3_D_mux0004_5_9_397
    );
  clk_gen_CNT0_s_CNT3_D_mux0004_4_9 : LUT4
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => clk_gen_CNT0_s_REG(11),
      I1 => clk_gen_CNT0_s_CNT3_D_addsub0000(10),
      I2 => clk_gen_CNT0_N4,
      I3 => clk_gen_CNT0_N7,
      O => clk_gen_CNT0_s_CNT3_D_mux0004_4_9_395
    );
  clk_gen_CNT0_s_CNT3_D_mux0004_3_9 : LUT4
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => clk_gen_CNT0_s_REG(12),
      I1 => clk_gen_CNT0_s_CNT3_D_addsub0000(11),
      I2 => clk_gen_CNT0_N4,
      I3 => clk_gen_CNT0_N7,
      O => clk_gen_CNT0_s_CNT3_D_mux0004_3_9_393
    );
  clk_gen_CNT0_s_CNT3_D_mux0004_2_9 : LUT4
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => clk_gen_CNT0_s_REG(13),
      I1 => clk_gen_CNT0_s_CNT3_D_addsub0000(12),
      I2 => clk_gen_CNT0_N4,
      I3 => clk_gen_CNT0_N7,
      O => clk_gen_CNT0_s_CNT3_D_mux0004_2_9_391
    );
  clk_gen_CNT0_s_CNT3_D_mux0004_1_9 : LUT4
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => clk_gen_CNT0_s_REG(14),
      I1 => clk_gen_CNT0_s_CNT3_D_addsub0000(13),
      I2 => clk_gen_CNT0_N4,
      I3 => clk_gen_CNT0_N7,
      O => clk_gen_CNT0_s_CNT3_D_mux0004_1_9_389
    );
  clk_gen_CNT0_s_CNT3_D_mux0004_12_9 : LUT4
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => clk_gen_CNT0_s_REG(3),
      I1 => clk_gen_CNT0_s_CNT3_D_addsub0000(2),
      I2 => clk_gen_CNT0_N4,
      I3 => clk_gen_CNT0_N7,
      O => clk_gen_CNT0_s_CNT3_D_mux0004_12_9_377
    );
  clk_gen_CNT0_s_CNT3_D_mux0004_11_9 : LUT4
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => clk_gen_CNT0_s_REG(4),
      I1 => clk_gen_CNT0_s_CNT3_D_addsub0000(3),
      I2 => clk_gen_CNT0_N4,
      I3 => clk_gen_CNT0_N7,
      O => clk_gen_CNT0_s_CNT3_D_mux0004_11_9_375
    );
  clk_gen_CNT0_s_CNT3_D_mux0004_10_9 : LUT4
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => clk_gen_CNT0_s_REG(5),
      I1 => clk_gen_CNT0_s_CNT3_D_addsub0000(4),
      I2 => clk_gen_CNT0_N4,
      I3 => clk_gen_CNT0_N7,
      O => clk_gen_CNT0_s_CNT3_D_mux0004_10_9_373
    );
  clk_gen_CNT0_s_CNT3_D_mux0004_0_9 : LUT4
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => clk_gen_CNT0_s_REG(15),
      I1 => clk_gen_CNT0_s_CNT3_D_addsub0000(14),
      I2 => clk_gen_CNT0_N4,
      I3 => clk_gen_CNT0_N7,
      O => clk_gen_CNT0_s_CNT3_D_mux0004_0_9_371
    );
  clk_gen_CNT0_s_CNT3_D_mux0004_14_0 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => clk_gen_CNT0_s_CNT3_2(1),
      I1 => clk_gen_CNT0_s_CNT3_D_cmp_eq0000,
      O => clk_gen_CNT0_s_CNT3_D_mux0004_14_0_381
    );
  clk_gen_CNT0_s_CNT3_D_mux0004_14_3 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_gen_CNT0_s_CNT3_D_addsub0000(0),
      I1 => clk_gen_CNT0_s_CNT3_D_cmp_eq0000,
      O => clk_gen_CNT0_s_CNT3_D_mux0004_14_3_383
    );
  addr_decode_m_mode_addr_2_26 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => s_address(8),
      I1 => s_address(7),
      I2 => s_address(6),
      I3 => s_address(4),
      O => addr_decode_m_mode_addr_2_26_83
    );
  clk_gen_CNT0_s_CNT3_U_mux0000_9_14 : LUT4
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => clk_gen_CNT0_s_REG(9),
      I1 => clk_gen_CNT0_s_CNT3_U_share0000(8),
      I2 => N87,
      I3 => clk_gen_CNT0_N6,
      O => clk_gen_CNT0_s_CNT3_U_mux0000_9_14_457
    );
  clk_gen_CNT0_s_CNT3_U_mux0000_7_14 : LUT4
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => clk_gen_CNT0_s_REG(7),
      I1 => clk_gen_CNT0_s_CNT3_U_share0000(6),
      I2 => clk_gen_CNT0_s_CNT3_D_mux0004_14_18_382,
      I3 => N78,
      O => clk_gen_CNT0_s_CNT3_U_mux0000_7_14_454
    );
  clk_gen_CNT0_s_CNT3_U_mux0000_6_14 : LUT4
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => clk_gen_CNT0_s_REG(6),
      I1 => clk_gen_CNT0_s_CNT3_U_share0000(5),
      I2 => clk_gen_CNT0_s_CNT3_D_mux0004_14_18_382,
      I3 => clk_gen_CNT0_N6,
      O => clk_gen_CNT0_s_CNT3_U_mux0000_6_14_452
    );
  clk_gen_CNT0_s_CNT3_U_mux0000_5_14 : LUT4
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => clk_gen_CNT0_s_REG(5),
      I1 => clk_gen_CNT0_s_CNT3_U_share0000(4),
      I2 => clk_gen_CNT0_s_CNT3_D_mux0004_14_18_382,
      I3 => clk_gen_CNT0_N6,
      O => clk_gen_CNT0_s_CNT3_U_mux0000_5_14_450
    );
  clk_gen_CNT0_s_CNT3_U_mux0000_4_14 : LUT4
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => clk_gen_CNT0_s_REG(4),
      I1 => clk_gen_CNT0_s_CNT3_U_share0000(3),
      I2 => clk_gen_CNT0_s_CNT3_D_mux0004_14_18_382,
      I3 => clk_gen_CNT0_N6,
      O => clk_gen_CNT0_s_CNT3_U_mux0000_4_14_448
    );
  clk_gen_CNT0_s_CNT3_U_mux0000_3_14 : LUT4
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => clk_gen_CNT0_s_REG(3),
      I1 => clk_gen_CNT0_s_CNT3_U_share0000(2),
      I2 => clk_gen_CNT0_s_CNT3_D_mux0004_14_18_382,
      I3 => clk_gen_CNT0_N6,
      O => clk_gen_CNT0_s_CNT3_U_mux0000_3_14_446
    );
  clk_gen_CNT0_s_CNT3_U_mux0000_1_14 : LUT4
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => clk_gen_CNT0_s_REG(1),
      I1 => clk_gen_CNT0_s_CNT3_U_share0000(0),
      I2 => clk_gen_CNT0_s_CNT3_D_mux0004_14_18_382,
      I3 => clk_gen_CNT0_N6,
      O => clk_gen_CNT0_s_CNT3_U_mux0000_1_14_441
    );
  clk_gen_CNT0_s_CNT3_U_mux0000_15_14 : LUT4
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => clk_gen_CNT0_s_REG(15),
      I1 => clk_gen_CNT0_s_CNT3_U_share0000(14),
      I2 => clk_gen_CNT0_s_CNT3_D_mux0004_14_18_382,
      I3 => clk_gen_CNT0_N6,
      O => clk_gen_CNT0_s_CNT3_U_mux0000_15_14_439
    );
  clk_gen_CNT0_s_CNT3_U_mux0000_14_14 : LUT4
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => clk_gen_CNT0_s_REG(14),
      I1 => clk_gen_CNT0_s_CNT3_U_share0000(13),
      I2 => clk_gen_CNT0_s_CNT3_D_mux0004_14_18_382,
      I3 => clk_gen_CNT0_N6,
      O => clk_gen_CNT0_s_CNT3_U_mux0000_14_14_437
    );
  clk_gen_CNT0_s_CNT3_U_mux0000_13_14 : LUT4
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => clk_gen_CNT0_s_REG(13),
      I1 => clk_gen_CNT0_s_CNT3_U_share0000(12),
      I2 => clk_gen_CNT0_s_CNT3_D_mux0004_14_18_382,
      I3 => clk_gen_CNT0_N6,
      O => clk_gen_CNT0_s_CNT3_U_mux0000_13_14_435
    );
  clk_gen_CNT0_s_CNT3_U_mux0000_12_14 : LUT4
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => clk_gen_CNT0_s_REG(12),
      I1 => clk_gen_CNT0_s_CNT3_U_share0000(11),
      I2 => clk_gen_CNT0_s_CNT3_D_mux0004_14_18_382,
      I3 => clk_gen_CNT0_N6,
      O => clk_gen_CNT0_s_CNT3_U_mux0000_12_14_433
    );
  clk_gen_CNT0_s_CNT3_U_mux0000_11_14 : LUT4
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => clk_gen_CNT0_s_REG(11),
      I1 => clk_gen_CNT0_s_CNT3_U_share0000(10),
      I2 => clk_gen_CNT0_s_CNT3_D_mux0004_14_18_382,
      I3 => clk_gen_CNT0_N6,
      O => clk_gen_CNT0_s_CNT3_U_mux0000_11_14_431
    );
  clk_gen_CNT0_s_CNT3_U_mux0000_10_14 : LUT4
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => clk_gen_CNT0_s_REG(10),
      I1 => clk_gen_CNT0_s_CNT3_U_share0000(9),
      I2 => clk_gen_CNT0_s_CNT3_D_mux0004_14_18_382,
      I3 => clk_gen_CNT0_N6,
      O => clk_gen_CNT0_s_CNT3_U_mux0000_10_14_429
    );
  sig_controller_t_ps_FSM_FFd14_In33 : LUT4
    generic map(
      INIT => X"AA82"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd13_827,
      I1 => s_mode_addr(0),
      I2 => s_mode_addr(1),
      I3 => s_mode_addr(2),
      O => sig_controller_t_ps_FSM_FFd14_In33_832
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
      O => clk_gen_CNT0_s_CNT3_UD_cmp_eq000025_409
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
      O => clk_gen_CNT0_s_CNT3_UD_cmp_eq000049_410
    );
  clk_gen_CNT0_s_CNT3_UD_cmp_eq000058 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => clk_gen_CNT0_s_CNT3_U(12),
      I1 => clk_gen_CNT0_s_CNT3_U(13),
      I2 => clk_gen_CNT0_s_CNT3_U(0),
      O => clk_gen_CNT0_s_CNT3_UD_cmp_eq000058_411
    );
  clk_gen_CNT0_s_CNT3_UD_cmp_eq000071 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => clk_gen_CNT0_s_CNT3_UD_cmp_eq000012_408,
      I1 => clk_gen_CNT0_s_CNT3_UD_cmp_eq000025_409,
      I2 => clk_gen_CNT0_s_CNT3_UD_cmp_eq000049_410,
      I3 => clk_gen_CNT0_s_CNT3_UD_cmp_eq000058_411,
      O => clk_gen_CNT0_s_CNT3_UD_cmp_eq0000
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
      O => clk_gen_CNT0_s_CNT3_D_cmp_eq000020_366
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
      O => clk_gen_CNT0_s_CNT3_D_cmp_eq000043_367
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
      O => clk_gen_CNT0_s_CNT3_D_cmp_eq000056_368
    );
  clk_gen_CNT0_s_CNT3_D_cmp_eq000070 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => clk_gen_CNT0_s_CNT3_D_cmp_eq00007_369,
      I1 => clk_gen_CNT0_s_CNT3_D_cmp_eq000020_366,
      I2 => clk_gen_CNT0_s_CNT3_D_cmp_eq000043_367,
      I3 => clk_gen_CNT0_s_CNT3_D_cmp_eq000056_368,
      O => clk_gen_CNT0_s_CNT3_D_cmp_eq0000
    );
  sig_controller_t_ps_FSM_FFd12_In1 : LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd12_825,
      I1 => s_wen_685,
      I2 => s_OE_b_642,
      I3 => N77,
      O => sig_controller_t_ps_FSM_FFd12_In
    );
  sig_controller_t_ps_FSM_FFd11_In2 : LUT4
    generic map(
      INIT => X"4F44"
    )
    port map (
      I0 => s_ren_684,
      I1 => sig_controller_t_ps_FSM_FFd11_823,
      I2 => s_OE_b_642,
      I3 => sig_controller_N4,
      O => sig_controller_t_ps_FSM_FFd11_In
    );
  addr_decode_m_mode_addr_1_21 : LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => s_address(5),
      I1 => s_address(4),
      I2 => s_address(7),
      I3 => N23,
      O => N5
    );
  sig_controller_t_ps_cmp_eq00001 : LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => s_mode_addr(2),
      I1 => s_mode_addr(1),
      I2 => s_mode_addr(0),
      O => sig_controller_t_ps_cmp_eq0000
    );
  addr_decode_m_mode_addr_0_31 : LUT3
    generic map(
      INIT => X"94"
    )
    port map (
      I0 => s_address(2),
      I1 => s_address(4),
      I2 => s_address(5),
      O => addr_decode_m_mode_addr_0_31_76
    );
  addr_decode_m_mode_addr_0_34 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => s_address(6),
      I1 => s_address(7),
      O => addr_decode_m_mode_addr_0_34_77
    );
  addr_decode_m_mode_addr_0_73 : LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => s_address(3),
      I1 => s_address(0),
      I2 => s_address(8),
      I3 => s_address(1),
      O => addr_decode_m_mode_addr_0_73_78
    );
  addr_decode_m_mode_addr_1_45 : LUT4
    generic map(
      INIT => X"8110"
    )
    port map (
      I0 => s_address(1),
      I1 => s_address(2),
      I2 => s_address(5),
      I3 => s_address(4),
      O => addr_decode_m_mode_addr_1_45_79
    );
  addr_decode_m_mode_addr_1_53 : LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => s_address(0),
      I1 => s_address(7),
      I2 => s_address(6),
      O => addr_decode_m_mode_addr_1_53_81
    );
  addr_decode_m_mode_addr_1_86 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => s_address(8),
      I1 => s_address(3),
      O => addr_decode_m_mode_addr_1_86_82
    );
  addr_decode_m_mode_addr_1_89 : LUT4
    generic map(
      INIT => X"F080"
    )
    port map (
      I0 => addr_decode_m_mode_addr_1_45_79,
      I1 => addr_decode_m_mode_addr_1_53_81,
      I2 => addr_decode_m_mode_addr_1_86_82,
      I3 => addr_decode_m_mode_addr_1_5_80,
      O => s_mode_addr(1)
    );
  m_cmd_data_IBUF : IBUF
    port map (
      I => m_cmd_data,
      O => m_cmd_data_IBUF_587
    );
  m_OE_b_IBUF : IBUF
    port map (
      I => m_OE_b,
      O => m_OE_b_IBUF_560
    );
  m_wen_IBUF : IBUF
    port map (
      I => m_wen,
      O => m_wen_IBUF_609
    );
  m_reset_b_IBUF : IBUF
    port map (
      I => m_reset_b,
      O => m_reset_b_IBUF_607
    );
  m_ren_IBUF : IBUF
    port map (
      I => m_ren,
      O => m_ren_IBUF_605
    );
  m_address_8_IBUF : IBUF
    port map (
      I => m_address(8),
      O => m_address_8_IBUF_584
    );
  m_address_7_IBUF : IBUF
    port map (
      I => m_address(7),
      O => m_address_7_IBUF_583
    );
  m_address_6_IBUF : IBUF
    port map (
      I => m_address(6),
      O => m_address_6_IBUF_582
    );
  m_address_5_IBUF : IBUF
    port map (
      I => m_address(5),
      O => m_address_5_IBUF_581
    );
  m_address_4_IBUF : IBUF
    port map (
      I => m_address(4),
      O => m_address_4_IBUF_580
    );
  m_address_3_IBUF : IBUF
    port map (
      I => m_address(3),
      O => m_address_3_IBUF_579
    );
  m_address_2_IBUF : IBUF
    port map (
      I => m_address(2),
      O => m_address_2_IBUF_578
    );
  m_address_1_IBUF : IBUF
    port map (
      I => m_address(1),
      O => m_address_1_IBUF_577
    );
  m_address_0_IBUF : IBUF
    port map (
      I => m_address(0),
      O => m_address_0_IBUF_576
    );
  m_ADC_data_7_IBUF : IBUF
    port map (
      I => m_ADC_data(7),
      O => m_ADC_data_7_IBUF_549
    );
  m_ADC_data_6_IBUF : IBUF
    port map (
      I => m_ADC_data(6),
      O => m_ADC_data_6_IBUF_548
    );
  m_ADC_data_5_IBUF : IBUF
    port map (
      I => m_ADC_data(5),
      O => m_ADC_data_5_IBUF_547
    );
  m_ADC_data_4_IBUF : IBUF
    port map (
      I => m_ADC_data(4),
      O => m_ADC_data_4_IBUF_546
    );
  m_ADC_data_3_IBUF : IBUF
    port map (
      I => m_ADC_data(3),
      O => m_ADC_data_3_IBUF_545
    );
  m_ADC_data_2_IBUF : IBUF
    port map (
      I => m_ADC_data(2),
      O => m_ADC_data_2_IBUF_544
    );
  m_ADC_data_1_IBUF : IBUF
    port map (
      I => m_ADC_data(1),
      O => m_ADC_data_1_IBUF_543
    );
  m_ADC_data_0_IBUF : IBUF
    port map (
      I => m_ADC_data(0),
      O => m_ADC_data_0_IBUF_542
    );
  m_data_7_IOBUF : IOBUF
    port map (
      I => outlatch_dout(7),
      T => avg_module_cns1_Mcompar_s_div_comp_cmp_ge0000_cy(0),
      O => N27,
      IO => m_data(7)
    );
  m_data_6_IOBUF : IOBUF
    port map (
      I => outlatch_dout(6),
      T => avg_module_cns1_Mcompar_s_div_comp_cmp_ge0000_cy(0),
      O => N28,
      IO => m_data(6)
    );
  m_data_5_IOBUF : IOBUF
    port map (
      I => outlatch_dout(5),
      T => avg_module_cns1_Mcompar_s_div_comp_cmp_ge0000_cy(0),
      O => N29,
      IO => m_data(5)
    );
  m_data_4_IOBUF : IOBUF
    port map (
      I => outlatch_dout(4),
      T => avg_module_cns1_Mcompar_s_div_comp_cmp_ge0000_cy(0),
      O => N30,
      IO => m_data(4)
    );
  m_data_3_IOBUF : IOBUF
    port map (
      I => outlatch_dout(3),
      T => avg_module_cns1_Mcompar_s_div_comp_cmp_ge0000_cy(0),
      O => N31,
      IO => m_data(3)
    );
  m_data_2_IOBUF : IOBUF
    port map (
      I => outlatch_dout(2),
      T => avg_module_cns1_Mcompar_s_div_comp_cmp_ge0000_cy(0),
      O => N32,
      IO => m_data(2)
    );
  m_data_1_IOBUF : IOBUF
    port map (
      I => outlatch_dout(1),
      T => avg_module_cns1_Mcompar_s_div_comp_cmp_ge0000_cy(0),
      O => N33,
      IO => m_data(1)
    );
  m_data_0_IOBUF : IOBUF
    port map (
      I => outlatch_dout(0),
      T => avg_module_cns1_Mcompar_s_div_comp_cmp_ge0000_cy(0),
      O => N34,
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
      I => avg_module_cns1_Mcompar_s_div_comp_cmp_ge0000_cy(0),
      O => m_DAC_data(7)
    );
  m_DAC_data_6_OBUF : OBUF
    port map (
      I => avg_module_Maccum_s_data_cy(0),
      O => m_DAC_data(6)
    );
  m_DAC_data_5_OBUF : OBUF
    port map (
      I => avg_module_Maccum_s_data_cy(0),
      O => m_DAC_data(5)
    );
  m_DAC_data_4_OBUF : OBUF
    port map (
      I => avg_module_Maccum_s_data_cy(0),
      O => m_DAC_data(4)
    );
  m_DAC_data_3_OBUF : OBUF
    port map (
      I => avg_module_Maccum_s_data_cy(0),
      O => m_DAC_data(3)
    );
  m_DAC_data_2_OBUF : OBUF
    port map (
      I => avg_module_Maccum_s_data_cy(0),
      O => m_DAC_data(2)
    );
  m_DAC_data_1_OBUF : OBUF
    port map (
      I => avg_module_Maccum_s_data_cy(0),
      O => m_DAC_data(1)
    );
  m_DAC_data_0_OBUF : OBUF
    port map (
      I => avg_module_Maccum_s_data_cy(0),
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
      C => m_TP_0_OBUF_563,
      D => clk_gen_CNT0_s_CNT3_D_mux0004_14_71,
      S => clk_gen_CNT0_s_CNT3_D_mux0004_14_48,
      Q => clk_gen_CNT0_s_CNT3_D(0)
    );
  clk_gen_CNT0_s_CNT3_D_1 : FDS_1
    port map (
      C => m_TP_0_OBUF_563,
      D => clk_gen_CNT0_s_CNT3_D_mux0004_13_22,
      S => clk_gen_CNT0_s_CNT3_D_mux0004_13_8_380,
      Q => clk_gen_CNT0_s_CNT3_D(1)
    );
  clk_gen_CNT0_s_CNT3_D_2 : FDS_1
    port map (
      C => m_TP_0_OBUF_563,
      D => clk_gen_CNT0_s_CNT3_D_mux0004_12_9_377,
      S => clk_gen_CNT0_s_CNT3_D_mux0004_12_3_376,
      Q => clk_gen_CNT0_s_CNT3_D(2)
    );
  clk_gen_CNT0_s_CNT3_D_3 : FDS_1
    port map (
      C => m_TP_0_OBUF_563,
      D => clk_gen_CNT0_s_CNT3_D_mux0004_11_9_375,
      S => clk_gen_CNT0_s_CNT3_D_mux0004_11_3_374,
      Q => clk_gen_CNT0_s_CNT3_D(3)
    );
  clk_gen_CNT0_s_CNT3_D_4 : FDS_1
    port map (
      C => m_TP_0_OBUF_563,
      D => clk_gen_CNT0_s_CNT3_D_mux0004_10_9_373,
      S => clk_gen_CNT0_s_CNT3_D_mux0004_10_3_372,
      Q => clk_gen_CNT0_s_CNT3_D(4)
    );
  clk_gen_CNT0_s_CNT3_D_5 : FDS_1
    port map (
      C => m_TP_0_OBUF_563,
      D => clk_gen_CNT0_s_CNT3_D_mux0004_9_9_405,
      S => clk_gen_CNT0_s_CNT3_D_mux0004_9_3_404,
      Q => clk_gen_CNT0_s_CNT3_D(5)
    );
  clk_gen_CNT0_s_CNT3_D_6 : FDS_1
    port map (
      C => m_TP_0_OBUF_563,
      D => clk_gen_CNT0_s_CNT3_D_mux0004_8_9_403,
      S => clk_gen_CNT0_s_CNT3_D_mux0004_8_3_402,
      Q => clk_gen_CNT0_s_CNT3_D(6)
    );
  clk_gen_CNT0_s_CNT3_D_7 : FDS_1
    port map (
      C => m_TP_0_OBUF_563,
      D => clk_gen_CNT0_s_CNT3_D_mux0004_7_19,
      S => clk_gen_CNT0_N18,
      Q => clk_gen_CNT0_s_CNT3_D(7)
    );
  clk_gen_CNT0_s_CNT3_D_8 : FDS_1
    port map (
      C => m_TP_0_OBUF_563,
      D => clk_gen_CNT0_s_CNT3_D_mux0004_6_9_399,
      S => clk_gen_CNT0_s_CNT3_D_mux0004_6_3_398,
      Q => clk_gen_CNT0_s_CNT3_D(8)
    );
  clk_gen_CNT0_s_CNT3_D_9 : FDS_1
    port map (
      C => m_TP_0_OBUF_563,
      D => clk_gen_CNT0_s_CNT3_D_mux0004_5_9_397,
      S => clk_gen_CNT0_s_CNT3_D_mux0004_5_3_396,
      Q => clk_gen_CNT0_s_CNT3_D(9)
    );
  clk_gen_CNT0_s_CNT3_D_10 : FDS_1
    port map (
      C => m_TP_0_OBUF_563,
      D => clk_gen_CNT0_s_CNT3_D_mux0004_4_9_395,
      S => clk_gen_CNT0_s_CNT3_D_mux0004_4_3_394,
      Q => clk_gen_CNT0_s_CNT3_D(10)
    );
  clk_gen_CNT0_s_CNT3_D_11 : FDS_1
    port map (
      C => m_TP_0_OBUF_563,
      D => clk_gen_CNT0_s_CNT3_D_mux0004_3_9_393,
      S => clk_gen_CNT0_s_CNT3_D_mux0004_3_3_392,
      Q => clk_gen_CNT0_s_CNT3_D(11)
    );
  clk_gen_CNT0_s_CNT3_D_12 : FDS_1
    port map (
      C => m_TP_0_OBUF_563,
      D => clk_gen_CNT0_s_CNT3_D_mux0004_2_9_391,
      S => clk_gen_CNT0_s_CNT3_D_mux0004_2_3_390,
      Q => clk_gen_CNT0_s_CNT3_D(12)
    );
  clk_gen_CNT0_s_CNT3_D_13 : FDS_1
    port map (
      C => m_TP_0_OBUF_563,
      D => clk_gen_CNT0_s_CNT3_D_mux0004_1_9_389,
      S => clk_gen_CNT0_s_CNT3_D_mux0004_1_3_388,
      Q => clk_gen_CNT0_s_CNT3_D(13)
    );
  clk_gen_CNT0_s_CNT3_D_14 : FDS_1
    port map (
      C => m_TP_0_OBUF_563,
      D => clk_gen_CNT0_s_CNT3_D_mux0004_0_9_371,
      S => clk_gen_CNT0_s_CNT3_D_mux0004_0_3_370,
      Q => clk_gen_CNT0_s_CNT3_D(14)
    );
  clk_gen_CNT0_s_CNT3_U_0 : FDS_1
    port map (
      C => m_TP_0_OBUF_563,
      D => clk_gen_CNT0_s_CNT3_U_mux0000_1_114,
      S => clk_gen_CNT0_s_CNT3_U_mux0000_1_14_441,
      Q => clk_gen_CNT0_s_CNT3_U(0)
    );
  clk_gen_CNT0_s_CNT3_U_1 : FDS_1
    port map (
      C => m_TP_0_OBUF_563,
      D => clk_gen_CNT0_s_CNT3_U_mux0000_2_120,
      S => clk_gen_CNT0_s_CNT3_U_mux0000_2_14_443,
      Q => clk_gen_CNT0_s_CNT3_U(1)
    );
  clk_gen_CNT0_s_CNT3_U_mux0000_2_1201 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => clk_gen_CNT0_s_CNT3_U(1),
      I1 => clk_gen_CNT0_N2,
      I2 => clk_gen_CNT0_s_CNT3_U_mux0000_2_19_444,
      O => clk_gen_CNT0_s_CNT3_U_mux0000_2_120
    );
  clk_gen_CNT0_s_CNT3_U_2 : FDS_1
    port map (
      C => m_TP_0_OBUF_563,
      D => clk_gen_CNT0_s_CNT3_U_mux0000_3_114,
      S => clk_gen_CNT0_s_CNT3_U_mux0000_3_14_446,
      Q => clk_gen_CNT0_s_CNT3_U(2)
    );
  clk_gen_CNT0_s_CNT3_U_3 : FDS_1
    port map (
      C => m_TP_0_OBUF_563,
      D => clk_gen_CNT0_s_CNT3_U_mux0000_4_114,
      S => clk_gen_CNT0_s_CNT3_U_mux0000_4_14_448,
      Q => clk_gen_CNT0_s_CNT3_U(3)
    );
  clk_gen_CNT0_s_CNT3_U_4 : FDS_1
    port map (
      C => m_TP_0_OBUF_563,
      D => clk_gen_CNT0_s_CNT3_U_mux0000_5_114,
      S => clk_gen_CNT0_s_CNT3_U_mux0000_5_14_450,
      Q => clk_gen_CNT0_s_CNT3_U(4)
    );
  clk_gen_CNT0_s_CNT3_U_5 : FDS_1
    port map (
      C => m_TP_0_OBUF_563,
      D => clk_gen_CNT0_s_CNT3_U_mux0000_6_114,
      S => clk_gen_CNT0_s_CNT3_U_mux0000_6_14_452,
      Q => clk_gen_CNT0_s_CNT3_U(5)
    );
  clk_gen_CNT0_s_CNT3_U_6 : FDS_1
    port map (
      C => m_TP_0_OBUF_563,
      D => clk_gen_CNT0_s_CNT3_U_mux0000_7_114,
      S => clk_gen_CNT0_s_CNT3_U_mux0000_7_14_454,
      Q => clk_gen_CNT0_s_CNT3_U(6)
    );
  clk_gen_CNT0_s_CNT3_U_7 : FDS_1
    port map (
      C => m_TP_0_OBUF_563,
      D => clk_gen_CNT0_s_CNT3_U_mux0000_8_11_455,
      S => clk_gen_CNT0_N18,
      Q => clk_gen_CNT0_s_CNT3_U(7)
    );
  clk_gen_CNT0_s_CNT3_U_8 : FDS_1
    port map (
      C => m_TP_0_OBUF_563,
      D => clk_gen_CNT0_s_CNT3_U_mux0000_9_114,
      S => clk_gen_CNT0_s_CNT3_U_mux0000_9_14_457,
      Q => clk_gen_CNT0_s_CNT3_U(8)
    );
  clk_gen_CNT0_s_CNT3_U_9 : FDS_1
    port map (
      C => m_TP_0_OBUF_563,
      D => clk_gen_CNT0_s_CNT3_U_mux0000_10_114,
      S => clk_gen_CNT0_s_CNT3_U_mux0000_10_14_429,
      Q => clk_gen_CNT0_s_CNT3_U(9)
    );
  clk_gen_CNT0_s_CNT3_U_10 : FDS_1
    port map (
      C => m_TP_0_OBUF_563,
      D => clk_gen_CNT0_s_CNT3_U_mux0000_11_114,
      S => clk_gen_CNT0_s_CNT3_U_mux0000_11_14_431,
      Q => clk_gen_CNT0_s_CNT3_U(10)
    );
  clk_gen_CNT0_s_CNT3_U_11 : FDS_1
    port map (
      C => m_TP_0_OBUF_563,
      D => clk_gen_CNT0_s_CNT3_U_mux0000_12_114,
      S => clk_gen_CNT0_s_CNT3_U_mux0000_12_14_433,
      Q => clk_gen_CNT0_s_CNT3_U(11)
    );
  clk_gen_CNT0_s_CNT3_U_12 : FDS_1
    port map (
      C => m_TP_0_OBUF_563,
      D => clk_gen_CNT0_s_CNT3_U_mux0000_13_114,
      S => clk_gen_CNT0_s_CNT3_U_mux0000_13_14_435,
      Q => clk_gen_CNT0_s_CNT3_U(12)
    );
  clk_gen_CNT0_s_CNT3_U_13 : FDS_1
    port map (
      C => m_TP_0_OBUF_563,
      D => clk_gen_CNT0_s_CNT3_U_mux0000_14_114,
      S => clk_gen_CNT0_s_CNT3_U_mux0000_14_14_437,
      Q => clk_gen_CNT0_s_CNT3_U(13)
    );
  clk_gen_CNT0_s_CNT3_U_14 : FDS_1
    port map (
      C => m_TP_0_OBUF_563,
      D => clk_gen_CNT0_s_CNT3_U_mux0000_15_114,
      S => clk_gen_CNT0_s_CNT3_U_mux0000_15_14_439,
      Q => clk_gen_CNT0_s_CNT3_U(14)
    );
  sig_controller_t_ps_FSM_FFd14 : FDS
    generic map(
      INIT => '1'
    )
    port map (
      C => m_TP_0_OBUF_563,
      D => sig_controller_t_ps_FSM_FFd14_In33_832,
      S => sig_controller_t_ps_FSM_FFd14_In11_830,
      Q => sig_controller_t_ps_FSM_FFd14_829
    );
  sig_controller_t_ps_FSM_FFd10 : FDS
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_0_OBUF_563,
      D => sig_controller_t_ps_FSM_FFd10_In1_822,
      S => N21,
      Q => sig_controller_t_ps_FSM_FFd10_821
    );
  sig_controller_t_ps_FSM_FFd10_In1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => s_OE_b_642,
      I1 => sig_controller_t_ps_FSM_FFd13_827,
      I2 => N74,
      O => sig_controller_t_ps_FSM_FFd10_In1_822
    );
  sig_controller_t_ps_FSM_FFd5 : FDS
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_0_OBUF_563,
      D => sig_controller_t_ps_FSM_FFd5_In1,
      S => sig_controller_t_ps_FSM_FFd6_840,
      Q => sig_controller_t_ps_FSM_FFd5_838
    );
  sig_controller_t_ps_FSM_FFd5_In11 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => s_cmd_data_652,
      I1 => sig_controller_t_ps_FSM_FFd5_838,
      O => sig_controller_t_ps_FSM_FFd5_In1
    );
  sig_controller_t_ps_FSM_FFd7 : FDS
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_0_OBUF_563,
      D => sig_controller_t_ps_FSM_FFd7_In1,
      S => sig_controller_t_ps_FSM_FFd8_844,
      Q => sig_controller_t_ps_FSM_FFd7_842
    );
  sig_controller_t_ps_FSM_FFd7_In11 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => s_cmd_data_652,
      I1 => sig_controller_t_ps_FSM_FFd7_842,
      O => sig_controller_t_ps_FSM_FFd7_In1
    );
  sig_controller_t_ps_FSM_FFd3 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_0_OBUF_563,
      D => sig_controller_t_ps_FSM_FFd4_836,
      R => s_cmd_data_652,
      Q => sig_controller_t_ps_FSM_FFd3_835
    );
  sig_controller_t_ps_FSM_FFd1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_0_OBUF_563,
      D => sig_controller_t_ps_FSM_FFd2_833,
      R => s_cmd_data_652,
      Q => sig_controller_t_ps_FSM_FFd1_820
    );
  sig_controller_t_prevmode_1 : FDS
    port map (
      C => m_TP_0_OBUF_563,
      D => sig_controller_t_prevmode_mux0000_3_2,
      S => sig_controller_t_ps_FSM_FFd12_825,
      Q => sig_controller_t_prevmode(1)
    );
  sig_controller_t_prevmode_mux0000_3_21 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => sig_controller_t_prevmode(1),
      I1 => N83,
      O => sig_controller_t_prevmode_mux0000_3_2
    );
  sig_controller_t_prevmode_0 : FDS
    port map (
      C => m_TP_0_OBUF_563,
      D => sig_controller_t_prevmode_mux0000_4_1,
      S => sig_controller_t_ps_FSM_FFd11_823,
      Q => sig_controller_t_prevmode(0)
    );
  sig_controller_t_prevmode_mux0000_4_11 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => sig_controller_t_prevmode(0),
      I1 => sig_controller_N0,
      O => sig_controller_t_prevmode_mux0000_4_1
    );
  clk_gen_state_FSM_FFd2 : FDRS
    generic map(
      INIT => '0'
    )
    port map (
      C => m_TP_0_OBUF_563,
      D => clk_gen_state_FSM_FFd2_In1,
      R => clk_gen_not0000,
      S => clk_gen_state_FSM_FFd3_526,
      Q => clk_gen_state_FSM_FFd2_524
    );
  clk_gen_state_FSM_FFd2_In11 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => clk_gen_state_FSM_FFd2_524,
      I1 => m_wen_IBUF_609,
      I2 => clk_gen_not0001_532,
      O => clk_gen_state_FSM_FFd2_In1
    );
  clk_gen_CNT0_Msub_s_CNT3_U_share0000_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_gen_CNT0_s_CNT3_U(0),
      O => clk_gen_CNT0_Msub_s_CNT3_U_share0000_cy_0_rt_225
    );
  clk_gen_CNT0_Madd_s_CNT3_1_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_gen_CNT0_s_REG(1),
      O => clk_gen_CNT0_Madd_s_CNT3_1_cy_1_rt_98
    );
  clk_gen_CNT0_Madd_s_CNT3_1_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_gen_CNT0_s_REG(2),
      O => clk_gen_CNT0_Madd_s_CNT3_1_cy_2_rt_100
    );
  clk_gen_CNT0_Madd_s_CNT3_1_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_gen_CNT0_s_REG(3),
      O => clk_gen_CNT0_Madd_s_CNT3_1_cy_3_rt_102
    );
  clk_gen_CNT0_Madd_s_CNT3_1_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_gen_CNT0_s_REG(4),
      O => clk_gen_CNT0_Madd_s_CNT3_1_cy_4_rt_104
    );
  clk_gen_CNT0_Madd_s_CNT3_1_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_gen_CNT0_s_REG(5),
      O => clk_gen_CNT0_Madd_s_CNT3_1_cy_5_rt_106
    );
  clk_gen_CNT0_Madd_s_CNT3_1_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_gen_CNT0_s_REG(6),
      O => clk_gen_CNT0_Madd_s_CNT3_1_cy_6_rt_108
    );
  clk_gen_CNT0_Madd_s_CNT3_1_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_gen_CNT0_s_REG(7),
      O => clk_gen_CNT0_Madd_s_CNT3_1_cy_7_rt_110
    );
  clk_gen_CNT0_Madd_s_CNT3_1_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_gen_CNT0_s_REG(8),
      O => clk_gen_CNT0_Madd_s_CNT3_1_cy_8_rt_112
    );
  clk_gen_CNT0_Madd_s_CNT3_1_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_gen_CNT0_s_REG(9),
      O => clk_gen_CNT0_Madd_s_CNT3_1_cy_9_rt_114
    );
  clk_gen_CNT0_Madd_s_CNT3_1_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_gen_CNT0_s_REG(10),
      O => clk_gen_CNT0_Madd_s_CNT3_1_cy_10_rt_88
    );
  clk_gen_CNT0_Madd_s_CNT3_1_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_gen_CNT0_s_REG(11),
      O => clk_gen_CNT0_Madd_s_CNT3_1_cy_11_rt_90
    );
  clk_gen_CNT0_Madd_s_CNT3_1_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_gen_CNT0_s_REG(12),
      O => clk_gen_CNT0_Madd_s_CNT3_1_cy_12_rt_92
    );
  clk_gen_CNT0_Madd_s_CNT3_1_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_gen_CNT0_s_REG(13),
      O => clk_gen_CNT0_Madd_s_CNT3_1_cy_13_rt_94
    );
  clk_gen_CNT0_Madd_s_CNT3_1_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_gen_CNT0_s_REG(14),
      O => clk_gen_CNT0_Madd_s_CNT3_1_cy_14_rt_96
    );
  clk_gen_CNT0_Msub_s_CNT3_2_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_gen_CNT0_s_REG(0),
      O => clk_gen_CNT0_Msub_s_CNT3_2_cy_0_rt_165
    );
  clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_gen_CNT0_s_CNT3_D(0),
      O => clk_gen_CNT0_Msub_s_CNT3_D_addsub0000_cy_0_rt_196
    );
  clk_gen_CNT0_Mcount_s_CNT2_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_gen_CNT0_s_CNT2(0),
      O => clk_gen_CNT0_Mcount_s_CNT2_cy_0_rt_118
    );
  sig_controller_dac_ctr_Mcount_s_cnt_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_dac_ctr_s_cnt(1),
      O => sig_controller_dac_ctr_Mcount_s_cnt_cy_1_rt_732
    );
  sig_controller_dac_ctr_Mcount_s_cnt_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_dac_ctr_s_cnt(2),
      O => sig_controller_dac_ctr_Mcount_s_cnt_cy_2_rt_734
    );
  sig_controller_dac_ctr_Mcount_s_cnt_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_dac_ctr_s_cnt(3),
      O => sig_controller_dac_ctr_Mcount_s_cnt_cy_3_rt_736
    );
  sig_controller_dac_ctr_Mcount_s_cnt_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_dac_ctr_s_cnt(4),
      O => sig_controller_dac_ctr_Mcount_s_cnt_cy_4_rt_738
    );
  sig_controller_dac_ctr_Mcount_s_cnt_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_dac_ctr_s_cnt(5),
      O => sig_controller_dac_ctr_Mcount_s_cnt_cy_5_rt_740
    );
  sig_controller_dac_ctr_Mcount_s_cnt_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_dac_ctr_s_cnt(6),
      O => sig_controller_dac_ctr_Mcount_s_cnt_cy_6_rt_742
    );
  sig_controller_dac_ctr_Mcount_s_cnt_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_dac_ctr_s_cnt(7),
      O => sig_controller_dac_ctr_Mcount_s_cnt_cy_7_rt_744
    );
  sig_controller_dac_ctr_Mcount_s_cnt_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_dac_ctr_s_cnt(8),
      O => sig_controller_dac_ctr_Mcount_s_cnt_cy_8_rt_746
    );
  sig_controller_dac_ctr_Mcount_s_cnt_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_dac_ctr_s_cnt(9),
      O => sig_controller_dac_ctr_Mcount_s_cnt_cy_9_rt_748
    );
  sig_controller_rem0ctr_Mcount_s_Cnt_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Cnt(1),
      O => sig_controller_rem0ctr_Mcount_s_Cnt_cy_1_rt_774
    );
  sig_controller_rem0ctr_Mcount_s_Cnt_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Cnt(2),
      O => sig_controller_rem0ctr_Mcount_s_Cnt_cy_2_rt_776
    );
  sig_controller_rem0ctr_Mcount_s_Cnt_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Cnt(3),
      O => sig_controller_rem0ctr_Mcount_s_Cnt_cy_3_rt_778
    );
  sig_controller_rem0ctr_Mcount_s_Cnt_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Cnt(4),
      O => sig_controller_rem0ctr_Mcount_s_Cnt_cy_4_rt_780
    );
  sig_controller_rem0ctr_Mcount_s_Cnt_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Cnt(5),
      O => sig_controller_rem0ctr_Mcount_s_Cnt_cy_5_rt_782
    );
  sig_controller_rem0ctr_Mcount_s_Cnt_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Cnt(6),
      O => sig_controller_rem0ctr_Mcount_s_Cnt_cy_6_rt_784
    );
  sig_controller_rem0ctr_Mcount_s_Cnt_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Cnt(7),
      O => sig_controller_rem0ctr_Mcount_s_Cnt_cy_7_rt_786
    );
  sig_controller_rem0ctr_Mcount_s_Cnt_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Cnt(8),
      O => sig_controller_rem0ctr_Mcount_s_Cnt_cy_8_rt_788
    );
  sig_controller_rem0ctr_Mcount_s_Cnt_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_rem0ctr_s_Cnt(9),
      O => sig_controller_rem0ctr_Mcount_s_Cnt_cy_9_rt_790
    );
  sig_controller_adc_ctr_Mcount_s_cnt_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_adc_ctr_s_cnt(9),
      O => sig_controller_adc_ctr_Mcount_s_cnt_cy_9_rt_717
    );
  sig_controller_adc_ctr_Mcount_s_cnt_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_adc_ctr_s_cnt(8),
      O => sig_controller_adc_ctr_Mcount_s_cnt_cy_8_rt_715
    );
  sig_controller_adc_ctr_Mcount_s_cnt_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_adc_ctr_s_cnt(7),
      O => sig_controller_adc_ctr_Mcount_s_cnt_cy_7_rt_713
    );
  sig_controller_adc_ctr_Mcount_s_cnt_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_adc_ctr_s_cnt(6),
      O => sig_controller_adc_ctr_Mcount_s_cnt_cy_6_rt_711
    );
  sig_controller_adc_ctr_Mcount_s_cnt_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_adc_ctr_s_cnt(5),
      O => sig_controller_adc_ctr_Mcount_s_cnt_cy_5_rt_709
    );
  sig_controller_adc_ctr_Mcount_s_cnt_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_adc_ctr_s_cnt(4),
      O => sig_controller_adc_ctr_Mcount_s_cnt_cy_4_rt_707
    );
  sig_controller_adc_ctr_Mcount_s_cnt_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_adc_ctr_s_cnt(3),
      O => sig_controller_adc_ctr_Mcount_s_cnt_cy_3_rt_705
    );
  sig_controller_adc_ctr_Mcount_s_cnt_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_adc_ctr_s_cnt(2),
      O => sig_controller_adc_ctr_Mcount_s_cnt_cy_2_rt_703
    );
  sig_controller_adc_ctr_Mcount_s_cnt_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sig_controller_adc_ctr_s_cnt(1),
      O => sig_controller_adc_ctr_Mcount_s_cnt_cy_1_rt_701
    );
  clk_gen_CNT0_Madd_s_CNT3_1_xor_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_gen_CNT0_s_REG(15),
      O => clk_gen_CNT0_Madd_s_CNT3_1_xor_15_rt_116
    );
  clk_gen_CNT0_s_CNT3_U_mux0000_1_1141 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => clk_gen_CNT0_N3,
      I1 => clk_gen_CNT0_s_CNT3_1(1),
      I2 => clk_gen_CNT0_s_CNT3_U(0),
      I3 => N79,
      O => clk_gen_CNT0_s_CNT3_U_mux0000_1_114
    );
  clk_gen_CNT0_s_CNT3_U_mux0000_3_1141 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => N81,
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
  clk_gen_CNT0_s_CNT3_D_mux0004_9_3 : LUT4
    generic map(
      INIT => X"EAC0"
    )
    port map (
      I0 => clk_gen_CNT0_s_CNT3_2(6),
      I1 => clk_gen_CNT0_N8,
      I2 => clk_gen_CNT0_s_CNT3_D(5),
      I3 => N86,
      O => clk_gen_CNT0_s_CNT3_D_mux0004_9_3_404
    );
  clk_gen_CNT0_s_CNT3_D_mux0004_8_3 : LUT4
    generic map(
      INIT => X"EAC0"
    )
    port map (
      I0 => clk_gen_CNT0_s_CNT3_2(7),
      I1 => clk_gen_CNT0_N8,
      I2 => clk_gen_CNT0_s_CNT3_D(6),
      I3 => clk_gen_CNT0_s_CNT3_D_mux0004_13_11_378,
      O => clk_gen_CNT0_s_CNT3_D_mux0004_8_3_402
    );
  clk_gen_CNT0_s_CNT3_D_mux0004_6_3 : LUT4
    generic map(
      INIT => X"EAC0"
    )
    port map (
      I0 => clk_gen_CNT0_s_CNT3_2(9),
      I1 => clk_gen_CNT0_N8,
      I2 => clk_gen_CNT0_s_CNT3_D(8),
      I3 => clk_gen_CNT0_s_CNT3_D_mux0004_13_11_378,
      O => clk_gen_CNT0_s_CNT3_D_mux0004_6_3_398
    );
  clk_gen_CNT0_s_CNT3_D_mux0004_5_3 : LUT4
    generic map(
      INIT => X"EAC0"
    )
    port map (
      I0 => clk_gen_CNT0_s_CNT3_2(10),
      I1 => clk_gen_CNT0_N8,
      I2 => clk_gen_CNT0_s_CNT3_D(9),
      I3 => clk_gen_CNT0_s_CNT3_D_mux0004_13_11_378,
      O => clk_gen_CNT0_s_CNT3_D_mux0004_5_3_396
    );
  clk_gen_CNT0_s_CNT3_D_mux0004_4_3 : LUT4
    generic map(
      INIT => X"EAC0"
    )
    port map (
      I0 => clk_gen_CNT0_s_CNT3_2(11),
      I1 => clk_gen_CNT0_N8,
      I2 => clk_gen_CNT0_s_CNT3_D(10),
      I3 => clk_gen_CNT0_s_CNT3_D_mux0004_13_11_378,
      O => clk_gen_CNT0_s_CNT3_D_mux0004_4_3_394
    );
  clk_gen_CNT0_s_CNT3_D_mux0004_3_3 : LUT4
    generic map(
      INIT => X"EAC0"
    )
    port map (
      I0 => clk_gen_CNT0_s_CNT3_2(12),
      I1 => clk_gen_CNT0_N8,
      I2 => clk_gen_CNT0_s_CNT3_D(11),
      I3 => clk_gen_CNT0_s_CNT3_D_mux0004_13_11_378,
      O => clk_gen_CNT0_s_CNT3_D_mux0004_3_3_392
    );
  clk_gen_CNT0_s_CNT3_D_mux0004_2_3 : LUT4
    generic map(
      INIT => X"EAC0"
    )
    port map (
      I0 => clk_gen_CNT0_s_CNT3_2(13),
      I1 => clk_gen_CNT0_N8,
      I2 => clk_gen_CNT0_s_CNT3_D(12),
      I3 => clk_gen_CNT0_s_CNT3_D_mux0004_13_11_378,
      O => clk_gen_CNT0_s_CNT3_D_mux0004_2_3_390
    );
  clk_gen_CNT0_s_CNT3_D_mux0004_1_3 : LUT4
    generic map(
      INIT => X"EAC0"
    )
    port map (
      I0 => clk_gen_CNT0_s_CNT3_2(14),
      I1 => clk_gen_CNT0_N8,
      I2 => clk_gen_CNT0_s_CNT3_D(13),
      I3 => clk_gen_CNT0_s_CNT3_D_mux0004_13_11_378,
      O => clk_gen_CNT0_s_CNT3_D_mux0004_1_3_388
    );
  clk_gen_CNT0_s_CNT3_D_mux0004_12_3 : LUT4
    generic map(
      INIT => X"EAC0"
    )
    port map (
      I0 => clk_gen_CNT0_s_CNT3_2(3),
      I1 => clk_gen_CNT0_N8,
      I2 => clk_gen_CNT0_s_CNT3_D(2),
      I3 => clk_gen_CNT0_s_CNT3_D_mux0004_13_11_378,
      O => clk_gen_CNT0_s_CNT3_D_mux0004_12_3_376
    );
  clk_gen_CNT0_s_CNT3_D_mux0004_11_3 : LUT4
    generic map(
      INIT => X"EAC0"
    )
    port map (
      I0 => clk_gen_CNT0_s_CNT3_2(4),
      I1 => clk_gen_CNT0_N8,
      I2 => clk_gen_CNT0_s_CNT3_D(3),
      I3 => clk_gen_CNT0_s_CNT3_D_mux0004_13_11_378,
      O => clk_gen_CNT0_s_CNT3_D_mux0004_11_3_374
    );
  clk_gen_CNT0_s_CNT3_D_mux0004_10_3 : LUT4
    generic map(
      INIT => X"EAC0"
    )
    port map (
      I0 => clk_gen_CNT0_s_CNT3_2(5),
      I1 => clk_gen_CNT0_N8,
      I2 => clk_gen_CNT0_s_CNT3_D(4),
      I3 => clk_gen_CNT0_s_CNT3_D_mux0004_13_11_378,
      O => clk_gen_CNT0_s_CNT3_D_mux0004_10_3_372
    );
  clk_gen_CNT0_s_CNT3_D_mux0004_0_3 : LUT4
    generic map(
      INIT => X"EAC0"
    )
    port map (
      I0 => clk_gen_CNT0_s_CNT3_2(15),
      I1 => clk_gen_CNT0_N8,
      I2 => clk_gen_CNT0_s_CNT3_D(14),
      I3 => clk_gen_CNT0_s_CNT3_D_mux0004_13_11_378,
      O => clk_gen_CNT0_s_CNT3_D_mux0004_0_3_370
    );
  clk_gen_CNT0_s_CNT3_D_mux0004_13_221 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => clk_gen_CNT0_s_CNT3_D_addsub0000(1),
      I1 => clk_gen_CNT0_N7,
      I2 => N45,
      O => clk_gen_CNT0_s_CNT3_D_mux0004_13_22
    );
  clk_gen_CNT0_s_CNT3_U_mux0000_2_114_SW0 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => clk_gen_CNT0_s_mode_491,
      I1 => clk_gen_CNT0_s_REG(0),
      O => N47
    );
  sig_controller_t_ps_FSM_FFd11_In11_SW0 : LUT4
    generic map(
      INIT => X"D1FF"
    )
    port map (
      I0 => sig_controller_t_prevmode(0),
      I1 => s_OE_b_642,
      I2 => sig_controller_t_prevmode(1),
      I3 => sig_controller_t_ps_FSM_FFd13_827,
      O => N49
    );
  sig_controller_s_clr0_and00021 : LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => N49,
      I1 => s_mode_addr(2),
      I2 => s_mode_addr(1),
      I3 => N76,
      O => sig_controller_s_clr0
    );
  clk_gen_CNT0_s_CNT3_U_mux0000_10_111_SW0 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => m_reset_b_IBUF_607,
      I1 => clk_gen_CNT0_s_mode_491,
      O => N51
    );
  sig_controller_t_prevmode_mux0000_3_1_SW1 : LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd13_827,
      I1 => N75,
      O => N53
    );
  sig_controller_t_prevmode_mux0000_3_1_SW2 : LUT3
    generic map(
      INIT => X"D1"
    )
    port map (
      I0 => N25,
      I1 => sig_controller_t_ps_FSM_FFd13_827,
      I2 => N84,
      O => N54
    );
  addr_decode_m_mode_addr_1_5_SW0 : LUT4
    generic map(
      INIT => X"FFF7"
    )
    port map (
      I0 => s_address(0),
      I1 => s_address(7),
      I2 => s_address(1),
      I3 => s_address(5),
      O => N56
    );
  addr_decode_m_mode_addr_2_40_SW0 : LUT3
    generic map(
      INIT => X"1E"
    )
    port map (
      I0 => s_address(1),
      I1 => s_address(2),
      I2 => s_address(5),
      O => N58
    );
  clk_gen_CNT0_s_CNT3_D_mux0004_7_191 : LUT4
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => N72,
      I1 => clk_gen_CNT0_s_CNT3_D_addsub0000(7),
      I2 => clk_gen_CNT0_s_CNT3_D_cmp_eq0000,
      I3 => clk_gen_CNT0_s_CNT3_D_mux0004_7_17_400,
      O => clk_gen_CNT0_s_CNT3_D_mux0004_7_19
    );
  sig_controller_t_ps_cmp_eq00001_SW0 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd3_835,
      I1 => sig_controller_t_prevmode(0),
      O => N60
    );
  sig_controller_s_enp0_or00001 : LUT4
    generic map(
      INIT => X"BA8A"
    )
    port map (
      I0 => N60,
      I1 => s_mode_addr(1),
      I2 => s_mode_addr(0),
      I3 => N61,
      O => sig_controller_s_enp0
    );
  clk_gen_CNT0_s_CNT3_U_mux0000_8_1_SW0_SW0 : LUT4
    generic map(
      INIT => X"EAC0"
    )
    port map (
      I0 => clk_gen_CNT0_s_CNT3_1(8),
      I1 => clk_gen_CNT0_s_CNT3_U(7),
      I2 => N85,
      I3 => clk_gen_CNT0_N5,
      O => N63
    );
  clk_gen_CNT0_s_CNT3_U_mux0000_8_11 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => clk_gen_CNT0_s_CNT3_U_share0000(7),
      I1 => clk_gen_CNT0_N15,
      I2 => N63,
      O => clk_gen_CNT0_s_CNT3_U_mux0000_8_11_455
    );
  clk_gen_CNT0_s_CNT3_D_mux0004_14_711 : MUXF5
    port map (
      I0 => N65,
      I1 => N66,
      S => clk_gen_CNT0_s_REG(0),
      O => clk_gen_CNT0_s_CNT3_D_mux0004_14_71
    );
  clk_gen_CNT0_s_CNT3_D_mux0004_14_711_F : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => m_reset_b_IBUF_607,
      I1 => clk_gen_CNT0_s_mode_491,
      I2 => clk_gen_CNT0_s_CNT3_UD_cmp_eq0000,
      I3 => clk_gen_CNT0_s_REG(1),
      O => N65
    );
  clk_gen_CNT0_s_CNT3_D_mux0004_14_711_G : LUT4
    generic map(
      INIT => X"DDD5"
    )
    port map (
      I0 => m_reset_b_IBUF_607,
      I1 => clk_gen_CNT0_s_mode_491,
      I2 => clk_gen_CNT0_s_CNT3_D_mux0004_14_0_381,
      I3 => clk_gen_CNT0_s_CNT3_D_mux0004_14_3_383,
      O => N66
    );
  sig_controller_t_ps_FSM_FFd14_In11 : LUT4
    generic map(
      INIT => X"FFAE"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd3_835,
      I1 => sig_controller_t_ps_FSM_FFd14_In3_831,
      I2 => s_cmd_data_652,
      I3 => sig_controller_t_ps_FSM_FFd1_820,
      O => sig_controller_t_ps_FSM_FFd14_In11_830
    );
  clk_gen_CNT0_s_CNT3_UD_mux00031 : LUT4
    generic map(
      INIT => X"44E4"
    )
    port map (
      I0 => clk_gen_CNT0_s_mode_491,
      I1 => clk_gen_CNT0_s_CNT3_UD_406,
      I2 => clk_gen_CNT0_s_CNT3_D_cmp_eq0000,
      I3 => clk_gen_CNT0_s_CNT3_UD_cmp_eq0000,
      O => clk_gen_CNT0_s_CNT3_UD_mux0003
    );
  clk_gen_CNT0_s_CNT3_D_mux0004_13_8 : LUT4
    generic map(
      INIT => X"085D"
    )
    port map (
      I0 => m_reset_b_IBUF_607,
      I1 => clk_gen_CNT0_s_CNT3_D(1),
      I2 => clk_gen_CNT0_s_mode_491,
      I3 => clk_gen_CNT0_s_REG(0),
      O => clk_gen_CNT0_s_CNT3_D_mux0004_13_8_380
    );
  clk_gen_CNT0_m_cw_inv1 : LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      I0 => clk_gen_s_addr(0),
      I1 => clk_gen_s_addr(1),
      I2 => clk_gen_s_cw0_and000012_508,
      O => clk_gen_CNT0_m_cw_inv
    );
  m_TP_0_OBUF_BUFG : BUFG
    port map (
      I => m_TP_0_OBUF1,
      O => m_TP_0_OBUF_563
    );
  m_TP_1_OBUF_BUFG : BUFG
    port map (
      I => m_TP_1_OBUF1,
      O => m_TP_1_OBUF_565
    );
  clk_gen_CNT0_s_wr_BUFG : BUFG
    port map (
      I => clk_gen_CNT0_s_wr1_498,
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
  sig_controller_adc_ctr_Mcount_s_cnt_lut_0_INV_0 : INV
    port map (
      I => sig_controller_adc_ctr_s_cnt(0),
      O => sig_controller_adc_ctr_Mcount_s_cnt_lut(0)
    );
  clk_gen_CNT0_s_CNT2_and00001_INV_0 : INV
    port map (
      I => clk_gen_CNT0_s_mode_491,
      O => clk_gen_CNT0_s_CNT2_and0000
    );
  clk_gen_CNT0_m_clk_inv1_INV_0 : INV
    port map (
      I => m_TP_0_OBUF_563,
      O => clk_gen_CNT0_m_clk_inv
    );
  Mtrien_inlatch_dout_mux00001_INV_0 : INV
    port map (
      I => s_OE_b_642,
      O => Mtrien_inlatch_dout_mux0000
    );
  clk_gen_not00001_INV_0 : INV
    port map (
      I => m_reset_b_IBUF_607,
      O => clk_gen_not0000
    );
  clk_gen_CNT0_s_CNT3_U_mux0000_2_14 : MUXF5
    port map (
      I0 => N67,
      I1 => N68,
      S => clk_gen_CNT0_s_CNT3_UD_cmp_eq0000,
      O => clk_gen_CNT0_s_CNT3_U_mux0000_2_14_443
    );
  clk_gen_CNT0_s_CNT3_U_mux0000_2_14_F : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => clk_gen_CNT0_s_mode_491,
      I1 => clk_gen_CNT0_s_CNT3_D_cmp_eq0000,
      I2 => clk_gen_CNT0_s_CNT3_U_share0000(1),
      O => N67
    );
  clk_gen_CNT0_s_CNT3_U_mux0000_2_14_G : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => clk_gen_CNT0_s_CNT3_D_cmp_eq0000,
      I1 => clk_gen_CNT0_s_REG(0),
      I2 => clk_gen_CNT0_s_mode_491,
      I3 => clk_gen_CNT0_s_CNT3_1(2),
      O => N68
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
      S => clk_gen_s_wr_b_518,
      O => clk_gen_CNT0_s_wr1_498
    );
  clk_gen_CNT0_s_CNT3_D_mux0004_14_481 : LUT4
    generic map(
      INIT => X"0C08"
    )
    port map (
      I0 => clk_gen_CNT0_s_CNT3_D_cmp_eq0000,
      I1 => m_reset_b_IBUF_607,
      I2 => clk_gen_CNT0_s_CNT3_UD_cmp_eq0000,
      I3 => clk_gen_CNT0_s_CNT3_D_addsub0000(0),
      O => clk_gen_CNT0_s_CNT3_D_mux0004_14_481_385
    );
  clk_gen_CNT0_s_CNT3_D_mux0004_14_482 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => clk_gen_CNT0_s_CNT3_D(0),
      I1 => m_reset_b_IBUF_607,
      O => clk_gen_CNT0_s_CNT3_D_mux0004_14_482_386
    );
  clk_gen_CNT0_s_CNT3_D_mux0004_14_48_f5 : MUXF5
    port map (
      I0 => clk_gen_CNT0_s_CNT3_D_mux0004_14_482_386,
      I1 => clk_gen_CNT0_s_CNT3_D_mux0004_14_481_385,
      S => clk_gen_CNT0_s_mode_491,
      O => clk_gen_CNT0_s_CNT3_D_mux0004_14_48
    );
  clk_gen_not0001 : LUT4_D
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => s_address(5),
      I1 => s_address(4),
      I2 => s_address(7),
      I3 => N13,
      LO => N69,
      O => clk_gen_not0001_532
    );
  clk_gen_CNT0_s_CNT2_cmp_eq000075 : LUT4_D
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => clk_gen_CNT0_s_CNT2_cmp_eq000011_301,
      I1 => clk_gen_CNT0_s_CNT2_cmp_eq000024_302,
      I2 => clk_gen_CNT0_s_CNT2_cmp_eq000048_303,
      I3 => clk_gen_CNT0_s_CNT2_cmp_eq000061_304,
      LO => N70,
      O => clk_gen_CNT0_s_CNT2_cmp_eq0000
    );
  clk_gen_CNT0_s_CNT3_U_mux0000_2_19 : LUT3_L
    generic map(
      INIT => X"D5"
    )
    port map (
      I0 => m_reset_b_IBUF_607,
      I1 => clk_gen_CNT0_s_REG(2),
      I2 => clk_gen_CNT0_N16,
      LO => clk_gen_CNT0_s_CNT3_U_mux0000_2_19_444
    );
  clk_gen_CNT0_s_CNT3_U_mux0000_2_114 : LUT4_D
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => clk_gen_CNT0_s_mode_491,
      I1 => clk_gen_CNT0_s_REG(0),
      I2 => clk_gen_CNT0_s_CNT3_D_cmp_eq0000,
      I3 => clk_gen_CNT0_s_CNT3_UD_cmp_eq0000,
      LO => N71,
      O => clk_gen_CNT0_N5
    );
  clk_gen_CNT0_s_CNT3_U_mux0000_2_122 : LUT3_L
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => clk_gen_CNT0_s_mode_491,
      I1 => clk_gen_CNT0_s_CNT3_D_cmp_eq0000,
      I2 => clk_gen_CNT0_s_CNT3_UD_cmp_eq0000,
      LO => clk_gen_CNT0_N15
    );
  clk_gen_CNT0_s_CNT3_U_mux0000_10_111 : LUT3_D
    generic map(
      INIT => X"8C"
    )
    port map (
      I0 => clk_gen_CNT0_s_REG(0),
      I1 => clk_gen_CNT0_s_mode_491,
      I2 => clk_gen_CNT0_s_CNT3_UD_cmp_eq0000,
      LO => N72,
      O => clk_gen_CNT0_N01
    );
  clk_gen_CNT0_s_CNT3_D_mux0004_7_110 : LUT3_D
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => clk_gen_CNT0_s_REG(0),
      I1 => clk_gen_CNT0_s_mode_491,
      I2 => clk_gen_CNT0_s_CNT3_UD_cmp_eq0000,
      LO => N73,
      O => clk_gen_CNT0_N16
    );
  sig_controller_t_ps_FSM_FFd14_In3 : LUT3_L
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd14_829,
      I1 => sig_controller_t_ps_FSM_FFd5_838,
      I2 => sig_controller_t_ps_FSM_FFd7_842,
      LO => sig_controller_t_ps_FSM_FFd14_In3_831
    );
  clk_gen_CNT0_s_CNT3_UD_cmp_eq000012 : LUT4_L
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => clk_gen_CNT0_s_CNT3_U(1),
      I1 => clk_gen_CNT0_s_CNT3_U(14),
      I2 => clk_gen_CNT0_s_CNT3_U(2),
      I3 => clk_gen_CNT0_s_CNT3_U(3),
      LO => clk_gen_CNT0_s_CNT3_UD_cmp_eq000012_408
    );
  clk_gen_CNT0_s_CNT3_D_cmp_eq00007 : LUT3_L
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => clk_gen_CNT0_s_CNT3_D(0),
      I1 => clk_gen_CNT0_s_CNT3_D(14),
      I2 => clk_gen_CNT0_s_CNT3_D(6),
      LO => clk_gen_CNT0_s_CNT3_D_cmp_eq00007_369
    );
  addr_decode_m_mode_addr_1_21_SW0 : LUT2_L
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => s_address(2),
      I1 => s_address(6),
      LO => N23
    );
  sig_controller_t_ps_cmp_eq00011 : LUT3_D
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => s_mode_addr(2),
      I1 => s_mode_addr(1),
      I2 => s_mode_addr(0),
      LO => N74,
      O => sig_controller_t_ps_cmp_eq0001
    );
  sig_controller_t_prevmode_mux0000_3_1_SW0 : LUT4_D
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd11_823,
      I1 => sig_controller_t_ps_FSM_FFd12_825,
      I2 => sig_controller_t_ps_FSM_FFd9_846,
      I3 => sig_controller_t_ps_FSM_FFd10_821,
      LO => N75,
      O => N25
    );
  addr_decode_m_mode_addr_0_76 : LUT4_D
    generic map(
      INIT => X"F080"
    )
    port map (
      I0 => addr_decode_m_mode_addr_0_31_76,
      I1 => addr_decode_m_mode_addr_0_34_77,
      I2 => addr_decode_m_mode_addr_0_73_78,
      I3 => N5,
      LO => N76,
      O => s_mode_addr(0)
    );
  sig_controller_t_ps_FSM_FFd11_In11 : LUT4_D
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd13_827,
      I1 => s_mode_addr(2),
      I2 => s_mode_addr(1),
      I3 => s_mode_addr(0),
      LO => N77,
      O => sig_controller_N4
    );
  clk_gen_CNT0_s_CNT3_D_mux0004_13_221_SW0 : LUT4_L
    generic map(
      INIT => X"EAC0"
    )
    port map (
      I0 => clk_gen_CNT0_s_CNT3_2(2),
      I1 => clk_gen_CNT0_s_REG(2),
      I2 => clk_gen_CNT0_s_CNT3_D_mux0004_14_18_382,
      I3 => clk_gen_CNT0_s_CNT3_D_mux0004_13_11_378,
      LO => N45
    );
  clk_gen_CNT0_s_CNT3_U_mux0000_10_141 : LUT4_D
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => m_reset_b_IBUF_607,
      I1 => clk_gen_CNT0_s_mode_491,
      I2 => clk_gen_CNT0_s_CNT3_D_cmp_eq0000,
      I3 => clk_gen_CNT0_s_CNT3_UD_cmp_eq0000,
      LO => N78,
      O => clk_gen_CNT0_N6
    );
  clk_gen_CNT0_s_CNT3_U_mux0000_10_151 : LUT4_D
    generic map(
      INIT => X"4C44"
    )
    port map (
      I0 => clk_gen_CNT0_s_mode_491,
      I1 => m_reset_b_IBUF_607,
      I2 => clk_gen_CNT0_s_CNT3_D_cmp_eq0000,
      I3 => clk_gen_CNT0_N01,
      LO => N79,
      O => clk_gen_CNT0_N9
    );
  clk_gen_CNT0_s_CNT3_D_mux0004_14_18 : LUT4_D
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => clk_gen_CNT0_s_REG(0),
      I1 => clk_gen_CNT0_s_mode_491,
      I2 => m_reset_b_IBUF_607,
      I3 => clk_gen_CNT0_s_CNT3_UD_cmp_eq0000,
      LO => N80,
      O => clk_gen_CNT0_N4
    );
  clk_gen_CNT0_s_CNT3_D_mux0004_13_11 : LUT4_D
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => N47,
      I1 => m_reset_b_IBUF_607,
      I2 => clk_gen_CNT0_s_CNT3_D_cmp_eq0000,
      I3 => clk_gen_CNT0_s_CNT3_UD_cmp_eq0000,
      LO => N81,
      O => clk_gen_CNT0_N3
    );
  clk_gen_CNT0_s_CNT3_D_mux0004_13_21 : LUT4_D
    generic map(
      INIT => X"0045"
    )
    port map (
      I0 => N51,
      I1 => clk_gen_CNT0_s_REG(0),
      I2 => clk_gen_CNT0_s_CNT3_UD_cmp_eq0000,
      I3 => clk_gen_CNT0_s_CNT3_D_cmp_eq0000,
      LO => N82,
      O => clk_gen_CNT0_N7
    );
  sig_controller_t_prevmode_mux0000_3_1 : LUT4_D
    generic map(
      INIT => X"417D"
    )
    port map (
      I0 => N53,
      I1 => s_mode_addr(1),
      I2 => s_mode_addr(0),
      I3 => N54,
      LO => N83,
      O => sig_controller_N0
    );
  addr_decode_m_mode_addr_1_5 : LUT4_L
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => s_address(6),
      I1 => s_address(4),
      I2 => s_address(2),
      I3 => N56,
      LO => addr_decode_m_mode_addr_1_5_80
    );
  addr_decode_m_mode_addr_2_40 : LUT4_D
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => s_address(0),
      I1 => s_address(3),
      I2 => addr_decode_m_mode_addr_2_26_83,
      I3 => N58,
      LO => N84,
      O => s_mode_addr(2)
    );
  clk_gen_CNT0_s_CNT3_U_mux0000_10_131 : LUT4_D
    generic map(
      INIT => X"55DF"
    )
    port map (
      I0 => clk_gen_CNT0_s_mode_491,
      I1 => clk_gen_CNT0_s_REG(0),
      I2 => clk_gen_CNT0_s_CNT3_UD_cmp_eq0000,
      I3 => clk_gen_CNT0_s_CNT3_D_cmp_eq0000,
      LO => N85,
      O => clk_gen_CNT0_N2
    );
  sig_controller_t_ps_cmp_eq00001_SW1 : LUT4_L
    generic map(
      INIT => X"88F8"
    )
    port map (
      I0 => sig_controller_t_ps_FSM_FFd3_835,
      I1 => sig_controller_t_prevmode(0),
      I2 => sig_controller_t_ps_FSM_FFd8_844,
      I3 => s_mode_addr(2),
      LO => N61
    );
  clk_gen_CNT0_s_CNT3_D_mux0004_13_11_1 : LUT4_D
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => N47,
      I1 => m_reset_b_IBUF_607,
      I2 => clk_gen_CNT0_s_CNT3_D_cmp_eq0000,
      I3 => clk_gen_CNT0_s_CNT3_UD_cmp_eq0000,
      LO => N86,
      O => clk_gen_CNT0_s_CNT3_D_mux0004_13_11_378
    );
  clk_gen_CNT0_s_CNT3_D_mux0004_14_18_1 : LUT4_D
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => clk_gen_CNT0_s_REG(0),
      I1 => clk_gen_CNT0_s_mode_491,
      I2 => m_reset_b_IBUF_607,
      I3 => clk_gen_CNT0_s_CNT3_UD_cmp_eq0000,
      LO => N87,
      O => clk_gen_CNT0_s_CNT3_D_mux0004_14_18_382
    );
  sram_0 : sram2k
    port map (
      clka => m_TP_0_OBUF_563,
      ena => s_ena0,
      clkb => m_TP_0_OBUF_563,
      enb => s_enb0,
      wea(0) => sig_controller_t_ps_FSM_FFd8_844,
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
      dina(7) => ram0_mux_dout(7),
      dina(6) => ram0_mux_dout(6),
      dina(5) => ram0_mux_dout(5),
      dina(4) => ram0_mux_dout(4),
      dina(3) => ram0_mux_dout(3),
      dina(2) => ram0_mux_dout(2),
      dina(1) => ram0_mux_dout(1),
      dina(0) => ram0_mux_dout(0),
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
      clka => m_TP_0_OBUF_563,
      ena => s_ena1,
      clkb => m_TP_0_OBUF_563,
      enb => s_enb1,
      wea(0) => sig_controller_t_ps_FSM_FFd6_840,
      addra(10) => avg_module_Maccum_s_data_cy(0),
      addra(9) => avg_module_Maccum_s_data_cy(0),
      addra(8) => avg_module_Maccum_s_data_cy(0),
      addra(7) => avg_module_Maccum_s_data_cy(0),
      addra(6) => avg_module_Maccum_s_data_cy(0),
      addra(5) => avg_module_Maccum_s_data_cy(0),
      addra(4) => avg_module_Maccum_s_data_cy(0),
      addra(3) => avg_module_Maccum_s_data_cy(0),
      addra(2) => avg_module_Maccum_s_data_cy(0),
      addra(1) => avg_module_Maccum_s_data_cy(0),
      addra(0) => avg_module_Maccum_s_data_cy(0),
      dina(7) => ram1_mux_dout(7),
      dina(6) => ram1_mux_dout(6),
      dina(5) => ram1_mux_dout(5),
      dina(4) => ram1_mux_dout(4),
      dina(3) => ram1_mux_dout(3),
      dina(2) => ram1_mux_dout(2),
      dina(1) => ram1_mux_dout(1),
      dina(0) => ram1_mux_dout(0),
      addrb(10) => avg_module_Maccum_s_data_cy(0),
      addrb(9) => avg_module_Maccum_s_data_cy(0),
      addrb(8) => avg_module_Maccum_s_data_cy(0),
      addrb(7) => avg_module_Maccum_s_data_cy(0),
      addrb(6) => avg_module_Maccum_s_data_cy(0),
      addrb(5) => avg_module_Maccum_s_data_cy(0),
      addrb(4) => avg_module_Maccum_s_data_cy(0),
      addrb(3) => avg_module_Maccum_s_data_cy(0),
      addrb(2) => avg_module_Maccum_s_data_cy(0),
      addrb(1) => avg_module_Maccum_s_data_cy(0),
      addrb(0) => avg_module_Maccum_s_data_cy(0),
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
      clka => m_TP_0_OBUF_563,
      ena => avg_module_Maccum_s_data_cy(0),
      clkb => m_TP_0_OBUF_563,
      enb => avg_module_Maccum_s_data_cy(0),
      wea(0) => avg_module_Maccum_s_data_cy(0),
      addra(10) => avg_module_Maccum_s_data_cy(0),
      addra(9) => avg_module_Maccum_s_data_cy(0),
      addra(8) => avg_module_Maccum_s_data_cy(0),
      addra(7) => avg_module_Maccum_s_data_cy(0),
      addra(6) => avg_module_Maccum_s_data_cy(0),
      addra(5) => avg_module_Maccum_s_data_cy(0),
      addra(4) => avg_module_Maccum_s_data_cy(0),
      addra(3) => avg_module_Maccum_s_data_cy(0),
      addra(2) => avg_module_Maccum_s_data_cy(0),
      addra(1) => avg_module_Maccum_s_data_cy(0),
      addra(0) => avg_module_Maccum_s_data_cy(0),
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
      doutb(7) => NLW_sram_DA_doutb_7_UNCONNECTED,
      doutb(6) => NLW_sram_DA_doutb_6_UNCONNECTED,
      doutb(5) => NLW_sram_DA_doutb_5_UNCONNECTED,
      doutb(4) => NLW_sram_DA_doutb_4_UNCONNECTED,
      doutb(3) => NLW_sram_DA_doutb_3_UNCONNECTED,
      doutb(2) => NLW_sram_DA_doutb_2_UNCONNECTED,
      doutb(1) => NLW_sram_DA_doutb_1_UNCONNECTED,
      doutb(0) => NLW_sram_DA_doutb_0_UNCONNECTED
    );
  sram_AD : sram2k
    port map (
      clka => m_TP_0_OBUF_563,
      ena => avg_module_Maccum_s_data_cy(0),
      clkb => m_TP_1_OBUF_565,
      enb => avg_module_Maccum_s_data_cy(0),
      wea(0) => avg_module_cns1_Mcompar_s_div_comp_cmp_ge0000_cy(0),
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
      addrb(10) => avg_module_Maccum_s_data_cy(0),
      addrb(9) => avg_module_Maccum_s_data_cy(0),
      addrb(8) => avg_module_Maccum_s_data_cy(0),
      addrb(7) => avg_module_Maccum_s_data_cy(0),
      addrb(6) => avg_module_Maccum_s_data_cy(0),
      addrb(5) => avg_module_Maccum_s_data_cy(0),
      addrb(4) => avg_module_Maccum_s_data_cy(0),
      addrb(3) => avg_module_Maccum_s_data_cy(0),
      addrb(2) => avg_module_Maccum_s_data_cy(0),
      addrb(1) => avg_module_Maccum_s_data_cy(0),
      addrb(0) => avg_module_Maccum_s_data_cy(0),
      doutb(7) => s_doutb3(7),
      doutb(6) => s_doutb3(6),
      doutb(5) => s_doutb3(5),
      doutb(4) => s_doutb3(4),
      doutb(3) => s_doutb3(3),
      doutb(2) => s_doutb3(2),
      doutb(1) => s_doutb3(1),
      doutb(0) => s_doutb3(0)
    );

end Structure;

-- synthesis translate_on
