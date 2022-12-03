module adder_1(a, b, c_in, sum, c_out);

input wire a, b, c_in;
output logic sum, c_out;

logic half_sum;
logic a_and_b;

always_comb begin : adder_gates
  // See Example 4.7 (p. 182) in your textbook for an explanation.
  a_and_b = a & b;
  half_sum = a ^ b;
  c_out = a_and_b | (half_sum & c_in);
  sum = half_sum ^ c_in;
end

endmodule


module adder_n(a, b, c_in, sum, c_out);

parameter N = 2;

input  wire [N-1:0] a, b;
input wire c_in;
output logic [N-1:0] sum;
output wire c_out;

wire [N:0] carries;
assign carries[0] = c_in;
assign c_out = carries[N];
generate
  genvar i;
  for(i = 0; i < N; i++) begin : ripple_carry
    adder_1 ADDER (
      .a(a[i]),
      .b(b[i]),
      .c_in(carries[i]),
      .sum(sum[i]),
      .c_out(carries[i+1])
    );
  end
endgenerate

endmodule