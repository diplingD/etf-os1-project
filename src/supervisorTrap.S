.align 4
.global _ZN5Riscv14supervisorTrapEv
.type _ZN5Riscv14supervisorTrapEv, @function

_ZN5Riscv14supervisorTrapEv:
    j _ZN5Riscv9ecallTrapEv
    j _ZN5Riscv9timerTrapEv
    li x0, 0
    li x0, 0
    li x0, 0
    li x0, 0
    li x0, 0
    li x0, 0
    li x0, 0
    j _ZN5Riscv11consoleTrapEv