// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.14.0.75.2
// Netlist written on Wed Sep 16 16:35:02 2026
//
// Verilog Description of module ZenMainLogic
//

module ZenMainLogic (LOCK, RST, A, CLK, TS_N, RW_IN, RW_OUT, TA_N, 
            RAM_CS_N, ROM_CS_N, RAM_OE_N) /* synthesis syn_module_defined=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(1[8:20])
    output LOCK;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(2[14:18])
    input RST;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(3[13:16])
    input [31:23]A;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(4[22:23])
    input CLK;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(5[13:16])
    input TS_N;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(6[13:17])
    input RW_IN;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(7[13:18])
    output RW_OUT;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(8[14:20])
    output TA_N /* synthesis DOUT="TRUE", SLEWRATE="FAST" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(9[14:18])
    output RAM_CS_N /* synthesis DOUT="TRUE", SLEWRATE="FAST" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(10[14:22])
    output ROM_CS_N /* synthesis DOUT="TRUE", SLEWRATE="FAST" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(11[14:22])
    output RAM_OE_N /* synthesis DOUT="TRUE", SLEWRATE="FAST" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(12[14:22])
    
    wire VCC_net /* synthesis DOUT="TRUE", SLEWRATE="FAST", syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(12[14:22])
    wire CLK_c /* synthesis is_clock=1, SET_AS_NETWORK=CLK_c */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(5[13:16])
    wire TA_N_c /* synthesis DOUT="TRUE", SLEWRATE="FAST" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(9[14:18])
    wire RAM_CS_N_c /* synthesis DOUT="TRUE", SLEWRATE="FAST" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(10[14:22])
    wire ROM_CS_N_c /* synthesis DOUT="TRUE", SLEWRATE="FAST" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(11[14:22])
    wire CLKOS /* synthesis is_clock=1, SET_AS_NETWORK=CLKOS */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(16[7:12])
    wire CLKOS2 /* synthesis is_clock=1, SET_AS_NETWORK=CLKOS2 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(17[7:13])
    wire ROM_TA_N /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(36[7:15])
    wire RAM_TA_END /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenram_cs_ta.v(13[7:17])
    wire ROM_CS_END /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenrom_cs_ta.v(11[7:17])
    wire Clock_N_44 /* synthesis is_inv_clock=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(81[9:18])
    wire Clock_N_44_adj_62 /* synthesis is_inv_clock=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(81[9:18])
    
    wire LOCK_c, RST_c, A_c_31, A_c_30, A_c_29, A_c_28, A_c_27, 
        A_c_26, A_c_25, A_c_24, A_c_23, TS_N_c, RW_OUT_c_c, n126, 
        ROM_ADDR_N_3, GND_net, int_RAM_CS_N, state, loadCS_N_58;
    
    VLO i1 (.Z(GND_net));
    VHI i2 (.Z(VCC_net));
    OB RAM_CS_N_pad (.I(RAM_CS_N_c), .O(RAM_CS_N));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(10[14:22])
    IB A_pad_25 (.I(A[25]), .O(A_c_25));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(4[22:23])
    TSALL TSALL_INST (.TSALL(GND_net));
    IB A_pad_24 (.I(A[24]), .O(A_c_24));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(4[22:23])
    IB A_pad_26 (.I(A[26]), .O(A_c_26));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(4[22:23])
    LUT4 ROM_TA_N_I_0_3_lut (.A(ROM_TA_N), .B(int_RAM_CS_N), .C(RAM_TA_END), 
         .Z(TA_N_c)) /* synthesis lut_function=(A (B+(C))) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(44[16:33])
    defparam ROM_TA_N_I_0_3_lut.init = 16'ha8a8;
    IB A_pad_27 (.I(A[27]), .O(A_c_27));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(4[22:23])
    IB A_pad_28 (.I(A[28]), .O(A_c_28));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(4[22:23])
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    IB A_pad_29 (.I(A[29]), .O(A_c_29));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(4[22:23])
    IB A_pad_30 (.I(A[30]), .O(A_c_30));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(4[22:23])
    IB A_pad_31 (.I(A[31]), .O(A_c_31));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(4[22:23])
    OB TA_N_pad (.I(TA_N_c), .O(TA_N));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(9[14:18])
    IB RST_pad (.I(RST), .O(RST_c));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(3[13:16])
    OB RAM_OE_N_pad (.I(VCC_net), .O(RAM_OE_N));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(12[14:22])
    IB A_pad_23 (.I(A[23]), .O(A_c_23));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(4[22:23])
    OB RW_OUT_pad (.I(RW_OUT_c_c), .O(RW_OUT));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(8[14:20])
    OB LOCK_pad (.I(LOCK_c), .O(LOCK));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(2[14:18])
    OB ROM_CS_N_pad (.I(ROM_CS_N_c), .O(ROM_CS_N));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(11[14:22])
    ZenRAM_CS_TA u_RAM_CS_TA (.TS_N_c(TS_N_c), .A_c_27(A_c_27), .n126(n126), 
            .A_c_28(A_c_28), .CLK_c(CLK_c), .int_RAM_CS_N(int_RAM_CS_N), 
            .RAM_CS_N_c(RAM_CS_N_c), .CLKOS(CLKOS), .Clock_N_44(Clock_N_44), 
            .RAM_TA_END(RAM_TA_END), .RW_OUT_c_c(RW_OUT_c_c)) /* synthesis syn_module_defined=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(47[15] 55[3])
    ZenPLL u_ZenPLL (.Clock_N_44(Clock_N_44_adj_62), .CLKOS2(CLKOS2), .CLK_c(CLK_c), 
           .RST_c(RST_c), .CLKOS(CLKOS), .LOCK_c(LOCK_c), .GND_net(GND_net), 
           .Clock_N_44_adj_1(Clock_N_44)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(19[9] 26[3])
    ZenAddressDecode u_decode (.A_c_25(A_c_25), .A_c_24(A_c_24), .A_c_30(A_c_30), 
            .n126(n126), .ROM_CS_END(ROM_CS_END), .ROM_ADDR_N_3(ROM_ADDR_N_3), 
            .TS_N_c(TS_N_c), .state(state), .loadCS_N_58(loadCS_N_58), 
            .A_c_28(A_c_28), .A_c_27(A_c_27), .A_c_23(A_c_23), .A_c_29(A_c_29), 
            .A_c_26(A_c_26), .A_c_31(A_c_31)) /* synthesis syn_module_defined=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(38[22] 42[3])
    ZenROM_CS_TA u_ROM_CS_TA (.CLK_c(CLK_c), .loadCS_N_58(loadCS_N_58), 
            .ROM_CS_END(ROM_CS_END), .ROM_CS_N_c(ROM_CS_N_c), .state(state), 
            .ROM_ADDR_N_3(ROM_ADDR_N_3), .TS_N_c(TS_N_c), .CLKOS2(CLKOS2), 
            .Clock_N_44(Clock_N_44_adj_62), .ROM_TA_N(ROM_TA_N)) /* synthesis syn_module_defined=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(56[15] 63[3])
    GSR GSR_INST (.GSR(VCC_net));
    IB RW_OUT_c_pad (.I(RW_IN), .O(RW_OUT_c_c));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(7[13:18])
    IB TS_N_pad (.I(TS_N), .O(TS_N_c));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(6[13:17])
    IB CLK_pad (.I(CLK), .O(CLK_c));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(5[13:16])
    
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
// Verilog Description of module ZenRAM_CS_TA
//

module ZenRAM_CS_TA (TS_N_c, A_c_27, n126, A_c_28, CLK_c, int_RAM_CS_N, 
            RAM_CS_N_c, CLKOS, Clock_N_44, RAM_TA_END, RW_OUT_c_c) /* synthesis syn_module_defined=1 */ ;
    input TS_N_c;
    input A_c_27;
    input n126;
    input A_c_28;
    input CLK_c;
    output int_RAM_CS_N;
    output RAM_CS_N_c;
    input CLKOS;
    input Clock_N_44;
    output RAM_TA_END;
    input RW_OUT_c_c;
    
    wire CLK_c /* synthesis is_clock=1, SET_AS_NETWORK=CLK_c */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(5[13:16])
    wire [7:0]shift_reg /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenram_cs_ta.v(12[7:17])
    wire RAM_CS_N_c /* synthesis DOUT="TRUE", SLEWRATE="FAST" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(10[14:22])
    wire CLKOS /* synthesis is_clock=1, SET_AS_NETWORK=CLKOS */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(16[7:12])
    wire Clock_N_44 /* synthesis is_inv_clock=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(81[9:18])
    wire RAM_TA_END /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenram_cs_ta.v(13[7:17])
    
    wire loadTA_N_24, loadTA;
    
    LUT4 i3_4_lut (.A(TS_N_c), .B(A_c_27), .C(n126), .D(A_c_28), .Z(loadTA_N_24)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenram_cs_ta.v(57[8] 61[6])
    defparam i3_4_lut.init = 16'hfffb;
    FD1S3AX loadTA_16 (.D(loadTA_N_24), .CK(CLK_c), .Q(loadTA)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=3, LSE_LLINE=47, LSE_RLINE=55 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenram_cs_ta.v(41[9] 62[5])
    defparam loadTA_16.GSR = "ENABLED";
    FD1S3AY int_RAM_CS_N_17 (.D(loadTA_N_24), .CK(CLK_c), .Q(int_RAM_CS_N)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=3, LSE_LLINE=47, LSE_RLINE=55 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenram_cs_ta.v(41[9] 62[5])
    defparam int_RAM_CS_N_17.GSR = "ENABLED";
    LUT4 int_RAM_CS_N_I_0_18_2_lut (.A(int_RAM_CS_N), .B(shift_reg[7]), 
         .Z(RAM_CS_N_c)) /* synthesis lut_function=(A+(B)) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenram_cs_ta.v(19[20:43])
    defparam int_RAM_CS_N_I_0_18_2_lut.init = 16'heeee;
    PISO_Short_ShiftReg_U1 u_SR_TA (.CLKOS(CLKOS), .Clock_N_44(Clock_N_44), 
            .loadTA_keep(loadTA), .RAM_TA_END(RAM_TA_END)) /* synthesis syn_module_defined=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenram_cs_ta.v(30[22] 38[3])
    PISO_Short_ShiftReg_U2 u_SR_RAMS_CS (.CLKOS(CLKOS), .RW_OUT_c_c(RW_OUT_c_c), 
            .Clock_N_44(Clock_N_44), .loadCS_keep(loadTA), .RAM_CS_END(shift_reg[7])) /* synthesis syn_module_defined=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenram_cs_ta.v(21[22] 29[3])
    
endmodule
//
// Verilog Description of module PISO_Short_ShiftReg_U1
//

module PISO_Short_ShiftReg_U1 (CLKOS, Clock_N_44, loadTA_keep, RAM_TA_END) /* synthesis syn_module_defined=1 */ ;
    input CLKOS;
    input Clock_N_44;
    input loadTA_keep;
    output RAM_TA_END;
    
    wire [7:0]shift_reg /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(76[15:24])
    wire CLKOS /* synthesis is_clock=1, SET_AS_NETWORK=CLKOS */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(16[7:12])
    wire Clock_N_44 /* synthesis is_inv_clock=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(81[9:18])
    wire RAM_TA_END /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenram_cs_ta.v(13[7:17])
    wire [7:0]shift_reg_7__N_34;
    
    wire load_half;
    
    FD1S3AX shift_reg_i0 (.D(shift_reg_7__N_34[0]), .CK(CLKOS), .Q(shift_reg[0])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=7, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=30, LSE_RLINE=38 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(111[12] 124[8])
    defparam shift_reg_i0.GSR = "ENABLED";
    FD1S3AY load_registered_14 (.D(load_half), .CK(CLKOS), .Q(shift_reg_7__N_34[0])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=7, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=30, LSE_RLINE=38 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(100[12] 105[8])
    defparam load_registered_14.GSR = "ENABLED";
    FD1S3AY load_half_13 (.D(loadTA_keep), .CK(Clock_N_44), .Q(load_half)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=7, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=30, LSE_RLINE=38 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(83[12] 88[8])
    defparam load_half_13.GSR = "ENABLED";
    FD1S3IX shift_reg_i7 (.D(shift_reg[6]), .CK(CLKOS), .CD(shift_reg_7__N_34[0]), 
            .Q(RAM_TA_END)) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=7, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=30, LSE_RLINE=38 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(111[12] 124[8])
    defparam shift_reg_i7.GSR = "ENABLED";
    FD1S3IX shift_reg_i6 (.D(shift_reg[5]), .CK(CLKOS), .CD(shift_reg_7__N_34[0]), 
            .Q(shift_reg[6])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=7, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=30, LSE_RLINE=38 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(111[12] 124[8])
    defparam shift_reg_i6.GSR = "ENABLED";
    FD1S3JX shift_reg_i5 (.D(shift_reg[4]), .CK(CLKOS), .PD(shift_reg_7__N_34[0]), 
            .Q(shift_reg[5])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=7, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=30, LSE_RLINE=38 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(111[12] 124[8])
    defparam shift_reg_i5.GSR = "ENABLED";
    FD1S3JX shift_reg_i4 (.D(shift_reg[3]), .CK(CLKOS), .PD(shift_reg_7__N_34[0]), 
            .Q(shift_reg[4])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=7, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=30, LSE_RLINE=38 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(111[12] 124[8])
    defparam shift_reg_i4.GSR = "ENABLED";
    FD1S3JX shift_reg_i3 (.D(shift_reg[2]), .CK(CLKOS), .PD(shift_reg_7__N_34[0]), 
            .Q(shift_reg[3])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=7, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=30, LSE_RLINE=38 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(111[12] 124[8])
    defparam shift_reg_i3.GSR = "ENABLED";
    FD1S3JX shift_reg_i2 (.D(shift_reg[1]), .CK(CLKOS), .PD(shift_reg_7__N_34[0]), 
            .Q(shift_reg[2])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=7, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=30, LSE_RLINE=38 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(111[12] 124[8])
    defparam shift_reg_i2.GSR = "ENABLED";
    FD1S3JX shift_reg_i1 (.D(shift_reg[0]), .CK(CLKOS), .PD(shift_reg_7__N_34[0]), 
            .Q(shift_reg[1])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=7, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=30, LSE_RLINE=38 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(111[12] 124[8])
    defparam shift_reg_i1.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module PISO_Short_ShiftReg_U2
//

module PISO_Short_ShiftReg_U2 (CLKOS, RW_OUT_c_c, Clock_N_44, loadCS_keep, 
            RAM_CS_END) /* synthesis syn_module_defined=1 */ ;
    input CLKOS;
    input RW_OUT_c_c;
    input Clock_N_44;
    input loadCS_keep;
    output RAM_CS_END;
    
    wire [7:0]shift_reg /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(76[15:24])
    wire CLKOS /* synthesis is_clock=1, SET_AS_NETWORK=CLKOS */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(16[7:12])
    wire Clock_N_44 /* synthesis is_inv_clock=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(81[9:18])
    wire RAM_CS_END /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenram_cs_ta.v(12[7:17])
    wire [7:0]shift_reg_7__N_34;
    
    wire load_half;
    
    FD1S3AX shift_reg_i0 (.D(shift_reg_7__N_34[0]), .CK(CLKOS), .Q(shift_reg[0])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=7, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=21, LSE_RLINE=29 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(111[12] 124[8])
    defparam shift_reg_i0.GSR = "ENABLED";
    LUT4 mux_8_i7_3_lut (.A(shift_reg[5]), .B(RW_OUT_c_c), .C(shift_reg_7__N_34[0]), 
         .Z(shift_reg_7__N_34[6])) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(121[17:62])
    defparam mux_8_i7_3_lut.init = 16'h3a3a;
    FD1S3AY load_registered_14 (.D(load_half), .CK(CLKOS), .Q(shift_reg_7__N_34[0])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=7, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=21, LSE_RLINE=29 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(100[12] 105[8])
    defparam load_registered_14.GSR = "ENABLED";
    FD1S3AY load_half_13 (.D(loadCS_keep), .CK(Clock_N_44), .Q(load_half)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=7, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=21, LSE_RLINE=29 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(83[12] 88[8])
    defparam load_half_13.GSR = "ENABLED";
    FD1S3IX shift_reg_i7 (.D(shift_reg[6]), .CK(CLKOS), .CD(shift_reg_7__N_34[0]), 
            .Q(RAM_CS_END)) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=7, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=21, LSE_RLINE=29 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(111[12] 124[8])
    defparam shift_reg_i7.GSR = "ENABLED";
    FD1S3AX shift_reg_i6 (.D(shift_reg_7__N_34[6]), .CK(CLKOS), .Q(shift_reg[6])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=7, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=21, LSE_RLINE=29 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(111[12] 124[8])
    defparam shift_reg_i6.GSR = "ENABLED";
    FD1S3JX shift_reg_i5 (.D(shift_reg[4]), .CK(CLKOS), .PD(shift_reg_7__N_34[0]), 
            .Q(shift_reg[5])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=7, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=21, LSE_RLINE=29 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(111[12] 124[8])
    defparam shift_reg_i5.GSR = "ENABLED";
    FD1S3JX shift_reg_i4 (.D(shift_reg[3]), .CK(CLKOS), .PD(shift_reg_7__N_34[0]), 
            .Q(shift_reg[4])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=7, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=21, LSE_RLINE=29 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(111[12] 124[8])
    defparam shift_reg_i4.GSR = "ENABLED";
    FD1S3JX shift_reg_i3 (.D(shift_reg[2]), .CK(CLKOS), .PD(shift_reg_7__N_34[0]), 
            .Q(shift_reg[3])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=7, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=21, LSE_RLINE=29 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(111[12] 124[8])
    defparam shift_reg_i3.GSR = "ENABLED";
    FD1S3JX shift_reg_i2 (.D(shift_reg[1]), .CK(CLKOS), .PD(shift_reg_7__N_34[0]), 
            .Q(shift_reg[2])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=7, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=21, LSE_RLINE=29 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(111[12] 124[8])
    defparam shift_reg_i2.GSR = "ENABLED";
    FD1S3JX shift_reg_i1 (.D(shift_reg[0]), .CK(CLKOS), .PD(shift_reg_7__N_34[0]), 
            .Q(shift_reg[1])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=7, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=21, LSE_RLINE=29 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(111[12] 124[8])
    defparam shift_reg_i1.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module ZenPLL
//

module ZenPLL (Clock_N_44, CLKOS2, CLK_c, RST_c, CLKOS, LOCK_c, 
            GND_net, Clock_N_44_adj_1) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    output Clock_N_44;
    output CLKOS2;
    input CLK_c;
    input RST_c;
    output CLKOS;
    output LOCK_c;
    input GND_net;
    output Clock_N_44_adj_1;
    
    wire Clock_N_44 /* synthesis is_inv_clock=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(81[9:18])
    wire CLKOS2 /* synthesis is_clock=1, SET_AS_NETWORK=CLKOS2 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(17[7:13])
    wire CLK_c /* synthesis is_clock=1, SET_AS_NETWORK=CLK_c */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(5[13:16])
    wire CLKOP /* synthesis is_clock=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenpll.v(11[17:22])
    wire CLKOS /* synthesis is_clock=1, SET_AS_NETWORK=CLKOS */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(16[7:12])
    wire Clock_N_44_adj_1 /* synthesis is_inv_clock=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(81[9:18])
    
    INV i145 (.A(CLKOS2), .Z(Clock_N_44));
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
            .LOCK(LOCK_c)) /* synthesis FREQUENCY_PIN_CLKOS2="100.000000", FREQUENCY_PIN_CLKOS="200.000000", FREQUENCY_PIN_CLKOP="50.000000", FREQUENCY_PIN_CLKI="50.000000", ICP_CURRENT="9", LPF_RESISTOR="8", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=3, LSE_LLINE=19, LSE_RLINE=26 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(19[9] 26[3])
    defparam PLLInst_0.CLKI_DIV = 1;
    defparam PLLInst_0.CLKFB_DIV = 1;
    defparam PLLInst_0.CLKOP_DIV = 12;
    defparam PLLInst_0.CLKOS_DIV = 3;
    defparam PLLInst_0.CLKOS2_DIV = 6;
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
    defparam PLLInst_0.CLKOS2_CPHASE = 6;
    defparam PLLInst_0.CLKOS3_CPHASE = 0;
    defparam PLLInst_0.CLKOP_FPHASE = 0;
    defparam PLLInst_0.CLKOS_FPHASE = 1;
    defparam PLLInst_0.CLKOS2_FPHASE = 4;
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
    INV i146 (.A(CLKOS), .Z(Clock_N_44_adj_1));
    
endmodule
//
// Verilog Description of module ZenAddressDecode
//

module ZenAddressDecode (A_c_25, A_c_24, A_c_30, n126, ROM_CS_END, 
            ROM_ADDR_N_3, TS_N_c, state, loadCS_N_58, A_c_28, A_c_27, 
            A_c_23, A_c_29, A_c_26, A_c_31) /* synthesis syn_module_defined=1 */ ;
    input A_c_25;
    input A_c_24;
    input A_c_30;
    output n126;
    input ROM_CS_END;
    output ROM_ADDR_N_3;
    input TS_N_c;
    input state;
    output loadCS_N_58;
    input A_c_28;
    input A_c_27;
    input A_c_23;
    input A_c_29;
    input A_c_26;
    input A_c_31;
    
    wire ROM_CS_END /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenrom_cs_ta.v(11[7:17])
    
    wire n12;
    
    LUT4 i6_4_lut (.A(A_c_25), .B(n12), .C(A_c_24), .D(A_c_30), .Z(n126)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenaddressdecode.v(11[11] 14[16])
    defparam i6_4_lut.init = 16'hfffe;
    LUT4 i1_4_lut (.A(ROM_CS_END), .B(ROM_ADDR_N_3), .C(TS_N_c), .D(state), 
         .Z(loadCS_N_58)) /* synthesis lut_function=(A (B+(C))+!A (B+!((D)+!C))) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenaddressdecode.v(11[11] 14[16])
    defparam i1_4_lut.init = 16'hecfc;
    LUT4 i2_3_lut (.A(A_c_28), .B(A_c_27), .C(n126), .Z(ROM_ADDR_N_3)) /* synthesis lut_function=((B+(C))+!A) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenaddressdecode.v(11[11] 14[16])
    defparam i2_3_lut.init = 16'hfdfd;
    LUT4 i5_4_lut (.A(A_c_23), .B(A_c_29), .C(A_c_26), .D(A_c_31), .Z(n12)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenaddressdecode.v(11[11] 14[16])
    defparam i5_4_lut.init = 16'hfffe;
    
endmodule
//
// Verilog Description of module ZenROM_CS_TA
//

module ZenROM_CS_TA (CLK_c, loadCS_N_58, ROM_CS_END, ROM_CS_N_c, state, 
            ROM_ADDR_N_3, TS_N_c, CLKOS2, Clock_N_44, ROM_TA_N) /* synthesis syn_module_defined=1 */ ;
    input CLK_c;
    input loadCS_N_58;
    output ROM_CS_END;
    output ROM_CS_N_c;
    output state;
    input ROM_ADDR_N_3;
    input TS_N_c;
    input CLKOS2;
    input Clock_N_44;
    output ROM_TA_N;
    
    wire CLK_c /* synthesis is_clock=1, SET_AS_NETWORK=CLK_c */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(5[13:16])
    wire ROM_CS_END /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenrom_cs_ta.v(11[7:17])
    wire ROM_CS_N_c /* synthesis DOUT="TRUE", SLEWRATE="FAST" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(11[14:22])
    wire CLKOS2 /* synthesis is_clock=1, SET_AS_NETWORK=CLKOS2 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(17[7:13])
    wire Clock_N_44 /* synthesis is_inv_clock=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(81[9:18])
    wire ROM_TA_N /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(36[7:15])
    
    wire loadTA, int_ROM_CS_N, state_N_52;
    
    FD1S3AX loadCS_24 (.D(loadCS_N_58), .CK(CLK_c), .Q(loadTA)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=3, LSE_LLINE=56, LSE_RLINE=63 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenrom_cs_ta.v(40[9] 79[5])
    defparam loadCS_24.GSR = "ENABLED";
    FD1S3AY int_ROM_CS_N_26 (.D(loadCS_N_58), .CK(CLK_c), .Q(int_ROM_CS_N)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=3, LSE_LLINE=56, LSE_RLINE=63 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenrom_cs_ta.v(40[9] 79[5])
    defparam int_ROM_CS_N_26.GSR = "ENABLED";
    LUT4 int_ROM_CS_N_I_0_2_lut (.A(int_ROM_CS_N), .B(ROM_CS_END), .Z(ROM_CS_N_c)) /* synthesis lut_function=(A+(B)) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenrom_cs_ta.v(13[20:43])
    defparam int_ROM_CS_N_I_0_2_lut.init = 16'heeee;
    FD1S3IX state_23 (.D(state_N_52), .CK(CLK_c), .CD(ROM_ADDR_N_3), .Q(state)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=3, LSE_LLINE=56, LSE_RLINE=63 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenrom_cs_ta.v(40[9] 79[5])
    defparam state_23.GSR = "ENABLED";
    LUT4 i103_3_lut (.A(state), .B(TS_N_c), .C(ROM_CS_END), .Z(state_N_52)) /* synthesis lut_function=(!(A (B (C))+!A (B))) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenrom_cs_ta.v(51[9] 71[7])
    defparam i103_3_lut.init = 16'h3b3b;
    PISO_Short_ShiftReg u_SR_TA (.CLKOS2(CLKOS2), .Clock_N_44(Clock_N_44), 
            .loadTA_keep(loadTA), .ROM_TA_N(ROM_TA_N)) /* synthesis syn_module_defined=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenrom_cs_ta.v(29[22] 37[3])
    PISO_Short_ShiftReg_U0 u_SR_ROMS_CS (.CLKOS2(CLKOS2), .Clock_N_44(Clock_N_44), 
            .loadCS_keep(loadTA), .ROM_CS_END(ROM_CS_END)) /* synthesis syn_module_defined=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenrom_cs_ta.v(20[22] 28[3])
    
endmodule
//
// Verilog Description of module PISO_Short_ShiftReg
//

module PISO_Short_ShiftReg (CLKOS2, Clock_N_44, loadTA_keep, ROM_TA_N) /* synthesis syn_module_defined=1 */ ;
    input CLKOS2;
    input Clock_N_44;
    input loadTA_keep;
    output ROM_TA_N;
    
    wire [7:0]shift_reg /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(76[15:24])
    wire CLKOS2 /* synthesis is_clock=1, SET_AS_NETWORK=CLKOS2 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(17[7:13])
    wire Clock_N_44 /* synthesis is_inv_clock=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(81[9:18])
    wire ROM_TA_N /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(36[7:15])
    
    wire load_registered;
    wire [7:0]shift_reg_7__N_34;
    
    wire load_half;
    
    LUT4 i65_1_lut (.A(load_registered), .Z(shift_reg_7__N_34[2])) /* synthesis lut_function=(!(A)) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(121[17:62])
    defparam i65_1_lut.init = 16'h5555;
    FD1S3AX shift_reg_i1 (.D(shift_reg_7__N_34[2]), .CK(CLKOS2), .Q(shift_reg[2])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=8, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=29, LSE_RLINE=37 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(111[12] 124[8])
    defparam shift_reg_i1.GSR = "ENABLED";
    FD1S3AY load_registered_14 (.D(load_half), .CK(CLKOS2), .Q(load_registered)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=8, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=29, LSE_RLINE=37 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(100[12] 105[8])
    defparam load_registered_14.GSR = "ENABLED";
    FD1S3AY load_half_13 (.D(loadTA_keep), .CK(Clock_N_44), .Q(load_half)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=8, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=29, LSE_RLINE=37 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(83[12] 88[8])
    defparam load_half_13.GSR = "ENABLED";
    FD1S3JX shift_reg_i6 (.D(shift_reg[6]), .CK(CLKOS2), .PD(load_registered), 
            .Q(ROM_TA_N)) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=8, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=29, LSE_RLINE=37 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(111[12] 124[8])
    defparam shift_reg_i6.GSR = "ENABLED";
    FD1S3JX shift_reg_i5 (.D(shift_reg[5]), .CK(CLKOS2), .PD(load_registered), 
            .Q(shift_reg[6])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=8, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=29, LSE_RLINE=37 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(111[12] 124[8])
    defparam shift_reg_i5.GSR = "ENABLED";
    FD1S3JX shift_reg_i4 (.D(shift_reg[4]), .CK(CLKOS2), .PD(load_registered), 
            .Q(shift_reg[5])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=8, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=29, LSE_RLINE=37 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(111[12] 124[8])
    defparam shift_reg_i4.GSR = "ENABLED";
    FD1S3JX shift_reg_i3 (.D(shift_reg[3]), .CK(CLKOS2), .PD(load_registered), 
            .Q(shift_reg[4])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=8, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=29, LSE_RLINE=37 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(111[12] 124[8])
    defparam shift_reg_i3.GSR = "ENABLED";
    FD1S3IX shift_reg_i2 (.D(shift_reg[2]), .CK(CLKOS2), .CD(load_registered), 
            .Q(shift_reg[3])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=8, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=29, LSE_RLINE=37 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(111[12] 124[8])
    defparam shift_reg_i2.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module PISO_Short_ShiftReg_U0
//

module PISO_Short_ShiftReg_U0 (CLKOS2, Clock_N_44, loadCS_keep, ROM_CS_END) /* synthesis syn_module_defined=1 */ ;
    input CLKOS2;
    input Clock_N_44;
    input loadCS_keep;
    output ROM_CS_END;
    
    wire CLKOS2 /* synthesis is_clock=1, SET_AS_NETWORK=CLKOS2 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(17[7:13])
    wire Clock_N_44 /* synthesis is_inv_clock=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(81[9:18])
    wire [7:0]shift_reg /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(76[15:24])
    wire ROM_CS_END /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenrom_cs_ta.v(11[7:17])
    
    wire load_registered, load_half;
    wire [5:0]n14;
    
    FD1S3AY load_registered_14 (.D(load_half), .CK(CLKOS2), .Q(load_registered)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=8, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=20, LSE_RLINE=28 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(100[12] 105[8])
    defparam load_registered_14.GSR = "ENABLED";
    FD1S3AY load_half_13 (.D(loadCS_keep), .CK(Clock_N_44), .Q(load_half)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=8, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=20, LSE_RLINE=28 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(83[12] 88[8])
    defparam load_half_13.GSR = "ENABLED";
    FD1S3AX shift_reg__i1 (.D(n14[0]), .CK(CLKOS2), .Q(shift_reg[2])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=8, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=20, LSE_RLINE=28 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(111[12] 124[8])
    defparam shift_reg__i1.GSR = "ENABLED";
    FD1S3IX shift_reg__i6 (.D(shift_reg[6]), .CK(CLKOS2), .CD(load_registered), 
            .Q(ROM_CS_END)) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=8, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=20, LSE_RLINE=28 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(111[12] 124[8])
    defparam shift_reg__i6.GSR = "ENABLED";
    FD1S3IX shift_reg__i5 (.D(shift_reg[5]), .CK(CLKOS2), .CD(load_registered), 
            .Q(shift_reg[6])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=8, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=20, LSE_RLINE=28 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(111[12] 124[8])
    defparam shift_reg__i5.GSR = "ENABLED";
    FD1S3IX shift_reg__i4 (.D(shift_reg[4]), .CK(CLKOS2), .CD(load_registered), 
            .Q(shift_reg[5])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=8, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=20, LSE_RLINE=28 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(111[12] 124[8])
    defparam shift_reg__i4.GSR = "ENABLED";
    FD1S3IX shift_reg__i3 (.D(shift_reg[3]), .CK(CLKOS2), .CD(load_registered), 
            .Q(shift_reg[4])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=8, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=20, LSE_RLINE=28 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(111[12] 124[8])
    defparam shift_reg__i3.GSR = "ENABLED";
    FD1S3IX shift_reg__i2 (.D(shift_reg[2]), .CK(CLKOS2), .CD(load_registered), 
            .Q(shift_reg[3])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=8, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=20, LSE_RLINE=28 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(111[12] 124[8])
    defparam shift_reg__i2.GSR = "ENABLED";
    LUT4 i66_1_lut (.A(load_registered), .Z(n14[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(111[12] 124[8])
    defparam i66_1_lut.init = 16'h5555;
    
endmodule
