module clock_divider(clk,divide_clk);
	input clk;
	output divide_clk;
	reg [25:0]num;
	parameter divid =5000000;
	reg divide_clk;
	always@(posedge clk)
	begin
		if(num > divid)
		begin
			num <= 0;
			divide_clk <= ~divide_clk;
		end
		else
			num = num+1;
	end
endmodule 

module ppcounter(divide_clk,rst,hold,count);
	input divide_clk;
	input rst;
	input hold;
	output count;
	reg [6:0]count;
	reg n=0;
	reg a;
	initial
	begin
		count=0;
		a=0;
	end
	always@(posedge divide_clk)
	begin
	if(count==7'b1100011)
		 a <= 1;
	if(count==0)
		a<=0;
	if(rst==0)
		count=0;
	if(hold==0)
		begin
			if(a == 0)
				count=count+1;
			else 
				count = count-1;
		end
	end	
endmodule 

module bin_to_dec(ten,one,count);
	input [6:0]count;
	output [3:0]one;
	output [3:0]ten;
	assign ten=count/4'b1010;
	assign one=count%4'b1010;
endmodule 

module display(ten,one,seg_out,seg_out1);
	input [3:0]ten;
	input [3:0]one;
	reg [7:0]seg_out;
	reg [7:0]seg_out1;
	output [7:0]seg_out;
	output [7:0]seg_out1; 
	always@(ten)
		begin
			case(ten)
			4'b0001 :seg_out =8'b10011111;
			4'b0010 :seg_out =8'b00100101;   
			4'b0011 :seg_out =8'b00001101; 
			4'b0100 :seg_out =8'b10011001;   
			4'b0101 :seg_out =8'b01001001;  
			4'b0110 :seg_out =8'b01000001; 
			4'b0111 :seg_out =8'b00011111;  
			4'b1000 :seg_out =8'b00000001;  
			4'b1001 :seg_out =8'b00001001;
			4'b1111 :seg_out =8'b11111111; 
       default :seg_out =8'b00000011;   
			endcase
		end
	always@(one)
		begin
			case(one)
			4'b0001 :seg_out1 =8'b10011111;
			4'b0010 :seg_out1 =8'b00100101;   
			4'b0011 :seg_out1 =8'b00001101; 
			4'b0100 :seg_out1 =8'b10011001;   
			4'b0101 :seg_out1 =8'b01001001;  
			4'b0110 :seg_out1 =8'b01000001; 
			4'b0111 :seg_out1 =8'b00011111;  
			4'b1000 :seg_out1 =8'b00000001;  
			4'b1001 :seg_out1 =8'b00001001;
			4'b1111 :seg_out1 =8'b11111111; 
       default :seg_out1 =8'b00000011;     
			endcase
		end		
endmodule 

module exercise(rst,hold,clk,seg_out,seg_out1,count);
	input rst;
	input hold;
	input clk;
	output [7:0]seg_out;
	output [7:0]seg_out1;
	wire divide_clk;
	output count;
	wire one;
	wire ten;
	clock_divider mod(clk,divide_clk);
	ppcounter mod1(divide_clk,rst,hold,count);
	bin_to_dec mod2(ten,one,count);
	display mod3(ten,one,seg_out,seg_out1);
endmodule 
