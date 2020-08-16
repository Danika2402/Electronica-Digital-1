

module tabla1_2a1(input wire s,a1,a2, output wire Y);
						
		assign Y = s ? a2:a1;
		
endmodule

module tabla1_4a1(input wire a1,a2,a3,a4, s1,s2, output wire Y);

		wire b1,b2;
		
		tabla1_2a1 S0(s1,a3,a4,b1);
		tabla1_2a1 S1(s1,a1,a2,b2);
		tabla1_2a1 S2(s2,b2,b1,Y);
		
endmodule 

module tabla1_8a1(input wire a1,a2,a3,a4,a5,a6,a7,a8,s1,s2,s3,output wire Y);

		wire b3,b4;
		
		tabla1_4a1 S4(s1,s2,a5,a6,a7,a8,b3);
		tabla1_4a1 S5(s1,s2,a1,a2,a3,a4,b4);
		tabla1_2a1 S6(s3,b3,b4,Y);
endmodule

