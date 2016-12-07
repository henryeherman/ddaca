`timescale 1ns/1ps


module top;

reg [3:0] c;
reg [3:0] d;
wire [7:0] y;


bitswizzle U0 (
	.c(c),
	.d(d),
	.y(y)
);

initial
begin
	$dumpfile("outputs/simple.vcd");
	$dumpvars(0, top);
	$display("\t\ttime\tc\td\ty");
	$monitor("%d\t%b\t%b\t%b", $time, c, d, y);
	c = 4'b0001;
	d = 4'b0000;
	#5 c = 4'b0111;
	#5 d = 4'b0001;
	#5 c = 4'b1000;
	#5 d = 4'b1110;
	#5 $finish();
end


endmodule
