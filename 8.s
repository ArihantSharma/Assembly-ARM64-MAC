.global _main
.p2align 2

_main:
    mov w0, #0 ; i = 0
    mov w2, #0 ; counter = 0

outer:
    cmp w0, #3
    b.eq done

    mov w1, #0 ; j = 0 reset for each outer iteration

inner:
    cmp w1, #2
    b.ge next_outer

    add w2, w2, #1
    add w1, w1, #1
    b inner

next_outer:
    add w0, w0, #1
    b outer

done:
    ret