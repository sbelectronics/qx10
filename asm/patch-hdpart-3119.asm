       .ORG 3119h

SEEK:
       ld   a,$A0          ; SUBROUTINE - seek
       out  ($86),a        ; Set SDH to Master, Head0
       ld   b,a            ; b = $A0

       ld    a, $01       
       out   ($81), a      ; 8-bit mode

       in   a,($86)        ; Read back the SDH register
       cp   b              ; Did it change?
       jr   nz,SEEK        ; Yes - Retry

       ld    A, $EF        ; Set feature command
       out   ($87), a      ; execute       

BUSWT:
       in   a,($87)        ; Read Status
       bit  7, A
       jr   nz,BUSWT       ; Busy?
       bit  6, A
       jr   z, BUSWT       ; Not ready? Retry          

       ld   hl,($7001)
       ld   a,($7000)
       rra
       jr   nc,LD0         ; If logical drive 0, then jump around
       ld   de,$0264       ; hardcoded to $0264
       add  hl,de          ; If logical drive 1, then increase cylinder by $0264
LD0:   ld   a,l
       and  $03            ; Only four heads maximum?
       ld   b,a            ; b now has the head
       ld   a,($7000)      ; Physical drive number and logical drive number
       rrca                ; Rotate the logical drive number off the end
       add  a,a
       add  a,a
       add  a,a            ; Shift drive number left 3 times
       or   $A0
       or   b
       out  ($86),a        ; Secsize/Drive/Head select
       ld   a,($7003)

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

       ld    a, $01        ; NOTE: Could move this up to the 8-bit modeset if space is premium
       out   ($82), a      ; Sector count to 1       

       ;ld    a, $50       ; Return from seek would have been RDY+SKC. May not matter. No room for instruction
       nop
       ret                ; return at address 3171

