module u_32b_sub (
    input logic [31:0] in1,in2,
    output logic [31:0] diff
);

assign diff = in1-in2;
    
endmodule