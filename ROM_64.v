module ROM_64(
	input clk,
	input in_valid,
	input rst_n,
	output reg [23:0] w_r,
	output reg [23:0] w_i,
	output reg[1:0] state
);
////////////////////////////////////////////
// Internal signals
reg [10:0] count,next_count;
reg [6:0] s_count,next_s_count;
////////////////////////////////////////////
// Next state logic
always @(*) begin
    if(in_valid)
    begin 
        next_count = count + 1;
        next_s_count = s_count;
    end
    else begin
        next_count = count;
        next_s_count = s_count;  
    end
    
    if (count<11'd64) 
        state = 2'd0;
    else if (count >= 11'd64 && s_count < 7'd64)begin
        state = 2'd1;
        next_s_count = s_count + 1;
    end
    else if (count >= 11'd64 && s_count >= 7'd64)begin
        state = 2'd2;
        next_s_count = s_count + 1;
    end

	case(s_count)
	7'd64: begin 
	 w_r = 24'b 000000000000000100000000;
	 w_i = 24'b 000000000000000000000000;
	 end
	7'd65: begin 
	 w_r = 24'b 000000000000000100000000;
	 w_i = 24'b 111111111111111111110011;
	 end
	7'd66: begin 
	 w_r = 24'b 000000000000000011111111;
	 w_i = 24'b 111111111111111111100111;
	 end
	7'd67: begin 
	 w_r = 24'b 000000000000000011111101;
	 w_i = 24'b 111111111111111111011010;
	 end
	7'd68: begin 
	 w_r = 24'b 000000000000000011111011;
	 w_i = 24'b 111111111111111111001110;
	 end
	7'd69: begin 
	 w_r = 24'b 000000000000000011111000;
	 w_i = 24'b 111111111111111111000010;
	 end
	7'd70: begin 
	 w_r = 24'b 000000000000000011110101;
	 w_i = 24'b 111111111111111110110110;
	 end
	7'd71: begin 
	 w_r = 24'b 000000000000000011110001;
	 w_i = 24'b 111111111111111110101010;
	 end
	7'd72: begin 
	 w_r = 24'b 000000000000000011101101;
	 w_i = 24'b 111111111111111110011110;
	 end
	7'd73: begin 
	 w_r = 24'b 000000000000000011100111;
	 w_i = 24'b 111111111111111110010011;
	 end
	7'd74: begin 
	 w_r = 24'b 000000000000000011100010;
	 w_i = 24'b 111111111111111110000111;
	 end
	7'd75: begin 
	 w_r = 24'b 000000000000000011011100;
	 w_i = 24'b 111111111111111101111100;
	 end
	7'd76: begin 
	 w_r = 24'b 000000000000000011010101;
	 w_i = 24'b 111111111111111101110010;
	 end
	7'd77: begin 
	 w_r = 24'b 000000000000000011001110;
	 w_i = 24'b 111111111111111101101000;
	 end
	7'd78: begin 
	 w_r = 24'b 000000000000000011000110;
	 w_i = 24'b 111111111111111101011110;
	 end
	7'd79: begin 
	 w_r = 24'b 000000000000000010111110;
	 w_i = 24'b 111111111111111101010100;
	 end
	7'd80: begin 
	 w_r = 24'b 000000000000000010110101;
	 w_i = 24'b 111111111111111101001011;
	 end
	7'd81: begin 
	 w_r = 24'b 000000000000000010101100;
	 w_i = 24'b 111111111111111101000010;
	 end
	7'd82: begin 
	 w_r = 24'b 000000000000000010100010;
	 w_i = 24'b 111111111111111100111010;
	 end
	7'd83: begin 
	 w_r = 24'b 000000000000000010011000;
	 w_i = 24'b 111111111111111100110010;
	 end
	7'd84: begin 
	 w_r = 24'b 000000000000000010001110;
	 w_i = 24'b 111111111111111100101011;
	 end
	7'd85: begin 
	 w_r = 24'b 000000000000000010000100;
	 w_i = 24'b 111111111111111100100100;
	 end
	7'd86: begin 
	 w_r = 24'b 000000000000000001111001;
	 w_i = 24'b 111111111111111100011110;
	 end
	7'd87: begin 
	 w_r = 24'b 000000000000000001101101;
	 w_i = 24'b 111111111111111100011001;
	 end
	7'd88: begin 
	 w_r = 24'b 000000000000000001100010;
	 w_i = 24'b 111111111111111100010011;
	 end
	7'd89: begin 
	 w_r = 24'b 000000000000000001010110;
	 w_i = 24'b 111111111111111100001111;
	 end
	7'd90: begin 
	 w_r = 24'b 000000000000000001001010;
	 w_i = 24'b 111111111111111100001011;
	 end
	7'd91: begin 
	 w_r = 24'b 000000000000000000111110;
	 w_i = 24'b 111111111111111100001000;
	 end
	7'd92: begin 
	 w_r = 24'b 000000000000000000110010;
	 w_i = 24'b 111111111111111100000101;
	 end
	7'd93: begin 
	 w_r = 24'b 000000000000000000100110;
	 w_i = 24'b 111111111111111100000011;
	 end
	7'd94: begin 
	 w_r = 24'b 000000000000000000011001;
	 w_i = 24'b 111111111111111100000001;
	 end
	7'd95: begin 
	 w_r = 24'b 000000000000000000001101;
	 w_i = 24'b 111111111111111100000000;
	 end
	7'd96: begin 
	 w_r = 24'b 000000000000000000000000;
	 w_i = 24'b 111111111111111100000000;
	 end
	7'd97: begin 
	 w_r = 24'b 111111111111111111110011;
	 w_i = 24'b 111111111111111100000000;
	 end
	7'd98: begin 
	 w_r = 24'b 111111111111111111100111;
	 w_i = 24'b 111111111111111100000001;
	 end
	7'd99: begin 
	 w_r = 24'b 111111111111111111011010;
	 w_i = 24'b 111111111111111100000011;
	 end
	7'd100: begin 
	 w_r = 24'b 111111111111111111001110;
	 w_i = 24'b 111111111111111100000101;
	 end
	7'd101: begin 
	 w_r = 24'b 111111111111111111000010;
	 w_i = 24'b 111111111111111100001000;
	 end
	7'd102: begin 
	 w_r = 24'b 111111111111111110110110;
	 w_i = 24'b 111111111111111100001011;
	 end
	7'd103: begin 
	 w_r = 24'b 111111111111111110101010;
	 w_i = 24'b 111111111111111100001111;
	 end
	7'd104: begin 
	 w_r = 24'b 111111111111111110011110;
	 w_i = 24'b 111111111111111100010011;
	 end
	7'd105: begin 
	 w_r = 24'b 111111111111111110010011;
	 w_i = 24'b 111111111111111100011001;
	 end
	7'd106: begin 
	 w_r = 24'b 111111111111111110000111;
	 w_i = 24'b 111111111111111100011110;
	 end
	7'd107: begin 
	 w_r = 24'b 111111111111111101111100;
	 w_i = 24'b 111111111111111100100100;
	 end
	7'd108: begin 
	 w_r = 24'b 111111111111111101110010;
	 w_i = 24'b 111111111111111100101011;
	 end
	7'd109: begin 
	 w_r = 24'b 111111111111111101101000;
	 w_i = 24'b 111111111111111100110010;
	 end
	7'd110: begin 
	 w_r = 24'b 111111111111111101011110;
	 w_i = 24'b 111111111111111100111010;
	 end
	7'd111: begin 
	 w_r = 24'b 111111111111111101010100;
	 w_i = 24'b 111111111111111101000010;
	 end
	7'd112: begin 
	 w_r = 24'b 111111111111111101001011;
	 w_i = 24'b 111111111111111101001011;
	 end
	7'd113: begin 
	 w_r = 24'b 111111111111111101000010;
	 w_i = 24'b 111111111111111101010100;
	 end
	7'd114: begin 
	 w_r = 24'b 111111111111111100111010;
	 w_i = 24'b 111111111111111101011110;
	 end
	7'd115: begin 
	 w_r = 24'b 111111111111111100110010;
	 w_i = 24'b 111111111111111101101000;
	 end
	7'd116: begin 
	 w_r = 24'b 111111111111111100101011;
	 w_i = 24'b 111111111111111101110010;
	 end
	7'd117: begin 
	 w_r = 24'b 111111111111111100100100;
	 w_i = 24'b 111111111111111101111100;
	 end
	7'd118: begin 
	 w_r = 24'b 111111111111111100011110;
	 w_i = 24'b 111111111111111110000111;
	 end
	7'd119: begin 
	 w_r = 24'b 111111111111111100011001;
	 w_i = 24'b 111111111111111110010011;
	 end
	7'd120: begin 
	 w_r = 24'b 111111111111111100010011;
	 w_i = 24'b 111111111111111110011110;
	 end
	7'd121: begin 
	 w_r = 24'b 111111111111111100001111;
	 w_i = 24'b 111111111111111110101010;
	 end
	7'd122: begin 
	 w_r = 24'b 111111111111111100001011;
	 w_i = 24'b 111111111111111110110110;
	 end
	7'd123: begin 
	 w_r = 24'b 111111111111111100001000;
	 w_i = 24'b 111111111111111111000010;
	 end
	7'd124: begin 
	 w_r = 24'b 111111111111111100000101;
	 w_i = 24'b 111111111111111111001110;
	 end
	7'd125: begin 
	 w_r = 24'b 111111111111111100000011;
	 w_i = 24'b 111111111111111111011010;
	 end
	7'd126: begin 
	 w_r = 24'b 111111111111111100000001;
	 w_i = 24'b 111111111111111111100111;
	 end
	7'd127: begin 
	 w_r = 24'b 111111111111111100000000;
	 w_i = 24'b 111111111111111111110011;
	 end
	default: begin 
	 w_r = 24'b 000000000000000100000000;
	 w_i = 24'b 000000000000000000000000;
	 end
	endcase
end
////////////////////////////////////////////
// State register
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