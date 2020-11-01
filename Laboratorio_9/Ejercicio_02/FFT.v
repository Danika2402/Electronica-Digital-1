module ffd (input clk, enable,reset,D, output reg Q);

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

module fft (input clk,enable,reset,D,output wire T);
	wire Y;
	
	ffd U1(clk,enable,reset,D,Y);
	assign T= ~Y;	
	
endmodule