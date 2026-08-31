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
	reg int_TA_SRAM; 	// TA due to an SRAM write
	assign TA_N = !int_TA_SRAM;
	
	wire int_RAM_CS_ADDR;		// SRAM selected from address lines
	wire int_RAM_CS;	// SRAM CS due to a write	
	assign RAM_CS_N = !int_RAM_CS;
	
	//assign RAM_OE_N = !((int_RAM_CS|int_RAM_CS_ADDR)&!TA_N);	// That means that if the address changes through valid valus accidentally, it won't assert CS			
	
	wire TS;
	assign TS = !TS_N;
	

////////////////////////////////// SRAM section ///////////////////////////////////////

	
	wire CLKOS;
	wire CLKOS2;
	wire CLKOS3;
	
	ZenClockPLL u_pll(
		.CLK (CLK),
		.RESET_PLL (RESET_PLL),
		.LOCK_PLL (LOCK_PLL),
		.CLKOS (CLKOS),
		.CLKOS2 (CLKOS2),
		.CLKOS3 (CLKOS3)
	);
	assign C2WINDOW = CLKOS|CLKOS2;
	assign RAM_OE_N = C2WINDOW;		
	
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
		
	wire twelvepoint5pulse;
	wire TRIGGER;
	reg TRIGGER_REG;
	assign TRIGGER = TRIGGER_REG;
	// Generate SRAM TA
	initial 
	begin
		int_TA_SRAM = 1'b0; 	// TA due to an SRAM write
		TRIGGER_REG = 1'b0;
	end

	
	pulse_2point5ns pulse12point5(
		.CLK400(CLKOS3),
		.TRIGGER(TRIGGER),
		.pulseCount(3'b100),
		.PULSE(twelvepoint5pulse)
	);


	// Generate TA for SRam single read
	// On clk rising edge, if TS was asserted, assert TA
	// De-assert TA on the next CLK edge	
    always @(posedge CLK)
    begin
		if(int_RAM_CS_ADDR)
		begin
			if (int_TA_SRAM) 
			begin
				int_TA_SRAM<=1'b0;	// De-assert TA at end of C2
				TRIGGER_REG = 1'b0;
			end
			if (TS) 
			begin 
				int_TA_SRAM<=1'b1;				// Assert TA at end of C1
				TRIGGER_REG = 1'b1;
			end
		end
    end
	assign int_RAM_CS = twelvepoint5pulse;//int_TA_SRAM&C2WINDOW;		// AND TA with CLKOS to get CS that ends soon after end of C2

	


endmodule