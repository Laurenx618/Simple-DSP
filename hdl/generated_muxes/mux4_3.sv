`timescale 1ns/1ps
`default_nettype none
`include "./mux2.sv"

module mux4_3(a, s, y);

    input [11:0] a;
    input [1:0] s;
    output logic [2:0] y; // m-bit output of mux
    
    logic [11:0] a2; // length n2
    always_comb a2 = {{6{1'b0}}, a};

            
            ////////////////////////   INPUT WIRE 0   ////////////////////////
            
                logic [1:0] y_input_0_layer_2_0;
        logic [1:0] y_input_0_layer_1_00;
            always_comb y_input_0_layer_1_00[0] = a2[0]; // wire
            always_comb y_input_0_layer_1_00[1] = a2[3]; // wire
        mux2 mux_input_0_layer1_00(.a(y_input_0_layer_1_00), .s(s[0]), .y(y_input_0_layer_2_0[0]));
        logic [1:0] y_input_0_layer_1_01;
            always_comb y_input_0_layer_1_01[0] = a2[6]; // wire
            always_comb y_input_0_layer_1_01[1] = a2[9]; // wire
        mux2 mux_input_0_layer1_01(.a(y_input_0_layer_1_01), .s(s[0]), .y(y_input_0_layer_2_0[1]));
    mux2 mux_input_0_layer2_0 (.a(y_input_0_layer_2_0), .s(s[1]), .y(y[0]));
            
            ////////////////////////   INPUT WIRE 1   ////////////////////////
            
                logic [1:0] y_input_1_layer_2_0;
        logic [1:0] y_input_1_layer_1_00;
            always_comb y_input_1_layer_1_00[0] = a2[1]; // wire
            always_comb y_input_1_layer_1_00[1] = a2[4]; // wire
        mux2 mux_input_1_layer1_00(.a(y_input_1_layer_1_00), .s(s[0]), .y(y_input_1_layer_2_0[0]));
        logic [1:0] y_input_1_layer_1_01;
            always_comb y_input_1_layer_1_01[0] = a2[7]; // wire
            always_comb y_input_1_layer_1_01[1] = a2[10]; // wire
        mux2 mux_input_1_layer1_01(.a(y_input_1_layer_1_01), .s(s[0]), .y(y_input_1_layer_2_0[1]));
    mux2 mux_input_1_layer2_0 (.a(y_input_1_layer_2_0), .s(s[1]), .y(y[1]));
            
            ////////////////////////   INPUT WIRE 2   ////////////////////////
            
                logic [1:0] y_input_2_layer_2_0;
        logic [1:0] y_input_2_layer_1_00;
            always_comb y_input_2_layer_1_00[0] = a2[2]; // wire
            always_comb y_input_2_layer_1_00[1] = a2[5]; // wire
        mux2 mux_input_2_layer1_00(.a(y_input_2_layer_1_00), .s(s[0]), .y(y_input_2_layer_2_0[0]));
        logic [1:0] y_input_2_layer_1_01;
            always_comb y_input_2_layer_1_01[0] = a2[8]; // wire
            always_comb y_input_2_layer_1_01[1] = a2[11]; // wire
        mux2 mux_input_2_layer1_01(.a(y_input_2_layer_1_01), .s(s[0]), .y(y_input_2_layer_2_0[1]));
    mux2 mux_input_2_layer2_0 (.a(y_input_2_layer_2_0), .s(s[1]), .y(y[2]));
    
endmodule
