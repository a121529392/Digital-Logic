module lab7(seg,in_a,in_b);
	input in_a,in_b;
	output [31:0]seg;
	case(@num)
	3'b000 = 8'b00000011
	
endmodule
module bin_to_dec(dec,bin_a,bin_b,bin_sum);
	input[2:0]bin_a,bin_b;
	input[3:0]bin_sum;
	output[15:0]dec;

	adder(bin_sum,bin_a,bin_b);
	if(bin_sum==4'b0000)
	begin
		assign dec[0]=0;
		assign dec[1]=0;
		assign dec[2]=0;
		assign dec[3]=0;
		assign dec[4]=0;
		assign dec[5]=0;
		assign dec[6]=1;		
		assign dec[7]=1;
		assign dec[8]=0;
		assign dec[9]=0;
		assign dec[10]=0;
		assign dec[11]=0;
		assign dec[12]=0;
		assign dec[13]=0;
		assign dec[14]=1;
		assign dec[15]=1;		
	end
	if(bin_sum==4'b0001)
	begin
		assign dec[0]=0;
		assign dec[1]=0;
		assign dec[2]=0;
		assign dec[3]=0;
		assign dec[4]=0;
		assign dec[5]=0;
		assign dec[6]=1;		
		assign dec[7]=1;
		assign dec[8]=1;
		assign dec[9]=0;
		assign dec[10]=0;
		assign dec[11]=1;
		assign dec[12]=1;
		assign dec[13]=1;
		assign dec[14]=1;
		assign dec[15]=1;		
	end
	if(bin_sum==4'b0010)
	begin
		assign dec[0]=0;
		assign dec[1]=0;
		assign dec[2]=0;
		assign dec[3]=0;
		assign dec[4]=0;
		assign dec[5]=0;
		assign dec[6]=1;		
		assign dec[7]=1;
		assign dec[8]=0;
		assign dec[9]=0;
		assign dec[10]=1;
		assign dec[11]=0;
		assign dec[12]=0;
		assign dec[13]=1;
		assign dec[14]=0;
		assign dec[15]=1;		
	end
	if(bin_sum==4'b0011)
	begin
		assign dec[0]=0;
		assign dec[1]=0;
		assign dec[2]=0;
		assign dec[3]=0;
		assign dec[4]=0;
		assign dec[5]=0;
		assign dec[6]=1;		
		assign dec[7]=1;
		assign dec[8]=0;
		assign dec[9]=0;
		assign dec[10]=0;
		assign dec[11]=0;
		assign dec[12]=1;
		assign dec[13]=1;
		assign dec[14]=0;
		assign dec[15]=1;		
	end
	if(bin_sum==4'b0100)
	begin
		assign dec[0]=0;
		assign dec[1]=0;
		assign dec[2]=0;
		assign dec[3]=0;
		assign dec[4]=0;
		assign dec[5]=0;
		assign dec[6]=1;		
		assign dec[7]=1;
		assign dec[8]=1;
		assign dec[9]=0;
		assign dec[10]=0;
		assign dec[11]=1;
		assign dec[12]=1;
		assign dec[13]=0;
		assign dec[14]=0;
		assign dec[15]=1;		
	end
	if(bin_sum==4'b0101)
	begin
		assign dec[0]=0;
		assign dec[1]=0;
		assign dec[2]=0;
		assign dec[3]=0;
		assign dec[4]=0;
		assign dec[5]=0;
		assign dec[6]=1;		
		assign dec[7]=1;
		assign dec[8]=0;
		assign dec[9]=1;
		assign dec[10]=0;
		assign dec[11]=0;
		assign dec[12]=1;
		assign dec[13]=0;
		assign dec[14]=0;
		assign dec[15]=1;		
	end
	if(bin_sum==4'b0110)
	begin
		assign dec[0]=0;
		assign dec[1]=0;
		assign dec[2]=0;
		assign dec[3]=0;
		assign dec[4]=0;
		assign dec[5]=0;
		assign dec[6]=1;		
		assign dec[7]=1;
		assign dec[8]=0;
		assign dec[9]=1;
		assign dec[10]=0;
		assign dec[11]=0;
		assign dec[12]=0;
		assign dec[13]=0;
		assign dec[14]=0;
		assign dec[15]=1;		
	end
	if(bin_sum==4'b0111)
	begin
		assign dec[0]=0;
		assign dec[1]=0;
		assign dec[2]=0;
		assign dec[3]=0;
		assign dec[4]=0;
		assign dec[5]=0;
		assign dec[6]=1;		
		assign dec[7]=1;
		assign dec[8]=0;
		assign dec[9]=0;
		assign dec[10]=0;
		assign dec[11]=1;
		assign dec[12]=1;
		assign dec[13]=1;
		assign dec[14]=1;
		assign dec[15]=1;		
	end
	if(bin_sum==4'b1000)
	begin
		assign dec[0]=0;
		assign dec[1]=0;
		assign dec[2]=0;
		assign dec[3]=0;
		assign dec[4]=0;
		assign dec[5]=0;
		assign dec[6]=1;		
		assign dec[7]=1;
		assign dec[8]=0;
		assign dec[9]=0;
		assign dec[10]=0;
		assign dec[11]=0;
		assign dec[12]=0;
		assign dec[13]=0;
		assign dec[14]=0;
		assign dec[15]=1;		
	end
	if(bin_sum==4'b1001)
	begin
		assign dec[0]=0;
		assign dec[1]=0;
		assign dec[2]=0;
		assign dec[3]=0;
		assign dec[4]=0;
		assign dec[5]=0;
		assign dec[6]=1;		
		assign dec[7]=1;
		assign dec[8]=0;
		assign dec[9]=0;
		assign dec[10]=0;
		assign dec[11]=0;
		assign dec[12]=1;
		assign dec[13]=0;
		assign dec[14]=0;
		assign dec[15]=1;		
	end
	if(bin_sum==4'b1010)
	begin
		assign dec[0]=1;
		assign dec[1]=0;
		assign dec[2]=0;
		assign dec[3]=1;
		assign dec[4]=1;
		assign dec[5]=1;
		assign dec[6]=1;		
		assign dec[7]=1;
		assign dec[8]=0;
		assign dec[9]=0;
		assign dec[10]=0;
		assign dec[11]=0;
		assign dec[12]=0;
		assign dec[13]=0;
		assign dec[14]=1;
		assign dec[15]=1;		
	end
	if(bin_sum==4'b1011)
	begin
		assign dec[0]=1;
		assign dec[1]=0;
		assign dec[2]=0;
		assign dec[3]=1;
		assign dec[4]=1;
		assign dec[5]=1;
		assign dec[6]=1;		
		assign dec[7]=1;
		assign dec[8]=1;
		assign dec[9]=0;
		assign dec[10]=0;
		assign dec[11]=1;
		assign dec[12]=1;
		assign dec[13]=1;
		assign dec[14]=1;
		assign dec[15]=1;		
	end
	if(bin_sum==4'b1100)
	begin
		assign dec[0]=1;
		assign dec[1]=0;
		assign dec[2]=0;
		assign dec[3]=1;
		assign dec[4]=1;
		assign dec[5]=1;
		assign dec[6]=1;		
		assign dec[7]=1;
		assign dec[8]=0;
		assign dec[9]=0;
		assign dec[10]=1;
		assign dec[11]=0;
		assign dec[12]=0;
		assign dec[13]=1;
		assign dec[14]=0;
		assign dec[15]=1;		
	end
	if(bin_sum==4'b1101)
	begin
		assign dec[0]=1;
		assign dec[1]=0;
		assign dec[2]=0;
		assign dec[3]=1;
		assign dec[4]=1;
		assign dec[5]=1;
		assign dec[6]=1;		
		assign dec[7]=1;
		assign dec[8]=0;
		assign dec[9]=0;
		assign dec[10]=0;
		assign dec[11]=0;
		assign dec[12]=1;
		assign dec[13]=1;
		assign dec[14]=0;
		assign dec[15]=1;		
	end
	if(bin_sum==4'b1110)
	begin
		assign dec[0]=1;
		assign dec[1]=0;
		assign dec[2]=0;
		assign dec[3]=1;
		assign dec[4]=1;
		assign dec[5]=1;
		assign dec[6]=1;		
		assign dec[7]=1;
		assign dec[8]=1;
		assign dec[9]=0;
		assign dec[10]=0;
		assign dec[11]=1;
		assign dec[12]=1;
		assign dec[13]=0;
		assign dec[14]=0;
		assign dec[15]=1;		
	end
endmodule
module display(seg_out,in);
	input [3:0]in;
	output [7:0]seg_out;
	reg [7:0]seg_out;
	always @(in)
		begin
			case(in)
			4'b0001:seg_out=8'b10011111;
			4'b0010:seg_out=8'b00100101;
			4'b0011 :seg_out=8'b00001101; 
			4'b0100 :seg_out=8'b10011001;   
			4'b0101 :seg_out= 8'b01001001;  
			4'b0110 :seg_out= 8'b01000001; 
			4'b0111 :seg_out= 8'b00011111;  
			4'b1000 :seg_out =8'b00000001; 
			4'b1001 :seg_out =8'b00001001;
       default :seg_out = 8'b00000011;   
			endcase
		end
endmodule
module adder(sum, in_a,in_b) ;

 input [2:0]in_a;
 input [2:0]in_b;
 output [3:0]sum;
 wire [1:0]C_out;
 wire [2:0]c1;
 wire [2:0]c2;
 wire[2:0]c3;
 
 assign c1[0]=in_a[0]^in_b[0];
 assign sum[0]=c1[0]^0;
 assign c2[0]=in_a[0]&in_b[0];
 assign c3[0]=c1[0]&0;
 assign C_out[0]=c2[0]|c3[0];
 
 assign c1[1]=in_a[1]^in_b[1];
 assign sum[1]=c1[1]^C_out[0];
 assign c2[1]=in_a[1]&in_b[1];
 assign c3[1]=c1[1]&C_out[0];
 assign C_out[1]=c2[1]|c3[1];
 
 assign c1[2]=in_a[2]^in_b[2];
 assign sum[2]=c1[2]^C_out[1];
 assign c2[2]=in_a[2]&in_b[2];
 assign c3[2]=c1[2]&C_out[1];
 assign sum[3]=c2[2]|c3[2];

endmodule 
