module display(print,inte);
	input [3:0]inte;
	output [7:0]print;
	reg [7:0]print;
	always @(inte)
		begin
			case(inte)
			4'b0001:print=8'b10011111;	//1
			4'b0010:print=8'b00100101; //2   
			4'b0011 :print=8'b00001101;  //3 
			4'b0100 :print=8'b10011001;   //4 
			4'b0101 :print= 8'b01001001;  //5 
			4'b0110 :print= 8'b01000001; //6 
			4'b0111 :print= 8'b00011111;  //7 
			4'b1000 :print =8'b00000001;  //8 
			4'b1001 :print =8'b00001001; //9 
       default :print = 8'b00000011;   //0
			endcase
		end
endmodule

module LFSR(out,clk ,enable,rst);
    input clk,enable,rst;
    output [7:0] out;
    reg [7:0] out;
    wire    linear_feedback;
    initial out=0;
    assign linear_feedback =  !(out[0] ^ out[3]);
		always@(posedge clk) 
		begin
		if(~enable)begin
			begin
				out[5]<= linear_feedback;
					out[4:0]<={out[5],out[4],out[3],out[2], out[1]};		
			if(rst==0)
			out<=0;
			end
		end

		else 
			out<=out;
			if(rst==0)
			out<=0;
		end
endmodule

module bin_to_dec(dec,bin);
	input[7:0]bin;
	output[7:0]dec;
	assign dec[7:4]=bin/4'b1010;
	assign dec[3:0]=bin%4'b1010;
endmodule 

module display1(print,inte);
	input [1:0]inte;
	output [7:0]print;
	reg [7:0]print;
	always @(inte)
		begin
			case(inte)
			4'b0001:print=8'b10011111;	//1
			4'b0010:print=8'b00100101; //2   
/*	*/		4'b0011 :print=8'b00001101;  //3 
			4'b0100 :print=8'b10011001;   //4 
			4'b0101 :print= 8'b01001001;  //5 
			4'b0110 :print= 8'b01000001; //6 
			4'b0111 :print= 8'b00011111;  //7 
			4'b1000 :print =8'b00000001;  //8 
			4'b1001 :print =8'b00001001; //9 
			4'b1111 :print =8'b11111111; //NULL
       default :print = 8'b00000011;   //0
			endcase
		end
endmodule

module bin_to_dec1(dec,bin);
	input[7:0]bin;
	output[7:0]dec;
	assign dec[7:4]=(dec[7:4]>4'd10)?bin/7'd100:bin/4'd10;
	assign dec[3:0]=bin%4'b1010;
endmodule 

module answer(A,B,sure,in_a,in_b,dec);
	input [3:0]in_a;
	input [3:0]in_b;
	input sure;
	input [7:0]dec;
	output [1:0]A;
	output [1:0]B;
	reg [1:0]A;
	reg [1:0]B;
//	reg [1:0]a;
//	reg [1:0]b;
//	initial a=0;
//	initial b=0;
	
	
	always@(dec||in_a||in_b)
	begin
		A=2'b00;
		B=2'b00;
		if(in_a==in_b)
		begin
			if(in_a==dec[3:0])
			begin
				A=A+1;
			end
			if(in_b==dec[7:4])
			begin
				A=A+1;
			end
		end
		else
		begin
			if(in_a==dec[3:0])
			begin
				A=A+1;
			end
			else if(in_a==dec[7:4])
			begin
				B=B+1;
			end
		
		
			if(in_b==dec[7:4])
			begin
				A=A+1;
			end
			else if(in_b==dec[3:0])
			begin
				B=B+1;
			end
//			assign A=a;
//			assign B=b;
		end
	end
endmodule 

/*module displayA(AS,sure);
	input sure;
	output [7:0]AS;
	reg [7:0]AS;
	
	always @(sure)
		begin
			AS=8'b00010001;//A
		end
endmodule 

module displayB(AS,sure);
	input sure;
	output [7:0]AS;
	reg [7:0]AS;
	
	always @(sure)
		begin
			AS=8'b11000001;//B
		end
endmodule */

module number(A,B,in_a,in_b,seg,sure,clk,enable,rst,dec);
	input [3:0]in_a;
	input [3:0]in_b;
	input sure;
	output [1:0]A;
	output [1:0]B;
	output[31:0]seg;
	wire[31:0]seg;
	wire [7:0]ran;
	input clk,enable,rst;
	wire [7:0]out;
	output dec;
	
	LFSR s3(out,clk,enable,rst);
	bin_to_dec1 w(ran,out);
//	display threeone12(seg[31:24],ran[7:4]);
//	display twothree12(seg[23:16],ran[3:0]);
//	bin_to_dec bb(dec,out);
	display threeone(seg[31:24],in_b);
	display twothree(seg[23:16],in_a);
	answer(A,B,sure,in_a,in_b,ran);
	display1 three(seg[15:8],A);
//	displayA s(seg[23:16],sure);
	display1 two(seg[7:0],B);
//	displayB d1(seg[7:0],sure);
endmodule 