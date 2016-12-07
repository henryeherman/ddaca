

VERILOG_SRC=./src
OUTPUT_PATH=./outputs


SILLYFUNCTION_SRC = $(shell ls $(VERILOG_SRC)/sillyfunction*.v)  
INV_4BITS_SRC= $(shell ls $(VERILOG_SRC)/inv_4bit*.v)  
GATES_SRC= $(shell ls $(VERILOG_SRC)/gates*.v)  
AND8_SRC= $(shell ls $(VERILOG_SRC)/and8*.v)  
MUX2_SRC= $(shell ls $(VERILOG_SRC)/mux2*.v)  
MUX4_SRC= $(shell ls $(VERILOG_SRC)/mux4*.v)  
FULLADDER_SRC= $(shell ls $(VERILOG_SRC)/fulladder*.v)  
NUMBERS_SRC= $(shell ls $(VERILOG_SRC)/numbers*.v)  
TRISTATE_SRC= $(shell ls $(VERILOG_SRC)/tristate*.v)  
BITSWIZZLE_SRC= $(shell ls $(VERILOG_SRC)/bitswizzle*.v)  



test_sillyfunction:
	iverilog $(SILLYFUNCTION_SRC) -o $(OUTPUT_PATH)/sillyfunction
	vvp $(OUTPUT_PATH)/sillyfunction -vcd

test_inv_4bit:
	iverilog $(INV_4BITS_SRC) -o $(OUTPUT_PATH)/invert_4bit
	vvp $(OUTPUT_PATH)/invert_4bit -vcd

test_gates:
	iverilog $(GATES_SRC) -o $(OUTPUT_PATH)/gates
	vvp $(OUTPUT_PATH)/gates -vcd

test_and8:
	iverilog $(AND8_SRC) -o $(OUTPUT_PATH)/and8
	vvp $(OUTPUT_PATH)/and8 -vcd

test_mux2:
	iverilog $(MUX2_SRC) -o $(OUTPUT_PATH)/mux2
	vvp $(OUTPUT_PATH)/mux2 -vcd

test_mux4:
	iverilog $(MUX4_SRC) -o $(OUTPUT_PATH)/mux4
	vvp $(OUTPUT_PATH)/mux4 -vcd

test_fulladder:
	iverilog $(FULLADDER_SRC) -o $(OUTPUT_PATH)/fulladder
	vvp $(OUTPUT_PATH)/fulladder -vcd

test_numbers:
	iverilog $(NUMBERS_SRC) -o $(OUTPUT_PATH)/numbers
	vvp $(OUTPUT_PATH)/numbers -vcd

test_tristate:
	iverilog $(TRISTATE_SRC) -o $(OUTPUT_PATH)/tristate
	vvp $(OUTPUT_PATH)/tristate -vcd

test_bitswizzle:
	iverilog $(BITSWIZZLE_SRC) -o $(OUTPUT_PATH)/bitswizzle
	vvp $(OUTPUT_PATH)/bitswizzle -vcd



wave:
	 gtkwave $(OUTPUT_PATH)/simple.vcd


