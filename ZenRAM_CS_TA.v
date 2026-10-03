module ZenRAM_CS_TA (
	input wire CLK,
	input wire CLKOS,
	input wire ENABLE,
	input wire TS_N,
	input wire RW,
	output wire RAM_CS_N,
	output wire RAM_TA_N
);
	reg int_RAM_TA_N=1'b1;
	reg int_RAM_CS_N=1'b1;
	wire RAM_CS_END;
	wire RAM_TA_END;

	reg loadCS /* synthesis syn_preserve=1 syn_keep=1 */ = 1'b1;
	reg loadTA /* synthesis syn_preserve=1 syn_keep=1 */ = 1'b1;
	// loadCS and TA keeps the register start loaded until TS_N and then allows it to run
	assign RAM_TA_N = int_RAM_CS_N|RAM_TA_END;	
	assign RAM_CS_N = int_RAM_CS_N|RAM_CS_END;
			
	PISO_Short_ShiftReg u_SR_RAMS_CS(
		.Clock(CLKOS),
		.Reset(0),
		.ClockEn(1),
		.Load(loadCS),       // High = Load Parallel Data, Low = Shift Out
		.ParallelIn(8'b01111111&(RW?8'b00111111:8'b11111111)), // The 8-bit word you want to serialize
		.ShiftInValue(1'b0),
		.SerialOut(RAM_CS_END)
	);
	PISO_Short_ShiftReg u_SR_TA(
		.Clock(CLKOS),
		.Reset(0),
		.ClockEn(1),
		.Load(loadTA),       // High = Load Parallel Data, Low = Shift Out
		.ParallelIn(8'b00111111), // The 8-bit word you want to serialize
		.ShiftInValue(1'b0),
		.SerialOut(RAM_TA_END)
	);


	always @(posedge CLK )
	begin
		if (ENABLE)
		begin
			if (!TS_N)
			begin
				loadCS <=0; // Allow SR to run
				loadTA <=0;
				int_RAM_CS_N <=1'b0;
			end
			else begin
				loadCS<=1;
				loadTA<=1;
				int_RAM_CS_N <=1'b1;
			end
		end
		else begin	// Not in ROM address space
			loadCS <=1;	// Reset SR
			loadTA <=1;
			int_RAM_CS_N <=1'b1;	
		end
	end

endmodule