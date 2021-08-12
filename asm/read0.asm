; fmt0.asm
; Scott Baker, https://www.smbaker.com/


HDD_DATA    equ      80h
HDD_FEAT    equ      81h
HDD_ERROR   equ      81h
HDD_SEC_CNT equ      82h
HDD_SEC     equ      83h
HDD_CYL_LO  equ      84h
HDD_CYL_HI  equ      85h
HDD_SDH     equ      86h
HDD_CMD     equ      87h
HDD_STATUS  equ      87h

CMD_IDENT   equ      $EC
CMD_FEAT    equ      $EF

FEAT_8BIT   equ      $01

WARMBOOT    equ      0

        .ORG 100h

START:  
        LD    DE, BANNER
		CALL  PRINTMSG

        XOR   A
		OUT   (HDD_CYL_LO), A
		OUT   (HDD_CYL_HI), A
		INC   A
		OUT   (HDD_SEC), A             ; Sector 0
		OUT   (HDD_SEC_CNT), A         ; Single-sector transfer

        LD    A, $A0
        OUT   (HDD_SDH), A

        ; 8-bit mode
        LD    A, FEAT_8BIT
		OUT   (HDD_FEAT), A
		LD    A, CMD_FEAT
		OUT   (HDD_CMD), A

BUSWT1: IN    A, (HDD_STATUS)
        OR    A
		JP    M, BUSWT1                 ; Loop while busy bit set		

		LD    A, $20
		OUT   ($87), A

BUSWT2:  IN    A, (HDD_STATUS)
        OR    A
		JP    M, BUSWT2      ; Loop while busy bit set		

;DRQWT:  IN    A, (HDD_STATUS)
;		BIT   3, A                     ; Is DRQ unset
;		JP    Z,  DRQWT

        LD    HL, READBUF   ; Dest address
		LD    BC, $0080     ; Read 256 bytes at a time from port 80	
		INIR
		INIR

BUSWT:  IN    A, (HDD_STATUS)
        OR    A
		JP    M, BUSWT      ; Loop while busy bit set

		RRA                 ; Carry = error bit

		jp   c, READERR     ; Jump to error return if carry set

		ld   HL, READBUF
		ld   B, $20         ; Print 32 hex bytes
NEXT:
        ld   A, (HL)
		push HL
		push BC
		call PRINTHEXBYTE

        ; print space
        LD   E, $20
		LD   C, $02
		CALL $0005

		pop  BC
		pop  HL
		inc  HL
        djnz NEXT

DONE:
        LD    DE, DONEMSG
		CALL  PRINTMSG
        JP    WARMBOOT

READERR:
        LD    DE, READERRMSG
		CALL  PRINTMSG
        JP    WARMBOOT

PRINTMSG:
        LD    C, $09
		CALL  $0005
		RET

PRINTHEXBYTE:
        PUSH  AF
		RRA
		RRA
		RRA
		RRA
		CALL  PRINTHEXNIB
		POP   AF
PRINTHEXNIB:
        PUSH  DE
        AND   $0F
		ADD   A, $90
		DAA
		ADC   A, $40
		DAA
		LD    C, $02
		LD    E, A
		CALL  $0005
		POP   DE
		RET

BANNER:     dm "Read test. Scott M Baker.", $0D, $0A, "$"
READERRMSG: dm "Read Error.", $0D, $0A, "$"
DONEMSG:    dm "Done.", $0D, $0A, "$"
CRLF:       dm $0D, $0A, "$"

            .ORG 1000h
READBUF:     ds 512, $E5


