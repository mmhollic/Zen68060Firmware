// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.14.0.75.2
// Netlist written on Mon Aug 31 21:57:14 2026
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
    output RAM_CS_N /* synthesis DOUT="TRUE" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(20[14:22])
    output RAM_OE_N;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(21[14:22])
    input RESET_PLL;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(22[13:22])
    output LOCK_PLL;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(23[14:22])
    output TA_N /* synthesis DOUT="TRUE" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(24[14:18])
    
    wire VCC_net /* synthesis DOUT="TRUE" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenpll.v(12[16:24])
    wire CLK_c /* synthesis is_clock=1, SET_AS_NETWORK=CLK_c */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(16[13:16])
    wire TA_N_c /* synthesis DOUT="TRUE" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(24[14:18])
    wire CLKOS /* synthesis is_clock=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(42[7:12])
    wire CLKOS2 /* synthesis is_clock=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(43[7:13])
    
    wire GND_net, A_c_31, A_c_30, A_c_29, A_c_28, A_c_27, A_c_26, 
        A_c_25, A_c_24, A_c_23, TS_N_c, RW_OUT_c_c, RAM_OE_N_c, 
        RESET_PLL_c, LOCK_PLL_c, int_TA_SRAM, n17, CLK_c_enable_3, 
        n16, n397;
    
    VHI i2 (.Z(VCC_net));
    IB A_pad_28 (.I(A[28]), .O(A_c_28));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(15[25:26])
    ZenClockPLL u_pll (.CLK_c(CLK_c), .RESET_PLL_c(RESET_PLL_c), .n397(n397), 
            .GND_net(GND_net), .LOCK_PLL_c(LOCK_PLL_c), .VCC_net(VCC_net), 
            .CLKOS(CLKOS), .CLKOS2(CLKOS2)) /* synthesis syn_module_defined=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(46[14] 53[3])
    LUT4 CLKOS_I_0_2_lut (.A(CLKOS), .B(CLKOS2), .Z(RAM_OE_N_c)) /* synthesis lut_function=(A+(B)) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(54[20:32])
    defparam CLKOS_I_0_2_lut.init = 16'heeee;
    IB A_pad_27 (.I(A[27]), .O(A_c_27));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(15[25:26])
    LUT4 i325_4_lut (.A(n17), .B(A_c_23), .C(n16), .D(A_c_27), .Z(CLK_c_enable_3)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(106[12] 115[8])
    defparam i325_4_lut.init = 16'h0100;
    IB RESET_PLL_pad (.I(RESET_PLL), .O(RESET_PLL_c));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(22[13:22])
    IB RW_OUT_c_pad (.I(RW_IN), .O(RW_OUT_c_c));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(18[13:18])
    FD1P3AX int_TA_SRAM_22 (.D(n397), .SP(CLK_c_enable_3), .CK(CLK_c), 
            .Q(int_TA_SRAM)) /* synthesis lse_init_val=0 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(106[12] 115[8])
    defparam int_TA_SRAM_22.GSR = "ENABLED";
    IB TS_N_pad (.I(TS_N), .O(TS_N_c));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(17[13:17])
    LUT4 i7_4_lut (.A(TS_N_c), .B(A_c_30), .C(A_c_28), .D(A_c_31), .Z(n17)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(106[12] 115[8])
    defparam i7_4_lut.init = 16'hfffe;
    LUT4 i6_4_lut (.A(A_c_26), .B(A_c_24), .C(A_c_29), .D(A_c_25), .Z(n16)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(106[12] 115[8])
    defparam i6_4_lut.init = 16'hfffe;
    IB A_pad_29 (.I(A[29]), .O(A_c_29));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(15[25:26])
    IB CLK_pad (.I(CLK), .O(CLK_c));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(16[13:16])
    IB A_pad_30 (.I(A[30]), .O(A_c_30));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(15[25:26])
    IB A_pad_23 (.I(A[23]), .O(A_c_23));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(15[25:26])
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 m1_lut (.Z(n397)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    IB A_pad_24 (.I(A[24]), .O(A_c_24));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(15[25:26])
    TSALL TSALL_INST (.TSALL(GND_net));
    VLO i1 (.Z(GND_net));
    IB A_pad_31 (.I(A[31]), .O(A_c_31));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(15[25:26])
    OB TA_N_pad (.I(TA_N_c), .O(TA_N));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(24[14:18])
    LUT4 int_TA_SRAM_I_0_1_lut (.A(int_TA_SRAM), .Z(TA_N_c)) /* synthesis lut_function=(!(A)) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(27[16:28])
    defparam int_TA_SRAM_I_0_1_lut.init = 16'h5555;
    OB LOCK_PLL_pad (.I(LOCK_PLL_c), .O(LOCK_PLL));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(23[14:22])
    OB RAM_OE_N_pad (.I(RAM_OE_N_c), .O(RAM_OE_N));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(21[14:22])
    OB RAM_CS_N_pad (.I(VCC_net), .O(RAM_CS_N));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(20[14:22])
    OB RW_OUT_pad (.I(RW_OUT_c_c), .O(RW_OUT));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(19[14:20])
    IB A_pad_25 (.I(A[25]), .O(A_c_25));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(15[25:26])
    IB A_pad_26 (.I(A[26]), .O(A_c_26));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(15[25:26])
    GSR GSR_INST (.GSR(VCC_net));
    
endmodule
//
// Verilog Description of module ZenClockPLL
//

module ZenClockPLL (CLK_c, RESET_PLL_c, n397, GND_net, LOCK_PLL_c, 
            VCC_net, CLKOS, CLKOS2) /* synthesis syn_module_defined=1 */ ;
    input CLK_c;
    input RESET_PLL_c;
    input n397;
    input GND_net;
    output LOCK_PLL_c;
    input VCC_net;
    output CLKOS;
    output CLKOS2;
    
    wire CLK_c /* synthesis is_clock=1, SET_AS_NETWORK=CLK_c */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(16[13:16])
    wire VCC_net /* synthesis DOUT="TRUE" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenpll.v(12[16:24])
    wire CLKOS /* synthesis is_clock=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(42[7:12])
    wire CLKOS2 /* synthesis is_clock=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(43[7:13])
    wire [5:0]phase_count;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenclockpll.v(29[12:23])
    
    wire n389, phase_done, CLK_c_enable_1, PHASESTEP_PLL, CLK_c_enable_2;
    wire [5:0]phase_count_5__N_22;
    
    wire n305, n99, n387, n307, n388, n306, n362, CLK_c_enable_4;
    wire [2:0]PHASE_SEL_PLL;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenclockpll.v(12[12:25])
    
    wire n247;
    
    LUT4 i1_2_lut_rep_5 (.A(phase_count[4]), .B(phase_count[5]), .Z(n389)) /* synthesis lut_function=(A+(B)) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenclockpll.v(45[6:7])
    defparam i1_2_lut_rep_5.init = 16'heeee;
    FD1P3IX phase_done_37 (.D(n397), .SP(CLK_c_enable_1), .CD(RESET_PLL_c), 
            .CK(CLK_c), .Q(phase_done)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=3, LSE_LLINE=46, LSE_RLINE=53 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenclockpll.v(30[9] 63[5])
    defparam phase_done_37.GSR = "ENABLED";
    FD1P3IX PHASESTEP_PLL_36 (.D(phase_count[0]), .SP(CLK_c_enable_2), .CD(RESET_PLL_c), 
            .CK(CLK_c), .Q(PHASESTEP_PLL)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=3, LSE_LLINE=46, LSE_RLINE=53 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenclockpll.v(30[9] 63[5])
    defparam PHASESTEP_PLL_36.GSR = "ENABLED";
    CCU2D add_53_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(LOCK_PLL_c), .B1(phase_done), .C1(phase_count[0]), .D1(GND_net), 
          .COUT(n305), .S1(phase_count_5__N_22[0]));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenclockpll.v(39[18:31])
    defparam add_53_1.INIT0 = 16'hF000;
    defparam add_53_1.INIT1 = 16'hd2d2;
    defparam add_53_1.INJECT1_0 = "NO";
    defparam add_53_1.INJECT1_1 = "NO";
    FD1S3IX phase_count_i0 (.D(phase_count_5__N_22[0]), .CK(CLK_c), .CD(RESET_PLL_c), 
            .Q(phase_count[0])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=3, LSE_LLINE=46, LSE_RLINE=53 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenclockpll.v(30[9] 63[5])
    defparam phase_count_i0.GSR = "ENABLED";
    LUT4 i117_4_lut (.A(phase_count[5]), .B(n99), .C(phase_count[4]), 
         .D(n387), .Z(CLK_c_enable_1)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenclockpll.v(30[9] 63[5])
    defparam i117_4_lut.init = 16'hccc8;
    FD1S3IX phase_count_i1 (.D(phase_count_5__N_22[1]), .CK(CLK_c), .CD(RESET_PLL_c), 
            .Q(phase_count[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=3, LSE_LLINE=46, LSE_RLINE=53 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenclockpll.v(30[9] 63[5])
    defparam phase_count_i1.GSR = "ENABLED";
    FD1S3IX phase_count_i2 (.D(phase_count_5__N_22[2]), .CK(CLK_c), .CD(RESET_PLL_c), 
            .Q(phase_count[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=3, LSE_LLINE=46, LSE_RLINE=53 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenclockpll.v(30[9] 63[5])
    defparam phase_count_i2.GSR = "ENABLED";
    FD1S3IX phase_count_i3 (.D(phase_count_5__N_22[3]), .CK(CLK_c), .CD(RESET_PLL_c), 
            .Q(phase_count[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=3, LSE_LLINE=46, LSE_RLINE=53 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenclockpll.v(30[9] 63[5])
    defparam phase_count_i3.GSR = "ENABLED";
    FD1S3IX phase_count_i4 (.D(phase_count_5__N_22[4]), .CK(CLK_c), .CD(RESET_PLL_c), 
            .Q(phase_count[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=3, LSE_LLINE=46, LSE_RLINE=53 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenclockpll.v(30[9] 63[5])
    defparam phase_count_i4.GSR = "ENABLED";
    FD1S3IX phase_count_i5 (.D(phase_count_5__N_22[5]), .CK(CLK_c), .CD(RESET_PLL_c), 
            .Q(phase_count[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=3, LSE_LLINE=46, LSE_RLINE=53 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenclockpll.v(30[9] 63[5])
    defparam phase_count_i5.GSR = "ENABLED";
    CCU2D add_53_7 (.A0(phase_count[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n307), 
          .S0(phase_count_5__N_22[5]));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenclockpll.v(39[18:31])
    defparam add_53_7.INIT0 = 16'h5aaa;
    defparam add_53_7.INIT1 = 16'h0000;
    defparam add_53_7.INJECT1_0 = "NO";
    defparam add_53_7.INJECT1_1 = "NO";
    LUT4 i2_3_lut_4_lut (.A(phase_count[3]), .B(n388), .C(n99), .D(n389), 
         .Z(CLK_c_enable_2)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A ((D)+!C))) */ ;
    defparam i2_3_lut_4_lut.init = 16'h0070;
    CCU2D add_53_5 (.A0(phase_count[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(phase_count[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n306), .COUT(n307), .S0(phase_count_5__N_22[3]), .S1(phase_count_5__N_22[4]));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenclockpll.v(39[18:31])
    defparam add_53_5.INIT0 = 16'h5aaa;
    defparam add_53_5.INIT1 = 16'h5aaa;
    defparam add_53_5.INJECT1_0 = "NO";
    defparam add_53_5.INJECT1_1 = "NO";
    LUT4 i2_3_lut (.A(n362), .B(LOCK_PLL_c), .C(phase_done), .Z(CLK_c_enable_4)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i2_3_lut.init = 16'h0404;
    LUT4 i313_4_lut (.A(phase_count[4]), .B(phase_count[5]), .C(RESET_PLL_c), 
         .D(n387), .Z(n362)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i313_4_lut.init = 16'hfffe;
    FD1P3AX PHASE_SEL_PLL__0__i1 (.D(n247), .SP(CLK_c_enable_4), .CK(CLK_c), 
            .Q(PHASE_SEL_PLL[0]));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenclockpll.v(30[9] 63[5])
    defparam PHASE_SEL_PLL__0__i1.GSR = "ENABLED";
    LUT4 i207_3_lut_3_lut_4_lut (.A(phase_count[1]), .B(phase_count[2]), 
         .C(n389), .D(phase_count[3]), .Z(n247)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i207_3_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i76_3_lut (.A(RESET_PLL_c), .B(LOCK_PLL_c), .C(phase_done), .Z(n99)) /* synthesis lut_function=(A+!((C)+!B)) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenclockpll.v(30[9] 63[5])
    defparam i76_3_lut.init = 16'haeae;
    CCU2D add_53_3 (.A0(phase_count[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(phase_count[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n305), .COUT(n306), .S0(phase_count_5__N_22[1]), .S1(phase_count_5__N_22[2]));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenclockpll.v(39[18:31])
    defparam add_53_3.INIT0 = 16'h5aaa;
    defparam add_53_3.INIT1 = 16'h5aaa;
    defparam add_53_3.INJECT1_0 = "NO";
    defparam add_53_3.INJECT1_1 = "NO";
    LUT4 i210_2_lut_rep_3_3_lut_4_lut (.A(phase_count[1]), .B(phase_count[2]), 
         .C(phase_count[3]), .D(phase_count[0]), .Z(n387)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;
    defparam i210_2_lut_rep_3_3_lut_4_lut.init = 16'hf0e0;
    LUT4 i1_2_lut_rep_4_3_lut (.A(phase_count[1]), .B(phase_count[2]), .C(phase_count[0]), 
         .Z(n388)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_rep_4_3_lut.init = 16'hfefe;
    ZenPLL u_ZenPLL (.CLK_c(CLK_c), .GND_net(GND_net), .\PHASE_SEL_PLL[0] (PHASE_SEL_PLL[0]), 
           .VCC_net(VCC_net), .PHASESTEP_PLL(PHASESTEP_PLL), .RESET_PLL_c(RESET_PLL_c), 
           .CLKOS(CLKOS), .CLKOS2(CLKOS2), .LOCK_PLL_c(LOCK_PLL_c)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenclockpll.v(14[9] 26[3])
    
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
    wire VCC_net /* synthesis DOUT="TRUE" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenpll.v(12[16:24])
    wire CLKOP /* synthesis is_clock=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenpll.v(15[17:22])
    wire CLKOS /* synthesis is_clock=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(42[7:12])
    wire CLKOS2 /* synthesis is_clock=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(43[7:13])
    
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
            .LOCK(LOCK_PLL_c)) /* synthesis FREQUENCY_PIN_CLKOS3="400.000000", FREQUENCY_PIN_CLKOS2="50.000000", FREQUENCY_PIN_CLKOS="50.000000", FREQUENCY_PIN_CLKOP="50.000000", FREQUENCY_PIN_CLKI="50.000000", ICP_CURRENT="7", LPF_RESISTOR="72", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=9, LSE_RCOL=3, LSE_LLINE=14, LSE_RLINE=26 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenclockpll.v(14[9] 26[3])
    defparam PLLInst_0.CLKI_DIV = 1;
    defparam PLLInst_0.CLKFB_DIV = 1;
    defparam PLLInst_0.CLKOP_DIV = 8;
    defparam PLLInst_0.CLKOS_DIV = 8;
    defparam PLLInst_0.CLKOS2_DIV = 8;
    defparam PLLInst_0.CLKOS3_DIV = 1;
    defparam PLLInst_0.CLKOP_ENABLE = "ENABLED";
    defparam PLLInst_0.CLKOS_ENABLE = "ENABLED";
    defparam PLLInst_0.CLKOS2_ENABLE = "ENABLED";
    defparam PLLInst_0.CLKOS3_ENABLE = "ENABLED";
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

