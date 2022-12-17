`timescale 1ns/1ps
`default_nettype none
`include "./mux2.sv"

module mux12_4(a, s, y);

    input [47:0] a;
    input [3:0] s;
    output logic [3:0] y; // m-bit output of mux
    
    logic [15:0] a2; // length n2
    always_comb a2 = {{12{1'b0}}, a};

            
            ////////////////////////   INPUT WIRE 0   ////////////////////////
            
                logic [1:0] y_input_0_layer_4_0;
        logic [1:0] y_input_0_layer_3_00;
            logic [1:0] y_input_0_layer_2_000;
                logic [1:0] y_input_0_layer_1_0000;
                    always_comb y_input_0_layer_1_0000[0] = a2[0]; // wire
                    always_comb y_input_0_layer_1_0000[1] = a2[1]; // wire
                mux2 mux_input_0_layer1_0000(.a(y_input_0_layer_1_0000), .s(s[0]), .y(y_input_0_layer_2_000[0]));
                logic [1:0] y_input_0_layer_1_0001;
                    always_comb y_input_0_layer_1_0001[0] = a2[2]; // wire
                    always_comb y_input_0_layer_1_0001[1] = a2[3]; // wire
                mux2 mux_input_0_layer1_0001(.a(y_input_0_layer_1_0001), .s(s[0]), .y(y_input_0_layer_2_000[1]));
            mux2 mux_input_0_layer2_000 (.a(y_input_0_layer_2_000), .s(s[1]), .y(y_input_0_layer_3_00[0]));
            logic [1:0] y_input_0_layer_2_001;
                logic [1:0] y_input_0_layer_1_0010;
                    always_comb y_input_0_layer_1_0010[0] = a2[4]; // wire
                    always_comb y_input_0_layer_1_0010[1] = a2[5]; // wire
                mux2 mux_input_0_layer1_0010(.a(y_input_0_layer_1_0010), .s(s[0]), .y(y_input_0_layer_2_001[0]));
                logic [1:0] y_input_0_layer_1_0011;
                    always_comb y_input_0_layer_1_0011[0] = a2[6]; // wire
                    always_comb y_input_0_layer_1_0011[1] = a2[7]; // wire
                mux2 mux_input_0_layer1_0011(.a(y_input_0_layer_1_0011), .s(s[0]), .y(y_input_0_layer_2_001[1]));
            mux2 mux_input_0_layer2_001 (.a(y_input_0_layer_2_001), .s(s[1]), .y(y_input_0_layer_3_00[1]));
        mux2 mux_input_0_layer3_00  (.a(y_input_0_layer_3_00), .s(s[2]), .y(y_input_0_layer_4_0[0]));
        logic [1:0] y_input_0_layer_3_01;
            logic [1:0] y_input_0_layer_2_010;
                logic [1:0] y_input_0_layer_1_0100;
                    always_comb y_input_0_layer_1_0100[0] = a2[8]; // wire
                    always_comb y_input_0_layer_1_0100[1] = a2[9]; // wire
                mux2 mux_input_0_layer1_0100(.a(y_input_0_layer_1_0100), .s(s[0]), .y(y_input_0_layer_2_010[0]));
                logic [1:0] y_input_0_layer_1_0101;
                    always_comb y_input_0_layer_1_0101[0] = a2[10]; // wire
                    always_comb y_input_0_layer_1_0101[1] = a2[11]; // wire
                mux2 mux_input_0_layer1_0101(.a(y_input_0_layer_1_0101), .s(s[0]), .y(y_input_0_layer_2_010[1]));
            mux2 mux_input_0_layer2_010 (.a(y_input_0_layer_2_010), .s(s[1]), .y(y_input_0_layer_3_01[0]));
            logic [1:0] y_input_0_layer_2_011;
                logic [1:0] y_input_0_layer_1_0110;
                    always_comb y_input_0_layer_1_0110[0] = a2[12]; // wire
                    always_comb y_input_0_layer_1_0110[1] = a2[13]; // wire
                mux2 mux_input_0_layer1_0110(.a(y_input_0_layer_1_0110), .s(s[0]), .y(y_input_0_layer_2_011[0]));
                logic [1:0] y_input_0_layer_1_0111;
                    always_comb y_input_0_layer_1_0111[0] = a2[14]; // wire
                    always_comb y_input_0_layer_1_0111[1] = a2[15]; // wire
                mux2 mux_input_0_layer1_0111(.a(y_input_0_layer_1_0111), .s(s[0]), .y(y_input_0_layer_2_011[1]));
            mux2 mux_input_0_layer2_011 (.a(y_input_0_layer_2_011), .s(s[1]), .y(y_input_0_layer_3_01[1]));
        mux2 mux_input_0_layer3_01  (.a(y_input_0_layer_3_01), .s(s[2]), .y(y_input_0_layer_4_0[1]));
    mux2 mux_input_0_layer4_0   (.a(y_input_0_layer_4_0), .s(s[3]), .y(y[{input}]));
            
            ////////////////////////   INPUT WIRE 1   ////////////////////////
            
                logic [1:0] y_input_1_layer_4_0;
        logic [1:0] y_input_1_layer_3_00;
            logic [1:0] y_input_1_layer_2_000;
                logic [1:0] y_input_1_layer_1_0000;
                    always_comb y_input_1_layer_1_0000[0] = a2[0]; // wire
                    always_comb y_input_1_layer_1_0000[1] = a2[1]; // wire
                mux2 mux_input_1_layer1_0000(.a(y_input_1_layer_1_0000), .s(s[0]), .y(y_input_1_layer_2_000[0]));
                logic [1:0] y_input_1_layer_1_0001;
                    always_comb y_input_1_layer_1_0001[0] = a2[2]; // wire
                    always_comb y_input_1_layer_1_0001[1] = a2[3]; // wire
                mux2 mux_input_1_layer1_0001(.a(y_input_1_layer_1_0001), .s(s[0]), .y(y_input_1_layer_2_000[1]));
            mux2 mux_input_1_layer2_000 (.a(y_input_1_layer_2_000), .s(s[1]), .y(y_input_1_layer_3_00[0]));
            logic [1:0] y_input_1_layer_2_001;
                logic [1:0] y_input_1_layer_1_0010;
                    always_comb y_input_1_layer_1_0010[0] = a2[4]; // wire
                    always_comb y_input_1_layer_1_0010[1] = a2[5]; // wire
                mux2 mux_input_1_layer1_0010(.a(y_input_1_layer_1_0010), .s(s[0]), .y(y_input_1_layer_2_001[0]));
                logic [1:0] y_input_1_layer_1_0011;
                    always_comb y_input_1_layer_1_0011[0] = a2[6]; // wire
                    always_comb y_input_1_layer_1_0011[1] = a2[7]; // wire
                mux2 mux_input_1_layer1_0011(.a(y_input_1_layer_1_0011), .s(s[0]), .y(y_input_1_layer_2_001[1]));
            mux2 mux_input_1_layer2_001 (.a(y_input_1_layer_2_001), .s(s[1]), .y(y_input_1_layer_3_00[1]));
        mux2 mux_input_1_layer3_00  (.a(y_input_1_layer_3_00), .s(s[2]), .y(y_input_1_layer_4_0[0]));
        logic [1:0] y_input_1_layer_3_01;
            logic [1:0] y_input_1_layer_2_010;
                logic [1:0] y_input_1_layer_1_0100;
                    always_comb y_input_1_layer_1_0100[0] = a2[8]; // wire
                    always_comb y_input_1_layer_1_0100[1] = a2[9]; // wire
                mux2 mux_input_1_layer1_0100(.a(y_input_1_layer_1_0100), .s(s[0]), .y(y_input_1_layer_2_010[0]));
                logic [1:0] y_input_1_layer_1_0101;
                    always_comb y_input_1_layer_1_0101[0] = a2[10]; // wire
                    always_comb y_input_1_layer_1_0101[1] = a2[11]; // wire
                mux2 mux_input_1_layer1_0101(.a(y_input_1_layer_1_0101), .s(s[0]), .y(y_input_1_layer_2_010[1]));
            mux2 mux_input_1_layer2_010 (.a(y_input_1_layer_2_010), .s(s[1]), .y(y_input_1_layer_3_01[0]));
            logic [1:0] y_input_1_layer_2_011;
                logic [1:0] y_input_1_layer_1_0110;
                    always_comb y_input_1_layer_1_0110[0] = a2[12]; // wire
                    always_comb y_input_1_layer_1_0110[1] = a2[13]; // wire
                mux2 mux_input_1_layer1_0110(.a(y_input_1_layer_1_0110), .s(s[0]), .y(y_input_1_layer_2_011[0]));
                logic [1:0] y_input_1_layer_1_0111;
                    always_comb y_input_1_layer_1_0111[0] = a2[14]; // wire
                    always_comb y_input_1_layer_1_0111[1] = a2[15]; // wire
                mux2 mux_input_1_layer1_0111(.a(y_input_1_layer_1_0111), .s(s[0]), .y(y_input_1_layer_2_011[1]));
            mux2 mux_input_1_layer2_011 (.a(y_input_1_layer_2_011), .s(s[1]), .y(y_input_1_layer_3_01[1]));
        mux2 mux_input_1_layer3_01  (.a(y_input_1_layer_3_01), .s(s[2]), .y(y_input_1_layer_4_0[1]));
    mux2 mux_input_1_layer4_0   (.a(y_input_1_layer_4_0), .s(s[3]), .y(y[{input}]));
            
            ////////////////////////   INPUT WIRE 2   ////////////////////////
            
                logic [1:0] y_input_2_layer_4_0;
        logic [1:0] y_input_2_layer_3_00;
            logic [1:0] y_input_2_layer_2_000;
                logic [1:0] y_input_2_layer_1_0000;
                    always_comb y_input_2_layer_1_0000[0] = a2[0]; // wire
                    always_comb y_input_2_layer_1_0000[1] = a2[1]; // wire
                mux2 mux_input_2_layer1_0000(.a(y_input_2_layer_1_0000), .s(s[0]), .y(y_input_2_layer_2_000[0]));
                logic [1:0] y_input_2_layer_1_0001;
                    always_comb y_input_2_layer_1_0001[0] = a2[2]; // wire
                    always_comb y_input_2_layer_1_0001[1] = a2[3]; // wire
                mux2 mux_input_2_layer1_0001(.a(y_input_2_layer_1_0001), .s(s[0]), .y(y_input_2_layer_2_000[1]));
            mux2 mux_input_2_layer2_000 (.a(y_input_2_layer_2_000), .s(s[1]), .y(y_input_2_layer_3_00[0]));
            logic [1:0] y_input_2_layer_2_001;
                logic [1:0] y_input_2_layer_1_0010;
                    always_comb y_input_2_layer_1_0010[0] = a2[4]; // wire
                    always_comb y_input_2_layer_1_0010[1] = a2[5]; // wire
                mux2 mux_input_2_layer1_0010(.a(y_input_2_layer_1_0010), .s(s[0]), .y(y_input_2_layer_2_001[0]));
                logic [1:0] y_input_2_layer_1_0011;
                    always_comb y_input_2_layer_1_0011[0] = a2[6]; // wire
                    always_comb y_input_2_layer_1_0011[1] = a2[7]; // wire
                mux2 mux_input_2_layer1_0011(.a(y_input_2_layer_1_0011), .s(s[0]), .y(y_input_2_layer_2_001[1]));
            mux2 mux_input_2_layer2_001 (.a(y_input_2_layer_2_001), .s(s[1]), .y(y_input_2_layer_3_00[1]));
        mux2 mux_input_2_layer3_00  (.a(y_input_2_layer_3_00), .s(s[2]), .y(y_input_2_layer_4_0[0]));
        logic [1:0] y_input_2_layer_3_01;
            logic [1:0] y_input_2_layer_2_010;
                logic [1:0] y_input_2_layer_1_0100;
                    always_comb y_input_2_layer_1_0100[0] = a2[8]; // wire
                    always_comb y_input_2_layer_1_0100[1] = a2[9]; // wire
                mux2 mux_input_2_layer1_0100(.a(y_input_2_layer_1_0100), .s(s[0]), .y(y_input_2_layer_2_010[0]));
                logic [1:0] y_input_2_layer_1_0101;
                    always_comb y_input_2_layer_1_0101[0] = a2[10]; // wire
                    always_comb y_input_2_layer_1_0101[1] = a2[11]; // wire
                mux2 mux_input_2_layer1_0101(.a(y_input_2_layer_1_0101), .s(s[0]), .y(y_input_2_layer_2_010[1]));
            mux2 mux_input_2_layer2_010 (.a(y_input_2_layer_2_010), .s(s[1]), .y(y_input_2_layer_3_01[0]));
            logic [1:0] y_input_2_layer_2_011;
                logic [1:0] y_input_2_layer_1_0110;
                    always_comb y_input_2_layer_1_0110[0] = a2[12]; // wire
                    always_comb y_input_2_layer_1_0110[1] = a2[13]; // wire
                mux2 mux_input_2_layer1_0110(.a(y_input_2_layer_1_0110), .s(s[0]), .y(y_input_2_layer_2_011[0]));
                logic [1:0] y_input_2_layer_1_0111;
                    always_comb y_input_2_layer_1_0111[0] = a2[14]; // wire
                    always_comb y_input_2_layer_1_0111[1] = a2[15]; // wire
                mux2 mux_input_2_layer1_0111(.a(y_input_2_layer_1_0111), .s(s[0]), .y(y_input_2_layer_2_011[1]));
            mux2 mux_input_2_layer2_011 (.a(y_input_2_layer_2_011), .s(s[1]), .y(y_input_2_layer_3_01[1]));
        mux2 mux_input_2_layer3_01  (.a(y_input_2_layer_3_01), .s(s[2]), .y(y_input_2_layer_4_0[1]));
    mux2 mux_input_2_layer4_0   (.a(y_input_2_layer_4_0), .s(s[3]), .y(y[{input}]));
            
            ////////////////////////   INPUT WIRE 3   ////////////////////////
            
                logic [1:0] y_input_3_layer_4_0;
        logic [1:0] y_input_3_layer_3_00;
            logic [1:0] y_input_3_layer_2_000;
                logic [1:0] y_input_3_layer_1_0000;
                    always_comb y_input_3_layer_1_0000[0] = a2[0]; // wire
                    always_comb y_input_3_layer_1_0000[1] = a2[1]; // wire
                mux2 mux_input_3_layer1_0000(.a(y_input_3_layer_1_0000), .s(s[0]), .y(y_input_3_layer_2_000[0]));
                logic [1:0] y_input_3_layer_1_0001;
                    always_comb y_input_3_layer_1_0001[0] = a2[2]; // wire
                    always_comb y_input_3_layer_1_0001[1] = a2[3]; // wire
                mux2 mux_input_3_layer1_0001(.a(y_input_3_layer_1_0001), .s(s[0]), .y(y_input_3_layer_2_000[1]));
            mux2 mux_input_3_layer2_000 (.a(y_input_3_layer_2_000), .s(s[1]), .y(y_input_3_layer_3_00[0]));
            logic [1:0] y_input_3_layer_2_001;
                logic [1:0] y_input_3_layer_1_0010;
                    always_comb y_input_3_layer_1_0010[0] = a2[4]; // wire
                    always_comb y_input_3_layer_1_0010[1] = a2[5]; // wire
                mux2 mux_input_3_layer1_0010(.a(y_input_3_layer_1_0010), .s(s[0]), .y(y_input_3_layer_2_001[0]));
                logic [1:0] y_input_3_layer_1_0011;
                    always_comb y_input_3_layer_1_0011[0] = a2[6]; // wire
                    always_comb y_input_3_layer_1_0011[1] = a2[7]; // wire
                mux2 mux_input_3_layer1_0011(.a(y_input_3_layer_1_0011), .s(s[0]), .y(y_input_3_layer_2_001[1]));
            mux2 mux_input_3_layer2_001 (.a(y_input_3_layer_2_001), .s(s[1]), .y(y_input_3_layer_3_00[1]));
        mux2 mux_input_3_layer3_00  (.a(y_input_3_layer_3_00), .s(s[2]), .y(y_input_3_layer_4_0[0]));
        logic [1:0] y_input_3_layer_3_01;
            logic [1:0] y_input_3_layer_2_010;
                logic [1:0] y_input_3_layer_1_0100;
                    always_comb y_input_3_layer_1_0100[0] = a2[8]; // wire
                    always_comb y_input_3_layer_1_0100[1] = a2[9]; // wire
                mux2 mux_input_3_layer1_0100(.a(y_input_3_layer_1_0100), .s(s[0]), .y(y_input_3_layer_2_010[0]));
                logic [1:0] y_input_3_layer_1_0101;
                    always_comb y_input_3_layer_1_0101[0] = a2[10]; // wire
                    always_comb y_input_3_layer_1_0101[1] = a2[11]; // wire
                mux2 mux_input_3_layer1_0101(.a(y_input_3_layer_1_0101), .s(s[0]), .y(y_input_3_layer_2_010[1]));
            mux2 mux_input_3_layer2_010 (.a(y_input_3_layer_2_010), .s(s[1]), .y(y_input_3_layer_3_01[0]));
            logic [1:0] y_input_3_layer_2_011;
                logic [1:0] y_input_3_layer_1_0110;
                    always_comb y_input_3_layer_1_0110[0] = a2[12]; // wire
                    always_comb y_input_3_layer_1_0110[1] = a2[13]; // wire
                mux2 mux_input_3_layer1_0110(.a(y_input_3_layer_1_0110), .s(s[0]), .y(y_input_3_layer_2_011[0]));
                logic [1:0] y_input_3_layer_1_0111;
                    always_comb y_input_3_layer_1_0111[0] = a2[14]; // wire
                    always_comb y_input_3_layer_1_0111[1] = a2[15]; // wire
                mux2 mux_input_3_layer1_0111(.a(y_input_3_layer_1_0111), .s(s[0]), .y(y_input_3_layer_2_011[1]));
            mux2 mux_input_3_layer2_011 (.a(y_input_3_layer_2_011), .s(s[1]), .y(y_input_3_layer_3_01[1]));
        mux2 mux_input_3_layer3_01  (.a(y_input_3_layer_3_01), .s(s[2]), .y(y_input_3_layer_4_0[1]));
    mux2 mux_input_3_layer4_0   (.a(y_input_3_layer_4_0), .s(s[3]), .y(y[{input}]));
    
endmodule
