; diskpres.asm
; Scott Baker, https://www.smbaker.com/
;
; Disk presence detector. The code from the QX-10 BIOS that checks
; to see if a hard drive controller is installed. It does this by
; writing to the CYL_LO register, and then reading back the SDH register
; to see if the SDH register still has the correct value.
;
; Then we check the disk busy and ready bits.

#INCLUDE "diskport.asm"

WARMBOOT    equ      0

SND_BASE    equ      $D8
SND_SEL     equ      SND_BASE
SND_WDAT    equ      SND_BASE+1
SND_RDAT    equ      SND_BASE+2

        .ORG 100h

START:  
        LD    DE, BANNER
		CALL  PRINTMSG
        LD    DE, PORTMSG
        CALL  PRINTMSG
        LD    A, SND_BASE
        CALL  PRINTHEXBYTE
        LD    DE, CRLF
        CALL  PRINTMSG

		LD    A, $02            
		OUT   (SND_SEL), A     ; Set register 2

		LD    A, $AA
		OUT   (SND_WDAT), A    ; Write $AA to register 2

		IN    A, (SND_RDAT)    ; Read back register 2
		CP    $AA
		JR    Z, DONE

        LD    DE, BADREGMSG
		CALL  PRINTMSG
        JP    WARMBOOT
DONE:
        LD    DE, DONEMSG
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

BANNER:     dm "Sound Card Detector. Scott M Baker.", $0D, $0A, "$"
PORTMSG:    dm "Looking for SND on port $"
BADREGMSG:  dm "No Sound Chip.", $0D, $0A, "$"
DONEMSG:    dm "Done.", $0D, $0A, "$"
CRLF:       dm $0D, $0A, "$"



