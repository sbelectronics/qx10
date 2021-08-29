; cqgtest.asm
; Scott Baker, https://www.smbaker.com/
;
; Commodity Quote Graphics 1M Board Test
;
; The board uses MEMX to access memory, and it uses a bank register at
; 0xF0 - 0xF7. Each one of the bank registers represents an 8K chunk of
; memory. The lower 7 bits are the page to map. The MSB is set to 1 to
; enable the board for that bank, or 0 to disable it (this permits
; multiple board to be installed).
;
; I can't find any reference in the QX10 BIOS to copy memory to/from MEMX,
; so I ended up modifying the 2.26 BIOS to change the behavior of Bank3
; so that it selects MEMX.


WARMBOOT    equ      0
BDOS        equ      $E200      ; Start of BDOS.
TOP         equ      $E000      ; As high as we can test. Must be far enough below BDOS to accommodate stack.
BYTES       equ      TOP-BUF
WORDS       equ      BYTES/2

        .ORG 100h

START:  
        LD    DE, BANNER
	CALL  PRINTMSG

	LD    C, $2E
	LD    A, 2
	CALL  $F05A          ; Request access to bank 2
	OR    A
	JP    NZ, REQERR

	LD    C, $2E
	LD    A, 3
	CALL  $F05A          ; Request access to bank 3
	OR    A
	JP    NZ, REQERR	

        ; DE is the pass counter
	LD    DE, 0

NEXTPASS:
	LD    A, 2
	LD    (BANK), A
	CALL  TESTHEADER
	CALL  RUNTEST

	LD    A, 3
	LD    (BANK), A
	CALL  TESTHEADER
	CALL  RUNTEST

	INC   DE
	JP    NEXTPASS    ; Run forever

TESTHEADER:
        ; Print the bank: pass: line
	PUSH  DE
	LD    DE, BANKMSG
	CALL  PRINTMSG
	LD    DE, (BANK)
	LD    D,0
	CALL  PRINTHEXDE
	LD    DE, PASSMSG
	CALL  PRINTMSG
	POP   DE
	CALL  PRINTHEXDE
	RET

RUNTEST:
	CALL  WRITEMEM
	CALL  COPYOUT
	CALL  POISON
	CALL  COPYIN
	CALL  READMEM
	RET


        ; DE holds the value to write
	; BC is a count of words to write
WRITEMEM:
	PUSH   DE
	LD     HL, BUF
	LD     BC, WORDS
WLOOP:
	LD     (HL), DE
	INC    DE
	INC    HL
	INC    HL

        DEC   BC
	LD    A, B           ; Is Write Loop Count (BC) Zero?
	OR    C
	JR    NZ, WLOOP
        POP   DE             ; Pushed at start of WRITEMEM
	RET

POISON:
	PUSH   DE
	LD     HL, BUF
	LD     BC, WORDS
	LD     DE, $FACE
PLOOP:
	LD     (HL), DE
	INC    HL
	INC    HL

        DEC   BC
	LD    A, B           ; Is Write Loop Count (BC) Zero?
	OR    C
	JR    NZ, PLOOP
        POP   DE             ; Pushed at start of WRITEMEM
	RET
	
READMEM:
        PUSH  DE
        LD    HL, BUF
	LD    BC, WORDS
RLOOP:
        LD    A, (HL)
	CP    E
	JR    NZ, NOTOKAY
	INC   HL
	LD    A, (HL)
	DEC   HL
	CP    D
	JR    NZ, NOTOKAY
	JR    OKAY
NOTOKAY:
        PUSH  DE
	LD    DE, ERRMSG     ; Ruh Roh...  "Error at: "
	CALL  PRINTMSG
	LD    DE, HL
	CALL  PRINTHEXDE     ; Print the address
	LD    DE, CMPMSG     ; "Comparing: "
	CALL  PRINTMSG
	POP   DE

	CALL  PRINTHEXDE     ; Print the correct value

	PUSH  DE
	LD    DE, NEMSG      ; "!="
	CALL  PRINTMSG
	LD    DE, (HL)
	CALL  PRINTHEXDE     ; Print the value in the buffer
	LD    DE, CRLF
	CALL  PRINTMSG       ; CRLF
	POP   DE
	CALL  CKMAXERR
OKAY:
	INC   DE
	INC   HL
	INC   HL

	DEC   BC
	LD    A, B            ; Is Read Loop Count (BC) Zero?
	OR    C	
	JR    NZ, RLOOP
	POP   DE              ; Pushed at start of READMEM
	RET
	
DONE:
        LD    DE, DONEMSG
	CALL  PRINTMSG
        JP    WARMBOOT

        ; Copy memory from Bank 1 to the test bank
COPYOUT:
        PUSH  AF
        PUSH  BC
	PUSH  DE
	LD    A, 1
	LD    (SRCBANK), A
	LD    A, (BANK)
	LD    (DSTBANK), A
	LD    DE, BUF
	LD    (SRCADDR), DE
	LD    (DSTADDR), DE
	LD    DE, BYTES
	LD    (COUNT), DE
	LD    DE, OP
	LD    C, $30
	CALL  $F05A           ; copy block
	OR    A             ; check copy result
	JP    NZ, COPYERR
	POP   DE
	POP   BC
	POP   AF
	RET

        ; Copy memory from test test bank to bank 1
COPYIN:
        PUSH  AF
        PUSH  BC
	PUSH  DE
	LD    A, 1
	LD    (DSTBANK), A
	LD    A, (BANK)
	LD    (SRCBANK), A
	LD    DE, BUF
	LD    (SRCADDR), DE
	LD    (DSTADDR), DE
	LD    DE, BYTES
	LD    (COUNT), DE
	LD    DE, OP
	LD    C, $30
	CALL  $F05A           ; copy block
	OR    A             ; check copy result
	JP    NZ, COPYERR
	POP   DE
	POP   BC
	POP   AF
	RET

PRINTMSG:
        PUSH  HL
        PUSH  BC
        LD    C, $09
	CALL  $0005
	POP   BC
	POP   HL
	RET

COPYERR:
	LD    DE, COPYERRMSG
	PUSH  AF
	CALL  PRINTMSG
	POP   AF
	CALL  PRINTHEXBYTE
	LD    DE, CRLF
	CALL  PRINTMSG
	JP    WARMBOOT

REQERR:
	LD    DE, REQERRMSG
	PUSH  AF
	CALL  PRINTMSG
	POP   AF
	CALL  PRINTHEXBYTE
	LD    DE, CRLF
	CALL  PRINTMSG
	JP    WARMBOOT

        ; Check to see if the maximum error count is exceeded
CKMAXERR:
	LD    A, (ERRCOUNT)
	INC   A
	LD    (ERRCOUNT), A
	CP    $08
	RET   C
	LD    DE, MAXERRMSG
	CALL  PRINTMSG
	JP    WARMBOOT

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
        PUSH  HL
        PUSH  BC
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
	POP   BC
	POP   HL
	RET

BANNER:     dm "Epson Banks 2 and 3 Memory Test. Scott M Baker.", $0D, $0A, "$"
DONEMSG:    dm $0D, $0A, "Done.", $0D, $0A, "$"
ERRMSG:     dm $0D, $0A, "Error At: $"
CMPMSG:     dm " Comparing $"
CRLF:       dm $0D, $0A, "$"
NEMSG:      dm " != $"
MAXERRMSG   dm $0D, $0A, "Too many errors", $0D, $0A, "$"
BANKMSG:    dm $0D, "Bank: $"
PASSMSG:    dm " Pass: $"
REQERRMSG:  dm $0D, $0A, "Error requesting bank: $"
COPYERRMSG: dm $0D, $0A, "Error copying bank: $"


ERRCOUNT:   db 0
PASS:       dw 0
BANK:	    db 0

OP:
SRCBANK: db 0
DSTBANK: db 0
SRCADDR: DW 0
DSTADDR: DW 0
COUNT:   DW 0
  
BUF:        db 0







