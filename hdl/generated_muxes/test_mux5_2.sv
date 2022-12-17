`timescale 1ns/1ps
`default_nettype none
`include "./generated_muxes/mux5_2.sv"

module test_mux5_2;

    int errors = 0;

    logic [9:0] a;
    logic [2:0] s;
    wire [1:0] y;

    mux5_2 UUT(.a(a), .s(s), .y(y));


    // Some behavioural comb. logic that computes correct values.
    logic [1:0] correct_out;

    always_comb begin : behavioural_solution_logic
        if (s < 5) begin
        case(s)
            0: correct_out = a[1:0];
            1: correct_out = a[3:2];
            2: correct_out = a[5:4];
            3: correct_out = a[7:6];
            4: correct_out = a[9:8];
        endcase
            // correct_out = a[{(s + 1) * 2 - 1}-:{s * 2}];
        end else begin
            correct_out = {2{1'b0}};
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
    $dumpfile("././generated_muxes/mux5_2.fst");
    $dumpvars(0, UUT);
    
    $display("Checking all inputs.");
$display("s   a        | y (correct out)");
    for (i = 0; i < 1024; i = i + 1) begin
        a[9:0] = $random;

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
