%Creat DB:
clc;
clear all;
close all;

Nfft         =  64;
t            =  (0:1:Nfft/2-1);
TWFa         =  exp(-i*2*pi*t/Nfft);
			 
TWFa_re      =  real(TWFa);
TWFa_im      =  imag(TWFa);
			 
fiPo_TWFa_re = fi(TWFa_re,1,24,8);
fiPo_TWFa_im = fi(TWFa_im,1,24,8);

fprintf("Real value: \n");
fiPo_TWFa_re.data
fiPo_TWFa_im.data

fprintf("Int value: \n");
fiPo_TWFa_re.int
fiPo_TWFa_im.int

fprintf(" Corresponding fixed point value: \n");
fiPo_TWFa_re.bin
fiPo_TWFa_im.bin

%-------------------------------------------------------------
%to generate ROM-2 data:
clc;
N = 2;
fprintf("case(s_count)\n");
for t = 0:(N-1)
	count 	= 	N+t;
	x		=	fiPo_TWFa_re(1 + t*32/N);
	y		=	fiPo_TWFa_im(1 + t*32/N);
	formatr = 	"2'd%d: begin \n w_r = 24'b %s;\n";
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
2'd2: begin 
 w_r = 24'b 000000000000000100000000;
 w_i = 24'b 000000000000000000000000;
 end
2'd3: begin 
 w_r = 24'b 000000000000000000000000;
 w_i = 24'b 111111111111111100000000;
 end
default: begin 
 w_r = 24'b 000000000000000100000000;
 w_i = 24'b 000000000000000000000000;
 end
endcase
%-------------------------------------------------------------
%to generate ROM-4 data:
clc;
N = 4;
fprintf("case(s_count)\n");
for t = 0:(N-1)
	count 	= 	N+t;
	x		=	fiPo_TWFa_re(1 + t*32/N);
	y		=	fiPo_TWFa_im(1 + t*32/N);
	formatr = 	"3'd%d: begin \n w_r = 24'b %s;\n";
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
%------------------------------------------------------------
%to generate ROM-8 data:
clc;
N = 8;
fprintf("case(s_count)\n");
for t = 0:(N-1)
	count 	= 	N+t;
	x		=	fiPo_TWFa_re(1 + t*32/N);
	y		=	fiPo_TWFa_im(1 + t*32/N);
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
%------------------------------------------------------------
%to generate ROM-16 data:
clc;
N = 16;
fprintf("case(s_count)\n");
for t = 0:(N-1)
	count 	= 	N+t;
	x		=	fiPo_TWFa_re(1 + t*32/N);
	y		=	fiPo_TWFa_im(1 + t*32/N);
	formatr = 	"5'd%d: begin \n w_r = 24'b %s;\n";
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
5'd16: begin 
 w_r = 24'b 000000000000000100000000;
 w_i = 24'b 000000000000000000000000;
 end
5'd17: begin 
 w_r = 24'b 000000000000000011111011;
 w_i = 24'b 111111111111111111001110;
 end
5'd18: begin 
 w_r = 24'b 000000000000000011101101;
 w_i = 24'b 111111111111111110011110;
 end
5'd19: begin 
 w_r = 24'b 000000000000000011010101;
 w_i = 24'b 111111111111111101110010;
 end
5'd20: begin 
 w_r = 24'b 000000000000000010110101;
 w_i = 24'b 111111111111111101001011;
 end
5'd21: begin 
 w_r = 24'b 000000000000000010001110;
 w_i = 24'b 111111111111111100101011;
 end
5'd22: begin 
 w_r = 24'b 000000000000000001100010;
 w_i = 24'b 111111111111111100010011;
 end
5'd23: begin 
 w_r = 24'b 000000000000000000110010;
 w_i = 24'b 111111111111111100000101;
 end
5'd24: begin 
 w_r = 24'b 000000000000000000000000;
 w_i = 24'b 111111111111111100000000;
 end
5'd25: begin 
 w_r = 24'b 111111111111111111001110;
 w_i = 24'b 111111111111111100000101;
 end
5'd26: begin 
 w_r = 24'b 111111111111111110011110;
 w_i = 24'b 111111111111111100010011;
 end
5'd27: begin 
 w_r = 24'b 111111111111111101110010;
 w_i = 24'b 111111111111111100101011;
 end
5'd28: begin 
 w_r = 24'b 111111111111111101001011;
 w_i = 24'b 111111111111111101001011;
 end
5'd29: begin 
 w_r = 24'b 111111111111111100101011;
 w_i = 24'b 111111111111111101110010;
 end
5'd30: begin 
 w_r = 24'b 111111111111111100010011;
 w_i = 24'b 111111111111111110011110;
 end
5'd31: begin 
 w_r = 24'b 111111111111111100000101;
 w_i = 24'b 111111111111111111001110;
 end
default: begin 
 w_r = 24'b 000000000000000100000000;
 w_i = 24'b 000000000000000000000000;
 end
endcase
 %------------------------------------------------------------
%to generate ROM-32 data:
% Notice: count = 2*N+t
% Notice: "next_valid = 1'b1;"
% Notice: "next_valid = 1'b0;" for s_count=95
clc;
N = 32;
fprintf("case(count)\n");
for t = 0:(N-1)
	count 	= 	2*N+t;
	x		=	fiPo_TWFa_re(1 + t*32/N);
	y		=	fiPo_TWFa_im(1 + t*32/N);
	formatr = 	"7'd%d: begin \n w_r = 24'b %s;\n";
	formati = 	" w_i = 24'b %s;\n next_valid = 1'b1;\n end\n";
	fprintf(formatr,count,x.bin);
	fprintf(formati,y.bin);
end
x0	=	fiPo_TWFa_re(1);
y0	=	fiPo_TWFa_im(1);
fprintf("default: begin \n w_r = 24'b %s;\n",x0.bin);
fprintf(" w_i = 24'b %s;\n next_valid = 1'b1;\n end\n",y0.bin);
fprintf("endcase\n");
%--> 
case(count)
7'd64: begin 
 w_r = 24'b 000000000000000100000000;
 w_i = 24'b 000000000000000000000000;
 next_valid = 1'b1;
 end
7'd65: begin 
 w_r = 24'b 000000000000000011111111;
 w_i = 24'b 111111111111111111100111;
 next_valid = 1'b1;
 end
7'd66: begin 
 w_r = 24'b 000000000000000011111011;
 w_i = 24'b 111111111111111111001110;
 next_valid = 1'b1;
 end
7'd67: begin 
 w_r = 24'b 000000000000000011110101;
 w_i = 24'b 111111111111111110110110;
 next_valid = 1'b1;
 end
7'd68: begin 
 w_r = 24'b 000000000000000011101101;
 w_i = 24'b 111111111111111110011110;
 next_valid = 1'b1;
 end
7'd69: begin 
 w_r = 24'b 000000000000000011100010;
 w_i = 24'b 111111111111111110000111;
 next_valid = 1'b1;
 end
7'd70: begin 
 w_r = 24'b 000000000000000011010101;
 w_i = 24'b 111111111111111101110010;
 next_valid = 1'b1;
 end
7'd71: begin 
 w_r = 24'b 000000000000000011000110;
 w_i = 24'b 111111111111111101011110;
 next_valid = 1'b1;
 end
7'd72: begin 
 w_r = 24'b 000000000000000010110101;
 w_i = 24'b 111111111111111101001011;
 next_valid = 1'b1;
 end
7'd73: begin 
 w_r = 24'b 000000000000000010100010;
 w_i = 24'b 111111111111111100111010;
 next_valid = 1'b1;
 end
7'd74: begin 
 w_r = 24'b 000000000000000010001110;
 w_i = 24'b 111111111111111100101011;
 next_valid = 1'b1;
 end
7'd75: begin 
 w_r = 24'b 000000000000000001111001;
 w_i = 24'b 111111111111111100011110;
 next_valid = 1'b1;
 end
7'd76: begin 
 w_r = 24'b 000000000000000001100010;
 w_i = 24'b 111111111111111100010011;
 next_valid = 1'b1;
 end
7'd77: begin 
 w_r = 24'b 000000000000000001001010;
 w_i = 24'b 111111111111111100001011;
 next_valid = 1'b1;
 end
7'd78: begin 
 w_r = 24'b 000000000000000000110010;
 w_i = 24'b 111111111111111100000101;
 next_valid = 1'b1;
 end
7'd79: begin 
 w_r = 24'b 000000000000000000011001;
 w_i = 24'b 111111111111111100000001;
 next_valid = 1'b1;
 end
7'd80: begin 
 w_r = 24'b 000000000000000000000000;
 w_i = 24'b 111111111111111100000000;
 next_valid = 1'b1;
 end
7'd81: begin 
 w_r = 24'b 111111111111111111100111;
 w_i = 24'b 111111111111111100000001;
 next_valid = 1'b1;
 end
7'd82: begin 
 w_r = 24'b 111111111111111111001110;
 w_i = 24'b 111111111111111100000101;
 next_valid = 1'b1;
 end
7'd83: begin 
 w_r = 24'b 111111111111111110110110;
 w_i = 24'b 111111111111111100001011;
 next_valid = 1'b1;
 end
7'd84: begin 
 w_r = 24'b 111111111111111110011110;
 w_i = 24'b 111111111111111100010011;
 next_valid = 1'b1;
 end
7'd85: begin 
 w_r = 24'b 111111111111111110000111;
 w_i = 24'b 111111111111111100011110;
 next_valid = 1'b1;
 end
7'd86: begin 
 w_r = 24'b 111111111111111101110010;
 w_i = 24'b 111111111111111100101011;
 next_valid = 1'b1;
 end
7'd87: begin 
 w_r = 24'b 111111111111111101011110;
 w_i = 24'b 111111111111111100111010;
 next_valid = 1'b1;
 end
7'd88: begin 
 w_r = 24'b 111111111111111101001011;
 w_i = 24'b 111111111111111101001011;
 next_valid = 1'b1;
 end
7'd89: begin 
 w_r = 24'b 111111111111111100111010;
 w_i = 24'b 111111111111111101011110;
 next_valid = 1'b1;
 end
7'd90: begin 
 w_r = 24'b 111111111111111100101011;
 w_i = 24'b 111111111111111101110010;
 next_valid = 1'b1;
 end
7'd91: begin 
 w_r = 24'b 111111111111111100011110;
 w_i = 24'b 111111111111111110000111;
 next_valid = 1'b1;
 end
7'd92: begin 
 w_r = 24'b 111111111111111100010011;
 w_i = 24'b 111111111111111110011110;
 next_valid = 1'b1;
 end
7'd93: begin 
 w_r = 24'b 111111111111111100001011;
 w_i = 24'b 111111111111111110110110;
 next_valid = 1'b1;
 end
7'd94: begin 
 w_r = 24'b 111111111111111100000101;
 w_i = 24'b 111111111111111111001110;
 next_valid = 1'b1;
 end
7'd95: begin 
 w_r = 24'b 111111111111111100000001;
 w_i = 24'b 111111111111111111100111;
 next_valid = 1'b0;
 end
default: begin 
 w_r = 24'b 000000000000000100000000;
 w_i = 24'b 000000000000000000000000;
 next_valid = 1'b1;
 end
endcase