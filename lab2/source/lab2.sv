


module lab2(output logic y,
input logic a,b,c
);
wire o;
and a1(o, a, b);
or o1(y, o, c);
endmodule
