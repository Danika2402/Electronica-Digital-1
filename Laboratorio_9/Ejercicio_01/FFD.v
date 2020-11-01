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

module ffd2 (input clk,enable,reset,input [1:0]D2, output wire [1:0]Q2);

ffd U1(clk,enable,reset,D2[1],Q2[1]);
ffd U2(clk,enable,reset,D2[0],Q2[0]);

endmodule

module ffd4(input clk,enable,reset, input [3:0]D, output wire [3:0]Q);

ffd U1(clk,enable,reset,D[0],Q[0]);
ffd U2(clk,enable,reset,D[1],Q[1]);
ffd U3(clk,enable,reset,D[2],Q[2]);
ffd U4(clk,enable,reset,D[3],Q[3]);

endmodule