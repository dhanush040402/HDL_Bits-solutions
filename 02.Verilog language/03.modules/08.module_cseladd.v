module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire [15:0]s2,s3;
    wire c2,c3,sel;
    add16 a1(.a(a[15:0]),.b(b[15:0]),.cin(1'b0),.sum(sum[15:0]),.cout(sel));
    add16 a2(.a(a[31:16]),.b(b[31:16]),.cin(1'b0),.sum(s2),.cout(c2));
    add16 a3(.a(a[31:16]),.b(b[31:16]),.cin(1'b1),.sum(s3),.cout(c3));
    always @(*)begin
        case(sel)
            1'b0:sum[31:16]=s2;
            1'b1:sum[31:16]=s3;
        endcase
    end
endmodule
