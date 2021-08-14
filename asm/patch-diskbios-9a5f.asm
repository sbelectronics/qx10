       .ORG 9a5fh

       ld   a,$A0          ; SUBROUTINE - seek
       out  ($86),a        ; Set SDH to Master, Head0
       ld   b,a            ; b = $A0

       ld    a, $01       
       out   ($81), a      ; 8-bit mode

       in   a,($86)        ; Read back the SDH register
       cp   b              ; Did it change?
       jp   nz,$9AC2       ; Yes - Retry

       ld    A, $EF        ; Set feature command
       out   ($87), a      ; execute       

BUSWT:
       in   a,($87)        ; Read Status
       bit  7, A
       jr   nz,BUSWT       ; Busy?
       bit  6, A
       jp   z, $9AC2       ; Not ready? Retry          

;       in   a,($87)        ; XXX Read Status
;       and  $C0            ; XXX Mask Busy and ready bits
;       cp   $40            ; XXX Is drive ready and not busy?
;       jp   nz,$9AC2       ; XXX No - Retry

       ld   hl,($9AD0)
       ld   de,($9ADF)
       add  hl,de
       ld   a,($9ACF)      ; Physical drive number and logical drive number
       rra
       jp   nc,LD0         ; If logical drive 0, then jump around
       ld   de,($9AE1)     ; (de) contains $0264
       add  hl,de          ; If logical drive 1, then increase cylinder by $0264
LD0:   ld   a,l
       and  $03            ; Only four heads maximum?
       ld   b,a            ; b now has the head
       ld   a,($9ACF)      ; Physical drive number and logical drive number
       rrca                ; Rotate the logical drive number off the end
       add  a,a
       add  a,a
       add  a,a            ; Shift drive number left 3 times
       or   $A0
       or   b
       out  ($86),a        ; Secsize/Drive/Head select
       ld   a,($9AD2)       

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

       ld    a, $50       ; Return from seek would have been RDY+SKC. May not matter.
       ;nop
       ;nop
       ;nop
       ;nop
       ;nop
       ;nop
       ;nop
       ret                ; return at address 9ac1

