#include "../lib/hw.h"
#include "../lib/console.h"
#include "../h/MemoryAllocator.h"
#include "../h/syscall_c.h"
#include "../h/syscall_cpp.h"
#include "../h/riscv.hpp"
#include "../h/print.hpp"
#include "../h/tcb.h"
#include "../test/printing.hpp"

extern void userMain();
extern void changeUser();

int main() {

    MemoryAllocator::mem_init();
    Riscv::w_stvec((uint64) &Riscv::supervisorTrap + 1);
    //Riscv::ms_sstatus(Riscv::SSTATUS_SIE);    // SIE(sa vezbi) ili SPP

    TCB::main = TCB::running = TCB::createThread(nullptr, nullptr, nullptr);
    //TCB::running->start();

    changeUser();
    userMain();

    thread_exit();
    thread_join(&TCB::main);
    printString("join gotov!\n");

    return 0;
}
