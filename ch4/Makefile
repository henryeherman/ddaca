

VERILOG_SRC=./src
OUTPUT_PATH=./outputs

IVERILOG_FLAGS=-g 2012
IVERILOG=iverilog $(IVERILOG_FLAGS)


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
SEVENSEG_SRC= $(shell ls $(VERILOG_SRC)/sevenseg*.v)  
TIMESCALE_EX= $(shell ls $(VERILOG_SRC)/timescale_example*.v)  
PRIORITYCKT_SRC= $(shell ls $(VERILOG_SRC)/priorityckt*.v)  
STRUCTURALMUX4_SRC= $(shell ls $(VERILOG_SRC)/structuralmux4*.v) $(VERILOG_SRC)/mux2.v 
STRUCTURALMUX2_SRC= $(shell ls $(VERILOG_SRC)/structuralmux2*.v) $(VERILOG_SRC)/tristate.v 



test_sillyfunction:
	$(IVERILOG) -o $(OUTPUT_PATH)/sillyfunction $(SILLYFUNCTION_SRC) 
	vvp $(OUTPUT_PATH)/sillyfunction -vcd

test_inv_4bit:
	$(IVERILOG) -o $(OUTPUT_PATH)/invert_4bit $(INV_4BITS_SRC) 
	vvp $(OUTPUT_PATH)/invert_4bit -vcd

test_gates:
	$(IVERILOG) -o $(OUTPUT_PATH)/gates $(GATES_SRC) 
	vvp $(OUTPUT_PATH)/gates -vcd

test_and8:
	$(IVERILOG) -o $(OUTPUT_PATH)/and8 $(AND8_SRC)
	vvp $(OUTPUT_PATH)/and8 -vcd

test_mux2:
	$(IVERILOG) -o $(OUTPUT_PATH)/mux2 $(MUX2_SRC)
	vvp $(OUTPUT_PATH)/mux2 -vcd

test_mux4:
	$(IVERILOG) -o $(OUTPUT_PATH)/mux4 $(MUX4_SRC)
	vvp $(OUTPUT_PATH)/mux4 -vcd

test_fulladder:
	$(IVERILOG) -o $(OUTPUT_PATH)/fulladder -g2012 $(FULLADDER_SRC)
	vvp $(OUTPUT_PATH)/fulladder -vcd

test_numbers:
	$(IVERILOG) -o $(OUTPUT_PATH)/numbers $(NUMBERS_SRC)
	vvp $(OUTPUT_PATH)/numbers -vcd

test_tristate:
	$(IVERILOG) -o $(OUTPUT_PATH)/tristate $(TRISTATE_SRC)
	vvp $(OUTPUT_PATH)/tristate -vcd

test_bitswizzle:
	$(IVERILOG) -o $(OUTPUT_PATH)/bitswizzle $(BITSWIZZLE_SRC)
	vvp $(OUTPUT_PATH)/bitswizzle -vcd

test_sevenseg:
	$(IVERILOG) -o $(OUTPUT_PATH)/sevenseg $(SEVENSEG_SRC)
	vvp $(OUTPUT_PATH)/sevenseg -vcd

test_timescale_ex:
	$(IVERILOG) -o $(OUTPUT_PATH)/timescale_ex $(TIMESCALE_EX)
	vvp $(OUTPUT_PATH)/timescale_ex -vcd

test_priorityckt:
	$(IVERILOG) -o $(OUTPUT_PATH)/priorityckt $(PRIORITYCKT_SRC)
	vvp $(OUTPUT_PATH)/priorityckt -vcd

test_structuralmux4:
	$(IVERILOG) -o $(OUTPUT_PATH)/structuralmux4 $(STRUCTURALMUX4_SRC)
	vvp $(OUTPUT_PATH)/structuralmux4 -vcd

test_structuralmux2:
	$(IVERILOG) -o $(OUTPUT_PATH)/structuralmux2 $(STRUCTURALMUX2_SRC)
	vvp $(OUTPUT_PATH)/structuralmux2 -vcd


wave:
	 gtkwave $(OUTPUT_PATH)/simple.vcd


