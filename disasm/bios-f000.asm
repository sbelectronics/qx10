f000: c3 01 f1     jp   $F101
f003: c3 08 f1     jp   $F108
f006: c3 0f f1     jp   $F10F
f009: c3 1b f1     jp   $F11B
f00c: c3 22 f1     jp   $F122
f00f: c3 29 f1     jp   $F129
f012: c3 30 f1     jp   $F130
f015: c3 37 f1     jp   $F137
f018: c3 3e f1     jp   $F13E
f01b: c3 45 f1     jp   $F145
f01e: c3 4c f1     jp   $F14C
f021: c3 53 f1     jp   $F153
f024: c3 5a f1     jp   $F15A
f027: c3 61 f1     jp   $F161
f02a: c3 68 f1     jp   $F168
f02d: c3 6f f1     jp   $F16F
f030: c3 76 f1     jp   $F176
f033: c3 63 f0     jp   $F063
f036: c3 63 f0     jp   $F063
f039: c3 63 f0     jp   $F063
f03c: c3 63 f0     jp   $F063
f03f: c3 63 f0     jp   $F063
f042: c3 63 f0     jp   $F063
f045: c3 63 f0     jp   $F063
f048: c3 63 f0     jp   $F063
f04b: c3 63 f0     jp   $F063
f04e: c3 63 f0     jp   $F063
f051: c3 63 f0     jp   $F063
f054: c3 63 f0     jp   $F063
f057: c3 63 f0     jp   $F063
f05a: c3 7d f1     jp   $F17D     ; XBIOS
f05d: dc f7 5e     call c,$5EF7
f060: 9c           sbc  a,h
f061: 0c           inc  c
f062: 9c           sbc  a,h
f063: c9           ret
f064: 00           nop
f065: 01 00 00     ld   bc,$0000
f068: 00           nop
f069: 00           nop
f06a: 00           nop
f06b: 00           nop
f06c: 00           nop
f06d: 00           nop
f06e: 00           nop
f06f: 00           nop
f070: 00           nop
f071: 00           nop
f072: 00           nop
f073: 00           nop
f074: 00           nop
f075: 00           nop
f076: 00           nop
f077: 00           nop
f078: 00           nop
f079: 00           nop
f07a: 00           nop
f07b: 00           nop
f07c: 00           nop
f07d: 00           nop
f07e: 00           nop
f07f: 00           nop
f080: f3           di
f081: 32 29 f4     ld   ($F429),a
f084: 3e 00        ld   a,$00
f086: 18 76        jr   $F0FE
f088: f3           di
f089: 32 29 f4     ld   ($F429),a
f08c: 3e 03        ld   a,$03
f08e: 18 6e        jr   $F0FE
f090: f3           di
f091: 32 29 f4     ld   ($F429),a
f094: 3e 06        ld   a,$06
f096: 18 66        jr   $F0FE
f098: f3           di
f099: 32 29 f4     ld   ($F429),a
f09c: 3e 09        ld   a,$09
f09e: 18 5e        jr   $F0FE
f0a0: f3           di
f0a1: 32 29 f4     ld   ($F429),a
f0a4: 3e 0c        ld   a,$0C
f0a6: 18 56        jr   $F0FE
f0a8: f3           di
f0a9: 32 29 f4     ld   ($F429),a
f0ac: 3e 0f        ld   a,$0F
f0ae: 18 4e        jr   $F0FE
f0b0: f3           di
f0b1: 32 29 f4     ld   ($F429),a
f0b4: 3e 12        ld   a,$12
f0b6: 18 46        jr   $F0FE
f0b8: f3           di
f0b9: 32 29 f4     ld   ($F429),a
f0bc: 3e 15        ld   a,$15
f0be: 18 3e        jr   $F0FE
f0c0: f3           di
f0c1: 32 29 f4     ld   ($F429),a
f0c4: 3e 18        ld   a,$18
f0c6: 18 36        jr   $F0FE
f0c8: f3           di
f0c9: 32 29 f4     ld   ($F429),a
f0cc: 3e 1b        ld   a,$1B
f0ce: 18 2e        jr   $F0FE
f0d0: f3           di
f0d1: 32 29 f4     ld   ($F429),a
f0d4: 3e 1e        ld   a,$1E
f0d6: 18 26        jr   $F0FE
f0d8: f3           di
f0d9: 32 29 f4     ld   ($F429),a
f0dc: 3e 21        ld   a,$21
f0de: 18 1e        jr   $F0FE
f0e0: f3           di
f0e1: 32 29 f4     ld   ($F429),a
f0e4: 3e 24        ld   a,$24
f0e6: 18 16        jr   $F0FE
f0e8: f3           di
f0e9: 32 29 f4     ld   ($F429),a
f0ec: 3e 27        ld   a,$27
f0ee: 18 0e        jr   $F0FE
f0f0: f3           di
f0f1: 32 29 f4     ld   ($F429),a
f0f4: 3e 2a        ld   a,$2A
f0f6: 18 06        jr   $F0FE
f0f8: f3           di
f0f9: 32 29 f4     ld   ($F429),a
f0fc: 3e 2d        ld   a,$2D
f0fe: c3 6e f2     jp   $F26E
f101: d9           exx
f102: 21 0c 9c     ld   hl,$9C0C
f105: c3 91 f1     jp   $F191
f108: d9           exx
f109: 21 6e 00     ld   hl,$006E
f10c: c3 91 f1     jp   $F191
f10f: d9           exx
f110: 3e ff        ld   a,$FF
f112: 32 36 f4     ld   ($F436),a
f115: 21 5b 12     ld   hl,$125B
f118: c3 91 f1     jp   $F191
f11b: d9           exx
f11c: 21 69 12     ld   hl,$1269
f11f: c3 91 f1     jp   $F191
f122: d9           exx
f123: 21 77 12     ld   hl,$1277
f126: c3 91 f1     jp   $F191
f129: d9           exx
f12a: 21 a7 12     ld   hl,$12A7
f12d: c3 91 f1     jp   $F191
f130: d9           exx
f131: 21 85 12     ld   hl,$1285
f134: c3 91 f1     jp   $F191
f137: d9           exx
f138: 21 97 12     ld   hl,$1297
f13b: c3 91 f1     jp   $F191
f13e: d9           exx
f13f: 21 39 90     ld   hl,$9039
f142: c3 91 f1     jp   $F191
f145: d9           exx
f146: 21 fb 8f     ld   hl,$8FFB
f149: c3 91 f1     jp   $F191
f14c: d9           exx
f14d: 21 51 90     ld   hl,$9051
f150: c3 91 f1     jp   $F191
f153: d9           exx
f154: 21 56 90     ld   hl,$9056
f157: c3 91 f1     jp   $F191
f15a: d9           exx
f15b: 21 5e 90     ld   hl,$905E
f15e: c3 91 f1     jp   $F191
f161: d9           exx
f162: 21 63 90     ld   hl,$9063
f165: c3 91 f1     jp   $F191
f168: d9           exx
f169: 21 7d 90     ld   hl,$907D
f16c: c3 91 f1     jp   $F191
f16f: d9           exx
f170: 21 b7 12     ld   hl,$12B7
f173: c3 91 f1     jp   $F191
f176: d9           exx
f177: 21 5b 90     ld   hl,$905B
f17a: c3 91 f1     jp   $F191
f17d: f5           push af
f17e: 79           ld   a,c
f17f: fe 31        cp   $31         ; Call another bank
f181: ca b8 f4     jp   z,$F4B8
f184: fe 32        cp   $32         ; Jump another bank
f186: ca 23 f5     jp   z,$F523
f189: f1           pop  af
f18a: d9           exx              ; exchange shadow registers
f18b: 21 fb 00     ld   hl,$00FB
f18e: c3 91 f1     jp   $F191
f191: f3           di               ; Bank switch and call bios
f192: ed 73 90 f4  ld   ($F490),sp  ; save SP in F490
f196: 31 2c f9     ld   sp,$F92C    ; SP = F29C
f199: 11 d6 f1     ld   de,$F1D6
f19c: d5           push de          ; push F1D6
f19d: e5           push hl          ; push 00FB
f19e: d9           exx              ; exchange shadow registers
f19f: f5           push af
f1a0: 3a 03 00     ld   a,($0003)
f1a3: 32 64 f0     ld   ($F064),a
f1a6: 3a 6c f0     ld   a,($F06C)
f1a9: 32 65 f0     ld   ($F065),a  ; save currnt bank in F065
f1ac: af           xor  a
f1ad: 32 6c f0     ld   ($F06C),a  ; Mark current bank as 0
f1b0: 3e 12        ld   a,$12
f1b2: d3 18        out  ($18),a    ; Bank switch to bank0
f1b4: 3a 64 f0     ld   a,($F064)
f1b7: 32 2a 27     ld   ($272A),a  ; (bank0:272A) = (bank1:0003)
f1ba: 3a 36 f4     ld   a,($F436)
f1bd: b7           or   a
f1be: 20 0c        jr   nz,$F1CC
f1c0: 3a 57 12     ld   a,($1257)
f1c3: b7           or   a
f1c4: cc 7c 17     call z,$177C
f1c7: 3e 14        ld   a,$14
f1c9: 32 56 12     ld   ($1256),a
f1cc: 3a 66 f0     ld   a,($F066)
f1cf: b7           or   a
f1d0: c4 e9 f1     call nz,$F1E9
f1d3: f1           pop  af
f1d4: fb           ei
f1d5: c9           ret
f1d6: f3           di
f1d7: 08           ex   af,af'
f1d8: af           xor  a
f1d9: 32 36 f4     ld   ($F436),a
f1dc: 3a 65 f0     ld   a,($F065)
f1df: cd 27 f3     call $F327
f1e2: ed 7b 90 f4  ld   sp,($F490)
f1e6: 08           ex   af,af'
f1e7: fb           ei
f1e8: c9           ret
f1e9: fb           ei
f1ea: 3a 67 f0     ld   a,($F067)
f1ed: b7           or   a
f1ee: c0           ret  nz
f1ef: 3a 66 f0     ld   a,($F066)
f1f2: cb 47        bit  0,a
f1f4: c4 1a 8c     call nz,$8C1A
f1f7: cb 4f        bit  1,a
f1f9: c4 4e 0b     call nz,$0B4E
f1fc: 3a 66 f0     ld   a,($F066)
f1ff: cb 5f        bit  3,a
f201: c4 48 f2     call nz,$F248
f204: cb 6f        bit  5,a
f206: c4 83 2a     call nz,$2A83
f209: 3a 66 f0     ld   a,($F066)
f20c: cb 7f        bit  7,a
f20e: c4 18 f2     call nz,$F218
f211: 3a 66 f0     ld   a,($F066)
f214: b7           or   a
f215: 20 d2        jr   nz,$F1E9
f217: c9           ret
f218: c5           push bc
f219: d5           push de
f21a: e5           push hl
f21b: dd e5        push ix
f21d: fd e5        push iy
f21f: cb bf        res  7,a
f221: cb 77        bit  6,a
f223: 20 11        jr   nz,$F236
f225: cb f7        set  6,a
f227: 32 66 f0     ld   ($F066),a
f22a: 21 39 f4     ld   hl,$F439
f22d: 3e 03        ld   a,$03
f22f: 0e 00        ld   c,$00
f231: cd ec 12     call $12EC
f234: 18 0a        jr   $F240
f236: cb b7        res  6,a
f238: 32 66 f0     ld   ($F066),a
f23b: 3e 01        ld   a,$01
f23d: cd ef 12     call $12EF
f240: fd e1        pop  iy
f242: dd e1        pop  ix
f244: e1           pop  hl
f245: d1           pop  de
f246: c1           pop  bc
f247: c9           ret
f248: c5           push bc
f249: d5           push de
f24a: e5           push hl
f24b: dd e5        push ix
f24d: fd e5        push iy
f24f: cb 9f        res  3,a
f251: 32 66 f0     ld   ($F066),a
f254: 06 00        ld   b,$00
f256: 2e 01        ld   l,$01
f258: 3a 38 27     ld   a,($2738)
f25b: 3c           inc  a
f25c: e6 01        and  $01
f25e: 67           ld   h,a
f25f: af           xor  a
f260: cd 00 52     call $5200
f263: 3a 66 f0     ld   a,($F066)
f266: fd e1        pop  iy
f268: dd e1        pop  ix
f26a: e1           pop  hl
f26b: d1           pop  de
f26c: c1           pop  bc
f26d: c9           ret
f26e: ed 73 92 f4  ld   ($F492),sp
f272: 31 ac f8     ld   sp,$F8AC
f275: 32 2a f4     ld   ($F42A),a
f278: 3a 29 f4     ld   a,($F429)
f27b: f5           push af
f27c: c5           push bc
f27d: d5           push de
f27e: e5           push hl
f27f: dd e5        push ix
f281: fd e5        push iy
f283: 3a 6c f0     ld   a,($F06C)
f286: 32 38 f4     ld   ($F438),a
f289: 11 a1 f2     ld   de,$F2A1
f28c: d5           push de
f28d: 3a 2a f4     ld   a,($F42A)
f290: 5f           ld   e,a
f291: 16 00        ld   d,$00
f293: 21 7c f5     ld   hl,$F57C
f296: 19           add  hl,de
f297: 5e           ld   e,(hl)
f298: 23           inc  hl
f299: 56           ld   d,(hl)
f29a: 23           inc  hl
f29b: 7e           ld   a,(hl)
f29c: eb           ex   de,hl
f29d: cd 27 f3     call $F327
f2a0: e9           jp   (hl)
f2a1: 3a 38 f4     ld   a,($F438)
f2a4: cd 27 f3     call $F327
f2a7: fd e1        pop  iy
f2a9: dd e1        pop  ix
f2ab: e1           pop  hl
f2ac: d1           pop  de
f2ad: c1           pop  bc
f2ae: f1           pop  af
f2af: ed 7b 92 f4  ld   sp,($F492)
f2b3: fb           ei
f2b4: c9           ret
f2b5: 22 31 f4     ld   ($F431),hl
f2b8: 32 33 f4     ld   ($F433),a
f2bb: 3a 6c f0     ld   a,($F06C)
f2be: f5           push af
f2bf: 3a 33 f4     ld   a,($F433)
f2c2: cd 27 f3     call $F327
f2c5: 21 cd f2     ld   hl,$F2CD
f2c8: e5           push hl
f2c9: 2a 31 f4     ld   hl,($F431)
f2cc: e9           jp   (hl)
f2cd: f1           pop  af
f2ce: cd 27 f3     call $F327
f2d1: c9           ret
f2d2: 22 2f f4     ld   ($F42F),hl
f2d5: e1           pop  hl
f2d6: ed 73 34 f4  ld   ($F434),sp
f2da: ed 7b 94 f4  ld   sp,($F494)
f2de: e5           push hl
f2df: 32 2e f4     ld   ($F42E),a
f2e2: 3a 6c f0     ld   a,($F06C)
f2e5: f5           push af
f2e6: 3a 2e f4     ld   a,($F42E)
f2e9: cd 27 f3     call $F327
f2ec: ed 73 94 f4  ld   ($F494),sp
f2f0: ed 7b 34 f4  ld   sp,($F434)
f2f4: 21 fc f2     ld   hl,$F2FC
f2f7: e5           push hl
f2f8: 2a 2f f4     ld   hl,($F42F)
f2fb: e9           jp   (hl)
f2fc: ed 73 34 f4  ld   ($F434),sp
f300: ed 7b 94 f4  ld   sp,($F494)
f304: f1           pop  af
f305: e1           pop  hl
f306: ed 73 94 f4  ld   ($F494),sp
f30a: ed 7b 34 f4  ld   sp,($F434)
f30e: e5           push hl
f30f: 32 2e f4     ld   ($F42E),a
f312: 3a 6c f0     ld   a,($F06C)
f315: f5           push af
f316: 3a 2e f4     ld   a,($F42E)
f319: cd 27 f3     call $F327
f31c: 21 bf f4     ld   hl,$F4BF
f31f: e9           jp   (hl)
f320: 21 90 f4     ld   hl,$F490
f323: 22 94 f4     ld   ($F494),hl
f326: c9           ret
f327: e5           push hl            ; bank switch for jump
f328: e6 07        and  $07
f32a: 32 6c f0     ld   ($F06C),a     ; F06C gets bank to switch to
f32d: 21 3f f3     ld   hl,$F33F
f330: 87           add  a,a           ; a = a << 1
f331: 85           add  a,l           ; a = a + 3F
f332: 6f           ld   l,a
f333: 30 01        jr   nc,$F336
f335: 23           inc  hl
f336: 7e           ld   a,(hl)
f337: d3 28        out  ($28),a       ; port 28 is for the QX-16's extra banks
f339: 23           inc  hl
f33a: 7e           ld   a,(hl)
f33b: d3 18        out  ($18),a
f33d: e1           pop  hl
f33e: c9           ret
f33f: 00           nop               
f340: 12           ld   (de),a       ; 12 = Bank 0
f341: 00           nop
f342: 22 00 42     ld   ($4200),hl   ; 22 = Bank 1, 42 = bank 2
f345: 00           nop
f346: 82           add  a,d          ; 82 = bank 3
f347: 01 12 01     ld   bc,$0112
f34a: 22 01 42     ld   ($4201),hl
f34d: 01 82 c5     ld   bc,$C582
f350: 3a 65 f0     ld   a,($F065)
f353: cd 27 f3     call $F327
f356: 3a 03 00     ld   a,($0003)
f359: 47           ld   b,a
f35a: 3e 00        ld   a,$00
f35c: cd 27 f3     call $F327
f35f: 78           ld   a,b
f360: c1           pop  bc
f361: c9           ret
f362: c5           push bc
f363: 47           ld   b,a
f364: 3a 65 f0     ld   a,($F065)
f367: cd 27 f3     call $F327
f36a: 78           ld   a,b
f36b: 32 03 00     ld   ($0003),a
f36e: 3e 00        ld   a,$00
f370: cd 27 f3     call $F327
f373: c1           pop  bc
f374: c9           ret
f375: c5           push bc
f376: 3a 65 f0     ld   a,($F065)
f379: cd 27 f3     call $F327
f37c: 3a 04 00     ld   a,($0004)
f37f: 47           ld   b,a
f380: 3e 00        ld   a,$00
f382: cd 27 f3     call $F327
f385: 78           ld   a,b
f386: c1           pop  bc
f387: c9           ret
f388: c5           push bc
f389: 47           ld   b,a
f38a: 3a 65 f0     ld   a,($F065)
f38d: cd 27 f3     call $F327
f390: 78           ld   a,b
f391: 32 04 00     ld   ($0004),a
f394: 3e 00        ld   a,$00
f396: cd 27 f3     call $F327
f399: c1           pop  bc
f39a: c9           ret
f39b: ed 43 2b f4  ld   ($F42B),bc         ; SUBROUTINE - set src and desk bank
f39f: 3e ff        ld   a,$FF
f3a1: 32 2d f4     ld   ($F42D),a
f3a4: c9           ret
    ; BC = count
    ; HL = dest
    ; DE = src
    ; (F42B) = src bank
    ; (F42C) = dest bank
f3a5: 78           ld   a,b               ; SUBROUTINE - banked memory copy
f3a6: b1           or   c                 
f3a7: c8           ret  z                 ; return if B==C==0, no bytes to xfer
f3a8: 3a 2d f4     ld   a,($F42D)
f3ab: b7           or   a
f3ac: ca 26 f4     jp   z,$F426
f3af: af           xor  a
f3b0: 32 2d f4     ld   ($F42D),a
f3b3: 3a 6c f0     ld   a,($F06C)
f3b6: 32 6a f0     ld   ($F06A),a
f3b9: ed 43 74 f0  ld   ($F074),bc
f3bd: 22 70 f0     ld   ($F070),hl
f3c0: ed 53 72 f0  ld   ($F072),de
f3c4: 2a 74 f0     ld   hl,($F074)        ; Byte count from F074
f3c7: 11 80 00     ld   de,$0080
f3ca: b7           or   a
f3cb: ed 52        sbc  hl,de
f3cd: 38 10        jr   c,$F3DF           ; Less than a full block?
f3cf: 7d           ld   a,l
f3d0: b4           or   h
f3d1: 28 0c        jr   z,$F3DF
f3d3: 22 74 f0     ld   ($F074),hl        ; store byte count less 128
f3d6: 01 80 00     ld   bc,$0080
f3d9: ed 43 68 f0  ld   ($F068),bc        ; transfer 128 bytes
f3dd: 18 09        jr   $F3E8             ; jump - start transfer
f3df: 19           add  hl,de
f3e0: 22 68 f0     ld   ($F068),hl        ; transfer hl bytes
f3e3: 3e ff        ld   a,$FF
f3e5: 32 6b f0     ld   ($F06B),a
      ; Banked memory Copy
      ;    F42B - src bank
      ;    F42C - dest bank
      ;    F068 - byte count this transfer
      ;    F070 - src addr
      ;    F072 - dest addr
      ;    F7DC - buffer
f3e8: 3a 2b f4     ld   a,($F42B)         ; get src bank from F42B
f3eb: cd 27 f3     call $F327             ; switch to dest src bank
f3ee: ed 4b 68 f0  ld   bc,($F068)        ; Get byte count from F068
f3f2: 2a 70 f0     ld   hl,($F070)        ; Get src addr from F070
f3f5: 11 dc f7     ld   de,$F7DC          ; dest addr
f3f8: ed b0        ldir                   ; memory copy
f3fa: 22 70 f0     ld   ($F070),hl        ; put final src addr back in f070
f3fd: 3a 2c f4     ld   a,($F42C)         ; get dest bank from F42C
f400: cd 27 f3     call $F327             ; switch to dest bank
f403: ed 5b 72 f0  ld   de,($F072)        ; Get dest addr from F072
f407: ed 4b 68 f0  ld   bc,($F068)        ; Get byte count from f068
f40b: 21 dc f7     ld   hl,$F7DC          ; src addr
f40e: ed b0        ldir                   ; memory copy
f410: ed 53 72 f0  ld   ($F072),de        ; Store final dest addr back to F072
f414: 3a 6b f0     ld   a,($F06B)
f417: b7           or   a
f418: ca c4 f3     jp   z,$F3C4           ; loop to transfer more blocks?
f41b: af           xor  a
f41c: 32 6b f0     ld   ($F06B),a
f41f: 3a 6a f0     ld   a,($F06A)         ; Get orig bank from F06A
f422: cd 27 f3     call $F327             ; Restore original bank
f425: c9           ret
f426: ed b0        ldir
f428: c9           ret
f429: 00           nop
f42a: 00           nop
f42b: 00           nop
f42c: 00           nop
f42d: 00           nop
f42e: 00           nop
f42f: 00           nop
f430: 00           nop
f431: 00           nop
f432: 00           nop
f433: 00           nop
f434: 00           nop
f435: 00           nop
f436: 00           nop
f437: 00           nop
f438: 00           nop
f439: 20 53        jr   nz,$F48E
f43b: 59           ld   e,c
f43c: 53           ld   d,e
f43d: 54           ld   d,h
f43e: 45           ld   b,l
f43f: 4d           ld   c,l
f440: 20 49        jr   nz,$F48B
f442: 53           ld   d,e
f443: 20 50        jr   nz,$F495
f445: 41           ld   b,c
f446: 55           ld   d,l
f447: 53           ld   d,e
f448: 45           ld   b,l
f449: 44           ld   b,h
f44a: 21 20 50     ld   hl,$5020
f44d: 52           ld   d,d
f44e: 45           ld   b,l
f44f: 53           ld   d,e
f450: 53           ld   d,e
f451: 20 43        jr   nz,$F496
f453: 54           ld   d,h
f454: 52           ld   d,d
f455: 4c           ld   c,h
f456: 2d           dec  l
f457: 53           ld   d,e
f458: 54           ld   d,h
f459: 4f           ld   c,a
f45a: 50           ld   d,b
f45b: 20 54        jr   nz,$F4B1
f45d: 4f           ld   c,a
f45e: 20 43        jr   nz,$F4A3
f460: 4f           ld   c,a
f461: 4e           ld   c,(hl)
f462: 54           ld   d,h
f463: 49           ld   c,c
f464: 4e           ld   c,(hl)
f465: 55           ld   d,l
f466: 45           ld   b,l
f467: 00           nop
f468: 00           nop
f469: 00           nop
f46a: 00           nop
f46b: 00           nop
f46c: 00           nop
f46d: 00           nop
f46e: 00           nop
f46f: 00           nop
f470: 00           nop
f471: 00           nop
f472: 00           nop
f473: 00           nop
f474: 00           nop
f475: 00           nop
f476: 00           nop
f477: 00           nop
f478: 00           nop
f479: 00           nop
f47a: 00           nop
f47b: 00           nop
f47c: 00           nop
f47d: 00           nop
f47e: 00           nop
f47f: 00           nop
f480: 00           nop
f481: 00           nop
f482: 00           nop
f483: 00           nop
f484: 00           nop
f485: 00           nop
f486: 00           nop
f487: 00           nop
f488: 00           nop
f489: 00           nop
f48a: 00           nop
f48b: 00           nop
f48c: 00           nop
f48d: 00           nop
f48e: 00           nop
f48f: 00           nop
f490: 00           nop
f491: 00           nop
f492: 00           nop
f493: 00           nop
f494: 90           sub  b
f495: f4 3e 01     call p,$013E
f498: cd 27 f3     call $F327
f49b: 3e c3        ld   a,$C3
f49d: 32 00 00     ld   ($0000),a
f4a0: 32 05 00     ld   ($0005),a
f4a3: 21 03 f0     ld   hl,$F003
f4a6: 22 01 00     ld   ($0001),hl
f4a9: 21 06 e2     ld   hl,$E206
f4ac: 22 06 00     ld   ($0006),hl
f4af: 3a 04 00     ld   a,($0004)
f4b2: 4f           ld   c,a
f4b3: c3 00 da     jp   $DA00
f4b6: ff           rst  $38
f4b7: ff           rst  $38
f4b8: f1           pop  af
f4b9: cd d5 f4     call $F4D5
f4bc: c3 d2 f2     jp   $F2D2
f4bf: f1           pop  af
f4c0: 4f           ld   c,a
f4c1: 3a 6c f0     ld   a,($F06C)
f4c4: 47           ld   b,a
f4c5: cd 9b f3     call $F39B
f4c8: 11 00 00     ld   de,$0000
f4cb: 21 00 00     ld   hl,$0000
f4ce: 01 08 00     ld   bc,$0008
f4d1: cd a5 f3     call $F3A5
f4d4: c9           ret
f4d5: 47           ld   b,a
f4d6: 21 ff ef     ld   hl,$EFFF
f4d9: b7           or   a
f4da: ed 52        sbc  hl,de
f4dc: da f0 f4     jp   c,$F4F0
f4df: 3a b6 f4     ld   a,($F4B6)
f4e2: b8           cp   b
f4e3: 28 26        jr   z,$F50B
f4e5: 3a b7 f4     ld   a,($F4B7)
f4e8: b8           cp   b
f4e9: 28 20        jr   z,$F50B
f4eb: 3e 01        ld   a,$01
f4ed: b8           cp   b
f4ee: 28 1b        jr   z,$F50B
f4f0: af           xor  a
f4f1: cd 27 f3     call $F327
f4f4: 21 e1 0a     ld   hl,$0AE1
f4f7: 3e 0a        ld   a,$0A
f4f9: 0e 00        ld   c,$00
f4fb: cd ec 12     call $12EC
f4fe: cd 6a 16     call $166A
f501: cd 69 12     call $1269
f504: af           xor  a
f505: cd ef 12     call $12EF
f508: c3 62 00     jp   $0062
f50b: c5           push bc
f50c: d5           push de
f50d: 3a 6c f0     ld   a,($F06C)
f510: 4f           ld   c,a
f511: cd 9b f3     call $F39B
f514: 11 00 00     ld   de,$0000
f517: 21 00 00     ld   hl,$0000
f51a: 01 08 00     ld   bc,$0008
f51d: cd a5 f3     call $F3A5
f520: e1           pop  hl
f521: f1           pop  af
f522: c9           ret
f523: f1           pop  af               ; XBIOS 50 jump to another bank
f524: cd d5 f4     call $F4D5
f527: cd 27 f3     call $F327            ; Do the bank switch
f52a: e9           jp   (hl)             ; Jump to HL
f52b: 3a 7b f5     ld   a,($F57B)
f52e: b7           or   a
f52f: 28 02        jr   z,$F533
f531: 3e ff        ld   a,$FF
f533: c9           ret
f534: 20 50        jr   nz,$F586
f536: 52           ld   d,d
f537: 45           ld   b,l
f538: 53           ld   d,e
f539: 53           ld   d,e
f53a: 20 52        jr   nz,$F58E
f53c: 45           ld   b,l
f53d: 53           ld   d,e
f53e: 45           ld   b,l
f53f: 54           ld   d,h
f540: 20 42        jr   nz,$F584
f542: 55           ld   d,l
f543: 54           ld   d,h
f544: 54           ld   d,h
f545: 4f           ld   c,a
f546: 4e           ld   c,(hl)
f547: 00           nop
f548: 3a 14 98     ld   a,($9814)
f54b: b7           or   a
f54c: 28 12        jr   z,$F560
f54e: 3a 40 98     ld   a,($9840)
f551: b7           or   a
f552: 28 0c        jr   z,$F560
f554: 21 34 f5     ld   hl,$F534
f557: 3e 03        ld   a,$03
f559: 0e 00        ld   c,$00
f55b: cd ec 12     call $12EC
f55e: f3           di
f55f: 76           halt
f560: 3e e0        ld   a,$E0
f562: cd ea 18     call $18EA
f565: af           xor  a
f566: cd ea 18     call $18EA
f569: cd ea 18     call $18EA
f56c: 3e 03        ld   a,$03
f56e: d3 17        out  ($17),a
f570: af           xor  a
f571: d3 20        out  ($20),a
f573: d3 4d        out  ($4D),a
f575: af           xor  a
f576: d3 1c        out  ($1C),a
f578: c3 00 00     jp   $0000
f57b: 00           nop
f57c: e3           ex   (sp),hl
f57d: 26 00        ld   h,$00
f57f: e3           ex   (sp),hl
f580: 26 00        ld   h,$00
f582: e3           ex   (sp),hl
f583: 26 00        ld   h,$00
f585: e3           ex   (sp),hl
f586: 26 00        ld   h,$00
f588: c9           ret
f589: 25           dec  h
f58a: 00           nop
f58b: e3           ex   (sp),hl
f58c: 26 00        ld   h,$00
f58e: e3           ex   (sp),hl
f58f: 26 00        ld   h,$00
f591: e3           ex   (sp),hl
f592: 26 00        ld   h,$00
f594: e3           ex   (sp),hl
f595: 26 00        ld   h,$00
f597: e3           ex   (sp),hl
f598: 26 00        ld   h,$00
f59a: 10 11        djnz $F5AD
f59c: 00           nop
f59d: e3           ex   (sp),hl
f59e: 26 00        ld   h,$00
f5a0: e3           ex   (sp),hl
f5a1: 26 00        ld   h,$00
f5a3: f0           ret  p
f5a4: 4a           ld   c,d
f5a5: 00           nop
f5a6: e3           ex   (sp),hl
f5a7: 26 00        ld   h,$00
f5a9: e3           ex   (sp),hl
f5aa: 26 00        ld   h,$00
f5ac: 0f           rrca
f5ad: 26 00        ld   h,$00
f5af: 46           ld   b,(hl)
f5b0: 26 00        ld   h,$00
f5b2: c9           ret
f5b3: c9           ret
f5b4: 2a 07 e2     ld   hl,($E207)
f5b7: 22 c1 f5     ld   ($F5C1),hl
f5ba: 21 c5 f5     ld   hl,$F5C5
f5bd: 22 07 e2     ld   ($E207),hl
f5c0: c9           ret
f5c1: 00           nop
f5c2: 00           nop
f5c3: 00           nop
f5c4: 00           nop
f5c5: f3           di
f5c6: ed 73 c3 f5  ld   ($F5C3),sp
f5ca: 31 00 00     ld   sp,$0000
f5cd: f5           push af
f5ce: c5           push bc
f5cf: d5           push de
f5d0: e5           push hl
f5d1: 3a 6c f0     ld   a,($F06C)
f5d4: 32 65 f0     ld   ($F065),a
f5d7: af           xor  a
f5d8: 32 6c f0     ld   ($F06C),a
f5db: 3e 12        ld   a,$12
f5dd: d3 18        out  ($18),a
f5df: fb           ei
f5e0: c3 0a 28     jp   $280A
f5e3: f3           di
f5e4: 3a 65 f0     ld   a,($F065)
f5e7: cd 27 f3     call $F327
f5ea: e1           pop  hl
f5eb: d1           pop  de
f5ec: c1           pop  bc
f5ed: f1           pop  af
f5ee: ed 7b c3 f5  ld   sp,($F5C3)
f5f2: fb           ei
f5f3: 2a c1 f5     ld   hl,($F5C1)
f5f6: e9           jp   (hl)
f5f7: 00           nop
f5f8: 00           nop
f5f9: 00           nop
f5fa: 00           nop
f5fb: 00           nop
f5fc: 00           nop
f5fd: 00           nop
f5fe: 00           nop
f5ff: 00           nop
f600: 00           nop
f601: 00           nop
f602: 00           nop
f603: 00           nop
f604: 00           nop
f605: 00           nop
f606: 00           nop
f607: 00           nop
f608: 00           nop
f609: 00           nop
f60a: 00           nop
f60b: 00           nop
f60c: 00           nop
f60d: 00           nop
f60e: 00           nop
f60f: 00           nop
f610: 00           nop
f611: 00           nop
f612: 00           nop
f613: 00           nop
f614: 00           nop
f615: 00           nop
f616: 00           nop
f617: 00           nop
f618: 00           nop
f619: 80           add  a,b
f61a: 00           nop
f61b: 00           nop
f61c: 00           nop
f61d: 00           nop
f61e: 00           nop
f61f: 00           nop
f620: 00           nop
f621: 00           nop
f622: 00           nop
f623: 00           nop
f624: 00           nop
f625: 00           nop
f626: 00           nop
f627: 00           nop
f628: 00           nop
f629: 00           nop
f62a: 00           nop
f62b: 00           nop
f62c: 00           nop
f62d: 00           nop
f62e: 00           nop
f62f: 00           nop
f630: 00           nop
f631: 00           nop
f632: 00           nop
f633: 00           nop
f634: 00           nop
f635: 00           nop
f636: 00           nop
f637: 00           nop
f638: 00           nop
f639: 00           nop
f63a: 00           nop
f63b: 00           nop
f63c: 00           nop
f63d: 00           nop
f63e: 00           nop
f63f: 34           inc  (hl)
f640: 92           sub  d
f641: 58           ld   e,b
f642: 93           sub  e
f643: 28 93        jr   z,$F5D8
f645: dd           db   $dd
f646: 91           sub  c
f647: 00           nop
f648: 00           nop
f649: 00           nop
f64a: 00           nop
f64b: 00           nop
f64c: 00           nop
f64d: 00           nop
f64e: 00           nop
f64f: 00           nop
f650: 00           nop
f651: 00           nop
f652: 00           nop
f653: 70           ld   (hl),b
f654: ff           rst  $38
f655: 77           ld   (hl),a
f656: f6 f0        or   $F0
f658: fc 8e fc     call m,$FC8E
f65b: 34           inc  (hl)
f65c: 92           sub  d
f65d: 58           ld   e,b
f65e: 93           sub  e
f65f: 28 93        jr   z,$F5F4
f661: dd           db   $dd
f662: 91           sub  c
f663: 00           nop
f664: 00           nop
f665: 00           nop
f666: 01 00 00     ld   bc,$0000
f669: 00           nop
f66a: 00           nop
f66b: 00           nop
f66c: 00           nop
f66d: 00           nop
f66e: 00           nop
f66f: 70           ld   (hl),b
f670: ff           rst  $38
f671: 95           sub  l
f672: f6 30        or   $30
f674: fd           db   $fd
f675: bf           cp   a
f676: fc 50 00     call m,$0050
f679: 04           inc  b
f67a: 0f           rrca
f67b: 01 bd 00     ld   bc,$00BD
f67e: 7f           ld   a,a
f67f: 00           nop
f680: c0           ret  nz
f681: 00           nop
f682: 20 00        jr   nz,$F684
f684: 02           ld   (bc),a
f685: 00           nop
f686: 50           ld   d,b
f687: 00           nop
f688: 04           inc  b
f689: 0f           rrca
f68a: 00           nop
f68b: 85           add  a,l
f68c: 01 ff 00     ld   bc,$00FF
f68f: f0           ret  p
f690: 00           nop
f691: 40           ld   b,b
f692: 00           nop
f693: 02           ld   (bc),a
f694: 00           nop
f695: 50           ld   d,b
f696: 00           nop
f697: 04           inc  b
f698: 0f           rrca
f699: 01 bd 00     ld   bc,$00BD
f69c: 7f           ld   a,a
f69d: 00           nop
f69e: c0           ret  nz
f69f: 00           nop
f6a0: 20 00        jr   nz,$F6A2
f6a2: 02           ld   (bc),a
f6a3: 00           nop
f6a4: 10 50        djnz $F6F6
f6a6: 02           ld   (bc),a
f6a7: 03           inc  bc
f6a8: 0a           ld   a,(bc)
f6a9: 0f           rrca
f6aa: 02           ld   (bc),a
f6ab: ff           rst  $38
f6ac: 01 04 00     ld   bc,$0004
f6af: 28 50        jr   z,$F701
f6b1: 00           nop
f6b2: 04           inc  b
f6b3: 0f           rrca
f6b4: 00           nop
f6b5: 85           add  a,l
f6b6: 01 ff 00     ld   bc,$00FF
f6b9: f0           ret  p
f6ba: 00           nop
f6bb: 40           ld   b,b
f6bc: 00           nop
f6bd: 02           ld   (bc),a
f6be: 00           nop
f6bf: 10 50        djnz $F711
f6c1: 02           ld   (bc),a
f6c2: 03           inc  bc
f6c3: 0a           ld   a,(bc)
f6c4: 0f           rrca
f6c5: 02           ld   (bc),a
f6c6: ff           rst  $38
f6c7: 01 04 00     ld   bc,$0004
f6ca: 50           ld   d,b
f6cb: 6a           ld   l,d
f6cc: 98           sbc  a,b
f6cd: 8d           adc  a,l
f6ce: 98           sbc  a,b
f6cf: 7b           ld   a,e
f6d0: 98           sbc  a,b
f6d1: 41           ld   b,c
f6d2: 98           sbc  a,b
f6d3: 2b           dec  hl
f6d4: 9f           sbc  a,a
f6d5: 00           nop
f6d6: 00           nop
f6d7: 00           nop
f6d8: 00           nop
f6d9: 00           nop
f6da: 00           nop
f6db: 00           nop
f6dc: 00           nop
f6dd: 00           nop
f6de: 00           nop
f6df: 8e           adc  a,(hl)
f6e0: fb           ei
f6e1: 03           inc  bc
f6e2: f7           rst  $30
f6e3: 12           ld   (de),a
f6e4: f7           rst  $30
f6e5: 2c           inc  l
f6e6: f9           ld   sp,hl
f6e7: 6a           ld   l,d
f6e8: 98           sbc  a,b
f6e9: 8d           adc  a,l
f6ea: 98           sbc  a,b
f6eb: 7b           ld   a,e
f6ec: 98           sbc  a,b
f6ed: 41           ld   b,c
f6ee: 98           sbc  a,b
f6ef: 00           nop
f6f0: 00           nop
f6f1: 00           nop
f6f2: 01 00 00     ld   bc,$0000
f6f5: 00           nop
f6f6: 00           nop
f6f7: 00           nop
f6f8: 00           nop
f6f9: 00           nop
f6fa: 00           nop
f6fb: 8e           adc  a,(hl)
f6fc: fb           ei
f6fd: 03           inc  bc
f6fe: f7           rst  $30
f6ff: 12           ld   (de),a
f700: f7           rst  $30
f701: 5d           ld   e,l
f702: fa 40 00     jp   m,$0040
f705: 04           inc  b
f706: 0f           rrca
f707: 00           nop
f708: 87           add  a,a
f709: 09           add  hl,bc
f70a: ff           rst  $38
f70b: 03           inc  bc
f70c: ff           rst  $38
f70d: ff           rst  $38
f70e: 00           nop
f70f: 00           nop
f710: 02           ld   (bc),a
f711: 00           nop
f712: 3a 35 27     ld   a,($2735)
f715: b7           or   a
f716: c8           ret  z
f717: af           xor  a
f718: 32 65 9b     ld   ($9B65),a
f71b: 3e 02        ld   a,$02
f71d: cd 27 f3     call $F327
f720: 01 00 08     ld   bc,$0800
f723: 21 00 00     ld   hl,$0000
f726: 3e e5        ld   a,$E5
f728: 77           ld   (hl),a
f729: 23           inc  hl
f72a: 0b           dec  bc
f72b: 79           ld   a,c
f72c: b0           or   b
f72d: c2 26 f7     jp   nz,$F726
f730: 3e 00        ld   a,$00
f732: cd 27 f3     call $F327
f735: c9           ret
f736: e4 9a f2     call po,$F29A
f739: 9a           sbc  a,d
f73a: ec 9a e3     call pe,$E39A
f73d: 9a           sbc  a,d
f73e: 12           ld   (de),a
f73f: f7           rst  $30
f740: 00           nop
f741: 00           nop
f742: 00           nop
f743: 00           nop
f744: 00           nop
f745: 00           nop
f746: 00           nop
f747: 00           nop
f748: 00           nop
f749: 00           nop
f74a: 0e fc        ld   c,$FC
f74c: 52           ld   d,d
f74d: f7           rst  $30
f74e: 00           nop
f74f: 00           nop
f750: 61           ld   h,c
f751: f7           rst  $30
f752: 40           ld   b,b
f753: 00           nop
f754: 03           inc  bc
f755: 07           rlca
f756: 00           nop
f757: 67           ld   h,a
f758: 00           nop
f759: 1f           rra
f75a: 00           nop
f75b: 80           add  a,b
f75c: 00           nop
f75d: 00           nop
f75e: 00           nop
f75f: 00           nop
f760: 00           nop
f761: 00           nop
f762: 00           nop
f763: 00           nop
f764: 00           nop
f765: 00           nop
f766: 00           nop
f767: 00           nop
f768: 00           nop
f769: 00           nop
f76a: 00           nop
f76b: 00           nop
f76c: 00           nop
f76d: 00           nop
f76e: 00           nop
f76f: 00           nop
f770: 00           nop
f771: 00           nop
f772: 00           nop
f773: 00           nop
f774: 00           nop
f775: 00           nop
f776: 00           nop
f777: 00           nop
f778: 00           nop
f779: 00           nop
f77a: 00           nop
f77b: 00           nop
f77c: 00           nop
f77d: 00           nop
f77e: 00           nop
f77f: 00           nop
f780: 00           nop
f781: 00           nop
f782: 00           nop
f783: 00           nop
f784: 00           nop
f785: 3a 0e e5     ld   a,($E50E)
f788: b7           or   a
f789: f5           push af
f78a: af           xor  a
f78b: 32 0e e5     ld   ($E50E),a
f78e: f1           pop  af
f78f: ca e0 e4     jp   z,$E4E0
f792: c3 01 e5     jp   $E501
f795: 3a 0e e5     ld   a,($E50E)
f798: b7           or   a
f799: 28 03        jr   z,$F79E
f79b: 3e 01        ld   a,$01
f79d: c9           ret
f79e: cd 5b 12     call $125B
f7a1: e6 01        and  $01
f7a3: c9           ret
f7a4: 3e 0d        ld   a,$0D
f7a6: b9           cp   c
f7a7: 20 1d        jr   nz,$F7C6
f7a9: ed 73 c9 f7  ld   ($F7C9),sp
f7ad: 31 d3 f7     ld   sp,$F7D3
f7b0: c5           push bc
f7b1: d5           push de
f7b2: 0e 51        ld   c,$51
f7b4: 1e 00        ld   e,$00
f7b6: cd 5a f0     call $F05A
f7b9: 0e 51        ld   c,$51
f7bb: 1e 01        ld   e,$01
f7bd: cd 5a f0     call $F05A
f7c0: d1           pop  de
f7c1: c1           pop  bc
f7c2: ed 7b c9 f7  ld   sp,($F7C9)
f7c6: c3 00 00     jp   $0000
f7c9: 00           nop
f7ca: 00           nop
f7cb: 00           nop
f7cc: 00           nop
f7cd: 00           nop
f7ce: 00           nop
f7cf: 00           nop
f7d0: 00           nop
f7d1: 00           nop
f7d2: 00           nop
f7d3: 00           nop
f7d4: 00           nop
f7d5: 00           nop
f7d6: 00           nop
f7d7: 00           nop
f7d8: 00           nop
f7d9: 00           nop
f7da: 00           nop
f7db: 00           nop
f7dc: 00           nop
f7dd: 00           nop
f7de: 00           nop
f7df: 00           nop
f7e0: 00           nop
f7e1: 00           nop
f7e2: 00           nop
f7e3: 00           nop
f7e4: 00           nop
f7e5: 00           nop
f7e6: 00           nop
f7e7: 00           nop
f7e8: 00           nop
f7e9: 00           nop
f7ea: 00           nop
f7eb: 00           nop
f7ec: 00           nop
f7ed: 00           nop
f7ee: 00           nop
f7ef: 00           nop
f7f0: 00           nop
f7f1: 00           nop
f7f2: 00           nop
f7f3: 00           nop
f7f4: 00           nop
f7f5: 00           nop
f7f6: 00           nop
f7f7: 00           nop
f7f8: 00           nop
f7f9: 00           nop
f7fa: 00           nop
f7fb: 00           nop
f7fc: 00           nop
f7fd: 00           nop
f7fe: 00           nop
f7ff: 00           nop
f800: 38 19        jr   c,$F81B
f802: 22 aa 38     ld   ($38AA),hl
f805: ed 5b c9 38  ld   de,($38C9)
f809: ed 53 ae 38  ld   ($38AE),de
f80d: ed 52        sbc  hl,de
f80f: 22 cf 38     ld   ($38CF),hl
f812: 3a ad 38     ld   a,($38AD)
f815: 3d           dec  a
f816: cc 10 2d     call z,$2D10
f819: 28 0a        jr   z,$F825
f81b: 32 ad 38     ld   ($38AD),a
f81e: 3a b1 38     ld   a,($38B1)
f821: 3c           inc  a
f822: 32 b1 38     ld   ($38B1),a
f825: db 38        in   a,($38)
f827: e6 20        and  $20
f829: 28 fa        jr   z,$F825
f82b: 21 a8 38     ld   hl,$38A8
f82e: c3 da 00     jp   $00DA
