module s1031449_lab3( out , clk , enable , seed);
    input clk, enable, seed;
    output [5:0] out;
    reg [5:0] out;
	wire feedback;
	assign feedback=out[5]^out[1];
    always @(posedge clk)
    begin
		if(enable)begin
		out[0] <= seed;
		out[1] <= out[0];
		out[2] <= out[1];
		out[3] <= out[2];
		out[4] <= out[3];
		out[5] <= out[4];
		end
		else begin
		out[0] <= feedback;
		out[1] <= out[0];
		out[2] <= out[1];
		out[3] <= out[2];
		out[4] <= out[3];
		out[5] <= out[4];
		end
	end	
endmodule 
