// 32_bit_unsigned_adder
// full adder a,b,cin input, sout, cout output
// sout = a^b^cin - bit by bit xor
// cout = (a^b)&cin | a&b - bit by bit xor, or, and

// define module

module unsigned_32_bit_adder (
    // using wire datatype because, it is a combinational design and stores nothing
    // wire used for combinational circuits design while reg used in sequential logic design
    // define all main inputs
    input wire [31:0] in1,in2,
    input wire cin,
    // define main outputs
    output wire [31:0]sout, cout

);


// using + 
wire [31:0] sum_temp;
wire [31:0] carry;

assign sum_temp = in1 + in2;
assign sout = sum_temp + cin;
assign cout = (in1 ^ in2) & cin | in1 & in2;



    
endmodule