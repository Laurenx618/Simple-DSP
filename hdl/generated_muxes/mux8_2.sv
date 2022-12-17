`timescale 1ns/1ps
`default_nettype none
`include "./mux2.sv"

module mux8_2(a, s, y);

    input [15:0] a;
    input [2:0] s;
    output logic [1:0] y; // m-bit output of mux
    
    logic [15:0] a2; // length n2
    always_comb a2 = {{10{1'b0}}, a};

            
            ////////////////////////   INPUT WIRE 0   ////////////////////////
            
                logic [1:0] y_input_0_layer_3_0;
        logic [1:0] y_input_0_layer_2_00;
            logic [1:0] y_input_0_layer_1_000;
                always_comb y_input_0_layer_1_000[0] = a2[0]; // wire
                always_comb y_input_0_layer_1_000[1] = a2[2]; // wire
            mux2 mux_input_0_layer1_000(.a(y_input_0_layer_1_000), .s(s[0]), .y(y_input_0_layer_2_00[0]));
            logic [1:0] y_input_0_layer_1_001;
                always_comb y_input_0_layer_1_001[0] = a2[4]; // wire
                always_comb y_input_0_layer_1_001[1] = a2[6]; // wire
            mux2 mux_input_0_layer1_001(.a(y_input_0_layer_1_001), .s(s[0]), .y(y_input_0_layer_2_00[1]));
        mux2 mux_input_0_layer2_00 (.a(y_input_0_layer_2_00), .s(s[1]), .y(y_input_0_layer_3_0[0]));
        logic [1:0] y_input_0_layer_2_01;
            logic [1:0] y_input_0_layer_1_010;
                always_comb y_input_0_layer_1_010[0] = a2[8]; // wire
                always_comb y_input_0_layer_1_010[1] = a2[10]; // wire
            mux2 mux_input_0_layer1_010(.a(y_input_0_layer_1_010), .s(s[0]), .y(y_input_0_layer_2_01[0]));
            logic [1:0] y_input_0_layer_1_011;
                always_comb y_input_0_layer_1_011[0] = a2[12]; // wire
                always_comb y_input_0_layer_1_011[1] = a2[14]; // wire
            mux2 mux_input_0_layer1_011(.a(y_input_0_layer_1_011), .s(s[0]), .y(y_input_0_layer_2_01[1]));
        mux2 mux_input_0_layer2_01 (.a(y_input_0_layer_2_01), .s(s[1]), .y(y_input_0_layer_3_0[1]));
    mux2 mux_input_0_layer3_0  (.a(y_input_0_layer_3_0), .s(s[2]), .y(y[0]));
            
            ////////////////////////   INPUT WIRE 1   ////////////////////////
            
                logic [1:0] y_input_1_layer_3_0;
        logic [1:0] y_input_1_layer_2_00;
            logic [1:0] y_input_1_layer_1_000;
                always_comb y_input_1_layer_1_000[0] = a2[1]; // wire
                always_comb y_input_1_layer_1_000[1] = a2[3]; // wire
            mux2 mux_input_1_layer1_000(.a(y_input_1_layer_1_000), .s(s[0]), .y(y_input_1_layer_2_00[0]));
            logic [1:0] y_input_1_layer_1_001;
                always_comb y_input_1_layer_1_001[0] = a2[5]; // wire
                always_comb y_input_1_layer_1_001[1] = a2[7]; // wire
            mux2 mux_input_1_layer1_001(.a(y_input_1_layer_1_001), .s(s[0]), .y(y_input_1_layer_2_00[1]));
        mux2 mux_input_1_layer2_00 (.a(y_input_1_layer_2_00), .s(s[1]), .y(y_input_1_layer_3_0[0]));
        logic [1:0] y_input_1_layer_2_01;
            logic [1:0] y_input_1_layer_1_010;
                always_comb y_input_1_layer_1_010[0] = a2[9]; // wire
                always_comb y_input_1_layer_1_010[1] = a2[11]; // wire
            mux2 mux_input_1_layer1_010(.a(y_input_1_layer_1_010), .s(s[0]), .y(y_input_1_layer_2_01[0]));
            logic [1:0] y_input_1_layer_1_011;
                always_comb y_input_1_layer_1_011[0] = a2[13]; // wire
                always_comb y_input_1_layer_1_011[1] = a2[15]; // wire
            mux2 mux_input_1_layer1_011(.a(y_input_1_layer_1_011), .s(s[0]), .y(y_input_1_layer_2_01[1]));
        mux2 mux_input_1_layer2_01 (.a(y_input_1_layer_2_01), .s(s[1]), .y(y_input_1_layer_3_0[1]));
    mux2 mux_input_1_layer3_0  (.a(y_input_1_layer_3_0), .s(s[2]), .y(y[1]));
    
endmodule
