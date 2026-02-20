module top_module (
    input clk,
    input x,
    output z
); 
    wire d1,d2,d3;
    reg q1=0,q2=0,q3=0;
    
    
    assign d1=q1^x;
    assign d2=~q2&x;
    assign d3=~q3|x;
    
    d_ff dff1(d1,clk,q1);
    d_ff dff2(d2,clk,q2);
    d_ff dff3(d3,clk,q3);
    
    assign z=~(q1 | q2 | q3);
    
endmodule

module d_ff(
    input d,clk,
    output reg q);
    always @ (posedge clk)begin
        q<=d;
    end
endmodule
