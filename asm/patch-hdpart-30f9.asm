       .ORG 30f9h

       call $80E5
       ld   a,$30  
       out  ($87),a        ; Write Sector
       ld   hl,($7004)     ; HL to address buffer at 7004
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
       ret                  ; Ret at 3118


