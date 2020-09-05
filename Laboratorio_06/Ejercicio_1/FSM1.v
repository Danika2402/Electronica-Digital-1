module FSM1 (input wire clk, input wire reset, input wire a, input wire b, output wire y);

reg [1:0] state, nextstate;

parameter s0= 3'b000;
parameter s1= 3'b001;
parameter s2= 3'b010;

always@(posedge clk,reset);
	if (reset)
		state <=s0;
	else
			state <==nextstate;
			
always@ (*)
	case(state)
		s0: if(a) nextstate=s1;
		else nextstate =s0;
		
		s1: if(b) nextstate=s2;
		else nextstate =s0;
		
		s2: if (a) and (b) nextstate =s2;
		else nextstate=s0;
		
		default nextstate=s0;
	endcase
		
		assign y=(state==s2);

endmodule