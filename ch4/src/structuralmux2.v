`timescale 1ns/1ps

module structuralmux2(
  input logic [3:0] d0, d1,
  input s,
  output tri [3:0] y);

  tristate U0 (.a(d0),
               .en(~s),
               .y(y));
  tristate U1 (.a(d1),
               .en(s),
               .y(y));

endmodule
