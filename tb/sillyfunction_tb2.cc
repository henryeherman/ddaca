#include <iostream>
#include <cassert>
#include <vector>
#include <verilated.h>
#include "Vsillyfunction.h"

Vsillyfunction *top;

uint64_t main_time = 0;

double sc_time_stamp() {
	return main_time;
}

struct TestVectors {
	uint64_t apply_time;
	uint64_t verify_time;
	uint8_t a;
	uint8_t b;
	uint8_t c;
	uint8_t y;
	TestVectors(uint64_t t, uint64_t v, uint8_t a, uint8_t b, uint8_t c, uint8_t y):
		apply_time(t), verify_time(v), 
		a(a), b(b), c(c), y(y) { }

};


ostream& operator<<(ostream& os, const TestVectors& v)  
{  
				    os << " {A="<< int(v.a) << "|B=" << int(v.b) << "|C=" << int(v.c)
										<< "|Y=" << int(v.y) << "}";  
						    return os;  
}


int main(int argc, char** argv) {
	Verilated::commandArgs(argc, argv);	

	std::vector<TestVectors> test_vectors = { 
		TestVectors(1, 2, 0, 0, 0, 1),
		TestVectors(3, 4, 0, 0, 1, 0),
		TestVectors(5, 6, 0, 1, 1, 0),
		TestVectors(7, 8, 1, 0, 0, 1),
		TestVectors(9, 10, 1, 0, 1, 1),
		TestVectors(11, 12, 1, 1, 0, 0),
		TestVectors(13, 14, 1, 1, 1, 0)
	};

	const uint64_t sim_time_end = 16;

	top = new Vsillyfunction;
	top->a = 0;
	top->b = 0;
	top->c = 0;
	std::cout << "A\tB\tC\tY" << std::endl;

	while(1) {
		for (const auto& vec: test_vectors) {
			if (vec.apply_time == main_time) {
				top->a = vec.a;
				top->b = vec.b;
				top->c = vec.c;
			}

			if (vec.verify_time == main_time) {
				if (top->y != vec.y) {
					std::cerr << "Error at time " << main_time << vec << std::endl;	
				}
			}
		}

		if (main_time == sim_time_end) {
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
