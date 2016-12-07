

module and8(
	a,
	y
);

	input wire [7:0] a;
	output wire y;

	assign y = &a;

endmodule
