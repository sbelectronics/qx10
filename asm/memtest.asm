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
BDOS        equ      $E200      ; Start of BDOS; we shall not write this area
STACKBYTES  equ      $100
BYTES       equ      BDOS-BUF-STACKBYTES
WORDS       equ      BYTES/2

        .ORG 100h

START:  
        LD    DE, BANNER
	CALL  PRINTMSG

        ; DE is the pass counter
	LD    DE, 0

NEXTPASS:
        ; Print the pass: line
	PUSH  DE
	LD    DE, PASSMSG
	CALL  PRINTMSG
	POP   DE
	CALL  PRINTHEXDE

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

	INC   DE
	JP    NEXTPASS
	
DONE:
        LD    DE, DONEMSG
	CALL  PRINTMSG
        JP    WARMBOOT

PRINTMSG:
        PUSH  HL
        PUSH  BC
        LD    C, $09
	CALL  $0005
	POP   BC
	POP   HL
	RET

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

BANNER:     dm "Epson Bank 1 Memory Test. Scott M Baker.", $0D, $0A, "$"
DONEMSG:    dm $0D, $0A, "Done.", $0D, $0A, "$"
ERRMSG:     dm $0D, $0A, "Error At: $"
CMPMSG:     dm " Comparing $"
CRLF:       dm $0D, $0A, "$"
NEMSG:      dm " != $"
MAXERRMSG   dm $0D, $0A, "Too many errors", $0D, $0A, "$"
PASSMSG:    dm $0D, "Pass: $"


ERRCOUNT:   db 0
PASS:       dw 0
  
BUF:        db 0







