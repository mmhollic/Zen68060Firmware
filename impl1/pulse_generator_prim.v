// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.14.0.75.2
// Netlist written on Mon Aug 31 12:28:04 2026
//
// Verilog Description of module pulse_generator
//

module pulse_generator (CLK400, TRIGGER, COUNT, PULSE) /* synthesis syn_module_defined=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenpulsegen.v(1[8:23])
    input CLK400;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenpulsegen.v(2[23:29])
    input TRIGGER;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenpulsegen.v(3[23:30])
    input [3:0]COUNT;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenpulsegen.v(4[23:28])
    output PULSE;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenpulsegen.v(5[23:28])
    
    wire CLK400_c /* synthesis SET_AS_NETWORK=CLK400_c, is_clock=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenpulsegen.v(2[23:29])
    
    wire GND_net, VCC_net, TRIGGER_c, COUNT_c_3, COUNT_c_2, COUNT_c_1, 
        COUNT_c_0, PULSE_c, trigger_old;
    wire [3:0]remaining;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenpulsegen.v(9[15:24])
    
    wire PULSE_N_18, n6, n133, CLK400_c_enable_4, n147, n145, n149, 
        n171, n7, n170, n172;
    
    VHI i2 (.Z(VCC_net));
    FD1S3AX trigger_old_18 (.D(TRIGGER_c), .CK(CLK400_c), .Q(trigger_old)) /* synthesis lse_init_val=0 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenpulsegen.v(11[12] 30[8])
    defparam trigger_old_18.GSR = "ENABLED";
    OB PULSE_pad (.I(PULSE_c), .O(PULSE));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenpulsegen.v(5[23:28])
    FD1P3AX remaining_49__i0 (.D(n170), .SP(CLK400_c_enable_4), .CK(CLK400_c), 
            .Q(remaining[0]));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenpulsegen.v(21[14] 28[12])
    defparam remaining_49__i0.GSR = "ENABLED";
    FD1S3JX PULSE_19 (.D(PULSE_N_18), .CK(CLK400_c), .PD(n172), .Q(PULSE_c));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenpulsegen.v(11[12] 30[8])
    defparam PULSE_19.GSR = "ENABLED";
    IB CLK400_pad (.I(CLK400), .O(CLK400_c));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenpulsegen.v(2[23:29])
    FD1P3AX remaining_49__i3 (.D(n147), .SP(CLK400_c_enable_4), .CK(CLK400_c), 
            .Q(remaining[3]));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenpulsegen.v(21[14] 28[12])
    defparam remaining_49__i3.GSR = "ENABLED";
    GSR GSR_INST (.GSR(VCC_net));
    FD1P3AX remaining_49__i2 (.D(n149), .SP(CLK400_c_enable_4), .CK(CLK400_c), 
            .Q(remaining[2]));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenpulsegen.v(21[14] 28[12])
    defparam remaining_49__i2.GSR = "ENABLED";
    FD1P3AX remaining_49__i1 (.D(n145), .SP(CLK400_c_enable_4), .CK(CLK400_c), 
            .Q(remaining[1]));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenpulsegen.v(21[14] 28[12])
    defparam remaining_49__i1.GSR = "ENABLED";
    IB TRIGGER_pad (.I(TRIGGER), .O(TRIGGER_c));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenpulsegen.v(3[23:30])
    IB COUNT_pad_3 (.I(COUNT[3]), .O(COUNT_c_3));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenpulsegen.v(4[23:28])
    IB COUNT_pad_2 (.I(COUNT[2]), .O(COUNT_c_2));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenpulsegen.v(4[23:28])
    IB COUNT_pad_1 (.I(COUNT[1]), .O(COUNT_c_1));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenpulsegen.v(4[23:28])
    IB COUNT_pad_0 (.I(COUNT[0]), .O(COUNT_c_0));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenpulsegen.v(4[23:28])
    LUT4 i1_2_lut_2_lut_4_lut (.A(remaining[0]), .B(COUNT_c_0), .C(n172), 
         .D(n7), .Z(n145)) /* synthesis lut_function=(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D))) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenpulsegen.v(21[14] 28[12])
    defparam i1_2_lut_2_lut_4_lut.init = 16'hca35;
    LUT4 i91_2_lut_3_lut_3_lut (.A(n170), .B(n171), .C(n7), .Z(n133)) /* synthesis lut_function=((B+(C))+!A) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenpulsegen.v(21[14] 28[12])
    defparam i91_2_lut_3_lut_3_lut.init = 16'hfdfd;
    LUT4 i1_2_lut_3_lut_3_lut_3_lut (.A(n170), .B(n7), .C(n171), .Z(n149)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A (C)) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenpulsegen.v(21[14] 28[12])
    defparam i1_2_lut_3_lut_3_lut_3_lut.init = 16'hd2d2;
    LUT4 i2_2_lut (.A(remaining[2]), .B(remaining[3]), .Z(n6)) /* synthesis lut_function=(A+(B)) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenpulsegen.v(22[17:31])
    defparam i2_2_lut.init = 16'heeee;
    LUT4 i1_4_lut (.A(remaining[3]), .B(n133), .C(COUNT_c_3), .D(n172), 
         .Z(n147)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+!(D)))+!A (B (C (D))+!B !(C (D)))) */ ;
    defparam i1_4_lut.init = 16'hc399;
    LUT4 remaining_49_mux_5_i2_3_lut_4_lut (.A(TRIGGER_c), .B(trigger_old), 
         .C(COUNT_c_1), .D(remaining[1]), .Z(n7)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenpulsegen.v(17[13:36])
    defparam remaining_49_mux_5_i2_3_lut_4_lut.init = 16'hfd20;
    LUT4 TRIGGER_I_0_2_lut_rep_3 (.A(TRIGGER_c), .B(trigger_old), .Z(n172)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenpulsegen.v(17[13:36])
    defparam TRIGGER_I_0_2_lut_rep_3.init = 16'h2222;
    VLO i134 (.Z(GND_net));
    LUT4 i59_4_lut (.A(remaining[0]), .B(PULSE_c), .C(n6), .D(remaining[1]), 
         .Z(PULSE_N_18)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i59_4_lut.init = 16'hccc8;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    TSALL TSALL_INST (.TSALL(GND_net));
    LUT4 remaining_49_mux_5_i3_3_lut_rep_2_4_lut (.A(TRIGGER_c), .B(trigger_old), 
         .C(COUNT_c_2), .D(remaining[2]), .Z(n171)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenpulsegen.v(17[13:36])
    defparam remaining_49_mux_5_i3_3_lut_rep_2_4_lut.init = 16'hfd20;
    LUT4 i61_2_lut_3_lut (.A(TRIGGER_c), .B(trigger_old), .C(PULSE_N_18), 
         .Z(CLK400_c_enable_4)) /* synthesis lut_function=(A ((C)+!B)+!A (C)) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenpulsegen.v(17[13:36])
    defparam i61_2_lut_3_lut.init = 16'hf2f2;
    LUT4 remaining_49_mux_5_i1_3_lut_rep_1_4_lut (.A(TRIGGER_c), .B(trigger_old), 
         .C(COUNT_c_0), .D(remaining[0]), .Z(n170)) /* synthesis lut_function=(!(A (B (D)+!B (C))+!A (D))) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenpulsegen.v(17[13:36])
    defparam remaining_49_mux_5_i1_3_lut_rep_1_4_lut.init = 16'h02df;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

