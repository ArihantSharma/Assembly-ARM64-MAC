.section __TEXT,__text,regular,pure_instructions
.global _main
.p2align 2

_main:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    mov x0, #10
    mov x1, #20
    bl __add_numbers
    ldp x29, x30, [sp], #16
    ret

__add_numbers:
    add x0, x0, x1
    ret