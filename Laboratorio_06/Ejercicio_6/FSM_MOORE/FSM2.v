module FSM_Moore (input clk, reset, a, output y1,y2,y3);

reg [1:0] state, nextstate;

parameter e0 = 3'b000;
parameter e1 = 3'b001;
parameter e2 = 3'b010;
parameter e3 = 3'b011;
parameter e4 = 3'b100;
parameter e5 = 3'b101;
parameter e6 = 3'b110;
parameter e7 = 3'b111;

always@(posedge clk or posedge reset)
	if (reset==1)
		state <= e0;
	else
		state <= nextstate;

always@ (*)
	case(state)
		e0: if(a==1) nextstate=e1;
		else nextstate =e7;

		e1: if(a==1) nextstate=e2;
		else nextstate =e0;
		
		e2: if (a==1) nextstate =e3;
		else nextstate= e1;
		
		e3: if(a==1) nextstate=e4;
		else nextstate =e2;
		
		e4: if(a==1) nextstate=e5;
		else nextstate =e3;
		
		e5: if (a==1) nextstate =e6;
		else nextstate= e4;
		
		e6: if(a==1) nextstate=e7;
		else nextstate =e5;
		
		e7: if(a==1) nextstate=e0;
		else nextstate =e6;
		
		default nextstate = e0;
	endcase
		
		assign y1 =(state== e4) | (state==e5) | (state==e6) | (state==e7);
		assign y2 =(state == e2) | (state==e3) | (state==e4) | (state==e5);
		assign y3 =(state == e1) | (state==e2) | (state==e5) | (state==e6);


endmodule