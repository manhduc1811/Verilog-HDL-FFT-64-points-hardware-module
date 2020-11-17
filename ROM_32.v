module ROM_32(
input clk,
input in_valid,
input rst_n,
output reg [23:0] w_r,
output reg [23:0] w_i,
output reg[1:0] state
);

reg valid,next_valid;
reg [6:0] count,next_count;
always @(*) begin
    if(in_valid || valid)next_count = count + 1;
    else next_count = count;
    
    if (count<7'd32) 
        state = 2'd0;
    else if (count >= 7'd32 && count < 7'd64)
        state = 2'd1;
    else if (count >= 7'd64 && count < 7'd96)
        state = 2'd2;
    else state = 2'd3;

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
end

always@(posedge clk or negedge rst_n)begin
    if(~rst_n)begin
        count <= 0;
        valid <= 0;
    end
    else if(in_valid)
    begin
        count <= next_count;
        valid <= in_valid;
    end
    else if (valid)
    begin
        count <= next_count;
        valid <= next_valid;
    end
end
endmodule