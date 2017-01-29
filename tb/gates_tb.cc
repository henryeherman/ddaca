#include <iostream>
#include <bitset>
#include <cassert>
#include <vector>
#include <verilated.h>
#include "Vgates.h"

Vgates *top;

uint64_t main_time = 0;

double sc_time_stamp() {
	return main_time;
}

struct TestVectors {
	uint64_t apply_time;
	uint8_t a;
	uint8_t b;
	uint8_t y1;
	uint8_t y2;
	uint8_t y3;
	uint8_t y4;
	uint8_t y5;
	TestVectors(uint64_t t, uint8_t a, uint8_t b,
              uint8_t y1, uint8_t y2, uint8_t y3,
              uint8_t y4, uint8_t y5):
		apply_time(t),
		a(a), b(b),
    y1(y1), y2(y2), y3(y3), y4(y4), y5(y5) { }

};


ostream& operator<<(ostream& os, const TestVectors& v)  
{  
				    os << " {A="<< int(v.a) << "|B=" << int(v.b) << 
										"|Y1=" << int(v.y1) << 
										"|Y2=" << int(v.y2) << 
										"|Y3=" << int(v.y3) << 
										"|Y4=" << int(v.y4) << 
										"|Y5=" << int(v.y5) << "}"; 
						    return os;  
}


int main(int argc, char** argv) {
	Verilated::commandArgs(argc, argv);	

	std::vector<TestVectors> test_vectors = { 
		TestVectors(1, 0x1, 0xF, 0, 0, 0, 0, 0),
		TestVectors(3, 0x2, 0xF, 0, 0, 0, 0, 0),
		TestVectors(5, 0x3, 0xF, 0, 0, 0, 0, 0),
		TestVectors(7, 0x4, 0xF, 0, 0, 0, 0, 0),
		TestVectors(9, 0x5, 0xF, 0, 0, 0, 0, 0),
		TestVectors(11, 0x6, 0xF, 0, 0, 0, 0, 0),
		TestVectors(13, 0x7, 0xF, 0, 0, 0, 0, 0), 
		TestVectors(13, 0x8, 0xF, 0, 0, 0, 0, 0),
		TestVectors(13, 0x9, 0xF, 0, 0, 0, 0, 0),
		TestVectors(13, 0xA, 0xF, 0, 0, 0, 0, 0),
		TestVectors(13, 0xB, 0xF, 0, 0, 0, 0, 0),
		TestVectors(13, 0xC, 0xF, 0, 0, 0, 0, 0),
		TestVectors(13, 0xD, 0xF, 0, 0, 0, 0, 0),
		TestVectors(13, 0xE, 0xF, 0, 0, 0, 0, 0),
		TestVectors(13, 0xF, 0xF, 0, 0, 0, 0, 0)
	};

	const uint64_t sim_time_end = 16;

	top = new Vgates;
	top->a = 0;
	top->b = 0;
	std::cout << "A\tB\tY1\tY2\tY3\tY4\tY5" << std::endl;

	while(1) {
		for (const auto& vec: test_vectors) {
			if (vec.apply_time == main_time) {
				top->a = vec.a;
				top->b = vec.b;
			}
		}

		if (main_time == sim_time_end) {
			break;
		}
		top->eval();
		main_time++;
		std::cout << std::bitset<4>(top->a) << "\t" <<
		       	     std::bitset<4>(top->b) << "\t" <<
		     	       std::bitset<4>(top->y1) << "\t" <<
		     	       std::bitset<4>(top->y2) << "\t" <<
		     	       std::bitset<4>(top->y3) << "\t" <<
		     	       std::bitset<4>(top->y4) << "\t" <<
		     	       std::bitset<4>(top->y5) << "\t" << std::endl;
	}
	top->final();
	delete top;
}
