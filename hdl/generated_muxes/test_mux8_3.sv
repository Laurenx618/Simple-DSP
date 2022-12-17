`timescale 1ns/1ps
`default_nettype none
`include "./generated_muxes/mux8_3.sv"

module test_mux8_3;

    int errors = 0;

    logic [23:0] a;
    logic [2:0] s;
    wire [2:0] y;

    mux8_3 UUT(.a(a), .s(s), .y(y));


    // Some behavioural comb. logic that computes correct values.
    logic [2:0] correct_out;

    always_comb begin : behavioural_solution_logic
        if (s < 8) begin
        case(s)
            0: correct_out = a[2:0];
            1: correct_out = a[5:3];
            2: correct_out = a[8:6];
            3: correct_out = a[11:9];
            4: correct_out = a[14:12];
            5: correct_out = a[17:15];
            6: correct_out = a[20:18];
            7: correct_out = a[23:21];
        endcase
            // correct_out = a[{(s + 1) * 3 - 1}-:{s * 3}];
        end else begin
            correct_out = {3{1'b0}};
        end
    end

    // You can make "tasks" in testbenches. Think of them like methods of a class, 
    // they have access to the member variables.
    task print_io;
        $display("%b %b | %b (%b)", s, a, y, correct_out);
    endtask

    time i; // 64-bit integer, not 32
    // 2) the test cases - initial blocks are like programming, not hardware
    initial begin
    $dumpfile("././generated_muxes/mux8_3.fst");
    $dumpvars(0, UUT);
    
    $display("Checking all inputs.");
$display("s   a        | y (correct out)");
    for (i = 0; i < 1024; i = i + 1) begin
        a[23:0] = $random;

        s[2:0] = $random;

        #1 print_io();
    end
    
    if (errors !== 0) begin
        $display("---------------------------------------------------------------");
        $display("-- FAILURE                                                   --");
        $display("---------------------------------------------------------------");
        $display(" %d failures found, try again!", errors);
    end else begin
        $display("---------------------------------------------------------------");
        $display("-- SUCCESS                                                   --");
        $display("---------------------------------------------------------------");
    end
    $finish;
    end

    // Note: the triple === (corresponding !==) check 4-state (e.g. 0,1,x,z) values.
    //       It's best practice to use these for checkers!
    always @(a or s) begin
        assert(y === correct_out) else begin
            // $display("  ERROR: mux out should be %b, is %b", out, correct_out);
            errors = errors + 1;
        end
    end

endmodule
