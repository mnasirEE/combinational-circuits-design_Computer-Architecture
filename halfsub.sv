module halfsub (
    input logic in1,
    input logic in2,
    output logic diff, // difference
    output logic bow  // borrow
);

assign diff = in1 ^ in2;
assign bow = ~in1 & in2;

    
endmodule