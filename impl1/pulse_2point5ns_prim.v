// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.14.0.75.2
// Netlist written on Mon Aug 31 20:28:33 2026
//
// Verilog Description of module pulse_2point5ns
//

module pulse_2point5ns (CLK400, TRIGGER, COUNT, SET, PULSE) /* synthesis syn_module_defined=1 */ ;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenpulsegen.v(1[8:23])
    input CLK400;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenpulsegen.v(2[23:29])
    input TRIGGER;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenpulsegen.v(3[23:30])
    input [3:0]COUNT;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenpulsegen.v(4[23:28])
    input SET;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenpulsegen.v(5[17:20])
    output PULSE;   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenpulsegen.v(6[23:28])
    
    
    wire GND_net, VCC_net;
    
    VHI i59 (.Z(VCC_net));
    OB PULSE_pad (.I(GND_net), .O(PULSE));   // c:/lscc/diamond/3.14/bin/nt64/zen68060firmware/zenpulsegen.v(6[23:28])
    GSR GSR_INST (.GSR(VCC_net));
    TSALL TSALL_INST (.TSALL(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    VLO i1 (.Z(GND_net));
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

