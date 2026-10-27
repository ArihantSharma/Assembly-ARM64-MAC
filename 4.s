.section __DATA,__data
numbers:
    .word 10, 20, 30, 40

.section __TEXT,__text,regular,pure_instructions
.global _main
.p2align 2

_main:
    adrp x1, numbers@PAGE
    add x1, x1, numbers@PAGEOFF

    LDR x0, [x1, #12] ;4th locatiion as they are word == 4 bytes per index s x1 is first adn #12 will be third index if it starts from 0 i.e. 4th number
    ret