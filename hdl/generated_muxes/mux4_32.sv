`ifndef INCLUDE_MUX4_32
`define INCLUDE_MUX4_32

`timescale 1ns/1ps
`default_nettype none
`include "./mux2.sv"

module mux4_32(a, s, y);

    input [127:0] a;
    input [1:0] s;
    output logic [31:0] y; // m-bit output of mux
    
    logic [127:0] a2; // length n2
    always_comb a2 = {{64{1'b0}}, a};

            
            ////////////////////////   INPUT WIRE 0   ////////////////////////
            
    logic [1:0] y_input_0_layer_2_0;
        logic [1:0] y_input_0_layer_1_00;
            always_comb y_input_0_layer_1_00[0] = a2[0]; // wire
            always_comb y_input_0_layer_1_00[1] = a2[32]; // wire
        mux2 mux_input_0_layer1_00(.a(y_input_0_layer_1_00), .s(s[0]), .y(y_input_0_layer_2_0[0]));
        logic [1:0] y_input_0_layer_1_01;
            always_comb y_input_0_layer_1_01[0] = a2[64]; // wire
            always_comb y_input_0_layer_1_01[1] = a2[96]; // wire
        mux2 mux_input_0_layer1_01(.a(y_input_0_layer_1_01), .s(s[0]), .y(y_input_0_layer_2_0[1]));
    mux2 mux_input_0_layer2_0 (.a(y_input_0_layer_2_0), .s(s[1]), .y(y[0]));
            
            ////////////////////////   INPUT WIRE 1   ////////////////////////
            
    logic [1:0] y_input_1_layer_2_0;
        logic [1:0] y_input_1_layer_1_00;
            always_comb y_input_1_layer_1_00[0] = a2[1]; // wire
            always_comb y_input_1_layer_1_00[1] = a2[33]; // wire
        mux2 mux_input_1_layer1_00(.a(y_input_1_layer_1_00), .s(s[0]), .y(y_input_1_layer_2_0[0]));
        logic [1:0] y_input_1_layer_1_01;
            always_comb y_input_1_layer_1_01[0] = a2[65]; // wire
            always_comb y_input_1_layer_1_01[1] = a2[97]; // wire
        mux2 mux_input_1_layer1_01(.a(y_input_1_layer_1_01), .s(s[0]), .y(y_input_1_layer_2_0[1]));
    mux2 mux_input_1_layer2_0 (.a(y_input_1_layer_2_0), .s(s[1]), .y(y[1]));
            
            ////////////////////////   INPUT WIRE 2   ////////////////////////
            
    logic [1:0] y_input_2_layer_2_0;
        logic [1:0] y_input_2_layer_1_00;
            always_comb y_input_2_layer_1_00[0] = a2[2]; // wire
            always_comb y_input_2_layer_1_00[1] = a2[34]; // wire
        mux2 mux_input_2_layer1_00(.a(y_input_2_layer_1_00), .s(s[0]), .y(y_input_2_layer_2_0[0]));
        logic [1:0] y_input_2_layer_1_01;
            always_comb y_input_2_layer_1_01[0] = a2[66]; // wire
            always_comb y_input_2_layer_1_01[1] = a2[98]; // wire
        mux2 mux_input_2_layer1_01(.a(y_input_2_layer_1_01), .s(s[0]), .y(y_input_2_layer_2_0[1]));
    mux2 mux_input_2_layer2_0 (.a(y_input_2_layer_2_0), .s(s[1]), .y(y[2]));
            
            ////////////////////////   INPUT WIRE 3   ////////////////////////
            
    logic [1:0] y_input_3_layer_2_0;
        logic [1:0] y_input_3_layer_1_00;
            always_comb y_input_3_layer_1_00[0] = a2[3]; // wire
            always_comb y_input_3_layer_1_00[1] = a2[35]; // wire
        mux2 mux_input_3_layer1_00(.a(y_input_3_layer_1_00), .s(s[0]), .y(y_input_3_layer_2_0[0]));
        logic [1:0] y_input_3_layer_1_01;
            always_comb y_input_3_layer_1_01[0] = a2[67]; // wire
            always_comb y_input_3_layer_1_01[1] = a2[99]; // wire
        mux2 mux_input_3_layer1_01(.a(y_input_3_layer_1_01), .s(s[0]), .y(y_input_3_layer_2_0[1]));
    mux2 mux_input_3_layer2_0 (.a(y_input_3_layer_2_0), .s(s[1]), .y(y[3]));
            
            ////////////////////////   INPUT WIRE 4   ////////////////////////
            
    logic [1:0] y_input_4_layer_2_0;
        logic [1:0] y_input_4_layer_1_00;
            always_comb y_input_4_layer_1_00[0] = a2[4]; // wire
            always_comb y_input_4_layer_1_00[1] = a2[36]; // wire
        mux2 mux_input_4_layer1_00(.a(y_input_4_layer_1_00), .s(s[0]), .y(y_input_4_layer_2_0[0]));
        logic [1:0] y_input_4_layer_1_01;
            always_comb y_input_4_layer_1_01[0] = a2[68]; // wire
            always_comb y_input_4_layer_1_01[1] = a2[100]; // wire
        mux2 mux_input_4_layer1_01(.a(y_input_4_layer_1_01), .s(s[0]), .y(y_input_4_layer_2_0[1]));
    mux2 mux_input_4_layer2_0 (.a(y_input_4_layer_2_0), .s(s[1]), .y(y[4]));
            
            ////////////////////////   INPUT WIRE 5   ////////////////////////
            
    logic [1:0] y_input_5_layer_2_0;
        logic [1:0] y_input_5_layer_1_00;
            always_comb y_input_5_layer_1_00[0] = a2[5]; // wire
            always_comb y_input_5_layer_1_00[1] = a2[37]; // wire
        mux2 mux_input_5_layer1_00(.a(y_input_5_layer_1_00), .s(s[0]), .y(y_input_5_layer_2_0[0]));
        logic [1:0] y_input_5_layer_1_01;
            always_comb y_input_5_layer_1_01[0] = a2[69]; // wire
            always_comb y_input_5_layer_1_01[1] = a2[101]; // wire
        mux2 mux_input_5_layer1_01(.a(y_input_5_layer_1_01), .s(s[0]), .y(y_input_5_layer_2_0[1]));
    mux2 mux_input_5_layer2_0 (.a(y_input_5_layer_2_0), .s(s[1]), .y(y[5]));
            
            ////////////////////////   INPUT WIRE 6   ////////////////////////
            
    logic [1:0] y_input_6_layer_2_0;
        logic [1:0] y_input_6_layer_1_00;
            always_comb y_input_6_layer_1_00[0] = a2[6]; // wire
            always_comb y_input_6_layer_1_00[1] = a2[38]; // wire
        mux2 mux_input_6_layer1_00(.a(y_input_6_layer_1_00), .s(s[0]), .y(y_input_6_layer_2_0[0]));
        logic [1:0] y_input_6_layer_1_01;
            always_comb y_input_6_layer_1_01[0] = a2[70]; // wire
            always_comb y_input_6_layer_1_01[1] = a2[102]; // wire
        mux2 mux_input_6_layer1_01(.a(y_input_6_layer_1_01), .s(s[0]), .y(y_input_6_layer_2_0[1]));
    mux2 mux_input_6_layer2_0 (.a(y_input_6_layer_2_0), .s(s[1]), .y(y[6]));
            
            ////////////////////////   INPUT WIRE 7   ////////////////////////
            
    logic [1:0] y_input_7_layer_2_0;
        logic [1:0] y_input_7_layer_1_00;
            always_comb y_input_7_layer_1_00[0] = a2[7]; // wire
            always_comb y_input_7_layer_1_00[1] = a2[39]; // wire
        mux2 mux_input_7_layer1_00(.a(y_input_7_layer_1_00), .s(s[0]), .y(y_input_7_layer_2_0[0]));
        logic [1:0] y_input_7_layer_1_01;
            always_comb y_input_7_layer_1_01[0] = a2[71]; // wire
            always_comb y_input_7_layer_1_01[1] = a2[103]; // wire
        mux2 mux_input_7_layer1_01(.a(y_input_7_layer_1_01), .s(s[0]), .y(y_input_7_layer_2_0[1]));
    mux2 mux_input_7_layer2_0 (.a(y_input_7_layer_2_0), .s(s[1]), .y(y[7]));
            
            ////////////////////////   INPUT WIRE 8   ////////////////////////
            
    logic [1:0] y_input_8_layer_2_0;
        logic [1:0] y_input_8_layer_1_00;
            always_comb y_input_8_layer_1_00[0] = a2[8]; // wire
            always_comb y_input_8_layer_1_00[1] = a2[40]; // wire
        mux2 mux_input_8_layer1_00(.a(y_input_8_layer_1_00), .s(s[0]), .y(y_input_8_layer_2_0[0]));
        logic [1:0] y_input_8_layer_1_01;
            always_comb y_input_8_layer_1_01[0] = a2[72]; // wire
            always_comb y_input_8_layer_1_01[1] = a2[104]; // wire
        mux2 mux_input_8_layer1_01(.a(y_input_8_layer_1_01), .s(s[0]), .y(y_input_8_layer_2_0[1]));
    mux2 mux_input_8_layer2_0 (.a(y_input_8_layer_2_0), .s(s[1]), .y(y[8]));
            
            ////////////////////////   INPUT WIRE 9   ////////////////////////
            
    logic [1:0] y_input_9_layer_2_0;
        logic [1:0] y_input_9_layer_1_00;
            always_comb y_input_9_layer_1_00[0] = a2[9]; // wire
            always_comb y_input_9_layer_1_00[1] = a2[41]; // wire
        mux2 mux_input_9_layer1_00(.a(y_input_9_layer_1_00), .s(s[0]), .y(y_input_9_layer_2_0[0]));
        logic [1:0] y_input_9_layer_1_01;
            always_comb y_input_9_layer_1_01[0] = a2[73]; // wire
            always_comb y_input_9_layer_1_01[1] = a2[105]; // wire
        mux2 mux_input_9_layer1_01(.a(y_input_9_layer_1_01), .s(s[0]), .y(y_input_9_layer_2_0[1]));
    mux2 mux_input_9_layer2_0 (.a(y_input_9_layer_2_0), .s(s[1]), .y(y[9]));
            
            ////////////////////////   INPUT WIRE 10   ////////////////////////
            
    logic [1:0] y_input_10_layer_2_0;
        logic [1:0] y_input_10_layer_1_00;
            always_comb y_input_10_layer_1_00[0] = a2[10]; // wire
            always_comb y_input_10_layer_1_00[1] = a2[42]; // wire
        mux2 mux_input_10_layer1_00(.a(y_input_10_layer_1_00), .s(s[0]), .y(y_input_10_layer_2_0[0]));
        logic [1:0] y_input_10_layer_1_01;
            always_comb y_input_10_layer_1_01[0] = a2[74]; // wire
            always_comb y_input_10_layer_1_01[1] = a2[106]; // wire
        mux2 mux_input_10_layer1_01(.a(y_input_10_layer_1_01), .s(s[0]), .y(y_input_10_layer_2_0[1]));
    mux2 mux_input_10_layer2_0 (.a(y_input_10_layer_2_0), .s(s[1]), .y(y[10]));
            
            ////////////////////////   INPUT WIRE 11   ////////////////////////
            
    logic [1:0] y_input_11_layer_2_0;
        logic [1:0] y_input_11_layer_1_00;
            always_comb y_input_11_layer_1_00[0] = a2[11]; // wire
            always_comb y_input_11_layer_1_00[1] = a2[43]; // wire
        mux2 mux_input_11_layer1_00(.a(y_input_11_layer_1_00), .s(s[0]), .y(y_input_11_layer_2_0[0]));
        logic [1:0] y_input_11_layer_1_01;
            always_comb y_input_11_layer_1_01[0] = a2[75]; // wire
            always_comb y_input_11_layer_1_01[1] = a2[107]; // wire
        mux2 mux_input_11_layer1_01(.a(y_input_11_layer_1_01), .s(s[0]), .y(y_input_11_layer_2_0[1]));
    mux2 mux_input_11_layer2_0 (.a(y_input_11_layer_2_0), .s(s[1]), .y(y[11]));
            
            ////////////////////////   INPUT WIRE 12   ////////////////////////
            
    logic [1:0] y_input_12_layer_2_0;
        logic [1:0] y_input_12_layer_1_00;
            always_comb y_input_12_layer_1_00[0] = a2[12]; // wire
            always_comb y_input_12_layer_1_00[1] = a2[44]; // wire
        mux2 mux_input_12_layer1_00(.a(y_input_12_layer_1_00), .s(s[0]), .y(y_input_12_layer_2_0[0]));
        logic [1:0] y_input_12_layer_1_01;
            always_comb y_input_12_layer_1_01[0] = a2[76]; // wire
            always_comb y_input_12_layer_1_01[1] = a2[108]; // wire
        mux2 mux_input_12_layer1_01(.a(y_input_12_layer_1_01), .s(s[0]), .y(y_input_12_layer_2_0[1]));
    mux2 mux_input_12_layer2_0 (.a(y_input_12_layer_2_0), .s(s[1]), .y(y[12]));
            
            ////////////////////////   INPUT WIRE 13   ////////////////////////
            
    logic [1:0] y_input_13_layer_2_0;
        logic [1:0] y_input_13_layer_1_00;
            always_comb y_input_13_layer_1_00[0] = a2[13]; // wire
            always_comb y_input_13_layer_1_00[1] = a2[45]; // wire
        mux2 mux_input_13_layer1_00(.a(y_input_13_layer_1_00), .s(s[0]), .y(y_input_13_layer_2_0[0]));
        logic [1:0] y_input_13_layer_1_01;
            always_comb y_input_13_layer_1_01[0] = a2[77]; // wire
            always_comb y_input_13_layer_1_01[1] = a2[109]; // wire
        mux2 mux_input_13_layer1_01(.a(y_input_13_layer_1_01), .s(s[0]), .y(y_input_13_layer_2_0[1]));
    mux2 mux_input_13_layer2_0 (.a(y_input_13_layer_2_0), .s(s[1]), .y(y[13]));
            
            ////////////////////////   INPUT WIRE 14   ////////////////////////
            
    logic [1:0] y_input_14_layer_2_0;
        logic [1:0] y_input_14_layer_1_00;
            always_comb y_input_14_layer_1_00[0] = a2[14]; // wire
            always_comb y_input_14_layer_1_00[1] = a2[46]; // wire
        mux2 mux_input_14_layer1_00(.a(y_input_14_layer_1_00), .s(s[0]), .y(y_input_14_layer_2_0[0]));
        logic [1:0] y_input_14_layer_1_01;
            always_comb y_input_14_layer_1_01[0] = a2[78]; // wire
            always_comb y_input_14_layer_1_01[1] = a2[110]; // wire
        mux2 mux_input_14_layer1_01(.a(y_input_14_layer_1_01), .s(s[0]), .y(y_input_14_layer_2_0[1]));
    mux2 mux_input_14_layer2_0 (.a(y_input_14_layer_2_0), .s(s[1]), .y(y[14]));
            
            ////////////////////////   INPUT WIRE 15   ////////////////////////
            
    logic [1:0] y_input_15_layer_2_0;
        logic [1:0] y_input_15_layer_1_00;
            always_comb y_input_15_layer_1_00[0] = a2[15]; // wire
            always_comb y_input_15_layer_1_00[1] = a2[47]; // wire
        mux2 mux_input_15_layer1_00(.a(y_input_15_layer_1_00), .s(s[0]), .y(y_input_15_layer_2_0[0]));
        logic [1:0] y_input_15_layer_1_01;
            always_comb y_input_15_layer_1_01[0] = a2[79]; // wire
            always_comb y_input_15_layer_1_01[1] = a2[111]; // wire
        mux2 mux_input_15_layer1_01(.a(y_input_15_layer_1_01), .s(s[0]), .y(y_input_15_layer_2_0[1]));
    mux2 mux_input_15_layer2_0 (.a(y_input_15_layer_2_0), .s(s[1]), .y(y[15]));
            
            ////////////////////////   INPUT WIRE 16   ////////////////////////
            
    logic [1:0] y_input_16_layer_2_0;
        logic [1:0] y_input_16_layer_1_00;
            always_comb y_input_16_layer_1_00[0] = a2[16]; // wire
            always_comb y_input_16_layer_1_00[1] = a2[48]; // wire
        mux2 mux_input_16_layer1_00(.a(y_input_16_layer_1_00), .s(s[0]), .y(y_input_16_layer_2_0[0]));
        logic [1:0] y_input_16_layer_1_01;
            always_comb y_input_16_layer_1_01[0] = a2[80]; // wire
            always_comb y_input_16_layer_1_01[1] = a2[112]; // wire
        mux2 mux_input_16_layer1_01(.a(y_input_16_layer_1_01), .s(s[0]), .y(y_input_16_layer_2_0[1]));
    mux2 mux_input_16_layer2_0 (.a(y_input_16_layer_2_0), .s(s[1]), .y(y[16]));
            
            ////////////////////////   INPUT WIRE 17   ////////////////////////
            
    logic [1:0] y_input_17_layer_2_0;
        logic [1:0] y_input_17_layer_1_00;
            always_comb y_input_17_layer_1_00[0] = a2[17]; // wire
            always_comb y_input_17_layer_1_00[1] = a2[49]; // wire
        mux2 mux_input_17_layer1_00(.a(y_input_17_layer_1_00), .s(s[0]), .y(y_input_17_layer_2_0[0]));
        logic [1:0] y_input_17_layer_1_01;
            always_comb y_input_17_layer_1_01[0] = a2[81]; // wire
            always_comb y_input_17_layer_1_01[1] = a2[113]; // wire
        mux2 mux_input_17_layer1_01(.a(y_input_17_layer_1_01), .s(s[0]), .y(y_input_17_layer_2_0[1]));
    mux2 mux_input_17_layer2_0 (.a(y_input_17_layer_2_0), .s(s[1]), .y(y[17]));
            
            ////////////////////////   INPUT WIRE 18   ////////////////////////
            
    logic [1:0] y_input_18_layer_2_0;
        logic [1:0] y_input_18_layer_1_00;
            always_comb y_input_18_layer_1_00[0] = a2[18]; // wire
            always_comb y_input_18_layer_1_00[1] = a2[50]; // wire
        mux2 mux_input_18_layer1_00(.a(y_input_18_layer_1_00), .s(s[0]), .y(y_input_18_layer_2_0[0]));
        logic [1:0] y_input_18_layer_1_01;
            always_comb y_input_18_layer_1_01[0] = a2[82]; // wire
            always_comb y_input_18_layer_1_01[1] = a2[114]; // wire
        mux2 mux_input_18_layer1_01(.a(y_input_18_layer_1_01), .s(s[0]), .y(y_input_18_layer_2_0[1]));
    mux2 mux_input_18_layer2_0 (.a(y_input_18_layer_2_0), .s(s[1]), .y(y[18]));
            
            ////////////////////////   INPUT WIRE 19   ////////////////////////
            
    logic [1:0] y_input_19_layer_2_0;
        logic [1:0] y_input_19_layer_1_00;
            always_comb y_input_19_layer_1_00[0] = a2[19]; // wire
            always_comb y_input_19_layer_1_00[1] = a2[51]; // wire
        mux2 mux_input_19_layer1_00(.a(y_input_19_layer_1_00), .s(s[0]), .y(y_input_19_layer_2_0[0]));
        logic [1:0] y_input_19_layer_1_01;
            always_comb y_input_19_layer_1_01[0] = a2[83]; // wire
            always_comb y_input_19_layer_1_01[1] = a2[115]; // wire
        mux2 mux_input_19_layer1_01(.a(y_input_19_layer_1_01), .s(s[0]), .y(y_input_19_layer_2_0[1]));
    mux2 mux_input_19_layer2_0 (.a(y_input_19_layer_2_0), .s(s[1]), .y(y[19]));
            
            ////////////////////////   INPUT WIRE 20   ////////////////////////
            
    logic [1:0] y_input_20_layer_2_0;
        logic [1:0] y_input_20_layer_1_00;
            always_comb y_input_20_layer_1_00[0] = a2[20]; // wire
            always_comb y_input_20_layer_1_00[1] = a2[52]; // wire
        mux2 mux_input_20_layer1_00(.a(y_input_20_layer_1_00), .s(s[0]), .y(y_input_20_layer_2_0[0]));
        logic [1:0] y_input_20_layer_1_01;
            always_comb y_input_20_layer_1_01[0] = a2[84]; // wire
            always_comb y_input_20_layer_1_01[1] = a2[116]; // wire
        mux2 mux_input_20_layer1_01(.a(y_input_20_layer_1_01), .s(s[0]), .y(y_input_20_layer_2_0[1]));
    mux2 mux_input_20_layer2_0 (.a(y_input_20_layer_2_0), .s(s[1]), .y(y[20]));
            
            ////////////////////////   INPUT WIRE 21   ////////////////////////
            
    logic [1:0] y_input_21_layer_2_0;
        logic [1:0] y_input_21_layer_1_00;
            always_comb y_input_21_layer_1_00[0] = a2[21]; // wire
            always_comb y_input_21_layer_1_00[1] = a2[53]; // wire
        mux2 mux_input_21_layer1_00(.a(y_input_21_layer_1_00), .s(s[0]), .y(y_input_21_layer_2_0[0]));
        logic [1:0] y_input_21_layer_1_01;
            always_comb y_input_21_layer_1_01[0] = a2[85]; // wire
            always_comb y_input_21_layer_1_01[1] = a2[117]; // wire
        mux2 mux_input_21_layer1_01(.a(y_input_21_layer_1_01), .s(s[0]), .y(y_input_21_layer_2_0[1]));
    mux2 mux_input_21_layer2_0 (.a(y_input_21_layer_2_0), .s(s[1]), .y(y[21]));
            
            ////////////////////////   INPUT WIRE 22   ////////////////////////
            
    logic [1:0] y_input_22_layer_2_0;
        logic [1:0] y_input_22_layer_1_00;
            always_comb y_input_22_layer_1_00[0] = a2[22]; // wire
            always_comb y_input_22_layer_1_00[1] = a2[54]; // wire
        mux2 mux_input_22_layer1_00(.a(y_input_22_layer_1_00), .s(s[0]), .y(y_input_22_layer_2_0[0]));
        logic [1:0] y_input_22_layer_1_01;
            always_comb y_input_22_layer_1_01[0] = a2[86]; // wire
            always_comb y_input_22_layer_1_01[1] = a2[118]; // wire
        mux2 mux_input_22_layer1_01(.a(y_input_22_layer_1_01), .s(s[0]), .y(y_input_22_layer_2_0[1]));
    mux2 mux_input_22_layer2_0 (.a(y_input_22_layer_2_0), .s(s[1]), .y(y[22]));
            
            ////////////////////////   INPUT WIRE 23   ////////////////////////
            
    logic [1:0] y_input_23_layer_2_0;
        logic [1:0] y_input_23_layer_1_00;
            always_comb y_input_23_layer_1_00[0] = a2[23]; // wire
            always_comb y_input_23_layer_1_00[1] = a2[55]; // wire
        mux2 mux_input_23_layer1_00(.a(y_input_23_layer_1_00), .s(s[0]), .y(y_input_23_layer_2_0[0]));
        logic [1:0] y_input_23_layer_1_01;
            always_comb y_input_23_layer_1_01[0] = a2[87]; // wire
            always_comb y_input_23_layer_1_01[1] = a2[119]; // wire
        mux2 mux_input_23_layer1_01(.a(y_input_23_layer_1_01), .s(s[0]), .y(y_input_23_layer_2_0[1]));
    mux2 mux_input_23_layer2_0 (.a(y_input_23_layer_2_0), .s(s[1]), .y(y[23]));
            
            ////////////////////////   INPUT WIRE 24   ////////////////////////
            
    logic [1:0] y_input_24_layer_2_0;
        logic [1:0] y_input_24_layer_1_00;
            always_comb y_input_24_layer_1_00[0] = a2[24]; // wire
            always_comb y_input_24_layer_1_00[1] = a2[56]; // wire
        mux2 mux_input_24_layer1_00(.a(y_input_24_layer_1_00), .s(s[0]), .y(y_input_24_layer_2_0[0]));
        logic [1:0] y_input_24_layer_1_01;
            always_comb y_input_24_layer_1_01[0] = a2[88]; // wire
            always_comb y_input_24_layer_1_01[1] = a2[120]; // wire
        mux2 mux_input_24_layer1_01(.a(y_input_24_layer_1_01), .s(s[0]), .y(y_input_24_layer_2_0[1]));
    mux2 mux_input_24_layer2_0 (.a(y_input_24_layer_2_0), .s(s[1]), .y(y[24]));
            
            ////////////////////////   INPUT WIRE 25   ////////////////////////
            
    logic [1:0] y_input_25_layer_2_0;
        logic [1:0] y_input_25_layer_1_00;
            always_comb y_input_25_layer_1_00[0] = a2[25]; // wire
            always_comb y_input_25_layer_1_00[1] = a2[57]; // wire
        mux2 mux_input_25_layer1_00(.a(y_input_25_layer_1_00), .s(s[0]), .y(y_input_25_layer_2_0[0]));
        logic [1:0] y_input_25_layer_1_01;
            always_comb y_input_25_layer_1_01[0] = a2[89]; // wire
            always_comb y_input_25_layer_1_01[1] = a2[121]; // wire
        mux2 mux_input_25_layer1_01(.a(y_input_25_layer_1_01), .s(s[0]), .y(y_input_25_layer_2_0[1]));
    mux2 mux_input_25_layer2_0 (.a(y_input_25_layer_2_0), .s(s[1]), .y(y[25]));
            
            ////////////////////////   INPUT WIRE 26   ////////////////////////
            
    logic [1:0] y_input_26_layer_2_0;
        logic [1:0] y_input_26_layer_1_00;
            always_comb y_input_26_layer_1_00[0] = a2[26]; // wire
            always_comb y_input_26_layer_1_00[1] = a2[58]; // wire
        mux2 mux_input_26_layer1_00(.a(y_input_26_layer_1_00), .s(s[0]), .y(y_input_26_layer_2_0[0]));
        logic [1:0] y_input_26_layer_1_01;
            always_comb y_input_26_layer_1_01[0] = a2[90]; // wire
            always_comb y_input_26_layer_1_01[1] = a2[122]; // wire
        mux2 mux_input_26_layer1_01(.a(y_input_26_layer_1_01), .s(s[0]), .y(y_input_26_layer_2_0[1]));
    mux2 mux_input_26_layer2_0 (.a(y_input_26_layer_2_0), .s(s[1]), .y(y[26]));
            
            ////////////////////////   INPUT WIRE 27   ////////////////////////
            
    logic [1:0] y_input_27_layer_2_0;
        logic [1:0] y_input_27_layer_1_00;
            always_comb y_input_27_layer_1_00[0] = a2[27]; // wire
            always_comb y_input_27_layer_1_00[1] = a2[59]; // wire
        mux2 mux_input_27_layer1_00(.a(y_input_27_layer_1_00), .s(s[0]), .y(y_input_27_layer_2_0[0]));
        logic [1:0] y_input_27_layer_1_01;
            always_comb y_input_27_layer_1_01[0] = a2[91]; // wire
            always_comb y_input_27_layer_1_01[1] = a2[123]; // wire
        mux2 mux_input_27_layer1_01(.a(y_input_27_layer_1_01), .s(s[0]), .y(y_input_27_layer_2_0[1]));
    mux2 mux_input_27_layer2_0 (.a(y_input_27_layer_2_0), .s(s[1]), .y(y[27]));
            
            ////////////////////////   INPUT WIRE 28   ////////////////////////
            
    logic [1:0] y_input_28_layer_2_0;
        logic [1:0] y_input_28_layer_1_00;
            always_comb y_input_28_layer_1_00[0] = a2[28]; // wire
            always_comb y_input_28_layer_1_00[1] = a2[60]; // wire
        mux2 mux_input_28_layer1_00(.a(y_input_28_layer_1_00), .s(s[0]), .y(y_input_28_layer_2_0[0]));
        logic [1:0] y_input_28_layer_1_01;
            always_comb y_input_28_layer_1_01[0] = a2[92]; // wire
            always_comb y_input_28_layer_1_01[1] = a2[124]; // wire
        mux2 mux_input_28_layer1_01(.a(y_input_28_layer_1_01), .s(s[0]), .y(y_input_28_layer_2_0[1]));
    mux2 mux_input_28_layer2_0 (.a(y_input_28_layer_2_0), .s(s[1]), .y(y[28]));
            
            ////////////////////////   INPUT WIRE 29   ////////////////////////
            
    logic [1:0] y_input_29_layer_2_0;
        logic [1:0] y_input_29_layer_1_00;
            always_comb y_input_29_layer_1_00[0] = a2[29]; // wire
            always_comb y_input_29_layer_1_00[1] = a2[61]; // wire
        mux2 mux_input_29_layer1_00(.a(y_input_29_layer_1_00), .s(s[0]), .y(y_input_29_layer_2_0[0]));
        logic [1:0] y_input_29_layer_1_01;
            always_comb y_input_29_layer_1_01[0] = a2[93]; // wire
            always_comb y_input_29_layer_1_01[1] = a2[125]; // wire
        mux2 mux_input_29_layer1_01(.a(y_input_29_layer_1_01), .s(s[0]), .y(y_input_29_layer_2_0[1]));
    mux2 mux_input_29_layer2_0 (.a(y_input_29_layer_2_0), .s(s[1]), .y(y[29]));
            
            ////////////////////////   INPUT WIRE 30   ////////////////////////
            
    logic [1:0] y_input_30_layer_2_0;
        logic [1:0] y_input_30_layer_1_00;
            always_comb y_input_30_layer_1_00[0] = a2[30]; // wire
            always_comb y_input_30_layer_1_00[1] = a2[62]; // wire
        mux2 mux_input_30_layer1_00(.a(y_input_30_layer_1_00), .s(s[0]), .y(y_input_30_layer_2_0[0]));
        logic [1:0] y_input_30_layer_1_01;
            always_comb y_input_30_layer_1_01[0] = a2[94]; // wire
            always_comb y_input_30_layer_1_01[1] = a2[126]; // wire
        mux2 mux_input_30_layer1_01(.a(y_input_30_layer_1_01), .s(s[0]), .y(y_input_30_layer_2_0[1]));
    mux2 mux_input_30_layer2_0 (.a(y_input_30_layer_2_0), .s(s[1]), .y(y[30]));
            
            ////////////////////////   INPUT WIRE 31   ////////////////////////
            
    logic [1:0] y_input_31_layer_2_0;
        logic [1:0] y_input_31_layer_1_00;
            always_comb y_input_31_layer_1_00[0] = a2[31]; // wire
            always_comb y_input_31_layer_1_00[1] = a2[63]; // wire
        mux2 mux_input_31_layer1_00(.a(y_input_31_layer_1_00), .s(s[0]), .y(y_input_31_layer_2_0[0]));
        logic [1:0] y_input_31_layer_1_01;
            always_comb y_input_31_layer_1_01[0] = a2[95]; // wire
            always_comb y_input_31_layer_1_01[1] = a2[127]; // wire
        mux2 mux_input_31_layer1_01(.a(y_input_31_layer_1_01), .s(s[0]), .y(y_input_31_layer_2_0[1]));
    mux2 mux_input_31_layer2_0 (.a(y_input_31_layer_2_0), .s(s[1]), .y(y[31]));
    
endmodule

`endif // INCLUDE_{self.module_name.upper()}