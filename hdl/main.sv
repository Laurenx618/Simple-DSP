`timescale 1ns/1ps
`default_nettype none

module dsp #(clk, rst, ena, sample, out);
parameter N = 16;
parameter N_TAPS = 4;
parameter N_MULT = 12;

input wire clk, rst, ena;
input wire [N-1:0] sample;
output wire [N+N_MULT+$clog2(N_TAPS)-1:0] out;

logic ena;

logic [N-1:0] buff0, buff1, buff2, buff3;
logic [N-1:0] multiplied0, multiplied1, multiplied2, multiplied3;
wire [7:0] a0, a1, a2, a3;


register(.clk(clk), .ena(ena), .rst(rst), .d(sample), .q(buff0));
register(.clk(clk), .ena(ena), .rst(rst), .d(buff0), .q(buff1));
register(.clk(clk), .ena(ena), .rst(rst), .d(buff1), .q(buff2));
register(.clk(clk), .ena(ena), .rst(rst), .d(buff2), .q(buff3));


always_comb begin
multiplied0 = buff0*a0;
multiplied1 = buff0*a1;
multiplied2 = buff0*a2;
multiplied3 = buff0*a3;
end

always_comb out = multiplied0 + multiplied1 + multiplied2 + multiplied3;

//a0 + a1 + a2 + a3;


endmodule