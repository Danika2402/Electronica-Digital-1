module testbench();

reg clk,reset,a,b,d;
wire y,y1,y2,y3;

FSM_Mealy U1(clk,reset,a,b,y);

initial begin
	#10
	$display("clk reset A B | Y");
	$display("----------------|--");
	$monitor("%b    %b   %b %b | %b",clk,reset,a,b,y);

	clk=0;
	reset=0;
	a=1;
	b=1;
	#1 reset =1;
	#1 reset =0;
	#4 b=1;
	#20 $finish;
	
end

	always 
		#5 clk= ~clk;

initial begin
		
		$dumpfile("Fsm1_tb.vcd");
		$dumpvars(0,testbench);
	
	end
	
endmodule