module tabla02();

//POS tabla 2

reg A,B,C;
wire w1,w2,w3,w4,w5,w6,w7,w8,out;

	not NOTA(w1,A);
	not NOTB(w2,B);
	not NOTC(w3,C);

	or OR1(w4,A,B,C);
	or OR2(w5,A,w2,C);
	or OR3(w6,A,w2,w3);
	or OR4(w7,w1,B,C);
	or OR5(w8,w1,B,w3);

	and OUT(out,w4,w5,w6,w7,w8);

initial begin;

	$display("A B C | Y");
	$display("---------");
	$monitor("%b %b %b | %b", A, B, C, out);
	A=0;B=0;C=0;
	#1 C=1;
	#1 B=1;C=0;
	#1 C=1;
	#1 A=1;B=0;C=0;
	#1 C=1;
	#1 B=1;C=0;
	#1 C=1;
	#1 $finish;
end

endmodule 