
module Simulacion();

	reg p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14,p15,p16,p17,p18;
	wire led1,led2,led3,led4,led5,led6;
	
	SOP S(p1,p2,p3,led1);
	
	POS P(p4,p5,p6,led2);
	
	Karnaug K(p7,p8,p9,led3);
	
	SOP_operadores SO(p10,p11,p12,led4);
	
	POS_operadores PO(p13,p14,p15,led5);
	
	Karnaug_operadores KO(p16,p17,p18,led6);
	
initial begin

		$display("\n Solución SOP");
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
	
initial begin

		#10
		$display("\n Solución POS");
		$display("A B C | Y");
		$display("------|--");
		$monitor("%b %b %b | %b",p4,p5,p6,led2);
		
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
		
		#20
		$display("\n Solución de Karnaug");
		$display("A B C | Y");
		$display("------|--");
		$monitor("%b %b %b | %b",p7,p8,p9,led3);
		
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

		#30
		$display("\n Solución SOP_operadores");
		$display("A B C | Y");
		$display("------|--");
		$monitor("%b %b %b | %b",p10,p11,p12,led4);
		
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

		#40
		$display("\n Solución POS_operadores");
		$display("A B C | Y");
		$display("------|--");
		$monitor("%b %b %b | %b",p13,p14,p15,led5);
		
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

		#50
		$display("\n Solución Karnaug_operadores");
		$display("A B C | Y");
		$display("------|--");
		$monitor("%b %b %b | %b",p16,p17,p18,led6);
		
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
		$dumpfile("Alarmas_tb.vcd");
		$dumpvars(0,Simulacion);
	
	end

initial
	#70 $finish;
endmodule