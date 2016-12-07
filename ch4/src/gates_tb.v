


module top;

	reg [3:0] a, b;
	wire [3:0] out1, out2, out3, out4, out5;

	gates U0 (
		.a(a),
		.b(b),
		.y1(out1),
		.y2(out2),
		.y3(out3),
		.y4(out4),
		.y5(out5)
	);

	initial
	begin	
		$dumpfile("outputs/simple.vcd");
		$dumpvars(0, top);
		$display("\t\ttime\ta\tb\ty1\ty2\ty3\ty4\ty5"); 
		$monitor("%d,\t%b,\t%b,\t%b,\t%b,\t%b,\t%b,\t%b",$time,a,b,out1,out2,out3,out4,out5); 
		a=4'b0000;
		b=4'b1111;
		#5 a=4'b0001;
		#5 a=4'b0010;
		#5 a=4'b0011;
		#5 a=4'b0100;
		#5 a=4'b0101;
		#5 a=4'b0110;
		#5 a=4'b0111;
		#5 a=4'b1000;
		#5 a=4'b1001;
		#5 a=4'b1010;
		#5 a=4'b1011;
		#5 a=4'b1100;
		#5 a=4'b1101;
		#5 a=4'b1110;
		#5 a=4'b1111;
		#5 $finish;
	end
endmodule
	
