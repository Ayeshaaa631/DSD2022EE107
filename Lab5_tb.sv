module segment_tb;
    reg a1, a0, b1, b0, x, y, z;
    wire SegA, SegB, SegC, SegD, SegE, SegF, SegG, An0, An1, An2, An3, An4, An5, An6, An7;
    segment uut (
        .a0(a0), .a1(a1), .b0(b0), .b1(b1),
        .x(x), .y(y), .z(z),
        .SegA(SegA), .SegB(SegB), .SegC(SegC), .SegD(SegD),.SegE(SegE), .SegF(SegF), .SegG(SegG),
        .An0(An0), .An1(An1), .An2(An2), .An3(An3), .An4(An4), .An5(An5), .An6(An6), .An7(An7)
    );
    initial begin
        $monitor("Time=%0t, a1=%b, a0=%b, b1=%b, b0=%b, x=%b, y=%b, z=%b, SegA=%b, SegB=%b, SegC=%b, SegD=%b, SegE=%b, SegF=%b, SegG=%b, An0=%b, An1=%b, An2=%b, An3=%b, An4=%b, An5=%b, An6=%b, An7=%b", $time, a0, a1, b0, b1, x, y, z, SegA, SegB, SegC, SegD, SegE, SegF, SegG, An0, An1, An2, An3, An4, An5, An6, An7);
        x = 0; y = 0; z = 0; a1 = 0; a0 = 0; b1 = 0; b0 = 0;  #10; // test case 1
        x = 0; y = 0; z = 1; a1 = 0; a0 = 0; b1 = 0; b0 = 1;  #10; // test case 2
        x = 0; y = 1; z = 0; a1 = 0; a0 = 0; b1 = 1; b0 = 0;  #10; // test case 3
        x = 0; y = 1; z = 1; a1 = 0; a0 = 0; b1 = 1; b0 = 1;  #10; // test case 4
        x = 1; y = 0; z = 0; a1 = 0; a0 = 1; b1 = 0; b0 = 0;  #10; // test case 5
        x = 1; y = 0; z = 1; a1 = 0; a0 = 1; b1 = 0; b0 = 1;  #10; // test case 6
        x = 1; y = 1; z = 0; a1 = 0; a0 = 1; b1 = 1; b0 = 0;  #10; // test case 7
        x = 1; y = 1; z = 1; a1 = 0; a0 = 1; b1 = 1; b0 = 1;  #10; // test case 8
        a1 = 1; a0 = 0; b1 = 0; b0 = 0; #10;                       // test case 9
        a1 = 1; a0 = 0; b1 = 0; b0 = 1; #10;                       // test case 10
        a1 = 1; a0 = 0; b1 = 1; b0 = 0; #10;                       // test case 11
        a1 = 1; a0 = 0; b1 = 1; b0 = 1; #10;                       // test case 12
        a1 = 1; a0 = 1; b1 = 0; b0 = 0; #10;                       // test case 13
        a1 = 1; a0 = 1; b1 = 0; b0 = 1; #10;                       // test case 14
        a1 = 1; a0 = 1; b1 = 1; b0 = 0; #10;                       // test case 15
        a1 = 1; a0 = 1; b1 = 1; b0 = 1; #10;                       // test case 16
    end
endmodule