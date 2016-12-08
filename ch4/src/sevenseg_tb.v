
`timescale 1ns/1ps



module top;

logic [3:0] data;
logic [6:0] segs;

sevenseg U0 (
  .data(data),
  .segments(segs)
);

initial
begin
  $dumpfile("outputs/simple.vcd");
  $dumpvars(0, top);
  $display("\ttime\t\tdata\tsegs");
  $monitor("%d\t%b\t%b", $time, data, segs);
  data = 0;
end

always
begin
  #5 data=0;
  #5 data=1;
  #5 data=2;
  #5 data=3;
  #5 data=4;
  #5 data=5;
  #5 data=6;
  #5 data=7;
  #5 data=8;
  #5 data=9;
  #5 data=10;
  #5 $finish;
end

endmodule
