module pulse_2point5ns (
    input  wire CLK400,
    input  wire TRIGGER,
	input wire[3:0] pulseCount,
    output reg PULSE
);
	reg[3:0] count;
	
    always @(posedge CLK400)
    begin
        if (TRIGGER && !PULSE) begin
            PULSE <= 1'b1;
			count <= pulseCount;
        end
        else if (PULSE) begin
            if (count == 0) begin
                PULSE <= 1'b0;
            end
            else begin
                count <= count - 1'b1;
            end
        end
    end

endmodule