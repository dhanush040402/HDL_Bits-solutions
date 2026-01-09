module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );
    wire g1;
    wire g2;
    wire g3;
    wire g4;
    wire g5;
    wire g6;
    and(g1,p2a,p2b);
    and(g2,p2c,p2d);
    or(g3,g1,g2);
    assign p2y=g3;
    and(g4,p1a,p1c,p1b);
    and(g5,p1f,p1e,p1d);
    or(g6,g4,g5);
    assign p1y=g6;


endmodule
