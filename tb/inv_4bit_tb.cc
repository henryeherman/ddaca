#include <iostream>
#include <cassert>
#include <vector>
#include <bitset>
#include <verilated.h>
#include "Vinvert_4bit.h"

Vinvert_4bit *top;

int main(int argc, char** argv) {
    uint64_t main_time = 0;

    top = new Vinvert_4bit;
    top->a = 0x0;

    while(1) {
            switch(main_time) {
                    case 5:
                            top->a = 0x1;
                            break;
                    case 6:
                            top->a = 0x2;
                            break;
                    case 7:
                            top->a = 0x4;
                            break;
                    case 8:
                            top->a = 0x5;
                            break;
            }
            if (main_time == 10) {
                    break;
            }
            top->eval();
            main_time++;
            std::cout << "A=0b" << std::bitset<4>(top->a)  <<"|Y=0b" <<  std::bitset<4>(top->y) << std::endl;
            assert(top->a == ((~top->y) & 0xF));
    }
    top->final();
    delete top;
}
