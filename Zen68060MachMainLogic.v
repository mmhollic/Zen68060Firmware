//============================================================
// RAM address decoder
// Target: Lattice MachXO2-7000HC
//
// Generates active-low RAM chip select.
//
// RAM address range in this example:
//     0x01000000 - 0x017FFFFF
//
// Only address lines A23-A31 are decoded.
//============================================================

module mainLogic
(
    input  wire [31:23] A,
	input wire CLK,
	input wire TS_N,
	input wire RW_IN,
	output wire RW_OUT,
	output wire RAM_CS_N,
	output wire RAM_OE_N,
	input wire RESET_PLL,
	output wire LOCK_PLL,
	output wire TA_N
);
	reg int_TA_SRAM_WR; 	// TA due to an SRAM write
	reg int_TA_SRAM_RD; 	// TA due to an SRAM read
	assign TA_N = !(int_TA_SRAM_WR|int_TA_SRAM_RD);
	
	wire int_RAM_CS_ADDR;		// SRAM selected from address lines
	wire int_RAM_CS_WR;	// SRAM CS due to a write	
	wire int_RAM_CS_RD;	// SRAM CS due to a read
	assign RAM_CS_N = !((int_RAM_CS_WR|int_RAM_CS_RD)&int_RAM_CS_ADDR);
	//assign RAM_OE_N = !((int_RAM_CS_RD|int_RAM_CS_ADDR)&!TA_N);	// That means that if the address changes through valid valus accidentally, it won't assert CS			
	
	
	wire TS;
	assign TS = !TS_N;
	

////////////////////////////////// SRAM section ///////////////////////////////////////

	
	wire CLKOP;
	wire CLKOS;
	wire CLKOS2;
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
		.LOCK(LOCK_PLL),
		.DPHSRC(dphsrc)
	);
	assign C2WINDOW = CLKOS|CLKOS2;
	assign RAM_OE_N = C2WINDOW;
	
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
					1, 3,5,7,9,11: begin	// Adjusts trailing edge
						PHASE_SEL_PLL <= 2'b00;
						PHASESTEP_PLL <= 1'b1;
					end
					0, 2,4,6,8,10: begin
						PHASE_SEL_PLL <= 2'b00;
						PHASESTEP_PLL <= 1'b0;
					end
					13,15,17,19,21,23: begin // Adjusts leading edge
						PHASE_SEL_PLL <= 2'b01;
						PHASESTEP_PLL <= 1'b1;
					end
					12,14,16,18,20,22,24: begin
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
			
			
			
				
	
	
	
	
	
	
	
	// Generate SRAM CS

	// Sram CS is generated directly from Address lines. Signals qualified by TIP
	// 10ns is required from assertion of CS to data ready
	
	assign RW_OUT = RW_IN;
	
    localparam [8:0] RAM_ADDRESS = 9'b000000010;
	wire group1;
    wire group2;
	
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
		

	// Generate SRAM TA
	initial 
	begin
		int_TA_SRAM_WR = 1'b0; 	// TA due to an SRAM write
		int_TA_SRAM_RD = 1'b0; 	// TA due to an SRAM read
	end


	// Generate TA for SRam single read
	// On clk rising edge, if TS was asserted, assert TA
	// De-assert TA on the next CLK edge	
    always @(posedge CLK)
    begin
		if(RW_IN&int_RAM_CS_ADDR)
		begin
			if (int_TA_SRAM_RD) int_TA_SRAM_RD<=1'b0;	// De-assert TA at end of C2
			if (TS) int_TA_SRAM_RD<=1'b1;				// Assert TA at end of C1
		end
    end
	assign int_RAM_CS_RD = int_TA_SRAM_RD&C2WINDOW;		// AND TA with CLKOS to get CS that ends soon after end of C2
	
	// Generate TA for SRam single write
    always @(posedge CLK)
    begin
		if(!RW_IN&int_RAM_CS_ADDR)
		begin
			if (int_TA_SRAM_WR) int_TA_SRAM_WR<=1'b0;
			if (TS) int_TA_SRAM_WR<=1'b1;
		end
    end	
	assign int_RAM_CS_WR = int_TA_SRAM_WR&C2WINDOW;
	
	
	


endmodule