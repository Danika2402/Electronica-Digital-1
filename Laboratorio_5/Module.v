

module tabla1_2a1(input wire A, B,C, output wire Y);
					
		assign Y = A ? (B~^C):(B^C);
		
endmodule

module tabla1_4a1(input wire A,B,  C, output wire Y);

		assign Y = A?(B? (C):(~C)):(B?(~C):(C));
		
endmodule 

module tabla1_8a1(input wire A,B,C,output wire Y);
		
		assign Y = A? (B? (C? 1:0):(C? 0:1)): (B? (C? 0:1):(C? 1:0));
		
endmodule

module tabla2_2a1(input wire A, B,C, output wire Y);

		assign Y = A? (B~|C):(B^C);

endmodule

module tabla2_4a1(input wire A,B,C, output wire Y);

		assign Y = A?(B? (~C):0):(B?(C):(~C));

endmodule

module tabla2_8a1(input wire A,B,C, output wire Y);
		
		assign Y = A? (B? (C? 1:0):(C? 0:0)): (B? (C? 0:1):(C? 1:0));

endmodule