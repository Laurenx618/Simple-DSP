# -Wall turns on all warnings
# -g2012 selects the 2012 version of iVerilog
IVERILOG=iverilog -g2012 -Wall -y ./ -I ./
VVP=vvp
VVP_POST=-fst
# VIVADO=vivado -mode batch -source

# Look up .PHONY rules for Makefiles
.PHONY: clean submission

test_main : main.sv test_main.sv
	${IVERILOG} $^ -o test_main.bin && ${VVP} test_main.bin ${VVP_POST}

test_fir : hdl/fir.sv tests/test_fir.sv
	${IVERILOG} $^ -o test_fir.bin && ${VVP} test_fir.bin ${VVP_POST}

# add targets for your tests of your adders and muxes here!



# Call this to clean up all your generated files
clean:
	rm -f *.bin *.vcd *.fst vivado*.log *.jou vivado*.str *.log *.checkpoint *.bit *.html *.xml
	rm -rf .Xil

# Call this to generate your submission zip file.
submission:
	zip submission.zip Makefile *.sv README.md *.pdf
