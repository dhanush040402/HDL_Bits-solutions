module top_module (
    input [7:0] in,
    output reg [2:0] pos );



    always @(*) begin
        casez (in)
            8'b???????1: pos = 3'b000;   // bit 0
            8'b??????10: pos = 3'b001;   // bit 1
            8'b?????100: pos = 3'b010;   // bit 2
            8'b????1000: pos = 3'b011;   // bit 3
            8'b???10000: pos = 3'b100;   // bit 4
            8'b??100000: pos = 3'b101;   // bit 5
            8'b?1000000: pos = 3'b110;   // bit 6
            8'b10000000: pos = 3'b111;   // bit 7 (lowest priority)
            default:      pos = 3'b000;  // no bits set
        endcase
    end



endmodule
