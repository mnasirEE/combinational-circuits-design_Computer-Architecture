// 32_bit_unsigned_adder_tb

// define module
module unsigned_32_bit_adder_tb;

logic [31:0] in_1, in_2;
logic [31:0] sout1, cout1;
logic cin1;

localparam period = 10; // 10 unit period

unsigned_32_bit_adder UUT(
    .in1(in_1),
    .in2(in_2),
    .cin(cin1),
    .sout(sout1),
    .cout(cout1)

);

// giving some inputs to check outputs
initial begin
    in_1 = 10'd1000; in_2 = 10'd1010; cin1 =0;
    #period;
    in_1 = 20'd1000000; in_2 = 20'd1000010; cin1 =0;
    #period;
    in_1 = 5'd25; in_2 = 3'd6; cin1 =0;
    #period;
    in_1 = 6'd55; in_2 = 5'd5; cin1 =0;
    #period;
    in_1 = 32'b11111111111111111111111111111111; in_2 = 32'b11111111111111111111111111111111; cin1 =0;
    #period;

    // stop simulation
    $stop;
end

// print inputs and outputs on data lines

initial begin
    $monitor("in1 =%b, in2=%b, cin = %b, sout=%b, cout=%b", in_1, in_2, cin1, sout1, cout1);
end

    
endmodule