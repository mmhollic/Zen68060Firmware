module ZenMainLogic(
	output wire LOCK,
	input wire RST,
	input  wire [31:23] A,
	input wire CLK,
	input wire TS_N,
	input wire RW_IN,
	output wire TA_N /* synthesis DOUT="TRUE" SLEWRATE="FAST" */,
	output wire RAM_CS_N /* synthesis DOUT="TRUE" SLEWRATE="FAST" */
);
	
	wire CLKOP;
	wire CLKOS;
	reg int_RAM_TA_N;
	
	reg trigCS /* synthesis syn_preserve=1 syn_keep=1 */ = 1'b0;
	reg trigTA /* synthesis syn_preserve=1 syn_keep=1 */ = 1'b0;
	
	reg int_RAM_CS_N=1'b1;
	wire RAM_CS_END;
	wire TA_END;
	assign TA_N = int_RAM_CS_N|TA_END;
	
	
	ZenPLL u_ZenPLL(
		.CLKI(CLK), 
		.RST(RST),
		.CLKOP(CLKOP),
		.CLKOS(CLKOS),
		.LOCK(LOCK)
	);
	
	PISO_Short_ShiftReg u_SR_RAMS_CS(
		.Clock(CLKOS),
		.Reset(0),
		.ClockEn(1),
		.Load(!trigCS),       // High = Load Parallel Data, Low = Shift Out
		.ParallelIn(8'b01111111), // The 8-bit word you want to serialize
		.SerialOut(RAM_CS_END)
	);
	PISO_Short_ShiftReg u_SR_TA(
		.Clock(CLKOS),
		.Reset(0),
		.ClockEn(1),
		.Load(!trigTA),       // High = Load Parallel Data, Low = Shift Out
		.ParallelIn(8'b00111111), // The 8-bit word you want to serialize
		.SerialOut(TA_END)
	);

	
	wire group1;
    wire group2;
	wire int_RAM_CS_ADDR;
	
    assign group1 =
          A[23]
        | A[24]
        | A[25]
        | A[26];

    assign group2 =
          ~A[27]
        | A[28]
        | A[29]
        | A[30];

    assign int_RAM_CS_ADDR =!(group1|group2| A[31]);
	assign RAM_CS_N = int_RAM_CS_N|RAM_CS_END;
		
	always @(posedge CLK )
	begin
		if (!TS_N&int_RAM_CS_ADDR)
		begin
			trigCS <=1;
			trigTA <=1;
			int_RAM_CS_N <=1'b0;
		end
		else begin
			trigCS<=0;
			trigTA<=0;
			int_RAM_CS_N <=1'b1;
		end

	end
	
endmodule