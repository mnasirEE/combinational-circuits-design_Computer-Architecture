module fulladder (
    output logic sout,cout,
    input logic a,b,cin
);

assign sout = a^b^cin;
assign cout = (a^b)&cin | (a&b);
    
endmodule