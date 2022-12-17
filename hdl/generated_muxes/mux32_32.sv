`timescale 1ns/1ps
`default_nettype none
`include "./mux2.sv"

module mux32_32(a, s, y);

    input [1023:0] a;
    input [4:0] s;
    output logic [31:0] y; // m-bit output of mux
    
    logic [1023:0] a2; // length n2
    always_comb a2 = {{864{1'b0}}, a};

            
            ////////////////////////   INPUT WIRE 0   ////////////////////////
            
                logic [1:0] y_input_0_layer_5_0;
        logic [1:0] y_input_0_layer_4_00;
            logic [1:0] y_input_0_layer_3_000;
                logic [1:0] y_input_0_layer_2_0000;
                    logic [1:0] y_input_0_layer_1_00000;
                        always_comb y_input_0_layer_1_00000[0] = a2[0]; // wire
                        always_comb y_input_0_layer_1_00000[1] = a2[32]; // wire
                    mux2 mux_input_0_layer1_00000(.a(y_input_0_layer_1_00000), .s(s[0]), .y(y_input_0_layer_2_0000[0]));
                    logic [1:0] y_input_0_layer_1_00001;
                        always_comb y_input_0_layer_1_00001[0] = a2[64]; // wire
                        always_comb y_input_0_layer_1_00001[1] = a2[96]; // wire
                    mux2 mux_input_0_layer1_00001(.a(y_input_0_layer_1_00001), .s(s[0]), .y(y_input_0_layer_2_0000[1]));
                mux2 mux_input_0_layer2_0000 (.a(y_input_0_layer_2_0000), .s(s[1]), .y(y_input_0_layer_3_000[0]));
                logic [1:0] y_input_0_layer_2_0001;
                    logic [1:0] y_input_0_layer_1_00010;
                        always_comb y_input_0_layer_1_00010[0] = a2[128]; // wire
                        always_comb y_input_0_layer_1_00010[1] = a2[160]; // wire
                    mux2 mux_input_0_layer1_00010(.a(y_input_0_layer_1_00010), .s(s[0]), .y(y_input_0_layer_2_0001[0]));
                    logic [1:0] y_input_0_layer_1_00011;
                        always_comb y_input_0_layer_1_00011[0] = a2[192]; // wire
                        always_comb y_input_0_layer_1_00011[1] = a2[224]; // wire
                    mux2 mux_input_0_layer1_00011(.a(y_input_0_layer_1_00011), .s(s[0]), .y(y_input_0_layer_2_0001[1]));
                mux2 mux_input_0_layer2_0001 (.a(y_input_0_layer_2_0001), .s(s[1]), .y(y_input_0_layer_3_000[1]));
            mux2 mux_input_0_layer3_000  (.a(y_input_0_layer_3_000), .s(s[2]), .y(y_input_0_layer_4_00[0]));
            logic [1:0] y_input_0_layer_3_001;
                logic [1:0] y_input_0_layer_2_0010;
                    logic [1:0] y_input_0_layer_1_00100;
                        always_comb y_input_0_layer_1_00100[0] = a2[256]; // wire
                        always_comb y_input_0_layer_1_00100[1] = a2[288]; // wire
                    mux2 mux_input_0_layer1_00100(.a(y_input_0_layer_1_00100), .s(s[0]), .y(y_input_0_layer_2_0010[0]));
                    logic [1:0] y_input_0_layer_1_00101;
                        always_comb y_input_0_layer_1_00101[0] = a2[320]; // wire
                        always_comb y_input_0_layer_1_00101[1] = a2[352]; // wire
                    mux2 mux_input_0_layer1_00101(.a(y_input_0_layer_1_00101), .s(s[0]), .y(y_input_0_layer_2_0010[1]));
                mux2 mux_input_0_layer2_0010 (.a(y_input_0_layer_2_0010), .s(s[1]), .y(y_input_0_layer_3_001[0]));
                logic [1:0] y_input_0_layer_2_0011;
                    logic [1:0] y_input_0_layer_1_00110;
                        always_comb y_input_0_layer_1_00110[0] = a2[384]; // wire
                        always_comb y_input_0_layer_1_00110[1] = a2[416]; // wire
                    mux2 mux_input_0_layer1_00110(.a(y_input_0_layer_1_00110), .s(s[0]), .y(y_input_0_layer_2_0011[0]));
                    logic [1:0] y_input_0_layer_1_00111;
                        always_comb y_input_0_layer_1_00111[0] = a2[448]; // wire
                        always_comb y_input_0_layer_1_00111[1] = a2[480]; // wire
                    mux2 mux_input_0_layer1_00111(.a(y_input_0_layer_1_00111), .s(s[0]), .y(y_input_0_layer_2_0011[1]));
                mux2 mux_input_0_layer2_0011 (.a(y_input_0_layer_2_0011), .s(s[1]), .y(y_input_0_layer_3_001[1]));
            mux2 mux_input_0_layer3_001  (.a(y_input_0_layer_3_001), .s(s[2]), .y(y_input_0_layer_4_00[1]));
        mux2 mux_input_0_layer4_00   (.a(y_input_0_layer_4_00), .s(s[3]), .y(y_input_0_layer_5_0[0]));
        logic [1:0] y_input_0_layer_4_01;
            logic [1:0] y_input_0_layer_3_010;
                logic [1:0] y_input_0_layer_2_0100;
                    logic [1:0] y_input_0_layer_1_01000;
                        always_comb y_input_0_layer_1_01000[0] = a2[512]; // wire
                        always_comb y_input_0_layer_1_01000[1] = a2[544]; // wire
                    mux2 mux_input_0_layer1_01000(.a(y_input_0_layer_1_01000), .s(s[0]), .y(y_input_0_layer_2_0100[0]));
                    logic [1:0] y_input_0_layer_1_01001;
                        always_comb y_input_0_layer_1_01001[0] = a2[576]; // wire
                        always_comb y_input_0_layer_1_01001[1] = a2[608]; // wire
                    mux2 mux_input_0_layer1_01001(.a(y_input_0_layer_1_01001), .s(s[0]), .y(y_input_0_layer_2_0100[1]));
                mux2 mux_input_0_layer2_0100 (.a(y_input_0_layer_2_0100), .s(s[1]), .y(y_input_0_layer_3_010[0]));
                logic [1:0] y_input_0_layer_2_0101;
                    logic [1:0] y_input_0_layer_1_01010;
                        always_comb y_input_0_layer_1_01010[0] = a2[640]; // wire
                        always_comb y_input_0_layer_1_01010[1] = a2[672]; // wire
                    mux2 mux_input_0_layer1_01010(.a(y_input_0_layer_1_01010), .s(s[0]), .y(y_input_0_layer_2_0101[0]));
                    logic [1:0] y_input_0_layer_1_01011;
                        always_comb y_input_0_layer_1_01011[0] = a2[704]; // wire
                        always_comb y_input_0_layer_1_01011[1] = a2[736]; // wire
                    mux2 mux_input_0_layer1_01011(.a(y_input_0_layer_1_01011), .s(s[0]), .y(y_input_0_layer_2_0101[1]));
                mux2 mux_input_0_layer2_0101 (.a(y_input_0_layer_2_0101), .s(s[1]), .y(y_input_0_layer_3_010[1]));
            mux2 mux_input_0_layer3_010  (.a(y_input_0_layer_3_010), .s(s[2]), .y(y_input_0_layer_4_01[0]));
            logic [1:0] y_input_0_layer_3_011;
                logic [1:0] y_input_0_layer_2_0110;
                    logic [1:0] y_input_0_layer_1_01100;
                        always_comb y_input_0_layer_1_01100[0] = a2[768]; // wire
                        always_comb y_input_0_layer_1_01100[1] = a2[800]; // wire
                    mux2 mux_input_0_layer1_01100(.a(y_input_0_layer_1_01100), .s(s[0]), .y(y_input_0_layer_2_0110[0]));
                    logic [1:0] y_input_0_layer_1_01101;
                        always_comb y_input_0_layer_1_01101[0] = a2[832]; // wire
                        always_comb y_input_0_layer_1_01101[1] = a2[864]; // wire
                    mux2 mux_input_0_layer1_01101(.a(y_input_0_layer_1_01101), .s(s[0]), .y(y_input_0_layer_2_0110[1]));
                mux2 mux_input_0_layer2_0110 (.a(y_input_0_layer_2_0110), .s(s[1]), .y(y_input_0_layer_3_011[0]));
                logic [1:0] y_input_0_layer_2_0111;
                    logic [1:0] y_input_0_layer_1_01110;
                        always_comb y_input_0_layer_1_01110[0] = a2[896]; // wire
                        always_comb y_input_0_layer_1_01110[1] = a2[928]; // wire
                    mux2 mux_input_0_layer1_01110(.a(y_input_0_layer_1_01110), .s(s[0]), .y(y_input_0_layer_2_0111[0]));
                    logic [1:0] y_input_0_layer_1_01111;
                        always_comb y_input_0_layer_1_01111[0] = a2[960]; // wire
                        always_comb y_input_0_layer_1_01111[1] = a2[992]; // wire
                    mux2 mux_input_0_layer1_01111(.a(y_input_0_layer_1_01111), .s(s[0]), .y(y_input_0_layer_2_0111[1]));
                mux2 mux_input_0_layer2_0111 (.a(y_input_0_layer_2_0111), .s(s[1]), .y(y_input_0_layer_3_011[1]));
            mux2 mux_input_0_layer3_011  (.a(y_input_0_layer_3_011), .s(s[2]), .y(y_input_0_layer_4_01[1]));
        mux2 mux_input_0_layer4_01   (.a(y_input_0_layer_4_01), .s(s[3]), .y(y_input_0_layer_5_0[1]));
    mux2 mux_input_0_layer5_0    (.a(y_input_0_layer_5_0), .s(s[4]), .y(y[0]));
            
            ////////////////////////   INPUT WIRE 1   ////////////////////////
            
                logic [1:0] y_input_1_layer_5_0;
        logic [1:0] y_input_1_layer_4_00;
            logic [1:0] y_input_1_layer_3_000;
                logic [1:0] y_input_1_layer_2_0000;
                    logic [1:0] y_input_1_layer_1_00000;
                        always_comb y_input_1_layer_1_00000[0] = a2[1]; // wire
                        always_comb y_input_1_layer_1_00000[1] = a2[33]; // wire
                    mux2 mux_input_1_layer1_00000(.a(y_input_1_layer_1_00000), .s(s[0]), .y(y_input_1_layer_2_0000[0]));
                    logic [1:0] y_input_1_layer_1_00001;
                        always_comb y_input_1_layer_1_00001[0] = a2[65]; // wire
                        always_comb y_input_1_layer_1_00001[1] = a2[97]; // wire
                    mux2 mux_input_1_layer1_00001(.a(y_input_1_layer_1_00001), .s(s[0]), .y(y_input_1_layer_2_0000[1]));
                mux2 mux_input_1_layer2_0000 (.a(y_input_1_layer_2_0000), .s(s[1]), .y(y_input_1_layer_3_000[0]));
                logic [1:0] y_input_1_layer_2_0001;
                    logic [1:0] y_input_1_layer_1_00010;
                        always_comb y_input_1_layer_1_00010[0] = a2[129]; // wire
                        always_comb y_input_1_layer_1_00010[1] = a2[161]; // wire
                    mux2 mux_input_1_layer1_00010(.a(y_input_1_layer_1_00010), .s(s[0]), .y(y_input_1_layer_2_0001[0]));
                    logic [1:0] y_input_1_layer_1_00011;
                        always_comb y_input_1_layer_1_00011[0] = a2[193]; // wire
                        always_comb y_input_1_layer_1_00011[1] = a2[225]; // wire
                    mux2 mux_input_1_layer1_00011(.a(y_input_1_layer_1_00011), .s(s[0]), .y(y_input_1_layer_2_0001[1]));
                mux2 mux_input_1_layer2_0001 (.a(y_input_1_layer_2_0001), .s(s[1]), .y(y_input_1_layer_3_000[1]));
            mux2 mux_input_1_layer3_000  (.a(y_input_1_layer_3_000), .s(s[2]), .y(y_input_1_layer_4_00[0]));
            logic [1:0] y_input_1_layer_3_001;
                logic [1:0] y_input_1_layer_2_0010;
                    logic [1:0] y_input_1_layer_1_00100;
                        always_comb y_input_1_layer_1_00100[0] = a2[257]; // wire
                        always_comb y_input_1_layer_1_00100[1] = a2[289]; // wire
                    mux2 mux_input_1_layer1_00100(.a(y_input_1_layer_1_00100), .s(s[0]), .y(y_input_1_layer_2_0010[0]));
                    logic [1:0] y_input_1_layer_1_00101;
                        always_comb y_input_1_layer_1_00101[0] = a2[321]; // wire
                        always_comb y_input_1_layer_1_00101[1] = a2[353]; // wire
                    mux2 mux_input_1_layer1_00101(.a(y_input_1_layer_1_00101), .s(s[0]), .y(y_input_1_layer_2_0010[1]));
                mux2 mux_input_1_layer2_0010 (.a(y_input_1_layer_2_0010), .s(s[1]), .y(y_input_1_layer_3_001[0]));
                logic [1:0] y_input_1_layer_2_0011;
                    logic [1:0] y_input_1_layer_1_00110;
                        always_comb y_input_1_layer_1_00110[0] = a2[385]; // wire
                        always_comb y_input_1_layer_1_00110[1] = a2[417]; // wire
                    mux2 mux_input_1_layer1_00110(.a(y_input_1_layer_1_00110), .s(s[0]), .y(y_input_1_layer_2_0011[0]));
                    logic [1:0] y_input_1_layer_1_00111;
                        always_comb y_input_1_layer_1_00111[0] = a2[449]; // wire
                        always_comb y_input_1_layer_1_00111[1] = a2[481]; // wire
                    mux2 mux_input_1_layer1_00111(.a(y_input_1_layer_1_00111), .s(s[0]), .y(y_input_1_layer_2_0011[1]));
                mux2 mux_input_1_layer2_0011 (.a(y_input_1_layer_2_0011), .s(s[1]), .y(y_input_1_layer_3_001[1]));
            mux2 mux_input_1_layer3_001  (.a(y_input_1_layer_3_001), .s(s[2]), .y(y_input_1_layer_4_00[1]));
        mux2 mux_input_1_layer4_00   (.a(y_input_1_layer_4_00), .s(s[3]), .y(y_input_1_layer_5_0[0]));
        logic [1:0] y_input_1_layer_4_01;
            logic [1:0] y_input_1_layer_3_010;
                logic [1:0] y_input_1_layer_2_0100;
                    logic [1:0] y_input_1_layer_1_01000;
                        always_comb y_input_1_layer_1_01000[0] = a2[513]; // wire
                        always_comb y_input_1_layer_1_01000[1] = a2[545]; // wire
                    mux2 mux_input_1_layer1_01000(.a(y_input_1_layer_1_01000), .s(s[0]), .y(y_input_1_layer_2_0100[0]));
                    logic [1:0] y_input_1_layer_1_01001;
                        always_comb y_input_1_layer_1_01001[0] = a2[577]; // wire
                        always_comb y_input_1_layer_1_01001[1] = a2[609]; // wire
                    mux2 mux_input_1_layer1_01001(.a(y_input_1_layer_1_01001), .s(s[0]), .y(y_input_1_layer_2_0100[1]));
                mux2 mux_input_1_layer2_0100 (.a(y_input_1_layer_2_0100), .s(s[1]), .y(y_input_1_layer_3_010[0]));
                logic [1:0] y_input_1_layer_2_0101;
                    logic [1:0] y_input_1_layer_1_01010;
                        always_comb y_input_1_layer_1_01010[0] = a2[641]; // wire
                        always_comb y_input_1_layer_1_01010[1] = a2[673]; // wire
                    mux2 mux_input_1_layer1_01010(.a(y_input_1_layer_1_01010), .s(s[0]), .y(y_input_1_layer_2_0101[0]));
                    logic [1:0] y_input_1_layer_1_01011;
                        always_comb y_input_1_layer_1_01011[0] = a2[705]; // wire
                        always_comb y_input_1_layer_1_01011[1] = a2[737]; // wire
                    mux2 mux_input_1_layer1_01011(.a(y_input_1_layer_1_01011), .s(s[0]), .y(y_input_1_layer_2_0101[1]));
                mux2 mux_input_1_layer2_0101 (.a(y_input_1_layer_2_0101), .s(s[1]), .y(y_input_1_layer_3_010[1]));
            mux2 mux_input_1_layer3_010  (.a(y_input_1_layer_3_010), .s(s[2]), .y(y_input_1_layer_4_01[0]));
            logic [1:0] y_input_1_layer_3_011;
                logic [1:0] y_input_1_layer_2_0110;
                    logic [1:0] y_input_1_layer_1_01100;
                        always_comb y_input_1_layer_1_01100[0] = a2[769]; // wire
                        always_comb y_input_1_layer_1_01100[1] = a2[801]; // wire
                    mux2 mux_input_1_layer1_01100(.a(y_input_1_layer_1_01100), .s(s[0]), .y(y_input_1_layer_2_0110[0]));
                    logic [1:0] y_input_1_layer_1_01101;
                        always_comb y_input_1_layer_1_01101[0] = a2[833]; // wire
                        always_comb y_input_1_layer_1_01101[1] = a2[865]; // wire
                    mux2 mux_input_1_layer1_01101(.a(y_input_1_layer_1_01101), .s(s[0]), .y(y_input_1_layer_2_0110[1]));
                mux2 mux_input_1_layer2_0110 (.a(y_input_1_layer_2_0110), .s(s[1]), .y(y_input_1_layer_3_011[0]));
                logic [1:0] y_input_1_layer_2_0111;
                    logic [1:0] y_input_1_layer_1_01110;
                        always_comb y_input_1_layer_1_01110[0] = a2[897]; // wire
                        always_comb y_input_1_layer_1_01110[1] = a2[929]; // wire
                    mux2 mux_input_1_layer1_01110(.a(y_input_1_layer_1_01110), .s(s[0]), .y(y_input_1_layer_2_0111[0]));
                    logic [1:0] y_input_1_layer_1_01111;
                        always_comb y_input_1_layer_1_01111[0] = a2[961]; // wire
                        always_comb y_input_1_layer_1_01111[1] = a2[993]; // wire
                    mux2 mux_input_1_layer1_01111(.a(y_input_1_layer_1_01111), .s(s[0]), .y(y_input_1_layer_2_0111[1]));
                mux2 mux_input_1_layer2_0111 (.a(y_input_1_layer_2_0111), .s(s[1]), .y(y_input_1_layer_3_011[1]));
            mux2 mux_input_1_layer3_011  (.a(y_input_1_layer_3_011), .s(s[2]), .y(y_input_1_layer_4_01[1]));
        mux2 mux_input_1_layer4_01   (.a(y_input_1_layer_4_01), .s(s[3]), .y(y_input_1_layer_5_0[1]));
    mux2 mux_input_1_layer5_0    (.a(y_input_1_layer_5_0), .s(s[4]), .y(y[1]));
            
            ////////////////////////   INPUT WIRE 2   ////////////////////////
            
                logic [1:0] y_input_2_layer_5_0;
        logic [1:0] y_input_2_layer_4_00;
            logic [1:0] y_input_2_layer_3_000;
                logic [1:0] y_input_2_layer_2_0000;
                    logic [1:0] y_input_2_layer_1_00000;
                        always_comb y_input_2_layer_1_00000[0] = a2[2]; // wire
                        always_comb y_input_2_layer_1_00000[1] = a2[34]; // wire
                    mux2 mux_input_2_layer1_00000(.a(y_input_2_layer_1_00000), .s(s[0]), .y(y_input_2_layer_2_0000[0]));
                    logic [1:0] y_input_2_layer_1_00001;
                        always_comb y_input_2_layer_1_00001[0] = a2[66]; // wire
                        always_comb y_input_2_layer_1_00001[1] = a2[98]; // wire
                    mux2 mux_input_2_layer1_00001(.a(y_input_2_layer_1_00001), .s(s[0]), .y(y_input_2_layer_2_0000[1]));
                mux2 mux_input_2_layer2_0000 (.a(y_input_2_layer_2_0000), .s(s[1]), .y(y_input_2_layer_3_000[0]));
                logic [1:0] y_input_2_layer_2_0001;
                    logic [1:0] y_input_2_layer_1_00010;
                        always_comb y_input_2_layer_1_00010[0] = a2[130]; // wire
                        always_comb y_input_2_layer_1_00010[1] = a2[162]; // wire
                    mux2 mux_input_2_layer1_00010(.a(y_input_2_layer_1_00010), .s(s[0]), .y(y_input_2_layer_2_0001[0]));
                    logic [1:0] y_input_2_layer_1_00011;
                        always_comb y_input_2_layer_1_00011[0] = a2[194]; // wire
                        always_comb y_input_2_layer_1_00011[1] = a2[226]; // wire
                    mux2 mux_input_2_layer1_00011(.a(y_input_2_layer_1_00011), .s(s[0]), .y(y_input_2_layer_2_0001[1]));
                mux2 mux_input_2_layer2_0001 (.a(y_input_2_layer_2_0001), .s(s[1]), .y(y_input_2_layer_3_000[1]));
            mux2 mux_input_2_layer3_000  (.a(y_input_2_layer_3_000), .s(s[2]), .y(y_input_2_layer_4_00[0]));
            logic [1:0] y_input_2_layer_3_001;
                logic [1:0] y_input_2_layer_2_0010;
                    logic [1:0] y_input_2_layer_1_00100;
                        always_comb y_input_2_layer_1_00100[0] = a2[258]; // wire
                        always_comb y_input_2_layer_1_00100[1] = a2[290]; // wire
                    mux2 mux_input_2_layer1_00100(.a(y_input_2_layer_1_00100), .s(s[0]), .y(y_input_2_layer_2_0010[0]));
                    logic [1:0] y_input_2_layer_1_00101;
                        always_comb y_input_2_layer_1_00101[0] = a2[322]; // wire
                        always_comb y_input_2_layer_1_00101[1] = a2[354]; // wire
                    mux2 mux_input_2_layer1_00101(.a(y_input_2_layer_1_00101), .s(s[0]), .y(y_input_2_layer_2_0010[1]));
                mux2 mux_input_2_layer2_0010 (.a(y_input_2_layer_2_0010), .s(s[1]), .y(y_input_2_layer_3_001[0]));
                logic [1:0] y_input_2_layer_2_0011;
                    logic [1:0] y_input_2_layer_1_00110;
                        always_comb y_input_2_layer_1_00110[0] = a2[386]; // wire
                        always_comb y_input_2_layer_1_00110[1] = a2[418]; // wire
                    mux2 mux_input_2_layer1_00110(.a(y_input_2_layer_1_00110), .s(s[0]), .y(y_input_2_layer_2_0011[0]));
                    logic [1:0] y_input_2_layer_1_00111;
                        always_comb y_input_2_layer_1_00111[0] = a2[450]; // wire
                        always_comb y_input_2_layer_1_00111[1] = a2[482]; // wire
                    mux2 mux_input_2_layer1_00111(.a(y_input_2_layer_1_00111), .s(s[0]), .y(y_input_2_layer_2_0011[1]));
                mux2 mux_input_2_layer2_0011 (.a(y_input_2_layer_2_0011), .s(s[1]), .y(y_input_2_layer_3_001[1]));
            mux2 mux_input_2_layer3_001  (.a(y_input_2_layer_3_001), .s(s[2]), .y(y_input_2_layer_4_00[1]));
        mux2 mux_input_2_layer4_00   (.a(y_input_2_layer_4_00), .s(s[3]), .y(y_input_2_layer_5_0[0]));
        logic [1:0] y_input_2_layer_4_01;
            logic [1:0] y_input_2_layer_3_010;
                logic [1:0] y_input_2_layer_2_0100;
                    logic [1:0] y_input_2_layer_1_01000;
                        always_comb y_input_2_layer_1_01000[0] = a2[514]; // wire
                        always_comb y_input_2_layer_1_01000[1] = a2[546]; // wire
                    mux2 mux_input_2_layer1_01000(.a(y_input_2_layer_1_01000), .s(s[0]), .y(y_input_2_layer_2_0100[0]));
                    logic [1:0] y_input_2_layer_1_01001;
                        always_comb y_input_2_layer_1_01001[0] = a2[578]; // wire
                        always_comb y_input_2_layer_1_01001[1] = a2[610]; // wire
                    mux2 mux_input_2_layer1_01001(.a(y_input_2_layer_1_01001), .s(s[0]), .y(y_input_2_layer_2_0100[1]));
                mux2 mux_input_2_layer2_0100 (.a(y_input_2_layer_2_0100), .s(s[1]), .y(y_input_2_layer_3_010[0]));
                logic [1:0] y_input_2_layer_2_0101;
                    logic [1:0] y_input_2_layer_1_01010;
                        always_comb y_input_2_layer_1_01010[0] = a2[642]; // wire
                        always_comb y_input_2_layer_1_01010[1] = a2[674]; // wire
                    mux2 mux_input_2_layer1_01010(.a(y_input_2_layer_1_01010), .s(s[0]), .y(y_input_2_layer_2_0101[0]));
                    logic [1:0] y_input_2_layer_1_01011;
                        always_comb y_input_2_layer_1_01011[0] = a2[706]; // wire
                        always_comb y_input_2_layer_1_01011[1] = a2[738]; // wire
                    mux2 mux_input_2_layer1_01011(.a(y_input_2_layer_1_01011), .s(s[0]), .y(y_input_2_layer_2_0101[1]));
                mux2 mux_input_2_layer2_0101 (.a(y_input_2_layer_2_0101), .s(s[1]), .y(y_input_2_layer_3_010[1]));
            mux2 mux_input_2_layer3_010  (.a(y_input_2_layer_3_010), .s(s[2]), .y(y_input_2_layer_4_01[0]));
            logic [1:0] y_input_2_layer_3_011;
                logic [1:0] y_input_2_layer_2_0110;
                    logic [1:0] y_input_2_layer_1_01100;
                        always_comb y_input_2_layer_1_01100[0] = a2[770]; // wire
                        always_comb y_input_2_layer_1_01100[1] = a2[802]; // wire
                    mux2 mux_input_2_layer1_01100(.a(y_input_2_layer_1_01100), .s(s[0]), .y(y_input_2_layer_2_0110[0]));
                    logic [1:0] y_input_2_layer_1_01101;
                        always_comb y_input_2_layer_1_01101[0] = a2[834]; // wire
                        always_comb y_input_2_layer_1_01101[1] = a2[866]; // wire
                    mux2 mux_input_2_layer1_01101(.a(y_input_2_layer_1_01101), .s(s[0]), .y(y_input_2_layer_2_0110[1]));
                mux2 mux_input_2_layer2_0110 (.a(y_input_2_layer_2_0110), .s(s[1]), .y(y_input_2_layer_3_011[0]));
                logic [1:0] y_input_2_layer_2_0111;
                    logic [1:0] y_input_2_layer_1_01110;
                        always_comb y_input_2_layer_1_01110[0] = a2[898]; // wire
                        always_comb y_input_2_layer_1_01110[1] = a2[930]; // wire
                    mux2 mux_input_2_layer1_01110(.a(y_input_2_layer_1_01110), .s(s[0]), .y(y_input_2_layer_2_0111[0]));
                    logic [1:0] y_input_2_layer_1_01111;
                        always_comb y_input_2_layer_1_01111[0] = a2[962]; // wire
                        always_comb y_input_2_layer_1_01111[1] = a2[994]; // wire
                    mux2 mux_input_2_layer1_01111(.a(y_input_2_layer_1_01111), .s(s[0]), .y(y_input_2_layer_2_0111[1]));
                mux2 mux_input_2_layer2_0111 (.a(y_input_2_layer_2_0111), .s(s[1]), .y(y_input_2_layer_3_011[1]));
            mux2 mux_input_2_layer3_011  (.a(y_input_2_layer_3_011), .s(s[2]), .y(y_input_2_layer_4_01[1]));
        mux2 mux_input_2_layer4_01   (.a(y_input_2_layer_4_01), .s(s[3]), .y(y_input_2_layer_5_0[1]));
    mux2 mux_input_2_layer5_0    (.a(y_input_2_layer_5_0), .s(s[4]), .y(y[2]));
            
            ////////////////////////   INPUT WIRE 3   ////////////////////////
            
                logic [1:0] y_input_3_layer_5_0;
        logic [1:0] y_input_3_layer_4_00;
            logic [1:0] y_input_3_layer_3_000;
                logic [1:0] y_input_3_layer_2_0000;
                    logic [1:0] y_input_3_layer_1_00000;
                        always_comb y_input_3_layer_1_00000[0] = a2[3]; // wire
                        always_comb y_input_3_layer_1_00000[1] = a2[35]; // wire
                    mux2 mux_input_3_layer1_00000(.a(y_input_3_layer_1_00000), .s(s[0]), .y(y_input_3_layer_2_0000[0]));
                    logic [1:0] y_input_3_layer_1_00001;
                        always_comb y_input_3_layer_1_00001[0] = a2[67]; // wire
                        always_comb y_input_3_layer_1_00001[1] = a2[99]; // wire
                    mux2 mux_input_3_layer1_00001(.a(y_input_3_layer_1_00001), .s(s[0]), .y(y_input_3_layer_2_0000[1]));
                mux2 mux_input_3_layer2_0000 (.a(y_input_3_layer_2_0000), .s(s[1]), .y(y_input_3_layer_3_000[0]));
                logic [1:0] y_input_3_layer_2_0001;
                    logic [1:0] y_input_3_layer_1_00010;
                        always_comb y_input_3_layer_1_00010[0] = a2[131]; // wire
                        always_comb y_input_3_layer_1_00010[1] = a2[163]; // wire
                    mux2 mux_input_3_layer1_00010(.a(y_input_3_layer_1_00010), .s(s[0]), .y(y_input_3_layer_2_0001[0]));
                    logic [1:0] y_input_3_layer_1_00011;
                        always_comb y_input_3_layer_1_00011[0] = a2[195]; // wire
                        always_comb y_input_3_layer_1_00011[1] = a2[227]; // wire
                    mux2 mux_input_3_layer1_00011(.a(y_input_3_layer_1_00011), .s(s[0]), .y(y_input_3_layer_2_0001[1]));
                mux2 mux_input_3_layer2_0001 (.a(y_input_3_layer_2_0001), .s(s[1]), .y(y_input_3_layer_3_000[1]));
            mux2 mux_input_3_layer3_000  (.a(y_input_3_layer_3_000), .s(s[2]), .y(y_input_3_layer_4_00[0]));
            logic [1:0] y_input_3_layer_3_001;
                logic [1:0] y_input_3_layer_2_0010;
                    logic [1:0] y_input_3_layer_1_00100;
                        always_comb y_input_3_layer_1_00100[0] = a2[259]; // wire
                        always_comb y_input_3_layer_1_00100[1] = a2[291]; // wire
                    mux2 mux_input_3_layer1_00100(.a(y_input_3_layer_1_00100), .s(s[0]), .y(y_input_3_layer_2_0010[0]));
                    logic [1:0] y_input_3_layer_1_00101;
                        always_comb y_input_3_layer_1_00101[0] = a2[323]; // wire
                        always_comb y_input_3_layer_1_00101[1] = a2[355]; // wire
                    mux2 mux_input_3_layer1_00101(.a(y_input_3_layer_1_00101), .s(s[0]), .y(y_input_3_layer_2_0010[1]));
                mux2 mux_input_3_layer2_0010 (.a(y_input_3_layer_2_0010), .s(s[1]), .y(y_input_3_layer_3_001[0]));
                logic [1:0] y_input_3_layer_2_0011;
                    logic [1:0] y_input_3_layer_1_00110;
                        always_comb y_input_3_layer_1_00110[0] = a2[387]; // wire
                        always_comb y_input_3_layer_1_00110[1] = a2[419]; // wire
                    mux2 mux_input_3_layer1_00110(.a(y_input_3_layer_1_00110), .s(s[0]), .y(y_input_3_layer_2_0011[0]));
                    logic [1:0] y_input_3_layer_1_00111;
                        always_comb y_input_3_layer_1_00111[0] = a2[451]; // wire
                        always_comb y_input_3_layer_1_00111[1] = a2[483]; // wire
                    mux2 mux_input_3_layer1_00111(.a(y_input_3_layer_1_00111), .s(s[0]), .y(y_input_3_layer_2_0011[1]));
                mux2 mux_input_3_layer2_0011 (.a(y_input_3_layer_2_0011), .s(s[1]), .y(y_input_3_layer_3_001[1]));
            mux2 mux_input_3_layer3_001  (.a(y_input_3_layer_3_001), .s(s[2]), .y(y_input_3_layer_4_00[1]));
        mux2 mux_input_3_layer4_00   (.a(y_input_3_layer_4_00), .s(s[3]), .y(y_input_3_layer_5_0[0]));
        logic [1:0] y_input_3_layer_4_01;
            logic [1:0] y_input_3_layer_3_010;
                logic [1:0] y_input_3_layer_2_0100;
                    logic [1:0] y_input_3_layer_1_01000;
                        always_comb y_input_3_layer_1_01000[0] = a2[515]; // wire
                        always_comb y_input_3_layer_1_01000[1] = a2[547]; // wire
                    mux2 mux_input_3_layer1_01000(.a(y_input_3_layer_1_01000), .s(s[0]), .y(y_input_3_layer_2_0100[0]));
                    logic [1:0] y_input_3_layer_1_01001;
                        always_comb y_input_3_layer_1_01001[0] = a2[579]; // wire
                        always_comb y_input_3_layer_1_01001[1] = a2[611]; // wire
                    mux2 mux_input_3_layer1_01001(.a(y_input_3_layer_1_01001), .s(s[0]), .y(y_input_3_layer_2_0100[1]));
                mux2 mux_input_3_layer2_0100 (.a(y_input_3_layer_2_0100), .s(s[1]), .y(y_input_3_layer_3_010[0]));
                logic [1:0] y_input_3_layer_2_0101;
                    logic [1:0] y_input_3_layer_1_01010;
                        always_comb y_input_3_layer_1_01010[0] = a2[643]; // wire
                        always_comb y_input_3_layer_1_01010[1] = a2[675]; // wire
                    mux2 mux_input_3_layer1_01010(.a(y_input_3_layer_1_01010), .s(s[0]), .y(y_input_3_layer_2_0101[0]));
                    logic [1:0] y_input_3_layer_1_01011;
                        always_comb y_input_3_layer_1_01011[0] = a2[707]; // wire
                        always_comb y_input_3_layer_1_01011[1] = a2[739]; // wire
                    mux2 mux_input_3_layer1_01011(.a(y_input_3_layer_1_01011), .s(s[0]), .y(y_input_3_layer_2_0101[1]));
                mux2 mux_input_3_layer2_0101 (.a(y_input_3_layer_2_0101), .s(s[1]), .y(y_input_3_layer_3_010[1]));
            mux2 mux_input_3_layer3_010  (.a(y_input_3_layer_3_010), .s(s[2]), .y(y_input_3_layer_4_01[0]));
            logic [1:0] y_input_3_layer_3_011;
                logic [1:0] y_input_3_layer_2_0110;
                    logic [1:0] y_input_3_layer_1_01100;
                        always_comb y_input_3_layer_1_01100[0] = a2[771]; // wire
                        always_comb y_input_3_layer_1_01100[1] = a2[803]; // wire
                    mux2 mux_input_3_layer1_01100(.a(y_input_3_layer_1_01100), .s(s[0]), .y(y_input_3_layer_2_0110[0]));
                    logic [1:0] y_input_3_layer_1_01101;
                        always_comb y_input_3_layer_1_01101[0] = a2[835]; // wire
                        always_comb y_input_3_layer_1_01101[1] = a2[867]; // wire
                    mux2 mux_input_3_layer1_01101(.a(y_input_3_layer_1_01101), .s(s[0]), .y(y_input_3_layer_2_0110[1]));
                mux2 mux_input_3_layer2_0110 (.a(y_input_3_layer_2_0110), .s(s[1]), .y(y_input_3_layer_3_011[0]));
                logic [1:0] y_input_3_layer_2_0111;
                    logic [1:0] y_input_3_layer_1_01110;
                        always_comb y_input_3_layer_1_01110[0] = a2[899]; // wire
                        always_comb y_input_3_layer_1_01110[1] = a2[931]; // wire
                    mux2 mux_input_3_layer1_01110(.a(y_input_3_layer_1_01110), .s(s[0]), .y(y_input_3_layer_2_0111[0]));
                    logic [1:0] y_input_3_layer_1_01111;
                        always_comb y_input_3_layer_1_01111[0] = a2[963]; // wire
                        always_comb y_input_3_layer_1_01111[1] = a2[995]; // wire
                    mux2 mux_input_3_layer1_01111(.a(y_input_3_layer_1_01111), .s(s[0]), .y(y_input_3_layer_2_0111[1]));
                mux2 mux_input_3_layer2_0111 (.a(y_input_3_layer_2_0111), .s(s[1]), .y(y_input_3_layer_3_011[1]));
            mux2 mux_input_3_layer3_011  (.a(y_input_3_layer_3_011), .s(s[2]), .y(y_input_3_layer_4_01[1]));
        mux2 mux_input_3_layer4_01   (.a(y_input_3_layer_4_01), .s(s[3]), .y(y_input_3_layer_5_0[1]));
    mux2 mux_input_3_layer5_0    (.a(y_input_3_layer_5_0), .s(s[4]), .y(y[3]));
            
            ////////////////////////   INPUT WIRE 4   ////////////////////////
            
                logic [1:0] y_input_4_layer_5_0;
        logic [1:0] y_input_4_layer_4_00;
            logic [1:0] y_input_4_layer_3_000;
                logic [1:0] y_input_4_layer_2_0000;
                    logic [1:0] y_input_4_layer_1_00000;
                        always_comb y_input_4_layer_1_00000[0] = a2[4]; // wire
                        always_comb y_input_4_layer_1_00000[1] = a2[36]; // wire
                    mux2 mux_input_4_layer1_00000(.a(y_input_4_layer_1_00000), .s(s[0]), .y(y_input_4_layer_2_0000[0]));
                    logic [1:0] y_input_4_layer_1_00001;
                        always_comb y_input_4_layer_1_00001[0] = a2[68]; // wire
                        always_comb y_input_4_layer_1_00001[1] = a2[100]; // wire
                    mux2 mux_input_4_layer1_00001(.a(y_input_4_layer_1_00001), .s(s[0]), .y(y_input_4_layer_2_0000[1]));
                mux2 mux_input_4_layer2_0000 (.a(y_input_4_layer_2_0000), .s(s[1]), .y(y_input_4_layer_3_000[0]));
                logic [1:0] y_input_4_layer_2_0001;
                    logic [1:0] y_input_4_layer_1_00010;
                        always_comb y_input_4_layer_1_00010[0] = a2[132]; // wire
                        always_comb y_input_4_layer_1_00010[1] = a2[164]; // wire
                    mux2 mux_input_4_layer1_00010(.a(y_input_4_layer_1_00010), .s(s[0]), .y(y_input_4_layer_2_0001[0]));
                    logic [1:0] y_input_4_layer_1_00011;
                        always_comb y_input_4_layer_1_00011[0] = a2[196]; // wire
                        always_comb y_input_4_layer_1_00011[1] = a2[228]; // wire
                    mux2 mux_input_4_layer1_00011(.a(y_input_4_layer_1_00011), .s(s[0]), .y(y_input_4_layer_2_0001[1]));
                mux2 mux_input_4_layer2_0001 (.a(y_input_4_layer_2_0001), .s(s[1]), .y(y_input_4_layer_3_000[1]));
            mux2 mux_input_4_layer3_000  (.a(y_input_4_layer_3_000), .s(s[2]), .y(y_input_4_layer_4_00[0]));
            logic [1:0] y_input_4_layer_3_001;
                logic [1:0] y_input_4_layer_2_0010;
                    logic [1:0] y_input_4_layer_1_00100;
                        always_comb y_input_4_layer_1_00100[0] = a2[260]; // wire
                        always_comb y_input_4_layer_1_00100[1] = a2[292]; // wire
                    mux2 mux_input_4_layer1_00100(.a(y_input_4_layer_1_00100), .s(s[0]), .y(y_input_4_layer_2_0010[0]));
                    logic [1:0] y_input_4_layer_1_00101;
                        always_comb y_input_4_layer_1_00101[0] = a2[324]; // wire
                        always_comb y_input_4_layer_1_00101[1] = a2[356]; // wire
                    mux2 mux_input_4_layer1_00101(.a(y_input_4_layer_1_00101), .s(s[0]), .y(y_input_4_layer_2_0010[1]));
                mux2 mux_input_4_layer2_0010 (.a(y_input_4_layer_2_0010), .s(s[1]), .y(y_input_4_layer_3_001[0]));
                logic [1:0] y_input_4_layer_2_0011;
                    logic [1:0] y_input_4_layer_1_00110;
                        always_comb y_input_4_layer_1_00110[0] = a2[388]; // wire
                        always_comb y_input_4_layer_1_00110[1] = a2[420]; // wire
                    mux2 mux_input_4_layer1_00110(.a(y_input_4_layer_1_00110), .s(s[0]), .y(y_input_4_layer_2_0011[0]));
                    logic [1:0] y_input_4_layer_1_00111;
                        always_comb y_input_4_layer_1_00111[0] = a2[452]; // wire
                        always_comb y_input_4_layer_1_00111[1] = a2[484]; // wire
                    mux2 mux_input_4_layer1_00111(.a(y_input_4_layer_1_00111), .s(s[0]), .y(y_input_4_layer_2_0011[1]));
                mux2 mux_input_4_layer2_0011 (.a(y_input_4_layer_2_0011), .s(s[1]), .y(y_input_4_layer_3_001[1]));
            mux2 mux_input_4_layer3_001  (.a(y_input_4_layer_3_001), .s(s[2]), .y(y_input_4_layer_4_00[1]));
        mux2 mux_input_4_layer4_00   (.a(y_input_4_layer_4_00), .s(s[3]), .y(y_input_4_layer_5_0[0]));
        logic [1:0] y_input_4_layer_4_01;
            logic [1:0] y_input_4_layer_3_010;
                logic [1:0] y_input_4_layer_2_0100;
                    logic [1:0] y_input_4_layer_1_01000;
                        always_comb y_input_4_layer_1_01000[0] = a2[516]; // wire
                        always_comb y_input_4_layer_1_01000[1] = a2[548]; // wire
                    mux2 mux_input_4_layer1_01000(.a(y_input_4_layer_1_01000), .s(s[0]), .y(y_input_4_layer_2_0100[0]));
                    logic [1:0] y_input_4_layer_1_01001;
                        always_comb y_input_4_layer_1_01001[0] = a2[580]; // wire
                        always_comb y_input_4_layer_1_01001[1] = a2[612]; // wire
                    mux2 mux_input_4_layer1_01001(.a(y_input_4_layer_1_01001), .s(s[0]), .y(y_input_4_layer_2_0100[1]));
                mux2 mux_input_4_layer2_0100 (.a(y_input_4_layer_2_0100), .s(s[1]), .y(y_input_4_layer_3_010[0]));
                logic [1:0] y_input_4_layer_2_0101;
                    logic [1:0] y_input_4_layer_1_01010;
                        always_comb y_input_4_layer_1_01010[0] = a2[644]; // wire
                        always_comb y_input_4_layer_1_01010[1] = a2[676]; // wire
                    mux2 mux_input_4_layer1_01010(.a(y_input_4_layer_1_01010), .s(s[0]), .y(y_input_4_layer_2_0101[0]));
                    logic [1:0] y_input_4_layer_1_01011;
                        always_comb y_input_4_layer_1_01011[0] = a2[708]; // wire
                        always_comb y_input_4_layer_1_01011[1] = a2[740]; // wire
                    mux2 mux_input_4_layer1_01011(.a(y_input_4_layer_1_01011), .s(s[0]), .y(y_input_4_layer_2_0101[1]));
                mux2 mux_input_4_layer2_0101 (.a(y_input_4_layer_2_0101), .s(s[1]), .y(y_input_4_layer_3_010[1]));
            mux2 mux_input_4_layer3_010  (.a(y_input_4_layer_3_010), .s(s[2]), .y(y_input_4_layer_4_01[0]));
            logic [1:0] y_input_4_layer_3_011;
                logic [1:0] y_input_4_layer_2_0110;
                    logic [1:0] y_input_4_layer_1_01100;
                        always_comb y_input_4_layer_1_01100[0] = a2[772]; // wire
                        always_comb y_input_4_layer_1_01100[1] = a2[804]; // wire
                    mux2 mux_input_4_layer1_01100(.a(y_input_4_layer_1_01100), .s(s[0]), .y(y_input_4_layer_2_0110[0]));
                    logic [1:0] y_input_4_layer_1_01101;
                        always_comb y_input_4_layer_1_01101[0] = a2[836]; // wire
                        always_comb y_input_4_layer_1_01101[1] = a2[868]; // wire
                    mux2 mux_input_4_layer1_01101(.a(y_input_4_layer_1_01101), .s(s[0]), .y(y_input_4_layer_2_0110[1]));
                mux2 mux_input_4_layer2_0110 (.a(y_input_4_layer_2_0110), .s(s[1]), .y(y_input_4_layer_3_011[0]));
                logic [1:0] y_input_4_layer_2_0111;
                    logic [1:0] y_input_4_layer_1_01110;
                        always_comb y_input_4_layer_1_01110[0] = a2[900]; // wire
                        always_comb y_input_4_layer_1_01110[1] = a2[932]; // wire
                    mux2 mux_input_4_layer1_01110(.a(y_input_4_layer_1_01110), .s(s[0]), .y(y_input_4_layer_2_0111[0]));
                    logic [1:0] y_input_4_layer_1_01111;
                        always_comb y_input_4_layer_1_01111[0] = a2[964]; // wire
                        always_comb y_input_4_layer_1_01111[1] = a2[996]; // wire
                    mux2 mux_input_4_layer1_01111(.a(y_input_4_layer_1_01111), .s(s[0]), .y(y_input_4_layer_2_0111[1]));
                mux2 mux_input_4_layer2_0111 (.a(y_input_4_layer_2_0111), .s(s[1]), .y(y_input_4_layer_3_011[1]));
            mux2 mux_input_4_layer3_011  (.a(y_input_4_layer_3_011), .s(s[2]), .y(y_input_4_layer_4_01[1]));
        mux2 mux_input_4_layer4_01   (.a(y_input_4_layer_4_01), .s(s[3]), .y(y_input_4_layer_5_0[1]));
    mux2 mux_input_4_layer5_0    (.a(y_input_4_layer_5_0), .s(s[4]), .y(y[4]));
            
            ////////////////////////   INPUT WIRE 5   ////////////////////////
            
                logic [1:0] y_input_5_layer_5_0;
        logic [1:0] y_input_5_layer_4_00;
            logic [1:0] y_input_5_layer_3_000;
                logic [1:0] y_input_5_layer_2_0000;
                    logic [1:0] y_input_5_layer_1_00000;
                        always_comb y_input_5_layer_1_00000[0] = a2[5]; // wire
                        always_comb y_input_5_layer_1_00000[1] = a2[37]; // wire
                    mux2 mux_input_5_layer1_00000(.a(y_input_5_layer_1_00000), .s(s[0]), .y(y_input_5_layer_2_0000[0]));
                    logic [1:0] y_input_5_layer_1_00001;
                        always_comb y_input_5_layer_1_00001[0] = a2[69]; // wire
                        always_comb y_input_5_layer_1_00001[1] = a2[101]; // wire
                    mux2 mux_input_5_layer1_00001(.a(y_input_5_layer_1_00001), .s(s[0]), .y(y_input_5_layer_2_0000[1]));
                mux2 mux_input_5_layer2_0000 (.a(y_input_5_layer_2_0000), .s(s[1]), .y(y_input_5_layer_3_000[0]));
                logic [1:0] y_input_5_layer_2_0001;
                    logic [1:0] y_input_5_layer_1_00010;
                        always_comb y_input_5_layer_1_00010[0] = a2[133]; // wire
                        always_comb y_input_5_layer_1_00010[1] = a2[165]; // wire
                    mux2 mux_input_5_layer1_00010(.a(y_input_5_layer_1_00010), .s(s[0]), .y(y_input_5_layer_2_0001[0]));
                    logic [1:0] y_input_5_layer_1_00011;
                        always_comb y_input_5_layer_1_00011[0] = a2[197]; // wire
                        always_comb y_input_5_layer_1_00011[1] = a2[229]; // wire
                    mux2 mux_input_5_layer1_00011(.a(y_input_5_layer_1_00011), .s(s[0]), .y(y_input_5_layer_2_0001[1]));
                mux2 mux_input_5_layer2_0001 (.a(y_input_5_layer_2_0001), .s(s[1]), .y(y_input_5_layer_3_000[1]));
            mux2 mux_input_5_layer3_000  (.a(y_input_5_layer_3_000), .s(s[2]), .y(y_input_5_layer_4_00[0]));
            logic [1:0] y_input_5_layer_3_001;
                logic [1:0] y_input_5_layer_2_0010;
                    logic [1:0] y_input_5_layer_1_00100;
                        always_comb y_input_5_layer_1_00100[0] = a2[261]; // wire
                        always_comb y_input_5_layer_1_00100[1] = a2[293]; // wire
                    mux2 mux_input_5_layer1_00100(.a(y_input_5_layer_1_00100), .s(s[0]), .y(y_input_5_layer_2_0010[0]));
                    logic [1:0] y_input_5_layer_1_00101;
                        always_comb y_input_5_layer_1_00101[0] = a2[325]; // wire
                        always_comb y_input_5_layer_1_00101[1] = a2[357]; // wire
                    mux2 mux_input_5_layer1_00101(.a(y_input_5_layer_1_00101), .s(s[0]), .y(y_input_5_layer_2_0010[1]));
                mux2 mux_input_5_layer2_0010 (.a(y_input_5_layer_2_0010), .s(s[1]), .y(y_input_5_layer_3_001[0]));
                logic [1:0] y_input_5_layer_2_0011;
                    logic [1:0] y_input_5_layer_1_00110;
                        always_comb y_input_5_layer_1_00110[0] = a2[389]; // wire
                        always_comb y_input_5_layer_1_00110[1] = a2[421]; // wire
                    mux2 mux_input_5_layer1_00110(.a(y_input_5_layer_1_00110), .s(s[0]), .y(y_input_5_layer_2_0011[0]));
                    logic [1:0] y_input_5_layer_1_00111;
                        always_comb y_input_5_layer_1_00111[0] = a2[453]; // wire
                        always_comb y_input_5_layer_1_00111[1] = a2[485]; // wire
                    mux2 mux_input_5_layer1_00111(.a(y_input_5_layer_1_00111), .s(s[0]), .y(y_input_5_layer_2_0011[1]));
                mux2 mux_input_5_layer2_0011 (.a(y_input_5_layer_2_0011), .s(s[1]), .y(y_input_5_layer_3_001[1]));
            mux2 mux_input_5_layer3_001  (.a(y_input_5_layer_3_001), .s(s[2]), .y(y_input_5_layer_4_00[1]));
        mux2 mux_input_5_layer4_00   (.a(y_input_5_layer_4_00), .s(s[3]), .y(y_input_5_layer_5_0[0]));
        logic [1:0] y_input_5_layer_4_01;
            logic [1:0] y_input_5_layer_3_010;
                logic [1:0] y_input_5_layer_2_0100;
                    logic [1:0] y_input_5_layer_1_01000;
                        always_comb y_input_5_layer_1_01000[0] = a2[517]; // wire
                        always_comb y_input_5_layer_1_01000[1] = a2[549]; // wire
                    mux2 mux_input_5_layer1_01000(.a(y_input_5_layer_1_01000), .s(s[0]), .y(y_input_5_layer_2_0100[0]));
                    logic [1:0] y_input_5_layer_1_01001;
                        always_comb y_input_5_layer_1_01001[0] = a2[581]; // wire
                        always_comb y_input_5_layer_1_01001[1] = a2[613]; // wire
                    mux2 mux_input_5_layer1_01001(.a(y_input_5_layer_1_01001), .s(s[0]), .y(y_input_5_layer_2_0100[1]));
                mux2 mux_input_5_layer2_0100 (.a(y_input_5_layer_2_0100), .s(s[1]), .y(y_input_5_layer_3_010[0]));
                logic [1:0] y_input_5_layer_2_0101;
                    logic [1:0] y_input_5_layer_1_01010;
                        always_comb y_input_5_layer_1_01010[0] = a2[645]; // wire
                        always_comb y_input_5_layer_1_01010[1] = a2[677]; // wire
                    mux2 mux_input_5_layer1_01010(.a(y_input_5_layer_1_01010), .s(s[0]), .y(y_input_5_layer_2_0101[0]));
                    logic [1:0] y_input_5_layer_1_01011;
                        always_comb y_input_5_layer_1_01011[0] = a2[709]; // wire
                        always_comb y_input_5_layer_1_01011[1] = a2[741]; // wire
                    mux2 mux_input_5_layer1_01011(.a(y_input_5_layer_1_01011), .s(s[0]), .y(y_input_5_layer_2_0101[1]));
                mux2 mux_input_5_layer2_0101 (.a(y_input_5_layer_2_0101), .s(s[1]), .y(y_input_5_layer_3_010[1]));
            mux2 mux_input_5_layer3_010  (.a(y_input_5_layer_3_010), .s(s[2]), .y(y_input_5_layer_4_01[0]));
            logic [1:0] y_input_5_layer_3_011;
                logic [1:0] y_input_5_layer_2_0110;
                    logic [1:0] y_input_5_layer_1_01100;
                        always_comb y_input_5_layer_1_01100[0] = a2[773]; // wire
                        always_comb y_input_5_layer_1_01100[1] = a2[805]; // wire
                    mux2 mux_input_5_layer1_01100(.a(y_input_5_layer_1_01100), .s(s[0]), .y(y_input_5_layer_2_0110[0]));
                    logic [1:0] y_input_5_layer_1_01101;
                        always_comb y_input_5_layer_1_01101[0] = a2[837]; // wire
                        always_comb y_input_5_layer_1_01101[1] = a2[869]; // wire
                    mux2 mux_input_5_layer1_01101(.a(y_input_5_layer_1_01101), .s(s[0]), .y(y_input_5_layer_2_0110[1]));
                mux2 mux_input_5_layer2_0110 (.a(y_input_5_layer_2_0110), .s(s[1]), .y(y_input_5_layer_3_011[0]));
                logic [1:0] y_input_5_layer_2_0111;
                    logic [1:0] y_input_5_layer_1_01110;
                        always_comb y_input_5_layer_1_01110[0] = a2[901]; // wire
                        always_comb y_input_5_layer_1_01110[1] = a2[933]; // wire
                    mux2 mux_input_5_layer1_01110(.a(y_input_5_layer_1_01110), .s(s[0]), .y(y_input_5_layer_2_0111[0]));
                    logic [1:0] y_input_5_layer_1_01111;
                        always_comb y_input_5_layer_1_01111[0] = a2[965]; // wire
                        always_comb y_input_5_layer_1_01111[1] = a2[997]; // wire
                    mux2 mux_input_5_layer1_01111(.a(y_input_5_layer_1_01111), .s(s[0]), .y(y_input_5_layer_2_0111[1]));
                mux2 mux_input_5_layer2_0111 (.a(y_input_5_layer_2_0111), .s(s[1]), .y(y_input_5_layer_3_011[1]));
            mux2 mux_input_5_layer3_011  (.a(y_input_5_layer_3_011), .s(s[2]), .y(y_input_5_layer_4_01[1]));
        mux2 mux_input_5_layer4_01   (.a(y_input_5_layer_4_01), .s(s[3]), .y(y_input_5_layer_5_0[1]));
    mux2 mux_input_5_layer5_0    (.a(y_input_5_layer_5_0), .s(s[4]), .y(y[5]));
            
            ////////////////////////   INPUT WIRE 6   ////////////////////////
            
                logic [1:0] y_input_6_layer_5_0;
        logic [1:0] y_input_6_layer_4_00;
            logic [1:0] y_input_6_layer_3_000;
                logic [1:0] y_input_6_layer_2_0000;
                    logic [1:0] y_input_6_layer_1_00000;
                        always_comb y_input_6_layer_1_00000[0] = a2[6]; // wire
                        always_comb y_input_6_layer_1_00000[1] = a2[38]; // wire
                    mux2 mux_input_6_layer1_00000(.a(y_input_6_layer_1_00000), .s(s[0]), .y(y_input_6_layer_2_0000[0]));
                    logic [1:0] y_input_6_layer_1_00001;
                        always_comb y_input_6_layer_1_00001[0] = a2[70]; // wire
                        always_comb y_input_6_layer_1_00001[1] = a2[102]; // wire
                    mux2 mux_input_6_layer1_00001(.a(y_input_6_layer_1_00001), .s(s[0]), .y(y_input_6_layer_2_0000[1]));
                mux2 mux_input_6_layer2_0000 (.a(y_input_6_layer_2_0000), .s(s[1]), .y(y_input_6_layer_3_000[0]));
                logic [1:0] y_input_6_layer_2_0001;
                    logic [1:0] y_input_6_layer_1_00010;
                        always_comb y_input_6_layer_1_00010[0] = a2[134]; // wire
                        always_comb y_input_6_layer_1_00010[1] = a2[166]; // wire
                    mux2 mux_input_6_layer1_00010(.a(y_input_6_layer_1_00010), .s(s[0]), .y(y_input_6_layer_2_0001[0]));
                    logic [1:0] y_input_6_layer_1_00011;
                        always_comb y_input_6_layer_1_00011[0] = a2[198]; // wire
                        always_comb y_input_6_layer_1_00011[1] = a2[230]; // wire
                    mux2 mux_input_6_layer1_00011(.a(y_input_6_layer_1_00011), .s(s[0]), .y(y_input_6_layer_2_0001[1]));
                mux2 mux_input_6_layer2_0001 (.a(y_input_6_layer_2_0001), .s(s[1]), .y(y_input_6_layer_3_000[1]));
            mux2 mux_input_6_layer3_000  (.a(y_input_6_layer_3_000), .s(s[2]), .y(y_input_6_layer_4_00[0]));
            logic [1:0] y_input_6_layer_3_001;
                logic [1:0] y_input_6_layer_2_0010;
                    logic [1:0] y_input_6_layer_1_00100;
                        always_comb y_input_6_layer_1_00100[0] = a2[262]; // wire
                        always_comb y_input_6_layer_1_00100[1] = a2[294]; // wire
                    mux2 mux_input_6_layer1_00100(.a(y_input_6_layer_1_00100), .s(s[0]), .y(y_input_6_layer_2_0010[0]));
                    logic [1:0] y_input_6_layer_1_00101;
                        always_comb y_input_6_layer_1_00101[0] = a2[326]; // wire
                        always_comb y_input_6_layer_1_00101[1] = a2[358]; // wire
                    mux2 mux_input_6_layer1_00101(.a(y_input_6_layer_1_00101), .s(s[0]), .y(y_input_6_layer_2_0010[1]));
                mux2 mux_input_6_layer2_0010 (.a(y_input_6_layer_2_0010), .s(s[1]), .y(y_input_6_layer_3_001[0]));
                logic [1:0] y_input_6_layer_2_0011;
                    logic [1:0] y_input_6_layer_1_00110;
                        always_comb y_input_6_layer_1_00110[0] = a2[390]; // wire
                        always_comb y_input_6_layer_1_00110[1] = a2[422]; // wire
                    mux2 mux_input_6_layer1_00110(.a(y_input_6_layer_1_00110), .s(s[0]), .y(y_input_6_layer_2_0011[0]));
                    logic [1:0] y_input_6_layer_1_00111;
                        always_comb y_input_6_layer_1_00111[0] = a2[454]; // wire
                        always_comb y_input_6_layer_1_00111[1] = a2[486]; // wire
                    mux2 mux_input_6_layer1_00111(.a(y_input_6_layer_1_00111), .s(s[0]), .y(y_input_6_layer_2_0011[1]));
                mux2 mux_input_6_layer2_0011 (.a(y_input_6_layer_2_0011), .s(s[1]), .y(y_input_6_layer_3_001[1]));
            mux2 mux_input_6_layer3_001  (.a(y_input_6_layer_3_001), .s(s[2]), .y(y_input_6_layer_4_00[1]));
        mux2 mux_input_6_layer4_00   (.a(y_input_6_layer_4_00), .s(s[3]), .y(y_input_6_layer_5_0[0]));
        logic [1:0] y_input_6_layer_4_01;
            logic [1:0] y_input_6_layer_3_010;
                logic [1:0] y_input_6_layer_2_0100;
                    logic [1:0] y_input_6_layer_1_01000;
                        always_comb y_input_6_layer_1_01000[0] = a2[518]; // wire
                        always_comb y_input_6_layer_1_01000[1] = a2[550]; // wire
                    mux2 mux_input_6_layer1_01000(.a(y_input_6_layer_1_01000), .s(s[0]), .y(y_input_6_layer_2_0100[0]));
                    logic [1:0] y_input_6_layer_1_01001;
                        always_comb y_input_6_layer_1_01001[0] = a2[582]; // wire
                        always_comb y_input_6_layer_1_01001[1] = a2[614]; // wire
                    mux2 mux_input_6_layer1_01001(.a(y_input_6_layer_1_01001), .s(s[0]), .y(y_input_6_layer_2_0100[1]));
                mux2 mux_input_6_layer2_0100 (.a(y_input_6_layer_2_0100), .s(s[1]), .y(y_input_6_layer_3_010[0]));
                logic [1:0] y_input_6_layer_2_0101;
                    logic [1:0] y_input_6_layer_1_01010;
                        always_comb y_input_6_layer_1_01010[0] = a2[646]; // wire
                        always_comb y_input_6_layer_1_01010[1] = a2[678]; // wire
                    mux2 mux_input_6_layer1_01010(.a(y_input_6_layer_1_01010), .s(s[0]), .y(y_input_6_layer_2_0101[0]));
                    logic [1:0] y_input_6_layer_1_01011;
                        always_comb y_input_6_layer_1_01011[0] = a2[710]; // wire
                        always_comb y_input_6_layer_1_01011[1] = a2[742]; // wire
                    mux2 mux_input_6_layer1_01011(.a(y_input_6_layer_1_01011), .s(s[0]), .y(y_input_6_layer_2_0101[1]));
                mux2 mux_input_6_layer2_0101 (.a(y_input_6_layer_2_0101), .s(s[1]), .y(y_input_6_layer_3_010[1]));
            mux2 mux_input_6_layer3_010  (.a(y_input_6_layer_3_010), .s(s[2]), .y(y_input_6_layer_4_01[0]));
            logic [1:0] y_input_6_layer_3_011;
                logic [1:0] y_input_6_layer_2_0110;
                    logic [1:0] y_input_6_layer_1_01100;
                        always_comb y_input_6_layer_1_01100[0] = a2[774]; // wire
                        always_comb y_input_6_layer_1_01100[1] = a2[806]; // wire
                    mux2 mux_input_6_layer1_01100(.a(y_input_6_layer_1_01100), .s(s[0]), .y(y_input_6_layer_2_0110[0]));
                    logic [1:0] y_input_6_layer_1_01101;
                        always_comb y_input_6_layer_1_01101[0] = a2[838]; // wire
                        always_comb y_input_6_layer_1_01101[1] = a2[870]; // wire
                    mux2 mux_input_6_layer1_01101(.a(y_input_6_layer_1_01101), .s(s[0]), .y(y_input_6_layer_2_0110[1]));
                mux2 mux_input_6_layer2_0110 (.a(y_input_6_layer_2_0110), .s(s[1]), .y(y_input_6_layer_3_011[0]));
                logic [1:0] y_input_6_layer_2_0111;
                    logic [1:0] y_input_6_layer_1_01110;
                        always_comb y_input_6_layer_1_01110[0] = a2[902]; // wire
                        always_comb y_input_6_layer_1_01110[1] = a2[934]; // wire
                    mux2 mux_input_6_layer1_01110(.a(y_input_6_layer_1_01110), .s(s[0]), .y(y_input_6_layer_2_0111[0]));
                    logic [1:0] y_input_6_layer_1_01111;
                        always_comb y_input_6_layer_1_01111[0] = a2[966]; // wire
                        always_comb y_input_6_layer_1_01111[1] = a2[998]; // wire
                    mux2 mux_input_6_layer1_01111(.a(y_input_6_layer_1_01111), .s(s[0]), .y(y_input_6_layer_2_0111[1]));
                mux2 mux_input_6_layer2_0111 (.a(y_input_6_layer_2_0111), .s(s[1]), .y(y_input_6_layer_3_011[1]));
            mux2 mux_input_6_layer3_011  (.a(y_input_6_layer_3_011), .s(s[2]), .y(y_input_6_layer_4_01[1]));
        mux2 mux_input_6_layer4_01   (.a(y_input_6_layer_4_01), .s(s[3]), .y(y_input_6_layer_5_0[1]));
    mux2 mux_input_6_layer5_0    (.a(y_input_6_layer_5_0), .s(s[4]), .y(y[6]));
            
            ////////////////////////   INPUT WIRE 7   ////////////////////////
            
                logic [1:0] y_input_7_layer_5_0;
        logic [1:0] y_input_7_layer_4_00;
            logic [1:0] y_input_7_layer_3_000;
                logic [1:0] y_input_7_layer_2_0000;
                    logic [1:0] y_input_7_layer_1_00000;
                        always_comb y_input_7_layer_1_00000[0] = a2[7]; // wire
                        always_comb y_input_7_layer_1_00000[1] = a2[39]; // wire
                    mux2 mux_input_7_layer1_00000(.a(y_input_7_layer_1_00000), .s(s[0]), .y(y_input_7_layer_2_0000[0]));
                    logic [1:0] y_input_7_layer_1_00001;
                        always_comb y_input_7_layer_1_00001[0] = a2[71]; // wire
                        always_comb y_input_7_layer_1_00001[1] = a2[103]; // wire
                    mux2 mux_input_7_layer1_00001(.a(y_input_7_layer_1_00001), .s(s[0]), .y(y_input_7_layer_2_0000[1]));
                mux2 mux_input_7_layer2_0000 (.a(y_input_7_layer_2_0000), .s(s[1]), .y(y_input_7_layer_3_000[0]));
                logic [1:0] y_input_7_layer_2_0001;
                    logic [1:0] y_input_7_layer_1_00010;
                        always_comb y_input_7_layer_1_00010[0] = a2[135]; // wire
                        always_comb y_input_7_layer_1_00010[1] = a2[167]; // wire
                    mux2 mux_input_7_layer1_00010(.a(y_input_7_layer_1_00010), .s(s[0]), .y(y_input_7_layer_2_0001[0]));
                    logic [1:0] y_input_7_layer_1_00011;
                        always_comb y_input_7_layer_1_00011[0] = a2[199]; // wire
                        always_comb y_input_7_layer_1_00011[1] = a2[231]; // wire
                    mux2 mux_input_7_layer1_00011(.a(y_input_7_layer_1_00011), .s(s[0]), .y(y_input_7_layer_2_0001[1]));
                mux2 mux_input_7_layer2_0001 (.a(y_input_7_layer_2_0001), .s(s[1]), .y(y_input_7_layer_3_000[1]));
            mux2 mux_input_7_layer3_000  (.a(y_input_7_layer_3_000), .s(s[2]), .y(y_input_7_layer_4_00[0]));
            logic [1:0] y_input_7_layer_3_001;
                logic [1:0] y_input_7_layer_2_0010;
                    logic [1:0] y_input_7_layer_1_00100;
                        always_comb y_input_7_layer_1_00100[0] = a2[263]; // wire
                        always_comb y_input_7_layer_1_00100[1] = a2[295]; // wire
                    mux2 mux_input_7_layer1_00100(.a(y_input_7_layer_1_00100), .s(s[0]), .y(y_input_7_layer_2_0010[0]));
                    logic [1:0] y_input_7_layer_1_00101;
                        always_comb y_input_7_layer_1_00101[0] = a2[327]; // wire
                        always_comb y_input_7_layer_1_00101[1] = a2[359]; // wire
                    mux2 mux_input_7_layer1_00101(.a(y_input_7_layer_1_00101), .s(s[0]), .y(y_input_7_layer_2_0010[1]));
                mux2 mux_input_7_layer2_0010 (.a(y_input_7_layer_2_0010), .s(s[1]), .y(y_input_7_layer_3_001[0]));
                logic [1:0] y_input_7_layer_2_0011;
                    logic [1:0] y_input_7_layer_1_00110;
                        always_comb y_input_7_layer_1_00110[0] = a2[391]; // wire
                        always_comb y_input_7_layer_1_00110[1] = a2[423]; // wire
                    mux2 mux_input_7_layer1_00110(.a(y_input_7_layer_1_00110), .s(s[0]), .y(y_input_7_layer_2_0011[0]));
                    logic [1:0] y_input_7_layer_1_00111;
                        always_comb y_input_7_layer_1_00111[0] = a2[455]; // wire
                        always_comb y_input_7_layer_1_00111[1] = a2[487]; // wire
                    mux2 mux_input_7_layer1_00111(.a(y_input_7_layer_1_00111), .s(s[0]), .y(y_input_7_layer_2_0011[1]));
                mux2 mux_input_7_layer2_0011 (.a(y_input_7_layer_2_0011), .s(s[1]), .y(y_input_7_layer_3_001[1]));
            mux2 mux_input_7_layer3_001  (.a(y_input_7_layer_3_001), .s(s[2]), .y(y_input_7_layer_4_00[1]));
        mux2 mux_input_7_layer4_00   (.a(y_input_7_layer_4_00), .s(s[3]), .y(y_input_7_layer_5_0[0]));
        logic [1:0] y_input_7_layer_4_01;
            logic [1:0] y_input_7_layer_3_010;
                logic [1:0] y_input_7_layer_2_0100;
                    logic [1:0] y_input_7_layer_1_01000;
                        always_comb y_input_7_layer_1_01000[0] = a2[519]; // wire
                        always_comb y_input_7_layer_1_01000[1] = a2[551]; // wire
                    mux2 mux_input_7_layer1_01000(.a(y_input_7_layer_1_01000), .s(s[0]), .y(y_input_7_layer_2_0100[0]));
                    logic [1:0] y_input_7_layer_1_01001;
                        always_comb y_input_7_layer_1_01001[0] = a2[583]; // wire
                        always_comb y_input_7_layer_1_01001[1] = a2[615]; // wire
                    mux2 mux_input_7_layer1_01001(.a(y_input_7_layer_1_01001), .s(s[0]), .y(y_input_7_layer_2_0100[1]));
                mux2 mux_input_7_layer2_0100 (.a(y_input_7_layer_2_0100), .s(s[1]), .y(y_input_7_layer_3_010[0]));
                logic [1:0] y_input_7_layer_2_0101;
                    logic [1:0] y_input_7_layer_1_01010;
                        always_comb y_input_7_layer_1_01010[0] = a2[647]; // wire
                        always_comb y_input_7_layer_1_01010[1] = a2[679]; // wire
                    mux2 mux_input_7_layer1_01010(.a(y_input_7_layer_1_01010), .s(s[0]), .y(y_input_7_layer_2_0101[0]));
                    logic [1:0] y_input_7_layer_1_01011;
                        always_comb y_input_7_layer_1_01011[0] = a2[711]; // wire
                        always_comb y_input_7_layer_1_01011[1] = a2[743]; // wire
                    mux2 mux_input_7_layer1_01011(.a(y_input_7_layer_1_01011), .s(s[0]), .y(y_input_7_layer_2_0101[1]));
                mux2 mux_input_7_layer2_0101 (.a(y_input_7_layer_2_0101), .s(s[1]), .y(y_input_7_layer_3_010[1]));
            mux2 mux_input_7_layer3_010  (.a(y_input_7_layer_3_010), .s(s[2]), .y(y_input_7_layer_4_01[0]));
            logic [1:0] y_input_7_layer_3_011;
                logic [1:0] y_input_7_layer_2_0110;
                    logic [1:0] y_input_7_layer_1_01100;
                        always_comb y_input_7_layer_1_01100[0] = a2[775]; // wire
                        always_comb y_input_7_layer_1_01100[1] = a2[807]; // wire
                    mux2 mux_input_7_layer1_01100(.a(y_input_7_layer_1_01100), .s(s[0]), .y(y_input_7_layer_2_0110[0]));
                    logic [1:0] y_input_7_layer_1_01101;
                        always_comb y_input_7_layer_1_01101[0] = a2[839]; // wire
                        always_comb y_input_7_layer_1_01101[1] = a2[871]; // wire
                    mux2 mux_input_7_layer1_01101(.a(y_input_7_layer_1_01101), .s(s[0]), .y(y_input_7_layer_2_0110[1]));
                mux2 mux_input_7_layer2_0110 (.a(y_input_7_layer_2_0110), .s(s[1]), .y(y_input_7_layer_3_011[0]));
                logic [1:0] y_input_7_layer_2_0111;
                    logic [1:0] y_input_7_layer_1_01110;
                        always_comb y_input_7_layer_1_01110[0] = a2[903]; // wire
                        always_comb y_input_7_layer_1_01110[1] = a2[935]; // wire
                    mux2 mux_input_7_layer1_01110(.a(y_input_7_layer_1_01110), .s(s[0]), .y(y_input_7_layer_2_0111[0]));
                    logic [1:0] y_input_7_layer_1_01111;
                        always_comb y_input_7_layer_1_01111[0] = a2[967]; // wire
                        always_comb y_input_7_layer_1_01111[1] = a2[999]; // wire
                    mux2 mux_input_7_layer1_01111(.a(y_input_7_layer_1_01111), .s(s[0]), .y(y_input_7_layer_2_0111[1]));
                mux2 mux_input_7_layer2_0111 (.a(y_input_7_layer_2_0111), .s(s[1]), .y(y_input_7_layer_3_011[1]));
            mux2 mux_input_7_layer3_011  (.a(y_input_7_layer_3_011), .s(s[2]), .y(y_input_7_layer_4_01[1]));
        mux2 mux_input_7_layer4_01   (.a(y_input_7_layer_4_01), .s(s[3]), .y(y_input_7_layer_5_0[1]));
    mux2 mux_input_7_layer5_0    (.a(y_input_7_layer_5_0), .s(s[4]), .y(y[7]));
            
            ////////////////////////   INPUT WIRE 8   ////////////////////////
            
                logic [1:0] y_input_8_layer_5_0;
        logic [1:0] y_input_8_layer_4_00;
            logic [1:0] y_input_8_layer_3_000;
                logic [1:0] y_input_8_layer_2_0000;
                    logic [1:0] y_input_8_layer_1_00000;
                        always_comb y_input_8_layer_1_00000[0] = a2[8]; // wire
                        always_comb y_input_8_layer_1_00000[1] = a2[40]; // wire
                    mux2 mux_input_8_layer1_00000(.a(y_input_8_layer_1_00000), .s(s[0]), .y(y_input_8_layer_2_0000[0]));
                    logic [1:0] y_input_8_layer_1_00001;
                        always_comb y_input_8_layer_1_00001[0] = a2[72]; // wire
                        always_comb y_input_8_layer_1_00001[1] = a2[104]; // wire
                    mux2 mux_input_8_layer1_00001(.a(y_input_8_layer_1_00001), .s(s[0]), .y(y_input_8_layer_2_0000[1]));
                mux2 mux_input_8_layer2_0000 (.a(y_input_8_layer_2_0000), .s(s[1]), .y(y_input_8_layer_3_000[0]));
                logic [1:0] y_input_8_layer_2_0001;
                    logic [1:0] y_input_8_layer_1_00010;
                        always_comb y_input_8_layer_1_00010[0] = a2[136]; // wire
                        always_comb y_input_8_layer_1_00010[1] = a2[168]; // wire
                    mux2 mux_input_8_layer1_00010(.a(y_input_8_layer_1_00010), .s(s[0]), .y(y_input_8_layer_2_0001[0]));
                    logic [1:0] y_input_8_layer_1_00011;
                        always_comb y_input_8_layer_1_00011[0] = a2[200]; // wire
                        always_comb y_input_8_layer_1_00011[1] = a2[232]; // wire
                    mux2 mux_input_8_layer1_00011(.a(y_input_8_layer_1_00011), .s(s[0]), .y(y_input_8_layer_2_0001[1]));
                mux2 mux_input_8_layer2_0001 (.a(y_input_8_layer_2_0001), .s(s[1]), .y(y_input_8_layer_3_000[1]));
            mux2 mux_input_8_layer3_000  (.a(y_input_8_layer_3_000), .s(s[2]), .y(y_input_8_layer_4_00[0]));
            logic [1:0] y_input_8_layer_3_001;
                logic [1:0] y_input_8_layer_2_0010;
                    logic [1:0] y_input_8_layer_1_00100;
                        always_comb y_input_8_layer_1_00100[0] = a2[264]; // wire
                        always_comb y_input_8_layer_1_00100[1] = a2[296]; // wire
                    mux2 mux_input_8_layer1_00100(.a(y_input_8_layer_1_00100), .s(s[0]), .y(y_input_8_layer_2_0010[0]));
                    logic [1:0] y_input_8_layer_1_00101;
                        always_comb y_input_8_layer_1_00101[0] = a2[328]; // wire
                        always_comb y_input_8_layer_1_00101[1] = a2[360]; // wire
                    mux2 mux_input_8_layer1_00101(.a(y_input_8_layer_1_00101), .s(s[0]), .y(y_input_8_layer_2_0010[1]));
                mux2 mux_input_8_layer2_0010 (.a(y_input_8_layer_2_0010), .s(s[1]), .y(y_input_8_layer_3_001[0]));
                logic [1:0] y_input_8_layer_2_0011;
                    logic [1:0] y_input_8_layer_1_00110;
                        always_comb y_input_8_layer_1_00110[0] = a2[392]; // wire
                        always_comb y_input_8_layer_1_00110[1] = a2[424]; // wire
                    mux2 mux_input_8_layer1_00110(.a(y_input_8_layer_1_00110), .s(s[0]), .y(y_input_8_layer_2_0011[0]));
                    logic [1:0] y_input_8_layer_1_00111;
                        always_comb y_input_8_layer_1_00111[0] = a2[456]; // wire
                        always_comb y_input_8_layer_1_00111[1] = a2[488]; // wire
                    mux2 mux_input_8_layer1_00111(.a(y_input_8_layer_1_00111), .s(s[0]), .y(y_input_8_layer_2_0011[1]));
                mux2 mux_input_8_layer2_0011 (.a(y_input_8_layer_2_0011), .s(s[1]), .y(y_input_8_layer_3_001[1]));
            mux2 mux_input_8_layer3_001  (.a(y_input_8_layer_3_001), .s(s[2]), .y(y_input_8_layer_4_00[1]));
        mux2 mux_input_8_layer4_00   (.a(y_input_8_layer_4_00), .s(s[3]), .y(y_input_8_layer_5_0[0]));
        logic [1:0] y_input_8_layer_4_01;
            logic [1:0] y_input_8_layer_3_010;
                logic [1:0] y_input_8_layer_2_0100;
                    logic [1:0] y_input_8_layer_1_01000;
                        always_comb y_input_8_layer_1_01000[0] = a2[520]; // wire
                        always_comb y_input_8_layer_1_01000[1] = a2[552]; // wire
                    mux2 mux_input_8_layer1_01000(.a(y_input_8_layer_1_01000), .s(s[0]), .y(y_input_8_layer_2_0100[0]));
                    logic [1:0] y_input_8_layer_1_01001;
                        always_comb y_input_8_layer_1_01001[0] = a2[584]; // wire
                        always_comb y_input_8_layer_1_01001[1] = a2[616]; // wire
                    mux2 mux_input_8_layer1_01001(.a(y_input_8_layer_1_01001), .s(s[0]), .y(y_input_8_layer_2_0100[1]));
                mux2 mux_input_8_layer2_0100 (.a(y_input_8_layer_2_0100), .s(s[1]), .y(y_input_8_layer_3_010[0]));
                logic [1:0] y_input_8_layer_2_0101;
                    logic [1:0] y_input_8_layer_1_01010;
                        always_comb y_input_8_layer_1_01010[0] = a2[648]; // wire
                        always_comb y_input_8_layer_1_01010[1] = a2[680]; // wire
                    mux2 mux_input_8_layer1_01010(.a(y_input_8_layer_1_01010), .s(s[0]), .y(y_input_8_layer_2_0101[0]));
                    logic [1:0] y_input_8_layer_1_01011;
                        always_comb y_input_8_layer_1_01011[0] = a2[712]; // wire
                        always_comb y_input_8_layer_1_01011[1] = a2[744]; // wire
                    mux2 mux_input_8_layer1_01011(.a(y_input_8_layer_1_01011), .s(s[0]), .y(y_input_8_layer_2_0101[1]));
                mux2 mux_input_8_layer2_0101 (.a(y_input_8_layer_2_0101), .s(s[1]), .y(y_input_8_layer_3_010[1]));
            mux2 mux_input_8_layer3_010  (.a(y_input_8_layer_3_010), .s(s[2]), .y(y_input_8_layer_4_01[0]));
            logic [1:0] y_input_8_layer_3_011;
                logic [1:0] y_input_8_layer_2_0110;
                    logic [1:0] y_input_8_layer_1_01100;
                        always_comb y_input_8_layer_1_01100[0] = a2[776]; // wire
                        always_comb y_input_8_layer_1_01100[1] = a2[808]; // wire
                    mux2 mux_input_8_layer1_01100(.a(y_input_8_layer_1_01100), .s(s[0]), .y(y_input_8_layer_2_0110[0]));
                    logic [1:0] y_input_8_layer_1_01101;
                        always_comb y_input_8_layer_1_01101[0] = a2[840]; // wire
                        always_comb y_input_8_layer_1_01101[1] = a2[872]; // wire
                    mux2 mux_input_8_layer1_01101(.a(y_input_8_layer_1_01101), .s(s[0]), .y(y_input_8_layer_2_0110[1]));
                mux2 mux_input_8_layer2_0110 (.a(y_input_8_layer_2_0110), .s(s[1]), .y(y_input_8_layer_3_011[0]));
                logic [1:0] y_input_8_layer_2_0111;
                    logic [1:0] y_input_8_layer_1_01110;
                        always_comb y_input_8_layer_1_01110[0] = a2[904]; // wire
                        always_comb y_input_8_layer_1_01110[1] = a2[936]; // wire
                    mux2 mux_input_8_layer1_01110(.a(y_input_8_layer_1_01110), .s(s[0]), .y(y_input_8_layer_2_0111[0]));
                    logic [1:0] y_input_8_layer_1_01111;
                        always_comb y_input_8_layer_1_01111[0] = a2[968]; // wire
                        always_comb y_input_8_layer_1_01111[1] = a2[1000]; // wire
                    mux2 mux_input_8_layer1_01111(.a(y_input_8_layer_1_01111), .s(s[0]), .y(y_input_8_layer_2_0111[1]));
                mux2 mux_input_8_layer2_0111 (.a(y_input_8_layer_2_0111), .s(s[1]), .y(y_input_8_layer_3_011[1]));
            mux2 mux_input_8_layer3_011  (.a(y_input_8_layer_3_011), .s(s[2]), .y(y_input_8_layer_4_01[1]));
        mux2 mux_input_8_layer4_01   (.a(y_input_8_layer_4_01), .s(s[3]), .y(y_input_8_layer_5_0[1]));
    mux2 mux_input_8_layer5_0    (.a(y_input_8_layer_5_0), .s(s[4]), .y(y[8]));
            
            ////////////////////////   INPUT WIRE 9   ////////////////////////
            
                logic [1:0] y_input_9_layer_5_0;
        logic [1:0] y_input_9_layer_4_00;
            logic [1:0] y_input_9_layer_3_000;
                logic [1:0] y_input_9_layer_2_0000;
                    logic [1:0] y_input_9_layer_1_00000;
                        always_comb y_input_9_layer_1_00000[0] = a2[9]; // wire
                        always_comb y_input_9_layer_1_00000[1] = a2[41]; // wire
                    mux2 mux_input_9_layer1_00000(.a(y_input_9_layer_1_00000), .s(s[0]), .y(y_input_9_layer_2_0000[0]));
                    logic [1:0] y_input_9_layer_1_00001;
                        always_comb y_input_9_layer_1_00001[0] = a2[73]; // wire
                        always_comb y_input_9_layer_1_00001[1] = a2[105]; // wire
                    mux2 mux_input_9_layer1_00001(.a(y_input_9_layer_1_00001), .s(s[0]), .y(y_input_9_layer_2_0000[1]));
                mux2 mux_input_9_layer2_0000 (.a(y_input_9_layer_2_0000), .s(s[1]), .y(y_input_9_layer_3_000[0]));
                logic [1:0] y_input_9_layer_2_0001;
                    logic [1:0] y_input_9_layer_1_00010;
                        always_comb y_input_9_layer_1_00010[0] = a2[137]; // wire
                        always_comb y_input_9_layer_1_00010[1] = a2[169]; // wire
                    mux2 mux_input_9_layer1_00010(.a(y_input_9_layer_1_00010), .s(s[0]), .y(y_input_9_layer_2_0001[0]));
                    logic [1:0] y_input_9_layer_1_00011;
                        always_comb y_input_9_layer_1_00011[0] = a2[201]; // wire
                        always_comb y_input_9_layer_1_00011[1] = a2[233]; // wire
                    mux2 mux_input_9_layer1_00011(.a(y_input_9_layer_1_00011), .s(s[0]), .y(y_input_9_layer_2_0001[1]));
                mux2 mux_input_9_layer2_0001 (.a(y_input_9_layer_2_0001), .s(s[1]), .y(y_input_9_layer_3_000[1]));
            mux2 mux_input_9_layer3_000  (.a(y_input_9_layer_3_000), .s(s[2]), .y(y_input_9_layer_4_00[0]));
            logic [1:0] y_input_9_layer_3_001;
                logic [1:0] y_input_9_layer_2_0010;
                    logic [1:0] y_input_9_layer_1_00100;
                        always_comb y_input_9_layer_1_00100[0] = a2[265]; // wire
                        always_comb y_input_9_layer_1_00100[1] = a2[297]; // wire
                    mux2 mux_input_9_layer1_00100(.a(y_input_9_layer_1_00100), .s(s[0]), .y(y_input_9_layer_2_0010[0]));
                    logic [1:0] y_input_9_layer_1_00101;
                        always_comb y_input_9_layer_1_00101[0] = a2[329]; // wire
                        always_comb y_input_9_layer_1_00101[1] = a2[361]; // wire
                    mux2 mux_input_9_layer1_00101(.a(y_input_9_layer_1_00101), .s(s[0]), .y(y_input_9_layer_2_0010[1]));
                mux2 mux_input_9_layer2_0010 (.a(y_input_9_layer_2_0010), .s(s[1]), .y(y_input_9_layer_3_001[0]));
                logic [1:0] y_input_9_layer_2_0011;
                    logic [1:0] y_input_9_layer_1_00110;
                        always_comb y_input_9_layer_1_00110[0] = a2[393]; // wire
                        always_comb y_input_9_layer_1_00110[1] = a2[425]; // wire
                    mux2 mux_input_9_layer1_00110(.a(y_input_9_layer_1_00110), .s(s[0]), .y(y_input_9_layer_2_0011[0]));
                    logic [1:0] y_input_9_layer_1_00111;
                        always_comb y_input_9_layer_1_00111[0] = a2[457]; // wire
                        always_comb y_input_9_layer_1_00111[1] = a2[489]; // wire
                    mux2 mux_input_9_layer1_00111(.a(y_input_9_layer_1_00111), .s(s[0]), .y(y_input_9_layer_2_0011[1]));
                mux2 mux_input_9_layer2_0011 (.a(y_input_9_layer_2_0011), .s(s[1]), .y(y_input_9_layer_3_001[1]));
            mux2 mux_input_9_layer3_001  (.a(y_input_9_layer_3_001), .s(s[2]), .y(y_input_9_layer_4_00[1]));
        mux2 mux_input_9_layer4_00   (.a(y_input_9_layer_4_00), .s(s[3]), .y(y_input_9_layer_5_0[0]));
        logic [1:0] y_input_9_layer_4_01;
            logic [1:0] y_input_9_layer_3_010;
                logic [1:0] y_input_9_layer_2_0100;
                    logic [1:0] y_input_9_layer_1_01000;
                        always_comb y_input_9_layer_1_01000[0] = a2[521]; // wire
                        always_comb y_input_9_layer_1_01000[1] = a2[553]; // wire
                    mux2 mux_input_9_layer1_01000(.a(y_input_9_layer_1_01000), .s(s[0]), .y(y_input_9_layer_2_0100[0]));
                    logic [1:0] y_input_9_layer_1_01001;
                        always_comb y_input_9_layer_1_01001[0] = a2[585]; // wire
                        always_comb y_input_9_layer_1_01001[1] = a2[617]; // wire
                    mux2 mux_input_9_layer1_01001(.a(y_input_9_layer_1_01001), .s(s[0]), .y(y_input_9_layer_2_0100[1]));
                mux2 mux_input_9_layer2_0100 (.a(y_input_9_layer_2_0100), .s(s[1]), .y(y_input_9_layer_3_010[0]));
                logic [1:0] y_input_9_layer_2_0101;
                    logic [1:0] y_input_9_layer_1_01010;
                        always_comb y_input_9_layer_1_01010[0] = a2[649]; // wire
                        always_comb y_input_9_layer_1_01010[1] = a2[681]; // wire
                    mux2 mux_input_9_layer1_01010(.a(y_input_9_layer_1_01010), .s(s[0]), .y(y_input_9_layer_2_0101[0]));
                    logic [1:0] y_input_9_layer_1_01011;
                        always_comb y_input_9_layer_1_01011[0] = a2[713]; // wire
                        always_comb y_input_9_layer_1_01011[1] = a2[745]; // wire
                    mux2 mux_input_9_layer1_01011(.a(y_input_9_layer_1_01011), .s(s[0]), .y(y_input_9_layer_2_0101[1]));
                mux2 mux_input_9_layer2_0101 (.a(y_input_9_layer_2_0101), .s(s[1]), .y(y_input_9_layer_3_010[1]));
            mux2 mux_input_9_layer3_010  (.a(y_input_9_layer_3_010), .s(s[2]), .y(y_input_9_layer_4_01[0]));
            logic [1:0] y_input_9_layer_3_011;
                logic [1:0] y_input_9_layer_2_0110;
                    logic [1:0] y_input_9_layer_1_01100;
                        always_comb y_input_9_layer_1_01100[0] = a2[777]; // wire
                        always_comb y_input_9_layer_1_01100[1] = a2[809]; // wire
                    mux2 mux_input_9_layer1_01100(.a(y_input_9_layer_1_01100), .s(s[0]), .y(y_input_9_layer_2_0110[0]));
                    logic [1:0] y_input_9_layer_1_01101;
                        always_comb y_input_9_layer_1_01101[0] = a2[841]; // wire
                        always_comb y_input_9_layer_1_01101[1] = a2[873]; // wire
                    mux2 mux_input_9_layer1_01101(.a(y_input_9_layer_1_01101), .s(s[0]), .y(y_input_9_layer_2_0110[1]));
                mux2 mux_input_9_layer2_0110 (.a(y_input_9_layer_2_0110), .s(s[1]), .y(y_input_9_layer_3_011[0]));
                logic [1:0] y_input_9_layer_2_0111;
                    logic [1:0] y_input_9_layer_1_01110;
                        always_comb y_input_9_layer_1_01110[0] = a2[905]; // wire
                        always_comb y_input_9_layer_1_01110[1] = a2[937]; // wire
                    mux2 mux_input_9_layer1_01110(.a(y_input_9_layer_1_01110), .s(s[0]), .y(y_input_9_layer_2_0111[0]));
                    logic [1:0] y_input_9_layer_1_01111;
                        always_comb y_input_9_layer_1_01111[0] = a2[969]; // wire
                        always_comb y_input_9_layer_1_01111[1] = a2[1001]; // wire
                    mux2 mux_input_9_layer1_01111(.a(y_input_9_layer_1_01111), .s(s[0]), .y(y_input_9_layer_2_0111[1]));
                mux2 mux_input_9_layer2_0111 (.a(y_input_9_layer_2_0111), .s(s[1]), .y(y_input_9_layer_3_011[1]));
            mux2 mux_input_9_layer3_011  (.a(y_input_9_layer_3_011), .s(s[2]), .y(y_input_9_layer_4_01[1]));
        mux2 mux_input_9_layer4_01   (.a(y_input_9_layer_4_01), .s(s[3]), .y(y_input_9_layer_5_0[1]));
    mux2 mux_input_9_layer5_0    (.a(y_input_9_layer_5_0), .s(s[4]), .y(y[9]));
            
            ////////////////////////   INPUT WIRE 10   ////////////////////////
            
                logic [1:0] y_input_10_layer_5_0;
        logic [1:0] y_input_10_layer_4_00;
            logic [1:0] y_input_10_layer_3_000;
                logic [1:0] y_input_10_layer_2_0000;
                    logic [1:0] y_input_10_layer_1_00000;
                        always_comb y_input_10_layer_1_00000[0] = a2[10]; // wire
                        always_comb y_input_10_layer_1_00000[1] = a2[42]; // wire
                    mux2 mux_input_10_layer1_00000(.a(y_input_10_layer_1_00000), .s(s[0]), .y(y_input_10_layer_2_0000[0]));
                    logic [1:0] y_input_10_layer_1_00001;
                        always_comb y_input_10_layer_1_00001[0] = a2[74]; // wire
                        always_comb y_input_10_layer_1_00001[1] = a2[106]; // wire
                    mux2 mux_input_10_layer1_00001(.a(y_input_10_layer_1_00001), .s(s[0]), .y(y_input_10_layer_2_0000[1]));
                mux2 mux_input_10_layer2_0000 (.a(y_input_10_layer_2_0000), .s(s[1]), .y(y_input_10_layer_3_000[0]));
                logic [1:0] y_input_10_layer_2_0001;
                    logic [1:0] y_input_10_layer_1_00010;
                        always_comb y_input_10_layer_1_00010[0] = a2[138]; // wire
                        always_comb y_input_10_layer_1_00010[1] = a2[170]; // wire
                    mux2 mux_input_10_layer1_00010(.a(y_input_10_layer_1_00010), .s(s[0]), .y(y_input_10_layer_2_0001[0]));
                    logic [1:0] y_input_10_layer_1_00011;
                        always_comb y_input_10_layer_1_00011[0] = a2[202]; // wire
                        always_comb y_input_10_layer_1_00011[1] = a2[234]; // wire
                    mux2 mux_input_10_layer1_00011(.a(y_input_10_layer_1_00011), .s(s[0]), .y(y_input_10_layer_2_0001[1]));
                mux2 mux_input_10_layer2_0001 (.a(y_input_10_layer_2_0001), .s(s[1]), .y(y_input_10_layer_3_000[1]));
            mux2 mux_input_10_layer3_000  (.a(y_input_10_layer_3_000), .s(s[2]), .y(y_input_10_layer_4_00[0]));
            logic [1:0] y_input_10_layer_3_001;
                logic [1:0] y_input_10_layer_2_0010;
                    logic [1:0] y_input_10_layer_1_00100;
                        always_comb y_input_10_layer_1_00100[0] = a2[266]; // wire
                        always_comb y_input_10_layer_1_00100[1] = a2[298]; // wire
                    mux2 mux_input_10_layer1_00100(.a(y_input_10_layer_1_00100), .s(s[0]), .y(y_input_10_layer_2_0010[0]));
                    logic [1:0] y_input_10_layer_1_00101;
                        always_comb y_input_10_layer_1_00101[0] = a2[330]; // wire
                        always_comb y_input_10_layer_1_00101[1] = a2[362]; // wire
                    mux2 mux_input_10_layer1_00101(.a(y_input_10_layer_1_00101), .s(s[0]), .y(y_input_10_layer_2_0010[1]));
                mux2 mux_input_10_layer2_0010 (.a(y_input_10_layer_2_0010), .s(s[1]), .y(y_input_10_layer_3_001[0]));
                logic [1:0] y_input_10_layer_2_0011;
                    logic [1:0] y_input_10_layer_1_00110;
                        always_comb y_input_10_layer_1_00110[0] = a2[394]; // wire
                        always_comb y_input_10_layer_1_00110[1] = a2[426]; // wire
                    mux2 mux_input_10_layer1_00110(.a(y_input_10_layer_1_00110), .s(s[0]), .y(y_input_10_layer_2_0011[0]));
                    logic [1:0] y_input_10_layer_1_00111;
                        always_comb y_input_10_layer_1_00111[0] = a2[458]; // wire
                        always_comb y_input_10_layer_1_00111[1] = a2[490]; // wire
                    mux2 mux_input_10_layer1_00111(.a(y_input_10_layer_1_00111), .s(s[0]), .y(y_input_10_layer_2_0011[1]));
                mux2 mux_input_10_layer2_0011 (.a(y_input_10_layer_2_0011), .s(s[1]), .y(y_input_10_layer_3_001[1]));
            mux2 mux_input_10_layer3_001  (.a(y_input_10_layer_3_001), .s(s[2]), .y(y_input_10_layer_4_00[1]));
        mux2 mux_input_10_layer4_00   (.a(y_input_10_layer_4_00), .s(s[3]), .y(y_input_10_layer_5_0[0]));
        logic [1:0] y_input_10_layer_4_01;
            logic [1:0] y_input_10_layer_3_010;
                logic [1:0] y_input_10_layer_2_0100;
                    logic [1:0] y_input_10_layer_1_01000;
                        always_comb y_input_10_layer_1_01000[0] = a2[522]; // wire
                        always_comb y_input_10_layer_1_01000[1] = a2[554]; // wire
                    mux2 mux_input_10_layer1_01000(.a(y_input_10_layer_1_01000), .s(s[0]), .y(y_input_10_layer_2_0100[0]));
                    logic [1:0] y_input_10_layer_1_01001;
                        always_comb y_input_10_layer_1_01001[0] = a2[586]; // wire
                        always_comb y_input_10_layer_1_01001[1] = a2[618]; // wire
                    mux2 mux_input_10_layer1_01001(.a(y_input_10_layer_1_01001), .s(s[0]), .y(y_input_10_layer_2_0100[1]));
                mux2 mux_input_10_layer2_0100 (.a(y_input_10_layer_2_0100), .s(s[1]), .y(y_input_10_layer_3_010[0]));
                logic [1:0] y_input_10_layer_2_0101;
                    logic [1:0] y_input_10_layer_1_01010;
                        always_comb y_input_10_layer_1_01010[0] = a2[650]; // wire
                        always_comb y_input_10_layer_1_01010[1] = a2[682]; // wire
                    mux2 mux_input_10_layer1_01010(.a(y_input_10_layer_1_01010), .s(s[0]), .y(y_input_10_layer_2_0101[0]));
                    logic [1:0] y_input_10_layer_1_01011;
                        always_comb y_input_10_layer_1_01011[0] = a2[714]; // wire
                        always_comb y_input_10_layer_1_01011[1] = a2[746]; // wire
                    mux2 mux_input_10_layer1_01011(.a(y_input_10_layer_1_01011), .s(s[0]), .y(y_input_10_layer_2_0101[1]));
                mux2 mux_input_10_layer2_0101 (.a(y_input_10_layer_2_0101), .s(s[1]), .y(y_input_10_layer_3_010[1]));
            mux2 mux_input_10_layer3_010  (.a(y_input_10_layer_3_010), .s(s[2]), .y(y_input_10_layer_4_01[0]));
            logic [1:0] y_input_10_layer_3_011;
                logic [1:0] y_input_10_layer_2_0110;
                    logic [1:0] y_input_10_layer_1_01100;
                        always_comb y_input_10_layer_1_01100[0] = a2[778]; // wire
                        always_comb y_input_10_layer_1_01100[1] = a2[810]; // wire
                    mux2 mux_input_10_layer1_01100(.a(y_input_10_layer_1_01100), .s(s[0]), .y(y_input_10_layer_2_0110[0]));
                    logic [1:0] y_input_10_layer_1_01101;
                        always_comb y_input_10_layer_1_01101[0] = a2[842]; // wire
                        always_comb y_input_10_layer_1_01101[1] = a2[874]; // wire
                    mux2 mux_input_10_layer1_01101(.a(y_input_10_layer_1_01101), .s(s[0]), .y(y_input_10_layer_2_0110[1]));
                mux2 mux_input_10_layer2_0110 (.a(y_input_10_layer_2_0110), .s(s[1]), .y(y_input_10_layer_3_011[0]));
                logic [1:0] y_input_10_layer_2_0111;
                    logic [1:0] y_input_10_layer_1_01110;
                        always_comb y_input_10_layer_1_01110[0] = a2[906]; // wire
                        always_comb y_input_10_layer_1_01110[1] = a2[938]; // wire
                    mux2 mux_input_10_layer1_01110(.a(y_input_10_layer_1_01110), .s(s[0]), .y(y_input_10_layer_2_0111[0]));
                    logic [1:0] y_input_10_layer_1_01111;
                        always_comb y_input_10_layer_1_01111[0] = a2[970]; // wire
                        always_comb y_input_10_layer_1_01111[1] = a2[1002]; // wire
                    mux2 mux_input_10_layer1_01111(.a(y_input_10_layer_1_01111), .s(s[0]), .y(y_input_10_layer_2_0111[1]));
                mux2 mux_input_10_layer2_0111 (.a(y_input_10_layer_2_0111), .s(s[1]), .y(y_input_10_layer_3_011[1]));
            mux2 mux_input_10_layer3_011  (.a(y_input_10_layer_3_011), .s(s[2]), .y(y_input_10_layer_4_01[1]));
        mux2 mux_input_10_layer4_01   (.a(y_input_10_layer_4_01), .s(s[3]), .y(y_input_10_layer_5_0[1]));
    mux2 mux_input_10_layer5_0    (.a(y_input_10_layer_5_0), .s(s[4]), .y(y[10]));
            
            ////////////////////////   INPUT WIRE 11   ////////////////////////
            
                logic [1:0] y_input_11_layer_5_0;
        logic [1:0] y_input_11_layer_4_00;
            logic [1:0] y_input_11_layer_3_000;
                logic [1:0] y_input_11_layer_2_0000;
                    logic [1:0] y_input_11_layer_1_00000;
                        always_comb y_input_11_layer_1_00000[0] = a2[11]; // wire
                        always_comb y_input_11_layer_1_00000[1] = a2[43]; // wire
                    mux2 mux_input_11_layer1_00000(.a(y_input_11_layer_1_00000), .s(s[0]), .y(y_input_11_layer_2_0000[0]));
                    logic [1:0] y_input_11_layer_1_00001;
                        always_comb y_input_11_layer_1_00001[0] = a2[75]; // wire
                        always_comb y_input_11_layer_1_00001[1] = a2[107]; // wire
                    mux2 mux_input_11_layer1_00001(.a(y_input_11_layer_1_00001), .s(s[0]), .y(y_input_11_layer_2_0000[1]));
                mux2 mux_input_11_layer2_0000 (.a(y_input_11_layer_2_0000), .s(s[1]), .y(y_input_11_layer_3_000[0]));
                logic [1:0] y_input_11_layer_2_0001;
                    logic [1:0] y_input_11_layer_1_00010;
                        always_comb y_input_11_layer_1_00010[0] = a2[139]; // wire
                        always_comb y_input_11_layer_1_00010[1] = a2[171]; // wire
                    mux2 mux_input_11_layer1_00010(.a(y_input_11_layer_1_00010), .s(s[0]), .y(y_input_11_layer_2_0001[0]));
                    logic [1:0] y_input_11_layer_1_00011;
                        always_comb y_input_11_layer_1_00011[0] = a2[203]; // wire
                        always_comb y_input_11_layer_1_00011[1] = a2[235]; // wire
                    mux2 mux_input_11_layer1_00011(.a(y_input_11_layer_1_00011), .s(s[0]), .y(y_input_11_layer_2_0001[1]));
                mux2 mux_input_11_layer2_0001 (.a(y_input_11_layer_2_0001), .s(s[1]), .y(y_input_11_layer_3_000[1]));
            mux2 mux_input_11_layer3_000  (.a(y_input_11_layer_3_000), .s(s[2]), .y(y_input_11_layer_4_00[0]));
            logic [1:0] y_input_11_layer_3_001;
                logic [1:0] y_input_11_layer_2_0010;
                    logic [1:0] y_input_11_layer_1_00100;
                        always_comb y_input_11_layer_1_00100[0] = a2[267]; // wire
                        always_comb y_input_11_layer_1_00100[1] = a2[299]; // wire
                    mux2 mux_input_11_layer1_00100(.a(y_input_11_layer_1_00100), .s(s[0]), .y(y_input_11_layer_2_0010[0]));
                    logic [1:0] y_input_11_layer_1_00101;
                        always_comb y_input_11_layer_1_00101[0] = a2[331]; // wire
                        always_comb y_input_11_layer_1_00101[1] = a2[363]; // wire
                    mux2 mux_input_11_layer1_00101(.a(y_input_11_layer_1_00101), .s(s[0]), .y(y_input_11_layer_2_0010[1]));
                mux2 mux_input_11_layer2_0010 (.a(y_input_11_layer_2_0010), .s(s[1]), .y(y_input_11_layer_3_001[0]));
                logic [1:0] y_input_11_layer_2_0011;
                    logic [1:0] y_input_11_layer_1_00110;
                        always_comb y_input_11_layer_1_00110[0] = a2[395]; // wire
                        always_comb y_input_11_layer_1_00110[1] = a2[427]; // wire
                    mux2 mux_input_11_layer1_00110(.a(y_input_11_layer_1_00110), .s(s[0]), .y(y_input_11_layer_2_0011[0]));
                    logic [1:0] y_input_11_layer_1_00111;
                        always_comb y_input_11_layer_1_00111[0] = a2[459]; // wire
                        always_comb y_input_11_layer_1_00111[1] = a2[491]; // wire
                    mux2 mux_input_11_layer1_00111(.a(y_input_11_layer_1_00111), .s(s[0]), .y(y_input_11_layer_2_0011[1]));
                mux2 mux_input_11_layer2_0011 (.a(y_input_11_layer_2_0011), .s(s[1]), .y(y_input_11_layer_3_001[1]));
            mux2 mux_input_11_layer3_001  (.a(y_input_11_layer_3_001), .s(s[2]), .y(y_input_11_layer_4_00[1]));
        mux2 mux_input_11_layer4_00   (.a(y_input_11_layer_4_00), .s(s[3]), .y(y_input_11_layer_5_0[0]));
        logic [1:0] y_input_11_layer_4_01;
            logic [1:0] y_input_11_layer_3_010;
                logic [1:0] y_input_11_layer_2_0100;
                    logic [1:0] y_input_11_layer_1_01000;
                        always_comb y_input_11_layer_1_01000[0] = a2[523]; // wire
                        always_comb y_input_11_layer_1_01000[1] = a2[555]; // wire
                    mux2 mux_input_11_layer1_01000(.a(y_input_11_layer_1_01000), .s(s[0]), .y(y_input_11_layer_2_0100[0]));
                    logic [1:0] y_input_11_layer_1_01001;
                        always_comb y_input_11_layer_1_01001[0] = a2[587]; // wire
                        always_comb y_input_11_layer_1_01001[1] = a2[619]; // wire
                    mux2 mux_input_11_layer1_01001(.a(y_input_11_layer_1_01001), .s(s[0]), .y(y_input_11_layer_2_0100[1]));
                mux2 mux_input_11_layer2_0100 (.a(y_input_11_layer_2_0100), .s(s[1]), .y(y_input_11_layer_3_010[0]));
                logic [1:0] y_input_11_layer_2_0101;
                    logic [1:0] y_input_11_layer_1_01010;
                        always_comb y_input_11_layer_1_01010[0] = a2[651]; // wire
                        always_comb y_input_11_layer_1_01010[1] = a2[683]; // wire
                    mux2 mux_input_11_layer1_01010(.a(y_input_11_layer_1_01010), .s(s[0]), .y(y_input_11_layer_2_0101[0]));
                    logic [1:0] y_input_11_layer_1_01011;
                        always_comb y_input_11_layer_1_01011[0] = a2[715]; // wire
                        always_comb y_input_11_layer_1_01011[1] = a2[747]; // wire
                    mux2 mux_input_11_layer1_01011(.a(y_input_11_layer_1_01011), .s(s[0]), .y(y_input_11_layer_2_0101[1]));
                mux2 mux_input_11_layer2_0101 (.a(y_input_11_layer_2_0101), .s(s[1]), .y(y_input_11_layer_3_010[1]));
            mux2 mux_input_11_layer3_010  (.a(y_input_11_layer_3_010), .s(s[2]), .y(y_input_11_layer_4_01[0]));
            logic [1:0] y_input_11_layer_3_011;
                logic [1:0] y_input_11_layer_2_0110;
                    logic [1:0] y_input_11_layer_1_01100;
                        always_comb y_input_11_layer_1_01100[0] = a2[779]; // wire
                        always_comb y_input_11_layer_1_01100[1] = a2[811]; // wire
                    mux2 mux_input_11_layer1_01100(.a(y_input_11_layer_1_01100), .s(s[0]), .y(y_input_11_layer_2_0110[0]));
                    logic [1:0] y_input_11_layer_1_01101;
                        always_comb y_input_11_layer_1_01101[0] = a2[843]; // wire
                        always_comb y_input_11_layer_1_01101[1] = a2[875]; // wire
                    mux2 mux_input_11_layer1_01101(.a(y_input_11_layer_1_01101), .s(s[0]), .y(y_input_11_layer_2_0110[1]));
                mux2 mux_input_11_layer2_0110 (.a(y_input_11_layer_2_0110), .s(s[1]), .y(y_input_11_layer_3_011[0]));
                logic [1:0] y_input_11_layer_2_0111;
                    logic [1:0] y_input_11_layer_1_01110;
                        always_comb y_input_11_layer_1_01110[0] = a2[907]; // wire
                        always_comb y_input_11_layer_1_01110[1] = a2[939]; // wire
                    mux2 mux_input_11_layer1_01110(.a(y_input_11_layer_1_01110), .s(s[0]), .y(y_input_11_layer_2_0111[0]));
                    logic [1:0] y_input_11_layer_1_01111;
                        always_comb y_input_11_layer_1_01111[0] = a2[971]; // wire
                        always_comb y_input_11_layer_1_01111[1] = a2[1003]; // wire
                    mux2 mux_input_11_layer1_01111(.a(y_input_11_layer_1_01111), .s(s[0]), .y(y_input_11_layer_2_0111[1]));
                mux2 mux_input_11_layer2_0111 (.a(y_input_11_layer_2_0111), .s(s[1]), .y(y_input_11_layer_3_011[1]));
            mux2 mux_input_11_layer3_011  (.a(y_input_11_layer_3_011), .s(s[2]), .y(y_input_11_layer_4_01[1]));
        mux2 mux_input_11_layer4_01   (.a(y_input_11_layer_4_01), .s(s[3]), .y(y_input_11_layer_5_0[1]));
    mux2 mux_input_11_layer5_0    (.a(y_input_11_layer_5_0), .s(s[4]), .y(y[11]));
            
            ////////////////////////   INPUT WIRE 12   ////////////////////////
            
                logic [1:0] y_input_12_layer_5_0;
        logic [1:0] y_input_12_layer_4_00;
            logic [1:0] y_input_12_layer_3_000;
                logic [1:0] y_input_12_layer_2_0000;
                    logic [1:0] y_input_12_layer_1_00000;
                        always_comb y_input_12_layer_1_00000[0] = a2[12]; // wire
                        always_comb y_input_12_layer_1_00000[1] = a2[44]; // wire
                    mux2 mux_input_12_layer1_00000(.a(y_input_12_layer_1_00000), .s(s[0]), .y(y_input_12_layer_2_0000[0]));
                    logic [1:0] y_input_12_layer_1_00001;
                        always_comb y_input_12_layer_1_00001[0] = a2[76]; // wire
                        always_comb y_input_12_layer_1_00001[1] = a2[108]; // wire
                    mux2 mux_input_12_layer1_00001(.a(y_input_12_layer_1_00001), .s(s[0]), .y(y_input_12_layer_2_0000[1]));
                mux2 mux_input_12_layer2_0000 (.a(y_input_12_layer_2_0000), .s(s[1]), .y(y_input_12_layer_3_000[0]));
                logic [1:0] y_input_12_layer_2_0001;
                    logic [1:0] y_input_12_layer_1_00010;
                        always_comb y_input_12_layer_1_00010[0] = a2[140]; // wire
                        always_comb y_input_12_layer_1_00010[1] = a2[172]; // wire
                    mux2 mux_input_12_layer1_00010(.a(y_input_12_layer_1_00010), .s(s[0]), .y(y_input_12_layer_2_0001[0]));
                    logic [1:0] y_input_12_layer_1_00011;
                        always_comb y_input_12_layer_1_00011[0] = a2[204]; // wire
                        always_comb y_input_12_layer_1_00011[1] = a2[236]; // wire
                    mux2 mux_input_12_layer1_00011(.a(y_input_12_layer_1_00011), .s(s[0]), .y(y_input_12_layer_2_0001[1]));
                mux2 mux_input_12_layer2_0001 (.a(y_input_12_layer_2_0001), .s(s[1]), .y(y_input_12_layer_3_000[1]));
            mux2 mux_input_12_layer3_000  (.a(y_input_12_layer_3_000), .s(s[2]), .y(y_input_12_layer_4_00[0]));
            logic [1:0] y_input_12_layer_3_001;
                logic [1:0] y_input_12_layer_2_0010;
                    logic [1:0] y_input_12_layer_1_00100;
                        always_comb y_input_12_layer_1_00100[0] = a2[268]; // wire
                        always_comb y_input_12_layer_1_00100[1] = a2[300]; // wire
                    mux2 mux_input_12_layer1_00100(.a(y_input_12_layer_1_00100), .s(s[0]), .y(y_input_12_layer_2_0010[0]));
                    logic [1:0] y_input_12_layer_1_00101;
                        always_comb y_input_12_layer_1_00101[0] = a2[332]; // wire
                        always_comb y_input_12_layer_1_00101[1] = a2[364]; // wire
                    mux2 mux_input_12_layer1_00101(.a(y_input_12_layer_1_00101), .s(s[0]), .y(y_input_12_layer_2_0010[1]));
                mux2 mux_input_12_layer2_0010 (.a(y_input_12_layer_2_0010), .s(s[1]), .y(y_input_12_layer_3_001[0]));
                logic [1:0] y_input_12_layer_2_0011;
                    logic [1:0] y_input_12_layer_1_00110;
                        always_comb y_input_12_layer_1_00110[0] = a2[396]; // wire
                        always_comb y_input_12_layer_1_00110[1] = a2[428]; // wire
                    mux2 mux_input_12_layer1_00110(.a(y_input_12_layer_1_00110), .s(s[0]), .y(y_input_12_layer_2_0011[0]));
                    logic [1:0] y_input_12_layer_1_00111;
                        always_comb y_input_12_layer_1_00111[0] = a2[460]; // wire
                        always_comb y_input_12_layer_1_00111[1] = a2[492]; // wire
                    mux2 mux_input_12_layer1_00111(.a(y_input_12_layer_1_00111), .s(s[0]), .y(y_input_12_layer_2_0011[1]));
                mux2 mux_input_12_layer2_0011 (.a(y_input_12_layer_2_0011), .s(s[1]), .y(y_input_12_layer_3_001[1]));
            mux2 mux_input_12_layer3_001  (.a(y_input_12_layer_3_001), .s(s[2]), .y(y_input_12_layer_4_00[1]));
        mux2 mux_input_12_layer4_00   (.a(y_input_12_layer_4_00), .s(s[3]), .y(y_input_12_layer_5_0[0]));
        logic [1:0] y_input_12_layer_4_01;
            logic [1:0] y_input_12_layer_3_010;
                logic [1:0] y_input_12_layer_2_0100;
                    logic [1:0] y_input_12_layer_1_01000;
                        always_comb y_input_12_layer_1_01000[0] = a2[524]; // wire
                        always_comb y_input_12_layer_1_01000[1] = a2[556]; // wire
                    mux2 mux_input_12_layer1_01000(.a(y_input_12_layer_1_01000), .s(s[0]), .y(y_input_12_layer_2_0100[0]));
                    logic [1:0] y_input_12_layer_1_01001;
                        always_comb y_input_12_layer_1_01001[0] = a2[588]; // wire
                        always_comb y_input_12_layer_1_01001[1] = a2[620]; // wire
                    mux2 mux_input_12_layer1_01001(.a(y_input_12_layer_1_01001), .s(s[0]), .y(y_input_12_layer_2_0100[1]));
                mux2 mux_input_12_layer2_0100 (.a(y_input_12_layer_2_0100), .s(s[1]), .y(y_input_12_layer_3_010[0]));
                logic [1:0] y_input_12_layer_2_0101;
                    logic [1:0] y_input_12_layer_1_01010;
                        always_comb y_input_12_layer_1_01010[0] = a2[652]; // wire
                        always_comb y_input_12_layer_1_01010[1] = a2[684]; // wire
                    mux2 mux_input_12_layer1_01010(.a(y_input_12_layer_1_01010), .s(s[0]), .y(y_input_12_layer_2_0101[0]));
                    logic [1:0] y_input_12_layer_1_01011;
                        always_comb y_input_12_layer_1_01011[0] = a2[716]; // wire
                        always_comb y_input_12_layer_1_01011[1] = a2[748]; // wire
                    mux2 mux_input_12_layer1_01011(.a(y_input_12_layer_1_01011), .s(s[0]), .y(y_input_12_layer_2_0101[1]));
                mux2 mux_input_12_layer2_0101 (.a(y_input_12_layer_2_0101), .s(s[1]), .y(y_input_12_layer_3_010[1]));
            mux2 mux_input_12_layer3_010  (.a(y_input_12_layer_3_010), .s(s[2]), .y(y_input_12_layer_4_01[0]));
            logic [1:0] y_input_12_layer_3_011;
                logic [1:0] y_input_12_layer_2_0110;
                    logic [1:0] y_input_12_layer_1_01100;
                        always_comb y_input_12_layer_1_01100[0] = a2[780]; // wire
                        always_comb y_input_12_layer_1_01100[1] = a2[812]; // wire
                    mux2 mux_input_12_layer1_01100(.a(y_input_12_layer_1_01100), .s(s[0]), .y(y_input_12_layer_2_0110[0]));
                    logic [1:0] y_input_12_layer_1_01101;
                        always_comb y_input_12_layer_1_01101[0] = a2[844]; // wire
                        always_comb y_input_12_layer_1_01101[1] = a2[876]; // wire
                    mux2 mux_input_12_layer1_01101(.a(y_input_12_layer_1_01101), .s(s[0]), .y(y_input_12_layer_2_0110[1]));
                mux2 mux_input_12_layer2_0110 (.a(y_input_12_layer_2_0110), .s(s[1]), .y(y_input_12_layer_3_011[0]));
                logic [1:0] y_input_12_layer_2_0111;
                    logic [1:0] y_input_12_layer_1_01110;
                        always_comb y_input_12_layer_1_01110[0] = a2[908]; // wire
                        always_comb y_input_12_layer_1_01110[1] = a2[940]; // wire
                    mux2 mux_input_12_layer1_01110(.a(y_input_12_layer_1_01110), .s(s[0]), .y(y_input_12_layer_2_0111[0]));
                    logic [1:0] y_input_12_layer_1_01111;
                        always_comb y_input_12_layer_1_01111[0] = a2[972]; // wire
                        always_comb y_input_12_layer_1_01111[1] = a2[1004]; // wire
                    mux2 mux_input_12_layer1_01111(.a(y_input_12_layer_1_01111), .s(s[0]), .y(y_input_12_layer_2_0111[1]));
                mux2 mux_input_12_layer2_0111 (.a(y_input_12_layer_2_0111), .s(s[1]), .y(y_input_12_layer_3_011[1]));
            mux2 mux_input_12_layer3_011  (.a(y_input_12_layer_3_011), .s(s[2]), .y(y_input_12_layer_4_01[1]));
        mux2 mux_input_12_layer4_01   (.a(y_input_12_layer_4_01), .s(s[3]), .y(y_input_12_layer_5_0[1]));
    mux2 mux_input_12_layer5_0    (.a(y_input_12_layer_5_0), .s(s[4]), .y(y[12]));
            
            ////////////////////////   INPUT WIRE 13   ////////////////////////
            
                logic [1:0] y_input_13_layer_5_0;
        logic [1:0] y_input_13_layer_4_00;
            logic [1:0] y_input_13_layer_3_000;
                logic [1:0] y_input_13_layer_2_0000;
                    logic [1:0] y_input_13_layer_1_00000;
                        always_comb y_input_13_layer_1_00000[0] = a2[13]; // wire
                        always_comb y_input_13_layer_1_00000[1] = a2[45]; // wire
                    mux2 mux_input_13_layer1_00000(.a(y_input_13_layer_1_00000), .s(s[0]), .y(y_input_13_layer_2_0000[0]));
                    logic [1:0] y_input_13_layer_1_00001;
                        always_comb y_input_13_layer_1_00001[0] = a2[77]; // wire
                        always_comb y_input_13_layer_1_00001[1] = a2[109]; // wire
                    mux2 mux_input_13_layer1_00001(.a(y_input_13_layer_1_00001), .s(s[0]), .y(y_input_13_layer_2_0000[1]));
                mux2 mux_input_13_layer2_0000 (.a(y_input_13_layer_2_0000), .s(s[1]), .y(y_input_13_layer_3_000[0]));
                logic [1:0] y_input_13_layer_2_0001;
                    logic [1:0] y_input_13_layer_1_00010;
                        always_comb y_input_13_layer_1_00010[0] = a2[141]; // wire
                        always_comb y_input_13_layer_1_00010[1] = a2[173]; // wire
                    mux2 mux_input_13_layer1_00010(.a(y_input_13_layer_1_00010), .s(s[0]), .y(y_input_13_layer_2_0001[0]));
                    logic [1:0] y_input_13_layer_1_00011;
                        always_comb y_input_13_layer_1_00011[0] = a2[205]; // wire
                        always_comb y_input_13_layer_1_00011[1] = a2[237]; // wire
                    mux2 mux_input_13_layer1_00011(.a(y_input_13_layer_1_00011), .s(s[0]), .y(y_input_13_layer_2_0001[1]));
                mux2 mux_input_13_layer2_0001 (.a(y_input_13_layer_2_0001), .s(s[1]), .y(y_input_13_layer_3_000[1]));
            mux2 mux_input_13_layer3_000  (.a(y_input_13_layer_3_000), .s(s[2]), .y(y_input_13_layer_4_00[0]));
            logic [1:0] y_input_13_layer_3_001;
                logic [1:0] y_input_13_layer_2_0010;
                    logic [1:0] y_input_13_layer_1_00100;
                        always_comb y_input_13_layer_1_00100[0] = a2[269]; // wire
                        always_comb y_input_13_layer_1_00100[1] = a2[301]; // wire
                    mux2 mux_input_13_layer1_00100(.a(y_input_13_layer_1_00100), .s(s[0]), .y(y_input_13_layer_2_0010[0]));
                    logic [1:0] y_input_13_layer_1_00101;
                        always_comb y_input_13_layer_1_00101[0] = a2[333]; // wire
                        always_comb y_input_13_layer_1_00101[1] = a2[365]; // wire
                    mux2 mux_input_13_layer1_00101(.a(y_input_13_layer_1_00101), .s(s[0]), .y(y_input_13_layer_2_0010[1]));
                mux2 mux_input_13_layer2_0010 (.a(y_input_13_layer_2_0010), .s(s[1]), .y(y_input_13_layer_3_001[0]));
                logic [1:0] y_input_13_layer_2_0011;
                    logic [1:0] y_input_13_layer_1_00110;
                        always_comb y_input_13_layer_1_00110[0] = a2[397]; // wire
                        always_comb y_input_13_layer_1_00110[1] = a2[429]; // wire
                    mux2 mux_input_13_layer1_00110(.a(y_input_13_layer_1_00110), .s(s[0]), .y(y_input_13_layer_2_0011[0]));
                    logic [1:0] y_input_13_layer_1_00111;
                        always_comb y_input_13_layer_1_00111[0] = a2[461]; // wire
                        always_comb y_input_13_layer_1_00111[1] = a2[493]; // wire
                    mux2 mux_input_13_layer1_00111(.a(y_input_13_layer_1_00111), .s(s[0]), .y(y_input_13_layer_2_0011[1]));
                mux2 mux_input_13_layer2_0011 (.a(y_input_13_layer_2_0011), .s(s[1]), .y(y_input_13_layer_3_001[1]));
            mux2 mux_input_13_layer3_001  (.a(y_input_13_layer_3_001), .s(s[2]), .y(y_input_13_layer_4_00[1]));
        mux2 mux_input_13_layer4_00   (.a(y_input_13_layer_4_00), .s(s[3]), .y(y_input_13_layer_5_0[0]));
        logic [1:0] y_input_13_layer_4_01;
            logic [1:0] y_input_13_layer_3_010;
                logic [1:0] y_input_13_layer_2_0100;
                    logic [1:0] y_input_13_layer_1_01000;
                        always_comb y_input_13_layer_1_01000[0] = a2[525]; // wire
                        always_comb y_input_13_layer_1_01000[1] = a2[557]; // wire
                    mux2 mux_input_13_layer1_01000(.a(y_input_13_layer_1_01000), .s(s[0]), .y(y_input_13_layer_2_0100[0]));
                    logic [1:0] y_input_13_layer_1_01001;
                        always_comb y_input_13_layer_1_01001[0] = a2[589]; // wire
                        always_comb y_input_13_layer_1_01001[1] = a2[621]; // wire
                    mux2 mux_input_13_layer1_01001(.a(y_input_13_layer_1_01001), .s(s[0]), .y(y_input_13_layer_2_0100[1]));
                mux2 mux_input_13_layer2_0100 (.a(y_input_13_layer_2_0100), .s(s[1]), .y(y_input_13_layer_3_010[0]));
                logic [1:0] y_input_13_layer_2_0101;
                    logic [1:0] y_input_13_layer_1_01010;
                        always_comb y_input_13_layer_1_01010[0] = a2[653]; // wire
                        always_comb y_input_13_layer_1_01010[1] = a2[685]; // wire
                    mux2 mux_input_13_layer1_01010(.a(y_input_13_layer_1_01010), .s(s[0]), .y(y_input_13_layer_2_0101[0]));
                    logic [1:0] y_input_13_layer_1_01011;
                        always_comb y_input_13_layer_1_01011[0] = a2[717]; // wire
                        always_comb y_input_13_layer_1_01011[1] = a2[749]; // wire
                    mux2 mux_input_13_layer1_01011(.a(y_input_13_layer_1_01011), .s(s[0]), .y(y_input_13_layer_2_0101[1]));
                mux2 mux_input_13_layer2_0101 (.a(y_input_13_layer_2_0101), .s(s[1]), .y(y_input_13_layer_3_010[1]));
            mux2 mux_input_13_layer3_010  (.a(y_input_13_layer_3_010), .s(s[2]), .y(y_input_13_layer_4_01[0]));
            logic [1:0] y_input_13_layer_3_011;
                logic [1:0] y_input_13_layer_2_0110;
                    logic [1:0] y_input_13_layer_1_01100;
                        always_comb y_input_13_layer_1_01100[0] = a2[781]; // wire
                        always_comb y_input_13_layer_1_01100[1] = a2[813]; // wire
                    mux2 mux_input_13_layer1_01100(.a(y_input_13_layer_1_01100), .s(s[0]), .y(y_input_13_layer_2_0110[0]));
                    logic [1:0] y_input_13_layer_1_01101;
                        always_comb y_input_13_layer_1_01101[0] = a2[845]; // wire
                        always_comb y_input_13_layer_1_01101[1] = a2[877]; // wire
                    mux2 mux_input_13_layer1_01101(.a(y_input_13_layer_1_01101), .s(s[0]), .y(y_input_13_layer_2_0110[1]));
                mux2 mux_input_13_layer2_0110 (.a(y_input_13_layer_2_0110), .s(s[1]), .y(y_input_13_layer_3_011[0]));
                logic [1:0] y_input_13_layer_2_0111;
                    logic [1:0] y_input_13_layer_1_01110;
                        always_comb y_input_13_layer_1_01110[0] = a2[909]; // wire
                        always_comb y_input_13_layer_1_01110[1] = a2[941]; // wire
                    mux2 mux_input_13_layer1_01110(.a(y_input_13_layer_1_01110), .s(s[0]), .y(y_input_13_layer_2_0111[0]));
                    logic [1:0] y_input_13_layer_1_01111;
                        always_comb y_input_13_layer_1_01111[0] = a2[973]; // wire
                        always_comb y_input_13_layer_1_01111[1] = a2[1005]; // wire
                    mux2 mux_input_13_layer1_01111(.a(y_input_13_layer_1_01111), .s(s[0]), .y(y_input_13_layer_2_0111[1]));
                mux2 mux_input_13_layer2_0111 (.a(y_input_13_layer_2_0111), .s(s[1]), .y(y_input_13_layer_3_011[1]));
            mux2 mux_input_13_layer3_011  (.a(y_input_13_layer_3_011), .s(s[2]), .y(y_input_13_layer_4_01[1]));
        mux2 mux_input_13_layer4_01   (.a(y_input_13_layer_4_01), .s(s[3]), .y(y_input_13_layer_5_0[1]));
    mux2 mux_input_13_layer5_0    (.a(y_input_13_layer_5_0), .s(s[4]), .y(y[13]));
            
            ////////////////////////   INPUT WIRE 14   ////////////////////////
            
                logic [1:0] y_input_14_layer_5_0;
        logic [1:0] y_input_14_layer_4_00;
            logic [1:0] y_input_14_layer_3_000;
                logic [1:0] y_input_14_layer_2_0000;
                    logic [1:0] y_input_14_layer_1_00000;
                        always_comb y_input_14_layer_1_00000[0] = a2[14]; // wire
                        always_comb y_input_14_layer_1_00000[1] = a2[46]; // wire
                    mux2 mux_input_14_layer1_00000(.a(y_input_14_layer_1_00000), .s(s[0]), .y(y_input_14_layer_2_0000[0]));
                    logic [1:0] y_input_14_layer_1_00001;
                        always_comb y_input_14_layer_1_00001[0] = a2[78]; // wire
                        always_comb y_input_14_layer_1_00001[1] = a2[110]; // wire
                    mux2 mux_input_14_layer1_00001(.a(y_input_14_layer_1_00001), .s(s[0]), .y(y_input_14_layer_2_0000[1]));
                mux2 mux_input_14_layer2_0000 (.a(y_input_14_layer_2_0000), .s(s[1]), .y(y_input_14_layer_3_000[0]));
                logic [1:0] y_input_14_layer_2_0001;
                    logic [1:0] y_input_14_layer_1_00010;
                        always_comb y_input_14_layer_1_00010[0] = a2[142]; // wire
                        always_comb y_input_14_layer_1_00010[1] = a2[174]; // wire
                    mux2 mux_input_14_layer1_00010(.a(y_input_14_layer_1_00010), .s(s[0]), .y(y_input_14_layer_2_0001[0]));
                    logic [1:0] y_input_14_layer_1_00011;
                        always_comb y_input_14_layer_1_00011[0] = a2[206]; // wire
                        always_comb y_input_14_layer_1_00011[1] = a2[238]; // wire
                    mux2 mux_input_14_layer1_00011(.a(y_input_14_layer_1_00011), .s(s[0]), .y(y_input_14_layer_2_0001[1]));
                mux2 mux_input_14_layer2_0001 (.a(y_input_14_layer_2_0001), .s(s[1]), .y(y_input_14_layer_3_000[1]));
            mux2 mux_input_14_layer3_000  (.a(y_input_14_layer_3_000), .s(s[2]), .y(y_input_14_layer_4_00[0]));
            logic [1:0] y_input_14_layer_3_001;
                logic [1:0] y_input_14_layer_2_0010;
                    logic [1:0] y_input_14_layer_1_00100;
                        always_comb y_input_14_layer_1_00100[0] = a2[270]; // wire
                        always_comb y_input_14_layer_1_00100[1] = a2[302]; // wire
                    mux2 mux_input_14_layer1_00100(.a(y_input_14_layer_1_00100), .s(s[0]), .y(y_input_14_layer_2_0010[0]));
                    logic [1:0] y_input_14_layer_1_00101;
                        always_comb y_input_14_layer_1_00101[0] = a2[334]; // wire
                        always_comb y_input_14_layer_1_00101[1] = a2[366]; // wire
                    mux2 mux_input_14_layer1_00101(.a(y_input_14_layer_1_00101), .s(s[0]), .y(y_input_14_layer_2_0010[1]));
                mux2 mux_input_14_layer2_0010 (.a(y_input_14_layer_2_0010), .s(s[1]), .y(y_input_14_layer_3_001[0]));
                logic [1:0] y_input_14_layer_2_0011;
                    logic [1:0] y_input_14_layer_1_00110;
                        always_comb y_input_14_layer_1_00110[0] = a2[398]; // wire
                        always_comb y_input_14_layer_1_00110[1] = a2[430]; // wire
                    mux2 mux_input_14_layer1_00110(.a(y_input_14_layer_1_00110), .s(s[0]), .y(y_input_14_layer_2_0011[0]));
                    logic [1:0] y_input_14_layer_1_00111;
                        always_comb y_input_14_layer_1_00111[0] = a2[462]; // wire
                        always_comb y_input_14_layer_1_00111[1] = a2[494]; // wire
                    mux2 mux_input_14_layer1_00111(.a(y_input_14_layer_1_00111), .s(s[0]), .y(y_input_14_layer_2_0011[1]));
                mux2 mux_input_14_layer2_0011 (.a(y_input_14_layer_2_0011), .s(s[1]), .y(y_input_14_layer_3_001[1]));
            mux2 mux_input_14_layer3_001  (.a(y_input_14_layer_3_001), .s(s[2]), .y(y_input_14_layer_4_00[1]));
        mux2 mux_input_14_layer4_00   (.a(y_input_14_layer_4_00), .s(s[3]), .y(y_input_14_layer_5_0[0]));
        logic [1:0] y_input_14_layer_4_01;
            logic [1:0] y_input_14_layer_3_010;
                logic [1:0] y_input_14_layer_2_0100;
                    logic [1:0] y_input_14_layer_1_01000;
                        always_comb y_input_14_layer_1_01000[0] = a2[526]; // wire
                        always_comb y_input_14_layer_1_01000[1] = a2[558]; // wire
                    mux2 mux_input_14_layer1_01000(.a(y_input_14_layer_1_01000), .s(s[0]), .y(y_input_14_layer_2_0100[0]));
                    logic [1:0] y_input_14_layer_1_01001;
                        always_comb y_input_14_layer_1_01001[0] = a2[590]; // wire
                        always_comb y_input_14_layer_1_01001[1] = a2[622]; // wire
                    mux2 mux_input_14_layer1_01001(.a(y_input_14_layer_1_01001), .s(s[0]), .y(y_input_14_layer_2_0100[1]));
                mux2 mux_input_14_layer2_0100 (.a(y_input_14_layer_2_0100), .s(s[1]), .y(y_input_14_layer_3_010[0]));
                logic [1:0] y_input_14_layer_2_0101;
                    logic [1:0] y_input_14_layer_1_01010;
                        always_comb y_input_14_layer_1_01010[0] = a2[654]; // wire
                        always_comb y_input_14_layer_1_01010[1] = a2[686]; // wire
                    mux2 mux_input_14_layer1_01010(.a(y_input_14_layer_1_01010), .s(s[0]), .y(y_input_14_layer_2_0101[0]));
                    logic [1:0] y_input_14_layer_1_01011;
                        always_comb y_input_14_layer_1_01011[0] = a2[718]; // wire
                        always_comb y_input_14_layer_1_01011[1] = a2[750]; // wire
                    mux2 mux_input_14_layer1_01011(.a(y_input_14_layer_1_01011), .s(s[0]), .y(y_input_14_layer_2_0101[1]));
                mux2 mux_input_14_layer2_0101 (.a(y_input_14_layer_2_0101), .s(s[1]), .y(y_input_14_layer_3_010[1]));
            mux2 mux_input_14_layer3_010  (.a(y_input_14_layer_3_010), .s(s[2]), .y(y_input_14_layer_4_01[0]));
            logic [1:0] y_input_14_layer_3_011;
                logic [1:0] y_input_14_layer_2_0110;
                    logic [1:0] y_input_14_layer_1_01100;
                        always_comb y_input_14_layer_1_01100[0] = a2[782]; // wire
                        always_comb y_input_14_layer_1_01100[1] = a2[814]; // wire
                    mux2 mux_input_14_layer1_01100(.a(y_input_14_layer_1_01100), .s(s[0]), .y(y_input_14_layer_2_0110[0]));
                    logic [1:0] y_input_14_layer_1_01101;
                        always_comb y_input_14_layer_1_01101[0] = a2[846]; // wire
                        always_comb y_input_14_layer_1_01101[1] = a2[878]; // wire
                    mux2 mux_input_14_layer1_01101(.a(y_input_14_layer_1_01101), .s(s[0]), .y(y_input_14_layer_2_0110[1]));
                mux2 mux_input_14_layer2_0110 (.a(y_input_14_layer_2_0110), .s(s[1]), .y(y_input_14_layer_3_011[0]));
                logic [1:0] y_input_14_layer_2_0111;
                    logic [1:0] y_input_14_layer_1_01110;
                        always_comb y_input_14_layer_1_01110[0] = a2[910]; // wire
                        always_comb y_input_14_layer_1_01110[1] = a2[942]; // wire
                    mux2 mux_input_14_layer1_01110(.a(y_input_14_layer_1_01110), .s(s[0]), .y(y_input_14_layer_2_0111[0]));
                    logic [1:0] y_input_14_layer_1_01111;
                        always_comb y_input_14_layer_1_01111[0] = a2[974]; // wire
                        always_comb y_input_14_layer_1_01111[1] = a2[1006]; // wire
                    mux2 mux_input_14_layer1_01111(.a(y_input_14_layer_1_01111), .s(s[0]), .y(y_input_14_layer_2_0111[1]));
                mux2 mux_input_14_layer2_0111 (.a(y_input_14_layer_2_0111), .s(s[1]), .y(y_input_14_layer_3_011[1]));
            mux2 mux_input_14_layer3_011  (.a(y_input_14_layer_3_011), .s(s[2]), .y(y_input_14_layer_4_01[1]));
        mux2 mux_input_14_layer4_01   (.a(y_input_14_layer_4_01), .s(s[3]), .y(y_input_14_layer_5_0[1]));
    mux2 mux_input_14_layer5_0    (.a(y_input_14_layer_5_0), .s(s[4]), .y(y[14]));
            
            ////////////////////////   INPUT WIRE 15   ////////////////////////
            
                logic [1:0] y_input_15_layer_5_0;
        logic [1:0] y_input_15_layer_4_00;
            logic [1:0] y_input_15_layer_3_000;
                logic [1:0] y_input_15_layer_2_0000;
                    logic [1:0] y_input_15_layer_1_00000;
                        always_comb y_input_15_layer_1_00000[0] = a2[15]; // wire
                        always_comb y_input_15_layer_1_00000[1] = a2[47]; // wire
                    mux2 mux_input_15_layer1_00000(.a(y_input_15_layer_1_00000), .s(s[0]), .y(y_input_15_layer_2_0000[0]));
                    logic [1:0] y_input_15_layer_1_00001;
                        always_comb y_input_15_layer_1_00001[0] = a2[79]; // wire
                        always_comb y_input_15_layer_1_00001[1] = a2[111]; // wire
                    mux2 mux_input_15_layer1_00001(.a(y_input_15_layer_1_00001), .s(s[0]), .y(y_input_15_layer_2_0000[1]));
                mux2 mux_input_15_layer2_0000 (.a(y_input_15_layer_2_0000), .s(s[1]), .y(y_input_15_layer_3_000[0]));
                logic [1:0] y_input_15_layer_2_0001;
                    logic [1:0] y_input_15_layer_1_00010;
                        always_comb y_input_15_layer_1_00010[0] = a2[143]; // wire
                        always_comb y_input_15_layer_1_00010[1] = a2[175]; // wire
                    mux2 mux_input_15_layer1_00010(.a(y_input_15_layer_1_00010), .s(s[0]), .y(y_input_15_layer_2_0001[0]));
                    logic [1:0] y_input_15_layer_1_00011;
                        always_comb y_input_15_layer_1_00011[0] = a2[207]; // wire
                        always_comb y_input_15_layer_1_00011[1] = a2[239]; // wire
                    mux2 mux_input_15_layer1_00011(.a(y_input_15_layer_1_00011), .s(s[0]), .y(y_input_15_layer_2_0001[1]));
                mux2 mux_input_15_layer2_0001 (.a(y_input_15_layer_2_0001), .s(s[1]), .y(y_input_15_layer_3_000[1]));
            mux2 mux_input_15_layer3_000  (.a(y_input_15_layer_3_000), .s(s[2]), .y(y_input_15_layer_4_00[0]));
            logic [1:0] y_input_15_layer_3_001;
                logic [1:0] y_input_15_layer_2_0010;
                    logic [1:0] y_input_15_layer_1_00100;
                        always_comb y_input_15_layer_1_00100[0] = a2[271]; // wire
                        always_comb y_input_15_layer_1_00100[1] = a2[303]; // wire
                    mux2 mux_input_15_layer1_00100(.a(y_input_15_layer_1_00100), .s(s[0]), .y(y_input_15_layer_2_0010[0]));
                    logic [1:0] y_input_15_layer_1_00101;
                        always_comb y_input_15_layer_1_00101[0] = a2[335]; // wire
                        always_comb y_input_15_layer_1_00101[1] = a2[367]; // wire
                    mux2 mux_input_15_layer1_00101(.a(y_input_15_layer_1_00101), .s(s[0]), .y(y_input_15_layer_2_0010[1]));
                mux2 mux_input_15_layer2_0010 (.a(y_input_15_layer_2_0010), .s(s[1]), .y(y_input_15_layer_3_001[0]));
                logic [1:0] y_input_15_layer_2_0011;
                    logic [1:0] y_input_15_layer_1_00110;
                        always_comb y_input_15_layer_1_00110[0] = a2[399]; // wire
                        always_comb y_input_15_layer_1_00110[1] = a2[431]; // wire
                    mux2 mux_input_15_layer1_00110(.a(y_input_15_layer_1_00110), .s(s[0]), .y(y_input_15_layer_2_0011[0]));
                    logic [1:0] y_input_15_layer_1_00111;
                        always_comb y_input_15_layer_1_00111[0] = a2[463]; // wire
                        always_comb y_input_15_layer_1_00111[1] = a2[495]; // wire
                    mux2 mux_input_15_layer1_00111(.a(y_input_15_layer_1_00111), .s(s[0]), .y(y_input_15_layer_2_0011[1]));
                mux2 mux_input_15_layer2_0011 (.a(y_input_15_layer_2_0011), .s(s[1]), .y(y_input_15_layer_3_001[1]));
            mux2 mux_input_15_layer3_001  (.a(y_input_15_layer_3_001), .s(s[2]), .y(y_input_15_layer_4_00[1]));
        mux2 mux_input_15_layer4_00   (.a(y_input_15_layer_4_00), .s(s[3]), .y(y_input_15_layer_5_0[0]));
        logic [1:0] y_input_15_layer_4_01;
            logic [1:0] y_input_15_layer_3_010;
                logic [1:0] y_input_15_layer_2_0100;
                    logic [1:0] y_input_15_layer_1_01000;
                        always_comb y_input_15_layer_1_01000[0] = a2[527]; // wire
                        always_comb y_input_15_layer_1_01000[1] = a2[559]; // wire
                    mux2 mux_input_15_layer1_01000(.a(y_input_15_layer_1_01000), .s(s[0]), .y(y_input_15_layer_2_0100[0]));
                    logic [1:0] y_input_15_layer_1_01001;
                        always_comb y_input_15_layer_1_01001[0] = a2[591]; // wire
                        always_comb y_input_15_layer_1_01001[1] = a2[623]; // wire
                    mux2 mux_input_15_layer1_01001(.a(y_input_15_layer_1_01001), .s(s[0]), .y(y_input_15_layer_2_0100[1]));
                mux2 mux_input_15_layer2_0100 (.a(y_input_15_layer_2_0100), .s(s[1]), .y(y_input_15_layer_3_010[0]));
                logic [1:0] y_input_15_layer_2_0101;
                    logic [1:0] y_input_15_layer_1_01010;
                        always_comb y_input_15_layer_1_01010[0] = a2[655]; // wire
                        always_comb y_input_15_layer_1_01010[1] = a2[687]; // wire
                    mux2 mux_input_15_layer1_01010(.a(y_input_15_layer_1_01010), .s(s[0]), .y(y_input_15_layer_2_0101[0]));
                    logic [1:0] y_input_15_layer_1_01011;
                        always_comb y_input_15_layer_1_01011[0] = a2[719]; // wire
                        always_comb y_input_15_layer_1_01011[1] = a2[751]; // wire
                    mux2 mux_input_15_layer1_01011(.a(y_input_15_layer_1_01011), .s(s[0]), .y(y_input_15_layer_2_0101[1]));
                mux2 mux_input_15_layer2_0101 (.a(y_input_15_layer_2_0101), .s(s[1]), .y(y_input_15_layer_3_010[1]));
            mux2 mux_input_15_layer3_010  (.a(y_input_15_layer_3_010), .s(s[2]), .y(y_input_15_layer_4_01[0]));
            logic [1:0] y_input_15_layer_3_011;
                logic [1:0] y_input_15_layer_2_0110;
                    logic [1:0] y_input_15_layer_1_01100;
                        always_comb y_input_15_layer_1_01100[0] = a2[783]; // wire
                        always_comb y_input_15_layer_1_01100[1] = a2[815]; // wire
                    mux2 mux_input_15_layer1_01100(.a(y_input_15_layer_1_01100), .s(s[0]), .y(y_input_15_layer_2_0110[0]));
                    logic [1:0] y_input_15_layer_1_01101;
                        always_comb y_input_15_layer_1_01101[0] = a2[847]; // wire
                        always_comb y_input_15_layer_1_01101[1] = a2[879]; // wire
                    mux2 mux_input_15_layer1_01101(.a(y_input_15_layer_1_01101), .s(s[0]), .y(y_input_15_layer_2_0110[1]));
                mux2 mux_input_15_layer2_0110 (.a(y_input_15_layer_2_0110), .s(s[1]), .y(y_input_15_layer_3_011[0]));
                logic [1:0] y_input_15_layer_2_0111;
                    logic [1:0] y_input_15_layer_1_01110;
                        always_comb y_input_15_layer_1_01110[0] = a2[911]; // wire
                        always_comb y_input_15_layer_1_01110[1] = a2[943]; // wire
                    mux2 mux_input_15_layer1_01110(.a(y_input_15_layer_1_01110), .s(s[0]), .y(y_input_15_layer_2_0111[0]));
                    logic [1:0] y_input_15_layer_1_01111;
                        always_comb y_input_15_layer_1_01111[0] = a2[975]; // wire
                        always_comb y_input_15_layer_1_01111[1] = a2[1007]; // wire
                    mux2 mux_input_15_layer1_01111(.a(y_input_15_layer_1_01111), .s(s[0]), .y(y_input_15_layer_2_0111[1]));
                mux2 mux_input_15_layer2_0111 (.a(y_input_15_layer_2_0111), .s(s[1]), .y(y_input_15_layer_3_011[1]));
            mux2 mux_input_15_layer3_011  (.a(y_input_15_layer_3_011), .s(s[2]), .y(y_input_15_layer_4_01[1]));
        mux2 mux_input_15_layer4_01   (.a(y_input_15_layer_4_01), .s(s[3]), .y(y_input_15_layer_5_0[1]));
    mux2 mux_input_15_layer5_0    (.a(y_input_15_layer_5_0), .s(s[4]), .y(y[15]));
            
            ////////////////////////   INPUT WIRE 16   ////////////////////////
            
                logic [1:0] y_input_16_layer_5_0;
        logic [1:0] y_input_16_layer_4_00;
            logic [1:0] y_input_16_layer_3_000;
                logic [1:0] y_input_16_layer_2_0000;
                    logic [1:0] y_input_16_layer_1_00000;
                        always_comb y_input_16_layer_1_00000[0] = a2[16]; // wire
                        always_comb y_input_16_layer_1_00000[1] = a2[48]; // wire
                    mux2 mux_input_16_layer1_00000(.a(y_input_16_layer_1_00000), .s(s[0]), .y(y_input_16_layer_2_0000[0]));
                    logic [1:0] y_input_16_layer_1_00001;
                        always_comb y_input_16_layer_1_00001[0] = a2[80]; // wire
                        always_comb y_input_16_layer_1_00001[1] = a2[112]; // wire
                    mux2 mux_input_16_layer1_00001(.a(y_input_16_layer_1_00001), .s(s[0]), .y(y_input_16_layer_2_0000[1]));
                mux2 mux_input_16_layer2_0000 (.a(y_input_16_layer_2_0000), .s(s[1]), .y(y_input_16_layer_3_000[0]));
                logic [1:0] y_input_16_layer_2_0001;
                    logic [1:0] y_input_16_layer_1_00010;
                        always_comb y_input_16_layer_1_00010[0] = a2[144]; // wire
                        always_comb y_input_16_layer_1_00010[1] = a2[176]; // wire
                    mux2 mux_input_16_layer1_00010(.a(y_input_16_layer_1_00010), .s(s[0]), .y(y_input_16_layer_2_0001[0]));
                    logic [1:0] y_input_16_layer_1_00011;
                        always_comb y_input_16_layer_1_00011[0] = a2[208]; // wire
                        always_comb y_input_16_layer_1_00011[1] = a2[240]; // wire
                    mux2 mux_input_16_layer1_00011(.a(y_input_16_layer_1_00011), .s(s[0]), .y(y_input_16_layer_2_0001[1]));
                mux2 mux_input_16_layer2_0001 (.a(y_input_16_layer_2_0001), .s(s[1]), .y(y_input_16_layer_3_000[1]));
            mux2 mux_input_16_layer3_000  (.a(y_input_16_layer_3_000), .s(s[2]), .y(y_input_16_layer_4_00[0]));
            logic [1:0] y_input_16_layer_3_001;
                logic [1:0] y_input_16_layer_2_0010;
                    logic [1:0] y_input_16_layer_1_00100;
                        always_comb y_input_16_layer_1_00100[0] = a2[272]; // wire
                        always_comb y_input_16_layer_1_00100[1] = a2[304]; // wire
                    mux2 mux_input_16_layer1_00100(.a(y_input_16_layer_1_00100), .s(s[0]), .y(y_input_16_layer_2_0010[0]));
                    logic [1:0] y_input_16_layer_1_00101;
                        always_comb y_input_16_layer_1_00101[0] = a2[336]; // wire
                        always_comb y_input_16_layer_1_00101[1] = a2[368]; // wire
                    mux2 mux_input_16_layer1_00101(.a(y_input_16_layer_1_00101), .s(s[0]), .y(y_input_16_layer_2_0010[1]));
                mux2 mux_input_16_layer2_0010 (.a(y_input_16_layer_2_0010), .s(s[1]), .y(y_input_16_layer_3_001[0]));
                logic [1:0] y_input_16_layer_2_0011;
                    logic [1:0] y_input_16_layer_1_00110;
                        always_comb y_input_16_layer_1_00110[0] = a2[400]; // wire
                        always_comb y_input_16_layer_1_00110[1] = a2[432]; // wire
                    mux2 mux_input_16_layer1_00110(.a(y_input_16_layer_1_00110), .s(s[0]), .y(y_input_16_layer_2_0011[0]));
                    logic [1:0] y_input_16_layer_1_00111;
                        always_comb y_input_16_layer_1_00111[0] = a2[464]; // wire
                        always_comb y_input_16_layer_1_00111[1] = a2[496]; // wire
                    mux2 mux_input_16_layer1_00111(.a(y_input_16_layer_1_00111), .s(s[0]), .y(y_input_16_layer_2_0011[1]));
                mux2 mux_input_16_layer2_0011 (.a(y_input_16_layer_2_0011), .s(s[1]), .y(y_input_16_layer_3_001[1]));
            mux2 mux_input_16_layer3_001  (.a(y_input_16_layer_3_001), .s(s[2]), .y(y_input_16_layer_4_00[1]));
        mux2 mux_input_16_layer4_00   (.a(y_input_16_layer_4_00), .s(s[3]), .y(y_input_16_layer_5_0[0]));
        logic [1:0] y_input_16_layer_4_01;
            logic [1:0] y_input_16_layer_3_010;
                logic [1:0] y_input_16_layer_2_0100;
                    logic [1:0] y_input_16_layer_1_01000;
                        always_comb y_input_16_layer_1_01000[0] = a2[528]; // wire
                        always_comb y_input_16_layer_1_01000[1] = a2[560]; // wire
                    mux2 mux_input_16_layer1_01000(.a(y_input_16_layer_1_01000), .s(s[0]), .y(y_input_16_layer_2_0100[0]));
                    logic [1:0] y_input_16_layer_1_01001;
                        always_comb y_input_16_layer_1_01001[0] = a2[592]; // wire
                        always_comb y_input_16_layer_1_01001[1] = a2[624]; // wire
                    mux2 mux_input_16_layer1_01001(.a(y_input_16_layer_1_01001), .s(s[0]), .y(y_input_16_layer_2_0100[1]));
                mux2 mux_input_16_layer2_0100 (.a(y_input_16_layer_2_0100), .s(s[1]), .y(y_input_16_layer_3_010[0]));
                logic [1:0] y_input_16_layer_2_0101;
                    logic [1:0] y_input_16_layer_1_01010;
                        always_comb y_input_16_layer_1_01010[0] = a2[656]; // wire
                        always_comb y_input_16_layer_1_01010[1] = a2[688]; // wire
                    mux2 mux_input_16_layer1_01010(.a(y_input_16_layer_1_01010), .s(s[0]), .y(y_input_16_layer_2_0101[0]));
                    logic [1:0] y_input_16_layer_1_01011;
                        always_comb y_input_16_layer_1_01011[0] = a2[720]; // wire
                        always_comb y_input_16_layer_1_01011[1] = a2[752]; // wire
                    mux2 mux_input_16_layer1_01011(.a(y_input_16_layer_1_01011), .s(s[0]), .y(y_input_16_layer_2_0101[1]));
                mux2 mux_input_16_layer2_0101 (.a(y_input_16_layer_2_0101), .s(s[1]), .y(y_input_16_layer_3_010[1]));
            mux2 mux_input_16_layer3_010  (.a(y_input_16_layer_3_010), .s(s[2]), .y(y_input_16_layer_4_01[0]));
            logic [1:0] y_input_16_layer_3_011;
                logic [1:0] y_input_16_layer_2_0110;
                    logic [1:0] y_input_16_layer_1_01100;
                        always_comb y_input_16_layer_1_01100[0] = a2[784]; // wire
                        always_comb y_input_16_layer_1_01100[1] = a2[816]; // wire
                    mux2 mux_input_16_layer1_01100(.a(y_input_16_layer_1_01100), .s(s[0]), .y(y_input_16_layer_2_0110[0]));
                    logic [1:0] y_input_16_layer_1_01101;
                        always_comb y_input_16_layer_1_01101[0] = a2[848]; // wire
                        always_comb y_input_16_layer_1_01101[1] = a2[880]; // wire
                    mux2 mux_input_16_layer1_01101(.a(y_input_16_layer_1_01101), .s(s[0]), .y(y_input_16_layer_2_0110[1]));
                mux2 mux_input_16_layer2_0110 (.a(y_input_16_layer_2_0110), .s(s[1]), .y(y_input_16_layer_3_011[0]));
                logic [1:0] y_input_16_layer_2_0111;
                    logic [1:0] y_input_16_layer_1_01110;
                        always_comb y_input_16_layer_1_01110[0] = a2[912]; // wire
                        always_comb y_input_16_layer_1_01110[1] = a2[944]; // wire
                    mux2 mux_input_16_layer1_01110(.a(y_input_16_layer_1_01110), .s(s[0]), .y(y_input_16_layer_2_0111[0]));
                    logic [1:0] y_input_16_layer_1_01111;
                        always_comb y_input_16_layer_1_01111[0] = a2[976]; // wire
                        always_comb y_input_16_layer_1_01111[1] = a2[1008]; // wire
                    mux2 mux_input_16_layer1_01111(.a(y_input_16_layer_1_01111), .s(s[0]), .y(y_input_16_layer_2_0111[1]));
                mux2 mux_input_16_layer2_0111 (.a(y_input_16_layer_2_0111), .s(s[1]), .y(y_input_16_layer_3_011[1]));
            mux2 mux_input_16_layer3_011  (.a(y_input_16_layer_3_011), .s(s[2]), .y(y_input_16_layer_4_01[1]));
        mux2 mux_input_16_layer4_01   (.a(y_input_16_layer_4_01), .s(s[3]), .y(y_input_16_layer_5_0[1]));
    mux2 mux_input_16_layer5_0    (.a(y_input_16_layer_5_0), .s(s[4]), .y(y[16]));
            
            ////////////////////////   INPUT WIRE 17   ////////////////////////
            
                logic [1:0] y_input_17_layer_5_0;
        logic [1:0] y_input_17_layer_4_00;
            logic [1:0] y_input_17_layer_3_000;
                logic [1:0] y_input_17_layer_2_0000;
                    logic [1:0] y_input_17_layer_1_00000;
                        always_comb y_input_17_layer_1_00000[0] = a2[17]; // wire
                        always_comb y_input_17_layer_1_00000[1] = a2[49]; // wire
                    mux2 mux_input_17_layer1_00000(.a(y_input_17_layer_1_00000), .s(s[0]), .y(y_input_17_layer_2_0000[0]));
                    logic [1:0] y_input_17_layer_1_00001;
                        always_comb y_input_17_layer_1_00001[0] = a2[81]; // wire
                        always_comb y_input_17_layer_1_00001[1] = a2[113]; // wire
                    mux2 mux_input_17_layer1_00001(.a(y_input_17_layer_1_00001), .s(s[0]), .y(y_input_17_layer_2_0000[1]));
                mux2 mux_input_17_layer2_0000 (.a(y_input_17_layer_2_0000), .s(s[1]), .y(y_input_17_layer_3_000[0]));
                logic [1:0] y_input_17_layer_2_0001;
                    logic [1:0] y_input_17_layer_1_00010;
                        always_comb y_input_17_layer_1_00010[0] = a2[145]; // wire
                        always_comb y_input_17_layer_1_00010[1] = a2[177]; // wire
                    mux2 mux_input_17_layer1_00010(.a(y_input_17_layer_1_00010), .s(s[0]), .y(y_input_17_layer_2_0001[0]));
                    logic [1:0] y_input_17_layer_1_00011;
                        always_comb y_input_17_layer_1_00011[0] = a2[209]; // wire
                        always_comb y_input_17_layer_1_00011[1] = a2[241]; // wire
                    mux2 mux_input_17_layer1_00011(.a(y_input_17_layer_1_00011), .s(s[0]), .y(y_input_17_layer_2_0001[1]));
                mux2 mux_input_17_layer2_0001 (.a(y_input_17_layer_2_0001), .s(s[1]), .y(y_input_17_layer_3_000[1]));
            mux2 mux_input_17_layer3_000  (.a(y_input_17_layer_3_000), .s(s[2]), .y(y_input_17_layer_4_00[0]));
            logic [1:0] y_input_17_layer_3_001;
                logic [1:0] y_input_17_layer_2_0010;
                    logic [1:0] y_input_17_layer_1_00100;
                        always_comb y_input_17_layer_1_00100[0] = a2[273]; // wire
                        always_comb y_input_17_layer_1_00100[1] = a2[305]; // wire
                    mux2 mux_input_17_layer1_00100(.a(y_input_17_layer_1_00100), .s(s[0]), .y(y_input_17_layer_2_0010[0]));
                    logic [1:0] y_input_17_layer_1_00101;
                        always_comb y_input_17_layer_1_00101[0] = a2[337]; // wire
                        always_comb y_input_17_layer_1_00101[1] = a2[369]; // wire
                    mux2 mux_input_17_layer1_00101(.a(y_input_17_layer_1_00101), .s(s[0]), .y(y_input_17_layer_2_0010[1]));
                mux2 mux_input_17_layer2_0010 (.a(y_input_17_layer_2_0010), .s(s[1]), .y(y_input_17_layer_3_001[0]));
                logic [1:0] y_input_17_layer_2_0011;
                    logic [1:0] y_input_17_layer_1_00110;
                        always_comb y_input_17_layer_1_00110[0] = a2[401]; // wire
                        always_comb y_input_17_layer_1_00110[1] = a2[433]; // wire
                    mux2 mux_input_17_layer1_00110(.a(y_input_17_layer_1_00110), .s(s[0]), .y(y_input_17_layer_2_0011[0]));
                    logic [1:0] y_input_17_layer_1_00111;
                        always_comb y_input_17_layer_1_00111[0] = a2[465]; // wire
                        always_comb y_input_17_layer_1_00111[1] = a2[497]; // wire
                    mux2 mux_input_17_layer1_00111(.a(y_input_17_layer_1_00111), .s(s[0]), .y(y_input_17_layer_2_0011[1]));
                mux2 mux_input_17_layer2_0011 (.a(y_input_17_layer_2_0011), .s(s[1]), .y(y_input_17_layer_3_001[1]));
            mux2 mux_input_17_layer3_001  (.a(y_input_17_layer_3_001), .s(s[2]), .y(y_input_17_layer_4_00[1]));
        mux2 mux_input_17_layer4_00   (.a(y_input_17_layer_4_00), .s(s[3]), .y(y_input_17_layer_5_0[0]));
        logic [1:0] y_input_17_layer_4_01;
            logic [1:0] y_input_17_layer_3_010;
                logic [1:0] y_input_17_layer_2_0100;
                    logic [1:0] y_input_17_layer_1_01000;
                        always_comb y_input_17_layer_1_01000[0] = a2[529]; // wire
                        always_comb y_input_17_layer_1_01000[1] = a2[561]; // wire
                    mux2 mux_input_17_layer1_01000(.a(y_input_17_layer_1_01000), .s(s[0]), .y(y_input_17_layer_2_0100[0]));
                    logic [1:0] y_input_17_layer_1_01001;
                        always_comb y_input_17_layer_1_01001[0] = a2[593]; // wire
                        always_comb y_input_17_layer_1_01001[1] = a2[625]; // wire
                    mux2 mux_input_17_layer1_01001(.a(y_input_17_layer_1_01001), .s(s[0]), .y(y_input_17_layer_2_0100[1]));
                mux2 mux_input_17_layer2_0100 (.a(y_input_17_layer_2_0100), .s(s[1]), .y(y_input_17_layer_3_010[0]));
                logic [1:0] y_input_17_layer_2_0101;
                    logic [1:0] y_input_17_layer_1_01010;
                        always_comb y_input_17_layer_1_01010[0] = a2[657]; // wire
                        always_comb y_input_17_layer_1_01010[1] = a2[689]; // wire
                    mux2 mux_input_17_layer1_01010(.a(y_input_17_layer_1_01010), .s(s[0]), .y(y_input_17_layer_2_0101[0]));
                    logic [1:0] y_input_17_layer_1_01011;
                        always_comb y_input_17_layer_1_01011[0] = a2[721]; // wire
                        always_comb y_input_17_layer_1_01011[1] = a2[753]; // wire
                    mux2 mux_input_17_layer1_01011(.a(y_input_17_layer_1_01011), .s(s[0]), .y(y_input_17_layer_2_0101[1]));
                mux2 mux_input_17_layer2_0101 (.a(y_input_17_layer_2_0101), .s(s[1]), .y(y_input_17_layer_3_010[1]));
            mux2 mux_input_17_layer3_010  (.a(y_input_17_layer_3_010), .s(s[2]), .y(y_input_17_layer_4_01[0]));
            logic [1:0] y_input_17_layer_3_011;
                logic [1:0] y_input_17_layer_2_0110;
                    logic [1:0] y_input_17_layer_1_01100;
                        always_comb y_input_17_layer_1_01100[0] = a2[785]; // wire
                        always_comb y_input_17_layer_1_01100[1] = a2[817]; // wire
                    mux2 mux_input_17_layer1_01100(.a(y_input_17_layer_1_01100), .s(s[0]), .y(y_input_17_layer_2_0110[0]));
                    logic [1:0] y_input_17_layer_1_01101;
                        always_comb y_input_17_layer_1_01101[0] = a2[849]; // wire
                        always_comb y_input_17_layer_1_01101[1] = a2[881]; // wire
                    mux2 mux_input_17_layer1_01101(.a(y_input_17_layer_1_01101), .s(s[0]), .y(y_input_17_layer_2_0110[1]));
                mux2 mux_input_17_layer2_0110 (.a(y_input_17_layer_2_0110), .s(s[1]), .y(y_input_17_layer_3_011[0]));
                logic [1:0] y_input_17_layer_2_0111;
                    logic [1:0] y_input_17_layer_1_01110;
                        always_comb y_input_17_layer_1_01110[0] = a2[913]; // wire
                        always_comb y_input_17_layer_1_01110[1] = a2[945]; // wire
                    mux2 mux_input_17_layer1_01110(.a(y_input_17_layer_1_01110), .s(s[0]), .y(y_input_17_layer_2_0111[0]));
                    logic [1:0] y_input_17_layer_1_01111;
                        always_comb y_input_17_layer_1_01111[0] = a2[977]; // wire
                        always_comb y_input_17_layer_1_01111[1] = a2[1009]; // wire
                    mux2 mux_input_17_layer1_01111(.a(y_input_17_layer_1_01111), .s(s[0]), .y(y_input_17_layer_2_0111[1]));
                mux2 mux_input_17_layer2_0111 (.a(y_input_17_layer_2_0111), .s(s[1]), .y(y_input_17_layer_3_011[1]));
            mux2 mux_input_17_layer3_011  (.a(y_input_17_layer_3_011), .s(s[2]), .y(y_input_17_layer_4_01[1]));
        mux2 mux_input_17_layer4_01   (.a(y_input_17_layer_4_01), .s(s[3]), .y(y_input_17_layer_5_0[1]));
    mux2 mux_input_17_layer5_0    (.a(y_input_17_layer_5_0), .s(s[4]), .y(y[17]));
            
            ////////////////////////   INPUT WIRE 18   ////////////////////////
            
                logic [1:0] y_input_18_layer_5_0;
        logic [1:0] y_input_18_layer_4_00;
            logic [1:0] y_input_18_layer_3_000;
                logic [1:0] y_input_18_layer_2_0000;
                    logic [1:0] y_input_18_layer_1_00000;
                        always_comb y_input_18_layer_1_00000[0] = a2[18]; // wire
                        always_comb y_input_18_layer_1_00000[1] = a2[50]; // wire
                    mux2 mux_input_18_layer1_00000(.a(y_input_18_layer_1_00000), .s(s[0]), .y(y_input_18_layer_2_0000[0]));
                    logic [1:0] y_input_18_layer_1_00001;
                        always_comb y_input_18_layer_1_00001[0] = a2[82]; // wire
                        always_comb y_input_18_layer_1_00001[1] = a2[114]; // wire
                    mux2 mux_input_18_layer1_00001(.a(y_input_18_layer_1_00001), .s(s[0]), .y(y_input_18_layer_2_0000[1]));
                mux2 mux_input_18_layer2_0000 (.a(y_input_18_layer_2_0000), .s(s[1]), .y(y_input_18_layer_3_000[0]));
                logic [1:0] y_input_18_layer_2_0001;
                    logic [1:0] y_input_18_layer_1_00010;
                        always_comb y_input_18_layer_1_00010[0] = a2[146]; // wire
                        always_comb y_input_18_layer_1_00010[1] = a2[178]; // wire
                    mux2 mux_input_18_layer1_00010(.a(y_input_18_layer_1_00010), .s(s[0]), .y(y_input_18_layer_2_0001[0]));
                    logic [1:0] y_input_18_layer_1_00011;
                        always_comb y_input_18_layer_1_00011[0] = a2[210]; // wire
                        always_comb y_input_18_layer_1_00011[1] = a2[242]; // wire
                    mux2 mux_input_18_layer1_00011(.a(y_input_18_layer_1_00011), .s(s[0]), .y(y_input_18_layer_2_0001[1]));
                mux2 mux_input_18_layer2_0001 (.a(y_input_18_layer_2_0001), .s(s[1]), .y(y_input_18_layer_3_000[1]));
            mux2 mux_input_18_layer3_000  (.a(y_input_18_layer_3_000), .s(s[2]), .y(y_input_18_layer_4_00[0]));
            logic [1:0] y_input_18_layer_3_001;
                logic [1:0] y_input_18_layer_2_0010;
                    logic [1:0] y_input_18_layer_1_00100;
                        always_comb y_input_18_layer_1_00100[0] = a2[274]; // wire
                        always_comb y_input_18_layer_1_00100[1] = a2[306]; // wire
                    mux2 mux_input_18_layer1_00100(.a(y_input_18_layer_1_00100), .s(s[0]), .y(y_input_18_layer_2_0010[0]));
                    logic [1:0] y_input_18_layer_1_00101;
                        always_comb y_input_18_layer_1_00101[0] = a2[338]; // wire
                        always_comb y_input_18_layer_1_00101[1] = a2[370]; // wire
                    mux2 mux_input_18_layer1_00101(.a(y_input_18_layer_1_00101), .s(s[0]), .y(y_input_18_layer_2_0010[1]));
                mux2 mux_input_18_layer2_0010 (.a(y_input_18_layer_2_0010), .s(s[1]), .y(y_input_18_layer_3_001[0]));
                logic [1:0] y_input_18_layer_2_0011;
                    logic [1:0] y_input_18_layer_1_00110;
                        always_comb y_input_18_layer_1_00110[0] = a2[402]; // wire
                        always_comb y_input_18_layer_1_00110[1] = a2[434]; // wire
                    mux2 mux_input_18_layer1_00110(.a(y_input_18_layer_1_00110), .s(s[0]), .y(y_input_18_layer_2_0011[0]));
                    logic [1:0] y_input_18_layer_1_00111;
                        always_comb y_input_18_layer_1_00111[0] = a2[466]; // wire
                        always_comb y_input_18_layer_1_00111[1] = a2[498]; // wire
                    mux2 mux_input_18_layer1_00111(.a(y_input_18_layer_1_00111), .s(s[0]), .y(y_input_18_layer_2_0011[1]));
                mux2 mux_input_18_layer2_0011 (.a(y_input_18_layer_2_0011), .s(s[1]), .y(y_input_18_layer_3_001[1]));
            mux2 mux_input_18_layer3_001  (.a(y_input_18_layer_3_001), .s(s[2]), .y(y_input_18_layer_4_00[1]));
        mux2 mux_input_18_layer4_00   (.a(y_input_18_layer_4_00), .s(s[3]), .y(y_input_18_layer_5_0[0]));
        logic [1:0] y_input_18_layer_4_01;
            logic [1:0] y_input_18_layer_3_010;
                logic [1:0] y_input_18_layer_2_0100;
                    logic [1:0] y_input_18_layer_1_01000;
                        always_comb y_input_18_layer_1_01000[0] = a2[530]; // wire
                        always_comb y_input_18_layer_1_01000[1] = a2[562]; // wire
                    mux2 mux_input_18_layer1_01000(.a(y_input_18_layer_1_01000), .s(s[0]), .y(y_input_18_layer_2_0100[0]));
                    logic [1:0] y_input_18_layer_1_01001;
                        always_comb y_input_18_layer_1_01001[0] = a2[594]; // wire
                        always_comb y_input_18_layer_1_01001[1] = a2[626]; // wire
                    mux2 mux_input_18_layer1_01001(.a(y_input_18_layer_1_01001), .s(s[0]), .y(y_input_18_layer_2_0100[1]));
                mux2 mux_input_18_layer2_0100 (.a(y_input_18_layer_2_0100), .s(s[1]), .y(y_input_18_layer_3_010[0]));
                logic [1:0] y_input_18_layer_2_0101;
                    logic [1:0] y_input_18_layer_1_01010;
                        always_comb y_input_18_layer_1_01010[0] = a2[658]; // wire
                        always_comb y_input_18_layer_1_01010[1] = a2[690]; // wire
                    mux2 mux_input_18_layer1_01010(.a(y_input_18_layer_1_01010), .s(s[0]), .y(y_input_18_layer_2_0101[0]));
                    logic [1:0] y_input_18_layer_1_01011;
                        always_comb y_input_18_layer_1_01011[0] = a2[722]; // wire
                        always_comb y_input_18_layer_1_01011[1] = a2[754]; // wire
                    mux2 mux_input_18_layer1_01011(.a(y_input_18_layer_1_01011), .s(s[0]), .y(y_input_18_layer_2_0101[1]));
                mux2 mux_input_18_layer2_0101 (.a(y_input_18_layer_2_0101), .s(s[1]), .y(y_input_18_layer_3_010[1]));
            mux2 mux_input_18_layer3_010  (.a(y_input_18_layer_3_010), .s(s[2]), .y(y_input_18_layer_4_01[0]));
            logic [1:0] y_input_18_layer_3_011;
                logic [1:0] y_input_18_layer_2_0110;
                    logic [1:0] y_input_18_layer_1_01100;
                        always_comb y_input_18_layer_1_01100[0] = a2[786]; // wire
                        always_comb y_input_18_layer_1_01100[1] = a2[818]; // wire
                    mux2 mux_input_18_layer1_01100(.a(y_input_18_layer_1_01100), .s(s[0]), .y(y_input_18_layer_2_0110[0]));
                    logic [1:0] y_input_18_layer_1_01101;
                        always_comb y_input_18_layer_1_01101[0] = a2[850]; // wire
                        always_comb y_input_18_layer_1_01101[1] = a2[882]; // wire
                    mux2 mux_input_18_layer1_01101(.a(y_input_18_layer_1_01101), .s(s[0]), .y(y_input_18_layer_2_0110[1]));
                mux2 mux_input_18_layer2_0110 (.a(y_input_18_layer_2_0110), .s(s[1]), .y(y_input_18_layer_3_011[0]));
                logic [1:0] y_input_18_layer_2_0111;
                    logic [1:0] y_input_18_layer_1_01110;
                        always_comb y_input_18_layer_1_01110[0] = a2[914]; // wire
                        always_comb y_input_18_layer_1_01110[1] = a2[946]; // wire
                    mux2 mux_input_18_layer1_01110(.a(y_input_18_layer_1_01110), .s(s[0]), .y(y_input_18_layer_2_0111[0]));
                    logic [1:0] y_input_18_layer_1_01111;
                        always_comb y_input_18_layer_1_01111[0] = a2[978]; // wire
                        always_comb y_input_18_layer_1_01111[1] = a2[1010]; // wire
                    mux2 mux_input_18_layer1_01111(.a(y_input_18_layer_1_01111), .s(s[0]), .y(y_input_18_layer_2_0111[1]));
                mux2 mux_input_18_layer2_0111 (.a(y_input_18_layer_2_0111), .s(s[1]), .y(y_input_18_layer_3_011[1]));
            mux2 mux_input_18_layer3_011  (.a(y_input_18_layer_3_011), .s(s[2]), .y(y_input_18_layer_4_01[1]));
        mux2 mux_input_18_layer4_01   (.a(y_input_18_layer_4_01), .s(s[3]), .y(y_input_18_layer_5_0[1]));
    mux2 mux_input_18_layer5_0    (.a(y_input_18_layer_5_0), .s(s[4]), .y(y[18]));
            
            ////////////////////////   INPUT WIRE 19   ////////////////////////
            
                logic [1:0] y_input_19_layer_5_0;
        logic [1:0] y_input_19_layer_4_00;
            logic [1:0] y_input_19_layer_3_000;
                logic [1:0] y_input_19_layer_2_0000;
                    logic [1:0] y_input_19_layer_1_00000;
                        always_comb y_input_19_layer_1_00000[0] = a2[19]; // wire
                        always_comb y_input_19_layer_1_00000[1] = a2[51]; // wire
                    mux2 mux_input_19_layer1_00000(.a(y_input_19_layer_1_00000), .s(s[0]), .y(y_input_19_layer_2_0000[0]));
                    logic [1:0] y_input_19_layer_1_00001;
                        always_comb y_input_19_layer_1_00001[0] = a2[83]; // wire
                        always_comb y_input_19_layer_1_00001[1] = a2[115]; // wire
                    mux2 mux_input_19_layer1_00001(.a(y_input_19_layer_1_00001), .s(s[0]), .y(y_input_19_layer_2_0000[1]));
                mux2 mux_input_19_layer2_0000 (.a(y_input_19_layer_2_0000), .s(s[1]), .y(y_input_19_layer_3_000[0]));
                logic [1:0] y_input_19_layer_2_0001;
                    logic [1:0] y_input_19_layer_1_00010;
                        always_comb y_input_19_layer_1_00010[0] = a2[147]; // wire
                        always_comb y_input_19_layer_1_00010[1] = a2[179]; // wire
                    mux2 mux_input_19_layer1_00010(.a(y_input_19_layer_1_00010), .s(s[0]), .y(y_input_19_layer_2_0001[0]));
                    logic [1:0] y_input_19_layer_1_00011;
                        always_comb y_input_19_layer_1_00011[0] = a2[211]; // wire
                        always_comb y_input_19_layer_1_00011[1] = a2[243]; // wire
                    mux2 mux_input_19_layer1_00011(.a(y_input_19_layer_1_00011), .s(s[0]), .y(y_input_19_layer_2_0001[1]));
                mux2 mux_input_19_layer2_0001 (.a(y_input_19_layer_2_0001), .s(s[1]), .y(y_input_19_layer_3_000[1]));
            mux2 mux_input_19_layer3_000  (.a(y_input_19_layer_3_000), .s(s[2]), .y(y_input_19_layer_4_00[0]));
            logic [1:0] y_input_19_layer_3_001;
                logic [1:0] y_input_19_layer_2_0010;
                    logic [1:0] y_input_19_layer_1_00100;
                        always_comb y_input_19_layer_1_00100[0] = a2[275]; // wire
                        always_comb y_input_19_layer_1_00100[1] = a2[307]; // wire
                    mux2 mux_input_19_layer1_00100(.a(y_input_19_layer_1_00100), .s(s[0]), .y(y_input_19_layer_2_0010[0]));
                    logic [1:0] y_input_19_layer_1_00101;
                        always_comb y_input_19_layer_1_00101[0] = a2[339]; // wire
                        always_comb y_input_19_layer_1_00101[1] = a2[371]; // wire
                    mux2 mux_input_19_layer1_00101(.a(y_input_19_layer_1_00101), .s(s[0]), .y(y_input_19_layer_2_0010[1]));
                mux2 mux_input_19_layer2_0010 (.a(y_input_19_layer_2_0010), .s(s[1]), .y(y_input_19_layer_3_001[0]));
                logic [1:0] y_input_19_layer_2_0011;
                    logic [1:0] y_input_19_layer_1_00110;
                        always_comb y_input_19_layer_1_00110[0] = a2[403]; // wire
                        always_comb y_input_19_layer_1_00110[1] = a2[435]; // wire
                    mux2 mux_input_19_layer1_00110(.a(y_input_19_layer_1_00110), .s(s[0]), .y(y_input_19_layer_2_0011[0]));
                    logic [1:0] y_input_19_layer_1_00111;
                        always_comb y_input_19_layer_1_00111[0] = a2[467]; // wire
                        always_comb y_input_19_layer_1_00111[1] = a2[499]; // wire
                    mux2 mux_input_19_layer1_00111(.a(y_input_19_layer_1_00111), .s(s[0]), .y(y_input_19_layer_2_0011[1]));
                mux2 mux_input_19_layer2_0011 (.a(y_input_19_layer_2_0011), .s(s[1]), .y(y_input_19_layer_3_001[1]));
            mux2 mux_input_19_layer3_001  (.a(y_input_19_layer_3_001), .s(s[2]), .y(y_input_19_layer_4_00[1]));
        mux2 mux_input_19_layer4_00   (.a(y_input_19_layer_4_00), .s(s[3]), .y(y_input_19_layer_5_0[0]));
        logic [1:0] y_input_19_layer_4_01;
            logic [1:0] y_input_19_layer_3_010;
                logic [1:0] y_input_19_layer_2_0100;
                    logic [1:0] y_input_19_layer_1_01000;
                        always_comb y_input_19_layer_1_01000[0] = a2[531]; // wire
                        always_comb y_input_19_layer_1_01000[1] = a2[563]; // wire
                    mux2 mux_input_19_layer1_01000(.a(y_input_19_layer_1_01000), .s(s[0]), .y(y_input_19_layer_2_0100[0]));
                    logic [1:0] y_input_19_layer_1_01001;
                        always_comb y_input_19_layer_1_01001[0] = a2[595]; // wire
                        always_comb y_input_19_layer_1_01001[1] = a2[627]; // wire
                    mux2 mux_input_19_layer1_01001(.a(y_input_19_layer_1_01001), .s(s[0]), .y(y_input_19_layer_2_0100[1]));
                mux2 mux_input_19_layer2_0100 (.a(y_input_19_layer_2_0100), .s(s[1]), .y(y_input_19_layer_3_010[0]));
                logic [1:0] y_input_19_layer_2_0101;
                    logic [1:0] y_input_19_layer_1_01010;
                        always_comb y_input_19_layer_1_01010[0] = a2[659]; // wire
                        always_comb y_input_19_layer_1_01010[1] = a2[691]; // wire
                    mux2 mux_input_19_layer1_01010(.a(y_input_19_layer_1_01010), .s(s[0]), .y(y_input_19_layer_2_0101[0]));
                    logic [1:0] y_input_19_layer_1_01011;
                        always_comb y_input_19_layer_1_01011[0] = a2[723]; // wire
                        always_comb y_input_19_layer_1_01011[1] = a2[755]; // wire
                    mux2 mux_input_19_layer1_01011(.a(y_input_19_layer_1_01011), .s(s[0]), .y(y_input_19_layer_2_0101[1]));
                mux2 mux_input_19_layer2_0101 (.a(y_input_19_layer_2_0101), .s(s[1]), .y(y_input_19_layer_3_010[1]));
            mux2 mux_input_19_layer3_010  (.a(y_input_19_layer_3_010), .s(s[2]), .y(y_input_19_layer_4_01[0]));
            logic [1:0] y_input_19_layer_3_011;
                logic [1:0] y_input_19_layer_2_0110;
                    logic [1:0] y_input_19_layer_1_01100;
                        always_comb y_input_19_layer_1_01100[0] = a2[787]; // wire
                        always_comb y_input_19_layer_1_01100[1] = a2[819]; // wire
                    mux2 mux_input_19_layer1_01100(.a(y_input_19_layer_1_01100), .s(s[0]), .y(y_input_19_layer_2_0110[0]));
                    logic [1:0] y_input_19_layer_1_01101;
                        always_comb y_input_19_layer_1_01101[0] = a2[851]; // wire
                        always_comb y_input_19_layer_1_01101[1] = a2[883]; // wire
                    mux2 mux_input_19_layer1_01101(.a(y_input_19_layer_1_01101), .s(s[0]), .y(y_input_19_layer_2_0110[1]));
                mux2 mux_input_19_layer2_0110 (.a(y_input_19_layer_2_0110), .s(s[1]), .y(y_input_19_layer_3_011[0]));
                logic [1:0] y_input_19_layer_2_0111;
                    logic [1:0] y_input_19_layer_1_01110;
                        always_comb y_input_19_layer_1_01110[0] = a2[915]; // wire
                        always_comb y_input_19_layer_1_01110[1] = a2[947]; // wire
                    mux2 mux_input_19_layer1_01110(.a(y_input_19_layer_1_01110), .s(s[0]), .y(y_input_19_layer_2_0111[0]));
                    logic [1:0] y_input_19_layer_1_01111;
                        always_comb y_input_19_layer_1_01111[0] = a2[979]; // wire
                        always_comb y_input_19_layer_1_01111[1] = a2[1011]; // wire
                    mux2 mux_input_19_layer1_01111(.a(y_input_19_layer_1_01111), .s(s[0]), .y(y_input_19_layer_2_0111[1]));
                mux2 mux_input_19_layer2_0111 (.a(y_input_19_layer_2_0111), .s(s[1]), .y(y_input_19_layer_3_011[1]));
            mux2 mux_input_19_layer3_011  (.a(y_input_19_layer_3_011), .s(s[2]), .y(y_input_19_layer_4_01[1]));
        mux2 mux_input_19_layer4_01   (.a(y_input_19_layer_4_01), .s(s[3]), .y(y_input_19_layer_5_0[1]));
    mux2 mux_input_19_layer5_0    (.a(y_input_19_layer_5_0), .s(s[4]), .y(y[19]));
            
            ////////////////////////   INPUT WIRE 20   ////////////////////////
            
                logic [1:0] y_input_20_layer_5_0;
        logic [1:0] y_input_20_layer_4_00;
            logic [1:0] y_input_20_layer_3_000;
                logic [1:0] y_input_20_layer_2_0000;
                    logic [1:0] y_input_20_layer_1_00000;
                        always_comb y_input_20_layer_1_00000[0] = a2[20]; // wire
                        always_comb y_input_20_layer_1_00000[1] = a2[52]; // wire
                    mux2 mux_input_20_layer1_00000(.a(y_input_20_layer_1_00000), .s(s[0]), .y(y_input_20_layer_2_0000[0]));
                    logic [1:0] y_input_20_layer_1_00001;
                        always_comb y_input_20_layer_1_00001[0] = a2[84]; // wire
                        always_comb y_input_20_layer_1_00001[1] = a2[116]; // wire
                    mux2 mux_input_20_layer1_00001(.a(y_input_20_layer_1_00001), .s(s[0]), .y(y_input_20_layer_2_0000[1]));
                mux2 mux_input_20_layer2_0000 (.a(y_input_20_layer_2_0000), .s(s[1]), .y(y_input_20_layer_3_000[0]));
                logic [1:0] y_input_20_layer_2_0001;
                    logic [1:0] y_input_20_layer_1_00010;
                        always_comb y_input_20_layer_1_00010[0] = a2[148]; // wire
                        always_comb y_input_20_layer_1_00010[1] = a2[180]; // wire
                    mux2 mux_input_20_layer1_00010(.a(y_input_20_layer_1_00010), .s(s[0]), .y(y_input_20_layer_2_0001[0]));
                    logic [1:0] y_input_20_layer_1_00011;
                        always_comb y_input_20_layer_1_00011[0] = a2[212]; // wire
                        always_comb y_input_20_layer_1_00011[1] = a2[244]; // wire
                    mux2 mux_input_20_layer1_00011(.a(y_input_20_layer_1_00011), .s(s[0]), .y(y_input_20_layer_2_0001[1]));
                mux2 mux_input_20_layer2_0001 (.a(y_input_20_layer_2_0001), .s(s[1]), .y(y_input_20_layer_3_000[1]));
            mux2 mux_input_20_layer3_000  (.a(y_input_20_layer_3_000), .s(s[2]), .y(y_input_20_layer_4_00[0]));
            logic [1:0] y_input_20_layer_3_001;
                logic [1:0] y_input_20_layer_2_0010;
                    logic [1:0] y_input_20_layer_1_00100;
                        always_comb y_input_20_layer_1_00100[0] = a2[276]; // wire
                        always_comb y_input_20_layer_1_00100[1] = a2[308]; // wire
                    mux2 mux_input_20_layer1_00100(.a(y_input_20_layer_1_00100), .s(s[0]), .y(y_input_20_layer_2_0010[0]));
                    logic [1:0] y_input_20_layer_1_00101;
                        always_comb y_input_20_layer_1_00101[0] = a2[340]; // wire
                        always_comb y_input_20_layer_1_00101[1] = a2[372]; // wire
                    mux2 mux_input_20_layer1_00101(.a(y_input_20_layer_1_00101), .s(s[0]), .y(y_input_20_layer_2_0010[1]));
                mux2 mux_input_20_layer2_0010 (.a(y_input_20_layer_2_0010), .s(s[1]), .y(y_input_20_layer_3_001[0]));
                logic [1:0] y_input_20_layer_2_0011;
                    logic [1:0] y_input_20_layer_1_00110;
                        always_comb y_input_20_layer_1_00110[0] = a2[404]; // wire
                        always_comb y_input_20_layer_1_00110[1] = a2[436]; // wire
                    mux2 mux_input_20_layer1_00110(.a(y_input_20_layer_1_00110), .s(s[0]), .y(y_input_20_layer_2_0011[0]));
                    logic [1:0] y_input_20_layer_1_00111;
                        always_comb y_input_20_layer_1_00111[0] = a2[468]; // wire
                        always_comb y_input_20_layer_1_00111[1] = a2[500]; // wire
                    mux2 mux_input_20_layer1_00111(.a(y_input_20_layer_1_00111), .s(s[0]), .y(y_input_20_layer_2_0011[1]));
                mux2 mux_input_20_layer2_0011 (.a(y_input_20_layer_2_0011), .s(s[1]), .y(y_input_20_layer_3_001[1]));
            mux2 mux_input_20_layer3_001  (.a(y_input_20_layer_3_001), .s(s[2]), .y(y_input_20_layer_4_00[1]));
        mux2 mux_input_20_layer4_00   (.a(y_input_20_layer_4_00), .s(s[3]), .y(y_input_20_layer_5_0[0]));
        logic [1:0] y_input_20_layer_4_01;
            logic [1:0] y_input_20_layer_3_010;
                logic [1:0] y_input_20_layer_2_0100;
                    logic [1:0] y_input_20_layer_1_01000;
                        always_comb y_input_20_layer_1_01000[0] = a2[532]; // wire
                        always_comb y_input_20_layer_1_01000[1] = a2[564]; // wire
                    mux2 mux_input_20_layer1_01000(.a(y_input_20_layer_1_01000), .s(s[0]), .y(y_input_20_layer_2_0100[0]));
                    logic [1:0] y_input_20_layer_1_01001;
                        always_comb y_input_20_layer_1_01001[0] = a2[596]; // wire
                        always_comb y_input_20_layer_1_01001[1] = a2[628]; // wire
                    mux2 mux_input_20_layer1_01001(.a(y_input_20_layer_1_01001), .s(s[0]), .y(y_input_20_layer_2_0100[1]));
                mux2 mux_input_20_layer2_0100 (.a(y_input_20_layer_2_0100), .s(s[1]), .y(y_input_20_layer_3_010[0]));
                logic [1:0] y_input_20_layer_2_0101;
                    logic [1:0] y_input_20_layer_1_01010;
                        always_comb y_input_20_layer_1_01010[0] = a2[660]; // wire
                        always_comb y_input_20_layer_1_01010[1] = a2[692]; // wire
                    mux2 mux_input_20_layer1_01010(.a(y_input_20_layer_1_01010), .s(s[0]), .y(y_input_20_layer_2_0101[0]));
                    logic [1:0] y_input_20_layer_1_01011;
                        always_comb y_input_20_layer_1_01011[0] = a2[724]; // wire
                        always_comb y_input_20_layer_1_01011[1] = a2[756]; // wire
                    mux2 mux_input_20_layer1_01011(.a(y_input_20_layer_1_01011), .s(s[0]), .y(y_input_20_layer_2_0101[1]));
                mux2 mux_input_20_layer2_0101 (.a(y_input_20_layer_2_0101), .s(s[1]), .y(y_input_20_layer_3_010[1]));
            mux2 mux_input_20_layer3_010  (.a(y_input_20_layer_3_010), .s(s[2]), .y(y_input_20_layer_4_01[0]));
            logic [1:0] y_input_20_layer_3_011;
                logic [1:0] y_input_20_layer_2_0110;
                    logic [1:0] y_input_20_layer_1_01100;
                        always_comb y_input_20_layer_1_01100[0] = a2[788]; // wire
                        always_comb y_input_20_layer_1_01100[1] = a2[820]; // wire
                    mux2 mux_input_20_layer1_01100(.a(y_input_20_layer_1_01100), .s(s[0]), .y(y_input_20_layer_2_0110[0]));
                    logic [1:0] y_input_20_layer_1_01101;
                        always_comb y_input_20_layer_1_01101[0] = a2[852]; // wire
                        always_comb y_input_20_layer_1_01101[1] = a2[884]; // wire
                    mux2 mux_input_20_layer1_01101(.a(y_input_20_layer_1_01101), .s(s[0]), .y(y_input_20_layer_2_0110[1]));
                mux2 mux_input_20_layer2_0110 (.a(y_input_20_layer_2_0110), .s(s[1]), .y(y_input_20_layer_3_011[0]));
                logic [1:0] y_input_20_layer_2_0111;
                    logic [1:0] y_input_20_layer_1_01110;
                        always_comb y_input_20_layer_1_01110[0] = a2[916]; // wire
                        always_comb y_input_20_layer_1_01110[1] = a2[948]; // wire
                    mux2 mux_input_20_layer1_01110(.a(y_input_20_layer_1_01110), .s(s[0]), .y(y_input_20_layer_2_0111[0]));
                    logic [1:0] y_input_20_layer_1_01111;
                        always_comb y_input_20_layer_1_01111[0] = a2[980]; // wire
                        always_comb y_input_20_layer_1_01111[1] = a2[1012]; // wire
                    mux2 mux_input_20_layer1_01111(.a(y_input_20_layer_1_01111), .s(s[0]), .y(y_input_20_layer_2_0111[1]));
                mux2 mux_input_20_layer2_0111 (.a(y_input_20_layer_2_0111), .s(s[1]), .y(y_input_20_layer_3_011[1]));
            mux2 mux_input_20_layer3_011  (.a(y_input_20_layer_3_011), .s(s[2]), .y(y_input_20_layer_4_01[1]));
        mux2 mux_input_20_layer4_01   (.a(y_input_20_layer_4_01), .s(s[3]), .y(y_input_20_layer_5_0[1]));
    mux2 mux_input_20_layer5_0    (.a(y_input_20_layer_5_0), .s(s[4]), .y(y[20]));
            
            ////////////////////////   INPUT WIRE 21   ////////////////////////
            
                logic [1:0] y_input_21_layer_5_0;
        logic [1:0] y_input_21_layer_4_00;
            logic [1:0] y_input_21_layer_3_000;
                logic [1:0] y_input_21_layer_2_0000;
                    logic [1:0] y_input_21_layer_1_00000;
                        always_comb y_input_21_layer_1_00000[0] = a2[21]; // wire
                        always_comb y_input_21_layer_1_00000[1] = a2[53]; // wire
                    mux2 mux_input_21_layer1_00000(.a(y_input_21_layer_1_00000), .s(s[0]), .y(y_input_21_layer_2_0000[0]));
                    logic [1:0] y_input_21_layer_1_00001;
                        always_comb y_input_21_layer_1_00001[0] = a2[85]; // wire
                        always_comb y_input_21_layer_1_00001[1] = a2[117]; // wire
                    mux2 mux_input_21_layer1_00001(.a(y_input_21_layer_1_00001), .s(s[0]), .y(y_input_21_layer_2_0000[1]));
                mux2 mux_input_21_layer2_0000 (.a(y_input_21_layer_2_0000), .s(s[1]), .y(y_input_21_layer_3_000[0]));
                logic [1:0] y_input_21_layer_2_0001;
                    logic [1:0] y_input_21_layer_1_00010;
                        always_comb y_input_21_layer_1_00010[0] = a2[149]; // wire
                        always_comb y_input_21_layer_1_00010[1] = a2[181]; // wire
                    mux2 mux_input_21_layer1_00010(.a(y_input_21_layer_1_00010), .s(s[0]), .y(y_input_21_layer_2_0001[0]));
                    logic [1:0] y_input_21_layer_1_00011;
                        always_comb y_input_21_layer_1_00011[0] = a2[213]; // wire
                        always_comb y_input_21_layer_1_00011[1] = a2[245]; // wire
                    mux2 mux_input_21_layer1_00011(.a(y_input_21_layer_1_00011), .s(s[0]), .y(y_input_21_layer_2_0001[1]));
                mux2 mux_input_21_layer2_0001 (.a(y_input_21_layer_2_0001), .s(s[1]), .y(y_input_21_layer_3_000[1]));
            mux2 mux_input_21_layer3_000  (.a(y_input_21_layer_3_000), .s(s[2]), .y(y_input_21_layer_4_00[0]));
            logic [1:0] y_input_21_layer_3_001;
                logic [1:0] y_input_21_layer_2_0010;
                    logic [1:0] y_input_21_layer_1_00100;
                        always_comb y_input_21_layer_1_00100[0] = a2[277]; // wire
                        always_comb y_input_21_layer_1_00100[1] = a2[309]; // wire
                    mux2 mux_input_21_layer1_00100(.a(y_input_21_layer_1_00100), .s(s[0]), .y(y_input_21_layer_2_0010[0]));
                    logic [1:0] y_input_21_layer_1_00101;
                        always_comb y_input_21_layer_1_00101[0] = a2[341]; // wire
                        always_comb y_input_21_layer_1_00101[1] = a2[373]; // wire
                    mux2 mux_input_21_layer1_00101(.a(y_input_21_layer_1_00101), .s(s[0]), .y(y_input_21_layer_2_0010[1]));
                mux2 mux_input_21_layer2_0010 (.a(y_input_21_layer_2_0010), .s(s[1]), .y(y_input_21_layer_3_001[0]));
                logic [1:0] y_input_21_layer_2_0011;
                    logic [1:0] y_input_21_layer_1_00110;
                        always_comb y_input_21_layer_1_00110[0] = a2[405]; // wire
                        always_comb y_input_21_layer_1_00110[1] = a2[437]; // wire
                    mux2 mux_input_21_layer1_00110(.a(y_input_21_layer_1_00110), .s(s[0]), .y(y_input_21_layer_2_0011[0]));
                    logic [1:0] y_input_21_layer_1_00111;
                        always_comb y_input_21_layer_1_00111[0] = a2[469]; // wire
                        always_comb y_input_21_layer_1_00111[1] = a2[501]; // wire
                    mux2 mux_input_21_layer1_00111(.a(y_input_21_layer_1_00111), .s(s[0]), .y(y_input_21_layer_2_0011[1]));
                mux2 mux_input_21_layer2_0011 (.a(y_input_21_layer_2_0011), .s(s[1]), .y(y_input_21_layer_3_001[1]));
            mux2 mux_input_21_layer3_001  (.a(y_input_21_layer_3_001), .s(s[2]), .y(y_input_21_layer_4_00[1]));
        mux2 mux_input_21_layer4_00   (.a(y_input_21_layer_4_00), .s(s[3]), .y(y_input_21_layer_5_0[0]));
        logic [1:0] y_input_21_layer_4_01;
            logic [1:0] y_input_21_layer_3_010;
                logic [1:0] y_input_21_layer_2_0100;
                    logic [1:0] y_input_21_layer_1_01000;
                        always_comb y_input_21_layer_1_01000[0] = a2[533]; // wire
                        always_comb y_input_21_layer_1_01000[1] = a2[565]; // wire
                    mux2 mux_input_21_layer1_01000(.a(y_input_21_layer_1_01000), .s(s[0]), .y(y_input_21_layer_2_0100[0]));
                    logic [1:0] y_input_21_layer_1_01001;
                        always_comb y_input_21_layer_1_01001[0] = a2[597]; // wire
                        always_comb y_input_21_layer_1_01001[1] = a2[629]; // wire
                    mux2 mux_input_21_layer1_01001(.a(y_input_21_layer_1_01001), .s(s[0]), .y(y_input_21_layer_2_0100[1]));
                mux2 mux_input_21_layer2_0100 (.a(y_input_21_layer_2_0100), .s(s[1]), .y(y_input_21_layer_3_010[0]));
                logic [1:0] y_input_21_layer_2_0101;
                    logic [1:0] y_input_21_layer_1_01010;
                        always_comb y_input_21_layer_1_01010[0] = a2[661]; // wire
                        always_comb y_input_21_layer_1_01010[1] = a2[693]; // wire
                    mux2 mux_input_21_layer1_01010(.a(y_input_21_layer_1_01010), .s(s[0]), .y(y_input_21_layer_2_0101[0]));
                    logic [1:0] y_input_21_layer_1_01011;
                        always_comb y_input_21_layer_1_01011[0] = a2[725]; // wire
                        always_comb y_input_21_layer_1_01011[1] = a2[757]; // wire
                    mux2 mux_input_21_layer1_01011(.a(y_input_21_layer_1_01011), .s(s[0]), .y(y_input_21_layer_2_0101[1]));
                mux2 mux_input_21_layer2_0101 (.a(y_input_21_layer_2_0101), .s(s[1]), .y(y_input_21_layer_3_010[1]));
            mux2 mux_input_21_layer3_010  (.a(y_input_21_layer_3_010), .s(s[2]), .y(y_input_21_layer_4_01[0]));
            logic [1:0] y_input_21_layer_3_011;
                logic [1:0] y_input_21_layer_2_0110;
                    logic [1:0] y_input_21_layer_1_01100;
                        always_comb y_input_21_layer_1_01100[0] = a2[789]; // wire
                        always_comb y_input_21_layer_1_01100[1] = a2[821]; // wire
                    mux2 mux_input_21_layer1_01100(.a(y_input_21_layer_1_01100), .s(s[0]), .y(y_input_21_layer_2_0110[0]));
                    logic [1:0] y_input_21_layer_1_01101;
                        always_comb y_input_21_layer_1_01101[0] = a2[853]; // wire
                        always_comb y_input_21_layer_1_01101[1] = a2[885]; // wire
                    mux2 mux_input_21_layer1_01101(.a(y_input_21_layer_1_01101), .s(s[0]), .y(y_input_21_layer_2_0110[1]));
                mux2 mux_input_21_layer2_0110 (.a(y_input_21_layer_2_0110), .s(s[1]), .y(y_input_21_layer_3_011[0]));
                logic [1:0] y_input_21_layer_2_0111;
                    logic [1:0] y_input_21_layer_1_01110;
                        always_comb y_input_21_layer_1_01110[0] = a2[917]; // wire
                        always_comb y_input_21_layer_1_01110[1] = a2[949]; // wire
                    mux2 mux_input_21_layer1_01110(.a(y_input_21_layer_1_01110), .s(s[0]), .y(y_input_21_layer_2_0111[0]));
                    logic [1:0] y_input_21_layer_1_01111;
                        always_comb y_input_21_layer_1_01111[0] = a2[981]; // wire
                        always_comb y_input_21_layer_1_01111[1] = a2[1013]; // wire
                    mux2 mux_input_21_layer1_01111(.a(y_input_21_layer_1_01111), .s(s[0]), .y(y_input_21_layer_2_0111[1]));
                mux2 mux_input_21_layer2_0111 (.a(y_input_21_layer_2_0111), .s(s[1]), .y(y_input_21_layer_3_011[1]));
            mux2 mux_input_21_layer3_011  (.a(y_input_21_layer_3_011), .s(s[2]), .y(y_input_21_layer_4_01[1]));
        mux2 mux_input_21_layer4_01   (.a(y_input_21_layer_4_01), .s(s[3]), .y(y_input_21_layer_5_0[1]));
    mux2 mux_input_21_layer5_0    (.a(y_input_21_layer_5_0), .s(s[4]), .y(y[21]));
            
            ////////////////////////   INPUT WIRE 22   ////////////////////////
            
                logic [1:0] y_input_22_layer_5_0;
        logic [1:0] y_input_22_layer_4_00;
            logic [1:0] y_input_22_layer_3_000;
                logic [1:0] y_input_22_layer_2_0000;
                    logic [1:0] y_input_22_layer_1_00000;
                        always_comb y_input_22_layer_1_00000[0] = a2[22]; // wire
                        always_comb y_input_22_layer_1_00000[1] = a2[54]; // wire
                    mux2 mux_input_22_layer1_00000(.a(y_input_22_layer_1_00000), .s(s[0]), .y(y_input_22_layer_2_0000[0]));
                    logic [1:0] y_input_22_layer_1_00001;
                        always_comb y_input_22_layer_1_00001[0] = a2[86]; // wire
                        always_comb y_input_22_layer_1_00001[1] = a2[118]; // wire
                    mux2 mux_input_22_layer1_00001(.a(y_input_22_layer_1_00001), .s(s[0]), .y(y_input_22_layer_2_0000[1]));
                mux2 mux_input_22_layer2_0000 (.a(y_input_22_layer_2_0000), .s(s[1]), .y(y_input_22_layer_3_000[0]));
                logic [1:0] y_input_22_layer_2_0001;
                    logic [1:0] y_input_22_layer_1_00010;
                        always_comb y_input_22_layer_1_00010[0] = a2[150]; // wire
                        always_comb y_input_22_layer_1_00010[1] = a2[182]; // wire
                    mux2 mux_input_22_layer1_00010(.a(y_input_22_layer_1_00010), .s(s[0]), .y(y_input_22_layer_2_0001[0]));
                    logic [1:0] y_input_22_layer_1_00011;
                        always_comb y_input_22_layer_1_00011[0] = a2[214]; // wire
                        always_comb y_input_22_layer_1_00011[1] = a2[246]; // wire
                    mux2 mux_input_22_layer1_00011(.a(y_input_22_layer_1_00011), .s(s[0]), .y(y_input_22_layer_2_0001[1]));
                mux2 mux_input_22_layer2_0001 (.a(y_input_22_layer_2_0001), .s(s[1]), .y(y_input_22_layer_3_000[1]));
            mux2 mux_input_22_layer3_000  (.a(y_input_22_layer_3_000), .s(s[2]), .y(y_input_22_layer_4_00[0]));
            logic [1:0] y_input_22_layer_3_001;
                logic [1:0] y_input_22_layer_2_0010;
                    logic [1:0] y_input_22_layer_1_00100;
                        always_comb y_input_22_layer_1_00100[0] = a2[278]; // wire
                        always_comb y_input_22_layer_1_00100[1] = a2[310]; // wire
                    mux2 mux_input_22_layer1_00100(.a(y_input_22_layer_1_00100), .s(s[0]), .y(y_input_22_layer_2_0010[0]));
                    logic [1:0] y_input_22_layer_1_00101;
                        always_comb y_input_22_layer_1_00101[0] = a2[342]; // wire
                        always_comb y_input_22_layer_1_00101[1] = a2[374]; // wire
                    mux2 mux_input_22_layer1_00101(.a(y_input_22_layer_1_00101), .s(s[0]), .y(y_input_22_layer_2_0010[1]));
                mux2 mux_input_22_layer2_0010 (.a(y_input_22_layer_2_0010), .s(s[1]), .y(y_input_22_layer_3_001[0]));
                logic [1:0] y_input_22_layer_2_0011;
                    logic [1:0] y_input_22_layer_1_00110;
                        always_comb y_input_22_layer_1_00110[0] = a2[406]; // wire
                        always_comb y_input_22_layer_1_00110[1] = a2[438]; // wire
                    mux2 mux_input_22_layer1_00110(.a(y_input_22_layer_1_00110), .s(s[0]), .y(y_input_22_layer_2_0011[0]));
                    logic [1:0] y_input_22_layer_1_00111;
                        always_comb y_input_22_layer_1_00111[0] = a2[470]; // wire
                        always_comb y_input_22_layer_1_00111[1] = a2[502]; // wire
                    mux2 mux_input_22_layer1_00111(.a(y_input_22_layer_1_00111), .s(s[0]), .y(y_input_22_layer_2_0011[1]));
                mux2 mux_input_22_layer2_0011 (.a(y_input_22_layer_2_0011), .s(s[1]), .y(y_input_22_layer_3_001[1]));
            mux2 mux_input_22_layer3_001  (.a(y_input_22_layer_3_001), .s(s[2]), .y(y_input_22_layer_4_00[1]));
        mux2 mux_input_22_layer4_00   (.a(y_input_22_layer_4_00), .s(s[3]), .y(y_input_22_layer_5_0[0]));
        logic [1:0] y_input_22_layer_4_01;
            logic [1:0] y_input_22_layer_3_010;
                logic [1:0] y_input_22_layer_2_0100;
                    logic [1:0] y_input_22_layer_1_01000;
                        always_comb y_input_22_layer_1_01000[0] = a2[534]; // wire
                        always_comb y_input_22_layer_1_01000[1] = a2[566]; // wire
                    mux2 mux_input_22_layer1_01000(.a(y_input_22_layer_1_01000), .s(s[0]), .y(y_input_22_layer_2_0100[0]));
                    logic [1:0] y_input_22_layer_1_01001;
                        always_comb y_input_22_layer_1_01001[0] = a2[598]; // wire
                        always_comb y_input_22_layer_1_01001[1] = a2[630]; // wire
                    mux2 mux_input_22_layer1_01001(.a(y_input_22_layer_1_01001), .s(s[0]), .y(y_input_22_layer_2_0100[1]));
                mux2 mux_input_22_layer2_0100 (.a(y_input_22_layer_2_0100), .s(s[1]), .y(y_input_22_layer_3_010[0]));
                logic [1:0] y_input_22_layer_2_0101;
                    logic [1:0] y_input_22_layer_1_01010;
                        always_comb y_input_22_layer_1_01010[0] = a2[662]; // wire
                        always_comb y_input_22_layer_1_01010[1] = a2[694]; // wire
                    mux2 mux_input_22_layer1_01010(.a(y_input_22_layer_1_01010), .s(s[0]), .y(y_input_22_layer_2_0101[0]));
                    logic [1:0] y_input_22_layer_1_01011;
                        always_comb y_input_22_layer_1_01011[0] = a2[726]; // wire
                        always_comb y_input_22_layer_1_01011[1] = a2[758]; // wire
                    mux2 mux_input_22_layer1_01011(.a(y_input_22_layer_1_01011), .s(s[0]), .y(y_input_22_layer_2_0101[1]));
                mux2 mux_input_22_layer2_0101 (.a(y_input_22_layer_2_0101), .s(s[1]), .y(y_input_22_layer_3_010[1]));
            mux2 mux_input_22_layer3_010  (.a(y_input_22_layer_3_010), .s(s[2]), .y(y_input_22_layer_4_01[0]));
            logic [1:0] y_input_22_layer_3_011;
                logic [1:0] y_input_22_layer_2_0110;
                    logic [1:0] y_input_22_layer_1_01100;
                        always_comb y_input_22_layer_1_01100[0] = a2[790]; // wire
                        always_comb y_input_22_layer_1_01100[1] = a2[822]; // wire
                    mux2 mux_input_22_layer1_01100(.a(y_input_22_layer_1_01100), .s(s[0]), .y(y_input_22_layer_2_0110[0]));
                    logic [1:0] y_input_22_layer_1_01101;
                        always_comb y_input_22_layer_1_01101[0] = a2[854]; // wire
                        always_comb y_input_22_layer_1_01101[1] = a2[886]; // wire
                    mux2 mux_input_22_layer1_01101(.a(y_input_22_layer_1_01101), .s(s[0]), .y(y_input_22_layer_2_0110[1]));
                mux2 mux_input_22_layer2_0110 (.a(y_input_22_layer_2_0110), .s(s[1]), .y(y_input_22_layer_3_011[0]));
                logic [1:0] y_input_22_layer_2_0111;
                    logic [1:0] y_input_22_layer_1_01110;
                        always_comb y_input_22_layer_1_01110[0] = a2[918]; // wire
                        always_comb y_input_22_layer_1_01110[1] = a2[950]; // wire
                    mux2 mux_input_22_layer1_01110(.a(y_input_22_layer_1_01110), .s(s[0]), .y(y_input_22_layer_2_0111[0]));
                    logic [1:0] y_input_22_layer_1_01111;
                        always_comb y_input_22_layer_1_01111[0] = a2[982]; // wire
                        always_comb y_input_22_layer_1_01111[1] = a2[1014]; // wire
                    mux2 mux_input_22_layer1_01111(.a(y_input_22_layer_1_01111), .s(s[0]), .y(y_input_22_layer_2_0111[1]));
                mux2 mux_input_22_layer2_0111 (.a(y_input_22_layer_2_0111), .s(s[1]), .y(y_input_22_layer_3_011[1]));
            mux2 mux_input_22_layer3_011  (.a(y_input_22_layer_3_011), .s(s[2]), .y(y_input_22_layer_4_01[1]));
        mux2 mux_input_22_layer4_01   (.a(y_input_22_layer_4_01), .s(s[3]), .y(y_input_22_layer_5_0[1]));
    mux2 mux_input_22_layer5_0    (.a(y_input_22_layer_5_0), .s(s[4]), .y(y[22]));
            
            ////////////////////////   INPUT WIRE 23   ////////////////////////
            
                logic [1:0] y_input_23_layer_5_0;
        logic [1:0] y_input_23_layer_4_00;
            logic [1:0] y_input_23_layer_3_000;
                logic [1:0] y_input_23_layer_2_0000;
                    logic [1:0] y_input_23_layer_1_00000;
                        always_comb y_input_23_layer_1_00000[0] = a2[23]; // wire
                        always_comb y_input_23_layer_1_00000[1] = a2[55]; // wire
                    mux2 mux_input_23_layer1_00000(.a(y_input_23_layer_1_00000), .s(s[0]), .y(y_input_23_layer_2_0000[0]));
                    logic [1:0] y_input_23_layer_1_00001;
                        always_comb y_input_23_layer_1_00001[0] = a2[87]; // wire
                        always_comb y_input_23_layer_1_00001[1] = a2[119]; // wire
                    mux2 mux_input_23_layer1_00001(.a(y_input_23_layer_1_00001), .s(s[0]), .y(y_input_23_layer_2_0000[1]));
                mux2 mux_input_23_layer2_0000 (.a(y_input_23_layer_2_0000), .s(s[1]), .y(y_input_23_layer_3_000[0]));
                logic [1:0] y_input_23_layer_2_0001;
                    logic [1:0] y_input_23_layer_1_00010;
                        always_comb y_input_23_layer_1_00010[0] = a2[151]; // wire
                        always_comb y_input_23_layer_1_00010[1] = a2[183]; // wire
                    mux2 mux_input_23_layer1_00010(.a(y_input_23_layer_1_00010), .s(s[0]), .y(y_input_23_layer_2_0001[0]));
                    logic [1:0] y_input_23_layer_1_00011;
                        always_comb y_input_23_layer_1_00011[0] = a2[215]; // wire
                        always_comb y_input_23_layer_1_00011[1] = a2[247]; // wire
                    mux2 mux_input_23_layer1_00011(.a(y_input_23_layer_1_00011), .s(s[0]), .y(y_input_23_layer_2_0001[1]));
                mux2 mux_input_23_layer2_0001 (.a(y_input_23_layer_2_0001), .s(s[1]), .y(y_input_23_layer_3_000[1]));
            mux2 mux_input_23_layer3_000  (.a(y_input_23_layer_3_000), .s(s[2]), .y(y_input_23_layer_4_00[0]));
            logic [1:0] y_input_23_layer_3_001;
                logic [1:0] y_input_23_layer_2_0010;
                    logic [1:0] y_input_23_layer_1_00100;
                        always_comb y_input_23_layer_1_00100[0] = a2[279]; // wire
                        always_comb y_input_23_layer_1_00100[1] = a2[311]; // wire
                    mux2 mux_input_23_layer1_00100(.a(y_input_23_layer_1_00100), .s(s[0]), .y(y_input_23_layer_2_0010[0]));
                    logic [1:0] y_input_23_layer_1_00101;
                        always_comb y_input_23_layer_1_00101[0] = a2[343]; // wire
                        always_comb y_input_23_layer_1_00101[1] = a2[375]; // wire
                    mux2 mux_input_23_layer1_00101(.a(y_input_23_layer_1_00101), .s(s[0]), .y(y_input_23_layer_2_0010[1]));
                mux2 mux_input_23_layer2_0010 (.a(y_input_23_layer_2_0010), .s(s[1]), .y(y_input_23_layer_3_001[0]));
                logic [1:0] y_input_23_layer_2_0011;
                    logic [1:0] y_input_23_layer_1_00110;
                        always_comb y_input_23_layer_1_00110[0] = a2[407]; // wire
                        always_comb y_input_23_layer_1_00110[1] = a2[439]; // wire
                    mux2 mux_input_23_layer1_00110(.a(y_input_23_layer_1_00110), .s(s[0]), .y(y_input_23_layer_2_0011[0]));
                    logic [1:0] y_input_23_layer_1_00111;
                        always_comb y_input_23_layer_1_00111[0] = a2[471]; // wire
                        always_comb y_input_23_layer_1_00111[1] = a2[503]; // wire
                    mux2 mux_input_23_layer1_00111(.a(y_input_23_layer_1_00111), .s(s[0]), .y(y_input_23_layer_2_0011[1]));
                mux2 mux_input_23_layer2_0011 (.a(y_input_23_layer_2_0011), .s(s[1]), .y(y_input_23_layer_3_001[1]));
            mux2 mux_input_23_layer3_001  (.a(y_input_23_layer_3_001), .s(s[2]), .y(y_input_23_layer_4_00[1]));
        mux2 mux_input_23_layer4_00   (.a(y_input_23_layer_4_00), .s(s[3]), .y(y_input_23_layer_5_0[0]));
        logic [1:0] y_input_23_layer_4_01;
            logic [1:0] y_input_23_layer_3_010;
                logic [1:0] y_input_23_layer_2_0100;
                    logic [1:0] y_input_23_layer_1_01000;
                        always_comb y_input_23_layer_1_01000[0] = a2[535]; // wire
                        always_comb y_input_23_layer_1_01000[1] = a2[567]; // wire
                    mux2 mux_input_23_layer1_01000(.a(y_input_23_layer_1_01000), .s(s[0]), .y(y_input_23_layer_2_0100[0]));
                    logic [1:0] y_input_23_layer_1_01001;
                        always_comb y_input_23_layer_1_01001[0] = a2[599]; // wire
                        always_comb y_input_23_layer_1_01001[1] = a2[631]; // wire
                    mux2 mux_input_23_layer1_01001(.a(y_input_23_layer_1_01001), .s(s[0]), .y(y_input_23_layer_2_0100[1]));
                mux2 mux_input_23_layer2_0100 (.a(y_input_23_layer_2_0100), .s(s[1]), .y(y_input_23_layer_3_010[0]));
                logic [1:0] y_input_23_layer_2_0101;
                    logic [1:0] y_input_23_layer_1_01010;
                        always_comb y_input_23_layer_1_01010[0] = a2[663]; // wire
                        always_comb y_input_23_layer_1_01010[1] = a2[695]; // wire
                    mux2 mux_input_23_layer1_01010(.a(y_input_23_layer_1_01010), .s(s[0]), .y(y_input_23_layer_2_0101[0]));
                    logic [1:0] y_input_23_layer_1_01011;
                        always_comb y_input_23_layer_1_01011[0] = a2[727]; // wire
                        always_comb y_input_23_layer_1_01011[1] = a2[759]; // wire
                    mux2 mux_input_23_layer1_01011(.a(y_input_23_layer_1_01011), .s(s[0]), .y(y_input_23_layer_2_0101[1]));
                mux2 mux_input_23_layer2_0101 (.a(y_input_23_layer_2_0101), .s(s[1]), .y(y_input_23_layer_3_010[1]));
            mux2 mux_input_23_layer3_010  (.a(y_input_23_layer_3_010), .s(s[2]), .y(y_input_23_layer_4_01[0]));
            logic [1:0] y_input_23_layer_3_011;
                logic [1:0] y_input_23_layer_2_0110;
                    logic [1:0] y_input_23_layer_1_01100;
                        always_comb y_input_23_layer_1_01100[0] = a2[791]; // wire
                        always_comb y_input_23_layer_1_01100[1] = a2[823]; // wire
                    mux2 mux_input_23_layer1_01100(.a(y_input_23_layer_1_01100), .s(s[0]), .y(y_input_23_layer_2_0110[0]));
                    logic [1:0] y_input_23_layer_1_01101;
                        always_comb y_input_23_layer_1_01101[0] = a2[855]; // wire
                        always_comb y_input_23_layer_1_01101[1] = a2[887]; // wire
                    mux2 mux_input_23_layer1_01101(.a(y_input_23_layer_1_01101), .s(s[0]), .y(y_input_23_layer_2_0110[1]));
                mux2 mux_input_23_layer2_0110 (.a(y_input_23_layer_2_0110), .s(s[1]), .y(y_input_23_layer_3_011[0]));
                logic [1:0] y_input_23_layer_2_0111;
                    logic [1:0] y_input_23_layer_1_01110;
                        always_comb y_input_23_layer_1_01110[0] = a2[919]; // wire
                        always_comb y_input_23_layer_1_01110[1] = a2[951]; // wire
                    mux2 mux_input_23_layer1_01110(.a(y_input_23_layer_1_01110), .s(s[0]), .y(y_input_23_layer_2_0111[0]));
                    logic [1:0] y_input_23_layer_1_01111;
                        always_comb y_input_23_layer_1_01111[0] = a2[983]; // wire
                        always_comb y_input_23_layer_1_01111[1] = a2[1015]; // wire
                    mux2 mux_input_23_layer1_01111(.a(y_input_23_layer_1_01111), .s(s[0]), .y(y_input_23_layer_2_0111[1]));
                mux2 mux_input_23_layer2_0111 (.a(y_input_23_layer_2_0111), .s(s[1]), .y(y_input_23_layer_3_011[1]));
            mux2 mux_input_23_layer3_011  (.a(y_input_23_layer_3_011), .s(s[2]), .y(y_input_23_layer_4_01[1]));
        mux2 mux_input_23_layer4_01   (.a(y_input_23_layer_4_01), .s(s[3]), .y(y_input_23_layer_5_0[1]));
    mux2 mux_input_23_layer5_0    (.a(y_input_23_layer_5_0), .s(s[4]), .y(y[23]));
            
            ////////////////////////   INPUT WIRE 24   ////////////////////////
            
                logic [1:0] y_input_24_layer_5_0;
        logic [1:0] y_input_24_layer_4_00;
            logic [1:0] y_input_24_layer_3_000;
                logic [1:0] y_input_24_layer_2_0000;
                    logic [1:0] y_input_24_layer_1_00000;
                        always_comb y_input_24_layer_1_00000[0] = a2[24]; // wire
                        always_comb y_input_24_layer_1_00000[1] = a2[56]; // wire
                    mux2 mux_input_24_layer1_00000(.a(y_input_24_layer_1_00000), .s(s[0]), .y(y_input_24_layer_2_0000[0]));
                    logic [1:0] y_input_24_layer_1_00001;
                        always_comb y_input_24_layer_1_00001[0] = a2[88]; // wire
                        always_comb y_input_24_layer_1_00001[1] = a2[120]; // wire
                    mux2 mux_input_24_layer1_00001(.a(y_input_24_layer_1_00001), .s(s[0]), .y(y_input_24_layer_2_0000[1]));
                mux2 mux_input_24_layer2_0000 (.a(y_input_24_layer_2_0000), .s(s[1]), .y(y_input_24_layer_3_000[0]));
                logic [1:0] y_input_24_layer_2_0001;
                    logic [1:0] y_input_24_layer_1_00010;
                        always_comb y_input_24_layer_1_00010[0] = a2[152]; // wire
                        always_comb y_input_24_layer_1_00010[1] = a2[184]; // wire
                    mux2 mux_input_24_layer1_00010(.a(y_input_24_layer_1_00010), .s(s[0]), .y(y_input_24_layer_2_0001[0]));
                    logic [1:0] y_input_24_layer_1_00011;
                        always_comb y_input_24_layer_1_00011[0] = a2[216]; // wire
                        always_comb y_input_24_layer_1_00011[1] = a2[248]; // wire
                    mux2 mux_input_24_layer1_00011(.a(y_input_24_layer_1_00011), .s(s[0]), .y(y_input_24_layer_2_0001[1]));
                mux2 mux_input_24_layer2_0001 (.a(y_input_24_layer_2_0001), .s(s[1]), .y(y_input_24_layer_3_000[1]));
            mux2 mux_input_24_layer3_000  (.a(y_input_24_layer_3_000), .s(s[2]), .y(y_input_24_layer_4_00[0]));
            logic [1:0] y_input_24_layer_3_001;
                logic [1:0] y_input_24_layer_2_0010;
                    logic [1:0] y_input_24_layer_1_00100;
                        always_comb y_input_24_layer_1_00100[0] = a2[280]; // wire
                        always_comb y_input_24_layer_1_00100[1] = a2[312]; // wire
                    mux2 mux_input_24_layer1_00100(.a(y_input_24_layer_1_00100), .s(s[0]), .y(y_input_24_layer_2_0010[0]));
                    logic [1:0] y_input_24_layer_1_00101;
                        always_comb y_input_24_layer_1_00101[0] = a2[344]; // wire
                        always_comb y_input_24_layer_1_00101[1] = a2[376]; // wire
                    mux2 mux_input_24_layer1_00101(.a(y_input_24_layer_1_00101), .s(s[0]), .y(y_input_24_layer_2_0010[1]));
                mux2 mux_input_24_layer2_0010 (.a(y_input_24_layer_2_0010), .s(s[1]), .y(y_input_24_layer_3_001[0]));
                logic [1:0] y_input_24_layer_2_0011;
                    logic [1:0] y_input_24_layer_1_00110;
                        always_comb y_input_24_layer_1_00110[0] = a2[408]; // wire
                        always_comb y_input_24_layer_1_00110[1] = a2[440]; // wire
                    mux2 mux_input_24_layer1_00110(.a(y_input_24_layer_1_00110), .s(s[0]), .y(y_input_24_layer_2_0011[0]));
                    logic [1:0] y_input_24_layer_1_00111;
                        always_comb y_input_24_layer_1_00111[0] = a2[472]; // wire
                        always_comb y_input_24_layer_1_00111[1] = a2[504]; // wire
                    mux2 mux_input_24_layer1_00111(.a(y_input_24_layer_1_00111), .s(s[0]), .y(y_input_24_layer_2_0011[1]));
                mux2 mux_input_24_layer2_0011 (.a(y_input_24_layer_2_0011), .s(s[1]), .y(y_input_24_layer_3_001[1]));
            mux2 mux_input_24_layer3_001  (.a(y_input_24_layer_3_001), .s(s[2]), .y(y_input_24_layer_4_00[1]));
        mux2 mux_input_24_layer4_00   (.a(y_input_24_layer_4_00), .s(s[3]), .y(y_input_24_layer_5_0[0]));
        logic [1:0] y_input_24_layer_4_01;
            logic [1:0] y_input_24_layer_3_010;
                logic [1:0] y_input_24_layer_2_0100;
                    logic [1:0] y_input_24_layer_1_01000;
                        always_comb y_input_24_layer_1_01000[0] = a2[536]; // wire
                        always_comb y_input_24_layer_1_01000[1] = a2[568]; // wire
                    mux2 mux_input_24_layer1_01000(.a(y_input_24_layer_1_01000), .s(s[0]), .y(y_input_24_layer_2_0100[0]));
                    logic [1:0] y_input_24_layer_1_01001;
                        always_comb y_input_24_layer_1_01001[0] = a2[600]; // wire
                        always_comb y_input_24_layer_1_01001[1] = a2[632]; // wire
                    mux2 mux_input_24_layer1_01001(.a(y_input_24_layer_1_01001), .s(s[0]), .y(y_input_24_layer_2_0100[1]));
                mux2 mux_input_24_layer2_0100 (.a(y_input_24_layer_2_0100), .s(s[1]), .y(y_input_24_layer_3_010[0]));
                logic [1:0] y_input_24_layer_2_0101;
                    logic [1:0] y_input_24_layer_1_01010;
                        always_comb y_input_24_layer_1_01010[0] = a2[664]; // wire
                        always_comb y_input_24_layer_1_01010[1] = a2[696]; // wire
                    mux2 mux_input_24_layer1_01010(.a(y_input_24_layer_1_01010), .s(s[0]), .y(y_input_24_layer_2_0101[0]));
                    logic [1:0] y_input_24_layer_1_01011;
                        always_comb y_input_24_layer_1_01011[0] = a2[728]; // wire
                        always_comb y_input_24_layer_1_01011[1] = a2[760]; // wire
                    mux2 mux_input_24_layer1_01011(.a(y_input_24_layer_1_01011), .s(s[0]), .y(y_input_24_layer_2_0101[1]));
                mux2 mux_input_24_layer2_0101 (.a(y_input_24_layer_2_0101), .s(s[1]), .y(y_input_24_layer_3_010[1]));
            mux2 mux_input_24_layer3_010  (.a(y_input_24_layer_3_010), .s(s[2]), .y(y_input_24_layer_4_01[0]));
            logic [1:0] y_input_24_layer_3_011;
                logic [1:0] y_input_24_layer_2_0110;
                    logic [1:0] y_input_24_layer_1_01100;
                        always_comb y_input_24_layer_1_01100[0] = a2[792]; // wire
                        always_comb y_input_24_layer_1_01100[1] = a2[824]; // wire
                    mux2 mux_input_24_layer1_01100(.a(y_input_24_layer_1_01100), .s(s[0]), .y(y_input_24_layer_2_0110[0]));
                    logic [1:0] y_input_24_layer_1_01101;
                        always_comb y_input_24_layer_1_01101[0] = a2[856]; // wire
                        always_comb y_input_24_layer_1_01101[1] = a2[888]; // wire
                    mux2 mux_input_24_layer1_01101(.a(y_input_24_layer_1_01101), .s(s[0]), .y(y_input_24_layer_2_0110[1]));
                mux2 mux_input_24_layer2_0110 (.a(y_input_24_layer_2_0110), .s(s[1]), .y(y_input_24_layer_3_011[0]));
                logic [1:0] y_input_24_layer_2_0111;
                    logic [1:0] y_input_24_layer_1_01110;
                        always_comb y_input_24_layer_1_01110[0] = a2[920]; // wire
                        always_comb y_input_24_layer_1_01110[1] = a2[952]; // wire
                    mux2 mux_input_24_layer1_01110(.a(y_input_24_layer_1_01110), .s(s[0]), .y(y_input_24_layer_2_0111[0]));
                    logic [1:0] y_input_24_layer_1_01111;
                        always_comb y_input_24_layer_1_01111[0] = a2[984]; // wire
                        always_comb y_input_24_layer_1_01111[1] = a2[1016]; // wire
                    mux2 mux_input_24_layer1_01111(.a(y_input_24_layer_1_01111), .s(s[0]), .y(y_input_24_layer_2_0111[1]));
                mux2 mux_input_24_layer2_0111 (.a(y_input_24_layer_2_0111), .s(s[1]), .y(y_input_24_layer_3_011[1]));
            mux2 mux_input_24_layer3_011  (.a(y_input_24_layer_3_011), .s(s[2]), .y(y_input_24_layer_4_01[1]));
        mux2 mux_input_24_layer4_01   (.a(y_input_24_layer_4_01), .s(s[3]), .y(y_input_24_layer_5_0[1]));
    mux2 mux_input_24_layer5_0    (.a(y_input_24_layer_5_0), .s(s[4]), .y(y[24]));
            
            ////////////////////////   INPUT WIRE 25   ////////////////////////
            
                logic [1:0] y_input_25_layer_5_0;
        logic [1:0] y_input_25_layer_4_00;
            logic [1:0] y_input_25_layer_3_000;
                logic [1:0] y_input_25_layer_2_0000;
                    logic [1:0] y_input_25_layer_1_00000;
                        always_comb y_input_25_layer_1_00000[0] = a2[25]; // wire
                        always_comb y_input_25_layer_1_00000[1] = a2[57]; // wire
                    mux2 mux_input_25_layer1_00000(.a(y_input_25_layer_1_00000), .s(s[0]), .y(y_input_25_layer_2_0000[0]));
                    logic [1:0] y_input_25_layer_1_00001;
                        always_comb y_input_25_layer_1_00001[0] = a2[89]; // wire
                        always_comb y_input_25_layer_1_00001[1] = a2[121]; // wire
                    mux2 mux_input_25_layer1_00001(.a(y_input_25_layer_1_00001), .s(s[0]), .y(y_input_25_layer_2_0000[1]));
                mux2 mux_input_25_layer2_0000 (.a(y_input_25_layer_2_0000), .s(s[1]), .y(y_input_25_layer_3_000[0]));
                logic [1:0] y_input_25_layer_2_0001;
                    logic [1:0] y_input_25_layer_1_00010;
                        always_comb y_input_25_layer_1_00010[0] = a2[153]; // wire
                        always_comb y_input_25_layer_1_00010[1] = a2[185]; // wire
                    mux2 mux_input_25_layer1_00010(.a(y_input_25_layer_1_00010), .s(s[0]), .y(y_input_25_layer_2_0001[0]));
                    logic [1:0] y_input_25_layer_1_00011;
                        always_comb y_input_25_layer_1_00011[0] = a2[217]; // wire
                        always_comb y_input_25_layer_1_00011[1] = a2[249]; // wire
                    mux2 mux_input_25_layer1_00011(.a(y_input_25_layer_1_00011), .s(s[0]), .y(y_input_25_layer_2_0001[1]));
                mux2 mux_input_25_layer2_0001 (.a(y_input_25_layer_2_0001), .s(s[1]), .y(y_input_25_layer_3_000[1]));
            mux2 mux_input_25_layer3_000  (.a(y_input_25_layer_3_000), .s(s[2]), .y(y_input_25_layer_4_00[0]));
            logic [1:0] y_input_25_layer_3_001;
                logic [1:0] y_input_25_layer_2_0010;
                    logic [1:0] y_input_25_layer_1_00100;
                        always_comb y_input_25_layer_1_00100[0] = a2[281]; // wire
                        always_comb y_input_25_layer_1_00100[1] = a2[313]; // wire
                    mux2 mux_input_25_layer1_00100(.a(y_input_25_layer_1_00100), .s(s[0]), .y(y_input_25_layer_2_0010[0]));
                    logic [1:0] y_input_25_layer_1_00101;
                        always_comb y_input_25_layer_1_00101[0] = a2[345]; // wire
                        always_comb y_input_25_layer_1_00101[1] = a2[377]; // wire
                    mux2 mux_input_25_layer1_00101(.a(y_input_25_layer_1_00101), .s(s[0]), .y(y_input_25_layer_2_0010[1]));
                mux2 mux_input_25_layer2_0010 (.a(y_input_25_layer_2_0010), .s(s[1]), .y(y_input_25_layer_3_001[0]));
                logic [1:0] y_input_25_layer_2_0011;
                    logic [1:0] y_input_25_layer_1_00110;
                        always_comb y_input_25_layer_1_00110[0] = a2[409]; // wire
                        always_comb y_input_25_layer_1_00110[1] = a2[441]; // wire
                    mux2 mux_input_25_layer1_00110(.a(y_input_25_layer_1_00110), .s(s[0]), .y(y_input_25_layer_2_0011[0]));
                    logic [1:0] y_input_25_layer_1_00111;
                        always_comb y_input_25_layer_1_00111[0] = a2[473]; // wire
                        always_comb y_input_25_layer_1_00111[1] = a2[505]; // wire
                    mux2 mux_input_25_layer1_00111(.a(y_input_25_layer_1_00111), .s(s[0]), .y(y_input_25_layer_2_0011[1]));
                mux2 mux_input_25_layer2_0011 (.a(y_input_25_layer_2_0011), .s(s[1]), .y(y_input_25_layer_3_001[1]));
            mux2 mux_input_25_layer3_001  (.a(y_input_25_layer_3_001), .s(s[2]), .y(y_input_25_layer_4_00[1]));
        mux2 mux_input_25_layer4_00   (.a(y_input_25_layer_4_00), .s(s[3]), .y(y_input_25_layer_5_0[0]));
        logic [1:0] y_input_25_layer_4_01;
            logic [1:0] y_input_25_layer_3_010;
                logic [1:0] y_input_25_layer_2_0100;
                    logic [1:0] y_input_25_layer_1_01000;
                        always_comb y_input_25_layer_1_01000[0] = a2[537]; // wire
                        always_comb y_input_25_layer_1_01000[1] = a2[569]; // wire
                    mux2 mux_input_25_layer1_01000(.a(y_input_25_layer_1_01000), .s(s[0]), .y(y_input_25_layer_2_0100[0]));
                    logic [1:0] y_input_25_layer_1_01001;
                        always_comb y_input_25_layer_1_01001[0] = a2[601]; // wire
                        always_comb y_input_25_layer_1_01001[1] = a2[633]; // wire
                    mux2 mux_input_25_layer1_01001(.a(y_input_25_layer_1_01001), .s(s[0]), .y(y_input_25_layer_2_0100[1]));
                mux2 mux_input_25_layer2_0100 (.a(y_input_25_layer_2_0100), .s(s[1]), .y(y_input_25_layer_3_010[0]));
                logic [1:0] y_input_25_layer_2_0101;
                    logic [1:0] y_input_25_layer_1_01010;
                        always_comb y_input_25_layer_1_01010[0] = a2[665]; // wire
                        always_comb y_input_25_layer_1_01010[1] = a2[697]; // wire
                    mux2 mux_input_25_layer1_01010(.a(y_input_25_layer_1_01010), .s(s[0]), .y(y_input_25_layer_2_0101[0]));
                    logic [1:0] y_input_25_layer_1_01011;
                        always_comb y_input_25_layer_1_01011[0] = a2[729]; // wire
                        always_comb y_input_25_layer_1_01011[1] = a2[761]; // wire
                    mux2 mux_input_25_layer1_01011(.a(y_input_25_layer_1_01011), .s(s[0]), .y(y_input_25_layer_2_0101[1]));
                mux2 mux_input_25_layer2_0101 (.a(y_input_25_layer_2_0101), .s(s[1]), .y(y_input_25_layer_3_010[1]));
            mux2 mux_input_25_layer3_010  (.a(y_input_25_layer_3_010), .s(s[2]), .y(y_input_25_layer_4_01[0]));
            logic [1:0] y_input_25_layer_3_011;
                logic [1:0] y_input_25_layer_2_0110;
                    logic [1:0] y_input_25_layer_1_01100;
                        always_comb y_input_25_layer_1_01100[0] = a2[793]; // wire
                        always_comb y_input_25_layer_1_01100[1] = a2[825]; // wire
                    mux2 mux_input_25_layer1_01100(.a(y_input_25_layer_1_01100), .s(s[0]), .y(y_input_25_layer_2_0110[0]));
                    logic [1:0] y_input_25_layer_1_01101;
                        always_comb y_input_25_layer_1_01101[0] = a2[857]; // wire
                        always_comb y_input_25_layer_1_01101[1] = a2[889]; // wire
                    mux2 mux_input_25_layer1_01101(.a(y_input_25_layer_1_01101), .s(s[0]), .y(y_input_25_layer_2_0110[1]));
                mux2 mux_input_25_layer2_0110 (.a(y_input_25_layer_2_0110), .s(s[1]), .y(y_input_25_layer_3_011[0]));
                logic [1:0] y_input_25_layer_2_0111;
                    logic [1:0] y_input_25_layer_1_01110;
                        always_comb y_input_25_layer_1_01110[0] = a2[921]; // wire
                        always_comb y_input_25_layer_1_01110[1] = a2[953]; // wire
                    mux2 mux_input_25_layer1_01110(.a(y_input_25_layer_1_01110), .s(s[0]), .y(y_input_25_layer_2_0111[0]));
                    logic [1:0] y_input_25_layer_1_01111;
                        always_comb y_input_25_layer_1_01111[0] = a2[985]; // wire
                        always_comb y_input_25_layer_1_01111[1] = a2[1017]; // wire
                    mux2 mux_input_25_layer1_01111(.a(y_input_25_layer_1_01111), .s(s[0]), .y(y_input_25_layer_2_0111[1]));
                mux2 mux_input_25_layer2_0111 (.a(y_input_25_layer_2_0111), .s(s[1]), .y(y_input_25_layer_3_011[1]));
            mux2 mux_input_25_layer3_011  (.a(y_input_25_layer_3_011), .s(s[2]), .y(y_input_25_layer_4_01[1]));
        mux2 mux_input_25_layer4_01   (.a(y_input_25_layer_4_01), .s(s[3]), .y(y_input_25_layer_5_0[1]));
    mux2 mux_input_25_layer5_0    (.a(y_input_25_layer_5_0), .s(s[4]), .y(y[25]));
            
            ////////////////////////   INPUT WIRE 26   ////////////////////////
            
                logic [1:0] y_input_26_layer_5_0;
        logic [1:0] y_input_26_layer_4_00;
            logic [1:0] y_input_26_layer_3_000;
                logic [1:0] y_input_26_layer_2_0000;
                    logic [1:0] y_input_26_layer_1_00000;
                        always_comb y_input_26_layer_1_00000[0] = a2[26]; // wire
                        always_comb y_input_26_layer_1_00000[1] = a2[58]; // wire
                    mux2 mux_input_26_layer1_00000(.a(y_input_26_layer_1_00000), .s(s[0]), .y(y_input_26_layer_2_0000[0]));
                    logic [1:0] y_input_26_layer_1_00001;
                        always_comb y_input_26_layer_1_00001[0] = a2[90]; // wire
                        always_comb y_input_26_layer_1_00001[1] = a2[122]; // wire
                    mux2 mux_input_26_layer1_00001(.a(y_input_26_layer_1_00001), .s(s[0]), .y(y_input_26_layer_2_0000[1]));
                mux2 mux_input_26_layer2_0000 (.a(y_input_26_layer_2_0000), .s(s[1]), .y(y_input_26_layer_3_000[0]));
                logic [1:0] y_input_26_layer_2_0001;
                    logic [1:0] y_input_26_layer_1_00010;
                        always_comb y_input_26_layer_1_00010[0] = a2[154]; // wire
                        always_comb y_input_26_layer_1_00010[1] = a2[186]; // wire
                    mux2 mux_input_26_layer1_00010(.a(y_input_26_layer_1_00010), .s(s[0]), .y(y_input_26_layer_2_0001[0]));
                    logic [1:0] y_input_26_layer_1_00011;
                        always_comb y_input_26_layer_1_00011[0] = a2[218]; // wire
                        always_comb y_input_26_layer_1_00011[1] = a2[250]; // wire
                    mux2 mux_input_26_layer1_00011(.a(y_input_26_layer_1_00011), .s(s[0]), .y(y_input_26_layer_2_0001[1]));
                mux2 mux_input_26_layer2_0001 (.a(y_input_26_layer_2_0001), .s(s[1]), .y(y_input_26_layer_3_000[1]));
            mux2 mux_input_26_layer3_000  (.a(y_input_26_layer_3_000), .s(s[2]), .y(y_input_26_layer_4_00[0]));
            logic [1:0] y_input_26_layer_3_001;
                logic [1:0] y_input_26_layer_2_0010;
                    logic [1:0] y_input_26_layer_1_00100;
                        always_comb y_input_26_layer_1_00100[0] = a2[282]; // wire
                        always_comb y_input_26_layer_1_00100[1] = a2[314]; // wire
                    mux2 mux_input_26_layer1_00100(.a(y_input_26_layer_1_00100), .s(s[0]), .y(y_input_26_layer_2_0010[0]));
                    logic [1:0] y_input_26_layer_1_00101;
                        always_comb y_input_26_layer_1_00101[0] = a2[346]; // wire
                        always_comb y_input_26_layer_1_00101[1] = a2[378]; // wire
                    mux2 mux_input_26_layer1_00101(.a(y_input_26_layer_1_00101), .s(s[0]), .y(y_input_26_layer_2_0010[1]));
                mux2 mux_input_26_layer2_0010 (.a(y_input_26_layer_2_0010), .s(s[1]), .y(y_input_26_layer_3_001[0]));
                logic [1:0] y_input_26_layer_2_0011;
                    logic [1:0] y_input_26_layer_1_00110;
                        always_comb y_input_26_layer_1_00110[0] = a2[410]; // wire
                        always_comb y_input_26_layer_1_00110[1] = a2[442]; // wire
                    mux2 mux_input_26_layer1_00110(.a(y_input_26_layer_1_00110), .s(s[0]), .y(y_input_26_layer_2_0011[0]));
                    logic [1:0] y_input_26_layer_1_00111;
                        always_comb y_input_26_layer_1_00111[0] = a2[474]; // wire
                        always_comb y_input_26_layer_1_00111[1] = a2[506]; // wire
                    mux2 mux_input_26_layer1_00111(.a(y_input_26_layer_1_00111), .s(s[0]), .y(y_input_26_layer_2_0011[1]));
                mux2 mux_input_26_layer2_0011 (.a(y_input_26_layer_2_0011), .s(s[1]), .y(y_input_26_layer_3_001[1]));
            mux2 mux_input_26_layer3_001  (.a(y_input_26_layer_3_001), .s(s[2]), .y(y_input_26_layer_4_00[1]));
        mux2 mux_input_26_layer4_00   (.a(y_input_26_layer_4_00), .s(s[3]), .y(y_input_26_layer_5_0[0]));
        logic [1:0] y_input_26_layer_4_01;
            logic [1:0] y_input_26_layer_3_010;
                logic [1:0] y_input_26_layer_2_0100;
                    logic [1:0] y_input_26_layer_1_01000;
                        always_comb y_input_26_layer_1_01000[0] = a2[538]; // wire
                        always_comb y_input_26_layer_1_01000[1] = a2[570]; // wire
                    mux2 mux_input_26_layer1_01000(.a(y_input_26_layer_1_01000), .s(s[0]), .y(y_input_26_layer_2_0100[0]));
                    logic [1:0] y_input_26_layer_1_01001;
                        always_comb y_input_26_layer_1_01001[0] = a2[602]; // wire
                        always_comb y_input_26_layer_1_01001[1] = a2[634]; // wire
                    mux2 mux_input_26_layer1_01001(.a(y_input_26_layer_1_01001), .s(s[0]), .y(y_input_26_layer_2_0100[1]));
                mux2 mux_input_26_layer2_0100 (.a(y_input_26_layer_2_0100), .s(s[1]), .y(y_input_26_layer_3_010[0]));
                logic [1:0] y_input_26_layer_2_0101;
                    logic [1:0] y_input_26_layer_1_01010;
                        always_comb y_input_26_layer_1_01010[0] = a2[666]; // wire
                        always_comb y_input_26_layer_1_01010[1] = a2[698]; // wire
                    mux2 mux_input_26_layer1_01010(.a(y_input_26_layer_1_01010), .s(s[0]), .y(y_input_26_layer_2_0101[0]));
                    logic [1:0] y_input_26_layer_1_01011;
                        always_comb y_input_26_layer_1_01011[0] = a2[730]; // wire
                        always_comb y_input_26_layer_1_01011[1] = a2[762]; // wire
                    mux2 mux_input_26_layer1_01011(.a(y_input_26_layer_1_01011), .s(s[0]), .y(y_input_26_layer_2_0101[1]));
                mux2 mux_input_26_layer2_0101 (.a(y_input_26_layer_2_0101), .s(s[1]), .y(y_input_26_layer_3_010[1]));
            mux2 mux_input_26_layer3_010  (.a(y_input_26_layer_3_010), .s(s[2]), .y(y_input_26_layer_4_01[0]));
            logic [1:0] y_input_26_layer_3_011;
                logic [1:0] y_input_26_layer_2_0110;
                    logic [1:0] y_input_26_layer_1_01100;
                        always_comb y_input_26_layer_1_01100[0] = a2[794]; // wire
                        always_comb y_input_26_layer_1_01100[1] = a2[826]; // wire
                    mux2 mux_input_26_layer1_01100(.a(y_input_26_layer_1_01100), .s(s[0]), .y(y_input_26_layer_2_0110[0]));
                    logic [1:0] y_input_26_layer_1_01101;
                        always_comb y_input_26_layer_1_01101[0] = a2[858]; // wire
                        always_comb y_input_26_layer_1_01101[1] = a2[890]; // wire
                    mux2 mux_input_26_layer1_01101(.a(y_input_26_layer_1_01101), .s(s[0]), .y(y_input_26_layer_2_0110[1]));
                mux2 mux_input_26_layer2_0110 (.a(y_input_26_layer_2_0110), .s(s[1]), .y(y_input_26_layer_3_011[0]));
                logic [1:0] y_input_26_layer_2_0111;
                    logic [1:0] y_input_26_layer_1_01110;
                        always_comb y_input_26_layer_1_01110[0] = a2[922]; // wire
                        always_comb y_input_26_layer_1_01110[1] = a2[954]; // wire
                    mux2 mux_input_26_layer1_01110(.a(y_input_26_layer_1_01110), .s(s[0]), .y(y_input_26_layer_2_0111[0]));
                    logic [1:0] y_input_26_layer_1_01111;
                        always_comb y_input_26_layer_1_01111[0] = a2[986]; // wire
                        always_comb y_input_26_layer_1_01111[1] = a2[1018]; // wire
                    mux2 mux_input_26_layer1_01111(.a(y_input_26_layer_1_01111), .s(s[0]), .y(y_input_26_layer_2_0111[1]));
                mux2 mux_input_26_layer2_0111 (.a(y_input_26_layer_2_0111), .s(s[1]), .y(y_input_26_layer_3_011[1]));
            mux2 mux_input_26_layer3_011  (.a(y_input_26_layer_3_011), .s(s[2]), .y(y_input_26_layer_4_01[1]));
        mux2 mux_input_26_layer4_01   (.a(y_input_26_layer_4_01), .s(s[3]), .y(y_input_26_layer_5_0[1]));
    mux2 mux_input_26_layer5_0    (.a(y_input_26_layer_5_0), .s(s[4]), .y(y[26]));
            
            ////////////////////////   INPUT WIRE 27   ////////////////////////
            
                logic [1:0] y_input_27_layer_5_0;
        logic [1:0] y_input_27_layer_4_00;
            logic [1:0] y_input_27_layer_3_000;
                logic [1:0] y_input_27_layer_2_0000;
                    logic [1:0] y_input_27_layer_1_00000;
                        always_comb y_input_27_layer_1_00000[0] = a2[27]; // wire
                        always_comb y_input_27_layer_1_00000[1] = a2[59]; // wire
                    mux2 mux_input_27_layer1_00000(.a(y_input_27_layer_1_00000), .s(s[0]), .y(y_input_27_layer_2_0000[0]));
                    logic [1:0] y_input_27_layer_1_00001;
                        always_comb y_input_27_layer_1_00001[0] = a2[91]; // wire
                        always_comb y_input_27_layer_1_00001[1] = a2[123]; // wire
                    mux2 mux_input_27_layer1_00001(.a(y_input_27_layer_1_00001), .s(s[0]), .y(y_input_27_layer_2_0000[1]));
                mux2 mux_input_27_layer2_0000 (.a(y_input_27_layer_2_0000), .s(s[1]), .y(y_input_27_layer_3_000[0]));
                logic [1:0] y_input_27_layer_2_0001;
                    logic [1:0] y_input_27_layer_1_00010;
                        always_comb y_input_27_layer_1_00010[0] = a2[155]; // wire
                        always_comb y_input_27_layer_1_00010[1] = a2[187]; // wire
                    mux2 mux_input_27_layer1_00010(.a(y_input_27_layer_1_00010), .s(s[0]), .y(y_input_27_layer_2_0001[0]));
                    logic [1:0] y_input_27_layer_1_00011;
                        always_comb y_input_27_layer_1_00011[0] = a2[219]; // wire
                        always_comb y_input_27_layer_1_00011[1] = a2[251]; // wire
                    mux2 mux_input_27_layer1_00011(.a(y_input_27_layer_1_00011), .s(s[0]), .y(y_input_27_layer_2_0001[1]));
                mux2 mux_input_27_layer2_0001 (.a(y_input_27_layer_2_0001), .s(s[1]), .y(y_input_27_layer_3_000[1]));
            mux2 mux_input_27_layer3_000  (.a(y_input_27_layer_3_000), .s(s[2]), .y(y_input_27_layer_4_00[0]));
            logic [1:0] y_input_27_layer_3_001;
                logic [1:0] y_input_27_layer_2_0010;
                    logic [1:0] y_input_27_layer_1_00100;
                        always_comb y_input_27_layer_1_00100[0] = a2[283]; // wire
                        always_comb y_input_27_layer_1_00100[1] = a2[315]; // wire
                    mux2 mux_input_27_layer1_00100(.a(y_input_27_layer_1_00100), .s(s[0]), .y(y_input_27_layer_2_0010[0]));
                    logic [1:0] y_input_27_layer_1_00101;
                        always_comb y_input_27_layer_1_00101[0] = a2[347]; // wire
                        always_comb y_input_27_layer_1_00101[1] = a2[379]; // wire
                    mux2 mux_input_27_layer1_00101(.a(y_input_27_layer_1_00101), .s(s[0]), .y(y_input_27_layer_2_0010[1]));
                mux2 mux_input_27_layer2_0010 (.a(y_input_27_layer_2_0010), .s(s[1]), .y(y_input_27_layer_3_001[0]));
                logic [1:0] y_input_27_layer_2_0011;
                    logic [1:0] y_input_27_layer_1_00110;
                        always_comb y_input_27_layer_1_00110[0] = a2[411]; // wire
                        always_comb y_input_27_layer_1_00110[1] = a2[443]; // wire
                    mux2 mux_input_27_layer1_00110(.a(y_input_27_layer_1_00110), .s(s[0]), .y(y_input_27_layer_2_0011[0]));
                    logic [1:0] y_input_27_layer_1_00111;
                        always_comb y_input_27_layer_1_00111[0] = a2[475]; // wire
                        always_comb y_input_27_layer_1_00111[1] = a2[507]; // wire
                    mux2 mux_input_27_layer1_00111(.a(y_input_27_layer_1_00111), .s(s[0]), .y(y_input_27_layer_2_0011[1]));
                mux2 mux_input_27_layer2_0011 (.a(y_input_27_layer_2_0011), .s(s[1]), .y(y_input_27_layer_3_001[1]));
            mux2 mux_input_27_layer3_001  (.a(y_input_27_layer_3_001), .s(s[2]), .y(y_input_27_layer_4_00[1]));
        mux2 mux_input_27_layer4_00   (.a(y_input_27_layer_4_00), .s(s[3]), .y(y_input_27_layer_5_0[0]));
        logic [1:0] y_input_27_layer_4_01;
            logic [1:0] y_input_27_layer_3_010;
                logic [1:0] y_input_27_layer_2_0100;
                    logic [1:0] y_input_27_layer_1_01000;
                        always_comb y_input_27_layer_1_01000[0] = a2[539]; // wire
                        always_comb y_input_27_layer_1_01000[1] = a2[571]; // wire
                    mux2 mux_input_27_layer1_01000(.a(y_input_27_layer_1_01000), .s(s[0]), .y(y_input_27_layer_2_0100[0]));
                    logic [1:0] y_input_27_layer_1_01001;
                        always_comb y_input_27_layer_1_01001[0] = a2[603]; // wire
                        always_comb y_input_27_layer_1_01001[1] = a2[635]; // wire
                    mux2 mux_input_27_layer1_01001(.a(y_input_27_layer_1_01001), .s(s[0]), .y(y_input_27_layer_2_0100[1]));
                mux2 mux_input_27_layer2_0100 (.a(y_input_27_layer_2_0100), .s(s[1]), .y(y_input_27_layer_3_010[0]));
                logic [1:0] y_input_27_layer_2_0101;
                    logic [1:0] y_input_27_layer_1_01010;
                        always_comb y_input_27_layer_1_01010[0] = a2[667]; // wire
                        always_comb y_input_27_layer_1_01010[1] = a2[699]; // wire
                    mux2 mux_input_27_layer1_01010(.a(y_input_27_layer_1_01010), .s(s[0]), .y(y_input_27_layer_2_0101[0]));
                    logic [1:0] y_input_27_layer_1_01011;
                        always_comb y_input_27_layer_1_01011[0] = a2[731]; // wire
                        always_comb y_input_27_layer_1_01011[1] = a2[763]; // wire
                    mux2 mux_input_27_layer1_01011(.a(y_input_27_layer_1_01011), .s(s[0]), .y(y_input_27_layer_2_0101[1]));
                mux2 mux_input_27_layer2_0101 (.a(y_input_27_layer_2_0101), .s(s[1]), .y(y_input_27_layer_3_010[1]));
            mux2 mux_input_27_layer3_010  (.a(y_input_27_layer_3_010), .s(s[2]), .y(y_input_27_layer_4_01[0]));
            logic [1:0] y_input_27_layer_3_011;
                logic [1:0] y_input_27_layer_2_0110;
                    logic [1:0] y_input_27_layer_1_01100;
                        always_comb y_input_27_layer_1_01100[0] = a2[795]; // wire
                        always_comb y_input_27_layer_1_01100[1] = a2[827]; // wire
                    mux2 mux_input_27_layer1_01100(.a(y_input_27_layer_1_01100), .s(s[0]), .y(y_input_27_layer_2_0110[0]));
                    logic [1:0] y_input_27_layer_1_01101;
                        always_comb y_input_27_layer_1_01101[0] = a2[859]; // wire
                        always_comb y_input_27_layer_1_01101[1] = a2[891]; // wire
                    mux2 mux_input_27_layer1_01101(.a(y_input_27_layer_1_01101), .s(s[0]), .y(y_input_27_layer_2_0110[1]));
                mux2 mux_input_27_layer2_0110 (.a(y_input_27_layer_2_0110), .s(s[1]), .y(y_input_27_layer_3_011[0]));
                logic [1:0] y_input_27_layer_2_0111;
                    logic [1:0] y_input_27_layer_1_01110;
                        always_comb y_input_27_layer_1_01110[0] = a2[923]; // wire
                        always_comb y_input_27_layer_1_01110[1] = a2[955]; // wire
                    mux2 mux_input_27_layer1_01110(.a(y_input_27_layer_1_01110), .s(s[0]), .y(y_input_27_layer_2_0111[0]));
                    logic [1:0] y_input_27_layer_1_01111;
                        always_comb y_input_27_layer_1_01111[0] = a2[987]; // wire
                        always_comb y_input_27_layer_1_01111[1] = a2[1019]; // wire
                    mux2 mux_input_27_layer1_01111(.a(y_input_27_layer_1_01111), .s(s[0]), .y(y_input_27_layer_2_0111[1]));
                mux2 mux_input_27_layer2_0111 (.a(y_input_27_layer_2_0111), .s(s[1]), .y(y_input_27_layer_3_011[1]));
            mux2 mux_input_27_layer3_011  (.a(y_input_27_layer_3_011), .s(s[2]), .y(y_input_27_layer_4_01[1]));
        mux2 mux_input_27_layer4_01   (.a(y_input_27_layer_4_01), .s(s[3]), .y(y_input_27_layer_5_0[1]));
    mux2 mux_input_27_layer5_0    (.a(y_input_27_layer_5_0), .s(s[4]), .y(y[27]));
            
            ////////////////////////   INPUT WIRE 28   ////////////////////////
            
                logic [1:0] y_input_28_layer_5_0;
        logic [1:0] y_input_28_layer_4_00;
            logic [1:0] y_input_28_layer_3_000;
                logic [1:0] y_input_28_layer_2_0000;
                    logic [1:0] y_input_28_layer_1_00000;
                        always_comb y_input_28_layer_1_00000[0] = a2[28]; // wire
                        always_comb y_input_28_layer_1_00000[1] = a2[60]; // wire
                    mux2 mux_input_28_layer1_00000(.a(y_input_28_layer_1_00000), .s(s[0]), .y(y_input_28_layer_2_0000[0]));
                    logic [1:0] y_input_28_layer_1_00001;
                        always_comb y_input_28_layer_1_00001[0] = a2[92]; // wire
                        always_comb y_input_28_layer_1_00001[1] = a2[124]; // wire
                    mux2 mux_input_28_layer1_00001(.a(y_input_28_layer_1_00001), .s(s[0]), .y(y_input_28_layer_2_0000[1]));
                mux2 mux_input_28_layer2_0000 (.a(y_input_28_layer_2_0000), .s(s[1]), .y(y_input_28_layer_3_000[0]));
                logic [1:0] y_input_28_layer_2_0001;
                    logic [1:0] y_input_28_layer_1_00010;
                        always_comb y_input_28_layer_1_00010[0] = a2[156]; // wire
                        always_comb y_input_28_layer_1_00010[1] = a2[188]; // wire
                    mux2 mux_input_28_layer1_00010(.a(y_input_28_layer_1_00010), .s(s[0]), .y(y_input_28_layer_2_0001[0]));
                    logic [1:0] y_input_28_layer_1_00011;
                        always_comb y_input_28_layer_1_00011[0] = a2[220]; // wire
                        always_comb y_input_28_layer_1_00011[1] = a2[252]; // wire
                    mux2 mux_input_28_layer1_00011(.a(y_input_28_layer_1_00011), .s(s[0]), .y(y_input_28_layer_2_0001[1]));
                mux2 mux_input_28_layer2_0001 (.a(y_input_28_layer_2_0001), .s(s[1]), .y(y_input_28_layer_3_000[1]));
            mux2 mux_input_28_layer3_000  (.a(y_input_28_layer_3_000), .s(s[2]), .y(y_input_28_layer_4_00[0]));
            logic [1:0] y_input_28_layer_3_001;
                logic [1:0] y_input_28_layer_2_0010;
                    logic [1:0] y_input_28_layer_1_00100;
                        always_comb y_input_28_layer_1_00100[0] = a2[284]; // wire
                        always_comb y_input_28_layer_1_00100[1] = a2[316]; // wire
                    mux2 mux_input_28_layer1_00100(.a(y_input_28_layer_1_00100), .s(s[0]), .y(y_input_28_layer_2_0010[0]));
                    logic [1:0] y_input_28_layer_1_00101;
                        always_comb y_input_28_layer_1_00101[0] = a2[348]; // wire
                        always_comb y_input_28_layer_1_00101[1] = a2[380]; // wire
                    mux2 mux_input_28_layer1_00101(.a(y_input_28_layer_1_00101), .s(s[0]), .y(y_input_28_layer_2_0010[1]));
                mux2 mux_input_28_layer2_0010 (.a(y_input_28_layer_2_0010), .s(s[1]), .y(y_input_28_layer_3_001[0]));
                logic [1:0] y_input_28_layer_2_0011;
                    logic [1:0] y_input_28_layer_1_00110;
                        always_comb y_input_28_layer_1_00110[0] = a2[412]; // wire
                        always_comb y_input_28_layer_1_00110[1] = a2[444]; // wire
                    mux2 mux_input_28_layer1_00110(.a(y_input_28_layer_1_00110), .s(s[0]), .y(y_input_28_layer_2_0011[0]));
                    logic [1:0] y_input_28_layer_1_00111;
                        always_comb y_input_28_layer_1_00111[0] = a2[476]; // wire
                        always_comb y_input_28_layer_1_00111[1] = a2[508]; // wire
                    mux2 mux_input_28_layer1_00111(.a(y_input_28_layer_1_00111), .s(s[0]), .y(y_input_28_layer_2_0011[1]));
                mux2 mux_input_28_layer2_0011 (.a(y_input_28_layer_2_0011), .s(s[1]), .y(y_input_28_layer_3_001[1]));
            mux2 mux_input_28_layer3_001  (.a(y_input_28_layer_3_001), .s(s[2]), .y(y_input_28_layer_4_00[1]));
        mux2 mux_input_28_layer4_00   (.a(y_input_28_layer_4_00), .s(s[3]), .y(y_input_28_layer_5_0[0]));
        logic [1:0] y_input_28_layer_4_01;
            logic [1:0] y_input_28_layer_3_010;
                logic [1:0] y_input_28_layer_2_0100;
                    logic [1:0] y_input_28_layer_1_01000;
                        always_comb y_input_28_layer_1_01000[0] = a2[540]; // wire
                        always_comb y_input_28_layer_1_01000[1] = a2[572]; // wire
                    mux2 mux_input_28_layer1_01000(.a(y_input_28_layer_1_01000), .s(s[0]), .y(y_input_28_layer_2_0100[0]));
                    logic [1:0] y_input_28_layer_1_01001;
                        always_comb y_input_28_layer_1_01001[0] = a2[604]; // wire
                        always_comb y_input_28_layer_1_01001[1] = a2[636]; // wire
                    mux2 mux_input_28_layer1_01001(.a(y_input_28_layer_1_01001), .s(s[0]), .y(y_input_28_layer_2_0100[1]));
                mux2 mux_input_28_layer2_0100 (.a(y_input_28_layer_2_0100), .s(s[1]), .y(y_input_28_layer_3_010[0]));
                logic [1:0] y_input_28_layer_2_0101;
                    logic [1:0] y_input_28_layer_1_01010;
                        always_comb y_input_28_layer_1_01010[0] = a2[668]; // wire
                        always_comb y_input_28_layer_1_01010[1] = a2[700]; // wire
                    mux2 mux_input_28_layer1_01010(.a(y_input_28_layer_1_01010), .s(s[0]), .y(y_input_28_layer_2_0101[0]));
                    logic [1:0] y_input_28_layer_1_01011;
                        always_comb y_input_28_layer_1_01011[0] = a2[732]; // wire
                        always_comb y_input_28_layer_1_01011[1] = a2[764]; // wire
                    mux2 mux_input_28_layer1_01011(.a(y_input_28_layer_1_01011), .s(s[0]), .y(y_input_28_layer_2_0101[1]));
                mux2 mux_input_28_layer2_0101 (.a(y_input_28_layer_2_0101), .s(s[1]), .y(y_input_28_layer_3_010[1]));
            mux2 mux_input_28_layer3_010  (.a(y_input_28_layer_3_010), .s(s[2]), .y(y_input_28_layer_4_01[0]));
            logic [1:0] y_input_28_layer_3_011;
                logic [1:0] y_input_28_layer_2_0110;
                    logic [1:0] y_input_28_layer_1_01100;
                        always_comb y_input_28_layer_1_01100[0] = a2[796]; // wire
                        always_comb y_input_28_layer_1_01100[1] = a2[828]; // wire
                    mux2 mux_input_28_layer1_01100(.a(y_input_28_layer_1_01100), .s(s[0]), .y(y_input_28_layer_2_0110[0]));
                    logic [1:0] y_input_28_layer_1_01101;
                        always_comb y_input_28_layer_1_01101[0] = a2[860]; // wire
                        always_comb y_input_28_layer_1_01101[1] = a2[892]; // wire
                    mux2 mux_input_28_layer1_01101(.a(y_input_28_layer_1_01101), .s(s[0]), .y(y_input_28_layer_2_0110[1]));
                mux2 mux_input_28_layer2_0110 (.a(y_input_28_layer_2_0110), .s(s[1]), .y(y_input_28_layer_3_011[0]));
                logic [1:0] y_input_28_layer_2_0111;
                    logic [1:0] y_input_28_layer_1_01110;
                        always_comb y_input_28_layer_1_01110[0] = a2[924]; // wire
                        always_comb y_input_28_layer_1_01110[1] = a2[956]; // wire
                    mux2 mux_input_28_layer1_01110(.a(y_input_28_layer_1_01110), .s(s[0]), .y(y_input_28_layer_2_0111[0]));
                    logic [1:0] y_input_28_layer_1_01111;
                        always_comb y_input_28_layer_1_01111[0] = a2[988]; // wire
                        always_comb y_input_28_layer_1_01111[1] = a2[1020]; // wire
                    mux2 mux_input_28_layer1_01111(.a(y_input_28_layer_1_01111), .s(s[0]), .y(y_input_28_layer_2_0111[1]));
                mux2 mux_input_28_layer2_0111 (.a(y_input_28_layer_2_0111), .s(s[1]), .y(y_input_28_layer_3_011[1]));
            mux2 mux_input_28_layer3_011  (.a(y_input_28_layer_3_011), .s(s[2]), .y(y_input_28_layer_4_01[1]));
        mux2 mux_input_28_layer4_01   (.a(y_input_28_layer_4_01), .s(s[3]), .y(y_input_28_layer_5_0[1]));
    mux2 mux_input_28_layer5_0    (.a(y_input_28_layer_5_0), .s(s[4]), .y(y[28]));
            
            ////////////////////////   INPUT WIRE 29   ////////////////////////
            
                logic [1:0] y_input_29_layer_5_0;
        logic [1:0] y_input_29_layer_4_00;
            logic [1:0] y_input_29_layer_3_000;
                logic [1:0] y_input_29_layer_2_0000;
                    logic [1:0] y_input_29_layer_1_00000;
                        always_comb y_input_29_layer_1_00000[0] = a2[29]; // wire
                        always_comb y_input_29_layer_1_00000[1] = a2[61]; // wire
                    mux2 mux_input_29_layer1_00000(.a(y_input_29_layer_1_00000), .s(s[0]), .y(y_input_29_layer_2_0000[0]));
                    logic [1:0] y_input_29_layer_1_00001;
                        always_comb y_input_29_layer_1_00001[0] = a2[93]; // wire
                        always_comb y_input_29_layer_1_00001[1] = a2[125]; // wire
                    mux2 mux_input_29_layer1_00001(.a(y_input_29_layer_1_00001), .s(s[0]), .y(y_input_29_layer_2_0000[1]));
                mux2 mux_input_29_layer2_0000 (.a(y_input_29_layer_2_0000), .s(s[1]), .y(y_input_29_layer_3_000[0]));
                logic [1:0] y_input_29_layer_2_0001;
                    logic [1:0] y_input_29_layer_1_00010;
                        always_comb y_input_29_layer_1_00010[0] = a2[157]; // wire
                        always_comb y_input_29_layer_1_00010[1] = a2[189]; // wire
                    mux2 mux_input_29_layer1_00010(.a(y_input_29_layer_1_00010), .s(s[0]), .y(y_input_29_layer_2_0001[0]));
                    logic [1:0] y_input_29_layer_1_00011;
                        always_comb y_input_29_layer_1_00011[0] = a2[221]; // wire
                        always_comb y_input_29_layer_1_00011[1] = a2[253]; // wire
                    mux2 mux_input_29_layer1_00011(.a(y_input_29_layer_1_00011), .s(s[0]), .y(y_input_29_layer_2_0001[1]));
                mux2 mux_input_29_layer2_0001 (.a(y_input_29_layer_2_0001), .s(s[1]), .y(y_input_29_layer_3_000[1]));
            mux2 mux_input_29_layer3_000  (.a(y_input_29_layer_3_000), .s(s[2]), .y(y_input_29_layer_4_00[0]));
            logic [1:0] y_input_29_layer_3_001;
                logic [1:0] y_input_29_layer_2_0010;
                    logic [1:0] y_input_29_layer_1_00100;
                        always_comb y_input_29_layer_1_00100[0] = a2[285]; // wire
                        always_comb y_input_29_layer_1_00100[1] = a2[317]; // wire
                    mux2 mux_input_29_layer1_00100(.a(y_input_29_layer_1_00100), .s(s[0]), .y(y_input_29_layer_2_0010[0]));
                    logic [1:0] y_input_29_layer_1_00101;
                        always_comb y_input_29_layer_1_00101[0] = a2[349]; // wire
                        always_comb y_input_29_layer_1_00101[1] = a2[381]; // wire
                    mux2 mux_input_29_layer1_00101(.a(y_input_29_layer_1_00101), .s(s[0]), .y(y_input_29_layer_2_0010[1]));
                mux2 mux_input_29_layer2_0010 (.a(y_input_29_layer_2_0010), .s(s[1]), .y(y_input_29_layer_3_001[0]));
                logic [1:0] y_input_29_layer_2_0011;
                    logic [1:0] y_input_29_layer_1_00110;
                        always_comb y_input_29_layer_1_00110[0] = a2[413]; // wire
                        always_comb y_input_29_layer_1_00110[1] = a2[445]; // wire
                    mux2 mux_input_29_layer1_00110(.a(y_input_29_layer_1_00110), .s(s[0]), .y(y_input_29_layer_2_0011[0]));
                    logic [1:0] y_input_29_layer_1_00111;
                        always_comb y_input_29_layer_1_00111[0] = a2[477]; // wire
                        always_comb y_input_29_layer_1_00111[1] = a2[509]; // wire
                    mux2 mux_input_29_layer1_00111(.a(y_input_29_layer_1_00111), .s(s[0]), .y(y_input_29_layer_2_0011[1]));
                mux2 mux_input_29_layer2_0011 (.a(y_input_29_layer_2_0011), .s(s[1]), .y(y_input_29_layer_3_001[1]));
            mux2 mux_input_29_layer3_001  (.a(y_input_29_layer_3_001), .s(s[2]), .y(y_input_29_layer_4_00[1]));
        mux2 mux_input_29_layer4_00   (.a(y_input_29_layer_4_00), .s(s[3]), .y(y_input_29_layer_5_0[0]));
        logic [1:0] y_input_29_layer_4_01;
            logic [1:0] y_input_29_layer_3_010;
                logic [1:0] y_input_29_layer_2_0100;
                    logic [1:0] y_input_29_layer_1_01000;
                        always_comb y_input_29_layer_1_01000[0] = a2[541]; // wire
                        always_comb y_input_29_layer_1_01000[1] = a2[573]; // wire
                    mux2 mux_input_29_layer1_01000(.a(y_input_29_layer_1_01000), .s(s[0]), .y(y_input_29_layer_2_0100[0]));
                    logic [1:0] y_input_29_layer_1_01001;
                        always_comb y_input_29_layer_1_01001[0] = a2[605]; // wire
                        always_comb y_input_29_layer_1_01001[1] = a2[637]; // wire
                    mux2 mux_input_29_layer1_01001(.a(y_input_29_layer_1_01001), .s(s[0]), .y(y_input_29_layer_2_0100[1]));
                mux2 mux_input_29_layer2_0100 (.a(y_input_29_layer_2_0100), .s(s[1]), .y(y_input_29_layer_3_010[0]));
                logic [1:0] y_input_29_layer_2_0101;
                    logic [1:0] y_input_29_layer_1_01010;
                        always_comb y_input_29_layer_1_01010[0] = a2[669]; // wire
                        always_comb y_input_29_layer_1_01010[1] = a2[701]; // wire
                    mux2 mux_input_29_layer1_01010(.a(y_input_29_layer_1_01010), .s(s[0]), .y(y_input_29_layer_2_0101[0]));
                    logic [1:0] y_input_29_layer_1_01011;
                        always_comb y_input_29_layer_1_01011[0] = a2[733]; // wire
                        always_comb y_input_29_layer_1_01011[1] = a2[765]; // wire
                    mux2 mux_input_29_layer1_01011(.a(y_input_29_layer_1_01011), .s(s[0]), .y(y_input_29_layer_2_0101[1]));
                mux2 mux_input_29_layer2_0101 (.a(y_input_29_layer_2_0101), .s(s[1]), .y(y_input_29_layer_3_010[1]));
            mux2 mux_input_29_layer3_010  (.a(y_input_29_layer_3_010), .s(s[2]), .y(y_input_29_layer_4_01[0]));
            logic [1:0] y_input_29_layer_3_011;
                logic [1:0] y_input_29_layer_2_0110;
                    logic [1:0] y_input_29_layer_1_01100;
                        always_comb y_input_29_layer_1_01100[0] = a2[797]; // wire
                        always_comb y_input_29_layer_1_01100[1] = a2[829]; // wire
                    mux2 mux_input_29_layer1_01100(.a(y_input_29_layer_1_01100), .s(s[0]), .y(y_input_29_layer_2_0110[0]));
                    logic [1:0] y_input_29_layer_1_01101;
                        always_comb y_input_29_layer_1_01101[0] = a2[861]; // wire
                        always_comb y_input_29_layer_1_01101[1] = a2[893]; // wire
                    mux2 mux_input_29_layer1_01101(.a(y_input_29_layer_1_01101), .s(s[0]), .y(y_input_29_layer_2_0110[1]));
                mux2 mux_input_29_layer2_0110 (.a(y_input_29_layer_2_0110), .s(s[1]), .y(y_input_29_layer_3_011[0]));
                logic [1:0] y_input_29_layer_2_0111;
                    logic [1:0] y_input_29_layer_1_01110;
                        always_comb y_input_29_layer_1_01110[0] = a2[925]; // wire
                        always_comb y_input_29_layer_1_01110[1] = a2[957]; // wire
                    mux2 mux_input_29_layer1_01110(.a(y_input_29_layer_1_01110), .s(s[0]), .y(y_input_29_layer_2_0111[0]));
                    logic [1:0] y_input_29_layer_1_01111;
                        always_comb y_input_29_layer_1_01111[0] = a2[989]; // wire
                        always_comb y_input_29_layer_1_01111[1] = a2[1021]; // wire
                    mux2 mux_input_29_layer1_01111(.a(y_input_29_layer_1_01111), .s(s[0]), .y(y_input_29_layer_2_0111[1]));
                mux2 mux_input_29_layer2_0111 (.a(y_input_29_layer_2_0111), .s(s[1]), .y(y_input_29_layer_3_011[1]));
            mux2 mux_input_29_layer3_011  (.a(y_input_29_layer_3_011), .s(s[2]), .y(y_input_29_layer_4_01[1]));
        mux2 mux_input_29_layer4_01   (.a(y_input_29_layer_4_01), .s(s[3]), .y(y_input_29_layer_5_0[1]));
    mux2 mux_input_29_layer5_0    (.a(y_input_29_layer_5_0), .s(s[4]), .y(y[29]));
            
            ////////////////////////   INPUT WIRE 30   ////////////////////////
            
                logic [1:0] y_input_30_layer_5_0;
        logic [1:0] y_input_30_layer_4_00;
            logic [1:0] y_input_30_layer_3_000;
                logic [1:0] y_input_30_layer_2_0000;
                    logic [1:0] y_input_30_layer_1_00000;
                        always_comb y_input_30_layer_1_00000[0] = a2[30]; // wire
                        always_comb y_input_30_layer_1_00000[1] = a2[62]; // wire
                    mux2 mux_input_30_layer1_00000(.a(y_input_30_layer_1_00000), .s(s[0]), .y(y_input_30_layer_2_0000[0]));
                    logic [1:0] y_input_30_layer_1_00001;
                        always_comb y_input_30_layer_1_00001[0] = a2[94]; // wire
                        always_comb y_input_30_layer_1_00001[1] = a2[126]; // wire
                    mux2 mux_input_30_layer1_00001(.a(y_input_30_layer_1_00001), .s(s[0]), .y(y_input_30_layer_2_0000[1]));
                mux2 mux_input_30_layer2_0000 (.a(y_input_30_layer_2_0000), .s(s[1]), .y(y_input_30_layer_3_000[0]));
                logic [1:0] y_input_30_layer_2_0001;
                    logic [1:0] y_input_30_layer_1_00010;
                        always_comb y_input_30_layer_1_00010[0] = a2[158]; // wire
                        always_comb y_input_30_layer_1_00010[1] = a2[190]; // wire
                    mux2 mux_input_30_layer1_00010(.a(y_input_30_layer_1_00010), .s(s[0]), .y(y_input_30_layer_2_0001[0]));
                    logic [1:0] y_input_30_layer_1_00011;
                        always_comb y_input_30_layer_1_00011[0] = a2[222]; // wire
                        always_comb y_input_30_layer_1_00011[1] = a2[254]; // wire
                    mux2 mux_input_30_layer1_00011(.a(y_input_30_layer_1_00011), .s(s[0]), .y(y_input_30_layer_2_0001[1]));
                mux2 mux_input_30_layer2_0001 (.a(y_input_30_layer_2_0001), .s(s[1]), .y(y_input_30_layer_3_000[1]));
            mux2 mux_input_30_layer3_000  (.a(y_input_30_layer_3_000), .s(s[2]), .y(y_input_30_layer_4_00[0]));
            logic [1:0] y_input_30_layer_3_001;
                logic [1:0] y_input_30_layer_2_0010;
                    logic [1:0] y_input_30_layer_1_00100;
                        always_comb y_input_30_layer_1_00100[0] = a2[286]; // wire
                        always_comb y_input_30_layer_1_00100[1] = a2[318]; // wire
                    mux2 mux_input_30_layer1_00100(.a(y_input_30_layer_1_00100), .s(s[0]), .y(y_input_30_layer_2_0010[0]));
                    logic [1:0] y_input_30_layer_1_00101;
                        always_comb y_input_30_layer_1_00101[0] = a2[350]; // wire
                        always_comb y_input_30_layer_1_00101[1] = a2[382]; // wire
                    mux2 mux_input_30_layer1_00101(.a(y_input_30_layer_1_00101), .s(s[0]), .y(y_input_30_layer_2_0010[1]));
                mux2 mux_input_30_layer2_0010 (.a(y_input_30_layer_2_0010), .s(s[1]), .y(y_input_30_layer_3_001[0]));
                logic [1:0] y_input_30_layer_2_0011;
                    logic [1:0] y_input_30_layer_1_00110;
                        always_comb y_input_30_layer_1_00110[0] = a2[414]; // wire
                        always_comb y_input_30_layer_1_00110[1] = a2[446]; // wire
                    mux2 mux_input_30_layer1_00110(.a(y_input_30_layer_1_00110), .s(s[0]), .y(y_input_30_layer_2_0011[0]));
                    logic [1:0] y_input_30_layer_1_00111;
                        always_comb y_input_30_layer_1_00111[0] = a2[478]; // wire
                        always_comb y_input_30_layer_1_00111[1] = a2[510]; // wire
                    mux2 mux_input_30_layer1_00111(.a(y_input_30_layer_1_00111), .s(s[0]), .y(y_input_30_layer_2_0011[1]));
                mux2 mux_input_30_layer2_0011 (.a(y_input_30_layer_2_0011), .s(s[1]), .y(y_input_30_layer_3_001[1]));
            mux2 mux_input_30_layer3_001  (.a(y_input_30_layer_3_001), .s(s[2]), .y(y_input_30_layer_4_00[1]));
        mux2 mux_input_30_layer4_00   (.a(y_input_30_layer_4_00), .s(s[3]), .y(y_input_30_layer_5_0[0]));
        logic [1:0] y_input_30_layer_4_01;
            logic [1:0] y_input_30_layer_3_010;
                logic [1:0] y_input_30_layer_2_0100;
                    logic [1:0] y_input_30_layer_1_01000;
                        always_comb y_input_30_layer_1_01000[0] = a2[542]; // wire
                        always_comb y_input_30_layer_1_01000[1] = a2[574]; // wire
                    mux2 mux_input_30_layer1_01000(.a(y_input_30_layer_1_01000), .s(s[0]), .y(y_input_30_layer_2_0100[0]));
                    logic [1:0] y_input_30_layer_1_01001;
                        always_comb y_input_30_layer_1_01001[0] = a2[606]; // wire
                        always_comb y_input_30_layer_1_01001[1] = a2[638]; // wire
                    mux2 mux_input_30_layer1_01001(.a(y_input_30_layer_1_01001), .s(s[0]), .y(y_input_30_layer_2_0100[1]));
                mux2 mux_input_30_layer2_0100 (.a(y_input_30_layer_2_0100), .s(s[1]), .y(y_input_30_layer_3_010[0]));
                logic [1:0] y_input_30_layer_2_0101;
                    logic [1:0] y_input_30_layer_1_01010;
                        always_comb y_input_30_layer_1_01010[0] = a2[670]; // wire
                        always_comb y_input_30_layer_1_01010[1] = a2[702]; // wire
                    mux2 mux_input_30_layer1_01010(.a(y_input_30_layer_1_01010), .s(s[0]), .y(y_input_30_layer_2_0101[0]));
                    logic [1:0] y_input_30_layer_1_01011;
                        always_comb y_input_30_layer_1_01011[0] = a2[734]; // wire
                        always_comb y_input_30_layer_1_01011[1] = a2[766]; // wire
                    mux2 mux_input_30_layer1_01011(.a(y_input_30_layer_1_01011), .s(s[0]), .y(y_input_30_layer_2_0101[1]));
                mux2 mux_input_30_layer2_0101 (.a(y_input_30_layer_2_0101), .s(s[1]), .y(y_input_30_layer_3_010[1]));
            mux2 mux_input_30_layer3_010  (.a(y_input_30_layer_3_010), .s(s[2]), .y(y_input_30_layer_4_01[0]));
            logic [1:0] y_input_30_layer_3_011;
                logic [1:0] y_input_30_layer_2_0110;
                    logic [1:0] y_input_30_layer_1_01100;
                        always_comb y_input_30_layer_1_01100[0] = a2[798]; // wire
                        always_comb y_input_30_layer_1_01100[1] = a2[830]; // wire
                    mux2 mux_input_30_layer1_01100(.a(y_input_30_layer_1_01100), .s(s[0]), .y(y_input_30_layer_2_0110[0]));
                    logic [1:0] y_input_30_layer_1_01101;
                        always_comb y_input_30_layer_1_01101[0] = a2[862]; // wire
                        always_comb y_input_30_layer_1_01101[1] = a2[894]; // wire
                    mux2 mux_input_30_layer1_01101(.a(y_input_30_layer_1_01101), .s(s[0]), .y(y_input_30_layer_2_0110[1]));
                mux2 mux_input_30_layer2_0110 (.a(y_input_30_layer_2_0110), .s(s[1]), .y(y_input_30_layer_3_011[0]));
                logic [1:0] y_input_30_layer_2_0111;
                    logic [1:0] y_input_30_layer_1_01110;
                        always_comb y_input_30_layer_1_01110[0] = a2[926]; // wire
                        always_comb y_input_30_layer_1_01110[1] = a2[958]; // wire
                    mux2 mux_input_30_layer1_01110(.a(y_input_30_layer_1_01110), .s(s[0]), .y(y_input_30_layer_2_0111[0]));
                    logic [1:0] y_input_30_layer_1_01111;
                        always_comb y_input_30_layer_1_01111[0] = a2[990]; // wire
                        always_comb y_input_30_layer_1_01111[1] = a2[1022]; // wire
                    mux2 mux_input_30_layer1_01111(.a(y_input_30_layer_1_01111), .s(s[0]), .y(y_input_30_layer_2_0111[1]));
                mux2 mux_input_30_layer2_0111 (.a(y_input_30_layer_2_0111), .s(s[1]), .y(y_input_30_layer_3_011[1]));
            mux2 mux_input_30_layer3_011  (.a(y_input_30_layer_3_011), .s(s[2]), .y(y_input_30_layer_4_01[1]));
        mux2 mux_input_30_layer4_01   (.a(y_input_30_layer_4_01), .s(s[3]), .y(y_input_30_layer_5_0[1]));
    mux2 mux_input_30_layer5_0    (.a(y_input_30_layer_5_0), .s(s[4]), .y(y[30]));
            
            ////////////////////////   INPUT WIRE 31   ////////////////////////
            
                logic [1:0] y_input_31_layer_5_0;
        logic [1:0] y_input_31_layer_4_00;
            logic [1:0] y_input_31_layer_3_000;
                logic [1:0] y_input_31_layer_2_0000;
                    logic [1:0] y_input_31_layer_1_00000;
                        always_comb y_input_31_layer_1_00000[0] = a2[31]; // wire
                        always_comb y_input_31_layer_1_00000[1] = a2[63]; // wire
                    mux2 mux_input_31_layer1_00000(.a(y_input_31_layer_1_00000), .s(s[0]), .y(y_input_31_layer_2_0000[0]));
                    logic [1:0] y_input_31_layer_1_00001;
                        always_comb y_input_31_layer_1_00001[0] = a2[95]; // wire
                        always_comb y_input_31_layer_1_00001[1] = a2[127]; // wire
                    mux2 mux_input_31_layer1_00001(.a(y_input_31_layer_1_00001), .s(s[0]), .y(y_input_31_layer_2_0000[1]));
                mux2 mux_input_31_layer2_0000 (.a(y_input_31_layer_2_0000), .s(s[1]), .y(y_input_31_layer_3_000[0]));
                logic [1:0] y_input_31_layer_2_0001;
                    logic [1:0] y_input_31_layer_1_00010;
                        always_comb y_input_31_layer_1_00010[0] = a2[159]; // wire
                        always_comb y_input_31_layer_1_00010[1] = a2[191]; // wire
                    mux2 mux_input_31_layer1_00010(.a(y_input_31_layer_1_00010), .s(s[0]), .y(y_input_31_layer_2_0001[0]));
                    logic [1:0] y_input_31_layer_1_00011;
                        always_comb y_input_31_layer_1_00011[0] = a2[223]; // wire
                        always_comb y_input_31_layer_1_00011[1] = a2[255]; // wire
                    mux2 mux_input_31_layer1_00011(.a(y_input_31_layer_1_00011), .s(s[0]), .y(y_input_31_layer_2_0001[1]));
                mux2 mux_input_31_layer2_0001 (.a(y_input_31_layer_2_0001), .s(s[1]), .y(y_input_31_layer_3_000[1]));
            mux2 mux_input_31_layer3_000  (.a(y_input_31_layer_3_000), .s(s[2]), .y(y_input_31_layer_4_00[0]));
            logic [1:0] y_input_31_layer_3_001;
                logic [1:0] y_input_31_layer_2_0010;
                    logic [1:0] y_input_31_layer_1_00100;
                        always_comb y_input_31_layer_1_00100[0] = a2[287]; // wire
                        always_comb y_input_31_layer_1_00100[1] = a2[319]; // wire
                    mux2 mux_input_31_layer1_00100(.a(y_input_31_layer_1_00100), .s(s[0]), .y(y_input_31_layer_2_0010[0]));
                    logic [1:0] y_input_31_layer_1_00101;
                        always_comb y_input_31_layer_1_00101[0] = a2[351]; // wire
                        always_comb y_input_31_layer_1_00101[1] = a2[383]; // wire
                    mux2 mux_input_31_layer1_00101(.a(y_input_31_layer_1_00101), .s(s[0]), .y(y_input_31_layer_2_0010[1]));
                mux2 mux_input_31_layer2_0010 (.a(y_input_31_layer_2_0010), .s(s[1]), .y(y_input_31_layer_3_001[0]));
                logic [1:0] y_input_31_layer_2_0011;
                    logic [1:0] y_input_31_layer_1_00110;
                        always_comb y_input_31_layer_1_00110[0] = a2[415]; // wire
                        always_comb y_input_31_layer_1_00110[1] = a2[447]; // wire
                    mux2 mux_input_31_layer1_00110(.a(y_input_31_layer_1_00110), .s(s[0]), .y(y_input_31_layer_2_0011[0]));
                    logic [1:0] y_input_31_layer_1_00111;
                        always_comb y_input_31_layer_1_00111[0] = a2[479]; // wire
                        always_comb y_input_31_layer_1_00111[1] = a2[511]; // wire
                    mux2 mux_input_31_layer1_00111(.a(y_input_31_layer_1_00111), .s(s[0]), .y(y_input_31_layer_2_0011[1]));
                mux2 mux_input_31_layer2_0011 (.a(y_input_31_layer_2_0011), .s(s[1]), .y(y_input_31_layer_3_001[1]));
            mux2 mux_input_31_layer3_001  (.a(y_input_31_layer_3_001), .s(s[2]), .y(y_input_31_layer_4_00[1]));
        mux2 mux_input_31_layer4_00   (.a(y_input_31_layer_4_00), .s(s[3]), .y(y_input_31_layer_5_0[0]));
        logic [1:0] y_input_31_layer_4_01;
            logic [1:0] y_input_31_layer_3_010;
                logic [1:0] y_input_31_layer_2_0100;
                    logic [1:0] y_input_31_layer_1_01000;
                        always_comb y_input_31_layer_1_01000[0] = a2[543]; // wire
                        always_comb y_input_31_layer_1_01000[1] = a2[575]; // wire
                    mux2 mux_input_31_layer1_01000(.a(y_input_31_layer_1_01000), .s(s[0]), .y(y_input_31_layer_2_0100[0]));
                    logic [1:0] y_input_31_layer_1_01001;
                        always_comb y_input_31_layer_1_01001[0] = a2[607]; // wire
                        always_comb y_input_31_layer_1_01001[1] = a2[639]; // wire
                    mux2 mux_input_31_layer1_01001(.a(y_input_31_layer_1_01001), .s(s[0]), .y(y_input_31_layer_2_0100[1]));
                mux2 mux_input_31_layer2_0100 (.a(y_input_31_layer_2_0100), .s(s[1]), .y(y_input_31_layer_3_010[0]));
                logic [1:0] y_input_31_layer_2_0101;
                    logic [1:0] y_input_31_layer_1_01010;
                        always_comb y_input_31_layer_1_01010[0] = a2[671]; // wire
                        always_comb y_input_31_layer_1_01010[1] = a2[703]; // wire
                    mux2 mux_input_31_layer1_01010(.a(y_input_31_layer_1_01010), .s(s[0]), .y(y_input_31_layer_2_0101[0]));
                    logic [1:0] y_input_31_layer_1_01011;
                        always_comb y_input_31_layer_1_01011[0] = a2[735]; // wire
                        always_comb y_input_31_layer_1_01011[1] = a2[767]; // wire
                    mux2 mux_input_31_layer1_01011(.a(y_input_31_layer_1_01011), .s(s[0]), .y(y_input_31_layer_2_0101[1]));
                mux2 mux_input_31_layer2_0101 (.a(y_input_31_layer_2_0101), .s(s[1]), .y(y_input_31_layer_3_010[1]));
            mux2 mux_input_31_layer3_010  (.a(y_input_31_layer_3_010), .s(s[2]), .y(y_input_31_layer_4_01[0]));
            logic [1:0] y_input_31_layer_3_011;
                logic [1:0] y_input_31_layer_2_0110;
                    logic [1:0] y_input_31_layer_1_01100;
                        always_comb y_input_31_layer_1_01100[0] = a2[799]; // wire
                        always_comb y_input_31_layer_1_01100[1] = a2[831]; // wire
                    mux2 mux_input_31_layer1_01100(.a(y_input_31_layer_1_01100), .s(s[0]), .y(y_input_31_layer_2_0110[0]));
                    logic [1:0] y_input_31_layer_1_01101;
                        always_comb y_input_31_layer_1_01101[0] = a2[863]; // wire
                        always_comb y_input_31_layer_1_01101[1] = a2[895]; // wire
                    mux2 mux_input_31_layer1_01101(.a(y_input_31_layer_1_01101), .s(s[0]), .y(y_input_31_layer_2_0110[1]));
                mux2 mux_input_31_layer2_0110 (.a(y_input_31_layer_2_0110), .s(s[1]), .y(y_input_31_layer_3_011[0]));
                logic [1:0] y_input_31_layer_2_0111;
                    logic [1:0] y_input_31_layer_1_01110;
                        always_comb y_input_31_layer_1_01110[0] = a2[927]; // wire
                        always_comb y_input_31_layer_1_01110[1] = a2[959]; // wire
                    mux2 mux_input_31_layer1_01110(.a(y_input_31_layer_1_01110), .s(s[0]), .y(y_input_31_layer_2_0111[0]));
                    logic [1:0] y_input_31_layer_1_01111;
                        always_comb y_input_31_layer_1_01111[0] = a2[991]; // wire
                        always_comb y_input_31_layer_1_01111[1] = a2[1023]; // wire
                    mux2 mux_input_31_layer1_01111(.a(y_input_31_layer_1_01111), .s(s[0]), .y(y_input_31_layer_2_0111[1]));
                mux2 mux_input_31_layer2_0111 (.a(y_input_31_layer_2_0111), .s(s[1]), .y(y_input_31_layer_3_011[1]));
            mux2 mux_input_31_layer3_011  (.a(y_input_31_layer_3_011), .s(s[2]), .y(y_input_31_layer_4_01[1]));
        mux2 mux_input_31_layer4_01   (.a(y_input_31_layer_4_01), .s(s[3]), .y(y_input_31_layer_5_0[1]));
    mux2 mux_input_31_layer5_0    (.a(y_input_31_layer_5_0), .s(s[4]), .y(y[31]));
    
endmodule
