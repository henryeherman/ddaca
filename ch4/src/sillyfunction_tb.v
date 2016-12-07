
module top;

	reg a, b, c;
	wire y;

	sillyfunction U0 (
		.a(a),
		.b(b),
		.c(c),
		.y(y)
	);

	initial
	begin
		a=0;b=0;c=0;
	end

	initial
	begin
		$dumpfile("outputs/simple.vcd");
		$dumpvars(0, top);
		$display("\ttime\t\ta,\tb,\tc,\ty"); 
		$monitor("%d,\t%b,\t%b,\t%b,\t%b",$time,a,b,c,y); 
	end

	always
	begin
		#5 a=1;b=0;c=0;
		#5 a=0;b=1;c=0;
		#5 a=0;b=0;c=1;
		#5 a=1;b=1;c=0;
		#5 a=1;b=0;c=1;
		#5 a=0;b=1;c=1;
		#5 a=0;b=0;c=1;
		#5 a=0;b=0;c=1;
	end

	initial
		#45 $finish;

endmodule
