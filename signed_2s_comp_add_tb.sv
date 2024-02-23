module signed_2s_comp_add_tb;

logic [31:0] num_1;
logic [31:0] num_2;
logic [31:0] s_add1;


localparam period = 10;

signed_2s_comp_add UUT(
    .num1(num_1),
    .num2(num_2),
    .s_add(s_add1)
);

initial begin
    num_1 = 32'd10; num_2 = 32'd3;
    #period;
    num_1 = -32'd5; num_2 = -32'd3;
    #period;
    num_1 = 32'd2; num_2 = -32'd7;
    #period;
    num_1 = -32'd15; num_2 = 32'd21;
    #period;
    $stop;
end

initial begin
    $monitor("num1=%b, num2=%b, s_add = %b", num_1,num_2, s_add1);
end
    
endmodule