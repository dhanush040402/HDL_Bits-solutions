module top_module (
    input  [3:0] in,
    output reg [1:0] pos
);

    always @(*) begin
        casex (in)
            4'bxxx1: pos = 2'b00;   // bit 0 is highest priority
            4'bxx10: pos = 2'b01;   // bit 1
            4'bx100: pos = 2'b10;   // bit 2
            4'b1000: pos = 2'b11;   // bit 3
            default: pos = 2'b00;   // no bits set
        endcase
    end

endmodule
