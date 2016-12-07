
module top;

	reg a, b, cin;
	wire s, cout;

	fulladder U0 (
		.a(a),
		.b(b),
		.cin(cin),
		.s(s),
		.cout(cout)
	);

	initial
	begin
		$dumpfile("outputs/simple.vcd");
		$dumpvars(0, top);
		$display("\t\ttime\ta\tb\tcin\ts\tcout"); 
		$monitor("%d,\t%b,\t%b,\t%b,\t%b,\t%b",$time,a,b,cin,s,cout); 
		a = 0;
		b = 0;
		cin = 0;
		#5 a = 1; b = 0; cin = 0;
		#5 a = 0; b = 1; cin = 0;
		#5 a = 1; b = 1; cin = 0;
		#5 a = 0; b = 0; cin = 1;
		#5 a = 1; b = 0; cin = 1;
		#5 a = 0; b = 1; cin = 1;
		#5 a = 1; b = 1; cin = 1;
		#5 $finish;
	end

endmodule
