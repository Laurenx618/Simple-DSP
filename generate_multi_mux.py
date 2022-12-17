import sys

from multi_mux_generator import MultiMuxGenerator
from multi_mux_test_generator import MultiMuxTestGenerator

def generate_mux(n, m, dir):
    mux_gen = MultiMuxGenerator(n, m, dir)
    mux_test = MultiMuxTestGenerator(n, m, dir)

if __name__ == '__main__':
    n_m = sys.argv[1]
    n_str, m_str = n_m.split("_")
    n = int(n_str)
    m = int(m_str)
    # n = int(sys.argv[1])
    # m = int(sys.argv[2])
    
    print(f"generating multi_mux with n = {n}, m = {m}")
    
    generate_mux(n, m, dir = "./generated_muxes")
    
# generate_mux(n = 12, m = 4, dir = "./Ian_Eykamp/circuits/multi_mux/generated_muxes") # uncomment for debugging