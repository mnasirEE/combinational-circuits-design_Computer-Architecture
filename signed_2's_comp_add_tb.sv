module signed_2's_comp_add_tb;

logic [31:0] num_1;
logic [31:0] num_2;
logic [31:0] s_add1;

localparam period = 10;

signed_2's_comp_add UUT(
    .num1(num_1),
    .num2(num_2),
    .s_add(s_add1)
);

initial begin
    num1 = 32'd1010; num2 = 32'd1000;
    #period;
    num1 = -32'd1001253; num2 = -32'd263784;
    #period;
    num1 = 32'd263; num2 = -32'd27383;
    #period;
    num1 = -32'd2526393; num2 = 32'd5363;
    #period;
    num1 = -32'd263; num2 = 32'd27383;
    #period;
    num1 = 32'd2526393; num2 = -32'd5363;
    #period;
    num1 = -32'd263233; num2 = 32'd27383;
    #period;
    num1 = 32'd25263; num2 = -32'd536336;
    #period;
    $stop;
end

initial begin
    $monitor("num1=%b, num2=%b, s_add = %b", num_1,num_2, s_add1);
end
    
endmodule