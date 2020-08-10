
module Simulacion();

	reg p1,p2,p3,p4,p5,p6,p7,p8;
	wire led1,led2,led3;
	
	SOP S(p1,p2,p3,led1);
	
	POS P(p4,p5,p6,led2);
	
	Karnaug K(p7,p8,p9,led3);
	
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
		$dumpfile("Alarmas_tb.vcd");
		$dumpvars(0,Simulacion);
	
	end

initial
	#40 $finish;
endmodule