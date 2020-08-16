module tesbench();

	reg p1,p2,p3,p4,p5,p6,p7,p8,p9;
	wire led1,led2led3;
	
	tabla1_2a1 mux2(p1,p2,p3,led1);
	
	tabla1_4a1 mux4(p4,p5,p6,led2);
	
	tabla1_8a1 mux8(p7,p8,p9,led3);
 	
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
	$monitor("%b %b %b | %b", p7,p8,p9,led3);
	p7=0;p8=0;p9=0;
	#1 p7=0;p8=0;p9=1;
	#1 p7=0;p8=1;p9=0;
	#1 p7=0;p8=1;p9=1;
	#1 p7=1;p8=0;p9=0;
	#1 p7=1;p8=0;p9=1;
	#1 p7=1;p8=1;p9=0;
	#1 p7=1;p8=1;p9=1;
	
	end
endmodule