module FFJK(input clk, enable,reset,J,K, output reg Q);

	always @ (posedge clk or posedge reset or posedge enable) 

		if (reset==0)
			begin
				if(enable==1) 
					begin
						if (J==0) 
							begin
								if (K==0)begin
									Q<=Q;
									end
								else if (K==1)begin
									Q<=0;
									end
							end
						else if (J==1)begin
								if (K==0)begin
									Q<=1;
									end
									else if (K==1)begin
										Q<= ~Q;
										end
							end
						
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
