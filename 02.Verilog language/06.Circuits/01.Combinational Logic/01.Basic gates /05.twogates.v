module top_module (
    input in1,
    input in2,
    input in3,
    output out);
    wire g1;
    xnor(g1,in1,in2);
    xor(out,g1,in3);

endmodule
