


module top;

	reg [3:0] value;
	wire [3:0] out;

	invert_4bit U0 (
		.a(value),
		.y(out)
	);

	initial
	begin	
		$dumpfile("outputs/simple.vcd");
		$dumpvars(0, top);
		$display("\t\ttime\toutputs\tinputs"); 
		$monitor("%d,\t%b,\t%b",$time,value,out); 
		value=4'd0;
		#5 value=4'b0001;
		#5 value=4'b0010;
		#5 value=4'b0011;
		#5 value=4'b0100;
		#5 value=4'b0101;
		#5 value=4'b0111;
		#5 value=4'b1000;
		#5 value=4'b1001;
		#5 value=4'b1010;
		#5 value=4'b1011;
		#5 value=4'b1100;
		#5 value=4'b1101;
		#5 value=4'b1110;
		#5 value=4'b1111;
		#5 $finish;
	end
endmodule
	
