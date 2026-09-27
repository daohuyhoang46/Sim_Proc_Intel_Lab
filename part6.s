.define LED_ADDRESS 0x10
.define SW_ADDRESS  0x30

mv r0, #0x0000
mvt r1, #LED_ADDRESS
mvt r2, #SW_ADDRESS

LOOP:
    st r0, [r1]

    ld r3, [r2]
    and r3, #0x0007
    add r3, #0x0001

OUTER_LOOP:
    mvt r5, #0x0000
    add r5, #0x0010

DELAY_LOOP:
    mvt r4, #0x0000
    add r4, #0x0010
INNER_LOOP:
    sub r4, #0x0001
    bne #INNER_LOOP

    sub r5, #0x0001
    bne #DELAY_LOOP

    sub r3, #0x0001
    bne #OUTER_LOOP

    add r0, #0x0001
    b #LOOP