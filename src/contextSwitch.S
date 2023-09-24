.global _ZN3TCB13contextSwitchEPNS_7ContextES1_
.type _ZN3TCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3TCB13contextSwitchEPNS_7ContextES1_:
    sd ra, 0 * 8(a0)       // store data ( smer -> )
    sd sp, 1 * 8(a0)

    ld ra, 0 * 8(a1)       // load data ( smer <- )
    ld sp, 1 * 8(a1)

    ret