module ZenMainLogic(
	output wire LOCK,
	input wire RST,
	input  wire [31:23] A,
	input wire CLK,
	input wire TS_N,
	input wire RW_IN,
	output wire RW_OUT,
	output wire TA_N /* synthesis DOUT="TRUE" SLEWRATE="FAST" */,
	output wire RAM_CS_N /* synthesis DOUT="TRUE" SLEWRATE="FAST" */,
	output wire RAM_OE_N /* synthesis DOUT="TRUE" SLEWRATE="FAST" */,
	output wire ROM_CS_N /* synthesis DOUT="TRUE" SLEWRATE="FAST" */,
	output wire ROM_OE_N /* synthesis DOUT="TRUE" SLEWRATE="FAST" */,
	output wire ROM_BUFFER_OE_N /* synthesis DOUT="TRUE" SLEWRATE="FAST" */
	
);
	
	wire CLKOP;
	wire CLKOS;
	wire CLKOS2;

	ZenPLL u_ZenPLL(
		.CLKI(CLK), 
		.RST(RST),
		.CLKOP(CLKOP),
		.CLKOS(CLKOS),
		.CLKOS2(CLKOS2),
		.LOCK(LOCK)
	);
	assign RW_OUT = RW_IN;
	
	/******************************** Generate RAM CS and RAM TA **********************************/

	assign RAM_OE_N = RAM_CS_N|!RW_IN;
		
	wire RAM_CS_ADDR;
	wire ROM_CS_ADDR;
	wire RAM_TA_N;
	wire ROM_TA_N;
	
    ZenAddressDecode u_decode(
		.A(A),
		.RAM_ADDR(RAM_CS_ADDR),
		.ROM_ADDR(ROM_CS_ADDR)
	);
	
	assign TA_N = ROM_TA_N&RAM_TA_N;
	

	ZenRAM_CS_TA u_RAM_CS_TA(
		.CLK(CLK),
		.CLKOS(CLKOS),
		.RAM_ADDR(RAM_CS_ADDR),
		.TS_N(TS_N),
		.RW(RW_IN),
		.RAM_CS_N(RAM_CS_N),
		.RAM_TA_N(RAM_TA_N)
	);
	
	/************************************* Generate ROM CS and TA ******************************/
	assign ROM_OE_N = ROM_CS_N|!RW_IN;	// Don't assert ROM_OE if it's a write
	assign ROM_BUFFER_OE_N = ROM_CS_N;
	
	ZenROM_CS_TA u_ROM_CS_TA(
		.CLK(CLK),
		.CLKOS(CLKOS2),
		.ROM_ADDR(ROM_CS_ADDR),
		.TS_N(TS_N),
		.RW(RW_IN),
		.ROM_CS_N(ROM_CS_N),
		.ROM_TA_N(ROM_TA_N)
	);
	
endmodule