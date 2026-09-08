module PISO_Long_ShiftReg (
    input  wire        Clock,
    input  wire        Reset,
    input  wire        ClockEn,
    input  wire        Load,
    input  wire [15:0] ParallelIn,
    output wire        SerialOut
);

    (* syn_srlstyle = "registers" *)
    reg [15:0] shift_reg = 16'b0;

    /*
     * First capture external Load on the opposite clock edge.
     */
    reg load_half = 1'b1;

    always @(negedge Clock) begin
        if (Reset)
            load_half <= 1'b1;
        else
            load_half <= Load;
    end


    /*
     * Transfer it into the normal rising-edge clock domain.
     *
     * The PISO below sees the OLD value of load_registered
     * on this same edge, because non-blocking assignments
     * don't take effect until after the edge has been evaluated.
     */
    reg load_registered = 1'b1;

    always @(posedge Clock) begin
        if (Reset)
            load_registered <= 1'b1;
        else
            load_registered <= load_half;
    end


    assign SerialOut = shift_reg[15];


    always @(posedge Clock) begin
        if (Reset) begin

            shift_reg <= 16'b0;

        end else if (ClockEn) begin

            if (load_registered)
                shift_reg <= ParallelIn;
            else
                shift_reg <= {shift_reg[14:0], 1'b0};

        end
    end

endmodule


module PISO_Short_ShiftReg (
    input  wire        Clock,
    input  wire        Reset,
    input  wire        ClockEn,
    input  wire        Load,
    input  wire [7:0] ParallelIn,
    output wire        SerialOut
);

    (* syn_srlstyle = "registers" *)
    reg [7:0] shift_reg = 8'b0;

    /*
     * First capture external Load on the opposite clock edge.
     */
    reg load_half = 1'b1;

    always @(negedge Clock) begin
        if (Reset)
            load_half <= 1'b1;
        else
            load_half <= Load;
    end


    /*
     * Transfer it into the normal rising-edge clock domain.
     *
     * The PISO below sees the OLD value of load_registered
     * on this same edge, because non-blocking assignments
     * don't take effect until after the edge has been evaluated.
     */
    reg load_registered = 1'b1;

    always @(posedge Clock) begin
        if (Reset)
            load_registered <= 1'b1;
        else
            load_registered <= load_half;
    end


    assign SerialOut = shift_reg[7];


    always @(posedge Clock) begin
        if (Reset) begin

            shift_reg <= 8'b0;

        end else if (ClockEn) begin

            if (load_registered)
                shift_reg <= ParallelIn;
            else
                shift_reg <= {shift_reg[14:0], 1'b0};

        end
    end

endmodule


