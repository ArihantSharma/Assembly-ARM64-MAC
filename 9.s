.section __TEXT,__text,regular,pure_instructions
.global _main
.p2align 2

_main:
    stp x29, x30, [sp, #-16]!
    mov x29, sp

    mov w0, #7
    mov w1, #5

    bl _add_numbers

    ldp x29, x30, [sp], #16
    ret

_add_numbers:
    add w0, w0, w1
    ret