`timescale 1ns/1ps  

module structuralmux4(
  input logic [3:0] d0, d1, d2, d3,
  input logic [1:0] s,
  output logic [3:0] y);

  logic [3:0] low;
  logic [3:0] high;

  mux2 U0 (.d0(d0),
           .d1(d1),
           .s(s[0]),
           .y(low));
  mux2 U1 (.d0(d2),
           .d1(d3),
           .s(s[0]),
           .y(high));

  mux2 U2 (.d0(low),
           .d1(high),
           .s(s[1]),
           .y(y));

endmodule

