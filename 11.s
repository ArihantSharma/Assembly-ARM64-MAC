.global _main
.p2align 2

_main:
    stp x29, x30, [sp, #-16]!
    mov x29, sp

    sub sp, sp, #16

    mov x0, #42
    str x0, [sp]

    mov x1, #0
    ldr x1, [sp]
    mov x0, x1

    add sp, sp, #16
    ldp x29, x30, [sp], #16
    ret
