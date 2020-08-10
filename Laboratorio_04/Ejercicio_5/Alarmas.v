
//Solución SOP
//gateLevel
module SOP(input wire A,B,C, output wire Y);

wire w1,w2,w3,w4,w5;
	
	not (w1,B);
	not (w2,C);
	
	and (w3,A,w1,C);
	and (w4,A,B,w2);
	and (w5,A,B,C);
	
	or (Y,w3,w4,w5);
	
endmodule

//Solución POS
//gateLevel
module POS(input wire A,B,C, output wire Y);

wire w1,w2,w3,w4,w5,w6,w7,w8;
	
	not (w1,A);
	not (w2,B);
	not (w3,C);

	or (w4,A,B,C);
	or (w5,A,B,w3);
	or (w6,A,w2,C);
	or (w7,A,w2,w3);
	or (w8,w1,B,C);
	
	and (Y,w4,w5,w6,w7,w8);
	
endmodule

//Solución Karnaug
//gateLevel
module Karnaug(input wire A,B,C, output wire Y);

wire w1,w2;

	and (w1,A,B);
	and (w2,A,C);
	
	or (Y,w1,w2);

endmodule

//Solución SOP
//operadores

module SOP_operadores(input wire A,B,C, output wire Y);

	assign Y= (A & ~B & C)|(A & B & ~C)|(A & B & C);
	
endmodule

//Solución POS 
//operadores

module POS_operadores(input wire A,B,C, output wire Y);

	assign Y=(A|B|C)&(A|B|~C)&(A|~B|C)&(A|~B|~C)&(~A|B|C);
	
endmodule

//Solución Karnaug
//operadores

module Karnaug_operadores(input wire A,B,C, output wire Y);

	assign Y=(A&B)|(A&C);
	
endmodule