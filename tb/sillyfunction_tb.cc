#include <iostream>
#include <cassert>
#include <verilated.h>
#include "Vsillyfunction.h"

Vsillyfunction *top;

uint64_t main_time = 0;

double sc_time_stamp() {
	return main_time;
}

int main(int argc, char** argv) {
	Verilated::commandArgs(argc, argv);
	top = new Vsillyfunction;
	top->a = 0;
	top->b = 0;
	top->c = 0;
	std::cout << "A\tB\tC\tY" << std::endl;
	while(1) {
		if (main_time == 1) {
			assert(top->y == 1);
			top->c = 1;
		}
		if (main_time == 2) {
			assert(top->y == 0);
			top->b = 1; 
			top->c = 0;
		}
		if (main_time == 3) {
			assert(top->y == 0);
			top->c = 1;	
		}
		if (main_time == 4) {
			assert(top->y == 0);
			top->a = 1;
			top->b = 0;
			top->c = 0;
		}
		if (main_time == 5) {
			assert(top->y == 1);
			top->c = 1;
		}
		if (main_time == 6) {
			assert(top->y == 1);
			top->b = 1;
			top->c = 0;
		}
		if (main_time == 7) {
			assert(top->y == 0);
			top->c = 1;
		}
		if (main_time == 8) {
			assert(top->y == 0);
			break;
		}
		top->eval();
		main_time++;
		std::cout << int(top->a) << "\t" <<
		       	     int(top->b) << "\t" <<
		     	     int(top->c) << "\t" <<
			     int(top->y) << std::endl;
	}
	top->final();
	delete top;
}
