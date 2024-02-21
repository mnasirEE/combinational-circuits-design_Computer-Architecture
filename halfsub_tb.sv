module halfsub_tb;

logic in_1;
logic in_2;
logic diff1;
logic bow1;

localparam period = 10 ;

fulladder UUT(
    .in1(in_1),
    .in2(in_2),
    .diff(diff1),
    .bow(bow1)
);

initial begin
    in_1=0;in_2=0;
    #period;
    in_1=0;in_2=1;
    #period;
    in_1=1;in_2=0;
    #period;
    in_1=1;in_2=1;
    #period;
    $stop;
end

initial begin
    $monitor("in1 =%b, in2=%b, diff1=%b, bow1=%b",in_1,in_2,diff,bow);
end
    
endmodule