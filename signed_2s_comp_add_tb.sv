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
    num_1 = 32'd1010; num_2 = 32'd1000;
    #period;
    num_1 = -32'h10002530; num_2 = -32'h12637841;
    #period;
    num_1 = 32'd263; num_2 = -32'h10027383;
    #period;
    num_1 = -32'h10226393; num_2 = 32'd5363;
    #period;
    num_1 = -32'h10000263; num_2 = 32'd27383;
    #period;
    num_1 = 32'd2526393; num_2 = -32'h10005363;
    #period;
    num_1 = -32'h10263233; num_2 = 32'd27383;
    #period;
    num_1 = 32'd25263; num_2 = -32'h10536336;
    #period;
    $stop;
end

initial begin
    $monitor("num1=%b, num2=%b, s_add = %b", num_1,num_2, s_add1);
end
    
endmodule