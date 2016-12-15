`timescale 1ns/1ps

module tristate(
	input logic [3:0] a,
	input en,
	output tri [3:0] y
);

	assign y = en ? a : 4'bz;

endmodule
