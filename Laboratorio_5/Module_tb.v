module testbench();

	reg p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14,p15,p16,p17,p18;
	wire led1,led2,led3,led4,led5,led6;
	
	tabla1_2a1 T1mux2(p1,p2,p3,led1);
	
	tabla1_4a1 T1mux4(p4,p5,p6,led2);
	
	tabla1_8a1 T1mux8(p7,p8,p9,led3);
	
	tabla2_2a1 T2mux2(p10,p11,p12,led4);
	
	tabla2_4a1 T2mux4(p13,p14,p15,led5);
	
	tabla2_8a1 T2mux8(p16,p17,p18,led6);
 	
	initial begin 
	
	$display("Tabla 1, mux 2:1");
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
	$display("Tabla 1, mux 4:1");
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
	$display("Tabla 1, mux 8:1");
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
	
	initial begin
	
	#80
	$display("\n");
	$display("Tabla 2, mux 2:1");
	$display("A B C | Y");
	$display("------|--");
	$monitor("%b %b %b | %b", p10,p11,p12,led4);
	p10=0;p11=0;p12=0;
	#1 p10=0;p11=0;p12=1;
	#1 p10=0;p11=1;p12=0;
	#1 p10=0;p11=1;p12=1;
	#1 p10=1;p11=0;p12=0;
	#1 p10=1;p11=0;p12=1;
	#1 p10=1;p11=1;p12=0;
	#1 p10=1;p11=1;p12=1;
	
	end
	
	initial begin
	
	#100
	$display("\n");
	$display("Tabla 2, mux 4:1");
	$display("A B C | Y");
	$display("------|--");
	$monitor("%b %b %b | %b", p13,p14,p15,led5);
	p13=0;p14=0;p15=0;
	#1 p13=0;p14=0;p15=1;
	#1 p13=0;p14=1;p15=0;
	#1 p13=0;p14=1;p15=1;
	#1 p13=1;p14=0;p15=0;
	#1 p13=1;p14=0;p15=1;
	#1 p13=1;p14=1;p15=0;
	#1 p13=1;p14=1;p15=1;
	
	end
	
	initial begin
	
	#120
	$display("\n");
	$display("Tabla 2, mux 8:1");
	$display("A B C | Y");
	$display("------|--");
	$monitor("%b %b %b | %b", p16,p17,p18,led6);
	p16=0;p17=0;p18=0;
	#1 p16=0;p17=0;p18=1;
	#1 p16=0;p17=1;p18=0;
	#1 p16=0;p17=1;p18=1;
	#1 p16=1;p17=0;p18=0;
	#1 p16=1;p17=0;p18=1;
	#1 p16=1;p17=1;p18=0;
	#1 p16=1;p17=1;p18=1;
	
	end
	
	initial begin
		
		$dumpfile("Module_tb.vcd");
		$dumpvars(0,testbench);
	
	end
	initial 
	#140 $finish;

endmodule