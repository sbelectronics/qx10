       .ORG 9a9dh

       inc   a
       out   ($83),a        ; Sector number plus 1
       ld    a,l
       rra
       rra
       and   $3F
       ld    b, a
       ld    a, h
       rrca
       rrca
       ld    c, a
       and   $C0
       or    b
       out   ($84), a
       ld    a,c
       and   $03
       out   ($85), a
       ld    a, $01       ; Sector count to 1
       out   ($82), a

; 8-bit mode. This is too long. :(
;       out   ($81), a
;       ld    A, $EF
;       out   ($87), a
;BUSWT:
;       in   a,($87)        ; Check status
;       bit  7, A
;       jr   nz,BUSWT        ; Not ready?



       ld    a, $50       ; Return from seek would have been RDY+SKC. May not matter.
       nop
       nop
       nop
       nop
       nop
       nop
       nop
       ret                ; return at address 9ac1

