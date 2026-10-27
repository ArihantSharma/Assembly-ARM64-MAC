.section __DATA,__data
_message:
    .asciz "CAT"

.section __TEXT,__text,regular,pure_instructions
.global _main
.p2align 2

_main:
    adrp x1, _message@PAGE
    add  x1, x1, _message@PAGEOFF

    mov w0, #'B'
    strb w0, [x1]

    mov x0, x1
    bl _puts

    mov w0, #0
    ret