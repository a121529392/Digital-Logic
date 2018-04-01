module lab4(str_out, match, str_in, clk);
    input str_in, clk;
    output [2:0]str_out;
    output match;
	reg out,match=0;
	reg [2:0]str_out;
	reg [1:0]current_state;
	parameter state0=2'b00,state1=2'b01,state2=2'b10,state3=2'b11;
	
	always@(posedge clk)
	begin
	match = 0;
		case(current_state)
			state0:current_state=(str_in==1)?state2:state0;
			state1:current_state=(str_in==1)?state2:state0;
			state2:
				if(str_in==1)
					begin
					current_state=state3;
					match=1;
					end
				else
					begin
						current_state=state0;
						match=0;
					end 
			state3:
				if(str_in==1)
					begin
						current_state=state3;
						match=0;
					end
				else
					begin
						current_state=state1;
						match=0;
					end
		endcase
		
	str_out[0]<=str_out[1];
	str_out[1]<=str_out[2];
	str_out[2]<=str_in;
	end
endmodule 