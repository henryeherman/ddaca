
module top;

reg [3:0] d0;
reg [3:0] d1;
wire [3:0] out;
reg select;

	structuralmux2 U0 (
		.d0(d0),
		.d1(d1),
		.s(select),
		.y(out)
	);

	initial
	begin
		$dumpfile("outputs/simple.vcd");
		$dumpvars(0, top);
		$display("\t\ttime\ts\td0\td1\tout"); 
		$monitor("%d,\t%b,\t%b,\t%b,\t%b",$time,select,d0,d1,out); 
		d0 = 4'b1010;
		d1 = 4'b0101;
		select = 1'b0;
		#5 select = 1'b1;
		#5 select = 1'b0;
		#5 select = 1'b1;
		#5 select = 1'b0;
		#5 $finish;
	end

endmodule
