

module sillyfunction(a, b, c, y);

input wire a;
input wire b;
input wire c;
output wire y;

assign y = ~a & ~b & ~c | 
	a & ~b & ~c |
	a & ~b & c;

endmodule
