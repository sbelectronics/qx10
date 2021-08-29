; IDE IO Port Definitions
; Scott Baker, http://www.smbaker.com/

; Base port for the QX-10's Comrex Comfiler is $80. Choose something else,
; as stock CP/M boot images will hang on the ide if they detect it at
; 0x80.

BASE_PORT   equ      0D0h

HDD_DATA    equ      BASE_PORT
HDD_FEAT    equ      BASE_PORT+1
HDD_ERROR   equ      BASE_PORT+1
HDD_SEC_CNT equ      BASE_PORT+2
HDD_SEC     equ      BASE_PORT+3
HDD_CYL_LO  equ      BASE_PORT+4
HDD_CYL_HI  equ      BASE_PORT+5
HDD_SDH     equ      BASE_PORT+6
HDD_CMD     equ      BASE_PORT+7
HDD_STATUS  equ      BASE_PORT+7

CMD_IDENT   equ      $EC
CMD_FEAT    equ      $EF

FEAT_8BIT   equ      $01
