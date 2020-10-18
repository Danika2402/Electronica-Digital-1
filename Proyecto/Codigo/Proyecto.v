module ffd (input clk, reset,D, output reg Q);

	always @ (posedge clk or posedge reset) 
	begin
		if (reset==1)
			Q<=1'b0;
		else
			Q<=D;
	end
endmodule
 
module elevador (input clk, reset, A, B, output wire Y1,Y2,C);
 
	wire S1,S2,S1_F,S2_F,P1,P1_F,P2,P2_F,P3,P3_F,P4,P4_F;
	
	
	
	ffd U1(clk,reset,S1,S1_F);
	ffd U2(clk,reset,S2,S2_F);
	
	ffd U3(clk,reset,P1,P1_F);
	ffd U4(clk,reset,P2,P2_F);
	ffd U5(clk,reset,P3,P3_F);
	ffd U6(clk,reset,P4,P4_F);
	
	assign S1_F =(S2 & A & ~B & ~P1)|(S2 & A & ~B & ~P4)|(S1 & P1 & P4)|(S1 & S2)|(S1 & ~B)|(S1 & A); 
	assign S2_F =(S1 & ~S2 & ~A & B & ~P1) | (S1 & ~S2 & ~A & B & ~P4) | (~S1 & A & B & ~P1) | (~S1 & A & B & ~P4) 
				| (~S2 & A & ~B & ~P1) | (~S2 & A & ~B & ~P4) | (S2 & P1 & P4) | (S2 & ~A & ~B) | (S1 & S2 & ~B);
	
	assign P1_F =(P2 & P3 & P4) | (P1 & ~P3);
	assign P2_F =(~P2 & P3 & P4) | (P2 & ~P3) | (P2 & ~P4);
	assign P3_F =(~P1 & P3 & ~P4) | (~P3 & P4);
	assign P4_F =(~P1 & P3 & ~P4) | (~P3 & ~P4);

	assign Y1 = (~S1 & S2) | (S1 & ~S2);
	assign Y2 = (~S2);
	assign C = (P1 & P3); 
	
endmodule
 

 
