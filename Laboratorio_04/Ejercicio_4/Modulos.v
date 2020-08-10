//EJERCICIO I

//Ecuación Y=(~A*~C)+(A*~B)+(AC), tabla #1
//gateLevel

module tabla_1(input wire A,B,C, output wire Y);

	wire w1,w2,w3,w4,w5,w6;
	
	not (w1,A);
	not (w2,B);
	not (w3,C);
	
	and (w4,w1,w3);
	and (w5,A,w2);
	and (w6,A,C);
	or (Y, w4,w5,w6);
	
endmodule
	
//Ecuación Y =~B, tabla #2
//gateLevel

module tabla_2(input wire B, output wire Y);
	
	not (Y,B);
	
endmodule
	
//Ecuación Y= (~A*~B*~C*~D)+(A*B*~C*~D)+(~A*B*~C*D)+(A*~B*~C*D)+(~A*~B*C*D)+(A*B*C*D)+(~A*B*C*~D)
// + (A*~B*C*~D), tabla #3
//operadores

module tabla_3(input A,B,C,D, output wire Y);

	assign Y=(~A & ~B & ~C & ~D)|(A & B & ~C & ~D)|(~A & B & ~C & D)|(A & ~B & ~C & D)|(~A & ~B & C & D)|(A & B & C & D)|(~A & B & C & ~D)|(A & ~B & C & ~D);
	
endmodule
	
//Ecuación Y=(~B*~D)+(A*C)+(A*B), tabla #4
//operadores

module tabla_4(input wire A,B,C,D, output wire Y);

	assign Y=(~B & ~D)|(A & C)|(A & B);
	
endmodule
	
//////////////////////////////////////////////////////////////////////////////////////////////////////////
	
//EJERCICIO II

//Ecuación Y=(~B*~C*~D)+(A*~C)+(A*~B)+(A*C*~D), tabla #1
//gateLevel

module tabla_1_2 (input wire A,B,C,D, output wire Y);

	wire w1,w2,w3,w4,w5,w6,w7;
	
	not (w1,B);
	not (w2,C);
	not (w3,D);
	
	and (w4,w1,w2,w3);
	and (w5,A,w2);
	and (w6,A,w1);
	and (w7,A,C,w3);
	
	or (Y,w4,w5,w6,w7);
	
endmodule

//Ecuación Y= -B + C, tabla #2
//gateLevel

module tabla_2_2(input wire B,C, output wire Y);

	wire w1;
	
	not (w1,B);
	or(Y,w1,C);
	
endmodule

//Ecuación Y=B+D+C*D, tabla #3
//operadores 

module tabla_3_2(input wire B,C,D, output wire Y);

	assign Y= B | D | (C & D);
	
endmodule

//Ecuación Y= ~C + B, tabla #4
//operadores

module tabla_4_2(input wire B,C, output wire Y);

	assign Y= ~C | B;
	
endmodule