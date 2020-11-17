module tb_FFT64;

	parameter 					FFT_size		= 64;
	parameter 					IN_width		= 12;
	parameter 					OUT_width		= 16;
	parameter 					latency_limit	= 130;

	parameter 					cycle			= 10.0;
	
	integer 					j, latency;
   reg signed	[IN_width-1:0] int_r [0:FFT_size-1];
   reg signed	[IN_width-1:0] int_i [0:FFT_size-1];
	reg 						clk, rst_n, in_valid;
	wire 						out_valid;
	reg signed [IN_width-1:0] 	din_r, din_i;
	wire signed [OUT_width-1:0] dout_r, dout_i;

	always #(cycle/2.0) 
		clk = ~clk;

	FFT64 uut_FFT64(
		.clk(clk),
		.rst_n(rst_n),
		.in_valid(in_valid),
		.din_r(din_r),
		.din_i(din_i),
		.out_valid(out_valid),
		.dout_r(dout_r),
		.dout_i(dout_i)
	);
	
	initial begin
		int_r[0] =  0;
		int_r[1] =  99;
		int_r[2] =  191;
		int_r[3] =  271;
		int_r[4] =  332;
		int_r[5] =  370;
		int_r[6] =  384;
		int_r[7] =  370;
		int_r[8] =  332;
		int_r[9] =  271;
		int_r[10] =  192;
		int_r[11] =  99;
		int_r[12] =  0;
		int_r[13] =  -100;
		int_r[14] =  -192;
		int_r[15] =  -272;
		int_r[16] =  -333;
		int_r[17] =  -371;
		int_r[18] =  -384;
		int_r[19] =  -371;
		int_r[20] =  -333;
		int_r[21] =  -272;
		int_r[22] =  -193;
		int_r[23] =  -100;
		int_r[24] =  -1;
		int_r[25] =  99;
		int_r[26] =  191;
		int_r[27] =  271;
		int_r[28] =  332;
		int_r[29] =  370;
		int_r[30] =  384;
		int_r[31] =  370;
		int_r[32] =  332;
		int_r[33] =  271;
		int_r[34] =  192;
		int_r[35] =  99;
		int_r[36] =  0;
		int_r[37] =  -100;
		int_r[38] =  -192;
		int_r[39] =  -272;
		int_r[40] =  -333;
		int_r[41] =  -371;
		int_r[42] =  -384;
		int_r[43] =  -371;
		int_r[44] =  -333;
		int_r[45] =  -272;
		int_r[46] =  -193;
		int_r[47] =  -100;
		int_r[48] =  -1;
		int_r[49] =  99;
		int_r[50] =  191;
		int_r[51] =  271;
		int_r[52] =  332;
		int_r[53] =  370;
		int_r[54] =  384;
		int_r[55] =  370;
		int_r[56] =  332;
		int_r[57] =  271;
		int_r[58] =  192;
		int_r[59] =  99;
		int_r[60] =  0;
		int_r[61] =  -100;
		int_r[62] =  -192;
		int_r[63] =  -272;	
	end
	initial begin
		int_i[0] =  0;
		int_i[1] =  0;
		int_i[2] =  0;
		int_i[3] =  0;
		int_i[4] =  0;
		int_i[5] =  0;
		int_i[6] =  0;
		int_i[7] =  0;
		int_i[8] =  0;
		int_i[9] =  0;
		int_i[10] =  0;
		int_i[11] =  0;
		int_i[12] =  0;
		int_i[13] =  0;
		int_i[14] =  0;
		int_i[15] =  0;
		int_i[16] =  0;
		int_i[17] =  0;
		int_i[18] =  0;
		int_i[19] =  0;
		int_i[20] =  0;
		int_i[21] =  0;
		int_i[22] =  0;
		int_i[23] =  0;
		int_i[24] =  0;
		int_i[25] =  0;
		int_i[26] =  0;
		int_i[27] =  0;
		int_i[28] =  0;
		int_i[29] =  0;
		int_i[30] =  0;
		int_i[31] =  0;
		int_i[32] =  0;
		int_i[33] =  0;
		int_i[34] =  0;
		int_i[35] =  0;
		int_i[36] =  0;
		int_i[37] =  0;
		int_i[38] =  0;
		int_i[39] =  0;
		int_i[40] =  0;
		int_i[41] =  0;
		int_i[42] =  0;
		int_i[43] =  0;
		int_i[44] =  0;
		int_i[45] =  0;
		int_i[46] =  0;
		int_i[47] =  0;
		int_i[48] =  0;
		int_i[49] =  0;
		int_i[50] =  0;
		int_i[51] =  0;
		int_i[52] =  0;
		int_i[53] =  0;
		int_i[54] =  0;
		int_i[55] =  0;
		int_i[56] =  0;
		int_i[57] =  0;
		int_i[58] =  0;
		int_i[59] =  0;
		int_i[60] =  0;
		int_i[61] =  0;
		int_i[62] =  0;
		int_i[63] =  0;	
	end
	
	initial begin
		clk = 0;
		rst_n = 1;
		in_valid = 0;

		@(negedge clk);
		@(negedge clk) 
			rst_n = 0;
		@(negedge clk) 
			rst_n = 1;
		@(negedge clk);

		for(j=0;j<FFT_size;j=j+1) 
		begin
			@(negedge clk);
			in_valid 	= 1;
			din_r 		= int_r[j];
			din_i 		= int_i[j];
		end
		@(negedge clk) 
			in_valid = 0;

		for(j=0;j<FFT_size;j=j+1) 
		begin
			while(!out_valid) 
			begin
				@(negedge clk) 
					latency = latency + 1;
				if(latency > latency_limit) 
				begin
					$display("Latency too long (> %0d cycles)", latency_limit);
					$stop;
				end
			end	
			@(negedge clk);
		end
		$stop;
	end
endmodule
	

