// signed 2's complement addition
// if num1 >0 and num2>0 then add normally as usual
// if num<0 and num2<0 then again add them as usual
// if num1>0 and num2<0 then take 2'scomplement of num2 and add it into num1
// if num1<0 and num2>0 then take 2'scomplement of num1 and add it into num2

module signed_2s_comp_add (
    input logic [31:0] num1,
    input logic [31:0] num2,
    output logic [31:0] s_add,
    output logic overflow
);

logic cin;
assign cin = 0;
 always_comb begin
        if ((num1[31] == 1 && num2[31] == 1) || (num1[31] == 0 && num2[31] == 0)) begin
            // If both numbers are positive or both are negative, perform normal addition
            s_add = num1 + num2;
            cout = ( (num1 ^ num2) & cin ) | (num1&num2);
        end
        else if (num1[31] == 0 && num2[31] == 1) begin
            // If num1 is positive and num2 is negative, perform subtraction (num1 - |num2|)
            s_add = num1 + (~num2 + 1);
            cout = ( (num1 ^ num2) & cin ) | (num1&num2);
        end
        else if (num1[31] == 1 && num2[31] == 0) begin
            // If num1 is negative and num2 is positive, perform subtraction (num2 - |num1|)
            s_add = num2 + (~num1 + 1);
        end
    end

    
endmodule