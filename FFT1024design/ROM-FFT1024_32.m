%------------------------------------------------------------
%to generate ROM-32 data:
clc;
N = 32;
fprintf("case(s_count)\n");
for t = 0:(N-1)
	count 	= 	N+t;
	x		=	fiPo_TWFa_re(1 + t*512/N);
	y		=	fiPo_TWFa_im(1 + t*512/N);
	formatr = 	"6'd%d: begin \n w_r = 24'b %s;\n";
	formati = 	" w_i = 24'b %s;\n end\n";
	fprintf(formatr,count,x.bin);
	fprintf(formati,y.bin);
end
x0	=	fiPo_TWFa_re(1);
y0	=	fiPo_TWFa_im(1);
fprintf("default: begin \n w_r = 24'b %s;\n",x0.bin);
fprintf(" w_i = 24'b %s;\n end\n",y0.bin);
fprintf("endcase\n");
%-->  
	case(s_count)
	6'd32: begin 
	 w_r = 24'b 000000000000000100000000;
	 w_i = 24'b 000000000000000000000000;
	 end
	6'd33: begin 
	 w_r = 24'b 000000000000000011111111;
	 w_i = 24'b 111111111111111111100111;
	 end
	6'd34: begin 
	 w_r = 24'b 000000000000000011111011;
	 w_i = 24'b 111111111111111111001110;
	 end
	6'd35: begin 
	 w_r = 24'b 000000000000000011110101;
	 w_i = 24'b 111111111111111110110110;
	 end
	6'd36: begin 
	 w_r = 24'b 000000000000000011101101;
	 w_i = 24'b 111111111111111110011110;
	 end
	6'd37: begin 
	 w_r = 24'b 000000000000000011100010;
	 w_i = 24'b 111111111111111110000111;
	 end
	6'd38: begin 
	 w_r = 24'b 000000000000000011010101;
	 w_i = 24'b 111111111111111101110010;
	 end
	6'd39: begin 
	 w_r = 24'b 000000000000000011000110;
	 w_i = 24'b 111111111111111101011110;
	 end
	6'd40: begin 
	 w_r = 24'b 000000000000000010110101;
	 w_i = 24'b 111111111111111101001011;
	 end
	6'd41: begin 
	 w_r = 24'b 000000000000000010100010;
	 w_i = 24'b 111111111111111100111010;
	 end
	6'd42: begin 
	 w_r = 24'b 000000000000000010001110;
	 w_i = 24'b 111111111111111100101011;
	 end
	6'd43: begin 
	 w_r = 24'b 000000000000000001111001;
	 w_i = 24'b 111111111111111100011110;
	 end
	6'd44: begin 
	 w_r = 24'b 000000000000000001100010;
	 w_i = 24'b 111111111111111100010011;
	 end
	6'd45: begin 
	 w_r = 24'b 000000000000000001001010;
	 w_i = 24'b 111111111111111100001011;
	 end
	6'd46: begin 
	 w_r = 24'b 000000000000000000110010;
	 w_i = 24'b 111111111111111100000101;
	 end
	6'd47: begin 
	 w_r = 24'b 000000000000000000011001;
	 w_i = 24'b 111111111111111100000001;
	 end
	6'd48: begin 
	 w_r = 24'b 000000000000000000000000;
	 w_i = 24'b 111111111111111100000000;
	 end
	6'd49: begin 
	 w_r = 24'b 111111111111111111100111;
	 w_i = 24'b 111111111111111100000001;
	 end
	6'd50: begin 
	 w_r = 24'b 111111111111111111001110;
	 w_i = 24'b 111111111111111100000101;
	 end
	6'd51: begin 
	 w_r = 24'b 111111111111111110110110;
	 w_i = 24'b 111111111111111100001011;
	 end
	6'd52: begin 
	 w_r = 24'b 111111111111111110011110;
	 w_i = 24'b 111111111111111100010011;
	 end
	6'd53: begin 
	 w_r = 24'b 111111111111111110000111;
	 w_i = 24'b 111111111111111100011110;
	 end
	6'd54: begin 
	 w_r = 24'b 111111111111111101110010;
	 w_i = 24'b 111111111111111100101011;
	 end
	6'd55: begin 
	 w_r = 24'b 111111111111111101011110;
	 w_i = 24'b 111111111111111100111010;
	 end
	6'd56: begin 
	 w_r = 24'b 111111111111111101001011;
	 w_i = 24'b 111111111111111101001011;
	 end
	6'd57: begin 
	 w_r = 24'b 111111111111111100111010;
	 w_i = 24'b 111111111111111101011110;
	 end
	6'd58: begin 
	 w_r = 24'b 111111111111111100101011;
	 w_i = 24'b 111111111111111101110010;
	 end
	6'd59: begin 
	 w_r = 24'b 111111111111111100011110;
	 w_i = 24'b 111111111111111110000111;
	 end
	6'd60: begin 
	 w_r = 24'b 111111111111111100010011;
	 w_i = 24'b 111111111111111110011110;
	 end
	6'd61: begin 
	 w_r = 24'b 111111111111111100001011;
	 w_i = 24'b 111111111111111110110110;
	 end
	6'd62: begin 
	 w_r = 24'b 111111111111111100000101;
	 w_i = 24'b 111111111111111111001110;
	 end
	6'd63: begin 
	 w_r = 24'b 111111111111111100000001;
	 w_i = 24'b 111111111111111111100111;
	 end
	default: begin 
	 w_r = 24'b 000000000000000100000000;
	 w_i = 24'b 000000000000000000000000;
	 end
	endcase
