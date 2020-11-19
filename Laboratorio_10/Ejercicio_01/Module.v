module ProgramCounter (input wire clk, enabled, reset,load, input wire [11:0]D , output reg [11:0]D);
		
	always @ (posedge clk or posedge enabled or posedge load)
	if (reset==1) 
		Q<=0;
	else if (reset==0)
		begin
			if (load==0)	
				begin
					if (enabled==1)begin
						Q<= Q + 1'b1;
							end
					else if (enabled==0)begin
						Q<=Q;
							end
				end
			else if (load==1)
				begin
					Q<= D;
					Q<= Q + 1'b1;
				end
		end

endmodule

module ProgramRom



endmodule


module Fetch (input clk, enable,reset,D, output reg Q);
	
	
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


