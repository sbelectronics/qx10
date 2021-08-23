8000: c3 0f 80     jp   $800F
8003: c3 42 80     jp   $8042
8006: c3 4d 80     jp   $804D
8009: c3 75 80     jp   $8075          ; Read
800c: c3 c5 80     jp   $80C5          ; Write
800f: 06 14        ld   b,$14
8011: c5           push bc
8012: 3e a0        ld   a,$A0
8014: d3 86        out  ($86),a
8016: 47           ld   b,a
8017: 2f           cpl
8018: d3 84        out  ($84),a
801a: db 86        in   a,($86)
801c: b8           cp   b
801d: 28 09        jr   z,$8028
801f: cd 3e 81     call $813E
8022: c1           pop  bc
8023: 10 ec        djnz $8011
8025: 3e 02        ld   a,$02
8027: c9           ret
8028: c1           pop  bc
8029: 06 28        ld   b,$28
802b: c5           push bc
802c: db 87        in   a,($87)
802e: cb 77        bit  6,a
8030: 20 09        jr   nz,$803B
8032: cd 3e 81     call $813E
8035: c1           pop  bc
8036: 10 f3        djnz $802B
8038: 3e 01        ld   a,$01
803a: c9           ret
803b: c1           pop  bc
803c: 3e 30        ld   a,$30
803e: d3 86        out  ($86),a
8040: af           xor  a
8041: c9           ret
8042: 3e 00        ld   a,$00
8044: 32 03 70     ld   ($7003),a
8047: 21 00 00     ld   hl,$0000
804a: c3 8b 80     jp   $808B
804d: 7c           ld   a,h
804e: e6 3f        and  $3F
8050: 3d           dec  a
8051: 32 03 70     ld   ($7003),a
8054: 7c           ld   a,h
8055: e6 c0        and  $C0
8057: 07           rlca
8058: 07           rlca
8059: 67           ld   h,a
805a: 29           add  hl,hl
805b: 29           add  hl,hl
805c: 78           ld   a,b
805d: 06 00        ld   b,$00
805f: 09           add  hl,bc
8060: 47           ld   b,a
8061: c5           push bc
8062: cd 8b 80     call $808B
8065: c1           pop  bc
8066: c0           ret  nz
8067: 3a 03 70     ld   a,($7003)
806a: 3c           inc  a
806b: 32 03 70     ld   ($7003),a
806e: 2a 01 70     ld   hl,($7001)
8071: 10 ee        djnz $8061
8073: af           xor  a              
8074: c9           ret
8075: ed 53 04 70  ld   ($7004),de      ; SUBROUTINE - read
8079: 21 00 00     ld   hl,$0000
807c: 22 01 70     ld   ($7001),hl
807f: af           xor  a
8080: 32 00 70     ld   ($7000),a
8083: 3e 00        ld   a,$00
8085: 32 03 70     ld   ($7003),a
8088: c3 c5 80     jp   $80C5
808b: 22 01 70     ld   ($7001),hl
808e: ed 53 04 70  ld   ($7004),de
8092: af           xor  a
8093: 32 00 70     ld   ($7000),a
8096: cd e5 80     call $80E5          ; Call check_ready_and_seek
8099: 3e 20        ld   a,$20
809b: d3 87        out  ($87),a        ; Read sector
809d: 2a 04 70     ld   hl,($7004)     ; HL to address buffer at 7004
80a0: 01 80 00     ld   bc,$0080       ; Read 256 bytes at a time from add 80
80a3: db 87        in   a,($87)        ; Check status
80a5: b7           or   a
80a6: fa a3 80     jp   m,$80A3        ; Not ready?
80a9: ed b2        inir                ; Read 256 bytes
80ab: ed b2        inir                ; Read 256 bytes
80ad: eb           ex   de,hl
80ae: 47           ld   b,a
80af: 3e 30        ld   a,$30
80b1: d3 86        out  ($86),a        ; Select drive 3?
80b3: 78           ld   a,b
80b4: e6 01        and  $01
80b6: c8           ret  z
80b7: db 81        in   a,($81)        ; Read Extended error register
80b9: e6 10        and  $10            ; ID not found ?
80bb: 28 04        jr   z,$80C1
80bd: 3e 02        ld   a,$02
80bf: 18 02        jr   $80C3
80c1: 3e 01        ld   a,$01
80c3: b7           or   a
80c4: c9           ret
80c5: cd e5 80     call $80E5          ; SUBROUTINE write; call check_ready_and_seek
80c8: 3e 30        ld   a,$30          ; Write Sector
80ca: d3 87        out  ($87),a
80cc: 2a 04 70     ld   hl,($7004)     ; HL to address buffer at 7004
80cf: 01 80 00     ld   bc,$0080       ; Write 256 bytes at a time to add 80
80d2: ed b3        otir                ; Write 256 Bytes
80d4: ed b3        otir                ; Write 256 Bytes
80d6: db 87        in   a,($87)        ; Check status
80d8: b7           or   a
80d9: fa d6 80     jp   m,$80D6        ; Not ready?
80dc: 47           ld   b,a
80dd: 3e 30        ld   a,$30          ; Select drive 3?
80df: d3 86        out  ($86),a
80e1: 78           ld   a,b
80e2: e6 01        and  $01
80e4: c9           ret
80e5: 3e a0        ld   a,$A0          ; SUBROUTINE - check_ready_and_seek
80e7: d3 86        out  ($86),a        ; Set SDH to Master, Head0
80e9: 47           ld   b,a            ; b = A0
80ea: 2f           cpl                 ; Invert a, a is now 5F
80eb: d3 84        out  ($84),a        ; Cylinder Number Low, set to 5F
80ed: db 86        in   a,($86)        ; Read back the SDH register
80ef: b8           cp   b              ; Did it change?
80f0: c2 e5 80     jp   nz,$80E5       ; Yes - retry
80f3: db 87        in   a,($87)        ; Read Status
80f5: e6 c0        and  $C0            ; Mask Busy and ready bits
80f7: fe 40        cp   $40            ; Is drive ready and not busy?
80f9: c2 e5 80     jp   nz,$80E5       ; No - Retry
80fc: 2a 01 70     ld   hl,($7001)
80ff: 3a 00 70     ld   a,($7000)
8102: 1f           rra
8103: d2 0a 81     jp   nc,$810A
8106: 11 64 02     ld   de,$0264
8109: 19           add  hl,de
810a: 7d           ld   a,l
810b: e6 03        and  $03
810d: 47           ld   b,a
810e: 3a 00 70     ld   a,($7000)
8111: 0f           rrca
8112: 87           add  a,a
8113: 87           add  a,a
8114: 87           add  a,a
8115: f6 a0        or   $A0
8117: b0           or   b
8118: d3 86        out  ($86),a        ; Secsize/Drive/Head select
811a: 3a 03 70     ld   a,($7003)
811d: d3 83        out  ($83),a        ; Sector number ; FIXME - sector number
811f: 7d           ld   a,l
8120: 1f           rra
8121: 1f           rra
8122: e6 3f        and  $3F
8124: 47           ld   b,a
8125: 7c           ld   a,h
8126: 0f           rrca
8127: 0f           rrca
8128: 4f           ld   c,a
8129: e6 c0        and  $C0
812b: b0           or   b
812c: d3 84        out  ($84),a        ; Cylinder Number, Low
812e: 79           ld   a,c
812f: e6 03        and  $03
8131: d3 85        out  ($85),a        ; Cylinder Number, High 2 bits
8133: 3e 70        ld   a,$70
8135: d3 87        out  ($87),a        ; HDD Exec CMD - SEEK  ; FIXME - disable seek
8137: db 87        in   a,($87)
8139: a7           and  a
813a: fa 37 81     jp   m,$8137
813d: c9           ret
813e: 06 05        ld   b,$05
8140: 11 ff ff     ld   de,$FFFF
8143: 21 de 39     ld   hl,$39DE
8146: 19           add  hl,de
8147: 38 fd        jr   c,$8146
8149: 10 f8        djnz $8143
814b: c9           ret
814c: 00           nop
814d: 3a 02 00     ld   a,($0002)
8150: 32 80 31     ld   ($3180),a
8153: fe f0        cp   $F0
8155: 28 04        jr   z,$815B
8157: fe ef        cp   $EF
8159: 20 31        jr   nz,$818C
815b: 1e 00        ld   e,$00
815d: 0e 0c        ld   c,$0C
815f: cd 05 00     call $0005
8162: 3e 54        ld   a,$54
8164: bb           cp   e
8165: 28 1a        jr   z,$8181
8167: 3a 80 31     ld   a,($3180)
816a: 67           ld   h,a
816b: 2e 33        ld   l,$33
816d: 06 0d        ld   b,$0D
816f: 3e c3        ld   a,$C3
8171: be           cp   (hl)
8172: 20 0d        jr   nz,$8181
8174: 23           inc  hl
8175: 5e           ld   e,(hl)
8176: 23           inc  hl
8177: 56           ld   d,(hl)
8178: 23           inc  hl
8179: 1a           ld   a,(de)
817a: fe c9        cp   $C9
817c: 20 03        jr   nz,$8181
817e: 10 ef        djnz $816F
8180: c9           ret
8181: 11 fe 31     ld   de,$31FE
8184: 0e 09        ld   c,$09
8186: cd 05 00     call $0005
8189: c3 00 00     jp   $0000
818c: 11 40 32     ld   de,$3240
818f: 18 f3        jr   $8184
8191: cd 81 31     call $3181
8194: a7           and  a
8195: 2a 06 00     ld   hl,($0006)
8198: 11 06 e2     ld   de,$E206
819b: ed 52        sbc  hl,de
819d: c2 c0 31     jp   nz,$31C0
81a0: 21 00 00     ld   hl,$0000
81a3: e5           push hl
81a4: d1           pop  de
81a5: 0e 0a        ld   c,$0A
81a7: cd 5a f0     call $F05A
81aa: 3e 42        ld   a,$42
81ac: ba           cp   d
81ad: 20 d2        jr   nz,$8181
81af: 3e 32        ld   a,$32
81b1: bb           cp   e
81b2: 20 cd        jr   nz,$8181
81b4: 16 32        ld   d,$32
81b6: 1e 36        ld   e,$36
81b8: b7           or   a
81b9: ed 52        sbc  hl,de
81bb: 38 c4        jr   c,$8181
81bd: 0e 1d        ld   c,$1D
81bf: 3e 01        ld   a,$01
81c1: c3 5a f0     jp   $F05A
81c4: 0e 1d        ld   c,$1D
81c6: 97           sub  a
81c7: c3 5a f0     jp   $F05A
81ca: 0a           ld   a,(bc)
81cb: 0a           ld   a,(bc)
81cc: 0a           ld   a,(bc)
81cd: 0d           dec  c
81ce: 54           ld   d,h
81cf: 48           ld   c,b
81d0: 49           ld   c,c
81d1: 53           ld   d,e
81d2: 20 50        jr   nz,$8224
81d4: 52           ld   d,d
81d5: 4f           ld   c,a
81d6: 47           ld   b,a
81d7: 52           ld   d,d
81d8: 41           ld   b,c
81d9: 4d           ld   c,l
81da: 20 52        jr   nz,$822E
81dc: 45           ld   b,l
81dd: 51           ld   d,c
81de: 55           ld   d,l
81df: 49           ld   c,c
81e0: 52           ld   d,d
81e1: 45           ld   b,l
81e2: 53           ld   d,e
81e3: 20 45        jr   nz,$822A
81e5: 50           ld   d,b
81e6: 53           ld   d,e
81e7: 4f           ld   c,a
81e8: 4e           ld   c,(hl)
81e9: 20 43        jr   nz,$822E
81eb: 50           ld   d,b
81ec: 2f           cpl
81ed: 4d           ld   c,l
81ee: 20 52        jr   nz,$8242
81f0: 45           ld   b,l
81f1: 4c           ld   c,h
81f2: 45           ld   b,l
81f3: 41           ld   b,c
81f4: 53           ld   d,e
81f5: 45           ld   b,l
81f6: 20 42        jr   nz,$823A
81f8: 32 2e 32     ld   ($322E),a
81fb: 36 20        ld   (hl),$20
81fd: 4f           ld   c,a
81fe: 52           ld   d,d
81ff: 20 47        jr   nz,$8248
8201: 52           ld   d,d
8202: 45           ld   b,l
8203: 41           ld   b,c
8204: 54           ld   d,h
8205: 45           ld   b,l
8206: 52           ld   d,d
8207: 0d           dec  c
8208: 0a           ld   a,(bc)
8209: 0a           ld   a,(bc)
820a: 0a           ld   a,(bc)
820b: 24           inc  h
820c: 0a           ld   a,(bc)
820d: 0a           ld   a,(bc)
820e: 0a           ld   a,(bc)
820f: 0d           dec  c
8210: 54           ld   d,h
8211: 48           ld   c,b
8212: 49           ld   c,c
8213: 53           ld   d,e
8214: 20 4d        jr   nz,$8263
8216: 55           ld   d,l
8217: 53           ld   d,e
8218: 54           ld   d,h
8219: 20 52        jr   nz,$826D
821b: 55           ld   d,l
821c: 4e           ld   c,(hl)
821d: 20 41        jr   nz,$8260
821f: 53           ld   d,e
8220: 20 41        jr   nz,$8263
8222: 20 53        jr   nz,$8277
8224: 54           ld   d,h
8225: 41           ld   b,c
8226: 4e           ld   c,(hl)
8227: 44           ld   b,h
8228: 2d           dec  l
8229: 41           ld   b,c
822a: 4c           ld   c,h
822b: 4f           ld   c,a
822c: 4e           ld   c,(hl)
822d: 45           ld   b,l
822e: 20 50        jr   nz,$8280
8230: 52           ld   d,d
8231: 4f           ld   c,a
8232: 47           ld   b,a
8233: 52           ld   d,d
8234: 41           ld   b,c
8235: 4d           ld   c,l
8236: 0d           dec  c
8237: 0a           ld   a,(bc)
8238: 0a           ld   a,(bc)
8239: 0a           ld   a,(bc)
823a: 24           inc  h
823b: dd           db   $dd
823c: e8           ret  pe
823d: fd e9        jp   (iy)
823f: e9           jp   (hl)
8240: df           rst  $18
8241: e8           ret  pe
8242: ff           rst  $38
8243: dd 21 6f 32  ld   ix,$326F
8247: 18 0d        jr   $8256
8249: dd 21 6f 32  ld   ix,$326F
824d: 7b           ld   a,e
824e: 95           sub  l
824f: 3d           dec  a
8250: 47           ld   b,a
8251: 7a           ld   a,d
8252: 94           sub  h
8253: 3d           dec  a
8254: 5f           ld   e,a
8255: 50           ld   d,b
8256: cd cd 26     call $26CD
8259: dd 7e 00     ld   a,(ix+$00)
825c: cd eb 33     call $33EB
825f: 42           ld   b,d
8260: dd 7e 01     ld   a,(ix+$01)
8263: cd 04 34     call $3404
8266: dd 7e 02     ld   a,(ix+$02)
8269: cd eb 33     call $33EB
826c: cd 79 33     call $3379
826f: 3e 0a        ld   a,$0A
8271: cd eb 33     call $33EB
8274: 43           ld   b,e
8275: dd 4e 03     ld   c,(ix+$03)
8278: cd ff 32     call $32FF
827b: e5           push hl
827c: 24           inc  h
827d: cd cd 26     call $26CD
8280: e1           pop  hl
8281: 43           ld   b,e
8282: dd 4e 04     ld   c,(ix+$04)
8285: cd ff 32     call $32FF
8288: dd 7e 05     ld   a,(ix+$05)
828b: cd eb 33     call $33EB
828e: 42           ld   b,d
828f: dd 7e 06     ld   a,(ix+$06)
8292: cd 04 34     call $3404
8295: dd 7e 07     ld   a,(ix+$07)
8298: cd eb 33     call $33EB
829b: 3a fe 32     ld   a,($32FE)
829e: a7           and  a
829f: c8           ret  z
82a0: cb 47        bit  0,a
82a2: f5           push af
82a3: c4 ed 32     call nz,$32ED
82a6: f1           pop  af
82a7: cb 4f        bit  1,a
82a9: c8           ret  z
82aa: e5           push hl
82ab: 24           inc  h
82ac: 2c           inc  l
82ad: 43           ld   b,e
82ae: cd cd 26     call $26CD
82b1: cd 27 33     call $3327
82b4: 24           inc  h
82b5: 10 f7        djnz $82AE
82b7: e1           pop  hl
82b8: c9           ret
82b9: 7a           ld   a,d
82ba: 85           add  a,l
82bb: e5           push hl
82bc: 6f           ld   l,a
82bd: 24           inc  h
82be: 43           ld   b,e
82bf: cd cd 26     call $26CD
82c2: cd 2f 33     call $332F
82c5: 24           inc  h
82c6: 10 f7        djnz $82BF
82c8: e1           pop  hl
82c9: c9           ret
82ca: 00           nop
82cb: dd e5        push ix
82cd: fd e5        push iy
82cf: e5           push hl
82d0: d5           push de
82d1: c5           push bc
82d2: 50           ld   d,b
82d3: 59           ld   e,c
82d4: 0e 3a        ld   c,$3A
82d6: 06 02        ld   b,$02
82d8: cd 5a f0     call $F05A
82db: c1           pop  bc
82dc: d1           pop  de
82dd: e1           pop  hl
82de: fd e1        pop  iy
82e0: dd e1        pop  ix
82e2: c9           ret
82e3: d5           push de
82e4: 1e 29        ld   e,$29
82e6: cd 1e 34     call $341E
82e9: d1           pop  de
82ea: c9           ret
82eb: d5           push de
82ec: 1e 28        ld   e,$28
82ee: cd 1e 34     call $341E
82f1: d1           pop  de
82f2: c9           ret
82f3: d5           push de
82f4: 1e 6a        ld   e,$6A
82f6: cd 1e 34     call $341E
82f9: d1           pop  de
82fa: c9           ret
82fb: d5           push de
82fc: 1e 6b        ld   e,$6B
82fe: cd 1e 34     call $341E
8301: d1           pop  de
8302: c9           ret
8303: d5           push de
8304: 1e 6c        ld   e,$6C
8306: cd 1e 34     call $341E
8309: d1           pop  de
830a: c9           ret
830b: d5           push de
830c: 1e 6d        ld   e,$6D
830e: cd 1e 34     call $341E
8311: d1           pop  de
8312: c9           ret
8313: d5           push de
8314: 1e 5e        ld   e,$5E
8316: cd 1e 34     call $341E
8319: d1           pop  de
831a: c9           ret
831b: d5           push de
831c: 1e 71        ld   e,$71
831e: cd 1e 34     call $341E
8321: d1           pop  de
8322: c9           ret
8323: d5           push de
8324: 1e 5f        ld   e,$5F
8326: cd 1e 34     call $341E
8329: d1           pop  de
832a: c9           ret
832b: 18 ee        jr   $831B
832d: cd 9e 33     call $339E
8330: 1b           dec  de
8331: 58           ld   e,b
8332: 45           ld   b,l
8333: 00           nop
8334: c9           ret
8335: cd 9e 33     call $339E
8338: 1b           dec  de
8339: 58           ld   e,b
833a: 46           ld   b,(hl)
833b: 00           nop
833c: c9           ret
833d: f5           push af
833e: 3e 1a        ld   a,$1A
8340: cd eb 33     call $33EB
8343: f1           pop  af
8344: c9           ret
8345: f5           push af
8346: 3e 08        ld   a,$08
8348: cd eb 33     call $33EB
834b: f1           pop  af
834c: c9           ret
834d: f5           push af
834e: 3e 20        ld   a,$20
8350: cd eb 33     call $33EB
8353: f1           pop  af
8354: c9           ret
8355: f5           push af
8356: 3e 0d        ld   a,$0D
8358: cd eb 33     call $33EB
835b: 3e 0a        ld   a,$0A
835d: cd eb 33     call $33EB
8360: f1           pop  af
8361: c9           ret
8362: f5           push af
8363: 3e 07        ld   a,$07
8365: cd eb 33     call $33EB
8368: f1           pop  af
8369: c9           ret
836a: e3           ex   (sp),hl
836b: f5           push af
836c: c5           push bc
836d: d5           push de
836e: dd e5        push ix
8370: fd e5        push iy
8372: 7e           ld   a,(hl)
8373: 23           inc  hl
8374: a7           and  a
8375: 28 07        jr   z,$837E
8377: e5           push hl
8378: cd 00 34     call $3400
837b: e1           pop  hl
837c: 18 f4        jr   $8372
837e: fd e1        pop  iy
8380: dd e1        pop  ix
8382: d1           pop  de
8383: c1           pop  bc
8384: f1           pop  af
8385: e3           ex   (sp),hl
8386: c9           ret
8387: cd c1 33     call $33C1
838a: 28 fb        jr   z,$8387
838c: c9           ret
838d: dd e5        push ix
838f: fd e5        push iy
8391: e5           push hl
8392: d5           push de
8393: c5           push bc
8394: 1e ff        ld   e,$FF
8396: 0e 06        ld   c,$06
8398: cd 05 00     call $0005
839b: a7           and  a
839c: c1           pop  bc
839d: d1           pop  de
839e: e1           pop  hl
839f: fd e1        pop  iy
83a1: dd e1        pop  ix
83a3: c9           ret
83a4: dd e5        push ix
83a6: fd e5        push iy
83a8: e5           push hl
83a9: d5           push de
83aa: c5           push bc
83ab: cd 06 f0     call $F006
83ae: a7           and  a
83af: c1           pop  bc
83b0: d1           pop  de
83b1: e1           pop  hl
83b2: fd e1        pop  iy
83b4: dd e1        pop  ix
83b6: c9           ret
83b7: dd e5        push ix
83b9: fd e5        push iy
83bb: e5           push hl
83bc: d5           push de
83bd: c5           push bc
83be: f5           push af
83bf: 4f           ld   c,a
83c0: cd 0c f0     call $F00C
83c3: f1           pop  af
83c4: c1           pop  bc
83c5: d1           pop  de
83c6: e1           pop  hl
83c7: fd e1        pop  iy
83c9: dd e1        pop  ix
83cb: c9           ret
83cc: 4f           ld   c,a
83cd: c3 0c f0     jp   $F00C
83d0: dd e5        push ix
83d2: fd e5        push iy
83d4: e5           push hl
83d5: d5           push de
83d6: c5           push bc
83d7: f5           push af
83d8: 5f           ld   e,a
83d9: 50           ld   d,b
83da: 0e 3a        ld   c,$3A
83dc: 06 01        ld   b,$01
83de: cd 5a f0     call $F05A
83e1: f1           pop  af
83e2: c1           pop  bc
83e3: d1           pop  de
83e4: e1           pop  hl
83e5: fd e1        pop  iy
83e7: dd e1        pop  ix
83e9: c9           ret
83ea: dd e5        push ix
83ec: fd e5        push iy
83ee: e5           push hl
83ef: c5           push bc
83f0: f5           push af
83f1: d5           push de
83f2: 0e 1b        ld   c,$1B
83f4: cd 0c f0     call $F00C
83f7: c1           pop  bc
83f8: c5           push bc
83f9: cd 0c f0     call $F00C
83fc: d1           pop  de
83fd: f1           pop  af
83fe: c1           pop  bc
83ff: e1           pop  hl
8400: fd e1        pop  iy
8402: dd e1        pop  ix
8404: c9           ret
8405: c3 00 00     jp   $0000
8408: c3 3f 34     jp   $343F
840b: cd 82 39     call $3982
840e: e1           pop  hl
840f: 22 54 34     ld   ($3454),hl
8412: cd 88 39     call $3988
8415: 2a 54 34     ld   hl,($3454)
8418: e5           push hl
8419: cd 87 34     call $3487
841c: cd 2b 2b     call $2B2B
841f: c9           ret
8420: 00           nop
8421: 00           nop
8422: 0e 06        ld   c,$06
8424: 1e ff        ld   e,$FF
8426: c3 05 00     jp   $0005
8429: cd 56 34     call $3456
842c: b7           or   a
842d: 20 fa        jr   nz,$8429
842f: 1e 1b        ld   e,$1B
8431: 0e 06        ld   c,$06
8433: cd 05 00     call $0005
8436: 1e 3f        ld   e,$3F
8438: 0e 06        ld   c,$06
843a: c3 05 00     jp   $0005
843d: cd 5d 34     call $345D
8440: cd 56 34     call $3456
8443: cd 56 34     call $3456
8446: d6 20        sub  $20
8448: f5           push af
8449: cd 56 34     call $3456
844c: f1           pop  af
844d: 4f           ld   c,a
844e: 06 00        ld   b,$00
8450: e1           pop  hl
8451: c5           push bc
8452: e9           jp   (hl)
8453: cd 5d 34     call $345D
8456: cd 56 34     call $3456
8459: d6 20        sub  $20
845b: f5           push af
845c: cd 56 34     call $3456
845f: c3 7d 34     jp   $347D
8462: 0e 06        ld   c,$06
8464: 1e ff        ld   e,$FF
8466: cd 05 00     call $0005
8469: b7           or   a
846a: 20 f6        jr   nz,$8462
846c: c9           ret
846d: 00           nop
846e: 00           nop
846f: 00           nop
8470: 00           nop
8471: c1           pop  bc
8472: e1           pop  hl
8473: 22 a1 34     ld   ($34A1),hl
8476: e1           pop  hl
8477: 22 a3 34     ld   ($34A3),hl
847a: c5           push bc
847b: cd ca 34     call $34CA
847e: cd aa 35     call $35AA
8481: c1           pop  bc
8482: 79           ld   a,c
8483: ca af 34     jp   z,$34AF
8486: 2a a3 34     ld   hl,($34A3)
8489: 77           ld   (hl),a
848a: 2a a1 34     ld   hl,($34A1)
848d: 4e           ld   c,(hl)
848e: 23           inc  hl
848f: be           cp   (hl)
8490: c8           ret  z
8491: 0d           dec  c
8492: 20 fa        jr   nz,$848E
8494: 18 e5        jr   $847B
8496: 2a de 34     ld   hl,($34DE)
8499: 23           inc  hl
849a: 22 de 34     ld   ($34DE),hl
849d: 0e 06        ld   c,$06
849f: 1e ff        ld   e,$FF
84a1: cd 05 00     call $0005
84a4: e1           pop  hl
84a5: 4f           ld   c,a
84a6: 06 00        ld   b,$00
84a8: c5           push bc
84a9: e9           jp   (hl)
84aa: 00           nop
84ab: 00           nop
84ac: ed 5b de 34  ld   de,($34DE)
84b0: 19           add  hl,de
84b1: eb           ex   de,hl
84b2: cb 13        rl   e
84b4: cb 12        rl   d
84b6: 10 fa        djnz $84B2
84b8: 06 ff        ld   b,$FF
84ba: ed 5f        ld   a,r
84bc: 4f           ld   c,a
84bd: ab           xor  e
84be: 5f           ld   e,a
84bf: ed 5f        ld   a,r
84c1: b9           cp   c
84c2: 28 f6        jr   z,$84BA
84c4: aa           xor  d
84c5: 57           ld   d,a
84c6: 10 f2        djnz $84BA
84c8: ed 53 de 34  ld   ($34DE),de
84cc: e1           pop  hl
84cd: d5           push de
84ce: e9           jp   (hl)
84cf: 00           nop
84d0: 00           nop
84d1: e1           pop  hl
84d2: 22 03 35     ld   ($3503),hl
84d5: cd 14 35     call $3514
84d8: cd 57 2c     call $2C57
84db: 2a 03 35     ld   hl,($3503)
84de: e9           jp   (hl)
84df: 00           nop
84e0: d1           pop  de
84e1: e1           pop  hl
84e2: c1           pop  bc
84e3: d5           push de
84e4: 79           ld   a,c
84e5: 96           sub  (hl)
84e6: cb 3f        srl  a
84e8: 47           ld   b,a
84e9: 79           ld   a,c
84ea: 90           sub  b
84eb: 32 13 35     ld   ($3513),a
84ee: e5           push hl
84ef: 21 81 38     ld   hl,$3881
84f2: e5           push hl
84f3: cd f4 3c     call $3CF4
84f6: 2a 13 35     ld   hl,($3513)
84f9: 26 00        ld   h,$00
84fb: e5           push hl
84fc: 21 ff ff     ld   hl,$FFFF
84ff: e5           push hl
8500: cd 6b 3d     call $3D6B
8503: c9           ret
8504: c3 00 00     jp   $0000
8507: c3 6f 35     jp   $356F
850a: c3 41 35     jp   $3541
850d: cd 82 39     call $3982
8510: e1           pop  hl
8511: 7d           ld   a,l
8512: 32 a8 35     ld   ($35A8),a
8515: cd 88 39     call $3988
8518: 2a a4 35     ld   hl,($35A4)
851b: e5           push hl
851c: cd ff 39     call $39FF
851f: 2a a4 35     ld   hl,($35A4)
8522: e5           push hl
8523: cd 0d 3a     call $3A0D
8526: 3a a8 35     ld   a,($35A8)
8529: 26 00        ld   h,$00
852b: 6f           ld   l,a
852c: e5           push hl
852d: cd 53 3a     call $3A53
8530: cd fa 39     call $39FA
8533: 21 51 00     ld   hl,$0051
8536: e5           push hl
8537: cd 1a 3d     call $3D1A
853a: c9           ret
853b: cd 82 39     call $3982
853e: e1           pop  hl
853f: 22 a4 35     ld   ($35A4),hl
8542: e1           pop  hl
8543: 22 a6 35     ld   ($35A6),hl
8546: cd 88 39     call $3988
8549: 2a a4 35     ld   hl,($35A4)
854c: e5           push hl
854d: cd 85 35     call $3585
8550: 00           nop
8551: 21 51 00     ld   hl,$0051
8554: e5           push hl
8555: cd 1a 3d     call $3D1A
8558: 21 3f 35     ld   hl,$353F
855b: 5e           ld   e,(hl)
855c: 23           inc  hl
855d: 56           ld   d,(hl)
855e: d5           push de
855f: cd 07 3d     call $3D07
8562: 2a a6 35     ld   hl,($35A6)
8565: e5           push hl
8566: cd fa 3c     call $3CFA
8569: cd 6d 3b     call $3B6D
856c: cd 0d 3d     call $3D0D
856f: c9           ret
8570: 00           nop
8571: 00           nop
8572: 00           nop
8573: 00           nop
8574: 00           nop
8575: 00           nop
8576: e1           pop  hl
8577: c1           pop  bc
8578: 79           ld   a,c
8579: fe 61        cp   $61
857b: fa b9 35     jp   m,$35B9
857e: fe 7b        cp   $7B
8580: f2 b9 35     jp   p,$35B9
8583: e6 df        and  $DF
8585: 4f           ld   c,a
8586: c5           push bc
8587: e9           jp   (hl)
8588: 0e 06        ld   c,$06
858a: c3 05 00     jp   $0005
858d: d5           push de
858e: 1e 1b        ld   e,$1B
8590: cd bc 35     call $35BC
8593: d1           pop  de
8594: c3 bc 35     jp   $35BC
8597: 1e 1a        ld   e,$1A
8599: c3 bc 35     jp   $35BC
859c: 1e 59        ld   e,$59
859e: c3 c1 35     jp   $35C1
85a1: 1e 54        ld   e,$54
85a3: c3 c1 35     jp   $35C1
85a6: 1e 58        ld   e,$58
85a8: cd c1 35     call $35C1
85ab: 1e 45        ld   e,$45
85ad: c3 bc 35     jp   $35BC
85b0: 1e 58        ld   e,$58
85b2: cd c1 35     call $35C1
85b5: 1e 46        ld   e,$46
85b7: c3 bc 35     jp   $35BC
85ba: 1e 28        ld   e,$28
85bc: c3 c1 35     jp   $35C1
85bf: 1e 29        ld   e,$29
85c1: c3 c1 35     jp   $35C1
85c4: 1e 6a        ld   e,$6A
85c6: c3 c1 35     jp   $35C1
85c9: 1e 6b        ld   e,$6B
85cb: c3 c1 35     jp   $35C1
85ce: e1           pop  hl
85cf: c1           pop  bc
85d0: d1           pop  de
85d1: 97           sub  a
85d2: b9           cp   c
85d3: 28 07        jr   z,$85DC
85d5: 41           ld   b,c
85d6: cb 3a        srl  d
85d8: cb 1b        rr   e
85da: 10 fa        djnz $85D6
85dc: d5           push de
85dd: e9           jp   (hl)
85de: e1           pop  hl
85df: c1           pop  bc
85e0: d1           pop  de
85e1: 97           sub  a
85e2: b9           cp   c
85e3: 28 f7        jr   z,$85DC
85e5: 41           ld   b,c
85e6: cb 23        sla  e
85e8: cb 12        rl   d
85ea: 10 fa        djnz $85E6
85ec: 18 ee        jr   $85DC
85ee: c3 00 00     jp   $0000
85f1: c3 28 36     jp   $3628
85f4: cd 82 39     call $3982
85f7: e1           pop  hl
85f8: 22 d3 36     ld   ($36D3),hl
85fb: e1           pop  hl
85fc: 22 d5 36     ld   ($36D5),hl
85ff: e1           pop  hl
8600: 22 d7 36     ld   ($36D7),hl
8603: e1           pop  hl
8604: 22 d9 36     ld   ($36D9),hl
8607: cd 88 39     call $3988
860a: 21 01 00     ld   hl,$0001
860d: e5           push hl
860e: 2a d5 36     ld   hl,($36D5)
8611: eb           ex   de,hl
8612: 2a d7 36     ld   hl,($36D7)
8615: 7b           ld   a,e
8616: 95           sub  l
8617: 6f           ld   l,a
8618: 7a           ld   a,d
8619: 9c           sbc  a,h
861a: 67           ld   h,a
861b: e5           push hl
861c: d1           pop  de
861d: e1           pop  hl
861e: 2b           dec  hl
861f: e5           push hl
8620: d5           push de
8621: 22 db 36     ld   ($36DB),hl
8624: d1           pop  de
8625: e1           pop  hl
8626: 23           inc  hl
8627: e5           push hl
8628: d5           push de
8629: cd 51 39     call $3951
862c: 22 dd 36     ld   ($36DD),hl
862f: 2a db 36     ld   hl,($36DB)
8632: 23           inc  hl
8633: 22 db 36     ld   ($36DB),hl
8636: 2a dd 36     ld   hl,($36DD)
8639: 2b           dec  hl
863a: 22 dd 36     ld   ($36DD),hl
863d: 7c           ld   a,h
863e: b5           or   l
863f: ca 88 36     jp   z,$3688
8642: 21 20 00     ld   hl,$0020
8645: e5           push hl
8646: 21 ff ff     ld   hl,$FFFF
8649: e5           push hl
864a: 21 ff ff     ld   hl,$FFFF
864d: e5           push hl
864e: cd aa 3e     call $3EAA
8651: c3 63 36     jp   $3663
8654: 21 01 00     ld   hl,$0001
8657: e5           push hl
8658: 2a d7 36     ld   hl,($36D7)
865b: e5           push hl
865c: d1           pop  de
865d: e1           pop  hl
865e: 2b           dec  hl
865f: e5           push hl
8660: d5           push de
8661: 22 db 36     ld   ($36DB),hl
8664: d1           pop  de
8665: e1           pop  hl
8666: 23           inc  hl
8667: e5           push hl
8668: d5           push de
8669: cd 51 39     call $3951
866c: 22 df 36     ld   ($36DF),hl
866f: 2a db 36     ld   hl,($36DB)
8672: 23           inc  hl
8673: 22 db 36     ld   ($36DB),hl
8676: 2a df 36     ld   hl,($36DF)
8679: 2b           dec  hl
867a: 22 df 36     ld   ($36DF),hl
867d: 7c           ld   a,h
867e: b5           or   l
867f: ca d2 36     jp   z,$36D2
8682: 2a d9 36     ld   hl,($36D9)
8685: e5           push hl
8686: 2a db 36     ld   hl,($36DB)
8689: 2b           dec  hl
868a: d1           pop  de
868b: 19           add  hl,de
868c: 16 00        ld   d,$00
868e: 5e           ld   e,(hl)
868f: d5           push de
8690: 21 ff ff     ld   hl,$FFFF
8693: e5           push hl
8694: 21 ff ff     ld   hl,$FFFF
8697: e5           push hl
8698: cd aa 3e     call $3EAA
869b: c3 a3 36     jp   $36A3
869e: c9           ret
869f: 00           nop
86a0: 00           nop
86a1: 00           nop
86a2: 00           nop
86a3: 00           nop
86a4: 00           nop
86a5: 00           nop
86a6: 00           nop
86a7: 00           nop
86a8: 00           nop
86a9: 00           nop
86aa: 00           nop
86ab: 00           nop
86ac: 00           nop
86ad: e1           pop  hl
86ae: c1           pop  bc
86af: d1           pop  de
86b0: e3           ex   (sp),hl
86b1: c3 ed 36     jp   $36ED
86b4: e1           pop  hl
86b5: c1           pop  bc
86b6: d1           pop  de
86b7: e3           ex   (sp),hl
86b8: eb           ex   de,hl
86b9: 78           ld   a,b
86ba: b1           or   c
86bb: ca f4 36     jp   z,$36F4
86be: ed b0        ldir
86c0: eb           ex   de,hl
86c1: c9           ret
86c2: e1           pop  hl
86c3: c1           pop  bc
86c4: d1           pop  de
86c5: e3           ex   (sp),hl
86c6: eb           ex   de,hl
86c7: c3 02 37     jp   $3702
86ca: e1           pop  hl
86cb: c1           pop  bc
86cc: d1           pop  de
86cd: e3           ex   (sp),hl
86ce: 78           ld   a,b
86cf: b1           or   c
86d0: ca 0e 37     jp   z,$370E
86d3: 09           add  hl,bc
86d4: 2b           dec  hl
86d5: eb           ex   de,hl
86d6: 09           add  hl,bc
86d7: 2b           dec  hl
86d8: ed b8        lddr
86da: eb           ex   de,hl
86db: c9           ret
86dc: e1           pop  hl
86dd: c1           pop  bc
86de: d1           pop  de
86df: e3           ex   (sp),hl
86e0: 7b           ld   a,e
86e1: b2           or   d
86e2: c8           ret  z
86e3: 71           ld   (hl),c
86e4: 23           inc  hl
86e5: 1b           dec  de
86e6: 7b           ld   a,e
86e7: b2           or   d
86e8: c2 17 37     jp   nz,$3717
86eb: c9           ret
86ec: 2a 03 01     ld   hl,($0103)
86ef: 7d           ld   a,l
86f0: b4           or   h
86f1: ca 3b 37     jp   z,$373B
86f4: 06 10        ld   b,$10
86f6: 5e           ld   e,(hl)
86f7: 23           inc  hl
86f8: 56           ld   d,(hl)
86f9: 23           inc  hl
86fa: 1b           dec  de
86fb: 7b           ld   a,e
86fc: b2           or   d
86fd: 13           inc  de
86fe: ca 37 37     jp   z,$3737
8701: af           xor  a
8702: 12           ld   (de),a
8703: 05           dec  b
8704: c2 2a 37     jp   nz,$372A
8707: 21 4d 39     ld   hl,$394D
870a: 36 01        ld   (hl),$01
870c: 23           inc  hl
870d: 36 00        ld   (hl),$00
870f: 23           inc  hl
8710: 36 00        ld   (hl),$00
8712: 23           inc  hl
8713: 36 00        ld   (hl),$00
8715: 21 4b 39     ld   hl,$394B
8718: 36 01        ld   (hl),$01
871a: 23           inc  hl
871b: 36 00        ld   (hl),$00
871d: 21 12 3f     ld   hl,$3F12
8720: 23           inc  hl
8721: 23           inc  hl
8722: 11 00 00     ld   de,$0000
8725: 19           add  hl,de
8726: 22 12 3f     ld   ($3F12),hl
8729: 21 80 ff     ld   hl,$FF80
872c: 39           add  hl,sp
872d: 22 0c 3f     ld   ($3F0C),hl
8730: 22 06 3f     ld   ($3F06),hl
8733: 3e 02        ld   a,$02
8735: 32 48 39     ld   ($3948),a
8738: 21 30 30     ld   hl,$3030
873b: 22 49 39     ld   ($3949),hl
873e: 21 be 37     ld   hl,$37BE
8741: 01 86 01     ld   bc,$0186
8744: 36 00        ld   (hl),$00
8746: 23           inc  hl
8747: 0b           dec  bc
8748: 78           ld   a,b
8749: b1           or   c
874a: c2 78 37     jp   nz,$3778
874d: 21 01 00     ld   hl,$0001
8750: 22 f7 37     ld   ($37F7),hl
8753: 22 f2 37     ld   ($37F2),hl
8756: 22 ba 38     ld   ($38BA),hl
8759: 22 b5 38     ld   ($38B5),hl
875c: 3e 04        ld   a,$04
875e: 32 f6 37     ld   ($37F6),a
8761: 32 b9 38     ld   ($38B9),a
8764: 3e 01        ld   a,$01
8766: 32 fe 37     ld   ($37FE),a
8769: 32 c1 38     ld   ($38C1),a
876c: 3e 20        ld   a,$20
876e: 32 80 38     ld   ($3880),a
8771: 21 80 38     ld   hl,$3880
8774: 22 fb 37     ld   ($37FB),hl
8777: 21 43 39     ld   hl,$3943
877a: 22 be 38     ld   ($38BE),hl
877d: 21 4b 2c     ld   hl,$2C4B
8780: 22 44 39     ld   ($3944),hl
8783: 21 ed 2a     ld   hl,$2AED
8786: 22 46 39     ld   ($3946),hl
8789: c9           ret
878a: 00           nop
878b: 00           nop
878c: 00           nop
878d: 00           nop
878e: 00           nop
878f: 00           nop
8790: 00           nop
8791: 00           nop
8792: 00           nop
8793: 00           nop
8794: 00           nop
8795: 00           nop
8796: 00           nop
8797: 00           nop
8798: 00           nop
8799: 00           nop
879a: 00           nop
879b: 00           nop
879c: 00           nop
879d: 00           nop
879e: 00           nop
879f: 00           nop
87a0: 00           nop
87a1: 00           nop
87a2: 00           nop
87a3: 00           nop
87a4: 00           nop
87a5: 00           nop
87a6: 00           nop
87a7: 00           nop
87a8: 00           nop
87a9: 00           nop
87aa: 00           nop
87ab: 00           nop
87ac: 00           nop
87ad: 00           nop
87ae: 00           nop
87af: 00           nop
87b0: 00           nop
87b1: 00           nop
87b2: 00           nop
87b3: 00           nop
87b4: 00           nop
87b5: 00           nop
87b6: 00           nop
87b7: 00           nop
87b8: 00           nop
87b9: 00           nop
87ba: 00           nop
87bb: 00           nop
87bc: 00           nop
87bd: 00           nop
87be: 00           nop
87bf: 00           nop
87c0: 00           nop
87c1: 00           nop
87c2: 00           nop
87c3: 00           nop
87c4: 00           nop
87c5: 00           nop
87c6: 00           nop
87c7: 00           nop
87c8: 00           nop
87c9: 00           nop
87ca: 00           nop
87cb: 00           nop
87cc: 00           nop
87cd: 00           nop
87ce: 00           nop
87cf: 00           nop
87d0: 00           nop
87d1: 00           nop
87d2: 00           nop
87d3: 00           nop
87d4: 00           nop
87d5: 00           nop
87d6: 00           nop
87d7: 00           nop
87d8: 00           nop
87d9: 00           nop
87da: 00           nop
87db: 00           nop
87dc: 00           nop
87dd: 00           nop
87de: 00           nop
87df: 00           nop
87e0: 00           nop
87e1: 00           nop
87e2: 00           nop
87e3: 00           nop
87e4: 00           nop
87e5: 00           nop
87e6: 00           nop
87e7: 00           nop
87e8: 00           nop
87e9: 00           nop
87ea: 00           nop
87eb: 00           nop
87ec: 00           nop
87ed: 00           nop
87ee: 00           nop
87ef: 00           nop
87f0: 00           nop
87f1: 00           nop
87f2: 00           nop
87f3: 00           nop
87f4: 00           nop
87f5: 00           nop
87f6: 00           nop
87f7: 00           nop
87f8: 00           nop
87f9: 00           nop
87fa: 00           nop
87fb: 00           nop
87fc: 00           nop
87fd: 00           nop
87fe: 00           nop
87ff: 00           nop
8800: 00           nop
8801: 00           nop
8802: 00           nop
8803: 00           nop
8804: 00           nop
8805: 00           nop
8806: 00           nop
8807: 00           nop
8808: 00           nop
8809: 00           nop
880a: 00           nop
880b: 00           nop
880c: 00           nop
880d: 00           nop
880e: 00           nop
880f: 00           nop
8810: 00           nop
8811: 00           nop
8812: 00           nop
8813: 00           nop
8814: 00           nop
8815: 00           nop
8816: 00           nop
8817: 00           nop
8818: 00           nop
8819: 00           nop
881a: 00           nop
881b: 00           nop
881c: 00           nop
881d: 00           nop
881e: 00           nop
881f: 00           nop
8820: 00           nop
8821: 00           nop
8822: 00           nop
8823: 00           nop
8824: 00           nop
8825: 00           nop
8826: 00           nop
8827: 00           nop
8828: 00           nop
8829: 00           nop
882a: 00           nop
882b: 00           nop
882c: 00           nop
882d: 00           nop
882e: 00           nop
882f: 00           nop
8830: 00           nop
8831: 00           nop
8832: 00           nop
8833: 00           nop
8834: 00           nop
8835: 00           nop
8836: 00           nop
8837: 00           nop
8838: 00           nop
8839: 00           nop
883a: 00           nop
883b: 00           nop
883c: 00           nop
883d: 00           nop
883e: 00           nop
883f: 00           nop
8840: 00           nop
8841: 00           nop
8842: 00           nop
8843: 00           nop
8844: 00           nop
8845: 00           nop
8846: 00           nop
8847: 00           nop
8848: 00           nop
8849: 00           nop
884a: 00           nop
884b: 00           nop
884c: 00           nop
884d: 00           nop
884e: 00           nop
884f: 00           nop
8850: 00           nop
8851: 00           nop
8852: 00           nop
8853: 00           nop
8854: 00           nop
8855: 00           nop
8856: 00           nop
8857: 00           nop
8858: 00           nop
8859: 00           nop
885a: 00           nop
885b: 00           nop
885c: 00           nop
885d: 00           nop
885e: 00           nop
885f: 00           nop
8860: 00           nop
8861: 00           nop
8862: 00           nop
8863: 00           nop
8864: 00           nop
8865: 00           nop
8866: 00           nop
8867: 00           nop
8868: 00           nop
8869: 00           nop
886a: 00           nop
886b: 00           nop
886c: 00           nop
886d: 00           nop
886e: 00           nop
886f: 00           nop
8870: 00           nop
8871: 00           nop
8872: 00           nop
8873: 00           nop
8874: 00           nop
8875: 00           nop
8876: 00           nop
8877: 00           nop
8878: 00           nop
8879: 00           nop
887a: 00           nop
887b: 00           nop
887c: 00           nop
887d: 00           nop
887e: 00           nop
887f: 00           nop
8880: 00           nop
8881: 00           nop
8882: 00           nop
8883: 00           nop
8884: 00           nop
8885: 00           nop
8886: 00           nop
8887: 00           nop
8888: 00           nop
8889: 00           nop
888a: 00           nop
888b: 00           nop
888c: 00           nop
888d: 00           nop
888e: 00           nop
888f: 00           nop
8890: 00           nop
8891: 00           nop
8892: 00           nop
8893: 00           nop
8894: 00           nop
8895: 00           nop
8896: 00           nop
8897: 00           nop
8898: 00           nop
8899: 00           nop
889a: 00           nop
889b: 00           nop
889c: 00           nop
889d: 00           nop
889e: 00           nop
889f: 00           nop
88a0: 00           nop
88a1: 00           nop
88a2: 00           nop
88a3: 00           nop
88a4: 00           nop
88a5: 00           nop
88a6: 00           nop
88a7: 00           nop
88a8: 00           nop
88a9: 00           nop
88aa: 00           nop
88ab: 00           nop
88ac: 00           nop
88ad: 00           nop
88ae: 00           nop
88af: 00           nop
88b0: 00           nop
88b1: 00           nop
88b2: 00           nop
88b3: 00           nop
88b4: 00           nop
88b5: 00           nop
88b6: 00           nop
88b7: 00           nop
88b8: 00           nop
88b9: 00           nop
88ba: 00           nop
88bb: 00           nop
88bc: 00           nop
88bd: 00           nop
88be: 00           nop
88bf: 00           nop
88c0: 00           nop
88c1: 00           nop
88c2: 00           nop
88c3: 00           nop
88c4: 00           nop
88c5: 00           nop
88c6: 00           nop
88c7: 00           nop
88c8: 00           nop
88c9: 00           nop
88ca: 00           nop
88cb: 00           nop
88cc: 00           nop
88cd: 00           nop
88ce: 00           nop
88cf: 00           nop
88d0: 00           nop
88d1: 00           nop
88d2: 00           nop
88d3: 00           nop
88d4: 00           nop
88d5: 00           nop
88d6: 00           nop
88d7: 00           nop
88d8: 00           nop
88d9: 00           nop
88da: 00           nop
88db: 00           nop
88dc: 00           nop
88dd: 00           nop
88de: 00           nop
88df: 00           nop
88e0: 00           nop
88e1: 00           nop
88e2: 00           nop
88e3: 00           nop
88e4: 00           nop
88e5: 00           nop
88e6: 00           nop
88e7: 00           nop
88e8: 00           nop
88e9: 00           nop
88ea: 00           nop
88eb: 00           nop
88ec: 00           nop
88ed: 00           nop
88ee: 00           nop
88ef: 00           nop
88f0: 00           nop
88f1: 00           nop
88f2: 00           nop
88f3: 00           nop
88f4: 00           nop
88f5: 00           nop
88f6: 00           nop
88f7: 00           nop
88f8: 00           nop
88f9: 00           nop
88fa: 00           nop
88fb: 00           nop
88fc: 00           nop
88fd: 00           nop
88fe: 00           nop
88ff: 00           nop
8900: 00           nop
8901: 00           nop
8902: 00           nop
8903: 00           nop
8904: 00           nop
8905: 00           nop
8906: 00           nop
8907: 00           nop
8908: 00           nop
8909: 00           nop
890a: 00           nop
890b: 00           nop
890c: 00           nop
890d: 00           nop
890e: 00           nop
890f: 00           nop
8910: 00           nop
8911: 00           nop
8912: 00           nop
8913: 00           nop
8914: 00           nop
8915: 00           nop
8916: 00           nop
8917: 00           nop
8918: 00           nop
8919: 00           nop
891a: 00           nop
891b: 00           nop
891c: 00           nop
891d: e1           pop  hl
891e: 22 7d 39     ld   ($397D),hl
8921: d1           pop  de
8922: e1           pop  hl
8923: e5           push hl
8924: d5           push de
8925: e5           push hl
8926: d5           push de
8927: cd a4 3c     call $3CA4
892a: f1           pop  af
892b: da 72 39     jp   c,$3972
892e: d1           pop  de
892f: e1           pop  hl
8930: 7b           ld   a,e
8931: 95           sub  l
8932: 6f           ld   l,a
8933: 7a           ld   a,d
8934: 9c           sbc  a,h
8935: 67           ld   h,a
8936: 23           inc  hl
8937: 23           inc  hl
8938: e5           push hl
8939: 2a 7d 39     ld   hl,($397D)
893c: e3           ex   (sp),hl
893d: c9           ret
893e: e1           pop  hl
893f: d1           pop  de
8940: 21 01 00     ld   hl,$0001
8943: e5           push hl
8944: 2a 7d 39     ld   hl,($397D)
8947: e3           ex   (sp),hl
8948: c9           ret
8949: 00           nop
894a: 00           nop
894b: c3 00 00     jp   $0000
894e: e1           pop  hl
894f: e3           ex   (sp),hl
8950: 22 8d 39     ld   ($398D),hl
8953: c9           ret
8954: 2a 8d 39     ld   hl,($398D)
8957: e3           ex   (sp),hl
8958: e9           jp   (hl)
8959: 00           nop
895a: 00           nop
895b: d1           pop  de
895c: e1           pop  hl
895d: 22 f8 39     ld   ($39F8),hl
8960: eb           ex   de,hl
8961: 5e           ld   e,(hl)
8962: 23           inc  hl
8963: 56           ld   d,(hl)
8964: 23           inc  hl
8965: eb           ex   de,hl
8966: 22 f6 39     ld   ($39F6),hl
8969: eb           ex   de,hl
896a: 5e           ld   e,(hl)
896b: 23           inc  hl
896c: 56           ld   d,(hl)
896d: 23           inc  hl
896e: 22 f4 39     ld   ($39F4),hl
8971: eb           ex   de,hl
8972: 22 f2 39     ld   ($39F2),hl
8975: 2a f8 39     ld   hl,($39F8)
8978: e5           push hl
8979: 2a f6 39     ld   hl,($39F6)
897c: e5           push hl
897d: cd d9 3c     call $3CD9
8980: f1           pop  af
8981: da e3 39     jp   c,$39E3
8984: 2a f8 39     ld   hl,($39F8)
8987: e5           push hl
8988: 2a f2 39     ld   hl,($39F2)
898b: eb           ex   de,hl
898c: 2a f6 39     ld   hl,($39F6)
898f: 19           add  hl,de
8990: e5           push hl
8991: cd a4 3c     call $3CA4
8994: f1           pop  af
8995: da e3 39     jp   c,$39E3
8998: 2a f8 39     ld   hl,($39F8)
899b: eb           ex   de,hl
899c: 2a f6 39     ld   hl,($39F6)
899f: 7b           ld   a,e
89a0: 95           sub  l
89a1: 5f           ld   e,a
89a2: 7a           ld   a,d
89a3: 9c           sbc  a,h
89a4: 57           ld   d,a
89a5: 2a f4 39     ld   hl,($39F4)
89a8: 19           add  hl,de
89a9: 19           add  hl,de
89aa: 5e           ld   e,(hl)
89ab: 23           inc  hl
89ac: 56           ld   d,(hl)
89ad: eb           ex   de,hl
89ae: e9           jp   (hl)
89af: 2a f2 39     ld   hl,($39F2)
89b2: 23           inc  hl
89b3: 29           add  hl,hl
89b4: eb           ex   de,hl
89b5: 2a f4 39     ld   hl,($39F4)
89b8: 19           add  hl,de
89b9: 5e           ld   e,(hl)
89ba: 23           inc  hl
89bb: 56           ld   d,(hl)
89bc: eb           ex   de,hl
89bd: e9           jp   (hl)
89be: 00           nop
89bf: 00           nop
89c0: 00           nop
89c1: 00           nop
89c2: 00           nop
89c3: 00           nop
89c4: 00           nop
89c5: 00           nop
89c6: 21 66 3a     ld   hl,$3A66
89c9: e3           ex   (sp),hl
89ca: e9           jp   (hl)
89cb: 21 67 3a     ld   hl,$3A67
89ce: 22 66 3b     ld   ($3B66),hl
89d1: af           xor  a
89d2: 32 66 3a     ld   ($3A66),a
89d5: 32 65 3d     ld   ($3D65),a
89d8: c9           ret
89d9: e1           pop  hl
89da: 22 6a 3b     ld   ($3B6A),hl
89dd: d1           pop  de
89de: 1a           ld   a,(de)
89df: b7           or   a
89e0: ca 43 3a     jp   z,$3A43
89e3: 32 6c 3b     ld   ($3B6C),a
89e6: 4f           ld   c,a
89e7: 3a 66 3a     ld   a,($3A66)
89ea: 81           add  a,c
89eb: da 47 3a     jp   c,$3A47
89ee: 06 00        ld   b,$00
89f0: 13           inc  de
89f1: 2a 66 3b     ld   hl,($3B66)
89f4: e5           push hl
89f5: d5           push de
89f6: c5           push bc
89f7: cd e8 36     call $36E8
89fa: 3a 66 3a     ld   a,($3A66)
89fd: 47           ld   b,a
89fe: 3a 6c 3b     ld   a,($3B6C)
8a01: 80           add  a,b
8a02: 32 66 3a     ld   ($3A66),a
8a05: 5f           ld   e,a
8a06: 16 00        ld   d,$00
8a08: 21 67 3a     ld   hl,$3A67
8a0b: 19           add  hl,de
8a0c: 22 66 3b     ld   ($3B66),hl
8a0f: 2a 6a 3b     ld   hl,($3B6A)
8a12: e9           jp   (hl)
8a13: 3e ff        ld   a,$FF
8a15: 91           sub  c
8a16: 4f           ld   c,a
8a17: 3e 01        ld   a,$01
8a19: 32 65 3d     ld   ($3D65),a
8a1c: c3 22 3a     jp   $3A22
8a1f: d1           pop  de
8a20: c1           pop  bc
8a21: 79           ld   a,c
8a22: 32 69 3b     ld   ($3B69),a
8a25: 3e 01        ld   a,$01
8a27: 32 68 3b     ld   ($3B68),a
8a2a: 21 68 3b     ld   hl,$3B68
8a2d: e5           push hl
8a2e: d5           push de
8a2f: c3 0d 3a     jp   $3A0D
8a32: 00           nop
8a33: 00           nop
8a34: 00           nop
8a35: 00           nop
8a36: 00           nop
8a37: 00           nop
8a38: 00           nop
8a39: 00           nop
8a3a: 00           nop
8a3b: 00           nop
8a3c: 00           nop
8a3d: 00           nop
8a3e: 00           nop
8a3f: 00           nop
8a40: 00           nop
8a41: 00           nop
8a42: 00           nop
8a43: 00           nop
8a44: 00           nop
8a45: 00           nop
8a46: 00           nop
8a47: 00           nop
8a48: 00           nop
8a49: 00           nop
8a4a: 00           nop
8a4b: 00           nop
8a4c: 00           nop
8a4d: 00           nop
8a4e: 00           nop
8a4f: 00           nop
8a50: 00           nop
8a51: 00           nop
8a52: 00           nop
8a53: 00           nop
8a54: 00           nop
8a55: 00           nop
8a56: 00           nop
8a57: 00           nop
8a58: 00           nop
8a59: 00           nop
8a5a: 00           nop
8a5b: 00           nop
8a5c: 00           nop
8a5d: 00           nop
8a5e: 00           nop
8a5f: 00           nop
8a60: 00           nop
8a61: 00           nop
8a62: 00           nop
8a63: 00           nop
8a64: 00           nop
8a65: 00           nop
8a66: 00           nop
8a67: 00           nop
8a68: 00           nop
8a69: 00           nop
8a6a: 00           nop
8a6b: 00           nop
8a6c: 00           nop
8a6d: 00           nop
8a6e: 00           nop
8a6f: 00           nop
8a70: 00           nop
8a71: 00           nop
8a72: 00           nop
8a73: 00           nop
8a74: 00           nop
8a75: 00           nop
8a76: 00           nop
8a77: 00           nop
8a78: 00           nop
8a79: 00           nop
8a7a: 00           nop
8a7b: 00           nop
8a7c: 00           nop
8a7d: 00           nop
8a7e: 00           nop
8a7f: 00           nop
8a80: 00           nop
8a81: 00           nop
8a82: 00           nop
8a83: 00           nop
8a84: 00           nop
8a85: 00           nop
8a86: 00           nop
8a87: 00           nop
8a88: 00           nop
8a89: 00           nop
8a8a: 00           nop
8a8b: 00           nop
8a8c: 00           nop
8a8d: 00           nop
8a8e: 00           nop
8a8f: 00           nop
8a90: 00           nop
8a91: 00           nop
8a92: 00           nop
8a93: 00           nop
8a94: 00           nop
8a95: 00           nop
8a96: 00           nop
8a97: 00           nop
8a98: 00           nop
8a99: 00           nop
8a9a: 00           nop
8a9b: 00           nop
8a9c: 00           nop
8a9d: 00           nop
8a9e: 00           nop
8a9f: 00           nop
8aa0: 00           nop
8aa1: 00           nop
8aa2: 00           nop
8aa3: 00           nop
8aa4: 00           nop
8aa5: 00           nop
8aa6: 00           nop
8aa7: 00           nop
8aa8: 00           nop
8aa9: 00           nop
8aaa: 00           nop
8aab: 00           nop
8aac: 00           nop
8aad: 00           nop
8aae: 00           nop
8aaf: 00           nop
8ab0: 00           nop
8ab1: 00           nop
8ab2: 00           nop
8ab3: 00           nop
8ab4: 00           nop
8ab5: 00           nop
8ab6: 00           nop
8ab7: 00           nop
8ab8: 00           nop
8ab9: 00           nop
8aba: 00           nop
8abb: 00           nop
8abc: 00           nop
8abd: 00           nop
8abe: 00           nop
8abf: 00           nop
8ac0: 00           nop
8ac1: 00           nop
8ac2: 00           nop
8ac3: 00           nop
8ac4: 00           nop
8ac5: 00           nop
8ac6: 00           nop
8ac7: 00           nop
8ac8: 00           nop
8ac9: 00           nop
8aca: 00           nop
8acb: 00           nop
8acc: 00           nop
8acd: 00           nop
8ace: 00           nop
8acf: 00           nop
8ad0: 00           nop
8ad1: 00           nop
8ad2: 00           nop
8ad3: 00           nop
8ad4: 00           nop
8ad5: 00           nop
8ad6: 00           nop
8ad7: 00           nop
8ad8: 00           nop
8ad9: 00           nop
8ada: 00           nop
8adb: 00           nop
8adc: 00           nop
8add: 00           nop
8ade: 00           nop
8adf: 00           nop
8ae0: 00           nop
8ae1: 00           nop
8ae2: 00           nop
8ae3: 00           nop
8ae4: 00           nop
8ae5: 00           nop
8ae6: 00           nop
8ae7: 00           nop
8ae8: 00           nop
8ae9: 00           nop
8aea: 00           nop
8aeb: 00           nop
8aec: 00           nop
8aed: 00           nop
8aee: 00           nop
8aef: 00           nop
8af0: 00           nop
8af1: 00           nop
8af2: 00           nop
8af3: 00           nop
8af4: 00           nop
8af5: 00           nop
8af6: 00           nop
8af7: 00           nop
8af8: 00           nop
8af9: 00           nop
8afa: 00           nop
8afb: 00           nop
8afc: 00           nop
8afd: 00           nop
8afe: 00           nop
8aff: 00           nop
8b00: 00           nop
8b01: 00           nop
8b02: 00           nop
8b03: 00           nop
8b04: 00           nop
8b05: 00           nop
8b06: 00           nop
8b07: 00           nop
8b08: 00           nop
8b09: 00           nop
8b0a: 00           nop
8b0b: 00           nop
8b0c: 00           nop
8b0d: 00           nop
8b0e: 00           nop
8b0f: 00           nop
8b10: 00           nop
8b11: 00           nop
8b12: 00           nop
8b13: 00           nop
8b14: 00           nop
8b15: 00           nop
8b16: 00           nop
8b17: 00           nop
8b18: 00           nop
8b19: 00           nop
8b1a: 00           nop
8b1b: 00           nop
8b1c: 00           nop
8b1d: 00           nop
8b1e: 00           nop
8b1f: 00           nop
8b20: 00           nop
8b21: 00           nop
8b22: 00           nop
8b23: 00           nop
8b24: 00           nop
8b25: 00           nop
8b26: 00           nop
8b27: 00           nop
8b28: 00           nop
8b29: 00           nop
8b2a: 00           nop
8b2b: 00           nop
8b2c: 00           nop
8b2d: 00           nop
8b2e: 00           nop
8b2f: 00           nop
8b30: 00           nop
8b31: 00           nop
8b32: 00           nop
8b33: 00           nop
8b34: 00           nop
8b35: 00           nop
8b36: 00           nop
8b37: 00           nop
8b38: 00           nop
8b39: e1           pop  hl
8b3a: d1           pop  de
8b3b: c1           pop  bc
8b3c: 41           ld   b,c
8b3d: d1           pop  de
8b3e: e5           push hl
8b3f: cd 00 3c     call $3C00
8b42: 7a           ld   a,d
8b43: e6 80        and  $80
8b45: f2 8f 3b     jp   p,$3B8F
8b48: d5           push de
8b49: 1e 2d        ld   e,$2D
8b4b: cd e8 3b     call $3BE8
8b4e: d1           pop  de
8b4f: 7b           ld   a,e
8b50: 2f           cpl
8b51: 5f           ld   e,a
8b52: 7a           ld   a,d
8b53: 2f           cpl
8b54: 57           ld   d,a
8b55: 13           inc  de
8b56: 7a           ld   a,d
8b57: b7           or   a
8b58: fa c7 3b     jp   m,$3BC7
8b5b: 06 00        ld   b,$00
8b5d: c5           push bc
8b5e: 01 10 27     ld   bc,$2710
8b61: cd fa 3d     call $3DFA
8b64: c1           pop  bc
8b65: cd db 3b     call $3BDB
8b68: eb           ex   de,hl
8b69: c5           push bc
8b6a: 01 e8 03     ld   bc,$03E8
8b6d: cd fa 3d     call $3DFA
8b70: c1           pop  bc
8b71: cd db 3b     call $3BDB
8b74: eb           ex   de,hl
8b75: c5           push bc
8b76: 01 64 00     ld   bc,$0064
8b79: cd fa 3d     call $3DFA
8b7c: c1           pop  bc
8b7d: cd db 3b     call $3BDB
8b80: eb           ex   de,hl
8b81: c5           push bc
8b82: 01 0a 00     ld   bc,$000A
8b85: cd fa 3d     call $3DFA
8b88: c1           pop  bc
8b89: cd db 3b     call $3BDB
8b8c: eb           ex   de,hl
8b8d: 06 01        ld   b,$01
8b8f: cd db 3b     call $3BDB
8b92: c9           ret
8b93: 21 d6 3b     ld   hl,$3BD6
8b96: e5           push hl
8b97: 21 05 00     ld   hl,$0005
8b9a: e5           push hl
8b9b: cd fa 3c     call $3CFA
8b9e: cd 25 36     call $3625
8ba1: c9           ret
8ba2: 33           inc  sp
8ba3: 32 37 36     ld   ($3637),a
8ba6: 38 e5        jr   c,$8B8D
8ba8: 3e 30        ld   a,$30
8baa: b3           or   e
8bab: 5f           ld   e,a
8bac: fe 30        cp   $30
8bae: ca f9 3b     jp   z,$3BF9
8bb1: 06 01        ld   b,$01
8bb3: e1           pop  hl
8bb4: e5           push hl
8bb5: c5           push bc
8bb6: d5           push de
8bb7: 21 ff ff     ld   hl,$FFFF
8bba: e5           push hl
8bbb: e5           push hl
8bbc: cd aa 3e     call $3EAA
8bbf: c3 f6 3b     jp   $3BF6
8bc2: c1           pop  bc
8bc3: e1           pop  hl
8bc4: c9           ret
8bc5: 78           ld   a,b
8bc6: b7           or   a
8bc7: e1           pop  hl
8bc8: c8           ret  z
8bc9: c3 e8 3b     jp   $3BE8
8bcc: 78           ld   a,b
8bcd: fe ff        cp   $FF
8bcf: c8           ret  z
8bd0: d5           push de
8bd1: 7a           ld   a,d
8bd2: b7           or   a
8bd3: f2 23 3c     jp   p,$3C23
8bd6: fe 80        cp   $80
8bd8: c2 1b 3c     jp   nz,$3C1B
8bdb: 7b           ld   a,e
8bdc: b7           or   a
8bdd: c2 1b 3c     jp   nz,$3C1B
8be0: 78           ld   a,b
8be1: d6 06        sub  $06
8be3: 47           ld   b,a
8be4: c3 31 3c     jp   $3C31
8be7: 05           dec  b
8be8: 7a           ld   a,d
8be9: 2f           cpl
8bea: 57           ld   d,a
8beb: 7b           ld   a,e
8bec: 2f           cpl
8bed: 5f           ld   e,a
8bee: 13           inc  de
8bef: c5           push bc
8bf0: 01 0a 00     ld   bc,$000A
8bf3: cd fa 3d     call $3DFA
8bf6: c1           pop  bc
8bf7: 05           dec  b
8bf8: 7a           ld   a,d
8bf9: b3           or   e
8bfa: c2 23 3c     jp   nz,$3C23
8bfd: 78           ld   a,b
8bfe: b7           or   a
8bff: fa 4d 3c     jp   m,$3C4D
8c02: ca 4d 3c     jp   z,$3C4D
8c05: 1e 20        ld   e,$20
8c07: c5           push bc
8c08: d5           push de
8c09: 21 ff ff     ld   hl,$FFFF
8c0c: e5           push hl
8c0d: e5           push hl
8c0e: cd aa 3e     call $3EAA
8c11: c3 48 3c     jp   $3C48
8c14: c1           pop  bc
8c15: 05           dec  b
8c16: c3 31 3c     jp   $3C31
8c19: d1           pop  de
8c1a: c9           ret
8c1b: e1           pop  hl
8c1c: 7e           ld   a,(hl)
8c1d: 23           inc  hl
8c1e: e5           push hl
8c1f: b7           or   a
8c20: ca 6e 3c     jp   z,$3C6E
8c23: fe 01        cp   $01
8c25: ca b6 3c     jp   z,$3CB6
8c28: fe 02        cp   $02
8c2a: ca a1 3c     jp   z,$3CA1
8c2d: fe 03        cp   $03
8c2f: ca d6 3c     jp   z,$3CD6
8c32: fe 04        cp   $04
8c34: ca 85 3c     jp   z,$3C85
8c37: c3 cd 3c     jp   $3CCD
8c3a: cd df 3c     call $3CDF
8c3d: c1           pop  bc
8c3e: d1           pop  de
8c3f: e1           pop  hl
8c40: 7d           ld   a,l
8c41: 93           sub  e
8c42: c2 7e 3c     jp   nz,$3C7E
8c45: 7c           ld   a,h
8c46: 9a           sbc  a,d
8c47: ca c6 3c     jp   z,$3CC6
8c4a: 21 00 00     ld   hl,$0000
8c4d: e5           push hl
8c4e: 60           ld   h,b
8c4f: 69           ld   l,c
8c50: e9           jp   (hl)
8c51: cd df 3c     call $3CDF
8c54: c1           pop  bc
8c55: d1           pop  de
8c56: e1           pop  hl
8c57: 7a           ld   a,d
8c58: ac           xor  h
8c59: fa 9a 3c     jp   m,$3C9A
8c5c: 7d           ld   a,l
8c5d: 93           sub  e
8c5e: 7c           ld   a,h
8c5f: 9a           sbc  a,d
8c60: f2 c6 3c     jp   p,$3CC6
8c63: c3 7e 3c     jp   $3C7E
8c66: a4           and  h
8c67: f2 c6 3c     jp   p,$3CC6
8c6a: c3 7e 3c     jp   $3C7E
8c6d: cd df 3c     call $3CDF
8c70: c1           pop  bc
8c71: d1           pop  de
8c72: e1           pop  hl
8c73: 7a           ld   a,d
8c74: ac           xor  h
8c75: fa 9a 3c     jp   m,$3C9A
8c78: 7b           ld   a,e
8c79: 95           sub  l
8c7a: 7a           ld   a,d
8c7b: 9c           sbc  a,h
8c7c: da c6 3c     jp   c,$3CC6
8c7f: c3 7e 3c     jp   $3C7E
8c82: cd df 3c     call $3CDF
8c85: c1           pop  bc
8c86: d1           pop  de
8c87: e1           pop  hl
8c88: 7d           ld   a,l
8c89: 93           sub  e
8c8a: c2 c6 3c     jp   nz,$3CC6
8c8d: 7c           ld   a,h
8c8e: 9a           sbc  a,d
8c8f: ca 7e 3c     jp   z,$3C7E
8c92: 21 01 00     ld   hl,$0001
8c95: e5           push hl
8c96: 60           ld   h,b
8c97: 69           ld   l,c
8c98: e9           jp   (hl)
8c99: cd df 3c     call $3CDF
8c9c: c1           pop  bc
8c9d: e1           pop  hl
8c9e: d1           pop  de
8c9f: c3 8b 3c     jp   $3C8B
8ca2: cd df 3c     call $3CDF
8ca5: c1           pop  bc
8ca6: e1           pop  hl
8ca7: d1           pop  de
8ca8: c3 a7 3c     jp   $3CA7
8cab: c1           pop  bc
8cac: d1           pop  de
8cad: e1           pop  hl
8cae: 26 00        ld   h,$00
8cb0: 7d           ld   a,l
8cb1: e6 01        and  $01
8cb3: 6f           ld   l,a
8cb4: e3           ex   (sp),hl
8cb5: 26 00        ld   h,$00
8cb7: 7d           ld   a,l
8cb8: e6 01        and  $01
8cba: 6f           ld   l,a
8cbb: e3           ex   (sp),hl
8cbc: e5           push hl
8cbd: d5           push de
8cbe: c5           push bc
8cbf: c9           ret
8cc0: e1           pop  hl
8cc1: e3           ex   (sp),hl
8cc2: 22 4f 2c     ld   ($2C4F),hl
8cc5: c9           ret
8cc6: e1           pop  hl
8cc7: 11 ff ff     ld   de,$FFFF
8cca: d5           push de
8ccb: d5           push de
8ccc: e9           jp   (hl)
8ccd: e1           pop  hl
8cce: e3           ex   (sp),hl
8ccf: 22 44 39     ld   ($3944),hl
8cd2: c9           ret
8cd3: e1           pop  hl
8cd4: e3           ex   (sp),hl
8cd5: 22 46 39     ld   ($3946),hl
8cd8: c9           ret
8cd9: 21 4b 2c     ld   hl,$2C4B
8cdc: 22 44 39     ld   ($3944),hl
8cdf: 21 ed 2a     ld   hl,$2AED
8ce2: 22 46 39     ld   ($3946),hl
8ce5: c9           ret
8ce6: af           xor  a
8ce7: 32 65 3d     ld   ($3D65),a
8cea: e1           pop  hl
8ceb: 22 66 3d     ld   ($3D66),hl
8cee: e1           pop  hl
8cef: c1           pop  bc
8cf0: d1           pop  de
8cf1: d5           push de
8cf2: eb           ex   de,hl
8cf3: 22 68 3d     ld   ($3D68),hl
8cf6: eb           ex   de,hl
8cf7: 59           ld   e,c
8cf8: 50           ld   d,b
8cf9: 7a           ld   a,d
8cfa: b7           or   a
8cfb: ca 58 3d     jp   z,$3D58
8cfe: d5           push de
8cff: 1a           ld   a,(de)
8d00: bd           cp   l
8d01: ca 41 3d     jp   z,$3D41
8d04: da 41 3d     jp   c,$3D41
8d07: 3e 01        ld   a,$01
8d09: 32 65 3d     ld   ($3D65),a
8d0c: 7d           ld   a,l
8d0d: 3c           inc  a
8d0e: 6f           ld   l,a
8d0f: 26 00        ld   h,$00
8d11: e5           push hl
8d12: 32 6a 3d     ld   ($3D6A),a
8d15: cd e8 36     call $36E8
8d18: 2a 68 3d     ld   hl,($3D68)
8d1b: 3a 6a 3d     ld   a,($3D6A)
8d1e: 3d           dec  a
8d1f: 77           ld   (hl),a
8d20: 2a 66 3d     ld   hl,($3D66)
8d23: e9           jp   (hl)
8d24: e1           pop  hl
8d25: 36 01        ld   (hl),$01
8d27: 23           inc  hl
8d28: 73           ld   (hl),e
8d29: 3e 02        ld   a,$02
8d2b: 32 6a 3d     ld   ($3D6A),a
8d2e: c3 4c 3d     jp   $3D4C
8d31: 00           nop
8d32: 00           nop
8d33: 00           nop
8d34: 00           nop
8d35: 00           nop
8d36: 00           nop
8d37: e1           pop  hl
8d38: 22 8e 3d     ld   ($3D8E),hl
8d3b: e1           pop  hl
8d3c: 22 90 3d     ld   ($3D90),hl
8d3f: e1           pop  hl
8d40: 22 92 3d     ld   ($3D92),hl
8d43: e1           pop  hl
8d44: 23           inc  hl
8d45: e5           push hl
8d46: 2b           dec  hl
8d47: 6e           ld   l,(hl)
8d48: 26 00        ld   h,$00
8d4a: e5           push hl
8d4b: 2a 92 3d     ld   hl,($3D92)
8d4e: e5           push hl
8d4f: 2a 90 3d     ld   hl,($3D90)
8d52: e5           push hl
8d53: cd 25 36     call $3625
8d56: 2a 8e 3d     ld   hl,($3D8E)
8d59: e9           jp   (hl)
8d5a: 00           nop
8d5b: 00           nop
8d5c: 00           nop
8d5d: 00           nop
8d5e: 00           nop
8d5f: 00           nop
8d60: e1           pop  hl
8d61: 3a a9 3e     ld   a,($3EA9)
8d64: 1f           rra
8d65: f5           push af
8d66: e9           jp   (hl)
8d67: eb           ex   de,hl
8d68: 21 00 00     ld   hl,$0000
8d6b: af           xor  a
8d6c: 32 a9 3e     ld   ($3EA9),a
8d6f: 79           ld   a,c
8d70: b0           or   b
8d71: c2 ab 3d     jp   nz,$3DAB
8d74: c3 e4 3d     jp   $3DE4
8d77: 78           ld   a,b
8d78: 2f           cpl
8d79: 47           ld   b,a
8d7a: 79           ld   a,c
8d7b: 2f           cpl
8d7c: 4f           ld   c,a
8d7d: 03           inc  bc
8d7e: 3e 11        ld   a,$11
8d80: 3d           dec  a
8d81: c2 bc 3d     jp   nz,$3DBC
8d84: eb           ex   de,hl
8d85: c3 e2 3d     jp   $3DE2
8d88: 29           add  hl,hl
8d89: da d6 3d     jp   c,$3DD6
8d8c: eb           ex   de,hl
8d8d: 29           add  hl,hl
8d8e: eb           ex   de,hl
8d8f: d2 c7 3d     jp   nc,$3DC7
8d92: 2c           inc  l
8d93: e5           push hl
8d94: 09           add  hl,bc
8d95: da d0 3d     jp   c,$3DD0
8d98: e1           pop  hl
8d99: c3 b4 3d     jp   $3DB4
8d9c: 1c           inc  e
8d9d: 33           inc  sp
8d9e: 33           inc  sp
8d9f: c3 b4 3d     jp   $3DB4
8da2: eb           ex   de,hl
8da3: 29           add  hl,hl
8da4: eb           ex   de,hl
8da5: d2 dd 3d     jp   nc,$3DDD
8da8: 2c           inc  l
8da9: 09           add  hl,bc
8daa: 1c           inc  e
8dab: c3 b4 3d     jp   $3DB4
8dae: eb           ex   de,hl
8daf: c9           ret
8db0: 0e 09        ld   c,$09
8db2: 11 ef 3d     ld   de,$3DEF
8db5: cd 05 00     call $0005
8db8: cd 7f 39     call $397F
8dbb: 0d           dec  c
8dbc: 0a           ld   a,(bc)
8dbd: 44           ld   b,h
8dbe: 49           ld   c,c
8dbf: 56           ld   d,(hl)
8dc0: 20 30        jr   nz,$8DF2
8dc2: 0d           dec  c
8dc3: 0a           ld   a,(bc)
8dc4: 24           inc  h
8dc5: c9           ret
8dc6: af           xor  a
8dc7: 32 a9 3e     ld   ($3EA9),a
8dca: b1           or   c
8dcb: c2 0b 3e     jp   nz,$3E0B
8dce: b0           or   b
8dcf: ca 70 3e     jp   z,$3E70
8dd2: ee 80        xor  $80
8dd4: ca 70 3e     jp   z,$3E70
8dd7: 78           ld   a,b
8dd8: a7           and  a
8dd9: fa 38 3e     jp   m,$3E38
8ddc: b2           or   d
8ddd: fa 19 3e     jp   m,$3E19
8de0: eb           ex   de,hl
8de1: cd 9b 3d     call $3D9B
8de4: c9           ret
8de5: 7d           ld   a,l
8de6: fe 01        cp   $01
8de8: ca 31 3e     jp   z,$3E31
8deb: 7b           ld   a,e
8dec: 2f           cpl
8ded: 6f           ld   l,a
8dee: 7a           ld   a,d
8def: 2f           cpl
8df0: 67           ld   h,a
8df1: 23           inc  hl
8df2: cd 9b 3d     call $3D9B
8df5: 7b           ld   a,e
8df6: 2f           cpl
8df7: 5f           ld   e,a
8df8: 7a           ld   a,d
8df9: 2f           cpl
8dfa: 57           ld   d,a
8dfb: 13           inc  de
8dfc: c9           ret
8dfd: 21 ff ff     ld   hl,$FFFF
8e00: cd 9f 3d     call $3D9F
8e03: c9           ret
8e04: af           xor  a
8e05: 91           sub  c
8e06: 4f           ld   c,a
8e07: 3e 00        ld   a,$00
8e09: 98           sbc  a,b
8e0a: 47           ld   b,a
8e0b: 7a           ld   a,d
8e0c: a7           and  a
8e0d: fa 5e 3e     jp   m,$3E5E
8e10: c2 4b 3e     jp   nz,$3E4B
8e13: b3           or   e
8e14: ca 5e 3e     jp   z,$3E5E
8e17: eb           ex   de,hl
8e18: cd 9b 3d     call $3D9B
8e1b: 7b           ld   a,e
8e1c: 2f           cpl
8e1d: 5f           ld   e,a
8e1e: 7a           ld   a,d
8e1f: 2f           cpl
8e20: 57           ld   d,a
8e21: 13           inc  de
8e22: 7d           ld   a,l
8e23: 91           sub  c
8e24: 6f           ld   l,a
8e25: 7c           ld   a,h
8e26: 98           sbc  a,b
8e27: 67           ld   h,a
8e28: 23           inc  hl
8e29: c9           ret
8e2a: af           xor  a
8e2b: 93           sub  e
8e2c: 6f           ld   l,a
8e2d: 3e 00        ld   a,$00
8e2f: 9a           sbc  a,d
8e30: 67           ld   h,a
8e31: cd 9b 3d     call $3D9B
8e34: af           xor  a
8e35: 95           sub  l
8e36: 6f           ld   l,a
8e37: 3e 00        ld   a,$00
8e39: 9c           sbc  a,h
8e3a: 67           ld   h,a
8e3b: c9           ret
8e3c: c3 e4 3d     jp   $3DE4
8e3f: 3e 01        ld   a,$01
8e41: 32 a9 3e     ld   ($3EA9),a
8e44: 11 ff ff     ld   de,$FFFF
8e47: 21 00 00     ld   hl,$0000
8e4a: c9           ret
8e4b: e1           pop  hl
8e4c: c1           pop  bc
8e4d: d1           pop  de
8e4e: e5           push hl
8e4f: 2e 00        ld   l,$00
8e51: cd fa 3d     call $3DFA
8e54: e1           pop  hl
8e55: d5           push de
8e56: e9           jp   (hl)
8e57: e1           pop  hl
8e58: c1           pop  bc
8e59: d1           pop  de
8e5a: e5           push hl
8e5b: 2e 01        ld   l,$01
8e5d: cd fa 3d     call $3DFA
8e60: e3           ex   (sp),hl
8e61: e9           jp   (hl)
8e62: d1           pop  de
8e63: c1           pop  bc
8e64: e1           pop  hl
8e65: d5           push de
8e66: cd 9b 3d     call $3D9B
8e69: eb           ex   de,hl
8e6a: e3           ex   (sp),hl
8e6b: e9           jp   (hl)
8e6c: d1           pop  de
8e6d: c1           pop  bc
8e6e: e1           pop  hl
8e6f: d5           push de
8e70: cd 9b 3d     call $3D9B
8e73: e3           ex   (sp),hl
8e74: e9           jp   (hl)
8e75: 00           nop
8e76: c1           pop  bc
8e77: e1           pop  hl
8e78: e1           pop  hl
8e79: c5           push bc
8e7a: cd bb 3e     call $3EBB
8e7d: e1           pop  hl
8e7e: c1           pop  bc
8e7f: e5           push hl
8e80: c5           push bc
8e81: 59           ld   e,c
8e82: cd d2 3e     call $3ED2
8e85: c1           pop  bc
8e86: c9           ret
8e87: 11 01 00     ld   de,$0001
8e8a: 19           add  hl,de
8e8b: 7d           ld   a,l
8e8c: b4           or   h
8e8d: c8           ret  z
8e8e: 2d           dec  l
8e8f: c8           ret  z
8e90: 2d           dec  l
8e91: c8           ret  z
8e92: 1e 20        ld   e,$20
8e94: e5           push hl
8e95: cd d2 3e     call $3ED2
8e98: e1           pop  hl
8e99: 2d           dec  l
8e9a: c2 c6 3e     jp   nz,$3EC6
8e9d: c9           ret
8e9e: e1           pop  hl
8e9f: d5           push de
8ea0: e5           push hl
8ea1: 2a 46 39     ld   hl,($3946)
8ea4: e9           jp   (hl)
8ea5: eb           ex   de,hl
8ea6: 11 00 00     ld   de,$0000
8ea9: 79           ld   a,c
8eaa: 48           ld   c,b
8eab: 06 08        ld   b,$08
8ead: 1f           rra
8eae: d2 e8 3e     jp   nc,$3EE8
8eb1: eb           ex   de,hl
8eb2: 19           add  hl,de
8eb3: eb           ex   de,hl
8eb4: 29           add  hl,hl
8eb5: 05           dec  b
8eb6: c2 e1 3e     jp   nz,$3EE1
8eb9: 79           ld   a,c
8eba: a7           and  a
8ebb: c2 de 3e     jp   nz,$3EDE
8ebe: eb           ex   de,hl
8ebf: e3           ex   (sp),hl
8ec0: e9           jp   (hl)
8ec1: e1           pop  hl
8ec2: c1           pop  bc
8ec3: d1           pop  de
8ec4: e5           push hl
8ec5: c3 d9 3e     jp   $3ED9
8ec8: 4d           ld   c,l
8ec9: 44           ld   b,h
8eca: cd d9 3e     call $3ED9
8ecd: e1           pop  hl
8ece: c9           ret
8ecf: c9           ret
8ed0: 00           nop
8ed1: 00           nop
8ed2: 00           nop
8ed3: 00           nop
8ed4: 00           nop
8ed5: 00           nop
8ed6: 00           nop
8ed7: 00           nop
8ed8: 00           nop
8ed9: 00           nop
8eda: 00           nop
8edb: 00           nop
8edc: 00           nop
8edd: 00           nop
8ede: 00           nop
8edf: 00           nop
8ee0: 00           nop
8ee1: 00           nop
8ee2: 00           nop
8ee3: 00           nop
8ee4: 00           nop
8ee5: 00           nop
8ee6: 00           nop
8ee7: 00           nop
8ee8: 00           nop
8ee9: 00           nop
8eea: 00           nop
8eeb: 00           nop
8eec: 00           nop
8eed: 00           nop
8eee: 00           nop
8eef: 00           nop
8ef0: 00           nop
8ef1: 00           nop
8ef2: 00           nop
8ef3: 00           nop
8ef4: 00           nop
8ef5: 00           nop
8ef6: 00           nop
8ef7: 00           nop
8ef8: 00           nop
8ef9: 00           nop
8efa: 00           nop
8efb: 00           nop
8efc: 00           nop
8efd: 00           nop
8efe: 00           nop
8eff: 00           nop
8f00: 00           nop
8f01: 00           nop
8f02: 00           nop
8f03: 00           nop
8f04: 00           nop
8f05: 00           nop
8f06: 00           nop
8f07: 00           nop
8f08: 00           nop
8f09: 00           nop
8f0a: 00           nop
8f0b: 00           nop
8f0c: 00           nop
8f0d: 00           nop
8f0e: 00           nop
8f0f: 00           nop
8f10: 00           nop
8f11: 00           nop
8f12: 00           nop
8f13: 00           nop
8f14: 00           nop
8f15: 00           nop
8f16: 00           nop
8f17: 00           nop
8f18: 00           nop
8f19: 00           nop
8f1a: 00           nop
8f1b: 00           nop
8f1c: 00           nop
8f1d: 00           nop
8f1e: 00           nop
8f1f: 00           nop
8f20: 00           nop
8f21: 00           nop
8f22: 00           nop
8f23: 00           nop
8f24: 00           nop
8f25: 00           nop
8f26: 00           nop
8f27: 00           nop
8f28: 00           nop
8f29: 00           nop
8f2a: 00           nop
8f2b: 00           nop
8f2c: 00           nop
8f2d: 00           nop
8f2e: 00           nop
8f2f: 00           nop
8f30: 00           nop
8f31: 00           nop
8f32: 00           nop
8f33: 00           nop
8f34: 00           nop
8f35: 00           nop
8f36: 00           nop
8f37: 00           nop
8f38: 00           nop
8f39: 00           nop
8f3a: 00           nop
8f3b: 00           nop
8f3c: 00           nop
8f3d: 00           nop
8f3e: 00           nop
8f3f: 00           nop
8f40: 00           nop
8f41: 00           nop
8f42: 00           nop
8f43: 00           nop
8f44: 00           nop
8f45: 00           nop
8f46: 00           nop
8f47: 00           nop
8f48: 00           nop
8f49: 00           nop
8f4a: 00           nop
8f4b: 00           nop
