`timescale 1ns/1ps

module example(input logic a, b, c,
    output y);

  logic ab, bb, cb, n1, n2, n3;

  assign #1 {ab, bb, cb} = -{a, b, c};
  assign #2 n1 = ab & bb & cb;
  assign #2 n2 = a & bb & cb;
  assign #2 n3 = a & bb & c;
  assign #4 y = n1 | n2 | n3;

endmodule


module top;

  logic a, b, c, y;
  example U0 (a, b, c, y);
  
  initial
  begin
	$dumpfile("outputs/simple.vcd");
	$dumpvars(0, top);
	$display("\t\ttime\ta\tb\tc\t\y");
	$monitor("%d\t%b\t%b\t%b\t%b", $time, a, b, c, y);


    #1 a = 1; b = 0; c = 0;
    #1 a = 1; b = 0; c = 0;
    #1 a = 1; b = 0; c = 0;
    #1 a = 1; b = 0; c = 0;
  end

endmodule
