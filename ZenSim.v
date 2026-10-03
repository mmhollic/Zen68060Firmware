`timescale 1ns/1ps

module mainLogic_tb;
    reg         CLK;
    reg  [31:23] A;
    reg         TS_N;
    reg         RW_IN;
	reg			SIZ0;
	reg			SIZ1;
	wire 		RW_OUT;
	wire 		TA_N;
    wire        RAM_CS_N;
	wire        ROM_CS_N;
	wire        ROM_OE_N;
	wire        ROM_BUFFER_OE_N;
	wire		RAM_OE_N;
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
		.SIZ0	  (SIZ0),
		.SIZ1     (SIZ1),
		.RW_OUT	  (RW_OUT),	
		.TA_N     (TA_N),
        .RAM_CS_N (RAM_CS_N),
		.RAM_OE_N (RAM_OE_N),
		.ROM_CS_N (ROM_CS_N),
		.ROM_OE_N (ROM_OE_N),
		.ROM_BUFFER_OE_N (ROM_BUFFER_OE_N)	
    );


    // 50 MHz clock: 20 ns period
    initial begin
        CLK = 1'b0;
        forever #10 CLK = ~CLK;
    end


    
	
	// ROM Bus stimulus
	initial begin
		// Idle
        A     = 9'b000000000;
        TS_N  = 1'b1;
        RW_IN = 1'b1;
		SIZ0 = 1'b0;
		SIZ1 = 1'b0;


	// Get the PLL going
		RST = 1'b1;
		#2000
		RST = 1'b0;
		wait (LOCK == 1'b1);
				
				
        repeat (40) begin
			// Address outside ROM region
			A = 9'b000000000;
			
			/*********************************** ROM READ ************************************/
			RW_IN = 1'b1;					// C1
			// Address outside ROM region
			A = 9'b000000000;
			#12.3;
			TS_N = 1'b0;					// First assert TS
			#1.2;
			// Address inside ROM region:	// Assert SRAM address
			// A[31:23] = 000010000
			A = 9'b000100000;
			RW_IN = 1'b1;
			#8.5;							// C2
			TS_N = 1'b1;					// De-assert TS	
			@(posedge CLK);
			@(posedge CLK);
			@(posedge CLK);
			//@(posedge CLK);
			#2;
			/********************************************************************************/
			/*********************************** ROM WRITE **********************************/
			RW_IN = 1'b1;					// C1
			// Address outside ROM region
			A = 9'b000000000;
			#12.3;
			TS_N = 1'b0;					// First assert TS
			#1.2;
			// Address inside ROM region:	// Assert SRAM address
			// A[31:23] = 000010000
			A = 9'b000100000;
			RW_IN = 1'b0;
			#8.5;							// C2
			TS_N = 1'b1;					// De-assert TS	
			@(posedge CLK);
			@(posedge CLK);
			@(posedge CLK);
			/********************************************************************************/
			
			/*********************************** RAM LINE READ **********************************/
			RW_IN = 1'b1;					// C1
			// Address outside ROM region
			A = 9'b000000000;
			#12.3;
			TS_N = 1'b0;					// First assert TS
			#1.2;
			// Address inside ROM region:	// Assert SRAM address
			// A[31:23] = 000010000
			A = 9'b000010000;
			RW_IN = 1'b1;
			SIZ0 = 1'b1;
			SIZ1 = 1'b1;
			#8.5;							// C2
			TS_N = 1'b1;					// De-assert TS	
			@(posedge CLK);
			@(posedge CLK);
			@(posedge CLK);
			@(posedge CLK);
			SIZ0 = 1'b0;
			SIZ1 = 1'b0;
			/*************************************************************************************/
			/*********************************** RAM LINE WRITE **********************************/
			RW_IN = 1'b1;					// C1
			// Address outside ROM region
			A = 9'b000000000;
			#12.3;
			TS_N = 1'b0;					// First assert TS
			#1.2;
			// Address inside ROM region:	// Assert SRAM address
			// A[31:23] = 000010000
			A = 9'b000010000;
			RW_IN = 1'b0;
			SIZ0 = 1'b1;
			SIZ1 = 1'b1;
			#8.5;							// C2
			TS_N = 1'b1;					// De-assert TS	
			@(posedge CLK);
			@(posedge CLK);
			@(posedge CLK);
			@(posedge CLK);
			SIZ0 = 1'b0;
			SIZ1 = 1'b0;
			#2;
			/********************************************************************************/

			repeat (4) begin 
				/********************************* RAM READ *********************************/
				#10.3;
				TS_N = 1'b0;					// First assert TS
				#1.2;
				// Address inside RAM region:	// Assert SRAM address
				// A[31:23] = 000010000
				A = 9'b000010000;
				RW_IN = 1'b1;
				#8.5;							// C2
				TS_N = 1'b1;					// De-assert TS	
				@(posedge CLK);					// C1	
				// Wait 2ns and de-assert address and other attributes
				#2;
				A = 9'b000000000;
				RW_IN = 1'b1;
				/********************************************************************************/
				/*********************************** RAM WRITE ************************************/
				
				#10.3;
				TS_N = 1'b0;					// First assert TS
				#1.2;
				// Address inside RAM region:	// Assert SRAM address
				// A[31:23] = 000010000
				A = 9'b000010000;
				RW_IN = 1'b0;
				#8.5;							// C2
				TS_N = 1'b1;					// De-assert TS	
				@(posedge CLK);					// C1	
				// Wait 2ns and de-assert address and other attributes
				#2;
				A = 9'b000000000;
				RW_IN = 1'b1;
				/********************************************************************************/
			end
			
		end

        $stop;

    end

endmodule





