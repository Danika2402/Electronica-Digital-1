module FSM_Mealy (input clk, reset, a, b, output y);

reg [1:0] state, nextstate;

parameter s0= 3'b000;
parameter s1= 3'b001;
parameter s2= 3'b010;

always@(posedge clk or posedge reset)
	if (reset==1)
		state <= s0;
	else
		state <= nextstate;
	
always@ (*)
	case(state)
		s0: if(a==1) nextstate=s1;
		else nextstate =s0;
		
		s1: if(b==1) nextstate=s2;
		else nextstate =s0;
		
		s2: if ((a==1) & (b==1)) nextstate =s2;
		else nextstate= s0;
		
		default nextstate=s0;
	endcase
		
		assign y=(state==s2);

endmodule


