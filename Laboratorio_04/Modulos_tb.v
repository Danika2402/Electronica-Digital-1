
module testbench();

	reg 
	wire 
	
	//Ejercicio #1
	
	tabla_1 T1(p1,p2,p3,led1);
	
	tabla_2 T2(p4,led2);
	
	tabla_3 T3(p5,p6,p7,p8,led3);
	
	tabla_4 T4(p9,p10,p11,p12,led4);
	
	//	Ejercicio #2 
	
	tabla_1_2 T1_2(p13,p14,p15,p16,led5);
	
	tabla_2_2 T2_2(p17,p18,led6);
	
	tabla_3_2 T3_2(p19,p20,p21,led7);
	
	tabla_4_2 T4_2(p22,p23,led8);
	
//////////////////////////////////////////////////////////////////////////////////////////////////
	
//tabla #1
initial begin
		
		$display("A B C | Y");
		$display("------|--");
		$monitor("%b %b %b | %b",p1,p2,p3,led1);
		
		p1=0;p2=0;p3=0;
		#1 p1=0;p2=0;p3=1;
		#1 p1=0;p2=1;p3=0;
		#1 p1=0;p2=1;p3=1;
		#1 p1=1;p2=0;p3=0;
		#1 p1=1;p2=0;p3=1;
		#1 p1=1;p2=1;p3=0;
		#1 p1=1;p2=1;p3=1;
	end
	


//tabla 2
initial begin

		#10
		$display("\n\n");	
		$display("B | Y");
		$display("--|--");
		$monitor("%b | %b",p4,led2);
		
		p4=0;
		#1 p4=1;		
	
	end
	

//tabla 3
initial begin

		#20
		$display("\n\n");
		$display("A B C D | Y");
		$display("--------|--");
		$monitor("%b %b %b %b | %b",p5,p6,p7,p8,led3);
		
		p5=0;p6=0;p7=0;p8=0;
		#1 p5=0;p6=0;p7=0;p8=1;
		#1 p5=0;p6=0;p7=1;p8=0;
		#1 p5=0;p6=0;p7=1;p8=1;
		#1 p5=0;p6=1;p7=0;p8=0;
		#1 p5=0;p6=1;p7=0;p8=1;
		#1 p5=0;p6=1;p7=1;p8=0;
		#1 p5=0;p6=1;p7=1;p8=1;
		#1 p5=1;p6=0;p7=0;p8=0;
		#1 p5=1;p6=0;p7=0;p8=1;
		#1 p5=1;p6=0;p7=1;p8=0;
		#1 p5=1;p6=0;p7=1;p8=1;
		#1 p5=1;p6=1;p7=0;p8=0;
		#1 p5=1;p6=1;p7=0;p8=1;
		#1 p5=1;p6=1;p7=1;p8=0;
		#1 p5=1;p6=1;p7=1;p8=1;
		
	end


//tabla 4
initial begin
		#30
		$display("\n\n");
		$display("A B C D | Y");
		$display("--------|--");
		$monitor("%b %b %b %b | %b",p9,p10,p11,p12,led4);
		
		p9=0;p10=0;p11=0;p12=0;
		#1 p9=0;p10=0;p11=0;p12=1;
		#1 p9=0;p10=0;p11=1;p12=0;
		#1 p9=0;p10=0;p11=1;p12=1;
		#1 p9=0;p10=1;p11=0;p12=0;
		#1 p9=0;p10=1;p11=0;p12=1;
		#1 p9=0;p10=1;p11=1;p12=0;
		#1 p9=0;p10=1;p11=1;p12=1;
		#1 p9=1;p10=0;p11=0;p12=0;
		#1 p9=1;p10=0;p11=0;p12=1;
		#1 p9=1;p10=0;p11=1;p12=0;
		#1 p9=1;p10=0;p11=1;p12=1;
		#1 p9=1;p10=1;p11=0;p12=0;
		#1 p9=1;p10=1;p11=0;p12=1;
		#1 p9=1;p10=1;p11=1;p12=0;
		#1 p9=1;p10=1;p11=1;p12=1;
		
	end
	

//tabla 1_2
initial begin 
		#40
		$display("\n\n");
		$display("A B C D | Y");
		$display("--------|--");
		$monitor("%b %b %b %b | %b",p13,p14,p15,p16,led5);
		
		p13=0;p14=0;p15=0;p16=0;
		#1 p13=0;p14=0;p15=0;p16=0;
		#1 p13=0;p14=0;p15=0;p16=0;
		#1 p13=0;p14=0;p15=0;p16=0;
		#1 p13=0;p14=0;p15=0;p16=0;
		#1 p13=0;p14=0;p15=0;p16=0;
		#1 p13=0;p14=0;p15=0;p16=0;
		#1 p13=0;p14=0;p15=0;p16=0;
		#1 p13=0;p14=0;p15=0;p16=0;
		#1 p13=0;p14=0;p15=0;p16=0;
		#1 p13=0;p14=0;p15=0;p16=0;
		#1 p13=0;p14=0;p15=0;p16=0;
		#1 p13=0;p14=0;p15=0;p16=0;
		#1 p13=0;p14=0;p15=0;p16=0;
		#1 p13=0;p14=0;p15=0;p16=0;
		#1 p13=0;p14=0;p15=0;p16=0;
		
	end
	
//tabla 2_2
initial begin
		#50
		$display("\n\n");
		$display("B C | Y");
		$display("----|--");
		$monitor("%b %b | %b",p17,p18,led6);
		
		p17=0;p18=0;
		#1 p17=0;p18=1;	
		#1 p17=1;p18=0;
		#1 p17=1;p18=1;
		
	end
	
//tabla 3_2
initial begin

		#60
		$display("\n\n");
		$display("A B C D | Y");
		$display("--------|--");
		$monitor("%b %b %b %b | %b",p19,p20,p21,led7);
		
		p19=0;p20=0;p21=0;
		#1 p19=0;p20=0;p21=1;
		#1 p19=0;p20=1;p21=0;
		#1 p19=0;p20=1;p21=1;
		#1 p19=1;p20=0;p21=0;
		#1 p19=1;p20=0;p21=1;
		#1 p19=1;p20=1;p21=0;
		#1 p19=1;p20=1;p21=1;
		
	end
	
//tabla 4_2
initial begin
		#70
		$display("\n\n");
		$display("B C | Y");
		$display("----|--");
		$monitor("%b %b | %b",p22,p23,led8);
		
		p22=0;p23=0;
		#1 p22=0;p23=1;	
		#1 p22=1;p23=0;
		#1 p22=1;p23=1;
		#1 $finish
	end
	
	
initial begin
		$dumpfile("Modulos_tb.vcd");
		$dumpvars(0,testbench);
	
	end

endmodule