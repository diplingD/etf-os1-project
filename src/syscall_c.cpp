#include "../h/syscall_c.h"
#include "../test/printing.hpp"

inline void abi_invoker(uint64 code){
    __asm__ volatile("mv a0, %0" :: "r" (code));       // a0 <= 0x01 za mem_alloc; a0 <= 0x02 za mem_free itd...
    __asm__ volatile("ecall");
}

// ---------------------------- 1. ZADATAK : MEMORIJA ----------------------------
void* mem_alloc(size_t size){
    if(size == 0)       // nevalidno - jer ako se trazi alokacija 0 bajtova, nemamo koji pokazivac na aloc. memoriju da vratimo!
        return nullptr;

    //size_t numOfBlocks = (size % MEM_BLOCK_SIZE == 0) ? (size/MEM_BLOCK_SIZE) : (1 + size/MEM_BLOCK_SIZE);

    __asm__ volatile("mv a1, %0" :: "r" (size));     // a1 <= size
    abi_invoker(0x01);

    uint64 volatile ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));     // ecall ce u a0 da vrati adresu alocirane memorije, koju mi upisujemo u 'ret'

    return (void*)(ret);
}

int mem_free (void* mem){
    if(mem == nullptr)
        return 0;

    asm volatile("mv a1, %0" :: "r" (mem));     // a1 <= mem
    abi_invoker(0x02);

    uint64 volatile ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));     // ecall ce u a0 da vrati adresu alocirane memorije, koju mi upisujemo u 'ret'
    if(ret == 0)
        return 0;
    else
        return -1;
}

// ---------------------------- 2. ZADATAK : NITI ----------------------------
int thread_create (thread_t *handle, void(*start_routine) (void*), void *arg) {
    //if(!handle) return -1;          // neregulatna situacija
    if(!start_routine) return -1;   // neregularna situacija

    __asm__ volatile("mv a3, %0" :: "r" ((uint64)arg));             // a3 <- arg
    __asm__ volatile("mv a2, %0" :: "r" ((uint64)start_routine));   // a2 <- start_routine
    __asm__ volatile("mv a1, %0" :: "r" ((uint64)&handle));         // a1 <- handle

    abi_invoker(0x11);  // a0 <- 0x11 i poziva "ecall"

    uint64 volatile ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    if(ret == 0)
        return 0;
    else
        return -3;
}
int thread_exit() {
    abi_invoker(0x12);

    uint64 volatile ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    if(ret == 0)
        return 0;
    else
        return -1;
}
void thread_dispatch() {
    abi_invoker(0x13);
}
// ------------------------------- join -------------------------------
void thread_join(thread_t* thr) {
    __asm__ volatile("mv a1, %0" :: "r" (thr));
    abi_invoker(0x14);
}

// ---------------------------- 3. ZADATAK : SEMAFORI ----------------------------
int sem_open(sem_t *handle, unsigned init)
{
    if (!handle) { return -1; }

    __asm__ volatile("mv a2, %0" :: "r" (init));       // a2 <- start_routine
    __asm__ volatile("mv a1, %0" :: "r" (handle));     // a1 <- handle

    abi_invoker(0x21);

    uint64 volatile ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    if(ret == 0)
        return 0;
    else
        return -2;
}

int sem_close(sem_t handle)
{
    if (!handle) { return -1; }

    __asm__ volatile("mv a1, %0" :: "r" ((uint64)handle));     // a1 <- handle

    abi_invoker(0x22);

    uint64 volatile ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    if(ret == 0)
        return 0;
    else
        return -2;
}

int sem_wait(sem_t handle)
{
    if (!handle) { return -1; }

    __asm__ volatile("mv a1, %0" :: "r" ((uint64)handle));     // a1 <- handle

    abi_invoker(0x23);

    uint64 volatile ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    if(ret == 0)
        return 0;
    else
        return -2;
}

int sem_signal(sem_t handle)
{
    if (!handle) { return -1; }

    __asm__ volatile("mv a1, %0" :: "r" ((uint64)handle));     // a1 <- handle

    abi_invoker(0x24);

    uint64 volatile ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    if(ret == 0)
        return 0;
    else
        return -2;
}

// ---------------------------- DODATO : getc(), putc() ----------------------------
char getc() {
    abi_invoker(0x41);

    uint64 volatile ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));     // ecall ce u a0 da vrati adreskoju drzi handle, rucku novokreirane niti
    return (char)ret;
}
void putc(char c) {
    asm volatile("mv a1, %0" :: "r" (c));     // a1 <= char
    abi_invoker(0x42);
}
// ----------------------------------------------------------------------------
void changeUser(){
    __asm__ volatile("li a0,0x03");
    __asm__ volatile("ecall");
}

// MODIFIKACIJA
int thread_getId(){
    abi_invoker(0x90);

    uint64 volatile ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    return (int)ret;
}