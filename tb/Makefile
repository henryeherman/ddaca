
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
	verilator -Wall -CFLAGS -std=c++0x -cc ../ch4/src/invert_4bit.v --exe inv_4bit_tb.cc
	cd obj_dir; make -j -f Vinvert_4bit.mk Vinvert_4bit
	@echo "*****************************************"
	@echo "Running simulation"
	@echo "*****************************************"
	@obj_dir/Vinvert_4bit


clean:
	rm -Rf obj_dir


