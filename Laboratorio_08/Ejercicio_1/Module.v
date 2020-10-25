module ejercicio01 (input wire clk, enabled, reset,load, input wire [11:0]d , 
					output reg [11:0]q);
		
	initial q=0;
	
	always @ (posedge clk or posedge enabled or posedge load)
	if (reset==1) q<=0;
	
	else if (enabled==1)
			begin	
				if (load==1)
					begin 
					q<= d;
					q<= q + 1'b1;
					end
				else q<= q+1'b1;
			end
	else q<=q;
	
endmodule


