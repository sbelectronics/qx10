; diskpres.asm
; Scott Baker, https://www.smbaker.com/
;
; Disk presence detector. The code from the QX-10 BIOS that checks
; to see if a hard drive controller is installed. It does this by
; writing to the CYL_LO register, and then reading back the SDH register
; to see if the SDH register still has the correct value.
;
; Then we check the disk busy and ready bits.

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

NEW:
       ; New code, the same as what I patched into the BIOS.
       ld     a,$A0
       out    ($86),a        ; Set SDH to Master, Head0
       ld     b,a            ; b = $A0

       ld     a, $01       
       out    ($81), a      ; 8-bit mode

       in     a,($86)        ; Read back the SDH register
       cp     b              ; Did it change?
	   jp     nz, BADREG

       ld     A, $EF        ; Set feature command for 8-bit mode
       out    ($87), a      ; execute

BUSWT:
       in     a,($87)        ; Read Status
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

BANNER:     dm "IDE Disk Presence Detector. Scott M Baker.", $0D, $0A, "$"
BADREGMSG:  dm "No Controller.", $0D, $0A, "$"
BUSYMSG:    dm "Busy.", $0D, $0A, "$"
NOTREADYMSG: dm "Not Ready.", $0D, $0A, "$"
DONEMSG:    dm "Done.", $0D, $0A, "$"



