module lab6(ledg,sw);
	
	input [9:0]sw;
	output [9:0]ledg;
	assign ledg[0]=sw[0];
	assign ledg[1]=sw[1];
	assign ledg[2]=sw[2];
	assign ledg[3]=sw[3];
	assign ledg[4]=sw[4];
	assign ledg[5]=sw[5];
	assign ledg[6]=sw[6];
	assign ledg[7]=sw[7];
	assign ledg[8]=sw[8];
	assign ledg[9]=sw[9];
		

endmodule 