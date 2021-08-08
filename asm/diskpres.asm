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


