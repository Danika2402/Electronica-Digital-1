module ffd4(input clk, reset, set, input [1:0]d, output  reg[1:0]q);

always @(posedge clk or posedge reset) 

	if (reset==1) 
		q<=4'b00;
	else if (set==1) q<=4'b01;
		else q<= d;
	
endmodule
