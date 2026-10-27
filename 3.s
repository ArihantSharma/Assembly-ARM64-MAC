
.section __DATA,__data
_number:
    .word 42

.section __TEXT,__text,regular,pure_instructions
.global _main
.p2align 2

_main:
    adrp x1, _number@PAGE
    add  x1, x1, _number@PAGEOFF

    ldr w0, [x1]
    ret
