

module fulladder(
	a,
	b,
	cin,
	s,
	cout
);

	input wire a, b, cin;
	output wire s, cout;

	wire p, q;

	assign p = a ^ b;
	assign q = a & b;
	assign s = p ^ cin;
	assign cout = q | (p & cin);

endmodule
