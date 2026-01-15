module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
wire [15:0]c,c2;
    wire [31:0]xorout;
    
    always @(*)                      
        case(sub)
            0: xorout = b;           
            1: xorout = ~b;
        endcase
    add16 inst1(.a(a[15:0]), .b(xorout[15:0]), .cin(sub), .cout(c), .sum(sum[15:0]));
    add16 inst2(.a(a[31:16]), .b(xorout[31:16]), .cin(c), .cout(c2), .sum(sum[31:16]));

endmodule
