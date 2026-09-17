module ZenAddressDecode (
	input wire [31:23] A,
	output wire RAM_ADDR,
	output wire ROM_ADDR
);

	wire group1;
    wire group2;
	
	assign RAM_group1 =
          A[23]
        | A[24]
        | A[25]
        | A[26];

    assign RAM_group2 =
          ~A[27]
        | A[28]
        | A[29]
        | A[30];

	assign ROM_group1 =
          A[23]
        | A[24]
        | A[25]
        | A[26];

    assign ROM_group2 =
          A[27]
        | ~A[28]
        | A[29]
        | A[30];

    assign RAM_ADDR =!(RAM_group1|RAM_group2| A[31]);
	assign ROM_ADDR =!(ROM_group1|ROM_group2| A[31]);

endmodule
