module ROM_4(
input clk,
input in_valid,
input rst_n,
output reg [23:0] w_r,
output reg [23:0] w_i,
output reg[1:0] state
);

reg valid;
reg [10:0] count,next_count;
reg [2:0] s_count,next_s_count;

always @(*) begin
    if(in_valid || valid)
    begin 
        next_count = count + 1;
        next_s_count = s_count;
    end
    else begin
        next_count = count;
        next_s_count = s_count;  
    end

    if (count<11'd4) 
        state = 2'd0;
    else if (count >= 11'd4 && s_count < 3'd4)begin
        state = 2'd1;
        next_s_count = s_count + 1;
    end
    else if (count >= 11'd4 && s_count >= 3'd4)begin
        state = 2'd2;
        next_s_count = s_count + 1;
    end
	//codes for s_count here
	case(s_count)
	3'd4: begin 
	 w_r = 24'b 000000000000000100000000;
	 w_i = 24'b 000000000000000000000000;
	 end
	3'd5: begin 
	 w_r = 24'b 000000000000000010110101;
	 w_i = 24'b 111111111111111101001011;
	 end
	3'd6: begin 
	 w_r = 24'b 000000000000000000000000;
	 w_i = 24'b 111111111111111100000000;
	 end
	3'd7: begin 
	 w_r = 24'b 111111111111111101001011;
	 w_i = 24'b 111111111111111101001011;
	 end
	default: begin 
	 w_r = 24'b 000000000000000100000000;
	 w_i = 24'b 000000000000000000000000;
	 end
	endcase	
	//
end

always@(posedge clk or negedge rst_n)begin
    if(~rst_n)begin
        count <= 0;
        s_count <= 0;
    end
    else begin
        count <= next_count;
        s_count <= next_s_count;
    end
end
endmodule