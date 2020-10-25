module testbench();

wire [0:7]i;
reg [7:0]mem[0:3999];

rom R1 (mem,i);

for (i=0; i<=0; i = i +1)
	begin 
		$monitor("%b",mem[i]);
	end
	
	#10 $finish;
end

	initial begin

		$dumpfile("rom_tb.vcd");
		$dumpvars(0,testbench);
	
	end
endmodule