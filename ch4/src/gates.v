

module gates (
	a,
	b,
	y1,
	y2,
	y3,
	y4,
	y5
);

	input wire [3:0] a;
	input wire [3:0] b;

	output wire [3:0] y1, y2, y3, y4, y5;

	assign y1 = a & b;
	assign y2 = a | b;
	assign y3 = a ^ b;
	assign y4 = ~(a & b);
	assign y5 = ~(a | b);

	
endmodule
