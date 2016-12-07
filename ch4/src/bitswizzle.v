


module bitswizzle(
	d,
	c,
	y
);

input wire [3:0] d;
input wire [3:0] c;

output wire [7:0] y;

assign y = {c[2:1],{3{d[0]}}, c[0], 3'b101};


endmodule
