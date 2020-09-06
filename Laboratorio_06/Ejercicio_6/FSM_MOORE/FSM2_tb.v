module testbench();

reg clk,reset,a;
wire y1,y2,y3;

FSM_Moore U2(clk, reset,a,y1,y2,y3);

initial begin 
	$display("clk reset A | Y1 Y2 Y3");
	$display("----------------|--");
	$monitor("%b    %b   %b  | %b %b %b ",clk,reset,a,y1,y2,y3);
	
	clk=0;
	reset=0;
	a=1;
	#20
	#1 reset =1;
	#1 reset =0;
	#2 reset =1;
	#2 reset =0;
	a=0;
	#10
	#1 reset =1;
	#1 reset =0;
	#2 reset =1;
	#2 reset =0;
	#2 $finish;
	
end

	always 
		#1 clk= ~clk;

initial begin
		
		$dumpfile("FSM2_tb.vcd");
		$dumpvars(0,testbench);
	
	end
	
endmodule