
module testbench();

reg clk,reset,set,d;
wire q;

ffd4 U1(clk,reset,set,d,q);

initial begin
	
	$display("clk reset set D | Q");
	$display("----------------|--");
	$monitor("%b  %b   %b    %b | %b",clk,reset,set,d,q);
	end
	
initial begin
	clk=0;
	reset=0;
	set=0;
	d=0000;
	#1 d=0001;
	#1 d=0010;
	#1 d=0101;
	#4 reset =1;
	#4 reset =0;
	#2 set =1;
	#2 set =0;
	#2 reset=1;
	#20
	$finish;
	
end

	always 
		#5 clk= ~clk;
		
initial begin
		
		$dumpfile("FlipFlopD_tb.vcd");
		$dumpvars(0,testbench);
	
	end
	
endmodule