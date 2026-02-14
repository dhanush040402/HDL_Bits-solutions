module top_module (
    input clk,
    input areset,   // active high asynchronous reset
    input [7:0] d,
    output [7:0]q
);
    integer i;
    always @ (posedge clk or posedge areset)begin
        if (areset)q<=0;
        else
            for(i=0;i<8;i++)q[i]<=d[i];
    end
    

endmodule
