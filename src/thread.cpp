//
// Created by os on 1/26/23.
//

#include "../h/syscall_cpp.h"
#include "../h/tcb.h"

Thread::Thread(void (*body)(void *), void *arg) {   // KONSTRUKTOR
    //thread_create(&myHandle, body, arg);
}

Thread::Thread()  { myHandle = nullptr; }

// WRAPPER
void Thread::wrapperRun(void* nit) {
    ((Thread*)nit)->run();
    //TCB::running.myHandle->run();   // ovo valjda isto moze ali je myHandle private
}

Thread::~Thread() noexcept {    // DESTRUKTOR
    //thread_exit   // ???
    sem_signal(semafor);      // MODIFIKACIJA
    mem_free(this);
}

int Thread::start() {
    if(semafor)                   // MODIFIKACIJA
        sem_wait(semafor);
    if(!myHandle) {
        thread_create(&myHandle, Thread::wrapperRun, this);
    }
    return 0;
}

void Thread::dispatch() {
    thread_dispatch();
}

void Thread::join() {
    if(myHandle) thread_join(&myHandle);
}

// MODIFIKACIJA
int Thread::getThreadId() {
    return thread_getId();
}

sem_t Thread::semafor = nullptr;

void Thread::setMaximumThreads(int num_of_threads) {
    sem_open(&semafor, num_of_threads);
}