`timescale 1ns/1ps

module mainLogic_tb;
    reg         CLK;
    reg  [31:23] A;
    reg         TS_N;
    reg         RW_IN;
	wire 		TA_N;
    wire        RAM_CS_N;
	reg RST;
	wire LOCK;



    // Instantiate real design
    ZenMainLogic dut (
		.LOCK	  (LOCK),
		.RST      (RST),
        .A        (A),
        .CLK      (CLK),
        .TS_N     (TS_N),
        .RW_IN    (RW_IN),
		.TA_N     (TA_N),
        .RAM_CS_N (RAM_CS_N)
        	
    );


    // 50 MHz clock: 20 ns period
    initial begin
        CLK = 1'b0;
        forever #10 CLK = ~CLK;
    end


    // Bus stimulus
    initial begin
		// Idle
        A     = 9'b000000000;
        TS_N  = 1'b1;
        RW_IN = 1'b1;


		// Get the PLL going
			RST = 1'b1;
			#2000
			RST = 1'b0;
			wait (LOCK == 1'b1);
				
				
                repeat (40) begin
			// Address outside RAM region
			A = 9'b000000000;
			RW_IN = 1'b1;
			@(posedge CLK);					// C1
			#12.3;
			TS_N = 1'b0;					// First assert TS
			#1.2;
			// Address inside RAM region:	// Assert SRAM address
			// A[31:23] = 000010000
			A = 9'b000010000;
			RW_IN = 1'b1;
			#8.5;							// C2
			TS_N = 1'b1;					// De-assert TS	
			
			
			
			@(posedge CLK);					// C1	
			#2;
			A = 9'b000000000;				// De-assert SRAM address
			#11.3;
			TS_N = 1'b0;					// First assert TS
			#0.2;
			// Address inside RAM region:	// Assert SRAM address
			// A[31:23] = 000010000
			A = 9'b000010000;
			RW_IN = 1'b0;
			#9.5;							// C2
			TS_N = 1'b1;					// De-assert TS	
			@(posedge CLK);					// End of C2
			#1;
			
		end

        



        $stop;

    end

endmodule





