module testbench();

reg clk,reset,enabled,D;
wire T;

fft U1(clk,enabled,reset,D,T);

initial begin

	$display("Ejercicio 2");
	$display("clk | Reset | Enabled | D | T ");
	$monitor("%b   |   %b   |    %b    | %b | %b",clk,reset,enabled,D,T);
	
	clk=0;reset=0; enabled=1;
	#1 D=1;
	#3
	#1 enabled=0;D=0;
	#6
	#1 enabled=1;D=0;
	#1 reset=1;	
	#1 reset=0;
	#1 D=1;
	#1 $finish;
end 
always
	#1 clk= ~clk;
	
initial begin
		
		$dumpfile("FFT_tb.vcd");
		$dumpvars(0,testbench);
	
	end
	
endmodule