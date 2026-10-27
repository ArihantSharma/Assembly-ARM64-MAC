.section __DATA, __data
_numbers:
    .word 20, 10, 11, 13

.section __TEXT,__text,regular,pure_instructions
.global _main
.p2align 2

_main:
    adrp x1, _numbers@PAGE
    add x1, x1, _numbers@PAGEOFF

    ldr w0, [x1], #4
    ret