module tabla01_2();

//SOP de la tabla 1

reg A,B,C;
wire w1,w2,w3,w4,w5,w6,w7,w8,out;

	not NOTA(w1,A);
	not NOTB(w2,B);
	not NOTC(w3,C);

	and AND1(w4,w1,w2,w3);
	and AND2(w5,w1,B,w3);
	and AND3(w6,A,w2,w3);
	and AND4(w7,A,w2,C);
	and AND5(w8,A,B,C);

or OUT(out,w4,w5,w6,w7,w8);

initial begin
	$display("A B C | Y");
	$display("---------");
	$monitor("%b %b %b | %b", A, B, C, out);
	A=0; B=0; C=0;
	#1 C=1;
	#1 B=1;C=0;
	#1 C=1;
	#1 A=1; B=0; C=0;
	#1 C=1;
	#1 B=1; C=0;
	#1 C=1;
	#1 $finish;
end 

endmodule