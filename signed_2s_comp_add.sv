// signed 2's complement addition
// if num1 >0 and num2>0 then add normally as usual
// if num<0 and num2<0 then again add them as usual
// if num1>0 and num2<0 then take 2'scomplement of num2 and add it into num1
// if num1<0 and num2>0 then take 2'scomplement of num1 and add it into num2

module signed_2s_comp_add (
    input logic [31:0] num1,
    input logic [31:0] num2,
    output logic [31:0] s_add
);

if ((num1 >0 & num2>0) | (num1<0 & num2<0) ) begin
    s_add = num1 + num2
end

else if (num1 >0 & num2<0) begin
    num2 = !num2 + 1;
    s_add = num1 +num2;
end

else if (num1<0 & num2>0) begin
    num1 = !num1 +1;
    s_add = num1+num2;
end

    
endmodule