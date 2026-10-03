// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.14.0.75.2
// Netlist written on Sat Oct 03 20:11:39 2026
//
// Verilog Description of module ZenMainLogic
//

module ZenMainLogic (LOCK, RST, A, CLK, TS_N, RW_IN, SIZ0, SIZ1, 
            RW_OUT, TA_N, RAM_CS_N, RAM_OE_N, ROM_CS_N, ROM_OE_N, 
            ROM_BUFFER_OE_N) /* synthesis syn_module_defined=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(1[8:20])
    output LOCK;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(2[14:18])
    input RST;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(3[13:16])
    input [31:23]A;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(4[22:23])
    input CLK;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(5[13:16])
    input TS_N;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(6[13:17])
    input RW_IN;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(7[13:18])
    input SIZ0;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(8[13:17])
    input SIZ1;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(9[13:17])
    output RW_OUT /* synthesis DOUT="TRUE", SLEWRATE="FAST" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(10[14:20])
    output TA_N /* synthesis DOUT="TRUE", SLEWRATE="FAST" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(11[14:18])
    output RAM_CS_N /* synthesis DOUT="TRUE", SLEWRATE="FAST" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(12[14:22])
    output RAM_OE_N /* synthesis DOUT="TRUE", SLEWRATE="FAST" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(13[14:22])
    output ROM_CS_N /* synthesis DOUT="TRUE", SLEWRATE="FAST" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(14[14:22])
    output ROM_OE_N /* synthesis DOUT="TRUE", SLEWRATE="FAST" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(15[14:22])
    output ROM_BUFFER_OE_N /* synthesis DOUT="TRUE", SLEWRATE="FAST" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(16[14:29])
    
    wire CLK_c /* synthesis is_clock=1, SET_AS_NETWORK=CLK_c */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(5[13:16])
    wire RW_OUT_c_c /* synthesis DOUT="TRUE", SLEWRATE="FAST" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(10[14:20])
    wire TA_N_c /* synthesis DOUT="TRUE", SLEWRATE="FAST" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(11[14:18])
    wire RAM_CS_N_c /* synthesis DOUT="TRUE", SLEWRATE="FAST" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(12[14:22])
    wire RAM_OE_N_c /* synthesis DOUT="TRUE", SLEWRATE="FAST" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(13[14:22])
    wire ROM_BUFFER_OE_N_c /* synthesis DOUT="TRUE", SLEWRATE="FAST" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(14[14:22])
    wire ROM_OE_N_c /* synthesis DOUT="TRUE", SLEWRATE="FAST" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(15[14:22])
    wire CLKOS /* synthesis is_clock=1, SET_AS_NETWORK=CLKOS */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(26[7:12])
    wire CLKOS2 /* synthesis is_clock=1, SET_AS_NETWORK=CLKOS2 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(27[7:13])
    wire ROM_TA_N /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(47[7:15])
    wire VCC_net /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(68[24:31])
    wire RAM_CS_END /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenram_cs_ta.v(12[7:17])
    wire RAM_LINE_CS_END /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenram_line_cs_ta.v(13[7:22])
    wire RAM_LINE_TA_END /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenram_line_cs_ta.v(14[7:22])
    wire ROM_CS_END /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenrom_cs_ta.v(12[7:17])
    wire [7:0]shift_reg /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(76[15:24])
    wire Clock_N_51 /* synthesis is_inv_clock=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(81[9:18])
    wire [15:0]shift_reg_adj_170 /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(12[16:25])
    wire Clock_N_118 /* synthesis is_inv_clock=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(17[9:18])
    
    wire LOCK_c, RST_c, A_c_31, A_c_30, A_c_29, A_c_28, A_c_27, 
        A_c_26, A_c_25, A_c_24, A_c_23, TS_N_c, SIZ0_c, SIZ1_c, 
        RAM_TA_N, ROM_ADDR_N_10, GND_net, int_RAM_CS_N, loadTA_N_31, 
        int_RAM_LINE_CS_N, state, loadCS_N_81, state_adj_158, state_N_142, 
        loadTA_N_146, loadCS_N_149;
    wire [7:0]shift_reg_7__N_41;
    wire [15:0]shift_reg_15__N_100;
    
    wire n588, n69;
    
    VHI i19 (.Z(VCC_net));
    OB RAM_CS_N_pad (.I(RAM_CS_N_c), .O(RAM_CS_N));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(12[14:22])
    OB ROM_OE_N_pad (.I(ROM_OE_N_c), .O(ROM_OE_N));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(15[14:22])
    IB SIZ1_pad (.I(SIZ1), .O(SIZ1_c));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(9[13:17])
    IB SIZ0_pad (.I(SIZ0), .O(SIZ0_c));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(8[13:17])
    IB RW_OUT_c_pad (.I(RW_IN), .O(RW_OUT_c_c));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(7[13:18])
    ZenAddressDecode u_decode (.SIZ0_c(SIZ0_c), .SIZ1_c(SIZ1_c), .A_c_27(A_c_27), 
            .ROM_CS_END(ROM_CS_END), .ROM_ADDR_N_10(ROM_ADDR_N_10), .TS_N_c(TS_N_c), 
            .state(state_adj_158), .loadCS_N_149(loadCS_N_149), .A_c_28(A_c_28), 
            .n69(n69), .int_RAM_LINE_CS_N(int_RAM_LINE_CS_N), .RAM_TA_N(RAM_TA_N), 
            .RAM_LINE_TA_END(RAM_LINE_TA_END), .ROM_TA_N(ROM_TA_N), .TA_N_c(TA_N_c), 
            .A_c_31(A_c_31), .A_c_30(A_c_30), .A_c_24(A_c_24), .state_N_142(state_N_142), 
            .A_c_26(A_c_26), .A_c_25(A_c_25), .A_c_29(A_c_29), .A_c_23(A_c_23), 
            .n588(n588), .loadCS_N_81(loadCS_N_81), .state_adj_2(state), 
            .RAM_LINE_CS_END(RAM_LINE_CS_END), .RW_OUT_c_c(RW_OUT_c_c), 
            .loadTA_N_146(loadTA_N_146), .loadTA_N_31(loadTA_N_31)) /* synthesis syn_module_defined=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(55[22] 59[3])
    IB TS_N_pad (.I(TS_N), .O(TS_N_c));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(6[13:17])
    IB CLK_pad (.I(CLK), .O(CLK_c));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(5[13:16])
    IB A_pad_23 (.I(A[23]), .O(A_c_23));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(4[22:23])
    IB A_pad_24 (.I(A[24]), .O(A_c_24));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(4[22:23])
    IB A_pad_25 (.I(A[25]), .O(A_c_25));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(4[22:23])
    IB A_pad_26 (.I(A[26]), .O(A_c_26));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(4[22:23])
    IB A_pad_27 (.I(A[27]), .O(A_c_27));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(4[22:23])
    IB A_pad_28 (.I(A[28]), .O(A_c_28));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(4[22:23])
    IB A_pad_29 (.I(A[29]), .O(A_c_29));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(4[22:23])
    IB A_pad_30 (.I(A[30]), .O(A_c_30));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(4[22:23])
    IB A_pad_31 (.I(A[31]), .O(A_c_31));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(4[22:23])
    IB RST_pad (.I(RST), .O(RST_c));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(3[13:16])
    OB ROM_BUFFER_OE_N_pad (.I(ROM_BUFFER_OE_N_c), .O(ROM_BUFFER_OE_N));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(16[14:29])
    OB TA_N_pad (.I(TA_N_c), .O(TA_N));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(11[14:18])
    OB ROM_CS_N_pad (.I(ROM_BUFFER_OE_N_c), .O(ROM_CS_N));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(14[14:22])
    OB RW_OUT_pad (.I(RW_OUT_c_c), .O(RW_OUT));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(10[14:20])
    OB RAM_OE_N_pad (.I(RAM_OE_N_c), .O(RAM_OE_N));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(13[14:22])
    OB LOCK_pad (.I(LOCK_c), .O(LOCK));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(2[14:18])
    GSR GSR_INST (.GSR(VCC_net));
    ZenRAM_Line_CS_TA u_RAM_Line_CS_TA (.state(state), .CLK_c(CLK_c), .n69(n69), 
            .n588(n588), .loadCS_N_81(loadCS_N_81), .int_RAM_LINE_CS_N(int_RAM_LINE_CS_N), 
            .CLKOS2(CLKOS2), .Clock_N_118(Clock_N_118), .RAM_LINE_TA_END(RAM_LINE_TA_END), 
            .\shift_reg_15__N_100[0] (shift_reg_15__N_100[0]), .RAM_LINE_CS_END(RAM_LINE_CS_END), 
            .\shift_reg_15__N_100[14] (shift_reg_15__N_100[14]), .\shift_reg[13] (shift_reg_adj_170[13]), 
            .\shift_reg_15__N_100[13] (shift_reg_15__N_100[13]), .\shift_reg[12] (shift_reg_adj_170[12]), 
            .\shift_reg_15__N_100[12] (shift_reg_15__N_100[12]), .\shift_reg[11] (shift_reg_adj_170[11]), 
            .\shift_reg_15__N_100[10] (shift_reg_15__N_100[10]), .\shift_reg[9] (shift_reg_adj_170[9]), 
            .\shift_reg_15__N_100[9] (shift_reg_15__N_100[9]), .\shift_reg[8] (shift_reg_adj_170[8]), 
            .\shift_reg_15__N_100[8] (shift_reg_15__N_100[8]), .\shift_reg[7] (shift_reg_adj_170[7]), 
            .\shift_reg_15__N_100[6] (shift_reg_15__N_100[6]), .\shift_reg[5] (shift_reg_adj_170[5]), 
            .\shift_reg_15__N_100[5] (shift_reg_15__N_100[5]), .\shift_reg[4] (shift_reg_adj_170[4]), 
            .\shift_reg_15__N_100[4] (shift_reg_15__N_100[4]), .\shift_reg[3] (shift_reg_adj_170[3]), 
            .\shift_reg_15__N_100[2] (shift_reg_15__N_100[2]), .\shift_reg[1] (shift_reg_adj_170[1])) /* synthesis syn_module_defined=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(79[20] 87[3])
    LUT4 INT_RAM_LINE_CS_N_I_0_4_lut (.A(RAM_LINE_CS_END), .B(int_RAM_CS_N), 
         .C(int_RAM_LINE_CS_N), .D(RAM_CS_END), .Z(RAM_CS_N_c)) /* synthesis lut_function=(A (B+(D))+!A (B (C)+!B (C (D)))) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(51[20:50])
    defparam INT_RAM_LINE_CS_N_I_0_4_lut.init = 16'hfac8;
    ZenROM_CS_TA u_ROM_CS_TA (.RW_OUT_c_c(RW_OUT_c_c), .\shift_reg_15__N_100[0] (shift_reg_15__N_100[0]), 
            .\shift_reg[13] (shift_reg_adj_170[13]), .\shift_reg_15__N_100[14] (shift_reg_15__N_100[14]), 
            .\shift_reg[12] (shift_reg_adj_170[12]), .\shift_reg_15__N_100[13] (shift_reg_15__N_100[13]), 
            .\shift_reg[11] (shift_reg_adj_170[11]), .\shift_reg_15__N_100[12] (shift_reg_15__N_100[12]), 
            .\shift_reg[9] (shift_reg_adj_170[9]), .\shift_reg_15__N_100[10] (shift_reg_15__N_100[10]), 
            .CLK_c(CLK_c), .loadCS_N_149(loadCS_N_149), .ROM_ADDR_N_10(ROM_ADDR_N_10), 
            .loadTA_N_146(loadTA_N_146), .state(state_adj_158), .state_N_142(state_N_142), 
            .\shift_reg[8] (shift_reg_adj_170[8]), .\shift_reg_15__N_100[9] (shift_reg_15__N_100[9]), 
            .\shift_reg[7] (shift_reg_adj_170[7]), .\shift_reg_15__N_100[8] (shift_reg_15__N_100[8]), 
            .\shift_reg[5] (shift_reg_adj_170[5]), .\shift_reg_15__N_100[6] (shift_reg_15__N_100[6]), 
            .\shift_reg[4] (shift_reg_adj_170[4]), .\shift_reg_15__N_100[5] (shift_reg_15__N_100[5]), 
            .\shift_reg[3] (shift_reg_adj_170[3]), .\shift_reg_15__N_100[4] (shift_reg_15__N_100[4]), 
            .\shift_reg[1] (shift_reg_adj_170[1]), .\shift_reg_15__N_100[2] (shift_reg_15__N_100[2]), 
            .ROM_CS_END(ROM_CS_END), .ROM_BUFFER_OE_N_c(ROM_BUFFER_OE_N_c), 
            .RAM_CS_N_c(RAM_CS_N_c), .RAM_OE_N_c(RAM_OE_N_c), .ROM_OE_N_c(ROM_OE_N_c), 
            .\shift_reg_7__N_41[0] (shift_reg_7__N_41[0]), .\shift_reg[5]_adj_1 (shift_reg[5]), 
            .\shift_reg_7__N_41[6] (shift_reg_7__N_41[6]), .CLKOS2(CLKOS2), 
            .Clock_N_118(Clock_N_118), .ROM_TA_N(ROM_TA_N)) /* synthesis syn_module_defined=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(93[15] 101[3])
    ZenRAM_CS_TA u_RAM_CS_TA (.int_RAM_CS_N(int_RAM_CS_N), .CLK_c(CLK_c), 
            .loadTA_N_31(loadTA_N_31), .RAM_TA_N(RAM_TA_N), .CLKOS(CLKOS), 
            .Clock_N_51(Clock_N_51), .\shift_reg_7__N_41[0] (shift_reg_7__N_41[0]), 
            .RAM_CS_END(RAM_CS_END), .\shift_reg_7__N_41[6] (shift_reg_7__N_41[6]), 
            .\shift_reg[5] (shift_reg[5])) /* synthesis syn_module_defined=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(67[15] 75[3])
    VLO i1 (.Z(GND_net));
    TSALL TSALL_INST (.TSALL(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    ZenPLL u_ZenPLL (.Clock_N_118(Clock_N_118), .CLKOS2(CLKOS2), .CLK_c(CLK_c), 
           .RST_c(RST_c), .CLKOS(CLKOS), .LOCK_c(LOCK_c), .GND_net(GND_net), 
           .Clock_N_51(Clock_N_51)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(29[9] 36[3])
    
endmodule
//
// Verilog Description of module ZenAddressDecode
//

module ZenAddressDecode (SIZ0_c, SIZ1_c, A_c_27, ROM_CS_END, ROM_ADDR_N_10, 
            TS_N_c, state, loadCS_N_149, A_c_28, n69, int_RAM_LINE_CS_N, 
            RAM_TA_N, RAM_LINE_TA_END, ROM_TA_N, TA_N_c, A_c_31, A_c_30, 
            A_c_24, state_N_142, A_c_26, A_c_25, A_c_29, A_c_23, 
            n588, loadCS_N_81, state_adj_2, RAM_LINE_CS_END, RW_OUT_c_c, 
            loadTA_N_146, loadTA_N_31) /* synthesis syn_module_defined=1 */ ;
    input SIZ0_c;
    input SIZ1_c;
    input A_c_27;
    input ROM_CS_END;
    output ROM_ADDR_N_10;
    input TS_N_c;
    input state;
    output loadCS_N_149;
    input A_c_28;
    output n69;
    input int_RAM_LINE_CS_N;
    input RAM_TA_N;
    input RAM_LINE_TA_END;
    input ROM_TA_N;
    output TA_N_c;
    input A_c_31;
    input A_c_30;
    input A_c_24;
    output state_N_142;
    input A_c_26;
    input A_c_25;
    input A_c_29;
    input A_c_23;
    output n588;
    output loadCS_N_81;
    input state_adj_2;
    input RAM_LINE_CS_END;
    input RW_OUT_c_c;
    output loadTA_N_146;
    output loadTA_N_31;
    
    wire ROM_CS_END /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenrom_cs_ta.v(12[7:17])
    wire RAM_LINE_TA_END /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenram_line_cs_ta.v(14[7:22])
    wire ROM_TA_N /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(47[7:15])
    wire TA_N_c /* synthesis DOUT="TRUE", SLEWRATE="FAST" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(11[14:18])
    wire RAM_LINE_CS_END /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenram_line_cs_ta.v(13[7:22])
    wire RW_OUT_c_c /* synthesis DOUT="TRUE", SLEWRATE="FAST" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(10[14:20])
    
    wire n587, n590, n360, n12, n586;
    
    LUT4 i1_2_lut_rep_4_3_lut (.A(SIZ0_c), .B(SIZ1_c), .C(A_c_27), .Z(n587)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_rep_4_3_lut.init = 16'h8080;
    LUT4 i1_4_lut (.A(ROM_CS_END), .B(ROM_ADDR_N_10), .C(TS_N_c), .D(state), 
         .Z(loadCS_N_149)) /* synthesis lut_function=(A (B+(C))+!A (B+!((D)+!C))) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenaddressdecode.v(11[11] 14[16])
    defparam i1_4_lut.init = 16'hecfc;
    LUT4 i1_2_lut_3_lut_4_lut (.A(A_c_27), .B(n590), .C(A_c_28), .D(n360), 
         .Z(n69)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'hfff7;
    LUT4 i2_3_lut (.A(A_c_28), .B(A_c_27), .C(n360), .Z(ROM_ADDR_N_10)) /* synthesis lut_function=((B+(C))+!A) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenaddressdecode.v(11[11] 14[16])
    defparam i2_3_lut.init = 16'hfdfd;
    LUT4 i2_4_lut (.A(int_RAM_LINE_CS_N), .B(RAM_TA_N), .C(RAM_LINE_TA_END), 
         .D(ROM_TA_N), .Z(TA_N_c)) /* synthesis lut_function=(A (B (D))+!A (B (C (D)))) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenram_line_cs_ta.v(11[6:23])
    defparam i2_4_lut.init = 16'hc800;
    LUT4 i6_4_lut (.A(A_c_31), .B(n12), .C(A_c_30), .D(A_c_24), .Z(n360)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenaddressdecode.v(11[11] 14[16])
    defparam i6_4_lut.init = 16'hfffe;
    LUT4 i1_3_lut (.A(ROM_CS_END), .B(TS_N_c), .C(state), .Z(state_N_142)) /* synthesis lut_function=(!(A (B)+!A !((C)+!B))) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenrom_cs_ta.v(12[7:17])
    defparam i1_3_lut.init = 16'h7373;
    LUT4 i5_4_lut (.A(A_c_26), .B(A_c_25), .C(A_c_29), .D(A_c_23), .Z(n12)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenaddressdecode.v(11[11] 14[16])
    defparam i5_4_lut.init = 16'hfffe;
    LUT4 i2_3_lut_4_lut_4_lut (.A(n588), .B(n587), .C(A_c_28), .D(n360), 
         .Z(loadCS_N_81)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam i2_3_lut_4_lut_4_lut.init = 16'hfff7;
    LUT4 i381_3_lut_rep_5 (.A(state_adj_2), .B(TS_N_c), .C(RAM_LINE_CS_END), 
         .Z(n588)) /* synthesis lut_function=(!(A (B (C))+!A (B))) */ ;
    defparam i381_3_lut_rep_5.init = 16'h3b3b;
    LUT4 i1_4_lut_adj_22 (.A(state), .B(TS_N_c), .C(RW_OUT_c_c), .D(ROM_CS_END), 
         .Z(loadTA_N_146)) /* synthesis lut_function=(A (B (C (D)))+!A (B)) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenrom_cs_ta.v(15[6:11])
    defparam i1_4_lut_adj_22.init = 16'hc444;
    LUT4 i1_2_lut_rep_7 (.A(SIZ0_c), .B(SIZ1_c), .Z(n590)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_7.init = 16'h8888;
    LUT4 i3_4_lut (.A(TS_N_c), .B(A_c_27), .C(n590), .D(n586), .Z(loadTA_N_31)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenaddressdecode.v(11[11] 14[16])
    defparam i3_4_lut.init = 16'hfffb;
    LUT4 i1_2_lut_rep_3 (.A(n360), .B(A_c_28), .Z(n586)) /* synthesis lut_function=(A+(B)) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenaddressdecode.v(11[11] 14[16])
    defparam i1_2_lut_rep_3.init = 16'heeee;
    
endmodule
//
// Verilog Description of module ZenRAM_Line_CS_TA
//

module ZenRAM_Line_CS_TA (state, CLK_c, n69, n588, loadCS_N_81, int_RAM_LINE_CS_N, 
            CLKOS2, Clock_N_118, RAM_LINE_TA_END, \shift_reg_15__N_100[0] , 
            RAM_LINE_CS_END, \shift_reg_15__N_100[14] , \shift_reg[13] , 
            \shift_reg_15__N_100[13] , \shift_reg[12] , \shift_reg_15__N_100[12] , 
            \shift_reg[11] , \shift_reg_15__N_100[10] , \shift_reg[9] , 
            \shift_reg_15__N_100[9] , \shift_reg[8] , \shift_reg_15__N_100[8] , 
            \shift_reg[7] , \shift_reg_15__N_100[6] , \shift_reg[5] , 
            \shift_reg_15__N_100[5] , \shift_reg[4] , \shift_reg_15__N_100[4] , 
            \shift_reg[3] , \shift_reg_15__N_100[2] , \shift_reg[1] ) /* synthesis syn_module_defined=1 */ ;
    output state;
    input CLK_c;
    input n69;
    input n588;
    input loadCS_N_81;
    output int_RAM_LINE_CS_N;
    input CLKOS2;
    input Clock_N_118;
    output RAM_LINE_TA_END;
    output \shift_reg_15__N_100[0] ;
    output RAM_LINE_CS_END;
    input \shift_reg_15__N_100[14] ;
    output \shift_reg[13] ;
    input \shift_reg_15__N_100[13] ;
    output \shift_reg[12] ;
    input \shift_reg_15__N_100[12] ;
    output \shift_reg[11] ;
    input \shift_reg_15__N_100[10] ;
    output \shift_reg[9] ;
    input \shift_reg_15__N_100[9] ;
    output \shift_reg[8] ;
    input \shift_reg_15__N_100[8] ;
    output \shift_reg[7] ;
    input \shift_reg_15__N_100[6] ;
    output \shift_reg[5] ;
    input \shift_reg_15__N_100[5] ;
    output \shift_reg[4] ;
    input \shift_reg_15__N_100[4] ;
    output \shift_reg[3] ;
    input \shift_reg_15__N_100[2] ;
    output \shift_reg[1] ;
    
    wire CLK_c /* synthesis is_clock=1, SET_AS_NETWORK=CLK_c */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(5[13:16])
    wire CLKOS2 /* synthesis is_clock=1, SET_AS_NETWORK=CLKOS2 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(27[7:13])
    wire Clock_N_118 /* synthesis is_inv_clock=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(17[9:18])
    wire RAM_LINE_TA_END /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenram_line_cs_ta.v(14[7:22])
    wire RAM_LINE_CS_END /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenram_line_cs_ta.v(13[7:22])
    wire \shift_reg[13]  /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(12[16:25])
    wire \shift_reg[12]  /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(12[16:25])
    wire \shift_reg[11]  /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(12[16:25])
    wire \shift_reg[9]  /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(12[16:25])
    wire \shift_reg[8]  /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(12[16:25])
    wire \shift_reg[7]  /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(12[16:25])
    wire \shift_reg[5]  /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(12[16:25])
    wire \shift_reg[4]  /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(12[16:25])
    wire \shift_reg[3]  /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(12[16:25])
    wire \shift_reg[1]  /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(12[16:25])
    
    wire loadTA;
    
    FD1S3IX state_26 (.D(n588), .CK(CLK_c), .CD(n69), .Q(state)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=3, LSE_LLINE=79, LSE_RLINE=87 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenram_line_cs_ta.v(41[9] 80[5])
    defparam state_26.GSR = "ENABLED";
    FD1S3AX loadCS_27 (.D(loadCS_N_81), .CK(CLK_c), .Q(loadTA)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=3, LSE_LLINE=79, LSE_RLINE=87 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenram_line_cs_ta.v(41[9] 80[5])
    defparam loadCS_27.GSR = "ENABLED";
    FD1S3AY int_RAM_LINE_CS_N_29 (.D(loadCS_N_81), .CK(CLK_c), .Q(int_RAM_LINE_CS_N)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=3, LSE_LLINE=79, LSE_RLINE=87 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenram_line_cs_ta.v(41[9] 80[5])
    defparam int_RAM_LINE_CS_N_29.GSR = "ENABLED";
    PISO_Long_ShiftReg_U1 u_SR_LINE_TA (.CLKOS2(CLKOS2), .Clock_N_118(Clock_N_118), 
            .loadTA_keep(loadTA), .RAM_LINE_TA_END(RAM_LINE_TA_END)) /* synthesis syn_module_defined=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenram_line_cs_ta.v(31[21] 39[3])
    PISO_Long_ShiftReg_U2 u_SR_LINE_RAMS_CS (.CLKOS2(CLKOS2), .\shift_reg_15__N_100[0] (\shift_reg_15__N_100[0] ), 
            .Clock_N_118(Clock_N_118), .loadCS_keep(loadTA), .RAM_LINE_CS_END(RAM_LINE_CS_END), 
            .\shift_reg_15__N_100[14] (\shift_reg_15__N_100[14] ), .\shift_reg[13] (\shift_reg[13] ), 
            .\shift_reg_15__N_100[13] (\shift_reg_15__N_100[13] ), .\shift_reg[12] (\shift_reg[12] ), 
            .\shift_reg_15__N_100[12] (\shift_reg_15__N_100[12] ), .\shift_reg[11] (\shift_reg[11] ), 
            .\shift_reg_15__N_100[10] (\shift_reg_15__N_100[10] ), .\shift_reg[9] (\shift_reg[9] ), 
            .\shift_reg_15__N_100[9] (\shift_reg_15__N_100[9] ), .\shift_reg[8] (\shift_reg[8] ), 
            .\shift_reg_15__N_100[8] (\shift_reg_15__N_100[8] ), .\shift_reg[7] (\shift_reg[7] ), 
            .\shift_reg_15__N_100[6] (\shift_reg_15__N_100[6] ), .\shift_reg[5] (\shift_reg[5] ), 
            .\shift_reg_15__N_100[5] (\shift_reg_15__N_100[5] ), .\shift_reg[4] (\shift_reg[4] ), 
            .\shift_reg_15__N_100[4] (\shift_reg_15__N_100[4] ), .\shift_reg[3] (\shift_reg[3] ), 
            .\shift_reg_15__N_100[2] (\shift_reg_15__N_100[2] ), .\shift_reg[1] (\shift_reg[1] )) /* synthesis syn_module_defined=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenram_line_cs_ta.v(22[21] 30[3])
    
endmodule
//
// Verilog Description of module PISO_Long_ShiftReg_U1
//

module PISO_Long_ShiftReg_U1 (CLKOS2, Clock_N_118, loadTA_keep, RAM_LINE_TA_END) /* synthesis syn_module_defined=1 */ ;
    input CLKOS2;
    input Clock_N_118;
    input loadTA_keep;
    output RAM_LINE_TA_END;
    
    wire [15:0]shift_reg /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(12[16:25])
    wire CLKOS2 /* synthesis is_clock=1, SET_AS_NETWORK=CLKOS2 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(27[7:13])
    wire Clock_N_118 /* synthesis is_inv_clock=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(17[9:18])
    wire RAM_LINE_TA_END /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenram_line_cs_ta.v(14[7:22])
    wire [15:0]shift_reg_15__N_100;
    
    wire load_half;
    
    FD1S3AX shift_reg_i0 (.D(shift_reg_15__N_100[0]), .CK(CLKOS2), .Q(shift_reg[0])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=9, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=31, LSE_RLINE=39 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(47[12] 60[8])
    defparam shift_reg_i0.GSR = "ENABLED";
    FD1S3AY load_registered_14 (.D(load_half), .CK(CLKOS2), .Q(shift_reg_15__N_100[0])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=9, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=31, LSE_RLINE=39 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(36[12] 41[8])
    defparam load_registered_14.GSR = "ENABLED";
    FD1S3AY load_half_13 (.D(loadTA_keep), .CK(Clock_N_118), .Q(load_half)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=9, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=31, LSE_RLINE=39 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(19[12] 24[8])
    defparam load_half_13.GSR = "ENABLED";
    FD1S3IX shift_reg_i15 (.D(shift_reg[14]), .CK(CLKOS2), .CD(shift_reg_15__N_100[0]), 
            .Q(RAM_LINE_TA_END)) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=9, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=31, LSE_RLINE=39 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(47[12] 60[8])
    defparam shift_reg_i15.GSR = "ENABLED";
    FD1S3IX shift_reg_i14 (.D(shift_reg[13]), .CK(CLKOS2), .CD(shift_reg_15__N_100[0]), 
            .Q(shift_reg[14])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=9, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=31, LSE_RLINE=39 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(47[12] 60[8])
    defparam shift_reg_i14.GSR = "ENABLED";
    FD1S3IX shift_reg_i13 (.D(shift_reg[12]), .CK(CLKOS2), .CD(shift_reg_15__N_100[0]), 
            .Q(shift_reg[13])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=9, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=31, LSE_RLINE=39 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(47[12] 60[8])
    defparam shift_reg_i13.GSR = "ENABLED";
    FD1S3IX shift_reg_i12 (.D(shift_reg[11]), .CK(CLKOS2), .CD(shift_reg_15__N_100[0]), 
            .Q(shift_reg[12])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=9, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=31, LSE_RLINE=39 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(47[12] 60[8])
    defparam shift_reg_i12.GSR = "ENABLED";
    FD1S3IX shift_reg_i11 (.D(shift_reg[10]), .CK(CLKOS2), .CD(shift_reg_15__N_100[0]), 
            .Q(shift_reg[11])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=9, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=31, LSE_RLINE=39 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(47[12] 60[8])
    defparam shift_reg_i11.GSR = "ENABLED";
    FD1S3IX shift_reg_i10 (.D(shift_reg[9]), .CK(CLKOS2), .CD(shift_reg_15__N_100[0]), 
            .Q(shift_reg[10])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=9, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=31, LSE_RLINE=39 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(47[12] 60[8])
    defparam shift_reg_i10.GSR = "ENABLED";
    FD1S3IX shift_reg_i9 (.D(shift_reg[8]), .CK(CLKOS2), .CD(shift_reg_15__N_100[0]), 
            .Q(shift_reg[9])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=9, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=31, LSE_RLINE=39 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(47[12] 60[8])
    defparam shift_reg_i9.GSR = "ENABLED";
    FD1S3IX shift_reg_i8 (.D(shift_reg[7]), .CK(CLKOS2), .CD(shift_reg_15__N_100[0]), 
            .Q(shift_reg[8])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=9, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=31, LSE_RLINE=39 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(47[12] 60[8])
    defparam shift_reg_i8.GSR = "ENABLED";
    FD1S3IX shift_reg_i7 (.D(shift_reg[6]), .CK(CLKOS2), .CD(shift_reg_15__N_100[0]), 
            .Q(shift_reg[7])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=9, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=31, LSE_RLINE=39 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(47[12] 60[8])
    defparam shift_reg_i7.GSR = "ENABLED";
    FD1S3IX shift_reg_i6 (.D(shift_reg[5]), .CK(CLKOS2), .CD(shift_reg_15__N_100[0]), 
            .Q(shift_reg[6])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=9, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=31, LSE_RLINE=39 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(47[12] 60[8])
    defparam shift_reg_i6.GSR = "ENABLED";
    FD1S3IX shift_reg_i5 (.D(shift_reg[4]), .CK(CLKOS2), .CD(shift_reg_15__N_100[0]), 
            .Q(shift_reg[5])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=9, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=31, LSE_RLINE=39 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(47[12] 60[8])
    defparam shift_reg_i5.GSR = "ENABLED";
    FD1S3IX shift_reg_i4 (.D(shift_reg[3]), .CK(CLKOS2), .CD(shift_reg_15__N_100[0]), 
            .Q(shift_reg[4])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=9, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=31, LSE_RLINE=39 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(47[12] 60[8])
    defparam shift_reg_i4.GSR = "ENABLED";
    FD1S3IX shift_reg_i3 (.D(shift_reg[2]), .CK(CLKOS2), .CD(shift_reg_15__N_100[0]), 
            .Q(shift_reg[3])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=9, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=31, LSE_RLINE=39 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(47[12] 60[8])
    defparam shift_reg_i3.GSR = "ENABLED";
    FD1S3IX shift_reg_i2 (.D(shift_reg[1]), .CK(CLKOS2), .CD(shift_reg_15__N_100[0]), 
            .Q(shift_reg[2])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=9, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=31, LSE_RLINE=39 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(47[12] 60[8])
    defparam shift_reg_i2.GSR = "ENABLED";
    FD1S3JX shift_reg_i1 (.D(shift_reg[0]), .CK(CLKOS2), .PD(shift_reg_15__N_100[0]), 
            .Q(shift_reg[1])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=9, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=31, LSE_RLINE=39 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(47[12] 60[8])
    defparam shift_reg_i1.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module PISO_Long_ShiftReg_U2
//

module PISO_Long_ShiftReg_U2 (CLKOS2, \shift_reg_15__N_100[0] , Clock_N_118, 
            loadCS_keep, RAM_LINE_CS_END, \shift_reg_15__N_100[14] , \shift_reg[13] , 
            \shift_reg_15__N_100[13] , \shift_reg[12] , \shift_reg_15__N_100[12] , 
            \shift_reg[11] , \shift_reg_15__N_100[10] , \shift_reg[9] , 
            \shift_reg_15__N_100[9] , \shift_reg[8] , \shift_reg_15__N_100[8] , 
            \shift_reg[7] , \shift_reg_15__N_100[6] , \shift_reg[5] , 
            \shift_reg_15__N_100[5] , \shift_reg[4] , \shift_reg_15__N_100[4] , 
            \shift_reg[3] , \shift_reg_15__N_100[2] , \shift_reg[1] ) /* synthesis syn_module_defined=1 */ ;
    input CLKOS2;
    output \shift_reg_15__N_100[0] ;
    input Clock_N_118;
    input loadCS_keep;
    output RAM_LINE_CS_END;
    input \shift_reg_15__N_100[14] ;
    output \shift_reg[13] ;
    input \shift_reg_15__N_100[13] ;
    output \shift_reg[12] ;
    input \shift_reg_15__N_100[12] ;
    output \shift_reg[11] ;
    input \shift_reg_15__N_100[10] ;
    output \shift_reg[9] ;
    input \shift_reg_15__N_100[9] ;
    output \shift_reg[8] ;
    input \shift_reg_15__N_100[8] ;
    output \shift_reg[7] ;
    input \shift_reg_15__N_100[6] ;
    output \shift_reg[5] ;
    input \shift_reg_15__N_100[5] ;
    output \shift_reg[4] ;
    input \shift_reg_15__N_100[4] ;
    output \shift_reg[3] ;
    input \shift_reg_15__N_100[2] ;
    output \shift_reg[1] ;
    
    wire [15:0]shift_reg /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(12[16:25])
    wire CLKOS2 /* synthesis is_clock=1, SET_AS_NETWORK=CLKOS2 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(27[7:13])
    wire Clock_N_118 /* synthesis is_inv_clock=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(17[9:18])
    wire RAM_LINE_CS_END /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenram_line_cs_ta.v(13[7:22])
    wire \shift_reg[13]  /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(12[16:25])
    wire \shift_reg[12]  /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(12[16:25])
    wire \shift_reg[11]  /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(12[16:25])
    wire \shift_reg[9]  /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(12[16:25])
    wire \shift_reg[8]  /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(12[16:25])
    wire \shift_reg[7]  /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(12[16:25])
    wire \shift_reg[5]  /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(12[16:25])
    wire \shift_reg[4]  /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(12[16:25])
    wire \shift_reg[3]  /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(12[16:25])
    wire \shift_reg[1]  /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(12[16:25])
    
    wire load_half;
    
    FD1S3AX shift_reg_i0 (.D(\shift_reg_15__N_100[0] ), .CK(CLKOS2), .Q(shift_reg[0])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=9, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=22, LSE_RLINE=30 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(47[12] 60[8])
    defparam shift_reg_i0.GSR = "ENABLED";
    FD1S3AY load_registered_14 (.D(load_half), .CK(CLKOS2), .Q(\shift_reg_15__N_100[0] )) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=9, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=22, LSE_RLINE=30 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(36[12] 41[8])
    defparam load_registered_14.GSR = "ENABLED";
    FD1S3AY load_half_13 (.D(loadCS_keep), .CK(Clock_N_118), .Q(load_half)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=9, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=22, LSE_RLINE=30 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(19[12] 24[8])
    defparam load_half_13.GSR = "ENABLED";
    FD1S3IX shift_reg_i15 (.D(shift_reg[14]), .CK(CLKOS2), .CD(\shift_reg_15__N_100[0] ), 
            .Q(RAM_LINE_CS_END)) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=9, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=22, LSE_RLINE=30 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(47[12] 60[8])
    defparam shift_reg_i15.GSR = "ENABLED";
    FD1S3AX shift_reg_i14 (.D(\shift_reg_15__N_100[14] ), .CK(CLKOS2), .Q(shift_reg[14])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=9, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=22, LSE_RLINE=30 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(47[12] 60[8])
    defparam shift_reg_i14.GSR = "ENABLED";
    FD1S3AX shift_reg_i13 (.D(\shift_reg_15__N_100[13] ), .CK(CLKOS2), .Q(\shift_reg[13] )) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=9, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=22, LSE_RLINE=30 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(47[12] 60[8])
    defparam shift_reg_i13.GSR = "ENABLED";
    FD1S3AX shift_reg_i12 (.D(\shift_reg_15__N_100[12] ), .CK(CLKOS2), .Q(\shift_reg[12] )) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=9, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=22, LSE_RLINE=30 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(47[12] 60[8])
    defparam shift_reg_i12.GSR = "ENABLED";
    FD1S3IX shift_reg_i11 (.D(shift_reg[10]), .CK(CLKOS2), .CD(\shift_reg_15__N_100[0] ), 
            .Q(\shift_reg[11] )) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=9, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=22, LSE_RLINE=30 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(47[12] 60[8])
    defparam shift_reg_i11.GSR = "ENABLED";
    FD1S3AX shift_reg_i10 (.D(\shift_reg_15__N_100[10] ), .CK(CLKOS2), .Q(shift_reg[10])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=9, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=22, LSE_RLINE=30 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(47[12] 60[8])
    defparam shift_reg_i10.GSR = "ENABLED";
    FD1S3AX shift_reg_i9 (.D(\shift_reg_15__N_100[9] ), .CK(CLKOS2), .Q(\shift_reg[9] )) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=9, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=22, LSE_RLINE=30 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(47[12] 60[8])
    defparam shift_reg_i9.GSR = "ENABLED";
    FD1S3AX shift_reg_i8 (.D(\shift_reg_15__N_100[8] ), .CK(CLKOS2), .Q(\shift_reg[8] )) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=9, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=22, LSE_RLINE=30 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(47[12] 60[8])
    defparam shift_reg_i8.GSR = "ENABLED";
    FD1S3IX shift_reg_i7 (.D(shift_reg[6]), .CK(CLKOS2), .CD(\shift_reg_15__N_100[0] ), 
            .Q(\shift_reg[7] )) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=9, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=22, LSE_RLINE=30 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(47[12] 60[8])
    defparam shift_reg_i7.GSR = "ENABLED";
    FD1S3AX shift_reg_i6 (.D(\shift_reg_15__N_100[6] ), .CK(CLKOS2), .Q(shift_reg[6])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=9, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=22, LSE_RLINE=30 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(47[12] 60[8])
    defparam shift_reg_i6.GSR = "ENABLED";
    FD1S3AX shift_reg_i5 (.D(\shift_reg_15__N_100[5] ), .CK(CLKOS2), .Q(\shift_reg[5] )) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=9, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=22, LSE_RLINE=30 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(47[12] 60[8])
    defparam shift_reg_i5.GSR = "ENABLED";
    FD1S3AX shift_reg_i4 (.D(\shift_reg_15__N_100[4] ), .CK(CLKOS2), .Q(\shift_reg[4] )) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=9, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=22, LSE_RLINE=30 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(47[12] 60[8])
    defparam shift_reg_i4.GSR = "ENABLED";
    FD1S3IX shift_reg_i3 (.D(shift_reg[2]), .CK(CLKOS2), .CD(\shift_reg_15__N_100[0] ), 
            .Q(\shift_reg[3] )) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=9, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=22, LSE_RLINE=30 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(47[12] 60[8])
    defparam shift_reg_i3.GSR = "ENABLED";
    FD1S3AX shift_reg_i2 (.D(\shift_reg_15__N_100[2] ), .CK(CLKOS2), .Q(shift_reg[2])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=9, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=22, LSE_RLINE=30 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(47[12] 60[8])
    defparam shift_reg_i2.GSR = "ENABLED";
    FD1S3JX shift_reg_i1 (.D(shift_reg[0]), .CK(CLKOS2), .PD(\shift_reg_15__N_100[0] ), 
            .Q(\shift_reg[1] )) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=9, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=22, LSE_RLINE=30 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(47[12] 60[8])
    defparam shift_reg_i1.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module ZenROM_CS_TA
//

module ZenROM_CS_TA (RW_OUT_c_c, \shift_reg_15__N_100[0] , \shift_reg[13] , 
            \shift_reg_15__N_100[14] , \shift_reg[12] , \shift_reg_15__N_100[13] , 
            \shift_reg[11] , \shift_reg_15__N_100[12] , \shift_reg[9] , 
            \shift_reg_15__N_100[10] , CLK_c, loadCS_N_149, ROM_ADDR_N_10, 
            loadTA_N_146, state, state_N_142, \shift_reg[8] , \shift_reg_15__N_100[9] , 
            \shift_reg[7] , \shift_reg_15__N_100[8] , \shift_reg[5] , 
            \shift_reg_15__N_100[6] , \shift_reg[4] , \shift_reg_15__N_100[5] , 
            \shift_reg[3] , \shift_reg_15__N_100[4] , \shift_reg[1] , 
            \shift_reg_15__N_100[2] , ROM_CS_END, ROM_BUFFER_OE_N_c, RAM_CS_N_c, 
            RAM_OE_N_c, ROM_OE_N_c, \shift_reg_7__N_41[0] , \shift_reg[5]_adj_1 , 
            \shift_reg_7__N_41[6] , CLKOS2, Clock_N_118, ROM_TA_N) /* synthesis syn_module_defined=1 */ ;
    input RW_OUT_c_c;
    input \shift_reg_15__N_100[0] ;
    input \shift_reg[13] ;
    output \shift_reg_15__N_100[14] ;
    input \shift_reg[12] ;
    output \shift_reg_15__N_100[13] ;
    input \shift_reg[11] ;
    output \shift_reg_15__N_100[12] ;
    input \shift_reg[9] ;
    output \shift_reg_15__N_100[10] ;
    input CLK_c;
    input loadCS_N_149;
    input ROM_ADDR_N_10;
    input loadTA_N_146;
    output state;
    input state_N_142;
    input \shift_reg[8] ;
    output \shift_reg_15__N_100[9] ;
    input \shift_reg[7] ;
    output \shift_reg_15__N_100[8] ;
    input \shift_reg[5] ;
    output \shift_reg_15__N_100[6] ;
    input \shift_reg[4] ;
    output \shift_reg_15__N_100[5] ;
    input \shift_reg[3] ;
    output \shift_reg_15__N_100[4] ;
    input \shift_reg[1] ;
    output \shift_reg_15__N_100[2] ;
    output ROM_CS_END;
    output ROM_BUFFER_OE_N_c;
    input RAM_CS_N_c;
    output RAM_OE_N_c;
    output ROM_OE_N_c;
    input \shift_reg_7__N_41[0] ;
    input \shift_reg[5]_adj_1 ;
    output \shift_reg_7__N_41[6] ;
    input CLKOS2;
    input Clock_N_118;
    output ROM_TA_N;
    
    wire RW_OUT_c_c /* synthesis DOUT="TRUE", SLEWRATE="FAST" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(10[14:20])
    wire [15:0]shift_reg /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(12[16:25])
    wire \shift_reg[13]  /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(12[16:25])
    wire \shift_reg[12]  /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(12[16:25])
    wire \shift_reg[11]  /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(12[16:25])
    wire \shift_reg[9]  /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(12[16:25])
    wire CLK_c /* synthesis is_clock=1, SET_AS_NETWORK=CLK_c */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(5[13:16])
    wire \shift_reg[8]  /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(12[16:25])
    wire \shift_reg[7]  /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(12[16:25])
    wire \shift_reg[5]  /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(12[16:25])
    wire \shift_reg[4]  /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(12[16:25])
    wire \shift_reg[3]  /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(12[16:25])
    wire \shift_reg[1]  /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(12[16:25])
    wire ROM_CS_END /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenrom_cs_ta.v(12[7:17])
    wire ROM_BUFFER_OE_N_c /* synthesis DOUT="TRUE", SLEWRATE="FAST" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(14[14:22])
    wire RAM_CS_N_c /* synthesis DOUT="TRUE", SLEWRATE="FAST" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(12[14:22])
    wire RAM_OE_N_c /* synthesis DOUT="TRUE", SLEWRATE="FAST" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(13[14:22])
    wire ROM_OE_N_c /* synthesis DOUT="TRUE", SLEWRATE="FAST" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(15[14:22])
    wire \shift_reg[5]_adj_1  /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(76[15:24])
    wire CLKOS2 /* synthesis is_clock=1, SET_AS_NETWORK=CLKOS2 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(27[7:13])
    wire Clock_N_118 /* synthesis is_inv_clock=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(17[9:18])
    wire ROM_TA_N /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(47[7:15])
    
    wire load_registered;
    wire [15:0]shift_reg_15__N_100;
    
    wire loadCS, loadTA, int_ROM_CS_N, n589;
    
    LUT4 mux_87_i2_3_lut_3_lut (.A(RW_OUT_c_c), .B(load_registered), .C(shift_reg[6]), 
         .Z(shift_reg_15__N_100[7])) /* synthesis lut_function=(!(A (B+!(C))+!A !(B+(C)))) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(65[29:35])
    defparam mux_87_i2_3_lut_3_lut.init = 16'h7474;
    LUT4 mux_8_i15_3_lut_3_lut (.A(RW_OUT_c_c), .B(\shift_reg_15__N_100[0] ), 
         .C(\shift_reg[13] ), .Z(\shift_reg_15__N_100[14] )) /* synthesis lut_function=(!(A (B+!(C))+!A !(B+(C)))) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(65[29:35])
    defparam mux_8_i15_3_lut_3_lut.init = 16'h7474;
    LUT4 mux_87_i3_3_lut_3_lut (.A(RW_OUT_c_c), .B(load_registered), .C(shift_reg[7]), 
         .Z(shift_reg_15__N_100[8])) /* synthesis lut_function=(!(A (B+!(C))+!A !(B+(C)))) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(65[29:35])
    defparam mux_87_i3_3_lut_3_lut.init = 16'h7474;
    LUT4 mux_8_i14_3_lut_3_lut (.A(RW_OUT_c_c), .B(\shift_reg_15__N_100[0] ), 
         .C(\shift_reg[12] ), .Z(\shift_reg_15__N_100[13] )) /* synthesis lut_function=(!(A (B+!(C))+!A !(B+(C)))) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(65[29:35])
    defparam mux_8_i14_3_lut_3_lut.init = 16'h7474;
    LUT4 mux_8_i13_3_lut_3_lut (.A(RW_OUT_c_c), .B(\shift_reg_15__N_100[0] ), 
         .C(\shift_reg[11] ), .Z(\shift_reg_15__N_100[12] )) /* synthesis lut_function=(!(A (B+!(C))+!A !(B+(C)))) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(65[29:35])
    defparam mux_8_i13_3_lut_3_lut.init = 16'h7474;
    LUT4 mux_8_i11_3_lut_3_lut (.A(RW_OUT_c_c), .B(\shift_reg_15__N_100[0] ), 
         .C(\shift_reg[9] ), .Z(\shift_reg_15__N_100[10] )) /* synthesis lut_function=(!(A (B+!(C))+!A !(B+(C)))) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(65[29:35])
    defparam mux_8_i11_3_lut_3_lut.init = 16'h7474;
    FD1S3AX loadCS_27 (.D(loadCS_N_149), .CK(CLK_c), .Q(loadCS)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=3, LSE_LLINE=93, LSE_RLINE=101 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenrom_cs_ta.v(41[9] 81[5])
    defparam loadCS_27.GSR = "ENABLED";
    FD1S3JX loadTA_28 (.D(loadTA_N_146), .CK(CLK_c), .PD(ROM_ADDR_N_10), 
            .Q(loadTA)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=3, LSE_LLINE=93, LSE_RLINE=101 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenrom_cs_ta.v(41[9] 81[5])
    defparam loadTA_28.GSR = "ENABLED";
    FD1S3AY int_ROM_CS_N_29 (.D(loadCS_N_149), .CK(CLK_c), .Q(int_ROM_CS_N)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=3, LSE_LLINE=93, LSE_RLINE=101 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenrom_cs_ta.v(41[9] 81[5])
    defparam int_ROM_CS_N_29.GSR = "ENABLED";
    FD1S3IX state_26 (.D(state_N_142), .CK(CLK_c), .CD(ROM_ADDR_N_10), 
            .Q(state)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=3, LSE_LLINE=93, LSE_RLINE=101 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenrom_cs_ta.v(41[9] 81[5])
    defparam state_26.GSR = "ENABLED";
    LUT4 mux_8_i10_3_lut_3_lut (.A(RW_OUT_c_c), .B(\shift_reg_15__N_100[0] ), 
         .C(\shift_reg[8] ), .Z(\shift_reg_15__N_100[9] )) /* synthesis lut_function=(!(A (B+!(C))+!A !(B+(C)))) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(65[29:35])
    defparam mux_8_i10_3_lut_3_lut.init = 16'h7474;
    LUT4 mux_8_i9_3_lut_3_lut (.A(RW_OUT_c_c), .B(\shift_reg_15__N_100[0] ), 
         .C(\shift_reg[7] ), .Z(\shift_reg_15__N_100[8] )) /* synthesis lut_function=(!(A (B+!(C))+!A !(B+(C)))) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(65[29:35])
    defparam mux_8_i9_3_lut_3_lut.init = 16'h7474;
    LUT4 mux_8_i7_3_lut_3_lut (.A(RW_OUT_c_c), .B(\shift_reg_15__N_100[0] ), 
         .C(\shift_reg[5] ), .Z(\shift_reg_15__N_100[6] )) /* synthesis lut_function=(!(A (B+!(C))+!A !(B+(C)))) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(65[29:35])
    defparam mux_8_i7_3_lut_3_lut.init = 16'h7474;
    LUT4 mux_8_i6_3_lut_3_lut (.A(RW_OUT_c_c), .B(\shift_reg_15__N_100[0] ), 
         .C(\shift_reg[4] ), .Z(\shift_reg_15__N_100[5] )) /* synthesis lut_function=(!(A (B+!(C))+!A !(B+(C)))) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(65[29:35])
    defparam mux_8_i6_3_lut_3_lut.init = 16'h7474;
    LUT4 mux_8_i5_3_lut_3_lut (.A(RW_OUT_c_c), .B(\shift_reg_15__N_100[0] ), 
         .C(\shift_reg[3] ), .Z(\shift_reg_15__N_100[4] )) /* synthesis lut_function=(!(A (B+!(C))+!A !(B+(C)))) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(65[29:35])
    defparam mux_8_i5_3_lut_3_lut.init = 16'h7474;
    LUT4 mux_8_i3_3_lut_3_lut (.A(RW_OUT_c_c), .B(\shift_reg_15__N_100[0] ), 
         .C(\shift_reg[1] ), .Z(\shift_reg_15__N_100[2] )) /* synthesis lut_function=(!(A (B+!(C))+!A !(B+(C)))) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(65[29:35])
    defparam mux_8_i3_3_lut_3_lut.init = 16'h7474;
    LUT4 mux_87_i4_3_lut_3_lut (.A(RW_OUT_c_c), .B(load_registered), .C(shift_reg[8]), 
         .Z(shift_reg_15__N_100[9])) /* synthesis lut_function=(!(A (B+!(C))+!A !(B+(C)))) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(65[29:35])
    defparam mux_87_i4_3_lut_3_lut.init = 16'h7474;
    LUT4 int_ROM_CS_N_I_0_2_lut (.A(int_ROM_CS_N), .B(ROM_CS_END), .Z(ROM_BUFFER_OE_N_c)) /* synthesis lut_function=(A+(B)) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenrom_cs_ta.v(14[20:43])
    defparam int_ROM_CS_N_I_0_2_lut.init = 16'heeee;
    LUT4 RAM_CS_N_I_0_2_lut_2_lut (.A(RW_OUT_c_c), .B(RAM_CS_N_c), .Z(RAM_OE_N_c)) /* synthesis lut_function=((B)+!A) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(65[29:35])
    defparam RAM_CS_N_I_0_2_lut_2_lut.init = 16'hdddd;
    LUT4 i2_3_lut_3_lut (.A(RW_OUT_c_c), .B(int_ROM_CS_N), .C(ROM_CS_END), 
         .Z(ROM_OE_N_c)) /* synthesis lut_function=((B+(C))+!A) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(65[29:35])
    defparam i2_3_lut_3_lut.init = 16'hfdfd;
    LUT4 RW_OUT_I_0_1_lut_rep_6 (.A(RW_OUT_c_c), .Z(n589)) /* synthesis lut_function=(!(A)) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(65[29:35])
    defparam RW_OUT_I_0_1_lut_rep_6.init = 16'h5555;
    LUT4 mux_8_i7_3_lut_3_lut_adj_21 (.A(RW_OUT_c_c), .B(\shift_reg_7__N_41[0] ), 
         .C(\shift_reg[5]_adj_1 ), .Z(\shift_reg_7__N_41[6] )) /* synthesis lut_function=(!(A (B+!(C))+!A !(B+(C)))) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(65[29:35])
    defparam mux_8_i7_3_lut_3_lut_adj_21.init = 16'h7474;
    PISO_Long_ShiftReg u_SR_TA (.CLKOS2(CLKOS2), .Clock_N_118(Clock_N_118), 
            .loadTA_keep(loadTA), .ROM_TA_N(ROM_TA_N)) /* synthesis syn_module_defined=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenrom_cs_ta.v(30[21] 38[3])
    PISO_Long_ShiftReg_U0 u_SR_ROMS_CS (.\shift_reg[6] (shift_reg[6]), .CLKOS2(CLKOS2), 
            .n589(n589), .load_registered(load_registered), .Clock_N_118(Clock_N_118), 
            .loadCS_keep(loadCS), .ROM_CS_END(ROM_CS_END), .\shift_reg_15__N_100[9] (shift_reg_15__N_100[9]), 
            .\shift_reg[8] (shift_reg[8]), .\shift_reg_15__N_100[8] (shift_reg_15__N_100[8]), 
            .\shift_reg[7] (shift_reg[7]), .\shift_reg_15__N_100[7] (shift_reg_15__N_100[7])) /* synthesis syn_module_defined=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenrom_cs_ta.v(21[21] 29[3])
    
endmodule
//
// Verilog Description of module PISO_Long_ShiftReg
//

module PISO_Long_ShiftReg (CLKOS2, Clock_N_118, loadTA_keep, ROM_TA_N) /* synthesis syn_module_defined=1 */ ;
    input CLKOS2;
    input Clock_N_118;
    input loadTA_keep;
    output ROM_TA_N;
    
    wire [15:0]shift_reg /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(12[16:25])
    wire CLKOS2 /* synthesis is_clock=1, SET_AS_NETWORK=CLKOS2 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(27[7:13])
    wire Clock_N_118 /* synthesis is_inv_clock=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(17[9:18])
    wire ROM_TA_N /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(47[7:15])
    wire [15:0]shift_reg_15__N_100;
    
    wire load_registered, load_half;
    
    FD1S3AX shift_reg_i1 (.D(shift_reg_15__N_100[6]), .CK(CLKOS2), .Q(shift_reg[6])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=8, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=30, LSE_RLINE=38 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(47[12] 60[8])
    defparam shift_reg_i1.GSR = "ENABLED";
    FD1S3AY load_registered_14 (.D(load_half), .CK(CLKOS2), .Q(load_registered)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=8, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=30, LSE_RLINE=38 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(36[12] 41[8])
    defparam load_registered_14.GSR = "ENABLED";
    FD1S3AY load_half_13 (.D(loadTA_keep), .CK(Clock_N_118), .Q(load_half)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=8, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=30, LSE_RLINE=38 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(19[12] 24[8])
    defparam load_half_13.GSR = "ENABLED";
    FD1S3JX shift_reg_i10 (.D(shift_reg[14]), .CK(CLKOS2), .PD(load_registered), 
            .Q(ROM_TA_N)) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=8, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=30, LSE_RLINE=38 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(47[12] 60[8])
    defparam shift_reg_i10.GSR = "ENABLED";
    LUT4 i133_1_lut (.A(load_registered), .Z(shift_reg_15__N_100[6])) /* synthesis lut_function=(!(A)) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(57[17:62])
    defparam i133_1_lut.init = 16'h5555;
    FD1S3JX shift_reg_i9 (.D(shift_reg[13]), .CK(CLKOS2), .PD(load_registered), 
            .Q(shift_reg[14])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=8, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=30, LSE_RLINE=38 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(47[12] 60[8])
    defparam shift_reg_i9.GSR = "ENABLED";
    FD1S3JX shift_reg_i8 (.D(shift_reg[12]), .CK(CLKOS2), .PD(load_registered), 
            .Q(shift_reg[13])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=8, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=30, LSE_RLINE=38 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(47[12] 60[8])
    defparam shift_reg_i8.GSR = "ENABLED";
    FD1S3JX shift_reg_i7 (.D(shift_reg[11]), .CK(CLKOS2), .PD(load_registered), 
            .Q(shift_reg[12])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=8, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=30, LSE_RLINE=38 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(47[12] 60[8])
    defparam shift_reg_i7.GSR = "ENABLED";
    FD1S3JX shift_reg_i6 (.D(shift_reg[10]), .CK(CLKOS2), .PD(load_registered), 
            .Q(shift_reg[11])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=8, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=30, LSE_RLINE=38 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(47[12] 60[8])
    defparam shift_reg_i6.GSR = "ENABLED";
    FD1S3JX shift_reg_i5 (.D(shift_reg[9]), .CK(CLKOS2), .PD(load_registered), 
            .Q(shift_reg[10])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=8, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=30, LSE_RLINE=38 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(47[12] 60[8])
    defparam shift_reg_i5.GSR = "ENABLED";
    FD1S3JX shift_reg_i4 (.D(shift_reg[8]), .CK(CLKOS2), .PD(load_registered), 
            .Q(shift_reg[9])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=8, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=30, LSE_RLINE=38 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(47[12] 60[8])
    defparam shift_reg_i4.GSR = "ENABLED";
    FD1S3IX shift_reg_i3 (.D(shift_reg[7]), .CK(CLKOS2), .CD(load_registered), 
            .Q(shift_reg[8])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=8, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=30, LSE_RLINE=38 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(47[12] 60[8])
    defparam shift_reg_i3.GSR = "ENABLED";
    FD1S3IX shift_reg_i2 (.D(shift_reg[6]), .CK(CLKOS2), .CD(load_registered), 
            .Q(shift_reg[7])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=8, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=30, LSE_RLINE=38 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(47[12] 60[8])
    defparam shift_reg_i2.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module PISO_Long_ShiftReg_U0
//

module PISO_Long_ShiftReg_U0 (\shift_reg[6] , CLKOS2, n589, load_registered, 
            Clock_N_118, loadCS_keep, ROM_CS_END, \shift_reg_15__N_100[9] , 
            \shift_reg[8] , \shift_reg_15__N_100[8] , \shift_reg[7] , 
            \shift_reg_15__N_100[7] ) /* synthesis syn_module_defined=1 */ ;
    output \shift_reg[6] ;
    input CLKOS2;
    input n589;
    output load_registered;
    input Clock_N_118;
    input loadCS_keep;
    output ROM_CS_END;
    input \shift_reg_15__N_100[9] ;
    output \shift_reg[8] ;
    input \shift_reg_15__N_100[8] ;
    output \shift_reg[7] ;
    input \shift_reg_15__N_100[7] ;
    
    wire \shift_reg[6]  /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(12[16:25])
    wire CLKOS2 /* synthesis is_clock=1, SET_AS_NETWORK=CLKOS2 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(27[7:13])
    wire Clock_N_118 /* synthesis is_inv_clock=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(17[9:18])
    wire ROM_CS_END /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenrom_cs_ta.v(12[7:17])
    wire [15:0]shift_reg /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(12[16:25])
    wire \shift_reg[8]  /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(12[16:25])
    wire \shift_reg[7]  /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(12[16:25])
    
    wire n346, load_half;
    
    FD1S3JX shift_reg_i1 (.D(n589), .CK(CLKOS2), .PD(n346), .Q(\shift_reg[6] )) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=8, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=21, LSE_RLINE=29 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(47[12] 60[8])
    defparam shift_reg_i1.GSR = "ENABLED";
    FD1S3AY load_registered_14 (.D(load_half), .CK(CLKOS2), .Q(load_registered)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=8, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=21, LSE_RLINE=29 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(36[12] 41[8])
    defparam load_registered_14.GSR = "ENABLED";
    FD1S3AY load_half_13 (.D(loadCS_keep), .CK(Clock_N_118), .Q(load_half)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=8, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=21, LSE_RLINE=29 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(19[12] 24[8])
    defparam load_half_13.GSR = "ENABLED";
    FD1S3IX shift_reg_i10 (.D(shift_reg[14]), .CK(CLKOS2), .CD(load_registered), 
            .Q(ROM_CS_END)) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=8, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=21, LSE_RLINE=29 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(47[12] 60[8])
    defparam shift_reg_i10.GSR = "ENABLED";
    FD1S3IX shift_reg_i9 (.D(shift_reg[13]), .CK(CLKOS2), .CD(load_registered), 
            .Q(shift_reg[14])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=8, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=21, LSE_RLINE=29 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(47[12] 60[8])
    defparam shift_reg_i9.GSR = "ENABLED";
    FD1S3IX shift_reg_i8 (.D(shift_reg[12]), .CK(CLKOS2), .CD(load_registered), 
            .Q(shift_reg[13])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=8, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=21, LSE_RLINE=29 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(47[12] 60[8])
    defparam shift_reg_i8.GSR = "ENABLED";
    FD1S3IX shift_reg_i7 (.D(shift_reg[11]), .CK(CLKOS2), .CD(load_registered), 
            .Q(shift_reg[12])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=8, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=21, LSE_RLINE=29 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(47[12] 60[8])
    defparam shift_reg_i7.GSR = "ENABLED";
    FD1S3IX shift_reg_i6 (.D(shift_reg[10]), .CK(CLKOS2), .CD(load_registered), 
            .Q(shift_reg[11])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=8, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=21, LSE_RLINE=29 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(47[12] 60[8])
    defparam shift_reg_i6.GSR = "ENABLED";
    FD1S3IX shift_reg_i5 (.D(shift_reg[9]), .CK(CLKOS2), .CD(load_registered), 
            .Q(shift_reg[10])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=8, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=21, LSE_RLINE=29 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(47[12] 60[8])
    defparam shift_reg_i5.GSR = "ENABLED";
    FD1S3AX shift_reg_i4 (.D(\shift_reg_15__N_100[9] ), .CK(CLKOS2), .Q(shift_reg[9])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=8, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=21, LSE_RLINE=29 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(47[12] 60[8])
    defparam shift_reg_i4.GSR = "ENABLED";
    FD1S3AX shift_reg_i3 (.D(\shift_reg_15__N_100[8] ), .CK(CLKOS2), .Q(\shift_reg[8] )) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=8, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=21, LSE_RLINE=29 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(47[12] 60[8])
    defparam shift_reg_i3.GSR = "ENABLED";
    FD1S3AX shift_reg_i2 (.D(\shift_reg_15__N_100[7] ), .CK(CLKOS2), .Q(\shift_reg[7] )) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=8, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=21, LSE_RLINE=29 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(47[12] 60[8])
    defparam shift_reg_i2.GSR = "ENABLED";
    LUT4 i159_1_lut (.A(load_registered), .Z(n346)) /* synthesis lut_function=(!(A)) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(36[12] 41[8])
    defparam i159_1_lut.init = 16'h5555;
    
endmodule
//
// Verilog Description of module ZenRAM_CS_TA
//

module ZenRAM_CS_TA (int_RAM_CS_N, CLK_c, loadTA_N_31, RAM_TA_N, CLKOS, 
            Clock_N_51, \shift_reg_7__N_41[0] , RAM_CS_END, \shift_reg_7__N_41[6] , 
            \shift_reg[5] ) /* synthesis syn_module_defined=1 */ ;
    output int_RAM_CS_N;
    input CLK_c;
    input loadTA_N_31;
    output RAM_TA_N;
    input CLKOS;
    input Clock_N_51;
    output \shift_reg_7__N_41[0] ;
    output RAM_CS_END;
    input \shift_reg_7__N_41[6] ;
    output \shift_reg[5] ;
    
    wire CLK_c /* synthesis is_clock=1, SET_AS_NETWORK=CLK_c */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(5[13:16])
    wire [7:0]shift_reg /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenram_cs_ta.v(13[7:17])
    wire CLKOS /* synthesis is_clock=1, SET_AS_NETWORK=CLKOS */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(26[7:12])
    wire Clock_N_51 /* synthesis is_inv_clock=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(81[9:18])
    wire RAM_CS_END /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenram_cs_ta.v(12[7:17])
    wire \shift_reg[5]  /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(76[15:24])
    
    wire loadTA;
    
    FD1S3AY int_RAM_CS_N_17 (.D(loadTA_N_31), .CK(CLK_c), .Q(int_RAM_CS_N)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=3, LSE_LLINE=67, LSE_RLINE=75 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenram_cs_ta.v(41[9] 62[5])
    defparam int_RAM_CS_N_17.GSR = "ENABLED";
    FD1S3AX loadTA_16 (.D(loadTA_N_31), .CK(CLK_c), .Q(loadTA)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=3, LSE_LLINE=67, LSE_RLINE=75 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenram_cs_ta.v(41[9] 62[5])
    defparam loadTA_16.GSR = "ENABLED";
    LUT4 int_RAM_CS_N_I_0_2_lut (.A(int_RAM_CS_N), .B(shift_reg[7]), .Z(RAM_TA_N)) /* synthesis lut_function=(A+(B)) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenram_cs_ta.v(18[20:43])
    defparam int_RAM_CS_N_I_0_2_lut.init = 16'heeee;
    PISO_Short_ShiftReg u_SR_TA (.CLKOS(CLKOS), .Clock_N_51(Clock_N_51), 
            .loadTA_keep(loadTA), .RAM_TA_END(shift_reg[7])) /* synthesis syn_module_defined=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenram_cs_ta.v(30[22] 38[3])
    PISO_Short_ShiftReg_U3 u_SR_RAMS_CS (.CLKOS(CLKOS), .\shift_reg_7__N_41[0] (\shift_reg_7__N_41[0] ), 
            .RAM_CS_END(RAM_CS_END), .\shift_reg_7__N_41[6] (\shift_reg_7__N_41[6] ), 
            .\shift_reg[5] (\shift_reg[5] ), .Clock_N_51(Clock_N_51), .loadCS_keep(loadTA)) /* synthesis syn_module_defined=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenram_cs_ta.v(21[22] 29[3])
    
endmodule
//
// Verilog Description of module PISO_Short_ShiftReg
//

module PISO_Short_ShiftReg (CLKOS, Clock_N_51, loadTA_keep, RAM_TA_END) /* synthesis syn_module_defined=1 */ ;
    input CLKOS;
    input Clock_N_51;
    input loadTA_keep;
    output RAM_TA_END;
    
    wire [7:0]shift_reg /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(76[15:24])
    wire CLKOS /* synthesis is_clock=1, SET_AS_NETWORK=CLKOS */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(26[7:12])
    wire Clock_N_51 /* synthesis is_inv_clock=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(81[9:18])
    wire RAM_TA_END /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenram_cs_ta.v(13[7:17])
    wire [7:0]shift_reg_7__N_41;
    
    wire load_half;
    
    FD1S3AX shift_reg_i0 (.D(shift_reg_7__N_41[0]), .CK(CLKOS), .Q(shift_reg[0])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=7, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=30, LSE_RLINE=38 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(111[12] 124[8])
    defparam shift_reg_i0.GSR = "ENABLED";
    FD1S3IX shift_reg_i6 (.D(shift_reg[5]), .CK(CLKOS), .CD(shift_reg_7__N_41[0]), 
            .Q(shift_reg[6])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=7, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=30, LSE_RLINE=38 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(111[12] 124[8])
    defparam shift_reg_i6.GSR = "ENABLED";
    FD1S3AY load_registered_14 (.D(load_half), .CK(CLKOS), .Q(shift_reg_7__N_41[0])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=7, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=30, LSE_RLINE=38 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(100[12] 105[8])
    defparam load_registered_14.GSR = "ENABLED";
    FD1S3AY load_half_13 (.D(loadTA_keep), .CK(Clock_N_51), .Q(load_half)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=7, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=30, LSE_RLINE=38 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(83[12] 88[8])
    defparam load_half_13.GSR = "ENABLED";
    FD1S3JX shift_reg_i5 (.D(shift_reg[4]), .CK(CLKOS), .PD(shift_reg_7__N_41[0]), 
            .Q(shift_reg[5])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=7, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=30, LSE_RLINE=38 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(111[12] 124[8])
    defparam shift_reg_i5.GSR = "ENABLED";
    FD1S3JX shift_reg_i4 (.D(shift_reg[3]), .CK(CLKOS), .PD(shift_reg_7__N_41[0]), 
            .Q(shift_reg[4])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=7, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=30, LSE_RLINE=38 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(111[12] 124[8])
    defparam shift_reg_i4.GSR = "ENABLED";
    FD1S3JX shift_reg_i3 (.D(shift_reg[2]), .CK(CLKOS), .PD(shift_reg_7__N_41[0]), 
            .Q(shift_reg[3])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=7, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=30, LSE_RLINE=38 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(111[12] 124[8])
    defparam shift_reg_i3.GSR = "ENABLED";
    FD1S3JX shift_reg_i2 (.D(shift_reg[1]), .CK(CLKOS), .PD(shift_reg_7__N_41[0]), 
            .Q(shift_reg[2])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=7, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=30, LSE_RLINE=38 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(111[12] 124[8])
    defparam shift_reg_i2.GSR = "ENABLED";
    FD1S3JX shift_reg_i1 (.D(shift_reg[0]), .CK(CLKOS), .PD(shift_reg_7__N_41[0]), 
            .Q(shift_reg[1])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=7, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=30, LSE_RLINE=38 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(111[12] 124[8])
    defparam shift_reg_i1.GSR = "ENABLED";
    FD1S3IX shift_reg_i7 (.D(shift_reg[6]), .CK(CLKOS), .CD(shift_reg_7__N_41[0]), 
            .Q(RAM_TA_END)) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=7, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=30, LSE_RLINE=38 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(111[12] 124[8])
    defparam shift_reg_i7.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module PISO_Short_ShiftReg_U3
//

module PISO_Short_ShiftReg_U3 (CLKOS, \shift_reg_7__N_41[0] , RAM_CS_END, 
            \shift_reg_7__N_41[6] , \shift_reg[5] , Clock_N_51, loadCS_keep) /* synthesis syn_module_defined=1 */ ;
    input CLKOS;
    output \shift_reg_7__N_41[0] ;
    output RAM_CS_END;
    input \shift_reg_7__N_41[6] ;
    output \shift_reg[5] ;
    input Clock_N_51;
    input loadCS_keep;
    
    wire [7:0]shift_reg /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(76[15:24])
    wire CLKOS /* synthesis is_clock=1, SET_AS_NETWORK=CLKOS */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(26[7:12])
    wire RAM_CS_END /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenram_cs_ta.v(12[7:17])
    wire \shift_reg[5]  /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(76[15:24])
    wire Clock_N_51 /* synthesis is_inv_clock=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(81[9:18])
    
    wire load_half;
    
    FD1S3JX shift_reg_i3 (.D(shift_reg[2]), .CK(CLKOS), .PD(\shift_reg_7__N_41[0] ), 
            .Q(shift_reg[3])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=7, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=21, LSE_RLINE=29 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(111[12] 124[8])
    defparam shift_reg_i3.GSR = "ENABLED";
    FD1S3IX shift_reg_i7 (.D(shift_reg[6]), .CK(CLKOS), .CD(\shift_reg_7__N_41[0] ), 
            .Q(RAM_CS_END)) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=7, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=21, LSE_RLINE=29 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(111[12] 124[8])
    defparam shift_reg_i7.GSR = "ENABLED";
    FD1S3AX shift_reg_i6 (.D(\shift_reg_7__N_41[6] ), .CK(CLKOS), .Q(shift_reg[6])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=7, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=21, LSE_RLINE=29 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(111[12] 124[8])
    defparam shift_reg_i6.GSR = "ENABLED";
    FD1S3JX shift_reg_i2 (.D(shift_reg[1]), .CK(CLKOS), .PD(\shift_reg_7__N_41[0] ), 
            .Q(shift_reg[2])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=7, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=21, LSE_RLINE=29 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(111[12] 124[8])
    defparam shift_reg_i2.GSR = "ENABLED";
    FD1S3JX shift_reg_i5 (.D(shift_reg[4]), .CK(CLKOS), .PD(\shift_reg_7__N_41[0] ), 
            .Q(\shift_reg[5] )) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=7, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=21, LSE_RLINE=29 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(111[12] 124[8])
    defparam shift_reg_i5.GSR = "ENABLED";
    FD1S3AX shift_reg_i0 (.D(\shift_reg_7__N_41[0] ), .CK(CLKOS), .Q(shift_reg[0])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=7, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=21, LSE_RLINE=29 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(111[12] 124[8])
    defparam shift_reg_i0.GSR = "ENABLED";
    FD1S3JX shift_reg_i4 (.D(shift_reg[3]), .CK(CLKOS), .PD(\shift_reg_7__N_41[0] ), 
            .Q(shift_reg[4])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=7, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=21, LSE_RLINE=29 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(111[12] 124[8])
    defparam shift_reg_i4.GSR = "ENABLED";
    FD1S3JX shift_reg_i1 (.D(shift_reg[0]), .CK(CLKOS), .PD(\shift_reg_7__N_41[0] ), 
            .Q(shift_reg[1])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=7, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=21, LSE_RLINE=29 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(111[12] 124[8])
    defparam shift_reg_i1.GSR = "ENABLED";
    FD1S3AY load_registered_14 (.D(load_half), .CK(CLKOS), .Q(\shift_reg_7__N_41[0] )) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=7, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=21, LSE_RLINE=29 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(100[12] 105[8])
    defparam load_registered_14.GSR = "ENABLED";
    FD1S3AY load_half_13 (.D(loadCS_keep), .CK(Clock_N_51), .Q(load_half)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=7, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=21, LSE_RLINE=29 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(83[12] 88[8])
    defparam load_half_13.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module ZenPLL
//

module ZenPLL (Clock_N_118, CLKOS2, CLK_c, RST_c, CLKOS, LOCK_c, 
            GND_net, Clock_N_51) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    output Clock_N_118;
    output CLKOS2;
    input CLK_c;
    input RST_c;
    output CLKOS;
    output LOCK_c;
    input GND_net;
    output Clock_N_51;
    
    wire Clock_N_118 /* synthesis is_inv_clock=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(17[9:18])
    wire CLKOS2 /* synthesis is_clock=1, SET_AS_NETWORK=CLKOS2 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(27[7:13])
    wire CLK_c /* synthesis is_clock=1, SET_AS_NETWORK=CLK_c */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(5[13:16])
    wire CLKOP /* synthesis is_clock=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenpll.v(11[17:22])
    wire CLKOS /* synthesis is_clock=1, SET_AS_NETWORK=CLKOS */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(26[7:12])
    wire Clock_N_51 /* synthesis is_inv_clock=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(81[9:18])
    
    INV i390 (.A(CLKOS2), .Z(Clock_N_118));
    EHXPLLJ PLLInst_0 (.CLKI(CLK_c), .CLKFB(CLKOP), .PHASESEL0(GND_net), 
            .PHASESEL1(GND_net), .PHASEDIR(GND_net), .PHASESTEP(GND_net), 
            .LOADREG(GND_net), .STDBY(GND_net), .PLLWAKESYNC(GND_net), 
            .RST(RST_c), .RESETC(GND_net), .RESETD(GND_net), .RESETM(GND_net), 
            .ENCLKOP(GND_net), .ENCLKOS(GND_net), .ENCLKOS2(GND_net), 
            .ENCLKOS3(GND_net), .PLLCLK(GND_net), .PLLRST(GND_net), .PLLSTB(GND_net), 
            .PLLWE(GND_net), .PLLDATI0(GND_net), .PLLDATI1(GND_net), .PLLDATI2(GND_net), 
            .PLLDATI3(GND_net), .PLLDATI4(GND_net), .PLLDATI5(GND_net), 
            .PLLDATI6(GND_net), .PLLDATI7(GND_net), .PLLADDR0(GND_net), 
            .PLLADDR1(GND_net), .PLLADDR2(GND_net), .PLLADDR3(GND_net), 
            .PLLADDR4(GND_net), .CLKOP(CLKOP), .CLKOS(CLKOS), .CLKOS2(CLKOS2), 
            .LOCK(LOCK_c)) /* synthesis FREQUENCY_PIN_CLKOS2="200.000000", FREQUENCY_PIN_CLKOS="200.000000", FREQUENCY_PIN_CLKOP="50.000000", FREQUENCY_PIN_CLKI="50.000000", ICP_CURRENT="9", LPF_RESISTOR="8", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=3, LSE_LLINE=29, LSE_RLINE=36 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(29[9] 36[3])
    defparam PLLInst_0.CLKI_DIV = 1;
    defparam PLLInst_0.CLKFB_DIV = 1;
    defparam PLLInst_0.CLKOP_DIV = 12;
    defparam PLLInst_0.CLKOS_DIV = 3;
    defparam PLLInst_0.CLKOS2_DIV = 3;
    defparam PLLInst_0.CLKOS3_DIV = 1;
    defparam PLLInst_0.CLKOP_ENABLE = "ENABLED";
    defparam PLLInst_0.CLKOS_ENABLE = "ENABLED";
    defparam PLLInst_0.CLKOS2_ENABLE = "ENABLED";
    defparam PLLInst_0.CLKOS3_ENABLE = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_A0 = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_B0 = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_C0 = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_D0 = "DISABLED";
    defparam PLLInst_0.CLKOP_CPHASE = 11;
    defparam PLLInst_0.CLKOS_CPHASE = 3;
    defparam PLLInst_0.CLKOS2_CPHASE = 4;
    defparam PLLInst_0.CLKOS3_CPHASE = 0;
    defparam PLLInst_0.CLKOP_FPHASE = 0;
    defparam PLLInst_0.CLKOS_FPHASE = 1;
    defparam PLLInst_0.CLKOS2_FPHASE = 5;
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
    defparam PLLInst_0.DPHASE_SOURCE = "DISABLED";
    defparam PLLInst_0.PLLRST_ENA = "ENABLED";
    defparam PLLInst_0.MRST_ENA = "DISABLED";
    defparam PLLInst_0.DCRST_ENA = "DISABLED";
    defparam PLLInst_0.DDRST_ENA = "DISABLED";
    defparam PLLInst_0.INTFB_WAKE = "DISABLED";
    INV i391 (.A(CLKOS), .Z(Clock_N_51));
    
endmodule
