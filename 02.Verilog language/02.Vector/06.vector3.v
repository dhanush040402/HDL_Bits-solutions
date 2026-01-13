module top_module (
    input [4:0] a, b, c, d, e, f,
    output [7:0] w, x, y, z );//

    // assign { ... } = { ... };
    wire [31:0] temp;

    // Concatenate 30 bits + two 1 bits
    assign temp = {a, b, c, d, e, f, 1'b1, 1'b1};

    // Split into 4 output bytes
    assign {w, x, y, z} = temp;


endmodule
