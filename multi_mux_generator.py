import math

# n inputs, each of which are m wires, so n*m inputs total, m outputs

class MultiMuxGenerator:
    def __init__(self, n: int = 4, m: int = 4, mux_dir: str = "./Ian_Eykamp/circuits/mux_n/generated_muxes") -> None:
        self.n = n
        self.m = m
        self.module_name = f"mux{n}_{m}"
        self.mux_dir = mux_dir
        # generate the .sv file and print it
        sv = self.generate_sv()
        # print(sv)
        self.write_file(sv)

    def write_file(self, txt: str) -> None:
        # assert(self.n > 2) # we cannot overwrite mux2, because this referred to in the base case in the above code!
        f = open(f"{self.mux_dir}/{self.module_name}.sv", "w")
        f.write(txt)
        f.close()
    
    def generate_sv(self) -> str:
        n = self.n  # local variable to simplify notation
        m = self.m  # local variable to simplify notation

        file_header = f"""`ifndef INCLUDE_{self.module_name.upper()}
`define INCLUDE_{self.module_name.upper()}

`timescale 1ns/1ps
`default_nettype none
`include "./mux2.sv"
"""

        n_bits = math.ceil(math.log2(n)) # number of bits in the select bus rounded up to the nearest whole bit
        n_2 = 2 ** n_bits # rounds n up to the nearest multiple of two
        n_half = n_2 / 2 # number of bits in each sub-mux

        module_header = f"""
module {self.module_name}(a, s, y);

    input [{n * m - 1}:0] a;
    input [{n_bits - 1}:0] s;
    output logic [{m - 1}:0] y; // m-bit output of mux
    
    logic [{n_2 * m - 1}:0] a2; // length n2
    always_comb a2 = {{{{{(n_2 - n_bits) * m}{{1'b0}}}}, a}};
""" 
    # TODO: Fix this a2 business
    # I promise this works ^ (double {{ is interpreted as a literal \{ character inside of f-strings)
    # pads with zeroes on the left

        module_body = """"""
        for input in range(m):
            module_body += f"""
            
            ////////////////////////   INPUT WIRE {input}   ////////////////////////
            
"""
            module_body += self.recursive_body(input = input, layer = n_bits, component_idx = "0", a_start_idx = 0, target = f"y[{input}]", max_layer = n_bits)

        module_footer = """
    
endmodule

`endif // INCLUDE_{self.module_name.upper()}"""

        return file_header + module_header + module_body + module_footer

    # Recursive section
    
    def recursive_body(self, input: int, layer: int, component_idx: str, a_start_idx: int, target: str, max_layer: int) -> str:
        m = self.m
        indent = "    " * (max_layer - layer + 1)
        mux_name = f"mux_input_{input}_layer{layer}_{component_idx}{' ' * (layer - 1)}"
        var_name = f"y_input_{input}_layer_{layer}_{component_idx}"
        if layer == 0:
            module_body = f"""{indent}always_comb {target} = a2[{a_start_idx * m + input}]; // wire"""
        else:
            module_body = f"""{indent}logic [1:0] {var_name};
{self.recursive_body(input, layer - 1, component_idx + "0", a_start_idx,                    target = var_name + "[0]", max_layer = max_layer)}
{self.recursive_body(input, layer - 1, component_idx + "1", a_start_idx + 2 ** (layer - 1), target = var_name + "[1]", max_layer = max_layer)}
{indent}mux2 {mux_name}(.a({var_name}), .s(s[{layer - 1}]), .y({target}));"""

        return module_body