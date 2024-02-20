module Lab3(input a,b,c,
        output x,y
    );
    assign not_gate = (~c);
    assign or_gate = (a || b);
    assign nand_gate = ~(a && b);
    assign x = (not_gate ^ or_gate);
    assign xor_gate = (nand_gate  ^ or_gate);
    assign y = (or_gate && xor_gate );
endmodule