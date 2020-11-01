module testbench();

reg clk, clk2,reset, enabled, D;
wire Q;

reg [1:0] D2;
wire [1:0] Q2;

reg [3:0] D3;
wire [3:0] Q3;

ffd U1(clk,enabled,reset,D,Q);
ffd2 U2(clk,enabled,reset,D2,Q2);
ffd4 U3(clk,enabled,reset,D3,Q3);
 
initial begin

	$display("Ejercicio 1");
	$display("clk | Reset | Enabled | D | Q ");
	$monitor("%b   |   %b   |    %b    | %b | %b",clk,reset,enabled,D,Q);
	
	clk=0;reset=0; enabled=1;
	#1 D=1;
	#3
	#1 enabled=0;D=0;
	#6
	#1 enabled=1;D=0;
	#1 reset=1;	
	#1 reset=0;
	#1 D=1;
end 

initial begin
	#20
	$display("\n");
	$display("FFD 2 bits");
	$display("clk | Reset | Enabled |  D | Q");
	$monitor("%b   |   %b   |    %b    | %b | %b", clk,reset,enabled,D2,Q2);

	clk=0;reset=0;enabled=1;
	#1 D2=11;
	#3
	#1 enabled=0;D2=01;
	#6
	#1 enabled=1;D2=10;
	#1 reset=1;	
	#1 reset=0;
	#1 D2=00;
end	

initial begin
	#40
	$display("\n");
	$display("FFD 4 bits");
	$display("clk | Reset | Enabled |  D   | Q");
	$monitor("%b   |   %b   |    %b    | %b | %b", clk,reset,enabled,D3,Q3);

	clk=0;reset=0;enabled=1;
	#1 D3=0101;
	#3
	#1 enabled=0;D3=1001;
	#6
	#1 enabled=1;D3=1111;
	#1 reset=1;	
	#1 reset=0;
	#1 D3=0000;
end	
always
	#1 clk= ~clk;
	
initial begin
		
		$dumpfile("FFD_tb.vcd");
		$dumpvars(0,testbench);
	
	end
	
initial 
	#60 $finish;
endmodule