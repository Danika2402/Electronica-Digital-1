module testbench();

reg clk,reset,enabled,J,K;
wire Q;

FFJK U1(clk,enabled,reset,J,K,Q);

initial begin

	$display("Ejercicio 3");
	$display("clk | Reset | Enabled | J | K | Q ");
	$monitor("%b   |   %b   |    %b    | %b | %b | %b",clk,reset,enabled,J,K,Q);
	
	clk=0;reset=0; enabled=1; J=0;K=1;
	#1 K=0;
	#1 J=1;K=0;
	#2
	#1 reset=1;
	#1 reset=0;
	#1 J=1;K=1;
	#4
	#1 enabled =1;
	#2 
	#1 $finish;
	
end

always
	#1 clk= ~clk;
	initial begin
		
		$dumpfile("FFJK_tb.vcd");
		$dumpvars(0,testbench);
	
	end
	

endmodule