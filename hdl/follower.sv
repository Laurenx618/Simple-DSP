`ifndef INCLUDE_FOLLOWER
`define INCLUDE_FOLLOWER

`timescale 1ns/1ps
`default_nettype none

module follower(val);
  parameter N = 1;
  input wire [N-1:0] val;
endmodule

`endif // INCLUDE_FOLLOWER