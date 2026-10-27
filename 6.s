.global _main
.p2align 2

_main:
    mov w0, #10
    mov w1, #10

    cmp w0, w1
    b.eq equal ;a condition where is b.eq i.e. they are equal then run equal func and continue

    mov w0, #0
    ret

equal:
    mov w0, #1
    ret ;if equal is called we will return 1 and program will end