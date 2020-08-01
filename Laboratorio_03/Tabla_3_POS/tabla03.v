module tabla03();

//POS tabla 3

reg A,B,C,D;

wire w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12,w13,out;

	not NOTA(w1,A);
	not NOTB(w2,B);
	not NOTC(w3,C);
	not NOTD(w4,D);
	
	or OR1(w5,A,w2,C,D); 
	or OR2(w6,A,w2,C,w4);
	or OR3(w7,A,w2,w3,D);
	or OR4(w8,A,w2,w3,w4);
	or OR5(w9,w1,B,C,w4);
	or OR6(w10,w1,B,w3,w4);
	or OR7(w11,w1,w2,C,D);
	or OR8(w12,w1,w2,C,w4);
	or OR9(w13,w1,w2,w3,w4);
	
	and OUT(out,w5,w6,w7,w8,w9,w10,w11,w12,w13);
	
initial begin;
	
	$display("A B C D | Y");
	$display("---------");
	$monitor("%b %b %b %b | %b", A, B, C, D, out);
	
	A=0;B=0;C=0;D=0;
	#1 D=1;
	#1 C=1;D=0;
	#1 D=1;
	#1 B=1;C=0;D=0;
	#1 D=1;
	#1 C=1;D=0;
	#1 D=1;
	#1 A=1;B=0;C=0;D=0;
	#1 D=1;
	#1 C=1;D=0;
	#1 D=1;
	#1 B=1;C=0;D=0;
	#1 D=1;
	#1 C=1;D=0;
	#1 D=1;
	#1 $finish;
end

initial 
	begin
		$dumpfile("tabla03_tb.vcd");
		$dumpvars(0,tabla03);
	end

	
endmodule