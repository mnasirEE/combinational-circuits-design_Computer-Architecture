module c_signed_2scomp_add_tb;

logic [31:0]num_1;
logic [31:0]num_2;
logic [31:0]sum1;

localparam period = 10 ;

c_signed_2scomp_add UUT(
    .num1(num_1),
    .num2(num_2),
    .sum(sum1)
);

initial begin
    num_1 = 32'd5; num_2 = 32'd7;
    #period;
    num_1 = 32'h80000003; num_2 = 32'h80000005;
    #period;
    num_1 = 32'h00000002 ; num_2 = 32'h80000002;
    #period;
    num_1 = 32'h00000003 ; num_2 = 32'h80000001;
    #period;
    num_1 = 32'h00000002 ; num_2 = 32'h80000003;
    #period;
    num_1 = 32'h00000003 ; num_2 = 32'h80000002;
    #period;
    num_1 = 32'h80000001 ; num_2 = 32'h00000003;
    #period;
    num_1 = 32'h80000003 ; num_2 = 32'h00000002;
    #period;
    num_1 = 32'h80000002 ; num_2 = 32'h00000003;
    #period;
    $stop;
end

initial begin
    $monitor("num1=%b, num2=%b, sum=%b", num_1, num_2, sum1);
end

endmodule