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
    $monitor("sout =%b, cout=%b, stotal=%b, a=%b, b=%b, cin=%b", sout1,cout1, stotal1,a1,b1,cin1);
end
    
endmodule