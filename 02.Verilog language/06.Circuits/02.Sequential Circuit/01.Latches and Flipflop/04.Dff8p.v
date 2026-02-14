module top_module (
    input clk,
    input reset,
    input [7:0] d,
    output [7:0] q
);
integer i;
    always @(negedge clk)begin
        if (reset)q<='h34;
        else
            for(i=0;i<8;i++)q[i]<=d[i];
    end
endmodule
