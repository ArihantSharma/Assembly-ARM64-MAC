.section __TEXT,__text,regular,pure_instructions
.global _main
.p2align 2

_main:
    mov w1, #10
    mov w2, #20
    add w0, w1, w2
    sub w0, w0, #5
    ret