
test_first_verilator: clean
	verilator -Wall -cc our.v --exe test_our.cc
	cd obj_dir; make -j -f Vour.mk Vour
	@echo "*****************************************"
	@echo "Running simulation"
	@echo "*****************************************"
	@obj_dir/Vour

test_sillyfunction: clean
	verilator -Wall -cc ../ch4/src/sillyfunction.v --exe sillyfunction_tb.cc
	cd obj_dir; make -j -f Vsillyfunction.mk Vsillyfunction
	@echo "*****************************************"
	@echo "Running simulation"
	@echo "*****************************************"
	@obj_dir/Vsillyfunction

test_sillyfunction2: clean
	verilator -Wall -CFLAGS -std=c++0x -cc ../ch4/src/sillyfunction.v --exe sillyfunction_tb2.cc
	cd obj_dir; make -j -f Vsillyfunction.mk Vsillyfunction
	@echo "*****************************************"
	@echo "Running simulation"
	@echo "*****************************************"
	@obj_dir/Vsillyfunction


test_inv_4bit: clean
	verilator -CFLAGS -std=c++0x -cc ../ch4/src/inv_4bit.v --top-module invert_4bit --exe inv_4bit_tb.cc 
	cd obj_dir; make -j -f Vinvert_4bit.mk Vinvert_4bit
	@echo "*****************************************"
	@echo "Running simulation"
	@echo "*****************************************"
	@obj_dir/Vinvert_4bit


test_gates: clean
	verilator -Wall -CFLAGS -std=c++0x -cc ../ch4/src/gates.v --exe gates_tb.cc
	cd obj_dir; make -j -f Vgates.mk Vgates
	@echo "*****************************************"
	@echo "Running simulation"
	@echo "*****************************************"
	@obj_dir/Vgates

test_and8: clean
	verilator -Wall --trace -CFLAGS -std=c++0x -cc ../ch4/src/and8.v --exe and8_tb.cc
	cd obj_dir; make -j -f Vand8.mk Vand8
	@echo "*****************************************"
	@echo "Running simulation"
	@echo "*****************************************"
	@obj_dir/Vand8
	@gtkwave obj_dir/simx.vcd


clean:
	rm -Rf obj_dir


