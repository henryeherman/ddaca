`timescale 1ns/1ps

module top;

logic [3:0] a;
logic [3:0] y;
logic [3:0] y1;

priorityckt U0( .a(a),
		.y(y));

priorityckt_casez U1( .a(a),
		      .y(y1));


	initial
	begin
		$dumpfile("outputs/simple.vcd");
		$dumpvars(0, top);
		$display("\t\ttime\ta\ty\ty1");
		$monitor("%d\t%b\t%b\t%b", $time, a, y, y1);

		a = 4'b0000;
		#5 a = 4'b1000;
		#5 a = 4'b1100;
		#5 a = 4'b0100;
		#5 a = 4'b0111;
		#5 a = 4'b0010;
		#5 a = 4'b0001;
		#5 a = 4'b1001;
	
		$finish;
	end
endmodule
