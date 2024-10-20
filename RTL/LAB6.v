module LAB6 (
    input A,       // input A
    input B,       // input B
    input enable,  // enable input
    output [3:0] Y // output
);
    assign Y = (enable == 1) ? (1 << {A, B}) : 4'b0000; 
endmodule
