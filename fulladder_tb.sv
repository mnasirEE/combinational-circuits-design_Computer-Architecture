module fulladder_tb;

logic sout1;
logic cout1;
logic [1:0] stotal1;
logic a1;
logic b1;
logic cin1;

localparam period = 10 ;

fulladder UUT(
    .sout(sout1),
    .cout(cout1),
    .stotal(stotal1),
    .a(a1),
    .b(b1),
    .cin(cin1)
);

initial begin
    a1=0;b1=0;cin1=0;
    #period;
    a1=0;b1=0;cin1=1;
    #period;
    a1=0;b1=1;cin1=0;
    #period;
    a1=0;b1=1;cin1=1;
    #period;
    a1=1;b1=0;cin1=0;
    #period;
    a1=1;b1=0;cin1=1;
    #period;
    a1=1;b1=1;cin1=0;
    #period;
    a1=1;b1=1;cin1=1;
    #period;
    $stop;
end

initial begin
    $monitor("sout =%b, cout=%b, stotal=%b, a=%b, b=%b, cin=%b", sout1,cout1, stotal1,a1,b1,cin1);
end
    
endmodule