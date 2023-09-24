#ifndef PROJECT_BASE_V1_1_SYSCALL_C_H
#define PROJECT_BASE_V1_1_SYSCALL_C_H

#include "../lib/hw.h"


// 1. ZADATAK: mem_alloc, mem_free
void* mem_alloc(size_t size);
int mem_free (void*);

// 2. ZADATAK: niti
class TCB;
typedef TCB *thread_t;

int thread_create (
    thread_t *handle,
    void(*start_routine) (void*),
    void *arg
);

int thread_exit();
void thread_dispatch();
void thread_join(thread_t* handle);

// 3. ZADATAK: semafori
class SEM;
typedef SEM *sem_t;

int sem_open(
        sem_t *handle,
        unsigned init
);

int sem_close(sem_t handle);
int sem_wait(sem_t id);
int sem_signal(sem_t id);

char getc();
void putc(char c);

// MODIFIKACIJA
int thread_getId();

#endif //PROJECT_BASE_V1_1_SYSCALL_C_H
