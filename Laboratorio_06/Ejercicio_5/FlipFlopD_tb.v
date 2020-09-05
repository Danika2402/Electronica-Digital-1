module testbench();

ffd4 U1(clk,reset,set,d,q);

initial begin

	$monitor("CLK= %b RESET= %b SET= %b d= %b q= %b",clk,reset,set,d,q);
	
	clk=0;
	#1 reset=0;
	set=0;
	d=0000;
	#1 reset =0;
	#2 reset =1;
	#2 set =1;
	#2 set =0;
	
	
	
	
end
initial begin
		
		$dumpfile("Module_tb.vcd");
		$dumpvars(0,testbench);
	
	end
initial 
	#2 $finish;
always

	#1 clk= ~clk;
	
endmodule