// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.14.0.75.2
// Netlist written on Wed Sep 30 10:52:23 2026
//
// Verilog Description of module ZenMainLogic
//

module ZenMainLogic (LOCK, RST, A, CLK, TS_N, RW_IN, RW_OUT, TA_N, 
            RAM_CS_N, RAM_OE_N, ROM_CS_N, ROM_OE_N, ROM_BUFFER_OE_N) /* synthesis syn_module_defined=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(1[8:20])
    output LOCK;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(2[14:18])
    input RST;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(3[13:16])
    input [31:23]A;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(4[22:23])
    input CLK;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(5[13:16])
    input TS_N;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(6[13:17])
    input RW_IN;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(7[13:18])
    output RW_OUT;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(8[14:20])
    output TA_N /* synthesis DOUT="TRUE", SLEWRATE="FAST" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(9[14:18])
    output RAM_CS_N /* synthesis DOUT="TRUE", SLEWRATE="FAST" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(10[14:22])
    output RAM_OE_N /* synthesis DOUT="TRUE", SLEWRATE="FAST" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(11[14:22])
    output ROM_CS_N /* synthesis DOUT="TRUE", SLEWRATE="FAST" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(12[14:22])
    output ROM_OE_N /* synthesis DOUT="TRUE", SLEWRATE="FAST" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(13[14:22])
    output ROM_BUFFER_OE_N /* synthesis DOUT="TRUE", SLEWRATE="FAST" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(14[14:29])
    
    wire CLK_c /* synthesis is_clock=1, SET_AS_NETWORK=CLK_c */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(5[13:16])
    wire TA_N_c /* synthesis DOUT="TRUE", SLEWRATE="FAST" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(9[14:18])
    wire RAM_CS_N_c /* synthesis DOUT="TRUE", SLEWRATE="FAST" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(10[14:22])
    wire RAM_OE_N_c /* synthesis DOUT="TRUE", SLEWRATE="FAST" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(11[14:22])
    wire ROM_BUFFER_OE_N_c /* synthesis DOUT="TRUE", SLEWRATE="FAST" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(12[14:22])
    wire ROM_OE_N_c /* synthesis DOUT="TRUE", SLEWRATE="FAST" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(13[14:22])
    wire CLKOS /* synthesis is_clock=1, SET_AS_NETWORK=CLKOS */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(19[7:12])
    wire CLKOS2 /* synthesis is_clock=1, SET_AS_NETWORK=CLKOS2 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(20[7:13])
    wire ROM_TA_N /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(39[7:15])
    wire VCC_net /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(68[24:31])
    wire RAM_CS_END /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenram_cs_ta.v(12[7:17])
    wire RAM_TA_END /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenram_cs_ta.v(13[7:17])
    wire ROM_CS_END /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenrom_cs_ta.v(12[7:17])
    wire [7:0]shift_reg /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(76[15:24])
    wire Clock_N_46 /* synthesis is_inv_clock=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(81[9:18])
    wire Clock_N_114 /* synthesis is_inv_clock=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(17[9:18])
    
    wire LOCK_c, RST_c, A_c_31, A_c_30, A_c_29, A_c_28, A_c_27, 
        A_c_26, A_c_25, A_c_24, A_c_23, TS_N_c, RW_OUT_c_c, n290, 
        ROM_ADDR_N_5, GND_net, int_RAM_CS_N, state, loadCS_N_77;
    wire [7:0]shift_reg_7__N_36;
    
    VHI i10 (.Z(VCC_net));
    LUT4 ROM_TA_N_I_0_3_lut (.A(ROM_TA_N), .B(int_RAM_CS_N), .C(RAM_TA_END), 
         .Z(TA_N_c)) /* synthesis lut_function=(A (B+(C))) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(47[16:33])
    defparam ROM_TA_N_I_0_3_lut.init = 16'ha8a8;
    IB CLK_pad (.I(CLK), .O(CLK_c));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(5[13:16])
    IB A_pad_23 (.I(A[23]), .O(A_c_23));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(4[22:23])
    IB A_pad_24 (.I(A[24]), .O(A_c_24));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(4[22:23])
    IB A_pad_25 (.I(A[25]), .O(A_c_25));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(4[22:23])
    ZenPLL u_ZenPLL (.Clock_N_114(Clock_N_114), .CLKOS2(CLKOS2), .CLK_c(CLK_c), 
           .RST_c(RST_c), .CLKOS(CLKOS), .LOCK_c(LOCK_c), .GND_net(GND_net), 
           .Clock_N_46(Clock_N_46)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(22[9] 29[3])
    IB A_pad_26 (.I(A[26]), .O(A_c_26));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(4[22:23])
    IB A_pad_27 (.I(A[27]), .O(A_c_27));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(4[22:23])
    OB RAM_CS_N_pad (.I(RAM_CS_N_c), .O(RAM_CS_N));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(10[14:22])
    IB A_pad_28 (.I(A[28]), .O(A_c_28));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(4[22:23])
    IB RW_OUT_c_pad (.I(RW_IN), .O(RW_OUT_c_c));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(7[13:18])
    IB A_pad_29 (.I(A[29]), .O(A_c_29));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(4[22:23])
    IB A_pad_30 (.I(A[30]), .O(A_c_30));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(4[22:23])
    IB A_pad_31 (.I(A[31]), .O(A_c_31));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(4[22:23])
    IB RST_pad (.I(RST), .O(RST_c));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(3[13:16])
    OB ROM_BUFFER_OE_N_pad (.I(ROM_BUFFER_OE_N_c), .O(ROM_BUFFER_OE_N));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(14[14:29])
    IB TS_N_pad (.I(TS_N), .O(TS_N_c));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(6[13:17])
    OB TA_N_pad (.I(TA_N_c), .O(TA_N));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(9[14:18])
    OB ROM_OE_N_pad (.I(ROM_OE_N_c), .O(ROM_OE_N));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(13[14:22])
    OB RW_OUT_pad (.I(RW_OUT_c_c), .O(RW_OUT));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(8[14:20])
    OB ROM_CS_N_pad (.I(ROM_BUFFER_OE_N_c), .O(ROM_CS_N));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(12[14:22])
    OB LOCK_pad (.I(LOCK_c), .O(LOCK));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(2[14:18])
    OB RAM_OE_N_pad (.I(RAM_OE_N_c), .O(RAM_OE_N));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(11[14:22])
    GSR GSR_INST (.GSR(VCC_net));
    ZenROM_CS_TA u_ROM_CS_TA (.RW_OUT_c_c(RW_OUT_c_c), .ROM_CS_END(ROM_CS_END), 
            .ROM_BUFFER_OE_N_c(ROM_BUFFER_OE_N_c), .CLK_c(CLK_c), .loadCS_N_77(loadCS_N_77), 
            .state(state), .TS_N_c(TS_N_c), .ROM_ADDR_N_5(ROM_ADDR_N_5), 
            .int_RAM_CS_N(int_RAM_CS_N), .RAM_CS_END(RAM_CS_END), .RAM_OE_N_c(RAM_OE_N_c), 
            .ROM_OE_N_c(ROM_OE_N_c), .\shift_reg_7__N_36[0] (shift_reg_7__N_36[0]), 
            .\shift_reg[5] (shift_reg[5]), .\shift_reg_7__N_36[6] (shift_reg_7__N_36[6]), 
            .CLKOS2(CLKOS2), .Clock_N_114(Clock_N_114), .ROM_TA_N(ROM_TA_N)) /* synthesis syn_module_defined=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(64[15] 72[3])
    VLO i1 (.Z(GND_net));
    TSALL TSALL_INST (.TSALL(GND_net));
    ZenRAM_CS_TA u_RAM_CS_TA (.TS_N_c(TS_N_c), .A_c_27(A_c_27), .n290(n290), 
            .A_c_28(A_c_28), .int_RAM_CS_N(int_RAM_CS_N), .RAM_CS_END(RAM_CS_END), 
            .RAM_CS_N_c(RAM_CS_N_c), .CLK_c(CLK_c), .CLKOS(CLKOS), .Clock_N_46(Clock_N_46), 
            .RAM_TA_END(RAM_TA_END), .\shift_reg_7__N_36[0] (shift_reg_7__N_36[0]), 
            .\shift_reg_7__N_36[6] (shift_reg_7__N_36[6]), .\shift_reg[5] (shift_reg[5])) /* synthesis syn_module_defined=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(50[15] 58[3])
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    ZenAddressDecode u_decode (.A_c_25(A_c_25), .A_c_24(A_c_24), .A_c_30(A_c_30), 
            .n290(n290), .A_c_23(A_c_23), .A_c_29(A_c_29), .A_c_26(A_c_26), 
            .A_c_31(A_c_31), .ROM_CS_END(ROM_CS_END), .ROM_ADDR_N_5(ROM_ADDR_N_5), 
            .TS_N_c(TS_N_c), .state(state), .loadCS_N_77(loadCS_N_77), 
            .A_c_28(A_c_28), .A_c_27(A_c_27)) /* synthesis syn_module_defined=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(41[22] 45[3])
    
endmodule
//
// Verilog Description of module ZenPLL
//

module ZenPLL (Clock_N_114, CLKOS2, CLK_c, RST_c, CLKOS, LOCK_c, 
            GND_net, Clock_N_46) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    output Clock_N_114;
    output CLKOS2;
    input CLK_c;
    input RST_c;
    output CLKOS;
    output LOCK_c;
    input GND_net;
    output Clock_N_46;
    
    wire Clock_N_114 /* synthesis is_inv_clock=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(17[9:18])
    wire CLKOS2 /* synthesis is_clock=1, SET_AS_NETWORK=CLKOS2 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(20[7:13])
    wire CLK_c /* synthesis is_clock=1, SET_AS_NETWORK=CLK_c */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(5[13:16])
    wire CLKOP /* synthesis is_clock=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenpll.v(11[17:22])
    wire CLKOS /* synthesis is_clock=1, SET_AS_NETWORK=CLKOS */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(19[7:12])
    wire Clock_N_46 /* synthesis is_inv_clock=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(81[9:18])
    
    INV i196 (.A(CLKOS2), .Z(Clock_N_114));
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
            .LOCK(LOCK_c)) /* synthesis FREQUENCY_PIN_CLKOS2="200.000000", FREQUENCY_PIN_CLKOS="200.000000", FREQUENCY_PIN_CLKOP="50.000000", FREQUENCY_PIN_CLKI="50.000000", ICP_CURRENT="9", LPF_RESISTOR="8", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=3, LSE_LLINE=22, LSE_RLINE=29 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(22[9] 29[3])
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
    INV i197 (.A(CLKOS), .Z(Clock_N_46));
    
endmodule
//
// Verilog Description of module ZenROM_CS_TA
//

module ZenROM_CS_TA (RW_OUT_c_c, ROM_CS_END, ROM_BUFFER_OE_N_c, CLK_c, 
            loadCS_N_77, state, TS_N_c, ROM_ADDR_N_5, int_RAM_CS_N, 
            RAM_CS_END, RAM_OE_N_c, ROM_OE_N_c, \shift_reg_7__N_36[0] , 
            \shift_reg[5] , \shift_reg_7__N_36[6] , CLKOS2, Clock_N_114, 
            ROM_TA_N) /* synthesis syn_module_defined=1 */ ;
    input RW_OUT_c_c;
    output ROM_CS_END;
    output ROM_BUFFER_OE_N_c;
    input CLK_c;
    input loadCS_N_77;
    output state;
    input TS_N_c;
    input ROM_ADDR_N_5;
    input int_RAM_CS_N;
    input RAM_CS_END;
    output RAM_OE_N_c;
    output ROM_OE_N_c;
    input \shift_reg_7__N_36[0] ;
    input \shift_reg[5] ;
    output \shift_reg_7__N_36[6] ;
    input CLKOS2;
    input Clock_N_114;
    output ROM_TA_N;
    
    wire ROM_CS_END /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenrom_cs_ta.v(12[7:17])
    wire ROM_BUFFER_OE_N_c /* synthesis DOUT="TRUE", SLEWRATE="FAST" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(12[14:22])
    wire CLK_c /* synthesis is_clock=1, SET_AS_NETWORK=CLK_c */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(5[13:16])
    wire RAM_CS_END /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenram_cs_ta.v(12[7:17])
    wire RAM_OE_N_c /* synthesis DOUT="TRUE", SLEWRATE="FAST" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(11[14:22])
    wire [15:0]shift_reg /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(12[16:25])
    wire ROM_OE_N_c /* synthesis DOUT="TRUE", SLEWRATE="FAST" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(13[14:22])
    wire \shift_reg[5]  /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(76[15:24])
    wire CLKOS2 /* synthesis is_clock=1, SET_AS_NETWORK=CLKOS2 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(20[7:13])
    wire Clock_N_114 /* synthesis is_inv_clock=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(17[9:18])
    wire ROM_TA_N /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(39[7:15])
    
    wire n393, int_ROM_CS_N, loadCS, state_N_70, loadTA, loadTA_N_74, 
        load_registered;
    wire [15:0]shift_reg_15__N_96;
    
    LUT4 RW_IN_I_0_1_lut_rep_2 (.A(RW_OUT_c_c), .Z(n393)) /* synthesis lut_function=(!(A)) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(34[29:35])
    defparam RW_IN_I_0_1_lut_rep_2.init = 16'h5555;
    LUT4 int_ROM_CS_N_I_0_2_lut (.A(int_ROM_CS_N), .B(ROM_CS_END), .Z(ROM_BUFFER_OE_N_c)) /* synthesis lut_function=(A+(B)) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenrom_cs_ta.v(14[20:43])
    defparam int_ROM_CS_N_I_0_2_lut.init = 16'heeee;
    FD1S3AX loadCS_27 (.D(loadCS_N_77), .CK(CLK_c), .Q(loadCS)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=3, LSE_LLINE=64, LSE_RLINE=72 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenrom_cs_ta.v(41[9] 81[5])
    defparam loadCS_27.GSR = "ENABLED";
    LUT4 i146_3_lut (.A(state), .B(TS_N_c), .C(ROM_CS_END), .Z(state_N_70)) /* synthesis lut_function=(!(A (B (C))+!A (B))) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenrom_cs_ta.v(52[9] 73[7])
    defparam i146_3_lut.init = 16'h3b3b;
    FD1S3JX loadTA_28 (.D(loadTA_N_74), .CK(CLK_c), .PD(ROM_ADDR_N_5), 
            .Q(loadTA)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=3, LSE_LLINE=64, LSE_RLINE=72 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenrom_cs_ta.v(41[9] 81[5])
    defparam loadTA_28.GSR = "ENABLED";
    FD1S3AY int_ROM_CS_N_29 (.D(loadCS_N_77), .CK(CLK_c), .Q(int_ROM_CS_N)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=3, LSE_LLINE=64, LSE_RLINE=72 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenrom_cs_ta.v(41[9] 81[5])
    defparam int_ROM_CS_N_29.GSR = "ENABLED";
    FD1S3IX state_26 (.D(state_N_70), .CK(CLK_c), .CD(ROM_ADDR_N_5), .Q(state)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=3, LSE_LLINE=64, LSE_RLINE=72 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenrom_cs_ta.v(41[9] 81[5])
    defparam state_26.GSR = "ENABLED";
    LUT4 i2_3_lut_3_lut (.A(RW_OUT_c_c), .B(int_RAM_CS_N), .C(RAM_CS_END), 
         .Z(RAM_OE_N_c)) /* synthesis lut_function=((B+(C))+!A) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(34[29:35])
    defparam i2_3_lut_3_lut.init = 16'hfdfd;
    LUT4 mux_59_i3_3_lut_3_lut (.A(RW_OUT_c_c), .B(load_registered), .C(shift_reg[7]), 
         .Z(shift_reg_15__N_96[8])) /* synthesis lut_function=(!(A (B+!(C))+!A !(B+(C)))) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(34[29:35])
    defparam mux_59_i3_3_lut_3_lut.init = 16'h7474;
    LUT4 mux_59_i4_3_lut_3_lut (.A(RW_OUT_c_c), .B(load_registered), .C(shift_reg[8]), 
         .Z(shift_reg_15__N_96[9])) /* synthesis lut_function=(!(A (B+!(C))+!A !(B+(C)))) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(34[29:35])
    defparam mux_59_i4_3_lut_3_lut.init = 16'h7474;
    LUT4 i2_3_lut_3_lut_adj_15 (.A(RW_OUT_c_c), .B(int_ROM_CS_N), .C(ROM_CS_END), 
         .Z(ROM_OE_N_c)) /* synthesis lut_function=((B+(C))+!A) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(34[29:35])
    defparam i2_3_lut_3_lut_adj_15.init = 16'hfdfd;
    LUT4 i148_4_lut (.A(RW_OUT_c_c), .B(TS_N_c), .C(state), .D(ROM_CS_END), 
         .Z(loadTA_N_74)) /* synthesis lut_function=(A (B ((D)+!C))+!A !((C)+!B)) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenrom_cs_ta.v(52[9] 73[7])
    defparam i148_4_lut.init = 16'h8c0c;
    LUT4 mux_59_i2_3_lut_3_lut (.A(RW_OUT_c_c), .B(load_registered), .C(shift_reg[6]), 
         .Z(shift_reg_15__N_96[7])) /* synthesis lut_function=(!(A (B+!(C))+!A !(B+(C)))) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(34[29:35])
    defparam mux_59_i2_3_lut_3_lut.init = 16'h7474;
    LUT4 mux_8_i7_3_lut_3_lut (.A(RW_OUT_c_c), .B(\shift_reg_7__N_36[0] ), 
         .C(\shift_reg[5] ), .Z(\shift_reg_7__N_36[6] )) /* synthesis lut_function=(!(A (B+!(C))+!A !(B+(C)))) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(34[29:35])
    defparam mux_8_i7_3_lut_3_lut.init = 16'h7474;
    PISO_Long_ShiftReg u_SR_TA (.CLKOS2(CLKOS2), .Clock_N_114(Clock_N_114), 
            .loadTA_keep(loadTA), .ROM_TA_N(ROM_TA_N)) /* synthesis syn_module_defined=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenrom_cs_ta.v(30[21] 38[3])
    PISO_Long_ShiftReg_U0 u_SR_ROMS_CS (.load_registered(load_registered), 
            .\shift_reg[6] (shift_reg[6]), .CLKOS2(CLKOS2), .n393(n393), 
            .Clock_N_114(Clock_N_114), .loadCS_keep(loadCS), .ROM_CS_END(ROM_CS_END), 
            .\shift_reg_15__N_96[9] (shift_reg_15__N_96[9]), .\shift_reg[8] (shift_reg[8]), 
            .\shift_reg_15__N_96[8] (shift_reg_15__N_96[8]), .\shift_reg[7] (shift_reg[7]), 
            .\shift_reg_15__N_96[7] (shift_reg_15__N_96[7])) /* synthesis syn_module_defined=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenrom_cs_ta.v(21[21] 29[3])
    
endmodule
//
// Verilog Description of module PISO_Long_ShiftReg
//

module PISO_Long_ShiftReg (CLKOS2, Clock_N_114, loadTA_keep, ROM_TA_N) /* synthesis syn_module_defined=1 */ ;
    input CLKOS2;
    input Clock_N_114;
    input loadTA_keep;
    output ROM_TA_N;
    
    wire [15:0]shift_reg /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(12[16:25])
    wire CLKOS2 /* synthesis is_clock=1, SET_AS_NETWORK=CLKOS2 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(20[7:13])
    wire Clock_N_114 /* synthesis is_inv_clock=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(17[9:18])
    wire ROM_TA_N /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(39[7:15])
    
    wire load_registered;
    wire [15:0]shift_reg_15__N_96;
    
    wire load_half;
    
    LUT4 i97_1_lut (.A(load_registered), .Z(shift_reg_15__N_96[6])) /* synthesis lut_function=(!(A)) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(57[17:62])
    defparam i97_1_lut.init = 16'h5555;
    FD1S3AX shift_reg_i1 (.D(shift_reg_15__N_96[6]), .CK(CLKOS2), .Q(shift_reg[6])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=8, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=30, LSE_RLINE=38 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(47[12] 60[8])
    defparam shift_reg_i1.GSR = "ENABLED";
    FD1S3AY load_registered_14 (.D(load_half), .CK(CLKOS2), .Q(load_registered)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=8, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=30, LSE_RLINE=38 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(36[12] 41[8])
    defparam load_registered_14.GSR = "ENABLED";
    FD1S3AY load_half_13 (.D(loadTA_keep), .CK(Clock_N_114), .Q(load_half)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=8, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=30, LSE_RLINE=38 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(19[12] 24[8])
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

module PISO_Long_ShiftReg_U0 (load_registered, \shift_reg[6] , CLKOS2, 
            n393, Clock_N_114, loadCS_keep, ROM_CS_END, \shift_reg_15__N_96[9] , 
            \shift_reg[8] , \shift_reg_15__N_96[8] , \shift_reg[7] , \shift_reg_15__N_96[7] ) /* synthesis syn_module_defined=1 */ ;
    output load_registered;
    output \shift_reg[6] ;
    input CLKOS2;
    input n393;
    input Clock_N_114;
    input loadCS_keep;
    output ROM_CS_END;
    input \shift_reg_15__N_96[9] ;
    output \shift_reg[8] ;
    input \shift_reg_15__N_96[8] ;
    output \shift_reg[7] ;
    input \shift_reg_15__N_96[7] ;
    
    wire \shift_reg[6]  /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(12[16:25])
    wire CLKOS2 /* synthesis is_clock=1, SET_AS_NETWORK=CLKOS2 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(20[7:13])
    wire Clock_N_114 /* synthesis is_inv_clock=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(17[9:18])
    wire ROM_CS_END /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenrom_cs_ta.v(12[7:17])
    wire [15:0]shift_reg /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(12[16:25])
    wire \shift_reg[8]  /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(12[16:25])
    wire \shift_reg[7]  /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(12[16:25])
    
    wire n308, load_half;
    
    LUT4 i122_1_lut (.A(load_registered), .Z(n308)) /* synthesis lut_function=(!(A)) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(36[12] 41[8])
    defparam i122_1_lut.init = 16'h5555;
    FD1S3JX shift_reg_i1 (.D(n393), .CK(CLKOS2), .PD(n308), .Q(\shift_reg[6] )) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=8, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=21, LSE_RLINE=29 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(47[12] 60[8])
    defparam shift_reg_i1.GSR = "ENABLED";
    FD1S3AY load_registered_14 (.D(load_half), .CK(CLKOS2), .Q(load_registered)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=8, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=21, LSE_RLINE=29 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(36[12] 41[8])
    defparam load_registered_14.GSR = "ENABLED";
    FD1S3AY load_half_13 (.D(loadCS_keep), .CK(Clock_N_114), .Q(load_half)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=8, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=21, LSE_RLINE=29 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(19[12] 24[8])
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
    FD1S3AX shift_reg_i4 (.D(\shift_reg_15__N_96[9] ), .CK(CLKOS2), .Q(shift_reg[9])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=8, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=21, LSE_RLINE=29 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(47[12] 60[8])
    defparam shift_reg_i4.GSR = "ENABLED";
    FD1S3AX shift_reg_i3 (.D(\shift_reg_15__N_96[8] ), .CK(CLKOS2), .Q(\shift_reg[8] )) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=8, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=21, LSE_RLINE=29 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(47[12] 60[8])
    defparam shift_reg_i3.GSR = "ENABLED";
    FD1S3AX shift_reg_i2 (.D(\shift_reg_15__N_96[7] ), .CK(CLKOS2), .Q(\shift_reg[7] )) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=8, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=21, LSE_RLINE=29 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(47[12] 60[8])
    defparam shift_reg_i2.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module ZenRAM_CS_TA
//

module ZenRAM_CS_TA (TS_N_c, A_c_27, n290, A_c_28, int_RAM_CS_N, RAM_CS_END, 
            RAM_CS_N_c, CLK_c, CLKOS, Clock_N_46, RAM_TA_END, \shift_reg_7__N_36[0] , 
            \shift_reg_7__N_36[6] , \shift_reg[5] ) /* synthesis syn_module_defined=1 */ ;
    input TS_N_c;
    input A_c_27;
    input n290;
    input A_c_28;
    output int_RAM_CS_N;
    output RAM_CS_END;
    output RAM_CS_N_c;
    input CLK_c;
    input CLKOS;
    input Clock_N_46;
    output RAM_TA_END;
    output \shift_reg_7__N_36[0] ;
    input \shift_reg_7__N_36[6] ;
    output \shift_reg[5] ;
    
    wire RAM_CS_END /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenram_cs_ta.v(12[7:17])
    wire RAM_CS_N_c /* synthesis DOUT="TRUE", SLEWRATE="FAST" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(10[14:22])
    wire CLK_c /* synthesis is_clock=1, SET_AS_NETWORK=CLK_c */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(5[13:16])
    wire CLKOS /* synthesis is_clock=1, SET_AS_NETWORK=CLKOS */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(19[7:12])
    wire Clock_N_46 /* synthesis is_inv_clock=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(81[9:18])
    wire RAM_TA_END /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenram_cs_ta.v(13[7:17])
    wire \shift_reg[5]  /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(76[15:24])
    
    wire loadTA_N_26, loadTA;
    
    LUT4 i3_4_lut (.A(TS_N_c), .B(A_c_27), .C(n290), .D(A_c_28), .Z(loadTA_N_26)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenram_cs_ta.v(57[8] 61[6])
    defparam i3_4_lut.init = 16'hfffb;
    LUT4 int_RAM_CS_N_I_0_18_2_lut (.A(int_RAM_CS_N), .B(RAM_CS_END), .Z(RAM_CS_N_c)) /* synthesis lut_function=(A+(B)) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenram_cs_ta.v(19[20:43])
    defparam int_RAM_CS_N_I_0_18_2_lut.init = 16'heeee;
    FD1S3AX loadTA_16 (.D(loadTA_N_26), .CK(CLK_c), .Q(loadTA)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=3, LSE_LLINE=50, LSE_RLINE=58 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenram_cs_ta.v(41[9] 62[5])
    defparam loadTA_16.GSR = "ENABLED";
    FD1S3AY int_RAM_CS_N_17 (.D(loadTA_N_26), .CK(CLK_c), .Q(int_RAM_CS_N)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=3, LSE_LLINE=50, LSE_RLINE=58 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenram_cs_ta.v(41[9] 62[5])
    defparam int_RAM_CS_N_17.GSR = "ENABLED";
    PISO_Short_ShiftReg u_SR_TA (.CLKOS(CLKOS), .Clock_N_46(Clock_N_46), 
            .loadTA_keep(loadTA), .RAM_TA_END(RAM_TA_END)) /* synthesis syn_module_defined=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenram_cs_ta.v(30[22] 38[3])
    PISO_Short_ShiftReg_U1 u_SR_RAMS_CS (.\shift_reg_7__N_36[0] (\shift_reg_7__N_36[0] ), 
            .CLKOS(CLKOS), .Clock_N_46(Clock_N_46), .loadCS_keep(loadTA), 
            .shift_reg({RAM_CS_END, Open_0, Open_1, Open_2, Open_3, 
            Open_4, Open_5, Open_6}), .\shift_reg_7__N_36[6] (\shift_reg_7__N_36[6] ), 
            .\shift_reg[5] (\shift_reg[5] )) /* synthesis syn_module_defined=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenram_cs_ta.v(21[22] 29[3])
    
endmodule
//
// Verilog Description of module PISO_Short_ShiftReg
//

module PISO_Short_ShiftReg (CLKOS, Clock_N_46, loadTA_keep, RAM_TA_END) /* synthesis syn_module_defined=1 */ ;
    input CLKOS;
    input Clock_N_46;
    input loadTA_keep;
    output RAM_TA_END;
    
    wire [7:0]shift_reg /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(76[15:24])
    wire CLKOS /* synthesis is_clock=1, SET_AS_NETWORK=CLKOS */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(19[7:12])
    wire Clock_N_46 /* synthesis is_inv_clock=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(81[9:18])
    wire RAM_TA_END /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenram_cs_ta.v(13[7:17])
    wire [7:0]shift_reg_7__N_36;
    
    wire load_half;
    
    FD1S3AX shift_reg_i0 (.D(shift_reg_7__N_36[0]), .CK(CLKOS), .Q(shift_reg[0])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=7, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=30, LSE_RLINE=38 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(111[12] 124[8])
    defparam shift_reg_i0.GSR = "ENABLED";
    FD1S3AY load_registered_14 (.D(load_half), .CK(CLKOS), .Q(shift_reg_7__N_36[0])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=7, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=30, LSE_RLINE=38 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(100[12] 105[8])
    defparam load_registered_14.GSR = "ENABLED";
    FD1S3AY load_half_13 (.D(loadTA_keep), .CK(Clock_N_46), .Q(load_half)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=7, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=30, LSE_RLINE=38 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(83[12] 88[8])
    defparam load_half_13.GSR = "ENABLED";
    FD1S3IX shift_reg_i7 (.D(shift_reg[6]), .CK(CLKOS), .CD(shift_reg_7__N_36[0]), 
            .Q(RAM_TA_END)) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=7, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=30, LSE_RLINE=38 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(111[12] 124[8])
    defparam shift_reg_i7.GSR = "ENABLED";
    FD1S3IX shift_reg_i6 (.D(shift_reg[5]), .CK(CLKOS), .CD(shift_reg_7__N_36[0]), 
            .Q(shift_reg[6])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=7, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=30, LSE_RLINE=38 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(111[12] 124[8])
    defparam shift_reg_i6.GSR = "ENABLED";
    FD1S3JX shift_reg_i5 (.D(shift_reg[4]), .CK(CLKOS), .PD(shift_reg_7__N_36[0]), 
            .Q(shift_reg[5])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=7, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=30, LSE_RLINE=38 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(111[12] 124[8])
    defparam shift_reg_i5.GSR = "ENABLED";
    FD1S3JX shift_reg_i4 (.D(shift_reg[3]), .CK(CLKOS), .PD(shift_reg_7__N_36[0]), 
            .Q(shift_reg[4])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=7, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=30, LSE_RLINE=38 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(111[12] 124[8])
    defparam shift_reg_i4.GSR = "ENABLED";
    FD1S3JX shift_reg_i3 (.D(shift_reg[2]), .CK(CLKOS), .PD(shift_reg_7__N_36[0]), 
            .Q(shift_reg[3])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=7, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=30, LSE_RLINE=38 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(111[12] 124[8])
    defparam shift_reg_i3.GSR = "ENABLED";
    FD1S3JX shift_reg_i2 (.D(shift_reg[1]), .CK(CLKOS), .PD(shift_reg_7__N_36[0]), 
            .Q(shift_reg[2])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=7, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=30, LSE_RLINE=38 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(111[12] 124[8])
    defparam shift_reg_i2.GSR = "ENABLED";
    FD1S3JX shift_reg_i1 (.D(shift_reg[0]), .CK(CLKOS), .PD(shift_reg_7__N_36[0]), 
            .Q(shift_reg[1])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=7, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=30, LSE_RLINE=38 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(111[12] 124[8])
    defparam shift_reg_i1.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module PISO_Short_ShiftReg_U1
//

module PISO_Short_ShiftReg_U1 (\shift_reg_7__N_36[0] , CLKOS, Clock_N_46, 
            loadCS_keep, shift_reg, \shift_reg_7__N_36[6] , \shift_reg[5] ) /* synthesis syn_module_defined=1 */ ;
    output \shift_reg_7__N_36[0] ;
    input CLKOS;
    input Clock_N_46;
    input loadCS_keep;
    output [7:0]shift_reg;
    input \shift_reg_7__N_36[6] ;
    output \shift_reg[5] ;
    
    wire CLKOS /* synthesis is_clock=1, SET_AS_NETWORK=CLKOS */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zen68060machmainlogic.v(19[7:12])
    wire Clock_N_46 /* synthesis is_inv_clock=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(81[9:18])
    wire [7:0]shift_reg_c /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenram_cs_ta.v(12[7:17])
    wire \shift_reg[5]  /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(76[15:24])
    
    wire load_half;
    
    FD1S3AY load_registered_14 (.D(load_half), .CK(CLKOS), .Q(\shift_reg_7__N_36[0] )) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=7, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=21, LSE_RLINE=29 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(100[12] 105[8])
    defparam load_registered_14.GSR = "ENABLED";
    FD1S3AY load_half_13 (.D(loadCS_keep), .CK(Clock_N_46), .Q(load_half)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=7, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=21, LSE_RLINE=29 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(83[12] 88[8])
    defparam load_half_13.GSR = "ENABLED";
    FD1S3IX shift_reg_i7 (.D(shift_reg_c[6]), .CK(CLKOS), .CD(\shift_reg_7__N_36[0] ), 
            .Q(shift_reg[7])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=7, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=21, LSE_RLINE=29 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(111[12] 124[8])
    defparam shift_reg_i7.GSR = "ENABLED";
    FD1S3AX shift_reg_i6 (.D(\shift_reg_7__N_36[6] ), .CK(CLKOS), .Q(shift_reg_c[6])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=7, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=21, LSE_RLINE=29 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(111[12] 124[8])
    defparam shift_reg_i6.GSR = "ENABLED";
    FD1S3JX shift_reg_i5 (.D(shift_reg_c[4]), .CK(CLKOS), .PD(\shift_reg_7__N_36[0] ), 
            .Q(\shift_reg[5] )) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=7, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=21, LSE_RLINE=29 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(111[12] 124[8])
    defparam shift_reg_i5.GSR = "ENABLED";
    FD1S3JX shift_reg_i4 (.D(shift_reg_c[3]), .CK(CLKOS), .PD(\shift_reg_7__N_36[0] ), 
            .Q(shift_reg_c[4])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=7, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=21, LSE_RLINE=29 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(111[12] 124[8])
    defparam shift_reg_i4.GSR = "ENABLED";
    FD1S3JX shift_reg_i3 (.D(shift_reg_c[2]), .CK(CLKOS), .PD(\shift_reg_7__N_36[0] ), 
            .Q(shift_reg_c[3])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=7, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=21, LSE_RLINE=29 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(111[12] 124[8])
    defparam shift_reg_i3.GSR = "ENABLED";
    FD1S3JX shift_reg_i2 (.D(shift_reg_c[1]), .CK(CLKOS), .PD(\shift_reg_7__N_36[0] ), 
            .Q(shift_reg_c[2])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=7, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=21, LSE_RLINE=29 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(111[12] 124[8])
    defparam shift_reg_i2.GSR = "ENABLED";
    FD1S3AX shift_reg_i0 (.D(\shift_reg_7__N_36[0] ), .CK(CLKOS), .Q(shift_reg_c[0])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=7, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=21, LSE_RLINE=29 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(111[12] 124[8])
    defparam shift_reg_i0.GSR = "ENABLED";
    FD1S3JX shift_reg_i1 (.D(shift_reg_c[0]), .CK(CLKOS), .PD(\shift_reg_7__N_36[0] ), 
            .Q(shift_reg_c[1])) /* synthesis lse_init_val=0, syn_srlstyle="registers", LSE_LINE_FILE_ID=7, LSE_LCOL=22, LSE_RCOL=3, LSE_LLINE=21, LSE_RLINE=29 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenshiftregister.v(111[12] 124[8])
    defparam shift_reg_i1.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module ZenAddressDecode
//

module ZenAddressDecode (A_c_25, A_c_24, A_c_30, n290, A_c_23, A_c_29, 
            A_c_26, A_c_31, ROM_CS_END, ROM_ADDR_N_5, TS_N_c, state, 
            loadCS_N_77, A_c_28, A_c_27) /* synthesis syn_module_defined=1 */ ;
    input A_c_25;
    input A_c_24;
    input A_c_30;
    output n290;
    input A_c_23;
    input A_c_29;
    input A_c_26;
    input A_c_31;
    input ROM_CS_END;
    output ROM_ADDR_N_5;
    input TS_N_c;
    input state;
    output loadCS_N_77;
    input A_c_28;
    input A_c_27;
    
    wire ROM_CS_END /* synthesis syn_srlstyle="registers" */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenrom_cs_ta.v(12[7:17])
    
    wire n12;
    
    LUT4 i6_4_lut (.A(A_c_25), .B(n12), .C(A_c_24), .D(A_c_30), .Z(n290)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenaddressdecode.v(11[11] 14[16])
    defparam i6_4_lut.init = 16'hfffe;
    LUT4 i5_4_lut (.A(A_c_23), .B(A_c_29), .C(A_c_26), .D(A_c_31), .Z(n12)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenaddressdecode.v(11[11] 14[16])
    defparam i5_4_lut.init = 16'hfffe;
    LUT4 i1_4_lut (.A(ROM_CS_END), .B(ROM_ADDR_N_5), .C(TS_N_c), .D(state), 
         .Z(loadCS_N_77)) /* synthesis lut_function=(A (B+(C))+!A (B+!((D)+!C))) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenaddressdecode.v(11[11] 14[16])
    defparam i1_4_lut.init = 16'hecfc;
    LUT4 i2_3_lut (.A(A_c_28), .B(A_c_27), .C(n290), .Z(ROM_ADDR_N_5)) /* synthesis lut_function=((B+(C))+!A) */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenaddressdecode.v(11[11] 14[16])
    defparam i2_3_lut.init = 16'hfdfd;
    
endmodule
