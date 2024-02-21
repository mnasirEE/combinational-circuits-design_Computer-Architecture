module u_32b_add_2 (
    input logic [31:0] in1,
    input logic [31:0] in2,
    input logic cin1,
    output logic [31:0] sout,
    output logic [31:0] cout
);

fulladder s1 (.a(in1[0]), .b(in2[0]), .cin(cin1), .sout(sout[0]),.cout(cout[0]));
fulladder s2 (.a(in1[1]), .b(in2[1]), .cin(co1), .sout(sout[1]),.cout(cout[1]));
fulladder s3 (.a(in1[2]), .b(in2[2]), .cin(co2), .sout(sout[2]),.cout(cout[2]));
fulladder s4 (.a(in1[3]), .b(in2[3]), .cin(co3), .sout(sout[3]),.cout(cout[3]));

endmodule