

module top;

reg [3:0] a;
wire [3:0] y;
reg en;

tristate U0 (
	.a(a),
	.en(en),
	.y(y)
);

initial
begin
	$dumpfile("outputs/simple.vcd");
	$dumpvars(0, top);
	$display("\t\ttime\ta\ten\t\y");
	$monitor("%d\t%x\t%b\t%x", $time, a, en, y);

	a = 4'b1010;
	en = 1;
	#5 en = 0;
	#5 a = 4'b0101; en = 0;
	#5 en = 1;
end
endmodule
	
