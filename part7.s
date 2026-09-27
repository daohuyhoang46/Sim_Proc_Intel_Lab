.define HEX_ADDRESS 0x20
.define SW_ADDRESS  0x30

MAIN:
    mv r6, pc
    mv pc, #BLANK

    mv r0, #0x0000

LOOP:
    mvt r3, #HEX_ADDRESS

    mv r5, pc
    mv pc, #DISPLAY

    mvt r5, #SW_ADDRESS
    ld r4, [r5]
    and r4, #0x0007
    add r4, #0x0001

OUTER_LOOP:
    mvt r5, #0x0000
    add r5, #0x00ff

DELAY_LOOP:
    mvt r2, #0x0000
    add r2, #0x00ff

INNER_LOOP:
    sub r2, #0x0001
    bne #INNER_LOOP

    sub r5, #0x0001
    bne #DELAY_LOOP

    sub r4, #0x0001
    bne #OUTER_LOOP

    add r0, #0x0001
    bcc #LOOP
    b #MAIN


DISPLAY:
    mv r4, r0

    mv r6, pc
    mv pc, #DIV10

    mv r2, =DATA
    add r2, r0
    ld r0, [r2]
    st r0, [r3]
    add r3, #0x0001

    mv r0, r1
    mv r6, pc
    mv pc, #DIV10

    mv r2, =DATA
    add r2, r0
    ld r0, [r2]
    st r0, [r3]
    add r3, #0x0001

    mv r0, r1
    mv r6, pc
    mv pc, #DIV10

    mv r2, =DATA
    add r2, r0
    ld r0, [r2]
    st r0, [r3]
    add r3, #0x0001

    mv r0, r1
    mv r6, pc
    mv pc, #DIV10

    mv r2, =DATA
    add r2, r0
    ld r0, [r2]
    st r0, [r3]
    add r3, #0x0001

    mv r0, r1
    mv r6, pc
    mv pc, #DIV10

    mv r2, =DATA
    add r2, r0
    ld r0, [r2]
    st r0, [r3]
    add r3, #0x0001

    mv r0, r1

    mv r2, =DATA
    add r2, r0
    ld r0, [r2]
    st r0, [r3]

    mv r0, r4

    add r5, #0x0001
    mv pc, r5


DIV10:
    mv r1, #0x0000

DLOOP:
    mv r2, #0x0009
    sub r2, r0
    bcs #RETDIV

    add r1, #0x0001
    sub r0, #0x000a
    b #DLOOP

RETDIV:
    add r6, #0x0001
    mv pc, r6


BLANK:
    mv r0, #0x0000

    mvt r3, #HEX_ADDRESS

    st r0, [r3]
    add r3, #0x0001

    st r0, [r3]
    add r3, #0x0001

    st r0, [r3]
    add r3, #0x0001

    st r0, [r3]
    add r3, #0x0001

    st r0, [r3]
    add r3, #0x0001

    st r0, [r3]

    add r6, #0x0001
    mv pc, r6


DATA:
    .word 0b00111111
    .word 0b00000110
    .word 0b01011011
    .word 0b01001111
    .word 0b01100110
    .word 0b01101101
    .word 0b01111101
    .word 0b00000111
    .word 0b01111111
    .word 0b01101111