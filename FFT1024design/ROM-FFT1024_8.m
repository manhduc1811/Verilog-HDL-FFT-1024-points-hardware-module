%------------------------------------------------------------
%to generate ROM-8 data:
clc;
N = 8;
fprintf("case(s_count)\n");
for t = 0:(N-1)
	count 	= 	N+t;
	x		=	fiPo_TWFa_re(1 + t*512/N);
	y		=	fiPo_TWFa_im(1 + t*512/N);
	formatr = 	"4'd%d: begin \n w_r = 24'b %s;\n";
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
	4'd8: begin 
	 w_r = 24'b 000000000000000100000000;
	 w_i = 24'b 000000000000000000000000;
	 end
	4'd9: begin 
	 w_r = 24'b 000000000000000011101101;
	 w_i = 24'b 111111111111111110011110;
	 end
	4'd10: begin 
	 w_r = 24'b 000000000000000010110101;
	 w_i = 24'b 111111111111111101001011;
	 end
	4'd11: begin 
	 w_r = 24'b 000000000000000001100010;
	 w_i = 24'b 111111111111111100010011;
	 end
	4'd12: begin 
	 w_r = 24'b 000000000000000000000000;
	 w_i = 24'b 111111111111111100000000;
	 end
	4'd13: begin 
	 w_r = 24'b 111111111111111110011110;
	 w_i = 24'b 111111111111111100010011;
	 end
	4'd14: begin 
	 w_r = 24'b 111111111111111101001011;
	 w_i = 24'b 111111111111111101001011;
	 end
	4'd15: begin 
	 w_r = 24'b 111111111111111100010011;
	 w_i = 24'b 111111111111111110011110;
	 end
	default: begin 
	 w_r = 24'b 000000000000000100000000;
	 w_i = 24'b 000000000000000000000000;
	 end
	endcase
