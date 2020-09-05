module ffd4(input wire clk,input wire reset,input wire set, input wire [3:0]d, output wire [3:0]q);

always @(posedge clk, posedge reset)

	if (reset) q<=4'b0000;
	else if (set) q<=4'b0001;
	else q<= d;
	
endmodule
