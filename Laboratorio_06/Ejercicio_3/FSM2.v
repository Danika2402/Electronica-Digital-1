module FSM2(input wire clk, input wire reset, input wire a, output wire y);

reg [1:0] state, nexstate;

parameter s0= 3'b000;
parameter s1= 3'b001;
parameter s2= 3'b010;
parameter s3= 3'b011;
parameter s4= 3'b100;
parameter s5= 3'b101;
parameter s6= 3'b110;
parameter s7= 3b'111;


always@ (posedge clk, posedge reset);
	if(reset)
		state<=0;
	else
		state<=nexstate;
		
always@(*)
	case(state)
	s0: if (a) nexstate=s1;
	else nexstate =s7;
	
	s1: if(a) nexstate=s2;
	else nexstate=s0;
	
	s2: i(a) nexstate=s3;
	else nexstate=s1;
	
	s3: if(a) nexstate=s4;
	else nexstate=s2;
	
	s4: if(a) nexstate=s5;
	else nexstate=s3;
	
	s5: if(a) nexstate=s6;
	else nexstate=s4;
	
	s6: if(a) nexstate=s7;
	else nexstate=s5;
	
	s7: if(a) nexstate=s0;
	else nexstate=s6;
	
	default nexstate=s0;
	endcase
	
assign y1=(state);

endmodule
	