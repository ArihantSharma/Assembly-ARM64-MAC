.section __DATA, __data
_a:
    .word 10, 20, 30, 40

_b:
    .word 1, 2, 3, 4

.section __TEXT,__text,regular,pure_instructions
.global _main
.p2align 4

_main:
    adrp x1, _a@PAGE
    add x1, x1, _a@PAGEOFF

    adrp x2, _b@PAGE
    add x2, x2, _b@PAGEOFF

    ldr q1, [x1]
    ldr q2, [x2]

    add v0.4s, v1.4s, v2.4s

    umov w0, v0.s[0]
    ret