.global _main
.p2align 2

_main:
    mov x0, #0

loop:
    cmp w0, #5
    b.ge done

    add w0, w0, #1
    b loop

done:
    ret