from numpy import cos, sin, pi, absolute, arange, binary_repr, log2, ceil
from scipy.signal import kaiserord, lfilter, firwin, freqz
from pylab import figure, clf, plot, xlabel, ylabel, xlim, ylim, title, grid, axes, show


# This is the python script that automatically generates the main verilog file fir.sv. 



class FirGenerator:
    def __init__(self, n: int = 400, hdl_dir: str = "./hdl", test_dir: str = "./tests") -> None:
        self.n_samples = n
        self.n_sample_bits = 16
        self.n_tap_bits = 16
        self.hdl_dir = hdl_dir
        self.test_dir = test_dir

        # uses the sci-py library to find the number of taps and their coefficients for a desired filter behavior
        self.generate_filter_params()

        """
        To calculate the length of final output in bits.

        Each sample is first multiplied by its matching tap (coefficient). In the log2 scale log2(A*B) = log2(A) + log2(B), 
        so we add the sample bit length and tap (coefficient) length together. 
        
        The second step is to sum up the products we derived from the previous step. Since there are self.N taps, 
        the largest value we can get is self.N * A * B. So in the log2 scale, we require log2(A) + log2(B) + log2(self.N) bits, 
        rounded up.
        
        """
        self.n_output_bits = self.n_sample_bits + self.n_tap_bits + int(ceil(log2(self.N)))

        sv = self.generate_module() # main function to generate contents of fir.sv
        test_code = self.generate_test_bench() # additional function to generate parts of test_fir.sv

        self.write_file(sv, is_test = False)
        self.write_file(test_code, is_test = True)


    def write_file(self, txt: str, is_test: bool = False) -> None:
        """
        The write_file function writes the content of the verilog code we generate into desired directories.

        If the code generated is aimed for test benches, we put it into the .txt file in the desired directory and
        then manually migrate it into test_fir.sv with copy and paste.

        Otherwise, we put the file into the main hdl directory.

        """
        if is_test:
            filename = f"{self.test_dir}/fir_copy_code.txt"
        else:
            filename = f"{self.hdl_dir}/fir.sv"

        # write the file contents
        f = open(filename, "w")
        f.write(txt)
        f.close()

    def generate_module(self) -> str:
        """
        This function generates the structure of the main FIR module, fir.sv.
        It consists of three main parts: tap definitions, multipliers, and shift registers for the sampled values.
        
        First, we call functions to generate each of these pieces, then we concatenate them all together into the .sv file
        using an f-string to create the skeleton of the file.
        
        """
        tap_definitions, taps = self.generate_taps()
        verilog_multiplied_definitions, verilog_multipliers, verilog_summation = self.generate_multipliers()
        verilog_buffers, verilog_registers = self.generate_registers()
        
        file_contents = f"""`timescale 1ns/1ps
`default_nettype none
`include "hdl/register.sv"

//////////////////////////////////////////////////////////////////////////////////////
// This is the main Verilog hdl file automatically generated from filter.py
// The block diagram of the FIR filter we build can be accessed HERE(INSERT LINK)
//////////////////////////////////////////////////////////////////////////////////////

module fir(clk, rst, ena, sample, out);

    input wire clk, rst, ena;
    input wire [{self.n_sample_bits-1}:0] sample;
    output logic [{self.n_output_bits - 1}:0] out;


    ////// TAP COEFFICIENTS //////
{tap_definitions}
{taps}

    ////// SAMPLE SHIFT REGISTER //////
{verilog_buffers}
{verilog_registers}

    ////// LINEAR COMBINATION SAMPLES WITH TAPS //////
{verilog_multiplied_definitions}
{verilog_multipliers}
{verilog_summation}

endmodule"""
        return file_contents

    def generate_test_bench(self) -> str:
        """
        This function defines the structure of the testbench, test_fir.sv.
        It consists of a set of sample data to be read in, as well as the expected (correct) outputs from the filter at each
        time step, as calculated by the sci-py library.
        
        First, we call functions to generate discrete chunks of the file, then concatenate them together using an f-string.

        """
        sample_array = self.generate_sample_array()
        output_array = self.generate_output_array()
        samples = self.generate_samples()
        correct_output = self.generate_correct_output()
        
        file_contents = f"""//// COPY THE BELOW CODE ////
//
logic rst;
logic clk;
logic shift_ena;
logic [{self.n_sample_bits - 1}:0] next_sample;
logic [{self.n_output_bits - 1}:0] out;
logic signed [{self.n_output_bits}:0] diff;

integer counter;
logic [{self.n_output_bits - 1}:0] correct_out;

{samples}
{sample_array}

{correct_output}
{output_array}

"""
        return file_contents

    def generate_filter_params(self):
        """
        This function defines a random sample and generates the FIR coefficients to be multiplied with.

        """
        #------------------------------------------------
        # Create a signal for demonstration.
        #------------------------------------------------
        self.sample_rate = 100.0
        nsamples = 400
        self.t = arange(nsamples) / self.sample_rate
        self.x = cos(2*pi*0.5*self.t) + 0.2*sin(2*pi*2.5*self.t+0.1) + \
                0.2*sin(2*pi*15.3*self.t) + 0.1*sin(2*pi*16.7*self.t + 0.1) + \
                    0.1*sin(2*pi*23.45*self.t+.8)


        #------------------------------------------------
        # Create a FIR filter and apply it to x.
        #------------------------------------------------

        # The Nyquist rate of the signal.
        self.nyq_rate = self.sample_rate / 2.0

        # The desired width of the transition from pass to stop,
        # relative to the Nyquist rate.  We'll design the filter
        # with a 5 Hz transition width.
        width = 5.0/self.nyq_rate

        # The desired attenuation in the stop band, in dB.
        ripple_db = 60.0

        # Compute the order and Kaiser parameter for the FIR filter.
        self.N, beta = kaiserord(ripple_db, width)

        # The cutoff frequency of the filter.
        cutoff_hz = 10.0

        # Use firwin with a Kaiser window to create a lowpass FIR filter.
        self.taps = firwin(self.N, cutoff_hz/self.nyq_rate, window=('kaiser', beta))

        # Use lfilter to filter x with the FIR filter.
        self.filtered_x = lfilter(self.taps, 1.0, self.x)

    def plot_filter_params(self):
        """
        This function plots the output in python so that we can compare the it with the results from our Verilog code in GTKwave.
        
        """
        #------------------------------------------------
        # Plot the FIR filter coefficients.
        #------------------------------------------------

        figure(1)
        plot(self.taps, 'bo-', linewidth=2)
        title('Filter Coefficients (%d taps)' % self.N)
        grid(True)

        #------------------------------------------------
        # Plot the magnitude response of the filter.
        #------------------------------------------------

        figure(2)
        clf()
        w, h = freqz(self.taps, worN=8000)
        plot((w/pi)*self.nyq_rate, absolute(h), linewidth=2)
        xlabel('Frequency (Hz)')
        ylabel('Gain')
        title('Frequency Response')
        ylim(-0.05, 1.05)
        grid(True)

        # Upper inset plot.
        ax1 = axes([0.42, 0.6, .45, .25])
        plot((w/pi)*self.nyq_rate, absolute(h), linewidth=2)
        xlim(0,8.0)
        ylim(0.9985, 1.001)
        grid(True)

        # Lower inset plot
        ax2 = axes([0.42, 0.25, .45, .25])
        plot((w/pi)*self.nyq_rate, absolute(h), linewidth=2)
        xlim(12.0, 20.0)
        ylim(0.0, 0.0025)
        grid(True)

        #------------------------------------------------
        # Plot the original and filtered signals.
        #------------------------------------------------

        # The phase delay of the filtered signal.
        delay = 0.5 * (self.N-1) / self.sample_rate

        figure(3)
        # Plot the original signal.
        plot(self.t, self.x)
        # Plot the filtered signal, shifted to compensate for the phase delay.
        plot(self.t-delay, self.filtered_x, 'r-')
        # Plot just the "good" part of the filtered signal.  The first N-1
        # samples are "corrupted" by the initial conditions.
        plot(self.t[self.N-1:]-delay, self.filtered_x[self.N-1:], 'g', linewidth=4)

        xlabel('t')
        grid(True)

        show()

    def generate_taps(self):
        """
        This function writes the coefficients determined in generate_filter_params into taps in Verilog

        """
        # self.taps is defined in generate_filter_params. 
        # The coefficients we use in python are floating point numbers, so we multiply it by the bit number we use for the taps in verilog 
        # to turn it into a fixed-point number, which we store as an integer
        prepared_taps = (self.taps * 2**self.n_tap_bits).astype(int)

        indent = " " * 4
        verilog_taps = ""
        
        # define the tap variables in verilog
        verilog_tap_definitions = f"{indent}logic signed [{self.n_tap_bits - 1}:0]"
        
        # in an always_comb block, assign tap variables with values generated from prepared_taps 
        for i, tap in enumerate(prepared_taps):
            verilog_tap_definitions += (" " if i == 0 else ", ") + f"tap{i}"
            verilog_taps += f"""{indent}always_comb tap{i} = {"-" if tap < 0 else ""}{self.n_tap_bits}'sd{abs(tap)};\n"""
        verilog_tap_definitions += ";"

        # // generate an output that looks like: 
        # logic signed [7:0] a0, a1, a2, a3;
        # alawys_comb a0 = 51;
        # alawys_comb a0 = 688;
        # alawys_comb a0 = 700;
        # alawys_comb a0 = 93;

        return verilog_tap_definitions, verilog_taps

    def generate_multipliers(self):
        """
        This function does all the math calculations of the fir filter in verilog.
        It first defines the multipled numbers and the sum of them, and then assigns values in the always_comb block.
        `buf{i}` represents the sample to be multiplied by the i'th tap coefficient, `tap{i}`.
        
        """
        indent = " " * 4
        verilog_multipliers = ""

        # define the results of each multiplication, to store them before they are added together
        verilog_multiplied_definitions = f"{indent}logic signed [{self.n_sample_bits + self.n_tap_bits - 1}:0]"
        
        # define the summation statement (behavioral)
        verilog_summation = f"{indent}always_comb out ="
        
        # generate the multiplication statements (behavioural)
        for i in range(len(self.taps)):
            verilog_multiplied_definitions += (" " if i == 0 else ", ") + f"multiplied{i}"
            verilog_multipliers += f"""{indent}always_comb multiplied{i} = buf{i} * tap{i};\n"""
            verilog_summation += (" " if i == 0 else " + ") + f"multiplied{i}"
        verilog_summation += ";"
        verilog_multiplied_definitions += ";"

        # // generated output looks like: 
        # logic signed [7:0] multiplied0, multiplied1, multiplied2, multiplied3
        # always_comb begin
            # multiplied0 = buff0*a0;
            # multiplied1 = buff1*a1;
            # multiplied2 = buff2*a2;
            # multiplied3 = buff3*a3;
        # end
        # always_comb out = multiplied0 + multiplied1 + multiplied2 + multiplied3;

        return verilog_multiplied_definitions, verilog_multipliers, verilog_summation

    def generate_registers(self):
        """
        This function generates the registers to shift each sample to the next tap to be multiplied,
        according to the defination of an FIR filter that y[n] = a0 * x[n] + a1 * x[n-1] + a2 * x[n-2] + ... + aN * x[n-N],
        where y[n] is the output signal, x[n] is the input signal, n determins the size of input and output signals, 
        N is the order (number of taps) of the FIR filter, and a is the pre-calculated coefficients (or taps).
        
        """
        indent = " " * 4
        verilog_registers = ""
        
        verilog_buffers = f"{indent}logic signed [{self.n_sample_bits - 1}:0]"
        for i in range(len(self.taps)):
            verilog_buffers += (" " if i == 0 else ", ") + f"buf{i}"
            verilog_registers += f"""{indent}register #(.N({self.n_tap_bits})) buffer{i}(.clk(clk), .ena(ena), .rst(rst), .d({"sample" if i == 0 else f"buf{i - 1}"}), .q(buf{i}));\n"""
        verilog_buffers += ";"

        # // generated output looks like: 
        # register(.clk(clk), .ena(ena), .rst(rst), .d(sample), .q(buff0));
        # register(.clk(clk), .ena(ena), .rst(rst), .d(buff0), .q(buff1));
        # register(.clk(clk), .ena(ena), .rst(rst), .d(buff1), .q(buff2));
        # register(.clk(clk), .ena(ena), .rst(rst), .d(buff2), .q(buff3));

        return verilog_buffers, verilog_registers

    def generate_samples(self):
        """
        This function writes the python-generated samples into packed_samples, which is a single variable that stores all
        the 16-bit samples, i.e. the first 16 bits of packed_samples represents the first sample, and bit #16-31 represents the second sample, etc.
        
        """
        prepared_x_vals = (self.x * 2**(self.n_sample_bits - 4)).astype(int)

        verilog_x_vals = f"""logic [{self.n_sample_bits * self.n_samples - 1}:0] packed_samples;
always_comb packed_samples = {{"""
        for i, x_val in enumerate(prepared_x_vals[::-1]):
            verilog_x_vals += f"{'' if i == 0 else ', '}{'-' if x_val < 0 else ''}{self.n_sample_bits}'sd{abs(x_val)}"
        verilog_x_vals += "};"

        return verilog_x_vals

    def generate_sample_array(self):
        """
        This function takes packed_samples from the generate_samples() function as an input and breaks it down into a sample array, 
        i.e. creates 400 individual samples
        
        """
        verilog_samples = f"""logic [{self.n_sample_bits - 1}:0] samples[0:{self.n_samples - 1}];
always_comb begin 
"""
        for i in range(self.n_samples):
            # verilog_x_vals += ("" if i == 0 else ", ") + str(x_val)
            verilog_samples += f"samples[{i}] = packed_samples[{self.n_sample_bits * (i + 1) - 1}:{self.n_sample_bits * (i)}]; "
        verilog_samples += "\nend"
        return verilog_samples

    def generate_correct_output(self):
        """
        This function writes the correct outputs of the fir filter to the test benches in test_fir.sv

        The variable prepared_outputs calculates and stores the correct output of the fir filter in python,
        and verilog_outputs turns prepared_outputs into verilog binary numbers and is returned to be written into test_fir.sv.

        Similar to the output variable verilog_x_vals of generate_samples() function, the output of this function (verilog_outputs) stores
        all the correct outputs as a first step. 
        i.e., the first 16 bits of verilog_outputs represents the first individual correct output, and bit #16-31 represents the second output, etc.
        
        """
        prepared_outputs = (self.filtered_x * 2**(self.n_sample_bits - 4 + self.n_tap_bits)).astype(int)

        verilog_outputs = f"""logic [{self.n_output_bits * self.n_samples - 1}:0] packed_outputs;
always_comb packed_outputs = {{"""
        for i, output in enumerate(prepared_outputs[::-1]):
            verilog_outputs += f"{'' if i == 0 else ', '}{'-' if output < 0 else ''}{self.n_output_bits}'sd{abs(output)}"
        verilog_outputs += "};"

        return verilog_outputs

    def generate_output_array(self):
        """
        Similar to the output variable verilog_samples of the function generate_sample_array, the output of this function
        breaks down verilog_outputs from the previous function generate_correct_output() into an output array consisting of 400 individual outputs.
        
        """
        verilog_output = f"""logic [{self.n_output_bits - 1}:0] correct_outputs[0:{self.n_samples - 1}];
always_comb begin
"""
        for i in range(self.n_samples):
            verilog_output += f"correct_outputs[{i}] = packed_outputs[{self.n_output_bits * (i + 1) - 1}:{self.n_output_bits * (i)}]; "
        verilog_output += "\nend"

        return verilog_output

# Run the class
F = FirGenerator()

# Plot the desired outputs in python
F.plot_filter_params()

print("Done!")