module c_signed_2scomp_add (
    input logic [31:0] num1,
    input logic [31:0] num2,
    output logic [31:0] sum
);

logic [30:0] mag_1;
logic [30:0] mag_2;
logic [30:0] mag_s;
logic sign_1;
logic sign_2;
logic sign_s;

assign sign_1 = num1[31];
assign sign_2 = num2[31];
assign mag_1 = num1[30:0];
assign mag_2 = num2[30:0];


// both num1 and num2 positive 
always_comb begin 
        
    if (sign_1 ==0 & sign_2 == 0) begin
        mag_s = mag_1+mag_2;
        sign_s = 0;
        sum[31] = sign_s;
        sum[30:0] = mag_s;
    end

    if (sign_1 == 1 & sign_2 == 1) begin
        mag_s = mag_1+mag_2;
        sign_s = 1;
        sum[31] = sign_s;
        sum[30:0] = mag_s;
    end

    if (sign_1 == 0 & sign_2 == 1) begin
        if (mag_1 > mag_2 ) begin
            mag_s = mag_1 + (~mag_2+1);
            sign_s = 0;
            sum[31] = sign_s;
            sum[30:0] = mag_s;
        end
        if (mag_1 == mag_2) begin
            mag_s = 31'b0;
            sign_s = 0;
            sum[31] = sign_s;
            sum[30:0] = mag_s;
        end
        if (mag_1 < mag_2 ) begin
            mag_s = (~mag_1+1) + mag_2;
            sign_s = 1;
            sum[31] = sign_s;
            sum[30:0] = mag_s;
        end
    end

    if (sign_1 == 1 & sign_2 == 0) begin
        if (mag_1 > mag_2 ) begin
            mag_s = mag_1 + (~mag_2+1);
            sign_s = 1;
            sum[31] = sign_s;
            sum[30:0] = mag_s;
        end
        if (mag_1 == mag_2) begin
            mag_s = 31'b0;
            sign_s = 0;
            sum[31] = sign_s;
            sum[30:0] = mag_s;
        end
        if (mag_1 < mag_2 ) begin
            mag_s = (~mag_1+1) + mag_2;
            sign_s = 0;
            sum[31] = sign_s;
            sum[30:0] = mag_s;
        end
    end
end



    
endmodule