

module invert_4bit(a, y);

	input wire [3:0] a;
	output wire [3:0] y;
	assign y = ~a;

endmodule
