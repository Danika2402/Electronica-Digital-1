module testbench();
	
reg enabled,D;
wire Q;

triestado U1(enabled,D,Q);
	
	
initial begin

	$display("Ejercicio 4");
	$display("Enabled | D | Q ");
	$monitor("    %b       | %b | %b",enabled,D,Q);
	
	enabled=1; D=1;
	#1 D=0;
	#3
	#1 enabled=0; 
	#6
	#1 enabled=1; D=1;
	#4
	#1 $finish;
	
end
	
	
	initial begin
		
		$dumpfile("tri_tb.vcd");
		$dumpvars(0,testbench);
	
	end
	

endmodule