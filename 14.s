.global _main
.p2align 2

_main:
    mov w1, #7
    scvtf s0, w1

    fmov s1, #2.0
    fdiv s0, s0, s1
    
    fadd s0, s0, s1
    fcvtzs w0, s0
    ret