//
// Created by marko on 20.4.22..
//

#include "../h/riscv.hpp"
#include "../h/tcb.h"
#include "../lib/console.h"
#include "../h/MemoryAllocator.h"
#include "../test/printing.hpp"
#include "../h/semaphore.h"

void Riscv::popSppSpie()
{
    __asm__ volatile("csrw sepc, ra");
    //ms_sstatus(SSTATUS_SPP);
    __asm__ volatile("sret");
}

using Body = void(*)(void*);

void Riscv::ecallHandler()
{
    // ucitavamo parametre
    uint64 args[5];
    __asm__ volatile("mv %0, a0" : "=r" (args[0]));
    __asm__ volatile("mv %0, a1" : "=r" (args[1]));
    __asm__ volatile("mv %0, a2" : "=r" (args[2]));
    __asm__ volatile("mv %0, a3" : "=r" (args[3]));
    __asm__ volatile("mv %0, a4" : "=r" (args[4]));

    uint64 volatile sepc = r_sepc() + 4;
    uint64 volatile sstatus = r_sstatus();

    uint64 scause = r_scause();
    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    {
        // interrupt: no; cause code: environment call from U-mode(8) or S-mode(9)

        // ret ce nam biti povratna vrednost:
        uint64 ret = 0;

        // Obradjujemo prekidne rutine
        if(args[0] == 0x01) {       // mem_alloc
            size_t size = args[1];// * MEM_BLOCK_SIZE;
            ret = (uint64)MemoryAllocator::mem_alloc(size);
        }
        else if(args[0] == 0x02) {       // mem_free
            void* chunk = (void *) args[1];
            ret = (uint64)MemoryAllocator::mem_free(chunk);
        }

        //user_mode
        else if(args[0] == 0x03) {
            sstatus = sstatus & (0xFFFFFFFFFFFFFFFFUL - 256);
        }

        //uint64 ret = arg->a0;
        else if(args[0] == 0x11) {      // thread_create
            // skidamo argumente
            thread_t* handle = (thread_t*)args[1];
            void(*startRoutine) (void*) = (void(*)(void*))args[2];
            void* arg = (void*)args[3];

            //void *stack_space = nullptr;      // inicijalizacija
            void *stack_space = MemoryAllocator::mem_alloc(sizeof(uint64) * DEFAULT_STACK_SIZE); // sizeof(uint64)
            if(!stack_space) ret = -1;

            // u handle upisuje "rucku" novokreirane niti
            //ret = TCB::createRunThread(handle, startRoutine, arg, stack_space);   // pravimo i odma pokrecemo
            *handle = TCB::createThread(startRoutine, arg, (uint64*)stack_space);     // pravimo nit
            //ret = (*handle)->start();       // pokrecemo
        }
        else if(args[0] == 0x12) {      // thread_exit
            ret = TCB::exit();
        }
        else if(args[0] == 0x13) {      // thread_dispatch
            TCB::dispatch();
        }
        else if(args[0] == 0x14) {
            //thread_t* handle = (thread_t*)args[1];
            thread_t *handle;
            __asm__ volatile ("mv %0, a1" : "=r" (handle));

            TCB::join(handle);
        }
        else if(args[0] == 0x15) {      // thread_create_no_run
            // skidamo argumente
            thread_t* handle = (thread_t*)args[1];
            Body startRoutine = (Body)args[2];
            void* arg = (void*)args[3];
            uint64* stack_space = (uint64*)args[4];

            *handle = TCB::createThread(startRoutine, arg, stack_space);     // pravimo nit, ali je ne pokrecemo, ona ceka da bude pokrenuta sa .start()
        }
        // ---------------- 3. ZADATAK: semafori ---------------------
        else if(args[0] == 0x21) {      // sem_open
            // skidamo argumente
            sem_t* handle = (sem_t*)args[1];
            unsigned init = (unsigned)args[2];

            new SEM(handle, init);
        }
        else if(args[0] == 0x22) {      // sem_close
            // skidamo argumente
            sem_t handle = (sem_t)args[1];

            if(!handle) ret = -1;
            else
                ret = handle->close();
        }
        else if(args[0] == 0x23) {      // sem_wait
            // skidamo argumente
            sem_t handle = (sem_t)args[1];

            if(!handle) ret = -1;
            else
                ret = handle->wait();
        }
        else if(args[0] == 0x24) {      // sem_signal
            // skidamo argumente
            sem_t handle = (sem_t)args[1];

            if(!handle) ret = -1;
            else
                ret = handle->signal();
        }

        else if(args[0] == 0x41) {  // getc
            ret = __getc();
        }
        else if(args[0] == 0x42) {   // putc
            __putc((char)args[1]);
        }

        // MODIFIKACIJA
        else if(args[0] == 0x90) {      // thread_getId()
            TCB::running->getThreadId();
        }

        // ----------------
        __asm__ volatile("sd %0, 10*8(fp)" : : "r" ((uint64)ret));      // u a0 vracam povratnu vrednost

        w_sstatus(sstatus);
        w_sepc(sepc);
    }
    else
    { trapHandler(); }
}

void Riscv::consoleHandler() { console_handler(); }

void Riscv::timerHandler() { mc_sip(SIP_SSIP); }

void Riscv::trapHandler() {
    uint64 scause = r_scause();
    uint64 stval = r_stval();
    uint64 pc = r_sepc();
    printString("scause: ");
    printInt(scause);
    putc('\n');
    printString("stval: ");
    printInt(stval);
    putc('\n');
    int i = 1, j, temp;
    char hexa_Number[100];
    while (pc != 0) {
        int ch = pc / 16;
        int r = ch * 16;
        temp = pc - r;
        if (temp < 10)
            temp = temp + 48;
        else
            temp = temp + 55;
        hexa_Number[i++] = temp;
        pc = pc / 16;
    }
    printString("sepc: 0x");
    for (j = i - 1; j > 0; j--) putc(hexa_Number[j]);
    putc('\n');
    while(1);
}
