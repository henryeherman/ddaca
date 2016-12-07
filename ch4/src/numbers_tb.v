

module top;

	reg [31:0] value;

	initial
	begin
		$dumpfile("outputs/simple.vcd");
		$dumpvars(0, top);
		$display("\t\ttime\thex\t\tbin\t\t\t\t\toct\t\t\tdec"); 
		$monitor("%d,\t0x%x,\t0b%b,\t0%o,\t%d",$time,value, value, value, value); 
	
		value = 0;
		#5 value = 3'b010;
		#5 value = 'b11;
		#5 value = 8'b11;
		#5 value = 8'b1010_1011;
		#5 value = 3'd6;
		#5 value = 3'o42;
		#5 value = 3'hAB;
		#5 value = 42;
		#5 value = 32'bz;
		#5 $finish;
	end

endmodule
