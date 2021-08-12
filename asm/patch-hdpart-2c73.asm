        .ORG 2c73h

        xor a
        out ($84),a
        out ($85),a
        inc a
        out ($83), a    ; Write sector number 1
        out ($82), a    ; Set sector count to 1
        xor a           ; Put A back to 0
        nop             ; Do not seek
        nop
        nop
        nop
        nop
        ret             ; Just return  (addr 2c83)           
