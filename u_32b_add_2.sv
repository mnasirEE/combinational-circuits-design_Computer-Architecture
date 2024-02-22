module u_32b_add_2 (
    input logic [31:0] in1,
    input logic [31:0] in2,
    input logic cin1,
    output logic [31:0] sout,
    output logic [31:0] cout
);

fulladder s0 (.a(in1[0]), .b(in2[0]), .cin(cin1), .sout(sout[0]),.cout(cout[0]));
fulladder s1 (.a(in1[1]), .b(in2[1]), .cin(cout[0]), .sout(sout[1]),.cout(cout[1]));
fulladder s2 (.a(in1[2]), .b(in2[2]), .cin(cout[1]), .sout(sout[2]),.cout(cout[2]));
fulladder s3 (.a(in1[3]), .b(in2[3]), .cin(cout[2]), .sout(sout[3]),.cout(cout[3]));
fulladder s4 (.a(in1[4]), .b(in2[4]), .cin(cout[3]), .sout(sout[4]),.cout(cout[4]));
fulladder s5 (.a(in1[5]), .b(in2[5]), .cin(cout[4]), .sout(sout[5]),.cout(cout[5]));
fulladder s6 (.a(in1[6]), .b(in2[6]), .cin(cout[5]), .sout(sout[6]),.cout(cout[6]));
fulladder s7 (.a(in1[7]), .b(in2[7]), .cin(cout[6]), .sout(sout[7]),.cout(cout[7]));
fulladder s8 (.a(in1[8]), .b(in2[8]), .cin(cout[7]), .sout(sout[8]),.cout(cout[8]));
fulladder s9 (.a(in1[9]), .b(in2[9]), .cin(cout[8]), .sout(sout[9]),.cout(cout[9]));
fulladder s10 (.a(in1[10]), .b(in2[10]), .cin(cout[9]), .sout(sout[10]),.cout(cout[10]));
fulladder s11(.a(in1[11]), .b(in2[11]), .cin(cout[10]), .sout(sout[11]),.cout(cout[11]));
fulladder s12 (.a(in1[12]), .b(in2[12]), .cin(cout[11]), .sout(sout[12]),.cout(cout[12]));
fulladder s13 (.a(in1[13]), .b(in2[13]), .cin(cout[12]), .sout(sout[13]),.cout(cout[13]));
fulladder s14 (.a(in1[14]), .b(in2[14]), .cin(cout[13]), .sout(sout[14]),.cout(cout[14]));
fulladder s15 (.a(in1[15]), .b(in2[15]), .cin(cout[14]), .sout(sout[15]),.cout(cout[15]));
fulladder s16 (.a(in1[16]), .b(in2[16]), .cin(cout[15]), .sout(sout[16]),.cout(cout[16]));
fulladder s17 (.a(in1[17]), .b(in2[17]), .cin(cout[16]), .sout(sout[17]),.cout(cout[17]));
fulladder s18 (.a(in1[18]), .b(in2[18]), .cin(cout[17]), .sout(sout[18]),.cout(cout[18]));
fulladder s19 (.a(in1[19]), .b(in2[19]), .cin(cout[18]), .sout(sout[19]),.cout(cout[19]));
fulladder s20 (.a(in1[20]), .b(in2[20]), .cin(cout[19]), .sout(sout[20]),.cout(cout[20]));
fulladder s21 (.a(in1[21]), .b(in2[21]), .cin(cout[20]), .sout(sout[21]),.cout(cout[21]));
fulladder s22 (.a(in1[22]), .b(in2[22]), .cin(cout[21]), .sout(sout[22]),.cout(cout[22]));
fulladder s23 (.a(in1[23]), .b(in2[23]), .cin(cout[22]), .sout(sout[23]),.cout(cout[23]));
fulladder s24 (.a(in1[24]), .b(in2[24]), .cin(cout[23]), .sout(sout[24]),.cout(cout[24]));
fulladder s25 (.a(in1[25]), .b(in2[25]), .cin(cout[24]), .sout(sout[25]),.cout(cout[25]));
fulladder s26 (.a(in1[26]), .b(in2[26]), .cin(cout[25]), .sout(sout[26]),.cout(cout[26]));
fulladder s27 (.a(in1[27]), .b(in2[27]), .cin(cout[26]), .sout(sout[27]),.cout(cout[27]));
fulladder s28 (.a(in1[28]), .b(in2[28]), .cin(cout[27]), .sout(sout[28]),.cout(cout[28]));
fulladder s29 (.a(in1[29]), .b(in2[29]), .cin(cout[28]), .sout(sout[29]),.cout(cout[29]));
fulladder s30 (.a(in1[30]), .b(in2[30]), .cin(cout[29]), .sout(sout[30]),.cout(cout[30]));
fulladder s31 (.a(in1[31]), .b(in2[31]), .cin(cout[30]), .sout(sout[31]),.cout(cout[31]));

endmodule