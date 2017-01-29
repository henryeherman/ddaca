`timescale 1ns/1ps

module top;

reg [3:0] d0, d1, d2, d3;
wire [3:0] out;
reg [1:0]  select;

	structuralmux4 U0 (
		.d0(d0),
		.d1(d1),
		.d2(d2),
		.d3(d3),
		.s(select),
		.y(out)
	);

	initial
	begin
		$dumpfile("outputs/simple.vcd");
		$dumpvars(0, top);
		$display("\t\ttime\ts\td0\td1\td2\td3\tout"); 
		$monitor("%d,\t%b,\t%b,\t%b,\t%b\t%b\t%b",$time,select,d0,d1,d2,d3,out); 
		d0 = 4'b0001;
		d1 = 4'b0010;
		d2 = 4'b0100;
		d3 = 4'b1000;
		select = 2'b00;
		#5 select = 2'b00;
		#5 select = 2'b01;
		#5 select = 2'b10;
		#5 select = 2'b11;
		#5 $finish;
	end

endmodule
