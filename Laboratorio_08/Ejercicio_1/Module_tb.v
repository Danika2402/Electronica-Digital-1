module testbench();

reg clk,reset, enabled,load;
reg [11:0] d;
wire [11:0]q;

ejercicio01 U1(clk,enabled,reset,load,d,q);

initial begin

	$display("clk | reset | enabled | load |    d    |  q  |");
	$display("----|-------|---------|------|---------|-----|");
	$monitor("%b   |   %b   |    %b    |   %b  |  %d   |%d |",clk,reset,enabled,load,d,q);
	
	clk=0;reset=0;enabled=1;load=0;d=100;
	#2
	#1 enabled=0;
	#6
	#1 enabled=1;load =1;
	#4 
	#1 reset=1;
	#1 reset=0; enabled=1;
	#6
	#1 reset=1;
	#1 reset=0;
	#1 $finish;
	
	
end

always 
		#1 clk= ~clk;
		
initial begin

	$dumpfile("Module_tb.vcd");
	$dumpvars(0,testbench);

end
		
endmodule