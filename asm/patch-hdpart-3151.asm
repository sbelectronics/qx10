       .ORG 3151h

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
       xor   a            ; do not seek
       nop
       nop
       nop
       nop
       nop
       nop
       nop
       nop
       ret                ; return at address 3171

