


module mux2(
	d0,
	d1,
	s,
	y
);

	input wire [3:0] d0;
	input wire [3:0] d1;
	input wire s;
	output wire [3:0] y;

	assign y = s ? d1 : d0;

endmodule
