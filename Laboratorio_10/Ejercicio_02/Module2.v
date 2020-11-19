module BusDriver1(input enable,[3:0]D, output reg [3:0]Q);

	always @(*) 
		if (enable==0)
			Q <= 3'bz;
			else 
			Q<=D;

endmodule

module Acumulador (input wire clk, enabled, reset, input wire [3:0]D , output reg [3:0]D);


	always @ (posedge clk or posedge reset or posedge enable) 

		if (reset==0)
			begin
				if(enable==1) 
					begin
						Q<=D;
					end
				else if (enable==0)begin
						Q<=Q;
					end
			end
		else if (reset==1)
			begin
		
				Q<=1'b0;
				
			end


endmodule