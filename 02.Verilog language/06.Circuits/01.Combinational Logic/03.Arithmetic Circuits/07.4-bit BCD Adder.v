module top_module (
    input [15:0] a, 
    input [15:0] b, 
    input cin, 
    output cout, 
    output [15:0] sum
);
    wire [3:0] carry;
    
    generate
        genvar i;
        for (i = 0; i < 4; i = i + 1) begin : bcd_adders
            if (i == 0) 
                bcd_fadd u0 (.a(a[3:0]), .b(b[3:0]), .cin(cin), .cout(carry[i]), .sum(sum[3:0]));
            else 
                bcd_fadd u1 (.a(a[(4*i+3):(4*i)]), .b(b[(4*i+3):(4*i)]), .cin(carry[i-1]), .cout(carry[i]), .sum(sum[(4*i+3):(4*i)]));
        end
    endgenerate
    
    assign cout = carry[3];
    
endmodule
