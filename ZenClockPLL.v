module ZenClockPLL(
	input wire CLK,
	input wire RESET_PLL,
	input wire LOCK_PLL,
	output wire CLKOS,
	output wire CLKOS2,
	output wire CLKOS3
);
	wire CLKOP;
	wire dphsrc;
	reg  PHASESTEP_PLL  = 0;
	reg [2:0] PHASE_SEL_PLL = 0;
	
	ZenPLL u_ZenPLL(
		.CLKI(CLK),
		.PHASESEL(PHASE_SEL_PLL), 
		.PHASEDIR(1'b1), 
		.PHASESTEP(PHASESTEP_PLL),
		.RST(RESET_PLL),
		.CLKOP(CLKOP),
		.CLKOS(CLKOS),
		.CLKOS2(CLKOS2),
		.CLKOS3(CLKOS3),
		.LOCK(LOCK_PLL),
		.DPHSRC(dphsrc)
	);
	
	reg phase_done  = 0;
	reg [5:0] phase_count = 1'b1;
	always @(posedge CLK)
	begin
		if (RESET_PLL) begin
			phase_count <= 0;
			PHASESTEP_PLL  <= 0;
			phase_done  <= 0;
		end
		else if (LOCK_PLL && !phase_done) begin
			begin
				phase_count<=phase_count+1;
				case(phase_count)
					1: begin	// Adjusts trailing edge
						PHASE_SEL_PLL <= 2'b00;
						PHASESTEP_PLL <= 1'b1;
					end
					0: begin
						PHASE_SEL_PLL <= 2'b00;
						PHASESTEP_PLL <= 1'b0;
					end
					3,5,7: begin // Adjusts leading edge
						PHASE_SEL_PLL <= 2'b01;
						PHASESTEP_PLL <= 1'b1;
					end
					2,4,6,8: begin
						PHASE_SEL_PLL <= 2'b01;
						PHASESTEP_PLL <= 1'b0;
					end
					default: begin
						phase_done <= 1'b1;
					end
				endcase
			end
		end
	end
endmodule
			