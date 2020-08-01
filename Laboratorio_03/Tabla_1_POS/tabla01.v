module tabla01();

//POS Tabla #1

reg A,B,C;
wire w1,w2,w3,w4,w5,w6,out;

	not (w1,A);
	not (w2,B);
	not (w3,C);

	or (w4,A,B,w3);
	or (w5,A,w2,w3);
	or (w6,w1,w2,C);

	and (out,w4,w5,w6);

initial begin 

	$display("A B C | Y");
	$display("---------");	
	$monitor("%b %b %b | %b", A,B,C, out);
	A=0;B=0;C=0;
	#1 C=1;
	#1 B=1;C=0;
	#1 C=1;
	#1 A=1; B=0; C=0;
	#1 C=1;
	#1 B=1;C=0;
	#1 C=1;
	#1 $finish;
end

initial 
	begin
		$dumpfile("tabla01_tb.vcd");
		$dumpvars(0,tabla01);
	end

endmodule