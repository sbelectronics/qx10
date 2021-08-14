       .ORG 9a14h

       call $9A5F
       ld   a,$30  
       out  ($87),a        ; Write Sector
       ld   hl,$DE00       ; HL to address buffer at DE00
       ld   bc,$0080       ; Write 256 bytes at a time to add 80
DRQWT:
       in   a,($87)        ; Check status
       bit  3, A
       jr   z,DRQWT        ; Not ready?       

       otir                ; Write 256 Bytes
       otir                ; Write 256 Bytes
       
BUSWT:
       in   a,($87)        ; Check status
       bit  7, A
       jr   nz,BUSWT        ; Not ready?
       ;ld   b,a
       ;ld   a,$30          ; Select drive 3?
       ;out  ($86),a
       ;ld   a,b
       and  $01
       ret z                ; Ret at 9a33
