// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.14.0.75.2
// Netlist written on Sat Oct 03 23:01:29 2026
//
// Verilog Description of module ZenMainLogic
//

module ZenMainLogic (LOCK, RST, A, CLK, TS_N, RW_IN, SIZ0, SIZ1, 
            RW_OUT, TA_N, CLA_N, RAM_CS_N, RAM_OE_N, ROM_CS_N, ROM_OE_N, 
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
    output CLA_N /* synthesis DOUT="TRUE", SLEWRATE="FAST" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(12[14:19])
    output RAM_CS_N /* synthesis DOUT="TRUE", SLEWRATE="FAST" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(13[14:22])
    output RAM_OE_N /* synthesis DOUT="TRUE", SLEWRATE="FAST" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(14[14:22])
    output ROM_CS_N /* synthesis DOUT="TRUE", SLEWRATE="FAST" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(15[14:22])
    output ROM_OE_N /* synthesis DOUT="TRUE", SLEWRATE="FAST" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(16[14:22])
    output ROM_BUFFER_OE_N /* synthesis DOUT="TRUE", SLEWRATE="FAST" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(17[14:29])
    
    wire CLK_c /* synthesis is_clock=1, SET_AS_NETWORK=CLK_c */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(5[13:16])
    wire RW_OUT_c_c /* synthesis DOUT="TRUE", SLEWRATE="FAST" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(10[14:20])
    wire TA_N_c /* synthesis DOUT="TRUE", SLEWRATE="FAST" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(11[14:18])
    wire CLA_N_c /* synthesis DOUT="TRUE", SLEWRATE="FAST" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(12[14:19])
    wire RAM_CS_N_c /* synthesis DOUT="TRUE", SLEWRATE="FAST" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(13[14:22])
    wire RAM_OE_N_c /* synthesis DOUT="TRUE", SLEWRATE="FAST" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(14[14:22])
    wire ROM_BUFFER_OE_N_c /* synthesis DOUT="TRUE", SLEWRATE="FAST" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(15[14:22])
    wire ROM_OE_N_c /* synthesis DOUT="TRUE", SLEWRATE="FAST" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(16[14:22])
    wire EARLY_CLK /* synthesis is_clock=1, SET_AS_NETWORK=EARLY_CLK */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(27[7:16])
    wire CLKOS /* synthesis is_clock=1, SET_AS_NETWORK=CLKOS */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(28[7:12])
    wire CLKOS2 /* synthesis is_clock=1, SET_AS_NETWORK=CLKOS2 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(29[7:13])
    wire ROM_TA_N /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(50[7:15])
    wire VCC_net /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(68[24:31])
    wire RAM_CS_END /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenram_cs_ta.v(12[7:17])
    wire RAM_TA_END /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenram_cs_ta.v(13[7:17])
    wire RAM_LINE_CS_END /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenram_line_cs_ta.v(15[7:22])
    wire ROM_CS_END /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenrom_cs_ta.v(12[7:17])
    wire [7:0]shift_reg /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(76[15:24])
    wire Clock_N_51 /* synthesis is_inv_clock=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(81[9:18])
    wire [15:0]shift_reg_adj_177 /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(12[16:25])
    wire Clock_N_131 /* synthesis is_inv_clock=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(17[9:18])
    
    wire LOCK_c, RST_c, A_c_31, A_c_30, A_c_29, A_c_28, A_c_27, 
        A_c_26, A_c_25, A_c_24, A_c_23, TS_N_c, SIZ0_c, SIZ1_c, 
        RAM_LINE_TA_N, n444, ROM_ADDR_N_10, GND_net, int_RAM_CS_N, 
        loadTA_N_31, int_RAM_LINE_CS_N, CLK_c_enable_4, n319, state, 
        loadCS_N_162;
    wire [7:0]shift_reg_7__N_41;
    
    wire n682;
    wire [15:0]shift_reg_15__N_113;
    
    wire n680, n685, n681, n694, n684;
    
    VLO i1 (.Z(GND_net));
    VHI i19 (.Z(VCC_net));
    IB A_pad_28 (.I(A[28]), .O(A_c_28));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(4[22:23])
    LUT4 i146_2_lut_3_lut_4_lut (.A(SIZ0_c), .B(SIZ1_c), .C(TS_N_c), .D(n681), 
         .Z(n319)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(56[16:25])
    defparam i146_2_lut_3_lut_4_lut.init = 16'h0008;
    IB A_pad_29 (.I(A[29]), .O(A_c_29));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(4[22:23])
    IB A_pad_30 (.I(A[30]), .O(A_c_30));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(4[22:23])
    LUT4 i2_3_lut_4_lut (.A(SIZ0_c), .B(SIZ1_c), .C(n681), .D(TS_N_c), 
         .Z(loadTA_N_31)) /* synthesis lut_function=(A (B+(C+(D)))+!A (C+(D))) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(56[16:25])
    defparam i2_3_lut_4_lut.init = 16'hfff8;
    OB ROM_CS_N_pad (.I(ROM_BUFFER_OE_N_c), .O(ROM_CS_N));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(15[14:22])
    GSR GSR_INST (.GSR(VCC_net));
    OB RAM_OE_N_pad (.I(RAM_OE_N_c), .O(RAM_OE_N));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(14[14:22])
    OB RAM_CS_N_pad (.I(RAM_CS_N_c), .O(RAM_CS_N));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(13[14:22])
    OB CLA_N_pad (.I(CLA_N_c), .O(CLA_N));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(12[14:19])
    LUT4 i256_3_lut_4_lut (.A(n681), .B(n685), .C(TS_N_c), .D(n684), 
         .Z(n444)) /* synthesis lut_function=(A+((C (D))+!B)) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(85[11:27])
    defparam i256_3_lut_4_lut.init = 16'hfbbb;
    IB A_pad_31 (.I(A[31]), .O(A_c_31));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(4[22:23])
    IB RST_pad (.I(RST), .O(RST_c));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(3[13:16])
    OB ROM_BUFFER_OE_N_pad (.I(ROM_BUFFER_OE_N_c), .O(ROM_BUFFER_OE_N));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(17[14:29])
    OB TA_N_pad (.I(TA_N_c), .O(TA_N));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(11[14:18])
    IB SIZ0_pad (.I(SIZ0), .O(SIZ0_c));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(8[13:17])
    IB RW_OUT_c_pad (.I(RW_IN), .O(RW_OUT_c_c));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(7[13:18])
    IB TS_N_pad (.I(TS_N), .O(TS_N_c));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(6[13:17])
    IB CLK_pad (.I(CLK), .O(CLK_c));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(5[13:16])
    IB A_pad_23 (.I(A[23]), .O(A_c_23));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(4[22:23])
    IB A_pad_24 (.I(A[24]), .O(A_c_24));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(4[22:23])
    IB A_pad_25 (.I(A[25]), .O(A_c_25));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(4[22:23])
    IB A_pad_26 (.I(A[26]), .O(A_c_26));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(4[22:23])
    IB A_pad_27 (.I(A[27]), .O(A_c_27));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(4[22:23])
    OB RW_OUT_pad (.I(RW_OUT_c_c), .O(RW_OUT));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(10[14:20])
    OB LOCK_pad (.I(LOCK_c), .O(LOCK));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(2[14:18])
    ZenPLL u_ZenPLL (.Clock_N_131(Clock_N_131), .CLKOS2(CLKOS2), .CLK_c(CLK_c), 
           .RST_c(RST_c), .CLKOS(CLKOS), .EARLY_CLK(EARLY_CLK), .LOCK_c(LOCK_c), 
           .GND_net(GND_net), .Clock_N_51(Clock_N_51)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(31[9] 39[3])
    LUT4 RAM_CS_N_I_0_2_lut (.A(RAM_CS_N_c), .B(RW_OUT_c_c), .Z(RAM_OE_N_c)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(68[20:35])
    defparam RAM_CS_N_I_0_2_lut.init = 16'hbbbb;
    LUT4 INT_RAM_LINE_CS_N_I_0_4_lut (.A(int_RAM_LINE_CS_N), .B(int_RAM_CS_N), 
         .C(RAM_LINE_CS_END), .D(RAM_CS_END), .Z(RAM_CS_N_c)) /* synthesis lut_function=(A (B+(D))+!A (B (C)+!B (C (D)))) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(54[20:50])
    defparam INT_RAM_LINE_CS_N_I_0_4_lut.init = 16'hfac8;
    OB ROM_OE_N_pad (.I(ROM_OE_N_c), .O(ROM_OE_N));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(16[14:22])
    LUT4 i2_4_lut (.A(int_RAM_CS_N), .B(ROM_TA_N), .C(RAM_TA_END), .D(RAM_LINE_TA_N), 
         .Z(TA_N_c)) /* synthesis lut_function=(A (B (D))+!A (B (C (D)))) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(53[16:47])
    defparam i2_4_lut.init = 16'hc800;
    TSALL TSALL_INST (.TSALL(GND_net));
    LUT4 SIZ0_I_0_2_lut_rep_17 (.A(SIZ0_c), .B(SIZ1_c), .Z(n685)) /* synthesis lut_function=(A (B)) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(56[16:25])
    defparam SIZ0_I_0_2_lut_rep_17.init = 16'h8888;
    ZenRAM_Line_CS_TA u_RAM_Line_CS_TA (.CLK_c(CLK_c), .CLK_c_enable_4(CLK_c_enable_4), 
            .int_RAM_LINE_CS_N(int_RAM_LINE_CS_N), .n319(n319), .n694(n694), 
            .CLA_N_c(CLA_N_c), .RAM_LINE_TA_N(RAM_LINE_TA_N), .n684(n684), 
            .TS_N_c(TS_N_c), .n444(n444), .n680(n680), .n682(n682), 
            .n685(n685), .n681(n681), .CLKOS(CLKOS), .Clock_N_51(Clock_N_51), 
            .\shift_reg_15__N_113[0] (shift_reg_15__N_113[0]), .RAM_LINE_CS_END(RAM_LINE_CS_END), 
            .\shift_reg_15__N_113[14] (shift_reg_15__N_113[14]), .\shift_reg[13] (shift_reg_adj_177[13]), 
            .\shift_reg_15__N_113[10] (shift_reg_15__N_113[10]), .\shift_reg[9] (shift_reg_adj_177[9]), 
            .\shift_reg_15__N_113[6] (shift_reg_15__N_113[6]), .\shift_reg[5] (shift_reg_adj_177[5]), 
            .\shift_reg_15__N_113[2] (shift_reg_15__N_113[2]), .\shift_reg[1] (shift_reg_adj_177[1])) /* synthesis syn_module_defined=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(82[20] 91[3])
    ZenRAM_CS_TA u_RAM_CS_TA (.int_RAM_CS_N(int_RAM_CS_N), .EARLY_CLK(EARLY_CLK), 
            .loadTA_N_31(loadTA_N_31), .CLKOS(CLKOS), .Clock_N_51(Clock_N_51), 
            .RAM_TA_END(RAM_TA_END), .\shift_reg_7__N_41[0] (shift_reg_7__N_41[0]), 
            .RAM_CS_END(RAM_CS_END), .\shift_reg_7__N_41[5] (shift_reg_7__N_41[5]), 
            .\shift_reg[4] (shift_reg[4])) /* synthesis syn_module_defined=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(70[15] 78[3])
    LUT4 i459_3_lut_4_lut (.A(n681), .B(n685), .C(TS_N_c), .D(n682), 
         .Z(CLK_c_enable_4)) /* synthesis lut_function=(!(A+!(B ((D)+!C)))) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(85[11:27])
    defparam i459_3_lut_4_lut.init = 16'h4404;
    ZenROM_CS_TA u_ROM_CS_TA (.RW_OUT_c_c(RW_OUT_c_c), .\shift_reg_15__N_113[0] (shift_reg_15__N_113[0]), 
            .\shift_reg[5] (shift_reg_adj_177[5]), .\shift_reg_15__N_113[6] (shift_reg_15__N_113[6]), 
            .CLK_c(CLK_c), .loadCS_N_162(loadCS_N_162), .ROM_ADDR_N_10(ROM_ADDR_N_10), 
            .state(state), .\shift_reg[9] (shift_reg_adj_177[9]), .\shift_reg_15__N_113[10] (shift_reg_15__N_113[10]), 
            .ROM_CS_END(ROM_CS_END), .ROM_BUFFER_OE_N_c(ROM_BUFFER_OE_N_c), 
            .\shift_reg[13] (shift_reg_adj_177[13]), .\shift_reg_15__N_113[14] (shift_reg_15__N_113[14]), 
            .TS_N_c(TS_N_c), .\shift_reg[1] (shift_reg_adj_177[1]), .\shift_reg_15__N_113[2] (shift_reg_15__N_113[2]), 
            .\shift_reg_7__N_41[0] (shift_reg_7__N_41[0]), .\shift_reg[4] (shift_reg[4]), 
            .\shift_reg_7__N_41[5] (shift_reg_7__N_41[5]), .ROM_OE_N_c(ROM_OE_N_c), 
            .CLKOS2(CLKOS2), .Clock_N_131(Clock_N_131), .ROM_TA_N(ROM_TA_N)) /* synthesis syn_module_defined=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(97[15] 105[3])
    LUT4 m1_lut (.Z(n694)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    ZenAddressDecode u_decode (.A_c_28(A_c_28), .A_c_27(A_c_27), .n681(n681), 
            .n685(n685), .n680(n680), .ROM_CS_END(ROM_CS_END), .ROM_ADDR_N_10(ROM_ADDR_N_10), 
            .TS_N_c(TS_N_c), .state(state), .loadCS_N_162(loadCS_N_162), 
            .A_c_25(A_c_25), .A_c_24(A_c_24), .A_c_30(A_c_30), .A_c_23(A_c_23), 
            .A_c_29(A_c_29), .A_c_26(A_c_26), .A_c_31(A_c_31)) /* synthesis syn_module_defined=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(58[22] 62[3])
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    IB SIZ1_pad (.I(SIZ1), .O(SIZ1_c));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(9[13:17])
    
endmodule
//
// Verilog Description of module ZenPLL
//

module ZenPLL (Clock_N_131, CLKOS2, CLK_c, RST_c, CLKOS, EARLY_CLK, 
            LOCK_c, GND_net, Clock_N_51) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    output Clock_N_131;
    output CLKOS2;
    input CLK_c;
    input RST_c;
    output CLKOS;
    output EARLY_CLK;
    output LOCK_c;
    input GND_net;
    output Clock_N_51;
    
    wire Clock_N_131 /* synthesis is_inv_clock=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(17[9:18])
    wire CLKOS2 /* synthesis is_clock=1, SET_AS_NETWORK=CLKOS2 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(29[7:13])
    wire CLK_c /* synthesis is_clock=1, SET_AS_NETWORK=CLK_c */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(5[13:16])
    wire CLKOP /* synthesis is_clock=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenpll.v(11[17:22])
    wire CLKOS /* synthesis is_clock=1, SET_AS_NETWORK=CLKOS */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(28[7:12])
    wire EARLY_CLK /* synthesis is_clock=1, SET_AS_NETWORK=EARLY_CLK */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(27[7:16])
    wire Clock_N_51 /* synthesis is_inv_clock=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(81[9:18])
    
    INV i468 (.A(CLKOS2), .Z(Clock_N_131));
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
            .CLKOS3(EARLY_CLK), .LOCK(LOCK_c)) /* synthesis FREQUENCY_PIN_CLKOS3="50.000000", FREQUENCY_PIN_CLKOS2="200.000000", FREQUENCY_PIN_CLKOS="200.000000", FREQUENCY_PIN_CLKOP="50.000000", FREQUENCY_PIN_CLKI="50.000000", ICP_CURRENT="9", LPF_RESISTOR="8", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=3, LSE_LLINE=31, LSE_RLINE=39 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(31[9] 39[3])
    defparam PLLInst_0.CLKI_DIV = 1;
    defparam PLLInst_0.CLKFB_DIV = 1;
    defparam PLLInst_0.CLKOP_DIV = 12;
    defparam PLLInst_0.CLKOS_DIV = 3;
    defparam PLLInst_0.CLKOS2_DIV = 3;
    defparam PLLInst_0.CLKOS3_DIV = 12;
    defparam PLLInst_0.CLKOP_ENABLE = "ENABLED";
    defparam PLLInst_0.CLKOS_ENABLE = "ENABLED";
    defparam PLLInst_0.CLKOS2_ENABLE = "ENABLED";
    defparam PLLInst_0.CLKOS3_ENABLE = "ENABLED";
    defparam PLLInst_0.VCO_BYPASS_A0 = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_B0 = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_C0 = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_D0 = "DISABLED";
    defparam PLLInst_0.CLKOP_CPHASE = 11;
    defparam PLLInst_0.CLKOS_CPHASE = 3;
    defparam PLLInst_0.CLKOS2_CPHASE = 4;
    defparam PLLInst_0.CLKOS3_CPHASE = 20;
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
    INV i469 (.A(CLKOS), .Z(Clock_N_51));
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module ZenRAM_Line_CS_TA
//

module ZenRAM_Line_CS_TA (CLK_c, CLK_c_enable_4, int_RAM_LINE_CS_N, n319, 
            n694, CLA_N_c, RAM_LINE_TA_N, n684, TS_N_c, n444, n680, 
            n682, n685, n681, CLKOS, Clock_N_51, \shift_reg_15__N_113[0] , 
            RAM_LINE_CS_END, \shift_reg_15__N_113[14] , \shift_reg[13] , 
            \shift_reg_15__N_113[10] , \shift_reg[9] , \shift_reg_15__N_113[6] , 
            \shift_reg[5] , \shift_reg_15__N_113[2] , \shift_reg[1] ) /* synthesis syn_module_defined=1 */ ;
    input CLK_c;
    input CLK_c_enable_4;
    output int_RAM_LINE_CS_N;
    input n319;
    input n694;
    output CLA_N_c;
    output RAM_LINE_TA_N;
    output n684;
    input TS_N_c;
    input n444;
    input n680;
    output n682;
    input n685;
    input n681;
    input CLKOS;
    input Clock_N_51;
    output \shift_reg_15__N_113[0] ;
    output RAM_LINE_CS_END;
    input \shift_reg_15__N_113[14] ;
    output \shift_reg[13] ;
    input \shift_reg_15__N_113[10] ;
    output \shift_reg[9] ;
    input \shift_reg_15__N_113[6] ;
    output \shift_reg[5] ;
    input \shift_reg_15__N_113[2] ;
    output \shift_reg[1] ;
    
    wire CLK_c /* synthesis is_clock=1, SET_AS_NETWORK=CLK_c */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(5[13:16])
    wire CLA_N_c /* synthesis DOUT="TRUE", SLEWRATE="FAST" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(12[14:19])
    wire [15:0]shift_reg /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenram_line_cs_ta.v(16[7:22])
    wire CLKOS /* synthesis is_clock=1, SET_AS_NETWORK=CLKOS */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(28[7:12])
    wire Clock_N_51 /* synthesis is_inv_clock=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(81[9:18])
    wire RAM_LINE_CS_END /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenram_line_cs_ta.v(15[7:22])
    wire \shift_reg[13]  /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(12[16:25])
    wire \shift_reg[9]  /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(12[16:25])
    wire \shift_reg[5]  /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(12[16:25])
    wire \shift_reg[1]  /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(12[16:25])
    wire [2:0]state;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenram_line_cs_ta.v(43[12:17])
    
    wire n418, loadCS, loadCS_N_87;
    wire [2:0]state_2__N_56;
    
    wire loadTA, loadTA_N_83, int_CLA_N_N_91, CLK_c_enable_2, n687;
    
    LUT4 i2_3_lut_4_lut_2_lut_3_lut_3_lut (.A(state[1]), .B(state[0]), .C(state[2]), 
         .Z(n418)) /* synthesis lut_function=(((C)+!B)+!A) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenram_line_cs_ta.v(57[9:14])
    defparam i2_3_lut_4_lut_2_lut_3_lut_3_lut.init = 16'hf7f7;
    FD1S3AX loadCS_41 (.D(loadCS_N_87), .CK(CLK_c), .Q(loadCS)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=3, LSE_LLINE=82, LSE_RLINE=91 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenram_line_cs_ta.v(44[9] 85[5])
    defparam loadCS_41.GSR = "ENABLED";
    FD1P3AX state_i0_i1 (.D(state_2__N_56[1]), .SP(CLK_c_enable_4), .CK(CLK_c), 
            .Q(state[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=3, LSE_LLINE=82, LSE_RLINE=91 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenram_line_cs_ta.v(44[9] 85[5])
    defparam state_i0_i1.GSR = "ENABLED";
    FD1S3AX loadTA_42 (.D(loadTA_N_83), .CK(CLK_c), .Q(loadTA)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=3, LSE_LLINE=82, LSE_RLINE=91 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenram_line_cs_ta.v(44[9] 85[5])
    defparam loadTA_42.GSR = "ENABLED";
    FD1S3AX int_CLA_N_44 (.D(int_CLA_N_N_91), .CK(CLK_c), .Q(CLA_N_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=3, LSE_LLINE=82, LSE_RLINE=91 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenram_line_cs_ta.v(44[9] 85[5])
    defparam int_CLA_N_44.GSR = "ENABLED";
    FD1P3IX int_RAM_LINE_CS_N_43 (.D(n694), .SP(CLK_c_enable_2), .CD(n319), 
            .CK(CLK_c), .Q(int_RAM_LINE_CS_N)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=3, LSE_LLINE=82, LSE_RLINE=91 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenram_line_cs_ta.v(44[9] 85[5])
    defparam int_RAM_LINE_CS_N_43.GSR = "ENABLED";
    LUT4 int_RAM_LINE_CS_N_I_0_46_2_lut (.A(int_RAM_LINE_CS_N), .B(shift_reg[15]), 
         .Z(RAM_LINE_TA_N)) /* synthesis lut_function=(A+(B)) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenram_line_cs_ta.v(22[25:58])
    defparam int_RAM_LINE_CS_N_I_0_46_2_lut.init = 16'heeee;
    LUT4 i1_2_lut_rep_19 (.A(state[1]), .B(state[0]), .Z(n687)) /* synthesis lut_function=(A+(B)) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenram_line_cs_ta.v(57[9:14])
    defparam i1_2_lut_rep_19.init = 16'heeee;
    LUT4 loadCS_keep_I_0_53_3_lut_4_lut (.A(n684), .B(TS_N_c), .C(n444), 
         .D(loadCS), .Z(loadCS_N_87)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenram_line_cs_ta.v(56[9] 82[7])
    defparam loadCS_keep_I_0_53_3_lut_4_lut.init = 16'hf404;
    LUT4 loadTA_keep_I_0_51_3_lut_4_lut (.A(n684), .B(TS_N_c), .C(n444), 
         .D(loadTA), .Z(loadTA_N_83)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenram_line_cs_ta.v(56[9] 82[7])
    defparam loadTA_keep_I_0_51_3_lut_4_lut.init = 16'hf404;
    LUT4 int_CLA_N_keep_I_0_57_4_lut (.A(n418), .B(CLA_N_c), .C(TS_N_c), 
         .D(n680), .Z(int_CLA_N_N_91)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C+!(D))+!B (C (D)))) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenram_line_cs_ta.v(46[3] 83[6])
    defparam int_CLA_N_keep_I_0_57_4_lut.init = 16'hd0cc;
    LUT4 i1_2_lut_rep_14_3_lut (.A(state[1]), .B(state[0]), .C(state[2]), 
         .Z(n682)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenram_line_cs_ta.v(57[9:14])
    defparam i1_2_lut_rep_14_3_lut.init = 16'hfefe;
    LUT4 i2_2_lut_3_lut_4_lut (.A(state[2]), .B(n687), .C(n685), .D(n681), 
         .Z(CLK_c_enable_2)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenram_line_cs_ta.v(58[10:23])
    defparam i2_2_lut_3_lut_4_lut.init = 16'h0020;
    LUT4 i457_3_lut (.A(state[1]), .B(TS_N_c), .C(state[0]), .Z(state_2__N_56[0])) /* synthesis lut_function=(!(A (B (C))+!A (B))) */ ;
    defparam i457_3_lut.init = 16'h3b3b;
    LUT4 i1_3_lut_4_lut_3_lut (.A(state[1]), .B(state[0]), .C(TS_N_c), 
         .Z(state_2__N_56[1])) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C)))) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenram_line_cs_ta.v(57[9:14])
    defparam i1_3_lut_4_lut_3_lut.init = 16'h6060;
    LUT4 i1_2_lut_rep_16_3_lut (.A(state[1]), .B(state[0]), .C(state[2]), 
         .Z(n684)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenram_line_cs_ta.v(57[9:14])
    defparam i1_2_lut_rep_16_3_lut.init = 16'hefef;
    LUT4 state_2__bdd_4_lut_4_lut (.A(state[1]), .B(state[0]), .C(TS_N_c), 
         .D(state[2]), .Z(state_2__N_56[2])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C (D)))+!A !(B (C (D))))) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenram_line_cs_ta.v(57[9:14])
    defparam state_2__bdd_4_lut_4_lut.init = 16'h6080;
    FD1P3AX state_i0_i0 (.D(state_2__N_56[0]), .SP(CLK_c_enable_4), .CK(CLK_c), 
            .Q(state[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=3, LSE_LLINE=82, LSE_RLINE=91 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenram_line_cs_ta.v(44[9] 85[5])
    defparam state_i0_i0.GSR = "ENABLED";
    FD1P3AX state_i0_i2 (.D(state_2__N_56[2]), .SP(CLK_c_enable_4), .CK(CLK_c), 
            .Q(state[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=3, LSE_LLINE=82, LSE_RLINE=91 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenram_line_cs_ta.v(44[9] 85[5])
    defparam state_i0_i2.GSR = "ENABLED";
    PISO_Long_ShiftReg_U1 u_SR_LINE_TA (.CLKOS(CLKOS), .Clock_N_51(Clock_N_51), 
            .loadTA_keep(loadTA), .RAM_LINE_TA_END(shift_reg[15])) /* synthesis syn_module_defined=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenram_line_cs_ta.v(34[21] 42[3])
    PISO_Long_ShiftReg_U2 u_SR_LINE_RAMS_CS (.CLKOS(CLKOS), .\shift_reg_15__N_113[0] (\shift_reg_15__N_113[0] ), 
            .Clock_N_51(Clock_N_51), .loadCS_keep(loadCS), .RAM_LINE_CS_END(RAM_LINE_CS_END), 
            .\shift_reg_15__N_113[14] (\shift_reg_15__N_113[14] ), .\shift_reg[13] (\shift_reg[13] ), 
            .\shift_reg_15__N_113[10] (\shift_reg_15__N_113[10] ), .\shift_reg[9] (\shift_reg[9] ), 
            .\shift_reg_15__N_113[6] (\shift_reg_15__N_113[6] ), .\shift_reg[5] (\shift_reg[5] ), 
            .\shift_reg_15__N_113[2] (\shift_reg_15__N_113[2] ), .\shift_reg[1] (\shift_reg[1] )) /* synthesis syn_module_defined=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenram_line_cs_ta.v(25[21] 33[3])
    
endmodule
//
// Verilog Description of module PISO_Long_ShiftReg_U1
//

module PISO_Long_ShiftReg_U1 (CLKOS, Clock_N_51, loadTA_keep, RAM_LINE_TA_END) /* synthesis syn_module_defined=1 */ ;
    input CLKOS;
    input Clock_N_51;
    input loadTA_keep;
    output RAM_LINE_TA_END;
    
    wire [15:0]shift_reg /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(12[16:25])
    wire CLKOS /* synthesis is_clock=1, SET_AS_NETWORK=CLKOS */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(28[7:12])
    wire Clock_N_51 /* synthesis is_inv_clock=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(81[9:18])
    wire RAM_LINE_TA_END /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenram_line_cs_ta.v(16[7:22])
    wire [15:0]shift_reg_15__N_113;
    
    wire load_half;
    
    FD1S3AX shift_reg_i0 (.D(shift_reg_15__N_113[0]), .CK(CLKOS), .Q(shift_reg[0])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=9, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=34, LSE_RLINE=42 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(47[12] 60[8])
    defparam shift_reg_i0.GSR = "ENABLED";
    FD1S3AY load_registered_14 (.D(load_half), .CK(CLKOS), .Q(shift_reg_15__N_113[0])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=9, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=34, LSE_RLINE=42 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(36[12] 41[8])
    defparam load_registered_14.GSR = "ENABLED";
    FD1S3AY load_half_13 (.D(loadTA_keep), .CK(Clock_N_51), .Q(load_half)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=9, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=34, LSE_RLINE=42 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(19[12] 24[8])
    defparam load_half_13.GSR = "ENABLED";
    FD1S3IX shift_reg_i15 (.D(shift_reg[14]), .CK(CLKOS), .CD(shift_reg_15__N_113[0]), 
            .Q(RAM_LINE_TA_END)) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=9, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=34, LSE_RLINE=42 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(47[12] 60[8])
    defparam shift_reg_i15.GSR = "ENABLED";
    FD1S3IX shift_reg_i14 (.D(shift_reg[13]), .CK(CLKOS), .CD(shift_reg_15__N_113[0]), 
            .Q(shift_reg[14])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=9, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=34, LSE_RLINE=42 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(47[12] 60[8])
    defparam shift_reg_i14.GSR = "ENABLED";
    FD1S3IX shift_reg_i13 (.D(shift_reg[12]), .CK(CLKOS), .CD(shift_reg_15__N_113[0]), 
            .Q(shift_reg[13])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=9, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=34, LSE_RLINE=42 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(47[12] 60[8])
    defparam shift_reg_i13.GSR = "ENABLED";
    FD1S3IX shift_reg_i12 (.D(shift_reg[11]), .CK(CLKOS), .CD(shift_reg_15__N_113[0]), 
            .Q(shift_reg[12])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=9, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=34, LSE_RLINE=42 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(47[12] 60[8])
    defparam shift_reg_i12.GSR = "ENABLED";
    FD1S3IX shift_reg_i11 (.D(shift_reg[10]), .CK(CLKOS), .CD(shift_reg_15__N_113[0]), 
            .Q(shift_reg[11])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=9, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=34, LSE_RLINE=42 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(47[12] 60[8])
    defparam shift_reg_i11.GSR = "ENABLED";
    FD1S3IX shift_reg_i10 (.D(shift_reg[9]), .CK(CLKOS), .CD(shift_reg_15__N_113[0]), 
            .Q(shift_reg[10])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=9, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=34, LSE_RLINE=42 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(47[12] 60[8])
    defparam shift_reg_i10.GSR = "ENABLED";
    FD1S3IX shift_reg_i9 (.D(shift_reg[8]), .CK(CLKOS), .CD(shift_reg_15__N_113[0]), 
            .Q(shift_reg[9])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=9, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=34, LSE_RLINE=42 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(47[12] 60[8])
    defparam shift_reg_i9.GSR = "ENABLED";
    FD1S3IX shift_reg_i8 (.D(shift_reg[7]), .CK(CLKOS), .CD(shift_reg_15__N_113[0]), 
            .Q(shift_reg[8])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=9, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=34, LSE_RLINE=42 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(47[12] 60[8])
    defparam shift_reg_i8.GSR = "ENABLED";
    FD1S3IX shift_reg_i7 (.D(shift_reg[6]), .CK(CLKOS), .CD(shift_reg_15__N_113[0]), 
            .Q(shift_reg[7])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=9, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=34, LSE_RLINE=42 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(47[12] 60[8])
    defparam shift_reg_i7.GSR = "ENABLED";
    FD1S3IX shift_reg_i6 (.D(shift_reg[5]), .CK(CLKOS), .CD(shift_reg_15__N_113[0]), 
            .Q(shift_reg[6])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=9, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=34, LSE_RLINE=42 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(47[12] 60[8])
    defparam shift_reg_i6.GSR = "ENABLED";
    FD1S3IX shift_reg_i5 (.D(shift_reg[4]), .CK(CLKOS), .CD(shift_reg_15__N_113[0]), 
            .Q(shift_reg[5])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=9, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=34, LSE_RLINE=42 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(47[12] 60[8])
    defparam shift_reg_i5.GSR = "ENABLED";
    FD1S3IX shift_reg_i4 (.D(shift_reg[3]), .CK(CLKOS), .CD(shift_reg_15__N_113[0]), 
            .Q(shift_reg[4])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=9, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=34, LSE_RLINE=42 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(47[12] 60[8])
    defparam shift_reg_i4.GSR = "ENABLED";
    FD1S3IX shift_reg_i3 (.D(shift_reg[2]), .CK(CLKOS), .CD(shift_reg_15__N_113[0]), 
            .Q(shift_reg[3])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=9, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=34, LSE_RLINE=42 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(47[12] 60[8])
    defparam shift_reg_i3.GSR = "ENABLED";
    FD1S3JX shift_reg_i2 (.D(shift_reg[1]), .CK(CLKOS), .PD(shift_reg_15__N_113[0]), 
            .Q(shift_reg[2])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=9, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=34, LSE_RLINE=42 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(47[12] 60[8])
    defparam shift_reg_i2.GSR = "ENABLED";
    FD1S3JX shift_reg_i1 (.D(shift_reg[0]), .CK(CLKOS), .PD(shift_reg_15__N_113[0]), 
            .Q(shift_reg[1])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=9, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=34, LSE_RLINE=42 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(47[12] 60[8])
    defparam shift_reg_i1.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module PISO_Long_ShiftReg_U2
//

module PISO_Long_ShiftReg_U2 (CLKOS, \shift_reg_15__N_113[0] , Clock_N_51, 
            loadCS_keep, RAM_LINE_CS_END, \shift_reg_15__N_113[14] , \shift_reg[13] , 
            \shift_reg_15__N_113[10] , \shift_reg[9] , \shift_reg_15__N_113[6] , 
            \shift_reg[5] , \shift_reg_15__N_113[2] , \shift_reg[1] ) /* synthesis syn_module_defined=1 */ ;
    input CLKOS;
    output \shift_reg_15__N_113[0] ;
    input Clock_N_51;
    input loadCS_keep;
    output RAM_LINE_CS_END;
    input \shift_reg_15__N_113[14] ;
    output \shift_reg[13] ;
    input \shift_reg_15__N_113[10] ;
    output \shift_reg[9] ;
    input \shift_reg_15__N_113[6] ;
    output \shift_reg[5] ;
    input \shift_reg_15__N_113[2] ;
    output \shift_reg[1] ;
    
    wire [15:0]shift_reg /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(12[16:25])
    wire CLKOS /* synthesis is_clock=1, SET_AS_NETWORK=CLKOS */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(28[7:12])
    wire Clock_N_51 /* synthesis is_inv_clock=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(81[9:18])
    wire RAM_LINE_CS_END /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenram_line_cs_ta.v(15[7:22])
    wire \shift_reg[13]  /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(12[16:25])
    wire \shift_reg[9]  /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(12[16:25])
    wire \shift_reg[5]  /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(12[16:25])
    wire \shift_reg[1]  /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(12[16:25])
    
    wire load_half;
    
    FD1S3AX shift_reg_i0 (.D(\shift_reg_15__N_113[0] ), .CK(CLKOS), .Q(shift_reg[0])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=9, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=25, LSE_RLINE=33 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(47[12] 60[8])
    defparam shift_reg_i0.GSR = "ENABLED";
    FD1S3AY load_registered_14 (.D(load_half), .CK(CLKOS), .Q(\shift_reg_15__N_113[0] )) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=9, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=25, LSE_RLINE=33 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(36[12] 41[8])
    defparam load_registered_14.GSR = "ENABLED";
    FD1S3AY load_half_13 (.D(loadCS_keep), .CK(Clock_N_51), .Q(load_half)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=9, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=25, LSE_RLINE=33 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(19[12] 24[8])
    defparam load_half_13.GSR = "ENABLED";
    FD1S3IX shift_reg_i15 (.D(shift_reg[14]), .CK(CLKOS), .CD(\shift_reg_15__N_113[0] ), 
            .Q(RAM_LINE_CS_END)) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=9, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=25, LSE_RLINE=33 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(47[12] 60[8])
    defparam shift_reg_i15.GSR = "ENABLED";
    FD1S3AX shift_reg_i14 (.D(\shift_reg_15__N_113[14] ), .CK(CLKOS), .Q(shift_reg[14])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=9, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=25, LSE_RLINE=33 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(47[12] 60[8])
    defparam shift_reg_i14.GSR = "ENABLED";
    FD1S3IX shift_reg_i13 (.D(shift_reg[12]), .CK(CLKOS), .CD(\shift_reg_15__N_113[0] ), 
            .Q(\shift_reg[13] )) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=9, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=25, LSE_RLINE=33 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(47[12] 60[8])
    defparam shift_reg_i13.GSR = "ENABLED";
    FD1S3IX shift_reg_i12 (.D(shift_reg[11]), .CK(CLKOS), .CD(\shift_reg_15__N_113[0] ), 
            .Q(shift_reg[12])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=9, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=25, LSE_RLINE=33 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(47[12] 60[8])
    defparam shift_reg_i12.GSR = "ENABLED";
    FD1S3IX shift_reg_i11 (.D(shift_reg[10]), .CK(CLKOS), .CD(\shift_reg_15__N_113[0] ), 
            .Q(shift_reg[11])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=9, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=25, LSE_RLINE=33 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(47[12] 60[8])
    defparam shift_reg_i11.GSR = "ENABLED";
    FD1S3AX shift_reg_i10 (.D(\shift_reg_15__N_113[10] ), .CK(CLKOS), .Q(shift_reg[10])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=9, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=25, LSE_RLINE=33 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(47[12] 60[8])
    defparam shift_reg_i10.GSR = "ENABLED";
    FD1S3IX shift_reg_i9 (.D(shift_reg[8]), .CK(CLKOS), .CD(\shift_reg_15__N_113[0] ), 
            .Q(\shift_reg[9] )) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=9, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=25, LSE_RLINE=33 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(47[12] 60[8])
    defparam shift_reg_i9.GSR = "ENABLED";
    FD1S3IX shift_reg_i8 (.D(shift_reg[7]), .CK(CLKOS), .CD(\shift_reg_15__N_113[0] ), 
            .Q(shift_reg[8])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=9, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=25, LSE_RLINE=33 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(47[12] 60[8])
    defparam shift_reg_i8.GSR = "ENABLED";
    FD1S3IX shift_reg_i7 (.D(shift_reg[6]), .CK(CLKOS), .CD(\shift_reg_15__N_113[0] ), 
            .Q(shift_reg[7])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=9, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=25, LSE_RLINE=33 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(47[12] 60[8])
    defparam shift_reg_i7.GSR = "ENABLED";
    FD1S3AX shift_reg_i6 (.D(\shift_reg_15__N_113[6] ), .CK(CLKOS), .Q(shift_reg[6])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=9, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=25, LSE_RLINE=33 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(47[12] 60[8])
    defparam shift_reg_i6.GSR = "ENABLED";
    FD1S3IX shift_reg_i5 (.D(shift_reg[4]), .CK(CLKOS), .CD(\shift_reg_15__N_113[0] ), 
            .Q(\shift_reg[5] )) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=9, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=25, LSE_RLINE=33 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(47[12] 60[8])
    defparam shift_reg_i5.GSR = "ENABLED";
    FD1S3IX shift_reg_i4 (.D(shift_reg[3]), .CK(CLKOS), .CD(\shift_reg_15__N_113[0] ), 
            .Q(shift_reg[4])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=9, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=25, LSE_RLINE=33 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(47[12] 60[8])
    defparam shift_reg_i4.GSR = "ENABLED";
    FD1S3IX shift_reg_i3 (.D(shift_reg[2]), .CK(CLKOS), .CD(\shift_reg_15__N_113[0] ), 
            .Q(shift_reg[3])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=9, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=25, LSE_RLINE=33 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(47[12] 60[8])
    defparam shift_reg_i3.GSR = "ENABLED";
    FD1S3AX shift_reg_i2 (.D(\shift_reg_15__N_113[2] ), .CK(CLKOS), .Q(shift_reg[2])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=9, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=25, LSE_RLINE=33 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(47[12] 60[8])
    defparam shift_reg_i2.GSR = "ENABLED";
    FD1S3JX shift_reg_i1 (.D(shift_reg[0]), .CK(CLKOS), .PD(\shift_reg_15__N_113[0] ), 
            .Q(\shift_reg[1] )) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=9, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=25, LSE_RLINE=33 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(47[12] 60[8])
    defparam shift_reg_i1.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module ZenRAM_CS_TA
//

module ZenRAM_CS_TA (int_RAM_CS_N, EARLY_CLK, loadTA_N_31, CLKOS, Clock_N_51, 
            RAM_TA_END, \shift_reg_7__N_41[0] , RAM_CS_END, \shift_reg_7__N_41[5] , 
            \shift_reg[4] ) /* synthesis syn_module_defined=1 */ ;
    output int_RAM_CS_N;
    input EARLY_CLK;
    input loadTA_N_31;
    input CLKOS;
    input Clock_N_51;
    output RAM_TA_END;
    output \shift_reg_7__N_41[0] ;
    output RAM_CS_END;
    input \shift_reg_7__N_41[5] ;
    output \shift_reg[4] ;
    
    wire EARLY_CLK /* synthesis is_clock=1, SET_AS_NETWORK=EARLY_CLK */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(27[7:16])
    wire CLKOS /* synthesis is_clock=1, SET_AS_NETWORK=CLKOS */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(28[7:12])
    wire Clock_N_51 /* synthesis is_inv_clock=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(81[9:18])
    wire RAM_TA_END /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenram_cs_ta.v(13[7:17])
    wire RAM_CS_END /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenram_cs_ta.v(12[7:17])
    wire \shift_reg[4]  /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(76[15:24])
    
    wire loadTA;
    
    FD1S3AY int_RAM_CS_N_17 (.D(loadTA_N_31), .CK(EARLY_CLK), .Q(int_RAM_CS_N)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=3, LSE_LLINE=70, LSE_RLINE=78 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenram_cs_ta.v(41[9] 62[5])
    defparam int_RAM_CS_N_17.GSR = "ENABLED";
    FD1S3AX loadTA_16 (.D(loadTA_N_31), .CK(EARLY_CLK), .Q(loadTA)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=3, LSE_LLINE=70, LSE_RLINE=78 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenram_cs_ta.v(41[9] 62[5])
    defparam loadTA_16.GSR = "ENABLED";
    PISO_Short_ShiftReg u_SR_TA (.CLKOS(CLKOS), .Clock_N_51(Clock_N_51), 
            .loadTA_keep(loadTA), .RAM_TA_END(RAM_TA_END)) /* synthesis syn_module_defined=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenram_cs_ta.v(30[22] 38[3])
    PISO_Short_ShiftReg_U3 u_SR_RAMS_CS (.CLKOS(CLKOS), .\shift_reg_7__N_41[0] (\shift_reg_7__N_41[0] ), 
            .Clock_N_51(Clock_N_51), .loadCS_keep(loadTA), .RAM_CS_END(RAM_CS_END), 
            .\shift_reg_7__N_41[5] (\shift_reg_7__N_41[5] ), .\shift_reg[4] (\shift_reg[4] )) /* synthesis syn_module_defined=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenram_cs_ta.v(21[22] 29[3])
    
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
    wire CLKOS /* synthesis is_clock=1, SET_AS_NETWORK=CLKOS */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(28[7:12])
    wire Clock_N_51 /* synthesis is_inv_clock=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(81[9:18])
    wire RAM_TA_END /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenram_cs_ta.v(13[7:17])
    wire [7:0]shift_reg_7__N_41;
    
    wire load_half;
    
    FD1S3AX shift_reg_i0 (.D(shift_reg_7__N_41[0]), .CK(CLKOS), .Q(shift_reg[0])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=7, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=30, LSE_RLINE=38 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(111[12] 124[8])
    defparam shift_reg_i0.GSR = "ENABLED";
    FD1S3AY load_registered_14 (.D(load_half), .CK(CLKOS), .Q(shift_reg_7__N_41[0])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=7, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=30, LSE_RLINE=38 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(100[12] 105[8])
    defparam load_registered_14.GSR = "ENABLED";
    FD1S3AY load_half_13 (.D(loadTA_keep), .CK(Clock_N_51), .Q(load_half)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=7, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=30, LSE_RLINE=38 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(83[12] 88[8])
    defparam load_half_13.GSR = "ENABLED";
    FD1S3IX shift_reg_i7 (.D(shift_reg[6]), .CK(CLKOS), .CD(shift_reg_7__N_41[0]), 
            .Q(RAM_TA_END)) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=7, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=30, LSE_RLINE=38 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(111[12] 124[8])
    defparam shift_reg_i7.GSR = "ENABLED";
    FD1S3IX shift_reg_i6 (.D(shift_reg[5]), .CK(CLKOS), .CD(shift_reg_7__N_41[0]), 
            .Q(shift_reg[6])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=7, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=30, LSE_RLINE=38 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(111[12] 124[8])
    defparam shift_reg_i6.GSR = "ENABLED";
    FD1S3IX shift_reg_i5 (.D(shift_reg[4]), .CK(CLKOS), .CD(shift_reg_7__N_41[0]), 
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
    
endmodule
//
// Verilog Description of module PISO_Short_ShiftReg_U3
//

module PISO_Short_ShiftReg_U3 (CLKOS, \shift_reg_7__N_41[0] , Clock_N_51, 
            loadCS_keep, RAM_CS_END, \shift_reg_7__N_41[5] , \shift_reg[4] ) /* synthesis syn_module_defined=1 */ ;
    input CLKOS;
    output \shift_reg_7__N_41[0] ;
    input Clock_N_51;
    input loadCS_keep;
    output RAM_CS_END;
    input \shift_reg_7__N_41[5] ;
    output \shift_reg[4] ;
    
    wire [7:0]shift_reg /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(76[15:24])
    wire CLKOS /* synthesis is_clock=1, SET_AS_NETWORK=CLKOS */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(28[7:12])
    wire Clock_N_51 /* synthesis is_inv_clock=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(81[9:18])
    wire RAM_CS_END /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenram_cs_ta.v(12[7:17])
    wire \shift_reg[4]  /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(76[15:24])
    
    wire load_half;
    
    FD1S3AX shift_reg_i0 (.D(\shift_reg_7__N_41[0] ), .CK(CLKOS), .Q(shift_reg[0])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=7, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=21, LSE_RLINE=29 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(111[12] 124[8])
    defparam shift_reg_i0.GSR = "ENABLED";
    FD1S3AY load_registered_14 (.D(load_half), .CK(CLKOS), .Q(\shift_reg_7__N_41[0] )) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=7, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=21, LSE_RLINE=29 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(100[12] 105[8])
    defparam load_registered_14.GSR = "ENABLED";
    FD1S3AY load_half_13 (.D(loadCS_keep), .CK(Clock_N_51), .Q(load_half)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=7, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=21, LSE_RLINE=29 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(83[12] 88[8])
    defparam load_half_13.GSR = "ENABLED";
    FD1S3IX shift_reg_i7 (.D(shift_reg[6]), .CK(CLKOS), .CD(\shift_reg_7__N_41[0] ), 
            .Q(RAM_CS_END)) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=7, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=21, LSE_RLINE=29 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(111[12] 124[8])
    defparam shift_reg_i7.GSR = "ENABLED";
    FD1S3IX shift_reg_i6 (.D(shift_reg[5]), .CK(CLKOS), .CD(\shift_reg_7__N_41[0] ), 
            .Q(shift_reg[6])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=7, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=21, LSE_RLINE=29 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(111[12] 124[8])
    defparam shift_reg_i6.GSR = "ENABLED";
    FD1S3AX shift_reg_i5 (.D(\shift_reg_7__N_41[5] ), .CK(CLKOS), .Q(shift_reg[5])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=7, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=21, LSE_RLINE=29 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(111[12] 124[8])
    defparam shift_reg_i5.GSR = "ENABLED";
    FD1S3JX shift_reg_i4 (.D(shift_reg[3]), .CK(CLKOS), .PD(\shift_reg_7__N_41[0] ), 
            .Q(\shift_reg[4] )) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=7, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=21, LSE_RLINE=29 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(111[12] 124[8])
    defparam shift_reg_i4.GSR = "ENABLED";
    FD1S3JX shift_reg_i3 (.D(shift_reg[2]), .CK(CLKOS), .PD(\shift_reg_7__N_41[0] ), 
            .Q(shift_reg[3])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=7, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=21, LSE_RLINE=29 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(111[12] 124[8])
    defparam shift_reg_i3.GSR = "ENABLED";
    FD1S3JX shift_reg_i2 (.D(shift_reg[1]), .CK(CLKOS), .PD(\shift_reg_7__N_41[0] ), 
            .Q(shift_reg[2])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=7, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=21, LSE_RLINE=29 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(111[12] 124[8])
    defparam shift_reg_i2.GSR = "ENABLED";
    FD1S3JX shift_reg_i1 (.D(shift_reg[0]), .CK(CLKOS), .PD(\shift_reg_7__N_41[0] ), 
            .Q(shift_reg[1])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=7, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=21, LSE_RLINE=29 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(111[12] 124[8])
    defparam shift_reg_i1.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module ZenROM_CS_TA
//

module ZenROM_CS_TA (RW_OUT_c_c, \shift_reg_15__N_113[0] , \shift_reg[5] , 
            \shift_reg_15__N_113[6] , CLK_c, loadCS_N_162, ROM_ADDR_N_10, 
            state, \shift_reg[9] , \shift_reg_15__N_113[10] , ROM_CS_END, 
            ROM_BUFFER_OE_N_c, \shift_reg[13] , \shift_reg_15__N_113[14] , 
            TS_N_c, \shift_reg[1] , \shift_reg_15__N_113[2] , \shift_reg_7__N_41[0] , 
            \shift_reg[4] , \shift_reg_7__N_41[5] , ROM_OE_N_c, CLKOS2, 
            Clock_N_131, ROM_TA_N) /* synthesis syn_module_defined=1 */ ;
    input RW_OUT_c_c;
    input \shift_reg_15__N_113[0] ;
    input \shift_reg[5] ;
    output \shift_reg_15__N_113[6] ;
    input CLK_c;
    input loadCS_N_162;
    input ROM_ADDR_N_10;
    output state;
    input \shift_reg[9] ;
    output \shift_reg_15__N_113[10] ;
    output ROM_CS_END;
    output ROM_BUFFER_OE_N_c;
    input \shift_reg[13] ;
    output \shift_reg_15__N_113[14] ;
    input TS_N_c;
    input \shift_reg[1] ;
    output \shift_reg_15__N_113[2] ;
    input \shift_reg_7__N_41[0] ;
    input \shift_reg[4] ;
    output \shift_reg_7__N_41[5] ;
    output ROM_OE_N_c;
    input CLKOS2;
    input Clock_N_131;
    output ROM_TA_N;
    
    wire RW_OUT_c_c /* synthesis DOUT="TRUE", SLEWRATE="FAST" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(10[14:20])
    wire [15:0]shift_reg /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(12[16:25])
    wire \shift_reg[5]  /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(12[16:25])
    wire CLK_c /* synthesis is_clock=1, SET_AS_NETWORK=CLK_c */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(5[13:16])
    wire \shift_reg[9]  /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(12[16:25])
    wire ROM_CS_END /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenrom_cs_ta.v(12[7:17])
    wire ROM_BUFFER_OE_N_c /* synthesis DOUT="TRUE", SLEWRATE="FAST" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(15[14:22])
    wire \shift_reg[13]  /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(12[16:25])
    wire \shift_reg[1]  /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(12[16:25])
    wire \shift_reg[4]  /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(76[15:24])
    wire ROM_OE_N_c /* synthesis DOUT="TRUE", SLEWRATE="FAST" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(16[14:22])
    wire CLKOS2 /* synthesis is_clock=1, SET_AS_NETWORK=CLKOS2 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(29[7:13])
    wire Clock_N_131 /* synthesis is_inv_clock=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(17[9:18])
    wire ROM_TA_N /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(50[7:15])
    
    wire n686, load_registered;
    wire [15:0]shift_reg_15__N_113;
    
    wire loadCS, loadTA, loadTA_N_159, int_ROM_CS_N, state_N_155;
    
    LUT4 RW_OUT_I_0_1_lut_rep_18 (.A(RW_OUT_c_c), .Z(n686)) /* synthesis lut_function=(!(A)) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(68[29:35])
    defparam RW_OUT_I_0_1_lut_rep_18.init = 16'h5555;
    LUT4 mux_104_i3_3_lut_3_lut (.A(RW_OUT_c_c), .B(load_registered), .C(shift_reg[7]), 
         .Z(shift_reg_15__N_113[8])) /* synthesis lut_function=(!(A (B+!(C))+!A !(B+(C)))) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(68[29:35])
    defparam mux_104_i3_3_lut_3_lut.init = 16'h7474;
    LUT4 mux_104_i4_3_lut_3_lut (.A(RW_OUT_c_c), .B(load_registered), .C(shift_reg[8]), 
         .Z(shift_reg_15__N_113[9])) /* synthesis lut_function=(!(A (B+!(C))+!A !(B+(C)))) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(68[29:35])
    defparam mux_104_i4_3_lut_3_lut.init = 16'h7474;
    LUT4 mux_8_i7_3_lut_3_lut (.A(RW_OUT_c_c), .B(\shift_reg_15__N_113[0] ), 
         .C(\shift_reg[5] ), .Z(\shift_reg_15__N_113[6] )) /* synthesis lut_function=(!(A (B+!(C))+!A !(B+(C)))) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(68[29:35])
    defparam mux_8_i7_3_lut_3_lut.init = 16'h7474;
    FD1S3AX loadCS_27 (.D(loadCS_N_162), .CK(CLK_c), .Q(loadCS)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=3, LSE_LLINE=97, LSE_RLINE=105 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenrom_cs_ta.v(41[9] 81[5])
    defparam loadCS_27.GSR = "ENABLED";
    FD1S3JX loadTA_28 (.D(loadTA_N_159), .CK(CLK_c), .PD(ROM_ADDR_N_10), 
            .Q(loadTA)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=3, LSE_LLINE=97, LSE_RLINE=105 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenrom_cs_ta.v(41[9] 81[5])
    defparam loadTA_28.GSR = "ENABLED";
    FD1S3AY int_ROM_CS_N_29 (.D(loadCS_N_162), .CK(CLK_c), .Q(int_ROM_CS_N)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=3, LSE_LLINE=97, LSE_RLINE=105 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenrom_cs_ta.v(41[9] 81[5])
    defparam int_ROM_CS_N_29.GSR = "ENABLED";
    FD1S3IX state_26 (.D(state_N_155), .CK(CLK_c), .CD(ROM_ADDR_N_10), 
            .Q(state)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=3, LSE_LLINE=97, LSE_RLINE=105 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenrom_cs_ta.v(41[9] 81[5])
    defparam state_26.GSR = "ENABLED";
    LUT4 mux_8_i11_3_lut_3_lut (.A(RW_OUT_c_c), .B(\shift_reg_15__N_113[0] ), 
         .C(\shift_reg[9] ), .Z(\shift_reg_15__N_113[10] )) /* synthesis lut_function=(!(A (B+!(C))+!A !(B+(C)))) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(68[29:35])
    defparam mux_8_i11_3_lut_3_lut.init = 16'h7474;
    LUT4 int_ROM_CS_N_I_0_2_lut (.A(int_ROM_CS_N), .B(ROM_CS_END), .Z(ROM_BUFFER_OE_N_c)) /* synthesis lut_function=(A+(B)) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenrom_cs_ta.v(14[20:43])
    defparam int_ROM_CS_N_I_0_2_lut.init = 16'heeee;
    LUT4 mux_8_i15_3_lut_3_lut (.A(RW_OUT_c_c), .B(\shift_reg_15__N_113[0] ), 
         .C(\shift_reg[13] ), .Z(\shift_reg_15__N_113[14] )) /* synthesis lut_function=(!(A (B+!(C))+!A !(B+(C)))) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(68[29:35])
    defparam mux_8_i15_3_lut_3_lut.init = 16'h7474;
    LUT4 i327_4_lut (.A(RW_OUT_c_c), .B(TS_N_c), .C(state), .D(ROM_CS_END), 
         .Z(loadTA_N_159)) /* synthesis lut_function=(A (B ((D)+!C))+!A !((C)+!B)) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenrom_cs_ta.v(52[9] 73[7])
    defparam i327_4_lut.init = 16'h8c0c;
    LUT4 i325_3_lut (.A(state), .B(TS_N_c), .C(ROM_CS_END), .Z(state_N_155)) /* synthesis lut_function=(!(A (B (C))+!A (B))) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenrom_cs_ta.v(52[9] 73[7])
    defparam i325_3_lut.init = 16'h3b3b;
    LUT4 mux_104_i2_3_lut_3_lut (.A(RW_OUT_c_c), .B(load_registered), .C(shift_reg[6]), 
         .Z(shift_reg_15__N_113[7])) /* synthesis lut_function=(!(A (B+!(C))+!A !(B+(C)))) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(68[29:35])
    defparam mux_104_i2_3_lut_3_lut.init = 16'h7474;
    LUT4 mux_8_i3_3_lut_3_lut (.A(RW_OUT_c_c), .B(\shift_reg_15__N_113[0] ), 
         .C(\shift_reg[1] ), .Z(\shift_reg_15__N_113[2] )) /* synthesis lut_function=(!(A (B+!(C))+!A !(B+(C)))) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(68[29:35])
    defparam mux_8_i3_3_lut_3_lut.init = 16'h7474;
    LUT4 mux_8_i6_3_lut_3_lut (.A(RW_OUT_c_c), .B(\shift_reg_7__N_41[0] ), 
         .C(\shift_reg[4] ), .Z(\shift_reg_7__N_41[5] )) /* synthesis lut_function=(!(A (B+!(C))+!A !(B+(C)))) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(68[29:35])
    defparam mux_8_i6_3_lut_3_lut.init = 16'h7474;
    LUT4 i2_3_lut (.A(RW_OUT_c_c), .B(ROM_CS_END), .C(int_ROM_CS_N), .Z(ROM_OE_N_c)) /* synthesis lut_function=((B+(C))+!A) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenrom_cs_ta.v(14[20:43])
    defparam i2_3_lut.init = 16'hfdfd;
    PISO_Long_ShiftReg u_SR_TA (.CLKOS2(CLKOS2), .Clock_N_131(Clock_N_131), 
            .loadTA_keep(loadTA), .ROM_TA_N(ROM_TA_N)) /* synthesis syn_module_defined=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenrom_cs_ta.v(30[21] 38[3])
    PISO_Long_ShiftReg_U0 u_SR_ROMS_CS (.load_registered(load_registered), 
            .CLKOS2(CLKOS2), .Clock_N_131(Clock_N_131), .loadCS_keep(loadCS), 
            .\shift_reg[6] (shift_reg[6]), .n686(n686), .ROM_CS_END(ROM_CS_END), 
            .\shift_reg_15__N_113[9] (shift_reg_15__N_113[9]), .\shift_reg[8] (shift_reg[8]), 
            .\shift_reg_15__N_113[8] (shift_reg_15__N_113[8]), .\shift_reg[7] (shift_reg[7]), 
            .\shift_reg_15__N_113[7] (shift_reg_15__N_113[7])) /* synthesis syn_module_defined=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenrom_cs_ta.v(21[21] 29[3])
    
endmodule
//
// Verilog Description of module PISO_Long_ShiftReg
//

module PISO_Long_ShiftReg (CLKOS2, Clock_N_131, loadTA_keep, ROM_TA_N) /* synthesis syn_module_defined=1 */ ;
    input CLKOS2;
    input Clock_N_131;
    input loadTA_keep;
    output ROM_TA_N;
    
    wire [15:0]shift_reg /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(12[16:25])
    wire CLKOS2 /* synthesis is_clock=1, SET_AS_NETWORK=CLKOS2 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(29[7:13])
    wire Clock_N_131 /* synthesis is_inv_clock=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(17[9:18])
    wire ROM_TA_N /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(50[7:15])
    wire [15:0]shift_reg_15__N_113;
    
    wire load_registered, load_half;
    
    FD1S3AX shift_reg_i1 (.D(shift_reg_15__N_113[6]), .CK(CLKOS2), .Q(shift_reg[6])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=8, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=30, LSE_RLINE=38 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(47[12] 60[8])
    defparam shift_reg_i1.GSR = "ENABLED";
    FD1S3AY load_registered_14 (.D(load_half), .CK(CLKOS2), .Q(load_registered)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=8, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=30, LSE_RLINE=38 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(36[12] 41[8])
    defparam load_registered_14.GSR = "ENABLED";
    LUT4 i194_1_lut (.A(load_registered), .Z(shift_reg_15__N_113[6])) /* synthesis lut_function=(!(A)) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(57[17:62])
    defparam i194_1_lut.init = 16'h5555;
    FD1S3AY load_half_13 (.D(loadTA_keep), .CK(Clock_N_131), .Q(load_half)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=8, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=30, LSE_RLINE=38 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(19[12] 24[8])
    defparam load_half_13.GSR = "ENABLED";
    FD1S3JX shift_reg_i10 (.D(shift_reg[14]), .CK(CLKOS2), .PD(load_registered), 
            .Q(ROM_TA_N)) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=8, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=30, LSE_RLINE=38 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(47[12] 60[8])
    defparam shift_reg_i10.GSR = "ENABLED";
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

module PISO_Long_ShiftReg_U0 (load_registered, CLKOS2, Clock_N_131, loadCS_keep, 
            \shift_reg[6] , n686, ROM_CS_END, \shift_reg_15__N_113[9] , 
            \shift_reg[8] , \shift_reg_15__N_113[8] , \shift_reg[7] , 
            \shift_reg_15__N_113[7] ) /* synthesis syn_module_defined=1 */ ;
    output load_registered;
    input CLKOS2;
    input Clock_N_131;
    input loadCS_keep;
    output \shift_reg[6] ;
    input n686;
    output ROM_CS_END;
    input \shift_reg_15__N_113[9] ;
    output \shift_reg[8] ;
    input \shift_reg_15__N_113[8] ;
    output \shift_reg[7] ;
    input \shift_reg_15__N_113[7] ;
    
    wire CLKOS2 /* synthesis is_clock=1, SET_AS_NETWORK=CLKOS2 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(29[7:13])
    wire Clock_N_131 /* synthesis is_inv_clock=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(17[9:18])
    wire \shift_reg[6]  /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(12[16:25])
    wire ROM_CS_END /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenrom_cs_ta.v(12[7:17])
    wire [15:0]shift_reg /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(12[16:25])
    wire \shift_reg[8]  /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(12[16:25])
    wire \shift_reg[7]  /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(12[16:25])
    
    wire load_half, n458;
    
    FD1S3AY load_registered_14 (.D(load_half), .CK(CLKOS2), .Q(load_registered)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=8, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=21, LSE_RLINE=29 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(36[12] 41[8])
    defparam load_registered_14.GSR = "ENABLED";
    FD1S3AY load_half_13 (.D(loadCS_keep), .CK(Clock_N_131), .Q(load_half)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=8, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=21, LSE_RLINE=29 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(19[12] 24[8])
    defparam load_half_13.GSR = "ENABLED";
    LUT4 i269_1_lut (.A(load_registered), .Z(n458)) /* synthesis lut_function=(!(A)) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(36[12] 41[8])
    defparam i269_1_lut.init = 16'h5555;
    FD1S3JX shift_reg_i1 (.D(n686), .CK(CLKOS2), .PD(n458), .Q(\shift_reg[6] )) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=8, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=21, LSE_RLINE=29 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(47[12] 60[8])
    defparam shift_reg_i1.GSR = "ENABLED";
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
    FD1S3AX shift_reg_i4 (.D(\shift_reg_15__N_113[9] ), .CK(CLKOS2), .Q(shift_reg[9])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=8, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=21, LSE_RLINE=29 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(47[12] 60[8])
    defparam shift_reg_i4.GSR = "ENABLED";
    FD1S3AX shift_reg_i3 (.D(\shift_reg_15__N_113[8] ), .CK(CLKOS2), .Q(\shift_reg[8] )) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=8, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=21, LSE_RLINE=29 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(47[12] 60[8])
    defparam shift_reg_i3.GSR = "ENABLED";
    FD1S3AX shift_reg_i2 (.D(\shift_reg_15__N_113[7] ), .CK(CLKOS2), .Q(\shift_reg[7] )) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=8, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=21, LSE_RLINE=29 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(47[12] 60[8])
    defparam shift_reg_i2.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module ZenAddressDecode
//

module ZenAddressDecode (A_c_28, A_c_27, n681, n685, n680, ROM_CS_END, 
            ROM_ADDR_N_10, TS_N_c, state, loadCS_N_162, A_c_25, A_c_24, 
            A_c_30, A_c_23, A_c_29, A_c_26, A_c_31) /* synthesis syn_module_defined=1 */ ;
    input A_c_28;
    input A_c_27;
    output n681;
    input n685;
    output n680;
    input ROM_CS_END;
    output ROM_ADDR_N_10;
    input TS_N_c;
    input state;
    output loadCS_N_162;
    input A_c_25;
    input A_c_24;
    input A_c_30;
    input A_c_23;
    input A_c_29;
    input A_c_26;
    input A_c_31;
    
    wire ROM_CS_END /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenrom_cs_ta.v(12[7:17])
    
    wire n424, n12;
    
    LUT4 i2_3_lut_rep_13 (.A(A_c_28), .B(n424), .C(A_c_27), .Z(n681)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenaddressdecode.v(11[11] 14[16])
    defparam i2_3_lut_rep_13.init = 16'hefef;
    LUT4 RAM_CS_ADDR_I_0_17_2_lut_rep_12_4_lut (.A(A_c_28), .B(n424), .C(A_c_27), 
         .D(n685), .Z(n680)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenaddressdecode.v(11[11] 14[16])
    defparam RAM_CS_ADDR_I_0_17_2_lut_rep_12_4_lut.init = 16'h1000;
    LUT4 i1_4_lut (.A(ROM_CS_END), .B(ROM_ADDR_N_10), .C(TS_N_c), .D(state), 
         .Z(loadCS_N_162)) /* synthesis lut_function=(A (B+(C))+!A (B+!((D)+!C))) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenaddressdecode.v(11[11] 14[16])
    defparam i1_4_lut.init = 16'hecfc;
    LUT4 i2_3_lut (.A(A_c_28), .B(A_c_27), .C(n424), .Z(ROM_ADDR_N_10)) /* synthesis lut_function=((B+(C))+!A) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenaddressdecode.v(11[11] 14[16])
    defparam i2_3_lut.init = 16'hfdfd;
    LUT4 i6_4_lut (.A(A_c_25), .B(n12), .C(A_c_24), .D(A_c_30), .Z(n424)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenaddressdecode.v(11[11] 14[16])
    defparam i6_4_lut.init = 16'hfffe;
    LUT4 i5_4_lut (.A(A_c_23), .B(A_c_29), .C(A_c_26), .D(A_c_31), .Z(n12)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenaddressdecode.v(11[11] 14[16])
    defparam i5_4_lut.init = 16'hfffe;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

