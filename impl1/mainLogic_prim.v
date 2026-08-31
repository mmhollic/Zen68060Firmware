// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.14.0.75.2
// Netlist written on Mon Aug 31 11:40:50 2026
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
    wire CLKOS /* synthesis is_clock=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(42[7:12])
    wire CLKOS2 /* synthesis is_clock=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(43[7:13])
    wire CLKOS3 /* synthesis is_clock=1, SET_AS_NETWORK=CLKOS3 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(44[7:13])
    
    wire GND_net, VCC_net, A_c_31, A_c_30, A_c_29, A_c_28, A_c_27, 
        A_c_26, A_c_25, A_c_24, A_c_23, TS_N_c, RW_OUT_c_c, RAM_CS_N_c, 
        RAM_OE_N_c, RESET_PLL_c, LOCK_PLL_c, TA_N_c, int_TA_SRAM, 
        TRIGGER, int_RAM_CS_ADDR_N_4, TRIGGER_N_14, CLK_c_enable_3, 
        n433, n15, n14;
    
    VHI i2 (.Z(VCC_net));
    pulse_2point5ns pulse12point5 (.TRIGGER(TRIGGER), .CLKOS3(CLKOS3), .RAM_CS_N_c(RAM_CS_N_c)) /* synthesis syn_module_defined=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(94[18] 99[3])
    LUT4 i6_4_lut (.A(A_c_25), .B(A_c_28), .C(A_c_26), .D(A_c_29), .Z(n15)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(80[30:52])
    defparam i6_4_lut.init = 16'hfffe;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    ZenClockPLL u_pll (.LOCK_PLL_c(LOCK_PLL_c), .RESET_PLL_c(RESET_PLL_c), 
            .CLK_c(CLK_c), .n433(n433), .GND_net(GND_net), .VCC_net(VCC_net), 
            .CLKOS(CLKOS), .CLKOS2(CLKOS2), .CLKOS3(CLKOS3)) /* synthesis syn_module_defined=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(46[14] 53[3])
    LUT4 i5_3_lut (.A(A_c_31), .B(A_c_27), .C(A_c_30), .Z(n14)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(80[30:52])
    defparam i5_3_lut.init = 16'hfbfb;
    LUT4 CLKOS_I_0_2_lut (.A(CLKOS), .B(CLKOS2), .Z(RAM_OE_N_c)) /* synthesis lut_function=(A+(B)) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(54[20:32])
    defparam CLKOS_I_0_2_lut.init = 16'heeee;
    IB RESET_PLL_pad (.I(RESET_PLL), .O(RESET_PLL_c));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(22[13:22])
    IB A_pad_29 (.I(A[29]), .O(A_c_29));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(15[25:26])
    FD1P3AX TRIGGER_REG_27 (.D(TRIGGER_N_14), .SP(CLK_c_enable_3), .CK(CLK_c), 
            .Q(TRIGGER)) /* synthesis lse_init_val=0 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(105[12] 120[8])
    defparam TRIGGER_REG_27.GSR = "ENABLED";
    IB RW_OUT_c_pad (.I(RW_IN), .O(RW_OUT_c_c));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(18[13:18])
    IB TS_N_pad (.I(TS_N), .O(TS_N_c));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(17[13:17])
    LUT4 i1_3_lut (.A(int_TA_SRAM), .B(int_RAM_CS_ADDR_N_4), .C(TS_N_c), 
         .Z(CLK_c_enable_3)) /* synthesis lut_function=(A (B)+!A !((C)+!B)) */ ;
    defparam i1_3_lut.init = 16'h8c8c;
    IB CLK_pad (.I(CLK), .O(CLK_c));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(16[13:16])
    VLO i1 (.Z(GND_net));
    FD1P3AX int_TA_SRAM_26 (.D(TRIGGER_N_14), .SP(int_RAM_CS_ADDR_N_4), 
            .CK(CLK_c), .Q(int_TA_SRAM)) /* synthesis lse_init_val=0 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(105[12] 120[8])
    defparam int_TA_SRAM_26.GSR = "ENABLED";
    IB A_pad_23 (.I(A[23]), .O(A_c_23));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(15[25:26])
    IB A_pad_24 (.I(A[24]), .O(A_c_24));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(15[25:26])
    TSALL TSALL_INST (.TSALL(GND_net));
    LUT4 TS_N_I_0_1_lut (.A(TS_N_c), .Z(TRIGGER_N_14)) /* synthesis lut_function=(!(A)) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(36[14:19])
    defparam TS_N_I_0_1_lut.init = 16'h5555;
    LUT4 i344_4_lut (.A(n15), .B(A_c_24), .C(n14), .D(A_c_23), .Z(int_RAM_CS_ADDR_N_4)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(80[29:52])
    defparam i344_4_lut.init = 16'h0001;
    IB A_pad_28 (.I(A[28]), .O(A_c_28));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(15[25:26])
    IB A_pad_25 (.I(A[25]), .O(A_c_25));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(15[25:26])
    GSR GSR_INST (.GSR(VCC_net));
    LUT4 m1_lut (.Z(n433)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    IB A_pad_30 (.I(A[30]), .O(A_c_30));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(15[25:26])
    IB A_pad_31 (.I(A[31]), .O(A_c_31));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(15[25:26])
    OB TA_N_pad (.I(TA_N_c), .O(TA_N));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(24[14:18])
    OB LOCK_PLL_pad (.I(LOCK_PLL_c), .O(LOCK_PLL));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(23[14:22])
    IB A_pad_26 (.I(A[26]), .O(A_c_26));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(15[25:26])
    LUT4 int_TA_SRAM_I_0_1_lut (.A(int_TA_SRAM), .Z(TA_N_c)) /* synthesis lut_function=(!(A)) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(27[16:28])
    defparam int_TA_SRAM_I_0_1_lut.init = 16'h5555;
    OB RAM_OE_N_pad (.I(RAM_OE_N_c), .O(RAM_OE_N));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(21[14:22])
    OB RAM_CS_N_pad (.I(RAM_CS_N_c), .O(RAM_CS_N));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(20[14:22])
    OB RW_OUT_pad (.I(RW_OUT_c_c), .O(RW_OUT));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(19[14:20])
    IB A_pad_27 (.I(A[27]), .O(A_c_27));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(15[25:26])
    
endmodule
//
// Verilog Description of module pulse_2point5ns
//

module pulse_2point5ns (TRIGGER, CLKOS3, RAM_CS_N_c) /* synthesis syn_module_defined=1 */ ;
    input TRIGGER;
    input CLKOS3;
    output RAM_CS_N_c;
    
    wire CLKOS3 /* synthesis is_clock=1, SET_AS_NETWORK=CLKOS3 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(44[7:13])
    wire [3:0]count;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenpulsegen.v(7[11:16])
    
    wire n419, int_RAM_CS, PULSE_N_68, CLKOS3_enable_1;
    wire [3:0]count_3__N_59;
    
    wire n421, n217, n213;
    
    LUT4 i127_2_lut_rep_4 (.A(count[1]), .B(count[0]), .Z(n419)) /* synthesis lut_function=(A+(B)) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenpulsegen.v(20[26:38])
    defparam i127_2_lut_rep_4.init = 16'heeee;
    LUT4 i1_2_lut_3_lut (.A(TRIGGER), .B(int_RAM_CS), .C(PULSE_N_68), 
         .Z(CLKOS3_enable_1)) /* synthesis lut_function=(A ((C)+!B)+!A (C)) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenpulsegen.v(11[13:30])
    defparam i1_2_lut_3_lut.init = 16'hf2f2;
    LUT4 i338_2_lut (.A(count[0]), .B(PULSE_N_68), .Z(count_3__N_59[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenpulsegen.v(19[18] 21[16])
    defparam i338_2_lut.init = 16'h6666;
    LUT4 i252_4_lut (.A(int_RAM_CS), .B(n419), .C(count[2]), .D(count[3]), 
         .Z(PULSE_N_68)) /* synthesis lut_function=(A (B+(C+(D)))) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenpulsegen.v(19[18] 21[16])
    defparam i252_4_lut.init = 16'haaa8;
    FD1S3IX count_i0 (.D(count_3__N_59[0]), .CK(CLKOS3), .CD(n421), .Q(count[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=94, LSE_RLINE=99 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenpulsegen.v(9[12] 23[8])
    defparam count_i0.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_adj_12 (.A(count[1]), .B(count[0]), .C(count[2]), 
         .Z(count_3__N_59[2])) /* synthesis lut_function=(A (C)+!A (B (C)+!B !(C))) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenpulsegen.v(20[26:38])
    defparam i1_2_lut_3_lut_adj_12.init = 16'he1e1;
    LUT4 i1_3_lut_4_lut (.A(count[1]), .B(count[0]), .C(count[2]), .D(count[3]), 
         .Z(n217)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)+!C !(D)))) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenpulsegen.v(20[26:38])
    defparam i1_3_lut_4_lut.init = 16'hfe01;
    FD1S3JX PULSE_16 (.D(PULSE_N_68), .CK(CLKOS3), .PD(n421), .Q(int_RAM_CS)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=94, LSE_RLINE=99 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenpulsegen.v(9[12] 23[8])
    defparam PULSE_16.GSR = "ENABLED";
    LUT4 int_RAM_CS_I_0_1_lut (.A(int_RAM_CS), .Z(RAM_CS_N_c)) /* synthesis lut_function=(!(A)) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(31[20:31])
    defparam int_RAM_CS_I_0_1_lut.init = 16'h5555;
    FD1P3IX count_i3 (.D(n217), .SP(PULSE_N_68), .CD(n421), .CK(CLKOS3), 
            .Q(count[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=94, LSE_RLINE=99 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenpulsegen.v(9[12] 23[8])
    defparam count_i3.GSR = "ENABLED";
    FD1P3IX count_i1 (.D(n213), .SP(PULSE_N_68), .CD(n421), .CK(CLKOS3), 
            .Q(count[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=94, LSE_RLINE=99 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenpulsegen.v(9[12] 23[8])
    defparam count_i1.GSR = "ENABLED";
    LUT4 TRIGGER_I_0_2_lut_rep_6 (.A(TRIGGER), .B(int_RAM_CS), .Z(n421)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenpulsegen.v(11[13:30])
    defparam TRIGGER_I_0_2_lut_rep_6.init = 16'h2222;
    LUT4 i1_2_lut (.A(count[1]), .B(count[0]), .Z(n213)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;
    defparam i1_2_lut.init = 16'h9999;
    FD1P3JX count_i2 (.D(count_3__N_59[2]), .SP(CLKOS3_enable_1), .PD(n421), 
            .CK(CLKOS3), .Q(count[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=3, LSE_LLINE=94, LSE_RLINE=99 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenpulsegen.v(9[12] 23[8])
    defparam count_i2.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module ZenClockPLL
//

module ZenClockPLL (LOCK_PLL_c, RESET_PLL_c, CLK_c, n433, GND_net, 
            VCC_net, CLKOS, CLKOS2, CLKOS3) /* synthesis syn_module_defined=1 */ ;
    output LOCK_PLL_c;
    input RESET_PLL_c;
    input CLK_c;
    input n433;
    input GND_net;
    input VCC_net;
    output CLKOS;
    output CLKOS2;
    output CLKOS3;
    
    wire CLK_c /* synthesis is_clock=1, SET_AS_NETWORK=CLK_c */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(16[13:16])
    wire CLKOS /* synthesis is_clock=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(42[7:12])
    wire CLKOS2 /* synthesis is_clock=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(43[7:13])
    wire CLKOS3 /* synthesis is_clock=1, SET_AS_NETWORK=CLKOS3 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(44[7:13])
    
    wire phase_done, PHASESTEP_PLL_N_48, CLK_c_enable_4;
    wire [2:0]PHASE_SEL_PLL;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenclockpll.v(12[12:25])
    
    wire CLK_c_enable_1, n359, PHASESTEP_PLL, CLK_c_enable_2, PHASESTEP_PLL_N_36;
    wire [5:0]phase_count;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenclockpll.v(29[12:23])
    
    wire n420;
    wire [5:0]phase_count_5__N_25;
    
    wire n370, n418, n368, n319, n318, n317;
    
    LUT4 i169_2_lut_3_lut_4_lut (.A(LOCK_PLL_c), .B(phase_done), .C(PHASESTEP_PLL_N_48), 
         .D(RESET_PLL_c), .Z(CLK_c_enable_4)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (C (D))) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenclockpll.v(37[12:35])
    defparam i169_2_lut_3_lut_4_lut.init = 16'hf020;
    FD1P3AX PHASE_SEL_PLL__0__i1 (.D(n359), .SP(CLK_c_enable_1), .CK(CLK_c), 
            .Q(PHASE_SEL_PLL[0]));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenclockpll.v(30[9] 63[5])
    defparam PHASE_SEL_PLL__0__i1.GSR = "ENABLED";
    FD1P3IX PHASESTEP_PLL_36 (.D(PHASESTEP_PLL_N_36), .SP(CLK_c_enable_2), 
            .CD(RESET_PLL_c), .CK(CLK_c), .Q(PHASESTEP_PLL)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=3, LSE_LLINE=46, LSE_RLINE=53 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenclockpll.v(30[9] 63[5])
    defparam PHASESTEP_PLL_36.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_5 (.A(phase_count[2]), .B(phase_count[1]), .Z(n420)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_5.init = 16'heeee;
    FD1S3IX phase_count_i0 (.D(phase_count_5__N_25[0]), .CK(CLK_c), .CD(RESET_PLL_c), 
            .Q(PHASESTEP_PLL_N_36)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=3, LSE_LLINE=46, LSE_RLINE=53 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenclockpll.v(30[9] 63[5])
    defparam phase_count_i0.GSR = "ENABLED";
    FD1S3IX phase_count_i1 (.D(phase_count_5__N_25[1]), .CK(CLK_c), .CD(RESET_PLL_c), 
            .Q(phase_count[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=3, LSE_LLINE=46, LSE_RLINE=53 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenclockpll.v(30[9] 63[5])
    defparam phase_count_i1.GSR = "ENABLED";
    FD1S3IX phase_count_i2 (.D(phase_count_5__N_25[2]), .CK(CLK_c), .CD(RESET_PLL_c), 
            .Q(phase_count[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=3, LSE_LLINE=46, LSE_RLINE=53 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenclockpll.v(30[9] 63[5])
    defparam phase_count_i2.GSR = "ENABLED";
    FD1S3IX phase_count_i3 (.D(phase_count_5__N_25[3]), .CK(CLK_c), .CD(RESET_PLL_c), 
            .Q(phase_count[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=3, LSE_LLINE=46, LSE_RLINE=53 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenclockpll.v(30[9] 63[5])
    defparam phase_count_i3.GSR = "ENABLED";
    FD1S3IX phase_count_i4 (.D(phase_count_5__N_25[4]), .CK(CLK_c), .CD(RESET_PLL_c), 
            .Q(phase_count[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=3, LSE_LLINE=46, LSE_RLINE=53 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenclockpll.v(30[9] 63[5])
    defparam phase_count_i4.GSR = "ENABLED";
    FD1S3IX phase_count_i5 (.D(phase_count_5__N_25[5]), .CK(CLK_c), .CD(RESET_PLL_c), 
            .Q(phase_count[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=3, LSE_LLINE=46, LSE_RLINE=53 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenclockpll.v(30[9] 63[5])
    defparam phase_count_i5.GSR = "ENABLED";
    LUT4 i1_4_lut (.A(phase_count[3]), .B(n370), .C(PHASESTEP_PLL_N_36), 
         .D(n420), .Z(PHASESTEP_PLL_N_48)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B)) */ ;
    defparam i1_4_lut.init = 16'heeec;
    LUT4 i1_4_lut_adj_11 (.A(phase_count[3]), .B(n418), .C(n370), .D(n368), 
         .Z(CLK_c_enable_2)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A ((C)+!B))) */ ;
    defparam i1_4_lut_adj_11.init = 16'h040c;
    LUT4 i1_3_lut_4_lut (.A(phase_count[2]), .B(phase_count[1]), .C(n370), 
         .D(phase_count[3]), .Z(n359)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_3_lut_4_lut.init = 16'hfffe;
    LUT4 i346_3_lut_4_lut (.A(LOCK_PLL_c), .B(phase_done), .C(PHASESTEP_PLL_N_48), 
         .D(RESET_PLL_c), .Z(CLK_c_enable_1)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenclockpll.v(37[12:35])
    defparam i346_3_lut_4_lut.init = 16'h0002;
    LUT4 i320_2_lut (.A(phase_count[5]), .B(phase_count[4]), .Z(n370)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i320_2_lut.init = 16'heeee;
    LUT4 i93_2_lut_rep_3_3_lut (.A(LOCK_PLL_c), .B(phase_done), .C(RESET_PLL_c), 
         .Z(n418)) /* synthesis lut_function=(A ((C)+!B)+!A (C)) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenclockpll.v(37[12:35])
    defparam i93_2_lut_rep_3_3_lut.init = 16'hf2f2;
    FD1P3IX phase_done_37 (.D(n433), .SP(CLK_c_enable_4), .CD(RESET_PLL_c), 
            .CK(CLK_c), .Q(phase_done)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=3, LSE_LLINE=46, LSE_RLINE=53 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenclockpll.v(30[9] 63[5])
    defparam phase_done_37.GSR = "ENABLED";
    LUT4 i318_3_lut (.A(phase_count[2]), .B(PHASESTEP_PLL_N_36), .C(phase_count[1]), 
         .Z(n368)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i318_3_lut.init = 16'hfefe;
    CCU2D add_53_7 (.A0(phase_count[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n319), 
          .S0(phase_count_5__N_25[5]));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenclockpll.v(39[18:31])
    defparam add_53_7.INIT0 = 16'h5aaa;
    defparam add_53_7.INIT1 = 16'h0000;
    defparam add_53_7.INJECT1_0 = "NO";
    defparam add_53_7.INJECT1_1 = "NO";
    CCU2D add_53_5 (.A0(phase_count[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(phase_count[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n318), .COUT(n319), .S0(phase_count_5__N_25[3]), .S1(phase_count_5__N_25[4]));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenclockpll.v(39[18:31])
    defparam add_53_5.INIT0 = 16'h5aaa;
    defparam add_53_5.INIT1 = 16'h5aaa;
    defparam add_53_5.INJECT1_0 = "NO";
    defparam add_53_5.INJECT1_1 = "NO";
    CCU2D add_53_3 (.A0(phase_count[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(phase_count[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n317), .COUT(n318), .S0(phase_count_5__N_25[1]), .S1(phase_count_5__N_25[2]));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenclockpll.v(39[18:31])
    defparam add_53_3.INIT0 = 16'h5aaa;
    defparam add_53_3.INIT1 = 16'h5aaa;
    defparam add_53_3.INJECT1_0 = "NO";
    defparam add_53_3.INJECT1_1 = "NO";
    CCU2D add_53_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(LOCK_PLL_c), .B1(phase_done), .C1(PHASESTEP_PLL_N_36), .D1(GND_net), 
          .COUT(n317), .S1(phase_count_5__N_25[0]));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenclockpll.v(39[18:31])
    defparam add_53_1.INIT0 = 16'hF000;
    defparam add_53_1.INIT1 = 16'hd2d2;
    defparam add_53_1.INJECT1_0 = "NO";
    defparam add_53_1.INJECT1_1 = "NO";
    ZenPLL u_ZenPLL (.CLK_c(CLK_c), .GND_net(GND_net), .\PHASE_SEL_PLL[0] (PHASE_SEL_PLL[0]), 
           .VCC_net(VCC_net), .PHASESTEP_PLL(PHASESTEP_PLL), .RESET_PLL_c(RESET_PLL_c), 
           .CLKOS(CLKOS), .CLKOS2(CLKOS2), .CLKOS3(CLKOS3), .LOCK_PLL_c(LOCK_PLL_c)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenclockpll.v(14[9] 26[3])
    
endmodule
//
// Verilog Description of module ZenPLL
//

module ZenPLL (CLK_c, GND_net, \PHASE_SEL_PLL[0] , VCC_net, PHASESTEP_PLL, 
            RESET_PLL_c, CLKOS, CLKOS2, CLKOS3, LOCK_PLL_c) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    input CLK_c;
    input GND_net;
    input \PHASE_SEL_PLL[0] ;
    input VCC_net;
    input PHASESTEP_PLL;
    input RESET_PLL_c;
    output CLKOS;
    output CLKOS2;
    output CLKOS3;
    output LOCK_PLL_c;
    
    wire CLK_c /* synthesis is_clock=1, SET_AS_NETWORK=CLK_c */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(16[13:16])
    wire CLKOP /* synthesis is_clock=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenpll.v(15[17:22])
    wire CLKOS /* synthesis is_clock=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(42[7:12])
    wire CLKOS2 /* synthesis is_clock=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(43[7:13])
    wire CLKOS3 /* synthesis is_clock=1, SET_AS_NETWORK=CLKOS3 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(44[7:13])
    
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
            .CLKOS3(CLKOS3), .LOCK(LOCK_PLL_c)) /* synthesis FREQUENCY_PIN_CLKOS3="400.000000", FREQUENCY_PIN_CLKOS2="50.000000", FREQUENCY_PIN_CLKOS="50.000000", FREQUENCY_PIN_CLKOP="50.000000", FREQUENCY_PIN_CLKI="50.000000", ICP_CURRENT="7", LPF_RESISTOR="72", syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=3, LSE_LLINE=14, LSE_RLINE=26 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenclockpll.v(14[9] 26[3])
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
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

