module lab2_tb;
logic a1;
logic b1;
logic c1;
logic y1;
localparam period = 10;
lab2 UUT(
.a(a1),
.b(b1),
.c(c1),
.y(y1)
);
initial 
begin

a1 = 0; b1 = 0; c1 = 0;
#period;
a1 = 0; b1 = 0; c1 = 1;
#period;
a1 = 0; b1 = 1; c1 = 0;
#period;
a1 = 0; b1 = 1; c1 = 1;
#period;
a1 = 1; b1 = 0; c1 = 0;
#period;
a1 = 1; b1 = 0; c1 = 1;
#period;
a1 = 1; b1 = 1; c1 = 0;
#period;
a1 = 1; b1 = 1; c1 = 1;
#period;
$stop;
end
initial
begin
$monitor("y=%b, a=%b, b=%b, c=%b", y1,a1,b1,c1);
end
endmodule
