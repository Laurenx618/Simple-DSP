import math

class MultiMuxTestGenerator:
    def __init__(self, n: int = 4, m: int = 1, mux_dir: str = "./Ian_Eykamp/circuits/mux_n/generated_muxes") -> None:
        self.n = n
        self.m = m
        self.n_bits = math.ceil(math.log2(n)) # number of bits in the select bus rounded up to the nearest whole bit
        self.n_2 = 2 ** self.n_bits # rounds n up to the nearest multiple of two
        self.n_half = self.n_2 / 2 # number of bits in each sub-mux
        self.module_name = f"mux{n}_{m}"

        self.mux_dir = mux_dir
        
        sv = self.generate_sv()
        # print(sv)
        self.write_file(sv)
    
    def write_file(self, txt: str) -> None:
        # assert(self.n > 2) # we cannot overwrite mux2, because this referred to in the base case in the above code!
        f = open(f"{self.mux_dir}/test_{self.module_name}.sv", "w")
        f.write(txt)
        f.close()
    
    def generate_sv(self) -> str:
        n = self.n
        m = self.m
        n_bits = self.n_bits
        n_2 = self.n_2
        n_half = self.n_half
        

        file_header = f"""`timescale 1ns/1ps
`default_nettype none
`include "./generated_muxes/{self.module_name}.sv"
"""

        module_header = f"""
module test_{self.module_name};

    int errors = 0;

    logic [{n*m - 1}:0] a;
    logic [{n_bits - 1}:0] s;
    wire [{m - 1}:0] y;

    {self.module_name} UUT(.a(a), .s(s), .y(y));

"""

        module_body = f"""
    // Some behavioural comb. logic that computes correct values.
    logic [{m - 1}:0] correct_out;

    always_comb begin : behavioural_solution_logic
        if (s < {n}) begin
{self.make_correct_output_cases()}
            // correct_out = a[{{(s + 1) * {m} - 1}}-:{{s * {m}}}];
        end else begin
            correct_out = {{{m}{{1'b0}}}};
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
    $dumpfile("./{self.mux_dir}/{self.module_name}.fst");
    $dumpvars(0, UUT);
    
    $display("Checking all inputs.");
{self.make_test_loop()}
    """

        module_footer = r"""
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
"""

        return file_header + module_header + module_body + module_footer
    
    def make_correct_output_cases(self, n_indent = 8):
        n = self.n
        m = self.m
        indent = " " * n_indent
        indent2 = " " * (n_indent + 4)
        # // correct_out = a[{{(s + 1) * {m} - 1}}-:{{s * {m}}}];
        correct_cases = f"""{indent}case(s)\n"""
        for s in range(n):
            correct_cases += f"""{indent2}{s}: correct_out = a[{(s + 1) * m - 1}:{s * m}];\n"""
        
        correct_cases += f"{indent}endcase"
        return correct_cases
    
    def make_test_loop(self):
        n = self.n
        m = self.m
        n_bits = self.n_bits
        n_2 = self.n_2
        n_half = self.n_half
        
        sample_size = 10
        
    #     # for fewer than 10-bit numbers, exhaustively check all inputs
    #     if (n_2 + n_bits) <= sample_size:
    #         body = f"""$display("s{' ' * n_bits}a{' ' * (n_2 - 1)} | y (correct out)");
    # for (i = 0; i < {2 ** (n_2 + n_bits)}; i = i + 1) begin
    #     a = i[{n_2 - 1}:0];
    #     s = i[{n_2 + n_bits}:{n_2}];
    #     #1 print_io();
    # end"""
        
        # for more than 10-bit numbers, just randomly choose 2^10 inputs to test
        # else: 
        if True: # if block to preserve indentation
            body = f"""$display("s{' ' * n_bits}a{' ' * (n_2 - 1)} | y (correct out)");
    for (i = 0; i < {2 ** sample_size}; i = i + 1) begin
{self.random_int_n_bits(var_name = "a", size = n * m)}
{self.random_int_n_bits(var_name = "s", size = n_bits)}
        #1 print_io();
    end"""
        
        return body
    
    def random_int_n_bits(self, var_name: str, size: int):
        prev_bit_idx = 0
        bit_idx = 31
        assignment = ""
        while bit_idx < size - 1:
            assignment += f"""        {var_name}[{bit_idx}:{prev_bit_idx}] = $random;
"""
            prev_bit_idx = bit_idx
            bit_idx += 32
        # then
        assignment += f"""        {var_name}[{size - 1}:{prev_bit_idx}] = $random;
"""
        
        return assignment