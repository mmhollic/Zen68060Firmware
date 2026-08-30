// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.14.0.75.2
// Netlist written on Sun Aug 30 13:42:11 2026
//
// Verilog Description of module mainLogic
//

module mainLogic (A, CLK, TS_N, RW_IN, RW_OUT, RAM_CS_N, RAM_OE_N, 
            RESET_PLL, LOCK_PLL, TA_N) /* synthesis syn_module_defined=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(13[8:17])
    input [31:23]A;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(15[25:26])
    input CLK;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(16[13:16])
    input TS_N;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(17[13:17])
    input RW_IN;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(18[13:18])
    output RW_OUT;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(19[14:20])
    output RAM_CS_N;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(20[14:22])
    output RAM_OE_N;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(21[14:22])
    input RESET_PLL;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(22[13:22])
    output LOCK_PLL;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(23[14:22])
    output TA_N;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(24[14:18])
    
    wire CLK_c /* synthesis is_clock=1, SET_AS_NETWORK=CLK_c */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(16[13:16])
    wire CLKOS /* synthesis is_clock=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(45[7:12])
    wire CLKOS2 /* synthesis is_clock=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(46[7:13])
    
    wire GND_net, VCC_net, A_c_31, A_c_30, A_c_29, A_c_28, A_c_27, 
        A_c_26, A_c_25, A_c_24, A_c_23, TS_N_c, RW_OUT_c_c, RESET_PLL_c, 
        LOCK_PLL_c, int_TA_SRAM_WR, int_TA_SRAM_RD, TS_N_N_30, PHASESTEP_PLL;
    wire [2:0]PHASE_SEL_PLL;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(49[12:25])
    
    wire phase_done;
    wire [5:0]phase_count;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(66[12:23])
    
    wire RAM_CS_N_N_19, n776, CLK_c_enable_2, n17, n15, PHASESTEP_PLL_N_61;
    wire [5:0]phase_count_5__N_10;
    
    wire n14, int_RAM_CS_ADDR_N_28, int_TA_SRAM_RD_N_27, int_TA_SRAM_WR_N_23, 
        n791, CLK_c_enable_1, n703, n810, n643, n7, n793, n790, 
        n779, n777, n787, n641, CLK_c_enable_3, n792, n642;
    
    VHI i2 (.Z(VCC_net));
    ZenPLL u_ZenPLL (.CLK_c(CLK_c), .GND_net(GND_net), .\PHASE_SEL_PLL[0] (PHASE_SEL_PLL[0]), 
           .VCC_net(VCC_net), .PHASESTEP_PLL(PHASESTEP_PLL), .RESET_PLL_c(RESET_PLL_c), 
           .CLKOS(CLKOS), .CLKOS2(CLKOS2), .LOCK_PLL_c(LOCK_PLL_c)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(50[9] 61[3])
    LUT4 i6_4_lut (.A(A_c_25), .B(A_c_28), .C(A_c_26), .D(A_c_29), .Z(n15)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(136[30:52])
    defparam i6_4_lut.init = 16'hfffe;
    LUT4 i5_3_lut (.A(A_c_31), .B(A_c_27), .C(A_c_30), .Z(n14)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(136[30:52])
    defparam i5_3_lut.init = 16'hfbfb;
    LUT4 i620_2_lut (.A(RW_OUT_c_c), .B(int_RAM_CS_ADDR_N_28), .Z(int_TA_SRAM_WR_N_23)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i620_2_lut.init = 16'h1111;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 i617_4_lut (.A(phase_count[5]), .B(n17), .C(RESET_PLL_c), .D(n791), 
         .Z(CLK_c_enable_1)) /* synthesis lut_function=(!(A+(B+!(C+!(D))))) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(67[9] 100[5])
    defparam i617_4_lut.init = 16'h1011;
    LUT4 i1_2_lut_rep_8 (.A(LOCK_PLL_c), .B(phase_done), .Z(n791)) /* synthesis lut_function=((B)+!A) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(67[9] 100[5])
    defparam i1_2_lut_rep_8.init = 16'hdddd;
    FD1S3IX phase_count_i0 (.D(phase_count_5__N_10[0]), .CK(CLK_c), .CD(RESET_PLL_c), 
            .Q(phase_count[0])) /* synthesis lse_init_val=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(67[9] 100[5])
    defparam phase_count_i0.GSR = "ENABLED";
    LUT4 i1_4_lut (.A(phase_count[4]), .B(n7), .C(phase_count[3]), .D(phase_count[0]), 
         .Z(n17)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(67[9] 100[5])
    defparam i1_4_lut.init = 16'ha080;
    LUT4 phase_count_3__bdd_4_lut_4_lut (.A(phase_count[5]), .B(phase_count[4]), 
         .C(phase_count[2]), .D(phase_count[3]), .Z(n787)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(82[6:7])
    defparam phase_count_3__bdd_4_lut_4_lut.init = 16'hfeee;
    LUT4 phase_count_1__bdd_4_lut_634 (.A(phase_count[3]), .B(phase_count[5]), 
         .C(phase_count[4]), .D(phase_count[2]), .Z(n777)) /* synthesis lut_function=(A (B (D)+!B ((D)+!C))+!A ((D)+!B)) */ ;
    defparam phase_count_1__bdd_4_lut_634.init = 16'hff13;
    IB A_pad_29 (.I(A[29]), .O(A_c_29));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(15[25:26])
    FD1S3IX phase_count_i1 (.D(phase_count_5__N_10[1]), .CK(CLK_c), .CD(RESET_PLL_c), 
            .Q(phase_count[1])) /* synthesis lse_init_val=0 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(67[9] 100[5])
    defparam phase_count_i1.GSR = "ENABLED";
    FD1S3IX phase_count_i2 (.D(phase_count_5__N_10[2]), .CK(CLK_c), .CD(RESET_PLL_c), 
            .Q(phase_count[2])) /* synthesis lse_init_val=0 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(67[9] 100[5])
    defparam phase_count_i2.GSR = "ENABLED";
    FD1S3IX phase_count_i3 (.D(phase_count_5__N_10[3]), .CK(CLK_c), .CD(RESET_PLL_c), 
            .Q(phase_count[3])) /* synthesis lse_init_val=0 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(67[9] 100[5])
    defparam phase_count_i3.GSR = "ENABLED";
    FD1S3IX phase_count_i4 (.D(phase_count_5__N_10[4]), .CK(CLK_c), .CD(RESET_PLL_c), 
            .Q(phase_count[4])) /* synthesis lse_init_val=0 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(67[9] 100[5])
    defparam phase_count_i4.GSR = "ENABLED";
    FD1S3IX phase_count_i5 (.D(phase_count_5__N_10[5]), .CK(CLK_c), .CD(RESET_PLL_c), 
            .Q(phase_count[5])) /* synthesis lse_init_val=0 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(67[9] 100[5])
    defparam phase_count_i5.GSR = "ENABLED";
    FD1P3IX PHASESTEP_PLL_82 (.D(n779), .SP(CLK_c_enable_1), .CD(RESET_PLL_c), 
            .CK(CLK_c), .Q(PHASESTEP_PLL)) /* synthesis lse_init_val=0 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(67[9] 100[5])
    defparam PHASESTEP_PLL_82.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_10 (.A(phase_count[5]), .B(phase_count[4]), .Z(n793)) /* synthesis lut_function=(A+(B)) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(82[6:7])
    defparam i1_2_lut_rep_10.init = 16'heeee;
    LUT4 i1_2_lut (.A(phase_count[4]), .B(phase_count[3]), .Z(n703)) /* synthesis lut_function=(A (B)) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(77[5] 97[12])
    defparam i1_2_lut.init = 16'h8888;
    FD1P3AX PHASE_SEL_PLL__0__i1 (.D(n787), .SP(CLK_c_enable_2), .CK(CLK_c), 
            .Q(PHASE_SEL_PLL[0]));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(67[9] 100[5])
    defparam PHASE_SEL_PLL__0__i1.GSR = "ENABLED";
    LUT4 i3_2_lut (.A(phase_count[2]), .B(phase_count[1]), .Z(n7)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3_2_lut.init = 16'heeee;
    LUT4 CLKOS_I_0_2_lut_rep_7 (.A(CLKOS), .B(CLKOS2), .Z(n790)) /* synthesis lut_function=(A+(B)) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(62[20:32])
    defparam CLKOS_I_0_2_lut_rep_7.init = 16'heeee;
    LUT4 i628_3_lut_4_lut (.A(LOCK_PLL_c), .B(phase_done), .C(n776), .D(RESET_PLL_c), 
         .Z(CLK_c_enable_2)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(67[9] 100[5])
    defparam i628_3_lut_4_lut.init = 16'h0002;
    LUT4 n164_bdd_2_lut_3_lut (.A(n777), .B(phase_count[1]), .C(phase_count[0]), 
         .Z(n779)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam n164_bdd_2_lut_3_lut.init = 16'he0e0;
    LUT4 i8_4_lut (.A(n15), .B(A_c_24), .C(n14), .D(A_c_23), .Z(int_RAM_CS_ADDR_N_28)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(136[30:52])
    defparam i8_4_lut.init = 16'hfffe;
    LUT4 TS_N_I_0_1_lut (.A(TS_N_c), .Z(TS_N_N_30)) /* synthesis lut_function=(!(A)) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(38[14:19])
    defparam TS_N_I_0_1_lut.init = 16'h5555;
    TSALL TSALL_INST (.TSALL(GND_net));
    GSR GSR_INST (.GSR(VCC_net));
    VLO i1 (.Z(GND_net));
    FD1P3IX phase_done_83 (.D(n810), .SP(CLK_c_enable_3), .CD(RESET_PLL_c), 
            .CK(CLK_c), .Q(phase_done)) /* synthesis lse_init_val=0 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(67[9] 100[5])
    defparam phase_done_83.GSR = "ENABLED";
    FD1P3AX int_TA_SRAM_RD_85 (.D(TS_N_N_30), .SP(int_TA_SRAM_RD_N_27), 
            .CK(CLK_c), .Q(int_TA_SRAM_RD)) /* synthesis lse_init_val=0 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(150[12] 157[8])
    defparam int_TA_SRAM_RD_85.GSR = "ENABLED";
    CCU2D add_123_7 (.A0(phase_count[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n643), .S0(phase_count_5__N_10[5]));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(76[18:31])
    defparam add_123_7.INIT0 = 16'h5aaa;
    defparam add_123_7.INIT1 = 16'h0000;
    defparam add_123_7.INJECT1_0 = "NO";
    defparam add_123_7.INJECT1_1 = "NO";
    LUT4 phase_count_3__bdd_4_lut_633 (.A(phase_count[3]), .B(phase_count[2]), 
         .C(PHASESTEP_PLL_N_61), .D(n793), .Z(n776)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (C (D))) */ ;
    defparam phase_count_3__bdd_4_lut_633.init = 16'hf080;
    IB RESET_PLL_pad (.I(RESET_PLL), .O(RESET_PLL_c));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(22[13:22])
    CCU2D add_123_5 (.A0(phase_count[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(phase_count[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n642), .COUT(n643), .S0(phase_count_5__N_10[3]), 
          .S1(phase_count_5__N_10[4]));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(76[18:31])
    defparam add_123_5.INIT0 = 16'h5aaa;
    defparam add_123_5.INIT1 = 16'h5aaa;
    defparam add_123_5.INJECT1_0 = "NO";
    defparam add_123_5.INJECT1_1 = "NO";
    IB RW_OUT_c_pad (.I(RW_IN), .O(RW_OUT_c_c));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(18[13:18])
    IB TS_N_pad (.I(TS_N), .O(TS_N_c));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(17[13:17])
    IB CLK_pad (.I(CLK), .O(CLK_c));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(16[13:16])
    LUT4 i1_4_lut_adj_11 (.A(phase_count[5]), .B(phase_count[0]), .C(n703), 
         .D(n7), .Z(PHASESTEP_PLL_N_61)) /* synthesis lut_function=(A+(B (C)+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_11.init = 16'hfaea;
    IB A_pad_23 (.I(A[23]), .O(A_c_23));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(15[25:26])
    IB A_pad_24 (.I(A[24]), .O(A_c_24));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(15[25:26])
    IB A_pad_25 (.I(A[25]), .O(A_c_25));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(15[25:26])
    LUT4 i614_3_lut_3_lut_4_lut (.A(CLKOS), .B(CLKOS2), .C(int_RAM_CS_ADDR_N_28), 
         .D(n792), .Z(RAM_CS_N_N_19)) /* synthesis lut_function=(A (C+(D))+!A ((C+(D))+!B)) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(62[20:32])
    defparam i614_3_lut_3_lut_4_lut.init = 16'hfff1;
    IB A_pad_26 (.I(A[26]), .O(A_c_26));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(15[25:26])
    IB A_pad_27 (.I(A[27]), .O(A_c_27));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(15[25:26])
    IB A_pad_28 (.I(A[28]), .O(A_c_28));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(15[25:26])
    LUT4 i612_2_lut_rep_9 (.A(int_TA_SRAM_WR), .B(int_TA_SRAM_RD), .Z(n792)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(28[16:48])
    defparam i612_2_lut_rep_9.init = 16'h1111;
    LUT4 i322_4_lut (.A(PHASESTEP_PLL_N_61), .B(RESET_PLL_c), .C(LOCK_PLL_c), 
         .D(phase_done), .Z(CLK_c_enable_3)) /* synthesis lut_function=(A (B+!((D)+!C))) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(67[9] 100[5])
    defparam i322_4_lut.init = 16'h88a8;
    LUT4 RW_IN_I_0_2_lut (.A(RW_OUT_c_c), .B(int_RAM_CS_ADDR_N_28), .Z(int_TA_SRAM_RD_N_27)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(152[6:27])
    defparam RW_IN_I_0_2_lut.init = 16'h2222;
    FD1P3AX int_TA_SRAM_WR_86 (.D(TS_N_N_30), .SP(int_TA_SRAM_WR_N_23), 
            .CK(CLK_c), .Q(int_TA_SRAM_WR)) /* synthesis lse_init_val=0 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(161[12] 168[8])
    defparam int_TA_SRAM_WR_86.GSR = "ENABLED";
    CCU2D add_123_3 (.A0(phase_count[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(phase_count[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n641), .COUT(n642), .S0(phase_count_5__N_10[1]), 
          .S1(phase_count_5__N_10[2]));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(76[18:31])
    defparam add_123_3.INIT0 = 16'h5aaa;
    defparam add_123_3.INIT1 = 16'h5aaa;
    defparam add_123_3.INJECT1_0 = "NO";
    defparam add_123_3.INJECT1_1 = "NO";
    IB A_pad_30 (.I(A[30]), .O(A_c_30));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(15[25:26])
    IB A_pad_31 (.I(A[31]), .O(A_c_31));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(15[25:26])
    OB TA_N_pad (.I(n792), .O(TA_N));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(24[14:18])
    OB LOCK_PLL_pad (.I(LOCK_PLL_c), .O(LOCK_PLL));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(23[14:22])
    OB RAM_OE_N_pad (.I(n790), .O(RAM_OE_N));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(21[14:22])
    OB RAM_CS_N_pad (.I(RAM_CS_N_N_19), .O(RAM_CS_N));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(20[14:22])
    OB RW_OUT_pad (.I(RW_OUT_c_c), .O(RW_OUT));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(19[14:20])
    LUT4 m1_lut (.Z(n810)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    CCU2D add_123_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(LOCK_PLL_c), .B1(phase_done), .C1(phase_count[0]), .D1(GND_net), 
          .COUT(n641), .S1(phase_count_5__N_10[0]));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(76[18:31])
    defparam add_123_1.INIT0 = 16'hF000;
    defparam add_123_1.INIT1 = 16'hd2d2;
    defparam add_123_1.INJECT1_0 = "NO";
    defparam add_123_1.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module ZenPLL
//

module ZenPLL (CLK_c, GND_net, \PHASE_SEL_PLL[0] , VCC_net, PHASESTEP_PLL, 
            RESET_PLL_c, CLKOS, CLKOS2, LOCK_PLL_c) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    input CLK_c;
    input GND_net;
    input \PHASE_SEL_PLL[0] ;
    input VCC_net;
    input PHASESTEP_PLL;
    input RESET_PLL_c;
    output CLKOS;
    output CLKOS2;
    output LOCK_PLL_c;
    
    wire CLK_c /* synthesis is_clock=1, SET_AS_NETWORK=CLK_c */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(16[13:16])
    wire CLKOP /* synthesis is_clock=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenpll.v(15[17:22])
    wire CLKOS /* synthesis is_clock=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(45[7:12])
    wire CLKOS2 /* synthesis is_clock=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(46[7:13])
    
    EHXPLLJ PLLInst_0 (.CLKI(CLK_c), .CLKFB(CLKOP), .PHASESEL0(\PHASE_SEL_PLL[0] ), 
            .PHASESEL1(GND_net), .PHASEDIR(VCC_net), .PHASESTEP(PHASESTEP_PLL), 
            .LOADREG(GND_net), .STDBY(GND_net), .PLLWAKESYNC(GND_net), 
            .RST(RESET_PLL_c), .RESETC(GND_net), .RESETD(GND_net), .RESETM(GND_net), 
            .ENCLKOP(GND_net), .ENCLKOS(GND_net), .ENCLKOS2(GND_net), 
            .ENCLKOS3(GND_net), .PLLCLK(GND_net), .PLLRST(GND_net), .PLLSTB(GND_net), 
            .PLLWE(GND_net), .PLLDATI0(GND_net), .PLLDATI1(GND_net), .PLLDATI2(GND_net), 
            .PLLDATI3(GND_net), .PLLDATI4(GND_net), .PLLDATI5(GND_net), 
            .PLLDATI6(GND_net), .PLLDATI7(GND_net), .PLLADDR0(GND_net), 
            .PLLADDR1(GND_net), .PLLADDR2(GND_net), .PLLADDR3(GND_net), 
            .PLLADDR4(GND_net), .CLKOP(CLKOP), .CLKOS(CLKOS), .CLKOS2(CLKOS2), 
            .LOCK(LOCK_PLL_c)) /* synthesis FREQUENCY_PIN_CLKOS2="50.000000", FREQUENCY_PIN_CLKOS="50.000000", FREQUENCY_PIN_CLKOP="50.000000", FREQUENCY_PIN_CLKI="50.000000", ICP_CURRENT="7", LPF_RESISTOR="72", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=3, LSE_LLINE=50, LSE_RLINE=61 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(50[9] 61[3])
    defparam PLLInst_0.CLKI_DIV = 1;
    defparam PLLInst_0.CLKFB_DIV = 1;
    defparam PLLInst_0.CLKOP_DIV = 8;
    defparam PLLInst_0.CLKOS_DIV = 8;
    defparam PLLInst_0.CLKOS2_DIV = 8;
    defparam PLLInst_0.CLKOS3_DIV = 1;
    defparam PLLInst_0.CLKOP_ENABLE = "ENABLED";
    defparam PLLInst_0.CLKOS_ENABLE = "ENABLED";
    defparam PLLInst_0.CLKOS2_ENABLE = "ENABLED";
    defparam PLLInst_0.CLKOS3_ENABLE = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_A0 = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_B0 = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_C0 = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_D0 = "DISABLED";
    defparam PLLInst_0.CLKOP_CPHASE = 7;
    defparam PLLInst_0.CLKOS_CPHASE = 8;
    defparam PLLInst_0.CLKOS2_CPHASE = 7;
    defparam PLLInst_0.CLKOS3_CPHASE = 0;
    defparam PLLInst_0.CLKOP_FPHASE = 0;
    defparam PLLInst_0.CLKOS_FPHASE = 0;
    defparam PLLInst_0.CLKOS2_FPHASE = 0;
    defparam PLLInst_0.CLKOS3_FPHASE = 0;
    defparam PLLInst_0.FEEDBK_PATH = "CLKOP";
    defparam PLLInst_0.FRACN_ENABLE = "DISABLED";
    defparam PLLInst_0.FRACN_DIV = 0;
    defparam PLLInst_0.CLKOP_TRIM_POL = "RISING";
    defparam PLLInst_0.CLKOP_TRIM_DELAY = 0;
    defparam PLLInst_0.CLKOS_TRIM_POL = "RISING";
    defparam PLLInst_0.CLKOS_TRIM_DELAY = 0;
    defparam PLLInst_0.PLL_USE_WB = "DISABLED";
    defparam PLLInst_0.PREDIVIDER_MUXA1 = 0;
    defparam PLLInst_0.PREDIVIDER_MUXB1 = 0;
    defparam PLLInst_0.PREDIVIDER_MUXC1 = 0;
    defparam PLLInst_0.PREDIVIDER_MUXD1 = 0;
    defparam PLLInst_0.OUTDIVIDER_MUXA2 = "DIVA";
    defparam PLLInst_0.OUTDIVIDER_MUXB2 = "DIVB";
    defparam PLLInst_0.OUTDIVIDER_MUXC2 = "DIVC";
    defparam PLLInst_0.OUTDIVIDER_MUXD2 = "DIVD";
    defparam PLLInst_0.PLL_LOCK_MODE = 0;
    defparam PLLInst_0.STDBY_ENABLE = "DISABLED";
    defparam PLLInst_0.DPHASE_SOURCE = "ENABLED";
    defparam PLLInst_0.PLLRST_ENA = "ENABLED";
    defparam PLLInst_0.MRST_ENA = "DISABLED";
    defparam PLLInst_0.DCRST_ENA = "DISABLED";
    defparam PLLInst_0.DDRST_ENA = "DISABLED";
    defparam PLLInst_0.INTFB_WAKE = "DISABLED";
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

