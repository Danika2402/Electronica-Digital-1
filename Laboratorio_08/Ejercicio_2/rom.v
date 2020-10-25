module rom (input reg [7:0]memoria[0:3999], output wire [0:7]B);

	initial begin
		$readmemb("memoria.list", memoria);
	end

endmodule	 