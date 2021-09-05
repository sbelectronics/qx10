; diskinfo.asm
; Scott Baker, https://www.smbaker.com/
;
; Inspect the Master IDE controller at io address 80.
; Report sector and cylinder counts.

#INCLUDE "diskport.asm"

WARMBOOT    equ      0

        .ORG 100h

START:  
        LD    DE, BANNER
		CALL  PRINTMSG
        LD    DE, PORTMSG
        CALL  PRINTMSG
        LD    A, BASE_PORT
        CALL  PRINTHEXBYTE
        LD    DE, CRLF
        CALL  PRINTMSG

        LD    DE, CRLF
		CALL  PRINTMSG   ; another cr/lf
		LD    DE, WARNING
		CALL  PRINTMSG
		CALL  READCHAR
		CP    'y'
		JP    Z, CONFIRMED
		CP    'Y'
		JP    Z, CONFIRMED

		LD    DE, ABORTEDMSG
		CALL  PRINTMSG
		JP    WARMBOOT
CONFIRMED:
        LD    DE, CRLF
		CALL  PRINTMSG

		CALL DISKINIT

        ; Write E7 pattern to the disk
        LD   DE, WE7MSG
		CALL PRINTMSG
		LD   HL, ESEVEN
		CALL DISKWRITE
		LD   DE, RE7MSG
		CALL PRINTMSG
		LD   HL, READBUF
		CALL POISON		
		CALL DISKREAD
		LD   DE, ESEVEN
		CALL COMPARE		

        ; Write Test Message to the disk
	    LD   DE, WTESTMSG
		CALL PRINTMSG
        LD   HL, TESTMSG
		CALL DISKWRITE
		LD   DE, RTESTMSG
		CALL PRINTMSG
		LD   HL, READBUF
		CALL POISON		
		CALL DISKREAD
		LD   DE, TESTMSG
		CALL COMPARE

DONE:
        LD    DE, DONEMSG
		CALL  PRINTMSG
        JP    WARMBOOT

NODISK:
        LD    DE, NODISKMSG
		CALL  PRINTMSG
        JP    WARMBOOT

;;-------------------------------------------------------------------
;; DISKINIT
;; Initialize the disk controller and set 8-bit mode
DISKINIT:
        XOR   A
		OUT   (HDD_SEC), A
		OUT   (HDD_CYL_LO), A
		OUT   (HDD_CYL_HI), A
		INC   A
		OUT   (HDD_SEC_CNT), A         ; Single-sector transfer

        LD    A, $A0
        OUT   (HDD_SDH), A

        ; 8-bit mode
        LD    A, FEAT_8BIT
		OUT   (HDD_FEAT), A

        IN    A, (HDD_SDH)              ; Read-back the SDH register
        CP    $A0                       ; Did it change?
		JR    NZ, BADREG

		LD    A, CMD_FEAT
		OUT   (HDD_CMD), A

BUSWT1: IN    A, (HDD_STATUS)
        BIT   7, A
        JR    nz,BUSWT1       ; Busy?
		BIT   6, A
		JR    z, NOTREADY
		JP    IOKAY

BADREG:
	    LD    DE, BADREGMSG
		CALL  PRINTMSG
		JP    WARMBOOT

NOTREADY:
	    LD    DE, NOTREADYMSG
		CALL  PRINTMSG
		JP    WARMBOOT

IOKAY:
		RET

;;-------------------------------------------------------------------	
;; DISKWRITE
;; Write (HL) to disk
;; Returns zero flag set on success
DISKWRITE:
       push BC
	   push DE
	   push HL
       call DISKSEEK
       ld   a,$30  
       out  (HDD_CMD),a    ; Write Sector
	   LD   B, 0
	   LD   C, HDD_DATA    ; Write 256 bytes at a time to data reg
WDRQWT:
       in   a,(HDD_STATUS) ;  Check status
       bit  3, A
       jr   z,WDRQWT       ; Not ready?       

       otir                ; Write 256 Bytes
       otir                ; Write 256 Bytes
WBUSWT:
       in   a,(HDD_STATUS) ; Check status
       bit  7, A
       jr   nz,WBUSWT      ; Not ready?
       and  $01
	   jr   Z, WOKAY
	   ld   DE, WRITEERRMSG
	   CALL PRINTMSG
	   JP   WARMBOOT
WOKAY:
	   pop  HL
	   pop  DE
	   pop  BC	   
       ret

;;-------------------------------------------------------------------	
;; DISKREAD
;; Read from disk to (HL)
DISKREAD:
       push BC
	   push DE
	   push HL
	   call DISKSEEK
       ld   a,$20
       out  (HDD_CMD),a    ; Read Sector
	   LD   B, 0
	   LD   C, HDD_DATA    ; Read 256 bytes at a time from data reg
RBUSWT:
       in   a,(HDD_STATUS) ; Check status
       bit  7, A
       jr   nz,RBUSWT      ; Not ready?

       inir                ; Read 256 Bytes
       inir                ; Read 256 Bytes

       in   a,(HDD_STATUS) ; Check status	   
	   and  $01
	   jr   Z, ROKAY
	   ld   DE, READERRMSG
	   CALL PRINTMSG
	   JP   WARMBOOT  
ROKAY:
	   pop  HL
	   pop  DE
	   pop  BC
       ret

;;-------------------------------------------------------------------	
;; DISKSEEK
;; Sets the disk address to CYL_HI/CYL_LO/SEC/HEAD
DISKSEEK:
	   ld   A,(CYL_HI)
	   out  (HDD_CYL_HI), A
	   ld   A,(CYL_LO)
	   out  (HDD_CYL_LO), A
	   ld   A,(SEC)
	   inc  A                        ; increment sector number
	   out  (HDD_SEC), A
	   ld   A,(HEAD)
	   or   A,$A0
	   out  (HDD_SDH), A
	   ld   A, 1
       out  (HDD_SEC_CNT), A         ; Single-sector transfer	   
	   ret

;;-------------------------------------------------------------------	
;; POISON
;; Fill the read buffer with crap.
POISON:
       push BC
	   push DE
	   push HL
       ld   B, 0xFF
PAGAIN:
	   ld   A, $12
	   ld   (HL), A
	   inc  HL
	   ld   A, $34
	   ld   (HL), A
	   inc  HL
	   djnz PAGAIN 
	   pop  HL
	   pop  DE
	   pop  BC
	   ret

;;-------------------------------------------------------------------	
;; COMPARE
;; Compare 512 bytes at DE to HL and throw a tantrum if they don't
;; match.
COMPARE:
       LD     B, 0xFF
CMPLOOP:
       LD     A, (DE)          ; Compare first byte.
       CPI              
       JR     NZ, NOMATCH      ; If (HL) != (DE), abort.
       INC    DE               ; Update pointer.
	   LD     A, (DE)          ; Compare second byte.
       CPI
       JR     NZ, NOMATCH      ; If (HL) != (DE), abort.
       INC    DE               ; Update pointer.	   
	   DJNZ   CMPLOOP
	   RET
NOMATCH:
       LD     DE, CMPERRMSG
	   CALL   PRINTMSG
	   JP     WARMBOOT

PRINTMSG:
        LD    C, $09
		CALL  $0005
		RET

READCHAR:
	    LD    C, $01
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

BANNER:     dm "IDE Disk Test. Scott M Baker.", $0D, $0A, "$"
WARNING:    dm "WARNING: This will destroy data on the IDE disk. Press Y to confirm: $"
ABORTEDMSG: dm $0D, $0A, "Aborted!", $0D, $0A, "$"
PORTMSG:    dm "Looking for IDE on port $"
WTESTMSG:   dm "Writing Test Message", $0D, $0A, "$"
RTESTMSG:   dm "Readback Test Message", $0D, $0A, "$"
WE7MSG:     dm "Writing E7 Message", $0D, $0A, "$"
RE7MSG:     dm "Readback E7 Message", $0D, $0A, "$"
NODISKMSG:  dm "No Disk.", $0D, $0A, "$"
DONEMSG:    dm "Done.", $0D, $0A, "$"
CMPERRMSG:  dm "Compare Error.", $0D, $0A, "$"
READERRMSG: dm "Read Error.", $0D, $0A, "$"
WRITEERRMSG: dm "Write Error.", $0D, $0A, "$"
BADREGMSG:  dm "No Controller.", $0D, $0A, "$"
NOTREADYMSG: dm "Not Ready.", $0D, $0A, "$"
CYLMSG:     dm "Cylinders: $"
HEADMSG:    dm $0D, $0A, "Heads: $"
SECMSG:     dm $0D, $0A, "Sectors: $"
CRLF:       dm $0D, $0A, "$"

CYL_HI:     db 0
CYL_LO:     db 0
SEC:        db 0
HEAD:       db 0

ESEVEN:     ds $200, $E7

TESTMSG:    dm "Scott Was Here", $0D, $0A
            dm "Mary had a little lamb", $0D, $0A
            dm "Little lamb, little lamb", $0D, $0A
            dm "Mary had a little lamb", $0D, $0A
            dm "It's fleece was white as snow", $0D, $0A
            dm "Everywhere that Mary went", $0D, $0A
            dm "Mary went, Mary went", $0D, $0A
            dm "Everywhere that Mary went", $0D, $0A
            dm "The lamb was sure to go", $0D, $0A
            dm "It followed her to school one day", $0D, $0A
            dm "School one day, school one day", $0D, $0A
            dm "It followed her to school one day", $0D, $0A
            dm "Which was againts the rules", $0D, $0A
            dm "It made the children laugh and play", $0D, $0A
            dm "Laugh and play, laugh and play", $0D, $0A
            dm "It made the children laugh and play", $0D, $0A
            dm "To see the lamb at school", $0D, $0A
			dm "$"
			ds $200-($-TESTMSG), 0

READBUF:    ds $200



