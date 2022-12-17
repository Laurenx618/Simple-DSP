`ifndef INCLUDE_MUX2
`define INCLUDE_MUX2

`timescale 1ns/1ps
`default_nettype none

module mux2(a, s, y);

    input [1:0] a;
    input s;
    output logic y; // the last or logic

    // Below is "STRUCTURAL" verilog - explicit hardware

    // inverters: ~
    logic s_bar;
    always_comb s_bar = ~s;

    // logic was declared up top.
    always_comb y = (s_bar & a[0]) | (s & a[1]);

endmodule

`endif // INCLUDE_MUX2