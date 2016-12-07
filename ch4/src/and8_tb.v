


module top;

	reg [7:0] a;
	wire y;
	
	
	and8 U0 (
		.a(a),
		.y(y)
	);


	initial
	begin

		$dumpfile("outputs/simple.vcd");
		$dumpvars(0, top);
		$display("\t\ttime\ta\t\ty"); 
		$monitor("%d,\t%b,\t%b",$time,a,y); 
		a=8'b0000_0000;
		#5 a=8'b0000_0001;
		#5 a=8'b1000_0001;
		#5 a=8'b1111_1111;
		#5 a=8'b0000_0001;
		#5 $finish;
	end
	
endmodule
