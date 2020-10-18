module testbench();

	reg A,B,clk,reset; 
	wire Y1,Y2,C;
	
	elevador F1(clk,reset,A,B,Y1,Y2,C);
	
	initial begin 
		
		$display ("Proyecto 1: Electronica digital 1");	
		$display ("-----------El Elevador-----------");
		$display ("Piso | A B | C | CLK | Reset |");
		$monitor (" %b %b  | %b %b | %b |  %b  |   %b   |", Y1,Y2,A,B,C,clk,reset);
		
		reset =0; A=0; B=0;clk=0;
		#2
		#3 A=1;
		#3 B=1;
		#1 reset =1;
		#1 reset =0;
		#2 B=0;
		#2 A=0;
		#3 A=1;
		#3 B=1;
		#2 B=0;
		#2 A=0;
		#5 A=1;
		#1 A=0;
		#5 B=1;
		#1 B=0;
		#1 reset =1;
		#1 reset =0;
		#1 $finish;
	end
	
	always 
	#1 clk = ~clk;
	
initial begin
		
		$dumpfile("Proyecto_tb.vcd");
		$dumpvars(0,testbench);
	
	end
	
endmodule 