

module tristate(
	a,
	en,
	y
);

	input wire [3:0] a;
	input wire en;
	output [3:0] y;
	
	
	assign y = en ? a : 4'bz;


endmodule
