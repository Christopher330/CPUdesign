--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.40xd
--  \   \         Application: netgen
--  /   /         Filename: MainCPU_synthesis.vhd
-- /___/   /\     Timestamp: Fri Jul 31 16:17:17 2015
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm MainCPU -w -dir netgen/synthesis -ofmt vhdl -sim MainCPU.ngc MainCPU_synthesis.vhd 
-- Device	: xc3s500e-4-pq208
-- Input file	: MainCPU.ngc
-- Output file	: D:\CPUDesign\netgen\synthesis\MainCPU_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: MainCPU
-- Xilinx	: C:\Xilinx\14.3\ISE_DS\ISE\
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

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity MainCPU is
  port (
    clk : in STD_LOGIC := 'X'; 
    rst : in STD_LOGIC := 'X'; 
    nmreq : out STD_LOGIC; 
    nbhe : out STD_LOGIC; 
    k : in STD_LOGIC := 'X'; 
    nble : out STD_LOGIC; 
    nrd : out STD_LOGIC; 
    nwr : out STD_LOGIC; 
    dbus : inout STD_LOGIC_VECTOR ( 15 downto 0 ); 
    abus : out STD_LOGIC_VECTOR ( 15 downto 0 ); 
    a : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    b : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    s0 : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    s1 : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    s2 : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    s3 : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    s4 : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    s5 : out STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end MainCPU;

architecture Structure of MainCPU is
  signal N1 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal N105 : STD_LOGIC; 
  signal N107 : STD_LOGIC; 
  signal N109 : STD_LOGIC; 
  signal N11 : STD_LOGIC; 
  signal N111 : STD_LOGIC; 
  signal N113 : STD_LOGIC; 
  signal N115 : STD_LOGIC; 
  signal N116 : STD_LOGIC; 
  signal N117 : STD_LOGIC; 
  signal N118 : STD_LOGIC; 
  signal N119 : STD_LOGIC; 
  signal N120 : STD_LOGIC; 
  signal N121 : STD_LOGIC; 
  signal N122 : STD_LOGIC; 
  signal N123 : STD_LOGIC; 
  signal N124 : STD_LOGIC; 
  signal N125 : STD_LOGIC; 
  signal N126 : STD_LOGIC; 
  signal N127 : STD_LOGIC; 
  signal N128 : STD_LOGIC; 
  signal N129 : STD_LOGIC; 
  signal N130 : STD_LOGIC; 
  signal N14 : STD_LOGIC; 
  signal N147 : STD_LOGIC; 
  signal N148 : STD_LOGIC; 
  signal N15 : STD_LOGIC; 
  signal N150 : STD_LOGIC; 
  signal N152 : STD_LOGIC; 
  signal N154 : STD_LOGIC; 
  signal N156 : STD_LOGIC; 
  signal N157 : STD_LOGIC; 
  signal N160 : STD_LOGIC; 
  signal N162 : STD_LOGIC; 
  signal N170 : STD_LOGIC; 
  signal N172 : STD_LOGIC; 
  signal N173 : STD_LOGIC; 
  signal N174 : STD_LOGIC; 
  signal N175 : STD_LOGIC; 
  signal N176 : STD_LOGIC; 
  signal N177 : STD_LOGIC; 
  signal N178 : STD_LOGIC; 
  signal N179 : STD_LOGIC; 
  signal N180 : STD_LOGIC; 
  signal N181 : STD_LOGIC; 
  signal N182 : STD_LOGIC; 
  signal N20 : STD_LOGIC; 
  signal N22 : STD_LOGIC; 
  signal N24 : STD_LOGIC; 
  signal N26 : STD_LOGIC; 
  signal N28 : STD_LOGIC; 
  signal N3 : STD_LOGIC; 
  signal N39 : STD_LOGIC; 
  signal N46 : STD_LOGIC; 
  signal N48 : STD_LOGIC; 
  signal N5 : STD_LOGIC; 
  signal N50 : STD_LOGIC; 
  signal N52 : STD_LOGIC; 
  signal N54 : STD_LOGIC; 
  signal N56 : STD_LOGIC; 
  signal N58 : STD_LOGIC; 
  signal N60 : STD_LOGIC; 
  signal N62 : STD_LOGIC; 
  signal N64 : STD_LOGIC; 
  signal N66 : STD_LOGIC; 
  signal N68 : STD_LOGIC; 
  signal N70 : STD_LOGIC; 
  signal N72 : STD_LOGIC; 
  signal N74 : STD_LOGIC; 
  signal N76 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal N80 : STD_LOGIC; 
  signal N82 : STD_LOGIC; 
  signal N84 : STD_LOGIC; 
  signal N86 : STD_LOGIC; 
  signal N88 : STD_LOGIC; 
  signal N90 : STD_LOGIC; 
  signal N92 : STD_LOGIC; 
  signal N94 : STD_LOGIC; 
  signal N98 : STD_LOGIC; 
  signal N99 : STD_LOGIC; 
  signal RD : STD_LOGIC; 
  signal U1_temp_FSM_FFd1_99 : STD_LOGIC; 
  signal U1_temp_FSM_FFd11 : STD_LOGIC; 
  signal U1_temp_FSM_FFd2_101 : STD_LOGIC; 
  signal U1_temp_FSM_FFd21 : STD_LOGIC; 
  signal U1_temp_FSM_FFd3_103 : STD_LOGIC; 
  signal U1_temp_FSM_FFd31 : STD_LOGIC; 
  signal U1_temp_FSM_FFd4_105 : STD_LOGIC; 
  signal U1_temp_FSM_FFd4_In : STD_LOGIC; 
  signal U1_temp_FSM_FFd5_107 : STD_LOGIC; 
  signal U2_PC_temp_0_0_not0000 : STD_LOGIC; 
  signal U2_PC_temp_0_and0000 : STD_LOGIC; 
  signal U2_PC_temp_0_or0000 : STD_LOGIC; 
  signal U2_PC_temp_10_and0000 : STD_LOGIC; 
  signal U2_PC_temp_10_or0000 : STD_LOGIC; 
  signal U2_PC_temp_11_and0000 : STD_LOGIC; 
  signal U2_PC_temp_11_or0000 : STD_LOGIC; 
  signal U2_PC_temp_12_and0000 : STD_LOGIC; 
  signal U2_PC_temp_12_or0000 : STD_LOGIC; 
  signal U2_PC_temp_13_and0000 : STD_LOGIC; 
  signal U2_PC_temp_13_or0000 : STD_LOGIC; 
  signal U2_PC_temp_14_and0000 : STD_LOGIC; 
  signal U2_PC_temp_14_or0000 : STD_LOGIC; 
  signal U2_PC_temp_15_and0000 : STD_LOGIC; 
  signal U2_PC_temp_15_or0000 : STD_LOGIC; 
  signal U2_PC_temp_1_and0000 : STD_LOGIC; 
  signal U2_PC_temp_1_or0000 : STD_LOGIC; 
  signal U2_PC_temp_2_and0000 : STD_LOGIC; 
  signal U2_PC_temp_2_or0000 : STD_LOGIC; 
  signal U2_PC_temp_3_and0000 : STD_LOGIC; 
  signal U2_PC_temp_3_or0000 : STD_LOGIC; 
  signal U2_PC_temp_4_and0000 : STD_LOGIC; 
  signal U2_PC_temp_4_or0000 : STD_LOGIC; 
  signal U2_PC_temp_5_and0000 : STD_LOGIC; 
  signal U2_PC_temp_5_or0000 : STD_LOGIC; 
  signal U2_PC_temp_6_and0000 : STD_LOGIC; 
  signal U2_PC_temp_6_or0000 : STD_LOGIC; 
  signal U2_PC_temp_7_and0000 : STD_LOGIC; 
  signal U2_PC_temp_7_or0000 : STD_LOGIC; 
  signal U2_PC_temp_8_and0000 : STD_LOGIC; 
  signal U2_PC_temp_8_or0000 : STD_LOGIC; 
  signal U2_PC_temp_9_and0000 : STD_LOGIC; 
  signal U2_PC_temp_9_or0000 : STD_LOGIC; 
  signal U2_PC_temp_Madd_add0000_cy_10_rt_175 : STD_LOGIC; 
  signal U2_PC_temp_Madd_add0000_cy_11_rt_177 : STD_LOGIC; 
  signal U2_PC_temp_Madd_add0000_cy_12_rt_179 : STD_LOGIC; 
  signal U2_PC_temp_Madd_add0000_cy_13_rt_181 : STD_LOGIC; 
  signal U2_PC_temp_Madd_add0000_cy_14_rt_183 : STD_LOGIC; 
  signal U2_PC_temp_Madd_add0000_cy_1_rt_185 : STD_LOGIC; 
  signal U2_PC_temp_Madd_add0000_cy_2_rt_187 : STD_LOGIC; 
  signal U2_PC_temp_Madd_add0000_cy_3_rt_189 : STD_LOGIC; 
  signal U2_PC_temp_Madd_add0000_cy_4_rt_191 : STD_LOGIC; 
  signal U2_PC_temp_Madd_add0000_cy_5_rt_193 : STD_LOGIC; 
  signal U2_PC_temp_Madd_add0000_cy_6_rt_195 : STD_LOGIC; 
  signal U2_PC_temp_Madd_add0000_cy_7_rt_197 : STD_LOGIC; 
  signal U2_PC_temp_Madd_add0000_cy_8_rt_199 : STD_LOGIC; 
  signal U2_PC_temp_Madd_add0000_cy_9_rt_201 : STD_LOGIC; 
  signal U2_PC_temp_Madd_add0000_xor_15_rt_203 : STD_LOGIC; 
  signal U2_irreq_236 : STD_LOGIC; 
  signal U3_Cy_237 : STD_LOGIC; 
  signal U3_Cy_mux0005 : STD_LOGIC; 
  signal U3_Mmux_Reg_A_3_f5_286 : STD_LOGIC; 
  signal U3_Mmux_Reg_A_3_f51 : STD_LOGIC; 
  signal U3_Mmux_Reg_A_3_f52 : STD_LOGIC; 
  signal U3_Mmux_Reg_A_3_f53 : STD_LOGIC; 
  signal U3_Mmux_Reg_A_3_f54 : STD_LOGIC; 
  signal U3_Mmux_Reg_A_3_f55 : STD_LOGIC; 
  signal U3_Mmux_Reg_A_3_f56 : STD_LOGIC; 
  signal U3_Mmux_Reg_A_3_f57 : STD_LOGIC; 
  signal U3_Mmux_Reg_A_4_294 : STD_LOGIC; 
  signal U3_Mmux_Reg_A_41_295 : STD_LOGIC; 
  signal U3_Mmux_Reg_A_42_296 : STD_LOGIC; 
  signal U3_Mmux_Reg_A_43_297 : STD_LOGIC; 
  signal U3_Mmux_Reg_A_44_298 : STD_LOGIC; 
  signal U3_Mmux_Reg_A_45_299 : STD_LOGIC; 
  signal U3_Mmux_Reg_A_46_300 : STD_LOGIC; 
  signal U3_Mmux_Reg_A_47_301 : STD_LOGIC; 
  signal U3_Mmux_Reg_A_4_f5_302 : STD_LOGIC; 
  signal U3_Mmux_Reg_A_4_f51 : STD_LOGIC; 
  signal U3_Mmux_Reg_A_4_f52 : STD_LOGIC; 
  signal U3_Mmux_Reg_A_4_f53 : STD_LOGIC; 
  signal U3_Mmux_Reg_A_4_f54 : STD_LOGIC; 
  signal U3_Mmux_Reg_A_4_f55 : STD_LOGIC; 
  signal U3_Mmux_Reg_A_4_f56 : STD_LOGIC; 
  signal U3_Mmux_Reg_A_4_f57 : STD_LOGIC; 
  signal U3_Mmux_Reg_A_5_310 : STD_LOGIC; 
  signal U3_Mmux_Reg_A_51_311 : STD_LOGIC; 
  signal U3_Mmux_Reg_A_510_312 : STD_LOGIC; 
  signal U3_Mmux_Reg_A_511_313 : STD_LOGIC; 
  signal U3_Mmux_Reg_A_512_314 : STD_LOGIC; 
  signal U3_Mmux_Reg_A_513_315 : STD_LOGIC; 
  signal U3_Mmux_Reg_A_514_316 : STD_LOGIC; 
  signal U3_Mmux_Reg_A_515_317 : STD_LOGIC; 
  signal U3_Mmux_Reg_A_52_318 : STD_LOGIC; 
  signal U3_Mmux_Reg_A_53_319 : STD_LOGIC; 
  signal U3_Mmux_Reg_A_54_320 : STD_LOGIC; 
  signal U3_Mmux_Reg_A_55_321 : STD_LOGIC; 
  signal U3_Mmux_Reg_A_56_322 : STD_LOGIC; 
  signal U3_Mmux_Reg_A_57_323 : STD_LOGIC; 
  signal U3_Mmux_Reg_A_58_324 : STD_LOGIC; 
  signal U3_Mmux_Reg_A_59_325 : STD_LOGIC; 
  signal U3_Mmux_Reg_A_6_326 : STD_LOGIC; 
  signal U3_Mmux_Reg_A_61_327 : STD_LOGIC; 
  signal U3_Mmux_Reg_A_62_328 : STD_LOGIC; 
  signal U3_Mmux_Reg_A_63_329 : STD_LOGIC; 
  signal U3_Mmux_Reg_A_64_330 : STD_LOGIC; 
  signal U3_Mmux_Reg_A_65_331 : STD_LOGIC; 
  signal U3_Mmux_Reg_A_66_332 : STD_LOGIC; 
  signal U3_Mmux_Reg_A_67_333 : STD_LOGIC; 
  signal U3_Mmux_Reg_B_3_f5_334 : STD_LOGIC; 
  signal U3_Mmux_Reg_B_3_f51 : STD_LOGIC; 
  signal U3_Mmux_Reg_B_3_f52 : STD_LOGIC; 
  signal U3_Mmux_Reg_B_3_f53 : STD_LOGIC; 
  signal U3_Mmux_Reg_B_3_f54 : STD_LOGIC; 
  signal U3_Mmux_Reg_B_3_f55 : STD_LOGIC; 
  signal U3_Mmux_Reg_B_3_f56 : STD_LOGIC; 
  signal U3_Mmux_Reg_B_3_f57 : STD_LOGIC; 
  signal U3_Mmux_Reg_B_4_342 : STD_LOGIC; 
  signal U3_Mmux_Reg_B_41_343 : STD_LOGIC; 
  signal U3_Mmux_Reg_B_42_344 : STD_LOGIC; 
  signal U3_Mmux_Reg_B_43_345 : STD_LOGIC; 
  signal U3_Mmux_Reg_B_44_346 : STD_LOGIC; 
  signal U3_Mmux_Reg_B_45_347 : STD_LOGIC; 
  signal U3_Mmux_Reg_B_46_348 : STD_LOGIC; 
  signal U3_Mmux_Reg_B_47_349 : STD_LOGIC; 
  signal U3_Mmux_Reg_B_4_f5_350 : STD_LOGIC; 
  signal U3_Mmux_Reg_B_4_f51 : STD_LOGIC; 
  signal U3_Mmux_Reg_B_4_f52 : STD_LOGIC; 
  signal U3_Mmux_Reg_B_4_f53 : STD_LOGIC; 
  signal U3_Mmux_Reg_B_4_f54 : STD_LOGIC; 
  signal U3_Mmux_Reg_B_4_f55 : STD_LOGIC; 
  signal U3_Mmux_Reg_B_4_f56 : STD_LOGIC; 
  signal U3_Mmux_Reg_B_4_f57 : STD_LOGIC; 
  signal U3_Mmux_Reg_B_5_358 : STD_LOGIC; 
  signal U3_Mmux_Reg_B_51_359 : STD_LOGIC; 
  signal U3_Mmux_Reg_B_510_360 : STD_LOGIC; 
  signal U3_Mmux_Reg_B_511_361 : STD_LOGIC; 
  signal U3_Mmux_Reg_B_512_362 : STD_LOGIC; 
  signal U3_Mmux_Reg_B_513_363 : STD_LOGIC; 
  signal U3_Mmux_Reg_B_514_364 : STD_LOGIC; 
  signal U3_Mmux_Reg_B_515_365 : STD_LOGIC; 
  signal U3_Mmux_Reg_B_52_366 : STD_LOGIC; 
  signal U3_Mmux_Reg_B_53_367 : STD_LOGIC; 
  signal U3_Mmux_Reg_B_54_368 : STD_LOGIC; 
  signal U3_Mmux_Reg_B_55_369 : STD_LOGIC; 
  signal U3_Mmux_Reg_B_56_370 : STD_LOGIC; 
  signal U3_Mmux_Reg_B_57_371 : STD_LOGIC; 
  signal U3_Mmux_Reg_B_58_372 : STD_LOGIC; 
  signal U3_Mmux_Reg_B_59_373 : STD_LOGIC; 
  signal U3_Mmux_Reg_B_6_374 : STD_LOGIC; 
  signal U3_Mmux_Reg_B_61_375 : STD_LOGIC; 
  signal U3_Mmux_Reg_B_62_376 : STD_LOGIC; 
  signal U3_Mmux_Reg_B_63_377 : STD_LOGIC; 
  signal U3_Mmux_Reg_B_64_378 : STD_LOGIC; 
  signal U3_Mmux_Reg_B_65_379 : STD_LOGIC; 
  signal U3_Mmux_Reg_B_66_380 : STD_LOGIC; 
  signal U3_Mmux_Reg_B_67_381 : STD_LOGIC; 
  signal U3_N01 : STD_LOGIC; 
  signal U3_N10 : STD_LOGIC; 
  signal U3_N11 : STD_LOGIC; 
  signal U3_N111 : STD_LOGIC; 
  signal U3_N12 : STD_LOGIC; 
  signal U3_N14 : STD_LOGIC; 
  signal U3_N15 : STD_LOGIC; 
  signal U3_N16 : STD_LOGIC; 
  signal U3_N17 : STD_LOGIC; 
  signal U3_N19 : STD_LOGIC; 
  signal U3_N2 : STD_LOGIC; 
  signal U3_N20 : STD_LOGIC; 
  signal U3_N3 : STD_LOGIC; 
  signal U3_N5 : STD_LOGIC; 
  signal U3_N6 : STD_LOGIC; 
  signal U3_N7 : STD_LOGIC; 
  signal U3_N8 : STD_LOGIC; 
  signal U3_N9 : STD_LOGIC; 
  signal U3_Reg_0_0_400 : STD_LOGIC; 
  signal U3_Reg_0_1_401 : STD_LOGIC; 
  signal U3_Reg_0_2_402 : STD_LOGIC; 
  signal U3_Reg_0_3_403 : STD_LOGIC; 
  signal U3_Reg_0_4_404 : STD_LOGIC; 
  signal U3_Reg_0_5_405 : STD_LOGIC; 
  signal U3_Reg_0_6_406 : STD_LOGIC; 
  signal U3_Reg_0_7_407 : STD_LOGIC; 
  signal U3_Reg_1_0_416 : STD_LOGIC; 
  signal U3_Reg_1_1_417 : STD_LOGIC; 
  signal U3_Reg_1_2_418 : STD_LOGIC; 
  signal U3_Reg_1_3_419 : STD_LOGIC; 
  signal U3_Reg_1_4_420 : STD_LOGIC; 
  signal U3_Reg_1_5_421 : STD_LOGIC; 
  signal U3_Reg_1_6_422 : STD_LOGIC; 
  signal U3_Reg_1_7_423 : STD_LOGIC; 
  signal U3_Reg_2_0_432 : STD_LOGIC; 
  signal U3_Reg_2_1_433 : STD_LOGIC; 
  signal U3_Reg_2_2_434 : STD_LOGIC; 
  signal U3_Reg_2_3_435 : STD_LOGIC; 
  signal U3_Reg_2_4_436 : STD_LOGIC; 
  signal U3_Reg_2_5_437 : STD_LOGIC; 
  signal U3_Reg_2_6_438 : STD_LOGIC; 
  signal U3_Reg_2_7_439 : STD_LOGIC; 
  signal U3_Reg_3_0_448 : STD_LOGIC; 
  signal U3_Reg_3_1_449 : STD_LOGIC; 
  signal U3_Reg_3_2_450 : STD_LOGIC; 
  signal U3_Reg_3_3_451 : STD_LOGIC; 
  signal U3_Reg_3_4_452 : STD_LOGIC; 
  signal U3_Reg_3_5_453 : STD_LOGIC; 
  signal U3_Reg_3_6_454 : STD_LOGIC; 
  signal U3_Reg_3_7_455 : STD_LOGIC; 
  signal U3_Reg_4_0_464 : STD_LOGIC; 
  signal U3_Reg_4_1_465 : STD_LOGIC; 
  signal U3_Reg_4_2_466 : STD_LOGIC; 
  signal U3_Reg_4_3_467 : STD_LOGIC; 
  signal U3_Reg_4_4_468 : STD_LOGIC; 
  signal U3_Reg_4_5_469 : STD_LOGIC; 
  signal U3_Reg_4_6_470 : STD_LOGIC; 
  signal U3_Reg_4_7_471 : STD_LOGIC; 
  signal U3_Reg_5_0_480 : STD_LOGIC; 
  signal U3_Reg_5_1_481 : STD_LOGIC; 
  signal U3_Reg_5_2_482 : STD_LOGIC; 
  signal U3_Reg_5_3_483 : STD_LOGIC; 
  signal U3_Reg_5_4_484 : STD_LOGIC; 
  signal U3_Reg_5_5_485 : STD_LOGIC; 
  signal U3_Reg_5_6_486 : STD_LOGIC; 
  signal U3_Reg_5_7_487 : STD_LOGIC; 
  signal U3_Reg_6_0_496 : STD_LOGIC; 
  signal U3_Reg_6_1_497 : STD_LOGIC; 
  signal U3_Reg_6_2_498 : STD_LOGIC; 
  signal U3_Reg_6_3_499 : STD_LOGIC; 
  signal U3_Reg_6_4_500 : STD_LOGIC; 
  signal U3_Reg_6_5_501 : STD_LOGIC; 
  signal U3_Reg_6_6_502 : STD_LOGIC; 
  signal U3_Reg_6_7_503 : STD_LOGIC; 
  signal U3_Reg_7_0_512 : STD_LOGIC; 
  signal U3_Reg_7_1_513 : STD_LOGIC; 
  signal U3_Reg_7_2_514 : STD_LOGIC; 
  signal U3_Reg_7_3_515 : STD_LOGIC; 
  signal U3_Reg_7_4_516 : STD_LOGIC; 
  signal U3_Reg_7_5_517 : STD_LOGIC; 
  signal U3_Reg_7_6_518 : STD_LOGIC; 
  signal U3_Reg_7_7_519 : STD_LOGIC; 
  signal U3_Reg_7_cmp_eq0001_inv_520 : STD_LOGIC; 
  signal U3_Reg_7_cmp_eq0001_inv1_521 : STD_LOGIC; 
  signal U3_Reg_7_cmp_eq0001_inv2_522 : STD_LOGIC; 
  signal U3_Reg_7_or0000 : STD_LOGIC; 
  signal U3_Zf_532 : STD_LOGIC; 
  signal U3_Zf_cmp_eq0003 : STD_LOGIC; 
  signal U3_Zf_cmp_eq000312_534 : STD_LOGIC; 
  signal U3_Zf_cmp_eq000325_535 : STD_LOGIC; 
  signal U3_Zf_mux0004 : STD_LOGIC; 
  signal U3_Zf_mux0004132_537 : STD_LOGIC; 
  signal U3_Zf_mux000426_538 : STD_LOGIC; 
  signal U3_Zf_mux000434_539 : STD_LOGIC; 
  signal U3_Zf_mux000477_540 : STD_LOGIC; 
  signal U3_Zf_mux000496_541 : STD_LOGIC; 
  signal U3_Zf_mux000497_542 : STD_LOGIC; 
  signal U3_temp_aluout_mux0002_0_1 : STD_LOGIC; 
  signal U3_temp_aluout_mux0002_0_15_619 : STD_LOGIC; 
  signal U3_temp_aluout_mux0002_0_4_620 : STD_LOGIC; 
  signal U3_temp_aluout_mux0002_0_5 : STD_LOGIC; 
  signal U3_temp_aluout_mux0002_1_15_623 : STD_LOGIC; 
  signal U3_temp_aluout_mux0002_1_4_624 : STD_LOGIC; 
  signal U3_temp_aluout_mux0002_2_15_626 : STD_LOGIC; 
  signal U3_temp_aluout_mux0002_2_4_627 : STD_LOGIC; 
  signal U3_temp_aluout_mux0002_3_15_629 : STD_LOGIC; 
  signal U3_temp_aluout_mux0002_3_4_630 : STD_LOGIC; 
  signal U3_temp_aluout_mux0002_4_15_632 : STD_LOGIC; 
  signal U3_temp_aluout_mux0002_4_4_633 : STD_LOGIC; 
  signal U3_temp_aluout_mux0002_5_15_635 : STD_LOGIC; 
  signal U3_temp_aluout_mux0002_5_4_636 : STD_LOGIC; 
  signal U3_temp_aluout_mux0002_6_15_638 : STD_LOGIC; 
  signal U3_temp_aluout_mux0002_6_4_639 : STD_LOGIC; 
  signal U3_temp_aluout_mux0002_7_15_641 : STD_LOGIC; 
  signal U3_temp_aluout_mux0002_7_4_642 : STD_LOGIC; 
  signal U4_Mtridata_temp_cmp_eq0000_651 : STD_LOGIC; 
  signal U4_Mtrien_temp_652 : STD_LOGIC; 
  signal U4_Mtrien_temp_not0001 : STD_LOGIC; 
  signal U5_Mtridata_Rdata_mux0000_0_5 : STD_LOGIC; 
  signal U5_Mtridata_Rdata_mux0000_0_51_664 : STD_LOGIC; 
  signal U5_Mtridata_Rdata_mux0000_0_52_665 : STD_LOGIC; 
  signal U5_Mtridata_Rdata_mux0000_1_5 : STD_LOGIC; 
  signal U5_Mtridata_Rdata_mux0000_1_51_668 : STD_LOGIC; 
  signal U5_Mtridata_Rdata_mux0000_1_52_669 : STD_LOGIC; 
  signal U5_Mtridata_Rdata_mux0000_2_5 : STD_LOGIC; 
  signal U5_Mtridata_Rdata_mux0000_2_51_672 : STD_LOGIC; 
  signal U5_Mtridata_Rdata_mux0000_2_52_673 : STD_LOGIC; 
  signal U5_Mtridata_Rdata_mux0000_3_5 : STD_LOGIC; 
  signal U5_Mtridata_Rdata_mux0000_3_51_676 : STD_LOGIC; 
  signal U5_Mtridata_Rdata_mux0000_3_52_677 : STD_LOGIC; 
  signal U5_Mtridata_Rdata_mux0000_4_5 : STD_LOGIC; 
  signal U5_Mtridata_Rdata_mux0000_4_51_680 : STD_LOGIC; 
  signal U5_Mtridata_Rdata_mux0000_4_52_681 : STD_LOGIC; 
  signal U5_Mtridata_Rdata_mux0000_5_5 : STD_LOGIC; 
  signal U5_Mtridata_Rdata_mux0000_5_51_684 : STD_LOGIC; 
  signal U5_Mtridata_Rdata_mux0000_5_52_685 : STD_LOGIC; 
  signal U5_Mtridata_Rdata_mux0000_6_5 : STD_LOGIC; 
  signal U5_Mtridata_Rdata_mux0000_6_51_688 : STD_LOGIC; 
  signal U5_Mtridata_Rdata_mux0000_6_52_689 : STD_LOGIC; 
  signal U5_Mtridata_Rdata_mux0000_7_5 : STD_LOGIC; 
  signal U5_Mtridata_Rdata_mux0000_7_51_692 : STD_LOGIC; 
  signal U5_Mtridata_Rdata_mux0000_7_52_693 : STD_LOGIC; 
  signal U5_Mtrien_Rdata_694 : STD_LOGIC; 
  signal U5_Mtrien_Rdata_not0001_695 : STD_LOGIC; 
  signal U5_N10 : STD_LOGIC; 
  signal U5_N3 : STD_LOGIC; 
  signal U5_N4 : STD_LOGIC; 
  signal U5_N5 : STD_LOGIC; 
  signal U5_N7 : STD_LOGIC; 
  signal U5_N8 : STD_LOGIC; 
  signal U5_PcUpdate_734 : STD_LOGIC; 
  signal U5_PcUpdate_mux0002 : STD_LOGIC; 
  signal U5_PcUpdate_not0001_736 : STD_LOGIC; 
  signal U5_RegUpdate_737 : STD_LOGIC; 
  signal U5_RegUpdate_mux0002_738 : STD_LOGIC; 
  signal U5_RegUpdate_not0001_739 : STD_LOGIC; 
  signal U5_cyupdate_740 : STD_LOGIC; 
  signal U5_cyupdate_mux0002_741 : STD_LOGIC; 
  signal U6_Mtridata_DBUS_0_mux0000 : STD_LOGIC; 
  signal U6_Mtridata_DBUS_1_mux0000 : STD_LOGIC; 
  signal U6_Mtridata_DBUS_2_mux0000 : STD_LOGIC; 
  signal U6_Mtridata_DBUS_3_mux0000 : STD_LOGIC; 
  signal U6_Mtridata_DBUS_4_mux0000 : STD_LOGIC; 
  signal U6_Mtridata_DBUS_5_mux0000 : STD_LOGIC; 
  signal U6_Mtridata_DBUS_6_mux0000 : STD_LOGIC; 
  signal U6_Mtridata_DBUS_7_mux0000 : STD_LOGIC; 
  signal U6_Mtrien_DBUS_0_mux0000 : STD_LOGIC; 
  signal U6_mDBUS_0_0_not0000 : STD_LOGIC; 
  signal U6_nWR_840 : STD_LOGIC; 
  signal U6_nWR_1_841 : STD_LOGIC; 
  signal U6_nWR_mux0002 : STD_LOGIC; 
  signal WR : STD_LOGIC; 
  signal a_7_1_852 : STD_LOGIC; 
  signal a_7_2_853 : STD_LOGIC; 
  signal a_4_OBUF_854 : STD_LOGIC; 
  signal a_5_OBUF_855 : STD_LOGIC; 
  signal a_6_OBUF_856 : STD_LOGIC; 
  signal a_7_OBUF_857 : STD_LOGIC; 
  signal b_4_OBUF_882 : STD_LOGIC; 
  signal clk_BUFGP_884 : STD_LOGIC; 
  signal k_IBUF_902 : STD_LOGIC; 
  signal nbhe_OBUF_904 : STD_LOGIC; 
  signal nble_OBUF_906 : STD_LOGIC; 
  signal nrd_OBUF_909 : STD_LOGIC; 
  signal rst_IBUF_912 : STD_LOGIC; 
  signal rst_IBUF1 : STD_LOGIC; 
  signal s2_0_OBUF_938 : STD_LOGIC; 
  signal s2_1_OBUF_939 : STD_LOGIC; 
  signal s2_2_OBUF_940 : STD_LOGIC; 
  signal s2_3_OBUF_941 : STD_LOGIC; 
  signal s2_4_OBUF_942 : STD_LOGIC; 
  signal s2_5_OBUF_943 : STD_LOGIC; 
  signal s2_6_OBUF_944 : STD_LOGIC; 
  signal s2_7_OBUF_945 : STD_LOGIC; 
  signal s3_0_OBUF_954 : STD_LOGIC; 
  signal s3_1_OBUF_955 : STD_LOGIC; 
  signal s3_2_OBUF_956 : STD_LOGIC; 
  signal s3_3_OBUF_957 : STD_LOGIC; 
  signal s3_4_OBUF_958 : STD_LOGIC; 
  signal s3_5_OBUF_959 : STD_LOGIC; 
  signal s3_6_OBUF_960 : STD_LOGIC; 
  signal s3_7_OBUF_961 : STD_LOGIC; 
  signal s4_0_OBUF_970 : STD_LOGIC; 
  signal s4_1_OBUF_971 : STD_LOGIC; 
  signal s4_2_OBUF_972 : STD_LOGIC; 
  signal s4_3_OBUF_973 : STD_LOGIC; 
  signal s4_4_OBUF_974 : STD_LOGIC; 
  signal s4_5_OBUF_975 : STD_LOGIC; 
  signal s4_6_OBUF_976 : STD_LOGIC; 
  signal s4_7_OBUF_977 : STD_LOGIC; 
  signal s5_0_OBUF_986 : STD_LOGIC; 
  signal s5_1_OBUF_987 : STD_LOGIC; 
  signal s5_2_OBUF_988 : STD_LOGIC; 
  signal s5_3_OBUF_989 : STD_LOGIC; 
  signal s5_4_OBUF_990 : STD_LOGIC; 
  signal s5_5_OBUF_991 : STD_LOGIC; 
  signal s5_6_OBUF_992 : STD_LOGIC; 
  signal s5_7_OBUF_993 : STD_LOGIC; 
  signal RegAout : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal RegBout : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U2_IR : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal U2_PC_temp : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal U2_PC_temp_Madd_add0000_cy : STD_LOGIC_VECTOR ( 14 downto 0 ); 
  signal U2_PC_temp_Madd_add0000_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U2_PC_temp_Q_mux0000 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal U2_PC_temp_add0000 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal U3_Madd_addrTemp_share0000_cy : STD_LOGIC_VECTOR ( 14 downto 0 ); 
  signal U3_Madd_addrTemp_share0000_lut : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal U3_Maddsub_cal_addsub0000_Madd_cy : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U3_Maddsub_cal_addsub0000_Madd_lut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U3_Reg_0_mux0005 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U3_Reg_1_mux0005 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U3_Reg_2_mux0005 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U3_Reg_3_mux0005 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U3_Reg_4_mux0005 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U3_Reg_5_mux0005 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U3_Reg_6_mux0005 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U3_Reg_7_mux0005 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U3_addrTemp : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal U3_addrTemp_mux0003 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal U3_addrTemp_share0000 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal U3_cal : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal U3_cal_addsub0000 : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal U3_temp_aluout : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U3_temp_aluout_mux0002 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U4_Mtridata_temp : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U5_Mtridata_Rdata : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U5_Mtridata_Rdata_mux0000 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U5_PcNew : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal U5_PcNew_mux0002 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal U6_ABUS : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal U6_ABUS_mux0003 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal U6_IR_value : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal U6_Mtridata_DBUS : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U6_Mtrien_DBUS : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal U6_mDBUS : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U6_mDBUS_mux0003 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
begin
  XST_GND : GND
    port map (
      G => b_4_OBUF_882
    );
  XST_VCC : VCC
    port map (
      P => N1
    );
  U1_temp_FSM_FFd1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_884,
      CLR => rst_IBUF1,
      D => U1_temp_FSM_FFd21,
      Q => U1_temp_FSM_FFd11
    );
  U1_temp_FSM_FFd2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_884,
      CLR => rst_IBUF1,
      D => U1_temp_FSM_FFd31,
      Q => U1_temp_FSM_FFd21
    );
  U1_temp_FSM_FFd3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_884,
      CLR => rst_IBUF1,
      D => U1_temp_FSM_FFd4_105,
      Q => U1_temp_FSM_FFd31
    );
  U1_temp_FSM_FFd5 : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => clk_BUFGP_884,
      D => b_4_OBUF_882,
      PRE => rst_IBUF1,
      Q => U1_temp_FSM_FFd5_107
    );
  U1_temp_FSM_FFd4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_884,
      CLR => rst_IBUF1,
      D => U1_temp_FSM_FFd4_In,
      Q => U1_temp_FSM_FFd4_105
    );
  U2_irreq : LD_1
    port map (
      D => U1_temp_FSM_FFd4_105,
      G => rst_IBUF_912,
      Q => U2_irreq_236
    );
  U2_IR_0 : LDE_1
    port map (
      D => U6_IR_value(0),
      G => rst_IBUF_912,
      GE => U1_temp_FSM_FFd4_105,
      Q => U2_IR(0)
    );
  U2_IR_1 : LDE_1
    port map (
      D => U6_IR_value(1),
      G => rst_IBUF_912,
      GE => U1_temp_FSM_FFd4_105,
      Q => U2_IR(1)
    );
  U2_IR_2 : LDE_1
    port map (
      D => U6_IR_value(2),
      G => rst_IBUF_912,
      GE => U1_temp_FSM_FFd4_105,
      Q => U2_IR(2)
    );
  U2_IR_3 : LDE_1
    port map (
      D => U6_IR_value(3),
      G => rst_IBUF_912,
      GE => U1_temp_FSM_FFd4_105,
      Q => U2_IR(3)
    );
  U2_IR_4 : LDE_1
    port map (
      D => U6_IR_value(4),
      G => rst_IBUF_912,
      GE => U1_temp_FSM_FFd4_105,
      Q => U2_IR(4)
    );
  U2_IR_5 : LDE_1
    port map (
      D => U6_IR_value(5),
      G => rst_IBUF_912,
      GE => U1_temp_FSM_FFd4_105,
      Q => U2_IR(5)
    );
  U2_IR_6 : LDE_1
    port map (
      D => U6_IR_value(6),
      G => rst_IBUF_912,
      GE => U1_temp_FSM_FFd4_105,
      Q => U2_IR(6)
    );
  U2_IR_7 : LDE_1
    port map (
      D => U6_IR_value(7),
      G => rst_IBUF_912,
      GE => U1_temp_FSM_FFd4_105,
      Q => U2_IR(7)
    );
  U2_IR_8 : LDE_1
    port map (
      D => U6_IR_value(8),
      G => rst_IBUF_912,
      GE => U1_temp_FSM_FFd4_105,
      Q => U2_IR(8)
    );
  U2_IR_9 : LDE_1
    port map (
      D => U6_IR_value(9),
      G => rst_IBUF_912,
      GE => U1_temp_FSM_FFd4_105,
      Q => U2_IR(9)
    );
  U2_IR_10 : LDE_1
    port map (
      D => U6_IR_value(10),
      G => rst_IBUF_912,
      GE => U1_temp_FSM_FFd4_105,
      Q => U2_IR(10)
    );
  U2_IR_11 : LDE_1
    port map (
      D => U6_IR_value(11),
      G => rst_IBUF_912,
      GE => U1_temp_FSM_FFd4_105,
      Q => U2_IR(11)
    );
  U2_IR_12 : LDE_1
    port map (
      D => U6_IR_value(12),
      G => rst_IBUF_912,
      GE => U1_temp_FSM_FFd4_105,
      Q => U2_IR(12)
    );
  U2_IR_13 : LDE_1
    port map (
      D => U6_IR_value(13),
      G => rst_IBUF_912,
      GE => U1_temp_FSM_FFd4_105,
      Q => U2_IR(13)
    );
  U2_IR_14 : LDE_1
    port map (
      D => U6_IR_value(14),
      G => rst_IBUF_912,
      GE => U1_temp_FSM_FFd4_105,
      Q => U2_IR(14)
    );
  U2_IR_15 : LDE_1
    port map (
      D => U6_IR_value(15),
      G => rst_IBUF_912,
      GE => U1_temp_FSM_FFd4_105,
      Q => U2_IR(15)
    );
  U2_PC_temp_15 : FDCPE
    generic map(
      INIT => '0'
    )
    port map (
      C => U1_temp_FSM_FFd2_101,
      CE => U2_PC_temp_0_0_not0000,
      CLR => U2_PC_temp_15_or0000,
      D => U2_PC_temp_Q_mux0000(15),
      PRE => U2_PC_temp_15_and0000,
      Q => U2_PC_temp(15)
    );
  U2_PC_temp_14 : FDCPE
    generic map(
      INIT => '0'
    )
    port map (
      C => U1_temp_FSM_FFd2_101,
      CE => U2_PC_temp_0_0_not0000,
      CLR => U2_PC_temp_14_or0000,
      D => U2_PC_temp_Q_mux0000(14),
      PRE => U2_PC_temp_14_and0000,
      Q => U2_PC_temp(14)
    );
  U2_PC_temp_13 : FDCPE
    generic map(
      INIT => '0'
    )
    port map (
      C => U1_temp_FSM_FFd2_101,
      CE => U2_PC_temp_0_0_not0000,
      CLR => U2_PC_temp_13_or0000,
      D => U2_PC_temp_Q_mux0000(13),
      PRE => U2_PC_temp_13_and0000,
      Q => U2_PC_temp(13)
    );
  U2_PC_temp_12 : FDCPE
    generic map(
      INIT => '0'
    )
    port map (
      C => U1_temp_FSM_FFd2_101,
      CE => U2_PC_temp_0_0_not0000,
      CLR => U2_PC_temp_12_or0000,
      D => U2_PC_temp_Q_mux0000(12),
      PRE => U2_PC_temp_12_and0000,
      Q => U2_PC_temp(12)
    );
  U2_PC_temp_11 : FDCPE
    generic map(
      INIT => '0'
    )
    port map (
      C => U1_temp_FSM_FFd2_101,
      CE => U2_PC_temp_0_0_not0000,
      CLR => U2_PC_temp_11_or0000,
      D => U2_PC_temp_Q_mux0000(11),
      PRE => U2_PC_temp_11_and0000,
      Q => U2_PC_temp(11)
    );
  U2_PC_temp_10 : FDCPE
    generic map(
      INIT => '0'
    )
    port map (
      C => U1_temp_FSM_FFd2_101,
      CE => U2_PC_temp_0_0_not0000,
      CLR => U2_PC_temp_10_or0000,
      D => U2_PC_temp_Q_mux0000(10),
      PRE => U2_PC_temp_10_and0000,
      Q => U2_PC_temp(10)
    );
  U2_PC_temp_9 : FDCPE
    generic map(
      INIT => '0'
    )
    port map (
      C => U1_temp_FSM_FFd2_101,
      CE => U2_PC_temp_0_0_not0000,
      CLR => U2_PC_temp_9_or0000,
      D => U2_PC_temp_Q_mux0000(9),
      PRE => U2_PC_temp_9_and0000,
      Q => U2_PC_temp(9)
    );
  U2_PC_temp_8 : FDCPE
    generic map(
      INIT => '0'
    )
    port map (
      C => U1_temp_FSM_FFd2_101,
      CE => U2_PC_temp_0_0_not0000,
      CLR => U2_PC_temp_8_or0000,
      D => U2_PC_temp_Q_mux0000(8),
      PRE => U2_PC_temp_8_and0000,
      Q => U2_PC_temp(8)
    );
  U2_PC_temp_7 : FDCPE
    generic map(
      INIT => '0'
    )
    port map (
      C => U1_temp_FSM_FFd2_101,
      CE => U2_PC_temp_0_0_not0000,
      CLR => U2_PC_temp_7_or0000,
      D => U2_PC_temp_Q_mux0000(7),
      PRE => U2_PC_temp_7_and0000,
      Q => U2_PC_temp(7)
    );
  U2_PC_temp_6 : FDCPE
    generic map(
      INIT => '0'
    )
    port map (
      C => U1_temp_FSM_FFd2_101,
      CE => U2_PC_temp_0_0_not0000,
      CLR => U2_PC_temp_6_or0000,
      D => U2_PC_temp_Q_mux0000(6),
      PRE => U2_PC_temp_6_and0000,
      Q => U2_PC_temp(6)
    );
  U2_PC_temp_5 : FDCPE
    generic map(
      INIT => '0'
    )
    port map (
      C => U1_temp_FSM_FFd2_101,
      CE => U2_PC_temp_0_0_not0000,
      CLR => U2_PC_temp_5_or0000,
      D => U2_PC_temp_Q_mux0000(5),
      PRE => U2_PC_temp_5_and0000,
      Q => U2_PC_temp(5)
    );
  U2_PC_temp_4 : FDCPE
    generic map(
      INIT => '0'
    )
    port map (
      C => U1_temp_FSM_FFd2_101,
      CE => U2_PC_temp_0_0_not0000,
      CLR => U2_PC_temp_4_or0000,
      D => U2_PC_temp_Q_mux0000(4),
      PRE => U2_PC_temp_4_and0000,
      Q => U2_PC_temp(4)
    );
  U2_PC_temp_3 : FDCPE
    generic map(
      INIT => '0'
    )
    port map (
      C => U1_temp_FSM_FFd2_101,
      CE => U2_PC_temp_0_0_not0000,
      CLR => U2_PC_temp_3_or0000,
      D => U2_PC_temp_Q_mux0000(3),
      PRE => U2_PC_temp_3_and0000,
      Q => U2_PC_temp(3)
    );
  U2_PC_temp_2 : FDCPE
    generic map(
      INIT => '0'
    )
    port map (
      C => U1_temp_FSM_FFd2_101,
      CE => U2_PC_temp_0_0_not0000,
      CLR => U2_PC_temp_2_or0000,
      D => U2_PC_temp_Q_mux0000(2),
      PRE => U2_PC_temp_2_and0000,
      Q => U2_PC_temp(2)
    );
  U2_PC_temp_1 : FDCPE
    generic map(
      INIT => '0'
    )
    port map (
      C => U1_temp_FSM_FFd2_101,
      CE => U2_PC_temp_0_0_not0000,
      CLR => U2_PC_temp_1_or0000,
      D => U2_PC_temp_Q_mux0000(1),
      PRE => U2_PC_temp_1_and0000,
      Q => U2_PC_temp(1)
    );
  U2_PC_temp_0 : FDCPE
    generic map(
      INIT => '0'
    )
    port map (
      C => U1_temp_FSM_FFd2_101,
      CE => U2_PC_temp_0_0_not0000,
      CLR => U2_PC_temp_0_or0000,
      D => U2_PC_temp_Q_mux0000(0),
      PRE => U2_PC_temp_0_and0000,
      Q => U2_PC_temp(0)
    );
  U2_PC_temp_Madd_add0000_xor_15_Q : XORCY
    port map (
      CI => U2_PC_temp_Madd_add0000_cy(14),
      LI => U2_PC_temp_Madd_add0000_xor_15_rt_203,
      O => U2_PC_temp_add0000(15)
    );
  U2_PC_temp_Madd_add0000_xor_14_Q : XORCY
    port map (
      CI => U2_PC_temp_Madd_add0000_cy(13),
      LI => U2_PC_temp_Madd_add0000_cy_14_rt_183,
      O => U2_PC_temp_add0000(14)
    );
  U2_PC_temp_Madd_add0000_cy_14_Q : MUXCY
    port map (
      CI => U2_PC_temp_Madd_add0000_cy(13),
      DI => b_4_OBUF_882,
      S => U2_PC_temp_Madd_add0000_cy_14_rt_183,
      O => U2_PC_temp_Madd_add0000_cy(14)
    );
  U2_PC_temp_Madd_add0000_xor_13_Q : XORCY
    port map (
      CI => U2_PC_temp_Madd_add0000_cy(12),
      LI => U2_PC_temp_Madd_add0000_cy_13_rt_181,
      O => U2_PC_temp_add0000(13)
    );
  U2_PC_temp_Madd_add0000_cy_13_Q : MUXCY
    port map (
      CI => U2_PC_temp_Madd_add0000_cy(12),
      DI => b_4_OBUF_882,
      S => U2_PC_temp_Madd_add0000_cy_13_rt_181,
      O => U2_PC_temp_Madd_add0000_cy(13)
    );
  U2_PC_temp_Madd_add0000_xor_12_Q : XORCY
    port map (
      CI => U2_PC_temp_Madd_add0000_cy(11),
      LI => U2_PC_temp_Madd_add0000_cy_12_rt_179,
      O => U2_PC_temp_add0000(12)
    );
  U2_PC_temp_Madd_add0000_cy_12_Q : MUXCY
    port map (
      CI => U2_PC_temp_Madd_add0000_cy(11),
      DI => b_4_OBUF_882,
      S => U2_PC_temp_Madd_add0000_cy_12_rt_179,
      O => U2_PC_temp_Madd_add0000_cy(12)
    );
  U2_PC_temp_Madd_add0000_xor_11_Q : XORCY
    port map (
      CI => U2_PC_temp_Madd_add0000_cy(10),
      LI => U2_PC_temp_Madd_add0000_cy_11_rt_177,
      O => U2_PC_temp_add0000(11)
    );
  U2_PC_temp_Madd_add0000_cy_11_Q : MUXCY
    port map (
      CI => U2_PC_temp_Madd_add0000_cy(10),
      DI => b_4_OBUF_882,
      S => U2_PC_temp_Madd_add0000_cy_11_rt_177,
      O => U2_PC_temp_Madd_add0000_cy(11)
    );
  U2_PC_temp_Madd_add0000_xor_10_Q : XORCY
    port map (
      CI => U2_PC_temp_Madd_add0000_cy(9),
      LI => U2_PC_temp_Madd_add0000_cy_10_rt_175,
      O => U2_PC_temp_add0000(10)
    );
  U2_PC_temp_Madd_add0000_cy_10_Q : MUXCY
    port map (
      CI => U2_PC_temp_Madd_add0000_cy(9),
      DI => b_4_OBUF_882,
      S => U2_PC_temp_Madd_add0000_cy_10_rt_175,
      O => U2_PC_temp_Madd_add0000_cy(10)
    );
  U2_PC_temp_Madd_add0000_xor_9_Q : XORCY
    port map (
      CI => U2_PC_temp_Madd_add0000_cy(8),
      LI => U2_PC_temp_Madd_add0000_cy_9_rt_201,
      O => U2_PC_temp_add0000(9)
    );
  U2_PC_temp_Madd_add0000_cy_9_Q : MUXCY
    port map (
      CI => U2_PC_temp_Madd_add0000_cy(8),
      DI => b_4_OBUF_882,
      S => U2_PC_temp_Madd_add0000_cy_9_rt_201,
      O => U2_PC_temp_Madd_add0000_cy(9)
    );
  U2_PC_temp_Madd_add0000_xor_8_Q : XORCY
    port map (
      CI => U2_PC_temp_Madd_add0000_cy(7),
      LI => U2_PC_temp_Madd_add0000_cy_8_rt_199,
      O => U2_PC_temp_add0000(8)
    );
  U2_PC_temp_Madd_add0000_cy_8_Q : MUXCY
    port map (
      CI => U2_PC_temp_Madd_add0000_cy(7),
      DI => b_4_OBUF_882,
      S => U2_PC_temp_Madd_add0000_cy_8_rt_199,
      O => U2_PC_temp_Madd_add0000_cy(8)
    );
  U2_PC_temp_Madd_add0000_xor_7_Q : XORCY
    port map (
      CI => U2_PC_temp_Madd_add0000_cy(6),
      LI => U2_PC_temp_Madd_add0000_cy_7_rt_197,
      O => U2_PC_temp_add0000(7)
    );
  U2_PC_temp_Madd_add0000_cy_7_Q : MUXCY
    port map (
      CI => U2_PC_temp_Madd_add0000_cy(6),
      DI => b_4_OBUF_882,
      S => U2_PC_temp_Madd_add0000_cy_7_rt_197,
      O => U2_PC_temp_Madd_add0000_cy(7)
    );
  U2_PC_temp_Madd_add0000_xor_6_Q : XORCY
    port map (
      CI => U2_PC_temp_Madd_add0000_cy(5),
      LI => U2_PC_temp_Madd_add0000_cy_6_rt_195,
      O => U2_PC_temp_add0000(6)
    );
  U2_PC_temp_Madd_add0000_cy_6_Q : MUXCY
    port map (
      CI => U2_PC_temp_Madd_add0000_cy(5),
      DI => b_4_OBUF_882,
      S => U2_PC_temp_Madd_add0000_cy_6_rt_195,
      O => U2_PC_temp_Madd_add0000_cy(6)
    );
  U2_PC_temp_Madd_add0000_xor_5_Q : XORCY
    port map (
      CI => U2_PC_temp_Madd_add0000_cy(4),
      LI => U2_PC_temp_Madd_add0000_cy_5_rt_193,
      O => U2_PC_temp_add0000(5)
    );
  U2_PC_temp_Madd_add0000_cy_5_Q : MUXCY
    port map (
      CI => U2_PC_temp_Madd_add0000_cy(4),
      DI => b_4_OBUF_882,
      S => U2_PC_temp_Madd_add0000_cy_5_rt_193,
      O => U2_PC_temp_Madd_add0000_cy(5)
    );
  U2_PC_temp_Madd_add0000_xor_4_Q : XORCY
    port map (
      CI => U2_PC_temp_Madd_add0000_cy(3),
      LI => U2_PC_temp_Madd_add0000_cy_4_rt_191,
      O => U2_PC_temp_add0000(4)
    );
  U2_PC_temp_Madd_add0000_cy_4_Q : MUXCY
    port map (
      CI => U2_PC_temp_Madd_add0000_cy(3),
      DI => b_4_OBUF_882,
      S => U2_PC_temp_Madd_add0000_cy_4_rt_191,
      O => U2_PC_temp_Madd_add0000_cy(4)
    );
  U2_PC_temp_Madd_add0000_xor_3_Q : XORCY
    port map (
      CI => U2_PC_temp_Madd_add0000_cy(2),
      LI => U2_PC_temp_Madd_add0000_cy_3_rt_189,
      O => U2_PC_temp_add0000(3)
    );
  U2_PC_temp_Madd_add0000_cy_3_Q : MUXCY
    port map (
      CI => U2_PC_temp_Madd_add0000_cy(2),
      DI => b_4_OBUF_882,
      S => U2_PC_temp_Madd_add0000_cy_3_rt_189,
      O => U2_PC_temp_Madd_add0000_cy(3)
    );
  U2_PC_temp_Madd_add0000_xor_2_Q : XORCY
    port map (
      CI => U2_PC_temp_Madd_add0000_cy(1),
      LI => U2_PC_temp_Madd_add0000_cy_2_rt_187,
      O => U2_PC_temp_add0000(2)
    );
  U2_PC_temp_Madd_add0000_cy_2_Q : MUXCY
    port map (
      CI => U2_PC_temp_Madd_add0000_cy(1),
      DI => b_4_OBUF_882,
      S => U2_PC_temp_Madd_add0000_cy_2_rt_187,
      O => U2_PC_temp_Madd_add0000_cy(2)
    );
  U2_PC_temp_Madd_add0000_xor_1_Q : XORCY
    port map (
      CI => U2_PC_temp_Madd_add0000_cy(0),
      LI => U2_PC_temp_Madd_add0000_cy_1_rt_185,
      O => U2_PC_temp_add0000(1)
    );
  U2_PC_temp_Madd_add0000_cy_1_Q : MUXCY
    port map (
      CI => U2_PC_temp_Madd_add0000_cy(0),
      DI => b_4_OBUF_882,
      S => U2_PC_temp_Madd_add0000_cy_1_rt_185,
      O => U2_PC_temp_Madd_add0000_cy(1)
    );
  U2_PC_temp_Madd_add0000_xor_0_Q : XORCY
    port map (
      CI => b_4_OBUF_882,
      LI => U2_PC_temp_Madd_add0000_lut(0),
      O => U2_PC_temp_add0000(0)
    );
  U2_PC_temp_Madd_add0000_cy_0_Q : MUXCY
    port map (
      CI => b_4_OBUF_882,
      DI => N1,
      S => U2_PC_temp_Madd_add0000_lut(0),
      O => U2_PC_temp_Madd_add0000_cy(0)
    );
  U6_IR_value_15 : LDE_1
    port map (
      D => N115,
      G => rst_IBUF_912,
      GE => U2_irreq_236,
      Q => U6_IR_value(15)
    );
  U6_IR_value_14 : LDE_1
    port map (
      D => N116,
      G => rst_IBUF_912,
      GE => U2_irreq_236,
      Q => U6_IR_value(14)
    );
  U6_IR_value_13 : LDE_1
    port map (
      D => N117,
      G => rst_IBUF_912,
      GE => U2_irreq_236,
      Q => U6_IR_value(13)
    );
  U6_IR_value_12 : LDE_1
    port map (
      D => N118,
      G => rst_IBUF_912,
      GE => U2_irreq_236,
      Q => U6_IR_value(12)
    );
  U6_IR_value_11 : LDE_1
    port map (
      D => N119,
      G => rst_IBUF_912,
      GE => U2_irreq_236,
      Q => U6_IR_value(11)
    );
  U6_IR_value_10 : LDE_1
    port map (
      D => N120,
      G => rst_IBUF_912,
      GE => U2_irreq_236,
      Q => U6_IR_value(10)
    );
  U6_IR_value_9 : LDE_1
    port map (
      D => N121,
      G => rst_IBUF_912,
      GE => U2_irreq_236,
      Q => U6_IR_value(9)
    );
  U6_IR_value_8 : LDE_1
    port map (
      D => N122,
      G => rst_IBUF_912,
      GE => U2_irreq_236,
      Q => U6_IR_value(8)
    );
  U6_IR_value_7 : LDE_1
    port map (
      D => N123,
      G => rst_IBUF_912,
      GE => U2_irreq_236,
      Q => U6_IR_value(7)
    );
  U6_IR_value_6 : LDE_1
    port map (
      D => N124,
      G => rst_IBUF_912,
      GE => U2_irreq_236,
      Q => U6_IR_value(6)
    );
  U6_IR_value_5 : LDE_1
    port map (
      D => N125,
      G => rst_IBUF_912,
      GE => U2_irreq_236,
      Q => U6_IR_value(5)
    );
  U6_IR_value_4 : LDE_1
    port map (
      D => N126,
      G => rst_IBUF_912,
      GE => U2_irreq_236,
      Q => U6_IR_value(4)
    );
  U6_IR_value_3 : LDE_1
    port map (
      D => N127,
      G => rst_IBUF_912,
      GE => U2_irreq_236,
      Q => U6_IR_value(3)
    );
  U6_IR_value_2 : LDE_1
    port map (
      D => N128,
      G => rst_IBUF_912,
      GE => U2_irreq_236,
      Q => U6_IR_value(2)
    );
  U6_IR_value_1 : LDE_1
    port map (
      D => N129,
      G => rst_IBUF_912,
      GE => U2_irreq_236,
      Q => U6_IR_value(1)
    );
  U6_IR_value_0 : LDE_1
    port map (
      D => N130,
      G => rst_IBUF_912,
      GE => U2_irreq_236,
      Q => U6_IR_value(0)
    );
  U6_mDBUS_7 : LDE_1
    port map (
      D => U6_mDBUS_mux0003(7),
      G => rst_IBUF_912,
      GE => U6_mDBUS_0_0_not0000,
      Q => U6_mDBUS(7)
    );
  U6_mDBUS_6 : LDE_1
    port map (
      D => U6_mDBUS_mux0003(6),
      G => rst_IBUF_912,
      GE => U6_mDBUS_0_0_not0000,
      Q => U6_mDBUS(6)
    );
  U6_mDBUS_5 : LDE_1
    port map (
      D => U6_mDBUS_mux0003(5),
      G => rst_IBUF_912,
      GE => U6_mDBUS_0_0_not0000,
      Q => U6_mDBUS(5)
    );
  U6_mDBUS_4 : LDE_1
    port map (
      D => U6_mDBUS_mux0003(4),
      G => rst_IBUF_912,
      GE => U6_mDBUS_0_0_not0000,
      Q => U6_mDBUS(4)
    );
  U6_mDBUS_3 : LDE_1
    port map (
      D => U6_mDBUS_mux0003(3),
      G => rst_IBUF_912,
      GE => U6_mDBUS_0_0_not0000,
      Q => U6_mDBUS(3)
    );
  U6_mDBUS_2 : LDE_1
    port map (
      D => U6_mDBUS_mux0003(2),
      G => rst_IBUF_912,
      GE => U6_mDBUS_0_0_not0000,
      Q => U6_mDBUS(2)
    );
  U6_mDBUS_1 : LDE_1
    port map (
      D => U6_mDBUS_mux0003(1),
      G => rst_IBUF_912,
      GE => U6_mDBUS_0_0_not0000,
      Q => U6_mDBUS(1)
    );
  U6_mDBUS_0 : LDE_1
    port map (
      D => U6_mDBUS_mux0003(0),
      G => rst_IBUF_912,
      GE => U6_mDBUS_0_0_not0000,
      Q => U6_mDBUS(0)
    );
  U6_ABUS_15 : LD_1
    port map (
      D => U6_ABUS_mux0003(15),
      G => rst_IBUF_912,
      Q => U6_ABUS(15)
    );
  U6_ABUS_14 : LD_1
    port map (
      D => U6_ABUS_mux0003(14),
      G => rst_IBUF_912,
      Q => U6_ABUS(14)
    );
  U6_ABUS_13 : LD_1
    port map (
      D => U6_ABUS_mux0003(13),
      G => rst_IBUF_912,
      Q => U6_ABUS(13)
    );
  U6_ABUS_12 : LD_1
    port map (
      D => U6_ABUS_mux0003(12),
      G => rst_IBUF_912,
      Q => U6_ABUS(12)
    );
  U6_ABUS_11 : LD_1
    port map (
      D => U6_ABUS_mux0003(11),
      G => rst_IBUF_912,
      Q => U6_ABUS(11)
    );
  U6_ABUS_10 : LD_1
    port map (
      D => U6_ABUS_mux0003(10),
      G => rst_IBUF_912,
      Q => U6_ABUS(10)
    );
  U6_ABUS_9 : LD_1
    port map (
      D => U6_ABUS_mux0003(9),
      G => rst_IBUF_912,
      Q => U6_ABUS(9)
    );
  U6_ABUS_8 : LD_1
    port map (
      D => U6_ABUS_mux0003(8),
      G => rst_IBUF_912,
      Q => U6_ABUS(8)
    );
  U6_ABUS_7 : LD_1
    port map (
      D => U6_ABUS_mux0003(7),
      G => rst_IBUF_912,
      Q => U6_ABUS(7)
    );
  U6_ABUS_6 : LD_1
    port map (
      D => U6_ABUS_mux0003(6),
      G => rst_IBUF_912,
      Q => U6_ABUS(6)
    );
  U6_ABUS_5 : LD_1
    port map (
      D => U6_ABUS_mux0003(5),
      G => rst_IBUF_912,
      Q => U6_ABUS(5)
    );
  U6_ABUS_4 : LD_1
    port map (
      D => U6_ABUS_mux0003(4),
      G => rst_IBUF_912,
      Q => U6_ABUS(4)
    );
  U6_ABUS_3 : LD_1
    port map (
      D => U6_ABUS_mux0003(3),
      G => rst_IBUF_912,
      Q => U6_ABUS(3)
    );
  U6_ABUS_2 : LD_1
    port map (
      D => U6_ABUS_mux0003(2),
      G => rst_IBUF_912,
      Q => U6_ABUS(2)
    );
  U6_ABUS_1 : LD_1
    port map (
      D => U6_ABUS_mux0003(1),
      G => rst_IBUF_912,
      Q => U6_ABUS(1)
    );
  U6_ABUS_0 : LD_1
    port map (
      D => U6_ABUS_mux0003(0),
      G => rst_IBUF_912,
      Q => U6_ABUS(0)
    );
  U6_Mtridata_DBUS_0_Q : LD_1
    port map (
      D => U6_Mtridata_DBUS_0_mux0000,
      G => rst_IBUF_912,
      Q => U6_Mtridata_DBUS(0)
    );
  U6_Mtridata_DBUS_1_Q : LD_1
    port map (
      D => U6_Mtridata_DBUS_1_mux0000,
      G => rst_IBUF_912,
      Q => U6_Mtridata_DBUS(1)
    );
  U6_Mtridata_DBUS_2_Q : LD_1
    port map (
      D => U6_Mtridata_DBUS_2_mux0000,
      G => rst_IBUF_912,
      Q => U6_Mtridata_DBUS(2)
    );
  U6_Mtridata_DBUS_3_Q : LD_1
    port map (
      D => U6_Mtridata_DBUS_3_mux0000,
      G => rst_IBUF_912,
      Q => U6_Mtridata_DBUS(3)
    );
  U6_Mtridata_DBUS_4_Q : LD_1
    port map (
      D => U6_Mtridata_DBUS_4_mux0000,
      G => rst_IBUF_912,
      Q => U6_Mtridata_DBUS(4)
    );
  U6_Mtridata_DBUS_5_Q : LD_1
    port map (
      D => U6_Mtridata_DBUS_5_mux0000,
      G => rst_IBUF_912,
      Q => U6_Mtridata_DBUS(5)
    );
  U6_Mtridata_DBUS_6_Q : LD_1
    port map (
      D => U6_Mtridata_DBUS_6_mux0000,
      G => rst_IBUF_912,
      Q => U6_Mtridata_DBUS(6)
    );
  U6_Mtridata_DBUS_7_Q : LD_1
    port map (
      D => U6_Mtridata_DBUS_7_mux0000,
      G => rst_IBUF_912,
      Q => U6_Mtridata_DBUS(7)
    );
  U6_Mtrien_DBUS_10_Q : LD_1
    port map (
      D => U6_Mtrien_DBUS_0_mux0000,
      G => rst_IBUF_912,
      Q => U6_Mtrien_DBUS(10)
    );
  U6_Mtrien_DBUS_11_Q : LD_1
    port map (
      D => U6_Mtrien_DBUS_0_mux0000,
      G => rst_IBUF_912,
      Q => U6_Mtrien_DBUS(11)
    );
  U6_Mtrien_DBUS_12_Q : LD_1
    port map (
      D => U6_Mtrien_DBUS_0_mux0000,
      G => rst_IBUF_912,
      Q => U6_Mtrien_DBUS(12)
    );
  U6_Mtrien_DBUS_13_Q : LD_1
    port map (
      D => U6_Mtrien_DBUS_0_mux0000,
      G => rst_IBUF_912,
      Q => U6_Mtrien_DBUS(13)
    );
  U6_Mtrien_DBUS_14_Q : LD_1
    port map (
      D => U6_Mtrien_DBUS_0_mux0000,
      G => rst_IBUF_912,
      Q => U6_Mtrien_DBUS(14)
    );
  U6_Mtrien_DBUS_15_Q : LD_1
    port map (
      D => U6_Mtrien_DBUS_0_mux0000,
      G => rst_IBUF_912,
      Q => U6_Mtrien_DBUS(15)
    );
  U6_Mtrien_DBUS_0_Q : LD_1
    port map (
      D => U6_Mtrien_DBUS_0_mux0000,
      G => rst_IBUF_912,
      Q => U6_Mtrien_DBUS(0)
    );
  U6_Mtrien_DBUS_1_Q : LD_1
    port map (
      D => U6_Mtrien_DBUS_0_mux0000,
      G => rst_IBUF_912,
      Q => U6_Mtrien_DBUS(1)
    );
  U6_Mtrien_DBUS_2_Q : LD_1
    port map (
      D => U6_Mtrien_DBUS_0_mux0000,
      G => rst_IBUF_912,
      Q => U6_Mtrien_DBUS(2)
    );
  U6_Mtrien_DBUS_3_Q : LD_1
    port map (
      D => U6_Mtrien_DBUS_0_mux0000,
      G => rst_IBUF_912,
      Q => U6_Mtrien_DBUS(3)
    );
  U6_Mtrien_DBUS_4_Q : LD_1
    port map (
      D => U6_Mtrien_DBUS_0_mux0000,
      G => rst_IBUF_912,
      Q => U6_Mtrien_DBUS(4)
    );
  U6_Mtrien_DBUS_5_Q : LD_1
    port map (
      D => U6_Mtrien_DBUS_0_mux0000,
      G => rst_IBUF_912,
      Q => U6_Mtrien_DBUS(5)
    );
  U6_Mtrien_DBUS_6_Q : LD_1
    port map (
      D => U6_Mtrien_DBUS_0_mux0000,
      G => rst_IBUF_912,
      Q => U6_Mtrien_DBUS(6)
    );
  U6_Mtrien_DBUS_7_Q : LD_1
    port map (
      D => U6_Mtrien_DBUS_0_mux0000,
      G => rst_IBUF_912,
      Q => U6_Mtrien_DBUS(7)
    );
  U6_Mtrien_DBUS_8_Q : LD_1
    port map (
      D => U6_Mtrien_DBUS_0_mux0000,
      G => rst_IBUF_912,
      Q => U6_Mtrien_DBUS(8)
    );
  U6_Mtrien_DBUS_9_Q : LD_1
    port map (
      D => U6_Mtrien_DBUS_0_mux0000,
      G => rst_IBUF_912,
      Q => U6_Mtrien_DBUS(9)
    );
  U6_nWR : LDP_1
    port map (
      D => U6_nWR_mux0002,
      G => U2_irreq_236,
      PRE => rst_IBUF1,
      Q => U6_nWR_840
    );
  U3_addrTemp_15 : LDE_1
    port map (
      D => U3_addrTemp_mux0003(15),
      G => rst_IBUF_912,
      GE => U1_temp_FSM_FFd31,
      Q => U3_addrTemp(15)
    );
  U3_addrTemp_14 : LDE_1
    port map (
      D => U3_addrTemp_mux0003(14),
      G => rst_IBUF_912,
      GE => U1_temp_FSM_FFd31,
      Q => U3_addrTemp(14)
    );
  U3_addrTemp_13 : LDE_1
    port map (
      D => U3_addrTemp_mux0003(13),
      G => rst_IBUF_912,
      GE => U1_temp_FSM_FFd31,
      Q => U3_addrTemp(13)
    );
  U3_addrTemp_12 : LDE_1
    port map (
      D => U3_addrTemp_mux0003(12),
      G => rst_IBUF_912,
      GE => U1_temp_FSM_FFd31,
      Q => U3_addrTemp(12)
    );
  U3_addrTemp_11 : LDE_1
    port map (
      D => U3_addrTemp_mux0003(11),
      G => rst_IBUF_912,
      GE => U1_temp_FSM_FFd31,
      Q => U3_addrTemp(11)
    );
  U3_addrTemp_10 : LDE_1
    port map (
      D => U3_addrTemp_mux0003(10),
      G => rst_IBUF_912,
      GE => U1_temp_FSM_FFd31,
      Q => U3_addrTemp(10)
    );
  U3_addrTemp_9 : LDE_1
    port map (
      D => U3_addrTemp_mux0003(9),
      G => rst_IBUF_912,
      GE => U1_temp_FSM_FFd31,
      Q => U3_addrTemp(9)
    );
  U3_addrTemp_8 : LDE_1
    port map (
      D => U3_addrTemp_mux0003(8),
      G => rst_IBUF_912,
      GE => U1_temp_FSM_FFd31,
      Q => U3_addrTemp(8)
    );
  U3_addrTemp_7 : LDE_1
    port map (
      D => U3_addrTemp_mux0003(7),
      G => rst_IBUF_912,
      GE => U1_temp_FSM_FFd31,
      Q => U3_addrTemp(7)
    );
  U3_addrTemp_6 : LDE_1
    port map (
      D => U3_addrTemp_mux0003(6),
      G => rst_IBUF_912,
      GE => U1_temp_FSM_FFd31,
      Q => U3_addrTemp(6)
    );
  U3_addrTemp_5 : LDE_1
    port map (
      D => U3_addrTemp_mux0003(5),
      G => rst_IBUF_912,
      GE => U1_temp_FSM_FFd31,
      Q => U3_addrTemp(5)
    );
  U3_addrTemp_4 : LDE_1
    port map (
      D => U3_addrTemp_mux0003(4),
      G => rst_IBUF_912,
      GE => U1_temp_FSM_FFd31,
      Q => U3_addrTemp(4)
    );
  U3_addrTemp_3 : LDE_1
    port map (
      D => U3_addrTemp_mux0003(3),
      G => rst_IBUF_912,
      GE => U1_temp_FSM_FFd31,
      Q => U3_addrTemp(3)
    );
  U3_addrTemp_2 : LDE_1
    port map (
      D => U3_addrTemp_mux0003(2),
      G => rst_IBUF_912,
      GE => U1_temp_FSM_FFd31,
      Q => U3_addrTemp(2)
    );
  U3_addrTemp_1 : LDE_1
    port map (
      D => U3_addrTemp_mux0003(1),
      G => rst_IBUF_912,
      GE => U1_temp_FSM_FFd31,
      Q => U3_addrTemp(1)
    );
  U3_addrTemp_0 : LDE_1
    port map (
      D => U3_addrTemp_mux0003(0),
      G => rst_IBUF_912,
      GE => U1_temp_FSM_FFd31,
      Q => U3_addrTemp(0)
    );
  U3_Reg_7_7 : LDCE_1
    port map (
      CLR => rst_IBUF1,
      D => U3_Reg_7_mux0005(7),
      G => U1_temp_FSM_FFd3_103,
      GE => U1_temp_FSM_FFd11,
      Q => U3_Reg_7_7_519
    );
  U3_Reg_7_6 : LDCE_1
    port map (
      CLR => rst_IBUF1,
      D => U3_Reg_7_mux0005(6),
      G => U1_temp_FSM_FFd3_103,
      GE => U1_temp_FSM_FFd11,
      Q => U3_Reg_7_6_518
    );
  U3_Reg_7_5 : LDCE_1
    port map (
      CLR => rst_IBUF1,
      D => U3_Reg_7_mux0005(5),
      G => U1_temp_FSM_FFd3_103,
      GE => U1_temp_FSM_FFd11,
      Q => U3_Reg_7_5_517
    );
  U3_Reg_7_4 : LDCE_1
    port map (
      CLR => rst_IBUF1,
      D => U3_Reg_7_mux0005(4),
      G => U1_temp_FSM_FFd3_103,
      GE => U1_temp_FSM_FFd11,
      Q => U3_Reg_7_4_516
    );
  U3_Reg_7_3 : LDCE_1
    port map (
      CLR => rst_IBUF1,
      D => U3_Reg_7_mux0005(3),
      G => U1_temp_FSM_FFd3_103,
      GE => U1_temp_FSM_FFd11,
      Q => U3_Reg_7_3_515
    );
  U3_Reg_7_2 : LDCE_1
    port map (
      CLR => rst_IBUF1,
      D => U3_Reg_7_mux0005(2),
      G => U1_temp_FSM_FFd3_103,
      GE => U1_temp_FSM_FFd11,
      Q => U3_Reg_7_2_514
    );
  U3_Reg_7_1 : LDCE_1
    port map (
      CLR => rst_IBUF1,
      D => U3_Reg_7_mux0005(1),
      G => U1_temp_FSM_FFd3_103,
      GE => U1_temp_FSM_FFd11,
      Q => U3_Reg_7_1_513
    );
  U3_Reg_7_0 : LDCE_1
    port map (
      CLR => rst_IBUF1,
      D => U3_Reg_7_mux0005(0),
      G => U1_temp_FSM_FFd3_103,
      GE => U1_temp_FSM_FFd11,
      Q => U3_Reg_7_0_512
    );
  U3_temp_aluout_7 : LDE_1
    port map (
      D => U3_temp_aluout_mux0002(7),
      G => rst_IBUF_912,
      GE => U1_temp_FSM_FFd31,
      Q => U3_temp_aluout(7)
    );
  U3_temp_aluout_6 : LDE_1
    port map (
      D => U3_temp_aluout_mux0002(6),
      G => rst_IBUF_912,
      GE => U1_temp_FSM_FFd31,
      Q => U3_temp_aluout(6)
    );
  U3_temp_aluout_5 : LDE_1
    port map (
      D => U3_temp_aluout_mux0002(5),
      G => rst_IBUF_912,
      GE => U1_temp_FSM_FFd31,
      Q => U3_temp_aluout(5)
    );
  U3_temp_aluout_4 : LDE_1
    port map (
      D => U3_temp_aluout_mux0002(4),
      G => rst_IBUF_912,
      GE => U1_temp_FSM_FFd31,
      Q => U3_temp_aluout(4)
    );
  U3_temp_aluout_3 : LDE_1
    port map (
      D => U3_temp_aluout_mux0002(3),
      G => rst_IBUF_912,
      GE => U1_temp_FSM_FFd31,
      Q => U3_temp_aluout(3)
    );
  U3_temp_aluout_2 : LDE_1
    port map (
      D => U3_temp_aluout_mux0002(2),
      G => rst_IBUF_912,
      GE => U1_temp_FSM_FFd31,
      Q => U3_temp_aluout(2)
    );
  U3_temp_aluout_1 : LDE_1
    port map (
      D => U3_temp_aluout_mux0002(1),
      G => rst_IBUF_912,
      GE => U1_temp_FSM_FFd31,
      Q => U3_temp_aluout(1)
    );
  U3_temp_aluout_0 : LDE_1
    port map (
      D => U3_temp_aluout_mux0002(0),
      G => rst_IBUF_912,
      GE => U1_temp_FSM_FFd31,
      Q => U3_temp_aluout(0)
    );
  U3_Reg_0_4 : LDPE_1
    port map (
      D => U3_Reg_0_mux0005(4),
      G => U1_temp_FSM_FFd3_103,
      GE => U1_temp_FSM_FFd11,
      PRE => rst_IBUF1,
      Q => U3_Reg_0_4_404
    );
  U3_Reg_0_3 : LDPE_1
    port map (
      D => U3_Reg_0_mux0005(3),
      G => U1_temp_FSM_FFd3_103,
      GE => U1_temp_FSM_FFd11,
      PRE => rst_IBUF1,
      Q => U3_Reg_0_3_403
    );
  U3_Reg_0_1 : LDPE_1
    port map (
      D => U3_Reg_0_mux0005(1),
      G => U1_temp_FSM_FFd3_103,
      GE => U1_temp_FSM_FFd11,
      PRE => rst_IBUF1,
      Q => U3_Reg_0_1_401
    );
  U3_Reg_0_7 : LDCE_1
    port map (
      CLR => rst_IBUF1,
      D => U3_Reg_0_mux0005(7),
      G => U1_temp_FSM_FFd3_103,
      GE => U1_temp_FSM_FFd11,
      Q => U3_Reg_0_7_407
    );
  U3_Reg_0_6 : LDCE_1
    port map (
      CLR => rst_IBUF1,
      D => U3_Reg_0_mux0005(6),
      G => U1_temp_FSM_FFd3_103,
      GE => U1_temp_FSM_FFd11,
      Q => U3_Reg_0_6_406
    );
  U3_Reg_0_5 : LDCE_1
    port map (
      CLR => rst_IBUF1,
      D => U3_Reg_0_mux0005(5),
      G => U1_temp_FSM_FFd3_103,
      GE => U1_temp_FSM_FFd11,
      Q => U3_Reg_0_5_405
    );
  U3_Reg_0_2 : LDCE_1
    port map (
      CLR => rst_IBUF1,
      D => U3_Reg_0_mux0005(2),
      G => U1_temp_FSM_FFd3_103,
      GE => U1_temp_FSM_FFd11,
      Q => U3_Reg_0_2_402
    );
  U3_Reg_0_0 : LDCE_1
    port map (
      CLR => rst_IBUF1,
      D => U3_Reg_0_mux0005(0),
      G => U1_temp_FSM_FFd3_103,
      GE => U1_temp_FSM_FFd11,
      Q => U3_Reg_0_0_400
    );
  U3_Reg_1_1 : LDPE_1
    port map (
      D => U3_Reg_1_mux0005(1),
      G => U1_temp_FSM_FFd3_103,
      GE => U1_temp_FSM_FFd11,
      PRE => rst_IBUF1,
      Q => U3_Reg_1_1_417
    );
  U3_Reg_1_0 : LDPE_1
    port map (
      D => U3_Reg_1_mux0005(0),
      G => U1_temp_FSM_FFd3_103,
      GE => U1_temp_FSM_FFd11,
      PRE => rst_IBUF1,
      Q => U3_Reg_1_0_416
    );
  U3_Reg_1_7 : LDCE_1
    port map (
      CLR => rst_IBUF1,
      D => U3_Reg_1_mux0005(7),
      G => U1_temp_FSM_FFd3_103,
      GE => U1_temp_FSM_FFd11,
      Q => U3_Reg_1_7_423
    );
  U3_Reg_1_6 : LDCE_1
    port map (
      CLR => rst_IBUF1,
      D => U3_Reg_1_mux0005(6),
      G => U1_temp_FSM_FFd3_103,
      GE => U1_temp_FSM_FFd11,
      Q => U3_Reg_1_6_422
    );
  U3_Reg_1_5 : LDCE_1
    port map (
      CLR => rst_IBUF1,
      D => U3_Reg_1_mux0005(5),
      G => U1_temp_FSM_FFd3_103,
      GE => U1_temp_FSM_FFd11,
      Q => U3_Reg_1_5_421
    );
  U3_Reg_1_4 : LDCE_1
    port map (
      CLR => rst_IBUF1,
      D => U3_Reg_1_mux0005(4),
      G => U1_temp_FSM_FFd3_103,
      GE => U1_temp_FSM_FFd11,
      Q => U3_Reg_1_4_420
    );
  U3_Reg_1_3 : LDCE_1
    port map (
      CLR => rst_IBUF1,
      D => U3_Reg_1_mux0005(3),
      G => U1_temp_FSM_FFd3_103,
      GE => U1_temp_FSM_FFd11,
      Q => U3_Reg_1_3_419
    );
  U3_Reg_1_2 : LDCE_1
    port map (
      CLR => rst_IBUF1,
      D => U3_Reg_1_mux0005(2),
      G => U1_temp_FSM_FFd3_103,
      GE => U1_temp_FSM_FFd11,
      Q => U3_Reg_1_2_418
    );
  U3_Reg_2_2 : LDPE_1
    port map (
      D => U3_Reg_2_mux0005(2),
      G => U1_temp_FSM_FFd3_103,
      GE => U1_temp_FSM_FFd11,
      PRE => rst_IBUF1,
      Q => U3_Reg_2_2_434
    );
  U3_Reg_2_7 : LDCE_1
    port map (
      CLR => rst_IBUF1,
      D => U3_Reg_2_mux0005(7),
      G => U1_temp_FSM_FFd3_103,
      GE => U1_temp_FSM_FFd11,
      Q => U3_Reg_2_7_439
    );
  U3_Reg_2_6 : LDCE_1
    port map (
      CLR => rst_IBUF1,
      D => U3_Reg_2_mux0005(6),
      G => U1_temp_FSM_FFd3_103,
      GE => U1_temp_FSM_FFd11,
      Q => U3_Reg_2_6_438
    );
  U3_Reg_2_5 : LDCE_1
    port map (
      CLR => rst_IBUF1,
      D => U3_Reg_2_mux0005(5),
      G => U1_temp_FSM_FFd3_103,
      GE => U1_temp_FSM_FFd11,
      Q => U3_Reg_2_5_437
    );
  U3_Reg_2_4 : LDCE_1
    port map (
      CLR => rst_IBUF1,
      D => U3_Reg_2_mux0005(4),
      G => U1_temp_FSM_FFd3_103,
      GE => U1_temp_FSM_FFd11,
      Q => U3_Reg_2_4_436
    );
  U3_Reg_2_3 : LDCE_1
    port map (
      CLR => rst_IBUF1,
      D => U3_Reg_2_mux0005(3),
      G => U1_temp_FSM_FFd3_103,
      GE => U1_temp_FSM_FFd11,
      Q => U3_Reg_2_3_435
    );
  U3_Reg_2_1 : LDCE_1
    port map (
      CLR => rst_IBUF1,
      D => U3_Reg_2_mux0005(1),
      G => U1_temp_FSM_FFd3_103,
      GE => U1_temp_FSM_FFd11,
      Q => U3_Reg_2_1_433
    );
  U3_Reg_2_0 : LDCE_1
    port map (
      CLR => rst_IBUF1,
      D => U3_Reg_2_mux0005(0),
      G => U1_temp_FSM_FFd3_103,
      GE => U1_temp_FSM_FFd11,
      Q => U3_Reg_2_0_432
    );
  U3_Reg_3_3 : LDPE_1
    port map (
      D => U3_Reg_3_mux0005(3),
      G => U1_temp_FSM_FFd3_103,
      GE => U1_temp_FSM_FFd11,
      PRE => rst_IBUF1,
      Q => U3_Reg_3_3_451
    );
  U3_Reg_3_7 : LDCE_1
    port map (
      CLR => rst_IBUF1,
      D => U3_Reg_3_mux0005(7),
      G => U1_temp_FSM_FFd3_103,
      GE => U1_temp_FSM_FFd11,
      Q => U3_Reg_3_7_455
    );
  U3_Reg_3_6 : LDCE_1
    port map (
      CLR => rst_IBUF1,
      D => U3_Reg_3_mux0005(6),
      G => U1_temp_FSM_FFd3_103,
      GE => U1_temp_FSM_FFd11,
      Q => U3_Reg_3_6_454
    );
  U3_Reg_3_5 : LDCE_1
    port map (
      CLR => rst_IBUF1,
      D => U3_Reg_3_mux0005(5),
      G => U1_temp_FSM_FFd3_103,
      GE => U1_temp_FSM_FFd11,
      Q => U3_Reg_3_5_453
    );
  U3_Reg_3_4 : LDCE_1
    port map (
      CLR => rst_IBUF1,
      D => U3_Reg_3_mux0005(4),
      G => U1_temp_FSM_FFd3_103,
      GE => U1_temp_FSM_FFd11,
      Q => U3_Reg_3_4_452
    );
  U3_Reg_3_2 : LDCE_1
    port map (
      CLR => rst_IBUF1,
      D => U3_Reg_3_mux0005(2),
      G => U1_temp_FSM_FFd3_103,
      GE => U1_temp_FSM_FFd11,
      Q => U3_Reg_3_2_450
    );
  U3_Reg_3_1 : LDCE_1
    port map (
      CLR => rst_IBUF1,
      D => U3_Reg_3_mux0005(1),
      G => U1_temp_FSM_FFd3_103,
      GE => U1_temp_FSM_FFd11,
      Q => U3_Reg_3_1_449
    );
  U3_Reg_3_0 : LDCE_1
    port map (
      CLR => rst_IBUF1,
      D => U3_Reg_3_mux0005(0),
      G => U1_temp_FSM_FFd3_103,
      GE => U1_temp_FSM_FFd11,
      Q => U3_Reg_3_0_448
    );
  U3_Reg_4_1 : LDPE_1
    port map (
      D => U3_Reg_4_mux0005(1),
      G => U1_temp_FSM_FFd3_103,
      GE => U1_temp_FSM_FFd11,
      PRE => rst_IBUF1,
      Q => U3_Reg_4_1_465
    );
  U3_Reg_4_0 : LDPE_1
    port map (
      D => U3_Reg_4_mux0005(0),
      G => U1_temp_FSM_FFd3_103,
      GE => U1_temp_FSM_FFd11,
      PRE => rst_IBUF1,
      Q => U3_Reg_4_0_464
    );
  U3_Reg_4_7 : LDCE_1
    port map (
      CLR => rst_IBUF1,
      D => U3_Reg_4_mux0005(7),
      G => U1_temp_FSM_FFd3_103,
      GE => U1_temp_FSM_FFd11,
      Q => U3_Reg_4_7_471
    );
  U3_Reg_4_6 : LDCE_1
    port map (
      CLR => rst_IBUF1,
      D => U3_Reg_4_mux0005(6),
      G => U1_temp_FSM_FFd3_103,
      GE => U1_temp_FSM_FFd11,
      Q => U3_Reg_4_6_470
    );
  U3_Reg_4_5 : LDCE_1
    port map (
      CLR => rst_IBUF1,
      D => U3_Reg_4_mux0005(5),
      G => U1_temp_FSM_FFd3_103,
      GE => U1_temp_FSM_FFd11,
      Q => U3_Reg_4_5_469
    );
  U3_Reg_4_4 : LDCE_1
    port map (
      CLR => rst_IBUF1,
      D => U3_Reg_4_mux0005(4),
      G => U1_temp_FSM_FFd3_103,
      GE => U1_temp_FSM_FFd11,
      Q => U3_Reg_4_4_468
    );
  U3_Reg_4_3 : LDCE_1
    port map (
      CLR => rst_IBUF1,
      D => U3_Reg_4_mux0005(3),
      G => U1_temp_FSM_FFd3_103,
      GE => U1_temp_FSM_FFd11,
      Q => U3_Reg_4_3_467
    );
  U3_Reg_4_2 : LDCE_1
    port map (
      CLR => rst_IBUF1,
      D => U3_Reg_4_mux0005(2),
      G => U1_temp_FSM_FFd3_103,
      GE => U1_temp_FSM_FFd11,
      Q => U3_Reg_4_2_466
    );
  U3_Reg_5_7 : LDPE_1
    port map (
      D => U3_Reg_5_mux0005(7),
      G => U1_temp_FSM_FFd3_103,
      GE => U1_temp_FSM_FFd11,
      PRE => rst_IBUF1,
      Q => U3_Reg_5_7_487
    );
  U3_Reg_5_5 : LDPE_1
    port map (
      D => U3_Reg_5_mux0005(5),
      G => U1_temp_FSM_FFd3_103,
      GE => U1_temp_FSM_FFd11,
      PRE => rst_IBUF1,
      Q => U3_Reg_5_5_485
    );
  U3_Reg_5_6 : LDCE_1
    port map (
      CLR => rst_IBUF1,
      D => U3_Reg_5_mux0005(6),
      G => U1_temp_FSM_FFd3_103,
      GE => U1_temp_FSM_FFd11,
      Q => U3_Reg_5_6_486
    );
  U3_Reg_5_4 : LDCE_1
    port map (
      CLR => rst_IBUF1,
      D => U3_Reg_5_mux0005(4),
      G => U1_temp_FSM_FFd3_103,
      GE => U1_temp_FSM_FFd11,
      Q => U3_Reg_5_4_484
    );
  U3_Reg_5_3 : LDCE_1
    port map (
      CLR => rst_IBUF1,
      D => U3_Reg_5_mux0005(3),
      G => U1_temp_FSM_FFd3_103,
      GE => U1_temp_FSM_FFd11,
      Q => U3_Reg_5_3_483
    );
  U3_Reg_5_2 : LDCE_1
    port map (
      CLR => rst_IBUF1,
      D => U3_Reg_5_mux0005(2),
      G => U1_temp_FSM_FFd3_103,
      GE => U1_temp_FSM_FFd11,
      Q => U3_Reg_5_2_482
    );
  U3_Reg_5_1 : LDCE_1
    port map (
      CLR => rst_IBUF1,
      D => U3_Reg_5_mux0005(1),
      G => U1_temp_FSM_FFd3_103,
      GE => U1_temp_FSM_FFd11,
      Q => U3_Reg_5_1_481
    );
  U3_Reg_5_0 : LDCE_1
    port map (
      CLR => rst_IBUF1,
      D => U3_Reg_5_mux0005(0),
      G => U1_temp_FSM_FFd3_103,
      GE => U1_temp_FSM_FFd11,
      Q => U3_Reg_5_0_480
    );
  U3_Reg_6_0 : LDPE_1
    port map (
      D => U3_Reg_6_mux0005(0),
      G => U1_temp_FSM_FFd3_103,
      GE => U1_temp_FSM_FFd11,
      PRE => rst_IBUF1,
      Q => U3_Reg_6_0_496
    );
  U3_Reg_6_7 : LDCE_1
    port map (
      CLR => rst_IBUF1,
      D => U3_Reg_6_mux0005(7),
      G => U1_temp_FSM_FFd3_103,
      GE => U1_temp_FSM_FFd11,
      Q => U3_Reg_6_7_503
    );
  U3_Reg_6_6 : LDCE_1
    port map (
      CLR => rst_IBUF1,
      D => U3_Reg_6_mux0005(6),
      G => U1_temp_FSM_FFd3_103,
      GE => U1_temp_FSM_FFd11,
      Q => U3_Reg_6_6_502
    );
  U3_Reg_6_5 : LDCE_1
    port map (
      CLR => rst_IBUF1,
      D => U3_Reg_6_mux0005(5),
      G => U1_temp_FSM_FFd3_103,
      GE => U1_temp_FSM_FFd11,
      Q => U3_Reg_6_5_501
    );
  U3_Reg_6_4 : LDCE_1
    port map (
      CLR => rst_IBUF1,
      D => U3_Reg_6_mux0005(4),
      G => U1_temp_FSM_FFd3_103,
      GE => U1_temp_FSM_FFd11,
      Q => U3_Reg_6_4_500
    );
  U3_Reg_6_3 : LDCE_1
    port map (
      CLR => rst_IBUF1,
      D => U3_Reg_6_mux0005(3),
      G => U1_temp_FSM_FFd3_103,
      GE => U1_temp_FSM_FFd11,
      Q => U3_Reg_6_3_499
    );
  U3_Reg_6_2 : LDCE_1
    port map (
      CLR => rst_IBUF1,
      D => U3_Reg_6_mux0005(2),
      G => U1_temp_FSM_FFd3_103,
      GE => U1_temp_FSM_FFd11,
      Q => U3_Reg_6_2_498
    );
  U3_Reg_6_1 : LDCE_1
    port map (
      CLR => rst_IBUF1,
      D => U3_Reg_6_mux0005(1),
      G => U1_temp_FSM_FFd3_103,
      GE => U1_temp_FSM_FFd11,
      Q => U3_Reg_6_1_497
    );
  U3_Maddsub_cal_addsub0000_Madd_xor_8_Q : XORCY
    port map (
      CI => U3_Maddsub_cal_addsub0000_Madd_cy(7),
      LI => U3_Reg_7_cmp_eq0001_inv2_522,
      O => U3_cal_addsub0000(8)
    );
  U3_Maddsub_cal_addsub0000_Madd_xor_7_Q : XORCY
    port map (
      CI => U3_Maddsub_cal_addsub0000_Madd_cy(6),
      LI => U3_Maddsub_cal_addsub0000_Madd_lut(7),
      O => U3_cal_addsub0000(7)
    );
  U3_Maddsub_cal_addsub0000_Madd_cy_7_Q : MUXCY
    port map (
      CI => U3_Maddsub_cal_addsub0000_Madd_cy(6),
      DI => RegAout(7),
      S => U3_Maddsub_cal_addsub0000_Madd_lut(7),
      O => U3_Maddsub_cal_addsub0000_Madd_cy(7)
    );
  U3_Maddsub_cal_addsub0000_Madd_lut_7_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => U3_Reg_7_cmp_eq0001_inv_520,
      I1 => RegBout(7),
      I2 => RegAout(7),
      O => U3_Maddsub_cal_addsub0000_Madd_lut(7)
    );
  U3_Maddsub_cal_addsub0000_Madd_xor_6_Q : XORCY
    port map (
      CI => U3_Maddsub_cal_addsub0000_Madd_cy(5),
      LI => U3_Maddsub_cal_addsub0000_Madd_lut(6),
      O => U3_cal_addsub0000(6)
    );
  U3_Maddsub_cal_addsub0000_Madd_cy_6_Q : MUXCY
    port map (
      CI => U3_Maddsub_cal_addsub0000_Madd_cy(5),
      DI => RegAout(6),
      S => U3_Maddsub_cal_addsub0000_Madd_lut(6),
      O => U3_Maddsub_cal_addsub0000_Madd_cy(6)
    );
  U3_Maddsub_cal_addsub0000_Madd_lut_6_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => U3_Reg_7_cmp_eq0001_inv_520,
      I1 => RegBout(6),
      I2 => RegAout(6),
      O => U3_Maddsub_cal_addsub0000_Madd_lut(6)
    );
  U3_Maddsub_cal_addsub0000_Madd_xor_5_Q : XORCY
    port map (
      CI => U3_Maddsub_cal_addsub0000_Madd_cy(4),
      LI => U3_Maddsub_cal_addsub0000_Madd_lut(5),
      O => U3_cal_addsub0000(5)
    );
  U3_Maddsub_cal_addsub0000_Madd_cy_5_Q : MUXCY
    port map (
      CI => U3_Maddsub_cal_addsub0000_Madd_cy(4),
      DI => RegAout(5),
      S => U3_Maddsub_cal_addsub0000_Madd_lut(5),
      O => U3_Maddsub_cal_addsub0000_Madd_cy(5)
    );
  U3_Maddsub_cal_addsub0000_Madd_lut_5_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => U3_Reg_7_cmp_eq0001_inv_520,
      I1 => RegBout(5),
      I2 => RegAout(5),
      O => U3_Maddsub_cal_addsub0000_Madd_lut(5)
    );
  U3_Maddsub_cal_addsub0000_Madd_xor_4_Q : XORCY
    port map (
      CI => U3_Maddsub_cal_addsub0000_Madd_cy(3),
      LI => U3_Maddsub_cal_addsub0000_Madd_lut(4),
      O => U3_cal_addsub0000(4)
    );
  U3_Maddsub_cal_addsub0000_Madd_cy_4_Q : MUXCY
    port map (
      CI => U3_Maddsub_cal_addsub0000_Madd_cy(3),
      DI => RegAout(4),
      S => U3_Maddsub_cal_addsub0000_Madd_lut(4),
      O => U3_Maddsub_cal_addsub0000_Madd_cy(4)
    );
  U3_Maddsub_cal_addsub0000_Madd_lut_4_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => U3_Reg_7_cmp_eq0001_inv_520,
      I1 => RegBout(4),
      I2 => RegAout(4),
      O => U3_Maddsub_cal_addsub0000_Madd_lut(4)
    );
  U3_Maddsub_cal_addsub0000_Madd_xor_3_Q : XORCY
    port map (
      CI => U3_Maddsub_cal_addsub0000_Madd_cy(2),
      LI => U3_Maddsub_cal_addsub0000_Madd_lut(3),
      O => U3_cal_addsub0000(3)
    );
  U3_Maddsub_cal_addsub0000_Madd_cy_3_Q : MUXCY
    port map (
      CI => U3_Maddsub_cal_addsub0000_Madd_cy(2),
      DI => RegAout(3),
      S => U3_Maddsub_cal_addsub0000_Madd_lut(3),
      O => U3_Maddsub_cal_addsub0000_Madd_cy(3)
    );
  U3_Maddsub_cal_addsub0000_Madd_lut_3_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => U3_Reg_7_cmp_eq0001_inv_520,
      I1 => RegBout(3),
      I2 => RegAout(3),
      O => U3_Maddsub_cal_addsub0000_Madd_lut(3)
    );
  U3_Maddsub_cal_addsub0000_Madd_xor_2_Q : XORCY
    port map (
      CI => U3_Maddsub_cal_addsub0000_Madd_cy(1),
      LI => U3_Maddsub_cal_addsub0000_Madd_lut(2),
      O => U3_cal_addsub0000(2)
    );
  U3_Maddsub_cal_addsub0000_Madd_cy_2_Q : MUXCY
    port map (
      CI => U3_Maddsub_cal_addsub0000_Madd_cy(1),
      DI => RegAout(2),
      S => U3_Maddsub_cal_addsub0000_Madd_lut(2),
      O => U3_Maddsub_cal_addsub0000_Madd_cy(2)
    );
  U3_Maddsub_cal_addsub0000_Madd_lut_2_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => U3_Reg_7_cmp_eq0001_inv_520,
      I1 => RegBout(2),
      I2 => RegAout(2),
      O => U3_Maddsub_cal_addsub0000_Madd_lut(2)
    );
  U3_Maddsub_cal_addsub0000_Madd_xor_1_Q : XORCY
    port map (
      CI => U3_Maddsub_cal_addsub0000_Madd_cy(0),
      LI => U3_Maddsub_cal_addsub0000_Madd_lut(1),
      O => U3_cal_addsub0000(1)
    );
  U3_Maddsub_cal_addsub0000_Madd_cy_1_Q : MUXCY
    port map (
      CI => U3_Maddsub_cal_addsub0000_Madd_cy(0),
      DI => RegAout(1),
      S => U3_Maddsub_cal_addsub0000_Madd_lut(1),
      O => U3_Maddsub_cal_addsub0000_Madd_cy(1)
    );
  U3_Maddsub_cal_addsub0000_Madd_lut_1_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => U3_Reg_7_cmp_eq0001_inv_520,
      I1 => RegBout(1),
      I2 => RegAout(1),
      O => U3_Maddsub_cal_addsub0000_Madd_lut(1)
    );
  U3_Maddsub_cal_addsub0000_Madd_xor_0_Q : XORCY
    port map (
      CI => U3_Reg_7_cmp_eq0001_inv1_521,
      LI => U3_Maddsub_cal_addsub0000_Madd_lut(0),
      O => U3_cal_addsub0000(0)
    );
  U3_Maddsub_cal_addsub0000_Madd_cy_0_Q : MUXCY
    port map (
      CI => U3_Reg_7_cmp_eq0001_inv1_521,
      DI => RegAout(0),
      S => U3_Maddsub_cal_addsub0000_Madd_lut(0),
      O => U3_Maddsub_cal_addsub0000_Madd_cy(0)
    );
  U3_Maddsub_cal_addsub0000_Madd_lut_0_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => U3_Reg_7_cmp_eq0001_inv_520,
      I1 => RegBout(0),
      I2 => RegAout(0),
      O => U3_Maddsub_cal_addsub0000_Madd_lut(0)
    );
  U3_Reg_7_cmp_eq0001_inv1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U3_Cy_237,
      I1 => U3_Reg_7_cmp_eq0001_inv_520,
      O => U3_Reg_7_cmp_eq0001_inv1_521
    );
  U3_Mmux_Reg_B_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U2_IR(0),
      I1 => U3_Reg_6_0_496,
      I2 => U3_Reg_7_0_512,
      O => U3_Mmux_Reg_B_4_342
    );
  U3_Mmux_Reg_B_5 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U2_IR(0),
      I1 => U3_Reg_4_0_464,
      I2 => U3_Reg_5_0_480,
      O => U3_Mmux_Reg_B_5_358
    );
  U3_Mmux_Reg_B_3_f5 : MUXF5
    port map (
      I0 => U3_Mmux_Reg_B_5_358,
      I1 => U3_Mmux_Reg_B_4_342,
      S => U2_IR(1),
      O => U3_Mmux_Reg_B_3_f5_334
    );
  U3_Mmux_Reg_B_51 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U2_IR(0),
      I1 => U3_Reg_2_0_432,
      I2 => U3_Reg_3_0_448,
      O => U3_Mmux_Reg_B_51_359
    );
  U3_Mmux_Reg_B_6 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U2_IR(0),
      I1 => U3_Reg_0_0_400,
      I2 => U3_Reg_1_0_416,
      O => U3_Mmux_Reg_B_6_374
    );
  U3_Mmux_Reg_B_4_f5 : MUXF5
    port map (
      I0 => U3_Mmux_Reg_B_6_374,
      I1 => U3_Mmux_Reg_B_51_359,
      S => U2_IR(1),
      O => U3_Mmux_Reg_B_4_f5_350
    );
  U3_Mmux_Reg_B_2_f6 : MUXF6
    port map (
      I0 => U3_Mmux_Reg_B_4_f5_350,
      I1 => U3_Mmux_Reg_B_3_f5_334,
      S => U2_IR(2),
      O => RegBout(0)
    );
  U3_Mmux_Reg_B_41 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U2_IR(0),
      I1 => U3_Reg_6_1_497,
      I2 => U3_Reg_7_1_513,
      O => U3_Mmux_Reg_B_41_343
    );
  U3_Mmux_Reg_B_52 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U2_IR(0),
      I1 => U3_Reg_4_1_465,
      I2 => U3_Reg_5_1_481,
      O => U3_Mmux_Reg_B_52_366
    );
  U3_Mmux_Reg_B_3_f5_0 : MUXF5
    port map (
      I0 => U3_Mmux_Reg_B_52_366,
      I1 => U3_Mmux_Reg_B_41_343,
      S => U2_IR(1),
      O => U3_Mmux_Reg_B_3_f51
    );
  U3_Mmux_Reg_B_53 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U2_IR(0),
      I1 => U3_Reg_2_1_433,
      I2 => U3_Reg_3_1_449,
      O => U3_Mmux_Reg_B_53_367
    );
  U3_Mmux_Reg_B_61 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U2_IR(0),
      I1 => U3_Reg_0_1_401,
      I2 => U3_Reg_1_1_417,
      O => U3_Mmux_Reg_B_61_375
    );
  U3_Mmux_Reg_B_4_f5_0 : MUXF5
    port map (
      I0 => U3_Mmux_Reg_B_61_375,
      I1 => U3_Mmux_Reg_B_53_367,
      S => U2_IR(1),
      O => U3_Mmux_Reg_B_4_f51
    );
  U3_Mmux_Reg_B_2_f6_0 : MUXF6
    port map (
      I0 => U3_Mmux_Reg_B_4_f51,
      I1 => U3_Mmux_Reg_B_3_f51,
      S => U2_IR(2),
      O => RegBout(1)
    );
  U3_Mmux_Reg_B_42 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U2_IR(0),
      I1 => U3_Reg_6_2_498,
      I2 => U3_Reg_7_2_514,
      O => U3_Mmux_Reg_B_42_344
    );
  U3_Mmux_Reg_B_54 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U2_IR(0),
      I1 => U3_Reg_4_2_466,
      I2 => U3_Reg_5_2_482,
      O => U3_Mmux_Reg_B_54_368
    );
  U3_Mmux_Reg_B_3_f5_1 : MUXF5
    port map (
      I0 => U3_Mmux_Reg_B_54_368,
      I1 => U3_Mmux_Reg_B_42_344,
      S => U2_IR(1),
      O => U3_Mmux_Reg_B_3_f52
    );
  U3_Mmux_Reg_B_55 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U2_IR(0),
      I1 => U3_Reg_2_2_434,
      I2 => U3_Reg_3_2_450,
      O => U3_Mmux_Reg_B_55_369
    );
  U3_Mmux_Reg_B_62 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U2_IR(0),
      I1 => U3_Reg_0_2_402,
      I2 => U3_Reg_1_2_418,
      O => U3_Mmux_Reg_B_62_376
    );
  U3_Mmux_Reg_B_4_f5_1 : MUXF5
    port map (
      I0 => U3_Mmux_Reg_B_62_376,
      I1 => U3_Mmux_Reg_B_55_369,
      S => U2_IR(1),
      O => U3_Mmux_Reg_B_4_f52
    );
  U3_Mmux_Reg_B_2_f6_1 : MUXF6
    port map (
      I0 => U3_Mmux_Reg_B_4_f52,
      I1 => U3_Mmux_Reg_B_3_f52,
      S => U2_IR(2),
      O => RegBout(2)
    );
  U3_Mmux_Reg_B_43 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U2_IR(0),
      I1 => U3_Reg_6_3_499,
      I2 => U3_Reg_7_3_515,
      O => U3_Mmux_Reg_B_43_345
    );
  U3_Mmux_Reg_B_56 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U2_IR(0),
      I1 => U3_Reg_4_3_467,
      I2 => U3_Reg_5_3_483,
      O => U3_Mmux_Reg_B_56_370
    );
  U3_Mmux_Reg_B_3_f5_2 : MUXF5
    port map (
      I0 => U3_Mmux_Reg_B_56_370,
      I1 => U3_Mmux_Reg_B_43_345,
      S => U2_IR(1),
      O => U3_Mmux_Reg_B_3_f53
    );
  U3_Mmux_Reg_B_57 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U2_IR(0),
      I1 => U3_Reg_2_3_435,
      I2 => U3_Reg_3_3_451,
      O => U3_Mmux_Reg_B_57_371
    );
  U3_Mmux_Reg_B_63 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U2_IR(0),
      I1 => U3_Reg_0_3_403,
      I2 => U3_Reg_1_3_419,
      O => U3_Mmux_Reg_B_63_377
    );
  U3_Mmux_Reg_B_4_f5_2 : MUXF5
    port map (
      I0 => U3_Mmux_Reg_B_63_377,
      I1 => U3_Mmux_Reg_B_57_371,
      S => U2_IR(1),
      O => U3_Mmux_Reg_B_4_f53
    );
  U3_Mmux_Reg_B_2_f6_2 : MUXF6
    port map (
      I0 => U3_Mmux_Reg_B_4_f53,
      I1 => U3_Mmux_Reg_B_3_f53,
      S => U2_IR(2),
      O => RegBout(3)
    );
  U3_Mmux_Reg_B_44 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U2_IR(0),
      I1 => U3_Reg_6_4_500,
      I2 => U3_Reg_7_4_516,
      O => U3_Mmux_Reg_B_44_346
    );
  U3_Mmux_Reg_B_58 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U2_IR(0),
      I1 => U3_Reg_4_4_468,
      I2 => U3_Reg_5_4_484,
      O => U3_Mmux_Reg_B_58_372
    );
  U3_Mmux_Reg_B_3_f5_3 : MUXF5
    port map (
      I0 => U3_Mmux_Reg_B_58_372,
      I1 => U3_Mmux_Reg_B_44_346,
      S => U2_IR(1),
      O => U3_Mmux_Reg_B_3_f54
    );
  U3_Mmux_Reg_B_59 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U2_IR(0),
      I1 => U3_Reg_2_4_436,
      I2 => U3_Reg_3_4_452,
      O => U3_Mmux_Reg_B_59_373
    );
  U3_Mmux_Reg_B_64 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U2_IR(0),
      I1 => U3_Reg_0_4_404,
      I2 => U3_Reg_1_4_420,
      O => U3_Mmux_Reg_B_64_378
    );
  U3_Mmux_Reg_B_4_f5_3 : MUXF5
    port map (
      I0 => U3_Mmux_Reg_B_64_378,
      I1 => U3_Mmux_Reg_B_59_373,
      S => U2_IR(1),
      O => U3_Mmux_Reg_B_4_f54
    );
  U3_Mmux_Reg_B_2_f6_3 : MUXF6
    port map (
      I0 => U3_Mmux_Reg_B_4_f54,
      I1 => U3_Mmux_Reg_B_3_f54,
      S => U2_IR(2),
      O => RegBout(4)
    );
  U3_Mmux_Reg_B_45 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U2_IR(0),
      I1 => U3_Reg_6_5_501,
      I2 => U3_Reg_7_5_517,
      O => U3_Mmux_Reg_B_45_347
    );
  U3_Mmux_Reg_B_510 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U2_IR(0),
      I1 => U3_Reg_4_5_469,
      I2 => U3_Reg_5_5_485,
      O => U3_Mmux_Reg_B_510_360
    );
  U3_Mmux_Reg_B_3_f5_4 : MUXF5
    port map (
      I0 => U3_Mmux_Reg_B_510_360,
      I1 => U3_Mmux_Reg_B_45_347,
      S => U2_IR(1),
      O => U3_Mmux_Reg_B_3_f55
    );
  U3_Mmux_Reg_B_511 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U2_IR(0),
      I1 => U3_Reg_2_5_437,
      I2 => U3_Reg_3_5_453,
      O => U3_Mmux_Reg_B_511_361
    );
  U3_Mmux_Reg_B_65 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U2_IR(0),
      I1 => U3_Reg_0_5_405,
      I2 => U3_Reg_1_5_421,
      O => U3_Mmux_Reg_B_65_379
    );
  U3_Mmux_Reg_B_4_f5_4 : MUXF5
    port map (
      I0 => U3_Mmux_Reg_B_65_379,
      I1 => U3_Mmux_Reg_B_511_361,
      S => U2_IR(1),
      O => U3_Mmux_Reg_B_4_f55
    );
  U3_Mmux_Reg_B_2_f6_4 : MUXF6
    port map (
      I0 => U3_Mmux_Reg_B_4_f55,
      I1 => U3_Mmux_Reg_B_3_f55,
      S => U2_IR(2),
      O => RegBout(5)
    );
  U3_Mmux_Reg_B_46 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U2_IR(0),
      I1 => U3_Reg_6_6_502,
      I2 => U3_Reg_7_6_518,
      O => U3_Mmux_Reg_B_46_348
    );
  U3_Mmux_Reg_B_512 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U2_IR(0),
      I1 => U3_Reg_4_6_470,
      I2 => U3_Reg_5_6_486,
      O => U3_Mmux_Reg_B_512_362
    );
  U3_Mmux_Reg_B_3_f5_5 : MUXF5
    port map (
      I0 => U3_Mmux_Reg_B_512_362,
      I1 => U3_Mmux_Reg_B_46_348,
      S => U2_IR(1),
      O => U3_Mmux_Reg_B_3_f56
    );
  U3_Mmux_Reg_B_513 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U2_IR(0),
      I1 => U3_Reg_2_6_438,
      I2 => U3_Reg_3_6_454,
      O => U3_Mmux_Reg_B_513_363
    );
  U3_Mmux_Reg_B_66 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U2_IR(0),
      I1 => U3_Reg_0_6_406,
      I2 => U3_Reg_1_6_422,
      O => U3_Mmux_Reg_B_66_380
    );
  U3_Mmux_Reg_B_4_f5_5 : MUXF5
    port map (
      I0 => U3_Mmux_Reg_B_66_380,
      I1 => U3_Mmux_Reg_B_513_363,
      S => U2_IR(1),
      O => U3_Mmux_Reg_B_4_f56
    );
  U3_Mmux_Reg_B_2_f6_5 : MUXF6
    port map (
      I0 => U3_Mmux_Reg_B_4_f56,
      I1 => U3_Mmux_Reg_B_3_f56,
      S => U2_IR(2),
      O => RegBout(6)
    );
  U3_Mmux_Reg_B_47 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U2_IR(0),
      I1 => U3_Reg_6_7_503,
      I2 => U3_Reg_7_7_519,
      O => U3_Mmux_Reg_B_47_349
    );
  U3_Mmux_Reg_B_514 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U2_IR(0),
      I1 => U3_Reg_4_7_471,
      I2 => U3_Reg_5_7_487,
      O => U3_Mmux_Reg_B_514_364
    );
  U3_Mmux_Reg_B_3_f5_6 : MUXF5
    port map (
      I0 => U3_Mmux_Reg_B_514_364,
      I1 => U3_Mmux_Reg_B_47_349,
      S => U2_IR(1),
      O => U3_Mmux_Reg_B_3_f57
    );
  U3_Mmux_Reg_B_515 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U2_IR(0),
      I1 => U3_Reg_2_7_439,
      I2 => U3_Reg_3_7_455,
      O => U3_Mmux_Reg_B_515_365
    );
  U3_Mmux_Reg_B_67 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U2_IR(0),
      I1 => U3_Reg_0_7_407,
      I2 => U3_Reg_1_7_423,
      O => U3_Mmux_Reg_B_67_381
    );
  U3_Mmux_Reg_B_4_f5_6 : MUXF5
    port map (
      I0 => U3_Mmux_Reg_B_67_381,
      I1 => U3_Mmux_Reg_B_515_365,
      S => U2_IR(1),
      O => U3_Mmux_Reg_B_4_f57
    );
  U3_Mmux_Reg_B_2_f6_6 : MUXF6
    port map (
      I0 => U3_Mmux_Reg_B_4_f57,
      I1 => U3_Mmux_Reg_B_3_f57,
      S => U2_IR(2),
      O => RegBout(7)
    );
  U3_Mmux_Reg_A_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U2_IR(8),
      I1 => U3_Reg_6_0_496,
      I2 => U3_Reg_7_0_512,
      O => U3_Mmux_Reg_A_4_294
    );
  U3_Mmux_Reg_A_5 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U2_IR(8),
      I1 => U3_Reg_4_0_464,
      I2 => U3_Reg_5_0_480,
      O => U3_Mmux_Reg_A_5_310
    );
  U3_Mmux_Reg_A_3_f5 : MUXF5
    port map (
      I0 => U3_Mmux_Reg_A_5_310,
      I1 => U3_Mmux_Reg_A_4_294,
      S => U2_IR(9),
      O => U3_Mmux_Reg_A_3_f5_286
    );
  U3_Mmux_Reg_A_51 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U2_IR(8),
      I1 => U3_Reg_2_0_432,
      I2 => U3_Reg_3_0_448,
      O => U3_Mmux_Reg_A_51_311
    );
  U3_Mmux_Reg_A_6 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U2_IR(8),
      I1 => U3_Reg_0_0_400,
      I2 => U3_Reg_1_0_416,
      O => U3_Mmux_Reg_A_6_326
    );
  U3_Mmux_Reg_A_4_f5 : MUXF5
    port map (
      I0 => U3_Mmux_Reg_A_6_326,
      I1 => U3_Mmux_Reg_A_51_311,
      S => U2_IR(9),
      O => U3_Mmux_Reg_A_4_f5_302
    );
  U3_Mmux_Reg_A_2_f6 : MUXF6
    port map (
      I0 => U3_Mmux_Reg_A_4_f5_302,
      I1 => U3_Mmux_Reg_A_3_f5_286,
      S => U2_IR(10),
      O => RegAout(0)
    );
  U3_Mmux_Reg_A_41 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U2_IR(8),
      I1 => U3_Reg_6_1_497,
      I2 => U3_Reg_7_1_513,
      O => U3_Mmux_Reg_A_41_295
    );
  U3_Mmux_Reg_A_52 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U2_IR(8),
      I1 => U3_Reg_4_1_465,
      I2 => U3_Reg_5_1_481,
      O => U3_Mmux_Reg_A_52_318
    );
  U3_Mmux_Reg_A_3_f5_0 : MUXF5
    port map (
      I0 => U3_Mmux_Reg_A_52_318,
      I1 => U3_Mmux_Reg_A_41_295,
      S => U2_IR(9),
      O => U3_Mmux_Reg_A_3_f51
    );
  U3_Mmux_Reg_A_53 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U2_IR(8),
      I1 => U3_Reg_2_1_433,
      I2 => U3_Reg_3_1_449,
      O => U3_Mmux_Reg_A_53_319
    );
  U3_Mmux_Reg_A_61 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U2_IR(8),
      I1 => U3_Reg_0_1_401,
      I2 => U3_Reg_1_1_417,
      O => U3_Mmux_Reg_A_61_327
    );
  U3_Mmux_Reg_A_4_f5_0 : MUXF5
    port map (
      I0 => U3_Mmux_Reg_A_61_327,
      I1 => U3_Mmux_Reg_A_53_319,
      S => U2_IR(9),
      O => U3_Mmux_Reg_A_4_f51
    );
  U3_Mmux_Reg_A_2_f6_0 : MUXF6
    port map (
      I0 => U3_Mmux_Reg_A_4_f51,
      I1 => U3_Mmux_Reg_A_3_f51,
      S => U2_IR(10),
      O => RegAout(1)
    );
  U3_Mmux_Reg_A_42 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U2_IR(8),
      I1 => U3_Reg_6_2_498,
      I2 => U3_Reg_7_2_514,
      O => U3_Mmux_Reg_A_42_296
    );
  U3_Mmux_Reg_A_54 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U2_IR(8),
      I1 => U3_Reg_4_2_466,
      I2 => U3_Reg_5_2_482,
      O => U3_Mmux_Reg_A_54_320
    );
  U3_Mmux_Reg_A_3_f5_1 : MUXF5
    port map (
      I0 => U3_Mmux_Reg_A_54_320,
      I1 => U3_Mmux_Reg_A_42_296,
      S => U2_IR(9),
      O => U3_Mmux_Reg_A_3_f52
    );
  U3_Mmux_Reg_A_55 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U2_IR(8),
      I1 => U3_Reg_2_2_434,
      I2 => U3_Reg_3_2_450,
      O => U3_Mmux_Reg_A_55_321
    );
  U3_Mmux_Reg_A_62 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U2_IR(8),
      I1 => U3_Reg_0_2_402,
      I2 => U3_Reg_1_2_418,
      O => U3_Mmux_Reg_A_62_328
    );
  U3_Mmux_Reg_A_4_f5_1 : MUXF5
    port map (
      I0 => U3_Mmux_Reg_A_62_328,
      I1 => U3_Mmux_Reg_A_55_321,
      S => U2_IR(9),
      O => U3_Mmux_Reg_A_4_f52
    );
  U3_Mmux_Reg_A_2_f6_1 : MUXF6
    port map (
      I0 => U3_Mmux_Reg_A_4_f52,
      I1 => U3_Mmux_Reg_A_3_f52,
      S => U2_IR(10),
      O => RegAout(2)
    );
  U3_Mmux_Reg_A_43 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U2_IR(8),
      I1 => U3_Reg_6_3_499,
      I2 => U3_Reg_7_3_515,
      O => U3_Mmux_Reg_A_43_297
    );
  U3_Mmux_Reg_A_56 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U2_IR(8),
      I1 => U3_Reg_4_3_467,
      I2 => U3_Reg_5_3_483,
      O => U3_Mmux_Reg_A_56_322
    );
  U3_Mmux_Reg_A_3_f5_2 : MUXF5
    port map (
      I0 => U3_Mmux_Reg_A_56_322,
      I1 => U3_Mmux_Reg_A_43_297,
      S => U2_IR(9),
      O => U3_Mmux_Reg_A_3_f53
    );
  U3_Mmux_Reg_A_57 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U2_IR(8),
      I1 => U3_Reg_2_3_435,
      I2 => U3_Reg_3_3_451,
      O => U3_Mmux_Reg_A_57_323
    );
  U3_Mmux_Reg_A_63 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U2_IR(8),
      I1 => U3_Reg_0_3_403,
      I2 => U3_Reg_1_3_419,
      O => U3_Mmux_Reg_A_63_329
    );
  U3_Mmux_Reg_A_4_f5_2 : MUXF5
    port map (
      I0 => U3_Mmux_Reg_A_63_329,
      I1 => U3_Mmux_Reg_A_57_323,
      S => U2_IR(9),
      O => U3_Mmux_Reg_A_4_f53
    );
  U3_Mmux_Reg_A_2_f6_2 : MUXF6
    port map (
      I0 => U3_Mmux_Reg_A_4_f53,
      I1 => U3_Mmux_Reg_A_3_f53,
      S => U2_IR(10),
      O => RegAout(3)
    );
  U3_Mmux_Reg_A_44 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U2_IR(8),
      I1 => U3_Reg_6_4_500,
      I2 => U3_Reg_7_4_516,
      O => U3_Mmux_Reg_A_44_298
    );
  U3_Mmux_Reg_A_58 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U2_IR(8),
      I1 => U3_Reg_4_4_468,
      I2 => U3_Reg_5_4_484,
      O => U3_Mmux_Reg_A_58_324
    );
  U3_Mmux_Reg_A_3_f5_3 : MUXF5
    port map (
      I0 => U3_Mmux_Reg_A_58_324,
      I1 => U3_Mmux_Reg_A_44_298,
      S => U2_IR(9),
      O => U3_Mmux_Reg_A_3_f54
    );
  U3_Mmux_Reg_A_59 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U2_IR(8),
      I1 => U3_Reg_2_4_436,
      I2 => U3_Reg_3_4_452,
      O => U3_Mmux_Reg_A_59_325
    );
  U3_Mmux_Reg_A_64 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U2_IR(8),
      I1 => U3_Reg_0_4_404,
      I2 => U3_Reg_1_4_420,
      O => U3_Mmux_Reg_A_64_330
    );
  U3_Mmux_Reg_A_4_f5_3 : MUXF5
    port map (
      I0 => U3_Mmux_Reg_A_64_330,
      I1 => U3_Mmux_Reg_A_59_325,
      S => U2_IR(9),
      O => U3_Mmux_Reg_A_4_f54
    );
  U3_Mmux_Reg_A_2_f6_3 : MUXF6
    port map (
      I0 => U3_Mmux_Reg_A_4_f54,
      I1 => U3_Mmux_Reg_A_3_f54,
      S => U2_IR(10),
      O => RegAout(4)
    );
  U3_Mmux_Reg_A_45 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U2_IR(8),
      I1 => U3_Reg_6_5_501,
      I2 => U3_Reg_7_5_517,
      O => U3_Mmux_Reg_A_45_299
    );
  U3_Mmux_Reg_A_510 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U2_IR(8),
      I1 => U3_Reg_4_5_469,
      I2 => U3_Reg_5_5_485,
      O => U3_Mmux_Reg_A_510_312
    );
  U3_Mmux_Reg_A_3_f5_4 : MUXF5
    port map (
      I0 => U3_Mmux_Reg_A_510_312,
      I1 => U3_Mmux_Reg_A_45_299,
      S => U2_IR(9),
      O => U3_Mmux_Reg_A_3_f55
    );
  U3_Mmux_Reg_A_511 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U2_IR(8),
      I1 => U3_Reg_2_5_437,
      I2 => U3_Reg_3_5_453,
      O => U3_Mmux_Reg_A_511_313
    );
  U3_Mmux_Reg_A_65 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U2_IR(8),
      I1 => U3_Reg_0_5_405,
      I2 => U3_Reg_1_5_421,
      O => U3_Mmux_Reg_A_65_331
    );
  U3_Mmux_Reg_A_4_f5_4 : MUXF5
    port map (
      I0 => U3_Mmux_Reg_A_65_331,
      I1 => U3_Mmux_Reg_A_511_313,
      S => U2_IR(9),
      O => U3_Mmux_Reg_A_4_f55
    );
  U3_Mmux_Reg_A_2_f6_4 : MUXF6
    port map (
      I0 => U3_Mmux_Reg_A_4_f55,
      I1 => U3_Mmux_Reg_A_3_f55,
      S => U2_IR(10),
      O => RegAout(5)
    );
  U3_Mmux_Reg_A_46 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U2_IR(8),
      I1 => U3_Reg_6_6_502,
      I2 => U3_Reg_7_6_518,
      O => U3_Mmux_Reg_A_46_300
    );
  U3_Mmux_Reg_A_512 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U2_IR(8),
      I1 => U3_Reg_4_6_470,
      I2 => U3_Reg_5_6_486,
      O => U3_Mmux_Reg_A_512_314
    );
  U3_Mmux_Reg_A_3_f5_5 : MUXF5
    port map (
      I0 => U3_Mmux_Reg_A_512_314,
      I1 => U3_Mmux_Reg_A_46_300,
      S => U2_IR(9),
      O => U3_Mmux_Reg_A_3_f56
    );
  U3_Mmux_Reg_A_513 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U2_IR(8),
      I1 => U3_Reg_2_6_438,
      I2 => U3_Reg_3_6_454,
      O => U3_Mmux_Reg_A_513_315
    );
  U3_Mmux_Reg_A_66 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U2_IR(8),
      I1 => U3_Reg_0_6_406,
      I2 => U3_Reg_1_6_422,
      O => U3_Mmux_Reg_A_66_332
    );
  U3_Mmux_Reg_A_4_f5_5 : MUXF5
    port map (
      I0 => U3_Mmux_Reg_A_66_332,
      I1 => U3_Mmux_Reg_A_513_315,
      S => U2_IR(9),
      O => U3_Mmux_Reg_A_4_f56
    );
  U3_Mmux_Reg_A_2_f6_5 : MUXF6
    port map (
      I0 => U3_Mmux_Reg_A_4_f56,
      I1 => U3_Mmux_Reg_A_3_f56,
      S => U2_IR(10),
      O => RegAout(6)
    );
  U3_Mmux_Reg_A_47 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U2_IR(8),
      I1 => U3_Reg_6_7_503,
      I2 => U3_Reg_7_7_519,
      O => U3_Mmux_Reg_A_47_301
    );
  U3_Mmux_Reg_A_514 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U2_IR(8),
      I1 => U3_Reg_4_7_471,
      I2 => U3_Reg_5_7_487,
      O => U3_Mmux_Reg_A_514_316
    );
  U3_Mmux_Reg_A_3_f5_6 : MUXF5
    port map (
      I0 => U3_Mmux_Reg_A_514_316,
      I1 => U3_Mmux_Reg_A_47_301,
      S => U2_IR(9),
      O => U3_Mmux_Reg_A_3_f57
    );
  U3_Mmux_Reg_A_515 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U2_IR(8),
      I1 => U3_Reg_2_7_439,
      I2 => U3_Reg_3_7_455,
      O => U3_Mmux_Reg_A_515_317
    );
  U3_Mmux_Reg_A_67 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U2_IR(8),
      I1 => U3_Reg_0_7_407,
      I2 => U3_Reg_1_7_423,
      O => U3_Mmux_Reg_A_67_333
    );
  U3_Mmux_Reg_A_4_f5_6 : MUXF5
    port map (
      I0 => U3_Mmux_Reg_A_67_333,
      I1 => U3_Mmux_Reg_A_515_317,
      S => U2_IR(9),
      O => U3_Mmux_Reg_A_4_f57
    );
  U3_Mmux_Reg_A_2_f6_6 : MUXF6
    port map (
      I0 => U3_Mmux_Reg_A_4_f57,
      I1 => U3_Mmux_Reg_A_3_f57,
      S => U2_IR(10),
      O => RegAout(7)
    );
  U3_Madd_addrTemp_share0000_xor_15_Q : XORCY
    port map (
      CI => U3_Madd_addrTemp_share0000_cy(14),
      LI => U3_Madd_addrTemp_share0000_lut(15),
      O => U3_addrTemp_share0000(15)
    );
  U3_Madd_addrTemp_share0000_xor_14_Q : XORCY
    port map (
      CI => U3_Madd_addrTemp_share0000_cy(13),
      LI => U3_Madd_addrTemp_share0000_lut(14),
      O => U3_addrTemp_share0000(14)
    );
  U3_Madd_addrTemp_share0000_cy_14_Q : MUXCY
    port map (
      CI => U3_Madd_addrTemp_share0000_cy(13),
      DI => U2_PC_temp(14),
      S => U3_Madd_addrTemp_share0000_lut(14),
      O => U3_Madd_addrTemp_share0000_cy(14)
    );
  U3_Madd_addrTemp_share0000_xor_13_Q : XORCY
    port map (
      CI => U3_Madd_addrTemp_share0000_cy(12),
      LI => U3_Madd_addrTemp_share0000_lut(13),
      O => U3_addrTemp_share0000(13)
    );
  U3_Madd_addrTemp_share0000_cy_13_Q : MUXCY
    port map (
      CI => U3_Madd_addrTemp_share0000_cy(12),
      DI => U2_PC_temp(13),
      S => U3_Madd_addrTemp_share0000_lut(13),
      O => U3_Madd_addrTemp_share0000_cy(13)
    );
  U3_Madd_addrTemp_share0000_xor_12_Q : XORCY
    port map (
      CI => U3_Madd_addrTemp_share0000_cy(11),
      LI => U3_Madd_addrTemp_share0000_lut(12),
      O => U3_addrTemp_share0000(12)
    );
  U3_Madd_addrTemp_share0000_cy_12_Q : MUXCY
    port map (
      CI => U3_Madd_addrTemp_share0000_cy(11),
      DI => U2_PC_temp(12),
      S => U3_Madd_addrTemp_share0000_lut(12),
      O => U3_Madd_addrTemp_share0000_cy(12)
    );
  U3_Madd_addrTemp_share0000_xor_11_Q : XORCY
    port map (
      CI => U3_Madd_addrTemp_share0000_cy(10),
      LI => U3_Madd_addrTemp_share0000_lut(11),
      O => U3_addrTemp_share0000(11)
    );
  U3_Madd_addrTemp_share0000_cy_11_Q : MUXCY
    port map (
      CI => U3_Madd_addrTemp_share0000_cy(10),
      DI => U2_PC_temp(11),
      S => U3_Madd_addrTemp_share0000_lut(11),
      O => U3_Madd_addrTemp_share0000_cy(11)
    );
  U3_Madd_addrTemp_share0000_xor_10_Q : XORCY
    port map (
      CI => U3_Madd_addrTemp_share0000_cy(9),
      LI => U3_Madd_addrTemp_share0000_lut(10),
      O => U3_addrTemp_share0000(10)
    );
  U3_Madd_addrTemp_share0000_cy_10_Q : MUXCY
    port map (
      CI => U3_Madd_addrTemp_share0000_cy(9),
      DI => U2_PC_temp(10),
      S => U3_Madd_addrTemp_share0000_lut(10),
      O => U3_Madd_addrTemp_share0000_cy(10)
    );
  U3_Madd_addrTemp_share0000_xor_9_Q : XORCY
    port map (
      CI => U3_Madd_addrTemp_share0000_cy(8),
      LI => U3_Madd_addrTemp_share0000_lut(9),
      O => U3_addrTemp_share0000(9)
    );
  U3_Madd_addrTemp_share0000_cy_9_Q : MUXCY
    port map (
      CI => U3_Madd_addrTemp_share0000_cy(8),
      DI => U2_PC_temp(9),
      S => U3_Madd_addrTemp_share0000_lut(9),
      O => U3_Madd_addrTemp_share0000_cy(9)
    );
  U3_Madd_addrTemp_share0000_xor_8_Q : XORCY
    port map (
      CI => U3_Madd_addrTemp_share0000_cy(7),
      LI => U3_Madd_addrTemp_share0000_lut(8),
      O => U3_addrTemp_share0000(8)
    );
  U3_Madd_addrTemp_share0000_cy_8_Q : MUXCY
    port map (
      CI => U3_Madd_addrTemp_share0000_cy(7),
      DI => U2_PC_temp(8),
      S => U3_Madd_addrTemp_share0000_lut(8),
      O => U3_Madd_addrTemp_share0000_cy(8)
    );
  U3_Madd_addrTemp_share0000_xor_7_Q : XORCY
    port map (
      CI => U3_Madd_addrTemp_share0000_cy(6),
      LI => U3_Madd_addrTemp_share0000_lut(7),
      O => U3_addrTemp_share0000(7)
    );
  U3_Madd_addrTemp_share0000_cy_7_Q : MUXCY
    port map (
      CI => U3_Madd_addrTemp_share0000_cy(6),
      DI => U2_PC_temp(7),
      S => U3_Madd_addrTemp_share0000_lut(7),
      O => U3_Madd_addrTemp_share0000_cy(7)
    );
  U3_Madd_addrTemp_share0000_lut_7_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U2_PC_temp(7),
      I1 => U2_IR(7),
      O => U3_Madd_addrTemp_share0000_lut(7)
    );
  U3_Madd_addrTemp_share0000_xor_6_Q : XORCY
    port map (
      CI => U3_Madd_addrTemp_share0000_cy(5),
      LI => U3_Madd_addrTemp_share0000_lut(6),
      O => U3_addrTemp_share0000(6)
    );
  U3_Madd_addrTemp_share0000_cy_6_Q : MUXCY
    port map (
      CI => U3_Madd_addrTemp_share0000_cy(5),
      DI => U2_PC_temp(6),
      S => U3_Madd_addrTemp_share0000_lut(6),
      O => U3_Madd_addrTemp_share0000_cy(6)
    );
  U3_Madd_addrTemp_share0000_lut_6_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U2_PC_temp(6),
      I1 => U2_IR(6),
      O => U3_Madd_addrTemp_share0000_lut(6)
    );
  U3_Madd_addrTemp_share0000_xor_5_Q : XORCY
    port map (
      CI => U3_Madd_addrTemp_share0000_cy(4),
      LI => U3_Madd_addrTemp_share0000_lut(5),
      O => U3_addrTemp_share0000(5)
    );
  U3_Madd_addrTemp_share0000_cy_5_Q : MUXCY
    port map (
      CI => U3_Madd_addrTemp_share0000_cy(4),
      DI => U2_PC_temp(5),
      S => U3_Madd_addrTemp_share0000_lut(5),
      O => U3_Madd_addrTemp_share0000_cy(5)
    );
  U3_Madd_addrTemp_share0000_lut_5_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U2_PC_temp(5),
      I1 => U2_IR(5),
      O => U3_Madd_addrTemp_share0000_lut(5)
    );
  U3_Madd_addrTemp_share0000_xor_4_Q : XORCY
    port map (
      CI => U3_Madd_addrTemp_share0000_cy(3),
      LI => U3_Madd_addrTemp_share0000_lut(4),
      O => U3_addrTemp_share0000(4)
    );
  U3_Madd_addrTemp_share0000_cy_4_Q : MUXCY
    port map (
      CI => U3_Madd_addrTemp_share0000_cy(3),
      DI => U2_PC_temp(4),
      S => U3_Madd_addrTemp_share0000_lut(4),
      O => U3_Madd_addrTemp_share0000_cy(4)
    );
  U3_Madd_addrTemp_share0000_lut_4_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U2_PC_temp(4),
      I1 => U2_IR(4),
      O => U3_Madd_addrTemp_share0000_lut(4)
    );
  U3_Madd_addrTemp_share0000_xor_3_Q : XORCY
    port map (
      CI => U3_Madd_addrTemp_share0000_cy(2),
      LI => U3_Madd_addrTemp_share0000_lut(3),
      O => U3_addrTemp_share0000(3)
    );
  U3_Madd_addrTemp_share0000_cy_3_Q : MUXCY
    port map (
      CI => U3_Madd_addrTemp_share0000_cy(2),
      DI => U2_PC_temp(3),
      S => U3_Madd_addrTemp_share0000_lut(3),
      O => U3_Madd_addrTemp_share0000_cy(3)
    );
  U3_Madd_addrTemp_share0000_lut_3_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U2_PC_temp(3),
      I1 => U2_IR(3),
      O => U3_Madd_addrTemp_share0000_lut(3)
    );
  U3_Madd_addrTemp_share0000_xor_2_Q : XORCY
    port map (
      CI => U3_Madd_addrTemp_share0000_cy(1),
      LI => U3_Madd_addrTemp_share0000_lut(2),
      O => U3_addrTemp_share0000(2)
    );
  U3_Madd_addrTemp_share0000_cy_2_Q : MUXCY
    port map (
      CI => U3_Madd_addrTemp_share0000_cy(1),
      DI => U2_PC_temp(2),
      S => U3_Madd_addrTemp_share0000_lut(2),
      O => U3_Madd_addrTemp_share0000_cy(2)
    );
  U3_Madd_addrTemp_share0000_lut_2_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U2_PC_temp(2),
      I1 => U2_IR(2),
      O => U3_Madd_addrTemp_share0000_lut(2)
    );
  U3_Madd_addrTemp_share0000_xor_1_Q : XORCY
    port map (
      CI => U3_Madd_addrTemp_share0000_cy(0),
      LI => U3_Madd_addrTemp_share0000_lut(1),
      O => U3_addrTemp_share0000(1)
    );
  U3_Madd_addrTemp_share0000_cy_1_Q : MUXCY
    port map (
      CI => U3_Madd_addrTemp_share0000_cy(0),
      DI => U2_PC_temp(1),
      S => U3_Madd_addrTemp_share0000_lut(1),
      O => U3_Madd_addrTemp_share0000_cy(1)
    );
  U3_Madd_addrTemp_share0000_lut_1_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U2_PC_temp(1),
      I1 => U2_IR(1),
      O => U3_Madd_addrTemp_share0000_lut(1)
    );
  U3_Madd_addrTemp_share0000_xor_0_Q : XORCY
    port map (
      CI => N1,
      LI => U3_Madd_addrTemp_share0000_lut(0),
      O => U3_addrTemp_share0000(0)
    );
  U3_Madd_addrTemp_share0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => U2_PC_temp(0),
      S => U3_Madd_addrTemp_share0000_lut(0),
      O => U3_Madd_addrTemp_share0000_cy(0)
    );
  U3_Madd_addrTemp_share0000_lut_0_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U2_PC_temp(0),
      I1 => U2_IR(0),
      O => U3_Madd_addrTemp_share0000_lut(0)
    );
  U3_Cy : LD_1
    port map (
      D => U3_Cy_mux0005,
      G => rst_IBUF_912,
      Q => U3_Cy_237
    );
  U3_Zf : LDC
    port map (
      CLR => rst_IBUF1,
      D => U3_Zf_mux0004,
      G => U1_temp_FSM_FFd3_103,
      Q => U3_Zf_532
    );
  U4_Mtridata_temp_7 : LDE
    port map (
      D => U6_mDBUS(7),
      G => U1_temp_FSM_FFd2_101,
      GE => U4_Mtridata_temp_cmp_eq0000_651,
      Q => U4_Mtridata_temp(7)
    );
  U4_Mtridata_temp_6 : LDE
    port map (
      D => U6_mDBUS(6),
      G => U1_temp_FSM_FFd2_101,
      GE => U4_Mtridata_temp_cmp_eq0000_651,
      Q => U4_Mtridata_temp(6)
    );
  U4_Mtridata_temp_5 : LDE
    port map (
      D => U6_mDBUS(5),
      G => U1_temp_FSM_FFd2_101,
      GE => U4_Mtridata_temp_cmp_eq0000_651,
      Q => U4_Mtridata_temp(5)
    );
  U4_Mtridata_temp_4 : LDE
    port map (
      D => U6_mDBUS(4),
      G => U1_temp_FSM_FFd2_101,
      GE => U4_Mtridata_temp_cmp_eq0000_651,
      Q => U4_Mtridata_temp(4)
    );
  U4_Mtridata_temp_3 : LDE
    port map (
      D => U6_mDBUS(3),
      G => U1_temp_FSM_FFd2_101,
      GE => U4_Mtridata_temp_cmp_eq0000_651,
      Q => U4_Mtridata_temp(3)
    );
  U4_Mtridata_temp_2 : LDE
    port map (
      D => U6_mDBUS(2),
      G => U1_temp_FSM_FFd2_101,
      GE => U4_Mtridata_temp_cmp_eq0000_651,
      Q => U4_Mtridata_temp(2)
    );
  U4_Mtridata_temp_1 : LDE
    port map (
      D => U6_mDBUS(1),
      G => U1_temp_FSM_FFd2_101,
      GE => U4_Mtridata_temp_cmp_eq0000_651,
      Q => U4_Mtridata_temp(1)
    );
  U4_Mtridata_temp_0 : LDE
    port map (
      D => U6_mDBUS(0),
      G => U1_temp_FSM_FFd2_101,
      GE => U4_Mtridata_temp_cmp_eq0000_651,
      Q => U4_Mtridata_temp(0)
    );
  U4_Mtrien_temp : LD
    port map (
      D => rst_IBUF1,
      G => U4_Mtrien_temp_not0001,
      Q => U4_Mtrien_temp_652
    );
  U5_Mtridata_Rdata_7 : LD
    port map (
      D => U5_Mtridata_Rdata_mux0000(7),
      G => U1_temp_FSM_FFd1_99,
      Q => U5_Mtridata_Rdata(7)
    );
  U5_Mtridata_Rdata_6 : LD
    port map (
      D => U5_Mtridata_Rdata_mux0000(6),
      G => U1_temp_FSM_FFd1_99,
      Q => U5_Mtridata_Rdata(6)
    );
  U5_Mtridata_Rdata_5 : LD
    port map (
      D => U5_Mtridata_Rdata_mux0000(5),
      G => U1_temp_FSM_FFd1_99,
      Q => U5_Mtridata_Rdata(5)
    );
  U5_Mtridata_Rdata_4 : LD
    port map (
      D => U5_Mtridata_Rdata_mux0000(4),
      G => U1_temp_FSM_FFd1_99,
      Q => U5_Mtridata_Rdata(4)
    );
  U5_Mtridata_Rdata_3 : LD
    port map (
      D => U5_Mtridata_Rdata_mux0000(3),
      G => U1_temp_FSM_FFd1_99,
      Q => U5_Mtridata_Rdata(3)
    );
  U5_Mtridata_Rdata_2 : LD
    port map (
      D => U5_Mtridata_Rdata_mux0000(2),
      G => U1_temp_FSM_FFd1_99,
      Q => U5_Mtridata_Rdata(2)
    );
  U5_Mtridata_Rdata_1 : LD
    port map (
      D => U5_Mtridata_Rdata_mux0000(1),
      G => U1_temp_FSM_FFd1_99,
      Q => U5_Mtridata_Rdata(1)
    );
  U5_Mtridata_Rdata_0 : LD
    port map (
      D => U5_Mtridata_Rdata_mux0000(0),
      G => U1_temp_FSM_FFd1_99,
      Q => U5_Mtridata_Rdata(0)
    );
  U5_PcNew_15 : LDC
    port map (
      CLR => rst_IBUF1,
      D => U5_PcNew_mux0002(15),
      G => U1_temp_FSM_FFd1_99,
      Q => U5_PcNew(15)
    );
  U5_PcNew_14 : LDC
    port map (
      CLR => rst_IBUF1,
      D => U5_PcNew_mux0002(14),
      G => U1_temp_FSM_FFd1_99,
      Q => U5_PcNew(14)
    );
  U5_PcNew_13 : LDC
    port map (
      CLR => rst_IBUF1,
      D => U5_PcNew_mux0002(13),
      G => U1_temp_FSM_FFd1_99,
      Q => U5_PcNew(13)
    );
  U5_PcNew_12 : LDC
    port map (
      CLR => rst_IBUF1,
      D => U5_PcNew_mux0002(12),
      G => U1_temp_FSM_FFd1_99,
      Q => U5_PcNew(12)
    );
  U5_PcNew_11 : LDC
    port map (
      CLR => rst_IBUF1,
      D => U5_PcNew_mux0002(11),
      G => U1_temp_FSM_FFd1_99,
      Q => U5_PcNew(11)
    );
  U5_PcNew_10 : LDC
    port map (
      CLR => rst_IBUF1,
      D => U5_PcNew_mux0002(10),
      G => U1_temp_FSM_FFd1_99,
      Q => U5_PcNew(10)
    );
  U5_PcNew_9 : LDC
    port map (
      CLR => rst_IBUF1,
      D => U5_PcNew_mux0002(9),
      G => U1_temp_FSM_FFd1_99,
      Q => U5_PcNew(9)
    );
  U5_PcNew_8 : LDC
    port map (
      CLR => rst_IBUF1,
      D => U5_PcNew_mux0002(8),
      G => U1_temp_FSM_FFd1_99,
      Q => U5_PcNew(8)
    );
  U5_PcNew_7 : LDC
    port map (
      CLR => rst_IBUF1,
      D => U5_PcNew_mux0002(7),
      G => U1_temp_FSM_FFd1_99,
      Q => U5_PcNew(7)
    );
  U5_PcNew_6 : LDC
    port map (
      CLR => rst_IBUF1,
      D => U5_PcNew_mux0002(6),
      G => U1_temp_FSM_FFd1_99,
      Q => U5_PcNew(6)
    );
  U5_PcNew_5 : LDC
    port map (
      CLR => rst_IBUF1,
      D => U5_PcNew_mux0002(5),
      G => U1_temp_FSM_FFd1_99,
      Q => U5_PcNew(5)
    );
  U5_PcNew_4 : LDC
    port map (
      CLR => rst_IBUF1,
      D => U5_PcNew_mux0002(4),
      G => U1_temp_FSM_FFd1_99,
      Q => U5_PcNew(4)
    );
  U5_PcNew_3 : LDC
    port map (
      CLR => rst_IBUF1,
      D => U5_PcNew_mux0002(3),
      G => U1_temp_FSM_FFd1_99,
      Q => U5_PcNew(3)
    );
  U5_PcNew_2 : LDC
    port map (
      CLR => rst_IBUF1,
      D => U5_PcNew_mux0002(2),
      G => U1_temp_FSM_FFd1_99,
      Q => U5_PcNew(2)
    );
  U5_PcNew_1 : LDC
    port map (
      CLR => rst_IBUF1,
      D => U5_PcNew_mux0002(1),
      G => U1_temp_FSM_FFd1_99,
      Q => U5_PcNew(1)
    );
  U5_PcNew_0 : LDC
    port map (
      CLR => rst_IBUF1,
      D => U5_PcNew_mux0002(0),
      G => U1_temp_FSM_FFd1_99,
      Q => U5_PcNew(0)
    );
  U5_cyupdate : LD_1
    port map (
      D => U5_cyupdate_mux0002_741,
      G => rst_IBUF_912,
      Q => U5_cyupdate_740
    );
  U5_PcUpdate : LD
    port map (
      D => U5_PcUpdate_mux0002,
      G => U5_PcUpdate_not0001_736,
      Q => U5_PcUpdate_734
    );
  U5_RegUpdate : LD
    port map (
      D => U5_RegUpdate_mux0002_738,
      G => U5_RegUpdate_not0001_739,
      Q => U5_RegUpdate_737
    );
  U5_Mtrien_Rdata : LD
    port map (
      D => rst_IBUF1,
      G => U5_Mtrien_Rdata_not0001_695,
      Q => U5_Mtrien_Rdata_694
    );
  U3_Reg_0_mux0005_0_11 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U3_Reg_7_or0000,
      I1 => U5_RegUpdate_737,
      O => U3_N01
    );
  U2_PC_temp_9_and00001 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U5_PcUpdate_734,
      I1 => U5_PcNew(9),
      O => U2_PC_temp_9_and0000
    );
  U2_PC_temp_8_and00001 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U5_PcUpdate_734,
      I1 => U5_PcNew(8),
      O => U2_PC_temp_8_and0000
    );
  U2_PC_temp_7_and00001 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U5_PcUpdate_734,
      I1 => U5_PcNew(7),
      O => U2_PC_temp_7_and0000
    );
  U2_PC_temp_6_and00001 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U5_PcUpdate_734,
      I1 => U5_PcNew(6),
      O => U2_PC_temp_6_and0000
    );
  U2_PC_temp_5_and00001 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U5_PcUpdate_734,
      I1 => U5_PcNew(5),
      O => U2_PC_temp_5_and0000
    );
  U2_PC_temp_4_and00001 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U5_PcUpdate_734,
      I1 => U5_PcNew(4),
      O => U2_PC_temp_4_and0000
    );
  U2_PC_temp_3_and00001 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U5_PcUpdate_734,
      I1 => U5_PcNew(3),
      O => U2_PC_temp_3_and0000
    );
  U2_PC_temp_2_and00001 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U5_PcUpdate_734,
      I1 => U5_PcNew(2),
      O => U2_PC_temp_2_and0000
    );
  U2_PC_temp_1_and00001 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U5_PcUpdate_734,
      I1 => U5_PcNew(1),
      O => U2_PC_temp_1_and0000
    );
  U2_PC_temp_15_and00001 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U5_PcUpdate_734,
      I1 => U5_PcNew(15),
      O => U2_PC_temp_15_and0000
    );
  U2_PC_temp_14_and00001 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U5_PcUpdate_734,
      I1 => U5_PcNew(14),
      O => U2_PC_temp_14_and0000
    );
  U2_PC_temp_13_and00001 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U5_PcUpdate_734,
      I1 => U5_PcNew(13),
      O => U2_PC_temp_13_and0000
    );
  U2_PC_temp_12_and00001 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U5_PcUpdate_734,
      I1 => U5_PcNew(12),
      O => U2_PC_temp_12_and0000
    );
  U2_PC_temp_11_and00001 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U5_PcUpdate_734,
      I1 => U5_PcNew(11),
      O => U2_PC_temp_11_and0000
    );
  U2_PC_temp_10_and00001 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U5_PcUpdate_734,
      I1 => U5_PcNew(10),
      O => U2_PC_temp_10_and0000
    );
  U2_PC_temp_0_and00001 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U5_PcUpdate_734,
      I1 => U5_PcNew(0),
      O => U2_PC_temp_0_and0000
    );
  U5_PcNew_mux0002_0_111 : LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => U2_IR(14),
      I1 => U2_IR(13),
      I2 => U2_IR(12),
      O => U5_N10
    );
  U5_Mtridata_Rdata_mux0000_0_31 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => U5_N10,
      I1 => U2_IR(15),
      I2 => U2_IR(11),
      O => U5_N5
    );
  U4_Mtrien_temp_not00011 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => U4_Mtridata_temp_cmp_eq0000_651,
      I1 => U1_temp_FSM_FFd21,
      I2 => rst_IBUF1,
      O => U4_Mtrien_temp_not0001
    );
  U2_PC_temp_9_or00001 : LUT3
    generic map(
      INIT => X"AE"
    )
    port map (
      I0 => rst_IBUF1,
      I1 => U5_PcUpdate_734,
      I2 => U5_PcNew(9),
      O => U2_PC_temp_9_or0000
    );
  U2_PC_temp_8_or00001 : LUT3
    generic map(
      INIT => X"AE"
    )
    port map (
      I0 => rst_IBUF1,
      I1 => U5_PcUpdate_734,
      I2 => U5_PcNew(8),
      O => U2_PC_temp_8_or0000
    );
  U2_PC_temp_7_or00001 : LUT3
    generic map(
      INIT => X"AE"
    )
    port map (
      I0 => rst_IBUF1,
      I1 => U5_PcUpdate_734,
      I2 => U5_PcNew(7),
      O => U2_PC_temp_7_or0000
    );
  U2_PC_temp_6_or00001 : LUT3
    generic map(
      INIT => X"AE"
    )
    port map (
      I0 => rst_IBUF1,
      I1 => U5_PcUpdate_734,
      I2 => U5_PcNew(6),
      O => U2_PC_temp_6_or0000
    );
  U2_PC_temp_5_or00001 : LUT3
    generic map(
      INIT => X"AE"
    )
    port map (
      I0 => rst_IBUF1,
      I1 => U5_PcUpdate_734,
      I2 => U5_PcNew(5),
      O => U2_PC_temp_5_or0000
    );
  U2_PC_temp_4_or00001 : LUT3
    generic map(
      INIT => X"AE"
    )
    port map (
      I0 => rst_IBUF1,
      I1 => U5_PcUpdate_734,
      I2 => U5_PcNew(4),
      O => U2_PC_temp_4_or0000
    );
  U2_PC_temp_3_or00001 : LUT3
    generic map(
      INIT => X"AE"
    )
    port map (
      I0 => rst_IBUF1,
      I1 => U5_PcUpdate_734,
      I2 => U5_PcNew(3),
      O => U2_PC_temp_3_or0000
    );
  U2_PC_temp_2_or00001 : LUT3
    generic map(
      INIT => X"AE"
    )
    port map (
      I0 => rst_IBUF1,
      I1 => U5_PcUpdate_734,
      I2 => U5_PcNew(2),
      O => U2_PC_temp_2_or0000
    );
  U2_PC_temp_1_or00001 : LUT3
    generic map(
      INIT => X"AE"
    )
    port map (
      I0 => rst_IBUF1,
      I1 => U5_PcUpdate_734,
      I2 => U5_PcNew(1),
      O => U2_PC_temp_1_or0000
    );
  U2_PC_temp_15_or00001 : LUT3
    generic map(
      INIT => X"AE"
    )
    port map (
      I0 => rst_IBUF1,
      I1 => U5_PcUpdate_734,
      I2 => U5_PcNew(15),
      O => U2_PC_temp_15_or0000
    );
  U2_PC_temp_14_or00001 : LUT3
    generic map(
      INIT => X"AE"
    )
    port map (
      I0 => rst_IBUF1,
      I1 => U5_PcUpdate_734,
      I2 => U5_PcNew(14),
      O => U2_PC_temp_14_or0000
    );
  U2_PC_temp_13_or00001 : LUT3
    generic map(
      INIT => X"AE"
    )
    port map (
      I0 => rst_IBUF1,
      I1 => U5_PcUpdate_734,
      I2 => U5_PcNew(13),
      O => U2_PC_temp_13_or0000
    );
  U2_PC_temp_12_or00001 : LUT3
    generic map(
      INIT => X"AE"
    )
    port map (
      I0 => rst_IBUF1,
      I1 => U5_PcUpdate_734,
      I2 => U5_PcNew(12),
      O => U2_PC_temp_12_or0000
    );
  U2_PC_temp_11_or00001 : LUT3
    generic map(
      INIT => X"AE"
    )
    port map (
      I0 => rst_IBUF1,
      I1 => U5_PcUpdate_734,
      I2 => U5_PcNew(11),
      O => U2_PC_temp_11_or0000
    );
  U2_PC_temp_10_or00001 : LUT3
    generic map(
      INIT => X"AE"
    )
    port map (
      I0 => rst_IBUF1,
      I1 => U5_PcUpdate_734,
      I2 => U5_PcNew(10),
      O => U2_PC_temp_10_or0000
    );
  U2_PC_temp_0_or00001 : LUT3
    generic map(
      INIT => X"AE"
    )
    port map (
      I0 => rst_IBUF1,
      I1 => U5_PcUpdate_734,
      I2 => U5_PcNew(0),
      O => U2_PC_temp_0_or0000
    );
  U3_Reg_7_mux0005_0_11 : LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => U2_IR(8),
      I1 => U3_N01,
      I2 => U2_IR(10),
      I3 => U2_IR(9),
      O => U3_N12
    );
  U3_Reg_6_mux0005_0_11 : LUT4
    generic map(
      INIT => X"FF7F"
    )
    port map (
      I0 => U3_N01,
      I1 => U2_IR(10),
      I2 => U2_IR(9),
      I3 => U2_IR(8),
      O => U3_N111
    );
  U3_Reg_5_mux0005_0_11 : LUT4
    generic map(
      INIT => X"FF7F"
    )
    port map (
      I0 => U2_IR(8),
      I1 => U3_N01,
      I2 => U2_IR(10),
      I3 => U2_IR(9),
      O => U3_N10
    );
  U3_Reg_4_mux0005_0_11 : LUT4
    generic map(
      INIT => X"FFDF"
    )
    port map (
      I0 => U3_N01,
      I1 => U2_IR(8),
      I2 => U2_IR(10),
      I3 => U2_IR(9),
      O => U3_N9
    );
  U3_Reg_3_mux0005_0_11 : LUT4
    generic map(
      INIT => X"FF7F"
    )
    port map (
      I0 => U2_IR(8),
      I1 => U3_N01,
      I2 => U2_IR(9),
      I3 => U2_IR(10),
      O => U3_N8
    );
  U3_Reg_2_mux0005_0_11 : LUT4
    generic map(
      INIT => X"FFDF"
    )
    port map (
      I0 => U3_N01,
      I1 => U2_IR(10),
      I2 => U2_IR(9),
      I3 => U2_IR(8),
      O => U3_N7
    );
  U3_Reg_1_mux0005_0_11 : LUT4
    generic map(
      INIT => X"FFDF"
    )
    port map (
      I0 => U2_IR(8),
      I1 => U2_IR(10),
      I2 => U3_N01,
      I3 => U2_IR(9),
      O => U3_N6
    );
  U3_Reg_0_mux0005_0_21 : LUT4
    generic map(
      INIT => X"FFFD"
    )
    port map (
      I0 => U3_N01,
      I1 => U2_IR(8),
      I2 => U2_IR(10),
      I3 => U2_IR(9),
      O => U3_N5
    );
  U3_Reg_7_cmp_eq0001_inv_SW0 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U2_IR(14),
      I1 => U2_IR(13),
      O => N8
    );
  U3_Reg_7_cmp_eq0001_inv : LUT4
    generic map(
      INIT => X"FFFD"
    )
    port map (
      I0 => U2_IR(11),
      I1 => U2_IR(12),
      I2 => U2_IR(15),
      I3 => N8,
      O => U3_Reg_7_cmp_eq0001_inv_520
    );
  U5_Mtridata_Rdata_mux0000_0_2 : LUT4
    generic map(
      INIT => X"FAAB"
    )
    port map (
      I0 => N10,
      I1 => U2_IR(12),
      I2 => U2_IR(11),
      I3 => U2_IR(13),
      O => U5_N4
    );
  U5_Mtridata_Rdata_mux0000_0_4 : LUT4
    generic map(
      INIT => X"0306"
    )
    port map (
      I0 => U2_IR(12),
      I1 => U2_IR(13),
      I2 => N10,
      I3 => U2_IR(11),
      O => U5_N8
    );
  U5_PcNew_mux0002_0_2_SW0 : LUT3
    generic map(
      INIT => X"FD"
    )
    port map (
      I0 => U2_IR(14),
      I1 => U2_IR(15),
      I2 => U2_IR(13),
      O => N14
    );
  U5_PcNew_mux0002_0_2_SW1 : LUT4
    generic map(
      INIT => X"FFDF"
    )
    port map (
      I0 => U2_IR(13),
      I1 => U2_IR(15),
      I2 => U3_Zf_532,
      I3 => U2_IR(14),
      O => N15
    );
  U5_PcNew_mux0002_0_2 : LUT4
    generic map(
      INIT => X"DFDA"
    )
    port map (
      I0 => U2_IR(12),
      I1 => N15,
      I2 => U2_IR(11),
      I3 => N14,
      O => U5_N3
    );
  U5_Mtrien_Rdata_not0001_SW0 : LUT4
    generic map(
      INIT => X"7060"
    )
    port map (
      I0 => U2_IR(11),
      I1 => U2_IR(13),
      I2 => U1_temp_FSM_FFd11,
      I3 => U2_IR(12),
      O => N20
    );
  U5_Mtrien_Rdata_not0001 : LUT4
    generic map(
      INIT => X"FF10"
    )
    port map (
      I0 => U2_IR(15),
      I1 => U2_IR(14),
      I2 => N20,
      I3 => rst_IBUF1,
      O => U5_Mtrien_Rdata_not0001_695
    );
  U5_PcUpdate_not0001_SW0 : LUT4
    generic map(
      INIT => X"240C"
    )
    port map (
      I0 => U2_IR(11),
      I1 => U2_IR(14),
      I2 => U2_IR(13),
      I3 => U2_IR(12),
      O => N22
    );
  U5_PcUpdate_not0001 : LUT4
    generic map(
      INIT => X"BAFF"
    )
    port map (
      I0 => rst_IBUF1,
      I1 => U2_IR(15),
      I2 => N22,
      I3 => U1_temp_FSM_FFd11,
      O => U5_PcUpdate_not0001_736
    );
  U5_RegUpdate_not0001_SW0 : LUT4
    generic map(
      INIT => X"067E"
    )
    port map (
      I0 => U2_IR(12),
      I1 => U2_IR(11),
      I2 => U2_IR(13),
      I3 => U2_IR(14),
      O => N24
    );
  U5_RegUpdate_not0001 : LUT4
    generic map(
      INIT => X"BAFF"
    )
    port map (
      I0 => rst_IBUF1,
      I1 => U2_IR(15),
      I2 => N24,
      I3 => U1_temp_FSM_FFd11,
      O => U5_RegUpdate_not0001_739
    );
  U5_RegUpdate_mux0002_SW0 : LUT4
    generic map(
      INIT => X"FFFD"
    )
    port map (
      I0 => U1_temp_FSM_FFd11,
      I1 => U2_IR(14),
      I2 => U2_IR(15),
      I3 => rst_IBUF1,
      O => N26
    );
  U5_RegUpdate_mux0002 : LUT4
    generic map(
      INIT => X"0706"
    )
    port map (
      I0 => U2_IR(11),
      I1 => U2_IR(13),
      I2 => N26,
      I3 => U2_IR(12),
      O => U5_RegUpdate_mux0002_738
    );
  U5_PcUpdate_mux00021 : LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => rst_IBUF1,
      I1 => U1_temp_FSM_FFd11,
      I2 => U5_N7,
      O => U5_PcUpdate_mux0002
    );
  s4_7_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => k_IBUF_902,
      I1 => U6_ABUS(7),
      O => s4_7_OBUF_977
    );
  s4_6_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => k_IBUF_902,
      I1 => U6_ABUS(6),
      O => s4_6_OBUF_976
    );
  s4_5_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => k_IBUF_902,
      I1 => U6_ABUS(5),
      O => s4_5_OBUF_975
    );
  s4_4_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => k_IBUF_902,
      I1 => U6_ABUS(4),
      O => s4_4_OBUF_974
    );
  s4_3_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => k_IBUF_902,
      I1 => U6_ABUS(3),
      O => s4_3_OBUF_973
    );
  s4_2_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => k_IBUF_902,
      I1 => U6_ABUS(2),
      O => s4_2_OBUF_972
    );
  s4_1_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => k_IBUF_902,
      I1 => U6_ABUS(1),
      O => s4_1_OBUF_971
    );
  s4_0_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => k_IBUF_902,
      I1 => U6_ABUS(0),
      O => s4_0_OBUF_970
    );
  a_4_not00001 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => rst_IBUF1,
      I1 => U2_irreq_236,
      O => a_4_OBUF_854
    );
  U6_nBHE1 : LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => rst_IBUF1,
      I1 => U2_irreq_236,
      O => nbhe_OBUF_904
    );
  s5_7_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => k_IBUF_902,
      I1 => U6_ABUS(15),
      I2 => U3_temp_aluout(7),
      O => s5_7_OBUF_993
    );
  s5_6_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => k_IBUF_902,
      I1 => U6_ABUS(14),
      I2 => U3_temp_aluout(6),
      O => s5_6_OBUF_992
    );
  s5_5_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => k_IBUF_902,
      I1 => U6_ABUS(13),
      I2 => U3_temp_aluout(5),
      O => s5_5_OBUF_991
    );
  s5_4_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => k_IBUF_902,
      I1 => U6_ABUS(12),
      I2 => U3_temp_aluout(4),
      O => s5_4_OBUF_990
    );
  s5_3_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => k_IBUF_902,
      I1 => U6_ABUS(11),
      I2 => U3_temp_aluout(3),
      O => s5_3_OBUF_989
    );
  s5_2_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => k_IBUF_902,
      I1 => U6_ABUS(10),
      I2 => U3_temp_aluout(2),
      O => s5_2_OBUF_988
    );
  s5_1_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => k_IBUF_902,
      I1 => U6_ABUS(9),
      I2 => U3_temp_aluout(1),
      O => s5_1_OBUF_987
    );
  s5_0_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => k_IBUF_902,
      I1 => U6_ABUS(8),
      I2 => U3_temp_aluout(0),
      O => s5_0_OBUF_986
    );
  U1_temp_FSM_FFd4_In1 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U1_temp_FSM_FFd11,
      I1 => U1_temp_FSM_FFd5_107,
      O => U1_temp_FSM_FFd4_In
    );
  U5_PcNew_mux0002_9_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => U5_N3,
      I1 => U5_PcNew(9),
      I2 => U3_addrTemp(9),
      I3 => U5_N7,
      O => U5_PcNew_mux0002(9)
    );
  U5_PcNew_mux0002_8_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => U5_N3,
      I1 => U5_PcNew(8),
      I2 => U3_addrTemp(8),
      I3 => U5_N7,
      O => U5_PcNew_mux0002(8)
    );
  U5_PcNew_mux0002_7_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => U5_N3,
      I1 => U5_PcNew(7),
      I2 => U3_addrTemp(7),
      I3 => U5_N7,
      O => U5_PcNew_mux0002(7)
    );
  U5_PcNew_mux0002_6_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => U5_N3,
      I1 => U5_PcNew(6),
      I2 => U3_addrTemp(6),
      I3 => U5_N7,
      O => U5_PcNew_mux0002(6)
    );
  U5_PcNew_mux0002_5_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => U5_N3,
      I1 => U5_PcNew(5),
      I2 => U3_addrTemp(5),
      I3 => U5_N7,
      O => U5_PcNew_mux0002(5)
    );
  U5_PcNew_mux0002_4_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => U5_N3,
      I1 => U5_PcNew(4),
      I2 => U3_addrTemp(4),
      I3 => U5_N7,
      O => U5_PcNew_mux0002(4)
    );
  U5_PcNew_mux0002_3_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => U5_N3,
      I1 => U5_PcNew(3),
      I2 => U3_addrTemp(3),
      I3 => U5_N7,
      O => U5_PcNew_mux0002(3)
    );
  U5_PcNew_mux0002_2_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => U5_N3,
      I1 => U5_PcNew(2),
      I2 => U3_addrTemp(2),
      I3 => U5_N7,
      O => U5_PcNew_mux0002(2)
    );
  U5_PcNew_mux0002_1_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => U5_N3,
      I1 => U5_PcNew(1),
      I2 => U3_addrTemp(1),
      I3 => U5_N7,
      O => U5_PcNew_mux0002(1)
    );
  U5_PcNew_mux0002_15_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => U5_N3,
      I1 => U5_PcNew(15),
      I2 => U3_addrTemp(15),
      I3 => U5_N7,
      O => U5_PcNew_mux0002(15)
    );
  U5_PcNew_mux0002_14_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => U5_N3,
      I1 => U5_PcNew(14),
      I2 => U3_addrTemp(14),
      I3 => U5_N7,
      O => U5_PcNew_mux0002(14)
    );
  U5_PcNew_mux0002_13_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => U5_N3,
      I1 => U5_PcNew(13),
      I2 => U3_addrTemp(13),
      I3 => U5_N7,
      O => U5_PcNew_mux0002(13)
    );
  U5_PcNew_mux0002_12_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => U5_N3,
      I1 => U5_PcNew(12),
      I2 => U3_addrTemp(12),
      I3 => U5_N7,
      O => U5_PcNew_mux0002(12)
    );
  U5_PcNew_mux0002_11_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => U5_N3,
      I1 => U5_PcNew(11),
      I2 => U3_addrTemp(11),
      I3 => U5_N7,
      O => U5_PcNew_mux0002(11)
    );
  U5_PcNew_mux0002_10_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => U5_N3,
      I1 => U5_PcNew(10),
      I2 => U3_addrTemp(10),
      I3 => U5_N7,
      O => U5_PcNew_mux0002(10)
    );
  U5_PcNew_mux0002_0_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => U5_N3,
      I1 => U5_PcNew(0),
      I2 => U3_addrTemp(0),
      I3 => U5_N7,
      O => U5_PcNew_mux0002(0)
    );
  U5_Mtridata_Rdata_mux0000_7_10 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => U5_Mtridata_Rdata(7),
      I1 => U5_N4,
      I2 => U5_Mtridata_Rdata_mux0000_7_5,
      O => U5_Mtridata_Rdata_mux0000(7)
    );
  U5_Mtridata_Rdata_mux0000_6_10 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => U5_Mtridata_Rdata(6),
      I1 => U5_N4,
      I2 => U5_Mtridata_Rdata_mux0000_6_5,
      O => U5_Mtridata_Rdata_mux0000(6)
    );
  U5_Mtridata_Rdata_mux0000_5_10 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => U5_Mtridata_Rdata(5),
      I1 => U5_N4,
      I2 => U5_Mtridata_Rdata_mux0000_5_5,
      O => U5_Mtridata_Rdata_mux0000(5)
    );
  U5_Mtridata_Rdata_mux0000_4_10 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => U5_Mtridata_Rdata(4),
      I1 => U5_N4,
      I2 => U5_Mtridata_Rdata_mux0000_4_5,
      O => U5_Mtridata_Rdata_mux0000(4)
    );
  U5_Mtridata_Rdata_mux0000_3_10 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => U5_Mtridata_Rdata(3),
      I1 => U5_N4,
      I2 => U5_Mtridata_Rdata_mux0000_3_5,
      O => U5_Mtridata_Rdata_mux0000(3)
    );
  U5_Mtridata_Rdata_mux0000_2_10 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => U5_Mtridata_Rdata(2),
      I1 => U5_N4,
      I2 => U5_Mtridata_Rdata_mux0000_2_5,
      O => U5_Mtridata_Rdata_mux0000(2)
    );
  U5_Mtridata_Rdata_mux0000_1_10 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => U5_Mtridata_Rdata(1),
      I1 => U5_N4,
      I2 => U5_Mtridata_Rdata_mux0000_1_5,
      O => U5_Mtridata_Rdata_mux0000(1)
    );
  U5_Mtridata_Rdata_mux0000_0_10 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => U5_Mtridata_Rdata(0),
      I1 => U5_N4,
      I2 => U5_Mtridata_Rdata_mux0000_0_5,
      O => U5_Mtridata_Rdata_mux0000(0)
    );
  U6_nWR_mux00021 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => WR,
      I1 => U1_temp_FSM_FFd21,
      O => U6_nWR_mux0002
    );
  U5_cyupdate_mux0002_SW0 : LUT4
    generic map(
      INIT => X"FBBF"
    )
    port map (
      I0 => U2_IR(15),
      I1 => U2_IR(14),
      I2 => U2_IR(11),
      I3 => U2_IR(12),
      O => N28
    );
  U5_cyupdate_mux0002 : LUT4
    generic map(
      INIT => X"CC04"
    )
    port map (
      I0 => U2_IR(13),
      I1 => U1_temp_FSM_FFd11,
      I2 => N28,
      I3 => U5_cyupdate_740,
      O => U5_cyupdate_mux0002_741
    );
  U2_PC_temp_Q_mux0000_0_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U5_PcUpdate_734,
      I1 => U2_PC_temp_add0000(0),
      I2 => U5_PcNew(0),
      O => U2_PC_temp_Q_mux0000(0)
    );
  s3_7_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => k_IBUF_902,
      I1 => N115,
      I2 => RegAout(7),
      O => s3_7_OBUF_961
    );
  s3_6_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => k_IBUF_902,
      I1 => N116,
      I2 => RegAout(6),
      O => s3_6_OBUF_960
    );
  s3_5_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => k_IBUF_902,
      I1 => N117,
      I2 => RegAout(5),
      O => s3_5_OBUF_959
    );
  s3_4_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => k_IBUF_902,
      I1 => N118,
      I2 => RegAout(4),
      O => s3_4_OBUF_958
    );
  s3_3_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => k_IBUF_902,
      I1 => N119,
      I2 => RegAout(3),
      O => s3_3_OBUF_957
    );
  s3_2_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => k_IBUF_902,
      I1 => N120,
      I2 => RegAout(2),
      O => s3_2_OBUF_956
    );
  s3_1_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => k_IBUF_902,
      I1 => N121,
      I2 => RegAout(1),
      O => s3_1_OBUF_955
    );
  s3_0_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => k_IBUF_902,
      I1 => N122,
      I2 => RegAout(0),
      O => s3_0_OBUF_954
    );
  s2_7_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => k_IBUF_902,
      I1 => N123,
      I2 => RegBout(7),
      O => s2_7_OBUF_945
    );
  s2_6_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => k_IBUF_902,
      I1 => N124,
      I2 => RegBout(6),
      O => s2_6_OBUF_944
    );
  s2_5_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => k_IBUF_902,
      I1 => N125,
      I2 => RegBout(5),
      O => s2_5_OBUF_943
    );
  s2_4_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => k_IBUF_902,
      I1 => N126,
      I2 => RegBout(4),
      O => s2_4_OBUF_942
    );
  s2_3_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => k_IBUF_902,
      I1 => N127,
      I2 => RegBout(3),
      O => s2_3_OBUF_941
    );
  s2_2_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => k_IBUF_902,
      I1 => N128,
      I2 => RegBout(2),
      O => s2_2_OBUF_940
    );
  s2_1_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => k_IBUF_902,
      I1 => N129,
      I2 => RegBout(1),
      O => s2_1_OBUF_939
    );
  s2_0_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => k_IBUF_902,
      I1 => N130,
      I2 => RegBout(0),
      O => s2_0_OBUF_938
    );
  U2_PC_temp_Q_mux0000_1_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U5_PcUpdate_734,
      I1 => U2_PC_temp_add0000(1),
      I2 => U5_PcNew(1),
      O => U2_PC_temp_Q_mux0000(1)
    );
  U2_PC_temp_Q_mux0000_2_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U5_PcUpdate_734,
      I1 => U2_PC_temp_add0000(2),
      I2 => U5_PcNew(2),
      O => U2_PC_temp_Q_mux0000(2)
    );
  U2_PC_temp_Q_mux0000_3_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U5_PcUpdate_734,
      I1 => U2_PC_temp_add0000(3),
      I2 => U5_PcNew(3),
      O => U2_PC_temp_Q_mux0000(3)
    );
  U3_temp_aluout_mux0002_0_4 : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => U2_IR(13),
      I1 => U2_IR(12),
      I2 => U2_IR(11),
      I3 => N10,
      O => U3_N19
    );
  U2_PC_temp_Q_mux0000_4_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U5_PcUpdate_734,
      I1 => U2_PC_temp_add0000(4),
      I2 => U5_PcNew(4),
      O => U2_PC_temp_Q_mux0000(4)
    );
  U2_PC_temp_Q_mux0000_5_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U5_PcUpdate_734,
      I1 => U2_PC_temp_add0000(5),
      I2 => U5_PcNew(5),
      O => U2_PC_temp_Q_mux0000(5)
    );
  U2_PC_temp_Q_mux0000_6_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U5_PcUpdate_734,
      I1 => U2_PC_temp_add0000(6),
      I2 => U5_PcNew(6),
      O => U2_PC_temp_Q_mux0000(6)
    );
  U2_PC_temp_Q_mux0000_7_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U5_PcUpdate_734,
      I1 => U2_PC_temp_add0000(7),
      I2 => U5_PcNew(7),
      O => U2_PC_temp_Q_mux0000(7)
    );
  U2_PC_temp_Q_mux0000_8_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U5_PcUpdate_734,
      I1 => U2_PC_temp_add0000(8),
      I2 => U5_PcNew(8),
      O => U2_PC_temp_Q_mux0000(8)
    );
  U2_PC_temp_Q_mux0000_9_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U5_PcUpdate_734,
      I1 => U2_PC_temp_add0000(9),
      I2 => U5_PcNew(9),
      O => U2_PC_temp_Q_mux0000(9)
    );
  U2_PC_temp_Q_mux0000_10_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U5_PcUpdate_734,
      I1 => U2_PC_temp_add0000(10),
      I2 => U5_PcNew(10),
      O => U2_PC_temp_Q_mux0000(10)
    );
  U3_Zf_mux000431 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => U2_IR(11),
      I1 => U2_IR(12),
      O => U3_N16
    );
  U3_temp_aluout_mux0002_0_21 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => U2_IR(15),
      I1 => U3_N16,
      I2 => U2_IR(14),
      I3 => U2_IR(13),
      O => U3_N17
    );
  U4_WR : LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => U2_IR(13),
      I1 => U2_IR(12),
      I2 => U2_IR(11),
      I3 => N39,
      O => WR
    );
  U3_temp_aluout_mux0002_7_4 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => U3_N17,
      I1 => RegBout(7),
      I2 => U2_IR(7),
      I3 => U3_N19,
      O => U3_temp_aluout_mux0002_7_4_642
    );
  U3_temp_aluout_mux0002_7_15 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => U3_N3,
      I1 => RegAout(7),
      I2 => U3_cal(7),
      I3 => U3_Reg_7_or0000,
      O => U3_temp_aluout_mux0002_7_15_641
    );
  U3_temp_aluout_mux0002_6_4 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => U3_N17,
      I1 => RegBout(6),
      I2 => U2_IR(6),
      I3 => U3_N19,
      O => U3_temp_aluout_mux0002_6_4_639
    );
  U3_temp_aluout_mux0002_6_15 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => U3_N3,
      I1 => RegAout(6),
      I2 => U3_cal(6),
      I3 => U3_Reg_7_or0000,
      O => U3_temp_aluout_mux0002_6_15_638
    );
  U3_temp_aluout_mux0002_5_4 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => U3_N17,
      I1 => RegBout(5),
      I2 => U2_IR(5),
      I3 => U3_N19,
      O => U3_temp_aluout_mux0002_5_4_636
    );
  U3_temp_aluout_mux0002_5_15 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => U3_N3,
      I1 => RegAout(5),
      I2 => U3_cal(5),
      I3 => U3_Reg_7_or0000,
      O => U3_temp_aluout_mux0002_5_15_635
    );
  U3_temp_aluout_mux0002_4_4 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => U3_N17,
      I1 => RegBout(4),
      I2 => U2_IR(4),
      I3 => U3_N19,
      O => U3_temp_aluout_mux0002_4_4_633
    );
  U3_temp_aluout_mux0002_4_15 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => U3_N3,
      I1 => RegAout(4),
      I2 => U3_cal(4),
      I3 => U3_Reg_7_or0000,
      O => U3_temp_aluout_mux0002_4_15_632
    );
  U3_temp_aluout_mux0002_3_4 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => U3_N17,
      I1 => RegBout(3),
      I2 => U2_IR(3),
      I3 => U3_N19,
      O => U3_temp_aluout_mux0002_3_4_630
    );
  U3_temp_aluout_mux0002_3_15 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => U3_N3,
      I1 => RegAout(3),
      I2 => U3_cal(3),
      I3 => U3_Reg_7_or0000,
      O => U3_temp_aluout_mux0002_3_15_629
    );
  U3_temp_aluout_mux0002_2_4 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => U3_N17,
      I1 => RegBout(2),
      I2 => U2_IR(2),
      I3 => U3_N19,
      O => U3_temp_aluout_mux0002_2_4_627
    );
  U3_temp_aluout_mux0002_2_15 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => U3_N3,
      I1 => RegAout(2),
      I2 => U3_cal(2),
      I3 => U3_Reg_7_or0000,
      O => U3_temp_aluout_mux0002_2_15_626
    );
  U3_temp_aluout_mux0002_1_4 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => U3_N17,
      I1 => RegBout(1),
      I2 => U2_IR(1),
      I3 => U3_N19,
      O => U3_temp_aluout_mux0002_1_4_624
    );
  U3_temp_aluout_mux0002_1_15 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => U3_N3,
      I1 => RegAout(1),
      I2 => U3_cal(1),
      I3 => U3_Reg_7_or0000,
      O => U3_temp_aluout_mux0002_1_15_623
    );
  U3_temp_aluout_mux0002_0_41 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => U3_N17,
      I1 => RegBout(0),
      I2 => U2_IR(0),
      I3 => U3_N19,
      O => U3_temp_aluout_mux0002_0_4_620
    );
  U3_temp_aluout_mux0002_0_15 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => U3_N3,
      I1 => RegAout(0),
      I2 => U3_cal(0),
      I3 => U3_Reg_7_or0000,
      O => U3_temp_aluout_mux0002_0_15_619
    );
  U2_PC_temp_Q_mux0000_11_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U5_PcUpdate_734,
      I1 => U2_PC_temp_add0000(11),
      I2 => U5_PcNew(11),
      O => U2_PC_temp_Q_mux0000(11)
    );
  U2_PC_temp_Q_mux0000_12_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U5_PcUpdate_734,
      I1 => U2_PC_temp_add0000(12),
      I2 => U5_PcNew(12),
      O => U2_PC_temp_Q_mux0000(12)
    );
  U6_nMREQ1 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => rst_IBUF1,
      I1 => N5,
      O => nble_OBUF_906
    );
  a_5_not00001 : LUT3
    generic map(
      INIT => X"51"
    )
    port map (
      I0 => rst_IBUF1,
      I1 => N11,
      I2 => U2_irreq_236,
      O => a_5_OBUF_855
    );
  U6_nRD1 : LUT3
    generic map(
      INIT => X"AE"
    )
    port map (
      I0 => rst_IBUF1,
      I1 => N11,
      I2 => U2_irreq_236,
      O => nrd_OBUF_909
    );
  U2_PC_temp_Q_mux0000_13_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U5_PcUpdate_734,
      I1 => U2_PC_temp_add0000(13),
      I2 => U5_PcNew(13),
      O => U2_PC_temp_Q_mux0000(13)
    );
  U2_PC_temp_Q_mux0000_14_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U5_PcUpdate_734,
      I1 => U2_PC_temp_add0000(14),
      I2 => U5_PcNew(14),
      O => U2_PC_temp_Q_mux0000(14)
    );
  U2_PC_temp_Q_mux0000_15_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U5_PcUpdate_734,
      I1 => U2_PC_temp_add0000(15),
      I2 => U5_PcNew(15),
      O => U2_PC_temp_Q_mux0000(15)
    );
  U6_mDBUS_mux0003_7_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => N181,
      I1 => N123,
      I2 => U6_mDBUS(7),
      O => U6_mDBUS_mux0003(7)
    );
  U6_mDBUS_mux0003_6_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => N11,
      I1 => N124,
      I2 => U6_mDBUS(6),
      O => U6_mDBUS_mux0003(6)
    );
  U6_mDBUS_mux0003_5_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => N11,
      I1 => N125,
      I2 => U6_mDBUS(5),
      O => U6_mDBUS_mux0003(5)
    );
  U6_mDBUS_mux0003_4_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => N11,
      I1 => N126,
      I2 => U6_mDBUS(4),
      O => U6_mDBUS_mux0003(4)
    );
  U6_mDBUS_mux0003_3_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => N11,
      I1 => N127,
      I2 => U6_mDBUS(3),
      O => U6_mDBUS_mux0003(3)
    );
  U6_mDBUS_mux0003_2_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => N11,
      I1 => N128,
      I2 => U6_mDBUS(2),
      O => U6_mDBUS_mux0003(2)
    );
  U6_mDBUS_mux0003_1_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => N11,
      I1 => N129,
      I2 => U6_mDBUS(1),
      O => U6_mDBUS_mux0003(1)
    );
  U6_mDBUS_mux0003_0_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => N11,
      I1 => N130,
      I2 => U6_mDBUS(0),
      O => U6_mDBUS_mux0003(0)
    );
  U6_ABUS_mux0003_0_31 : LUT4
    generic map(
      INIT => X"2220"
    )
    port map (
      I0 => U1_temp_FSM_FFd21,
      I1 => U2_irreq_236,
      I2 => WR,
      I3 => N178,
      O => N3
    );
  U6_ABUS_mux0003_0_41 : LUT4
    generic map(
      INIT => X"1113"
    )
    port map (
      I0 => U1_temp_FSM_FFd21,
      I1 => U2_irreq_236,
      I2 => WR,
      I3 => RD,
      O => N5
    );
  U3_Reg_7_or00001 : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => N177,
      I1 => U2_IR(15),
      I2 => U2_IR(14),
      I3 => U2_IR(13),
      O => U3_Reg_7_or0000
    );
  U4_Mtridata_temp_cmp_eq0000 : LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => U2_IR(12),
      I1 => U2_IR(11),
      I2 => U2_IR(13),
      I3 => N176,
      O => U4_Mtridata_temp_cmp_eq0000_651
    );
  U6_ABUS_mux0003_9_Q : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => U2_irreq_236,
      I1 => U2_PC_temp(9),
      I2 => N46,
      O => U6_ABUS_mux0003(9)
    );
  U6_ABUS_mux0003_8_Q : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => U2_irreq_236,
      I1 => U2_PC_temp(8),
      I2 => N48,
      O => U6_ABUS_mux0003(8)
    );
  U6_ABUS_mux0003_7_Q : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => U2_irreq_236,
      I1 => U2_PC_temp(7),
      I2 => N50,
      O => U6_ABUS_mux0003(7)
    );
  U6_ABUS_mux0003_6_Q : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => U2_irreq_236,
      I1 => U2_PC_temp(6),
      I2 => N52,
      O => U6_ABUS_mux0003(6)
    );
  U6_ABUS_mux0003_5_Q : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => U2_irreq_236,
      I1 => U2_PC_temp(5),
      I2 => N54,
      O => U6_ABUS_mux0003(5)
    );
  U6_ABUS_mux0003_4_Q : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => U2_irreq_236,
      I1 => U2_PC_temp(4),
      I2 => N56,
      O => U6_ABUS_mux0003(4)
    );
  U6_ABUS_mux0003_3_Q : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => U2_irreq_236,
      I1 => U2_PC_temp(3),
      I2 => N58,
      O => U6_ABUS_mux0003(3)
    );
  U6_ABUS_mux0003_2_Q : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => U2_irreq_236,
      I1 => U2_PC_temp(2),
      I2 => N60,
      O => U6_ABUS_mux0003(2)
    );
  U6_ABUS_mux0003_1_Q : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => U2_irreq_236,
      I1 => U2_PC_temp(1),
      I2 => N62,
      O => U6_ABUS_mux0003(1)
    );
  U6_ABUS_mux0003_15_Q : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => U2_irreq_236,
      I1 => U2_PC_temp(15),
      I2 => N64,
      O => U6_ABUS_mux0003(15)
    );
  U6_ABUS_mux0003_14_Q : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => U2_irreq_236,
      I1 => U2_PC_temp(14),
      I2 => N66,
      O => U6_ABUS_mux0003(14)
    );
  U6_ABUS_mux0003_13_Q : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => U2_irreq_236,
      I1 => U2_PC_temp(13),
      I2 => N68,
      O => U6_ABUS_mux0003(13)
    );
  U6_ABUS_mux0003_12_Q : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => U2_irreq_236,
      I1 => U2_PC_temp(12),
      I2 => N70,
      O => U6_ABUS_mux0003(12)
    );
  U6_ABUS_mux0003_11_Q : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => U2_irreq_236,
      I1 => U2_PC_temp(11),
      I2 => N72,
      O => U6_ABUS_mux0003(11)
    );
  U6_ABUS_mux0003_10_Q : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => U2_irreq_236,
      I1 => U2_PC_temp(10),
      I2 => N74,
      O => U6_ABUS_mux0003(10)
    );
  U6_ABUS_mux0003_0_Q : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => U2_irreq_236,
      I1 => U2_PC_temp(0),
      I2 => N76,
      O => U6_ABUS_mux0003(0)
    );
  U3_addrTemp_mux0003_7_Q : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => U3_N11,
      I1 => U3_addrTemp(7),
      I2 => N80,
      O => U3_addrTemp_mux0003(7)
    );
  U3_addrTemp_mux0003_6_SW0 : LUT4
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => U2_IR(6),
      I1 => U3_addrTemp_share0000(6),
      I2 => U3_N15,
      I3 => N182,
      O => N82
    );
  U3_addrTemp_mux0003_6_Q : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => U3_N11,
      I1 => U3_addrTemp(6),
      I2 => N82,
      O => U3_addrTemp_mux0003(6)
    );
  U3_addrTemp_mux0003_5_Q : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => U3_N11,
      I1 => U3_addrTemp(5),
      I2 => N84,
      O => U3_addrTemp_mux0003(5)
    );
  U3_addrTemp_mux0003_4_Q : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => U3_N11,
      I1 => U3_addrTemp(4),
      I2 => N86,
      O => U3_addrTemp_mux0003(4)
    );
  U3_addrTemp_mux0003_3_Q : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => U3_N11,
      I1 => U3_addrTemp(3),
      I2 => N88,
      O => U3_addrTemp_mux0003(3)
    );
  U3_addrTemp_mux0003_2_Q : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => U3_N11,
      I1 => U3_addrTemp(2),
      I2 => N90,
      O => U3_addrTemp_mux0003(2)
    );
  U3_addrTemp_mux0003_1_Q : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => U3_N11,
      I1 => U3_addrTemp(1),
      I2 => N92,
      O => U3_addrTemp_mux0003(1)
    );
  U3_addrTemp_mux0003_0_Q : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => U3_N11,
      I1 => U3_addrTemp(0),
      I2 => N94,
      O => U3_addrTemp_mux0003(0)
    );
  U3_addrTemp_mux0003_0_1_SW0 : LUT4
    generic map(
      INIT => X"EFDB"
    )
    port map (
      I0 => U2_IR(11),
      I1 => U2_IR(14),
      I2 => U2_IR(13),
      I3 => U2_IR(12),
      O => N98
    );
  U3_addrTemp_mux0003_0_1_SW1 : LUT4
    generic map(
      INIT => X"FE57"
    )
    port map (
      I0 => U2_IR(13),
      I1 => U2_IR(12),
      I2 => U2_IR(11),
      I3 => U2_IR(14),
      O => N99
    );
  U3_addrTemp_mux0003_0_1 : LUT4
    generic map(
      INIT => X"EEFA"
    )
    port map (
      I0 => U2_IR(15),
      I1 => N99,
      I2 => N98,
      I3 => U3_Zf_cmp_eq0003,
      O => U3_N11
    );
  U3_addrTemp_mux0003_11_Q : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => U3_addrTemp_share0000(11),
      I1 => U3_N14,
      I2 => N105,
      O => U3_addrTemp_mux0003(11)
    );
  U3_addrTemp_mux0003_12_Q : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => U3_addrTemp_share0000(12),
      I1 => U3_N14,
      I2 => N107,
      O => U3_addrTemp_mux0003(12)
    );
  U3_addrTemp_mux0003_13_Q : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => U3_addrTemp_share0000(13),
      I1 => U3_N14,
      I2 => N109,
      O => U3_addrTemp_mux0003(13)
    );
  U3_addrTemp_mux0003_14_Q : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => U3_addrTemp_share0000(14),
      I1 => U3_N14,
      I2 => N111,
      O => U3_addrTemp_mux0003(14)
    );
  U3_addrTemp_mux0003_15_Q : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => U3_addrTemp_share0000(15),
      I1 => U3_N14,
      I2 => N113,
      O => U3_addrTemp_mux0003(15)
    );
  U3_Zf_mux000434 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U3_Zf_532,
      I1 => U3_Zf_mux000426_538,
      O => U3_Zf_mux000434_539
    );
  U3_Zf_mux000496 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => U3_cal(5),
      I1 => U3_cal(6),
      I2 => U3_cal(7),
      I3 => U3_cal(8),
      O => U3_Zf_mux000496_541
    );
  U3_Zf_mux000497 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U3_Zf_mux000477_540,
      I1 => U3_Zf_mux000496_541,
      O => U3_Zf_mux000497_542
    );
  U3_Zf_mux0004132 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => U2_IR(14),
      I1 => U2_IR(15),
      O => U3_Zf_mux0004132_537
    );
  rst_IBUF : IBUF
    port map (
      I => rst,
      O => rst_IBUF1
    );
  k_IBUF : IBUF
    port map (
      I => k,
      O => k_IBUF_902
    );
  dbus_15_IOBUF : IOBUF
    port map (
      I => b_4_OBUF_882,
      T => U6_Mtrien_DBUS(15),
      O => N115,
      IO => dbus(15)
    );
  dbus_14_IOBUF : IOBUF
    port map (
      I => b_4_OBUF_882,
      T => U6_Mtrien_DBUS(14),
      O => N116,
      IO => dbus(14)
    );
  dbus_13_IOBUF : IOBUF
    port map (
      I => b_4_OBUF_882,
      T => U6_Mtrien_DBUS(13),
      O => N117,
      IO => dbus(13)
    );
  dbus_12_IOBUF : IOBUF
    port map (
      I => b_4_OBUF_882,
      T => U6_Mtrien_DBUS(12),
      O => N118,
      IO => dbus(12)
    );
  dbus_11_IOBUF : IOBUF
    port map (
      I => b_4_OBUF_882,
      T => U6_Mtrien_DBUS(11),
      O => N119,
      IO => dbus(11)
    );
  dbus_10_IOBUF : IOBUF
    port map (
      I => b_4_OBUF_882,
      T => U6_Mtrien_DBUS(10),
      O => N120,
      IO => dbus(10)
    );
  dbus_9_IOBUF : IOBUF
    port map (
      I => b_4_OBUF_882,
      T => U6_Mtrien_DBUS(9),
      O => N121,
      IO => dbus(9)
    );
  dbus_8_IOBUF : IOBUF
    port map (
      I => b_4_OBUF_882,
      T => U6_Mtrien_DBUS(8),
      O => N122,
      IO => dbus(8)
    );
  dbus_7_IOBUF : IOBUF
    port map (
      I => U6_Mtridata_DBUS(7),
      T => U6_Mtrien_DBUS(7),
      O => N123,
      IO => dbus(7)
    );
  dbus_6_IOBUF : IOBUF
    port map (
      I => U6_Mtridata_DBUS(6),
      T => U6_Mtrien_DBUS(6),
      O => N124,
      IO => dbus(6)
    );
  dbus_5_IOBUF : IOBUF
    port map (
      I => U6_Mtridata_DBUS(5),
      T => U6_Mtrien_DBUS(5),
      O => N125,
      IO => dbus(5)
    );
  dbus_4_IOBUF : IOBUF
    port map (
      I => U6_Mtridata_DBUS(4),
      T => U6_Mtrien_DBUS(4),
      O => N126,
      IO => dbus(4)
    );
  dbus_3_IOBUF : IOBUF
    port map (
      I => U6_Mtridata_DBUS(3),
      T => U6_Mtrien_DBUS(3),
      O => N127,
      IO => dbus(3)
    );
  dbus_2_IOBUF : IOBUF
    port map (
      I => U6_Mtridata_DBUS(2),
      T => U6_Mtrien_DBUS(2),
      O => N128,
      IO => dbus(2)
    );
  dbus_1_IOBUF : IOBUF
    port map (
      I => U6_Mtridata_DBUS(1),
      T => U6_Mtrien_DBUS(1),
      O => N129,
      IO => dbus(1)
    );
  dbus_0_IOBUF : IOBUF
    port map (
      I => U6_Mtridata_DBUS(0),
      T => U6_Mtrien_DBUS(0),
      O => N130,
      IO => dbus(0)
    );
  nmreq_OBUF : OBUF
    port map (
      I => nble_OBUF_906,
      O => nmreq
    );
  nbhe_OBUF : OBUF
    port map (
      I => nbhe_OBUF_904,
      O => nbhe
    );
  nble_OBUF : OBUF
    port map (
      I => nble_OBUF_906,
      O => nble
    );
  nrd_OBUF : OBUF
    port map (
      I => nrd_OBUF_909,
      O => nrd
    );
  nwr_OBUF : OBUF
    port map (
      I => U6_nWR_1_841,
      O => nwr
    );
  abus_15_OBUF : OBUF
    port map (
      I => U6_ABUS(15),
      O => abus(15)
    );
  abus_14_OBUF : OBUF
    port map (
      I => U6_ABUS(14),
      O => abus(14)
    );
  abus_13_OBUF : OBUF
    port map (
      I => U6_ABUS(13),
      O => abus(13)
    );
  abus_12_OBUF : OBUF
    port map (
      I => U6_ABUS(12),
      O => abus(12)
    );
  abus_11_OBUF : OBUF
    port map (
      I => U6_ABUS(11),
      O => abus(11)
    );
  abus_10_OBUF : OBUF
    port map (
      I => U6_ABUS(10),
      O => abus(10)
    );
  abus_9_OBUF : OBUF
    port map (
      I => U6_ABUS(9),
      O => abus(9)
    );
  abus_8_OBUF : OBUF
    port map (
      I => U6_ABUS(8),
      O => abus(8)
    );
  abus_7_OBUF : OBUF
    port map (
      I => U6_ABUS(7),
      O => abus(7)
    );
  abus_6_OBUF : OBUF
    port map (
      I => U6_ABUS(6),
      O => abus(6)
    );
  abus_5_OBUF : OBUF
    port map (
      I => U6_ABUS(5),
      O => abus(5)
    );
  abus_4_OBUF : OBUF
    port map (
      I => U6_ABUS(4),
      O => abus(4)
    );
  abus_3_OBUF : OBUF
    port map (
      I => U6_ABUS(3),
      O => abus(3)
    );
  abus_2_OBUF : OBUF
    port map (
      I => U6_ABUS(2),
      O => abus(2)
    );
  abus_1_OBUF : OBUF
    port map (
      I => U6_ABUS(1),
      O => abus(1)
    );
  abus_0_OBUF : OBUF
    port map (
      I => U6_ABUS(0),
      O => abus(0)
    );
  a_7_OBUF : OBUF
    port map (
      I => a_7_OBUF_857,
      O => a(7)
    );
  a_6_OBUF : OBUF
    port map (
      I => a_6_OBUF_856,
      O => a(6)
    );
  a_5_OBUF : OBUF
    port map (
      I => a_5_OBUF_855,
      O => a(5)
    );
  a_4_OBUF : OBUF
    port map (
      I => a_4_OBUF_854,
      O => a(4)
    );
  a_3_OBUF : OBUF
    port map (
      I => a_7_OBUF_857,
      O => a(3)
    );
  a_2_OBUF : OBUF
    port map (
      I => b_4_OBUF_882,
      O => a(2)
    );
  a_1_OBUF : OBUF
    port map (
      I => U3_Zf_532,
      O => a(1)
    );
  a_0_OBUF : OBUF
    port map (
      I => U3_Cy_237,
      O => a(0)
    );
  b_7_OBUF : OBUF
    port map (
      I => b_4_OBUF_882,
      O => b(7)
    );
  b_6_OBUF : OBUF
    port map (
      I => b_4_OBUF_882,
      O => b(6)
    );
  b_5_OBUF : OBUF
    port map (
      I => b_4_OBUF_882,
      O => b(5)
    );
  b_4_OBUF : OBUF
    port map (
      I => b_4_OBUF_882,
      O => b(4)
    );
  b_3_OBUF : OBUF
    port map (
      I => U1_temp_FSM_FFd11,
      O => b(3)
    );
  b_2_OBUF : OBUF
    port map (
      I => U1_temp_FSM_FFd21,
      O => b(2)
    );
  b_1_OBUF : OBUF
    port map (
      I => U1_temp_FSM_FFd31,
      O => b(1)
    );
  b_0_OBUF : OBUF
    port map (
      I => U1_temp_FSM_FFd4_105,
      O => b(0)
    );
  s0_7_OBUF : OBUF
    port map (
      I => U2_IR(7),
      O => s0(7)
    );
  s0_6_OBUF : OBUF
    port map (
      I => U2_IR(6),
      O => s0(6)
    );
  s0_5_OBUF : OBUF
    port map (
      I => U2_IR(5),
      O => s0(5)
    );
  s0_4_OBUF : OBUF
    port map (
      I => U2_IR(4),
      O => s0(4)
    );
  s0_3_OBUF : OBUF
    port map (
      I => U2_IR(3),
      O => s0(3)
    );
  s0_2_OBUF : OBUF
    port map (
      I => U2_IR(2),
      O => s0(2)
    );
  s0_1_OBUF : OBUF
    port map (
      I => U2_IR(1),
      O => s0(1)
    );
  s0_0_OBUF : OBUF
    port map (
      I => U2_IR(0),
      O => s0(0)
    );
  s1_7_OBUF : OBUF
    port map (
      I => U2_IR(15),
      O => s1(7)
    );
  s1_6_OBUF : OBUF
    port map (
      I => U2_IR(14),
      O => s1(6)
    );
  s1_5_OBUF : OBUF
    port map (
      I => U2_IR(13),
      O => s1(5)
    );
  s1_4_OBUF : OBUF
    port map (
      I => U2_IR(12),
      O => s1(4)
    );
  s1_3_OBUF : OBUF
    port map (
      I => U2_IR(11),
      O => s1(3)
    );
  s1_2_OBUF : OBUF
    port map (
      I => U2_IR(10),
      O => s1(2)
    );
  s1_1_OBUF : OBUF
    port map (
      I => U2_IR(9),
      O => s1(1)
    );
  s1_0_OBUF : OBUF
    port map (
      I => U2_IR(8),
      O => s1(0)
    );
  s2_7_OBUF : OBUF
    port map (
      I => s2_7_OBUF_945,
      O => s2(7)
    );
  s2_6_OBUF : OBUF
    port map (
      I => s2_6_OBUF_944,
      O => s2(6)
    );
  s2_5_OBUF : OBUF
    port map (
      I => s2_5_OBUF_943,
      O => s2(5)
    );
  s2_4_OBUF : OBUF
    port map (
      I => s2_4_OBUF_942,
      O => s2(4)
    );
  s2_3_OBUF : OBUF
    port map (
      I => s2_3_OBUF_941,
      O => s2(3)
    );
  s2_2_OBUF : OBUF
    port map (
      I => s2_2_OBUF_940,
      O => s2(2)
    );
  s2_1_OBUF : OBUF
    port map (
      I => s2_1_OBUF_939,
      O => s2(1)
    );
  s2_0_OBUF : OBUF
    port map (
      I => s2_0_OBUF_938,
      O => s2(0)
    );
  s3_7_OBUF : OBUF
    port map (
      I => s3_7_OBUF_961,
      O => s3(7)
    );
  s3_6_OBUF : OBUF
    port map (
      I => s3_6_OBUF_960,
      O => s3(6)
    );
  s3_5_OBUF : OBUF
    port map (
      I => s3_5_OBUF_959,
      O => s3(5)
    );
  s3_4_OBUF : OBUF
    port map (
      I => s3_4_OBUF_958,
      O => s3(4)
    );
  s3_3_OBUF : OBUF
    port map (
      I => s3_3_OBUF_957,
      O => s3(3)
    );
  s3_2_OBUF : OBUF
    port map (
      I => s3_2_OBUF_956,
      O => s3(2)
    );
  s3_1_OBUF : OBUF
    port map (
      I => s3_1_OBUF_955,
      O => s3(1)
    );
  s3_0_OBUF : OBUF
    port map (
      I => s3_0_OBUF_954,
      O => s3(0)
    );
  s4_7_OBUF : OBUF
    port map (
      I => s4_7_OBUF_977,
      O => s4(7)
    );
  s4_6_OBUF : OBUF
    port map (
      I => s4_6_OBUF_976,
      O => s4(6)
    );
  s4_5_OBUF : OBUF
    port map (
      I => s4_5_OBUF_975,
      O => s4(5)
    );
  s4_4_OBUF : OBUF
    port map (
      I => s4_4_OBUF_974,
      O => s4(4)
    );
  s4_3_OBUF : OBUF
    port map (
      I => s4_3_OBUF_973,
      O => s4(3)
    );
  s4_2_OBUF : OBUF
    port map (
      I => s4_2_OBUF_972,
      O => s4(2)
    );
  s4_1_OBUF : OBUF
    port map (
      I => s4_1_OBUF_971,
      O => s4(1)
    );
  s4_0_OBUF : OBUF
    port map (
      I => s4_0_OBUF_970,
      O => s4(0)
    );
  s5_7_OBUF : OBUF
    port map (
      I => s5_7_OBUF_993,
      O => s5(7)
    );
  s5_6_OBUF : OBUF
    port map (
      I => s5_6_OBUF_992,
      O => s5(6)
    );
  s5_5_OBUF : OBUF
    port map (
      I => s5_5_OBUF_991,
      O => s5(5)
    );
  s5_4_OBUF : OBUF
    port map (
      I => s5_4_OBUF_990,
      O => s5(4)
    );
  s5_3_OBUF : OBUF
    port map (
      I => s5_3_OBUF_989,
      O => s5(3)
    );
  s5_2_OBUF : OBUF
    port map (
      I => s5_2_OBUF_988,
      O => s5(2)
    );
  s5_1_OBUF : OBUF
    port map (
      I => s5_1_OBUF_987,
      O => s5(1)
    );
  s5_0_OBUF : OBUF
    port map (
      I => s5_0_OBUF_986,
      O => s5(0)
    );
  U3_cal_8 : LDCE
    port map (
      CLR => rst_IBUF1,
      D => U3_cal_addsub0000(8),
      G => U1_temp_FSM_FFd3_103,
      GE => U3_Reg_7_or0000,
      Q => U3_cal(8)
    );
  U3_cal_7 : LDCE
    port map (
      CLR => rst_IBUF1,
      D => U3_cal_addsub0000(7),
      G => U1_temp_FSM_FFd3_103,
      GE => U3_Reg_7_or0000,
      Q => U3_cal(7)
    );
  U3_cal_6 : LDCE
    port map (
      CLR => rst_IBUF1,
      D => U3_cal_addsub0000(6),
      G => U1_temp_FSM_FFd3_103,
      GE => U3_Reg_7_or0000,
      Q => U3_cal(6)
    );
  U3_cal_5 : LDCE
    port map (
      CLR => rst_IBUF1,
      D => U3_cal_addsub0000(5),
      G => U1_temp_FSM_FFd3_103,
      GE => U3_Reg_7_or0000,
      Q => U3_cal(5)
    );
  U3_cal_4 : LDCE
    port map (
      CLR => rst_IBUF1,
      D => U3_cal_addsub0000(4),
      G => U1_temp_FSM_FFd3_103,
      GE => U3_Reg_7_or0000,
      Q => U3_cal(4)
    );
  U3_cal_3 : LDCE
    port map (
      CLR => rst_IBUF1,
      D => U3_cal_addsub0000(3),
      G => U1_temp_FSM_FFd3_103,
      GE => U3_Reg_7_or0000,
      Q => U3_cal(3)
    );
  U3_cal_2 : LDCE
    port map (
      CLR => rst_IBUF1,
      D => U3_cal_addsub0000(2),
      G => U1_temp_FSM_FFd3_103,
      GE => U3_Reg_7_or0000,
      Q => U3_cal(2)
    );
  U3_cal_1 : LDCE
    port map (
      CLR => rst_IBUF1,
      D => U3_cal_addsub0000(1),
      G => U1_temp_FSM_FFd3_103,
      GE => U3_Reg_7_or0000,
      Q => U3_cal(1)
    );
  U3_cal_0 : LDCE
    port map (
      CLR => rst_IBUF1,
      D => U3_cal_addsub0000(0),
      G => U1_temp_FSM_FFd3_103,
      GE => U3_Reg_7_or0000,
      Q => U3_cal(0)
    );
  U2_PC_temp_Madd_add0000_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_PC_temp(14),
      O => U2_PC_temp_Madd_add0000_cy_14_rt_183
    );
  U2_PC_temp_Madd_add0000_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_PC_temp(13),
      O => U2_PC_temp_Madd_add0000_cy_13_rt_181
    );
  U2_PC_temp_Madd_add0000_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_PC_temp(12),
      O => U2_PC_temp_Madd_add0000_cy_12_rt_179
    );
  U2_PC_temp_Madd_add0000_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_PC_temp(11),
      O => U2_PC_temp_Madd_add0000_cy_11_rt_177
    );
  U2_PC_temp_Madd_add0000_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_PC_temp(10),
      O => U2_PC_temp_Madd_add0000_cy_10_rt_175
    );
  U2_PC_temp_Madd_add0000_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_PC_temp(9),
      O => U2_PC_temp_Madd_add0000_cy_9_rt_201
    );
  U2_PC_temp_Madd_add0000_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_PC_temp(8),
      O => U2_PC_temp_Madd_add0000_cy_8_rt_199
    );
  U2_PC_temp_Madd_add0000_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_PC_temp(7),
      O => U2_PC_temp_Madd_add0000_cy_7_rt_197
    );
  U2_PC_temp_Madd_add0000_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_PC_temp(6),
      O => U2_PC_temp_Madd_add0000_cy_6_rt_195
    );
  U2_PC_temp_Madd_add0000_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_PC_temp(5),
      O => U2_PC_temp_Madd_add0000_cy_5_rt_193
    );
  U2_PC_temp_Madd_add0000_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_PC_temp(4),
      O => U2_PC_temp_Madd_add0000_cy_4_rt_191
    );
  U2_PC_temp_Madd_add0000_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_PC_temp(3),
      O => U2_PC_temp_Madd_add0000_cy_3_rt_189
    );
  U2_PC_temp_Madd_add0000_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_PC_temp(2),
      O => U2_PC_temp_Madd_add0000_cy_2_rt_187
    );
  U2_PC_temp_Madd_add0000_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_PC_temp(1),
      O => U2_PC_temp_Madd_add0000_cy_1_rt_185
    );
  U2_PC_temp_Madd_add0000_xor_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_PC_temp(15),
      O => U2_PC_temp_Madd_add0000_xor_15_rt_203
    );
  U3_Reg_7_cmp_eq0001_inv2 : LUT4
    generic map(
      INIT => X"FFFD"
    )
    port map (
      I0 => U2_IR(11),
      I1 => U2_IR(12),
      I2 => U2_IR(15),
      I3 => N8,
      O => U3_Reg_7_cmp_eq0001_inv2_522
    );
  U3_Zf_mux0004150 : LUT4
    generic map(
      INIT => X"CAAA"
    )
    port map (
      I0 => N147,
      I1 => N148,
      I2 => N179,
      I3 => U3_Zf_cmp_eq000325_535,
      O => U3_Zf_mux0004
    );
  U3_addrTemp_mux0003_10_Q : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => U3_addrTemp_share0000(10),
      I1 => U3_N14,
      I2 => N150,
      O => U3_addrTemp_mux0003(10)
    );
  U3_addrTemp_mux0003_9_Q : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => U3_addrTemp_share0000(9),
      I1 => U3_N14,
      I2 => N152,
      O => U3_addrTemp_mux0003(9)
    );
  U3_addrTemp_mux0003_8_Q : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => U3_addrTemp_share0000(8),
      I1 => U3_N14,
      I2 => N154,
      O => U3_addrTemp_mux0003(8)
    );
  U3_Zf_mux000450_SW1 : MUXF5
    port map (
      I0 => N156,
      I1 => N157,
      S => U3_Zf_mux000497_542,
      O => N148
    );
  U3_Zf_mux000450_SW1_F : LUT4
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => U3_Zf_mux0004132_537,
      I1 => U2_IR(13),
      I2 => U3_N16,
      I3 => U3_Zf_mux000434_539,
      O => N156
    );
  U3_Zf_mux000477_SW0 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => U3_cal(1),
      I1 => U3_cal(2),
      I2 => U3_cal(3),
      I3 => U3_cal(4),
      O => N160
    );
  U3_Zf_mux000477 : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => U3_N2,
      I1 => U2_IR(13),
      I2 => U3_cal(0),
      I3 => N160,
      O => U3_Zf_mux000477_540
    );
  U3_temp_aluout_mux0002_7_17 : LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => U3_temp_aluout_mux0002_7_4_642,
      I1 => U3_temp_aluout(7),
      I2 => U3_N20,
      I3 => U3_temp_aluout_mux0002_7_15_641,
      O => U3_temp_aluout_mux0002(7)
    );
  U3_temp_aluout_mux0002_6_17 : LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => U3_temp_aluout_mux0002_6_4_639,
      I1 => U3_temp_aluout(6),
      I2 => U3_N20,
      I3 => U3_temp_aluout_mux0002_6_15_638,
      O => U3_temp_aluout_mux0002(6)
    );
  U3_temp_aluout_mux0002_5_17 : LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => U3_temp_aluout_mux0002_5_4_636,
      I1 => U3_temp_aluout(5),
      I2 => U3_N20,
      I3 => U3_temp_aluout_mux0002_5_15_635,
      O => U3_temp_aluout_mux0002(5)
    );
  U3_temp_aluout_mux0002_4_17 : LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => U3_temp_aluout_mux0002_4_4_633,
      I1 => U3_temp_aluout(4),
      I2 => U3_N20,
      I3 => U3_temp_aluout_mux0002_4_15_632,
      O => U3_temp_aluout_mux0002(4)
    );
  U3_temp_aluout_mux0002_3_17 : LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => U3_temp_aluout_mux0002_3_4_630,
      I1 => U3_temp_aluout(3),
      I2 => U3_N20,
      I3 => U3_temp_aluout_mux0002_3_15_629,
      O => U3_temp_aluout_mux0002(3)
    );
  U3_temp_aluout_mux0002_2_17 : LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => U3_temp_aluout_mux0002_2_4_627,
      I1 => U3_temp_aluout(2),
      I2 => U3_N20,
      I3 => U3_temp_aluout_mux0002_2_15_626,
      O => U3_temp_aluout_mux0002(2)
    );
  U3_temp_aluout_mux0002_1_17 : LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => U3_temp_aluout_mux0002_1_4_624,
      I1 => U3_temp_aluout(1),
      I2 => U3_N20,
      I3 => U3_temp_aluout_mux0002_1_15_623,
      O => U3_temp_aluout_mux0002(1)
    );
  U3_temp_aluout_mux0002_0_17 : LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => U3_temp_aluout_mux0002_0_4_620,
      I1 => U3_temp_aluout(0),
      I2 => U3_N20,
      I3 => U3_temp_aluout_mux0002_0_15_619,
      O => U3_temp_aluout_mux0002(0)
    );
  U3_Cy_mux0005104_SW0 : LUT3
    generic map(
      INIT => X"F7"
    )
    port map (
      I0 => U1_temp_FSM_FFd11,
      I1 => U3_Reg_7_or0000,
      I2 => U5_cyupdate_740,
      O => N162
    );
  U6_Mtrien_DBUS_0_mux00002 : LUT4
    generic map(
      INIT => X"5155"
    )
    port map (
      I0 => rst_IBUF1,
      I1 => U1_temp_FSM_FFd21,
      I2 => U2_irreq_236,
      I3 => WR,
      O => U6_Mtrien_DBUS_0_mux0000
    );
  U3_Madd_addrTemp_share0000_lut_8_Q : LUT4
    generic map(
      INIT => X"6555"
    )
    port map (
      I0 => U2_PC_temp(8),
      I1 => U2_IR(7),
      I2 => U3_Zf_cmp_eq000312_534,
      I3 => U3_Zf_cmp_eq000325_535,
      O => U3_Madd_addrTemp_share0000_lut(8)
    );
  U3_Madd_addrTemp_share0000_lut_9_Q : LUT4
    generic map(
      INIT => X"5595"
    )
    port map (
      I0 => U2_PC_temp(9),
      I1 => U3_Zf_cmp_eq000325_535,
      I2 => U3_Zf_cmp_eq000312_534,
      I3 => U2_IR(7),
      O => U3_Madd_addrTemp_share0000_lut(9)
    );
  U3_Madd_addrTemp_share0000_lut_10_Q : LUT4
    generic map(
      INIT => X"5595"
    )
    port map (
      I0 => U2_PC_temp(10),
      I1 => U3_Zf_cmp_eq000325_535,
      I2 => U3_Zf_cmp_eq000312_534,
      I3 => U2_IR(7),
      O => U3_Madd_addrTemp_share0000_lut(10)
    );
  U3_Madd_addrTemp_share0000_lut_11_Q : LUT4
    generic map(
      INIT => X"5595"
    )
    port map (
      I0 => U2_PC_temp(11),
      I1 => U3_Zf_cmp_eq000325_535,
      I2 => U3_Zf_cmp_eq000312_534,
      I3 => U2_IR(7),
      O => U3_Madd_addrTemp_share0000_lut(11)
    );
  U3_Madd_addrTemp_share0000_lut_12_Q : LUT4
    generic map(
      INIT => X"5595"
    )
    port map (
      I0 => U2_PC_temp(12),
      I1 => U3_Zf_cmp_eq000325_535,
      I2 => U3_Zf_cmp_eq000312_534,
      I3 => U2_IR(7),
      O => U3_Madd_addrTemp_share0000_lut(12)
    );
  U3_Madd_addrTemp_share0000_lut_13_Q : LUT4
    generic map(
      INIT => X"5595"
    )
    port map (
      I0 => U2_PC_temp(13),
      I1 => U3_Zf_cmp_eq000325_535,
      I2 => U3_Zf_cmp_eq000312_534,
      I3 => U2_IR(7),
      O => U3_Madd_addrTemp_share0000_lut(13)
    );
  U6_Mtridata_DBUS_7_mux00001 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => U3_temp_aluout(7),
      I1 => WR,
      I2 => U1_temp_FSM_FFd21,
      I3 => U2_irreq_236,
      O => U6_Mtridata_DBUS_7_mux0000
    );
  U6_Mtridata_DBUS_6_mux00001 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => U3_temp_aluout(6),
      I1 => WR,
      I2 => U1_temp_FSM_FFd21,
      I3 => U2_irreq_236,
      O => U6_Mtridata_DBUS_6_mux0000
    );
  U6_Mtridata_DBUS_5_mux00001 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => U3_temp_aluout(5),
      I1 => WR,
      I2 => U1_temp_FSM_FFd21,
      I3 => U2_irreq_236,
      O => U6_Mtridata_DBUS_5_mux0000
    );
  U6_Mtridata_DBUS_4_mux00001 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => U3_temp_aluout(4),
      I1 => WR,
      I2 => U1_temp_FSM_FFd21,
      I3 => U2_irreq_236,
      O => U6_Mtridata_DBUS_4_mux0000
    );
  U6_Mtridata_DBUS_3_mux00001 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => U3_temp_aluout(3),
      I1 => WR,
      I2 => U1_temp_FSM_FFd21,
      I3 => U2_irreq_236,
      O => U6_Mtridata_DBUS_3_mux0000
    );
  U6_Mtridata_DBUS_2_mux00001 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => U3_temp_aluout(2),
      I1 => WR,
      I2 => U1_temp_FSM_FFd21,
      I3 => U2_irreq_236,
      O => U6_Mtridata_DBUS_2_mux0000
    );
  U6_Mtridata_DBUS_1_mux00001 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => U3_temp_aluout(1),
      I1 => WR,
      I2 => U1_temp_FSM_FFd21,
      I3 => U2_irreq_236,
      O => U6_Mtridata_DBUS_1_mux0000
    );
  U6_Mtridata_DBUS_0_mux00001 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => U3_temp_aluout(0),
      I1 => WR,
      I2 => U1_temp_FSM_FFd21,
      I3 => U2_irreq_236,
      O => U6_Mtridata_DBUS_0_mux0000
    );
  U3_Zf_mux000450_SW1_G : LUT4
    generic map(
      INIT => X"888F"
    )
    port map (
      I0 => U3_Zf_mux000426_538,
      I1 => U3_Zf_532,
      I2 => U2_IR(14),
      I3 => U2_IR(15),
      O => N157
    );
  U3_Zf_mux000450_SW0 : LUT4
    generic map(
      INIT => X"FF80"
    )
    port map (
      I0 => U3_Zf_mux000477_540,
      I1 => U3_Zf_mux000496_541,
      I2 => U3_Zf_mux0004132_537,
      I3 => U3_Zf_mux000434_539,
      O => N147
    );
  U3_Reg_7_mux0005_7_1 : LUT4
    generic map(
      INIT => X"F5E4"
    )
    port map (
      I0 => U3_N12,
      I1 => U5_Mtridata_Rdata(7),
      I2 => U3_Reg_7_7_519,
      I3 => U5_Mtrien_Rdata_694,
      O => U3_Reg_7_mux0005(7)
    );
  U3_Reg_7_mux0005_6_1 : LUT4
    generic map(
      INIT => X"F5E4"
    )
    port map (
      I0 => U3_N12,
      I1 => U5_Mtridata_Rdata(6),
      I2 => U3_Reg_7_6_518,
      I3 => U5_Mtrien_Rdata_694,
      O => U3_Reg_7_mux0005(6)
    );
  U3_Reg_7_mux0005_5_1 : LUT4
    generic map(
      INIT => X"F5E4"
    )
    port map (
      I0 => U3_N12,
      I1 => U5_Mtridata_Rdata(5),
      I2 => U3_Reg_7_5_517,
      I3 => U5_Mtrien_Rdata_694,
      O => U3_Reg_7_mux0005(5)
    );
  U3_Reg_7_mux0005_4_1 : LUT4
    generic map(
      INIT => X"F5E4"
    )
    port map (
      I0 => U3_N12,
      I1 => U5_Mtridata_Rdata(4),
      I2 => U3_Reg_7_4_516,
      I3 => U5_Mtrien_Rdata_694,
      O => U3_Reg_7_mux0005(4)
    );
  U3_Reg_7_mux0005_3_1 : LUT4
    generic map(
      INIT => X"F5E4"
    )
    port map (
      I0 => U3_N12,
      I1 => U5_Mtridata_Rdata(3),
      I2 => U3_Reg_7_3_515,
      I3 => U5_Mtrien_Rdata_694,
      O => U3_Reg_7_mux0005(3)
    );
  U3_Reg_7_mux0005_2_1 : LUT4
    generic map(
      INIT => X"F5E4"
    )
    port map (
      I0 => U3_N12,
      I1 => U5_Mtridata_Rdata(2),
      I2 => U3_Reg_7_2_514,
      I3 => U5_Mtrien_Rdata_694,
      O => U3_Reg_7_mux0005(2)
    );
  U3_Reg_7_mux0005_1_1 : LUT4
    generic map(
      INIT => X"F5E4"
    )
    port map (
      I0 => U3_N12,
      I1 => U5_Mtridata_Rdata(1),
      I2 => U3_Reg_7_1_513,
      I3 => U5_Mtrien_Rdata_694,
      O => U3_Reg_7_mux0005(1)
    );
  U3_Reg_7_mux0005_0_1 : LUT4
    generic map(
      INIT => X"F5E4"
    )
    port map (
      I0 => U3_N12,
      I1 => U5_Mtridata_Rdata(0),
      I2 => U3_Reg_7_0_512,
      I3 => U5_Mtrien_Rdata_694,
      O => U3_Reg_7_mux0005(0)
    );
  U3_Reg_6_mux0005_7_1 : LUT4
    generic map(
      INIT => X"F5E4"
    )
    port map (
      I0 => U3_N111,
      I1 => U5_Mtridata_Rdata(7),
      I2 => U3_Reg_6_7_503,
      I3 => U5_Mtrien_Rdata_694,
      O => U3_Reg_6_mux0005(7)
    );
  U3_Reg_6_mux0005_6_1 : LUT4
    generic map(
      INIT => X"F5E4"
    )
    port map (
      I0 => U3_N111,
      I1 => U5_Mtridata_Rdata(6),
      I2 => U3_Reg_6_6_502,
      I3 => U5_Mtrien_Rdata_694,
      O => U3_Reg_6_mux0005(6)
    );
  U3_Reg_6_mux0005_5_1 : LUT4
    generic map(
      INIT => X"F5E4"
    )
    port map (
      I0 => U3_N111,
      I1 => U5_Mtridata_Rdata(5),
      I2 => U3_Reg_6_5_501,
      I3 => U5_Mtrien_Rdata_694,
      O => U3_Reg_6_mux0005(5)
    );
  U3_Reg_6_mux0005_4_1 : LUT4
    generic map(
      INIT => X"F5E4"
    )
    port map (
      I0 => U3_N111,
      I1 => U5_Mtridata_Rdata(4),
      I2 => U3_Reg_6_4_500,
      I3 => U5_Mtrien_Rdata_694,
      O => U3_Reg_6_mux0005(4)
    );
  U3_Reg_6_mux0005_3_1 : LUT4
    generic map(
      INIT => X"F5E4"
    )
    port map (
      I0 => U3_N111,
      I1 => U5_Mtridata_Rdata(3),
      I2 => U3_Reg_6_3_499,
      I3 => U5_Mtrien_Rdata_694,
      O => U3_Reg_6_mux0005(3)
    );
  U3_Reg_6_mux0005_2_1 : LUT4
    generic map(
      INIT => X"F5E4"
    )
    port map (
      I0 => U3_N111,
      I1 => U5_Mtridata_Rdata(2),
      I2 => U3_Reg_6_2_498,
      I3 => U5_Mtrien_Rdata_694,
      O => U3_Reg_6_mux0005(2)
    );
  U3_Reg_6_mux0005_1_1 : LUT4
    generic map(
      INIT => X"F5E4"
    )
    port map (
      I0 => U3_N111,
      I1 => U5_Mtridata_Rdata(1),
      I2 => U3_Reg_6_1_497,
      I3 => U5_Mtrien_Rdata_694,
      O => U3_Reg_6_mux0005(1)
    );
  U3_Reg_6_mux0005_0_1 : LUT4
    generic map(
      INIT => X"F5E4"
    )
    port map (
      I0 => U3_N111,
      I1 => U5_Mtridata_Rdata(0),
      I2 => U3_Reg_6_0_496,
      I3 => U5_Mtrien_Rdata_694,
      O => U3_Reg_6_mux0005(0)
    );
  U3_Reg_5_mux0005_7_1 : LUT4
    generic map(
      INIT => X"F5E4"
    )
    port map (
      I0 => U3_N10,
      I1 => U5_Mtridata_Rdata(7),
      I2 => U3_Reg_5_7_487,
      I3 => U5_Mtrien_Rdata_694,
      O => U3_Reg_5_mux0005(7)
    );
  U3_Reg_5_mux0005_6_1 : LUT4
    generic map(
      INIT => X"F5E4"
    )
    port map (
      I0 => U3_N10,
      I1 => U5_Mtridata_Rdata(6),
      I2 => U3_Reg_5_6_486,
      I3 => U5_Mtrien_Rdata_694,
      O => U3_Reg_5_mux0005(6)
    );
  U3_Reg_5_mux0005_5_1 : LUT4
    generic map(
      INIT => X"F5E4"
    )
    port map (
      I0 => U3_N10,
      I1 => U5_Mtridata_Rdata(5),
      I2 => U3_Reg_5_5_485,
      I3 => U5_Mtrien_Rdata_694,
      O => U3_Reg_5_mux0005(5)
    );
  U3_Reg_5_mux0005_4_1 : LUT4
    generic map(
      INIT => X"F5E4"
    )
    port map (
      I0 => U3_N10,
      I1 => U5_Mtridata_Rdata(4),
      I2 => U3_Reg_5_4_484,
      I3 => U5_Mtrien_Rdata_694,
      O => U3_Reg_5_mux0005(4)
    );
  U3_Reg_5_mux0005_3_1 : LUT4
    generic map(
      INIT => X"F5E4"
    )
    port map (
      I0 => U3_N10,
      I1 => U5_Mtridata_Rdata(3),
      I2 => U3_Reg_5_3_483,
      I3 => U5_Mtrien_Rdata_694,
      O => U3_Reg_5_mux0005(3)
    );
  U3_Reg_5_mux0005_2_1 : LUT4
    generic map(
      INIT => X"F5E4"
    )
    port map (
      I0 => U3_N10,
      I1 => U5_Mtridata_Rdata(2),
      I2 => U3_Reg_5_2_482,
      I3 => U5_Mtrien_Rdata_694,
      O => U3_Reg_5_mux0005(2)
    );
  U3_Reg_5_mux0005_1_1 : LUT4
    generic map(
      INIT => X"F5E4"
    )
    port map (
      I0 => U3_N10,
      I1 => U5_Mtridata_Rdata(1),
      I2 => U3_Reg_5_1_481,
      I3 => U5_Mtrien_Rdata_694,
      O => U3_Reg_5_mux0005(1)
    );
  U3_Reg_5_mux0005_0_1 : LUT4
    generic map(
      INIT => X"F5E4"
    )
    port map (
      I0 => U3_N10,
      I1 => U5_Mtridata_Rdata(0),
      I2 => U3_Reg_5_0_480,
      I3 => U5_Mtrien_Rdata_694,
      O => U3_Reg_5_mux0005(0)
    );
  U3_Reg_4_mux0005_7_1 : LUT4
    generic map(
      INIT => X"F5E4"
    )
    port map (
      I0 => U3_N9,
      I1 => U5_Mtridata_Rdata(7),
      I2 => U3_Reg_4_7_471,
      I3 => U5_Mtrien_Rdata_694,
      O => U3_Reg_4_mux0005(7)
    );
  U3_Reg_4_mux0005_6_1 : LUT4
    generic map(
      INIT => X"F5E4"
    )
    port map (
      I0 => U3_N9,
      I1 => U5_Mtridata_Rdata(6),
      I2 => U3_Reg_4_6_470,
      I3 => U5_Mtrien_Rdata_694,
      O => U3_Reg_4_mux0005(6)
    );
  U3_Reg_4_mux0005_5_1 : LUT4
    generic map(
      INIT => X"F5E4"
    )
    port map (
      I0 => U3_N9,
      I1 => U5_Mtridata_Rdata(5),
      I2 => U3_Reg_4_5_469,
      I3 => U5_Mtrien_Rdata_694,
      O => U3_Reg_4_mux0005(5)
    );
  U3_Reg_4_mux0005_4_1 : LUT4
    generic map(
      INIT => X"F5E4"
    )
    port map (
      I0 => U3_N9,
      I1 => U5_Mtridata_Rdata(4),
      I2 => U3_Reg_4_4_468,
      I3 => U5_Mtrien_Rdata_694,
      O => U3_Reg_4_mux0005(4)
    );
  U3_Reg_4_mux0005_3_1 : LUT4
    generic map(
      INIT => X"F5E4"
    )
    port map (
      I0 => U3_N9,
      I1 => U5_Mtridata_Rdata(3),
      I2 => U3_Reg_4_3_467,
      I3 => U5_Mtrien_Rdata_694,
      O => U3_Reg_4_mux0005(3)
    );
  U3_Reg_4_mux0005_2_1 : LUT4
    generic map(
      INIT => X"F5E4"
    )
    port map (
      I0 => U3_N9,
      I1 => U5_Mtridata_Rdata(2),
      I2 => U3_Reg_4_2_466,
      I3 => U5_Mtrien_Rdata_694,
      O => U3_Reg_4_mux0005(2)
    );
  U3_Reg_4_mux0005_1_1 : LUT4
    generic map(
      INIT => X"F5E4"
    )
    port map (
      I0 => U3_N9,
      I1 => U5_Mtridata_Rdata(1),
      I2 => U3_Reg_4_1_465,
      I3 => U5_Mtrien_Rdata_694,
      O => U3_Reg_4_mux0005(1)
    );
  U3_Reg_4_mux0005_0_1 : LUT4
    generic map(
      INIT => X"F5E4"
    )
    port map (
      I0 => U3_N9,
      I1 => U5_Mtridata_Rdata(0),
      I2 => U3_Reg_4_0_464,
      I3 => U5_Mtrien_Rdata_694,
      O => U3_Reg_4_mux0005(0)
    );
  U3_Reg_3_mux0005_7_1 : LUT4
    generic map(
      INIT => X"F5E4"
    )
    port map (
      I0 => U3_N8,
      I1 => U5_Mtridata_Rdata(7),
      I2 => U3_Reg_3_7_455,
      I3 => U5_Mtrien_Rdata_694,
      O => U3_Reg_3_mux0005(7)
    );
  U3_Reg_3_mux0005_6_1 : LUT4
    generic map(
      INIT => X"F5E4"
    )
    port map (
      I0 => U3_N8,
      I1 => U5_Mtridata_Rdata(6),
      I2 => U3_Reg_3_6_454,
      I3 => U5_Mtrien_Rdata_694,
      O => U3_Reg_3_mux0005(6)
    );
  U3_Reg_3_mux0005_5_1 : LUT4
    generic map(
      INIT => X"F5E4"
    )
    port map (
      I0 => U3_N8,
      I1 => U5_Mtridata_Rdata(5),
      I2 => U3_Reg_3_5_453,
      I3 => U5_Mtrien_Rdata_694,
      O => U3_Reg_3_mux0005(5)
    );
  U3_Reg_3_mux0005_4_1 : LUT4
    generic map(
      INIT => X"F5E4"
    )
    port map (
      I0 => U3_N8,
      I1 => U5_Mtridata_Rdata(4),
      I2 => U3_Reg_3_4_452,
      I3 => U5_Mtrien_Rdata_694,
      O => U3_Reg_3_mux0005(4)
    );
  U3_Reg_3_mux0005_3_1 : LUT4
    generic map(
      INIT => X"F5E4"
    )
    port map (
      I0 => U3_N8,
      I1 => U5_Mtridata_Rdata(3),
      I2 => U3_Reg_3_3_451,
      I3 => U5_Mtrien_Rdata_694,
      O => U3_Reg_3_mux0005(3)
    );
  U3_Reg_3_mux0005_2_1 : LUT4
    generic map(
      INIT => X"F5E4"
    )
    port map (
      I0 => U3_N8,
      I1 => U5_Mtridata_Rdata(2),
      I2 => U3_Reg_3_2_450,
      I3 => U5_Mtrien_Rdata_694,
      O => U3_Reg_3_mux0005(2)
    );
  U3_Reg_3_mux0005_1_1 : LUT4
    generic map(
      INIT => X"F5E4"
    )
    port map (
      I0 => U3_N8,
      I1 => U5_Mtridata_Rdata(1),
      I2 => U3_Reg_3_1_449,
      I3 => U5_Mtrien_Rdata_694,
      O => U3_Reg_3_mux0005(1)
    );
  U3_Reg_3_mux0005_0_1 : LUT4
    generic map(
      INIT => X"F5E4"
    )
    port map (
      I0 => U3_N8,
      I1 => U5_Mtridata_Rdata(0),
      I2 => U3_Reg_3_0_448,
      I3 => U5_Mtrien_Rdata_694,
      O => U3_Reg_3_mux0005(0)
    );
  U3_Reg_2_mux0005_7_1 : LUT4
    generic map(
      INIT => X"F5E4"
    )
    port map (
      I0 => U3_N7,
      I1 => U5_Mtridata_Rdata(7),
      I2 => U3_Reg_2_7_439,
      I3 => U5_Mtrien_Rdata_694,
      O => U3_Reg_2_mux0005(7)
    );
  U3_Reg_2_mux0005_6_1 : LUT4
    generic map(
      INIT => X"F5E4"
    )
    port map (
      I0 => U3_N7,
      I1 => U5_Mtridata_Rdata(6),
      I2 => U3_Reg_2_6_438,
      I3 => U5_Mtrien_Rdata_694,
      O => U3_Reg_2_mux0005(6)
    );
  U3_Reg_2_mux0005_5_1 : LUT4
    generic map(
      INIT => X"F5E4"
    )
    port map (
      I0 => U3_N7,
      I1 => U5_Mtridata_Rdata(5),
      I2 => U3_Reg_2_5_437,
      I3 => U5_Mtrien_Rdata_694,
      O => U3_Reg_2_mux0005(5)
    );
  U3_Reg_2_mux0005_4_1 : LUT4
    generic map(
      INIT => X"F5E4"
    )
    port map (
      I0 => U3_N7,
      I1 => U5_Mtridata_Rdata(4),
      I2 => U3_Reg_2_4_436,
      I3 => U5_Mtrien_Rdata_694,
      O => U3_Reg_2_mux0005(4)
    );
  U3_Reg_2_mux0005_3_1 : LUT4
    generic map(
      INIT => X"F5E4"
    )
    port map (
      I0 => U3_N7,
      I1 => U5_Mtridata_Rdata(3),
      I2 => U3_Reg_2_3_435,
      I3 => U5_Mtrien_Rdata_694,
      O => U3_Reg_2_mux0005(3)
    );
  U3_Reg_2_mux0005_2_1 : LUT4
    generic map(
      INIT => X"F5E4"
    )
    port map (
      I0 => U3_N7,
      I1 => U5_Mtridata_Rdata(2),
      I2 => U3_Reg_2_2_434,
      I3 => U5_Mtrien_Rdata_694,
      O => U3_Reg_2_mux0005(2)
    );
  U3_Reg_2_mux0005_1_1 : LUT4
    generic map(
      INIT => X"F5E4"
    )
    port map (
      I0 => U3_N7,
      I1 => U5_Mtridata_Rdata(1),
      I2 => U3_Reg_2_1_433,
      I3 => U5_Mtrien_Rdata_694,
      O => U3_Reg_2_mux0005(1)
    );
  U3_Reg_2_mux0005_0_1 : LUT4
    generic map(
      INIT => X"F5E4"
    )
    port map (
      I0 => U3_N7,
      I1 => U5_Mtridata_Rdata(0),
      I2 => U3_Reg_2_0_432,
      I3 => U5_Mtrien_Rdata_694,
      O => U3_Reg_2_mux0005(0)
    );
  U3_Reg_1_mux0005_7_1 : LUT4
    generic map(
      INIT => X"F5E4"
    )
    port map (
      I0 => U3_N6,
      I1 => U5_Mtridata_Rdata(7),
      I2 => U3_Reg_1_7_423,
      I3 => U5_Mtrien_Rdata_694,
      O => U3_Reg_1_mux0005(7)
    );
  U3_Reg_1_mux0005_6_1 : LUT4
    generic map(
      INIT => X"F5E4"
    )
    port map (
      I0 => U3_N6,
      I1 => U5_Mtridata_Rdata(6),
      I2 => U3_Reg_1_6_422,
      I3 => U5_Mtrien_Rdata_694,
      O => U3_Reg_1_mux0005(6)
    );
  U3_Reg_1_mux0005_5_1 : LUT4
    generic map(
      INIT => X"F5E4"
    )
    port map (
      I0 => U3_N6,
      I1 => U5_Mtridata_Rdata(5),
      I2 => U3_Reg_1_5_421,
      I3 => U5_Mtrien_Rdata_694,
      O => U3_Reg_1_mux0005(5)
    );
  U3_Reg_1_mux0005_4_1 : LUT4
    generic map(
      INIT => X"F5E4"
    )
    port map (
      I0 => U3_N6,
      I1 => U5_Mtridata_Rdata(4),
      I2 => U3_Reg_1_4_420,
      I3 => U5_Mtrien_Rdata_694,
      O => U3_Reg_1_mux0005(4)
    );
  U3_Reg_1_mux0005_3_1 : LUT4
    generic map(
      INIT => X"F5E4"
    )
    port map (
      I0 => U3_N6,
      I1 => U5_Mtridata_Rdata(3),
      I2 => U3_Reg_1_3_419,
      I3 => U5_Mtrien_Rdata_694,
      O => U3_Reg_1_mux0005(3)
    );
  U3_Reg_1_mux0005_2_1 : LUT4
    generic map(
      INIT => X"F5E4"
    )
    port map (
      I0 => U3_N6,
      I1 => U5_Mtridata_Rdata(2),
      I2 => U3_Reg_1_2_418,
      I3 => U5_Mtrien_Rdata_694,
      O => U3_Reg_1_mux0005(2)
    );
  U3_Reg_1_mux0005_1_1 : LUT4
    generic map(
      INIT => X"F5E4"
    )
    port map (
      I0 => U3_N6,
      I1 => U5_Mtridata_Rdata(1),
      I2 => U3_Reg_1_1_417,
      I3 => U5_Mtrien_Rdata_694,
      O => U3_Reg_1_mux0005(1)
    );
  U3_Reg_1_mux0005_0_1 : LUT4
    generic map(
      INIT => X"F5E4"
    )
    port map (
      I0 => U3_N6,
      I1 => U5_Mtridata_Rdata(0),
      I2 => U3_Reg_1_0_416,
      I3 => U5_Mtrien_Rdata_694,
      O => U3_Reg_1_mux0005(0)
    );
  U3_Reg_0_mux0005_7_1 : LUT4
    generic map(
      INIT => X"F5E4"
    )
    port map (
      I0 => U3_N5,
      I1 => U5_Mtridata_Rdata(7),
      I2 => U3_Reg_0_7_407,
      I3 => U5_Mtrien_Rdata_694,
      O => U3_Reg_0_mux0005(7)
    );
  U3_Reg_0_mux0005_6_1 : LUT4
    generic map(
      INIT => X"F5E4"
    )
    port map (
      I0 => U3_N5,
      I1 => U5_Mtridata_Rdata(6),
      I2 => U3_Reg_0_6_406,
      I3 => U5_Mtrien_Rdata_694,
      O => U3_Reg_0_mux0005(6)
    );
  U3_Reg_0_mux0005_5_1 : LUT4
    generic map(
      INIT => X"F5E4"
    )
    port map (
      I0 => U3_N5,
      I1 => U5_Mtridata_Rdata(5),
      I2 => U3_Reg_0_5_405,
      I3 => U5_Mtrien_Rdata_694,
      O => U3_Reg_0_mux0005(5)
    );
  U3_Reg_0_mux0005_4_1 : LUT4
    generic map(
      INIT => X"F5E4"
    )
    port map (
      I0 => U3_N5,
      I1 => U5_Mtridata_Rdata(4),
      I2 => U3_Reg_0_4_404,
      I3 => U5_Mtrien_Rdata_694,
      O => U3_Reg_0_mux0005(4)
    );
  U3_Reg_0_mux0005_3_1 : LUT4
    generic map(
      INIT => X"F5E4"
    )
    port map (
      I0 => U3_N5,
      I1 => U5_Mtridata_Rdata(3),
      I2 => U3_Reg_0_3_403,
      I3 => U5_Mtrien_Rdata_694,
      O => U3_Reg_0_mux0005(3)
    );
  U3_Reg_0_mux0005_2_1 : LUT4
    generic map(
      INIT => X"F5E4"
    )
    port map (
      I0 => U3_N5,
      I1 => U5_Mtridata_Rdata(2),
      I2 => U3_Reg_0_2_402,
      I3 => U5_Mtrien_Rdata_694,
      O => U3_Reg_0_mux0005(2)
    );
  U3_Reg_0_mux0005_1_1 : LUT4
    generic map(
      INIT => X"F5E4"
    )
    port map (
      I0 => U3_N5,
      I1 => U5_Mtridata_Rdata(1),
      I2 => U3_Reg_0_1_401,
      I3 => U5_Mtrien_Rdata_694,
      O => U3_Reg_0_mux0005(1)
    );
  U3_Reg_0_mux0005_0_1 : LUT4
    generic map(
      INIT => X"F5E4"
    )
    port map (
      I0 => U3_N5,
      I1 => U5_Mtridata_Rdata(0),
      I2 => U3_Reg_0_0_400,
      I3 => U5_Mtrien_Rdata_694,
      O => U3_Reg_0_mux0005(0)
    );
  U3_addrTemp_mux0003_0_4 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => U2_IR(15),
      I1 => N98,
      O => U3_N15
    );
  U3_Zf_mux000426 : LUT4
    generic map(
      INIT => X"BEFB"
    )
    port map (
      I0 => N10,
      I1 => U2_IR(11),
      I2 => U2_IR(13),
      I3 => U2_IR(12),
      O => U3_Zf_mux000426_538
    );
  U3_Madd_addrTemp_share0000_lut_14_Q : LUT4
    generic map(
      INIT => X"5595"
    )
    port map (
      I0 => U2_PC_temp(14),
      I1 => U3_Zf_cmp_eq000325_535,
      I2 => U3_Zf_cmp_eq000312_534,
      I3 => U2_IR(7),
      O => U3_Madd_addrTemp_share0000_lut(14)
    );
  U3_Madd_addrTemp_share0000_lut_15_Q : LUT4
    generic map(
      INIT => X"5595"
    )
    port map (
      I0 => U2_PC_temp(15),
      I1 => U3_Zf_cmp_eq000325_535,
      I2 => U3_Zf_cmp_eq000312_534,
      I3 => U2_IR(7),
      O => U3_Madd_addrTemp_share0000_lut(15)
    );
  U3_addrTemp_mux0003_0_3_SW1 : LUT4
    generic map(
      INIT => X"EFFF"
    )
    port map (
      I0 => U2_IR(14),
      I1 => U2_IR(15),
      I2 => N180,
      I3 => U3_Zf_cmp_eq000312_534,
      O => N170
    );
  rst_IBUF_BUFG : BUFG
    port map (
      I => rst_IBUF1,
      O => rst_IBUF_912
    );
  U1_temp_FSM_FFd3_BUFG : BUFG
    port map (
      I => U1_temp_FSM_FFd31,
      O => U1_temp_FSM_FFd3_103
    );
  U1_temp_FSM_FFd2_BUFG : BUFG
    port map (
      I => U1_temp_FSM_FFd21,
      O => U1_temp_FSM_FFd2_101
    );
  U1_temp_FSM_FFd1_BUFG : BUFG
    port map (
      I => U1_temp_FSM_FFd11,
      O => U1_temp_FSM_FFd1_99
    );
  clk_BUFGP : BUFGP
    port map (
      I => clk,
      O => clk_BUFGP_884
    );
  U2_PC_temp_Madd_add0000_lut_0_INV_0 : INV
    port map (
      I => U2_PC_temp(0),
      O => U2_PC_temp_Madd_add0000_lut(0)
    );
  U2_PC_temp_0_0_not00001_INV_0 : INV
    port map (
      I => U1_temp_FSM_FFd4_105,
      O => U2_PC_temp_0_0_not0000
    );
  a_6_not00001_INV_0 : INV
    port map (
      I => U6_nWR_840,
      O => a_6_OBUF_856
    );
  U6_mDBUS_0_0_not00001_INV_0 : INV
    port map (
      I => U2_irreq_236,
      O => U6_mDBUS_0_0_not0000
    );
  U5_PcNew_mux0002_0_3 : MUXF5
    port map (
      I0 => N172,
      I1 => N173,
      S => U2_IR(11),
      O => U5_N7
    );
  U5_PcNew_mux0002_0_3_F : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => U2_IR(14),
      I1 => U2_IR(12),
      I2 => U2_IR(15),
      I3 => U2_IR(13),
      O => N172
    );
  U5_PcNew_mux0002_0_3_G : LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => U2_IR(15),
      I1 => U5_N10,
      I2 => U3_Zf_532,
      O => N173
    );
  U3_Cy_mux0005115 : MUXF5
    port map (
      I0 => N174,
      I1 => N175,
      S => U1_temp_FSM_FFd31,
      O => U3_Cy_mux0005
    );
  U3_Cy_mux0005115_F : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => N162,
      I1 => U3_cal(8),
      I2 => U3_Cy_237,
      O => N174
    );
  U3_Cy_mux0005115_G : LUT4
    generic map(
      INIT => X"FB02"
    )
    port map (
      I0 => U2_IR(11),
      I1 => U2_IR(12),
      I2 => N14,
      I3 => U3_Cy_237,
      O => N175
    );
  U5_Mtridata_Rdata_mux0000_7_51 : LUT4
    generic map(
      INIT => X"FAF8"
    )
    port map (
      I0 => U5_N5,
      I1 => U4_Mtridata_temp(7),
      I2 => U3_temp_aluout(7),
      I3 => U4_Mtrien_temp_652,
      O => U5_Mtridata_Rdata_mux0000_7_51_692
    );
  U5_Mtridata_Rdata_mux0000_7_52 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => U5_N5,
      I1 => U4_Mtridata_temp(7),
      I2 => U4_Mtrien_temp_652,
      O => U5_Mtridata_Rdata_mux0000_7_52_693
    );
  U5_Mtridata_Rdata_mux0000_7_5_f5 : MUXF5
    port map (
      I0 => U5_Mtridata_Rdata_mux0000_7_52_693,
      I1 => U5_Mtridata_Rdata_mux0000_7_51_692,
      S => U5_N8,
      O => U5_Mtridata_Rdata_mux0000_7_5
    );
  U5_Mtridata_Rdata_mux0000_6_51 : LUT4
    generic map(
      INIT => X"FAF8"
    )
    port map (
      I0 => U5_N5,
      I1 => U4_Mtridata_temp(6),
      I2 => U3_temp_aluout(6),
      I3 => U4_Mtrien_temp_652,
      O => U5_Mtridata_Rdata_mux0000_6_51_688
    );
  U5_Mtridata_Rdata_mux0000_6_52 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => U5_N5,
      I1 => U4_Mtridata_temp(6),
      I2 => U4_Mtrien_temp_652,
      O => U5_Mtridata_Rdata_mux0000_6_52_689
    );
  U5_Mtridata_Rdata_mux0000_6_5_f5 : MUXF5
    port map (
      I0 => U5_Mtridata_Rdata_mux0000_6_52_689,
      I1 => U5_Mtridata_Rdata_mux0000_6_51_688,
      S => U5_N8,
      O => U5_Mtridata_Rdata_mux0000_6_5
    );
  U5_Mtridata_Rdata_mux0000_5_51 : LUT4
    generic map(
      INIT => X"FAF8"
    )
    port map (
      I0 => U5_N5,
      I1 => U4_Mtridata_temp(5),
      I2 => U3_temp_aluout(5),
      I3 => U4_Mtrien_temp_652,
      O => U5_Mtridata_Rdata_mux0000_5_51_684
    );
  U5_Mtridata_Rdata_mux0000_5_52 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => U5_N5,
      I1 => U4_Mtridata_temp(5),
      I2 => U4_Mtrien_temp_652,
      O => U5_Mtridata_Rdata_mux0000_5_52_685
    );
  U5_Mtridata_Rdata_mux0000_5_5_f5 : MUXF5
    port map (
      I0 => U5_Mtridata_Rdata_mux0000_5_52_685,
      I1 => U5_Mtridata_Rdata_mux0000_5_51_684,
      S => U5_N8,
      O => U5_Mtridata_Rdata_mux0000_5_5
    );
  U5_Mtridata_Rdata_mux0000_4_51 : LUT4
    generic map(
      INIT => X"FAF8"
    )
    port map (
      I0 => U5_N5,
      I1 => U4_Mtridata_temp(4),
      I2 => U3_temp_aluout(4),
      I3 => U4_Mtrien_temp_652,
      O => U5_Mtridata_Rdata_mux0000_4_51_680
    );
  U5_Mtridata_Rdata_mux0000_4_52 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => U5_N5,
      I1 => U4_Mtridata_temp(4),
      I2 => U4_Mtrien_temp_652,
      O => U5_Mtridata_Rdata_mux0000_4_52_681
    );
  U5_Mtridata_Rdata_mux0000_4_5_f5 : MUXF5
    port map (
      I0 => U5_Mtridata_Rdata_mux0000_4_52_681,
      I1 => U5_Mtridata_Rdata_mux0000_4_51_680,
      S => U5_N8,
      O => U5_Mtridata_Rdata_mux0000_4_5
    );
  U5_Mtridata_Rdata_mux0000_3_51 : LUT4
    generic map(
      INIT => X"FAF8"
    )
    port map (
      I0 => U5_N5,
      I1 => U4_Mtridata_temp(3),
      I2 => U3_temp_aluout(3),
      I3 => U4_Mtrien_temp_652,
      O => U5_Mtridata_Rdata_mux0000_3_51_676
    );
  U5_Mtridata_Rdata_mux0000_3_52 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => U5_N5,
      I1 => U4_Mtridata_temp(3),
      I2 => U4_Mtrien_temp_652,
      O => U5_Mtridata_Rdata_mux0000_3_52_677
    );
  U5_Mtridata_Rdata_mux0000_3_5_f5 : MUXF5
    port map (
      I0 => U5_Mtridata_Rdata_mux0000_3_52_677,
      I1 => U5_Mtridata_Rdata_mux0000_3_51_676,
      S => U5_N8,
      O => U5_Mtridata_Rdata_mux0000_3_5
    );
  U5_Mtridata_Rdata_mux0000_2_51 : LUT4
    generic map(
      INIT => X"FAF8"
    )
    port map (
      I0 => U5_N5,
      I1 => U4_Mtridata_temp(2),
      I2 => U3_temp_aluout(2),
      I3 => U4_Mtrien_temp_652,
      O => U5_Mtridata_Rdata_mux0000_2_51_672
    );
  U5_Mtridata_Rdata_mux0000_2_52 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => U5_N5,
      I1 => U4_Mtridata_temp(2),
      I2 => U4_Mtrien_temp_652,
      O => U5_Mtridata_Rdata_mux0000_2_52_673
    );
  U5_Mtridata_Rdata_mux0000_2_5_f5 : MUXF5
    port map (
      I0 => U5_Mtridata_Rdata_mux0000_2_52_673,
      I1 => U5_Mtridata_Rdata_mux0000_2_51_672,
      S => U5_N8,
      O => U5_Mtridata_Rdata_mux0000_2_5
    );
  U5_Mtridata_Rdata_mux0000_1_51 : LUT4
    generic map(
      INIT => X"FAF8"
    )
    port map (
      I0 => U5_N5,
      I1 => U4_Mtridata_temp(1),
      I2 => U3_temp_aluout(1),
      I3 => U4_Mtrien_temp_652,
      O => U5_Mtridata_Rdata_mux0000_1_51_668
    );
  U5_Mtridata_Rdata_mux0000_1_52 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => U5_N5,
      I1 => U4_Mtridata_temp(1),
      I2 => U4_Mtrien_temp_652,
      O => U5_Mtridata_Rdata_mux0000_1_52_669
    );
  U5_Mtridata_Rdata_mux0000_1_5_f5 : MUXF5
    port map (
      I0 => U5_Mtridata_Rdata_mux0000_1_52_669,
      I1 => U5_Mtridata_Rdata_mux0000_1_51_668,
      S => U5_N8,
      O => U5_Mtridata_Rdata_mux0000_1_5
    );
  U5_Mtridata_Rdata_mux0000_0_51 : LUT4
    generic map(
      INIT => X"FAF8"
    )
    port map (
      I0 => U5_N5,
      I1 => U4_Mtridata_temp(0),
      I2 => U3_temp_aluout(0),
      I3 => U4_Mtrien_temp_652,
      O => U5_Mtridata_Rdata_mux0000_0_51_664
    );
  U5_Mtridata_Rdata_mux0000_0_52 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => U5_N5,
      I1 => U4_Mtridata_temp(0),
      I2 => U4_Mtrien_temp_652,
      O => U5_Mtridata_Rdata_mux0000_0_52_665
    );
  U5_Mtridata_Rdata_mux0000_0_5_f5 : MUXF5
    port map (
      I0 => U5_Mtridata_Rdata_mux0000_0_52_665,
      I1 => U5_Mtridata_Rdata_mux0000_0_51_664,
      S => U5_N8,
      O => U5_Mtridata_Rdata_mux0000_0_5
    );
  U3_temp_aluout_mux0002_0_11 : LUT4
    generic map(
      INIT => X"EA21"
    )
    port map (
      I0 => U2_IR(13),
      I1 => U2_IR(12),
      I2 => U2_IR(11),
      I3 => U2_IR(14),
      O => U3_temp_aluout_mux0002_0_1
    );
  U3_temp_aluout_mux0002_0_1_f5 : MUXF5
    port map (
      I0 => U3_temp_aluout_mux0002_0_1,
      I1 => N1,
      S => U2_IR(15),
      O => U3_N3
    );
  U3_temp_aluout_mux0002_0_51 : LUT4
    generic map(
      INIT => X"4622"
    )
    port map (
      I0 => U2_IR(14),
      I1 => U2_IR(13),
      I2 => U2_IR(11),
      I3 => U2_IR(12),
      O => U3_temp_aluout_mux0002_0_5
    );
  U3_temp_aluout_mux0002_0_5_f5 : MUXF5
    port map (
      I0 => U3_temp_aluout_mux0002_0_5,
      I1 => b_4_OBUF_882,
      S => U2_IR(15),
      O => U3_N20
    );
  a_7_1 : LUT3
    generic map(
      INIT => X"32"
    )
    port map (
      I0 => U2_irreq_236,
      I1 => rst_IBUF1,
      I2 => U1_temp_FSM_FFd21,
      O => a_7_1_852
    );
  a_7_2 : LUT4
    generic map(
      INIT => X"3222"
    )
    port map (
      I0 => U2_irreq_236,
      I1 => rst_IBUF1,
      I2 => U1_temp_FSM_FFd21,
      I3 => U4_Mtridata_temp_cmp_eq0000_651,
      O => a_7_2_853
    );
  a_7_f5 : MUXF5
    port map (
      I0 => a_7_2_853,
      I1 => a_7_1_852,
      S => WR,
      O => a_7_OBUF_857
    );
  U5_Mtridata_Rdata_mux0000_0_2_SW0 : LUT2_D
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U2_IR(14),
      I1 => U2_IR(15),
      LO => N176,
      O => N10
    );
  U4_WR_SW0 : LUT4_L
    generic map(
      INIT => X"FFFD"
    )
    port map (
      I0 => U1_temp_FSM_FFd21,
      I1 => U2_IR(14),
      I2 => U2_IR(15),
      I3 => rst_IBUF1,
      LO => N39
    );
  U3_Zf_mux000411 : LUT2_D
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U2_IR(12),
      I1 => U2_IR(11),
      LO => N177,
      O => U3_N2
    );
  U4_RD1 : LUT3_D
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => rst_IBUF1,
      I1 => U1_temp_FSM_FFd21,
      I2 => U4_Mtridata_temp_cmp_eq0000_651,
      LO => N178,
      O => RD
    );
  U6_ABUS_mux0003_9_SW0 : LUT4_L
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => U3_addrTemp(9),
      I1 => U6_ABUS(9),
      I2 => N3,
      I3 => N5,
      LO => N46
    );
  U6_ABUS_mux0003_8_SW0 : LUT4_L
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => U3_addrTemp(8),
      I1 => U6_ABUS(8),
      I2 => N3,
      I3 => N5,
      LO => N48
    );
  U6_ABUS_mux0003_7_SW0 : LUT4_L
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => U3_addrTemp(7),
      I1 => U6_ABUS(7),
      I2 => N3,
      I3 => N5,
      LO => N50
    );
  U6_ABUS_mux0003_6_SW0 : LUT4_L
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => U3_addrTemp(6),
      I1 => U6_ABUS(6),
      I2 => N3,
      I3 => N5,
      LO => N52
    );
  U6_ABUS_mux0003_5_SW0 : LUT4_L
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => U3_addrTemp(5),
      I1 => U6_ABUS(5),
      I2 => N3,
      I3 => N5,
      LO => N54
    );
  U6_ABUS_mux0003_4_SW0 : LUT4_L
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => U3_addrTemp(4),
      I1 => U6_ABUS(4),
      I2 => N3,
      I3 => N5,
      LO => N56
    );
  U6_ABUS_mux0003_3_SW0 : LUT4_L
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => U3_addrTemp(3),
      I1 => U6_ABUS(3),
      I2 => N3,
      I3 => N5,
      LO => N58
    );
  U6_ABUS_mux0003_2_SW0 : LUT4_L
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => U3_addrTemp(2),
      I1 => U6_ABUS(2),
      I2 => N3,
      I3 => N5,
      LO => N60
    );
  U6_ABUS_mux0003_1_SW0 : LUT4_L
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => U3_addrTemp(1),
      I1 => U6_ABUS(1),
      I2 => N3,
      I3 => N5,
      LO => N62
    );
  U6_ABUS_mux0003_15_SW0 : LUT4_L
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => U3_addrTemp(15),
      I1 => U6_ABUS(15),
      I2 => N3,
      I3 => N5,
      LO => N64
    );
  U6_ABUS_mux0003_14_SW0 : LUT4_L
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => U3_addrTemp(14),
      I1 => U6_ABUS(14),
      I2 => N3,
      I3 => N5,
      LO => N66
    );
  U6_ABUS_mux0003_13_SW0 : LUT4_L
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => U3_addrTemp(13),
      I1 => U6_ABUS(13),
      I2 => N3,
      I3 => N5,
      LO => N68
    );
  U6_ABUS_mux0003_12_SW0 : LUT4_L
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => U3_addrTemp(12),
      I1 => U6_ABUS(12),
      I2 => N3,
      I3 => N5,
      LO => N70
    );
  U6_ABUS_mux0003_11_SW0 : LUT4_L
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => U3_addrTemp(11),
      I1 => U6_ABUS(11),
      I2 => N3,
      I3 => N5,
      LO => N72
    );
  U6_ABUS_mux0003_10_SW0 : LUT4_L
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => U3_addrTemp(10),
      I1 => U6_ABUS(10),
      I2 => N3,
      I3 => N5,
      LO => N74
    );
  U6_ABUS_mux0003_0_SW0 : LUT4_L
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => U3_addrTemp(0),
      I1 => U6_ABUS(0),
      I2 => N3,
      I3 => N5,
      LO => N76
    );
  U3_addrTemp_mux0003_7_SW0 : LUT4_L
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => U2_IR(7),
      I1 => U3_addrTemp_share0000(7),
      I2 => U3_N15,
      I3 => U3_N14,
      LO => N80
    );
  U3_addrTemp_mux0003_5_SW0 : LUT4_L
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => U2_IR(5),
      I1 => U3_addrTemp_share0000(5),
      I2 => U3_N15,
      I3 => U3_N14,
      LO => N84
    );
  U3_addrTemp_mux0003_4_SW0 : LUT4_L
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => U2_IR(4),
      I1 => U3_addrTemp_share0000(4),
      I2 => U3_N15,
      I3 => U3_N14,
      LO => N86
    );
  U3_addrTemp_mux0003_3_SW0 : LUT4_L
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => U2_IR(3),
      I1 => U3_addrTemp_share0000(3),
      I2 => U3_N15,
      I3 => U3_N14,
      LO => N88
    );
  U3_addrTemp_mux0003_2_SW0 : LUT4_L
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => U2_IR(2),
      I1 => U3_addrTemp_share0000(2),
      I2 => U3_N15,
      I3 => U3_N14,
      LO => N90
    );
  U3_addrTemp_mux0003_1_SW0 : LUT4_L
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => U2_IR(1),
      I1 => U3_addrTemp_share0000(1),
      I2 => U3_N15,
      I3 => U3_N14,
      LO => N92
    );
  U3_addrTemp_mux0003_0_SW0 : LUT4_L
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => U2_IR(0),
      I1 => U3_addrTemp_share0000(0),
      I2 => U3_N15,
      I3 => U3_N14,
      LO => N94
    );
  U3_addrTemp_mux0003_11_SW0 : LUT4_L
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => U3_Reg_7_3_515,
      I1 => U3_N15,
      I2 => U3_addrTemp(11),
      I3 => U3_N11,
      LO => N105
    );
  U3_addrTemp_mux0003_12_SW0 : LUT4_L
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => U3_Reg_7_4_516,
      I1 => U3_N15,
      I2 => U3_addrTemp(12),
      I3 => U3_N11,
      LO => N107
    );
  U3_addrTemp_mux0003_13_SW0 : LUT4_L
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => U3_Reg_7_5_517,
      I1 => U3_N15,
      I2 => U3_addrTemp(13),
      I3 => U3_N11,
      LO => N109
    );
  U3_addrTemp_mux0003_14_SW0 : LUT4_L
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => U3_Reg_7_6_518,
      I1 => U3_N15,
      I2 => U3_addrTemp(14),
      I3 => U3_N11,
      LO => N111
    );
  U3_addrTemp_mux0003_15_SW0 : LUT4_L
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => U3_Reg_7_7_519,
      I1 => U3_N15,
      I2 => U3_addrTemp(15),
      I3 => U3_N11,
      LO => N113
    );
  U3_Zf_cmp_eq000312 : LUT4_D
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => RegAout(0),
      I1 => RegAout(1),
      I2 => RegAout(2),
      I3 => RegAout(3),
      LO => N179,
      O => U3_Zf_cmp_eq000312_534
    );
  U3_Zf_cmp_eq000325 : LUT4_D
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => RegAout(4),
      I1 => RegAout(5),
      I2 => RegAout(6),
      I3 => RegAout(7),
      LO => N180,
      O => U3_Zf_cmp_eq000325_535
    );
  U3_Zf_cmp_eq000326 : LUT2_L
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U3_Zf_cmp_eq000312_534,
      I1 => U3_Zf_cmp_eq000325_535,
      LO => U3_Zf_cmp_eq0003
    );
  U3_addrTemp_mux0003_10_SW0_SW0 : LUT4_L
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => U3_Reg_7_2_514,
      I1 => U3_addrTemp(10),
      I2 => U3_N15,
      I3 => U3_N11,
      LO => N150
    );
  U3_addrTemp_mux0003_9_SW0_SW0 : LUT4_L
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => U3_Reg_7_1_513,
      I1 => U3_addrTemp(9),
      I2 => U3_N15,
      I3 => U3_N11,
      LO => N152
    );
  U3_addrTemp_mux0003_8_SW0_SW0 : LUT4_L
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => U3_Reg_7_0_512,
      I1 => U3_addrTemp(8),
      I2 => U3_N15,
      I3 => U3_N11,
      LO => N154
    );
  U6_mDBUS_mux0003_0_11 : LUT4_D
    generic map(
      INIT => X"FFDF"
    )
    port map (
      I0 => U1_temp_FSM_FFd21,
      I1 => rst_IBUF1,
      I2 => U4_Mtridata_temp_cmp_eq0000_651,
      I3 => WR,
      LO => N181,
      O => N11
    );
  U3_addrTemp_mux0003_0_3 : LUT4_D
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => U2_IR(11),
      I1 => U2_IR(12),
      I2 => U2_IR(13),
      I3 => N170,
      LO => N182,
      O => U3_N14
    );
  U6_nWR_1 : LDP_1
    port map (
      D => U6_nWR_mux0002,
      G => U2_irreq_236,
      PRE => rst_IBUF1,
      Q => U6_nWR_1_841
    );

end Structure;

