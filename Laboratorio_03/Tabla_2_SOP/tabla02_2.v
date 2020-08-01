module tabla02_2();

//SOP tabla 2

reg A,B,C;
wire w1,w2,w3,w4,w5,w6,out;

	not NOTA(w1,A);
	not NOTB(w2,B);
	not NOTC(w3,C);
	
	and AND1(w4,w1,w2,C);
	and AND2(w5,A,B,w3);
	and AND3(w6,A,B,C);
	
	or OUT(out,w4,w5,w6);
	
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