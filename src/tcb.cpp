//
// Created by marko on 20.4.22..
//

#include "../h/tcb.h"
#include "../h/riscv.hpp"
#include "../test/printing.hpp"


TCB *TCB::running = nullptr;
TCB *TCB::main = nullptr;
int TCB::ID = 0;

int TCB::createRunThread(thread_t* handle, Body startRoutine, void* arg, uint64* stack) {   // kreiramo nit i pozivamo start
    // iskopirano da ne bi bacalo gresku
    *handle = new TCB(startRoutine, arg, stack);
    return (*handle)->start();
}

TCB *TCB::createThread(Body startRoutine, void *arg, uint64 *stack) {       // kreiramo nit
    return new TCB(startRoutine, arg, stack);
}

void TCB::threadWrapper()       // sa vezbi
{
    Riscv::popSppSpie();
    running->body(running->arg);
    running->setFinished(true);
    thread_dispatch();    //TCB::dispatch();
}

// START - pokrece nit
int TCB::start() {
    Scheduler::put(this);
    return 0;   // uspeh;
}

int TCB::exit() {   // ???
    if(!running->isFinished()) {
        running->setFinished(true);
        //dispatch();
        delete TCB::running;
        return 0;
    }
    else {
        return -1;
    }
}

void TCB::dispatch()	//trenutno izvrsavanu nit zamenjujemo nekom drugom - SA VEZBI
{
    TCB *old = running;
    if (old!= nullptr && !old->isFinished() && !old->isBlocked) {       // ako nit nije gotova ostavljamo je u scheduler-u
        Scheduler::put(old);
    }
    //if(old->pinged) printAddress((uint64)old);        /// MODIFIKACIJA
    TCB *new_thread = running = Scheduler::get();

    TCB::contextSwitch(&old->context, &new_thread->context);
}

void TCB::join(thread_t* handle) {
    while(!(*handle)->isFinished()) {
        TCB::dispatch();
    }
}

// MODIFIKACIJA
int TCB::getThreadId() {
    return pid;
}

void TCB::ping(TCB *handle) {
    handle->setPinged();
}