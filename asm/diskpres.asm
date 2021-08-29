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

NEW:
       ; New code, the same as what I patched into the BIOS.
       ld     a,$A0
       out    (HDD_SDH),a    ; Set SDH to Master, Head0
       ld     b,a            ; b = $A0

       ld     a, $01 
       out    (HDD_FEAT), a  ; 8-bit mode

       in     a,(HDD_SDH)    ; Read back the SDH register
       cp     b              ; Did it change?
	   jp     nz, BADREG

       ld     A, $EF         ; Set feature command for 8-bit mode
       out    (HDD_CMD), a   ; execute

BUSWT:
       in     a,(HDD_STATUS) ; Read Status
       bit    7, A
       jr     nz,BUSWT       ; Busy?
       bit    6, A
	   jp     z, NOTREADY

	   JP     DONE

OLD:
        ; Old code, based on what was originally in the BIOS.
        XOR   A
		OUT   (HDD_SEC_CNT), A
		OUT   (HDD_SEC), A
		OUT   (HDD_CYL_LO), A
		OUT   (HDD_CYL_HI), A

        LD    A, $A0
        OUT   (HDD_SDH), A             ; Set SDH to Master, Head0
		LD    B,A                      ; b = A0
		CPL                            ; Invert a, a is now 5F
		OUT   (HDD_CYL_LO), a          ; Cylinder Number Low, set to 5F
		IN    A, (HDD_SDH)             ; Read back the SDH register
		CP    B                        ; Did it change?
		JP    NZ, BADREG               ; Yes - Trouble
		IN    A, (HDD_STATUS)          ; Read Status
		BIT   7, A                     ; Is busy Set?
		JP    NZ, BUSY
		BIT   6, A
		JP    Z, NOTREADY

DONE:
        LD    DE, DONEMSG
		CALL  PRINTMSG
        JP    WARMBOOT

BADREG:
        LD    DE, BADREGMSG
		CALL  PRINTMSG
        JP    WARMBOOT

BUSY:
        LD    DE, BUSYMSG
		CALL  PRINTMSG
        JP    WARMBOOT		

NOTREADY:
        LD    DE, NOTREADYMSG
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

BANNER:     dm "IDE Disk Presence Detector. Scott M Baker.", $0D, $0A, "$"
PORTMSG:    dm "Looking for IDE on port $"
BADREGMSG:  dm "No Controller.", $0D, $0A, "$"
BUSYMSG:    dm "Busy.", $0D, $0A, "$"
NOTREADYMSG: dm "Not Ready.", $0D, $0A, "$"
DONEMSG:    dm "Done.", $0D, $0A, "$"
CRLF:       dm $0D, $0A, "$"



