module ZenRAM_Line_CS_TA (
	input wire CLK,
	input wire CLKOS,
	input wire ENABLE,
	input wire TS_N,
	input wire RW,
	output wire CLA_N,
	output wire RAM_LINE_CS_N,
	output wire RAM_LINE_TA_N
);
	reg int_RAM_LINE_TA_N=1'b1;
	reg int_RAM_LINE_CS_N=1'b1;
	reg int_CLA_N /* synthesis syn_preserve=1 syn_keep=1 */ = 1'b1;
	assign CLA_N = int_CLA_N;
	wire RAM_LINE_CS_END;
	wire RAM_LINE_TA_END;
	

	reg loadCS /* synthesis syn_preserve=1 syn_keep=1 */ = 1'b1;
	reg loadTA /* synthesis syn_preserve=1 syn_keep=1 */ = 1'b1;
	// loadCS and TA keeps the register start loaded until TS_N and then allows it to run
	assign RAM_LINE_TA_N = int_RAM_LINE_CS_N|RAM_LINE_TA_END;	
	assign RAM_LINE_CS_N = int_RAM_LINE_CS_N|RAM_LINE_CS_END;
			
	PISO_Long_ShiftReg u_SR_LINE_RAMS_CS(
		.Clock(CLKOS),
		.Reset(0),
		.ClockEn(1),
		.Load(loadCS),       // High = Load Parallel Data, Low = Shift Out
		.ParallelIn(16'b0100010001000111&(RW?16'b0000000000000011:16'b1111111111111111)), // The 16-bit word you want to serialize
		.ShiftInValue(1'b0),
		.SerialOut(RAM_LINE_CS_END)
	);
	PISO_Long_ShiftReg u_SR_LINE_TA(
		.Clock(CLKOS),
		.Reset(0),
		.ClockEn(1),
		.Load(loadTA),       // High = Load Parallel Data, Low = Shift Out
		.ParallelIn(16'b0000000000000111), // The 16-bit word you want to serialize
		.ShiftInValue(1'b0),
		.SerialOut(RAM_LINE_TA_END)
	);
	reg [2:0] state=3'b000;
	always @(posedge CLK )
	begin
		if (ENABLE)
		begin
			if (!TS_N)	// ROM address and TS asserted. 
			begin
				state <= 3'b001; // Set state to read cycle
				loadCS <=0;	// Allow SR to RUN
				loadTA <=0;
				int_RAM_LINE_CS_N <=1'b0;	// Assert CS as soon as possible
				int_CLA_N <= 1'b0;
			end
			else begin
				if (state) begin
					if (state==3'b100)	// Finish the read cycle	
					begin
						int_RAM_LINE_CS_N <=1'b1;	// De-assert CS
						loadCS<=1;				// Reset the SR
						loadTA<=1;
						state <= 3'b000;				// Exit read cycle state
						
					end
					else if (state==3'b011)begin
						int_CLA_N <= 1'b1;
						state<=state+1;
					end
					else begin
						state<=state+1;
						//begin
						//int_RAM_LINE_CS_N <=1'b0;	// In the read cycle, allow SR to keep running
						//loadCS<=0;
						//loadTA<=0;
						//state<=state+1;
						//int_CLA_N <= 1'b0;
					end
					
				end

			end
		end

	end

endmodule