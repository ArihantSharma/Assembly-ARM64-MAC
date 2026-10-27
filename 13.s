.global _main
.p2align 2

_main:
    mov w0, #12
    mov w1, #10

    eor w2, w0, w1
    lsl w0, w2, #1
    ret