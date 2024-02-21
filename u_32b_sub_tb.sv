module u_32b_sub_tb;

logic [31:0] in_1, in_2;
logic [31:0] diff1;

localparam period = 10;

u_32b_sub UUT(
    .in1(in_1),
    .in2(in_2),
    .diff(diff1)
);

initial begin
    in_1 = 32'd10; in_2 = 32'd5;
    #period;
    in_1 = 32'd100; in_2 = 32'd99;
    #period;
    in_1 = 32'd1000; in_2 = 32'd1010;
    #period;
    in_1 = 32'd1073409; in_2 = 32'd80675;
    #period;
    $stop;
end

initial begin
    $monitor("in1=%b, in2=%b, diff = %b", in_1, in_2, diff1);
end
    
endmodule