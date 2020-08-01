module tabla03_2();

//SOP tabla 3

reg A,B,C,D;

wire w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,out;

	not NOTA(w1,A);
	not NOTB(w2,B);
	not NOTC(w3,C);
	not NOTD(w4,D);
	
	and AND1(w5,w1,w2,w3,w4);
	and AND2(w6,w1,w2,w3,D);
	and AND3(w7,w1,w2,C,w4);
	and AND4(w8,w1,w2,C,D);
	and AND5(w9,A,w2,w3,w4);
	and AND6(w10,A,w2,C,w4);
	and AND7(w11,A,B,C,w4);

	or OUT(out,w5,w6,w7,w8,w9,w10,w11);
	
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
		$dumpfile("tabla03_2_tb.vcd");
		$dumpvars(0,tabla03_2);
	end
	
endmodule