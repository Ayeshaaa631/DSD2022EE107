module Lab4_tb;
    reg a0, a1, b0, b1;
    wire R, G, B;
    Lab4 dut (
        .a0(a0),
        .a1(a1),
        .b0(b0),
        .b1(b1),
        .R(R),
        .G(G),
        .B(B)
    );
    initial begin
        $monitor("Time=%0t, a0=%b, a1=%b, b0=%b, b1=%b, R=%b, G=%b, B=%b", $time, a0, a1, b0, b1, R, G, B);
        a0 = 0; a1 = 0; b0 = 0; b1 = 0; #10; // test case 1
        a0 = 0; a1 = 0; b0 = 0; b1 = 1; #10; // test case 2
        a0 = 0; a1 = 0; b0 = 1; b1 = 0; #10; // test case 3
        a0 = 0; a1 = 0; b0 = 1; b1 = 1; #10; // test case 4
        a0 = 0; a1 = 1; b0 = 0; b1 = 0; #10; // test case 5
        a0 = 0; a1 = 1; b0 = 0; b1 = 1; #10; // test case 6
        a0 = 0; a1 = 1; b0 = 1; b1 = 0; #10; // test case 7
        a0 = 0; a1 = 1; b0 = 1; b1 = 1; #10; // test case 8
        a0 = 1; a1 = 0; b0 = 0; b1 = 0; #10; // test case 9
        a0 = 1; a1 = 0; b0 = 0; b1 = 1; #10; // test case 10
        a0 = 1; a1 = 0; b0 = 1; b1 = 0; #10; // test case 11
        a0 = 1; a1 = 0; b0 = 1; b1 = 1; #10; // test case 12
        a0 = 1; a1 = 1; b0 = 0; b1 = 0; #10; // test case 13
        a0 = 1; a1 = 1; b0 = 0; b1 = 1; #10; // test case 14
        a0 = 1; a1 = 1; b0 = 1; b1 = 0; #10; // test case 15
        a0 = 1; a1 = 1; b0 = 1; b1 = 1; #10; // test case 16
        $stop;
    end
endmodule

