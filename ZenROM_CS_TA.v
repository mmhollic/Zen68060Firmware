module ZenROM_CS_TA (
	input wire CLK,
	input wire CLKOS,
	input wire ENABLE,
	input wire TS_N,
	input wire RW,
	output wire ROM_CS_N,
	output wire ROM_TA_N
);
	reg int_ROM_TA_N=1'b1;
	reg int_ROM_CS_N=1'b1;
	wire ROM_CS_END;
	wire ROM_TA_END;
	assign ROM_CS_N = int_ROM_CS_N|ROM_CS_END;
	reg state = 1'b0;	// 0 = TS not received, 1 = TS received
	assign ROM_TA_N = ROM_TA_END;
	reg loadCS /* synthesis syn_preserve=1 syn_keep=1 */ = 1'b0;
	reg loadTA /* synthesis syn_preserve=1 syn_keep=1 */ = 1'b0;
	// loadCS and TA keeps the register start loaded until TS_N and then allows it to run
	
	PISO_Long_ShiftReg u_SR_ROMS_CS(
		.Clock(CLKOS),
		.Reset(0),
		.ClockEn(1),
		.Load(loadCS),       // High = Load Parallel Data, Low = Shift Out
		.ParallelIn((16'b000001111111111&(RW?16'b0000000000111111:16'b1111111111111111))), // The 16-bit word you want to serialize		
		.ShiftInValue(1'b1),
		.SerialOut(ROM_CS_END)
	);
	PISO_Long_ShiftReg u_SR_TA(
		.Clock(CLKOS),
		.Reset(0),
		.ClockEn(1),
		.Load(loadTA),       // High = Load Parallel Data, Low = Shift Out
		.ParallelIn(16'b1111111000111111), // The 8-bit word you want to serialize
		.ShiftInValue(1'b1),
		.SerialOut(ROM_TA_END)
	);

	
	always @(posedge CLK )
	begin
		if (ENABLE)
		begin
			if (!TS_N)	// ROM address and TS asserted. 
			begin
				state <= 1; // Set state to read cycle
				loadCS <=0;	// Allow SR to RUN
				loadTA <=0;
				int_ROM_CS_N <=1'b0;	// Assert CS as soon as possible
			end
			else begin
				if (state) begin
					if (ROM_CS_END)	// Finish the read cycle	
					begin
						int_ROM_CS_N <=1'b1;	// De-assert CS
						loadCS<=1;				// Reset the SR
						if (RW) loadTA<=1;
						else loadTA<=0;				// Delay negating TA by a cycle due to write cycle timing - needs a write recovery time after CS negated 
						state <= 0;				// Exit read cycle state
					end
					else begin
						int_ROM_CS_N <=1'b0;	// In the read cycle, allow SR to keep running
						loadCS<=0;
						loadTA<=0;	
					end
				end
				else begin
					loadCS <=1;	// Not in read cycle, Reset SR
					loadTA <=1;
					int_ROM_CS_N <=1'b1;	
				end
			end
		end
		else begin			// Not in ROM address space
			loadCS <=1;		// Reset SR
			loadTA <=1;
			int_ROM_CS_N <=1'b1;	// De-assert CS	
			state <= 0;
		end
	end

endmodule