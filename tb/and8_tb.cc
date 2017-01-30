#include <iostream>
#include <cassert>
#include <vector>
#include <bitset>
#include <verilated.h>
#include "verilated_vcd_c.h"
#include "Vand8.h"

Vand8 *top;

int main(int argc, char** argv) {
  uint64_t main_time = 0;
  Verilated::commandArgs(argc, argv);
  top = new Vand8;

  Verilated::traceEverOn(true);
  VerilatedVcdC* tfp = new VerilatedVcdC;
  top->trace (tfp, 99);
  tfp->open ("obj_dir/simx.vcd");

  // Intiailize top
  top->a = 0x00000000;

  while(1) {
    switch (main_time) {
      case 1:
        top->a = 0b00000000;
        break;
      case 2:
        top->a = 0b00000001;
        break;
      case 3:
        top->a = 0b10000001;
        break;
      case 4:
        top->a = 0b11111111;
        break;
      case 5:
        top->a = 0b00000000;
        break;
    }

    top->eval();
    tfp->dump (main_time);
    main_time++;
    std::cout << "A=0b" << std::bitset<8>(top->a)  << 
      "|Y=0b" <<  std::bitset<1>(top->y) << std::endl;
    if (main_time == 7) {
     break;
    } 
  }
  top->final();
  tfp->close();
  delete top;
  delete tfp;
  return 0;
}

