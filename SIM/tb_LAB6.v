module tb_LAB6;
    reg A, B, enable;
    wire [3:0] Y;

    LAB6 uut (
        .A(A),
        .B(B),
        .enable(enable),
        .Y(Y)
    );

    initial begin
        $dumpfile("tb_LAB6.vcd");
        $dumpvars(0, tb_LAB6);

        enable = 0; A = 0; B = 0;
        #10 enable = 1; A = 0; B = 0;
        #10 enable = 1; A = 0; B = 1;
        #10 enable = 1; A = 1; B = 0;
        #10 enable = 1; A = 1; B = 1;
        #10 enable = 0;
        #10 $finish;
    end
endmodule
