module signed_2s_comp_sub (
    input logic [31:0] num1,
    input logic [31:0] num2,
    output logic [31:0] diff
);

logic [30:0] mag_1;
logic [30:0] mag_2;
logic [30:0] mag_d;
logic sign_1;
logic sign_2;
logic sign_d;

assign sign_1 = num1[31];
assign sign_2 = num2[31];
assign mag_1 = num1[30:0];
assign mag_2 = num2[30:0];


// both num1 and num2 positive 
always_comb begin 
        
    if (sign_1 ==0 & sign_2 == 0) begin
        mag_d = mag_1-mag_2;
        sign_d = 0;
        diff[31] = sign_d;
        diff[30:0] = mag_d;
    end

    if (sign_1 == 1 & sign_2 == 1) begin
        mag_d = mag_1-mag_2;
        sign_d = 1;
        diff[31] = sign_d;
        diff[30:0] = mag_d;
    end

    if (sign_1 == 0 & sign_2 == 1) begin
        if (mag_1 > mag_2 ) begin
            mag_d = mag_1 - (~mag_2+1);
            sign_d = 0;
            diff[31] = sign_d;
            diff[30:0] = mag_d;
        end
        if (mag_1 == mag_2) begin
            mag_d = 31'b0;
            sign_d = 0;
            diff[31] = sign_d;
            diff[30:0] = mag_d;
        end
        if (mag_1 < mag_2 ) begin
            mag_d = (~mag_1+1) - mag_2;
            sign_d = 1;
            diff[31] = sign_d;
            diff[30:0] = mag_d;
        end
    end

    if (sign_1 == 1 & sign_2 == 0) begin
        if (mag_1 > mag_2 ) begin
            mag_d = mag_1 - (~mag_2+1);
            sign_d = 1;
            diff[31] = sign_d;
            diff[30:0] = mag_d;
        end
        if (mag_1 == mag_2) begin
            mag_d = 31'b0;
            sign_d = 0;
            diff[31] = sign_d;
            diff[30:0] = mag_d;
        end
        if (mag_1 < mag_2 ) begin
            mag_d = (~mag_1+1) - mag_2;
            sign_d = 0;
            diff[31] = sign_d;
            diff[30:0] = mag_d;
        end
    end
end



    
endmodule

    
