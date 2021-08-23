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
CQBANK      equ      3
CQBANKBIO   equ      $F346   ; address to patch the bank to point at MEMX
CQBANKOWN   equ      $F4B7   ; address of bank ownership byte
CQPORT      equ      $F0
PAGES       equ      $80     ; 1 Megabyte
PAGEWORDS   equ      $1000
PAGEBYTES   equ      PAGEWORDS * 2

        .ORG 100h

START:  
        LD    DE, BANNER
	CALL  PRINTMSG

        ; No need to do this; modify CQBANKOWN directly instead.
	; This means we don't have to disable ramdisk
	;LD    C, $2E
	;LD    A, CQBANK
	;CALL  $F05A          ; Request access to cqbank
	;OR    A
	;JP    NZ, REQERR

WRITETEST:
        LD    B, PAGES       ; B = number of pages to write, 128 pages at 8K = 1M
	LD    C, 0
	
WLOOP0:
        DEC   B
        PUSH  BC             ; Save outer loop counter

        LD    DE, WPAGEMSG   ; Display "Write Page: <n>"
	CALL  PRINTMSG
	LD    A,B
	CALL  PRINTHEXBYTE

        PUSH  BC             ; Save the outer loop counter
        LD    DE, BC
	LD    BC, PAGEWORDS
	LD    HL, BUF
WLOOP1:
	LD    (HL), DE       ; Prep the buffer
	INC   HL
	INC   HL
	INC   DE
	DEC   BC
	LD    A, B           ; Is Inner Loop Count (BC) Zero?
	OR    C
	JR    NZ, WLOOP1
	POP   BC

	LD    A, B           ; Set the page
	CALL  CQSET
	LD    HL, 0
	LD    DE, BUF
	LD    BC, PAGEBYTES
	CALL  CQWRITE

	OR    A              ; check copy result
	JP    NZ, COPYERR	

        POP   BC             ; restore outer loop counter
	XOR   A              ; Is Outer Loop Count (B) Zero?
	OR    B
	JR    NZ, WLOOP0

READTEST:
        LD    B, PAGES       ; B = number of pages to read, 128 pages at 8K = 1M
	LD    C, 0
RLOOP0:
        DEC   B
        PUSH  BC             ; Save outer loop counter
        LD    DE, RPAGEMSG   ; Display "Read Page: <n>"
	CALL  PRINTMSG
	LD    A,B
	CALL  PRINTHEXBYTE

        LD    A, $77         ; Put some junk in the buffer
	LD    (BUF), A
	LD    A, $88
	LD    (BUF+1), A

	LD    A, B           ; Set the page
	CALL  CQSET
	LD    HL, BUF
	LD    DE, 0
	LD    BC, PAGEBYTES
	CALL  CQREAD        ; Copy the buffer

	OR    A             ; check copy result
	JP    NZ, COPYERR

	POP   BC            ; Get the outer loop counter back
	PUSH  BC

	LD    DE, BC
	LD    BC, PAGEWORDS
	LD    HL, BUF
RLOOP1:	
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
	LD    DE, ERRMSG     ; Ruh Roh...
	CALL  PRINTMSG
	POP   DE

	CALL  PRINTHEXDE

	PUSH  DE
	LD    DE, NEMSG
	CALL  PRINTMSG
	LD    DE, HL
	CALL  PRINTHEXDE
	LD    DE, (HL)
	CALL  PRINTHEXDE
	LD    DE, CRLF
	CALL  PRINTMSG
	POP   DE
	CALL  CKMAXERR
OKAY:
	INC   DE
	INC   HL
	INC   HL
	DEC   BC
	LD    A, B            ; Is Inner Loop Count (BC) Zero?
	OR    C	
	JR    NZ, RLOOP1

        POP   BC              ; Restore outer loop counter
	XOR   A               ; Is Outer Loop Count (B) Zero?
	OR    B
	JR    NZ, RLOOP0
	
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

REQERR:
	LD    DE, REQERRMSG
	PUSH  AF
	CALL  PRINTMSG
	POP   AF
	CALL  PRINTHEXBYTE
	LD    DE, CRLF
	CALL  PRINTMSG
	JP    WARMBOOT

COPYERR:
	LD    DE, COPYERRMSG
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

	; Copy to external memory
	;    DE = source address in bank 1
	;    HL = dest address in external memory
	;    BC = count of bytes to copy
	; returns 0 in A if successful
	;
	; NOTE: Modifies BIOS and temporarily disables ramdisk
	;       Only works with BIOS 2.2 B2.26
CQWRITE:
	LD    A, $1
	LD    (SRCBANK), A
	LD    A, CQBANK
	LD    (DSTBANK), A
	LD    (DSTADDR), HL   ; HL = dest
	LD    (SRCADDR), DE   ; DE = src
	LD    (COUNT), BC     ; BC = count
	LD     A, $0A
	LD     (CQBANKBIO), A
	LD     A, (CQBANKOWN) 
	LD     (SVBANKOWN), A ; save ownership of bank
	LD     A, CQBANK
	LD     (CQBANKOWN), A ; take ownership of bank
	PUSH  HL
	PUSH  DE
	PUSH  BC
	LD    DE, OP
	LD    C, $30
	CALL  $F05A           ; copy block
	POP   BC
	POP   DE
	POP   HL
	PUSH  AF
	LD    A, $82          ; restore bank XXX hardcoded to bank3
	LD    (CQBANKBIO), A
	LD    A, (SVBANKOWN) 
	LD    (CQBANKOWN), A  ; restore ownship of bank	
	POP   AF
	RET

	; Copy from to external memory
	;    DE = source address in external memory
	;    HL = dest address in bink 1
	;    BC = count of bytes to copy
	; returns 0 in A if successful
	;
	; NOTE: Modifies BIOS and temporarily disables ramdisk
	;       Only works with BIOS 2.2 B2.26	
CQREAD:
	LD    A, $1
	LD    (DSTBANK), A
	LD    A, CQBANK
	LD    (SRCBANK), A
	LD    (DSTADDR), HL   ; HL = dest
	LD    (SRCADDR), DE   ; DE = src
	LD    (COUNT), BC     ; BC = count
	LD     A, $0A
	LD     (CQBANKBIO), A
	LD     A, (CQBANKOWN) 
	LD     (SVBANKOWN), A ; save ownership of bank
	LD     A, CQBANK
	LD     (CQBANKOWN), A ; take ownership of bank	
	PUSH  HL
	PUSH  DE
	PUSH  BC
	LD    DE, OP
	LD    C, $30
	CALL  $F05A           ; copy block
	POP   BC
	POP   DE
	POP   HL
	PUSH  AF
	LD    A, $82          ; restore bank XXX hardcoded to bank3
	LD    (CQBANKBIO), A
	LD    A, (SVBANKOWN) 
	LD    (CQBANKOWN), A  ; restore ownship of bank
	POP   AF
	RET

        ; Set Bank 0 (0000-1FFFF) to page
	;   A = Page 
CQSET:
        PUSH  AF
        OR    A, $80          ; set the enable board bit
	OUT   (CQPORT), A
	POP   AF
	RET

BANNER:     dm "Commodity Quote Graphics memory board test. Scott M Baker.", $0D, $0A, "$"
DONEMSG:    dm $0D, $0A, "Done.", $0D, $0A, "$"
ERRMSG:     dm $0D, $0A, "Error Comparing: $"
CRLF:       dm $0D, $0A, "$"
NEMSG:      dm " != $"
REQERRMSG:  dm $0D, $0A, "Error requesting bank: $"
COPYERRMSG: dm $0D, $0A, "Error copying bank: $"
WPAGEMSG    dm $0D, "Write Page: $"
RPAGEMSG    dm $0D, " Read Page: $"
MAXERRMSG   dm $0D, $0A, "Too many errors", $0D, $0A, "$"

SVBANKOWN:  db 0

ERRCOUNT:   db 0

OP:
SRCBANK: db 0
DSTBANK: db 0
SRCADDR: DW 0
DSTADDR: DW 0
COUNT:   DW 0
  
   ; Make sure buf is at the end of the program. We will put up to 8K here.
         .org $1000
BUF:     db 0







