; bank01.asm
; Scott Baker, https://www.smbaker.com/
;
; Copies QX-10 Bank 0 to Bank 1, addresses 0x200 to 0xD000.
; Useful for inspecting what is inside the BIOS bank.

WARMBOOT    equ      0

        .ORG 100h

START:  
        LD    DE, BANNER
		CALL  PRINTMSG
		
		; DE = address of descriptor
		; C = function 0x30
		LD    DE, SRCBANK
		LD    C, $30
		CALL  $F05A

DONE:
        LD    DE, DONEMSG
		CALL  PRINTMSG
        JP    WARMBOOT

PRINTMSG:
        LD    C, $09
		CALL  $0005
		RET

BANNER:     dm "Copy Bank 0 to Bank 1. Scott M Baker.", $0D, $0A, "$"
DONEMSG:    dm "Done.", $0D, $0A, "$"

; Descriptor for the bank copy operation. Copy 50K from address 0x200
; from Bank0 to Bank1. 
SRCBANK: db 0
DSTBANK: db 1
SRCADDR: DW $0200
DSTADDR: DW $0200
COUNT:   DW $C800





