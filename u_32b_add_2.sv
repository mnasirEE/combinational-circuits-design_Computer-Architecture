module u_32b_add_2 (
    input logic [3:0] in1,
    input logic [3:0] in2,
    input logic cin1,
    output logic [3:0] sout1,
    output logic [4:0] s_total,
    output logic co1,co2,co3,co4
);

fulladder s1 (.a(in1[0]), .b(in2[0]), .cin(cin1), .sout(sout1[0]),.cout(co1));
fulladder s2 (.a(in1[1]), .b(in2[1]), .cin(co1), .sout(sout1[1]),.cout(co2));
fulladder s3 (.a(in1[2]), .b(in2[2]), .cin(co2), .sout(sout1[2]),.cout(co3));
fulladder s4 (.a(in1[3]), .b(in2[3]), .cin(co3), .sout(sout1[3]),.cout(co4));



endmodule