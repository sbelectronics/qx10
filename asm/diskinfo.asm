HDD_DATA    equ      80h
HDD_ERROR   equ      81h
HDD_SEC_CNT equ      82h
HDD_SEC     equ      83h
HDD_CYL_LO  equ      84h
HDD_CYL_HI  equ      85h
HDD_SDH     equ      86h
HDD_CMD     equ      87h
HDD_STATUS  equ      87h

CMD_IDENT   equ      $EC

WARMBOOT    equ      0

        .ORG 100h

START:  
        LD    DE, BANNER
		CALL  PRINTMSG

        XOR   A
		OUT   (HDD_SEC_CNT), A
		OUT   (HDD_SEC), A
		OUT   (HDD_CYL_LO), A
		OUT   (HDD_CYL_HI), A

        LD    A, $A0
        OUT   (HDD_SDH), A

        LD    HL, IDENT     ; Destination address
		LD    BC, $0080     ; Read 256 bytes at a time from port 80	

		LD    A, CMD_IDENT
		OUT   (HDD_CMD), A

        ; Check to see if disk exists
		IN    A, (HDD_STATUS)
		JP    Z, NODISK

BUSWT:  IN    A, (HDD_STATUS)
        OR    A
		JP    M, BUSWT                 ; Loop while busy bit set

        INIR                ; read 256 bytes from port 80 and write to [hl]
		INIR                ; read 256 bytes from port 80 and write to [hl]

REPORT:
        LD    DE, CYLMSG
		CALL  PRINTMSG
		LD    DE, (CYL_LO)
		CALL  PRINTHEXDE
		LD    DE, HEADMSG
		CALL  PRINTMSG
		LD    DE, (HEADS)
		CALL  PRINTHEXDE
		LD    DE, SECMSG
		CALL  PRINTMSG
		LD    DE, (SECTORS)
		CALL  PRINTHEXDE
		LD    DE, CRLF
		CALL  PRINTMSG

DONE:
        LD    DE, DONEMSG
		CALL  PRINTMSG
        JP    WARMBOOT

NODISK:
        LD    DE, NODISKMSG
		CALL  PRINTMSG
        JP    WARMBOOT

PRINTMSG:
        LD    C, $09
		CALL  $0005
		RET

PRINTHEXDE:
        LD    A, D
		CALL  PRINTHEXBYTE
		LD    A, E
		CALL  PRINTHEXBYTE
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

BANNER:     dm "IDE Disk Identifier. Scott M Baker.", $0D, $0A, "$"
NODISKMSG:  dm "No Disk.", $0D, $0A, "$"
DONEMSG:    dm "Done.", $0D, $0A, "$"
CYLMSG:     dm "Cylinders: $"
HEADMSG:    dm $0D, $0A, "Heads: $"
SECMSG:     dm $0D, $0A, "Sectors: $"
CRLF:       dm $0D, $0A, "$"

            .ORG 1000h
IDENT:
DEVTYPE:    dw 0
CYL_LO:     dw 0
CYL_HI:     dw 0
HEADS:      dw 0
JUNK1:      dw 0
JUNK2:      dw 0
SECTORS:    dw 0
FILL:       ds 512, 0


