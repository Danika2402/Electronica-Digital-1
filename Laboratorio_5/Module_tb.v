module tesbench();

	reg p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14,p15,p16,p17,p18,p19,p20;
	wire led1,led2,led3;
	
	tabla1_2a1 mux2(p1,p2,p3,led1);
	
	tabla1_4a1 mux4(p4,p5,p6,p7,p8,p9,led2);
	
	tabla1_8a1 mux8(p10,p11,p12,p13,p14,p15,p16,p17,p18,p19,p20,led3);
 	
	initial begin 
	
	$display("A B C | Y");
	$display("------|--");
	$monitor("%b %b %b | %b", p1,p2,p3,led1);
	p1=0;p2=0;p3=0;
	#1 p1=0;p2=0;p3=1;
	#1 p1=0;p2=1;p3=0;
	#1 p1=0;p2=1;p3=1;
	#1 p1=1;p2=0;p3=0;
	#1 p1=1;p2=0;p3=1;
	#1 p1=1;p2=1;p3=0;
	#1 p1=1;p2=1;p3=1;
	
	end
	
	initial begin
	
	#20
	$display("\n");
	$display("A B C | Y");
	$display("------|--");
	$monitor("%b %b %b | %b", p4,p5,p6,led2);
	p4=0;p5=0;p6=0;
	#1 p4=0;p5=0;p6=1;
	#1 p4=0;p5=1;p6=0;
	#1 p4=0;p5=1;p6=1;
	#1 p4=1;p5=0;p6=0;
	#1 p4=1;p5=0;p6=1;
	#1 p4=1;p5=1;p6=0;
	#1 p4=1;p5=1;p6=1;
	
	end
	
	initial begin
	
	#40
	$display("\n");
	$display("A B C | Y");
	$display("------|--");
	$monitor("%b %b %b | %b", p10,p11,p12,led3);
	p10=0;p11=0;p12=0;
	#1 p10=0;p11=0;p12=1;
	#1 p10=0;p11=1;p12=0;
	#1 p10=0;p11=1;p12=1;
	#1 p10=1;p11=0;p12=0;
	#1 p10=1;p11=0;p12=1;
	#1 p10=1;p11=1;p12=0;
	#1 p10=1;p11=1;p12=1;
	
	end
endmodule