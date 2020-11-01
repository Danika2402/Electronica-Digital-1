module triestado(input enable,D, output reg Q);

	always @(*) 
		if (enable==0)
			Q <= 1'bz;
			else 
			Q<=D;

endmodule