// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.14.0.75.2
// Netlist written on Tue Sep 08 22:10:59 2026
//
// Verilog Description of module ZenMainLogic
//

module ZenMainLogic (LOCK, RST, A, CLK, TS_N, RW_IN, TA_N, RAM_CS_N) /* synthesis syn_module_defined=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(1[8:20])
    output LOCK;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(2[14:18])
    input RST;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(3[13:16])
    input [31:23]A;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(4[22:23])
    input CLK;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(5[13:16])
    input TS_N;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(6[13:17])
    input RW_IN;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(7[13:18])
    output TA_N /* synthesis DOUT="TRUE", SLEWRATE="FAST" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(8[14:18])
    output RAM_CS_N /* synthesis DOUT="TRUE", SLEWRATE="FAST" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(9[14:22])
    
    wire CLK_c /* synthesis is_clock=1, SET_AS_NETWORK=CLK_c */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(5[13:16])
    wire TA_N_c /* synthesis DOUT="TRUE", SLEWRATE="FAST" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(8[14:18])
    wire RAM_CS_N_c /* synthesis DOUT="TRUE", SLEWRATE="FAST" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(9[14:22])
    wire CLKOS /* synthesis is_clock=1, SET_AS_NETWORK=CLKOS */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(13[7:12])
    wire RAM_CS_END /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(20[7:17])
    wire TA_END /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(21[7:13])
    wire Clock_N_36 /* synthesis is_inv_clock=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(79[9:18])
    
    wire GND_net, VCC_net, LOCK_c, RST_c, A_c_31, A_c_30, A_c_29, 
        A_c_28, A_c_27, A_c_26, A_c_25, A_c_24, A_c_23, TS_N_c, 
        trigTA, int_RAM_CS_N, n186, trigCS_keep_N_7, trigTA_keep_N_9, 
        n208, trigTA_N_5, n17;
    
    VHI i2 (.Z(VCC_net));
    FD1S3AX trigTA_25 (.D(n208), .CK(CLK_c), .Q(trigTA));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(70[9] 84[5])
    defparam trigTA_25.GSR = "ENABLED";
    VLO i1 (.Z(GND_net));
    LUT4 trigCS_keep_I_0_1_lut (.A(trigTA), .Z(trigCS_keep_N_7)) /* synthesis lut_function=(!(A)) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(37[9:16])
    defparam trigCS_keep_I_0_1_lut.init = 16'h5555;
    LUT4 trigTA_N_1_I_0_1_lut_4_lut (.A(n17), .B(A_c_25), .C(n186), .D(A_c_30), 
         .Z(trigTA_N_5)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam trigTA_N_1_I_0_1_lut_4_lut.init = 16'hfffd;
    LUT4 trigTA_keep_I_0_1_lut (.A(trigTA), .Z(trigTA_keep_N_9)) /* synthesis lut_function=(!(A)) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(45[9:16])
    defparam trigTA_keep_I_0_1_lut.init = 16'h5555;
    FD1S3AY int_RAM_CS_N_26 (.D(trigTA_N_5), .CK(CLK_c), .Q(int_RAM_CS_N)) /* synthesis lse_init_val=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(70[9] 84[5])
    defparam int_RAM_CS_N_26.GSR = "ENABLED";
    PISO_Short_ShiftReg u_SR_TA (.shift_reg({TA_END, Open_0, Open_1, Open_2, 
            Open_3, Open_4, Open_5, Open_6}), .CLKOS(CLKOS), .Clock_N_36(Clock_N_36), 
            .trigTA_keep_N_9(trigTA_keep_N_9)) /* synthesis syn_module_defined=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(41[22] 48[3])
    IB A_pad_29 (.I(A[29]), .O(A_c_29));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(4[22:23])
    PISO_Short_ShiftReg_U0 u_SR_RAMS_CS (.CLKOS(CLKOS), .Clock_N_36(Clock_N_36), 
            .trigCS_keep_N_7(trigCS_keep_N_7), .shift_reg({RAM_CS_END, Open_7, 
            Open_8, Open_9, Open_10, Open_11, Open_12, Open_13})) /* synthesis syn_module_defined=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(33[22] 40[3])
    LUT4 int_RAM_CS_N_I_0_2_lut (.A(int_RAM_CS_N), .B(RAM_CS_END), .Z(RAM_CS_N_c)) /* synthesis lut_function=(A+(B)) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(68[20:43])
    defparam int_RAM_CS_N_I_0_2_lut.init = 16'heeee;
    LUT4 i9_4_lut_rep_1 (.A(n17), .B(A_c_25), .C(n186), .D(A_c_30), 
         .Z(n208)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i9_4_lut_rep_1.init = 16'h0002;
    ZenPLL u_ZenPLL (.Clock_N_36(Clock_N_36), .CLKOS(CLKOS), .CLK_c(CLK_c), 
           .RST_c(RST_c), .LOCK_c(LOCK_c), .GND_net(GND_net)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(25[9] 31[3])
    TSALL TSALL_INST (.TSALL(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    IB TS_N_pad (.I(TS_N), .O(TS_N_c));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(6[13:17])
    IB CLK_pad (.I(CLK), .O(CLK_c));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(5[13:16])
    IB A_pad_23 (.I(A[23]), .O(A_c_23));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(4[22:23])
    IB A_pad_24 (.I(A[24]), .O(A_c_24));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(4[22:23])
    IB A_pad_25 (.I(A[25]), .O(A_c_25));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(4[22:23])
    IB A_pad_26 (.I(A[26]), .O(A_c_26));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(4[22:23])
    IB A_pad_27 (.I(A[27]), .O(A_c_27));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(4[22:23])
    IB A_pad_28 (.I(A[28]), .O(A_c_28));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(4[22:23])
    IB RST_pad (.I(RST), .O(RST_c));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(3[13:16])
    IB A_pad_30 (.I(A[30]), .O(A_c_30));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(4[22:23])
    OB RAM_CS_N_pad (.I(RAM_CS_N_c), .O(RAM_CS_N));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(9[14:22])
    IB A_pad_31 (.I(A[31]), .O(A_c_31));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(4[22:23])
    OB TA_N_pad (.I(TA_N_c), .O(TA_N));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(8[14:18])
    OB LOCK_pad (.I(LOCK_c), .O(LOCK));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(2[14:18])
    GSR GSR_INST (.GSR(VCC_net));
    LUT4 i7_4_lut (.A(A_c_27), .B(A_c_28), .C(A_c_23), .D(A_c_24), .Z(n17)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i7_4_lut.init = 16'h0002;
    LUT4 i157_4_lut (.A(A_c_26), .B(TS_N_c), .C(A_c_29), .D(A_c_31), 
         .Z(n186)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i157_4_lut.init = 16'hfffe;
    LUT4 int_RAM_CS_N_I_0_27_2_lut (.A(int_RAM_CS_N), .B(TA_END), .Z(TA_N_c)) /* synthesis lut_function=(A+(B)) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(22[16:35])
    defparam int_RAM_CS_N_I_0_27_2_lut.init = 16'heeee;
    
endmodule
//
// Verilog Description of module PISO_Short_ShiftReg
//

module PISO_Short_ShiftReg (shift_reg, CLKOS, Clock_N_36, trigTA_keep_N_9) /* synthesis syn_module_defined=1 */ ;
    output [7:0]shift_reg;
    input CLKOS;
    input Clock_N_36;
    input trigTA_keep_N_9;
    
    wire [7:0]shift_reg_c /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(21[7:13])
    wire CLKOS /* synthesis is_clock=1, SET_AS_NETWORK=CLKOS */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(13[7:12])
    wire Clock_N_36 /* synthesis is_inv_clock=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(79[9:18])
    wire [7:0]shift_reg_7__N_26;
    
    wire load_half;
    
    FD1S3IX shift_reg_i7 (.D(shift_reg_c[6]), .CK(CLKOS), .CD(shift_reg_7__N_26[0]), 
            .Q(shift_reg[7])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=3, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=41, LSE_RLINE=48 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(109[12] 122[8])
    defparam shift_reg_i7.GSR = "ENABLED";
    FD1S3IX shift_reg_i6 (.D(shift_reg_c[5]), .CK(CLKOS), .CD(shift_reg_7__N_26[0]), 
            .Q(shift_reg_c[6])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=3, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=41, LSE_RLINE=48 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(109[12] 122[8])
    defparam shift_reg_i6.GSR = "ENABLED";
    FD1S3JX shift_reg_i5 (.D(shift_reg_c[4]), .CK(CLKOS), .PD(shift_reg_7__N_26[0]), 
            .Q(shift_reg_c[5])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=3, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=41, LSE_RLINE=48 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(109[12] 122[8])
    defparam shift_reg_i5.GSR = "ENABLED";
    FD1S3AX shift_reg_i0 (.D(shift_reg_7__N_26[0]), .CK(CLKOS), .Q(shift_reg_c[0])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=3, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=41, LSE_RLINE=48 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(109[12] 122[8])
    defparam shift_reg_i0.GSR = "ENABLED";
    FD1S3JX shift_reg_i4 (.D(shift_reg_c[3]), .CK(CLKOS), .PD(shift_reg_7__N_26[0]), 
            .Q(shift_reg_c[4])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=3, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=41, LSE_RLINE=48 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(109[12] 122[8])
    defparam shift_reg_i4.GSR = "ENABLED";
    FD1S3JX shift_reg_i3 (.D(shift_reg_c[2]), .CK(CLKOS), .PD(shift_reg_7__N_26[0]), 
            .Q(shift_reg_c[3])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=3, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=41, LSE_RLINE=48 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(109[12] 122[8])
    defparam shift_reg_i3.GSR = "ENABLED";
    FD1S3JX shift_reg_i2 (.D(shift_reg_c[1]), .CK(CLKOS), .PD(shift_reg_7__N_26[0]), 
            .Q(shift_reg_c[2])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=3, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=41, LSE_RLINE=48 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(109[12] 122[8])
    defparam shift_reg_i2.GSR = "ENABLED";
    FD1S3AY load_registered_14 (.D(load_half), .CK(CLKOS), .Q(shift_reg_7__N_26[0])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=41, LSE_RLINE=48 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(98[12] 103[8])
    defparam load_registered_14.GSR = "ENABLED";
    FD1S3JX shift_reg_i1 (.D(shift_reg_c[0]), .CK(CLKOS), .PD(shift_reg_7__N_26[0]), 
            .Q(shift_reg_c[1])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=3, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=41, LSE_RLINE=48 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(109[12] 122[8])
    defparam shift_reg_i1.GSR = "ENABLED";
    FD1S3AY load_half_13 (.D(trigTA_keep_N_9), .CK(Clock_N_36), .Q(load_half)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=41, LSE_RLINE=48 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(81[12] 86[8])
    defparam load_half_13.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module PISO_Short_ShiftReg_U0
//

module PISO_Short_ShiftReg_U0 (CLKOS, Clock_N_36, trigCS_keep_N_7, shift_reg) /* synthesis syn_module_defined=1 */ ;
    input CLKOS;
    input Clock_N_36;
    input trigCS_keep_N_7;
    output [7:0]shift_reg;
    
    wire CLKOS /* synthesis is_clock=1, SET_AS_NETWORK=CLKOS */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(13[7:12])
    wire Clock_N_36 /* synthesis is_inv_clock=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(79[9:18])
    wire [7:0]shift_reg_c /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(20[7:17])
    wire [7:0]shift_reg_7__N_26;
    
    wire load_half;
    
    FD1S3AY load_registered_14 (.D(load_half), .CK(CLKOS), .Q(shift_reg_7__N_26[0])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=33, LSE_RLINE=40 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(98[12] 103[8])
    defparam load_registered_14.GSR = "ENABLED";
    FD1S3AY load_half_13 (.D(trigCS_keep_N_7), .CK(Clock_N_36), .Q(load_half)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=33, LSE_RLINE=40 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(81[12] 86[8])
    defparam load_half_13.GSR = "ENABLED";
    FD1S3IX shift_reg_i7 (.D(shift_reg_c[6]), .CK(CLKOS), .CD(shift_reg_7__N_26[0]), 
            .Q(shift_reg[7])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=3, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=33, LSE_RLINE=40 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(109[12] 122[8])
    defparam shift_reg_i7.GSR = "ENABLED";
    FD1S3JX shift_reg_i6 (.D(shift_reg_c[5]), .CK(CLKOS), .PD(shift_reg_7__N_26[0]), 
            .Q(shift_reg_c[6])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=3, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=33, LSE_RLINE=40 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(109[12] 122[8])
    defparam shift_reg_i6.GSR = "ENABLED";
    FD1S3JX shift_reg_i5 (.D(shift_reg_c[4]), .CK(CLKOS), .PD(shift_reg_7__N_26[0]), 
            .Q(shift_reg_c[5])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=3, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=33, LSE_RLINE=40 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(109[12] 122[8])
    defparam shift_reg_i5.GSR = "ENABLED";
    FD1S3JX shift_reg_i4 (.D(shift_reg_c[3]), .CK(CLKOS), .PD(shift_reg_7__N_26[0]), 
            .Q(shift_reg_c[4])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=3, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=33, LSE_RLINE=40 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(109[12] 122[8])
    defparam shift_reg_i4.GSR = "ENABLED";
    FD1S3JX shift_reg_i3 (.D(shift_reg_c[2]), .CK(CLKOS), .PD(shift_reg_7__N_26[0]), 
            .Q(shift_reg_c[3])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=3, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=33, LSE_RLINE=40 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(109[12] 122[8])
    defparam shift_reg_i3.GSR = "ENABLED";
    FD1S3JX shift_reg_i2 (.D(shift_reg_c[1]), .CK(CLKOS), .PD(shift_reg_7__N_26[0]), 
            .Q(shift_reg_c[2])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=3, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=33, LSE_RLINE=40 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(109[12] 122[8])
    defparam shift_reg_i2.GSR = "ENABLED";
    FD1S3AX shift_reg_i0 (.D(shift_reg_7__N_26[0]), .CK(CLKOS), .Q(shift_reg_c[0])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=3, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=33, LSE_RLINE=40 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(109[12] 122[8])
    defparam shift_reg_i0.GSR = "ENABLED";
    FD1S3JX shift_reg_i1 (.D(shift_reg_c[0]), .CK(CLKOS), .PD(shift_reg_7__N_26[0]), 
            .Q(shift_reg_c[1])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=3, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=33, LSE_RLINE=40 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(109[12] 122[8])
    defparam shift_reg_i1.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module ZenPLL
//

module ZenPLL (Clock_N_36, CLKOS, CLK_c, RST_c, LOCK_c, GND_net) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    output Clock_N_36;
    output CLKOS;
    input CLK_c;
    input RST_c;
    output LOCK_c;
    input GND_net;
    
    wire Clock_N_36 /* synthesis is_inv_clock=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(79[9:18])
    wire CLKOS /* synthesis is_clock=1, SET_AS_NETWORK=CLKOS */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(13[7:12])
    wire CLK_c /* synthesis is_clock=1, SET_AS_NETWORK=CLK_c */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(5[13:16])
    wire CLKOP /* synthesis is_clock=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenpll.v(11[17:22])
    
    INV i177 (.A(CLKOS), .Z(Clock_N_36));
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
            .PLLADDR4(GND_net), .CLKOP(CLKOP), .CLKOS(CLKOS), .LOCK(LOCK_c)) /* synthesis FREQUENCY_PIN_CLKOS="200.000000", FREQUENCY_PIN_CLKOP="50.000000", FREQUENCY_PIN_CLKI="50.000000", ICP_CURRENT="9", LPF_RESISTOR="8", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=3, LSE_LLINE=25, LSE_RLINE=31 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(25[9] 31[3])
    defparam PLLInst_0.CLKI_DIV = 1;
    defparam PLLInst_0.CLKFB_DIV = 1;
    defparam PLLInst_0.CLKOP_DIV = 12;
    defparam PLLInst_0.CLKOS_DIV = 3;
    defparam PLLInst_0.CLKOS2_DIV = 1;
    defparam PLLInst_0.CLKOS3_DIV = 1;
    defparam PLLInst_0.CLKOP_ENABLE = "ENABLED";
    defparam PLLInst_0.CLKOS_ENABLE = "ENABLED";
    defparam PLLInst_0.CLKOS2_ENABLE = "DISABLED";
    defparam PLLInst_0.CLKOS3_ENABLE = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_A0 = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_B0 = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_C0 = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_D0 = "DISABLED";
    defparam PLLInst_0.CLKOP_CPHASE = 11;
    defparam PLLInst_0.CLKOS_CPHASE = 2;
    defparam PLLInst_0.CLKOS2_CPHASE = 0;
    defparam PLLInst_0.CLKOS3_CPHASE = 0;
    defparam PLLInst_0.CLKOP_FPHASE = 0;
    defparam PLLInst_0.CLKOS_FPHASE = 6;
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
    defparam PLLInst_0.DPHASE_SOURCE = "DISABLED";
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

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

